unit Unit29;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, Mask, Menus, ExtCtrls, Globvar,
  Clipbrd, Harnisch, Plotten, Iso, Isolinie1, Basic, HPPlot,
  Texte, ComCtrls, Buttons, Printers, Drucken, Shellapi, Math,
  Kalkulat, Standard, GifImage, Bmp2Tiff, Jpeg, ExtDlgs,
  ReadTiff, ehsHelpRouter, PngImage, Grafik, Einausga;

type
  TForm29 = class(TForm)
    Image1      : TImage;
    PanelDateien: TPanel;
    Labelausgewaehlte: TLabel;
    ButtonStart  : TButton;
    Buttonzurueck: TButton;
    Buttonbeenden: TButton;

    MainMenu1: TMainMenu;

    Isolinien1 : TMenuItem;
    IsoLinie1: TMenuItem;
    IsoLinie2: TMenuItem;
    IsoLinie3: TMenuItem;
    IsoLinie4: TMenuItem;
    Isolinie5: TMenuItem;

    FarbeDiagramm1 : TMenuItem;

    Grafik1                 : TMenuItem;
    kopieren1               : TMenuItem;
    Speichern: TMenuItem;

    Drucker1            : TMenuItem;
    Druckereinrichten   : TMenuItem;
    drucken1            : TMenuItem;
    PrinterSetupDialog1 : TPrinterSetupDialog;
    PrintDialog1        : TPrintDialog;
    SaveDialog1: TSaveDialog;
    OpenDialog1: TOpenDialog;

    GroupBoxplotten       : TGroupBox;
    PanelRadius           : TPanel;
      LabelRadius         : TLabel;
      MaskEditRadius      : TMaskEdit;
    PanelMittelpunkt      : TPanel;
      LabelMittelpunkt    : TLabel;
      LabelX              : TLabel;
      LabelY              : TLabel;
      MaskEditX           : TMaskEdit;
      MaskEditY           : TMaskEdit;

    HPPlotter1 : TMenuItem;

    FarbePeripherie1 : TMenuItem;
    Hintergrund: TMenuItem;

    FarbeRahmen   : TMenuItem;

    PanelDrucken    : TPanel;
    GroupBoxDrucken : TGroupBox;
    Panel7           : TPanel;
    LabelLaenge: TLabel;
    MaskEditLaenge: TMaskEdit;
    Panel8           : TPanel;
    LabelEcke: TLabel;
    LabelXdrucken    : TLabel;
    MaskEditLinks: TMaskEdit;
    LabelYdrucken    : TLabel;
    MaskEditOben: TMaskEdit;
    Panel9               : TPanel;
    LabelUnterschrift    : TLabel;
    MaskEditUnterschrift : TMaskEdit;
    LabelSchrift         : TLabel;
    ListBoxSchrift       : TListBox;
    RadioGroup           : TRadioGroup;
    RadioButtonLinks     : TRadioButton;
    RadioButtonZentriert : TRadioButton;
    RadioButtonRechts    : TRadioButton;

    StatusBar  : TStatusBar;
    Fortschritt: TProgressBar;

    Hilfe1: TMenuItem;
    PixelGrafik1: TMenuItem;
    SkalarproduktMethode: TMenuItem;
    inStufen: TMenuItem;
    Fliessend: TMenuItem;
    Isolinien: TMenuItem;
    Grauwerte: TMenuItem;
    FarbenI: TMenuItem;
    ZaehlKalotte: TMenuItem;
    PanelHLS: TPanel;
    ImageHLS: TImage;
    ButtonPlotten: TButton;
    LabelText: TLabel;
    LabelText2: TLabel;
    LabelText3: TLabel;
    Handbuch: TMenuItem;
    ColorDialog1: TColorDialog;
    PanelSigma: TPanel;
    LabelSigma1: TLabel;
    Labelsigma3: TLabel;
    LabelWert1: TLabel;
    LabelWert3: TLabel;
    Image2: TImage;
    LabelSigma21: TLabel;
    LabelWert2: TLabel;
    ButtonS1: TButton;
    ButtonS2: TButton;
    ButtonS3: TButton;
    Sigma1bis3: TMenuItem;
    SFarbe: TMenuItem;
    SPunkte: TMenuItem;
    Literatur: TMenuItem;
    ImageNord: TImage;
    Linien1: TMenuItem;
    Iso20: TMenuItem;
    Iso40: TMenuItem;
    Iso60: TMenuItem;
    Iso80: TMenuItem;
    Iso95: TMenuItem;
    durchgezogen20: TMenuItem;
    gestrichelt20: TMenuItem;
    punktiert20: TMenuItem;
    strichpunktiert20: TMenuItem;
    durchgezogen40: TMenuItem;
    gestrichelt40: TMenuItem;
    punktiert40: TMenuItem;
    strichpunktiert40: TMenuItem;
    durchgezogen60: TMenuItem;
    gestrichelt60: TMenuItem;
    punktiert60: TMenuItem;
    strichpunktiert60: TMenuItem;
    durchgezogen80: TMenuItem;
    gestrichelt80: TMenuItem;
    punktiert80: TMenuItem;
    strichpunktiert80: TMenuItem;
    durchgezogen95: TMenuItem;
    gestrichelt95: TMenuItem;
    punktiert95: TMenuItem;
    strichpunktiert95: TMenuItem;
    ListBoxStrich: TListBox;
    LabelStrich: TLabel;
    Image3: TImage;
    Auswertung: TMenuItem;
    Versatz: TMenuItem;
    FormFaktor: TMenuItem;
    Hoeppener: TMenuItem;
    PanelGroesse: TPanel;
    LabelBHoehe: TLabel;
    LabelBBreite: TLabel;
    MaskEditBBreite: TMaskEdit;
    MaskEditBHoehe: TMaskEdit;
    CheckBoxBild: TCheckBox;
    BGroesse: TMenuItem;
    transparent: TMenuItem;
    HFarbe: TMenuItem;
    SavePictureDialog1: TSavePictureDialog;
    PanelSpeed: TPanel;
    SpeedHilfe: TSpeedButton;
    SpeedDrucken: TSpeedButton;
    SpeedPunktanzeigen: TSpeedButton;
    SpeedHandbuch: TSpeedButton;
    SpeedKopieren: TSpeedButton;
    SpeedZwischenablage: TSpeedButton;
    SpeedKalotte: TSpeedButton;
    SpeedStufen: TSpeedButton;
    SpeedFliessend: TSpeedButton;
    SpeedGrau: TSpeedButton;
    SpeedIsoFarbe: TSpeedButton;
    SpeedFarbeSigma: TSpeedButton;
    SpeedPlotter: TSpeedButton;
    SpeedPeripherie: TSpeedButton;
    SpeedDiagramm: TSpeedButton;
    SpeedRahmen: TSpeedButton;
    SpeedLiteratur: TSpeedButton;
    SpeedEinrichten: TSpeedButton;
    SpeedVersatz: TSpeedButton;
    SpeedEigenwerte: TSpeedButton;
    SpeedHoeppener: TSpeedButton;
    SpeedBGroesse: TSpeedButton;
    SpeedTransparent: TSpeedButton;
    SpeedHFarbe: TSpeedButton;
    OpenPictureDialog1: TOpenPictureDialog;
    Ploterstellen: TButton;
    PanelWarten: TPanel;
    LabelPoly: TLabel;
    LabelWarten: TLabel;
    ButtonDrucken: TButton;
    ButtonAbbrechen: TButton;
    Eigenwerte: TMenuItem;
    Iteration: TMenuItem;
    SpeedIteration: TSpeedButton;
    SpeedSpeichern: TSpeedButton;
    SpeedLoad: TSpeedButton;
    FontDialog1: TFontDialog;
    Font: TMenuItem;
    SpeedFont: TSpeedButton;
    PanelDehnen: TPanel;
    ButtonNPlus: TButton;
    ButtonNMinus: TButton;
    ButtonWplus: TButton;
    ButtonWMinus: TButton;
    ButtonEMinus: TButton;
    ButtonEPlus: TButton;
    Button1: TButton;
    ButtonSMinus: TButton;
    ButtonSPlus: TButton;
    Datenspeichern1: TMenuItem;
    Dspeichern: TMenuItem;
    DspeichernUnter: TMenuItem;
    PanelDaten: TPanel;
    LabelAnzahl1: TLabel;
    LabelZahl2: TLabel;
    LabelDaten: TLabel;
    ListBoxDaten: TListBox;
    Direkt: TMenuItem;
    SpeedDirekt: TSpeedButton;
    ListBoxDateien: TListBox;
    PanelKaliber: TPanel;
    LabelBrE: TLabel;
    LabelBrD: TLabel;
    LabelCalib1: TLabel;
    LabelCalib: TLabel;
    LabelCalib2: TLabel;
    LabelCalib3: TLabel;
    LabelCalib4: TLabel;
    LabelCalib5: TLabel;
    LabelCalib6: TLabel;
    MaskEditBrE: TMaskEdit;
    MaskEditBrD: TMaskEdit;
    ButtonCalibEnde: TButton;
    Calibrieren: TMenuItem;
    Drucken: TMenuItem;
    DEinrichten: TMenuItem;
    SpeedCalib: TSpeedButton;
    ButtonPlotEnde: TButton;
    PanelLoad: TPanel;
    ButtonLabbrechen: TButton;
    PanelSpeichern: TPanel;
    ListBoxSpeichern: TListBox;
    ButtonSabbrechen: TButton;
    ListBoxLoad: TListBox;
    Dhinzufuegen: TMenuItem;
    ausZwischenablage: TMenuItem;
    ausDatei: TMenuItem;
    Drueck: TMenuItem;
    SpeedRueck: TSpeedButton;
    Zoom: TMenuItem;
    SpeedZoom: TSpeedButton;
    Text: TMenuItem;
    Textschreiben: TMenuItem;
    Trueck: TMenuItem;
    PanelText: TPanel;
    Label1: TLabel;
    LabelReturn: TLabel;
    MaskEditText: TMaskEdit;
    PanelPlazieren: TPanel;
    LabelPlazieren: TLabel;
    SpeedText: TSpeedButton;
    SpeedUnText: TSpeedButton;
    Prueck: TMenuItem;
    SpeedPRueck: TSpeedButton;

    procedure FormShow(Sender: TObject);
    procedure ShowHint(Sender: TObject);
    procedure FormActivate(Sender: TObject);

    procedure ButtonStartClick(Sender: TObject);
    procedure ButtonzurueckClick(Sender: TObject);
    procedure ButtonbeendenClick(Sender: TObject);
    {Isolinien}
    {20}
    procedure IsoLinie1Click(Sender: TObject);
    {40}
    procedure IsoLinie2Click(Sender: TObject);
    {60}
    procedure IsoLinie3Click(Sender: TObject);
    {80}
    procedure IsoLinie4Click(Sender: TObject);
    {95}
    procedure Isolinie5Click(Sender: TObject);

    procedure kopieren1Click(Sender: TObject);

    procedure Hilfe1Click(Sender: TObject);

    {Peripherie}
    procedure FarbePeripherie1Click(Sender: TObject);
    {Diagramm}
    procedure FarbeDiagramm1Click(Sender: TObject);
    {Rahmen}
    procedure FarbeRahmenClick(Sender: TObject);
    {Drucker}
    procedure DruckereinrichtenClick(Sender: TObject);
    procedure drucken1Click(Sender: TObject);

    procedure SpeedDruckenClick(Sender: TObject);
    procedure SpeedHilfeClick(Sender: TObject);
    {Bildschirm drucken}
    procedure MaskEditUnterschriftKeyPress(Sender: TObject; var Key: Char);
    procedure RadioButtonLinksClick(Sender: TObject);
    procedure RadioButtonZentriertClick(Sender: TObject);
    procedure RadioButtonRechtsClick(Sender: TObject);
    procedure ListBoxSchriftClick(Sender: TObject);
    procedure inStufenClick(Sender: TObject);
    procedure GrauwerteClick(Sender: TObject);
    procedure FarbenIClick(Sender: TObject);
    procedure ZaehlKalotteClick(Sender: TObject);
    procedure FliessendClick(Sender: TObject);
    procedure ButtonPlottenClick(Sender: TObject);
    procedure ImageHLSMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure HandbuchClick(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ButtonS1Click(Sender: TObject);
    procedure ButtonS2Click(Sender: TObject);
    procedure ButtonS3Click(Sender: TObject);
    procedure SPunkteClick(Sender: TObject);
    procedure SFarbeClick(Sender: TObject);
    procedure SpeedPunktanzeigenClick(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure SpeedKopierenClick(Sender: TObject);
    procedure SpeedZwischenablageClick(Sender: TObject);
    procedure SpeedKalotteClick(Sender: TObject);
    procedure SpeedStufenClick(Sender: TObject);
    procedure SpeedFliessendClick(Sender: TObject);
    procedure SpeedGrauClick(Sender: TObject);
    procedure SpeedIsoFarbeClick(Sender: TObject);
    procedure SpeedFarbeSigmaClick(Sender: TObject);
    procedure SpeedPlotterClick(Sender: TObject);
    procedure SpeedPLTClick(Sender: TObject);
    procedure SpeedDXFClick(Sender: TObject);
    procedure SpeedPeripherieClick(Sender: TObject);
    procedure SpeedDiagrammClick(Sender: TObject);
    procedure SpeedRahmenClick(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
    procedure SpeedLiteraturClick(Sender: TObject);
    procedure durchgezogen20Click(Sender: TObject);
    procedure gestrichelt20Click(Sender: TObject);
    procedure punktiert20Click(Sender: TObject);
    procedure strichpunktiert20Click(Sender: TObject);
    procedure durchgezogen40Click(Sender: TObject);
    procedure gestrichelt40Click(Sender: TObject);
    procedure punktiert40Click(Sender: TObject);
    procedure strichpunktiert40Click(Sender: TObject);
    procedure durchgezogen60Click(Sender: TObject);
    procedure gestrichelt60Click(Sender: TObject);
    procedure punktiert60Click(Sender: TObject);
    procedure strichpunktiert60Click(Sender: TObject);
    procedure durchgezogen80Click(Sender: TObject);
    procedure gestrichelt80Click(Sender: TObject);
    procedure punktiert80Click(Sender: TObject);
    procedure strichpunktiert80Click(Sender: TObject);
    procedure durchgezogen95Click(Sender: TObject);
    procedure gestrichelt95Click(Sender: TObject);
    procedure punktiert95Click(Sender: TObject);
    procedure strichpunktiert95Click(Sender: TObject);
    procedure ListBoxStrichClick(Sender: TObject);
    procedure SpeedEinrichtenClick(Sender: TObject);
    procedure VersatzClick(Sender: TObject);
    procedure HoeppenerClick(Sender: TObject);
    procedure SpeedVersatzClick(Sender: TObject);
    procedure SpeedHoeppenerClick(Sender: TObject);
    procedure BGroesseClick(Sender: TObject);
    procedure MaskEditBBreiteKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditBHoeheKeyPress(Sender: TObject; var Key: Char);
    procedure CheckBoxBildClick(Sender: TObject);
    procedure transparentClick(Sender: TObject);
    procedure HFarbeClick(Sender: TObject);
    procedure SpeedBGroesseClick(Sender: TObject);
    procedure SpeedTransparentClick(Sender: TObject);
    procedure SpeedHFarbeClick(Sender: TObject);
    procedure speichernPLTClick(Sender: TObject);
    procedure speichernDXFClick(Sender: TObject);
    procedure PloterstellenClick(Sender: TObject);
    procedure ButtonDruckenClick(Sender: TObject);
    procedure ButtonAbbrechenClick(Sender: TObject);
    procedure EigenwerteClick(Sender: TObject);
    procedure IterationClick(Sender: TObject);
    procedure SpeedEigenwerteClick(Sender: TObject);
    procedure SpeedIterationClick(Sender: TObject);
    procedure SpeichernClick(Sender: TObject);
    procedure ListBoxSpeichernClick(Sender: TObject);
    procedure ListBoxLoadClick(Sender: TObject);
    procedure SpeedSpeichernClick(Sender: TObject);
    procedure SpeedLoadClick(Sender: TObject);
    procedure FontClick(Sender: TObject);
    procedure SpeedFontClick(Sender: TObject);
    procedure ButtonHokClick(Sender: TObject);
    procedure ButtonNPlusClick(Sender: TObject);
    procedure ButtonNMinusClick(Sender: TObject);
    procedure ButtonEMinusClick(Sender: TObject);
    procedure ButtonEPlusClick(Sender: TObject);
    procedure ButtonSMinusClick(Sender: TObject);
    procedure ButtonSPlusClick(Sender: TObject);
    procedure ButtonWMinusClick(Sender: TObject);
    procedure ButtonWplusClick(Sender: TObject);
    procedure DspeichernClick(Sender: TObject);
    procedure DspeichernUnterClick(Sender: TObject);
    procedure DirektClick(Sender: TObject);
    procedure SpeedDirektClick(Sender: TObject);
    procedure DEinrichtenClick(Sender: TObject);
    procedure CalibrierenClick(Sender: TObject);
    procedure DruckenClick(Sender: TObject);
    procedure MaskEditBrEKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditBrDKeyPress(Sender: TObject; var Key: Char);
    procedure ButtonCalibEndeClick(Sender: TObject);
    procedure ButtonPlotEndeClick(Sender: TObject);
    procedure ButtonLabbrechenClick(Sender: TObject);
    procedure ButtonSabbrechenClick(Sender: TObject);
    procedure ausZwischenablageClick(Sender: TObject);
    procedure ausDateiClick(Sender: TObject);
    procedure DrueckClick(Sender: TObject);
    procedure SpeedRueckClick(Sender: TObject);
    procedure ZoomClick(Sender: TObject);
    procedure SpeedZoomClick(Sender: TObject);
    procedure TextschreibenClick(Sender: TObject);
    procedure MaskEditTextKeyPress(Sender: TObject; var Key: Char);
    procedure Image1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TrueckClick(Sender: TObject);
    procedure SpeedTextClick(Sender: TObject);
    procedure SpeedUnTextClick(Sender: TObject);
    procedure PrueckClick(Sender: TObject);
    procedure SpeedPRueckClick(Sender: TObject);
  end;

var
  Form29: TForm29;
  Bitmap      : TBitmap;
  HolZwischen : boolean;
  HolDatei    : boolean;
  CurrentFile : string;
  IsoFarbe    : array[0..6] of TColor;
  PlotDateiS  : string;
  PIsoFarbe   : array[0..5] of byte;
  Cmax, Cmin  : word;
  Maxim,Minim : real;
  Schrift     : byte;
  BuendigS    : string;
  Gedrueckt   : array [1..3] of boolean;
  TextS       : string;
  WwZeiger    : TWw;
  Ba1Zeiger   : array of real;
  Ba2Zeiger   : array of real;
  Be1Zeiger   : array of real;
  Be2Zeiger   : array of real;
  CountZeiger : array of word;
  PixelBild   : string;
  Zaehlen     : array[0..320] of word;
  Laenge      : array[0..320] of real;
  Ag, Fg      : array[0..320] of word;
  HLSmin      : single;
  HLSmax      : single;
  IsoX        : array[0..5] of real;
  GrauSkala   : Boolean;
  FarbSkala   : Boolean;
  Klick       : byte;
  Hls         : array[0..2] of word;
  Sigma       : array[0..3] of Boolean;
  XSigma      : word;
  YSigma      : word;
  Maus        : Boolean;
  XS1, YS1    : word;
  XS2, YS2    : word;
  XS3, YS3    : word;
  Azi1S,Fal1S : string[3];
  Azi2S,Fal2S : string[3];
  Azi3S,Fal3S : string[3];
  IsoSpeichern: array[0..5] of TColor;
  Zi, Zl      : array[0..50] of real;
  iLinie      : byte;
  Ratio       : real;
  BHoeheSt    : word;
  HolPixS     : string;
  Punkt1      : TPU;
  Punkt2      : TPU;
  Punkt3      : TPU;
  Punkt4      : TPU;
  Punkt5      : TPU;
  Zcluster    : array[0..4] of byte;
  Pix         : Tpi;
  Kreuz       : boolean;
  DarstellungN: byte;
  FuellenS    : string;
  Bild        : TBitmap;
  PlusEin     : boolean;
  NPlus,SPlus : integer;
  WPlus,EPlus : integer;
  FaktorAlt   : real;
  Zwischen    : boolean;
  DBitmap     : TBitmap;
  TeS         : string;
  BText       : boolean;
  TextBitmap  : array[1..10] of TBitmap;
  texti       : byte;
  PBitmap     : TBitmap;

implementation
uses Unit26, Unit27, Unit28, Unit31, Unit33, Unit34, Unit94, Unit99,
     Unit100;
{$R *.DFM}

procedure TForm29.FormShow(Sender: TObject);
begin
  WindowState        := wsMaximized;
  Application.OnHint := ShowHint;
end;

procedure TForm29.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm29.FormActivate(Sender: TObject);
var
  i : byte;
begin
  Left   := LeftDiag + 2*ULap;
  Top    := TopDiag + 2*ULap;
  Width  := WidDiag;
  Height := HeiDiag;
  setlength (AziFeld, MaxDaten);
  setlength (FalFeld, MaxDaten);
  setlength (SAziFeld, MaxDaten);
  setlength (SFalFeld, MaxDaten);
  setlength (CountZeiger, 320);
  setlength (Ba1zeiger, 3000);
  setlength (Ba2zeiger, 3000);
  setlength (Be1zeiger, 3000);
  setlength (Be2zeiger, 3000);
  setlength (Wwzeiger, 122);
  for i:= 0 to 121 do setlength(Wwzeiger[i], 32);
  WeiterB[29] := false;
  Form29.Caption                   := Tx(617);  {Fabric7: Paläospannungen,..}
  Image1.Hint                      := Hilf(125);
  ListBoxDateien.Hint              := Hilf(82);
  Labelausgewaehlte.Hint           := Hilf(82);
  GroupBoxPlotten.Hint             := Hilf(58) + Hilf(59);
  ButtonStart.Hint                 := Hilf(37);
  Buttonzurueck.Hint               := Hilf(52);
  Buttonbeenden.Hint               := Hilf(30);
  Ploterstellen.Hint               := Hilf(60);
  MaskEditX.Hint                   := Hilf(63);
  MaskEditY.Hint                   := Hilf(64);
  ButtonPlotten.Hint               := Hilf(297);
  PanelSigma.Hint                  := Hilf(298);
  ButtonS1.Hint                    := Hilf(299);
  ButtonS2.Hint                    := Hilf(300);
  ButtonS3.Hint                    := Hilf(301);
  SpeedPunktAnzeigen.Hint          := Hilf(302);
  SpeedHandbuch.Hint               := Hilf(274);
  SpeedKopieren.Hint               := Hilf(262);
  SpeedZwischenablage.Hint         := Hilf(246);
  SpeedKalotte.Hint                := Hilf(379);
  SpeedStufen.Hint                 := Hilf(381);
  SpeedFliessend.Hint              := Hilf(382);
  SpeedKalotte.Hint                := Hilf(379);
  SpeedStufen.Hint                 := Hilf(381);
  SpeedFliessend.Hint              := Hilf(382);
  SpeedGrau.Hint                   := Hilf(407);
  SpeedIsoFarbe.Hint               := Hilf(408);
  SpeedFarbeSigma.Hint             := Hilf(413);
  SpeedPunktAnzeigen.Hint          := Hilf(298);
  SpeedPlotter.Hint                := Hilf(437);
  SpeedPeripherie.Hint             := Hilf(440);
  SpeedDiagramm.Hint               := Hilf(441);
  SpeedRahmen.Hint                 := Hilf(442);
  SpeedEinrichten.Hint             := Hilf(505);
  SpeedVersatz.Hint                := Hilf(512);
  SpeedEigenwerte.Hint             := Hilf(513);
  SpeedIteration.Hint              := Hilf(664);
  SpeedHoeppener.Hint              := Hilf(514);
  SpeedBGroesse.Hint               := Hilf(583);
  SpeedTransparent.Hint            := Hilf(584);
  SpeedHFarbe.Hint                 := Hilf(585);
  SpeedSpeichern.Hint              := Hilf(264);
  SpeedLoad.Hint                   := Hilf(368);
  SpeedFont.Hint                   := Hilf(686);
  SpeedDirekt.Hint                 := Hilf(692);
  SpeedCalib.Hint                  := Hilf(717);
  SpeedRueck.Hint                  := Hilf(718);
  ButtonNPlus.Hint                 := Hilf(719);
  ButtonNMinus.Hint                := Hilf(720);
  ButtonWPlus.Hint                 := Hilf(721);
  ButtonWMinus.Hint                := Hilf(722);
  ButtonEPlus.Hint                 := Hilf(723);
  ButtonEMinus.Hint                := Hilf(724);
  ButtonSPlus.Hint                 := Hilf(725);
  ButtonSMinus.Hint                := Hilf(726);
  SpeedZoom.Hint                   := Hilf(727);
  SpeedText.Hint                   := Hilf(729);
  SpeedUnText.Hint                 := Hilf(730);
  SpeedHilfe.Hint                  := Hilf(210);
  SpeedDrucken.Hint                := Hilf(309);
  HolPixS                          := '';
  Isolinien1.Caption               := Tx(618);  {Isolinien}
  IsoLinie1.Caption                := Tx(619);  {20%}
  Linien1.Caption                  := Tx(525);
  SFarbe.Caption                   := Tx(275);
  durchgezogen20.Caption           := Tx(526);
  durchgezogen40.Caption           := Tx(526);
  durchgezogen60.Caption           := Tx(526);
  durchgezogen80.Caption           := Tx(526);
  durchgezogen95.Caption           := Tx(526);
  gestrichelt20.Caption            := Tx(527);
  gestrichelt40.Caption            := Tx(527);
  gestrichelt60.Caption            := Tx(527);
  gestrichelt80.Caption            := Tx(527);
  gestrichelt95.Caption            := Tx(527);
  punktiert20.Caption              := Tx(645);
  punktiert40.Caption              := Tx(645);
  punktiert60.Caption              := Tx(645);
  punktiert80.Caption              := Tx(645);
  punktiert95.Caption              := Tx(645);
  strichpunktiert20.Caption        := Tx(528);
  strichpunktiert40.Caption        := Tx(528);
  strichpunktiert60.Caption        := Tx(528);
  strichpunktiert80.Caption        := Tx(528);
  strichpunktiert95.Caption        := Tx(528);
  Grafik1.Caption                  := Tx(281);
  kopieren1.Caption                := Tx(282);
  ausZwischenablage.Caption        := Tx(286);
  ausDatei.Caption                 := Tx(287);
  HPPlotter1.Caption               := Tx(288);
  FarbePeripherie1.Caption         := Tx(498);
  FarbeDiagramm1.Caption           := Tx(860);
  Hintergrund.Caption              := Tx(1453);    {Farbe des Hintergrunds}
  Hilfe1.Caption                   := Tx(162)+' (F1)';
  Labelausgewaehlte.Caption        := Tx(136);
  GroupBoxPlotten.Caption          := Tx(297);
  Ploterstellen.Caption            := Tx(298);     {Plot-Einstellungen ok?}
  LabelRadius.Caption              := Tx(299);
  LabelMittelpunkt.Caption         := Tx(300);
  LabelX.Caption                   := Tx(301);
  LabelY.Caption                   := Tx(302);
  Buttonzurueck.Caption            := Tx(30);
  Buttonbeenden.Caption            := Tx(53);
  Font.Caption                     := Tx(1621);
  Datenspeichern1.Caption          := Tx(86);
  Dspeichern.Caption               := Tx(87);
  DspeichernUnter.Caption          := Tx(88);
  LabelDaten.Caption               := Tx(914);
  LabelAnzahl1.Caption             := Tx(181);
  Direkt.Caption                   := Tx(1648);   
  DEinrichten.Caption              := Tx(94);
  Calibrieren.Caption              := Tx(1581);
  Drucken.Caption                  := Tx(93);
  LabelCalib.Caption               := Tx(1668);
  LabelCalib2.Caption              := Tx(1669);
  LabelCalib3.Caption              := Tx(1670);
  LabelCalib4.Caption              := Tx(1671);
  LabelCalib5.Caption              := Tx(1672);
  LabelCalib6.Caption              := Tx(1673);
  LabelBrE.Caption                 := Tx(1674);
  LabelBrD.Caption                 := Tx(1675);
  ButtonCalibEnde.Caption          := Tx(1682);
  ButtonPlotEnde.Caption           := Tx(1682);
  ButtonLabbrechen.Caption         := Tx(1682);
  ButtonSabbrechen.Caption         := Tx(1682);
  DHinzufuegen.Caption             := Tx(1685);
  ausZwischenablage.Caption        := Tx(1686);
  AusDatei.Caption                 := Tx(1687);
  Drueck.Caption                   := Tx(1688);
  Textschreiben.Caption            := Tx(1699);
  LabelText.Caption                := Tx(1700);
  LabelReturn.Caption              := Tx(1701);
  LabelPlazieren.Caption           := Tx(1702);
  Trueck.Caption                   := Tx(1688);
  Drucker1.Caption                 := Tx(92);
  Druckereinrichten.Caption        := Tx(94);
  drucken1.Caption                 := Tx(93);
  Speichern.Caption                := Tx(87);
  FarbeRahmen.Caption              := Tx(892);
  Prueck.Caption                   := Tx(1688);
  Labelausgewaehlte.Enabled   := false;
  ListBoxDateien.Enabled      := false;
  HolDatei                    := false;
  HolZwischen                 := false;
  Image1.Enabled              := false;
  HolZwischen                 := false;
  HolDatei                    := false;
  Grafik1.Enabled             := false;
  LabelRadius.Enabled         := false;
  PanelKaliber.Visible        := false;
  MaskEditRadius.EditMask     := '999;0; ';
  MaskEditX.EditMask          := '999;0; ';
  MaskEditY.EditMask          := '999;0; ';
  MaskEditBrE.EditMask        := '999;0; ';
  MaskEditBrD.EditMask        := '999;0; ';
  MaskEditRadius.Text         := InttoStr(round(HpRadius*10));
  MaskEditX.Text              := InttoStr(round(XKoord*10));
  MaskEditY.Text              := InttoStr(round(YKoord*10));
  MaskEditRadius.Enabled      := false;
  LabelMittelpunkt.Enabled    := false;
  LabelX.Enabled              := false;
  MaskEditX.Enabled           := false;
  LabelY.Enabled              := false;
  MaskEditY.Enabled           := false;
  Isolinien1.Enabled          := false;
  Paneldrucken.Visible         := false;
  SpeedDrucken.Enabled         := false;
  GroupBoxPlotten.Caption      := '';
  for i := 1 to 3 do Gedrueckt[i] := false;
  GrauSkala := false;
  FarbSkala := true;
  LabelText.Caption       := Tx(1052);
  LabelText2.Caption      := Tx(1053);
  LabelText3.Caption      := TX(1054);
  GroupBoxPlotten.Visible := false;
  PanelHLS.Visible        := false;
  LabelWert1.Caption      := '';
  LabelWert2.Caption      := '';
  LabelWert3.Caption      := '';
  PixelGrafik1.Caption    := Tx(994);
  ButtonPlotten.Caption   := Tx(241);
  ZaehlKalotte.Caption    := Tx(1094);
  SkalarproduktMethode.Caption := Tx(996);
  inStufen.Caption        := Tx(999);
  Fliessend.Caption       := Tx(1000);
  ButtonS1.Visible        := false;
  ButtonS1.Visible        := false;
  ButtonS2.Visible        := false;
  ButtonS3.Visible        := false;
  PanelSigma.Visible      := false;
  Handbuch.Caption        := Tx(1055)+' (F2)';
  Literatur.Caption       := Tx(1183)+' (F5)';
  SpeedLiteratur.Hint     := Hilf(462);
  PanelSpeed.Visible      := false;
  Auswertung.Caption      := Tx(1341);
  Versatz.Caption         := Tx(18);
  FormFaktor.Caption      := Tx(20);
  Eigenwerte.Caption      := Tx(1570);
  Iteration.Caption       := Tx(1585);
  Hoeppener.Caption       := Tx(19);
  PanelDateien.Visible    := false;
  PanelDaten.Visible      := false;
  Font.Enabled            := false;
  DatenSpeichern1.Enabled := false;
  for i := 0 to 9 do ListboxStrich.Items.Add(IntToStr(i+1));
  ListBoxStrich.Visible   := false;
  LabelStrich.Visible     := false;
  LabelStrich.Caption     := Tx(1187);
  SPunkte.Caption         := Tx(1245);
  Linien1.Enabled         := false;
  PixelGrafik1.Enabled    := false;
  Sigma1bis3.Enabled      := false;
  Auswertung.Enabled      := false;
  SpeedVersatz.Enabled    := false;
  SpeedEigenwerte.Enabled := false;
  SpeedIteration.Enabled  := false;
  SpeedHoeppener.Enabled  := false;
  MaskEditBrE.Enabled     := false;
  MaskEditBrD.Enabled     := false;
  MaskEditBBreite.EditMask := '99999;0; ';
  MaskEditBHoehe.EditMask  := '99999;0; ';
  LabelBBreite.Caption     := Tx(1440);
  LabelBHoehe.Caption      := Tx(1441);
  BGroesse.Caption         := Tx(1439);
  PanelGroesse.Visible     := false;
  Ratio                    := 660/660;
  HTransparent := false;
  For i := 1 to 9 do
    ListBoxSpeichern.Items.Add (Tx(1611+i));
  PanelSpeichern.Visible := false;
  for i := 1 to 7 do
    ListBoxLoad.Items.Add (Tx(1611+i));
  PanelLoad.Visible   := false;
  PanelDehnen.Visible := false;
  PlusEin             := false;
  NPlus               := 0;
  EPlus               := 0;
  SPlus               := 0;
  WPlus               := 0;
  DarstellungS := 'Kalotte';
  LabelPoly.Caption    := Tx(1530);
  LabelWarten.Caption  := Tx(1531);
  PanelWarten.Visible  := false;
  Zwischen             := false;
  Drueck.Enabled       := false;
  SpeedRueck.Enabled   := false;
  if WeiterF then
  begin
    ButtonStart.Visible   := false;
    ButtonBeenden.Visible := false;
    ButtonStartClick(Sender);
  end
  else
  begin
    ButtonStart.Visible   := true;
    ButtonBeenden.Visible := true;
  end;
  Zoom.Enabled        := false;
  SpeedZoom.Enabled   := false;
  PanelText.Visible   := false;
  BText               := false;
  texti               := 0;
  Trueck.Enabled      := false;
  SpeedUnText.Enabled := false;
  Prueck.Enabled      := false;
  SpeedPrueck.Enabled := false;
end;

procedure TForm29.ButtonStartClick(Sender: TObject);
var
  i, M        : word;
  j           : byte;
  An, En, Ann : real;
  Schritt     : real;
  Zahliso, P  : real;
  Linien      : TPenstyle;
  Fa          : byte;
  Farb        : TColor;
  MinimS      : string;
  MaximS      : string;
  ProS        : string;
  Datei       : TextFile;
  NZahl       : word;
  Kal         : real;
  Quadrat     : TRect;
  Muster      : TBrushStyle;
  IsoZahl     : byte;
  FBild       : TBitmap;
  JBild       : TJpegImage;
  GBild       : TGifImage;
  MetaFile    : TMetaFile;
  Rahmen1     : TRect;
  Rahmen2     : TRect;
  BildPng     : TPngObject;
  NBild       : TBitmap;
  ZeileS      : string;
  SFallenS    : string[3];
begin
  if not WeiterF then
  begin
    Auswertung.Enabled      := true;
    SpeedVersatz.Enabled    := true;
    SpeedEigenwerte.Enabled := true;
    SpeedIteration.Enabled  := true;
    SpeedHoeppener.Enabled  := true;
    SpeedDirekt.Enabled     := true;
  end;
  PanelDateien.Visible := true;
  PanelDaten.Visible   := true;
  Font.Enabled            := true;
  DatenSpeichern1.Enabled := true;
  Breite := Image1.Width;
  Hoehe  := Image1.Height;
  GroupBoxPlotten.Visible := false;
  if not PlusEin then
  begin
    if not Zwischen then
    begin
      BHoeheSt := round(BBreiteSt/Ratio);
      if not ClipBoard.HasFormat(CF_Bitmap) then
      begin
        ausZwischenablage.Enabled   := false;
        SpeedZwischenablage.Enabled := false;
      end
      else
      begin
        ausZwischenablage.Enabled   := true;
        SpeedZwischenablage.Enabled := true;
      end;
    end;
    iLinie := 0;
    PanelSpeed.Visible       := true;
    LabelWert1.Caption       := '';
    LabelWert3.Caption       := '';
    Fortschritt.Visible      := true;
    LabelRadius.Enabled      := true;
    LabelMittelpunkt.Enabled := true;
    LabelX.Enabled           := true;
    LabelY.Enabled           := true;
    MaskEditRadius.Enabled   := true;
    MaskEditX.Enabled        := true;
    MaskEditY.Enabled        := true;
    GroupBoxPlotten.Caption  := 'Plot:';
    ProS                     := GeraetS;
    Grafik1.Enabled          := true;
    Isolinien1.Enabled       := true;
    if GeraetS = 'no' then FarbePeripherie1.Enabled := false;
    Labelausgewaehlte.Enabled  := true;
    ListBoxDateien.Enabled     := true;
    Image1.Enabled             := true;
    PixelBild                  := '';
    ListBoxDaten.Clear;
    LabelZahl2.Caption := IntToStr (ZahlGlob);
    for i := 1 to ZahlGlob do
    begin
      ZeileS := '       '+RightS('000'+IntToStr(AziFeld[i]),3)
                +'/'+RightS('00'+IntToStr(FalFeld[i]),2)
                +'  '+RightS('000'+IntTostr(SAziFeld[i]),3);
      if SFalFeld[i] > 0 then
        SFallenS := RightS('00'+IntToStr(SFalFeld[i]),2)
      else
      begin
       SFallenS := RightS('00'+IntToStr(abs(SFalFeld[i])),2);
       SFallenS := '-'+SFallenS;
      end;
      ListBoxDaten.Items.Add(ZeileS+'/'+SFallenS);
    end;
    {Diagramm plotten}
    Bo := Pi/180;
    ListBoxDateien.Clear;
    for i := 0 to High (DateinameS) do
      ListboxDateien.Items.Add (DateiNameS[i]);
    Bitmap := Tbitmap.Create;
    ImageNord.Picture.LoadfromFile (DirectS+'\'+'NordPfeil.bmp');
    Bitmap := Tbitmap.Create;
    Bitmap.Width     := Image1.Width;
    Bitmap.Height    := Image1.Height;
    Image1.Top       := ImTop;
    Image1.Left      := ImLeft;
    Image1.Height    := ImHeight;
    Image1.Width     := ImWidth;
    ImageNord.Top    := 3;
    ImageNord.Left   := 400;
    ImageNord.Width  := 18;
    ImageNord.Height := 36;
    PixelGrafik1.Enabled := true;
    Sigma1bis3.Enabled   := true;
    Linien1.Enabled      := true;
    with Image1 do
    begin
      Picture.Graphic := Bitmap;
      Xmitte := Image1.Width div 2;
      Ymitte := Image1.Height div 2 + ImYmitte;
      Radius := Image1.Width div 2 - ImRadius;
      Breite := Image1.Width;
      Hoehe  := Image1.Height;
    end;
    Diagramm (Image1.Canvas);
    with ImageNord do
    begin
      if not HTransparent then
      begin
        for i := 0 to Width-1 do
        begin
          for j := 0 to Height-1 do
          begin
            if Canvas.Pixels[i,j] = clWhite then
              Canvas.Pixels[i,j] := HintFarbe
            else Canvas.Pixels[i,j] := UmfangFarbe;
          end;
        end;
      end;
      Visible := true;
    end;
    if HolZwischen then
    begin
      Image1.Canvas.CopyMode := cmSrcCopy;
      if ClipBoard.HasFormat(CF_Bitmap) then
      begin
        Bitmap := TBitmap.Create;
        try
          Bitmap.Assign(ClipBoard);
          Image1.Canvas.Draw(0,0, Bitmap);
        finally
          Bitmap.free;
        end;
      end
      else MessageDlg(Tx(306), mtInformation, [mbOK],0); {Die Zwischenablage}
    end;
    Holzwischen := false;
  end
  else
  begin
    Rahmen1 := Rect(-WPlus,-NPlus,Breite+EPlus,Hoehe+SPlus);
    if HolPixS <> 'Clipboard' then Hoehe := Hoehe+50;
    Rahmen2 := Rect(0,0,Breite,Hoehe);
    NBild   := TBitmap.Create;
    NBild.Width  := Breite;
    NBild.Height := Hoehe;
    try
      if HolPixS = 'Clipboard' then
      begin
        FBild := TBitmap.Create;
        try
          FBild.Assign(Clipboard);
          NBild.Canvas.StretchDraw(Rahmen1,FBild);
          Image1.Canvas.Stretchdraw(Rahmen2,NBild);
        finally
          FBild.free;
        end;  
      end;
      if HolPixS = 'BMP' then
      begin
        FBild := TBitmap.Create;
        try
          FBild.LoadFromFile(CurrentFile);
          NBild.Canvas.StretchDraw(Rahmen1,FBild);
          Image1.Canvas.Stretchdraw(Rahmen2,NBild);
        finally
          FBild.Free;
        end;
      end;
      if HolPixS = 'GIF' then
      begin
        GBild := TGifImage.Create;
        try
          GBild.LoadFromFile(CurrentFile);
          NBild.Canvas.StretchDraw(Rahmen1,GBild);
          Image1.Canvas.Stretchdraw(Rahmen2,NBild);
        finally
          GBild.Free;
        end;
      end;
      if HolPixS = 'TIF' then
      begin
        FBild := TBitmap.Create;
        try
          LoadTiffFromFile(CurrentFile,FBild);
          NBild.Canvas.StretchDraw(Rahmen1,FBild);
          Image1.Canvas.Stretchdraw(Rahmen2,NBild);
        finally
          FBild.Free;
        end;
       end;
      if HolPixS = 'JPG' then
      begin
        JBild := TJpegImage.Create;
        try
          JBild.LoadFromFile(CurrentFile);
          NBild.Canvas.StretchDraw(Rahmen1,JBild);
          Image1.Canvas.Stretchdraw(Rahmen2,NBild);
        finally
          JBild.Free;
        end;
      end;
      if HolPixS = 'WMF' then
      begin
        MetaFile := TMetaFile.Create;
        try
          MetaFile.Enhanced := false;
          MetaFile.LoadFromFile(CurrentFile);
          NBild.Canvas.StretchDraw(Rahmen1,MetaFile);
          Image1.Canvas.Stretchdraw(Rahmen2,NBild);
        finally
          MetaFile.Free;
        end;
      end;
      if HolPixS = 'EMF' then
      begin
        MetaFile := TMetaFile.Create;
        try
          MetaFile.Enhanced := true;
          MetaFile.LoadFromFile(CurrentFile);
          NBild.Canvas.Stretchdraw(Rahmen1,MetaFile);
          Image1.Canvas.Stretchdraw(Rahmen2,NBild);
        finally
          MetaFile.Free;
        end;
      end;
      if HolPixS = 'PNG' then
      begin
        BildPNG := TPngObject.Create;
        try
          BildPNg.LoadFromFile(CurrentFile);
          NBild.Canvas.Stretchdraw(Rahmen1,BildPng);
          Image1.Canvas.Stretchdraw(Rahmen2,NBild);
        finally
          BildPng.Free;
        end;
      end;
    finally
      NBild.Free;
    end;
    Zahlloeschen(Image1.Canvas);
  end;  // PlusEin
  Kal := 10;
  for i := 1 to 311 do Zaehlen[i] := 0;
  Al2 (SFalFeld, Fgitter, FalFeld, AziFeld, SAziFeld,
       Agitter, Cmax, Cmin, Zaehlen);
       //  Agitter : Azimut der Gitterpunkte, Fgitter: Fallwert der Gitterpunkte
       // Zaehlen[0..311] = Besetzungsdichte pro Gitterpunkt
  M := 0;
  for i := 1 to 311 do
  begin
    if Zaehlen[i] > 0 then
    begin
      M := M + 1;
      Ag[m] := Agitter[i];
      Fg[m] := Fgitter[i];
      Zaehlen[m] := Zaehlen[i];
    end;
  end;
  NZahl := ZahlGlob;
  ZahlGlob := M;
  Countp (Kal, Zaehlen, Ag, Fg, Zi, Zl, Fortschritt,
          Wwzeiger);
  Maxim := 0;
  Minim := 1000;
  for i := 1 to 120 do
  begin
    for j := 1 to 30 do
    begin
      if Wwzeiger[i,j] > Maxim then Maxim := Wwzeiger[i,j];
      if Wwzeiger[i,j] < Minim then Minim := Wwzeiger[i,j];
    end;
  end;
  An := Minim + Maxim / Cmax;
  En := Maxim - Maxim / (2 * Cmax);
  Schritt := abs((En - An) / 4);
  Ann := An;
  if An > En then
  begin
    An := En;
    En := Ann;
  end;
  Zahliso := An - Schritt;
  with Image1.Canvas do
  begin
    Fa          := 0;
    Brush.Color := DiagrFarbe;
    repeat
      Zahliso := Zahliso + Schritt;
      P       := Zahliso;
      Fa      := Fa + 1;
      Farb    := IsoLinie[Fa];
      Linien  := IsoTyp[Fa];
      Pen.Width := StrichI[Fa];
      if Zahliso = En then P := P - P / 20;
      Plisli(P, Zi, Zl, Ba1zeiger, Ba2zeiger, Be1zeiger,
             Be2zeiger, Image1.Canvas, Farb, Linien, Muster,
             Wwzeiger, IsoZahl);
    until Zahliso >= En;
    moveto(Xmitte, Ymitte);
    Pen.Color := DiagrFarbe;
    lineto(Xmitte, Ymitte-200);
    Pen.Color := UmfangFarbe;
    Moveto (Xmitte, Ymitte-20);
    Lineto (Xmitte, Ymitte);
  end;
  ZahlGlob := NZahl;
  SpeedDrucken.Enabled   := true;
  Fortschritt.Visible    := false;
  ButtonS1.Visible       := false;
  ButtonS1.Visible       := false;
  ButtonS2.Visible       := false;
  ButtonS3.Visible       := false;
  Maus                   := false;
  For i := 1 to 3 do Sigma[i]    := false;
  for i := 1 to 311 do Laenge[i] := Zaehlen[i]/(2*ZahlGlob);
  Visible     := true;
  for i:= 0 to 121 do for j := 1 to 31 do Wwzeiger[i,j] := 0;
  Image2.Visible    := false;
  ImageNord.Visible := false;
  Image3.Visible    := false;
  if not HTransparent then
  begin
    with Image1.Canvas do
    begin
      Brush.Color := HintFarbe;
      Font.Color  := UmfangFarbe;
      Font.Size   := 16;
      Font.Name   := 'Times New Roman';
      Textout (10, 600, 'Maximum: '+RightS('   '+IntToStr(Cmax),3));
      Textout (10, 620, 'Minimum: '+RightS('   '+IntToStr(Cmin),3));;
    end;
    With Image3.Canvas do
    begin
      Pen.Color   := clBlack;    //DiagrFarbe;
      Brush.Color := clWhite;    //DiagrFarbe;
      Rectangle (0,0,Image3.Width, Image3.Height);
      Font.Size   := 14;
      Font.Name   := 'Times New Roman';
      Font.Color  := clBlack;
      Brush.Style := bsClear;
      Textout (10, 10, Tx(567)); {Isolinien:}
      Font.Color := IsoLinie[1];
      Textout (25,30, '20%');
      Font.Color := IsoLinie[2];
      Textout (25,50, '40%');
      Font.Color := IsoLinie[3];
      Textout (25,70, '60%');
      Font.Color := IsoLinie[4];
      Textout (25,90, '80%');
      Font.Color := IsoLinie[5];
      Textout (25,110, '95%');
    end;
    with image2 do
    begin
      Quadrat := Rect (0, 0, Clientwidth, ClientHeight);
      UntereH(Canvas, Quadrat);
    end;
    Image1.Canvas.Draw(Image1.Width-Image2.width-5,
                     Image1.Height-Image2.Height-5,
                     Image2.picture.graphic);
    Image1.Canvas.Draw(Image1.Width-Image3.Width,0,
                       Image3.picture.graphic);
  end;
  Image1.Canvas.Draw(Image1.Width div 2 - ImageNord.Width div 2,3,
                     ImageNord.Picture.Graphic);
  if DemoB then DemoText (Image1.Canvas,Image1.Width-270,15);
end;

procedure TForm29.ButtonzurueckClick(Sender: TObject);
var
  i       : word;
  Flaeche : TRect;
begin
  Fortschritt.Visible := false;
  ButtonStart.Enabled := true;
  ListBoxDateien.Clear;
  Flaeche := Rect(0,0,Clientwidth,ClientHeight);
  Loeschen (Image1.Canvas, Flaeche);
  Loeschen (Image2.Canvas, Flaeche);
  Loeschen (ImageNord.Canvas, Flaeche);
  if not WeiterF then
  begin
    AziFeld  := Nil;
    FalFeld  := Nil;
    SAziFeld := NIL;
    SFalFeld := NIL;
  end;
  for i:=0 to high(WWzeiger) do
    setlength(WWzeiger[i],0);
  setlength(WWzeiger,0);
  WwZeiger := NIL;
  Ba1Zeiger := Nil;
  Ba2Zeiger := Nil;
  Be1Zeiger := Nil;
  Be2Zeiger := Nil;
  CountZeiger := NIL;
  if EingabeS = 'ExcelD' then Form94.close;
  Form29.Close;
end;

procedure TForm29.ButtonbeendenClick(Sender: TObject);
var
  Flaeche : TRect;
  Typ     : TMsgDlgType;
  InfoS   : string;
  i       : word;
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
  AziFeld  := Nil;
  FalFeld  := Nil;
  Loeschen (Image1.Canvas, Flaeche);
  Loeschen (Image2.Canvas, Flaeche);
  Loeschen (ImageNord.Canvas, Flaeche);
  for i:=0 to high(WWzeiger) do
    setlength(WWzeiger[i],0);
  setlength(WWzeiger,0);
  WwZeiger := NIL;
  Ba1Zeiger := Nil;
  Ba2Zeiger := Nil;
  Be1Zeiger := Nil;
  Be2Zeiger := Nil;
  SAziFeld  := NIL;
  SFalFeld  := NIL;
  CountZeiger := NIL;
  ListBoxDateien.Clear;
  if eingabeS = 'ExcelD' then Form94.Close;
  Form29.Close;
  Form28.Close;
  Form27.Close;
  Form26.Close;
  SetCurrentDir(DirectS);
end;

procedure TForm29.IsoLinie1Click(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  Farbe := clWhite;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS := ColorToString (Farbe);
  Isolinie[1]     := StringToColor(FarbeS);
  KonfigZeileS[29] := '1st Contour Line           :,'+FarbeS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick (Sender);
end;

procedure TForm29.IsoLinie2Click(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  Farbe := clWhite;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS := ColorToString (Farbe);
  Isolinie[2]     := StringToColor(FarbeS);
  KonfigZeileS[30] := '2nd Contour Line           :,'+FarbeS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick (Sender);
end;

procedure TForm29.IsoLinie3Click(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  Farbe := clWhite;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS := ColorToString (Farbe);
  Isolinie[3]     := StringToColor(FarbeS);
  KonfigZeileS[31] := '3rd Contour Line           :,'+FarbeS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick (Sender);
end;

procedure TForm29.IsoLinie4Click(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  Farbe := clWhite;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS := ColorToString (Farbe);
  Isolinie[4]     := StringToColor(FarbeS);
  KonfigZeileS[32] := '4th Contour Line           :,'+FarbeS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick (Sender);
end;

procedure TForm29.Isolinie5Click(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  Farbe := clWhite;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS := ColorToString (Farbe);
  Isolinie[5]     := StringToColor(FarbeS);
  KonfigZeileS[33] := '5th Contour Line           :,'+FarbeS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick (Sender);
end;

procedure TForm29.FontClick(Sender: TObject);
begin
  WaehlFont(FontDialog1);
end;

procedure TForm29.SpeedFontClick(Sender: TObject);
begin
  FontClick(Sender);
end;

procedure TForm29.BGroesseClick(Sender: TObject);
begin
  PanelGroesse.Visible := true;
  CheckBoxBild.State   := cbUnchecked;
  MaskEditBBreite.Text := IntTostr(BBreiteSt);
  MaskEditBHoehe.Text  := IntToStr(BHoeheSt);
end;

procedure TForm29.SpeedBGroesseClick(Sender: TObject);
begin
  BGroesseClick(Sender);
end;

procedure TForm29.MaskEditBBreiteKeyPress(Sender: TObject; var Key: Char);
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

procedure TForm29.MaskEditBHoeheKeyPress(Sender: TObject; var Key: Char);
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

procedure TForm29.CheckBoxBildClick(Sender: TObject);
begin
  PanelGroesse.Visible := false;
end;

procedure TForm29.kopieren1Click(Sender: TObject);
begin
  ClipBoard.Assign (Image1.Picture);
end;

procedure TForm29.transparentClick(Sender: TObject);
begin
  Farbe                 := clWhite;
  HTransparent          := true;
  ListBoxSpeichern.Clear;
  ListBoxSpeichern.Items.Add (Tx(1613));
  ButtonStartClick(Sender);
end;

procedure TForm29.SpeedTransparentClick(Sender: TObject);
begin
  transparentClick(Sender);
end;

procedure TForm29.HFarbeClick(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  Farbe        := clWhite;
  HTransparent := false;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS    := ColorToString (Farbe);
  HintFarbe := StringToColor(FarbeS);
  KonfigZeileS[3] := '  Background Colour        :,'+FarbeS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  Speichern.Enabled := true;
  ButtonStartClick (Sender);
end;

procedure TForm29.SpeedHFarbeClick(Sender: TObject);
begin
  HFarbeClick(Sender);
end;

procedure TForm29.SpeichernClick(Sender: TObject);
begin
  PanelSpeichern.Visible := true;
end;

procedure TForm29.SpeedSpeichernClick(Sender: TObject);
begin
  SpeichernClick(Sender);
end;

procedure TForm29.ausZwischenablageClick(Sender: TObject);
begin
  Zoom.Enabled                := true;
  SpeedZoom.Enabled           := true;
  Zwischen                    := true;
  Drueck.Enabled              := true;
  SpeedRueck.Enabled          := true;
  ausDatei.Enabled            := false;
  AusZwischenablage.Enabled   := false;
  SpeedLoad.Enabled           := false;
  SpeedZwischenablage.Enabled := false;
  DBitmap := Tbitmap.Create;
  DBitmap.Assign(Image1.Picture);
  FarbePeripherie1.Enabled  := false;
  FarbeDiagramm1.Enabled    := false;
  Hintergrund.Enabled       := false;
  HolZwischen := true;
  ButtonStartClick(Sender);
end;

procedure TForm29.SpeedZwischenablageClick(Sender: TObject);
begin
  AusZwischenablageClick(Sender);
end;

procedure TForm29.ausDateiClick(Sender: TObject);
begin
  Zoom.Enabled                := true;
  SpeedZoom.Enabled           := true;
  Drueck.Enabled              := true;
  SpeedRueck.Enabled          := true;
  ausDatei.Enabled            := false;
  AusZwischenablage.Enabled   := false;
  SpeedLoad.Enabled           := false;
  SpeedZwischenablage.Enabled := false;
  PanelLoad.Visible := true;
  DBitmap := Tbitmap.Create;
  DBitmap.Assign(Image1.Picture);
end;

procedure TForm29.SpeedLoadClick(Sender: TObject);
begin
  ausDateiClick(Sender);
end;

procedure TForm29.ZoomClick(Sender: TObject);
begin
  PanelDehnen.Visible := true;
  PlusEin             := true;
  if ClipBoard.HasFormat(CF_Bitmap) then
    HolPixS := 'Clipboard';
  ButtonStartClick(Sender);
end;

procedure TForm29.SpeedZoomClick(Sender: TObject);
begin
  ZoomClick(Sender);
end;

procedure TForm29.DrueckClick(Sender: TObject);
begin
  Zoom.Enabled                := false;
  SpeedZoom.Enabled           := false;
  AusDatei.enabled            := true;
  SpeedLoad.Enabled           := true;
  if not ClipBoard.HasFormat(CF_Bitmap) then
  begin
    ausZwischenablage.Enabled   := false;
    SpeedZwischenablage.Enabled := false;
  end
  else
  begin
    ausZwischenablage.Enabled   := true;
    SpeedZwischenablage.Enabled := true;
  end;
  Image1.Canvas.Draw (0,0,DBitmap);
  DBitmap.free;
  Drueck.Enabled     := false;
  SpeedRueck.Enabled := false;
end;

procedure TForm29.SpeedRueckClick(Sender: TObject);
begin
  DrueckClick(Sender);
end;

procedure TForm29.ButtonSabbrechenClick(Sender: TObject);
begin
  PanelSpeichern.Visible := false;
end;

procedure TForm29.ListBoxSpeichernClick(Sender: TObject);
var
  i : byte;
begin
  for i := 0 to ListBoxSpeichern.Items.Count-1 do
  begin
    if ListBoxSpeichern.Selected[i] then
    begin
      if i < 7 then  GrafikSpeichern (Image1, ListBoxSpeichern, Ratio,
                                      SavePictureDialog1, SaveDialog1);
      if i = 7 then speichernPLTClick(Sender);
      if i = 8 then speichernDXFClick(Sender);
    end;
  end;
  PanelSpeichern.Visible := false;
end;

procedure TForm29.speichernPLTClick(Sender: TObject);
var
  i      : byte;
  Datei  : Textfile;
begin
  PanelDaten.Visible       := false;
  GroupBoxPlotten.Visible  := true;
  FarbePeripherie1.Enabled := true;
  GeraetS                  := 'HPGL';
  KonfigZeileS[53] := 'Paper Plot                 :,HPGL';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
end;

procedure TForm29.speichernDXFClick(Sender: TObject);
var
  i      : byte;
  Datei  : Textfile;
begin
  PanelDaten.Visible          := false;
  GroupBoxPlotten.Visible     := true;
  FarbePeripherie1.Enabled    := true;
  GeraetS                     := 'DXF';
  KonfigZeileS[53] := 'Paper Plot                 :,DXF';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  FarbePeripherie1.Enabled    := true;
end;

procedure TForm29.ButtonLabbrechenClick(Sender: TObject);
begin
  PanelLoad.Visible := false;
end;

procedure TForm29.DEinrichtenClick(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TForm29.CalibrierenClick(Sender: TObject);
begin
  Calib                   := true;
  FaktorAlt               := Faktor;
  Faktor                  := 1;
  GeraetS                 := 'Plotter';
  PanelDaten.Visible      := false;
  GroupBoxPlotten.Visible := true;
  PanelKaliber.Visible    := true;
end;

procedure TForm29.ButtonCalibEndeClick(Sender: TObject);
begin
  Calib := false;
  Faktor := FaktorAlt;
  PanelKaliber.Visible := false;
end;

procedure TForm29.MaskEditBrEKeyPress(Sender: TObject; var Key: Char);
var
  EbreiteS : string;
begin
  if key = chr(13) then
  begin
    EbreiteS := MaskEditBrE.Text;
    LeerLoeschen (EbreiteS);
    if EbreiteS = '' then exit
    else
    begin
      Ebreite := StrToInt(EbreiteS);
      MaskEditBrD.SetFocus;
    end;
  end;
end;

procedure TForm29.MaskEditBrDKeyPress(Sender: TObject; var Key: Char);
var
  FaktorS  : string;
  Datei    : TextFile;
  i        : word;
  DbreiteS : string;
  EbreiteS : string;
begin
  if key = chr(13) then
  begin
    DbreiteS := MaskEditBrD.Text;
    LeerLoeschen (DbreiteS);
    if DbreiteS = '' then exit
    else
    begin
      Dbreite := round(StrToInt(DbreiteS)/Faktor);
      Faktor  := Ebreite/Dbreite;
      FaktorS := FloatToStrF(Faktor,ffFixed,7,2);
      KonfigZeileS[85] := 'Calibration factor for plot:,'+FaktorS;
      assignFile(Datei,FabricS+'\'+'Fabric.ini');
      rewrite (Datei);
      for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
      closefile (Datei);
      PanelKaliber.Visible := false;
    end;
  end;
end;

procedure TForm29.DruckenClick(Sender: TObject);
var
  i      : byte;
  Datei  : Textfile;
begin

  DiagrFarbe               := clWhite;
  PanelDaten.Visible       := false;
  FarbePeripherie1.Enabled := true;
  GeraetS                  := 'Plotter';
  KonfigZeileS[53] := 'Paper Plot                 :,Plotter';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  GroupBoxPlotten.Visible := true;
end;

procedure TForm29.ButtonNPlusClick(Sender: TObject);
begin
  NPlus := NPlus +1;
  ButtonStartClick(Sender);
end;

procedure TForm29.ButtonNMinusClick(Sender: TObject);
begin
  NPlus := NPlus -1;
  ButtonStartClick(Sender);
end;

procedure TForm29.ButtonEMinusClick(Sender: TObject);
begin
  EPlus := EPlus -1;
  ButtonStartClick(Sender);
end;

procedure TForm29.ButtonEPlusClick(Sender: TObject);
begin
  EPlus := EPlus +1;
  ButtonStartClick(Sender);
end;

procedure TForm29.ButtonSMinusClick(Sender: TObject);
begin
  SPlus := SPlus -1;
  ButtonStartClick(Sender);
end;

procedure TForm29.ButtonSPlusClick(Sender: TObject);
begin
  SPlus := SPlus +1;
  ButtonStartClick(Sender);
end;

procedure TForm29.ButtonWMinusClick(Sender: TObject);
begin
  WPlus := WPlus -1;
  ButtonStartClick(Sender);
end;

procedure TForm29.ButtonWplusClick(Sender: TObject);
begin
  WPlus := WPlus +1;
  ButtonStartClick(Sender);
end;


procedure TForm29.ButtonHokClick(Sender: TObject);
begin
  NPlus := 0;
  EPlus := 0;
  SPlus := 0;
  WPlus := 0;
  PanelDehnen.Visible  := false;
  PlusEin := false;
end;

procedure TForm29.ListBoxLoadClick(Sender: TObject);
var
  i      : byte;
begin
  for i := 0 to ListBoxLoad.Items.Count-1 do
  begin
    if ListBoxLoad.Selected[i] then
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
  PanelLoad.Visible := false;
  PlusEin           := true;
  ButtonStartClick(Sender);
end;

procedure TForm29.SpeedPlotterClick(Sender: TObject);
begin
  DruckenClick(Sender);
end;

procedure TForm29.SpeedPLTClick(Sender: TObject);
begin
  speichernPLTClick(Sender);
end;

procedure TForm29.SpeedDXFClick(Sender: TObject);
begin
  speichernDXFClick(Sender);
end;

procedure TForm29.FarbePeripherie1Click(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  Farbe := clWhite;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS          := ColorToString (Farbe);
  UmfangFarbe     := StringToColor(FarbeS);
  KonfigZeileS[5] := '  Periphery Colour         :,'+FarbeS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick (Sender);
end;

procedure TForm29.FarbeDiagramm1Click(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  Farbe := clWhite;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS          := ColorToString (Farbe);
  DiagrFarbe      := StringToColor(FarbeS);
  KonfigZeileS[6] := '  Diagram Colour           :,'+FarbeS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick (Sender);
end;

procedure TForm29.FarbeRahmenClick(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  Farbe := clWhite;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS          := ColorToString (Farbe);
  RahmenFarbe     := StringToColor(FarbeS);
  KonfigZeileS[4] := '  Frame Colour             :,'+FarbeS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick (Sender);
end;

procedure TForm29.SpeedPeripherieClick(Sender: TObject);
begin
  FarbePeripherie1Click(Sender);
end;

procedure TForm29.SpeedDiagrammClick(Sender: TObject);
begin
  FarbeDiagramm1Click(Sender);
end;

procedure TForm29.SpeedRahmenClick(Sender: TObject);
begin
  FarbeRahmenClick(Sender);
end;

procedure TForm29.PloterstellenClick(Sender: TObject);
var
  RadiusS   : string[4];
  XKoordS   : string[4];
  YKoordS   : string[4];
  Co        : integer;
  Rmax      : real;
  RmaxS     : string[15];
  Xmax      : real;
  Ymax      : real;
  i         : word;
  Zl,Zi     : array[0..10] of real;
  IsolinS   : string;
  An, En    : real;
  Schritt   : real;
  Ann, ip   : real;
  Pp        : real;
  IsoZeil   : word;
  IsoLin    : real;
  Datei     : TextFile;
  XS, YS    : string;
  WS, HS    : string;
  M, NZahl  : word;
  j         : word;
  Typ       : TMsgDlgType;
  X, Y      : word;
  PisS      : string;
  Groesse   : word;
begin
  if DarstellungN = 4 then PanelWarten.Visible := true
  else
  begin
    setlength (Xver1Feld, 10000);
    setlength (Xver2Feld, 10000);
    setlength (Yver1Feld, 10000);
    setlength (Yver2Feld, 10000);
  end;
  if GeraetS = 'no' then exit;
  RadiusS := MaskEditRadius.Text;
  XKoordS := MaskEditX.Text;
  YKoordS := MaskEditY.Text;
  KonfigZeileS[57] := 'Radius [mm]                :'+','+RadiusS;
  KonfigZeileS[58] := 'X-Coordinate of Centre [mm]:'+','+XKoordS;
  KonfigZeileS[59] := 'Y-Coordinate of Centre [mm]:'+','+YKoordS;
  assignFile(Datei,FabricS+'\'+'Gefuege7.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  HpRadius  := StrtoInt(RadiusS)/10;
  XKoord    := StrtoInt(XKoordS)/10;
  YKoord    := StrtoInt(YKoordS)/10;
  Typ := mtError;
  RmaxS := '(max. 100mm)';
  Rmax  := 10.0;
  Xmax := 29.2 - Rmax;
  Ymax := 20.5 - Rmax;
  if HpRadius > Rmax then
  begin
    if DlgMessage (Typ, Tx(37), Tx(308)+RMaxS,3) = 4 then
    begin
      MaskEditRadius.Clear;
      MaskEditRadius.SetFocus;
      exit;
    end;
    if XKoord > Xmax then
    begin
      if DlgMessage (Typ, Tx(37), Tx(309)+' max. '
         +FloattoStr(Xmax),3) = 4 then
      begin
        MaskEditX.Clear;
        MaskEditX.SetFocus;
        exit;
      end;
    end;
    if YKoord > Ymax then
    begin
      if DlgMessage (Typ, Tx(37), Tx(310)+' max. '
         +FloattoStr(Ymax),3) = 4 then
      begin
        MaskEditY.Clear;
        MaskEditY.SetFocus;
        exit;
      end;
    end;
    Kreuz := true;
  end;
  {Beginn des Plottens}
  Plotter (Canvas, SaveDialog1);
  if GeraetS <> 'Plotter' then
  begin
    if DarstellungS = 'Kalotte' then
    begin
      for i := 1 to 311 do Zaehlen[i] := 0;
      Al2 (SFalFeld, Fgitter, FalFeld, AziFeld, SAziFeld,
      Agitter, Cmax, Cmin, Zaehlen);
      //  Agitter : Azimut der Gitterpunkte, Fgitter: Fallwert der Gitterpunkte
      // Zaehlen[0..311] = Besetzungsdichte pro Gitterpunkt
      HPPeriph (Canvas, Kreuz);
      M := 0;
      for i := 1 to 311 do
      begin
        if Zaehlen[i] > 0 then
        begin
          M := M + 1;
          Ag[m] := Agitter[i];
          Fg[m] := Fgitter[i];
          Zaehlen[m] := Zaehlen[i];
        end;
      end;
      NZahl := ZahlGlob;
      ZahlGlob := M;
      Countp (10, Zaehlen, Ag, Fg, Zi, Zl, Fortschritt,
              Wwzeiger);
      Maxim := 0;
      Minim := 1000;
      for i := 1 to 120 do
      begin
        for j := 1 to 30 do
        begin
          if Wwzeiger[i,j] > Maxim then Maxim := Wwzeiger[i,j];
          if Wwzeiger[i,j] < Minim then Minim := Wwzeiger[i,j];
        end;
      end;
      Zaehler := 1;
      i  := 0;
      An := Minim + Maxim / Cmax;
      En := Maxim - Maxim / (2 * Cmax);
      Schritt := abs((En - An) / 4);
      Ann := An;
      if An > En then
      begin
        An := En;
        En := Ann;
      end;
      ip := An - Schritt;
      repeat
        ip  := ip + Schritt;
        Pp  := ip;
        i   := i + 1;
        if ip = En then Pp := Pp - Pp / 20;
        Farben (Canvas, Isolinie[i]);
        str (20*i,IsolinS);
        Isozeil := 200 * i;
        if IsolinS = '100' then IsolinS := '95';
        val (IsolinS,Isolin,Co);
        if Isolin > 100 then break;
        Legende (Canvas, '   '+IsolinS,Isozeil);
        HPPlisli (Canvas, Pp,Zi,Zl,Ba1zeiger,Ba2zeiger,
                  Be1zeiger, Be2zeiger, Wwzeiger);
      until ip >= En;
      Farben (Canvas, clBlack);
      Hpmaxmin (Cmax,Cmin);
      XS := Inttostr(round((Xkoord-HPRadius) * 400));
      YS := IntToStr(round((YKoord-HpRadius) * 400));
      WS := FloatToStr(HPRadius/20);
      HS := FloatToStr(HPRadius/16);
      HPEnde (XS, YS, WS, HS);
      Ba1Zeiger := Nil;
      Ba2Zeiger := Nil;
      Be1Zeiger := Nil;
      Be2Zeiger := NIL;
      Xver1Feld := Nil;
      Xver2Feld := Nil;
      Yver1Feld := Nil;
      Yver2Feld := Nil;
    end;
    if DarstellungN = 4 then
    begin
      Konturen (Image1.Canvas, FuellenS, Fortschritt);
      XS := Inttostr(round((Xkoord-HPRadius/1.5) * 400));
      YS := IntToStr(round((YKoord-HpRadius/4) * 400));
      WS := FloatToStr(HPRadius/10);
      HS := FloatToStr(HPRadius/8);
      Farben (Canvas, clBlack);
      HpPeriph (Canvas, Kreuz);
      Hpmaxmin (Cmax,Cmin);
      for i := 1 to 4 do
        Legende (Canvas, IsolinS,i*200);
      HpEnde (XS, YS, WS, HS);
    end;
    GroupBoxPlotten.Visible := false;
    LabelPoly.Visible       := false;
    LabelWarten.Visible     := false;
    showmessage(Tx(435));
  end;
  if GeraetS = 'Plotter' then
  begin
    Typ := mtConfirmation;
    If DarstellungN = 4 then
      if DlgMessage (Typ,Tx(1528),Tx(1527),1) = 6 then
        FuellenS := 'Ja' else FuellenS := 'Nein';
    SetMapMode (Printer.Handle, MM_Himetric);
    with Printer do
    begin
      BeginDoc;
      Canvas.Pen.Width := DStrich;
      if DarstellungS = 'Kalotte' then
      begin
        for i := 1 to 311 do Zaehlen[i] := 0;
        Al2 (SFalFeld, Fgitter, FalFeld, AziFeld, SAziFeld,
        Agitter, Cmax, Cmin, Zaehlen);
        //  Agitter : Azimut der Gitterpunkte, Fgitter: Fallwert der Gitterpunkte
        // Zaehlen[0..311] = Besetzungsdichte pro Gitterpunkt
        HPPeriph (Canvas, Kreuz);
        M := 0;
        for i := 1 to 311 do
        begin
          if Zaehlen[i] > 0 then
          begin
            M := M + 1;
            Ag[m] := Agitter[i];
            Fg[m] := Fgitter[i];
            Zaehlen[m] := Zaehlen[i];
          end;
        end;
        NZahl := ZahlGlob;
        ZahlGlob := M;
        Countp (10, Zaehlen, Ag, Fg, Zi, Zl, Fortschritt,
                Wwzeiger);
        Maxim := 0;
        Minim := 1000;
        for i := 1 to 120 do
        begin
          for j := 1 to 30 do
          begin
            if Wwzeiger[i,j] > Maxim then Maxim := Wwzeiger[i,j];
            if Wwzeiger[i,j] < Minim then Minim := Wwzeiger[i,j];
          end;
        end;
        i  := 0;
        An := Minim + Maxim / Cmax;
        En := Maxim - Maxim / (2 * Cmax);
        Schritt := abs((En - An) / 4);
        Ann := An;
        if An > En then
        begin
          An := En;
          En := Ann;
        end;
        ip := An - Schritt;
        repeat
          ip  := ip + Schritt;
          Pp  := ip;
          i   := i + 1;
          if ip = En then Pp := Pp - Pp / 20;
          Farben (Canvas, Isolinie[i]);
          str (20*i,IsolinS);
          Isozeil := 200 * i;
          if IsolinS = '100' then IsolinS := '95';
          val (IsolinS,Isolin,Co);
          if Isolin > 100 then break;
          Canvas.Font.Color := Isolinie[i];
          Farben(Canvas, Isolinie[i]);
          Legende (Canvas, '   '+IsolinS,Isozeil);
          HPPlisli (Canvas, Pp,Zi,Zl,Ba1zeiger,Ba2zeiger,
                    Be1zeiger, Be2zeiger, Wwzeiger);
        until ip >= En;
        Hpmaxmin (Cmax,Cmin);
        Ba1Zeiger := Nil;
        Ba2Zeiger := Nil;
        Be1Zeiger := Nil;
        Be2Zeiger := NIL;
        Xver1Feld := Nil;
        Xver2Feld := Nil;
        Yver1Feld := Nil;
        Yver2Feld := Nil;
      end;
      if DarstellungN = 4 then
      begin
        Konturen (Image1.Canvas, FuellenS, Fortschritt);
        XS := Inttostr(round((Xkoord-HPRadius/1.5) * 400));
        YS := IntToStr(round((YKoord-HpRadius/4) * 400));
        WS := FloatToStr(HPRadius/10);
        HS := FloatToStr(HPRadius/8);
        Farben (Canvas, clBlack);
        HpPeriph (Canvas, Kreuz);
        Hpmaxmin (Cmax,Cmin);
        for i := 1 to 5 do
        begin
        Farben (Canvas, Isolinie[i]);
          str (20*i,IsolinS);
          Isozeil := 200 * i;
          if IsolinS = '100' then IsolinS := '95';
          val (IsolinS,Isolin,Co);
          if Isolin > 100 then break;
          Canvas.Font.Color := Isolinie[i];
          Farben(Canvas, Isolinie[i]);
          Legende (Canvas, IsolinS,i*200);
        end;
        HpEnde (XS, YS, WS, HS);
      end;
      if DemoB then
      begin
        X := round((Xkoord-HpRadius)*100*Faktor);
        Y := round((Ykoord+HpRadius)*100*Faktor);
        Groesse := round(HpRadius*2);
        Canvas.Brush.Color := clWhite;
        Canvas.Font.Size   := Groesse;
        Canvas.Font.Color  := clBlack;
        Canvas.Textout (X,Y,'Demo-Version');
      end;
      EndDoc;
    end;
    GroupBoxPlotten.Visible := false;
    PanelWarten.Visible := false;
    if not Calib then showmessage(Tx(435));
    PanelSpeichern.Visible := false;
  end;
  PanelDaten.Visible := true;
  if Calib then
  begin
    MaskEditBrE.Enabled    := true;
    MaskEditBrD.Enabled    := true;
    MaskEditBrE.SetFocus;
  end;
  Calib              := false;
end;

procedure TForm29.ButtonPlotEndeClick(Sender: TObject);
begin
  GroupBoxPlotten.Visible := false;
  PanelDaten.Visible      := true;
end;

procedure TForm29.DruckereinrichtenClick(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TForm29.SpeedEinrichtenClick(Sender: TObject);
begin
  DruckerEinrichtenClick(Sender);
end;

procedure TForm29.SpeedDruckenClick(Sender: TObject);
begin
  drucken1Click(Sender);
end;

procedure TForm29.drucken1Click(Sender: TObject);
var
  SchriftS : string[5];
  i        : byte;
begin
  Paneldrucken.Visible         := true;
  GroupBoxDrucken.Visible      := true;
  MaskEditLaenge.EditMask      := '99;0; ';
  MaskEditLinks.EditMask       := '99;0; ';
  MaskEditOben.EditMask        := '99;0; ';
  MaskEditLaenge.Text          := InttoStr(BLaenge);
  MaskEditLinks.Text           := InttoStr(BLinks);
  MaskEditOben.Text            := InttoStr(BOben);
  GroupBoxdrucken.Caption      := Tx(880);
  LabelLaenge.Caption          := Tx(1764);
  LabelEcke.Caption            := Tx(1274);
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
  i                            := 3;
  repeat
    i := i + 1;
    str(i, SchriftS);
    ListBoxSchrift.Items.Add (SchriftS);
  until i = 40;
end;

procedure TForm29.MaskEditUnterschriftKeyPress(Sender: TObject;
var
  Key: Char);
begin
  if Key = chr(13) then
  begin
    TextS := MaskEditUnterschrift.Text;
    Gedrueckt[1] := true;
    if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
       and (Gedrueckt[3] = true) then
       ButtonDrucken.Enabled := true;
  end;
end;

procedure TForm29.RadioButtonLinksClick(Sender: TObject);
begin
  BuendigS := 'Links';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    ButtonDrucken.Enabled := true;
end;

procedure TForm29.RadioButtonZentriertClick(Sender: TObject);
begin
  BuendigS := 'Zentriert';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    ButtonDrucken.Enabled := true;
end;

procedure TForm29.RadioButtonRechtsClick(Sender: TObject);
begin
  BuendigS := 'Rechts';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    ButtonDrucken.Enabled := true;
end;

procedure TForm29.ListBoxSchriftClick(Sender: TObject);
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
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    ButtonDrucken.Enabled := true;
end;

procedure TForm29.ButtonDruckenClick(Sender: TObject);
var
  Bitmap  : TBitmap;
  Fenster : TRect;
  LRand   : word;
  ORand   : word;
  PLaenge : word;
  Hoehe   : word;
  Anfang  : word;
  Links   : word;
  LaengeB : word;
begin
  Links   := StrToInt(MaskEditLinks.Text);
  LRand   := round(Links*Printer.PageWidth/100);
  Oben    := StrToInt(MaskEditOben.Text);
  ORand   := round(Oben*Printer.PageHeight/100);
  LaengeB := StrToInt(MaskEditLaenge.Text);
  PLaenge := round(LaengeB*Printer.Pagewidth/100);
  Hoehe   := round(PLaenge*Image1.Height/Image1.Width);;
  with Fenster do
  begin
    Left   := LRand;
    Top    := ORand;
    Right  := LRand + PLaenge;
    Bottom := ORand + Hoehe;
  end;
  Bitmap:=TBitmap.Create;
  try
    Bitmap.Assign(Image1.picture.graphic);
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
  RadioButtonLinks.Visible     := false;
  RadioButtonRechts.Visible    := false;
  RadioButtonzentriert.Visible := false;
end;

procedure TForm29.ButtonAbbrechenClick(Sender: TObject);
begin
  Paneldrucken.Visible         := false;
end;

procedure TForm29.TextschreibenClick(Sender: TObject);
begin
  PanelText.Visible := true;
  MaskEditText.SetFocus;
  BText := true;
  MaskEditText.Clear;
  PanelPlazieren.Visible := false;
end;

procedure TForm29.SpeedTextClick(Sender: TObject);
begin
  TextschreibenClick(Sender);
end;

procedure TForm29.MaskEditTextKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(13) then
  begin
    TeS := MaskEditText.Text;
    PanelPlazieren.Visible := true;
  end;
end;

procedure TForm29.Image1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if BText then
  begin
    inc (texti);
    TextBitmap[texti] := Tbitmap.Create;
    TextBitmap[texti].Assign(Image1.Picture);
    with Image1.Canvas do
    begin
      Brush.Color := DiagrFarbe;
      Font.Name   := DSchrift;
      Font.Size   := DGroesse;
      Font.Color  := DFarbe;
      Font.Style  := DStyle;
      Image1.Canvas.TextOut(x,y,TeS);
      PanelText.Visible := false;
      BText := false;
    end;
    Trueck.Enabled      := true;
    SpeedUnText.Enabled := true;
  end;
end;

procedure TForm29.TrueckClick(Sender: TObject);
begin
  Image1.Canvas.Draw (0,0,TextBitmap[texti]);
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

procedure TForm29.SpeedUnTextClick(Sender: TObject);
begin
  TrueckClick(Sender);
end;

procedure TForm29.DspeichernClick(Sender: TObject);
begin
   if CurrentFile <> '' then Stressein(CurrentFile, ZahlGlob,
      AziFeld, SAziFeld, FalFeld, SFalFeld)
   else DspeichernUnterClick(Sender);
end;

procedure TForm29.DspeichernUnterClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := ExtenS;
  SaveDialog1.Filter     := 'Displacement Data (*.sli)|*.SLI';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    Stressein(CurrentFile, ZahlGlob, AziFeld, SAziFeld, FalFeld,
              SFalFeld);
  end;
end;

procedure TForm29.inStufenClick(Sender: TObject);
var
  Datei : TextFile;
  i     : word;
  Rekt  : TRect;
begin
  Rekt := Rect(0,0,Image3.Width,Image3.Height);
  Loeschen(Image3.Canvas,Rekt);
  DarstellungN             := 4;
  DarStellungS             := 'Steps';
  GroupBoxPlotten.Visible  := false;
  Grafik1.Enabled          := true;
  HPPlotter1.Enabled       := false;
  ListBoxSpeichern.Clear;
  for i := 1 to 7 do
    ListBoxSpeichern.Items.Add (Tx(1611+i));
  KonfigZeileS[88] := 'Type of Diagram            :,Steps';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  DichteCos (Image1.Canvas, Ag, Fg, Laenge, Cmax, Cmin, HLSmin, HLSmax,
             IsoX, GrauSkala, Fortschritt);
  ButtonS1.Visible       := false;
  ButtonS2.Visible       := false;
  ButtonS3.Visible       := false;
  Maus                   := false;
  //PanelPoly.Visible := true;
  For i := 1 to 3 do Sigma[i] := false;
  with Image1.Canvas do
  begin
    Pen.Width   := 3;
    Brush.Style := bsClear;
    Pen.Color   := HintFarbe;
    Pen.Width   := 1;
    ellipse(Xmitte-Radius+2,YMitte-Radius+2,XMitte+Radius-2,YMitte+Radius-2);
    ellipse(Xmitte-Radius+1,YMitte-Radius+1,XMitte+Radius-1,YMitte+Radius-1);
    ellipse(Xmitte-Radius,YMitte-Radius,XMitte+Radius,YMitte+Radius);
    Pen.Color := UmfangFarbe;
    ellipse(Xmitte-Radius+2, YMitte-Radius+2, Xmitte+Radius-2, Ymitte+Radius-2);
  end;
end;

procedure TForm29.GrauwerteClick(Sender: TObject);
begin
  GrauSkala := true;
  FarbSkala := false;
  Isolinie1.Enabled := false;
  Isolinie2.Enabled := false;
  Isolinie3.Enabled := false;
  Isolinie4.Enabled := false;
  Isolinie5.Enabled := false;
  IsoSpeichern[1]   := Isolinie[1];
  IsoSpeichern[2]   := Isolinie[2];
  IsoSpeichern[3]   := Isolinie[3];
  IsoSpeichern[4]   := Isolinie[4];
  IsoSpeichern[5]   := Isolinie[5];
  Isolinie[1] := RGB (200, 200, 200);
  Isolinie[2] := RGB (150, 150, 150);
  Isolinie[3] := RGB (100, 100, 100);
  Isolinie[4] := RGB ( 50,  50,  50);
  Isolinie[5] := RGB (  0,   0,   0);
  if DarstellungS = 'Kalotte' then ZaehlkalotteClick(Sender);
  if DarstellungS = 'Steps'   then inStufenClick(Sender);
  if DarstellungS = 'floating'then FliessendClick(Sender);
end;

procedure TForm29.FarbenIClick(Sender: TObject);
begin
  FarbSkala := true;
  GrauSkala := false;
  Isolinie1.Enabled := true;
  Isolinie2.Enabled := true;
  Isolinie3.Enabled := true;
  Isolinie4.Enabled := true;
  Isolinie5.Enabled := true;
  Isolinie[1]       := IsoSpeichern[1];
  Isolinie[2]       := IsoSpeichern[2];
  Isolinie[3]       := IsoSpeichern[3];
  Isolinie[4]       := IsoSpeichern[4];
  Isolinie[5]       := IsoSpeichern[5];
  if DarstellungS = 'Kalotte' then ZaehlkalotteClick(Sender);
  if DarstellungS = 'Steps'   then inStufenClick(Sender);
  if DarstellungS = 'floating'then FliessendClick(Sender);
end;

procedure TForm29.SpeedGrauClick(Sender: TObject);
begin
  GrauwerteClick(Sender);
end;

procedure TForm29.SpeedIsoFarbeClick(Sender: TObject);
begin
  FarbenIClick(Sender);
end;

procedure TForm29.ZaehlKalotteClick(Sender: TObject);
var
  Datei : TextFile;
  i     : word;
begin
  DarstellungN             := 1;
  DarstellungS             := 'Kalotte';
  ausZwischenablage.Enabled:= true;
  ausDatei.Enabled         := true;
  HPPlotter1.Enabled       := true;
  FarbePeripherie1.Enabled := true;
  FarbeDiagramm1.Enabled   := true;
  Hintergrund.Enabled      := true;
  FarbeRahmen.Enabled      := true;
  ListBoxSpeichern.Clear;
  for i := 1 to 9 do
    ListBoxSpeichern.Items.Add (Tx(1611+i));
  KonfigZeileS[88] := 'Type of Diagram            :,Kalotte';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick (Sender);
end;

procedure TForm29.FliessendClick(Sender: TObject);
var
  i, k       : word;
  Datei      : TextFile;
  Rot, Gruen : integer;
  Blau       : integer;
begin
  PanelDaten.Visible       := false;
  DarstellungS             := 'floating';
  GroupBoxPlotten.Visible  := false;
  PanelHLS.Visible         := true;
  Isolinien1.enabled       := false;
  Grafik1.Enabled          := true;
  HPPlotter1.Enabled       := false;
  FarbeDiagramm1.Enabled   := false;
  FarbeRahmen.Enabled      := false;
  ListBoxSpeichern.Clear;
  for i := 1 to 7 do
    ListBoxSpeichern.Items.Add (Tx(1611+i));
  KonfigZeileS[88] := 'Type of Diagram            :,floating';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  for i := 0 to 360 do
  begin
    if not GrauSkala then HLSzuRGB(i, 0.5, 1.0, Rot, Gruen, Blau)
    else
    begin
      Rot   := 255 - round(255-255*i/360);
      if Rot < 0 then Rot := 0;
      Gruen := Rot;
      Blau  := Rot;
    end;
    for k := 1 to ImageHLS.width do
    begin
      ImageHLS.Canvas.Pixels[k,ImageHLS.Height-round(i*ImageHLS.Height/360)] :=
      RGB(Rot, Gruen, Blau);
    end;
  end;
  ButtonPlotten.Visible  := false;
  ButtonS1.Visible       := false;
  ButtonS1.Visible       := false;
  ButtonS2.Visible       := false;
  ButtonS3.Visible       := false;
  Maus                   := false;
  For i := 1 to 3 do Sigma[i] := false;
end;

procedure TForm29.SpeedKalotteClick(Sender: TObject);
begin
  ZaehlKalotteClick(Sender);
end;

procedure TForm29.SpeedStufenClick(Sender: TObject);
begin
  inStufenClick(Sender);
end;

procedure TForm29.SpeedFliessendClick(Sender: TObject);
begin
  FliessendClick(Sender);
end;

procedure TForm29.ImageHLSMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  i, k       : word;
  Rot, Gruen : integer;
  Blau       : integer;
begin
  with ImageHLS.Canvas do
  begin
    Pen.Color := clWhite;
    //Plotten des Farbspektrums
    if Klick = 0 then
    begin
      for i := 0 to 360 do
      begin
        if not GrauSkala then HLSzuRGB(i, 0.5, 1.0, Rot, Gruen, Blau)
        else
        begin
          Rot   := 255 - round(255-255*i/360);
          if Rot < 0 then Rot := 0;
          Gruen := Rot;
          Blau  := Rot;
        end;
        for k := 1 to ImageHLS.width do
        begin
          Pixels[k,ImageHLS.Height-
          round(i*ImageHLS.Height/360)] := RGB(Rot, Gruen, Blau);
        end;
      end;
    end;
    //Zeichnen der 1. Linie
    inc(Klick);
//    if Klick = 1 then ButtonPlotten.Enabled := false;
    if ssLeft in Shift then
    begin
      Hls[Klick] := Y;
      Moveto(5,Y);
      Lineto(ImageHLS.Width-5, Y)
    end;
    //Zeichnen des Rechtecks
    if Klick = 2 then
    begin
      ButtonPlotten.Visible := true;
      HLSmin := 360 - min(Hls[1], HLS[2]);
      HLSmax := 360 - max(Hls[1], HLS[2]);
      Moveto (5, Hls[1]);
      Lineto(5, Hls[2]);
      Lineto(ImageHLS.Width-5,Hls[2]);
      Lineto(ImageHLS.Width-5,Hls[1]);
      Klick := 0;
    end;
  end;
end;

procedure TForm29.ButtonPlottenClick(Sender: TObject);
var
  j, l, i, k : word;
  m, H       : single;
  Rot, Gruen : integer;
  Blau       : integer;
begin
  DichteCos (Image1.Canvas, Ag, Fg, Laenge, Cmax, Cmin, HLSmin, HLSmax,
             IsoX, GrauSkala, Fortschritt);
  with Image3.Canvas do
  begin
    Pen.Color   := clBlack;    //DiagrFarbe;
    Brush.Color := clWhite;    //DiagrFarbe;
    Rectangle (0,0,Image3.Width, Image3.Height);
    Font.Color  := clBlack;
    Font.Size   := 12;
    Font.Name   := 'Times New Roman';
    Textout (10,2,'0');
    Textout (5,110,'100');
    Breite := round(Image3.Height/20);
    for j := 1 to 20 do
    begin
      for l := 1 to 10 do
      begin
        m := j + l/10;
        if not GrauSkala then
        begin
          H := HLSmin + HLSmax - m*HLSmin/20;
          HLSzuRGB(H, 0.5, 1.0, Rot, Gruen, Blau);
        end
        else
        begin
          Rot   := round(255-255*m/20);
          if Rot < 0 then Rot := 0;
          Gruen := Rot;
          Blau  := Rot;
        end;
        for k := 0 to Breite do
          for i := 35 to Width do
            Pixels[i,0-Breite+round(m*Breite+k)] :=
            RGB(Rot, Gruen, Blau);
      end; {l}
    end; {j}
  end; {Image3}
  Image3.Visible := false;
  Image1.Canvas.Draw(Image1.Width-Image3.Width,0,
                     Image3.picture.graphic);
  PanelHLS.visible     := false;
  PanelDaten.Visible := true;
end;

procedure TForm29.Hilfe1Click(Sender: TObject);
var
  DateiS : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\29Palaeospannung-plot.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\29PaleoStress-plot.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm29.SpeedHilfeClick(Sender: TObject);
begin
  Hilfe1Click(Sender);
end;

procedure TForm29.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Palaeo-Spannung.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'Palaeo-Stress.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm29.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if BText then exit;
  If not Maus then exit;
  if ssLeft in Shift then
  begin
    if ssDouble in Shift then exit;
    XSigma := X;
    YSigma := Y;
    Image1.Canvas.Brush.Color := SigmaFarbe;
    Image1.Canvas.Brush.Style := bsSolid;
    Image1.Canvas.Ellipse (XSigma-5,YSigma-5,XSigma+5,YSigma+5);
  end;
end;

procedure TForm29.ButtonS1Click(Sender: TObject);
var
  KoordX  : integer;
  KoordY  : integer;
  NullX   : word;
  NullY   : word;
  Azimut  : integer;
  Rho     : extended;
  Fallen  : word;
  AziExt  : extended;
  Datei   : TextFile;
  i       : word;
begin
  Sigma[1] := true;
  XS1      := Xsigma;
  Ys1      := YSigma;
  Bo       := Pi / 180;
  Nullx    := Image1.Width div 2;
  NullY    := Image1.Height div 2;
  KoordX   := XSigma - NullX;
  KoordY   := NullY - YSigma;
  Rho      := sqrt(sqr(KoordX) + sqr(KoordY))/ Radius;
  if Rho > 1 then Rho := 1;
  if KoordY = 0 then KoordY := 1;
  AziExt := arctan(KoordX/KoordY)/Bo;
  Azimut := round(AziExt);
  Azimut := round(arctan(KoordX/KoordY)/Bo);
  if Azimut < 0 then Azimut := Azimut + 180;
  if (Azimut = 0) and (KoordY < 0) then Azimut := 180;
  if (Azimut = 0) and (KoordY > 0) then Azimut := 0;
  if (Azimut <> 0) and (Azimut <> 180) then
    if KoordX < 0 then Azimut := Azimut + 180;
  if Azimut >=360 then Azimut := Azimut - 360;
  Fallen  := 90 - round(arccos(1- sqr(Rho))/Bo);
  Azi1S   := IntToStr(Azimut);
  Fal1S   := IntToStr(Fallen);
  LabelWert1.Caption := Azi1S+'/'+Fal1S;
  Image1.Canvas.Brush.Style := bsClear;
  Image1.Canvas.Textout (XSigma+3,YSigma+3,'s1');
  Grosskreis(Image1.Canvas, Azimut*Bo, Fallen*Bo, SigmaFarbe);
  ButtonS1.Visible := false;
  if Sigma[1] and Sigma[2] and Sigma[3] then
  begin
    Bitmap := TBitmap.Create;
    try
      Bitmap.Assign(ClipBoard);
      Image1.Canvas.Draw(0,0, Bitmap);
    finally
      Bitmap.free;
    end;
    with Image1.Canvas do
    begin
      Pen.Color   := SigmaFarbe;
      Brush.Style := bsClear;
      Ellipse (XS1-5,YS1-5,XS1+5,YS1+5);
      Ellipse (XS2-5,YS2-5,XS2+5,YS2+5);
      Ellipse (XS3-5,YS3-5,XS3+5,YS3+5);
      Font.Color  := SigmaFarbe;
      Font.Name   := 'Symbol';
      Brush.Style := bsClear;
      Textout (XS1+3,YS1+3,'s1');
      Textout (XS2+3,YS2+3,'s2');
      Textout (XS3+3,YS3+3,'s3');
      LabelWert1.Caption := Azi1S+'/'+Fal1S;
      LabelWert2.Caption := Azi2S+'/'+Fal2S;
      LabelWert3.Caption := Azi3S+'/'+Fal3S;
      Maus := false;
    end;
  end;
  KonfigZeileS[63] := 'Paleo-Stress Azimut Sigma1 :,'+Azi1S;
  KonfigZeileS[64] := 'Paleo-Stress Dip Sigma1    :,'+Fal1S;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
end;

procedure TForm29.ButtonS2Click(Sender: TObject);
var
  KoordX  : integer;
  KoordY  : integer;
  NullX   : word;
  NullY   : word;
  Azimut  : integer;
  Rho     : real;
  Fallen  : word;
begin
  Sigma[2] := true;
  Bo     := Pi / 180;
  XS2    := Xsigma;
  YS2    := YSigma;
  Nullx  := Image1.Width div 2;
  NullY  := Image1.Height div 2;
  KoordX := XSigma - NullX;
  KoordY := NullY - YSigma;
  Rho    := sqrt(sqr(KoordX) + sqr(KoordY))/ Radius;
  if Rho <= 1 then
  begin
    if KoordY = 0 then KoordY := 1;
    Azimut := round(arctan(KoordX/KoordY)/Bo);
    if Azimut < 0 then Azimut := Azimut + 180;
    if (Azimut = 0) and (KoordY < 0) then Azimut := 180;
    if (Azimut = 0) and (KoordY > 0) then Azimut := 0;
    if (Azimut <> 0) and (Azimut <> 180) then
      if KoordX < 0 then Azimut := Azimut + 180;
    if Azimut >=360 then Azimut := Azimut - 360;
    Fallen  := 90 - round(arccos(1- sqr(Rho))/Bo);
  end;
  Azi2S := IntToStr(Azimut);
  Fal2S := IntToStr(Fallen);
  LabelWert2.Caption := Azi2S+'/'+Fal2S;
  Image1.Canvas.Brush.Color := DiagrFarbe;
  Image1.canvas.Textout (XSigma+3,YSigma+3,'s2');
  Grosskreis(Image1.Canvas, Azimut*Bo, Fallen*Bo, SigmaFarbe);
  ButtonS2.Visible := false;
  if Sigma[1] and Sigma[2] and sigma[3] then
  begin
    Bitmap := TBitmap.Create;
    try
      Bitmap.Assign(ClipBoard);
      Image1.Canvas.Draw(0,0, Bitmap);
    finally
      Bitmap.free;
    end;
    with Image1.Canvas do
    begin
      Pen.Color   := SigmaFarbe;
      Brush.Color := SigmaFarbe;
      Ellipse (XS1-5,YS1-5,XS1+5,YS1+5);
      Ellipse (XS2-5,YS2-5,XS2+5,YS2+5);
      Ellipse (XS3-5,YS3-5,XS3+5,YS3+5);
      Font.Color  := SigmaFarbe;
      Brush.Style := bsClear;
      Font.Name   := 'Symbol';
      Textout (XS1+3,YS1+3,'s1');
      Textout (XS2+3,YS2+3,'s2');
      Textout (XS3+3,YS3+3,'s3');
      LabelWert1.Caption := Azi1S+'/'+Fal1S;
      LabelWert2.Caption := Azi2S+'/'+Fal2S;
      LabelWert3.Caption := Azi3S+'/'+Fal3S;
      Maus := false;
    end;
  end;
end;

procedure TForm29.ButtonS3Click(Sender: TObject);
var
  KoordX  : integer;
  KoordY  : integer;
  NullX   : word;
  NullY   : word;
  Azimut  : integer;
  Rho     : real;
  Fallen  : word;
  Datei   : TextFile;
  i       : word;
begin
  Sigma[3] := true;
  Bo       := Pi / 180;
  XS3      := Xsigma;
  Ys3      := YSigma;
  Nullx    := Image1.Width div 2;
  NullY    := Image1.Height div 2;
  KoordX   := XSigma - NullX;
  KoordY   := NullY - YSigma;
  Rho      := sqrt(sqr(KoordX) + sqr(KoordY))/ Radius;
  if Rho <= 1 then
  begin
    if KoordY = 0 then KoordY := 1;
    Azimut := round(arctan(KoordX/KoordY)/Bo);
    if Azimut < 0 then Azimut := Azimut + 180;
    if (Azimut = 0) and (KoordY < 0) then Azimut := 180;
    if (Azimut = 0) and (KoordY > 0) then Azimut := 0;
    if (Azimut <> 0) and (Azimut <> 180) then
      if KoordX < 0 then Azimut := Azimut + 180;
    if Azimut >=360 then Azimut := Azimut - 360;
    Fallen  := 90 - round(arccos(1- sqr(Rho))/Bo);
  end;
  Azi3S   := IntToStr(Azimut);
  Fal3S   := IntToStr(Fallen);
  LabelWert3.Caption := Azi3S+'/'+Fal3S;
  Image1.Canvas.Brush.Color := DiagrFarbe;
  Image1.Canvas.Textout (XSigma+3,YSigma+3,'s3');
  Grosskreis(Image1.Canvas, Azimut*Bo, Fallen*Bo, SigmaFarbe);
  ButtonS3.Visible := false;
  if Sigma[1] and Sigma[2] and Sigma[3] then
  begin
    Bitmap := TBitmap.Create;
    try
      Bitmap.Assign(ClipBoard);
      Image1.Canvas.Draw(0,0, Bitmap);
    finally
      Bitmap.free;
    end;
    with Image1.Canvas do
    begin
      Pen.Color   := SigmaFarbe;
      Brush.Color := SigmaFarbe;
      Ellipse (XS1-5,YS1-5,XS1+5,YS1+5);
      Ellipse (XS2-5,YS2-5,XS2+5,YS2+5);
      Ellipse (XS3-5,YS3-5,XS3+5,YS3+5);
      Font.Color  := SigmaFarbe;
      Brush.Style := bsClear;
      Font.Name   := 'Symbol';
      Textout (XS1+3,YS1+3,'s1');
      Textout (XS2+3,YS2+3,'s2');
      Textout (XS3+3,YS3+3,'s3');
      LabelWert1.Caption := Azi1S+'/'+Fal1S;
      LabelWert2.Caption := Azi2S+'/'+Fal2S;
      LabelWert3.Caption := Azi3S+'/'+Fal3S;
      Maus := false;
    end;
  end;
  KonfigZeileS[65] := 'Paleo-Stress Azimut Sigma3 :,'+Azi3S;
  KonfigZeileS[66] := 'Paleo-Stress Dip Sigma3    :,'+Fal3S;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
end;

procedure TForm29.SPunkteClick(Sender: TObject);
begin
  PBitmap := Tbitmap.Create;
  PBitmap.Assign(Image1.Picture);
  PanelSigma.Visible := true;
  ButtonS1.Visible   := true;
  ButtonS2.Visible   := true;
  ButtonS3.Visible   := true;
  Maus               := true;
  with Image1.Canvas do
  begin
    Pen.Color   := SigmaFarbe;
    Brush.Color := SigmaFarbe;
    Font.Color  := SigmaFarbe;
    Font.Size   := 18;
    Font.Name   := 'Symbol';
  end;
  ClipBoard.Assign (Image1.Picture);
  Prueck.Enabled      := true;
  SpeedPrueck.Enabled := true;
end;

procedure TForm29.SFarbeClick(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS           := ColorToString (Farbe);
  SigmaFarbe       := StringToColor(FarbeS);
  KonfigZeileS[93] := 'Colour of sigma            :,'+FarbeS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
end;

procedure TForm29.SpeedFarbeSigmaClick(Sender: TObject);
begin
  SFarbeClick(Sender);
end;

procedure TForm29.SpeedPunktanzeigenClick(Sender: TObject);
begin
  SPunkteClick(Sender);
end;

procedure TForm29.PrueckClick(Sender: TObject);
begin
  Image1.Canvas.Draw (0,0,PBitmap);
  PBitmap.free;
  Prueck.Enabled      := false;
  SpeedPrueck.Enabled := false;
end;

procedure TForm29.SpeedPRueckClick(Sender: TObject);
begin
  PrueckClick(Sender);
end;

procedure TForm29.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm29.SpeedKopierenClick(Sender: TObject);
begin
  kopieren1Click(Sender);
end;

procedure TForm29.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;


procedure TForm29.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

procedure TForm29.durchgezogen20Click(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  IsoTyp[1]        := psSolid;
  KonfigZeileS[38] := '1st Contour Line           :,SOLID';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  iLinie := 1;
  ListBoxStrich.Visible := true;
  LabelStrich.Color      := HintFarbe;
  LabelStrich.Font.Color := UmfangFarbe;
  LabelStrich.Visible    := true;
end;

procedure TForm29.gestrichelt20Click(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  StrichI[1] := 1;
  IsoTyp[1]        := psDash;
  KonfigZeileS[38] := '1st Contour Line           :,DASH';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm29.punktiert20Click(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  StrichI[1] := 1;
  IsoTyp[1]        := psDot;
  KonfigZeileS[38] := '1st Contour Line           :,DOT';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm29.strichpunktiert20Click(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  StrichI[1] := 1;
  IsoTyp[1]        := psDashDot;
  KonfigZeileS[38] := '1st Contour Line           :,DASHDOT';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm29.durchgezogen40Click(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  IsoTyp[2]        := psSolid;
  KonfigZeileS[39] := '2nd Contour Line           :,SOLID';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  iLinie := 2;
  ListBoxStrich.Visible := true;
  LabelStrich.Color      := HintFarbe;
  LabelStrich.Font.Color := UmfangFarbe;
  LabelStrich.Visible    := true;
end;

procedure TForm29.gestrichelt40Click(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  StrichI[2] := 1;
  IsoTyp[2]        := psDash;
  KonfigZeileS[39] := '2nd Contour Line           :,DASH';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm29.punktiert40Click(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  StrichI[2] := 1;
  IsoTyp[2]        := psDot;
  KonfigZeileS[39] := '2nd Contour Line           :,DOT';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm29.strichpunktiert40Click(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  StrichI[2] := 1;
  IsoTyp[2]        := psDashDot;
  KonfigZeileS[39] := '2nd Contour Line           :,DASHDOT';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm29.durchgezogen60Click(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  IsoTyp[3]        := psSolid;
  KonfigZeileS[40] := '3rd Contour Line           :,SOLID';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  iLinie := 3;
  ListBoxStrich.Visible  := true;
  LabelStrich.Color      := HintFarbe;
  LabelStrich.Font.Color := UmfangFarbe;
  LabelStrich.Visible    := true;
end;

procedure TForm29.gestrichelt60Click(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  StrichI[3] := 1;
  IsoTyp[3]        := psDash;
  KonfigZeileS[40] := '3rd Contour Line           :,DASH';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm29.punktiert60Click(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  StrichI[3] := 1;
  IsoTyp[3]        := psDot;
  KonfigZeileS[40] := '3rd Contour Line           :,DOT';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm29.strichpunktiert60Click(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  StrichI[3] := 1;
  IsoTyp[3]        := psDashDot;
  KonfigZeileS[40] := '3rd Contour Line           :,DASHDOT';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm29.durchgezogen80Click(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  IsoTyp[4]        := psSolid;
  KonfigZeileS[41] := '4th Contour Line           :,SOLID';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  iLinie := 4;
  ListBoxStrich.Visible := true;
  LabelStrich.Color      := HintFarbe;
  LabelStrich.Font.Color := UmfangFarbe;
  LabelStrich.Visible    := true;
end;

procedure TForm29.gestrichelt80Click(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  StrichI[4] := 1;
  IsoTyp[4]        := psDash;
  KonfigZeileS[41] := '4th Contour Line           :,DASH';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm29.punktiert80Click(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  StrichI[4] := 1;
  IsoTyp[4]        := psDot;
  KonfigZeileS[41] := '4th Contour Line           :,DOT';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm29.strichpunktiert80Click(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  StrichI[4] := 1;
  IsoTyp[4]        := psDashDot;
  KonfigZeileS[41] := '4th Contour Line           :,DASHDOT';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm29.durchgezogen95Click(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  IsoTyp[5]        := psSolid;
  KonfigZeileS[42] := '5th Contour Line           :,Solid';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  iLinie := 5;
  ListBoxStrich.Visible := true;
  LabelStrich.Color      := HintFarbe;
  LabelStrich.Font.Color := UmfangFarbe;
  LabelStrich.Visible    := true;
end;

procedure TForm29.gestrichelt95Click(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  StrichI[5] := 1;
  IsoTyp[5]        := psDash;
  KonfigZeileS[42] := '5th Contour Line           :,DASH';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm29.punktiert95Click(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  StrichI[5] := 1;
  IsoTyp[5]        := psDot;
  KonfigZeileS[42] := '5th Contour Line           :,DOT';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm29.strichpunktiert95Click(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  StrichI[5] := 1;
  IsoTyp[5]        := psDashDot;
  KonfigZeileS[42] := '5th Contour Line           :,DASHDOT';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm29.ListBoxStrichClick(Sender: TObject);
var
  i     : byte;
  Datei : TextFile;
begin
  for i := 0 to ListboxStrich.Items.Count-1 do
  begin
    if ListboxStrich.Selected[i] then
      StrichI[iLinie] := StrToInt(ListBoxStrich.Items.Strings[i]);
  end;
  KonfigZeileS[99+iLinie] := IntToStr(iLinie)+'. contour line pen width  :,'+IntToStr(StrichI[iLinie]);
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ListBoxStrich.Visible := false;
  LabelStrich.Visible   := false;
  ButtonStartClick(Sender);
end;

procedure TForm29.VersatzClick(Sender: TObject);
begin
  WeiterB[29] := true;
  Application.CreateForm(TForm31, Form31);
  Form31.Show;
end;

procedure TForm29.SpeedVersatzClick(Sender: TObject);
begin
  VersatzClick(Sender);
end;

procedure TForm29.EigenwerteClick(Sender: TObject);
begin
  WeiterB[29] := true;
  Application.CreateForm(TForm34, Form34);
  Form34.Show;
end;

procedure TForm29.SpeedEigenwerteClick(Sender: TObject);
begin
  EigenwerteClick(Sender);
end;

procedure TForm29.IterationClick(Sender: TObject);
begin
  WeiterB[29] := true;
  Application.CreateForm(TForm99, Form99);
  Form99.Show;
end;

procedure TForm29.SpeedIterationClick(Sender: TObject);
begin
  IterationClick(Sender);
end;

procedure TForm29.DirektClick(Sender: TObject);
begin
  WeiterB[29] := true;
  Application.CreateForm(TForm100, Form100);
  Form100.Show;
end;

procedure TForm29.SpeedDirektClick(Sender: TObject);
begin
  DirektClick(Sender);
end;

procedure TForm29.HoeppenerClick(Sender: TObject);
begin
  WeiterB[29] := true;
  Application.CreateForm(TForm33, Form33);
  Form33.Show;
end;

procedure TForm29.SpeedHoeppenerClick(Sender: TObject);
begin
  HoeppenerClick(Sender);
end;

end.

