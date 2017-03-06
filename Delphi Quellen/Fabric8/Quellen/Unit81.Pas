unit Unit81;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, ExtCtrls, Globvar, StdCtrls, Texte,
  ComCtrls, Karte, Menus, Buttons, Basic, Clipbrd,
  ExtDlgs, Mask, Printers, Drucken, Einausga, Shellapi,
  Jpeg, Standard, QuickRpt, GifImage, Bmp2Tiff, ReadTiff,
  ehsHelpRouter, PNGimage, Grafik, Plotten;

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
    OpenDialog1: TOpenPictureDialog;
    Drucker: TMenuItem;
    einrichten: TMenuItem;
    drucken: TMenuItem;
    Paneldrucken: TPanel;
    GroupBoxdrucken: TGroupBox;
    Panel7: TPanel;
    LabelBLaenge: TLabel;
    MaskEditLaenge: TMaskEdit;
    Panel8: TPanel;
    LabelEcke: TLabel;
    LabelXdrucken: TLabel;
    LabelYdrucken: TLabel;
    MaskEditLinks: TMaskEdit;
    MaskEditOben: TMaskEdit;
    Panel11: TPanel;
    LabelUnterschrift: TLabel;
    LabelSchrift: TLabel;
    MaskEditUnterschrift: TMaskEdit;
    ListBoxSchrift: TListBox;
    PrinterSetupDialog1: TPrinterSetupDialog;
    RadioGroup: TRadioGroup;
    RadioLinks: TRadioButton;
    RadioZentriert: TRadioButton;
    RadioRechts: TRadioButton;
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
    PanelAnzahl: TPanel;
    LabelZahl: TLabel;
    LabelAnzahl: TLabel;
    SpeedHilfe: TSpeedButton;
    ListBoxStrich: TListBox;
    PanelKoor: TPanel;
    LabelKoor: TLabel;
    KartenRand: TMenuItem;
    PanelRaender: TPanel;
    LabelRaender: TLabel;
    LabelLinks: TLabel;
    LabelRechts: TLabel;
    LabelOben: TLabel;
    LabelUnten: TLabel;
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
    SpeedBGroesse: TSpeedButton;
    SpeedBMP: TSpeedButton;
    Handbuch: TMenuItem;
    OpenPictureDialog1: TOpenPictureDialog;
    ButtonDrucken: TButton;
    ButtonAbbrechen: TButton;
    SpeedSpeichern: TSpeedButton;
    FontDialog1: TFontDialog;
    Font: TMenuItem;
    SpeedFont: TSpeedButton;
    SaveDialog2: TSaveDialog;
    SavePictureDialog1: TSavePictureDialog;
    ListBoxOben: TListBox;
    ListBoxLinks: TListBox;
    ListBoxRechts: TListBox;
    ListBoxUnten: TListBox;
    PanelHolen: TPanel;
    ListBoxHolen: TListBox;
    ButtonHaus: TButton;
    PanelSpeichern: TPanel;
    ListBoxSpeichern: TListBox;
    ButtonSaus: TButton;
    Deinfuegen: TMenuItem;
    ausDatei: TMenuItem;
    ausZwischenablage: TMenuItem;
    Drueck: TMenuItem;
    SpeedausDatei: TSpeedButton;
    SpeedRueck: TSpeedButton;
    Text: TMenuItem;
    Textschreiben: TMenuItem;
    Trueck: TMenuItem;
    PanelText: TPanel;
    LabelText: TLabel;
    LabelReturn: TLabel;
    MaskEditText: TMaskEdit;
    PanelPlazieren: TPanel;
    LabelPlazieren: TLabel;
    SpeedText: TSpeedButton;
    SpeedUnText: TSpeedButton;
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
    procedure RadioRechtsClick(Sender: TObject);
    procedure RadioZentriertClick(Sender: TObject);
    procedure RadioLinksClick(Sender: TObject);
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
    procedure SpeedBGroesseClick(Sender: TObject);
    procedure SpeedausZwischenClick(Sender: TObject);
    procedure ButtonDruckenClick(Sender: TObject);
    procedure ButtonAbbrechenClick(Sender: TObject);
    procedure Speichern1Click(Sender: TObject);
    procedure ListBoxSpeichernClick(Sender: TObject);
    procedure ListBoxHolenClick(Sender: TObject);
    procedure SpeedSpeichernClick(Sender: TObject);
    procedure FontClick(Sender: TObject);
    procedure SpeedFontClick(Sender: TObject);
    procedure ButtonHausClick(Sender: TObject);
    procedure ButtonSausClick(Sender: TObject);
    procedure ausDateiClick(Sender: TObject);
    procedure ausZwischenablageClick(Sender: TObject);
    procedure DrueckClick(Sender: TObject);
    procedure SpeedausDateiClick(Sender: TObject);
    procedure SpeedRueckClick(Sender: TObject);
    procedure TextschreibenClick(Sender: TObject);
    procedure TrueckClick(Sender: TObject);
    procedure MaskEditTextKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedTextClick(Sender: TObject);
    procedure SpeedUnTextClick(Sender: TObject);
    procedure MaskEditLaengeChange(Sender: TObject);
    procedure MaskEditLinksChange(Sender: TObject);
    procedure MaskEditObenChange(Sender: TObject);
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
  NLaenge     : array of real;
  NBreite     : array of real;
  NAzimut     : array of word;
  NFall       : array of shortint;
  DNameS      : string;
  Bild        : TBitmap;
  Zwischen    : boolean;
  DBitmap     : TBitmap;
  TeS         : string;
  BText       : boolean;
  TextBitmap  : array[1..10] of TBitmap;
  texti       : byte;

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
  Left   := LeftDiag + 2*ULap;
  Top    := TopDiag + 2*ULap;
  Width  := WidDiag;
  Height := HeiDiag;
  if EingabeS <> 'Diagramm' then
  begin
    Setlength (AziFeld, MaxDaten);
    Setlength (FalFeld, MaxDaten);
    Setlength (LpFeld, MaxDaten);
  end
  else Setlength (BildNameS, MaxDaten);
  Setlength (BreiteFeld, MaxDaten);
  Setlength (LaengeFeld, MaxDaten);
  Setlength (NLaenge, MaxDaten);
  Setlength (NBreite, MaxDaten);
  Setlength (NAzimut, MaxDaten);
  Setlength (NFall, MaxDaten);
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
  LabelBLaenge.Caption         := Tx(1764);
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
  SpeedausZwischen.Hint        := Hilf(246);
  SpeedSpeichern.Hint          := Hilf(683);
  SpeedFont.Hint               := Hilf(686);
  SpeedRueck.Hint              := Hilf(718);
  SpeedausDatei.Hint           := Hilf(368);
  SpeedText.Hint               := Hilf(729);
  SpeedUnText.Hint             := Hilf(730);
  Speichern1.Caption           := Tx(87);
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
  PanelKarte.Visible           := false; 
  LabelLinks.Caption           := Tx(1317);
  LabelRechts.Caption          := Tx(1316);
  LabelOben.Caption            := Tx(1318);
  LabelUnten.Caption           := Tx(1319);
  RadioLinks.Visible           := false;
  RadioZentriert.Visible       := false;
  RadioRechts.Visible          := false;
  RadioGroup.Visible           := false;
  RadioGAussen.Caption         := Tx(347);
  RadioAussen.Caption          := Tx(1314);
  RadioInnen.Caption           := Tx(1315);
  RadioAussen.Visible          := false;
  RadioInnen.Visible           := false;
  Ausschn                      := false;
  Vorgabe.Caption              := Tx(1329);
  Deinfuegen.Caption           := Tx(1698);
  ausZwischenablage.Caption    := Tx(1686);
  AusDatei.Caption             := Tx(1687);
  Drueck.Caption               := Tx(1688);
  Textschreiben.Caption        := Tx(1699);
  LabelText.Caption            := Tx(1700);
  LabelReturn.Caption          := Tx(1701);
  LabelPlazieren.Caption       := Tx(1702);
  Trueck.Caption               := Tx(1688);
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
  ButtonHaus.Caption    := Tx(1682);
  ButtonSaus.Caption    := Tx(1682); 
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
  Font.Caption             := Tx(1621);
  PanelGroesse.Visible     := false;
  KartenRand.Enabled       := false;
  Symbole.Enabled          := false;
  Farbe.Enabled            := false;
  LaengeSymb.Enabled       := false;
  StrichStaerke.Enabled    := false;
  Font.Enabled             := false;
  Grafik.Enabled           := false;
  DatenSpeichern.Enabled   := false;
  Ratio                    := 660/660;
  for i := 1 to 7 do
    ListBoxSpeichern.Items.Add (Tx(1611+i));
  PanelSpeichern.Visible := false;
  for i := 1 to 7 do
    ListBoxHolen.Items.Add (Tx(1611+i));
  PanelHolen.Visible  := false;
  Drueck.Enabled      := false;
  SpeedRueck.Enabled  := false;
  Zwischen            := false;
  PanelText.Visible   := false;
  BText               := false;
  texti               := 0;
  Trueck.Enabled      := false;
  SpeedUnText.Enabled := false;
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
  ExtS       : string[3];
  BildPNG    : TPngObject;
begin
  BHoeheST := round(BBreiteST/Ratio);
  Ausschn                := false;
  ImageKarte.Visible     := true;
  ListBoxDaten.Visible   := true;
  PanelSpeed.Visible     := true;
  PanelAnzahl.Visible    := true;
  PanelKoor.Visible      := true;
  KartenRand.Enabled     := true;
  Symbole.Enabled        := true;
  Farbe.Enabled          := true;
  LaengeSymb.Enabled     := true;
  StrichStaerke.Enabled  := true;
  Font.Enabled           := true;
  Grafik.Enabled         := true;
  DatenSpeichern.Enabled := true;
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
  if KBreite = 0 then KBreite := 0.001;
  if KHoehe  = 0 then KHoehe  := 0.001;
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
    if not Zwischen then
    begin
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
  end;  
  MaskEditKarte.Text := CurrentFile;
  if HolPixS = 'BMP' then
  begin
    FBild  := TBitmap.Create;
    try
      Rahmen := Rect(0,0,LKarte,HKarte);
      FBild.LoadFromFile(CurrentFile);
      ImageKarte.Canvas.Stretchdraw(Rahmen,FBild);
    finally
      FBild.Free;
    end;
  end;
  if HolPixS = 'GIF' then
  begin
    GBild  := TGifImage.Create;
    try
      Rahmen := Rect(0,0,LKarte, HKarte);
      GBild.LoadFromFile(CurrentFile);
      ImageKarte.Canvas.Stretchdraw(Rahmen,GBild);
    finally
      GBild.Free;
    end;
  end;
  if HolPixS = 'TIF' then
  begin
    FBild  := TBitmap.Create;
    try
      Rahmen := Rect(0,0,LKarte,HKarte);
      LoadTiffFromFile(CurrentFile,FBild);
      ImageKarte.Canvas.Stretchdraw(Rahmen,FBild);
    finally
      FBild.Free;
    end;
  end;
  if HolPixS = 'JPG' then
  begin
    JBild := TJpegImage.Create;
    FBild := TBitmap.Create;
    try
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
    MetaFile := TMetaFile.Create;
    FBild := TBitmap.Create;
    try
      MetaFile.Enhanced := false;
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
    MetaFile := TMetaFile.Create;
    FBild := TBitmap.Create;
    try
      MetaFile.Enhanced := true;
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
  if HolPixS = 'PNG' then
  begin
    BildPNG := TPngObject.Create;
    Bitmap  := TBitmap.Create;
    try
      BildPNg.LoadFromFile(CurrentFile);
      Bitmap.Assign(BildPNG);
      Rahmen := Rect(0,0,ImageKarte.Width,ImageKarte.Height);
      ImageKarte.Canvas.Stretchdraw(Rahmen,Bitmap);
    finally
      BildPng.Free;
      Bitmap.Free;
    end;
  end;
  HolPixS := '';
  Canvas.Font.Color := DatenFarbe;
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
    if EingabeS <> 'Diagramm' then
    begin
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
    end;
    if (KoordinatenS = 'DMM') or (KoordinatenS = 'DMS') then
    begin
      GradMin (BreiteFeld[i], i, BGradS, BMinS);
      GradMin (LaengeFeld[i], i, LGradS, LMinS);
      if EingabeS <> 'Diagramm' then
        ZeileS  := '  '+NordSuedS+BGradS+'°'+BMinS+'´'+'  '
                   +OstWestS+LGradS+'°'+LMinS+'´  '
                   +LPS+' '+AzimutS+'/'+FalS
      else ZeileS := '  '+NordSuedS+BGradS+'°'+BMinS+'´'+'  '
                   +OstWestS+LGradS+'°'+LMinS+'´  '+BildNameS[i];
    end;
    if (KoordinatenS = 'Gauss') or (KoordinatenS = 'UTM') then
    begin
      LGradS := IntToStr(round(LaengeFeld[i]));
      BGradS := IntToStr(round(BreiteFeld[i]));
      if length (LGradS) = 6 then LGradS := '0'+LGradS;
      if length (BGradS) = 6 then BGradS := '0'+BGradS;
      if EingabeS <> 'Diagramm' then
        ZeileS := '  '+RS+' '+LGradS+'     '+HS+' '+BGradS
                  +'         '+LPS+' '+AzimutS+'/'+FalS
      else ZeileS := '  '+RS+' '+LGradS+'     '+HS+' '+BGradS
                  +'         '+ BildNameS[i];
    end;
    ListBoxDaten.Items.Add (ZeileS);
    if EingabeS = 'Diagramm' then
    begin
    GBild  := TGifImage.Create;
    try
      Rahmen := Rect(x-Radius,y-Radius,x+Radius,y+Radius);
      GBild.LoadFromFile(BildNameS[i]);
      ImageKarte.Canvas.Stretchdraw(Rahmen,GBild);
    finally
      GBild.Free;
    end;
    end; { if EingabeS}
  end;   {for i}
  HintFarbe := DiagrFarbe;
  if DemoB then DemoText (ImageKarte.Canvas,10,ImageKarte.Height-40);
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
var
  Typ     : TMsgDlgType;
  InfoS   : string;
begin
  if ClipBoard.HasFormat(CF_Bitmap) then
  begin
    Typ := mtInformation;
    InfoS := Tx(1691);
    if DlgMessage (Typ, InfoS, Tx(1689),1) = mrYes then
    begin
      Clipboard.Clear;
      showmessage(Tx(1690));
    end;
  end;
  if EingabeS <> 'Diagramm' then
  begin
    AziFeld    := nil;
    FalFeld    := nil;
    LPFeld     := Nil;
  end
  else BildNameS := nil;
  BreiteFeld := nil;
  LaengeFeld := nil;
  NLaenge    := nil;
  NBreite    := nil;
  NAzimut    := nil;
  NFall      := nil;
  Form81.Close;
  if EingabeS = 'manuell' then Form80.Close;
  if EingabeS = 'Diagramm' then Form80.Close;
  if EingabeS = 'Festplatte' then Form82.Close;
  if EingabeS = 'Karte' then Form83.Close;
  if EingabeS = 'ExcelD' then Form84.Close;
  Form79.Close;
  SetCurrentDir(DirectS);
end;

procedure TForm81.ButtonZurueckClick(Sender: TObject);
begin
  if EingabeS <> 'Diagramm' then
  begin
    AziFeld := nil;
    FalFeld := nil;
    LpFeld  := nil;
  end
  else BildNameS := nil;;
  BreiteFeld := nil;
  LaengeFeld := nil;
  NLaenge    := nil;
  NBreite    := nil;
  NAzimut    := nil;
  NFall      := nil;
  Form81.Close;
  if EingabeS = 'manuell' then Form80.Close;
  if EingabeS = 'Diagramm' then Form80.Close;
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
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
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
var
  Rahmen : TRect;
  SBild  : TBitmap;
//  KBild  : TBitmap;
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
//  KBild.Assign(ImageKarte.Picture);
  Rahmen := Rect(0,0,660,660);
  SBild  := TBitmap.Create;
  SBild.LoadfromFile(CurrentFile);
  ImageKarte.Canvas.Stretchdraw(Rahmen,SBild);
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
  if Btext then exit;
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
  if Btext then exit;
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
  i, j     : word;
begin
  Kl := 0;
  Gl := 0;
  Kb := 0;
  Gb := 0;
  if not Maus then exit;
  if not Btext then
  begin
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
        if not (EingabeS = 'Diagramm') then
        begin
          NAzimut[j] := AziFeld[i];
          NFall[j]   := FalFeld[i];
        end;
      end;
      if not (EingabeS = 'Diagramm') then
      begin
        AziFeld[i]    := 0;
        FalFeld[i]    := 0;
      end;
      LaengeFeld[i] := 0;
      BreiteFeld[i] := 0;
    end;
    ZahlGlob := j;
    for i := 1 to ZahlGlob do
    begin
      if not (EingabeS = 'Diagramm') then
      begin
        AziFeld[i]    := NAzimut[i];
        FalFeld[i]    := NFall[i];
      end;
      LaengeFeld[i] := NLaenge[i];
      BreiteFeld[i] := NBreite[i];
    end;
    ButtonStartClick(Sender);
  end
  else
  begin
    inc (texti);
    TextBitmap[texti] := Tbitmap.Create;
    TextBitmap[texti].Assign(ImageKarte.Picture);
    with ImageKarte.Canvas do
    begin
      Brush.Color := DiagrFarbe;
      Font.Name   := DSchrift;
      Font.Size   := DGroesse;
      Font.Color  := DFarbe;
      Font.Style  := DStyle;
    end;
    ImageKarte.Canvas.TextOut(x,y,TeS);
    PanelText.Visible   := false;
    BText               := false;
    Trueck.Enabled      := true;
    SpeedUnText.Enabled := true;
    Maus := false;
  end;
end;

procedure TForm81.VorgabeClick(Sender: TObject);
begin
  PanelKarte.Visible    := true;
  LabelKarte.Visible    := true;
  MaskEditKarte.Visible := true;
  FixKoor               := true;
  if (KoordinatenS = 'DMM') or (KoordinatenS = 'DMS') then
  begin
    PanelVorgabeGeo.Visible := true;
    MaskEditVorBreiteOGrad.Clear;
    MaskEditVorBreiteOMin.Clear;
    MaskEditVorBreiteUGrad.Clear;
    MaskEditVorBreiteUMin.Clear;
    MaskEditVorLaengeLGrad.Clear;
    MaskEditVorLaengeLMin.Clear;
    MaskEditVorLaengeRGrad.Clear;
    MaskEditVorLaengeRMin.Clear;    
    MaskEditVorBreiteOGrad.SetFocus;
  end;
  if KoordinatenS = 'Gauss' then
  begin
    PanelGauss.Visible := true;
    MaskEditRL1.Clear;
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
begin
  Kbfix := 0;
  Gbfix := 0;
  Klfix := 0;
  Glfix := 0;
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
        if EingabeS <> 'Diagramm' then
        begin
          NAzimut[j] := AziFeld[i];
          NFall[j]   := FalFeld[i];
        end;
      end;
      if EingabeS <> 'Diagramm' then
      begin
        AziFeld[i]    := 0;
        FalFeld[i]    := 0;
      end;
      LaengeFeld[i] := 0;
      BreiteFeld[i] := 0;
    end;
    ZahlGlob := j;
    for i := 1 to ZahlGlob do
    begin
      if eingabeS <> 'Diagramm' then
      begin
        AziFeld[i]    := NAzimut[i];
        FalFeld[i]    := NFall[i];
      end;
      LaengeFeld[i] := NLaenge[i];
      BreiteFeld[i] := NBreite[i];
    end;
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
begin
  if key = chr(13) then
  begin
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
begin
  if key = chr(13) then
  begin
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
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
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
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ListBoxStrich.Visible := false;
  LabelStrich.Visible   := false;
  ButtonStartClick(Sender);
end;

procedure TForm81.FontClick(Sender: TObject);
begin
  WaehlFont(FontDialog1);
end;

procedure TForm81.SpeedFontClick(Sender: TObject);
begin
  FontClick(Sender);
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
      assignFile(Datei,FabricS+'\'+'Fabric.ini');
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
    assignFile(Datei,FabricS+'\'+'Fabric.ini');
    rewrite (Datei);
    for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
    closefile (Datei);
  end;
end;

procedure TForm81.CheckBoxBildClick(Sender: TObject);
begin
  PanelGroesse.Visible := false;
end;

procedure TForm81.ausDateiClick(Sender: TObject);
begin
  Drueck.Enabled                 := true;
  SpeedRueck.Enabled             := true;
  ausDatei.Enabled               := false;
  AusZwischenablage.Enabled      := false;
  SpeedausDatei.Enabled          := false;
  SpeedausZwischen.Enabled       := false;
  PanelHolen.Visible             := true;
  PanelKarte.Visible             := true;
  DBitmap                        := Tbitmap.Create;
  DBitmap.Assign(ImageKarte.Picture);
end;

procedure TForm81.SpeedausDateiClick(Sender: TObject);
begin
  ausDateiClick(Sender);
end;

procedure TForm81.ButtonHausClick(Sender: TObject);
begin
  PanelHolen.Visible := false;
end;

procedure TForm81.ListBoxHolenClick(Sender: TObject);
var
  i : byte;
begin
  for i := 0 to ListboxHolen.Items.Count-1 do
  begin
    if ListboxHolen.Selected[i] then
    begin
      if i = 0 then holenBMP (OpenPictureDialog1, CurrentFile, HolPixS);
      if i = 1 then holenGIF (OpenPictureDialog1, CurrentFile, HolPixS);
      if i = 2 then holenTIF (OpenDialog1, CurrentFile, HolPixS);
      if i = 3 then holenJPG (OpenPictureDialog1, CurrentFile, HolPixS);
      if i = 4 then holenWMF (OpenPictureDialog1, CurrentFile, HolPixS);
      if i = 5 then holenEMF (OpenPictureDialog1, CurrentFile, HolPixS);
      if i = 6 then holenPNG (OpenPictureDialog1, CurrentFile, HolPixS);
    end;
  end;
  ButtonStartClick(Sender);
  PanelHolen.Visible := false;
end;

procedure TForm81.ausZwischenablageClick(Sender: TObject);
begin
  Zwischen                   := true;
  Drueck.Enabled             := true;
  SpeedRueck.Enabled         := true;
  ausDatei.Enabled           := false;
  AusZwischenablage.Enabled  := false;
  SpeedausDatei.Enabled      := false;
  SpeedausZwischen.Enabled   := false;
  DBitmap                    := Tbitmap.Create;
  DBitmap.Assign(ImageKarte.Picture);
  PanelKarte.Visible := true;
  HolZwischen := true;
  ButtonStartClick(Sender);
end;

procedure TForm81.SpeedausZwischenClick(Sender: TObject);
begin
  ausZwischenablageClick(Sender);
end;


procedure TForm81.DrueckClick(Sender: TObject);
begin
  AusDatei.enabled              := true;
  SpeedausDatei.Enabled         := true;
  if not ClipBoard.HasFormat(CF_Bitmap) then
  begin
    ausZwischenablage.Enabled   := false;
    SpeedausZwischen.Enabled    := false;
  end
  else
  begin
    ausZwischenablage.Enabled   := true;
    SpeedausZwischen.Enabled    := true;
  end;
  ImageKarte.Canvas.Draw (0,0,DBitmap);
  DBitmap.free;
  Drueck.Enabled     := false;
  SpeedRueck.Enabled := false;
end;

procedure TForm81.SpeedRueckClick(Sender: TObject);
begin
  DrueckClick(Sender);
end;

procedure TForm81.kopierenClick(Sender: TObject);
begin
  ClipBoard.Assign (ImageKarte.Picture);
end;

procedure TForm81.SpeedkopierenClick(Sender: TObject);
begin
  kopierenClick(Sender);
end;

procedure TForm81.Speichern1Click(Sender: TObject);
begin
  PanelSpeichern.Visible := true;
end;

procedure TForm81.SpeedSpeichernClick(Sender: TObject);
begin
  Speichern1Click(Sender);
end;

procedure TForm81.ButtonSausClick(Sender: TObject);
begin
  PanelSpeichern.Visible := false;
end;

procedure TForm81.ListBoxSpeichernClick(Sender: TObject);
begin
  GrafikSpeichern (ImageKarte, ListBoxSpeichern, Ratio,
                   SavePictureDialog1, SaveDialog2);
  PanelSpeichern.Visible := false;                 
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
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
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
  Paneldrucken.Visible         := true;
  GroupBoxDrucken.Visible      := true;
  RadioLinks.Visible           := true;
  RadioZentriert.Visible       := true;
  RadioRechts.Visible          := true;
  RadioGroup.Visible           := true;
  MaskEditLaenge.EditMask      := '99;0; ';
  MaskEditLinks.EditMask       := '99;0; ';
  MaskEditOben.EditMask        := '99;0; ';
  MaskEditLaenge.Text          := InttoStr(BLaenge);
  MaskEditLinks.Text           := InttoStr(BLinks);
  MaskEditOben.Text            := InttoStr(BOben);
  GroupBoxdrucken.Caption      := Tx(880);
  LabelBLaenge.Caption         := Tx(1764);
  LabelEcke.Caption            := Tx(1274);
  LabelXdrucken.Caption        := Tx(885);
  LabelYdrucken.Caption        := Tx(886);
  ButtonDrucken.Caption        := Tx(881);
  ButtonAbbrechen.Caption      := Tx(882);
  LabelUnterschrift.Caption    := Tx(887);
  LabelSchrift.Caption         := Tx(888);
  RadioLinks.Caption           := Tx(889);
  RadioZentriert.Caption       := Tx(890);
  RadioRechts.Caption          := Tx(891);
  ButtonDrucken.Enabled        := false;
  i                            := 3;
  repeat
    i := i + 1;
    str(i, SchriftS);
    ListBoxSchrift.Items.Add (SchriftS);
  until i = 40;
  MaskEditUnterschrift.Visible := true;
  MaskEditUnterschrift.SetFocus;
end;

procedure TForm81.SpeedDruckerClick(Sender: TObject);
begin
  druckenClick(Sender);
end;

procedure TForm81.MaskEditLaengeChange(Sender: TObject);
var
  Datei : TextFile;
  i     : word;
begin
  KonfigZeileS[154] := 'Image Width (in % Paper W) :,'+MaskEditLaenge.Text;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
end;

procedure TForm81.MaskEditLinksChange(Sender: TObject);
var
  Datei : TextFile;
  i     : word;
begin
  KonfigZeileS[156] := 'Left (in % of Paper Width) :,'+MaskEditLinks.Text;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
end;

procedure TForm81.MaskEditObenChange(Sender: TObject);
var
  Datei : TextFile;
  i     : word;
begin
  KonfigZeileS[155] := 'Top (in % of Paper Width)  :,'+MaskEditOben.Text;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
end;

procedure TForm81.RadioRechtsClick(Sender: TObject);
begin
  BuendigS := 'Rechts';
  Gedrueckt[3] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3] then
    ButtonDrucken.Enabled := true;
end;

procedure TForm81.RadioZentriertClick(Sender: TObject);
begin
  BuendigS := 'Zentriert';
  Gedrueckt[3] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3] then
    ButtonDrucken.Enabled := true;
end;

procedure TForm81.RadioLinksClick(Sender: TObject);
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
  LRand   : word;
  ORand   : word;
  PLaenge : word;
  Hoehe   : word;
  Anfang  : word;
  Links   : word;
  Laenge  : word;
begin
  Anfang  := 0;
  Links   := StrToInt(MaskEditLinks.Text);
  LRand   := round(Links*Printer.PageWidth/100);
  Oben    := StrToInt(MaskEditOben.Text);
  ORand   := round(Oben*Printer.PageHeight/100);
  Laenge  := StrToInt(MaskEditLaenge.Text);
  PLaenge := round(Laenge*Printer.Pagewidth/100);
  Hoehe   := round(PLaenge*ImageKarte.Height/ImageKarte.Width);;
  with Fenster do
  begin
    Left   := LRand;
    Top    := ORand;
    Right  := LRand + PLaenge;
    Bottom := ORand + Hoehe;
  end;
  Bitmap:=TBitmap.Create;
  try
    Bitmap.Assign(ImageKarte.picture.graphic);
    with Printer do
    begin
      Canvas.Font.Size  := Schrift;
      Canvas.Font.Name  := Dschrift;
      Canvas.Font.Color := clBlack;
      BeginDoc;
        Canvas.StretchDraw(Fenster,Bitmap);
        if BuendigS = 'Links' then Anfang := Fenster.Left;
        if BuendigS = 'Zentriert' then
          Anfang := Fenster.Left + ((Fenster.Right-Fenster.Left) div 2) - (Printer.Canvas.TextWidth(TextS) div 2);
        if BuendigS = 'Rechts' then Anfang := Fenster.Right - Printer.Canvas.TextWidth(TextS);
        Canvas.Textout (Anfang,Fenster.Bottom+5, TextS);
      EndDoc;
    end;
  finally
    Bitmap.free;
  end;
  GroupBoxDrucken.Visible      := false;
  PanelDrucken.Visible         := false;
  RadioGroup.Visible           := false;
  RadioLinks.Visible     := false;
  RadioRechts.Visible    := false;
  RadioZentriert.Visible := false;
end;

procedure TForm81.ButtonAbbrechenClick(Sender: TObject);
begin
  Paneldrucken.Visible   := false;
  RadioLinks.Visible     := false;
  RadioZentriert.Visible := false;
  RadioRechts.Visible    := false;
  RadioGroup.Visible     := false;
end;

procedure TForm81.TextschreibenClick(Sender: TObject);
begin
  PanelText.Visible := true;
  MaskEditText.SetFocus;
  BText := true;
  MaskEditText.Clear;
  PanelPlazieren.Visible := false;
  Maus := true;
  ImageKarte.Enabled := true; 
end;

procedure TForm81.SpeedTextClick(Sender: TObject);
begin
  TextschreibenClick(Sender);
end;

procedure TForm81.MaskEditTextKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(13) then
  begin
    TeS := MaskEditText.Text;
    PanelPlazieren.Visible := true;
  end;
end;

procedure TForm81.TrueckClick(Sender: TObject);
begin
  ImageKarte.Canvas.Draw (0,0,TextBitmap[texti]);
  if texti >= 1 then
  begin
    TextBitmap[texti].free;
    Dec(texti);
  end;
  if texti = 0 then
  begin
    Trueck.Enabled      := false;
    SpeedUnText.Enabled := false;
  end;  
end;

procedure TForm81.SpeedUnTextClick(Sender: TObject);
begin
  TrueckClick(Sender);
end;

procedure TForm81.DspeichernClick(Sender: TObject);
begin
  if CurrentFile <> '' then KarteSpeichern(CurrentFile)
  else DspeichernUnterClick(Sender);
end;

procedure TForm81.DspeichernUnterClick(Sender: TObject);
begin
  SaveDialog2.DefaultExt := 'map';
  SaveDialog2.Filter     := 'map';
  if SaveDialog2.Execute then
  begin
    CurrentFile := SaveDialog2.Filename;
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
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\81Karte-plot.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\81Map-plot.htm');
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
