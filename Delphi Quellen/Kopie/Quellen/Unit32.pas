unit Unit32;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, ExtCtrls, StdCtrls, Menus, Globvar, Texte,
  ComCtrls, Buttons, Basic, Shellapi, Mask, ehsHelpRouter;

type
  TForm32 = class(TForm)
    Panel1         : TPanel;
    LabelPlotten   : TLabel;
    LabelHoeppener : TLabel;
    Labelinverschiedenen: TLabel;

    Panel3               : TPanel;
    LabelDateneingabe    : TLabel;
    LabelvonderFestplatte: TLabel;
    LabelWinkel          : TLabel;
    LabelAltgrad         : TLabel;

    MainMenu1: TMainMenu;

    Dateneingabe1    : TMenuItem;
    manuell1         : TMenuItem;
    ausDatei: TMenuItem;

    Winkel1 : TMenuItem;
    Altgrad1: TMenuItem;
    Neugrad1: TMenuItem;

    Hilfe1: TMenuItem;

    Buttonweiter : TButton;
    Buttonzurueck: TButton;
    Buttonbeenden: TButton;
    Image1: TImage;
    StatusBar: TStatusBar;
    SpeedHilfe: TSpeedButton;
    Handbuch: TMenuItem;
    LabelDemo: TLabel;
    SpeedHandbuch: TSpeedButton;
    Speedmanuell: TSpeedButton;
    SpeedDatei: TSpeedButton;
    SpeedAltgrad: TSpeedButton;
    SpeedNeugrad: TSpeedButton;
    Literatur: TMenuItem;
    SpeedLiteratur: TSpeedButton;
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
    SpeedClar: TSpeedButton;
    SpeedBrunton: TSpeedButton;
    SpeedkeinPitch: TSpeedButton;
    SpeedUhrzeiger: TSpeedButton;
    SpeedgegenUhr: TSpeedButton;
    LabelKompass: TLabel;
    LabelBrunton: TLabel;
    LabelPitch: TLabel;
    LabelPWinkel: TLabel;
    ausExcel: TMenuItem;
    SpeedExcel: TSpeedButton;

    procedure FormActivate(Sender: TObject);
    procedure ButtonweiterClick(Sender: TObject);
    procedure ButtonzurueckClick(Sender: TObject);
    procedure ButtonbeendenClick(Sender: TObject);
    procedure manuell1Click(Sender: TObject);
    procedure ausDateiClick(Sender: TObject);
    procedure Altgrad1Click(Sender: TObject);
    procedure Neugrad1Click(Sender: TObject);
    procedure Hilfe1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ShowHint(Sender: TObject);
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
  end;

var
  Form32    : TForm32;
  Gedrueckt : array[0..4] of boolean;

implementation
uses Unit27, Unit28, Unit94;
{$R *.DFM}

procedure TForm32.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm32.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm32.FormActivate(Sender: TObject);
var
  i     : byte;
  TextS : string[5];
begin
  Left   := 115;
  Top    := 80;
  Width  := 800;
  Height := 620;
  LabelDemo.Visible                := false;
  if DemoB then LabelDemo.Visible  := true;
  Form32.Caption               := Tx(647);  {Fabric7: Hoeppener-Diagramm}
  Panel3.Hint                  := Hilf(15) + Hilf(304);
  Buttonweiter.Hint            := Hilf(75);
  Buttonzurueck.Hint           := Hilf(18);
  Buttonbeenden.Hint           := Hilf(30);
  SpeedHandbuch.Hint           := Hilf(274);
  SpeedManuell.Hint            := Hilf(327);
  SpeedDatei.Hint              := Hilf(328);
  SpeedExcel.Hint              := Hilf(344);
  SpeedAltgrad.Hint            := Hilf(334);
  SpeedNeugrad.Hint            := Hilf(335);
  SpeedHilfe.Hint              := Hilf(210);
  SpeedClar.Hint               := Hilf(471);
  SpeedBrunton.Hint            := Hilf(472);
  SpeedKeinPitch.Hint          := Hilf(546);
  SpeedUhrzeiger.Hint          := Hilf(547);
  SpeedGegenUhr.Hint           := Hilf(548);
  DatenEingabe1.Caption        := Tx(55);
  manuell1.Caption             := Tx(56);
  ausDatei.Caption             := Tx(57);
  ausExcel.Caption             := Tx(1007);
  Winkel1.Caption              := Tx(67);
  Altgrad1.Caption             := Tx(68);
  Neugrad1.Caption             := Tx(69);
  Hilfe1.Caption               := Tx(162)+' (F1)';
  LabelPlotten.Caption         := Tx(648);  {Plotten eines}
  LabelHoeppener.Caption       := Tx(649);  {Hoeppener-Diagramms}
  if UcaseS(SpracheS) = 'ENGLISH' then TextS := '   ' else TextS := '';
  Labelinverschiedenen.Caption := TextS+Tx(229);  {in verschiedenen Projektionen}
  LabelEinstellungen.Caption   := Tx(75);   {folgende Einstellungen...}
  Buttonweiter.Caption         := Tx(76);
  Buttonzurueck.Caption        := Tx(30);
  Buttonbeenden.Caption        := Tx(53);
  LabelDatenEingabe.Caption    := Tx(77);
  LabelWinkel.Caption          := Tx(81);
  for i := 1 to 4 do Gedrueckt[i] := false;
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
end;

procedure TForm32.ButtonweiterClick(Sender: TObject);
begin
  if EingabeS = 'manuell'    then Form27.Show;
  if EingabeS = 'Festplatte' then Form28.Show;
  if EingabeS = 'ExcelD' then
    showMessage(Tx(1040)+Chr(13)+Tx(1041)+Chr(13)+Tx(1042)+Chr(13)
                +Tx(1043)+Chr(13)+Tx(1044));
  if EingabeS = 'ExcelD' then Form94.Show;
end;

procedure TForm32.ButtonzurueckClick(Sender: TObject);
begin
  Form32.Close;
end;

procedure TForm32.ButtonbeendenClick(Sender: TObject);
begin
  Form32.Close;
  SetCurrentDir(DirectS);
end;

procedure TForm32.manuell1Click(Sender: TObject);
begin
  LabelAltgrad.Caption   := '';
  Winkel1.Enabled        := true;
  Kompass.Enabled        := true;
  SpeedClar.Enabled      := true;
  SpeedBrunton.Enabled   := true;
  Pitch.Enabled          := true;
  SpeedAltgrad.Enabled   := true;
  SpeedNeugrad.Enabled   := true;
  SpeedkeinPitch.Enabled := true;
  SpeedUhrzeiger.Enabled := true;
  SpeedgegenUhr.Enabled  := true;
  Gedrueckt[1]           := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
  and Gedrueckt[4] then Buttonweiter.Enabled := true;                     {Button1 = weiter}
  LabelvonderFestplatte.Caption := Tx(167);        {manuell}
  EingabeS := 'manuell';
end;

procedure TForm32.ausDateiClick(Sender: TObject);
begin
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
  EingabeS               := 'Festplatte';
  Gedrueckt[1]           := true;
  Gedrueckt[2]           := true;
  Gedrueckt[3]           := true;
  Gedrueckt[4]           := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
  and Gedrueckt[4] then Buttonweiter.Enabled := true;                {Button1 = weiter}
  LabelvonderFestplatte.Caption := Tx(57); {aus einer Datei}
end;

procedure TForm32.ausExcelClick(Sender: TObject);
begin
  EingabeS      := 'ExcelD';
  Pitch.Enabled := false;
  PitchS        := 'nein';
  LabelPitch.visible     := false;
  SpeedkeinPitch.Enabled   := false;
  SpeedUhrzeiger.Enabled := False;
  SpeedgegenUhr.Enabled  := false;
  LabelvonderFestplatte.Caption := Tx(1007);
  Gedrueckt[1]  := true;
  Gedrueckt[4]  := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
  and Gedrueckt[4] then Buttonweiter.Enabled := true;  {Button1 = weiter}
end;

procedure TForm32.SpeedExcelClick(Sender: TObject);
begin
  ausExcelClick(Sender);
end;

procedure TForm32.ClarClick(Sender: TObject);
begin
  KompassS     := 'Clar';
  Gedrueckt[3] := true;
  LabelBrunton.Caption := 'Clar';
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
  and Gedrueckt[4] then Buttonweiter.Enabled := true;
end;

procedure TForm32.SpeedClarClick(Sender: TObject);
begin
  ClarClick(Sender);
end;

procedure TForm32.BruntonClick(Sender: TObject);
begin
  KompassS := 'Brunton';
  Gedrueckt[3] := true;
  LabelBrunton.Caption := 'Brunton';
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
  and Gedrueckt[4] then Buttonweiter.Enabled := true;
end;

procedure TForm32.SpeedBruntonClick(Sender: TObject);
begin
  BruntonClick(Sender);
end;

procedure TForm32.keinPitchClick(Sender: TObject);
begin
  PitchS       := 'nein';
  LabelPWinkel.Caption := Tx(654);
  Gedrueckt[4] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
  and Gedrueckt[4] then Buttonweiter.Enabled := true;
end;

procedure TForm32.SpeedkeinPitchClick(Sender: TObject);
begin
  keinPitchClick(Sender);
end;

procedure TForm32.UhrzeigerClick(Sender: TObject);
begin
  PitchS := 'Ja';
  PitchSinnS := 'Uhrzeiger';
  LabelPWinkel.Caption := Tx(1189);
  Gedrueckt[4] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
  and Gedrueckt[4] then Buttonweiter.Enabled := true;
end;

procedure TForm32.SpeedUhrzeigerClick(Sender: TObject);
begin
  UhrzeigerClick(Sender);
end;

procedure TForm32.gegenUhrClick(Sender: TObject);
begin
  PitchS := 'Ja';
  PitchSinnS := 'gegenUhr';
  LabelPWinkel.Caption := Tx(1190);
  Gedrueckt[4] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
  and Gedrueckt[4] then Buttonweiter.Enabled := true;
end;

procedure TForm32.SpeedgegenUhrClick(Sender: TObject);
begin
  gegenUhrClick(Sender);
end;

procedure TForm32.Altgrad1Click(Sender: TObject);
begin
  Winkel := 1;
  Gedrueckt[2] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
  and Gedrueckt[4] then Buttonweiter.Enabled := true;                     {Button1 = weiter}
  LabelAltgrad.Caption := Tx(339);                    {Altgrad}
end;

procedure TForm32.Neugrad1Click(Sender: TObject);
begin
  Winkel := 2;
  Gedrueckt[2] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
  and Gedrueckt[4] then Buttonweiter.Enabled := true;                     {Button1 = weiter}
  LabelAltgrad.Caption := Tx(340);                    {Neugrad}
end;

procedure TForm32.Hilfe1Click(Sender: TObject);
var
  DateiS : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\hoep8fxu.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\Hoeppener-main.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm32.SpeedHilfeClick(Sender: TObject);
begin
  Hilfe1Click(Sender);                 {Hilfe noch nicht installiert}
end;

procedure TForm32.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Hoeppener.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'Hoeppener-E.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm32.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm32.SpeedmanuellClick(Sender: TObject);
begin
  manuell1Click(Sender);
end;

procedure TForm32.SpeedDateiClick(Sender: TObject);
begin
  ausDateiClick(Sender);
end;

procedure TForm32.SpeedAltgradClick(Sender: TObject);
begin
  Altgrad1Click(Sender);
end;

procedure TForm32.SpeedNeugradClick(Sender: TObject);
begin
  Neugrad1Click(Sender);
end;

procedure TForm32.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm32.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

procedure TForm32.MaskEditMaxKeyPress(Sender: TObject; var Key: Char);
var
  Datei : TextFile;
  i     : byte;
begin
  if Key = chr(13) then
  begin
    MaxDaten := StrToInt(MaskEditMax.Text);
    KonfigZeileS[84] := 'Maximum number of data     :,'+MaskEditMax.Text;
    assignFile(Datei,DirectS+'\'+'Fabric.ini');
    rewrite (Datei);
    for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
    closefile (Datei);
  end;
end;

end.
