unit Unit79;
interface

uses
  Globvar, Controls, StdCtrls, Classes, ExtCtrls, Forms,
  Graphics, Texte, Dialogs, SysUtils, Menus, Buttons,
  ComCtrls, Shellapi, Windows, Mask, ehsHelpRouter;

type
  TForm79 = class(TForm)
    LabelDemo: TLabel;
    LabelEintragen: TLabel;
    LabelKarte: TLabel;
    Image1: TImage;
    ButtonWeiter: TButton;
    ButtonZuruck: TButton;
    ButtonBeenden: TButton;
    PanelEinstellungen: TPanel;
    LabelEinstellungen: TLabel;
    MainMenu1: TMainMenu;
    Eingabe: TMenuItem;
    manuell: TMenuItem;
    ausKarte: TMenuItem;
    ausExcel: TMenuItem;
    Koordinaten: TMenuItem;
    geographisch: TMenuItem;
    Gauss: TMenuItem;
    LabelEingabe: TLabel;
    LabelManuell: TLabel;
    LabelKoordinaten: TLabel;
    LabelGeographisch: TLabel;
    SpeedManuell: TSpeedButton;
    SpeedKarte: TSpeedButton;
    SpeedExcel: TSpeedButton;
    StatusBar: TStatusBar;
    Hemisphaere: TMenuItem;
    Nordost: TMenuItem;
    NordWest: TMenuItem;
    SuedOst: TMenuItem;
    SuedWest: TMenuItem;
    LabelSektor: TLabel;
    LabelNord: TLabel;
    WinkelAN: TMenuItem;
    Altgrad: TMenuItem;
    Neugrad: TMenuItem;
    LabelWinkel1: TLabel;
    LabelAltgrad: TLabel;
    SpeedAltgrad: TSpeedButton;
    SpeedNeugrad: TSpeedButton;
    SpeedGauss: TSpeedButton;
    SpeedNW: TSpeedButton;
    SpeedNE: TSpeedButton;
    SpeedSE: TSpeedButton;
    SpeedSW: TSpeedButton;
    SpeedausDatei: TSpeedButton;
    ausDatei: TMenuItem;
    SpeedHilfe: TSpeedButton;
    SpeedHandbuch: TSpeedButton;
    SpeedLiteratur: TSpeedButton;
    Hilfe: TMenuItem;
    Literatur: TMenuItem;
    UTM: TMenuItem;
    SpeedUTM: TSpeedButton;
    DMM: TMenuItem;
    DMS: TMenuItem;
    SpeedDMS: TSpeedButton;
    SpeedDMM: TSpeedButton;
    LabelMax: TLabel;
    MaskEditMax: TMaskEdit;
    Handbuch: TMenuItem;
    procedure FormActivate(Sender: TObject);
    procedure ButtonWeiterClick(Sender: TObject);
    procedure ButtonZuruckClick(Sender: TObject);
    procedure ButtonBeendenClick(Sender: TObject);
    procedure manuellClick(Sender: TObject);
    procedure ausKarteClick(Sender: TObject);
    procedure ausExcelClick(Sender: TObject);
    procedure GaussClick(Sender: TObject);
    procedure SpeedManuellClick(Sender: TObject);
    procedure SpeedKarteClick(Sender: TObject);
    procedure SpeedExcelClick(Sender: TObject);
    procedure ShowHint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure NordostClick(Sender: TObject);
    procedure NordWestClick(Sender: TObject);
    procedure SuedOstClick(Sender: TObject);
    procedure SuedWestClick(Sender: TObject);
    procedure AltgradClick(Sender: TObject);
    procedure NeugradClick(Sender: TObject);
    procedure SpeedAltgradClick(Sender: TObject);
    procedure SpeedNeugradClick(Sender: TObject);
    procedure SpeedGaussClick(Sender: TObject);
    procedure SpeedNEClick(Sender: TObject);
    procedure SpeedNWClick(Sender: TObject);
    procedure SpeedSEClick(Sender: TObject);
    procedure SpeedSWClick(Sender: TObject);
    procedure ausDateiClick(Sender: TObject);
    procedure SpeedausDateiClick(Sender: TObject);
    procedure HilfeClick(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure SpeedLiteraturClick(Sender: TObject);
    procedure SpeedHilfeClick(Sender: TObject);
    procedure HandbuchClick(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
    procedure UTMClick(Sender: TObject);
    procedure SpeedUTMClick(Sender: TObject);
    procedure DMSClick(Sender: TObject);
    procedure SpeedDMSClick(Sender: TObject);
    procedure SpeedDMMClick(Sender: TObject);
    procedure DMMClick(Sender: TObject);
    procedure MaskEditMaxKeyPress(Sender: TObject; var Key: Char);
  end;

var
  Form79    : TForm79;
  EingabeS  : string;
  Gedrueckt : array [0..4] of boolean;
  SektorS   : string;

implementation

uses Unit80, Unit64, Unit82, Unit83, Unit84;
{$R *.DFM}

procedure TForm79.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm79.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm79.FormActivate(Sender: TObject);
var
  i : byte;
begin
  Left   := 115;
  Top    := 80;
  Height := 620;
  Width  := 800;
  LabelDemo.Visible               := false;
  if DemoB then LabelDemo.Visible := true;
  Form79.Caption             := 'Fabric8: '+Tx(1259)+' '+Tx(1260);
//  LabelAutor.Caption         := Tx(74);
  LabelEintragen.Caption     := Tx(1259);
  LabelKarte.Caption         := Tx(1260);
  ButtonWeiter.Caption       := Tx(76);
  ButtonZuruck.Caption       := Tx(30);
  ButtonBeenden.Caption      := Tx(53);
  LabelEinstellungen.Caption := Tx(75);
  Eingabe.Caption            := Tx(55);
  manuell.Caption            := Tx(56);
  ButtonWeiter.Enabled       := false;
  ausDatei.Caption           := Tx(57);   
  AusKarte.Caption           := Tx(1261);
  AusExcel.Caption           := Tx(1007);
  Koordinaten.Caption        := Tx(689);
  geographisch.Caption       := Tx(1262);
  LabelEingabe.Caption       := Tx(77);
  LabelManuell.Caption       := '';
  LabelKoordinaten.Caption   := Tx(689)+':';
  LabelGeographisch.Caption  := '';
  LabelWinkel1.Caption       := Tx(81);
  SpeedManuell.Hint          := Hilf(327);
  SpeedKarte.Hint            := Hilf(490);
  SpeedExcel.Hint            := Hilf(344);
  SpeedDMM.Hint              := Hilf(491);
  SpeedDMS.Hint              := Hilf(503);
  SpeedGauss.Hint            := Hilf(492);
  SpeedNE.Hint               := Hilf(494);
  SpeedNW.Hint               := Hilf(493);
  SpeedSE.Hint               := Hilf(496);
  SpeedSW.Hint               := Hilf(495);
  SpeedAltgrad.Hint          := Hilf(334);
  SpeedNeugrad.Hint          := Hilf(335);
  SpeedausDatei.Hint         := Hilf(328);
  SpeedHilfe.Hint            := Hilf(210);
  SpeedHandbuch.Hint         := Hilf(274);
  SpeedLiteratur.Hint        := Hilf(462);
  SpeedUTM.Hint              := Hilf(504);
  Hemisphaere.Caption        := Tx(1268);
  NordOst.Caption            := Tx(1269);
  NordWest.Caption           := TX(1270);
  SuedOst.Caption            := Tx(1271);
  SuedWest.Caption           := Tx(1272);
  LabelSektor.Caption        := Tx(1268)+':';
  LabelNord.Caption          := '';
  WinkelAN.Caption           := Tx(67);
  Altgrad.Caption            := Tx(68);
  Neugrad.Caption            := Tx(69);
  Hilfe.Caption              := Tx(162)+' (F1)';
  Handbuch.Caption           := Tx(1055)+' (F2)';
  Literatur.Caption          := Tx(1183)+' (F5)';
  LabelAltgrad.Caption       := '';
  for i := 1 to 4 do
    Gedrueckt[i] := false;
  LabelMax.Caption      := Tx(981);
  MaskEditMax.EditMask  := '99999;0; ';
  MaskEditMax.Text      := IntToStr(MaxDaten);
end;

procedure TForm79.ButtonWeiterClick(Sender: TObject);
begin
  if EingabeS = 'manuell' then Form80.Show;
  if EingabeS = 'Festplatte' then Form82.Show;
  if EingabeS = 'Karte' then Form83.Show;
  if EingabeS = 'ExcelD' then
  begin
    showMessage(Tx(1040)+Chr(13)+Tx(1041)+Chr(13)+Tx(1042)
                +Chr(13)+Tx(1043)+Chr(13)+Tx(1044));
    Form84.Show;
  end;
end;

procedure TForm79.ButtonZuruckClick(Sender: TObject);
begin
  Form79.Close;
  SetCurrentDir(DirectS);
end;

procedure TForm79.ButtonBeendenClick(Sender: TObject);
begin
  Form79.Close;
  SetCurrentDir(DirectS);
end;

procedure TForm79.manuellClick(Sender: TObject);
begin
  EingabeS                 := 'manuell';
  LabelManuell.Caption     := Tx(56);
  Gedrueckt[1]             := true;
  Koordinaten.Enabled      := true;
  DMS.Enabled              := true;
  DMM.Enabled              := true;
  UTM.Enabled              := true;
  SpeedDMM.Enabled         := true;
  SpeedDMS.Enabled         := true;
  SpeedUTM.Enabled         := true;
  SpeedGauss.Enabled       := true;
  Hemisphaere.Enabled      := true;
  SpeedNE.Enabled          := true;
  SpeedNW.Enabled          := true;
  SpeedSE.Enabled          := true;
  SpeedSW.Enabled          := true;
  WinkelAN.Enabled         := true;
  SpeedAltgrad.Enabled     := true;
  SpeedNeugrad.Enabled     := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
    and Gedrueckt[4] then ButtonWeiter.Enabled := true;
end;

procedure TForm79.SpeedManuellClick(Sender: TObject);
begin
  manuellClick(Sender);
end;

procedure TForm79.ausDateiClick(Sender: TObject);
begin
  EingabeS     := 'Festplatte';
  LabelManuell.Caption := Tx(57);
  LabelAltgrad.Caption := Tx(68);
  Gedrueckt[1] := true;
  Gedrueckt[2] := true;
  Gedrueckt[4] := true;
  Hemisphaere.Enabled      := false;
  SpeedNE.Enabled          := false;
  SpeedNW.Enabled          := false;
  SpeedSE.Enabled          := false;
  SpeedSW.Enabled          := false;
  WinkelAN.Enabled         := false;
  SpeedAltgrad.Enabled     := false;
  SpeedNeugrad.Enabled     := false;
  Koordinaten.Enabled      := false;
  SpeedDMM.Enabled         := false;
  SpeedDMS.Enabled         := false;
  SpeedGauss.Enabled       := false;
  SpeedUTM.Enabled         := false;
  LabelNord.Caption        := Tx(1291);
  Gedrueckt[3]             := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
  and Gedrueckt[4] then ButtonWeiter.Enabled := true;
end;

procedure TForm79.ausKarteClick(Sender: TObject);
begin
  EingabeS                 := 'Karte';
  LabelManuell.Caption     := Tx(1261);
  Gedrueckt[1]             := true;
  Koordinaten.Enabled      := true;
  SpeedDMM.Enabled         := true;
  UTM.Enabled              := true;
  SpeedUTM.Enabled         := true;
  DMS.Enabled              := false;
  SpeedDMS.Enabled         := false;
  SpeedGauss.Enabled       := true;
  Hemisphaere.Enabled      := true;
  SpeedNE.Enabled          := true;
  SpeedNW.Enabled          := true;
  SpeedSE.Enabled          := true;
  SpeedSW.Enabled          := true;
  WinkelAN.Enabled         := true;
  SpeedAltgrad.Enabled     := true;
  SpeedNeugrad.Enabled     := true;
  LabelNord.Caption        := '';
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
    and Gedrueckt[4] then ButtonWeiter.Enabled := true;
  Koordinaten.Enabled := true;
  Hemisphaere.Enabled := true;
  WinkelAN.Enabled    := true;
end;

procedure TForm79.SpeedausDateiClick(Sender: TObject);
begin
  ausDateiClick(Sender);
end;

procedure TForm79.SpeedKarteClick(Sender: TObject);
begin
  ausKarteClick(Sender);
end;

procedure TForm79.ausExcelClick(Sender: TObject);
begin
  EingabeS := 'ExcelD';
  LabelManuell.Caption := Tx(1007);
  Koordinaten.Enabled  := true;
  SpeedDMM.Enabled     := true;
  SpeedDMS.Enabled     := true;
  SpeedGauss.Enabled   := true;
  Hemisphaere.Enabled  := false;
  WinkelAN.Enabled     := true;
  SpeedAltgrad.Enabled := true;
  SpeedNeugrad.Enabled := true;
  SpeedNE.Enabled      := false;
  SpeedNW.Enabled      := false;
  SpeedSE.Enabled      := false;
  SpeedSW.Enabled      := false;
  LabelNord.Caption    := Tx(1291);
  Gedrueckt[1]         := true;
  Gedrueckt[3]         := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
    and Gedrueckt[4] then ButtonWeiter.Enabled := true;
end;

procedure TForm79.SpeedExcelClick(Sender: TObject);
begin
  ausExcelClick(Sender);
end;

procedure TForm79.DMMClick(Sender: TObject);
begin
  KoordinatenS              := 'DMM';
  LabelGeographisch.Caption := Tx(1262)+' (dd°mm.mmm´)';
  Gedrueckt[2]              := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
    and Gedrueckt[4] then ButtonWeiter.Enabled := true;
end;

procedure TForm79.SpeedDMMClick(Sender: TObject);
begin
  DMMClick(Sender);
end;

procedure TForm79.DMSClick(Sender: TObject);
begin
  KoordinatenS              := 'DMS';
  LabelGeographisch.Caption := Tx(1262)+' (dd°mm´ss.s´´)';
  Gedrueckt[2]              := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
    and Gedrueckt[4] then ButtonWeiter.Enabled := true;
end;

procedure TForm79.SpeedDMSClick(Sender: TObject);
begin
  DMSClick(Sender);
end;

procedure TForm79.GaussClick(Sender: TObject);
begin
  KoordinatenS := 'Gauss';
  LabelGeographisch.Caption := 'Gauss-Krüger';
  NordSuedS := 'N';
  OstwestS  := 'E';
  Hemisphaere.Enabled := false;
  SpeedNE.Enabled     := false;
  SpeedNW.Enabled     := false;
  SpeedSE.Enabled     := false;
  SpeedSW.Enabled     := false;
  Gedrueckt[2] := true;
  Gedrueckt[3] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
    and Gedrueckt[4] then ButtonWeiter.Enabled := true;
end;

procedure TForm79.SpeedGaussClick(Sender: TObject);
begin
  GaussClick(Sender);
end;

procedure TForm79.UTMClick(Sender: TObject);
begin
  KoordinatenS := 'UTM';
  LabelGeographisch.Caption := 'UTM';
  Hemisphaere.Enabled := false;
  SpeedNE.Enabled     := false;
  SpeedNW.Enabled     := false;
  SpeedSE.Enabled     := false;
  SpeedSW.Enabled     := false;
  Gedrueckt[2] := true;
  Gedrueckt[3] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
    and Gedrueckt[4] then ButtonWeiter.Enabled := true;
end;

procedure TForm79.SpeedUTMClick(Sender: TObject);
begin
  UTMClick(Sender);
end;

procedure TForm79.NordostClick(Sender: TObject);
begin
  NordSuedS    :='N';
  OstWestS     := 'E';
  LabelNord.Caption := Tx(1269);
  Gedrueckt[3] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
    and Gedrueckt[4] then ButtonWeiter.Enabled := true;
end;

procedure TForm79.SpeedNEClick(Sender: TObject);
begin
  NordOstClick(Sender);
end;

procedure TForm79.NordWestClick(Sender: TObject);
begin
  NordSuedS    :='N';
  OstWestS     := 'W';
  LabelNord.Caption := TX(1270);
  Gedrueckt[3] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
    and Gedrueckt[4] then ButtonWeiter.Enabled := true;
end;

procedure TForm79.SpeedNWClick(Sender: TObject);
begin
  NordWestClick(Sender);
end;

procedure TForm79.SuedOstClick(Sender: TObject);
begin
  NordSuedS    :='S';
  OstWestS     := 'E';
  LabelNord.Caption := TX(1271);
  Gedrueckt[3] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
    and Gedrueckt[4] then ButtonWeiter.Enabled := true;
end;

procedure TForm79.SpeedSEClick(Sender: TObject);
begin
  SuedOstClick(Sender);
end;

procedure TForm79.SuedWestClick(Sender: TObject);
begin
  NordSuedS    :='S';
  OstWestS     := 'W';
  LabelNord.Caption := TX(1272);
  Gedrueckt[3] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
    and Gedrueckt[4] then ButtonWeiter.Enabled := true;
end;

procedure TForm79.SpeedSWClick(Sender: TObject);
begin
  SuedWestClick(Sender);
end;

procedure TForm79.AltgradClick(Sender: TObject);
begin
  Winkel := 1;
  Gedrueckt[4] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
    and Gedrueckt[4] then Buttonweiter.Enabled := true;
  LabelAltgrad.Caption := Tx(82);
end;

procedure TForm79.SpeedAltgradClick(Sender: TObject);
begin
  AltgradClick(Sender);
end;

procedure TForm79.NeugradClick(Sender: TObject);
begin
  Winkel := 2;
  Gedrueckt[4] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
    and Gedrueckt[4] then Buttonweiter.Enabled := true;
  LabelAltgrad.Caption := Tx(84);
end;

procedure TForm79.SpeedNeugradClick(Sender: TObject);
begin
  NeugradClick(Sender);
end;

procedure TForm79.HilfeClick(Sender: TObject);
var
  DateiS : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\date2a1x.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\Map-main.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm79.SpeedHilfeClick(Sender: TObject);
begin
  HilfeClick(Sender);
end;

procedure TForm79.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Eintragen_in_Karte.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'Plot_data_into_map.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm79.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm79.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm79.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

procedure TForm79.MaskEditMaxKeyPress(Sender: TObject; var Key: Char);
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
