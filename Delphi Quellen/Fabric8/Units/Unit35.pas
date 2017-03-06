unit Unit35;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, Menus, StdCtrls, ExtCtrls, Globvar, Texte,
  ComCtrls, Buttons, Shellapi, Mask, ehsHelpRouter;

type
  TForm35 = class(TForm)
    Panel1             : TPanel;
    LabelBestimmung    : TLabel;
    LabeldesFormfaktors: TLabel;
    LabeleinesPalaeo   : TLabel;

    Panel3: TPanel;
    LabelDateneingabe: TLabel;
    LabelvonderFestplatte: TLabel;
    LabelWinkel: TLabel;
    LabelAltgrad: TLabel;

    Buttonweiter : TButton;
    Buttonzurueck: TButton;
    Buttonbeenden: TButton;

    MainMenu1: TMainMenu;

    Dateneingabe1    : TMenuItem;
    manuell1         : TMenuItem;
    ausDatei: TMenuItem;

    Winkel1 : TMenuItem;
    Altgrad1: TMenuItem;
    Neugrad1: TMenuItem;

    Hilfe1: TMenuItem;
    Image1: TImage;
    StatusBar: TStatusBar;
    Handbuch: TMenuItem;
    LabelDemo: TLabel;
    Literatur: TMenuItem;
    LabelEinstellungen: TLabel;
    LabelMax: TLabel;
    MaskEditMax: TMaskEdit;
    Kompass: TMenuItem;
    Clar: TMenuItem;
    Brunton: TMenuItem;
    Pitch: TMenuItem;
    keinPitch: TMenuItem;
    Uhrzeiger: TMenuItem;
    gegenUhr: TMenuItem;
    LabelKompass: TLabel;
    LabelBrunton: TLabel;
    LabelPitch: TLabel;
    LabelPWinkel: TLabel;
    ausExcel: TMenuItem;
    PanelSpeed: TPanel;
    SpeedManuell: TSpeedButton;
    SpeedDatei: TSpeedButton;
    SpeedExcel: TSpeedButton;
    SpeedClar: TSpeedButton;
    SpeedBrunton: TSpeedButton;
    SpeedKeinPitch: TSpeedButton;
    SpeedUhrzeiger: TSpeedButton;
    SpeedGegenUhr: TSpeedButton;
    SpeedAltgrad: TSpeedButton;
    SpeedNeugrad: TSpeedButton;
    SpeedHilfe: TSpeedButton;
    SpeedHandbuch: TSpeedButton;
    SpeedLiteratur: TSpeedButton;
    Methode: TMenuItem;
    Eigenwerte: TMenuItem;
    Iteration: TMenuItem;
    SpeedEigen: TSpeedButton;
    SpeedIter: TSpeedButton;
    LabelMethode: TLabel;
    LabelEigen: TLabel;
    Direkt: TMenuItem;
    SpeedDirekt: TSpeedButton;

    {Dateneingabe}
    procedure manuell1Click(Sender: TObject);
    procedure ausDateiClick(Sender: TObject);
    
    {Winkel}
    procedure Altgrad1Click(Sender: TObject);
    procedure Neugrad1Click(Sender: TObject);

    {Hilfe}
    procedure Hilfe1Click(Sender: TObject);
    procedure ButtonweiterClick(Sender: TObject);
    procedure ButtonzurueckClick(Sender: TObject);
    procedure ButtonbeendenClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ShowHint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedHilfeClick(Sender: TObject);
    procedure HandbuchClick(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure SpeedmanuellClick(Sender: TObject);
    procedure SpeedDateiClick(Sender: TObject);
    procedure SpeedAltgradClick(Sender: TObject);
    procedure SpeedNeugradClick(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
    procedure SpeedLiteraturClick(Sender: TObject);
    procedure MaskEditMaxKeyPress(Sender: TObject; var Key: Char);
    procedure ClarClick(Sender: TObject);
    procedure BruntonClick(Sender: TObject);
    procedure keinPitchClick(Sender: TObject);
    procedure UhrzeigerClick(Sender: TObject);
    procedure gegenUhrClick(Sender: TObject);
    procedure SpeedClarClick(Sender: TObject);
    procedure SpeedBruntonClick(Sender: TObject);
    procedure SpeedkeinPitchClick(Sender: TObject);
    procedure SpeedUhrzeigerClick(Sender: TObject);
    procedure SpeedgegenUhrClick(Sender: TObject);
    procedure ausExcelClick(Sender: TObject);
    procedure SpeedExcelClick(Sender: TObject);
    procedure EigenwerteClick(Sender: TObject);
    procedure IterationClick(Sender: TObject);
    procedure SpeedEigenClick(Sender: TObject);
    procedure SpeedIterClick(Sender: TObject);
    procedure DirektClick(Sender: TObject);
    procedure SpeedDirektClick(Sender: TObject);
  end;

var
  Form35: TForm35;
  Gedrueckt : array[0..5] of boolean;

implementation
uses Unit27, Unit28, Unit1, Unit94;
{$R *.DFM}

procedure TForm35.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm35.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm35.FormActivate(Sender: TObject);
var
  i : byte;
begin
  Left   := 140;
  Top    := 80;
  Width  := 800;
  Height := 620;
  LabelDemo.Visible                := false;
  if DemoB then LabelDemo.Visible  := true;
  Form35.Caption              := Tx(690);   {Fabric7: Bestimmung des Form..}
  Panel3.Hint                 := Hilf(15) + Hilf(304);
  Buttonweiter.Hint           := Hilf(48);
  Buttonzurueck.Hint          := Hilf(18);
  Buttonbeenden.Hint          := Hilf(30);
  SpeedEigen.Hint             := Hilf(647);
  SpeedIter.Hint              := Hilf(646);
  SpeedHandbuch.Hint          := Hilf(274);
  SpeedManuell.Hint           := Hilf(327);
  SpeedDatei.Hint             := Hilf(328);
  SpeedExcel.Hint             := Hilf(344);
  SpeedAltgrad.Hint           := Hilf(334);
  SpeedNeugrad.Hint           := Hilf(335);
  SpeedHilfe.Hint             := Hilf(210);
  SpeedClar.Hint              := Hilf(471);
  SpeedBrunton.Hint           := Hilf(472);
  SpeedKeinPitch.Hint         := Hilf(546);
  SpeedUhrzeiger.Hint         := Hilf(547);
  SpeedGegenUhr.Hint          := Hilf(548);
  SpeedDirekt.Hint            := Hilf(692);
  Methode.Caption             := Tx(1434);
  Eigenwerte.Caption          := Tx(1566);
  Direkt.Caption              := Tx(1648);
  DatenEingabe1.Caption       := Tx(55);
  manuell1.Caption            := Tx(56);
  ausDatei.Caption            := Tx(57);
  ausExcel.Caption            := Tx(1007);
  Winkel1.Caption             := Tx(67);
  Altgrad1.Caption            := Tx(68);
  Neugrad1.Caption            := Tx(69);
  Hilfe1.Caption              := Tx(162)+' (F1)';
  LabelBestimmung.Caption     := Tx(691);   {Bestimmung}
  LabeldesFormfaktors.Caption := Tx(692);   {der Formfaktors}
  LabeleinesPalaeo.Caption    := Tx(693);   {eines Paläo-Spannungsellipsoides}
  LabelEinstellungen.Caption := Tx(75);   {folgende Einstellungen...}
  Buttonweiter.Caption       := Tx(76);
  Buttonzurueck.Caption      := Tx(30);
  Buttonbeenden.Caption      := Tx(53);
  LabelDatenEingabe.Caption  := Tx(77);
  LabelWinkel.Caption        := Tx(81);
  for i := 1 to 5 do Gedrueckt[i] := false;
  LabelvonderFestplatte.Caption := '';
  LabelAltgrad.Caption          := '';
  Buttonweiter.Enabled          := false;
  Handbuch.Caption              := Tx(1055)+' (F2)';
  Literatur.Caption             := Tx(1183)+' (F5)';
  SpeedLiteratur.Hint           := Hilf(462);
  LabelMax.Caption      := Tx(981);
  MaskEditMax.EditMask  := '99999;0; ';
  MaskEditMax.Text      := IntToStr(MaxDaten);
    Kompass.Caption       := Tx(1210);
  Clar.Caption          := Tx(1212);
  Brunton.Caption       := Tx(1211);
  LabelKompass.Caption  := Tx(1210)+':';
  LabelBrunton.Caption  := '';
  LabelPitch.Caption    := TX(1399);
  LabelPWinkel.Caption  := '';
  keinPitch.Caption     := Tx(654);
  UhrZeiger.Caption     := Tx(1189);
  gegenUhr.Caption      := Tx(1190);
  LabelMethode.Caption  := TX(1562)+':';
  LabelEigen.Caption    := '';
  ExtenS                := 'SLI';
end;

procedure TForm35.ButtonweiterClick(Sender: TObject);
begin
  if EingabeS = 'manuell'    then Form27.Show;
  if EingabeS = 'Festplatte' then Form28.Show;
  if EingabeS = 'ExcelD' then
    showMessage(Tx(1040)+Chr(13)+Tx(1041)+Chr(13)+Tx(1042)+Chr(13)
                +Tx(1043)+Chr(13)+Tx(1044));
  if EingabeS = 'ExcelD' then Form94.Show;
end;

procedure TForm35.ButtonzurueckClick(Sender: TObject);
begin
  Form35.Close;
end;

procedure TForm35.ButtonbeendenClick(Sender: TObject);
begin
  Form35.Close;
  SetCurrentDir(DirectS);
end;

procedure TForm35.EigenwerteClick(Sender: TObject);
begin
  MethodeS           := 'Eigenwerte';
  LabelEigen.Caption := Tx(1566);
  Gedrueckt[1] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3] and Gedrueckt[4]
  and Gedrueckt[5] then Buttonweiter.Enabled := true;
end;

procedure TForm35.SpeedEigenClick(Sender: TObject);
begin
  EigenwerteClick(Sender);
end;

procedure TForm35.IterationClick(Sender: TObject);
begin
  MethodeS     := 'Iteration';
  LabelEigen.Caption := Tx(1567);
  Gedrueckt[1] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3] and Gedrueckt[4]
  and Gedrueckt[5] then Buttonweiter.Enabled := true;
end;

procedure TForm35.SpeedIterClick(Sender: TObject);
begin
  IterationClick(Sender);
end;

procedure TForm35.DirektClick(Sender: TObject);
begin
  MethodeS := 'Direkt';
  LabelEigen.Caption := Tx(1638);
  Gedrueckt[1] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3] and Gedrueckt[4]
  and Gedrueckt[5] then Buttonweiter.Enabled := true;
end;

procedure TForm35.SpeedDirektClick(Sender: TObject);
begin
  DirektClick(Sender);
end;

procedure TForm35.manuell1Click(Sender: TObject);
begin
  LabelAltgrad.Caption   := '';
  Winkel1.Enabled        := true;
  Kompass.Enabled        := true;
  SpeedClar.Enabled      := true;
  SpeedBrunton.Enabled   := true;
  SpeedkeinPitch.Enabled := true;
  SpeedUhrzeiger.Enabled := true;
  SpeedgegenUhr.Enabled  := true;
  SpeedAltgrad.Enabled   := true;
  SpeedNeugrad.Enabled   := true;
  Pitch.Enabled          := true;
  Gedrueckt[2]           := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3] and Gedrueckt[4]
  and Gedrueckt[5] then Buttonweiter.Enabled := true; {Button1 = weiter}
  LabelvonderFestplatte.Caption := Tx(167);                       {'manuell}
  EingabeS := 'manuell';
end;

procedure TForm35.ausDateiClick(Sender: TObject);
begin
  EingabeS := 'Festplatte';
  LabelBrunton.Caption   := 'Clar';
  Altgrad1Click(Sender);
  Winkel1.Enabled        := false;
  Kompass.Enabled        := false;
  SpeedClar.Enabled      := false;
  SpeedBrunton.Enabled   := false;
  SpeedAltgrad.Enabled   := false;
  SpeedNeugrad.Enabled   := false;
  Pitch.Enabled          := false;
  SpeedkeinPitch.Enabled := false;
  SpeedUhrzeiger.Enabled := false;
  SpeedgegenUhr.Enabled  := false;
  PitchS                 := 'nein';
  LabelPWinkel.Caption   := Tx(654);
  Gedrueckt[2]           := true;
  Gedrueckt[3]           := true;
  Gedrueckt[4]           := true;
  Gedrueckt[5]           := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3] and Gedrueckt[4]
  and Gedrueckt[5] then Buttonweiter.Enabled := true;                {Button1 = weiter}
  LabelvonderFestplatte.Caption := Tx(57); {'aus einer datei}
end;

procedure TForm35.ausExcelClick(Sender: TObject);
begin
  EingabeS      := 'ExcelD';
  Pitch.Enabled := false;
  PitchS        := 'nein';
  LabelPitch.visible     := false;
  SpeedkeinPitch.Enabled := false;
  SpeedUhrzeiger.Enabled := False;
  SpeedgegenUhr.Enabled  := false;
  Kompass.Enabled        := true;
  Winkel1.Enabled        := true;
  SpeedClar.Enabled      := true;
  SpeedBrunton.Enabled   := true;
  SpeedAltgrad.Enabled   := true;
  SpeedNeugrad.Enabled   := true;
  LabelvonderFestplatte.Caption := Tx(1007);
  Gedrueckt[2]  := true;
  Gedrueckt[4]  := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3] and Gedrueckt[4]
  and Gedrueckt[5] then Buttonweiter.Enabled := true;  {Button1 = weiter}
end;

procedure TForm35.SpeedExcelClick(Sender: TObject);
begin
  ausExcelClick(Sender);
end;

procedure TForm35.ClarClick(Sender: TObject);
begin
  KompassS := 'Clar';
  Gedrueckt[3] := true;
  LabelBrunton.Caption := 'Clar';
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3] and Gedrueckt[4]
  and Gedrueckt[5] then Buttonweiter.Enabled := true;
end;

procedure TForm35.SpeedClarClick(Sender: TObject);
begin
  ClarClick(Sender);
end;

procedure TForm35.BruntonClick(Sender: TObject);
begin
  KompassS := 'Brunton';
  Gedrueckt[3] := true;
  LabelBrunton.Caption := 'Brunton';
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3] and Gedrueckt[4]
  and Gedrueckt[5] then Buttonweiter.Enabled := true;
end;

procedure TForm35.SpeedBruntonClick(Sender: TObject);
begin
  BruntonClick(Sender);
end;

procedure TForm35.keinPitchClick(Sender: TObject);
begin
  PitchS       := 'nein';
  LabelPWinkel.Caption := Tx(654);
  Gedrueckt[4] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3] and Gedrueckt[4]
  and Gedrueckt[5] then Buttonweiter.Enabled := true;
end;

procedure TForm35.SpeedkeinPitchClick(Sender: TObject);
begin
  keinPitchClick(Sender);
end;

procedure TForm35.UhrzeigerClick(Sender: TObject);
begin
  PitchS := 'Ja';
  PitchSinnS := 'Uhrzeiger';
  LabelPWinkel.Caption := Tx(1189);
  Gedrueckt[4] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3] and Gedrueckt[4]
  and Gedrueckt[5] then Buttonweiter.Enabled := true;
end;

procedure TForm35.SpeedUhrzeigerClick(Sender: TObject);
begin
  UhrzeigerClick(Sender);
end;

procedure TForm35.gegenUhrClick(Sender: TObject);
begin
  PitchS := 'Ja';
  PitchSinnS := 'gegenUhr';
  LabelPWinkel.Caption := Tx(1190);
  Gedrueckt[4] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3] and Gedrueckt[4]
  and Gedrueckt[5] then Buttonweiter.Enabled := true;
end;

procedure TForm35.SpeedgegenUhrClick(Sender: TObject);
begin
  gegenUhrClick(Sender);
end;

procedure TForm35.Altgrad1Click(Sender: TObject);
begin
  Winkel := 1;
  Gedrueckt[5] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3] and Gedrueckt[4]
  and Gedrueckt[5] then Buttonweiter.Enabled := true;{Button1 = weiter}
  LabelAltgrad.Caption := Tx(339);                           {Altgrad}
end;

procedure TForm35.Neugrad1Click(Sender: TObject);
begin
  Winkel := 2;
  Gedrueckt[5] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3] and Gedrueckt[4]
  and Gedrueckt[5] then Buttonweiter.Enabled := true; {weiter}
  LabelAltgrad.Caption := Tx(340);                           {Neugrad}
end;

procedure TForm35.Hilfe1Click(Sender: TObject);
var
  DateiS      : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\35Formfaktor.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\35ShapeFactor.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm35.SpeedHilfeClick(Sender: TObject);
begin
  Hilfe1Click(Sender);                      {Hilfe noch nicht installiert}
end;

procedure TForm35.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Formfaktor.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'Shape-factor.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm35.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm35.SpeedmanuellClick(Sender: TObject);
begin
  manuell1Click(Sender);
end;

procedure TForm35.SpeedDateiClick(Sender: TObject);
begin
  ausDateiClick(Sender);
end;

procedure TForm35.SpeedAltgradClick(Sender: TObject);
begin
  Altgrad1Click(Sender);
end;

procedure TForm35.SpeedNeugradClick(Sender: TObject);
begin
  Neugrad1Click(Sender);
end;

procedure TForm35.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm35.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

procedure TForm35.MaskEditMaxKeyPress(Sender: TObject; var Key: Char);
var
  Datei : TextFile;
  i     : byte;
begin
  if Key = chr(13) then
  begin
    MaxDaten := StrToInt(MaskEditMax.Text);
    KonfigZeileS[84] := 'Maximum number of data     :,'+MaskEditMax.Text;
    assignFile(Datei,FabricS+'\'+'Fabric.ini');
    rewrite (Datei);
    for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
    closefile (Datei);
  end;
end;

end.
