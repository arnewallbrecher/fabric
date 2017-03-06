unit Unit29;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, Mask, Menus, ExtCtrls, Globvar,
  Clipbrd, Harnisch, Plotten, Iso, Isolinie1, Basic, HPPlot,
  Texte, ComCtrls, Buttons, Printers, Drucken, Shellapi, Math,
  Kalkulat, Standard, GifImage, Bmp2Tiff, Jpeg, ExtDlgs,
  ReadTiff, ehsHelpRouter;

type
  TForm29 = class(TForm)
    Image1      : TImage;

    Panel1             : TPanel;
    Labelausgewaehlte: TLabel;
    ListBoxDateien     : TListBox;
    LabelZahlderDieder : TLabel;
    Label00000         : TLabel;

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
    ausZwischenablage: TMenuItem;
    ausDatei: TMenuItem;

    Drucker1            : TMenuItem;
    Druckereinrichten   : TMenuItem;
    drucken1            : TMenuItem;
    PrinterSetupDialog1 : TPrinterSetupDialog;
    PrintDialog1        : TPrintDialog;


    Speichernunter1: TMenuItem;
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

    Panel6: TPanel;
    LabelGeraet: TLabel;

    PanelDrucken    : TPanel;
    GroupBoxDrucken : TGroupBox;
    Panel7           : TPanel;
    LabelRdrucken    : TLabel;
    MaskEditRdrucken : TMaskEdit;
    Panel8           : TPanel;
    LabelMitte       : TLabel;
    LabelXdrucken    : TLabel;
    MaskEditXdrucken : TMaskEdit;
    LabelYdrucken    : TLabel;
    MaskEditYdrucken : TMaskEdit;
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
    speichernBMP: TMenuItem;
    speichernGIF: TMenuItem;
    speichernTIF: TMenuItem;
    speichernJPG: TMenuItem;
    speichernWMF: TMenuItem;
    speichernEMF: TMenuItem;
    speichernUBMP: TMenuItem;
    speichernUGIF: TMenuItem;
    speichernUTIF: TMenuItem;
    speichernUJPG: TMenuItem;
    speichernUWMF: TMenuItem;
    speichernUEMF: TMenuItem;
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
    SpeedPLT: TSpeedButton;
    SpeedDXF: TSpeedButton;
    SpeedPeripherie: TSpeedButton;
    SpeedDiagramm: TSpeedButton;
    SpeedRahmen: TSpeedButton;
    SpeedLiteratur: TSpeedButton;
    SpeedEinrichten: TSpeedButton;
    SpeedVersatz: TSpeedButton;
    SpeedFaktor: TSpeedButton;
    SpeedHoeppener: TSpeedButton;
    SpeedBGroesse: TSpeedButton;
    SpeedTransparent: TSpeedButton;
    SpeedHFarbe: TSpeedButton;
    SpeedBMP: TSpeedButton;
    SpeedGIF: TSpeedButton;
    SpeedTIF: TSpeedButton;
    SpeedJPG: TSpeedButton;
    SpeedWMF: TSpeedButton;
    SpeedEMF: TSpeedButton;
    speichernPLT: TMenuItem;
    speichernDXF: TMenuItem;
    holenBMP: TMenuItem;
    holenGIF: TMenuItem;
    holenTIF: TMenuItem;
    holenJPG: TMenuItem;
    holenWMF: TMenuItem;
    holenEMF: TMenuItem;
    OpenPictureDialog1: TOpenPictureDialog;
    SpeedHolBMP: TSpeedButton;
    SpeedHolGIF: TSpeedButton;
    SpeedHolTIF: TSpeedButton;
    SpeedHolJPG: TSpeedButton;
    SpeedHolWMF: TSpeedButton;
    SpeedHolEMF1: TSpeedButton;
    Ploterstellen: TButton;
    speichernUPLT: TMenuItem;
    speichernUDXF: TMenuItem;
    PanelWarten: TPanel;
    LabelPoly: TLabel;
    LabelWarten: TLabel;
    ButtonDrucken: TButton;
    ButtonAbbrechen: TButton;

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
    procedure ausZwischenablageClick(Sender: TObject);

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
    procedure HPPlotter1Click(Sender: TObject);
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
    procedure FormFaktorClick(Sender: TObject);
    procedure HoeppenerClick(Sender: TObject);
    procedure SpeedVersatzClick(Sender: TObject);
    procedure SpeedFaktorClick(Sender: TObject);
    procedure SpeedHoeppenerClick(Sender: TObject);
    procedure BGroesseClick(Sender: TObject);
    procedure MaskEditBBreiteKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditBHoeheKeyPress(Sender: TObject; var Key: Char);
    procedure CheckBoxBildClick(Sender: TObject);
    procedure transparentClick(Sender: TObject);
    procedure HFarbeClick(Sender: TObject);
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
    procedure SpeedTransparentClick(Sender: TObject);
    procedure SpeedHFarbeClick(Sender: TObject);
    procedure SpeedBMPClick(Sender: TObject);
    procedure SpeedGIFClick(Sender: TObject);
    procedure SpeedTIFClick(Sender: TObject);
    procedure SpeedJPGClick(Sender: TObject);
    procedure SpeedWMFClick(Sender: TObject);
    procedure SpeedEMFClick(Sender: TObject);
    procedure speichernPLTClick(Sender: TObject);
    procedure speichernDXFClick(Sender: TObject);
    procedure holenBMPClick(Sender: TObject);
    procedure holenGIFClick(Sender: TObject);
    procedure holenTIFClick(Sender: TObject);
    procedure holenJPGClick(Sender: TObject);
    procedure holenWMFClick(Sender: TObject);
    procedure holenEMFClick(Sender: TObject);
    procedure SpeedHolBMPClick(Sender: TObject);
    procedure SpeedHolGIFClick(Sender: TObject);
    procedure SpeedHolTIFClick(Sender: TObject);
    procedure SpeedHolJPGClick(Sender: TObject);
    procedure SpeedHolWMFClick(Sender: TObject);
    procedure SpeedHolEMF1Click(Sender: TObject);
    procedure PloterstellenClick(Sender: TObject);
    procedure speichernUPLTClick(Sender: TObject);
    procedure speichernUDXFClick(Sender: TObject);
    procedure ButtonDruckenClick(Sender: TObject);
    procedure ButtonAbbrechenClick(Sender: TObject);
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

implementation
uses Unit26, Unit27, Unit28, Unit31, Unit33, Unit34, Unit94;
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
  Left   := 4;
  Top    := 0;
  Width  := 1030;
  Height := 750;
  setlength(AziFeld, MaxDaten);
  setlength(FalFeld, MaxDaten);
  setlength (SAziFeld, MaxDaten);
  setlength (SFalFeld, MaxDaten);
  setlength (Wwzeiger, 122);
  setlength (CountZeiger, 320);
  setlength (Ba1zeiger, 3000);
  setlength (Ba2zeiger, 3000);
  setlength (Be1zeiger, 3000);
  setlength (Be2zeiger, 3000);
  WeiterB[29] := false;
  for i:= 0 to 121 do setlength(Wwzeiger[i], 32);
  Form29.Caption                   := Tx(617);  {Fabric7: Pal�ospannungen,..}
  Image1.Hint                      := Hilf(125);
  ListBoxDateien.Hint              := Hilf(82);
  Labelausgewaehlte.Hint           := Hilf(82);
  LabelZahlderDieder.Hint          := Hilf(36);
  Label00000.Hint                  := Hilf(36);
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
  SpeedPLT.Hint                    := Hilf(438);
  SpeedDXF.Hint                    := Hilf(439);
  SpeedPeripherie.Hint             := Hilf(440);
  SpeedDiagramm.Hint               := Hilf(441);
  SpeedRahmen.Hint                 := Hilf(442);
  SpeedEinrichten.Hint             := Hilf(505);
  SpeedVersatz.Hint                := Hilf(512);
  SpeedFaktor.Hint                 := Hilf(513);
  SpeedHoeppener.Hint              := Hilf(514);
  SpeedBGroesse.Hint               := Hilf(583);
  SpeedTransparent.Hint            := Hilf(584);
  SpeedHFarbe.Hint                 := Hilf(585);
  SpeedBMP.Hint                    := Hilf(586);
  SpeedGIF.Hint                    := Hilf(587);
  SpeedTIF.Hint                    := Hilf(588);
  SpeedJPG.Hint                    := Hilf(589);
  SpeedWMF.Hint                    := Hilf(590);
  SpeedEMF.Hint                    := Hilf(591);
  SpeedHolBMP.Hint                 := Hilf(621);
  SpeedHolGIF.Hint                 := Hilf(622);
  SpeedHolTIF.Hint                 := Hilf(623);
  SpeedHolJPG.Hint                 := Hilf(624);
  SpeedHolWMF.Hint                 := Hilf(625);
  SpeedHolEMF1.Hint                := Hilf(626);
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
  LabelZahlderDieder.Caption       := Tx(629);
  GroupBoxPlotten.Caption          := Tx(297);
  Ploterstellen.Caption            := Tx(298);     {Plot-Einstellungen ok?}
  LabelRadius.Caption              := Tx(299);
  LabelMittelpunkt.Caption         := Tx(300);
  LabelX.Caption                   := Tx(301);
  LabelY.Caption                   := Tx(302);
  Buttonzurueck.Caption            := Tx(30);
  Buttonbeenden.Caption            := Tx(53);
  Labelausgewaehlte.Enabled   := false;
  ListBoxDateien.Enabled      := false;
  LabelZahlderDieder.Enabled  := false;
  Label00000.Caption          := '';
  HolDatei                    := false;
  HolZwischen                 := false;
  Image1.Enabled              := false;
  HolZwischen                 := false;
  HolDatei                    := false;
  Grafik1.Enabled             := false;
  LabelRadius.Enabled         := false;
  MaskEditRadius.EditMask     := '999;0; ';
  MaskEditX.EditMask          := '999;0; ';
  MaskEditY.EditMask          := '999;0; ';
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
  LabelGeraet.Caption          := '';
  Paneldrucken.Visible         := false;
  Drucker1.Caption             := Tx(92);
  Druckereinrichten.Caption    := Tx(94);
  drucken1.Caption             := Tx(93);
  Speichern.Caption            := Tx(87);
  speichernunter1.Caption      := Tx(88);
  FarbeRahmen.Caption          := Tx(892);
  SpeedDrucken.Enabled         := false;
  SpeedHilfe.Hint              := Hilf(210);
  SpeedDrucken.Hint            := Hilf(309);
  GroupBoxPlotten.Caption      := '';
  for i := 1 to 3 do Gedrueckt[i] := false;
  GrauSkala := false;
  FarbSkala := true;
  LabelText.Caption       := Tx(1052);
  LabelText2.Caption      := Tx(1053);
  LabelText3.Caption      := TX(1054);
  GroupBoxPlotten.Visible := false;
  Panel6.Visible          := false;
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
  Versatz.Caption         := Tx(1346);
  FormFaktor.Caption      := Tx(1347);
  Hoeppener.Caption       := Tx(1348);
  for i := 0 to 9 do ListboxStrich.Items.Add(IntToStr(i+1));
  ListBoxStrich.Visible   := false;
  LabelStrich.Visible     := false;
  LabelStrich.Caption     := Tx(1187);
  SPunkte.Caption         := Tx(1245);
  Linien1.Enabled         := false;
  PixelGrafik1.Enabled    := false;
  Sigma1bis3.Enabled      := false;
  Auswertung.Enabled      := false;
  SpeedVersatz.Enabled      := false;
  SpeedFaktor.Enabled       := false;
  SpeedHoeppener.Enabled    := false;
  MaskEditBBreite.EditMask  := '99999;0; ';
  MaskEditBHoehe.EditMask   := '99999;0; ';
  LabelBBreite.Caption      := Tx(1440);
  LabelBHoehe.Caption       := Tx(1441);
  BGroesse.Caption          := Tx(1439);
  PanelGroesse.Visible      := false;
  Ratio        := Image1.Width/Image1.Height;
  HTransparent := false;
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
  DarstellungS := 'Kalotte';
  LabelPoly.Caption    := Tx(1530);
  LabelWarten.Caption  := Tx(1531);
  PanelWarten.Visible  := false;
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
  Rahmen      : TRect;
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
  iLinie := 0;
  PanelSpeed.Visible       := true;
  GroupBoxPlotten.Visible  := false;
  Panel6.Visible           := false;
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
  LabelGeraet.Caption      := Tx(850) + ' '+ProS;
  Grafik1.Enabled          := true;
  Isolinien1.Enabled       := true;
  if GeraetS = 'no' then FarbePeripherie1.Enabled := false;
  Labelausgewaehlte.Enabled  := true;
  ListBoxDateien.Enabled     := true;
  LabelZahlderDieder.Enabled := true;
  Label00000.Caption         := IntToStr(ZahlGlob);
  Image1.Enabled             := true;
  PixelBild                  := '';
  SpeedVersatz.Enabled       := true;
  SpeedFaktor.Enabled        := true;
  SpeedHoeppener.Enabled     := true;
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
  ImageNord.Top    := 22;
  ImageNord.Left   := 400;
  ImageNord.Width  := 18;
  ImageNord.Height := 36;
  PixelGrafik1.Enabled := true;
  Sigma1bis3.Enabled   := true;
  if not WeiterF then
    Auswertung.Enabled   := true;
  Linien1.Enabled      := true;
  with Image1 do
  begin
    Picture.Graphic := Bitmap;
    Xmitte := Image1.Width div 2;
    Ymitte := Image1.Height div 2 + 18;
    Radius := Image1.Width div 2 - 24;
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
  if HolPixS = 'BMP' then
  begin
    try
      FBild  := TBitmap.Create;
      Rahmen := Rect(0,0,Breite,Hoehe);
      FBild.LoadFromFile(CurrentFile);
      Image1.Canvas.Stretchdraw(Rahmen,FBild);
    finally
      FBild.Free;
    end;
    Zahlloeschen(Image1.Canvas);
  end;
  if HolPixS = 'GIF' then
  begin
    try
      GBild  := TGifImage.Create;
      Rahmen := Rect(0,0,Image1.Width,Image1.Height);
      GBild.LoadFromFile(CurrentFile);
      Image1.Canvas.Stretchdraw(Rahmen,GBild);
    finally
      GBild.Free;
    end;
    Zahlloeschen(Image1.Canvas);
  end;
  if HolPixS = 'TIF' then
  begin
    try
      FBild  := TBitmap.Create;
      Rahmen := Rect(0,0,Image1.Width,Image1.Height);
      LoadTiffFromFile(CurrentFile,FBild);
      Image1.Canvas.Stretchdraw(Rahmen,FBild);
    finally
      FBild.Free;
    end;
    Zahlloeschen(Image1.Canvas);
  end;
  if HolPixS = 'JPG' then
  begin
    try
      JBild := TJpegImage.Create;
      FBild := TBitmap.Create;
      JBild.LoadFromFile(CurrentFile);
      FBild.Assign(JBild);
      Rahmen := Rect(0,0,Image1.Width,Image1.Height);
      Image1.Canvas.Stretchdraw(Rahmen,FBild);
    finally
      FBild.Free;
      JBild.Free;
    end;
    Zahlloeschen(Image1.Canvas);
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
      Rahmen := Rect(0,0,Image1.Width,Image1.Height);
      Image1.Canvas.Stretchdraw(Rahmen,FBild);
    finally
      MetaFile.Free;
      FBild.Free;
    end;
    Zahlloeschen(Image1.Canvas);
  end;
  if HolPixS = 'EMF' then
  begin
    try
      MetaFile := TMetaFile.Create;
      MetaFile.Enhanced := true;
      FBild := TBitmap.Create;
      MetaFile.LoadFromFile(CurrentFile);
      Rahmen := Rect(0,0,Image1.Width,Image1.Height);
      FBild.Width  := Image1.Width;
      FBild.Height := Image1.Height;
      FBild.Canvas.StretchDraw(Rahmen,MetaFile);
      Image1.Canvas.Stretchdraw(Rahmen,FBild);
    finally
      MetaFile.Free;
      FBild.Free;
    end;
    Zahlloeschen(Image1.Canvas);
  end;
  HolPixS := '';
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
  Image1.Canvas.Draw(Image1.Width div 2 - ImageNord.Width div 2,7,
                     ImageNord.Picture.Graphic);
  if DemoB then
  begin
    with Image1.Canvas do
    begin
      Font.Name   := 'Times New Roman';
      Brush.Color := clWhite;
      Font.Color  := clGray;
      Font.Size   := 36;
      Textout(Width div 2-300,Height div 2+10,'Demo-Version');
    end;
  end;
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
  i       : word;
  Flaeche : TRect;
begin
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick (Sender);
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
      assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
    assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
  speichernBMP.Enabled  := false;
  speichernJPG.Enabled  := false;
  speichernTIF.Enabled  := false;
  speichernWMF.Enabled  := false;
  speichernEMF.Enabled  := false;
  speichernUBMP.Enabled := false;
  speichernUJPG.Enabled := false;
  speichernUTIF.Enabled := false;
  speichernUWMF.Enabled := false;
  speichernUEMF.Enabled := false;
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
  HTransparent := false;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS    := ColorToString (Farbe);
  HintFarbe := StringToColor(FarbeS);
  KonfigZeileS[3] := '  Background Colour        :,'+FarbeS;
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  speichernBMP.Enabled  := true;
  speichernJPG.Enabled  := true;
  speichernTIF.Enabled  := true;
  speichernWMF.Enabled  := true;
  speichernEMF.Enabled  := true;
  speichernUBMP.Enabled := true;
  speichernUJPG.Enabled := true;
  speichernUTIF.Enabled := true;
  speichernUWMF.Enabled := true;
  speichernUEMF.Enabled := true;
  ButtonStartClick (Sender);
end;

procedure TForm29.SpeedHFarbeClick(Sender: TObject);
begin
  HFarbeClick(Sender);
end;

procedure TForm29.speichernBMPClick(Sender: TObject);
var
  Rahmen : TRect;
begin
  Bitmap        := TBitmap.Create;
  Bitmap.Width  := BBreiteSt;
  Bitmap.Height := BHoeheSt;
  Rahmen        := Rect(0,0,Bitmap.Width,Bitmap.Height);
  Bitmap.Canvas.Stretchdraw(Rahmen,Image1.Picture.Graphic);
  try
    if CurrentFile <> '' then Bitmap.SaveToFile(CurrentFile)
    else speichernUBMPClick(Sender);
  finally
    Bitmap.Free;
    Bitmap   := nil;
  end;
end;

procedure TForm29.SpeedBMPClick(Sender: TObject);
begin
  speichernBMPClick(Sender);
end;

procedure TForm29.speichernGIFClick(Sender: TObject);
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
  Bitmap.Canvas.Stretchdraw(Rahmen,Image1.Picture.Graphic);
  if HTransparent then
  begin
    Bitmap.Transparent := True;
    Bitmap.TransParentColor := HintFarbe;
  end
  else Bitmap.Transparent := false;
  try
    GifBild.Assign(Bitmap);
    if CurrentFile <> '' then GifBild.SaveToFile(CurrentFile)
    else speichernUGIFClick(Sender);
  finally
    Bitmap.Free;
    GifBild.Free;
  end;
end;

procedure TForm29.SpeedGIFClick(Sender: TObject);
begin
  speichernGIFClick(Sender);
end;

procedure TForm29.speichernTIFClick(Sender: TObject);
var
  Rahmen : TRect;
begin
  Bitmap        := TBitmap.Create;
  Bitmap.Width  := BBreiteSt;
  Bitmap.Height := BHoeheSt;
  Rahmen        := Rect(0,0,Bitmap.Width,Bitmap.Height);
  Bitmap.Canvas.Stretchdraw(Rahmen,Image1.Picture.Graphic);
  try
    if CurrentFile <> '' then
      WriteTiffToFile(CurrentFile,Bitmap)
    else speichernUTIFClick(Sender);
  finally
    Bitmap.Free;
    Bitmap := nil;
  end;
end;

procedure TForm29.SpeedTIFClick(Sender: TObject);
begin
  speichernTIFClick(Sender);
end;

procedure TForm29.speichernJPGClick(Sender: TObject);
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
  Bild.Canvas.Stretchdraw(Rahmen,Image1.Picture.Graphic);
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

procedure TForm29.SpeedJPGClick(Sender: TObject);
begin
  speichernJPGClick(Sender);
end;

procedure TForm29.speichernWMFClick(Sender: TObject);
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
    Bitmap.Canvas.Stretchdraw(Rahmen,Image1.Picture.Graphic);
    try
      Bitmap.Assign(Image1.Picture);
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
    if CurrentFile <> '' then MetaFile.SaveToFile(CurrentFile)
    else SpeichernUWMFClick(Sender);
  finally
    Metafile.Free;
  end;
end;

procedure TForm29.SpeedWMFClick(Sender: TObject);
begin
  speichernWMFClick(Sender);
end;

procedure TForm29.speichernEMFClick(Sender: TObject);
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
      Bitmap.Assign(Image1.Picture);
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
    if CurrentFile <> '' then MetaFile.SaveToFile(CurrentFile)
    else SpeichernUEMFClick(Sender);
  finally
    Metafile.Free;
  end;
end;

procedure TForm29.SpeedEMFClick(Sender: TObject);
begin
  speichernEMFClick(Sender);
end;

procedure TForm29.speichernPLTClick(Sender: TObject);
var
  i      : byte;
  Datei  : Textfile;
begin
  GroupBoxPlotten.Visible  := true;
  Panel6.Visible           := true;
  FarbePeripherie1.Enabled := true;
  GeraetS                  := 'HPGL';
  KonfigZeileS[53] := 'Paper Plot                 :,HPGL';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  LabelGeraet.Caption := Tx(850)+' '+ GeraetS;
end;

procedure TForm29.speichernDXFClick(Sender: TObject);
var
  i      : byte;
  Datei  : Textfile;
begin
  GroupBoxPlotten.Visible     := true;
  Panel6.Visible              := true;
  FarbePeripherie1.Enabled    := true;
  GeraetS                     := 'DXF';
  KonfigZeileS[53] := 'Paper Plot                 :,DXF';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  FarbePeripherie1.Enabled    := true;
  LabelGeraet.Caption         := Tx(850)+' '+ GeraetS;
end;

procedure TForm29.speichernUBMPClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := 'Windows bitmap file (*.bmp)|*.bmp';
  SaveDialog1.Filter     := 'Windows bitmap file (*.bmp)|*.bmp';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    SpeichernBMPClick(Sender);
  end
  else exit;
end;

procedure TForm29.speichernUGIFClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := 'Compuserve gif file (*.gif)|*.gif';
  SaveDialog1.Filter     := GraphicFilter(TGIFImage);
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    SpeichernGIFClick(Sender);
  end
  else exit;
end;

procedure TForm29.speichernUTIFClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := 'Tagged image file format (*.tif)|*.tif';
  SaveDialog1.Filter     := 'Tagged image file format (*.tif)|*.tif';;
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    SpeichernTIFClick(Sender);
  end
  else exit;
end;

procedure TForm29.speichernUJPGClick(Sender: TObject);
begin
  SavePictureDialog1.DefaultExt := 'Jpeg file (*.jpg)|*.jpg';
  SavePictureDialog1.Filter     := GraphicFilter(TJpegImage);
  if SavePictureDialog1.Execute then
  begin
    CurrentFile := SavePictureDialog1.Filename;
    SpeichernJPGClick(Sender);
  end
  else exit;
end;

procedure TForm29.speichernUWMFClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := 'Windows metafile (*.wmf)|*.wmf';
  SaveDialog1.Filter     := 'Windows metafile (*.wmf)|*.wmf';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    speichernWMFClick(Sender);
  end
  else exit;
end;

procedure TForm29.speichernUEMFClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := 'Windows metafile (*.emf)|*.emf';
  SaveDialog1.Filter     := 'Windows metafile (*.emf)|*.emf';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    speichernEMFClick(Sender);
  end
  else exit;
end;

procedure TForm29.speichernUPLTClick(Sender: TObject);
var
  i      : byte;
  Datei  : Textfile;
begin
  GroupBoxPlotten.Visible  := true;
  FarbePeripherie1.Enabled := true;
  GeraetS                  := 'HPGL';
  KonfigZeileS[53] := 'Paper Plot                 :,HPGL';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
end;

procedure TForm29.speichernUDXFClick(Sender: TObject);
var
  i      : byte;
  Datei  : Textfile;
begin
  GroupBoxPlotten.Visible     := true;
  FarbePeripherie1.Enabled    := true;
  GeraetS                     := 'DXF';
  KonfigZeileS[53] := 'Paper Plot                 :,DXF';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  FarbePeripherie1.Enabled    := true;
end;

procedure TForm29.ausZwischenablageClick(Sender: TObject);
begin
  FarbePeripherie1.Enabled  := false;
  FarbeDiagramm1.Enabled    := false;
  Hintergrund.Enabled       := false;
  HolZwischen               := true;
  ButtonStartClick(Sender);
end;

procedure TForm29.holenBMPClick(Sender: TObject);
begin
  OpenDialog1.DefaultExt := 'Windows bitmap file (*.bmp)|*.bmp';
  OpenDialog1.Filter     := 'Windows bitmap file (*.bmp)|*.bmp';
  if OpenPictureDialog1.Execute then CurrentFile := OpenPictureDialog1.FileName
  else exit;
  HolPixS := 'BMP';
  ButtonStartClick(Sender);
end;

procedure TForm29.SpeedHolBMPClick(Sender: TObject);
begin
  holenBMPClick(Sender);
end;

procedure TForm29.holenGIFClick(Sender: TObject);
begin
  OpenDialog1.DefaultExt := 'Compuserve gif file (*.gif)|*.gif';
  OpenDialog1.Filter     := 'Compuserve gif file (*.gif)|*.gif';
  if OpenDialog1.Execute then CurrentFile := OpenDialog1.FileName
  else exit;
  HolPixS := 'GIF';
  ButtonStartClick(Sender);
end;

procedure TForm29.SpeedHolGIFClick(Sender: TObject);
begin
  holenGIFClick(Sender);
end;

procedure TForm29.holenTIFClick(Sender: TObject);
begin
  OpenDialog1.DefaultExt := 'Tagged image file format (*.tif)|*.tif';
  OpenDialog1.Filter     := 'Tagged image file format (*.tif)|*.tif';
  if OpenDialog1.Execute then CurrentFile := OpenDialog1.FileName
  else exit;
  HolPixS := 'TIF';
  ButtonStartClick(Sender);
end;

procedure TForm29.SpeedHolTIFClick(Sender: TObject);
begin
  holenTIFClick(Sender);
end;

procedure TForm29.holenJPGClick(Sender: TObject);
begin
  OpenPictureDialog1.DefaultExt := 'Jpeg file (*.jpg)|*.jpg';
  OpenPictureDialog1.Filter     := 'Jpeg file (*.jpg)|*.jpg';
  if OpenPictureDialog1.Execute then CurrentFile := OpenPictureDialog1.FileName
  else exit;
  HolPixS := 'JPG';
  ButtonStartClick(Sender);
end;

procedure TForm29.SpeedHolJPGClick(Sender: TObject);
begin
  holenJPGClick(Sender);
end;

procedure TForm29.holenWMFClick(Sender: TObject);
begin
  OpenDialog1.DefaultExt := 'Windows metafile (*.WMF)|*.wmf';
  OpenDialog1.Filter     := 'Windows metafile (*.WMF)|*.wmf';
  if OpenDialog1.Execute then CurrentFile := OpenDialog1.FileName
  else exit;
  HolPixS := 'WMF';
  ButtonStartClick(Sender);
end;

procedure TForm29.SpeedHolWMFClick(Sender: TObject);
begin
  holenWMFClick(Sender);
end;

procedure TForm29.holenEMFClick(Sender: TObject);
begin
  OpenDialog1.DefaultExt := 'Enhanced windows metafile (*.EMF)|*.emf';
  OpenDialog1.Filter     := 'Enhanced windows metafile (*.EMF)|*.emf';
  if OpenDialog1.Execute then CurrentFile := OpenDialog1.FileName
  else exit;
  HolPixS := 'EMF';
  ButtonStartClick(Sender);
end;

procedure TForm29.SpeedHolEMF1Click(Sender: TObject);
begin
  holenEMFClick(Sender);
end;

procedure TForm29.HPPlotter1Click(Sender: TObject);
var
  i      : byte;
  Datei  : Textfile;
begin
  if PrinterSetupDialog1.execute then
  begin
    GroupBoxPlotten.Visible := true;
    Panel6.Visible          := true;
  end;
  FarbePeripherie1.Enabled := true;
  GeraetS                  := 'Plotter';
  KonfigZeileS[53] := 'Paper Plot                 :,Plotter';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  LabelGeraet.Caption := Tx(850)+' '+ GeraetS;
end;

procedure TForm29.SpeedPlotterClick(Sender: TObject);
begin
  HPPlotter1Click(Sender);
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
  assignFile(Datei,DirectS+'\'+'Gefuege7.ini');
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
      HpPeriph (Canvas, Kreuz);
      Hpmaxmin (Cmax,Cmin);
      XS := Inttostr(round((Xkoord-HPRadius/1.5) * 400));
      YS := IntToStr(round((YKoord-HpRadius/4) * 400));
      WS := FloatToStr(HPRadius/10);
      HS := FloatToStr(HPRadius/8);
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
    if DlgMessage (Typ,Tx(1528),Tx(1527),1) = 6 then
    FuellenS := 'Ja' else FuellenS := 'Nein';
    SetMapMode (Printer.Handle, MM_Himetric);
    with Printer do
    begin
      BeginDoc;
      Canvas.Pen.Width := DStrich;
      Plotter (Canvas, SaveDialog1);
      if DarstellungS = 'Kalotte' then
      begin
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
        Farben (Canvas, clBlack);
        HPPeriph (Canvas, Kreuz);
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
      EndDoc;
    end;
    GroupBoxPlotten.Visible := false;
    PanelWarten.Visible := false;
    showmessage(Tx(435));
    if DemoB then
    begin
      X := round(Xkoord*100*Faktor);
      Y := round(Ykoord*100*Faktor);
      Groesse := round(HpRadius*2);
      Canvas.Font.Size  := Groesse;
      Canvas.Font.Color := clBlack;
      Canvas.Textout (round(x-25*Groesse), round(y+100*Faktor),
                      'Demo-Version');
    end;
  end;
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
  Paneldrucken.Visible      := true;
  MaskEditRdrucken.EditMask := '999;0; ';
  MaskEditXdrucken.EditMask := '999;0; ';
  MaskEditYdrucken.EditMask := '999;0; ';
  MaskEditRdrucken.Text     := InttoStr(round(DruckenR*10));
  MaskEditXdrucken.Text     := InttoStr(round(DruckenX*10));
  MaskEditYdrucken.Text     := InttoStr(round(DruckenY*10));
  GroupBoxdrucken.Caption   := Tx(880);
  LabelRdrucken.Caption        := Tx(883);
  LabelMitte.Caption           := Tx(884);
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
  XKoordS : string;
  YKoordS : string;
  RadiusS : string;
  Bitmap  : TBitmap;
  Fenster : TRect;
begin
  Paneldrucken.Visible         := false;
  RadiusS := MaskEditRdrucken.Text;
  XKoordS := MaskEditXdrucken.Text;
  YKoordS := MaskEditYdrucken.Text;
  Bitmap:=TBitmap.Create;
  try
    Bitmap.Assign(Image1.picture.graphic);
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
end;

procedure TForm29.ButtonAbbrechenClick(Sender: TObject);
begin
  Paneldrucken.Visible         := false;
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
  Panel6.Visible           := false;
  Grafik1.Enabled          := true;
  HPPlotter1.Enabled       := false;
  speichernPLT.Enabled     := false;
  speichernUPLT.Enabled    := false;
  SpeedPLT.Enabled         := false;
  KonfigZeileS[88] := 'Type of Diagram            :,Steps';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
    if DemoB then
    begin
      Font.Name   := 'Times New Roman';
      Brush.Color := clWhite;
      Font.Color  := clGray;
      Font.Size   := 36;
      Textout(Width div 2-300,Height div 2+10,'Demo-Version');
    end;
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
  KonfigZeileS[88] := 'Type of Diagram            :,Kalotte';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
  DarstellungS             := 'floating';
  GroupBoxPlotten.Visible  := false;
  PanelHLS.Visible         := true;
  Panel6.Visible           := false;
  Isolinien1.enabled       := false;
  Grafik1.Enabled          := true;
  HPPlotter1.Enabled       := false;
  FarbeDiagramm1.Enabled   := false;
  FarbeRahmen.Enabled      := false;
  speichernPLT.Enabled     := false;
  speichernDXF.Enabled     := false;
  speichernUPLT.Enabled    := false;
  speichernUDXF.Enabled    := false;
  SpeedPLT.Enabled         := false;
  SpeedDXF.Enabled         := false;  
  KonfigZeileS[88] := 'Type of Diagram            :,floating';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
  if DemoB then
  begin
    with Image1.Canvas do
    begin
      Font.Name   := 'Times New Roman';
      Brush.Color := clWhite;
      Font.Color  := clGray;
      Font.Size   := 36;
      Textout(Width div 2-300,Height div 2+10,'Demo-Version');
    end;
  end;
  PanelHLS.visible     := false;
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
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\pale28o7.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\Palaeostress-plot.htm');
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
  Azi1S := IntToStr(Azimut);
  Fal1S := IntToStr(Fallen);
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
  Azi3S := IntToStr(Azimut);
  Fal3S := IntToStr(Fallen);
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
end;

procedure TForm29.SPunkteClick(Sender: TObject);
begin
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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

procedure TForm29.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm29.SpeedKopierenClick(Sender: TObject);
begin
  kopieren1Click(Sender);
end;

procedure TForm29.SpeedZwischenablageClick(Sender: TObject);
begin
  AusZwischenablageClick(Sender);
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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

procedure TForm29.FormFaktorClick(Sender: TObject);
begin
  WeiterB[29] := true;
  Application.CreateForm(TForm34, Form34);
  Form34.Show;
end;

procedure TForm29.SpeedFaktorClick(Sender: TObject);
begin
  FormFaktorClick(Sender);
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
