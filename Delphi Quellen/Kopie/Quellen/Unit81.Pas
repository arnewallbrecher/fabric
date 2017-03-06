unit Unit81;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, ExtCtrls, Globvar, StdCtrls, Texte,
  ComCtrls, Karte, Menus, Buttons, Basic, Clipbrd,
  ExtDlgs, Mask, Printers, Drucken, Einausga, Shellapi,
  Jpeg, Standard, QuickRpt, GifImage, Bmp2Tiff, ReadTiff,
  ehsHelpRouter;

type
  TForm81 = class(TForm)
    ButtonBeenden: TButton;
    ButtonZurueck: TButton;
    ButtonStart  : TButton;
    StatusBar: TStatusBar;
    ImageKarte: TImage;
    MainMenu1: TMainMenu;
    Farbe: TMenuItem;
    LaengeSymb: TMenuItem;
    ColorDialog1: TColorDialog;
    LabelLaenge: TLabel;
    LabelPixel: TLabel;
    ListBoxLaenge: TListBox;
    PanelSpeed: TPanel;
    SpeedFarbe: TSpeedButton;
    SpeedLaenge: TSpeedButton;
    StrichStaerke: TMenuItem;
    LabelStrich: TLabel;
    SpeedStrich: TSpeedButton;
    ListBoxDaten: TListBox;
    LabelDaten: TLabel;
    Grafik: TMenuItem;
    kopieren: TMenuItem;
    SaveDialog1: TSavePictureDialog;
    OpenDialog1: TOpenPictureDialog;
    Drucker: TMenuItem;
    einrichten: TMenuItem;
    drucken: TMenuItem;
    Paneldrucken: TPanel;
    GroupBoxdrucken: TGroupBox;
    Panel7: TPanel;
    LabelRdrucken: TLabel;
    MaskEditRdrucken: TMaskEdit;
    Panel8: TPanel;
    LabelMitte: TLabel;
    LabelXdrucken: TLabel;
    LabelYdrucken: TLabel;
    MaskEditXdrucken: TMaskEdit;
    MaskEditYdrucken: TMaskEdit;
    Panel11: TPanel;
    LabelUnterschrift: TLabel;
    LabelSchrift: TLabel;
    MaskEditUnterschrift: TMaskEdit;
    ListBoxSchrift: TListBox;
    PrinterSetupDialog1: TPrinterSetupDialog;
    RadioGroup: TRadioGroup;
    RadioButtonlinks: TRadioButton;
    RadioButtonzentriert: TRadioButton;
    RadioButtonrechts: TRadioButton;
    FarbeKarte: TMenuItem;
    DatenSpeichern: TMenuItem;
    Dspeichern: TMenuItem;
    DspeichernUnter: TMenuItem;
    Hilfe: TMenuItem;
    Literatur: TMenuItem;
    Speedkopieren: TSpeedButton;
    SpeedausZwischen: TSpeedButton;
    SpeedKFarbe: TSpeedButton;
    SpeedDrucker: TSpeedButton;
    SavePictureDialog1: TSavePictureDialog;
    PanelAnzahl: TPanel;
    LabelZahl: TLabel;
    LabelAnzahl: TLabel;
    SpeedHilfe: TSpeedButton;
    ListBoxStrich: TListBox;
    PanelKoor: TPanel;
    LabelKoor: TLabel;
    ListBoxLinks: TListBox;
    KartenRand: TMenuItem;
    ListBoxRechts: TListBox;
    ListBoxOben: TListBox;
    ListBoxUnten: TListBox;
    PanelRaender: TPanel;
    LabelRaender: TLabel;
    LabelLinks: TLabel;
    LabelRechts: TLabel;
    LabelOben: TLabel;
    LabelUnten: TLabel;
    Vorschau: TMenuItem;
    SpeedEinrichten: TSpeedButton;
    Ausschnitt: TMenuItem;
    Vorgabe: TMenuItem;
    RadioGAussen: TRadioGroup;
    RadioAussen: TRadioButton;
    RadioInnen: TRadioButton;
    Verschieben: TMenuItem;
    CheckBoxOK: TCheckBox;
    SymbolFarbe: TMenuItem;
    PanelVorgabeGeo: TPanel;
    MaskEditVorBreiteOGrad: TMaskEdit;
    MaskEditVorBreiteUGrad: TMaskEdit;
    MaskEditVorLaengeLGrad: TMaskEdit;
    MaskEditVorLaengeRGrad: TMaskEdit;
    LabelGBreite: TLabel;
    LabelBOben: TLabel;
    LabelBunten: TLabel;
    LabelLlinks: TLabel;
    LabelGLaenge: TLabel;
    LabelLrechts: TLabel;
    LabelVorGrad: TLabel;
    LabelVorMin: TLabel;
    MaskEditVorBreiteOMin: TMaskEdit;
    MaskEditVorBreiteUMin: TMaskEdit;
    MaskEditVorLaengeLMin: TMaskEdit;
    MaskEditVorLaengeRMin: TMaskEdit;
    PanelGauss: TPanel;
    LabelGaussR: TLabel;
    LabelGaussH: TLabel;
    MaskEditRL1: TMaskEdit;
    MaskEditRL2: TMaskEdit;
    MaskEditRL3: TMaskEdit;
    MaskEditOH1: TMaskEdit;
    MaskEditOH2: TMaskEdit;
    MaskEditOH3: TMaskEdit;
    LabelGLRechts: TLabel;
    LabelGRRechts: TLabel;
    MaskEditRR3: TMaskEdit;
    MaskEditRR2: TMaskEdit;
    MaskEditRR1: TMaskEdit;
    LabelGOHoch: TLabel;
    MaskEditUH1: TMaskEdit;
    MaskEditUH2: TMaskEdit;
    MaskEditUH3: TMaskEdit;
    LabelGUHoch: TLabel;
    LabelGeo: TLabel;
    PanelUTM: TPanel;
    PanelUTMRand: TPanel;
    LabelOsten: TLabel;
    LabelNorden: TLabel;
    LabelOstenL: TLabel;
    MaskEditOstenL: TMaskEdit;
    LabelOstenR: TLabel;
    MaskEditOstenR: TMaskEdit;
    MaskEditNordenO: TMaskEdit;
    MaskEditNordenU: TMaskEdit;
    LabelNordenO: TLabel;
    LabelNordenU: TLabel;
    SpeedHandbuch: TSpeedButton;
    SpeedLiteratur: TSpeedButton;
    PanelKarte: TPanel;
    LabelKarte: TLabel;
    MaskEditKarte: TMaskEdit;
    Symbole: TMenuItem;
    Zeichen: TMenuItem;
    Numerierung: TMenuItem;
    SpeedVerschieben: TSpeedButton;
    SpeedKausschneiden: TSpeedButton;
    SpeedRaender: TSpeedButton;
    SpeedTektonik: TSpeedButton;
    SpeedNummer: TSpeedButton;
    SpeedDspeichern: TSpeedButton;
    PanelGroesse: TPanel;
    LabelBHoehe: TLabel;
    LabelBBreite: TLabel;
    MaskEditBBreite: TMaskEdit;
    MaskEditBHoehe: TMaskEdit;
    CheckBoxBild: TCheckBox;
    BGroesse: TMenuItem;
    Speichern1: TMenuItem;
    speichernBMP: TMenuItem;
    speichernGIF: TMenuItem;
    speichernTIF: TMenuItem;
    speichernJPG: TMenuItem;
    speichernWMF: TMenuItem;
    speichernEMF: TMenuItem;
    SpeichernUnter: TMenuItem;
    speichernUBMP: TMenuItem;
    speichernUGIF: TMenuItem;
    speichernUTIF: TMenuItem;
    speichernUJPG: TMenuItem;
    speichernUWMF: TMenuItem;
    speichernUEMF: TMenuItem;
    SpeedBGroesse: TSpeedButton;
    SpeedBMP: TSpeedButton;
    SpeedGIF: TSpeedButton;
    SpeedTIF: TSpeedButton;
    SpeedJPG: TSpeedButton;
    SpeedWMF: TSpeedButton;
    SpeedEMF: TSpeedButton;
    SpeedBMP1: TSpeedButton;
    Handbuch: TMenuItem;
    BildausDatei: TMenuItem;
    OpenPictureDialog1: TOpenPictureDialog;
    holenBMP: TMenuItem;
    holenGIF: TMenuItem;
    holenTIF: TMenuItem;
    Jpeg1: TMenuItem;
    holenWMF: TMenuItem;
    holenEMF: TMenuItem;
    BildausZwischen: TMenuItem;
    SpeedHolBMP: TSpeedButton;
    SpeedHolGIF: TSpeedButton;
    SpeedHolWMF: TSpeedButton;
    SpeedHolTIF: TSpeedButton;
    SpeedHolJPG: TSpeedButton;
    SpeedHolEMF: TSpeedButton;
    ButtonDrucken: TButton;
    ButtonAbbrechen: TButton;
    procedure FormActivate(Sender: TObject);
    procedure ButtonBeendenClick(Sender: TObject);
    procedure ButtonZurueckClick(Sender: TObject);
    procedure ButtonStartClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ShowHint(Sender: TObject);
    procedure ListBoxLaengeClick(Sender: TObject);
    procedure LaengeSymbClick(Sender: TObject);
    procedure SpeedFarbeClick(Sender: TObject);
    procedure SpeedLaengeClick(Sender: TObject);
    procedure StrichStaerkeClick(Sender: TObject);
    procedure ListBoxStrichClick(Sender: TObject);
    procedure SpeedStrichClick(Sender: TObject);
    procedure kopierenClick(Sender: TObject);
    procedure einrichtenClick(Sender: TObject);
    procedure druckenClick(Sender: TObject);
    procedure RadioButtonrechtsClick(Sender: TObject);
    procedure RadioButtonzentriertClick(Sender: TObject);
    procedure RadioButtonlinksClick(Sender: TObject);
    procedure MaskEditUnterschriftKeyPress(Sender: TObject; var Key: Char);
    procedure ListBoxSchriftClick(Sender: TObject);
    procedure FarbeKarteClick(Sender: TObject);
    procedure DspeichernClick(Sender: TObject);
    procedure DspeichernUnterClick(Sender: TObject);
    procedure HilfeClick(Sender: TObject);
    procedure HandbuchClick(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
    procedure SpeedkopierenClick(Sender: TObject);
    procedure SpeedKFarbeClick(Sender: TObject);
    procedure SpeedDruckerClick(Sender: TObject);
    procedure SpeedHilfeClick(Sender: TObject);
    procedure ListBoxLinksClick(Sender: TObject);
    procedure ListBoxRechtsClick(Sender: TObject);
    procedure ListBoxObenClick(Sender: TObject);
    procedure ListBoxUntenClick(Sender: TObject);
    procedure MaskEditRdruckenKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditXdruckenKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditYdruckenKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedEinrichtenClick(Sender: TObject);
    procedure AusschnittClick(Sender: TObject);
    procedure ImageKarteMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ImageKarteMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ImageKarteMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure VorgabeClick(Sender: TObject);
    procedure VerschiebenClick(Sender: TObject);
    procedure RadioAussenClick(Sender: TObject);
    procedure RadioInnenClick(Sender: TObject);
    procedure CheckBoxOKClick(Sender: TObject);
    procedure SymbolFarbeClick(Sender: TObject);
    procedure MaskEditVorBreiteOGradKeyPress(Sender: TObject;
      var Key: Char);
    procedure MaskEditVorBreiteOMinKeyPress(Sender: TObject;
      var Key: Char);
    procedure MaskEditVorBreiteUGradKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditVorLaengeLGradKeyPress(Sender: TObject;
      var Key: Char);
    procedure MaskEditVorLaengeLMinKeyPress(Sender: TObject;
      var Key: Char);
    procedure MaskEditVorLaengeRGradKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditVorLaengeRMinKeyPress(Sender: TObject;
      var Key: Char);
    procedure MaskEditVorBreiteUMinKeyPress(Sender: TObject;
      var Key: Char);
    procedure MaskEditRL1KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditRL2KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditRL3KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditRR1KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditRR2KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditRR3KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditUH1KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditOH1KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditUH2KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditOH2KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditOH3KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditUH3KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditOstenLKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditOstenRKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditNordenOKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditNordenUKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure SpeedLiteraturClick(Sender: TObject);
    procedure ZeichenClick(Sender: TObject);
    procedure NumerierungClick(Sender: TObject);
    procedure SpeedVerschiebenClick(Sender: TObject);
    procedure SpeedKausschneidenClick(Sender: TObject);
    procedure SpeedRaenderClick(Sender: TObject);
    procedure SpeedTektonikClick(Sender: TObject);
    procedure SpeedDspeichernClick(Sender: TObject);
    procedure BGroesseClick(Sender: TObject);
    procedure MaskEditBBreiteKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditBHoeheKeyPress(Sender: TObject; var Key: Char);
    procedure CheckBoxBildClick(Sender: TObject);
    procedure speichernBMPClick(Sender: TObject);
    procedure speichernGIFClick(Sender: TObject);
    procedure speichernTIFClick(Sender: TObject);
    procedure speichernJPGClick(Sender: TObject);
    procedure speichernWMFClick(Sender: TObject);
    procedure speichernEMFClick(Sender: TObject);
    procedure speichernUBMPClick(Sender: TObject);
    procedure speichernUGIFClick(Sender: TObject);
    procedure speichernUTIFClick(Sender: TObject);
    procedure speichernUJPGClick(Sender: TObject);
    procedure speichernUWMFClick(Sender: TObject);
    procedure speichernUEMFClick(Sender: TObject);
    procedure SpeedBGroesseClick(Sender: TObject);
    procedure SpeedGIFClick(Sender: TObject);
    procedure SpeedTIFClick(Sender: TObject);
    procedure SpeedJPGClick(Sender: TObject);
    procedure SpeedWMFClick(Sender: TObject);
    procedure SpeedEMFClick(Sender: TObject);
    procedure SpeedBMP1Click(Sender: TObject);
    procedure holenBMPClick(Sender: TObject);
    procedure holenGIFClick(Sender: TObject);
    procedure holenTIFClick(Sender: TObject);
    procedure Jpeg1Click(Sender: TObject);
    procedure holenWMFClick(Sender: TObject);
    procedure holenEMFClick(Sender: TObject);
    procedure BildausZwischenClick(Sender: TObject);
    procedure SpeedausZwischenClick(Sender: TObject);
    procedure SpeedHolBMPClick(Sender: TObject);
    procedure SpeedHolGIFClick(Sender: TObject);
    procedure SpeedHolTIFClick(Sender: TObject);
    procedure SpeedHolJPGClick(Sender: TObject);
    procedure SpeedHolWMFClick(Sender: TObject);
    procedure SpeedHolEMFClick(Sender: TObject);
    procedure ButtonDruckenClick(Sender: TObject);
    procedure ButtonAbbrechenClick(Sender: TObject);
  end;

var
  Form81: TForm81;

implementation

uses Unit80, Unit79, Unit82, Unit83, Unit84;
{$R *.DFM}
var
  KBreite     : real;
  KHoehe      : real;
  Faktor      : real;
  CurrentFile : string;
  BuendigS    : string;
  Gedrueckt   : array[0..3] of boolean;
  TextS       : string;
  RS, HS      : string[1];
  Re,Li,Ob,Un : integer;
  ReinRaus    : integer;
  RadiusS     : string;
  XKoordS     : string;
  YKoordS     : string;
  Ausschn     : boolean;
  Maus        : boolean;
  Xanfang     : integer;
  Yanfang     : integer;
  KartenBild  : TBitmap;
  Xende       : word;
  Yende       : word;
  LFaktor     : extended;
  HFaktor     : extended;
  LRand       : extended;
  ORand       : extended;
  URand       : extended;
  RRand       : extended;
  Rand        : TRand;
  VorBrOGradS : string;
  VorBrOMinS  : string;
  VorBrUGradS : string;
  VorBrUMinS  : string;
  VorLaLGradS : string;
  VorLaLMinS  : string;
  VorLaRGradS : string;
  VorLaRMinS  : string;
  FixKoor     : Boolean;
  RL1S        : string;
  RL2S        : string;
  RL3S        : string;
  RR1S        : string;
  RR2S        : string;
  RR3S        : string;
  OH1S        : string;
  OH2S        : string;
  UH1S        : string;
  UH2S        : string;
  GLRechtsS   : string;
  GRRechtsS   : string;
  GOHochS     : string;
  GUHochS     : string;
  OLS, ORS    : string;
  NOS         : string;
  Nummer      : boolean;
  BHoeheST    : word;
  Ratio       : real;
  HolPixS     : string;

procedure TForm81.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm81.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm81.FormActivate(Sender: TObject);

var
  i : byte;
begin
  Form81.Caption := Tx(1305);
  Left   := 4;
  Top    := 0;
  Width  := 1040;
  Height := 750;
  Setlength (AziFeld, MaxDaten);
  Setlength (FalFeld, MaxDaten);
  Setlength (BreiteFeld, MaxDaten);
  Setlength (LaengeFeld, MaxDaten);
  Setlength (LpFeld, MaxDaten);
  ButtonZurueck.Caption  := Tx(30);
  ButtonBeenden.Caption  := Tx(53);
  for i := 1 to 100 do
    ListBoxLaenge.Items.Add (IntToStr(i));
  ListBoxLaenge.Visible := false;
  LabelLaenge.Visible   := false;
  LabelPixel.Visible    := false;
  for i := 1 to 10 do
    ListBoxStrich.Items.Add (IntToStr(i));
  ListBoxStrich.Visible := false;
  LabelStrich.Visible   := false;
  Farbe.Caption         := Tx(275);
  LaengeSymb.Caption    := Tx(1279);
  LabelLaenge.Caption   := Tx(1279);
  StrichStaerke.Caption := Tx(1181);
  LabelStrich.Caption   := Tx(1181)+' (Pixel)';
  LabelDaten.Caption    := Tx(914)+':';
  ListBoxDaten.Visible  := false;
  LabelDaten.Visible    := false;
  HolZwischen           := false;
  HolDatei              := false;
  Paneldrucken.Visible         := false;
  LabelRdrucken.Caption        := Tx(1280);
  einrichten.Caption           := Tx(94);
  drucken.Caption              := Tx(93);
  FarbeKarte.Caption           := Tx(1281);
  DatenSpeichern.Caption       := Tx(86);
  Dspeichern.Caption           := Tx(87);
  DspeichernUnter.Caption      := Tx(88);
  Grafik.Caption               := Tx(281);
  kopieren.Caption             := Tx(282);
  Drucker.Caption              := Tx(288);
  Hilfe.Caption                := Tx(162)+'(F1)';
  Handbuch.Caption             := Tx(1055)+'(F2)';
  Literatur.Caption            := Tx(1183)+'(F5)';
  SymbolFarbe.Caption          := Tx(1330);
  Speedkopieren.Hint           := Hilf(262);
  SpeedKFarbe.Hint             := Hilf(497);
  SpeedDrucker.Hint            := Hilf(309);
  SpeedStrich.Hint             := Hilf(463);
  SpeedLaenge.Hint             := Hilf(498);
  SpeedFarbe.Hint              := Hilf(499);
  SpeedBMP.Hint                := Hilf(426);
  SpeedJPG.Hint                := Hilf(427);
  SpeedEinrichten.Hint         := Hilf(505);
  SpeedHilfe.Hint              := Hilf(210);
  SpeedHandbuch.Hint           := Hilf(274);
  SpeedLiteratur.Hint          := Hilf(462);
  SpeedTektonik.Hint           := Hilf(534);
  SpeedNummer.Hint             := Hilf(535);
  SpeedVerschieben.Hint        := Hilf(536);
  SpeedKausschneiden.Hint      := Hilf(537);
  SpeedRaender.Hint            := Hilf(538);
  SpeedDspeichern.Hint         := Hilf(204);
  SpeedBGroesse.Hint           := Hilf(583);
  SpeedBMP1.Hint               := Hilf(586);
  SpeedGIF.Hint                := Hilf(587);
  SpeedTIF.Hint                := Hilf(588);
  SpeedJPG.Hint                := Hilf(589);
  SpeedWMF.Hint                := Hilf(590);
  SpeedEMF.Hint                := Hilf(591);
  SpeedHolBMP.Hint             := Hilf(621);
  SpeedHolGIF.Hint             := Hilf(622);
  SpeedHolTIF.Hint             := Hilf(623);
  SpeedHolJPG.Hint             := Hilf(624);
  SpeedHolWMF.Hint             := Hilf(625);
  SpeedHolEMF.Hint             := Hilf(626);
  SpeedausZwischen.Hint        := Hilf(246);
  Speichern1.Caption           := Tx(87);
  SpeichernUnter.Caption       := Tx(88);
  PanelSpeed.Visible           := false;
  ImageKarte.Visible           := false;
  ListBoxDaten.Visible         := false;
  LabelAnzahl.Caption          := '';
  LabelZahl.Caption            := Tx(181);
  PanelAnzahl.Visible          := false;
  RS := Tx(1308);
  HS := Tx(1309);
  LabelKoor.Caption            := Tx(689)+':';
  PanelKoor.Visible            := false;
  KartenRand.Caption           := Tx(1328);
  ListBoxLinks.Clear;
  ListBoxRechts.Clear;
  ListBoxOben.Clear;
  ListBoxUnten.CleaR;
  if (KoordinatenS = 'DMM') or (KoordinatenS = 'DMS') then
    LabelRaender.Caption := TX(1299);
  if (KoordinatenS = 'Gauss') or (KoordinatenS = 'UTM') then
    LabelRaender.Caption := TX(1320);
  Liste(ListBoxRechts);
  Liste(ListBoxLinks);
  Liste(ListBoxOben);
  Liste(ListBoxUnten);
  Re := 0;
  Li := 0;
  Ob := 0;
  Un := 0;
  ReinRaus := 1;
  PanelUTM.Visible             := false;
  PanelUTMRand.Visible         := false;
  PanelRaender.Visible         := false;
  ListBoxLinks.Visible         := false;
  ListBoxRechts.Visible        := false;
  ListBoxOben.Visible          := false;
  ListBoxUnten.Visible         := false;
  LabelLinks.Caption           := Tx(1317);
  LabelRechts.Caption          := Tx(1316);
  LabelOben.Caption            := Tx(1318);
  LabelUnten.Caption           := Tx(1319);
  RadioButtonlinks.Visible     := false;
  RadioButtonzentriert.Visible := false;
  RadioButtonrechts.Visible    := false;
  RadioGroup.Visible           := false;
  RadioGAussen.Caption         := Tx(347);
  RadioAussen.Caption          := Tx(1314);
  RadioInnen.Caption           := Tx(1315);
  RadioAussen.Visible          := false;
  RadioInnen.Visible           := false;
  Ausschn                      := false;
  Vorgabe.Caption              := Tx(1329);
  PanelVorgabeGeo.Visible         := false;
  MaskEditVorBreiteOGrad.EditMask := '99;0; ';
  MaskEditVorBreiteOMin.EditMask  := '99;0; ';
  MaskEditVorBreiteUGrad.EditMask := '99;0; ';
  MaskEditVorBreiteUMin.EditMask  := '99;0; ';
  MaskEditVorLaengeLGrad.EditMask := '999;0; ';
  MaskEditVorLaengeLMin.EditMask  := '99;0; ';
  MaskEditVorLaengeRGrad.EditMask := '999;0; ';
  MaskEditVorLaengeRMin.EditMask  := '99;0; ';
  FixKoor := false;
  LabelGBreite.Caption  := Tx(1276);
  LabelVorGrad.Caption  := Tx(1266);
  LabelVorMin.Caption   := Tx(1267);
  LabelBOben.Caption    := Tx(1331);
  LabelBUnten.Caption   := Tx(1332);
  LabelGLaenge.Caption  := Tx(1277);
  LabelLLinks.Caption   := Tx(1333);
  LabelLRechts.Caption  := Tx(1334);
  LabelGaussR.Caption   := Tx(1300);
  LabelGaussH.Caption   := Tx(1301);
  PanelGauss.Visible    := false;
  LabelGLRechts.Caption := Tx(1333);
  LabeLGRRechts.Caption := Tx(1334);
  LabelGOHoch.Caption   := Tx(1331);
  LabelGUHoch.Caption   := Tx(1332);
  BildausDatei.Caption  := Tx(1486);
  MaskEditRL1.EditMask  := '99;0; ';
  MaskEditRL2.EditMask  := '99;0; ';
  MaskEditRL3.EditMask  := '999;0; ';
  MaskEditOH1.EditMask  := '99;0; ';
  MaskEditOH2.EditMask  := '99;0; ';
  MaskEditOH3.EditMask  := '999;0; ';
  MaskEditRR1.EditMask  := '99;0; ';
  MaskEditRR2.EditMask  := '99;0; ';
  MaskEditRR3.EditMask  := '999;0; ';
  MaskEditUH1.EditMask  := '99;0; ';
  MaskEditUH2.EditMask  := '99;0; ';
  MaskEditUH3.EditMask  := '999;0; ';
  MaskEditOstenL.EditMask  := '9999999;0; ';
  MaskEditOstenR.EditMask  := '9999999;0; ';
  MaskEditNordenO.EditMask := '9999999;0; ';
  MaskEditNordenU.EditMask := '9999999;0; ';
  LabelOsten.Caption   := Tx(1324);
  LabelNorden.Caption  := Tx(1325);
  LabelOstenL.Caption  := Tx(1333);
  LabelOstenR.Caption  := Tx(1334);
  LabelNordenO.Caption := Tx(1331);
  LabelNordenU.Caption := Tx(1332);
  PanelKarte.Visible   := false;
  LabelKarte.Caption   := Tx(1335);
  Symbole.Caption      := Tx(1336);
  Zeichen.Caption      := Tx(1337);
  Numerierung.Caption  := Tx(1338);
  Verschieben.Caption  := Tx(1299);
  Ausschnitt.Caption   := Tx(283);
  Nummer               := false;
  MaskEditBBreite.EditMask := '99999;0; ';
  MaskEditBHoehe.EditMask  := '99999;0; ';
  LabelBBreite.Caption     := Tx(1440);
  LabelBHoehe.Caption      := Tx(1441);
  BGroesse.Caption         := Tx(1439);
  BildausZwischen.Caption  := Tx(1487);
  PanelGroesse.Visible     := false;
  Ratio := ImageKarte.Width/ImageKarte.Height;
end;

procedure TForm81.ButtonStartClick(Sender: TObject);
var
  RandS      : TRandS;
  LF         : TLogFont;
  Tf         : TFont;
  X, Y, i    : word;
  ZeileS     : string;
  BGradS     : string;
  BMinS      : string;
  LGradS     : string;
  LMins      : string;
  AzimutS    : string;
  FalS       : string;
  Bitmap     : TBitmap;
  Sign       : shortint;
  ObenGrad   : word;
  ObenMin    : word;
  UntenGrad  : word;
  UntenMin   : word;
  RechtsGrad : word;
  RechtsMin  : word;
  LinksGrad  : word;
  LinksMin   : word;
  RS, HS     : string[1];
  Rahmen     : TRect;
  FBild      : TBitmap;
  GBild      : TGifImage;
  JBild      : TJpegImage;
  MetaFile   : TMetaFile;
begin
  BHoeheST := round(BBreiteST/Ratio);
  Ausschn              := false;
  ImageKarte.Visible   := true;
  ListBoxDaten.Visible := true;
  PanelSpeed.Visible   := true;
  PanelAnzahl.Visible  := true;
  PanelKoor.Visible    := true;
  if (KoordinatenS = 'DMM') or (KoordinatenS = 'DMS') then
    LabelGeo.Caption := Tx(1262);
  if KoordinatenS = 'Gauss' then LabelGeo.Caption := TX(1312);
  if KoordinatenS = 'UTM' then
  begin
    LabelGeo.Caption := 'UTM';
    PanelUTM.Visible := true;
    PanelUTM.Caption := 'UTM-Zone  ' + UTMZoneS;
  end;
  LabelAnzahl.Caption := IntToStr(ZahlGlob);
  if (Re=0) and(Li=0) and (Ob=0) and(Un=0) and (FixKoor = false) then
  begin
    Grenzen (Rand);
    with Rand do
    begin
      if (NordSuedS = 'N') or (KoordinatenS = 'UTM')
      or (KoordinatenS = 'Gauss') then
      begin
        Oben   := round(Oben + abs(Oben-Unten)/5);
        Unten  := round(Unten - abs(Oben-Unten)/5);
      end;
      if NordSuedS = 'S' then
      begin
        Oben   := round(Oben - abs(Oben-Unten)/5);
        Unten  := round(Unten + abs(Oben-Unten)/5);
      end;
      if (OstWestS = 'E') or (KoordinatenS = 'UTM')
      or (KoordinatenS = 'Gauss')then
      begin
        Rechts := round(Rechts + abs(Rechts-Links)/5);
        Links  := round(Links - abs(Rechts-Links)/5);
      end;
      if (OstWestS = 'W') then
      begin
        Rechts := round(Rechts - abs(Rechts-Links)/5);
        Links  := round(Links + abs(Rechts-Links)/5);
      end;
    end;
  end;
  if ReinRaus > 0 then sign := 1 else sign := -1;
  if (KoordinatenS = 'DMM') or (KoordinatenS = 'DMS') then
  begin
    with Rand do
    begin
      if NordSuedS = 'N' then
      begin
        Oben  := Oben + Ob*sign;
        Unten := Unten - Un*sign;
      end;
      if NordSuedS = 'S' then
      begin
        Oben  := Oben - OB*sign;
        Unten := Unten + Un*sign;
      end;
      if OstWestS = 'W' then
      begin
        Links  := Links + Li*sign;
        Rechts := Rechts - Re*sign;
      end;
      if OstWestS = 'E' then
      begin
        Links  := Links  - Li*sign;
        Rechts := Rechts + Re*sign;
      end;
      ObenGrad   := Oben div 60;
      ObenMin    := Oben mod 60;
      UntenGrad  := Unten div 60;
      UntenMin   := Unten mod 60;
      RechtsGrad := Rechts div 60;
      RechtsMin  := Rechts mod 60;
      LinksGrad  := Links div 60;
      LinksMin   := Links mod 60;
    end;
    RS := OstWestS;
    HS := NordSuedS;
    with RandS do
    begin
      ObenS   := HS+IntToStr(ObenGrad)+'°'+IntToStr(ObenMin)+'´';
      UntenS  := HS+IntToStr(UntenGrad)+'°'+IntToStr(UntenMin)+'´';;
      RechtsS := RS+IntToStr(RechtsGrad)+'°'+IntToStr(RechtsMin)+'´';
      LinksS  := RS+IntToStr(LinksGrad)+'°'+IntToStr(LinksMin)+'´';
    end;
  end;
  if (KoordinatenS = 'Gauss') or (KoordinatenS = 'UTM') then
  begin
    RS     := Tx(1308);
    HS     := Tx(1309);
    with Rand do
    begin
      Oben   := Oben + Ob;
      Unten  := Unten - Un;
      Links  := Links - Li;
      Rechts := Rechts + Re;
      with RandS do
      begin
        ObenS   := IntToStr(Oben);
        UntenS  := IntToStr(Unten);
        RechtsS := IntToStr(Rechts);
        LinksS  := IntToStr(Links);
        if length(ObenS)   = 6 then ObenS   := '0' + ObenS;
        if length(UntenS)  = 6 then UntenS  := '0' + UntenS;
        if length(RechtsS) = 6 then RechtsS := '0' + RechtsS;
        if length(LinksS)  = 6 then LinksS  := '0' + LinksS;
        ObenS   := HS + ObenS;
        UntenS  := HS + UntenS;
        RechtsS := RS + RechtsS;
        LinksS  := RS + LinksS;
      end;
    end;
  end;
  KBreite   := abs(Rand.Rechts - Rand.Links);
  KHoehe    := abs(Rand.Oben - Rand.Unten);
  Faktor   := KBreite/KHoehe;
  HKarte   := 660;
  LKarte   := 660;
  if KBreite >= KHoehe then
  begin
    HKarte := round(HKarte/Faktor);
    LKarte := 660;
  end;
  if KHoehe >= KBreite then
  begin
    LKarte := round(LKarte*Faktor);
    HKarte := 660;
  end;
  ImageKarte.Width  := 660;
  ImageKarte.Height := 660;
  with ImageKarte.Canvas do
  begin
    Pen.Color   := clWhite;
    Brush.Color := clWhite;
    Rectangle (0,0,Width,Height);
  end;
  LFaktor  := LKarte/KBreite;
  HFaktor  := HKarte/KHoehe;
  with ImageKarte.Canvas do
  begin
    Breite     := Width;
    Hoehe      := Height;
    Pen.Color  := clBlack;
    Pen.Width  := 1;
    Font.Name  := 'Times New Roman';
    Font.Size  := 8;
    Font.Color := clBlack;
    Brush.Color := DiagrFarbe;
    Rectangle (0,0,LKarte,HKarte);
    Textout(LKarte div 2 - 15, 2, RandS.ObenS);
    Textout(LKarte div 2 - 15, HKarte - 15, RandS.UntenS);
    tf := TFont.Create;
    tf.Assign(Font);
    GetObject(tf.Handle, sizeof(lf), @lf);
    lf.lfEscapement  := 90*10;
    lf.lfOrientation := 90*10;
    tf.Handle := CreateFontIndirect(lf);
    Font.Assign(tf);
    tf.Free;
    TextOut(2, HKarte div 2 + 30,RandS.LinksS);
    Textout(LKarte-15,HKarte div 2 + 30, RandS.RechtsS);
  end;
  LRand  := Rand.Links;
  RRand  := Rand.Rechts;
  ORand  := Rand.Oben;
  URand  := Rand.Unten;
  XKarte := LKarte;
  YKarte := HKarte;
  with Rahmen do
  begin
    Top    := 0;
    Left   := 0;
    Bottom := HKarte;
    Right  := LKarte;
  end;
  if HolZwischen then
  begin
    ImageKarte.Canvas.CopyMode := cmSrcCopy;
    if ClipBoard.HasFormat(CF_Bitmap) then
    begin
      Bitmap := TBitmap.Create;
      try
        Bitmap.Assign(ClipBoard);
        ImageKarte.Canvas.Draw(0,0, Bitmap);
      finally
        Bitmap.free;
      end;
    end
    else MessageDlg(Tx(306), mtInformation,[mbOK],0);
    Holzwischen := false;
  end;
  MaskEditKarte.Text := CurrentFile;
  if HolPixS = 'BMP' then
  begin
    try
      FBild  := TBitmap.Create;
      Rahmen := Rect(0,0,LKarte,HKarte);
      FBild.LoadFromFile(CurrentFile);
      ImageKarte.Canvas.Stretchdraw(Rahmen,FBild);
    finally
      FBild.Free;
    end;
  end;
  if HolPixS = 'GIF' then
  begin
    try
      GBild  := TGifImage.Create;
      Rahmen := Rect(0,0,LKarte, HKarte);
      GBild.LoadFromFile(CurrentFile);
      ImageKarte.Canvas.Stretchdraw(Rahmen,GBild);
    finally
      GBild.Free;
    end;
  end;
  if HolPixS = 'TIF' then
  begin
    try
      FBild  := TBitmap.Create;
      Rahmen := Rect(0,0,LKarte,HKarte);
      LoadTiffFromFile(CurrentFile,FBild);
      ImageKarte.Canvas.Stretchdraw(Rahmen,FBild);
    finally
      FBild.Free;
    end;
  end;
  if HolPixS = 'JPG' then
  begin
    try
      JBild := TJpegImage.Create;
      FBild := TBitmap.Create;
      JBild.LoadFromFile(CurrentFile);
      FBild.Assign(JBild);
      Rahmen := Rect(0,0,LKarte, HKarte);
      ImageKarte.Canvas.Stretchdraw(Rahmen,FBild);
    finally
      FBild.Free;
      JBild.Free;
    end;
  end;
  if HolPixS = 'WMF' then
  begin
    try
      MetaFile := TMetaFile.Create;
      MetaFile.Enhanced := false;
      FBild := TBitmap.Create;
      MetaFile.LoadFromFile(CurrentFile);
      FBild.Width  := MetaFile.Width;
      FBild.Height := MetaFile.Height;
      FBild.Canvas.Draw(0,0,MetaFile);
      Rahmen := Rect(0,0,LKarte, HKarte);
      ImageKarte.Canvas.Stretchdraw(Rahmen,FBild);
    finally
      MetaFile.Free;
      FBild.Free;
    end;
  end;
  if HolPixS = 'EMF' then
  begin
    try
      MetaFile := TMetaFile.Create;
      MetaFile.Enhanced := true;
      FBild := TBitmap.Create;
      MetaFile.LoadFromFile(CurrentFile);
      Rahmen := Rect(0,0,LKarte,Hkarte);
      FBild.Width  := LKarte;
      FBild.Height := HKarte;
      FBild.Canvas.StretchDraw(Rahmen,MetaFile);
      ImageKarte.Canvas.Stretchdraw(Rahmen,FBild);
    finally
      MetaFile.Free;
      FBild.Free;
    end;
  end;
  HolPixS := '';
  Font.Color := DatenFarbe;
  ListBoxDaten.Visible  := true;
  LabelDaten.Visible    := true;
  ListBoxDaten.Clear;
  X := 0;
  Y := 0;
  for i := 1 to ZahlGlob do
  begin
    if (KoordinatenS = 'DMM') or (KoordinatenS = 'DMS') then
    begin
      if OstWestS = 'E' then
        X := round((LaengeFeld[i]-Rand.Links)*LFaktor);
      if OstWestS = 'W' then
        X := round((Rand.Links-LaengeFeld[i])*LFaktor);
      if NordSuedS = 'S' then
        Y := round((BreiteFeld[i]-Rand.Oben)*HFaktor);
      if NordSuedS = 'N' then
        Y := round((Rand.Oben-BreiteFeld[i])*HFaktor);
    end;
    if (KoordinatenS = 'Gauss') or (KoordinatenS = 'UTM') then
    begin
      X := round((LaengeFeld[i]-Rand.Links)*LFaktor);
      Y := round((Rand.Oben - BreiteFeld[i])*HFaktor);
    end;
    if not Nummer then
    begin
      if LPFeld[i] then
      begin
        PFeil (ImageKarte.Canvas,X, Y, i);
        LPS := 'L';
      end
      else
      begin
        Streichen (ImageKarte.Canvas, X, Y, i);
        LPS := 'P';
      end;
    end
    else PlotNummern (ImageKarte.Canvas, X, Y, i);
    AzimutS := RightS ('000'+IntToStr(AziFeld[i]),3);
    FalS    := RightS ('00'+IntToStr(FalFeld[i]),2);
    if (KoordinatenS = 'DMM') or (KoordinatenS = 'DMS') then
    begin
      GradMin (BreiteFeld[i], i, BGradS, BMinS);
      GradMin (LaengeFeld[i], i, LGradS, LMinS);
      ZeileS  := '  '+NordSuedS+BGradS+'°'+BMinS+'´'+'  '
                 +OstWestS+LGradS+'°'+LMinS+'´  '
                 +LPS+' '+AzimutS+'/'+FalS;
    end;
    if (KoordinatenS = 'Gauss') or (KoordinatenS = 'UTM') then
    begin
      LGradS := IntToStr(round(LaengeFeld[i]));
      BGradS := IntToStr(round(BreiteFeld[i]));
      if length (LGradS) = 6 then LGradS := '0'+LGradS;
      if length (BGradS) = 6 then BGradS := '0'+BGradS;
      ZeileS := '  '+RS+' '+LGradS+'     '+HS+' '+BGradS
              +'         '+LPS+' '+AzimutS+'/'+FalS;
    end;
    ListBoxDaten.Items.Add (ZeileS);
  end;
  if DemoB then
  begin
    with ImageKarte.Canvas do
    begin
      Font.Name   := 'Times New Roman';
      Brush.Color := clWhite;
      Font.Color  := clGray;
      Font.Size   := 36;
      Textout(Width div 2-300,Height div 2,'Demo-Version');
    end;
  end;
end;

procedure TForm81.ZeichenClick(Sender: TObject);
begin
  Nummer := false;
  ButtonStartClick(Sender);
end;

procedure TForm81.SpeedTektonikClick(Sender: TObject);
begin
  ZeichenClick(Sender);
end;

procedure TForm81.NumerierungClick(Sender: TObject);
begin
  Nummer := true;
  ButtonStartClick(Sender);
end;

procedure TForm81.ButtonBeendenClick(Sender: TObject);
begin
  AziFeld    := nil;
  FalFeld    := nil;
  BreiteFeld := nil;
  LaengeFeld := nil;
  LPFeld     := Nil;
  Form81.Close;
  if EingabeS = 'manuell' then Form80.Close;
  if EingabeS = 'Festplatte' then Form82.Close;
  if EingabeS = 'Karte' then Form83.Close;
  if EingabeS = 'ExcelD' then Form84.Close;
  Form79.Close;
  SetCurrentDir(DirectS);
end;

procedure TForm81.ButtonZurueckClick(Sender: TObject);
begin
  AziFeld    := nil;
  FalFeld    := nil;
  BreiteFeld := nil;
  LaengeFeld := nil;
  Form81.Close;
  if EingabeS = 'manuell' then Form80.Close;
  if EingabeS = 'Festplatte' then Form82.Close;
  if EingabeS = 'Karte' then Form83.Close;
  if EingabeS = 'ExcelD' then Form84.Close;
  SetCurrentDir(DirectS);
end;

procedure TForm81.SymbolFarbeClick(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  Farbe         := clWhite;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS := ColorToString (Farbe);
  DatenFarbe      := StringToColor(FarbeS);
  KonfigZeileS[7] := '  Colour of Data Points    :,'+FarbeS;
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick (Sender);
end;

procedure TForm81.SpeedFarbeClick(Sender: TObject);
begin
  SymbolFarbeClick(Sender);
end;

procedure TForm81.VerschiebenClick(Sender: TObject);
begin
  PanelKarte.Visible    := false;
  LabelKarte.Visible    := false;
  MaskEditKarte.Visible := false;
  PanelRaender.Visible  := true;
  ListBoxRechts.Visible := true;
  ListBoxLinks. Visible := true;
  ListBoxOben.Visible   := true;
  ListBoxUnten.Visible  := true;
  RadioAussen.Visible   := true;
  RadioInnen.Visible    := true;
  CheckBoxOK.State      := cbUnchecked;
end;

procedure TForm81.SpeedVerschiebenClick(Sender: TObject);
begin
  VerschiebenClick(Sender);
end;

procedure TForm81.RadioAussenClick(Sender: TObject);
begin
  ReinRaus := 1;
  Liste (ListBoxLinks);
  Liste (ListBoxRechts);
  Liste (ListBoxOben);
  Liste (ListBoxUnten);
  ListBoxRechts.Enabled := true;
  ListBoxOben.Enabled   := true;
  ListBoxLinks.Enabled  := true;
  ListBoxUnten.Enabled  := true;
  ButtonStartClick(Sender);
  RadioAussen.Checked := false;
end;

procedure TForm81.RadioInnenClick(Sender: TObject);
begin
  Reinraus := -1;
  Liste (ListBoxLinks);
  Liste (ListBoxRechts);
  Liste (ListBoxOben);
  Liste (ListBoxUnten);
  ListBoxRechts.Enabled := true;
  ListBoxOben.Enabled   := true;
  ListBoxLinks.Enabled  := true;
  ListBoxUnten.Enabled  := true;  
  ButtonStartClick(Sender);
  RadioInnen.Checked := false;
end;

procedure TForm81.CheckBoxOKClick(Sender: TObject);
begin
  PanelRaender.Visible  := false;
  ListBoxLinks.Visible  := false;
  ListBoxRechts.Visible := false;
  ListBoxOben.Visible   := false;
  ListBoxUnten.Visible  := false;
  PanelKarte.Visible    := true;
  LabelKarte.Visible    := true;
  MaskEditKarte.Visible := true;
end;

procedure TForm81.ListBoxLinksClick(Sender: TObject);
var
  i : byte;
begin
  for i := 0 to ListboxLinks.Items.Count-1 do
    if ListboxLinks.Selected[i] then
      Li := StrToInt(ListBoxLinks.Items.Strings[i]);
  ListBoxRechts.Enabled := false;
  ListBoxOben.Enabled := false;
  ListBoxUnten.Enabled := false;
end;

procedure TForm81.ListBoxRechtsClick(Sender: TObject);
var
  i : byte;
begin
  for i := 0 to ListboxRechts.Items.Count-1 do
    if ListboxRechts.Selected[i] then
      Re := StrToInt(ListBoxRechts.Items.Strings[i]);
  ListBoxLinks.Enabled := false;
  ListBoxOben.Enabled := false;
  ListBoxUnten.Enabled := false;
end;

procedure TForm81.ListBoxObenClick(Sender: TObject);
var
  i : byte;
begin
  for i := 0 to ListboxOben.Items.Count-1 do
    if ListboxOben.Selected[i] then
      Ob := StrToInt(ListBoxOben.Items.Strings[i]);
  ListBoxRechts.Enabled := false;
  ListBoxLinks.Enabled := false;
  ListBoxUnten.Enabled := false;
end;

procedure TForm81.ListBoxUntenClick(Sender: TObject);
var
  i : byte;
begin
  for i := 0 to ListboxUnten.Items.Count-1 do
    if ListboxUnten.Selected[i] then
      Un := StrToInt(ListBoxUnten.Items.Strings[i]);
  ListBoxRechts.Enabled := false;
  ListBoxOben.Enabled := false;
  ListBoxLinks.Enabled := false;
end;

procedure TForm81.AusschnittClick(Sender: TObject);
begin
  Ausschn := true;
  ImageKarte.Enabled := true;
end;

procedure TForm81.SpeedKausschneidenClick(Sender: TObject);
begin
  AusschnittClick(Sender);
end;

procedure TForm81.ImageKarteMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Ausschn = true then
  begin
    if ssLeft in shift then
    begin
      Maus    := true;
      Screen.Cursor := crCross;
      KartenBild := TBitmap.Create;
      KartenBild.Assign(ImageKarte.Picture);
      Xanfang := x;
      Yanfang := y;
      ImageKarte.Canvas.Moveto(Xanfang,Yanfang);
    end;
  end;
end;

procedure TForm81.ImageKarteMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  if Maus = true then
  begin
    if (x < LKarte) and (y < HKarte) then
    begin
      Xende := x;
      Yende := y;
      ImageKarte.Canvas.Draw(0,0,Kartenbild);
      with ImageKarte.Canvas do
      begin
        Pen.Color := clRed;
        Lineto(Xende,Yanfang);
        Lineto(X,Y);
        Lineto(Xanfang,Y);
        Lineto(Xanfang,Yanfang);
        Moveto(Xanfang, Yanfang);
      end;
    end
    else Screen.Cursor := crArrow;
  end;
end;

procedure TForm81.ImageKarteMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  Kl,Gl    : extended;
  Kb, Gb   : extended;
  NLaenge  : array of real;
  NBreite  : array of real;
  NAzimut  : array of word;
  NFall    : array of shortint;
  i, j     : word;

begin
  if not Maus then exit;
  setlength (NLaenge, MaxDaten);
  setlength (NBreite, MaxDaten);
  setlength (NAzimut, MaxDaten);
  Setlength (NFall,   MaxDaten);
  KartenBild.free;
  Maus    := false;
  Ausschn := false;
  Screen.Cursor := crArrow;
  ImageKarte.Canvas.Brush.Color := clWhite;
  ImageKarte.Canvas.FloodFill (Xende,Yende+1,clRed, fsBorder);
  if (KoordinatenS = 'DMM') or (KoordinatenS = 'DMS') then
  begin
    if OstWestS = 'E' then
    begin
      KL := round(Xanfang/LFaktor + LRand);
      GL := round(Xende/LFaktor + LRand);
    end;
    if OstWestS = 'W' then
    begin
      GL := round(LRand - Xanfang/LFaktor);
      KL := round(LRand - Xende/LFaktor);
    end;
    if NordSuedS = 'S' then
    begin
      KB := round(Yanfang/HFaktor + ORand);
      GB := round(Yende/HFaktor + ORand);
    end;
    if NordSuedS = 'N' then
    begin
      GB := round(ORand - YAnfang/HFaktor);
      KB := round(ORand - Yende/HFaktor);
    end;
  end;
  if (KoordinatenS = 'Gauss') or (KoordinatenS = 'UTM') then
  begin
    KL := round(Xanfang/LFaktor + LRand);
    GL := round(Xende/LFaktor + LRand);
    GB := round(ORand - YAnfang/HFaktor);
    KB := round(ORand - Yende/HFaktor);
  end;
  j := 0;
  for i := 1 to ZahlGlob do
  begin
    if (LaengeFeld[i] > KL) and (LaengeFeld[i] < GL)
    and (BreiteFeld[i] > KB) and (BreiteFeld[i] < GB) then
    begin
      inc(j);
      NLaenge[j] := LaengeFeld[i];
      NBreite[j] := BreiteFeld[i];
      NAzimut[j] := AziFeld[i];
      NFall[j]   := FalFeld[i];
    end;
    AziFeld[i]    := 0;
    FalFeld[i]    := 0;
    LaengeFeld[i] := 0;
    BreiteFeld[i] := 0;
  end;
  ZahlGlob := j;
  for i := 1 to ZahlGlob do
  begin
    AziFeld[i]    := NAzimut[i];
    FalFeld[i]    := NFall[i];
    LaengeFeld[i] := NLaenge[i];
    BreiteFeld[i] := NBreite[i];
  end;
  NLaenge := nil;
  NBreite := nil;
  NAzimut := nil;
  NFall   := nil;
  ButtonStartClick(Sender);
end;

procedure TForm81.VorgabeClick(Sender: TObject);
begin
  PanelKarte.Visible    := false;
  LabelKarte.Visible    := false;
  MaskEditKarte.Visible := false;
  FixKoor               := true;
  if (KoordinatenS = 'DMM') or (KoordinatenS = 'DMS') then
  begin
    PanelVorgabeGeo.Visible := true;
    MaskEditVorBreiteOGrad.SetFocus;
  end;
  if KoordinatenS = 'Gauss' then
  begin
    PanelGauss.Visible := true;
    MaskEditRL1.SetFocus;
  end;
  if KoordinatenS = 'UTM' then
  begin
    PanelUTMRand.Visible := true;
    MaskEditOstenL.Clear;
    MaskEditOstenR.Clear;
    MaskEditNordenO.Clear;
    MaskEditNordenU.Clear;
    MaskEditOstenL.SetFocus;
  end;
end;

procedure TForm81.SpeedRaenderClick(Sender: TObject);
begin
  VorgabeClick(Sender);
end;

procedure TForm81.MaskEditVorBreiteOGradKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = chr(13) then
  begin
    VorBrOGradS := MaskEditVorBreiteOGrad.Text;
    LeerLoeschen (VorBrOGradS);
    if VorBrOGradS = '' then exit;
    MaskEditVorBreiteOMin.SetFocus
  end;
end;

procedure TForm81.MaskEditVorBreiteOMinKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = chr(13) then
  begin
    VorBrOMinS := MaskEditVorBreiteOMin.Text;
    LeerLoeschen (VorBrOMinS);
    if VorBrOMinS = '' then exit;
    MaskEditVorBreiteUGrad.SetFocus
  end;
end;

procedure TForm81.MaskEditVorBreiteUGradKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = chr(13) then
  begin
    VorBrUGradS := MaskEditVorBreiteUGrad.Text;
    LeerLoeschen (VorBrUGradS);
    if VorBrUGradS = '' then exit;
    MaskEditVorBreiteUMin.SetFocus
  end;
end;

procedure TForm81.MaskEditVorBreiteUMinKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = chr(13) then
  begin
    VorBrUMinS := MaskEditVorBreiteUMin.Text;
    LeerLoeschen (VorBrUMinS);
    if VorBrUMinS = '' then exit;
    MaskEditVorLaengeLGrad.SetFocus
  end;
end;

procedure TForm81.MaskEditVorLaengeLGradKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = chr(13) then
  begin
    VorLaLGradS := MaskEditVorLaengeLGrad.Text;
    LeerLoeschen (VorLaLGradS);
    if VorLaLGradS = '' then exit;
    MaskEditVorLaengeLMin.SetFocus
  end;
end;

procedure TForm81.MaskEditVorLaengeLMinKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = chr(13) then
  begin
    VorLaLMinS := MaskEditVorLaengeLMin.Text;
    LeerLoeschen (VorLaLMinS);
    if VorLaLMinS = '' then exit;
    MaskEditVorLaengeRGrad.SetFocus
  end;
end;

procedure TForm81.MaskEditVorLaengeRGradKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = chr(13) then
  begin
    VorLaRGradS := MaskEditVorLaengeRGrad.Text;
    LeerLoeschen (VorLaRGradS);
    if VorLaRGradS = '' then exit;
    MaskEditVorLaengeRMin.SetFocus
  end;
end;

procedure TForm81.MaskEditVorLaengeRMinKeyPress(Sender: TObject;
  var Key: Char);
var
  KLfix, GLfix : word;
  KBfix, GBfix : word;
  J, i         : word;
  NLaenge  : array of real;
  NBreite  : array of real;
  NAzimut  : array of word;
  NFall    : array of shortint;
begin
  if key = chr(13) then
  begin
    setlength (NLaenge, MaxDaten);
    setlength (NBreite, MaxDaten);
    setlength (NAzimut, MaxDaten);
    setlength (NFall  , MaxDaten);
    VorLaRMinS := MaskEditVorLaengeRMin.Text;
    LeerLoeschen (VorLaRMinS);
    if VorLaRMinS = '' then exit;
    with Rand do
    begin
      Oben   := StrToInt(VorBrOGradS)*60 + StrToInt(VorBROMinS);
      Unten  := StrToInt(VorBrUGradS)*60 + StrToInt(VorBrUMinS);
      Links  := StrToInt(VorLaLGradS)*60 + StrToInt(VorLaLMinS);
      Rechts := StrToInt(VorLaRGradS)*60 + StrToInt(VorLaRMinS);
    end;
    if OstWestS = 'E' then
    begin
      KLfix := round(LRand);
      GLfix := round(RRand);
    end;
    if OstWestS = 'W' then
    begin
      GLfix := round(LRand);
      KLfix := round(RRand);
    end;
    if NordSuedS = 'S' then
    begin
      KBfix := round(ORand);
      GBfix := round(URand);
    end;
    if NordSuedS = 'N' then
    begin
      GBfix := round(ORand);
      KBfix := round(URand);
    end;
    j := 0;
    for i := 1 to ZahlGlob do
    begin
      if (LaengeFeld[i] > KLfix) and (LaengeFeld[i] < GLfix)
      and (BreiteFeld[i] > KBfix) and (BreiteFeld[i] < GBfix) then
      begin
        inc(j);
        NLaenge[j] := LaengeFeld[i];
        NBreite[j] := BreiteFeld[i];
        NAzimut[j] := AziFeld[i];
        NFall[j]   := FalFeld[i];
      end;
      AziFeld[i]    := 0;
      FalFeld[i]    := 0;
      LaengeFeld[i] := 0;
      BreiteFeld[i] := 0;
    end;
    ZahlGlob := j;
    for i := 1 to ZahlGlob do
    begin
      AziFeld[i]    := NAzimut[i];
      FalFeld[i]    := NFall[i];
      LaengeFeld[i] := NLaenge[i];
      BreiteFeld[i] := NBreite[i];
    end;
    NLaenge := nil;
    NBreite := nil;
    NAzimut := nil;
    NFall   := nil;
    PanelVorgabeGeo.Visible := false;
    PanelKarte.Visible    := true;
    LabelKarte.Visible    := true;
    MaskEditKarte.Visible := true;
    ButtonStartClick(Sender);
  end;
end;

procedure TForm81.MaskEditRL1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(13) then
  begin
    RL1S := MaskEditRL1.Text;
    LeerLoeschen (RL1S);
    if RL1S = '' then exit
    else
    begin
      MaskEditRL2.SetFocus
    end;
  end;
end;

procedure TForm81.MaskEditRL2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(13) then
  begin
    RL2S := MaskEditRL2.Text;
    LeerLoeschen (RL2S);
    if RL2S = '' then exit
    else
    begin
      MaskEditRL3.SetFocus
    end;
  end;
end;

procedure TForm81.MaskEditRL3KeyPress(Sender: TObject; var Key: Char);
var
  RL3S : string;
begin
  if key = chr(13) then
  begin
    RL3S := MaskEditRL3.Text;
    LeerLoeschen (RL3S);
    if RL3S = '' then exit
    else
    begin
      GLRechtsS := RL1S+RL2S+RL3S;
      MaskEditRR1.SetFocus;
    end;
  end;
end;

procedure TForm81.MaskEditRR1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(13) then
  begin
    RR1S := MaskEditRR1.Text;
    LeerLoeschen (RR1S);
    if RR1S = '' then exit
    else
    begin
      MaskEditRR2.SetFocus
    end;
  end;
end;

procedure TForm81.MaskEditRR2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(13) then
  begin
    RR2S := MaskEditRR2.Text;
    LeerLoeschen (RR2S);
    if RR2S = '' then exit
    else
    begin
      MaskEditRR3.SetFocus
    end;
  end;
end;

procedure TForm81.MaskEditRR3KeyPress(Sender: TObject; var Key: Char);
var
  RR3S : string;
begin
  if key = chr(13) then
  begin
    RR3S := MaskEditRR3.Text;
    LeerLoeschen (RR3S);
    if RR3S = '' then exit
    else
    begin
      GRRechtsS := RR1S+RR2S+RR3S;
      MaskEditOH1.SetFocus;
    end;
  end;
end;

procedure TForm81.MaskEditOH1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(13) then
  begin
    OH1S := MaskEditOH1.Text;
    LeerLoeschen (OH1S);
    if OH1S = '' then exit
    else
    begin
      MaskEditOH2.SetFocus
    end;
  end;
end;

procedure TForm81.MaskEditOH2KeyPress(Sender: TObject; var Key: Char);
begin
 if key = chr(13) then
  begin
    OH2S := MaskEditOH2.Text;
    LeerLoeschen (OH2S);
    if OH2S = '' then exit
    else
    begin
      MaskEditOH3.SetFocus
    end;
  end;
end;

procedure TForm81.MaskEditOH3KeyPress(Sender: TObject; var Key: Char);
var
  OH3S : string;
begin
  if key = chr(13) then
  begin
    OH3S := MaskEditOH3.Text;
    LeerLoeschen (OH3S);
    if OH3S = '' then exit
    else
    begin
      GOHochS := OH1S+OH2S+OH3S;
      MaskEditUH1.SetFocus;
    end;
  end;
end;

procedure TForm81.MaskEditUH1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(13) then
  begin
    UH1S := MaskEditUH1.Text;
    LeerLoeschen (UH1S);
    if UH1S = '' then exit
    else
    begin
      MaskEditUH2.SetFocus
    end;
  end;
end;

procedure TForm81.MaskEditUH2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(13) then
  begin
    UH2S := MaskEditUH2.Text;
    LeerLoeschen (UH2S);
    if UH2S = '' then exit
    else
    begin
      MaskEditUH3.SetFocus
    end;
  end;
end;

procedure TForm81.MaskEditUH3KeyPress(Sender: TObject; var Key: Char);
var
  UH3S    : string;
  J, i    : word;
  NLaenge : array of real;
  NBreite : array of real;
  NAzimut : array of word;
  NFall   : array of shortint;
begin
  if key = chr(13) then
  begin
    setlength (NLaenge, MaxDaten);
    setlength (NBreite, MaxDaten);
    setlength (NAzimut, MaxDaten);
    setlength (NFall  , MaxDaten);
    UH3S := MaskEditUH3.Text;
    LeerLoeschen (UH3S);
    if UH3S = '' then exit;
    GUHochS := UH1S + UH2S + UH3S;
    with Rand do
    begin
      Oben   := StrToInt(GOHochS);
      Unten  := StrToInt(GUHochS);
      Links  := StrToInt(GLRechtsS);
      Rechts := StrToInt(GRRechtsS);
      j := 0;
      for i := 1 to ZahlGlob do
      begin
        if (LaengeFeld[i] > Links) and (LaengeFeld[i] < Rechts)
        and (BreiteFeld[i] > Unten) and (BreiteFeld[i] < Oben) then
        begin
          inc(j);
          NLaenge[j] := LaengeFeld[i];
          NBreite[j] := BreiteFeld[i];
          NAzimut[j] := AziFeld[i];
          NFall[j]   := FalFeld[i];
        end;
        AziFeld[i]    := 0;
        FalFeld[i]    := 0;
        LaengeFeld[i] := 0;
        BreiteFeld[i] := 0;
      end;
    end;
    ZahlGlob := j;
    for i := 1 to ZahlGlob do
    begin
      AziFeld[i]    := NAzimut[i];
      FalFeld[i]    := NFall[i];
      LaengeFeld[i] := NLaenge[i];
      BreiteFeld[i] := NBreite[i];
    end;
    NLaenge := nil;
    NBreite := nil;
    NAzimut := nil;
    NFall   := nil;
    PanelGauss.Visible    := false;
    PanelKarte.Visible    := true;
    LabelKarte.Visible    := true;
    MaskEditKarte.Visible := true;
    ButtonStartClick(Sender);
  end;
end;

procedure TForm81.MaskEditOstenLKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(13) then
  begin
    OLS := MaskEditOstenL.Text;
    LeerLoeschen (OLS);
    if OLS = '' then exit
    else
    begin
      MaskEditOstenR.SetFocus
    end;
  end;
end;

procedure TForm81.MaskEditOstenRKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(13) then
  begin
    ORS := MaskEditOstenR.Text;
    LeerLoeschen (ORS);
    if ORS = '' then exit
    else
    begin
      MaskEditNordenO.SetFocus
    end;
  end;
end;

procedure TForm81.MaskEditNordenOKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(13) then
  begin
    NOS := MaskEditNordenO.Text;
    LeerLoeschen (NOS);
    if NOS = '' then exit
    else
    begin
      MaskEditNordenU.SetFocus
    end;
  end;
end;

procedure TForm81.MaskEditNordenUKeyPress(Sender: TObject; var Key: Char);
var
  NUS    : string;
  J, i    : word;
  NLaenge : array of real;
  NBreite : array of real;
  NAzimut : array of word;
  NFall   : array of shortint;
begin
  if key = chr(13) then
  begin
    setlength (NLaenge, MaxDaten);
    setlength (NBreite, MaxDaten);
    setlength (NAzimut, MaxDaten);
    setlength (NFall  , MaxDaten);
    NUS := MaskEditNordenU.Text;
    LeerLoeschen (NUS);
    if NUS = '' then exit;
    with Rand do
    begin
      Oben   := StrToInt(NOS);
      Unten  := StrToInt(NUS);
      Links  := StrToInt(OLS);
      Rechts := StrToInt(ORS);
      j := 0;
      for i := 1 to ZahlGlob do
      begin
        if (LaengeFeld[i] > Links) and (LaengeFeld[i] < Rechts)
        and (BreiteFeld[i] > Unten) and (BreiteFeld[i] < Oben) then
        begin
          inc(j);
          NLaenge[j] := LaengeFeld[i];
          NBreite[j] := BreiteFeld[i];
          NAzimut[j] := AziFeld[i];
          NFall[j]   := FalFeld[i];
        end;
        AziFeld[i]    := 0;
        FalFeld[i]    := 0;
        LaengeFeld[i] := 0;
        BreiteFeld[i] := 0;
      end;
    end;
    ZahlGlob := j;
    for i := 1 to ZahlGlob do
    begin
      AziFeld[i]    := NAzimut[i];
      FalFeld[i]    := NFall[i];
      LaengeFeld[i] := NLaenge[i];
      BreiteFeld[i] := NBreite[i];
    end;
    NLaenge := nil;
    NBreite := nil;
    NAzimut := nil;
    NFall   := nil;
    PanelUTMRand.Visible := false;
    PanelKarte.Visible   := true;
    ButtonStartClick(Sender);
  end;
end;

procedure TForm81.LaengeSymbClick(Sender: TObject);
begin
  ListBoxLaenge.Visible := true;
  LabelLaenge.Visible   := true;
  LabelPixel.Visible    := true;
end;

procedure TForm81.SpeedLaengeClick(Sender: TObject);
begin
  LaengeSymbClick(Sender);
end;

procedure TForm81.ListBoxLaengeClick(Sender: TObject);
var
  i        : byte;
  SLaengeS : string[3];
  Datei    : TextFile;
begin
  for i := 0 to ListboxLaenge.Items.Count-1 do
  begin
    if ListboxLaenge.Selected[i] then
      SLaenge := StrToInt(ListBoxLaenge.Items.Strings[i]);
  end;
  SLaengeS := IntToStr(SLaenge);
  KonfigZeileS[107] := 'Length of symbols (map)   :,'+SLaengeS;
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ListBoxLaenge.Visible := false;
  LabelLaenge.Visible   := false;
  LabelPixel.Visible    := false;
  ButtonStartClick(Sender);
end;

procedure TForm81.StrichStaerkeClick(Sender: TObject);
begin
  ListboxStrich.Visible := true;
  LabelStrich.Visible   := true;
end;

procedure TForm81.SpeedStrichClick(Sender: TObject);
begin
  StrichStaerkeClick(Sender);
end;

procedure TForm81.ListBoxStrichClick(Sender: TObject);
var
  i       : byte;
  StrichS : string[3];
  Datei   : TextFile;
begin
  for i := 0 to ListboxStrich.Items.Count-1 do
  begin
    if ListboxStrich.Selected[i] then
      Strich := StrToInt(ListBoxStrich.Items.Strings[i]);
  end;
  StrichS := IntToStr(Strich);
  KonfigZeileS[99] := 'Pen width (in pixel)      :,'+StrichS;
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ListBoxStrich.Visible := false;
  LabelStrich.Visible   := false;
  ButtonStartClick(Sender);
end;

procedure TForm81.BGroesseClick(Sender: TObject);
begin
  PanelGroesse.Visible := true;
  CheckBoxBild.State   := cbUnchecked;
  MaskEditBBreite.Text := IntTostr(BBreiteSt);
  MaskEditBHoehe.Text  := IntToStr(BHoeheSt);
end;

procedure TForm81.SpeedBGroesseClick(Sender: TObject);
begin
  BGroesseClick(Sender);
end;

procedure TForm81.MaskEditBBreiteKeyPress(Sender: TObject; var Key: Char);
var
  BBreiteS : string;
  Datei    : TextFile;
  i        : byte;
begin
  if Key = chr(13) then
  begin
    BBreiteS := MaskEditBBreite.Text;
    LeerLoeschen (BBreiteS);
    if BBreiteS = '' then exit
    else
    begin
      BBreiteSt := StrToInt (BBreiteS);
      BHoeheSt  := round(BBreiteSt/Ratio);
      KonfigZeileS[118] := 'Save Image Width (Stereo)  :,'+BBreiteS;
      MaskEditBHoehe.Text := IntToStr(BHoeheSt);
      assignFile(Datei,DirectS+'\'+'Fabric.ini');
      rewrite (Datei);
      for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
      closefile (Datei);
    end;
  end;
end;

procedure TForm81.MaskEditBHoeheKeyPress(Sender: TObject; var Key: Char);
var
  BHoeheS : string;
  Datei   : TextFile;
  i       : byte;
begin
  if Key = chr(13) then
  begin
    BHoeheS := MaskEditBHoehe.Text;
    LeerLoeschen (BHoeheS);
    if BHoeheS = '' then exit
    else
    begin
      BHoeheSt  := StrToInt (BHoeheS);
      BBreiteSt := round(BHoeheSt*Ratio);
      KonfigZeileS[118] := 'Save Image Width (Stereo)  :,'+IntToStr(BBreiteSt);
      MaskEditBBreite.Text := IntToStr(BBreiteSt);
    end;
    assignFile(Datei,DirectS+'\'+'Fabric.ini');
    rewrite (Datei);
    for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
    closefile (Datei);
  end;
end;

procedure TForm81.CheckBoxBildClick(Sender: TObject);
begin
  PanelGroesse.Visible := false;
end;

procedure TForm81.holenBMPClick(Sender: TObject);
begin
  OpenDialog1.DefaultExt := 'Windows bitmap (*.bmp)|*.bmp';
  OpenDialog1.Filter     := 'Windows bitmap (*.bmp)|*.bmp';
  if OpenPictureDialog1.Execute then CurrentFile := OpenPictureDialog1.FileName
  else exit;
  HolPixS := 'BMP';
  ButtonStartClick(Sender);
end;

procedure TForm81.SpeedHolBMPClick(Sender: TObject);
begin
  holenBMPClick(Sender);
end;

procedure TForm81.holenGIFClick(Sender: TObject);
begin
  OpenDialog1.DefaultExt := 'Compuserve Gif file (*.gif)|*.gif';
  OpenDialog1.Filter     := 'Compuserve Gif file (*.gif)|*.gif';
  if OpenDialog1.Execute then CurrentFile := OpenDialog1.FileName
  else exit;
  HolPixS := 'GIF';
  ButtonStartClick(Sender);
end;

procedure TForm81.SpeedHolGIFClick(Sender: TObject);
begin
  holenGIFClick(Sender);
end;

procedure TForm81.holenTIFClick(Sender: TObject);
begin
  OpenPictureDialog1.DefaultExt := 'Tagged image file format (*.tif)|*.tif';
  OpenPictureDialog1.Filter     := 'Tagged image file format (*.tif)|*.tif';
  if OpenPictureDialog1.Execute then CurrentFile := OpenPictureDialog1.FileName
  else exit;
  HolPixS := 'TIF';
  ButtonStartClick(Sender);
end;

procedure TForm81.SpeedHolTIFClick(Sender: TObject);
begin
  holenTiFClick(Sender);
end;

procedure TForm81.Jpeg1Click(Sender: TObject);
begin
  OpenPictureDialog1.DefaultExt := 'Jpeg file (*.jpg)|*.jpg';
  OpenPictureDialog1.Filter     := 'Jpeg file (*.jpg)|*.jpg';
  if OpenPictureDialog1.Execute then CurrentFile := OpenPictureDialog1.FileName
  else exit;
  HolPixS := 'JPG';
  ButtonStartClick(Sender);
end;

procedure TForm81.SpeedHolJPGClick(Sender: TObject);
begin
  Jpeg1Click(Sender);
end;

procedure TForm81.holenWMFClick(Sender: TObject);
begin
  OpenDialog1.DefaultExt := 'Windows metafile (*.WMF)|*.wmf';
  OpenDialog1.Filter     := 'Windows metafile (*.WMF)|*.wmf';
  if OpenDialog1.Execute then CurrentFile := OpenDialog1.FileName
  else exit;
  HolPixS := 'WMF';
  ButtonStartClick(Sender);
end;

procedure TForm81.SpeedHolWMFClick(Sender: TObject);
begin
  holenWMFClick(Sender);
end;

procedure TForm81.holenEMFClick(Sender: TObject);
begin
  OpenDialog1.DefaultExt := 'Enhanced windows metafile (*.EMF)|*.emf';
  OpenDialog1.Filter     := 'Enhanced windows metafile (*.EMF)|*.emf';
  if OpenDialog1.Execute then CurrentFile := OpenDialog1.FileName
  else exit;
  HolPixS := 'EMF';
  ButtonStartClick(Sender);
end;

procedure TForm81.SpeedHolEMFClick(Sender: TObject);
begin
  holenEMFClick(Sender);
end;

procedure TForm81.BildausZwischenClick(Sender: TObject);
begin
  HolZwischen := true;
  ButtonStartClick(Sender);
end;

procedure TForm81.SpeedausZwischenClick(Sender: TObject);
begin
  BildausZwischenClick(Sender);
end;


procedure TForm81.kopierenClick(Sender: TObject);
begin
  ClipBoard.Assign (ImageKarte.Picture);
end;

procedure TForm81.SpeedkopierenClick(Sender: TObject);
begin
  kopierenClick(Sender);
end;

procedure TForm81.speichernBMPClick(Sender: TObject);
var
  Rahmen : TRect;
  Bitmap : TBitmap;
begin
  Bitmap        := TBitmap.Create;
  Bitmap.Width  := BBreiteSt;
  Bitmap.Height := BHoeheSt;
  Rahmen        := Rect(0,0,Bitmap.Width,Bitmap.Height);
  Bitmap.Canvas.Stretchdraw(Rahmen,ImageKarte.Picture.Graphic);
  try
    if (CurrentFile <> '') and (UCaseS(RightS(CurrentFile,3)) = 'BMP')
    then Bitmap.SaveToFile(CurrentFile)
    else speichernUBMPClick(Sender);
  finally
    Bitmap.Free;
    Bitmap   := nil;
  end;
end;

procedure TForm81.SpeedBMP1Click(Sender: TObject);
begin
  speichernBMPClick(Sender);
end;

procedure TForm81.speichernGIFClick(Sender: TObject);
var
  Bitmap  : TBitmap;
  GifBild : TGifImage;
  Rahmen  : TRect;
begin
  Bitmap        := TBitmap.Create;
  GifBild       := TGIFImage.Create;
  Bitmap.Width  := BBreiteSt;
  Bitmap.Height := BHoeheSt;
  Rahmen        := Rect(0,0,Bitmap.Width,Bitmap.Height);
  Bitmap.Canvas.Stretchdraw(Rahmen,ImageKarte.Picture.Graphic);
  try
    GifBild.Assign(Bitmap);
    if (CurrentFile <> '') and (UCaseS(RightS(CurrentFile,3)) = 'GIF')
    then GifBild.SaveToFile(CurrentFile)
    else speichernUGIFClick(Sender);
  finally
    Bitmap.Free;
    GifBild.Free;
  end;
end;

procedure TForm81.SpeedGIFClick(Sender: TObject);
begin
  speichernGIFClick(Sender);
end;

procedure TForm81.speichernTIFClick(Sender: TObject);
var
  Rahmen : TRect;
  Bitmap : TBitmap;
begin
  Bitmap        := TBitmap.Create;
  Bitmap.Width  := BBreiteSt;
  Bitmap.Height := BHoeheSt;
  Rahmen        := Rect(0,0,Bitmap.Width,Bitmap.Height);
  Bitmap.Canvas.Stretchdraw(Rahmen,ImageKarte.Picture.Graphic);
  try
    if (CurrentFile <> '') and (UCaseS(RightS(CurrentFile,3)) = 'TIF')
    then WriteTiffToFile(CurrentFile,Bitmap)
    else speichernUTIFClick(Sender);
  finally
    Bitmap.Free;
    Bitmap := nil;
  end;
end;

procedure TForm81.SpeedTIFClick(Sender: TObject);
begin
  speichernTIFClick(Sender);
end;

procedure TForm81.speichernJPGClick(Sender: TObject);
var
  DateiJ   : string;
  Rahmen   : TRect;
  Bild     : TBitmap;
  JpgDatei : TjpegImage;
begin
  JpgDatei    := TJpegImage.Create;
  Bild        := TBitmap.Create;
  Bild.Width  := BBreiteSt;
  Bild.Height := BHoeheSt;
  Rahmen      := Rect(0,0,Bild.Width,Bild.Height);
  Bild.Canvas.Stretchdraw(Rahmen,ImageKarte.Picture.Graphic);
  try
    with JpgDatei do
    begin
      Assign(Bild);
      if (CurrentFile <> '') and (UCaseS(RightS(Currentfile,3)) = 'JPG') then
      begin
        DateiJ := CurrentFile;
        delete(DateiJ,length(DateiJ)-2,3);
        DateiJ := DateiJ+'JPG';
        SaveToFile(DateiJ);
      end
      else SpeichernUJPGClick(Sender);
    end;
  finally
    JpgDatei.Free;
    Bild.Free;
    Bild        := nil;
    JpgDatei    := nil;
    CurrentFile := '';
  end;
end;

procedure TForm81.SpeedJPGClick(Sender: TObject);
begin
  speichernJPGClick(Sender);
end;

procedure TForm81.speichernWMFClick(Sender: TObject);
var
  Metafile   : TMetafile;
  MetaCanvas : TMetafileCanvas;
  Bitmap     : TBitmap;
  Rahmen     : TRect;
begin
  Metafile := TMetaFile.Create;
  MetaFile.Enhanced := false;
  try
    Bitmap := TBitmap.Create;
    Bitmap.Width  := BBreiteSt;
    Bitmap.Height := BHoeheSt;
    Rahmen        := Rect(0,0,Bitmap.Width,Bitmap.Height);
    Bitmap.Canvas.Stretchdraw(Rahmen,ImageKarte.Picture.Graphic);
    try
      Bitmap.Assign(ImageKarte.Picture);
      Metafile.Height := Bitmap.Height;
      Metafile.Width  := Bitmap.Width;
      MetaCanvas := TMetafileCanvas.Create(Metafile, 0);
      try
        MetaCanvas.Draw(0, 0, Bitmap);
      finally
        MetaCanvas.Free;
      end;
    finally
      Bitmap.Free;
    end;
    if (CurrentFile <> '') and (UCaseS(RightS(CurrentFile,3)) = 'WMF')
    then MetaFile.SaveToFile(CurrentFile)
    else SpeichernUWMFClick(Sender);
  finally
    Metafile.Free;
  end;
end;

procedure TForm81.SpeedWMFClick(Sender: TObject);
begin
  speichernWMFClick(Sender);
end;

procedure TForm81.speichernEMFClick(Sender: TObject);
var
  Metafile   : TMetafile;
  MetaCanvas : TMetafileCanvas;
  Bitmap     : TBitmap;
begin
  Metafile := TMetaFile.Create;
  MetaFile.Enhanced := true;
  try
    Bitmap := TBitmap.Create;
    try
      Bitmap.Assign(ImageKarte.Picture);
      Metafile.Height := BHoeheSt;
      Metafile.Width  := BBreiteSt;
      MetaCanvas := TMetafileCanvas.Create(Metafile, 0);
      try
        MetaCanvas.Draw(0, 0, Bitmap);
      finally
        MetaCanvas.Free;
      end;
    finally
      Bitmap.Free;
    end;
    if (CurrentFile <> '') and (UCaseS(RightS(CurrentFile,3)) = 'EMF')
    then MetaFile.SaveToFile(CurrentFile)
    else SpeichernUEMFClick(Sender);
  finally
    Metafile.Free;
  end;
end;

procedure TForm81.SpeedEMFClick(Sender: TObject);
begin
  speichernEMFClick(Sender);
end;

procedure TForm81.speichernUBMPClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := GraphicExtension(TBitmap);
  SaveDialog1.Filter     := GraphicFilter(TBitmap);
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    SpeichernBMPClick(Sender);
  end;
end;

procedure TForm81.speichernUGIFClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := GraphicExtension(TGIFImage);
  SaveDialog1.Filter     := GraphicFilter(TGIFImage);
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    SpeichernGIFClick(Sender);
  end;
end;

procedure TForm81.speichernUTIFClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := 'Tagged image file format (*.tif)|*.tif';
  SaveDialog1.Filter     := 'Tagged image file format (*.tif)|*.tif';;
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    SpeichernTIFClick(Sender);
  end;
end;

procedure TForm81.speichernUJPGClick(Sender: TObject);
begin
  SavePictureDialog1.DefaultExt := GraphicExtension(TJpegImage);
  SavePictureDialog1.Filter     := GraphicFilter(TJpegImage);
  if SavePictureDialog1.Execute then
  begin
    CurrentFile := SavePictureDialog1.Filename;
    SpeichernJPGClick(Sender);
  end;
end;

procedure TForm81.speichernUWMFClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := 'Windows metafile (*.WMF)|*.wmf';
  SaveDialog1.Filter     := 'Windows metafile (*.WMF)|*.wmf';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    speichernWMFClick(Sender);
  end;
end;

procedure TForm81.speichernUEMFClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := 'Enhanced windows metafile (*.EMF)|*.emf';
  SaveDialog1.Filter     := 'Enhanced windows metafile (*.EMF)|*.emf';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    speichernEMFClick(Sender);
  end;
end;

procedure TForm81.FarbeKarteClick(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  Farbe := clWhite;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS     := ColorToString (Farbe);
  DiagrFarbe := StringToColor(FarbeS);
  KonfigZeileS[6] := '  Diagram Colour           :,'+FarbeS;
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick (Sender);
end;

procedure TForm81.SpeedKFarbeClick(Sender: TObject);
begin
  FarbeKarteClick(Sender);
end;

procedure TForm81.einrichtenClick(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TForm81.SpeedEinrichtenClick(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TForm81.druckenClick(Sender: TObject);
var
  SchriftS : string[5];
  i        : byte;
begin
  Paneldrucken.Visible := true;
  RadioButtonlinks.Visible     := true;
  RadioButtonzentriert.Visible := true;
  RadioButtonrechts.Visible    := true;
  RadioGroup.Visible           := true;
  MaskEditRdrucken.EditMask := '999;0; ';
  MaskEditXdrucken.EditMask := '999;0; ';
  MaskEditYdrucken.EditMask := '999;0; ';
  YDruckFaktor              := 1;
  GroupBoxdrucken.Caption   := Tx(880);
  LabelMitte.Caption           := Tx(1274);
  LabelXdrucken.Caption        := Tx(885);
  LabelYdrucken.Caption        := Tx(886);
  ButtonDrucken.Caption        := Tx(881);
  ButtonAbbrechen.Caption      := Tx(882);
  LabelUnterschrift.Caption    := Tx(887);
  LabelSchrift.Caption         := Tx(888);
  RadioButtonLinks.Caption     := Tx(889);
  RadioButtonZentriert.Caption := Tx(890);
  RadioButtonRechts.Caption    := Tx(891);
  ButtonDrucken.Enabled        := false;
  for i := 1 to 3 do Gedrueckt[i] := false;
  i := 3;
  repeat
    i := i + 1;
    str(i, SchriftS);
    ListBoxSchrift.Items.Add (SchriftS);
  until i = 40;
  MaskEditRdrucken.SetFocus;
end;

procedure TForm81.SpeedDruckerClick(Sender: TObject);
begin
  druckenClick(Sender);
end;

procedure TForm81.MaskEditRdruckenKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(13) then
  begin
    RadiusS := MaskEditRdrucken.Text;
    LeerLoeschen (RadiusS);
    if RadiusS = '' then exit;
    MaskEditXdrucken.SetFocus
  end;
end;

procedure TForm81.MaskEditXdruckenKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(13) then
  begin
    XKoordS := MaskEditXdrucken.Text;
    LeerLoeschen (XKoordS);
    if XKoordS = '' then exit;
    MaskEditYdrucken.SetFocus
  end;
end;

procedure TForm81.MaskEditYdruckenKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(13) then
  begin
    YKoordS := MaskEditYdrucken.Text;
    LeerLoeschen (YKoordS);
    if YKoordS = '' then exit;
    MaskEditUnterschrift.SetFocus
  end;
end;

procedure TForm81.RadioButtonrechtsClick(Sender: TObject);
begin
  BuendigS := 'Rechts';
  Gedrueckt[3] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3] then
    ButtonDrucken.Enabled := true;
end;

procedure TForm81.RadioButtonzentriertClick(Sender: TObject);
begin
  BuendigS := 'Zentriert';
  Gedrueckt[3] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3] then
    ButtonDrucken.Enabled := true;
end;

procedure TForm81.RadioButtonlinksClick(Sender: TObject);
begin
  BuendigS := 'Links';
  Gedrueckt[3] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3] then
    ButtonDrucken.Enabled := true;
end;

procedure TForm81.MaskEditUnterschriftKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = chr(13) then
  begin
    TextS := MaskEditUnterschrift.Text;
    Gedrueckt[1] := true;
    if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3] then
       ButtonDrucken.Enabled := true;
  end;
end;

procedure TForm81.ListBoxSchriftClick(Sender: TObject);
var
  i        : byte;
  SchriftS : string[2];
begin
  for i := 1 to ListboxSchrift.Items.Count-1 do
  begin
    if ListboxSchrift.Selected[i] then SchriftS := ListBoxSchrift.Items.Strings[i];
  end;
  Schrift := StrToInt(SchriftS);
  Gedrueckt[2] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3] then
    ButtonDrucken.Enabled := true;
end;

procedure TForm81.ButtonDruckenClick(Sender: TObject);
var
  Bitmap  : TBitmap;
  Fenster : TRect;
  i : byte;
begin
  Paneldrucken.Visible         := false;
  RadioButtonlinks.Visible     := false;
  RadioButtonzentriert.Visible := false;
  RadioButtonrechts.Visible    := false;
  RadioGroup.Visible           := false;
  Bitmap:=TBitmap.Create;
  try
    Bitmap.Assign(ImageKarte.picture.graphic);
    with Printer do
    begin
      BeginDoc;
      DruckBitmap (Printer.Canvas, Fenster, RadiusS,
                   XKoordS, YKoordS, TextS, Schrift,
                   BuendigS, Bitmap);
      EndDoc;
    end;
  finally
    Bitmap.free;
  end;
  ButtonDrucken.Enabled := false;
  for i := 1 to 3 do Gedrueckt[i] := false;
end;

procedure TForm81.ButtonAbbrechenClick(Sender: TObject);
begin
  Paneldrucken.Visible         := false;
  RadioButtonlinks.Visible     := false;
  RadioButtonzentriert.Visible := false;
  RadioButtonrechts.Visible    := false;
  RadioGroup.Visible           := false;
end;

procedure TForm81.DspeichernClick(Sender: TObject);
begin
  if CurrentFile <> '' then KarteSpeichern(CurrentFile)
  else DspeichernUnterClick(Sender);
end;

procedure TForm81.DspeichernUnterClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := 'map';
  SaveDialog1.Filter     := 'map';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    KarteSpeichern (CurrentFile);
  end;
  if CurrentFile <> '' then KarteSpeichern(CurrentFile)
  else DspeichernUnterClick(Sender);
end;

procedure TForm81.SpeedDspeichernClick(Sender: TObject);
begin
  DspeichernUnterClick(Sender);
end;

procedure TForm81.HilfeClick(Sender: TObject);
var
  DateiS      : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\date7hym.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\Map-plot.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm81.SpeedHilfeClick(Sender: TObject);
begin
  HilfeClick(Sender);
end;

procedure TForm81.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Eintragen_in_Karte.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'Plot_Data_into_map.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm81.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm81.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm81.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

end.
