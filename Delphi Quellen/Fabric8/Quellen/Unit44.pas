unit Unit44;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Menus, StdCtrls, Einausga, Globvar, Drucken, WoodProg, Dateien,
  Basic, Texte, ComCtrls, Buttons, Shellapi, FileCtrl, Standard, Mask,
  ehsHelpRouter;

type
  TForm44 = class(TForm)
    Panel1       : TPanel;
    LabelDaten   : TLabel;
    LabelDLambda : TLabel;

    Panel2            : TPanel;
    Labelausgewaehlte : TLabel;

    Panel3       : TPanel;
    LabelDateien : TLabel;

    Panel4        : TPanel;
    Buttonzurueck : TButton;
    Buttonbeenden : TButton;

    Panel5          : TPanel;
    ButtonStart     : TButton;
    ButtonAuswahl: TButton;
    Buttonplotten   : TButton;

    Panel6             : TPanel;
    LabelExtension     : TLabel;
    LabelWOO           : TLabel;
    LabelAnzahl        : TLabel;
    Label00000         : TLabel;

    ListBoxDaten        : TListBox;
    ListBoxausgewaehlte : TListBox;
    ListBoxDateien      : TListBox;

    MainMenu1: TMainMenu;

    Drucker1    : TMenuItem;
    einrichten1 : TMenuItem;
    drucken1    : TMenuItem;

    Hilfe1: TMenuItem;

    PrinterSetupDialog1 : TPrinterSetupDialog;
    PrintDialog1        : TPrintDialog;
    StatusBar: TStatusBar;
    Panel7: TPanel;
    SpeedDrucken: TSpeedButton;
    SpeedHilfe: TSpeedButton;
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
    LabelN: TLabel;
    MaskEditPfad: TMaskEdit;
    SpeedEinrichten: TSpeedButton;
    Dloeschen: TMenuItem;
    loeschen: TMenuItem;
    SpeedLoeschen: TSpeedButton;

    procedure FormActivate(Sender: TObject);
    procedure ButtonzurueckClick(Sender: TObject);
    procedure ButtonbeendenClick(Sender: TObject);
    procedure ButtonStartClick(Sender: TObject);

    {Drucker}
    procedure einrichten1Click(Sender: TObject);
    procedure drucken1Click(Sender: TObject);

    procedure Hilfe1Click(Sender: TObject);
    procedure ListBoxDateienClick(Sender: TObject);
    procedure ListBoxausgewaehlteClick(Sender: TObject);
    procedure ButtonAuswahlClick(Sender: TObject);
    procedure ButtonplottenClick(Sender: TObject);
    procedure ShowHint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedDruckenClick(Sender: TObject);
    procedure SpeedHilfeClick(Sender: TObject);
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
  Form44          : TForm44;
  Anzahl          : word;
  DiscS           : string;
  ListBoxLoeschen : Boolean;
  Loesch          : boolean;

implementation
uses Unit42, Unit45, Unit46, Unit47, Unit77, Unit76;
{$R *.DFM}

procedure TForm44.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm44.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm44.FormActivate(Sender: TObject);
begin
  Left   := LeftDiag + ULap;
  Top    := TopDiag + ULap;
  Height := HeiForm;
  Width  := WidForm;
  setlength (Lambda1, MaxDaten);
  setlength (Lambda2, MaxDaten);
  setlength (Lambda3, MaxDaten);
  setlength (ZahlEinzel, Maxdaten);
  LabelDemo.Visible                := false;
  if DemoB then LabelDemo.Visible  := true;
  if Programm = 13 then Form44.Caption := Tx(743); {Fabric8: Woodcock-Diagramm,}
  if Programm = 16 then Form44.Caption := Tx(1510);
  if Programm = 25 then Form44.Caption := Tx(1517);
  ListBoxDaten.Hint        := Hilf(54);
  Panel1.Hint              := Hilf(54);
  ListBoxausgewaehlte.Hint := Hilf(32);
  Panel2.Hint              := Hilf(32);
  ListBoxDateien.Hint      := Hilf(33);
  Panel3.Hint              := Hilf(33);
  LabelPfad.Hint           := Hilf(34);
  LabelExtension.Hint      := Hilf(35);
  LabelAnzahl.Hint         := Hilf(36);
  ButtonStart.Hint         := Hilf(296);
  ButtonAuswahl.Hint       := Hilf(55);
  Buttonplotten.Hint       := Hilf(51);
  Buttonzurueck.Hint       := Hilf(52);
  Buttonbeenden.Hint       := Hilf(30);
  ButtonDurchsuchen.Hint   := Hilf(275);
  SpeedHandbuch.Hint       := Hilf(274);
  SpeedSpeichern.Hint      := Hilf(204);
  SpeedHilfe.Hint          := Hilf(210);
  SpeedDrucken.Hint        := Hilf(203);
  SpeedEinrichten.Hint     := Hilf(505);
  SpeedLoeschen.Hint       := Hilf(713);
  DatenSpeichern.Caption    := Tx(86);
  speichernD.Caption        := Tx(87);
  speichernDUnter.Caption   := Tx(88);
  Drucker1.Caption          := Tx(92);
  drucken1.Caption          := Tx(93);
  Einrichten1.Caption       := Tx(94);
  Hilfe1.Caption            := Tx(162)+' (F1)';
  LabelDaten.Caption        := Tx(183);   {Daten:}
  Labelausgewaehlte.Caption := Tx(136);
  LabelDateien.Caption      := Tx(137);
  LabelAnzahl.Caption       := Tx(222);
  ButtonAuswahl.Caption     := Tx(248);
  ButtonAuswahl.Caption     := Tx(248);
  Buttonplotten.Caption     := Tx(241);
  Buttonzurueck.Caption     := Tx(30);
  Buttonbeenden.Caption     := Tx(53);
  Buttonzurueck.Enabled     := false;
  Buttonbeenden.Enabled     := false;
  SpeedSpeichern.Enabled    := false;
  SpeedDrucken.Enabled      := false;
  DatenSpeichern.Enabled    := false;
  LabelDaten.Enabled          := false;
  LabelDLambda.Enabled        := false;
  Labelausgewaehlte.Enabled   := false;
  LabelDateien.Enabled        := false;
  LabelPfad.Enabled           := false;
  LabelExtension.Enabled      := false;
  LabelWOO.Caption            := '';
  LabelAnzahl.Enabled         := false;
  Label00000.Caption          := '';
  ListboxDaten.Enabled        := false;
  Listboxausgewaehlte.Enabled := false;
  ListboxDateien.Enabled      := false;
  ButtonAuswahl.Enabled       := false;
  Buttonplotten.Enabled       := false;
  Drucker1.Enabled            := false;
  LabelPfad.Caption           := Tx(1003);
  ButtonDurchsuchen.Caption   := Tx(1004);
  ButtonDurchsuchen.Enabled   := false;
  Handbuch.Caption            := Tx(1055)+' (F2)';
  Literatur.Caption           := Tx(1183)+' (F5)';
  SpeedLiteratur.Hint         := Hilf(462);
  WinWord.Caption             := Tx(1207);
  SpeedWinWord.Hint           := Hilf(470);
  SpeedWinWord.Enabled        := false;
  SpeedEinrichten.Enabled     := false;
  Loesch                      := false;
  DLoeschen.Caption           := Tx(1659);
  Loeschen.Caption            := Tx(1660);
  Dloeschen.Enabled           := false;
  SpeedLoeschen.Enabled       := false;
end;

procedure TForm44.ButtonStartClick(Sender: TObject);
var
  DatS     : string;
  i        : word;
  DNameS   : string[80];
begin
  Loesch                := false;
  ButtonAuswahl.Enabled := false;
  Dloeschen.Enabled     := true;
  SpeedLoeschen.Enabled := true;  
  ListBoxDaten.Clear;
  ListBoxausgewaehlte.Clear;
  ListBoxDateien.Clear;
  Label00000.Caption          := '';
  Drucker1.Enabled            := false;
  Buttonzurueck.Enabled       := true;
  Buttonbeenden.Enabled       := true;
  LabelDaten.Enabled          := true;
  LabelDLambda.Enabled        := true;
  Labelausgewaehlte.Enabled   := true;
  LabelDateien.Enabled        := true;
  LabelPfad.Enabled           := true;
  LabelExtension.Enabled      := true;
  LabelAnzahl.Enabled         := true;
  ListboxDaten.Enabled        := true;
  Listboxausgewaehlte.Enabled := true;
  ListboxDateien.Enabled      := true;
  ExtenS                      := 'WOO';
  ButtonDurchsuchen.Enabled   := true;
  Laufwerk(DatS,EingabeS, DiscS);
  ListBoxLoeschen             := false;
  Datsuch (DateiZahl, DiscS, ExtenS, DateiNameS, ListBoxLoeschen);
  MaskEditPfad.Text := DiscS;
  LabelWOO.Caption      := ExtenS;
  if not ListBoxLoeschen then
  begin
    for i := 1 to DateiZahl do
    begin
      DNameS := LeftS (DateiNameS[i], length(DateiNameS[i])- 4);
      ListboxDateien.Items.Add (DNameS);
    end;
  end;
end;

procedure TForm44.ListBoxDateienClick(Sender: TObject);
var
  i       : word;
  Datei   : TextFile;
  Typ     : TMsgDlgType;
  InfoS   : string;
  LoeschS : string;
begin
  if not Loesch then
  begin
    for i := 0 to ListboxDateien.Items.Count-1 do
    begin
      if ListboxDateien.Selected[i] then
      begin
        Listboxausgewaehlte.Items.Add (ListboxDateien.Items.Strings[i]);
        ListboxDateien.Items.Delete(i);
        break;
      end;
    end;
    ButtonAuswahl.Enabled := true;
  end
  else
  begin
    for i := 0 to ListboxDateien.Items.Count-1 do
    begin
      if ListboxDateien.Selected[i] then
      begin
        LoeschS := ListBoxDateien.Items.Strings[i];
        LoeschS := DiscS+LoeschS+'.'+ExtenS;
        break;
      end;
    end;
    Typ    := mtInformation;
    InfoS  := Tx(1226);
    if Dlgmessage(Typ, InfoS, Tx(1656)+'  '+LoeschS+'  '+Tx(1657),1) = 6 then
    begin
      ListboxDateien.Items.Delete(i);
      assignFile (Datei,LoeschS);
      reset(Datei);
      CloseFile(Datei);
      Erase(Datei);
      Showmessage(LoeschS+' '+Tx(1658));
    end;
  end;
  Loesch := false;  
end;

procedure TForm44.ListBoxausgewaehlteClick(Sender: TObject);
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

procedure TForm44.ButtonplottenClick(Sender: TObject);
begin
  if Programm = 13 then Form45.Show;
  if Programm = 16 then Form47.Show;
  if Programm = 25 then Form77.Show;
end;

procedure TForm44.ButtonzurueckClick(Sender: TObject);
begin
  Lambda1    := Nil;
  Lambda2    := Nil;
  Lambda3    := Nil;
  ZahlEinzel := Nil;
  ListBoxDateien.Clear;
  ListBoxausgewaehlte.Clear;
  ListBoxDaten.Clear;
  Form44.Close;
end;

procedure TForm44.ButtonbeendenClick(Sender: TObject);
begin
  Lambda1    := Nil;
  Lambda2    := Nil;
  Lambda3    := Nil;
  ZahlEinzel := Nil;
  ListBoxDateien.Clear;
  ListBoxausgewaehlte.Clear;
  ListBoxDaten.Clear;
  Form44.Close;
  if Programm = 16 then Form46.Close;
  if Programm = 13 then Form42.Close;
  if Programm = 25 then Form76.Close;
  SetCurrentDir(DirectS);
end;

procedure TForm44.einrichten1Click(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TForm44.SpeedEinrichtenClick(Sender: TObject);
begin
  einrichten1Click(Sender);
end;

procedure TForm44.drucken1Click(Sender: TObject);
begin
  Wdrucken (Programm, DateiNameS[0], ZahlGlob, Lambda1,
            Lambda2, Lambda3);   Erweiterung (ExtenS);
end;

procedure TForm44.ButtonAuswahlClick(Sender: TObject);
var
  j, i, N  : word;
  NameS    : string;
  LAmbda1S : string[8];
  Lambda2S : string[8];
  Lambda3S : string[8];
  ZeileS   : string[40];
  ZahlS    : string[4];
begin
  Buttonplotten.Enabled    := true;
  Drucker1.Enabled         := true;
  SpeedSpeichern.Enabled   := true;
  DatenSpeichern.Enabled   := true;
  SpeedDrucken.Enabled     := true;
  SpeedWinWord.Enabled     := true;
  SpeedEinrichten.Enabled  := true;
  ListboxDateien.Enabled   := false;
  Listboxausgewaehlte.Enabled := false;
  DateiZahl := ListBoxausgewaehlte.Items.Count-1;
  N := 0;
  for j := 0 to DateiZahl do
  begin
    NameS := Listboxausgewaehlte.Items.Strings[j]+ '.' + ExtenS;
    AusB := false;
    Wlies (DiscS, NameS, N, Lambda1, Lambda2, Lambda3, ZahlEinzel);
    ZahlGlob := N;
    if AusB then       {zurück}
    begin
      ListBoxDateien.Clear;
      ListBoxausgewaehlte.Clear;
      ListBoxDaten.Clear;
      LabelWOO.Caption := '';
      Form44.Close;
    end;
    DateinameS[j] := NameS;
  end;
  Label00000.Caption := RightS('     '+IntToStr(ZahlGlob),5);
  for i := 1 to ZahlGlob do
  begin
    Lambda1S := IntToStr (Lambda1[i]);
    Lambda1S := RightS ('000' + Lambda1S, 3);
    Lambda2S := IntToStr (Lambda2[i]);
    Lambda2S := RightS ('000' + Lambda2S, 3);
    Lambda3S := IntToStr (Lambda3[i]);
    Lambda3S := RightS ('000' + Lambda3S, 3);
    ZahlS    := RightS ('    '+IntToStr(ZahlEinzel[i]),4);
    ZeileS := ' 0.'+Lambda1S+'  0.'+Lambda2S+'  0.'+Lambda3S+'  '+ZahlS;
    ListBoxDaten.Items.Add (ZeileS); {Daten und Ergebnis in Listbox schreiben}
  end;
  ButtonAuswahl.Enabled := false;
end;

procedure TForm44.SpeedDruckenClick(Sender: TObject);
begin
  drucken1Click(Sender);
end;

procedure TForm44.SpeedHilfeClick(Sender: TObject);
begin
  Hilfe1Click(Sender);
end;

procedure TForm44.ButtonDurchsuchenClick(Sender: TObject);
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

procedure TForm44.Hilfe1Click(Sender: TObject);
var
  DateiS      : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\44Woodcock-dis.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\44Woodcock-dis.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm44.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if Programm = 13 then
  begin
    if SpracheS = 'DEUTSCH' then HilfeS := 'Woodcock-Diagramm.doc';
    if SpracheS = 'ENGLISH' then HilfeS := 'Woodcock-Diagram-E.doc';
    ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
  end;
  if Programm = 16 then
  begin
    if SpracheS = 'DEUTSCH' then HilfeS := 'Vollmer-Diagramm.doc';
    if SpracheS = 'ENGLISH' then HilfeS := 'Vollmer-Diagram-E.doc';
    ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
                 nil,nil,sw_normal);
  end;
  if Programm = 25 then
  begin
    if SpracheS = 'DEUTSCH' then HilfeS := 'Signifikanztest.doc';
    if SpracheS = 'ENGLISH' then HilfeS := 'Test_of_Significance.doc';
    ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
                 nil,nil,sw_normal);
  end;               
end;

procedure TForm44.speichernDClick(Sender: TObject);
begin
   if CurrentFile <> '' then WSchreiben (CurrentFile, ZahlGlob,
      Lambda1, Lambda2, Lambda3, ZahlEinzel)
   else speichernDUnterClick(Sender);
end;

procedure TForm44.SpeedSpeichernClick(Sender: TObject);
begin
  speichernDClick(Sender);
end;

procedure TForm44.speichernDUnterClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := ExtenS;
  SaveDialog1.Filter     := 'Eigenvalues (*.woo)|*.WOO';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    WSchreiben (CurrentFile, ZahlGlob, Lambda1, Lambda2,
                Lambda3, ZahlEinzel);
  end;
end;

procedure TForm44.loeschenClick(Sender: TObject);
begin
  Loesch := true;
  showmessage(Tx(1719)+chr(10)+chr(13)+Tx(1720));   
end;

procedure TForm44.SpeedLoeschenClick(Sender: TObject);
begin
  loeschenClick(Sender);
end;

procedure TForm44.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm44.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm44.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

procedure TForm44.WinWordClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := 'rtf';
  SaveDialog1.Filter     := 'rtf';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    WinWdrucken (CurrentFile, Programm, DateiNameS[0],
                 ZahlGlob, Lambda1, Lambda2, Lambda3);
  end;
end;

procedure TForm44.SpeedWinWordClick(Sender: TObject);
begin
  WinWordClick(Sender);
end;

end.
