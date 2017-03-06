unit Unit28;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, Menus, ExtCtrls, Einausga,
  Globvar, Dateien, Basic, Texte, ComCtrls, Buttons, Drucken,
  Shellapi, FileCtrl, Standard, Mask, ehsHelpRouter;

type
  TForm28 = class(TForm)
    Panel1    : TPanel;
    LabelDaten: TLabel;

    Panel2           : TPanel;
    Labelausgewaehlte: TLabel;

    Panel3                : TPanel;
    LabelDateienauswaehlen: TLabel;

    Panel4         : TPanel;
    LabelExtension : TLabel;
    LabelLin       : TLabel;
    LabelAnzahl    : TLabel;
    Label00000     : TLabel;

    Panel5         : TPanel;
    ButtonStart    : TButton;
    ButtonAuswahl: TButton;
    Buttonplotten  : TButton;

    Panel6       : TPanel;
    Buttonzurueck: TButton;
    Buttonbeenden: TButton;

    ListBoxDaten              : TListBox;
    ListBoxausgewaehlteDateien: TListBox;
    ListBoxDateienauswaehlen  : TListBox;

    MainMenu1         : TMainMenu;

    Drucker1            : TMenuItem;
    Druckereinrichten1  : TMenuItem;
    drucken1            : TMenuItem;
    PrinterSetupDialog1 : TPrinterSetupDialog;
    PrintDialog1        : TPrintDialog;

    StatusBar: TStatusBar;

    Panel7       : TPanel;
    SpeedDrucken : TSpeedButton;
    SpeedHilfe   : TSpeedButton;

    Hilfe1            : TMenuItem;
    PanelPfad: TPanel;
    LabelPfad: TLabel;
    ButtonDurchsuchen: TButton;
    Handbuch: TMenuItem;
    SaveDialog1: TSaveDialog;
    DatenSpeichern: TMenuItem;
    speichernD: TMenuItem;
    speichernDUnter: TMenuItem;
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
    loeschen: TMenuItem;
    SpeedLoeschen: TSpeedButton;

    procedure ShowHint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ButtonStartClick(Sender: TObject);
    procedure ButtonzurueckClick(Sender: TObject);
    procedure ButtonbeendenClick(Sender: TObject);

    procedure ListBoxDateienauswaehlenClick(Sender: TObject);
    procedure ListBoxausgewaehlteDateienClick(Sender: TObject);
    procedure ButtonAuswahlClick(Sender: TObject);
    procedure ButtonplottenClick(Sender: TObject);
    procedure Hilfe1Click(Sender: TObject);
    procedure SpeedHilfeClick(Sender: TObject);
    procedure Druckereinrichten1Click(Sender: TObject);
    procedure drucken1Click(Sender: TObject);
    procedure SpeedDruckenClick(Sender: TObject);
    procedure ButtonDurchsuchenClick(Sender: TObject);
    procedure HandbuchClick(Sender: TObject);
    procedure speichernDClick(Sender: TObject);
    procedure speichernDUnterClick(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure SpeedSpeichernClick(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
    procedure SpeedLiteraturClick(Sender: TObject);
    procedure WinWordClick(Sender: TObject);
    procedure SpeedWinWordClick(Sender: TObject);
    procedure SpeedEinrichtenClick(Sender: TObject);
    procedure loeschenClick(Sender: TObject);
    procedure SpeedLoeschenClick(Sender: TObject);
  end;

var
  Form28          : TForm28;
  DiscS           : string;
  NameS           : string[80];
  DatNameS        : array of string;
  ListBoxLoeschen : Boolean;
  Loesch          : boolean;

implementation
uses Unit29, Unit30, Unit31, Unit32, Unit33, Unit34, Unit35,
     Unit26, Unit99, Unit100;
{$R *.DFM}

procedure TForm28.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm28.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm28.FormActivate(Sender: TObject);
begin
  Left   := 140;
  Top    := 80;
  Width  := 800;
  Height := 620;
  setlength (AziFeld, MaxDaten);
  setlength (FalFeld, MaxDaten);
  setlength (SAziFeld, MaxDaten);
  setlength (SFalFeld, MaxDaten);
  setlength (DatNameS, 1000);
  LabelDemo.Visible                := false;
  if DemoB then LabelDemo.Visible  := true;
  if Programm = 11 then Form28.Caption := Tx(1506);
  if Programm = 15 then Form28.Caption := Tx(1508);
 {Fabric8: Harnische und Striemungslineare, Eingabe von Diskette}
  if Programm = 14 then Form28.Caption := Tx(1507);
  {Fabric8: Hoeppener-Diagramm, Eingabe von Diskette}
  if Programm = 17 then Form28.Caption := Tx(1512);
  ListBoxDaten.Hint               := Hilf(54);
  Panel1.Hint                     := Hilf(54);
  ListBoxausgewaehlteDateien.Hint := Hilf(32);
  Panel2.Hint                     := Hilf(32);
  ListBoxDateienauswaehlen.Hint   := Hilf(33);
  Panel3.Hint                     := Hilf(33);
  LabelPfad.Hint                  := Hilf(34);
  LabelExtension.Hint             := Hilf(35);
  LabelLIN.Hint                   := Hilf(35);
  LabelAnzahl.Hint                := Hilf(36);
  Label00000.Hint                 := Hilf(36);
  ButtonStart.Hint                := Hilf(296);
  ButtonAuswahl.Hint              := Hilf(55);
  Buttonplotten.Hint              := Hilf(51);
  Buttonzurueck.Hint              := Hilf(124);
  Buttonbeenden.Hint              := Hilf(30);
  SpeedDrucken.Hint               := Hilf(203);
  SpeedHilfe.Hint                 := Hilf(210);
  ButtonDurchsuchen.Hint          := Hilf(275);
  SpeedHandbuch.Hint              := Hilf(274);
  SpeedSpeichern.Hint             := Hilf(204);
  SpeedEinrichten.Hint            := Hilf(505);
  SpeedLoeschen.Hint              := Hilf(713);
  DatenSpeichern.Caption             := Tx(86);
  speichernD.Caption                 := Tx(87);
  speichernDUnter.Caption            := Tx(88); 
  Drucker1.Caption                   := Tx(92);
  drucken1.Caption                   := Tx(93);
  Druckereinrichten1.Caption         := Tx(94);
  Hilfe1.Caption                     := Tx(162)+' (F1)';
  LabelDaten.Caption                 := Tx(183);  {Daten:}
  Labelausgewaehlte.Caption          := Tx(136);  {ausgewählte Dateien:}
  LabelDateienauswaehlen.Caption     := Tx(137);  {Dateien auswählen:}
  LabelAnzahl.Caption                := Tx(222);
  ButtonAuswahl.Caption              := Tx(248);
  Buttonplotten.Caption              := Tx(241);
  Buttonzurueck.Caption              := Tx(30);
  Buttonbeenden.Caption              := Tx(53);
  Buttonzurueck.Enabled              := false;
  Buttonbeenden.Enabled              := false;
  LabelDaten.Enabled                 := false;
  Labelausgewaehlte.Enabled          := false;
  LabelDateienauswaehlen.Enabled     := false;
  LabelPfad.Caption                  := Tx(1003);
  ButtonDurchsuchen.Caption          := Tx(1004);
  ButtonDurchsuchen.Enabled          := false;
  LabelPfad.Enabled                  := false;
  LabelExtension.Visible             := false;
  LabelLin.Caption                   := '';
  LabelAnzahl.Visible                := false;
  Label00000.Caption                 := '';
  ListboxDaten.Enabled               := false;
  ListboxausgewaehlteDateien.Enabled := false;
  ListboxDateienauswaehlen.Enabled   := false;
  ButtonAuswahl.Enabled              := false;
  Buttonplotten.Enabled              := false;
  Drucker1.Enabled                   := false;
  Handbuch.Caption                   := Tx(1055)+' (F2)';
  Literatur.Caption                  := Tx(1183)+' (F5)';
  SpeedLiteratur.Hint                := Hilf(462);
  SpeedSpeichern.Enabled             := false;
  SpeedDrucken.Enabled               := false;
  DatenSpeichern.Enabled             := false;
  WinWord.Caption                    := Tx(1207);
  SpeedWinWord.Hint                  := Hilf(470);
  SpeedWinWord.Enabled               := false;
  SpeedEinrichten.Enabled            := false;
  Loesch                             := false;
  DLoeschen.Caption                  := Tx(1659);
  Loeschen.Caption                   := Tx(1660);
  Dloeschen.Enabled                  := false;
  SpeedLoeschen.Enabled              := false;
end;

procedure TForm28.ButtonStartClick(Sender: TObject);
var
  Dzahl      : word;
  i          : word;
  DNameS     : string[80];
  DatS       : string;
begin
  Loesch                := false;
  ButtonAuswahl.Enabled := false;
  Dloeschen.Enabled     := true;
  SpeedLoeschen.Enabled := true;
  Buttonzurueck.Enabled := true;
  Buttonbeenden.Enabled := true;
  Drucker1.Enabled      := false;
  ListBoxDaten.Clear;
  ListBoxausgewaehlteDateien.Clear;
  ListBoxDateienauswaehlen.Clear;
  LabelDaten.Enabled                 := true;
  Labelausgewaehlte.Enabled          := true;
  LabelDateienauswaehlen.Enabled     := true;
  LabelPfad.Enabled                  := true;
  LabelExtension.Visible             := true;
  ListboxDaten.Enabled               := true;
  ListboxausgewaehlteDateien.Enabled := true;
  ListboxDateienauswaehlen.Enabled   := true;
  ButtonDurchsuchen.Enabled          := true;
  Laufwerk(DatS,EingabeS, DiscS);
  ListBoxLoeschen                    := false;
  Datsuch (Dzahl, DiscS, ExtenS, DatNameS, ListBoxLoeschen);
  MaskEditPfad.Text := DiscS;
  LabelLin.Caption  := ExtenS;
  Anzahl := 0;
  Label00000.Caption := '';
  if not ListBoxLoeschen then
  begin
    for i := 1 to Dzahl do
    begin
      DNameS := LeftS (DatNameS[i], length(DatNameS[i])- 4);
      ListboxDateienauswaehlen.Items.Add (DNameS);
    end;  
  end;
end;

procedure TForm28.ButtonzurueckClick(Sender: TObject);
begin
  ListBoxDaten.Clear;
  ListBoxausgewaehlteDateien.Clear;
  ListBoxDateienauswaehlen.Clear;
  AziFeld  := Nil;
  FalFeld  := Nil;
  SAziFeld := Nil;
  SFalFeld := Nil;
  DatNameS := Nil;
  Form28.Close;
end;

procedure TForm28.ButtonbeendenClick(Sender: TObject);
begin
  ListBoxDaten.Clear;
  ListBoxausgewaehlteDateien.Clear;
  ListBoxDateienauswaehlen.Clear;
  AziFeld  := Nil;
  FalFeld  := Nil;
  SAziFeld := Nil;
  SFalFeld := Nil;
  DatNameS := Nil;
  Form28.Close;
  if Programm = 14 then Form32.Close;
  if Programm = 15 then Form30.Close;
  if Programm = 17 then Form35.Close;
  if Programm = 11 then Form26.Close;
  SetCurrentDir(DirectS);
end;

procedure TForm28.ListBoxDateienauswaehlenClick(Sender: TObject);
var
  i : word;
  Datei   : TextFile;
  Typ     : TMsgDlgType;
  InfoS   : string;
  LoeschS : string;
begin
  if not Loesch then
  begin
    for i := 0 to ListboxDateienauswaehlen.Items.Count-1 do
    begin
      if ListboxDateienauswaehlen.Selected[i] then
      begin
        ListboxausgewaehlteDateien.Items.Add
          (ListboxDateienauswaehlen.Items.Strings[i]);
        ListboxDateienauswaehlen.Items.Delete(i);
        break;
      end;
    end;
    ButtonAuswahl.Enabled := true;
  end
  else
  begin
    for i := 0 to ListboxDateienauswaehlen.Items.Count-1 do
    begin
      if ListboxDateienauswaehlen.Selected[i] then
      begin
        LoeschS := ListBoxDateienauswaehlen.Items.Strings[i];
        LoeschS := DiscS+LoeschS+'.'+ExtenS;
        ListboxDateienauswaehlen.Items.Delete(i);
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

procedure TForm28.ListBoxausgewaehlteDateienClick(Sender: TObject);
var
  i : word;
begin
  for i := 0 to ListboxausgewaehlteDateien.Items.Count-1 do
  begin
    if ListboxausgewaehlteDateien.Selected[i] then
    begin
      ListboxDateienauswaehlen.Items.Add
            (ListboxausgewaehlteDateien.Items.Strings[i]);
      ListboxausgewaehlteDateien.Items.Delete(i);
      break;
    end;
  end;
end;

procedure TForm28.ButtonAuswahlClick(Sender: TObject);
var
  j           : byte;
  i           : word;
  DatAzimutS  : string[3];
  DatFallS    : string[2];
  ZeileS      : string[30];
  SDatAzimutS : string[3];
  SDatFallS   : string[3];
begin
  LabelAnzahl.Visible                := true;
  Buttonplotten.Enabled              := true;
  Drucker1.Enabled                   := true;
  DatenSpeichern.Enabled             := true;
  SpeedSpeichern.Enabled             := true;
  SpeedDrucken.Enabled               := true;
  SpeedWinWord.Enabled               := true;
  SpeedEinrichten.Enabled            := true; 
  ListboxDateienauswaehlen.Enabled   := false;
  ListboxausgewaehlteDateien.Enabled := false;
  DateiZahl := ListBoxausgewaehlteDateien.Items.Count-1;
  for j := 0 to DateiZahl do
  begin
    NameS := ListboxausgewaehlteDateien.Items.Strings[j]+ '.' + ExtenS;
    AusB := false;
    Testpfad (DiscS);
    Liesharn (j, NameS, DiscS, ZahlGlob, AziFeld, FalFeld,
              SAziFeld, SFalFeld);
    if AusB then       {zurück}
    begin
      ListBoxDateienauswaehlen.Clear;
      ListBoxausgewaehlteDateien.Clear;
      ListBoxDaten.Clear;
      LabelLin.Caption := '';
      Form28.Close;
    end;
    DateinameS[j] := NameS;
  end;
  Label00000.Caption := RightS('     '+IntToStr(ZahlGlob),5);
  for i := 1 to ZahlGlob do
  begin
    DatAzimutS   := IntToStr (AziFeld[i]);
    DatAzimutS   := RightS ('000' + DatAzimutS, 3);
    DatFallS     := IntToStr (FalFeld[i]);
    DatFallS     := RightS ('00' + DatFallS, 2);
    SDatAzimutS  := IntToStr (SAziFeld[i]);
    SDatAzimutS  := RightS ('000' + SDatAzimutS, 3);
    SDatFallS    := IntToStr (SFalFeld[i]);
    SDatFallS    := RightS ('000' + SDatFallS, 3);
    ZeileS := '      '+DatAzimutS+'/'+DatFallS+'    '+SDatAzimutS+'/'
              +SDatFallS;
    ListBoxDaten.Items.Add (ZeileS); {Daten und Ergebnis in Listbox schreiben}
  end;
  ButtonAuswahl.Enabled := false;
end;

procedure TForm28.speichernDClick(Sender: TObject);
begin
  if CurrentFile <> '' then Stressein(CurrentFile, ZahlGlob,
     AziFeld, SAziFeld, FalFeld, SFalFeld)
  else speichernDUnterClick(Sender);
end;

procedure TForm28.SpeedSpeichernClick(Sender: TObject);
begin
  speichernDClick(Sender);
end;

procedure TForm28.speichernDUnterClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := ExtenS;
  SaveDialog1.Filter     := 'Displacement Data (*.SLI)|*.SLI';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    Stressein(CurrentFile, ZahlGlob, AziFeld, SAziFeld, FalFeld,
              SFalFeld);
  end;
end;

procedure TForm28.loeschenClick(Sender: TObject);
begin
  Loesch := true;
end;

procedure TForm28.SpeedLoeschenClick(Sender: TObject);
begin
  loeschenClick(Sender);
end;

procedure TForm28.ButtonplottenClick(Sender: TObject);
begin
  if (Programm = 11) then Form29.Show;
  if Programm = 14 then Form33.Show;
  if Programm = 15 then Form31.Show;
  if Programm = 17 then
  begin
    if MethodeS = 'Eigenwerte' then Form34.Show;
    if MethodeS = 'Iteration'  then Form99.Show;
    if MethodeS = 'Direkt' then Form100.Show;
  end;
end;

procedure TForm28.Hilfe1Click(Sender: TObject);
var
  DateiS      : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\28Palaeospannung-dis.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\28PaleoStress-dis.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm28.Druckereinrichten1Click(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TForm28.SpeedEinrichtenClick(Sender: TObject);
begin
  DruckerEinrichten1Click(Sender);
end;

procedure TForm28.drucken1Click(Sender: TObject);
var
  Anzahl : word;
begin
  Anzahl := ZahlGlob;
  DruckPalaeo ('11', DateiZahl, DateiNameS, AziFeld, FalFeld,
               SAziFeld, SFalFeld, Anzahl);
end;

procedure TForm28.SpeedHilfeClick(Sender: TObject);
begin
  Hilfe1Click(Sender);                     {Hilfe noch nicht installiert}
end;

procedure TForm28.SpeedDruckenClick(Sender: TObject);
begin
  drucken1Click(Sender);
end;

procedure TForm28.ButtonDurchsuchenClick(Sender: TObject);
const
  Verz = 1000;
var
  NeuerPfadS : string;
  Datei      : TextFile;
  i          : integer;
begin
  NeuerPfadS := Tx(1002);
  if not DirectoryExists(PfadS) then PfadS := DirectS;
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

procedure TForm28.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if Programm = 11 then
  begin
    if SpracheS = 'DEUTSCH' then HilfeS := 'Palaeo-Spannung.doc';
    if SpracheS = 'ENGLISH' then HilfeS := 'Palaeo-Stress.doc';
    ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
                 nil,nil,sw_normal);
  end;
  if Programm = 14 then
  begin
    if SpracheS = 'DEUTSCH' then HilfeS := 'Hoeppener.doc';
    if SpracheS = 'ENGLISH' then HilfeS := 'Hoeppener-E.doc';
    ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
                 nil,nil,sw_normal);
  end;
  if Programm = 15 then
  begin
    if SpracheS = 'DEUTSCH' then HilfeS := 'Harnischflaechen.doc';
    if SpracheS = 'ENGLISH' then HilfeS := 'Slickensides.doc';
    ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
                 nil,nil,sw_normal);
  end;
  if Programm = 17 then
  begin
    if SpracheS = 'DEUTSCH' then HilfeS := 'Formfaktor.doc';
    if SpracheS = 'ENGLISH' then HilfeS := 'Shape-factor.doc';
    ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
                 nil,nil,sw_normal);
  end;
end;

procedure TForm28.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm28.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm28.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

procedure TForm28.WinWordClick(Sender: TObject);
var
  Anzahl : word;
begin
  Anzahl := ZahlGlob;
  SaveDialog1.DefaultExt := 'rtf';
  SaveDialog1.Filter     := 'rtf';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    WinDruckPalaeo (CurrentFile,'11', DateiZahl, DateiNameS,
                    AziFeld, FalFeld, SAziFeld, SFalFeld, Anzahl);
  end;
end;

procedure TForm28.SpeedWinWordClick(Sender: TObject);
begin
  WinWordClick(Sender);
end;

end.
