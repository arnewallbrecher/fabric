unit Unit62;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, Buttons, Menus, ExtCtrls,
  ComCtrls, Texte, Globvar, Einausga, Dateien, Basic, Drucken,
  Shellapi, FileCtrl, Standard, Mask, ehsHelpRouter;

type
  TForm62 = class(TForm)
    PanelKompression: TPanel;
    LabelKompression: TLabel;
    ListBoxKompression: TListBox;

    PanelAusgewaehlt   : TPanel;
    LabelAusgewaehlt   : TLabel;
    ListBoxAusgewaehlt : TListBox;

    PanelAusgDateien   : TPanel;
    LabelAusgDateien   : TLabel;
    ListBoxAusgDateien : TListBox;

    MainMenu1  : TMainMenu;
    Drucker1   : TMenuItem;
    einrichten : TMenuItem;
    drucken    : TMenuItem;

    Hilfe: TMenuItem;

    PanelSpeed   : TPanel;
    SpeedDrucker : TSpeedButton;
    SpeedHilfe   : TSpeedButton;

    PrinterSetupDialog1 : TPrinterSetupDialog;
    PrintDialog1        : TPrintDialog;

    PanelDirectory   : TPanel;
    LabelExtension   : TLabel;
    LabelLIN         : TLabel;
    LabelAnzahl      : TLabel;
    Label00000       : TLabel;

    PanelStart    : TPanel;
    ButtonStart   : TButton;
    ButtonAuswahl : TButton;
    ButtonPlotten : TButton;

    Panelzurueck  : TPanel;
    Buttonzurueck : TButton;
    ButtonBeenden : TButton;

    StatusBar1: TStatusBar;
    PanelDehnung: TPanel;
    LabelDehnung: TLabel;
    ListBoxDehnung: TListBox;
    PanelPfad: TPanel;
    ButtonDurchsuchen: TButton;
    LabelPfad: TLabel;
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
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ShowHint(Sender: TObject);
    procedure ButtonzurueckClick(Sender: TObject);
    procedure ButtonBeendenClick(Sender: TObject);
    procedure ButtonStartClick(Sender: TObject);
    procedure ListBoxAusgDateienClick(Sender: TObject);
    procedure ListBoxAusgewaehltClick(Sender: TObject);
    procedure ButtonAuswahlClick(Sender: TObject);
    procedure ButtonPlottenClick(Sender: TObject);
    procedure druckenClick(Sender: TObject);
    procedure einrichtenClick(Sender: TObject);
    procedure SpeedDruckerClick(Sender: TObject);
    procedure SpeedHilfeClick(Sender: TObject);
    procedure HilfeClick(Sender: TObject);
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
  end;

var
  Form62     : TForm62;
  DiscS      : string;
  NameS      : string[80];
  ListBoxLoeschen : Boolean;

implementation
uses Unit60, Unit63;
{$R *.DFM}

procedure TForm62.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm62.ShowHint (Sender: TObject);
begin
  StatusBar1.SimpleText := Application.Hint;
end;

procedure TForm62.FormActivate(Sender: TObject);
begin
  Left   := 100;
  Top    := 80;
  Width  := 830;
  Height := 620;
  LabelDemo.Visible                := false;
  if DemoB then LabelDemo.Visible  := true;
  Form62.Caption           := Tx(973);
  ListBoxKompression.Hint  := Hilf(54);
  ListBoxDehnung.Hint      := Hilf(54);
  PanelKompression.Hint    := Hilf(54);
  PanelDehnung.Hint        := Hilf(54);
  ListBoxAusgewaehlt.Hint  := Hilf(32);
  PanelAusgewaehlt.Hint    := Hilf(32);
  ListBoxAusgDateien.Hint  := Hilf(33);
  PanelAusgDateien.Hint    := Hilf(33);
  LabelPfad.Hint           := Hilf(34);
  LabelExtension.Hint      := Hilf(35);
  LabelAnzahl.Hint         := Hilf(36);
  ButtonStart.Hint         := Hilf(296);
  ButtonAuswahl.Hint       := Hilf(55);
  Buttonplotten.Hint       := Hilf(51);
  Buttonzurueck.Hint       := Hilf(52);
  Buttonbeenden.Hint       := Hilf(30);
  SpeedDrucker.Hint        := Hilf(203);
  SpeedHilfe.Hint          := Hilf(210);
  ButtonDurchsuchen.Hint   := Hilf(275);
  SpeedHandbuch.Hint       := Hilf(274);
  SpeedSpeichern.Hint      := Hilf(204);
  SpeedEinrichten.Hint     := Hilf(505);
  DatenSpeichern.Caption   := Tx(86);
  speichernD.Caption       := Tx(87);
  speichernDUnter.Caption  := Tx(88);
  Drucker1.Caption         := Tx(92);
  drucken.Caption          := Tx(93);
  einrichten.Caption       := Tx(94);
  Hilfe.Caption            := Tx(162)+' (F1)';
  LabelKompression.Caption := Tx(975);
  LabelDehnung.Caption     := Tx(976);
  LabelAusgewaehlt.Caption := Tx(136);
  LabelAusgDateien.Caption := Tx(137);
  LabelAnzahl.Caption      := Tx(222);
  ButtonAuswahl.Caption    := Tx(248);
  Buttonplotten.Caption    := Tx(241);
  Buttonzurueck.Caption    := Tx(30);
  Buttonbeenden.Caption    := Tx(53);
  LabelAusgDateien.Enabled := false;
  LabelAusgewaehlt.Enabled := false;
  LabelKompression.Enabled := false;
  LabelDehnung.Enabled     := false;
  LabelPfad.Enabled        := false;
  LabelExtension.Enabled   := false;
  LabelLIN.Caption         := '';
  LabelAnzahl.Enabled      := false;
  Label00000.Caption       := '';
  ListboxAusgDateien.Enabled  := false;
  ListboxAusgewaehlt.Enabled  := false;
  ListboxKompression.Enabled  := false;
  ListBoxDehnung.Enabled      := false;
  Buttonplotten.Enabled       := false;
  ButtonAuswahl.Enabled       := false;
  Buttonzurueck.Enabled       := false;
  Buttonbeenden.Enabled       := false;
  Drucker1.Enabled            := false;
  SpeedDrucker.Enabled        := false;
  LabelPfad.Caption           := Tx(1003);
  ButtonDurchsuchen.Caption   := Tx(1004);
  ButtonDurchsuchen.Enabled   := false;
  Handbuch.Caption            := Tx(1055)+' (F2)';
  Literatur.Caption           := Tx(1183)+' (F5)';
  SpeedLiteratur.Hint         := Hilf(462);
  SpeedSpeichern.Enabled      := false;
  SpeedDrucker.Enabled        := false;
  WinWord.Caption             := Tx(1207);
  SpeedWinWord.Hint           := Hilf(470);
  SpeedWinWord.Enabled        := false;
  SpeedEinrichten.Enabled     := false;
end;

procedure TForm62.ButtonzurueckClick(Sender: TObject);
begin
  AziFeld := NIL;
  FalFeld := NIL;
  Talbot  := NIL;
  ListBoxAusgDateien.Clear;
  ListBoxAusgewaehlt.Clear;
  ListBoxKompression.Clear;
  ListBoxDehnung.Clear;
  Form62.Close;
end;

procedure TForm62.ButtonBeendenClick(Sender: TObject);
begin
  AziFeld := NIL;
  FalFeld := NIL;
  Talbot  := NIL;
  ListBoxAusgDateien.Clear;
  ListBoxAusgewaehlt.Clear;
  ListBoxKompression.Clear;
  ListBoxDehnung.Clear;
  Form62.Close;
  Form60.Close;
  SetCurrentDir(DirectS);
end;

procedure TForm62.ButtonStartClick(Sender: TObject);
var
  Dzahl      : word;
  DatNameS   : array[0..1000] of string;
  i          : word;
  DNameS     : string[80];
  DatS       : string;
begin
  setlength (AziFeld, MaxDaten);
  setlength (FalFeld, MaxDaten);
  setlength (Talbot,  MaxDaten);
  ListBoxAusgDateien.Clear;
  ListBoxAusgewaehlt.Clear;
  ListBoxKompression.Clear;
  ListBoxDehnung.Clear;
  LabelAusgDateien.Enabled    := true;
  LabelAusgewaehlt.Enabled    := true;
  LabelKompression.Enabled    := true;
  LabelDehnung.Enabled        := true;
  LabelPfad.Enabled           := true;
  LabelExtension.Enabled      := true;
  LabelLIN.Caption            := '';
  Label00000.Caption          := '';
  ListboxAusgDateien.Enabled  := true;
  ListboxAusgewaehlt.Enabled  := true;
  ListboxKompression.Enabled  := true;
  ListBoxDehnung.Enabled      := true;
  Buttonzurueck.Enabled       := true;
  Buttonbeenden.Enabled       := true;
  ButtonAuswahl.Enabled       := false;
  Buttonplotten.Enabled       := false;
  LabelAnzahl.Enabled         := false;
  case Gefuegetyp of
    1 : ExtenS := 'TLI';
    2 : ExtenS := 'TPL';
  end;
  ButtonDurchsuchen.Enabled := true;
  Laufwerk(DatS,EingabeS, DiscS);
  ListBoxLoeschen := false;
  Datsuch (Dzahl, DiscS, ExtenS, DatNameS, ListBoxLoeschen);
  MaskEditPfad.Text     := DiscS;
  LabelLIN.Caption      := ExtenS;
  if not ListBoxLoeschen then
  begin
    for i := 1 to Dzahl do
    begin
      DNameS := LeftS (DatNameS[i], length(DatNameS[i])- 4);
      ListboxAusgDateien.Items.Add (DNameS);
    end;
  end;
end;

procedure TForm62.ListBoxAusgDateienClick(Sender: TObject);
var
  i : word;
begin
  for i := 0 to ListboxAusgDateien.Items.Count-1 do
  begin
    if ListboxAusgDateien.Selected[i] then
    begin
      ListboxAusgewaehlt.Items.Add (ListboxAusgDateien.Items.Strings[i]);
      ListboxAusgDateien.Items.Delete(i);
      break;
    end;
  end;
  ButtonAuswahl.Enabled := true;
end;

procedure TForm62.ListBoxAusgewaehltClick(Sender: TObject);
var
  i : word;
begin
  for i := 0 to ListboxAusgewaehlt.Items.Count-1 do
  begin
    if ListboxAusgewaehlt.Selected[i] then
    begin
      ListboxAusgDateien.Items.Add (ListboxAusgewaehlt.Items.Strings[i]);
      ListboxAusgewaehlt.Items.Delete(i);
      break;
    end;
  end;
end;

procedure TForm62.ButtonAuswahlClick(Sender: TObject);
var
  j          : byte;
  i          : word;
  DatAzimutS : string[4];
  DatFallS   : string[2];
  ZeileS     : string[20];
  Vorzeichen : byte;
begin
  ButtonPlotten.Enabled       := true;
  Drucker1.Enabled            := true;
  SpeedSpeichern.Enabled      := true;
  SpeedDrucker.Enabled        := true;
  SpeedWinWord.Enabled        := true;
  ListboxAusgDateien.Enabled  := false;
  ListboxAusgewaehlt.Enabled  := false;
  SpeedDrucker.Enabled        := true;
  SpeedEinrichten.Enabled     := true;
  LabelAnzahl.Enabled         := true;
  DateiZahl := ListBoxAusgewaehlt.Items.Count-1;
  for j := 0 to DateiZahl do
  begin
    NameS := ListboxAusgewaehlt.Items.Strings[j]+ '.' + ExtenS;
    AusB := false;
    Testpfad (DiscS);
    LiesDatenT (j, NameS, DiscS, ZahlGlob, AziFeld, FalFeld,
                Vorzeichen);
    if AusB then       {zurück}
    begin
      ListBoxAusgDateien.Clear;
      ListBoxAusgewaehlt.Clear;
      ListBoxKompression.Clear;
      ListBoxDehnung.Clear;
      LabelLIN.Caption := '';
      Form62.Close;
    end;
    DateiNameS[j] := NameS;
  end;
  Label00000.Caption := RightS('     '+IntToStr(ZahlGlob),5);
  for i := 1 to ZahlGlob do
  begin
    DatAzimutS := IntToStr (AziFeld[i]);
    DatAzimutS := RightS ('    ' + DatAzimutS, 4);
    DatFallS   := IntToStr (FalFeld[i]);
    DatFallS   := RightS ('00' + DatFallS, 2);
    ZeileS := '     '+DatAzimutS+'/'+DatFallS;
    if Talbot[i] then ListBoxKompression.Items.Add (ZeileS);
    if not Talbot[i] then ListBoxDehnung.Items.Add (ZeileS);
  end;
  ButtonAuswahl.Enabled := false;
end;

procedure TForm62.ButtonPlottenClick(Sender: TObject);
begin
  Form63.Show;
end;

procedure TForm62.druckenClick(Sender: TObject);
begin
  DruckenT (0, DateiNameS, AziFeld, FalFeld,
            ZahlGlob, Talbot);
end;

procedure TForm62.einrichtenClick(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TForm62.SpeedEinrichtenClick(Sender: TObject);
begin
  einrichtenClick(Sender);
end;

procedure TForm62.SpeedDruckerClick(Sender: TObject);
begin
  druckenClick(Sender);
end;

procedure TForm62.SpeedHilfeClick(Sender: TObject);
begin
  HilfeClick(Sender);
end;

procedure TForm62.HilfeClick(Sender: TObject);
const
  Anfang = 162;
var
  DateiS      : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\stra0jtx.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\Talbot-file.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm62.ButtonDurchsuchenClick(Sender: TObject);
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm62.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Talbot-Methode.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'Talbot_Method.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm62.speichernDClick(Sender: TObject);
begin
  if CurrentFile <> '' then SpeichernT (CurrentFile, ZahlGlob, AziFeld,
     FalFeld, Talbot)
  else speichernDUnterClick(Sender);
end;

procedure TForm62.SpeedSpeichernClick(Sender: TObject);
begin
  speichernDClick(Sender);
end;

procedure TForm62.speichernDUnterClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := ExtenS;
  SaveDialog1.Filter     := ExtenS;
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    SpeichernT (CurrentFile, ZahlGlob, AziFeld, FalFeld, Talbot);
  end;
end;

procedure TForm62.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm62.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm62.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

procedure TForm62.WinWordClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := 'rtf';
  SaveDialog1.Filter     := 'rtf';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    WinDruckenT (CurrentFile, 0, DateiNameS, AziFeld, FalFeld,
                 ZahlGlob);
  end;
end;

procedure TForm62.SpeedWinWordClick(Sender: TObject);
begin
  WinWordClick(Sender);
end;

end.
