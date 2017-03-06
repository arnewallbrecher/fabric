unit Unit16;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, ExtCtrls, StdCtrls, Mask, Globvar, Basic,
  Standard, Texte, Menus, EinAusga, Dateien, Drucken,
  ComCtrls, Buttons, Shellapi, ehsHelpRouter;

type
  TForm16 = class(TForm)
    Panel1        : TPanel;
    LabelDatenals : TLabel;
    LabelBetragin : TLabel;

    Panel2       : TPanel;
    LabelDaten   : TLabel;
    ListBoxDaten : TListBox;

    Panel3      : TPanel;
    LabelAnzahl : TLabel;
    Label00000  : TLabel;

    Panel4           : TPanel;
    LabelRichtung    : TLabel;
    MaskEditRichtung : TMaskEdit;
    LabelBetrag      : TLabel;
    MaskEditBetrag   : TMaskEdit;

    Buttonzuruck    : TButton;
    Buttonbeenden   : TButton;
    ButtonDbeenden  : TButton;
    ButtonStart     : TButton;
    ButtonMasszahlen: TButton;

    MainMenu1: TMainMenu;

    Datenspeichern1 : TMenuItem;
    speichernD: TMenuItem;
    speichernDUnter: TMenuItem;

    Hilfe1: TMenuItem;
    StatusBar: TStatusBar;

    Panel5: TPanel;
    SpeedDatenF: TSpeedButton;
    SpeedHilfe: TSpeedButton;
    SpeedDrucken: TSpeedButton;
    Drucker1: TMenuItem;
    einrichten1: TMenuItem;
    drucken1: TMenuItem;
    PrintDialog1: TPrintDialog;
    PrinterSetupDialog1: TPrinterSetupDialog;
    PanelMaxDat: TPanel;
    LabelMaxDat: TLabel;
    LabelMenge: TLabel;
    Handbuch: TMenuItem;
    SaveDialog1: TSaveDialog;
    LabelDemo: TLabel;
    SpeedHandbuch: TSpeedButton;
    Literatur: TMenuItem;
    SpeedLiteratur: TSpeedButton;
    WinWord: TMenuItem;
    SpeedWinWord: TSpeedButton;
    LabelLoeschen: TLabel;
    SpeedEinrichten: TSpeedButton;

    procedure FormActivate(Sender: TObject);
    procedure ButtonStartClick(Sender: TObject);
    procedure ButtonzuruckClick(Sender: TObject);
    procedure ButtonbeendenClick(Sender: TObject);
    procedure ButtonDbeendenClick(Sender: TObject);
    procedure ButtonMasszahlenClick(Sender: TObject);

    {Daten speichern}
    procedure speichernDClick(Sender: TObject);
    procedure speichernDUnterClick(Sender: TObject);
    procedure MaskEditRichtungKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditBetragKeyPress(Sender: TObject; var Key: Char);
    procedure Hilfe1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ShowHint(Sender: TObject);
    procedure SpeedDatenFClick(Sender: TObject);
    procedure SpeedHilfeClick(Sender: TObject);
    procedure einrichten1Click(Sender: TObject);
    procedure drucken1Click(Sender: TObject);
    procedure SpeedDruckenClick(Sender: TObject);
    procedure HandbuchClick(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
    procedure SpeedLiteraturClick(Sender: TObject);
    procedure WinWordClick(Sender: TObject);
    procedure SpeedWinWordClick(Sender: TObject);
    procedure ListBoxDatenClick(Sender: TObject);
    procedure SpeedEinrichtenClick(Sender: TObject);
  end;

var
  Form16     : TForm16;
  Anzahl     : word;
  ExtensionS : string[3];
  AzimutS    : string;
  WertS      : string;

implementation
uses Unit15, Unit17, Unit19;
{$R *.DFM}

procedure TForm16.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm16.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm16.FormActivate(Sender: TObject);
begin
  Left   := LeftDiag + ULap;
  Top    := TopDiag + ULap;
  Width  := WidForm;
  Height := HeiForm;
  setlength (AziFeld, MaxDaten);
  setlength (FalFeld, MaxDaten);
  LabelDemo.Visible                := false;
  if DemoB then LabelDemo.Visible  := true;
  LabelMaxDat.Caption          := Tx(981);
  LabelMenge.Caption           := Inttostr(MaxDaten);
  PanelMaxDat.Hint             := Hilf(268);
  if Programm = 6 then
    Form16.Caption              := Tx(838); {Fabric7: Maßzahlen, Diskette}
  if Programm = 7 then
    Form16.Caption              := Tx(840); {Fabric7: Plot einer Richtungsr..}
  Panel3.Hint                   := Hilf(20);
  MaskEditRichtung.Hint         := Hilf(43);
  MaskEditBetrag.Hint           := Hilf(77);
  ButtonStart.Hint              := Hilf(50);
  ButtonDbeenden.Hint           := Hilf(78);
  ButtonMasszahlen.Hint         := Hilf(79);
  ListBoxDaten.Hint             := Hilf(53);
  Panel2.Hint                   := Hilf(53);
  Buttonzuruck.Hint             := Hilf(81);
  Buttonbeenden.Hint            := Hilf(30);
  SpeedDatenF.Hint              := Hilf(204);
  SpeedHilfe.Hint               := Hilf(210);
  SpeedHandbuch.Hint            := Hilf(274);
  SpeedEinrichten.Hint          := Hilf(505);
  Datenspeichern1.Caption       := Tx(86);
  speichernD.Caption            := Tx(87);
  speichernDUnter.Caption       := Tx(88);
  Hilfe1.Caption                := Tx(162)+' (F1)';
  LabelDatenals.Caption         := Tx(344); {Daten als Azimut eingeben.}
  LabelBetragin.Caption         := Tx(345); {Betrag in ganzen Zahlen angeben.}
  LabelAnzahl.Caption           := Tx(222);
  LabelDaten.Caption            := Tx(346); {Richtung:     Betrag:}
  LabelRichtung.Caption         := Tx(347);
  LabelBetrag.Caption           := Tx(348);
  ButtonDbeenden.Caption        := Tx(182);
  ButtonMasszahlen.Caption      := Tx(349);
  Buttonzuruck.Caption          := Tx(30);
  Buttonbeenden.Caption         := Tx(53);
  Drucker1.Caption              := Tx(92);
  if Programm = 7 then
    ButtonMasszahlen.Caption    := Tx(241);
  Drucker1.Enabled              := false;
  SpeedDrucken.Enabled          := false;
  Label00000.Caption            := '';
  MaskEditRichtung.EditMask     := '999;0; ';
  MaskEditBetrag.EditMask       := '9999;0; ';
  MaskEditRichtung.Enabled      := false;
  MaskEditBetrag.Enabled        := false;
  LabelDaten.Enabled            := false;
  LabelAnzahl.Enabled           := false;
  Label00000.Enabled            := false;
  LabelRichtung.Enabled         := false;
  LabelBetrag.Enabled           := false;
  ButtonDbeenden.Enabled        := false;
  ListBoxDaten.Enabled          := false;
  DatenSpeichern1.Enabled       := false;
  ButtonMasszahlen.Enabled      := false;
  Buttonzuruck.Enabled          := false;
  Buttonbeenden.Enabled         := false;
  SpeedDatenF.Enabled           := false;
  if RichtungenS = 'Richtungen' then
  begin
    if BereichS = '1..180°' then ExtensionS := 'STR';
    if BereichS = '1..360°' then ExtensionS := 'Azi';
  end;
  if RichtungenS = 'Betraege' then
  begin
    if BereichS = '1..180°' then ExtensionS := 'LST';
    if BereichS = '1..360°' then ExtensionS := 'LAZ';
  end;
  Handbuch.Caption := Tx(1055)+' (F2)';
  Literatur.Caption   := Tx(1183)+' (F5)';
  SpeedLiteratur.Hint := Hilf(462);
  MaskEditRichtung.Clear;
  MaskEditBetrag.Clear;
  MaskEditRichtung.Enabled := false;
  MaskEditBetrag.Enabled   := false;
  WinWord.Caption          := Tx(1207);
  SpeedWinWord.Hint        := Hilf(470);
  SpeedWinWord.Enabled     := false;
  LabelLoeschen.Caption    := Tx(1257);
  LabelLoeschen.Visible    := false;
  SpeedEinrichten.Enabled  := false;
end;

procedure TForm16.ButtonStartClick(Sender: TObject);
begin
  MaskEditRichtung.Enabled := true;
  MaskEditRichtung.SetFocus;
  Buttonzuruck.Enabled   := true;
  Buttonbeenden.Enabled  := true;
  LabelDaten.Enabled     := true;
  LabelAnzahl.Enabled    := true;
  Label00000.Enabled     := true;
  LabelRichtung.Enabled  := true;
  ButtonDbeenden.Enabled := true;
  Anzahl                 := 0;
  Label00000.Caption     := '';
  ListBoxDaten.Clear;
  if RichtungenS = 'Betraege' then LabelBetrag.Enabled := true;
  LabelLoeschen.Visible := true;
end;

procedure TForm16.MaskEditRichtungKeyPress(Sender: TObject; var Key: Char);
var
  Azimut    : word;
  ZeileS    : string[30];
  AnzahlS   : string[6];
  Fall      : word;
  MaxAzi    : word;
begin
  MaxAzi := 360;
  if Winkel = 2 then MaxAzi := 400;
  if Key = chr(13) then
  begin
    AzimutS := MaskEditRichtung.Text;
    Leerloeschen (AzimutS);
    if AzimutS = '' then exit;
    Azimut  := StrToInt(AzimutS);
    if Azimut > MaxAzi then
    begin
      MaskEditRichtung.Clear;
      MaskEditRichtung.SetFocus;
      exit;
    end;
    if RichtungenS = 'Betraege' then
    begin
      MaskEditBetrag.Enabled := true;
      MaskEditBetrag.SetFocus;
      MaskEditRichtung.Enabled := false;
    end;
    Fall := 0;
    ListBoxDaten.Enabled := true;
    if Winkel = 2 then NeugradR (Azimut, Fall);
    inc(Anzahl);
    AzimutS := IntToStr(Azimut);
    AzimutS := RightS ('000' + AzimutS, 3);
    if RichtungenS = 'Richtungen' then
    begin
      ZeileS  := '      ' + AzimutS;
      ListBoxDaten.Items.Add (ZeileS);
    end;
    AnzahlS := IntToStr (Anzahl);
    AnzahlS := RightS ('     '+AnzahlS,5);
    Label00000.Caption := AnzahlS;
    MaskEditRichtung.Text := '   ';
    AziFeld[Anzahl]       := Azimut;
  end;
end;

procedure TForm16.MaskEditBetragKeyPress(Sender: TObject; var Key: Char);
var
  ZeileS    : string[30];
  Wert      : word;
begin
  if key = chr(13) then
  begin
    ListBoxDaten.Enabled := true;
    WertS := MaskEditBetrag.Text;
    LeerLoeschen (WertS);
    if WertS = '' then exit;
    Wert  := StrToInt (WertS);
    WertS := RightS ('0000'+ WertS,4);
    MaskEditBetrag.Enabled := false;
    MaskEditRichtung.Enabled := true;
    ZeileS  := '      ' + AzimutS + '                ' + WertS;
    ListBoxDaten.Items.Add (ZeileS);
    MaskEditBetrag.Text   := '    ';
    FalFeld[Anzahl]       := Wert;
    MaskEditRichtung.SetFocus;
  end;
end;

procedure TForm16.ListBoxDatenClick(Sender: TObject);
var
  i        : word;
  Geloscht : word;
  AziNeu   : array of word;
  FalNeu   : array of shortint;
begin
  Setlength (AziNeu,Anzahl+1);
  Setlength (FalNeu, Anzahl+1);
  Geloscht := 0;
  for i := 1 to Anzahl do
  begin
    AziNeu[i] := AziFeld[i];
    FalNeu[i] := FalFeld[i];
  end;
  for i := 0 to ListBoxDaten.Items.Count-1 do
  begin
    if ListBoxDaten.Selected[i] then
    begin
      Geloscht := i+1;
      ListBoxDaten.Items.Delete(i);
      break;
    end;
  end;
  for i := 1 to Geloscht-1 do
  begin
    AziFeld[i] := AziNeu[i];
    FalFeld[i] := FalNeu[i];
  end;
  for i:= Geloscht to Anzahl-1 do
  begin
    AziFeld[i] := AziNeu[i+1];
    FalFeld[i] := FalNeu[i+1];
  end;
  Anzahl := Anzahl - 1;
  Label00000.Caption := IntToStr(Anzahl);
  MaskEditRichtung.SetFocus;
  AziNeu := nil;
  FalNeu := nil;
end;


procedure TForm16.ButtonzuruckClick(Sender: TObject);   {zurück}
begin
  AziFeld := Nil;
  FalFeld := Nil;
  ListBoxDaten.Clear;
  Form16.Close;
end;

procedure TForm16.ButtonbeendenClick(Sender: TObject);   {beenden}
begin
  AziFeld := Nil;
  FalFeld := Nil;
  Form16.Close;
  Form15.Close;
  SetCurrentDir(DirectS);
end;

procedure TForm16.ButtonDbeendenClick(Sender: TObject);
begin
  ZahlGlob                 := Anzahl;
  DatenSpeichern1.Enabled  := true;
  ButtonMasszahlen.Enabled := true;
  ShowMessage (Tx(117));              {Daten können jetzt gespeichert werden}
  MaskEditRichtung.Enabled := false;
  MaskEditBetrag.Enabled   := false;
  Drucker1.Enabled         := true;
  SpeedDrucken.Enabled     := true;
  SpeedDatenF.Enabled      := true;
  SpeedWinWord.Enabled     := true;
  SpeedEinrichten.Enabled  := true;
end;

procedure TForm16.ButtonMasszahlenClick(Sender: TObject);     {Maßzahlen}
begin
  if Programm = 6 then Form17.Show;
  if Programm = 7 then Form19.Show;
end;

procedure TForm16.speichernDClick(Sender: TObject);
begin
  if CurrentFile <> '' then Speichern4 (CurrentFile, Anzahl, AziFeld,
    FalFeld)
  else speichernDUnterClick(Sender);
end;

procedure TForm16.speichernDUnterClick(Sender: TObject);
begin
  Erweiterung (ExtenS);
  SaveDialog1.DefaultExt := ExtenS;
  SaveDialog1.Filter     := ExtenS;
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    Speichern4 (CurrentFile, Anzahl, AziFeld, FalFeld);
  end;
end;

//procedure TForm16.aufDisketteB1Click(Sender: TObject);
//begin
//  Diskette (Laufw2S);
//  if not Abbrechen then Speichern4 (PfadS, Anzahl, AziFeld,
//                                    FalFeld);
//end;

procedure TForm16.einrichten1Click(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TForm16.SpeedEinrichtenClick(Sender: TObject);
begin
  einrichten1Click(Sender);
end;

procedure TForm16.drucken1Click(Sender: TObject);
begin
  Datnam (DateiNameS[0], ExtensionS);
  Drucken7 (Dateizahl);
end;

procedure TForm16.Hilfe1Click(Sender: TObject);
var
  DateiS      : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\16Zirkular-man.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\16Circular-man.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm16.SpeedDatenFClick(Sender: TObject);
begin
  speichernDUnterClick(Sender);
end;

procedure TForm16.SpeedHilfeClick(Sender: TObject);
begin
  Hilfe1Click(Sender);
end;

procedure TForm16.SpeedDruckenClick(Sender: TObject);
begin
  drucken1Click(Sender);
end;

procedure TForm16.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if Programm = 6 then
  begin
    if SpracheS = 'DEUTSCH' then HilfeS := 'Masszahlen_zirkular.doc';
    if SpracheS = 'ENGLISH' then HilfeS := 'Circular_measures.doc';
    ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
                 nil,nil,sw_normal);
  end;
  if Programm = 7 then
  begin
    if SpracheS = 'DEUTSCH' then HilfeS := 'Richtungsrose.doc';
    if SpracheS = 'ENGLISH' then HilfeS := 'Rose_diagrams.doc';
    ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
                 nil,nil,sw_normal);
  end;
end;

procedure TForm16.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm16.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm16.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

procedure TForm16.WinWordClick(Sender: TObject);
begin
  Datnam (DateiNameS[0], ExtensionS);
  SaveDialog1.DefaultExt := 'rtf';
  SaveDialog1.Filter     := 'rtf';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    WinDrucken7 (CurrentFile, Dateizahl);
  end;  
end;

procedure TForm16.SpeedWinWordClick(Sender: TObject);
begin
  WinWordClick(Sender);
end;

end.
