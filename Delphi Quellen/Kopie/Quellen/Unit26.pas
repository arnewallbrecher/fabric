unit Unit26;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, Globvar, ExtCtrls, StdCtrls, Menus, Texte,
  ComCtrls, Buttons, Shellapi, Mask, ehsHelpRouter;

type
  TForm26 = class(TForm)
    Panel1                    : TPanel;
    LabelBerechnung           : TLabel;
    LabelHaupt: TLabel;
    LabelPalaeo: TLabel;
    LabelHarnisch             : TLabel;

    Panel3               : TPanel;
    LabelDateneingabe    : TLabel;
    LabelvonderFestplatte: TLabel;
    LabelWinkel          : TLabel;
    LabelAltgrad         : TLabel;

    Buttonweiter : TButton;
    Buttonzurueck: TButton;
    Buttonbeenden: TButton;

    MainMenu1        : TMainMenu;
    Dateneingabe1    : TMenuItem;
    manuell1         : TMenuItem;
    ausDatei: TMenuItem;

    Winkel1 : TMenuItem;
    Altgrad1: TMenuItem;
    Neugrad1: TMenuItem;

    Hilfe1: TMenuItem;
    Image1: TImage;
    StatusBar: TStatusBar;
    Panel4: TPanel;
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
    Pitch: TMenuItem;
    Pnein: TMenuItem;
    Uhrzeiger: TMenuItem;
    gegenUhr: TMenuItem;
    Kompass: TMenuItem;
    Clar: TMenuItem;
    Brunton: TMenuItem;
    SpeedClar: TSpeedButton;
    SpeedBrunton: TSpeedButton;
    SpeednoPitch: TSpeedButton;
    SpeedUhrzeiger: TSpeedButton;
    SpeedgegenUhr: TSpeedButton;
    LabelKompass: TLabel;
    LabelBrunton: TLabel;
    LabelPitch: TLabel;
    LabelPwinkel: TLabel;
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
    procedure PneinClick(Sender: TObject);
    procedure ClarClick(Sender: TObject);
    procedure BruntonClick(Sender: TObject);
    procedure UhrzeigerClick(Sender: TObject);
    procedure gegenUhrClick(Sender: TObject);
    procedure SpeedClarClick(Sender: TObject);
    procedure SpeedBruntonClick(Sender: TObject);
    procedure SpeednoPitchClick(Sender: TObject);
    procedure SpeedUhrzeigerClick(Sender: TObject);
    procedure SpeedgegenUhrClick(Sender: TObject);
    procedure ausExcelClick(Sender: TObject);
    procedure SpeedExcelClick(Sender: TObject);
  end;

var
  Form26    : TForm26;
  Gedrueckt : array[0..4] of boolean;

implementation
uses Unit27, Unit28, Unit94;
{$R *.DFM}

procedure TForm26.FormShow(Sender: TObject);
begin
showmessage('hier');  
  Application.OnHint := ShowHint;
end;

procedure TForm26.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm26.FormActivate(Sender: TObject);
var
  i : byte;
begin
  LabelDemo.Visible                := false;
  if DemoB then LabelDemo.Visible  := true;
  Form26.Caption             := Tx(602);   {Fabric7: Pal�o-Spannungen..}
  Panel3.Hint                := Hilf(15) + Hilf(304);
  Buttonweiter.Hint          := Hilf(48);
  Buttonzurueck.Hint         := Hilf(18);
  Buttonbeenden.Hint         := Hilf(30);
  SpeedHilfe.Hint            := Hilf(210);
  SpeedHandbuch.Hint         := Hilf(274);
  SpeedManuell.Hint          := Hilf(327);
  SpeedDatei.Hint            := Hilf(328);
  SpeedExcel.Hint            := Hilf(344);
  SpeedAltgrad.Hint          := Hilf(334);
  SpeedNeugrad.Hint          := Hilf(335);
  SpeedClar.Hint             := Hilf(471);
  SpeedBrunton.Hint          := Hilf(472);
  SpeednoPitch.Hint          := Hilf(546);
  SpeedUhrzeiger.Hint        := Hilf(547);
  SpeedGegenUhr.Hint         := Hilf(548);
  DatenEingabe1.Caption      := Tx(55);
  manuell1.Caption           := Tx(56);
  ausDatei.Caption           := Tx(57);
  ausExcel.Caption           := Tx(1007);
  Winkel1.Caption            := Tx(67);
  Altgrad1.Caption           := Tx(68);
  Neugrad1.Caption           := Tx(69);
  Hilfe1.Caption             := Tx(162)+' (F1)';
  LabelBerechnung.Caption    := Tx(603);  {Berechnung der Richtungen}
  LabelHaupt.Caption         := Tx(604);  {der Hauptnormalspannungen}
  LabelPalaeo.Caption        := Tx(605);  {eines Pal�o-Spannungsellipsoides}
  LabelHarnisch.Caption      := Tx(606);  {aus Harnischfl�chen und striemungen}
  LabelEinstellungen.Caption := Tx(75);   {folgende Einstellungen...}
  Buttonweiter.Caption       := Tx(76);
  Buttonzurueck.Caption      := Tx(30);
  Buttonbeenden.Caption      := Tx(53);
  LabelDatenEingabe.Caption  := Tx(77);
  LabelWinkel.Caption        := Tx(81);
  for i := 1 to 4 do Gedrueckt[i] := false;
  LabelvonderFestplatte.Caption := '';
  LabelAltgrad.Caption         := '';
  Buttonweiter.Enabled         := false;
  Handbuch.Caption             := Tx(1055)+' (F2)';
  Literatur.Caption            := Tx(1183)+' (F5)';
  SpeedLiteratur.Hint          := Hilf(462);
  LabelMax.Caption      := Tx(981);
  MaskEditMax.EditMask  := '99999;0; ';
  MaskEditMax.Text      := IntToStr(MaxDaten);
  LabelBrunton.Caption  := '';
  LabelPWinkel.Caption  := '';
  LabelKompass.Caption  := Tx(1210)+':';
  Pnein.Caption         := Tx(654);
  UhrZeiger.Caption     := Tx(1189);
  gegenUhr.Caption      := Tx(1190);
  LabelPitch.Caption    := Tx(1399);
  Kompass.Caption       := Tx(1210);
end;

procedure TForm26.ButtonweiterClick(Sender: TObject);
begin
  if EingabeS = 'manuell'    then Form27.Show;
  if EingabeS = 'Festplatte' then Form28.Show;
  if EingabeS = 'ExcelD' then
    showMessage(Tx(1040)+Chr(13)+Tx(1041)+Chr(13)+Tx(1042)+Chr(13)
                +Tx(1043)+Chr(13)+Tx(1044));
  if EingabeS = 'ExcelD' then Form94.Show;              
end;

procedure TForm26.ButtonzurueckClick(Sender: TObject);
begin
  Form26.Close;
end;

procedure TForm26.ButtonbeendenClick(Sender: TObject);
begin
  Form26.Close;
  SetCurrentDir(DirectS);
end;

procedure TForm26.manuell1Click(Sender: TObject);
begin
  Winkel1.Enabled := true;
  LabelAltgrad.Caption := '';
  Gedrueckt[1] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
  and Gedrueckt[4] then Buttonweiter.Enabled := true;                     {Button1 = weiter}
  LabelvonderFestplatte.Caption := Tx(167);                    {manuell}
  Kompass.Enabled        := true;
  Pitch.Enabled          := true;
  LabelPitch.Visible     := true;
  SpeedClar.Enabled      := true;
  SpeedBrunton.Enabled   := true;
  SpeednoPitch.Enabled   := true;
  SpeedUhrzeiger.Enabled := true;
  SpeedgegenUhr.Enabled  := true;
  LabelBrunton.Caption   := '';
  LabelPWinkel.Caption   := '';
  EingabeS               := 'manuell';
end;

procedure TForm26.ausDateiClick(Sender: TObject);
begin
  Altgrad1Click(Sender);
  Winkel1.Enabled        := false;
  EingabeS               := 'Festplatte';
  KompassS               := 'Clar';
  PitchS                 := 'nein';
  Kompass.Enabled        := false;
  Pitch.Enabled          := false;
  SpeedClar.Enabled      := false;
  SpeedBrunton.Enabled   := false;
  SpeednoPitch.Enabled   := false;
  SpeedUhrzeiger.Enabled := false;
  SpeedgegenUhr.Enabled  := false;
  LabelBrunton.Caption   := 'Clar';
  LabelPWinkel.Caption   := Tx(654);
  Gedrueckt[1]           := true;
  Gedrueckt[2]           := true;
  Gedrueckt[3]           := true;
  Gedrueckt[4]           := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
  and Gedrueckt[4] then Buttonweiter.Enabled := true;  {Button1 = weiter}
  LabelvonderFestplatte.Caption := Tx(57);{aus einer Datei}
end;

procedure TForm26.ausExcelClick(Sender: TObject);
begin
  EingabeS      := 'ExcelD';
  Pitch.Enabled := false;
  PitchS        := 'nein';
  LabelPitch.visible     := false;
  SpeednoPitch.Enabled   := false;
  SpeedUhrzeiger.Enabled := False;
  SpeedgegenUhr.Enabled  := false;
  LabelvonderFestplatte.Caption := Tx(1007);
  Gedrueckt[1]  := true;
  Gedrueckt[4]  := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
  and Gedrueckt[4] then Buttonweiter.Enabled := true;  {Button1 = weiter}
end;

procedure TForm26.SpeedExcelClick(Sender: TObject);
begin
  ausExcelClick(Sender);
end;

procedure TForm26.ClarClick(Sender: TObject);
begin
  KompassS := 'Clar';
  Gedrueckt[3] := true;
  LabelBrunton.Caption := 'Clar';
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
  and Gedrueckt[4] then Buttonweiter.Enabled := true;
end;

procedure TForm26.SpeedClarClick(Sender: TObject);
begin
  ClarClick(Sender);
end;

procedure TForm26.BruntonClick(Sender: TObject);
begin
  KompassS := 'Brunton';
  Gedrueckt[3] := true;
  LabelBrunton.Caption := 'Brunton';
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
  and Gedrueckt[4] then Buttonweiter.Enabled := true;
end;

procedure TForm26.SpeedBruntonClick(Sender: TObject);
begin
  BruntonClick(Sender);
end;

procedure TForm26.PneinClick(Sender: TObject);
begin
  PitchS       := 'nein';
  LabelPWinkel.Caption := Tx(654);
  Gedrueckt[4] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
  and Gedrueckt[4] then Buttonweiter.Enabled := true;
end;

procedure TForm26.SpeednoPitchClick(Sender: TObject);
begin
  PneinClick(Sender);
end;

procedure TForm26.UhrzeigerClick(Sender: TObject);
begin
  PitchS := 'Ja';
  PitchSinnS := 'Uhrzeiger';
  LabelPWinkel.Caption := Tx(1189);
  Gedrueckt[4] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
  and Gedrueckt[4] then Buttonweiter.Enabled := true;
end;

procedure TForm26.SpeedUhrzeigerClick(Sender: TObject);
begin
  UhrzeigerClick(Sender);
end;

procedure TForm26.gegenUhrClick(Sender: TObject);
begin
  PitchS := 'Ja';
  PitchSinnS := 'gegenUhr';
  LabelPWinkel.Caption := Tx(1190);
  Gedrueckt[4] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
  and Gedrueckt[4] then Buttonweiter.Enabled := true;
end;

procedure TForm26.SpeedgegenUhrClick(Sender: TObject);
begin
  gegenUhrClick(Sender);
end;

procedure TForm26.Altgrad1Click(Sender: TObject);
begin
  Winkel := 1;
  Gedrueckt[2] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
  and Gedrueckt[4] then Buttonweiter.Enabled := true;                     {Button1 = weiter}
  LabelAltgrad.Caption := Tx(339);                       {Altgrad}
end;

procedure TForm26.Neugrad1Click(Sender: TObject);
begin
  Winkel := 2;
  Gedrueckt[2] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
  and Gedrueckt[4] then Buttonweiter.Enabled := true;                     {Button1 = weiter}
  LabelAltgrad.Caption := Tx(340);                       {Neugrad}
end;

procedure TForm26.Hilfe1Click(Sender: TObject);
var
  DateiS      : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\pale30br.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\Palaeostress-main.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm26.SpeedHilfeClick(Sender: TObject);
begin
  Hilfe1Click(Sender);
end;

procedure TForm26.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Palaeo-Spannung.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'Palaeo-Stress.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm26.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm26.SpeedmanuellClick(Sender: TObject);
begin
  manuell1Click(Sender);
  SpeedAltgrad.Enabled := true;
  speedNeugrad.Enabled := true;
end;

procedure TForm26.SpeedDateiClick(Sender: TObject);
begin
  ausDateiClick(Sender);
  SpeedAltgrad.Enabled := false;
  speedNeugrad.Enabled := false;
end;

procedure TForm26.SpeedAltgradClick(Sender: TObject);
begin
  Altgrad1Click(Sender);
end;

procedure TForm26.SpeedNeugradClick(Sender: TObject);
begin
  Neugrad1Click(Sender);
end;

procedure TForm26.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm26.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

procedure TForm26.MaskEditMaxKeyPress(Sender: TObject; var Key: Char);
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
