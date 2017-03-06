unit Unit11; {Plot von Daten, Eingabe von Datenträger}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, Menus, StdCtrls, ExtCtrls, Globvar, Dateien, Basic, Einausga, Drucken,
  Printers, Texte, ComCtrls, Buttons, Shellapi, FileCtrl,
  Standard, Mask, ehsHelpRouter;

type
  TForm11 = class(TForm)
    MainMenu1: TMainMenu;

    Panel1         : TPanel;
    LabelDateien   : TLabel;
    ListBoxDateien : TListBox;

    Panel2              : TPanel;
    Labelausgewaehlte   : TLabel;
    ListBoxausgewaehlte : TListBox;

    Panel3       : TPanel;
    LabelDaten   : TLabel;
    ListBoxDaten : TListBox;

    Panel4          : TPanel;
    LabelExtension  : TLabel;
    LabelLIN        : TLabel;
    LabelAnzahl     : TLabel;
    Label00000      : TLabel;

    Panel5        : TPanel;
    Buttonzurueck : TButton;
    Buttonbeenden : TButton;

    Panel6        : TPanel;
    ButtonStart   : TButton;
    Buttonplotten : TButton;
    ButtonAuswahl : TButton;

    Drucker1    : TMenuItem;
    drucken1    : TMenuItem;
    einrichten1 : TMenuItem;

    PrintDialog1        : TPrintDialog;
    PrinterSetupDialog1 : TPrinterSetupDialog;

    Hilfe1 : TMenuItem;

    StatusBar : TStatusBar;

    Panel7       : TPanel;
    SpeedDrucken : TSpeedButton;
    SpeedHilfe   : TSpeedButton;
    ButtonDurchsuchen: TButton;
    PanelPfad: TPanel;
    LabelPfad: TLabel;
    DatenSpeichern: TMenuItem;
    speichernD: TMenuItem;
    speichernDUnter: TMenuItem;
    Handbuch: TMenuItem;
    SaveDialog1: TSaveDialog;
    LabelDemo: TLabel;
    SpeedHandbuch: TSpeedButton;
    SpeedSpeichern: TSpeedButton;
    Literatur: TMenuItem;
    SpeedLiteratur: TSpeedButton;
    WinWord: TMenuItem;
    SpeedWinWord: TSpeedButton;
    MaskEditPfad: TMaskEdit;
    SpeedEinrichten: TSpeedButton;
    Dloeschen: TMenuItem;
    Loeschen: TMenuItem;
    SpeedLoeschen: TSpeedButton;

    procedure FormActivate(Sender: TObject);
    procedure ButtonStartClick(Sender: TObject);
    procedure ButtonzurueckClick(Sender: TObject);
    procedure ButtonbeendenClick(Sender: TObject);
    procedure ButtonplottenClick(Sender: TObject);
    procedure ButtonAuswahlClick(Sender: TObject);

    procedure ListBoxDateienClick(Sender: TObject);
    procedure ListBoxausgewaehlteClick(Sender: TObject);

    {Drucker}
    procedure drucken1Click(Sender: TObject);
    procedure einrichten1Click(Sender: TObject);
    procedure Hilfe1Click(Sender: TObject);

    procedure ShowHint(Sender: TObject);
    procedure FormShow(Sender: TObject);

    procedure SpeedDruckenClick(Sender: TObject);
    procedure SpeedHilfeClick(Sender: TObject);
    procedure ButtonDurchsuchenClick(Sender: TObject);
    procedure speichernDClick(Sender: TObject);
    procedure speichernDUnterClick(Sender: TObject);
    procedure HandbuchClick(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure SpeedSpeichernClick(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
    procedure SpeedLiteraturClick(Sender: TObject);
    procedure WinWordClick(Sender: TObject);
    procedure SpeedWinWordClick(Sender: TObject);
    procedure SpeedEinrichtenClick(Sender: TObject);
    procedure LoeschenClick(Sender: TObject);
    procedure SpeedLoeschenClick(Sender: TObject);
  end;

var
  Form11          : TForm11;
  WertFeld        : array of word;
  ListBoxLoeschen : Boolean;
  DiscS           : string;
  NameS           : string;
  Loesch          : boolean;

implementation
uses Unit9, Unit12, Unit20, Unit21, Unit22, Unit23, Unit24,
Unit25, Unit60, Unit85;
{$R *.DFM}

procedure TForm11.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm11.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm11.FormActivate(Sender: TObject);
begin
  Left   := 140;
  Top    := 80;
  Width  := 830;
  Height := 620;
  setlength (AziFeld, MaxDaten);
  setlength (FalFeld, MaxDaten);
  LabelDemo.Visible               := false;
  if DemoB then LabelDemo.Visible := true;
  ListBoxDaten.Hint        := Hilf(54);
  Panel3.Hint              := Hilf(54);
  ListBoxausgewaehlte.Hint := Hilf(32);
  Panel2.Hint              := Hilf(32);
  ListBoxDateien.Hint      := Hilf(33);
  Panel1.Hint              := Hilf(33);
  LabelPfad.Hint           := Hilf(34);
  LabelExtension.Hint      := Hilf(35);
  LabelAnzahl.Hint         := Hilf(36);
  ButtonStart.Hint         := Hilf(296);
  ButtonAuswahl.Hint       := Hilf(55);
  Buttonplotten.Hint       := Hilf(51);
  Buttonzurueck.Hint       := Hilf(52);
  Buttonbeenden.Hint       := Hilf(30);
  SpeedDrucken.Hint        := Hilf(203);
  SpeedHilfe.Hint          := Hilf(210);
  ButtonDurchsuchen.Hint   := Hilf(275);
  SpeedHandbuch.Hint       := Hilf(274);
  SpeedSpeichern.Hint      := Hilf(204);
  SpeedEinrichten.Hint     := Hilf(505);
  SpeedLoeschen.Hint       := Hilf(713);
  case Programm of
    3: Form11.Caption := Tx(244);       {Plotten von Linearen oder Flächen}
    4: Form11.Caption := Tx(245);       {Plotten von Großkreisen}
    8: Form11.Caption := Tx(246);       {statistische Maßzahlen}
   24: Form11.Caption := Tx(247);       {Isolinien-Plot}
   23: Form11.Caption := Tx(455);       {Cluster}
  end;
  DatenSpeichern.Caption      := Tx(86);
  speichernD.Caption          := Tx(87);
  speichernDUnter.Caption     := Tx(88);
  Drucker1.Caption            := Tx(92);
  drucken1.Caption            := Tx(93);
  Einrichten1.Caption         := Tx(94);
  Hilfe1.Caption              := Tx(162)+' (F1)';
  LabelDaten.Caption          := Tx(183);
  Labelausgewaehlte.Caption   := Tx(136);
  LabelDateien.Caption        := Tx(137);
  LabelAnzahl.Caption         := Tx(222);
  ButtonAuswahl.Caption       := Tx(248);
  Buttonplotten.Caption       := Tx(241);
  Buttonzurueck.Caption       := Tx(30);
  Buttonbeenden.Caption       := Tx(53);
  LabelDateien.Enabled        := false;
  Labelausgewaehlte.Enabled   := false;
  LabelDaten.Enabled          := false;
  LabelPfad.Enabled           := false;
  LabelExtension.Enabled      := false;
  LabelLIN.Caption            := '';
  LabelAnzahl.Visible         := false;
  Label00000.Caption          := '';
  ListboxDateien.Enabled      := false;
  Listboxausgewaehlte.Enabled := false;
  ListboxDaten.Enabled        := false;
  Buttonplotten.Enabled       := false;
  ButtonAuswahl.Enabled       := false;
  Buttonzurueck.Enabled       := false;
  Buttonbeenden.Enabled       := false;
  Drucker1.Enabled            := false;
  SpeedDrucken.Enabled        := false;
  SpeedSpeichern.Enabled      := false;
  ButtonDurchsuchen.Enabled   := false;
  LabelPfad.Caption           := Tx(1003);
  ButtonDurchsuchen.Caption   := Tx(1004);
  ButtonDurchsuchen.Enabled   := false;
  DatenSpeichern.Enabled      := false;
  Handbuch.Caption            := Tx(1055)+' (F2)';
  Literatur.Caption           := Tx(1183)+' (F5)';
  SpeedLiteratur.Hint         := Hilf(462);
  WinWord.Caption             := Tx(1207);
  SpeedWinword.Hint           := Hilf(470);
  SpeedWinWord.Enabled        := false;
  SpeedEinrichten.Enabled     := false;
  Loesch                      := false;
  DLoeschen.Caption           := Tx(1659);
  Loeschen.Caption            := Tx(1660);
  Dloeschen.Enabled           := false;
  SpeedLoeschen.Enabled       := false;
end;

procedure TForm11.ButtonzurueckClick(Sender: TObject);      {zurück}
begin
  AziFeld  := Nil;
  FalFeld  := Nil;
  ListBoxDateien.Clear;
  ListBoxausgewaehlte.Clear;
  ListBoxDaten.Clear;
  Form11.Close;
  ChDir (DirectS);
end;

procedure TForm11.ButtonbeendenClick(Sender: TObject);       {beenden}
begin
  AziFeld  := Nil;
  FalFeld  := Nil;
  ListBoxDateien.Clear;
  ListBoxausgewaehlte.Clear;
  ListBoxDaten.Clear;
  ChDir (DirectS);
  SetCurrentDir(DirectS);
  Form11.Close;
  if Programm =  3 then Form9.Close;
  if Programm =  4 then Form9.Close;
  if Programm =  8 then Form20.Close;
  if Programm = 20 then Form22.Close;
  if Programm = 21 then Form60.Close;
  if Programm = 24 then Form22.Close;
  if Programm = 23 then Form24.Close;
end;

procedure TForm11.ButtonStartClick(Sender: TObject);       {Start}
var
  Dzahl      : word;
  DatNameS   : array[0..1000] of string;
  i          : word;
  DNameS     : string[80];
  DatS       : string;
begin
  Loesch                := false;
  ButtonAuswahl.Enabled := false;
  Dloeschen.Enabled     := true;
  SpeedLoeschen.Enabled := true;  
  ButtonDurchsuchen.Enabled := true;
  MaskEditPfad.Text := PfadS;
  ListBoxDateien.Clear;
  ListBoxausgewaehlte.Clear;
  ListBoxDaten.Clear;
  LabelDateien.Enabled        := true;
  Labelausgewaehlte.Enabled   := true;
  LabelDaten.Enabled          := true;
  LabelPfad.Enabled           := true;
  LabelExtension.Enabled      := true;
  LabelLIN.Caption            := '';
  Label00000.Caption          := '';
  ListboxDateien.Enabled      := true;
  Listboxausgewaehlte.Enabled := true;
  ListboxDaten.Enabled        := true;
  Buttonzurueck.Enabled       := true;
  Buttonbeenden.Enabled       := true;
  ButtonAuswahl.Enabled       := false;
  Buttonplotten.Enabled       := false;
  LabelAnzahl.Visible         := false;
  ButtonDurchsuchen.Enabled := true;
  Laufwerk(DatS,EingabeS, DiscS);
  ListBoxLoeschen := false;
  Datsuch (Dzahl, DiscS, ExtenS, DatNameS, ListBoxLoeschen);
  LabelLIN.Caption      := ExtenS;
  if not ListBoxLoeschen then
  begin
    for i := 1 to Dzahl do
    begin
      DNameS := LeftS (DatNameS[i], length(DatNameS[i])- 4);
      ListboxDateien.Items.Add (DNameS);
    end;
  end;
end;

procedure TForm11.ListBoxDateienClick(Sender: TObject);
var
  i       : word;
  Datei   : TextFile;
  Typ     : TMsgDlgType;
  InfoS   : string;
  LoeschS : string;
begin
  if not Loesch then
  begin
    ButtonAuswahl.Enabled := true;
    for i := 0 to ListboxDateien.Items.Count-1 do
    begin
      if ListboxDateien.Selected[i] then
      begin
        Listboxausgewaehlte.Items.Add (ListboxDateien.Items.Strings[i]);
        ListboxDateien.Items.Delete(i);
        break;
      end;
    end;
  end
  else
  begin
    for i := 0 to ListboxDateien.Items.Count-1 do
    begin
      if ListboxDateien.Selected[i] then
      begin
        LoeschS := ListBoxDateien.Items.Strings[i];
        LoeschS := DiscS+LoeschS+'.'+ExtenS;
        ListboxDateien.Items.Delete(i);
        break;
      end;
    end;
    Typ    := mtInformation;
    InfoS  := Tx(1226);
    if Dlgmessage(Typ, InfoS, Tx(1656)+'  '+LoeschS+'  '+Tx(1657),1) = 6 then
    begin
      assignFile (Datei,LoeschS);
      reset(Datei);
      CloseFile(Datei);
      Erase(Datei);
      Showmessage(LoeschS+' '+Tx(1658));
    end;
  end;
  Loesch := false;
end;

procedure TForm11.ListBoxausgewaehlteClick(Sender: TObject); {ausgewählte Dateien}
var
  i : word;
begin
  for i := 0 to Listboxausgewaehlte.Items.Count-1 do
  begin
    if Listboxausgewaehlte.Selected[i] then
    begin
      ListboxDateien.Items.Add (Listboxausgewaehlte.Items.Strings[i]);
      Listboxausgewaehlte.Items.Delete(i);
      break;
    end;
  end;
end;

procedure TForm11.ButtonAuswahlClick(Sender: TObject);        {Auswahl ok}
var
  j          : byte;
  i          : word;
  DatAzimutS : string[3];
  DatFallS   : string[2];
  ZeileS     : string[20];
begin
  Buttonplotten.Enabled       := true;
  Drucker1.Enabled            := true;
  ListboxDateien.Enabled      := false;
  Listboxausgewaehlte.Enabled := false;
  ButtonDurchsuchen.Enabled   := false;
  SpeedDrucken.Enabled        := true;
  SpeedSpeichern.Enabled      := true;
  SpeedWinWord.Enabled        := true;
  LabelAnzahl.Visible         := true;
  SpeedEinrichten.Enabled     := true;
  DateiZahl := ListBoxausgewaehlte.Items.Count-1;
  for j := 0 to DateiZahl do
  begin
    NameS := Listboxausgewaehlte.Items.Strings[j]+ '.' + ExtenS;
    AusB := false;
    Testpfad (DiscS);
    LiesDaten (j, NameS, DiscS, ZahlGlob, AziFeld, FalFeld);
    if AusB then       {zurück}
    begin
      ListBoxDateien.Clear;
      ListBoxausgewaehlte.Clear;
      ListBoxDaten.Clear;
      LabelLIN.Caption := '';
      Form11.Close;
    end;
    DateiNameS[j]     := NameS;
  end;
  Label00000.Caption := RightS('     '+IntToStr(ZahlGlob),5);
  for i := 1 to ZahlGlob do
  begin
    DatAzimutS := IntToStr (AziFeld[i]);
    DatAzimutS := RightS ('000' + DatAzimutS, 3);
    DatFallS   := IntToStr (FalFeld[i]);
    DatFallS   := RightS ('00' + DatFallS, 2);
    ZeileS := '            '+DatAzimutS+'/'+DatFallS;
    ListBoxDaten.Items.Add (ZeileS);
  end;
  ButtonAuswahl.Enabled  := false;
  DatenSpeichern.Enabled := true;
end;

procedure TForm11.ButtonplottenClick(Sender: TObject);
begin
  if (Programm = 3) or (Programm = 5) then Form12.Show;
  if Programm =  4 then Form85.Show;
  if Programm =  8 then Form21.Show;
  if Programm = 24 then Form23.Show;
  if Programm = 23 then Form25.Show;
end;                              

procedure TForm11.drucken1Click(Sender: TObject);
begin
  Titel8 ('3', DateiZahl, DateiNameS, AziFeld, FalFeld,
          ZahlGlob);
end;

procedure TForm11.einrichten1Click(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TForm11.SpeedEinrichtenClick(Sender: TObject);
begin
  einrichten1Click(Sender);
end;

procedure TForm11.Hilfe1Click(Sender: TObject);
var
  DateiS      : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\11PlotPunkte-dis.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\11PlotPoints-dis.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm11.SpeedDruckenClick(Sender: TObject);
begin
  drucken1Click(Sender);
end;

procedure TForm11.SpeedHilfeClick(Sender: TObject);
begin
  Hilfe1Click(Sender);
end;

procedure TForm11.ButtonDurchsuchenClick(Sender: TObject);
const
  Verz = 1000;
var
  NeuerPfadS : string;
  Datei      : TextFile;
  i          : integer;
begin
  NeuerPfadS := Tx(1002);
  if not DirectoryExists (PfadS) then PfadS := DirectS;
  if SelectDirectory (PfadS, [sdAllowCreate, sdPerformCreate,
          sdPrompt], Verz)
          then MessageDlg(NeuerPfadS+' '+PfadS, mtInformation,
            [mbOK], 0);
  Kompress (PfadS);
  if (RightS (PfadS, 1) <> ':') and (RightS(PfadS, 1) <> '\')
     then PfadS := PfadS + '\';
  if SetCurrentDir (DirectS) then getDir (0, DirectS);
  KonfigZeileS[14] := PfadS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm11.speichernDClick(Sender: TObject);
begin
   if CurrentFile <> '' then Speichern(CurrentFile,ZahlGlob,
     AziFeld,FalFeld)
   else speichernDUnterClick(Sender);
end;

procedure TForm11.speichernDUnterClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := ExtenS;
  if UCaseS(ExtenS) = 'LIN' then
    SaveDialog1.Filter := 'Lines (*.lin)|*.LIN';
  if UCaseS(ExtenS) = 'PLA' then
    SaveDialog1.Filter := 'Planes (*.pla)|*.PLA';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    Speichern (CurrentFile, ZahlGlob, AziFeld, FalFeld);
  end;
end;

procedure TForm11.LoeschenClick(Sender: TObject);
begin
  Loesch := true;
end;

procedure TForm11.SpeedLoeschenClick(Sender: TObject);
begin
  LoeschenClick(Sender);
end;

procedure TForm11.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if Programm = 3 then
  begin
    if SpracheS = 'DEUTSCH' then HilfeS := 'Daten_plotten.doc';
    if SpracheS = 'ENGLISH' then HilfeS := 'Plot_Data.doc';
    ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
                 nil,nil,sw_normal);
  end;
  if Programm = 4 then
  begin
    if SpracheS = 'DEUTSCH' then HilfeS := 'Grosskreise.doc';
    if SpracheS = 'ENGLISH' then HilfeS := 'Great_circles.doc';
    ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
                 nil,nil,sw_normal);
  end;
  if Programm = 8 then
  begin
    if SpracheS = 'DEUTSCH' then HilfeS := 'Gefuege_Statistik.doc';
    if SpracheS = 'ENGLISH' then HilfeS := 'Fabric_Statistiks.doc';
    ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
                 nil,nil,sw_normal);
  end;
  if Programm = 24 then
  begin
    if SpracheS = 'DEUTSCH' then HilfeS := 'Isolinien.doc';
    if SpracheS = 'ENGLISH' then HilfeS := 'Contour_Lines.doc';
    ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
                 nil,nil,sw_normal);
  end;
  if Programm = 20 then
  begin
    if SpracheS = 'DEUTSCH' then HilfeS := 'Isolinien.doc';
    if SpracheS = 'ENGLISH' then HilfeS := 'Contour_lines.doc';
    ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
                 nil,nil,sw_normal);
  end;
  if Programm = 23 then
  begin
    if SpracheS = 'DEUTSCH' then HilfeS := 'Clodat.doc';
    if SpracheS = 'ENGLISH' then HilfeS := 'Clodat-E.doc';
    ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
                 nil,nil,sw_normal);
  end;
end;

procedure TForm11.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm11.SpeedSpeichernClick(Sender: TObject);
begin
  SpeichernDunterClick(Sender);
end;

procedure TForm11.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm11.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

procedure TForm11.WinWordClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := 'rtf';
  SaveDialog1.Filter     := 'rtf';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    WinDatei('3', DateiZahl, CurrentFile, DateiNameS,
             AziFeld, FalFeld, ZahlGlob);
  end;
end;

procedure TForm11.SpeedWinWordClick(Sender: TObject);
begin
  WinWordClick(Sender);
end;

end.
