unit Unit23;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, ExtCtrls, StdCtrls, Mask, Menus, Globvar,
  Plotten, Clipbrd, Isolinie1, HPPlot, Basic, Texte, ComCtrls,
  Buttons, Printers, Drucken, Shellapi, Jpeg, Math,Einausga,
  Standard, GifImage, Bmp2Tiff, ExtDlgs, ReadTiff, ehsHelpRouter;

  type
  TForm23 = class(TForm)
    Panel1: TPanel;
    Labelausgewaehlte: TLabel;
    LabelAnzahlDaten: TLabel;                {Anzahl der Daten}
    Label3: TLabel;
    PanelManuell: TPanel;
    Label1Isolinie: TLabel;
    Label2Isolinie: TLabel;
    Label3Isolinie: TLabel;
    Label4Isolinie: TLabel;
    Label5Isolinie: TLabel;
    LabelEingabe  : TLabel;
    LabelZaehlkalotte: TLabel;               {Z�hlkalotte}

    ListBox1: TListBox;            {Dateien}
                                    MaskEdit1: TMaskEdit;          {1. Iso}
    MaskEdit2: TMaskEdit;          {2. Iso}
    MaskEdit3: TMaskEdit;          {3. Iso}
    MaskEdit4: TMaskEdit;          {4. Iso}
    MaskEdit5: TMaskEdit;          {5. Iso}
    MaskEdit6: TMaskEdit;
    ButtonStart: TButton;
    Buttonzurueck: TButton;
    Buttonbeenden: TButton;              {beenden}

    Image1: TImage;                {Zeichenfl�che}

    MainMenu1: TMainMenu;

    Abstufung1                    : TMenuItem;
    VielfacheGleichverteilung1: TMenuItem;
    manuelleAbstufung1            : TMenuItem;

    Grafik1                 : TMenuItem;
    kopieren1               : TMenuItem;
    speichern1              : TMenuItem;
    speichernunter1         : TMenuItem;
    ausZwischenablage: TMenuItem;
    ausDatei: TMenuItem;

    CheckBoxOk: TCheckBox;

    Hilfe1 : TMenuItem;

    SaveDialog1 : TSaveDialog;
    OpenDialog1 : TOpenDialog;

    GroupBoxplotten: TGroupBox;

      Panel6         : TPanel;
      LabelRadius    : TLabel;
      MaskEditRadius : TMaskEdit;

      Panel7           : TPanel;
      LabelMittelpunkt : TLabel;
      LabelX           : TLabel;
      MaskEditX        : TMaskEdit;
      LabelY           : TLabel;
      MaskEditY        : TMaskEdit;

    {Plotten}
    HPPlotter1 : TMenuItem;

    FarbeDiagramm1 : TMenuItem;

    FarbePeripherie1 : TMenuItem;

    FarbeRahmen   : TMenuItem;

    Fortschritt: TProgressBar;
    Isolinie1: TMenuItem;
    Farbe1      : TMenuItem;
    Isolinie2: TMenuItem;
    Isolinie3: TMenuItem;
    Isolinie4: TMenuItem;
    Isolinie5: TMenuItem;

    Linien1                : TMenuItem;
    durchgezogeneLinie1    : TMenuItem;
    gestrichelteLinie1     : TMenuItem;
    strichpunktierteLinie1 : TMenuItem;
    punktierteLinie1       : TMenuItem;

    N1Isolinie2            : TMenuItem;
    durchgezogeneLinie2    : TMenuItem;
    gestrichelteLinie2     : TMenuItem;
    strichpunktierteLinie2 : TMenuItem;
    punktierteLinie2       : TMenuItem;

    N2Isolinie2: TMenuItem;

    N3Isolinie2            : TMenuItem;
    gestrichelteLinie3     : TMenuItem;
    strichpunktierteLinie3 : TMenuItem;
    punktierteLinie3       : TMenuItem;
    durchgezogeneLinie3    : TMenuItem;

    N4Isolinie2            : TMenuItem;
    durchgezogeneLinie4    : TMenuItem;
    gestrichelteLinie4     : TMenuItem;
    strichpunktierteLinie4 : TMenuItem;
    punktierteLinie4       : TMenuItem;

    N5Isolinie2            : TMenuItem;
    durchgezogeneLinie5    : TMenuItem;
    gestrichelteLinie5     : TMenuItem;
    strichpunktierteLinie5 : TMenuItem;
    punktierteLinie5       : TMenuItem;

    Labelx10     : TLabel;

    Paneldrucken         : TPanel;
    GroupBoxdrucken      : TGroupBox;
    Panel8               : TPanel;
    LabelRdrucken        : TLabel;
    MaskEditRdrucken     : TMaskEdit;
    Panel10              : TPanel;
    LabelMitte           : TLabel;
    LabelXdrucken        : TLabel;
    LabelYdrucken        : TLabel;
    MaskEditXdrucken     : TMaskEdit;
    MaskEditYdrucken     : TMaskEdit;
    Panel13              : TPanel;
    LabelUnterschrift    : TLabel;
    LabelSchrift         : TLabel;
    MaskEditUnterschrift : TMaskEdit;
    ListBoxSchrift       : TListBox;
    RadioGroup           : TRadioGroup;
    RadioButtonlinks     : TRadioButton;
    RadioButtonzentriert : TRadioButton;
    RadioButtonrechts    : TRadioButton;

    Drucker1            : TMenuItem;
    Druckereinrichten1  : TMenuItem;
    drucken1            : TMenuItem;
    PrinterSetupDialog1 : TPrinterSetupDialog;
    PrintDialog1        : TPrintDialog;
    PanelSpeed: TPanel;
    SpeedHilfe    : TSpeedButton;
    SpeedDrucken  : TSpeedButton;
    Darstellung: TMenuItem;
    SkalarproduktMethode: TMenuItem;
    Glaettungsgrad: TMenuItem;
    N11: TMenuItem;
    N21: TMenuItem;
    N31: TMenuItem;
    N41: TMenuItem;
    N51: TMenuItem;
    N61: TMenuItem;
    N71: TMenuItem;
    N81: TMenuItem;
    N91: TMenuItem;
    N101: TMenuItem;
    Zaehlkalotte1: TMenuItem;
    inStufen1    : TMenuItem;
    Fliessend1   : TMenuItem;
    Isolinien    : TMenuItem;
    Grauwerte    : TMenuItem;
    FarbenIso    : TMenuItem;
    PanelHLS: TPanel;
    ImageHLS: TImage;
    ButtonPlotten: TButton;
    LabelMax: TLabel;
    LabelMin: TLabel;
    LabelText: TLabel;
    LabelText2: TLabel;
    LabelText3: TLabel;
    Panel3: TPanel;
    LabelGlaettung: TLabel;
    Handbuch: TMenuItem;
    ColorDialog1: TColorDialog;
    PanelPlotFile: TPanel;
    LabelGeraet: TLabel;
    Image2: TImage;
    Label1: TLabel;
    PunktAnzeigen : TMenuItem;
    PunktFarbe: TMenuItem;
    PunktAnklicken: TMenuItem;
    Image3: TImage;
    SpeedHandbuch: TSpeedButton;
    SpeedKopieren: TSpeedButton;
    SpeedZwischenablage: TSpeedButton;
    SpeedVektor: TSpeedButton;
    SpeedStufen: TSpeedButton;
    SpeedFliessend: TSpeedButton;
    SpeedFarbe: TSpeedButton;
    SpeedGleichverteilung: TSpeedButton;
    SpeedIsoStufen: TSpeedButton;
    SpeedIsoGrau: TSpeedButton;
    SpeedIsoFarbe: TSpeedButton;
    SpeedPlotter: TSpeedButton;
    SpeedPLT: TSpeedButton;
    SpeedDXF: TSpeedButton;
    SpeedPeripherie: TSpeedButton;
    SpeedDiagramm: TSpeedButton;
    SpeedRahmen: TSpeedButton;
    Literatur: TMenuItem;
    SpeedLiteratur: TSpeedButton;
    ImageNord: TImage;
    ListBoxStrich: TListBox;
    LabelStrich: TLabel;
    PanelKlick: TPanel;
    LabelKlick: TLabel;
    LabelFallrichtung: TLabel;
    LabelFallwinkel: TLabel;
    LabelWerte: TLabel;
    LabelPixel: TLabel;
    DatenSpeichern: TMenuItem;
    Dspeichern: TMenuItem;
    DspeichernUnter: TMenuItem;
    SpeedDspeichernUnter: TSpeedButton;
    StatusBar: TStatusBar;
    LabelBeenden: TLabel;
    SpeedEinrichten: TSpeedButton;
    Auswertung: TMenuItem;
    DatenPlotten: TMenuItem;
    Grosskreise: TMenuItem;
    Statistik: TMenuItem;
    Submaxima: TMenuItem;
    SpeedPunkte: TSpeedButton;
    SpeedGKreise: TSpeedButton;
    SpeedMaxima: TSpeedButton;
    SpeedStatistik: TSpeedButton;
    VLinien: TMenuItem;
    PixelStufen: TMenuItem;
    PixelFliessend: TMenuItem;
    SpeedPixelS: TSpeedButton;
    SpeedPixelF: TSpeedButton;
    SpeedPunkt: TSpeedButton;
    PunkteWeg: TMenuItem;
    SpeedUndo: TSpeedButton;
    PanelGroesse: TPanel;
    LabelBHoehe: TLabel;
    LabelBBreite: TLabel;
    MaskEditBBreite: TMaskEdit;
    MaskEditBHoehe: TMaskEdit;
    CheckBoxBild: TCheckBox;
    BGroesse: TMenuItem;
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
    Hintergrund: TMenuItem;
    transparent: TMenuItem;
    HFarbe: TMenuItem;
    SpeedBGroesse: TSpeedButton;
    SpeedTransparent: TSpeedButton;
    SpeedBMP: TSpeedButton;
    SpeedGIF: TSpeedButton;
    SpeedTIF: TSpeedButton;
    SpeedJPG: TSpeedButton;
    SpeedWMF: TSpeedButton;
    SpeedEMF: TSpeedButton;
    SpeedHFarbe: TSpeedButton;
    speichernPLT: TMenuItem;
    speichernDXF: TMenuItem;
    holenBMP: TMenuItem;
    holenGIF: TMenuItem;
    holenTIF: TMenuItem;
    holenJPG: TMenuItem;
    holenWMF: TMenuItem;
    holenEMF: TMenuItem;
    OpenPictureDialog1: TOpenPictureDialog;
    SpeedHolWMF: TSpeedButton;
    SpeedHolJPG: TSpeedButton;
    SpeedHolTIF: TSpeedButton;
    SpeedHolGIF: TSpeedButton;
    SpeedHolBMP: TSpeedButton;
    SpeedHolEMF: TSpeedButton;
    SpeichernUPLT: TMenuItem;
    speichernUDXF: TMenuItem;
    Ploterstellen: TButton;
    PanelWarten: TPanel;
    LabelPoly: TLabel;
    LabelWarten: TLabel;
    ButtonDrucken: TButton;
    ButtonAbbrechen: TButton;

    procedure FormActivate(Sender: TObject);
    procedure ButtonStartClick(Sender: TObject);
    procedure ButtonzurueckClick(Sender: TObject);
    procedure ButtonbeendenClick(Sender: TObject);

    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure CheckBoxOKClick(Sender: TObject);

    procedure VielfacheGleichverteilung1Click(Sender: TObject);
    procedure manuelleAbstufung1Click(Sender: TObject);

    {1.Isolinie}
    procedure Isolinie1Click(Sender: TObject);
    procedure durchgezogeneLinie1Click(Sender: TObject);
    procedure gestrichelteLinie1Click(Sender: TObject);
    procedure punktierteLinie1Click(Sender: TObject);
    procedure strichpunktierteLinie1Click(Sender: TObject);

    {2.Isolinie}
    procedure Isolinie2Click(Sender: TObject);
    procedure durchgezogeneLinie2Click(Sender: TObject);
    procedure gestrichelteLinie2Click(Sender: TObject);
    procedure punktierteLinie2Click(Sender: TObject);
    procedure strichpunktierteLinie2Click(Sender: TObject);

    {3.Isolinie}
    procedure Isolinie3Click(Sender: TObject);
    procedure durchgezogeneLinie3Click(Sender: TObject);
    procedure gestrichelteLinie3Click(Sender: TObject);
    procedure punktierteLinie3Click(Sender: TObject);
    procedure strichpunktierteLinie3Click(Sender: TObject);

    {4.Isolinie}
    procedure Isolinie4Click(Sender: TObject);
    procedure durchgezogeneLinie4Click(Sender: TObject);
    procedure gestrichelteLinie4Click(Sender: TObject);
    procedure punktierteLinie4Click(Sender: TObject);
    procedure strichpunktierteLinie4Click(Sender: TObject);

    {5.Isolinie}
    procedure Isolinie5Click(Sender: TObject);
    procedure durchgezogeneLinie5Click(Sender: TObject);
    procedure gestrichelteLinie5Click(Sender: TObject);
    procedure punktierteLinie5Click(Sender: TObject);
    procedure strichpunktierteLinie5Click(Sender: TObject);

    {Grafik}
    procedure kopieren1Click(Sender: TObject);
    procedure ausZwischenablageClick(Sender: TObject);

    procedure Hilfe1Click(Sender: TObject);

    {Peripherie}
    procedure FarbePeripherie1Click(Sender: TObject);

    procedure FormShow(Sender: TObject);
    procedure ShowHint(Sender: TObject);
    procedure SpeedHilfeClick(Sender: TObject);
    procedure Druckereinrichten1Click(Sender: TObject);
    procedure drucken1Click(Sender: TObject);
    procedure SpeedDruckenClick(Sender: TObject);
    procedure MaskEditUnterschriftKeyPress(Sender: TObject; var Key: Char);
    procedure RadioButtonlinksClick(Sender: TObject);
    procedure RadioButtonzentriertClick(Sender: TObject);
    procedure RadioButtonrechtsClick(Sender: TObject);
    procedure ListBoxSchriftClick(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure N31Click(Sender: TObject);
    procedure N41Click(Sender: TObject);
    procedure N51Click(Sender: TObject);
    procedure N61Click(Sender: TObject);
    procedure N71Click(Sender: TObject);
    procedure N81Click(Sender: TObject);
    procedure N91Click(Sender: TObject);
    procedure N101Click(Sender: TObject);
    procedure FliessendFarbeClick(Sender: TObject);
    procedure FliessendGraustufenClick(Sender: TObject);
    procedure inStufen1Click(Sender: TObject);
    procedure Fliessend1Click(Sender: TObject);
    procedure GrauwerteClick(Sender: TObject);
    procedure FarbenIsoClick(Sender: TObject);
    procedure ImageHLSMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ButtonPlottenClick(Sender: TObject);
    procedure HandbuchClick(Sender: TObject);
    procedure FarbeDiagramm1Click(Sender: TObject);
    procedure FarbeRahmenClick(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure PunktFarbeClick(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure SpeedKopierenClick(Sender: TObject);
    procedure SpeedZwischenablageClick(Sender: TObject);
    procedure SpeedVektorClick(Sender: TObject);
    procedure SpeedStufenClick(Sender: TObject);
    procedure SpeedFliessendClick(Sender: TObject);
    procedure SpeedFarbeClick(Sender: TObject);
    procedure SpeedGleichverteilungClick(Sender: TObject);
    procedure SpeedIsoStufenClick(Sender: TObject);
    procedure SpeedIsoGrauClick(Sender: TObject);
    procedure SpeedIsoFarbeClick(Sender: TObject);
    procedure HPPlotter1Click(Sender: TObject);
    procedure SpeedPlotterClick(Sender: TObject);
    procedure SpeedPLTClick(Sender: TObject);
    procedure SpeedDXFClick(Sender: TObject);
    procedure SpeedPeripherieClick(Sender: TObject);
    procedure SpeedDiagrammClick(Sender: TObject);
    procedure SpeedRahmenClick(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
    procedure SpeedLiteraturClick(Sender: TObject);
    procedure ListBoxStrichClick(Sender: TObject);
    procedure DspeichernClick(Sender: TObject);
    procedure DspeichernUnterClick(Sender: TObject);
    procedure SpeedDspeichernUnterClick(Sender: TObject);
    procedure SpeedEinrichtenClick(Sender: TObject);
    procedure GrosskreiseClick(Sender: TObject);
    procedure DatenPlottenClick(Sender: TObject);
    procedure StatistikClick(Sender: TObject);
    procedure SubmaximaClick(Sender: TObject);
    procedure SpeedPunkteClick(Sender: TObject);
    procedure SpeedGKreiseClick(Sender: TObject);
    procedure SpeedStatistikClick(Sender: TObject);
    procedure SpeedMaximaClick(Sender: TObject);
    procedure PunktAnklickenClick(Sender: TObject);
    procedure PixelStufenClick(Sender: TObject);
    procedure PixelFliessendClick(Sender: TObject);
    procedure SpeedPixelSClick(Sender: TObject);
    procedure SpeedPixelFClick(Sender: TObject);
    procedure SpeedPunktClick(Sender: TObject);
    procedure RDiagonal1Click(Sender: TObject);
    procedure Ldiagonal1Click(Sender: TObject);
    procedure KreuzVert1Click(Sender: TObject);
    procedure KreuzDiag1Click(Sender: TObject);
    procedure StreifenHor1Click(Sender: TObject);
    procedure StreifenVert1Click(Sender: TObject);
    procedure RDiagonal2Click(Sender: TObject);
    procedure LDiagonal2Click(Sender: TObject);
    procedure KreuzVert2Click(Sender: TObject);
    procedure KreuzDiag2Click(Sender: TObject);
    procedure StreifenHor2Click(Sender: TObject);
    procedure StreifenVert2Click(Sender: TObject);
    procedure RDiagonal3Click(Sender: TObject);
    procedure LDiagonal3Click(Sender: TObject);
    procedure KreuzVert3Click(Sender: TObject);
    procedure KreuzDiag3Click(Sender: TObject);
    procedure StreifenHor3Click(Sender: TObject);
    procedure StreifenVert3Click(Sender: TObject);
    procedure RDiagonal4Click(Sender: TObject);
    procedure LDiagonal4Click(Sender: TObject);
    procedure KreuzVert4Click(Sender: TObject);
    procedure KreuzDiag4Click(Sender: TObject);
    procedure StreifenHor4Click(Sender: TObject);
    procedure StreifenVert4Click(Sender: TObject);
    procedure RDiagonal5Click(Sender: TObject);
    procedure LDiagonal5Click(Sender: TObject);
    procedure KreuzVert5Click(Sender: TObject);
    procedure KreuzDiag5Click(Sender: TObject);
    procedure StreifenHor5Click(Sender: TObject);
    procedure StreifenVert5Click(Sender: TObject);
    procedure VLinienClick(Sender: TObject);
    procedure PunkteWegClick(Sender: TObject);
    procedure SpeedUndoClick(Sender: TObject);
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
    procedure speichernPLTClick(Sender: TObject);
    procedure speichernUBMPClick(Sender: TObject);
    procedure speichernUGIFClick(Sender: TObject);
    procedure speichernUTIFClick(Sender: TObject);
    procedure speichernUJPGClick(Sender: TObject);
    procedure speichernUWMFClick(Sender: TObject);
    procedure speichernUEMFClick(Sender: TObject);
    procedure transparentClick(Sender: TObject);
    procedure HFarbeClick(Sender: TObject);
    procedure SpeedBGroesseClick(Sender: TObject);
    procedure SpeedTransparentClick(Sender: TObject);
    procedure SpeedHFarbeClick(Sender: TObject);
    procedure SpeedBMPClick(Sender: TObject);
    procedure SpeedGIFClick(Sender: TObject);
    procedure SpeedTIFClick(Sender: TObject);
    procedure SpeedJPGClick(Sender: TObject);
    procedure SpeedWMFClick(Sender: TObject);
    procedure SpeedEMFClick(Sender: TObject);
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
    procedure SpeedHolEMFClick(Sender: TObject);
    procedure SpeichernUPLTClick(Sender: TObject);
    procedure speichernDXFClick(Sender: TObject);
    procedure speichernUDXFClick(Sender: TObject);
    procedure PloterstellenClick(Sender: TObject);
    procedure ButtonDruckenClick(Sender: TObject);
    procedure ButtonAbbrechenClick(Sender: TObject);
    procedure RadioButtonJaClick(Sender: TObject);
    procedure RadioButtonNeinClick(Sender: TObject);
  end;

var
  Form23        : TForm23;
  Linie         : array[0..5] of TPenstyle;
  HolPixS       : string;
  HolZwischen   : boolean;
  CurrentFile   : string;
  IsoFarbe      : array[0..5] of TColor;
  Linien        : array[0..5] of TPenstyle;
  PlotDateiS    : string;
  Kal           : real;
  LaMax, LbMax  : word;
  WMaxS         : string[6];
  Pis           : array[0..5] of real;
  Iso           : array[0..5] of real;
  PilS          : string[10];
  PisS          : array[0..5] of string;
  Co            : integer;
  Schrift       : byte;
  BuendigS      : string;
  Gedrueckt     : array [1..3] of boolean;
  TextS         : string;
  GrauSkala     : Boolean;
  FarbSkala     : Boolean;
  MaxDichte     : real;
  XMax, YMax    : integer;
  HLSmin, HLSmax: single;
  Klick         : byte;
  Hls           : array[0..2] of word;
  DarstellungN  : byte;
  Maus          : boolean;
  IsoSpeichern  : array[0..5] of TColor;
  iLinie        : byte;
  Ratio         : real;
  BHoeheSt      : word;
  Kreuz         : boolean;
  PolyZahl      : array[0..4] of byte;
  FuellenS      : string; 

implementation
uses Unit10, Unit11, Unit12, Unit21, Unit22, Unit25, Unit64,
     Unit85;
{$R *.DFM}

procedure TForm23.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm23.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm23.FormActivate(Sender: TObject);
var
  i    : word;
begin
  setlength (AziFeld, MaxDaten);
  setlength (FalFeld, MaxDaten);
  WeiterB[23] := false;
  Left   := 4;
  Top    := 0;
  Width  := 1040;
  Height := 750;
  Fortschritt.Visible                := false;
  Form23.Caption                     := Tx(549);  {Fabric7: Darstellung von}
  Image1.Hint                        := Hilf(191);
  ListBox1.Hint                      := Hilf(32);
  Labelausgewaehlte.Hint             := Hilf(32);
  LabelAnzahlDaten.Hint              := Hilf(54);
  Label3.Hint                        := Hilf(54);
  PanelManuell.Hint                  := Hilf(195);
  MaskEdit1.Hint                     := Hilf(196);
  MaskEdit2.Hint                     := Hilf(197);
  MaskEdit3.Hint                     := Hilf(198);
  MaskEdit4.Hint                     := Hilf(199);
  MaskEdit5.Hint                     := Hilf(200);
  MaskEdit6.Hint                     := Hilf(201);
  CheckBoxOK.Hint                    := Hilf(202);
  GroupBoxPlotten.Hint               := Hilf(58) + Hilf(59);
  ButtonStart.Hint                   := Hilf(37);
  Buttonzurueck.Hint                 := Hilf(52);
  Buttonbeenden.Hint                 := Hilf(30);
  Ploterstellen.Hint                 := Hilf(60);
  Panel6.Hint                        := Hilf(61);
  Panel7.Hint                        := Hilf(62);
  MaskEditX.Hint                     := Hilf(63);
  MaskEditY.Hint                     := Hilf(64);
  PunktAnzeigen.Hint                 := Hilf(268);
  ButtonPlotten.Hint                 := Hilf(297);
  SpeedHandbuch.Hint                 := Hilf(274);
  SpeedKopieren.Hint                 := Hilf(262);
  SpeedZwischenablage.Hint           := Hilf(246);
  SpeedVektor.Hint                   := Hilf(379);
  SpeedStufen.Hint                   := Hilf(381);
  SpeedFliessend.Hint                := Hilf(382);
  SpeedGleichverteilung.Hint         := Hilf(405);
  SpeedIsoStufen.Hint                := Hilf(406);
  SpeedIsoGrau.Hint                  := Hilf(407);
  SpeedIsoFarbe.Hint                 := Hilf(408);
  SpeedFarbe.Hint                    := Hilf(523);
  SpeedPlotter.Hint                  := Hilf(437);
  SpeedPLT.Hint                      := Hilf(438);
  SpeedDXF.Hint                      := Hilf(439);
  SpeedPeripherie.Hint               := Hilf(440);
  SpeedDiagramm.Hint                 := Hilf(441);
  SpeedRahmen.Hint                   := Hilf(442);
  SpeedHandbuch.Hint                 := Hilf(274);
  SpeedHilfe.Hint                    := Hilf(210);
  SpeedDspeichernUnter.Hint          := Hilf(204);
  Speedeinrichten.Hint               := Hilf(505);
  SpeedStatistik.Hint                := Hilf(509);
  SpeedMaxima.Hint                   := Hilf(508);
  SpeedPunkte.Hint                   := Hilf(506);
  SpeedGKreise.Hint                  := Hilf(511);
  SpeedPixelS.Hint                   := Hilf(520);
  SpeedPixelF.Hint                   := Hilf(521);
  SpeedPunkt.Hint                    := Hilf(522);
  SpeedUndo.Hint                     := Hilf(545);
  SpeedBGroesse.Hint                 := Hilf(583);
  SpeedTransparent.Hint              := Hilf(584);
  SpeedHFarbe.Hint                   := Hilf(443);
  SpeedBMP.Hint                      := Hilf(586);
  SpeedGIF.Hint                      := Hilf(587);
  SpeedTIF.Hint                      := Hilf(588);
  SpeedJPG.Hint                      := Hilf(589);
  SpeedWMF.Hint                      := Hilf(590);
  SpeedEMF.Hint                      := Hilf(591);
  SpeedHolBMP.Hint                   := Hilf(621);
  SpeedHolGIF.Hint                   := Hilf(622);
  SpeedHolTIF.Hint                   := Hilf(623);
  SpeedHolJPG.Hint                   := Hilf(624);
  SpeedHolWMF.Hint                   := Hilf(625);
  SpeedHolEMF.Hint                   := Hilf(626);
  HolPixS                            := '';
  Abstufung1.Caption                 := Tx(550);  {&Abstufung}
  VielfacheGleichverteilung1.Caption := Tx(551);  {&Vielfache der Gleichvert}
  manuelleAbstufung1.Caption         := Tx(552);  {manuelle &Abstufung}
  Farbe1.Caption                     := Tx(275);  {Farbe}
  Isolinie1.Caption                  := Tx(553);  {1. Isolinie}
  durchgezogeneLinie1.Caption        := Tx(558);  {&durchgezogene Linie}
  gestrichelteLinie1.Caption         := Tx(559);  {&gestrichelte Linie}
  punktierteLinie1.Caption           := Tx(560);  {&punktierte Linie}
  strichpunktierteLinie1.Caption     := Tx(561);  {&strichpunktierte Linie}
  Isolinie2.Caption                  := Tx(554);  {&2. Isolinie}
  durchgezogeneLinie2.Caption        := Tx(558);  {&durchgezogene Linie}
  gestrichelteLinie2.Caption         := Tx(559);  {&gestrichelte Linie}
  punktierteLinie2.Caption           := Tx(560);  {&punktierte Linie}
  strichpunktierteLinie2.Caption     := Tx(561);  {&strichpunktierte Linie}
  Isolinie3.Caption                  := Tx(555);  {&3. Isolinie}
  durchgezogeneLinie3.Caption        := Tx(558);  {&durchgezogene Linie}
  gestrichelteLinie3.Caption         := Tx(559);  {&gestrichelte Linie}
  punktierteLinie3.Caption           := Tx(560);  {&punktierte Linie}
  strichpunktierteLinie3.Caption     := Tx(561);  {&strichpunktierte Linie}
  Isolinie4.Caption                  := Tx(556);  {&4. Isolinie}
  durchgezogeneLinie4.Caption        := Tx(558);  {&durchgezogene Linie}
  gestrichelteLinie4.Caption         := Tx(559);  {&gestrichelte Linie}
  punktierteLinie4.Caption           := Tx(560);  {&punktierte Linie}
  strichpunktierteLinie4.Caption     := Tx(561);  {&strichpunktierte Linie}
  Isolinie5.Caption                  := Tx(557);  {&5. Isolinie}
  durchgezogeneLinie5.Caption        := Tx(558);  {&durchgezogene Linie}
  gestrichelteLinie5.Caption         := Tx(559);  {&gestrichelte Linie}
  punktierteLinie5.Caption           := Tx(560);  {&punktierte Linie}
  strichpunktierteLinie5.Caption     := Tx(561);  {&strichpunktierte Linie}
  Darstellung.Caption                := Tx(994);  {Pixel-Grafik}
  SkalarproduktMethode.Caption       := Tx(996);  {Skalarprodukt-Methode}
  Glaettungsgrad.Caption             := Tx(997);  {Gl�ttungsgrad}
  inStufen1.Caption                  := Tx(999);  {in Stufen}
  fliessend1.Caption                 := Tx(1000); {flie�end}
  PixelStufen.Caption                := Tx(999);
  PixelFliessend.Caption             := Tx(1000);
  Grafik1.Caption                    := Tx(484);  {&Grafik}
  kopieren1.Caption                  := Tx(485);  {&kopieren}
  Hintergrund.Caption                := Tx(1453);
  HFarbe.Caption                     := Tx(275);
  speichern1.Caption                 := Tx(487);  {&speichern}
  speichernunter1.Caption            := Tx(488);  {speichern &unter}
  ausZwischenablage.Caption          := Tx(489);  {aus &Zwischenablage holen}
  ausDatei.Caption                   := Tx(490);  {aus &Datei holen}
  HPPlotter1.Caption                 := Tx(288);  {auf dem &Hp-Plotter plotten}
  FarbePeripherie1.Caption           := Tx(498);  {Farbe der &Peripherie}
  FarbeDiagramm1.Caption             := Tx(860);
  DatenSpeichern.Caption             := Tx(86);
  Dspeichern.Caption                 := Tx(87);
  DspeichernUnter.Caption            := Tx(88);
  Hilfe1.Caption                     := Tx(162)+' (F1)';
  Labelausgewaehlte.Caption          := Tx(136);  {ausgew�hlte Dateien:}
  LabelAnzahlDaten.Caption           := Tx(181);  {Anzahl der Daten}
  LabelEingabe.Caption               := Tx(569);  {manuelle Eingabe:}
  Isolinien.Caption                  := Tx(618);
  PunktAnzeigen.Caption              := Tx(1134);
  PunktFarbe.Caption                 := Tx(275);
  PunktAnklicken.Caption             := Tx(1134);
  Grauwerte.Caption                  := Tx(1050);
  FarbenIso.Caption                  := Tx(1049);
  Linien1.Caption                    := Tx(793);
  Zaehlkalotte1.Caption              := Tx(575);
  PixelStufen.Caption                := TX(1353);
  PixelFliessend.Caption             := Tx(1354);
  Label1Isolinie.Caption             := Tx(570);  {1. Isolinie:}
  Label2Isolinie.Caption             := Tx(571);  {2. Isolinie:}
  Label3Isolinie.Caption             := Tx(572);  {3. Isolinie:}
  Label4Isolinie.Caption             := Tx(573);  {4. Isolinie:}
  Label5Isolinie.Caption             := Tx(574);  {5. Isolinie:}
  LabelZaehlkalotte.Caption          := Tx(575);  {Z�hlkalotte:}
  GroupBoxPlotten.Caption            := Tx(502);  {Plotten:}
  Ploterstellen.Caption              := Tx(298);  {Plot-Einstellungen OK?}
  LabelRadius.Caption                := Tx(299);  {Radius [cm]:}
  LabelMittelpunkt.Caption           := Tx(300);  {Mittelpunkt [cm]:}
  LabelX.Caption                     := Tx(687);  {X:}
  LabelY.Caption                     := Tx(688);  {Y:}
  Buttonzurueck.Caption              := Tx(30);
  Buttonbeenden.Caption              := Tx(53);
  Auswertung.Caption                 := Tx(1341);
  Isolinien.Caption                  := Tx(618);
  Statistik.Caption                  := Tx(1342);
  Submaxima.Caption                  := Tx(579);
  N1Isolinie2.Caption                := Tx(570);
  N2Isolinie2.Caption                := Tx(571);
  N3Isolinie2.Caption                := Tx(572);
  N4Isolinie2.Caption                := Tx(573);
  N5Isolinie2.Caption                := Tx(574);
  if Gefuegetyp = 1 then
    DatenPlotten.Caption           := TX(1343);
  if Gefuegetyp = 2 then
    DatenPlotten.Caption           := Tx(1344);
  Grosskreise.Caption              := Tx(1345);
  Labelausgewaehlte.Enabled        := false;       {ausgew�hlte Dateien}
  LabelAnzahlDaten.Enabled         := false;       {Anzahl der Daten}
  Label3.Caption                   := '     ';     {00000}
  PanelManuell.Visible             := false;
  GroupBoxPlotten.Caption          := '';
  LabelZaehlkalotte.Enabled        := false;       {Z�hlkalotte}
  Darstellung.Enabled              := false;
  CheckBoxOk.Enabled               := false;
  Listbox1.Enabled                 := false;
  MaskEdit1.EditMask               := '999;0; ';
  MaskEdit2.EditMask               := '999;0; ';
  MaskEdit3.EditMask               := '999;0; ';
  MaskEdit4.EditMask               := '999;0; ';
  MaskEdit5.EditMask               := '999;0; ';
  MaskEdit6.EditMask               := '999;0; ';
  MaskEditRadius.EditMask          := '999;0; ';
  MaskEditX.EditMask               := '999;0; ';
  MaskEditY.EditMask               := '999;0; ';
  MaskEditRadius.Text              := InttoStr(round(HpRadius*10));
  MaskEditX.Text                   := InttoStr(round(XKoord*10));
  MaskEditY.Text                   := InttoStr(round(YKoord*10));
  Maskedit1.Enabled                := false;
  Maskedit2.Enabled                := false;
  Maskedit3.Enabled                := false;
  Maskedit4.Enabled                := false;
  Maskedit5.Enabled                := false;
  Maskedit6.Enabled                := false;
  MaskEditRadius.Enabled           := false;
  MaskEditX.Enabled                := false;
  MaskEditY.Enabled                := false;
  LabelRadius.Enabled              := false;
  LabelMittelpunkt.Enabled         := false;
  LabelX.Enabled                   := false;
  LabelY.Enabled                   := false;
  Holzwischen                      := false;
  Grafik1.Enabled                  := false;
  Kopieren1.Enabled                := false;
  speichern1.Enabled               := false;
  speichernunter1.Enabled          := false;
  Farbe1.Enabled                   := false;
  Linien1.Enabled                  := false;
  Glaettungsgrad.Enabled           := false;
  Abstufung1.Enabled               := false;
  Paneldrucken.Visible             := false;
  RadioButtonlinks.Visible         := false;
  RadioButtonzentriert.Visible     := false;
  RadioButtonrechts.Visible        := false;
  RadioGroup.Visible               := false;
  Drucker1.Caption                 := Tx(92);
  Druckereinrichten1.Caption       := Tx(94);
  drucken1.Caption                 := Tx(93);
  FarbeRahmen.Caption              := Tx(892);
  SpeedDrucken.Enabled             := false;
  manuelleAbstufung1.Enabled       := false;
  SpeedDrucken.Hint                := Hilf(203);
  for i := 1 to 3 do Gedrueckt[i]  := false;
  if VielfacheS = 'MANUAL' then
    CheckBoxOk.State   := cbChecked
  else CheckBoxOk.Enabled := false;
  GrauSkala                   := false;
  FarbSkala                   := true;
  GroupBoxPlotten.Visible     := false;
  PanelHLS.Visible            := false;
  ButtonPlotten.Enabled       := false;
  LabelText.Caption           := Tx(1052);
  LabelText2.Caption          := Tx(1053);
  LabelText3.Caption          := Tx(1054);
  Panel3.Visible              := false;
  LabelGeraet.Caption         := Tx(850);
  PanelPlotFile.Visible       := false;
  Handbuch.Caption            := Tx(1055)+' (F2)';
  Literatur.Caption           := Tx(1183)+' (F5)';
  SpeedLiteratur.Hint         := Hilf(462);
  DarstellungN                := 1;
  PanelSpeed.Visible          := false;
  for i := 0 to 9 do ListboxStrich.Items.Add(IntToStr(i+1));
  ListBoxStrich.Visible     := false;
  LabelStrich.Visible       := false;
  LabelStrich.Caption       := Tx(1187);
  PanelKlick.Visible        := false;
  PunktAnzeigen.Caption     := Tx(1134);
  LabelKlick.Caption        := Tx(1137);
  LabelFallrichtung.Caption := Tx(1138);
  LabelFallwinkel.Caption   := Tx(1139);
  Maus                   := false;
  LabelWerte.Caption     := Tx(1191);
  LabelPixel.Caption     := Tx(1192);
  ButtonPlotten.Caption  := Tx(241);
  LabelBeenden.Caption   := Tx(1244);
  PunkteWeg.Caption      := Tx(1396);
  PunktAnzeigen.Enabled  := false;
  DatenSpeichern.Enabled := false;
  Auswertung.Enabled     := false;
  if (Gefuegetyp = 1) or (Gefuegetyp = 3) then
  begin
    SpeedPunkte.Enabled  := true;
    SpeedGKreise.Enabled := false;
  end;
  if (Gefuegetyp = 2) or (Gefuegetyp = 4) then
  begin
    SpeedPunkte.Enabled  := false;
    SpeedGkreise.Enabled := true;
  end;
  MaskEditBBreite.EditMask := '99999;0; ';
  MaskEditBHoehe.EditMask  := '99999;0; ';
  LabelBBreite.Caption     := Tx(1440);
  LabelBHoehe.Caption      := Tx(1441);
  BGroesse.Caption         := Tx(1439);
  PanelGroesse.Visible     := false;
  Ratio                := Image1.Width/Image1.Height;
  ausDatei.Enabled     := true;
  HPPlotter1.Enabled   := true;
  HTransparent         := false;
  LabelPoly.Caption    := Tx(1530);
  LabelWarten.Caption  := Tx(1531);
  PanelWarten.Visible  := false;
  if WeiterF then
  begin
    ButtonStart.Visible   := false;
    ButtonBeenden.Visible := false;
    ButtonStartClick(Sender);
  end;
end;

procedure TForm23.ButtonzurueckClick(Sender: TObject);      {zur�ck}
var
  Flaeche : TRect;
begin
  Fortschritt.Visible      := false;
  ButtonStart.Enabled      := true;
  ListBox1.Clear;
  ListBox1.Enabled := true;
  MaskEdit1.Clear;
  MaskEdit2.Clear;
  MaskEdit3.Clear;
  MaskEdit4.Clear;
  MaskEdit5.Clear;
  MaskEdit6.Clear;
  MaskEditRadius.Clear;
  MaskEditX.Clear;
  MaskEditY.Clear;
  Flaeche := Rect(0,0,Clientwidth,ClientHeight);
  Loeschen (ImageNord.Canvas, Flaeche);
  Loeschen (Image3.Canvas, Flaeche);
  Loeschen (Image2.Canvas, Flaeche);
  if not WeiterF then
  begin
    AziFeld := Nil;
    FalFeld := Nil;
  end;
  Loeschen (Image1.Canvas, Flaeche);
  Form23.Close;
  if EingabeS = 'Festplatte' then Form11.Close;
  if EingabeS = 'ExcelD' then Form64.Close;
end;

procedure TForm23.ButtonbeendenClick(Sender: TObject);      {beenden}
var
  Flaeche : TRect;
begin
  AziFeld := Nil;
  FalFeld := Nil;
  Flaeche := Rect(0,0,Clientwidth,ClientHeight);
  Loeschen (Image1.Canvas, Flaeche);
  Loeschen (ImageNord.Canvas, Flaeche);
  Loeschen (Image2.Canvas, Flaeche);
  Loeschen (Image3.Canvas,Flaeche);
  Form23.Close;
  if EingabeS = 'ExcelD' then Form64.Close;
  Form11.Close;
  Form10.Close;
  Form22.Close;
  SetCurrentDir(DirectS);
end;

procedure TForm23.ButtonStartClick(Sender: TObject);      {Start}
var
  i, j     : byte;
  Bitmap   : TBitmap;
  ProS     : string[10];
  Quadrat  : TRect;
  FBild    : TBitmap;
  JBild    : TJpegImage;
  GBild    : TGifImage;
  MetaFile : TMetaFile;
  Rahmen   : TRect;

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
  if (Gefuegetyp = 1) or (Gefuegetyp = 3) then
  begin
    Grosskreise.Enabled  := false;
    SpeedGKreise.Enabled := false;
  end;
  if (Gefuegetyp = 2) or (Gefuegetyp = 4) then
  begin
    Grosskreise.Enabled  := true;
    SpeedGKreise.Enabled := true;
  end;
  if not WeiterF then
  begin
    SpeedStatistik.Enabled := true;
    SpeedMaxima.Enabled    := true;
    if (Gefuegetyp = 2) or (Gefuegetyp = 4) then
      SpeedGKreise.Enabled   := true;
    SpeedPunkte.Enabled    := true;
  end
  else
  begin
    SpeedPunkte.Enabled    := false;
    SpeedStatistik.Enabled := false;
    SpeedMaxima.Enabled    := false;
    SpeedGKreise.Enabled   := false;
  end;
  PanelSpeed.Visible       := true;
  GroupBoxPlotten.Visible  := false;
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
  Abstufung1.Enabled       := true;
  Farbe1.Enabled           := true;
  Linien1.Enabled          := true;
  Abstufung1.Enabled   := true;
  Farbe1.Enabled       := true;
  Linien1.Enabled      := true;
  Grafik1.Enabled      := true;
  Darstellung.Enabled  := true;
  manuelleAbstufung1.Enabled := true;
  if GeraetS = 'no' then FarbePeripherie1.Enabled := false;
  kopieren1.Enabled         := true;
  speichern1.Enabled        := true;
  speichernunter1.Enabled   := true;
  Labelausgewaehlte.Enabled := true;       {ausgew�hlte Dateien}
  LabelAnzahlDaten.Enabled  := true;       {Anzahl der Daten}
  Listbox1.Enabled          := true;
  ListBox1.Clear;
  if EingabeS <> 'ExcelD' then
    for i := 0 to High (DateinameS) do
      Listbox1.Items.Add (DateiNameS[i])
  else ListBox1.Items.Add(PfadS);
  Label3.Caption   := IntToStr(ZahlGlob);
  {Diagramm plotten}
  Bo := Pi/180;
  for i := 0 to High (DateinameS) do Listbox1.Items.Add (DateiNameS[i]);
  ImageNord.Picture.LoadfromFile (DirectS+'\'+'NordPfeil.bmp');
  Image1.Top    := ImTop;
  Image1.Left   := ImLeft;
  Image1.Width  := ImWidth;
  Image1.Height := ImHeight;
  Bitmap := Tbitmap.Create;
  Bitmap.Width     := ImWidth;
  Bitmap.Height    := ImHeight;
  ImageNord.Top    := 22;
  ImageNord.Left   := 400;
  ImageNord.Width  := 18;
  ImageNord.Height := 36;
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
            Canvas.Pixels[i,j]    := HintFarbe
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
    else MessageDlg(Tx(306), mtInformation, [mbOK],0); {Die Zwischenablage..}
    Holzwischen := false;
  end;
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
  {Isolinien berechnen}
  with Image1.Canvas do
  begin
    Isol (Image1.Canvas, Kal, LaMax, LbMax, WMax, Pis, StrichI,
          Fortschritt,MPunkte);
    Pen.Width := 1;
    Brush.Style := bsClear;
    Pen.Color   := UmfangFarbe;
    ellipse (Xmitte-Radius,YMitte-Radius,XMitte+Radius,YMitte+Radius);
    str (WMax:5:1, WMaxS);
    for i := 1 to 5 do str (Pis[i-1]:5:1, PisS[i]);
    Pen.Width   := 1;
    Font.Color  := UmfangFarbe;
    Font.Size   := 16;
    Brush.Color := HintFarbe;
    Font.Name   := 'Times New Roman';
    Textout (Xmitte - Radius-10, 580, 'Max. '+WMaxS+'%');
    Textout (Xmitte - Radius-10, 600,
             Tx(568)+' ' + IntToStr(LaMax)+'/'+IntToStr(LbMax));
  end;
  if DarstellungN = 1 then
  begin
    with Image3.Canvas do
    begin
      Brush.Color := clWhite;    //DiagrFarbe;
      Pen.Color   := clBlack;    //DiagrFarbe;
      Rectangle (0,0,Image3.Width,Image3.Height);
      Font.Size   := 14;
      Font.Name   := 'Times New Roman';
      Font.Color  := ClBlack;    //UmfangFarbe;
      Brush.Style := bsClear;
      Textout (0, 10, '  '+Tx(567)); {Isolinien:}
      Font.Color := IsoLinie[1];
      Textout (20,30, PisS[1]);
      Font.Color := IsoLinie[2];
      Textout (20,50, PisS[2]);
      Font.Color := IsoLinie[3];
      Textout (20,70, PisS[3]);
      Font.Color := IsoLinie[4];
      Textout (20,90, PisS[4]);
      Font.Color := IsoLinie[5];
      Textout (20,110, PisS[5]);
    end;
  end;
  with image2 do
  begin
    Quadrat := Rect (0, 0, Clientwidth, ClientHeight);
    UntereH(Canvas, Quadrat);
  end;
  Image2.Visible := false;
  Image3.Visible := false;
  if not HTransparent then
  begin
    Image1.Canvas.Draw(Image1.Width-Image2.width-5,
                       Image1.Height-Image2.Height-5,
                       Image2.picture.graphic);
    Image1.Canvas.Draw(Image1.Width-Image3.Width,0,
                       Image3.picture.graphic);
  end;
  ImageNord.Visible := false;
  Image1.Canvas.Draw(Image1.Width div 2 - ImageNord.Width div 2,7,
                     ImageNord.Picture.Graphic);
  PunktAnzeigen.Enabled  := true;
  DatenSpeichern.Enabled := true;
  if not WeiterF then
    Auswertung.Enabled := true;
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
  Fortschritt.Visible     := false;
  SpeedDrucken.Enabled    := true;
end;

procedure TForm23.VielfacheGleichverteilung1Click(Sender: TObject);
var
  Datei   : TextFile;
  i       : byte;
  Flaeche : TRect;
begin
  Flaeche := Rect(0,0,Image3.Width,Image3.Height);
  Loeschen (Image3.Canvas, Flaeche);
  PanelManuell.Visible      := false;
  VielfacheS                := 'MULTIPLES';
  Maskedit1.Enabled := false;
  Maskedit2.Enabled := false;
  Maskedit3.Enabled := false;
  Maskedit4.Enabled := false;
  Maskedit5.Enabled := false;
  MaskEdit6.Enabled := false;
  CheckBoxOK.State  := cbUnchecked;
  CheckBoxOK.Enabled := false;
  KonfigZeileS[43] := 'Distance between Contours  :,MULTIPLES';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  for i := 1 to 5 do str (Pis[i-1]:5:1, PisS[i]);
  case DarstellungN of
    1 : VLinienClick(Sender);
    2 : PixelStufenClick(Sender);
    3 : PixelFliessendClick(Sender);
    4 : inStufen1Click(Sender);
    5 : Fliessend1Click(Sender);
  end;
end;

procedure TForm23.manuelleAbstufung1Click(Sender: TObject);
var
  Datei   : TextFile;
  i       : byte;
  Flaeche : TRect;
begin
  Flaeche := Rect(0,0,Image3.Width, Image3.Height);
  Loeschen (Image3.Canvas, Flaeche);
  PanelHLS.Visible     := false;
  PanelManuell.Visible := true;
  CheckBoxOk.Enabled   := true;
  CheckBoxOk.State     := cbUnchecked;
  VielfacheS := 'MANUAL';
  Maskedit1.Enabled := true;
  Maskedit2.Enabled := true;
  Maskedit3.Enabled := true;
  Maskedit4.Enabled := true;
  Maskedit5.Enabled := true;
  MaskEdit6.Enabled := true;
  LabelEingabe.Enabled      := true;
  Labelx10.Enabled          := true;
  Label1Isolinie.Enabled    := true;
  Label2Isolinie.Enabled    := true;
  Label3Isolinie.Enabled    := true;
  Label4Isolinie.Enabled    := true;
  Label5Isolinie.Enabled    := true;
  LabelZaehlkalotte.Enabled := true;
  MaskEdit1.Text    := InttoStr(IsoStufe[1]);
  MaskEdit2.Text    := InttoStr(IsoStufe[2]);
  MaskEdit3.Text    := InttoStr(IsoStufe[3]);
  MaskEdit4.Text    := InttoStr(IsoStufe[4]);
  MaskEdit5.Text    := InttoStr(IsoStufe[5]);
  MaskEdit6.Text    := InttoStr(Kalotte);
  KonfigZeileS[43] := 'Distance between Contours  :,MANUAL';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
end;

procedure TForm23.SpeedGleichverteilungClick(Sender: TObject);
begin
  VielfacheGleichverteilung1Click(Sender);
end;

procedure TForm23.SpeedIsoStufenClick(Sender: TObject);
begin
  manuelleAbstufung1Click(Sender);
end;

procedure TForm23.CheckBoxOKClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
  Iso   : array[0..6] of word;
begin
  if VielfacheS = 'MANUAL' then
  begin
    PilS := MaskEdit1.Text;
    val (PilS, Iso[1], Co);
    PilS := MaskEdit2.Text;
    val (PilS, Iso[2], Co);
    PilS := MaskEdit3.Text;
    val (PilS, Iso[3], Co);
    PilS := MaskEdit4.Text;
    val (PilS, Iso[4], Co);
    PilS := MaskEdit5.Text;
    val (PilS, Iso[5], Co);
    PilS := MaskEdit6.Text;
    val (PilS, Iso[6], Co);
    if (Iso[1] > 0) and (Iso[1] < Iso[2]) and (Iso[2] < Iso[3])
    and (Iso[3] < Iso[4]) and (Iso[4] < Iso[5]) and (Iso[6] > 0) then
    begin
      Pis[0] := Iso[1]/10;
      Pis[1] := Iso[2]/10;
      Pis[2] := Iso[3]/10;
      Pis[3] := Iso[4]/10;
      Pis[4] := Iso[5]/10;
      Kal    := Iso[6]/10;
      PisS[1] := FloatToStr(Pis[0]);
      PisS[2] := FloatToStr(Pis[1]);
      PisS[3] := FloatToStr(Pis[2]);
      PisS[4] := FloatToStr(Pis[3]);
      PisS[5] := FloatToStr(Pis[4]);
    end
    else
    begin
      CheckBoxOk.State := cbUnchecked;
      exit;
    end;
  end;
  IsoStufe[1] := StrtoInt(MaskEdit1.Text);
  IsoStufe[2] := StrtoInt(MaskEdit2.Text);
  IsoStufe[3] := StrtoInt(MaskEdit3.Text);
  IsoStufe[4] := StrtoInt(MaskEdit4.Text);
  IsoStufe[5] := StrtoInt(MaskEdit5.Text);
  Kalotte     := StrtoInt(MaskEdit6.Text);
  KonfigZeileS[44] := '1st Contour Line x 10      :,'+MaskEdit1.Text;
  KonfigZeileS[45] := '2nd Contour Line x 10      :,'+MaskEdit2.Text;
  KonfigZeileS[46] := '3rd Contour Line x 10      :,'+MaskEdit3.Text;
  KonfigZeileS[47] := '4th Contour Line x 10      :,'+MaskEdit4.Text;
  KonfigZeileS[48] := '5th Contour Line x 10      :,'+MaskEdit5.Text;
  KonfigZeileS[49] := 'Counting Calotte x 10      :,'+MaskEdit6.Text;
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closeFile (Datei);
  case DarstellungN of
    1 : VLinienClick(Sender);
    2 : PixelStufenClick(Sender);
    3 : PixelFliessendClick(Sender);
    4 : inStufen1Click(Sender);
    5 : Fliessend1Click(Sender);
  end;
end;

procedure TForm23.RadioButtonJaClick(Sender: TObject);
begin
  FuellenS := 'Ja';
end;

procedure TForm23.RadioButtonNeinClick(Sender: TObject);
begin
  FuellenS := 'Nein';
end;

procedure TForm23.PloterstellenClick(Sender: TObject);
var
  RadiusS   : string[4];
  XKoordS   : string[4];
  YKoordS   : string[4];
  Rmax      : real;
  RmaxS     : string[15];
  Xmax      : real;
  Ymax      : real;
  i         : word;
  Datei     : TextFile;
  XS, YS    : string;
  WS, HS    : string;
  Groesse   : word;
  X, Y      : word;
  Typ       : TMsgDlgType;
  PisS      : string;
  IsolinS   : string;
begin
  if DarstellungN = 4 then PanelWarten.Visible := true;
  if GeraetS = 'no' then exit;
  RadiusS := MaskEditRadius.Text;
  XKoordS := MaskEditX.Text;
  YKoordS := MaskEditY.Text;
  KonfigZeileS[57] := 'Radius [mm]                :'+','+RadiusS;
  KonfigZeileS[58] := 'X-Coordinate of Centre [mm]:'+','+XKoordS;
  KonfigZeileS[59] := 'Y-Coordinate of Centre [mm]:'+','+YKoordS;
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  HpRadius  := StrtoInt(RadiusS)/10;
  XKoord    := StrtoInt(XKoordS)/10;
  YKoord    := StrtoInt(YKoordS)/10;
  RmaxS := '(max. 100mm)';
  Rmax  := 10.0;
  Xmax  := 29.2 - Rmax;
  Ymax  := 20.5 - Rmax;
  Typ   := mtError;
  if (HpRadius > XKoord) or (HpRadius > YKoord) then
  begin
    if DlgMessage (Typ, Tx(37), Tx(308),3) = 4 then
    begin
      MaskEditRadius.Clear;
      MaskEditRadius.SetFocus;
      exit;
    end;
  end;
  if HpRadius > Rmax then
  begin
    if DlgMessage (Typ, Tx(37), Tx(308)+RMaxS,3) = 4 then
    begin
      MaskEditRadius.Clear;
      MaskEditRadius.SetFocus;
      exit;
    end;
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
  {Beginn des Plottens}
  if GeraetS <> 'Plotter' then
  begin
    Plotter (Canvas, SaveDialog1);
    Farben (Canvas, PeriFarbe);
    if DarstellungN = 1 then
      HPIsol (Canvas, LaMax, LbMax, WMax, Pis, Fortschritt);
    if DarstellungN = 4 then Konturen (Image1.Canvas, FuellenS, Fortschritt);
    Farben (Canvas, ClBlack);
    HPPeriph (Canvas, Kreuz);
    Hpmaximum (Canvas, WMax);
    for i := 0 to 4 do
    begin
      Farben (Canvas, Isolinie[i+1]);
      str (Pis[i]:4:1,PisS);
      IsolinS := LeftS (PisS,5);
      Legende (Canvas, IsolinS,i*200);
    end;
    XS := Inttostr(round((Xkoord-HPRadius/1.5) * 400));
    YS := IntToStr(round((YKoord-HpRadius/4) * 400));
    WS := FloatToStr(HPRadius/10);
    HS := FloatToStr(HPRadius/8);
    Farben (Canvas, PeriFarbe);
    HPEnde (XS, YS, WS, HS);
    GroupBoxPlotten.Visible := false;
    PanelWarten.Visible := false;
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
    Kreuz := true;
    Farben (Canvas, clBlack);
    HPPeriph (Canvas, Kreuz);
    if DarstellungN = 1 then
      HPIsol (Canvas, LaMax, LbMax, WMax, Pis, Fortschritt);
    if DarstellungN = 4 then Konturen (Image1.Canvas, FuellenS, Fortschritt);
    Farben (Canvas, clBlack);
    Hpmaximum (Canvas, WMax);
    for i := 0 to 4 do
    begin
      Farben (Canvas, Isolinie[i+1]);
      str (Pis[i]:4:1,PisS);
      IsolinS := LeftS (PisS,5);
      with Canvas.Font do
      begin
        Name  := 'TimesNewRoman';
        Size  := 14;
        Style := Style - [fsBold];
        Color := Isolinie[i+1];
      end;
      Legende (Canvas, IsolinS,i*200);
    end;
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
    EndDoc;
  end; //Printer
  GroupBoxPlotten.Visible := false;
  PanelWarten.Visible := false;
  showmessage(Tx(435));
  end;
end;

procedure TForm23.Isolinie1Click(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  Farbe := clWhite;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS           := ColorToString (Farbe);
  Isolinie[1]      := StringToColor(FarbeS);
  KonfigZeileS[29] := '1st Contour Line           :,'+FarbeS;
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  case DarstellungN of
    1 : VLinienClick(Sender);
    2 : PixelStufenClick(Sender);
    3 : PixelFliessendClick(Sender);
    4 : inStufen1Click(Sender);
    5 : Fliessend1Click(Sender);
  end;
end;

procedure TForm23.durchgezogeneLinie1Click(Sender: TObject);
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
  ListBoxStrich.Visible  := true;
  LabelStrich.Color      := HintFarbe;
  LabelStrich.Font.Color := UmfangFarbe;
  LabelStrich.Visible    := true;
end;

procedure TForm23.gestrichelteLinie1Click(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  StrichI[1]       := 1;
  IsoTyp[1]        := psDash;
  KonfigZeileS[38] := '1st Contour Line           :,DASH';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm23.punktierteLinie1Click(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  StrichI[1]       := 1;
  IsoTyp[1]        := psDot;
  KonfigZeileS[38] := '1st Contour Line           :,DOT';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm23.strichpunktierteLinie1Click(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  StrichI[1]       := 1;
  IsoTyp[1]        := psDashDot;
  KonfigZeileS[38] := '1st Contour Line           :,DASHDOT';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm23.Isolinie2Click(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  Farbe := clWhite;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS           := ColorToString (Farbe);
  Isolinie[2]      := StringToColor(FarbeS);
  KonfigZeileS[30] := '2nd Contour Line           :,'+FarbeS;
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  case DarstellungN of
    1 : VLinienClick(Sender);
    2 : PixelStufenClick(Sender);
    3 : PixelFliessendClick(Sender);
    4 : inStufen1Click(Sender);
    5 : Fliessend1Click(Sender);
  end;
end;

procedure TForm23.durchgezogeneLinie2Click(Sender: TObject);
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

procedure TForm23.gestrichelteLinie2Click(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  StrichI[2]       := 1;
  IsoTyp[2]        := psDash;
  KonfigZeileS[39] := '2nd Contour Line           :,DASH';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm23.punktierteLinie2Click(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  StrichI[2]       := 1;
  IsoTyp[2]        := psDot;
  KonfigZeileS[39] := '2nd Contour Line           :,DOT';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm23.strichpunktierteLinie2Click(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  StrichI[2]       := 1;
  IsoTyp[2]        := psDashDot;
  KonfigZeileS[39] := '2nd Contour Line           :,DASHDOT';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm23.Isolinie3Click(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  Farbe := clWhite;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS           := ColorToString (Farbe);
  Isolinie[3]      := StringToColor(FarbeS);
  KonfigZeileS[31] := '3rd Contour Line           :,'+FarbeS;
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  case DarstellungN of
    1 : VLinienClick(Sender);
    2 : PixelStufenClick(Sender);
    3 : PixelFliessendClick(Sender);
    4 : inStufen1Click(Sender);
    5 : Fliessend1Click(Sender);
  end;
end;

procedure TForm23.durchgezogeneLinie3Click(Sender: TObject);
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
  ListBoxStrich.Visible := true;
  LabelStrich.Color      := HintFarbe;
  LabelStrich.Font.Color := UmfangFarbe;
  LabelStrich.Visible    := true;
end;

procedure TForm23.gestrichelteLinie3Click(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  StrichI[3]       := 1;
  IsoTyp[3]        := psDash;
  KonfigZeileS[40] := '3rd Contour Line           :,DASH';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm23.punktierteLinie3Click(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  StrichI[3]       := 1;
  IsoTyp[3]        := psDot;
  KonfigZeileS[40] := '3rd Contour Line           :,DOT';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm23.strichpunktierteLinie3Click(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  StrichI[3]       := 1;
  IsoTyp[3]        := psDashDot;
  KonfigZeileS[40] := '3rd Contour Line           :,DASHDOT';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm23.Isolinie4Click(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  Farbe := clWhite;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS           := ColorToString (Farbe);
  Isolinie[4]      := StringToColor(FarbeS);
  KonfigZeileS[32] := '4th Contour Line           :,'+FarbeS;
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  case DarstellungN of
    1 : VLinienClick(Sender);
    2 : PixelStufenClick(Sender);
    3 : PixelFliessendClick(Sender);
    4 : inStufen1Click(Sender);
    5 : Fliessend1Click(Sender);
  end;
end;

procedure TForm23.durchgezogeneLinie4Click(Sender: TObject);
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

procedure TForm23.gestrichelteLinie4Click(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  StrichI[4]       := 1;
  IsoTyp[4]        := psDash;
  KonfigZeileS[41] := '4th Contour Line           :,DASH';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm23.punktierteLinie4Click(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  StrichI[1]       := 1;
  IsoTyp[4]        := psDot;
  KonfigZeileS[41] := '4th Contour Line           :,DOT';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm23.strichpunktierteLinie4Click(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  StrichI[4]       := 1;
  IsoTyp[4]        := psDashDot;
  KonfigZeileS[41] := '4th Contour Line           :,DASHDOT';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm23.Isolinie5Click(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  Farbe := clWhite;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS           := ColorToString (Farbe);
  Isolinie[5]      := StringToColor(FarbeS);
  KonfigZeileS[33] := '5th Contour Line           :,'+FarbeS;
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  case DarstellungN of
    1 : VLinienClick(Sender);
    2 : PixelStufenClick(Sender);
    3 : PixelFliessendClick(Sender);
    4 : inStufen1Click(Sender);
    5 : Fliessend1Click(Sender);
  end;
end;

procedure TForm23.durchgezogeneLinie5Click(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  IsoTyp[5]        := psSolid;
  KonfigZeileS[42] := '5th Contour Line           :,SOLID';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
  iLinie := 5;
  ListBoxStrich.Visible := true;
  LabelStrich.Color      := HintFarbe;
  LabelStrich.Font.Color := UmfangFarbe;
  LabelStrich.Visible    := true;
end;

procedure TForm23.gestrichelteLinie5Click(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  StrichI[5]       := 1;
  IsoTyp[5]        := psDash;
  KonfigZeileS[42] := '5th Contour Line           :,DASH';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm23.punktierteLinie5Click(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  StrichI[5]       := 1;
  IsoTyp[5]        := psDot;
  KonfigZeileS[42] := '5th Contour Line           :,DOT';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm23.strichpunktierteLinie5Click(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  StrichI[5]       := 1;
  IsoTyp[5]        := psDashDot;
  KonfigZeileS[42] := '5th Contour Line           :,DASHDOT';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm23.ListBoxStrichClick(Sender: TObject);
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

procedure TForm23.RDiagonal1Click(Sender: TObject);
begin
  Isomuster[1] := bsBDiagonal;
  ButtonStartClick(Sender);
end;

procedure TForm23.LDiagonal1Click(Sender: TObject);
begin
  IsoMuster[1] := bsFDiagonal;
  ButtonStartClick(Sender);
end;

procedure TForm23.KreuzVert1Click(Sender: TObject);
begin
  IsoMuster[1] := bsCross;
  ButtonStartClick(Sender);
end;

procedure TForm23.KreuzDiag1Click(Sender: TObject);
begin
  Isomuster[1] := bsDiagCross;
  ButtonStartClick(Sender);
end;

procedure TForm23.StreifenHor1Click(Sender: TObject);
begin
  IsoMuster[1] := bsHorizontal;
  ButtonStartClick(Sender);
end;

procedure TForm23.StreifenVert1Click(Sender: TObject);
begin
  Isomuster[1] := bsVertical;
  ButtonStartClick(Sender);
end;

procedure TForm23.RDiagonal2Click(Sender: TObject);
begin
  Isolinie[2] := DiagrFarbe;
  IsoMuster[2] := bsSolid;
  ButtonStartClick(Sender);
  Isomuster[2] := bsBDiagonal;
  ButtonStartClick(Sender);
end;

procedure TForm23.LDiagonal2Click(Sender: TObject);
var
  PFarbe : TColor;
begin
  PFarbe := Isolinie[2];
  Isolinie[2] := DiagrFarbe;
  Isomuster[2] := bsClear;
  ButtonStartClick(Sender);
  IsoLinie[2] := PFarbe;
  Isomuster[2] := bsFDiagonal;
  ButtonStartClick(Sender);
end;

procedure TForm23.KreuzVert2Click(Sender: TObject);
begin
  Isomuster[2] := bsSolid;
  ButtonStartClick(Sender);
  IsoMuster[2] := bsCross;
  ButtonStartClick(Sender);
end;

procedure TForm23.KreuzDiag2Click(Sender: TObject);
begin
  Isomuster[2] := bsSolid;
  ButtonStartClick(Sender);
  IsoMuster[2] := bsDiagCross;
  ButtonStartClick(Sender);
end;

procedure TForm23.StreifenHor2Click(Sender: TObject);
begin
  Isomuster[2] := bsSolid;
  ButtonStartClick(Sender);
  Isomuster[2] := bsHorizontal;
  ButtonStartClick(Sender);
end;

procedure TForm23.StreifenVert2Click(Sender: TObject);
begin
  Isomuster[2] := bsSolid;
  ButtonStartClick(Sender);
  IsoMuster[2] := bsVertical;
  ButtonStartClick(Sender);
end;

procedure TForm23.RDiagonal3Click(Sender: TObject);
begin
  IsoMuster[3] := bsBDiagonal;
  ButtonStartClick(Sender);
end;

procedure TForm23.LDiagonal3Click(Sender: TObject);
begin
  IsoMuster[3] := bsFDiagonal;
  ButtonStartClick(Sender);
end;

procedure TForm23.KreuzVert3Click(Sender: TObject);
begin
  IsoMuster[3] := bsCross;
  ButtonStartClick(Sender);
end;

procedure TForm23.KreuzDiag3Click(Sender: TObject);
begin
  IsoMuster[3] := bsDiagCross;
  ButtonStartClick(Sender);
end;

procedure TForm23.StreifenHor3Click(Sender: TObject);
begin
  IsoMuster[3] := bsHorizontal;
  ButtonStartClick(Sender);
end;

procedure TForm23.StreifenVert3Click(Sender: TObject);
begin
  IsoMuster[3] := bsVertical;
  ButtonStartClick(Sender);
end;

procedure TForm23.RDiagonal4Click(Sender: TObject);
begin
  IsoMuster[4] := bsBDiagonal;
end;

procedure TForm23.LDiagonal4Click(Sender: TObject);
begin
  IsoMuster[4] := bsFDiagonal;
  ButtonStartClick(Sender);
end;

procedure TForm23.KreuzVert4Click(Sender: TObject);
begin
  IsoMuster[4] := bsCross;
  ButtonStartClick(Sender);
end;

procedure TForm23.KreuzDiag4Click(Sender: TObject);
begin
  IsoMuster[4] := bsDiagCross;
  ButtonStartClick(Sender);
end;

procedure TForm23.StreifenHor4Click(Sender: TObject);
begin
  IsoMuster[4] := bsHorizontal;
  ButtonStartClick(Sender);
end;

procedure TForm23.StreifenVert4Click(Sender: TObject);
begin
  IsoMuster[4] := bsVertical;
  ButtonStartClick(Sender);
end;

procedure TForm23.RDiagonal5Click(Sender: TObject);
begin
  IsoMuster[5] := bsBDiagonal;
  ButtonStartClick(Sender);
end;

procedure TForm23.LDiagonal5Click(Sender: TObject);
begin
  IsoMuster[5] := bsFDiagonal;
  ButtonStartClick(Sender);
end;

procedure TForm23.KreuzVert5Click(Sender: TObject);
begin
  IsoMuster[5] := bsCross;
  ButtonStartClick(Sender);
end;

procedure TForm23.KreuzDiag5Click(Sender: TObject);
begin
  IsoMuster[5] := bsDiagCross;
  ButtonStartClick(Sender);
end;

procedure TForm23.StreifenHor5Click(Sender: TObject);
begin
  IsoMuster[5] := bsHorizontal;
  ButtonStartClick(Sender);
end;

procedure TForm23.StreifenVert5Click(Sender: TObject);
begin
  IsoMuster[5] := bsVertical;
  ButtonStartClick(Sender);
end;

procedure TForm23.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  CheckBoxOk.State := cbUnchecked;
end;

procedure TForm23.MaskEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  CheckBoxOk.State := cbUnchecked;
end;

procedure TForm23.MaskEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  CheckBoxOk.State := cbUnchecked;
end;

procedure TForm23.MaskEdit4KeyPress(Sender: TObject; var Key: Char);
begin
  CheckBoxOk.State := cbUnchecked;
end;

procedure TForm23.MaskEdit5KeyPress(Sender: TObject; var Key: Char);
begin
  CheckBoxOk.State := cbUnchecked;
end;

procedure TForm23.MaskEdit6KeyPress(Sender: TObject; var Key: Char);
begin
  CheckBoxOK.State := cbUnchecked;
end;

procedure TForm23.BGroesseClick(Sender: TObject);
begin
  PanelGroesse.Visible    := true;
  CheckBoxBild.State      := cbUnchecked;
  MaskEditBBreite.Text    := IntTostr(BBreiteSt);
  MaskEditBHoehe.Text     := IntToStr(BHoeheSt);
end;

procedure TForm23.SpeedBGroesseClick(Sender: TObject);
begin
  BGroesseClick(Sender);
end;

procedure TForm23.MaskEditBBreiteKeyPress(Sender: TObject; var Key: Char);
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

procedure TForm23.MaskEditBHoeheKeyPress(Sender: TObject; var Key: Char);
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

procedure TForm23.CheckBoxBildClick(Sender: TObject);
begin
  PanelGroesse.Visible := false;
end;

procedure TForm23.kopieren1Click(Sender: TObject);
begin
  ClipBoard.Assign (Image1.Picture);
end;

procedure TForm23.transparentClick(Sender: TObject);
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
  case DarstellungN of
    1: VLinienClick(Sender);
    2: PixelStufenClick(Sender);
    3: ButtonPlottenClick(Sender);
    4: inStufen1Click(Sender);
    5: ButtonPlottenClick(Sender);
  end;
end;

procedure TForm23.SpeedTransparentClick(Sender: TObject);
begin
  transparentClick(Sender);
end;

procedure TForm23.HFarbeClick(Sender: TObject);
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
  CheckBoxOk.State      := cbUnchecked;
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
  case DarstellungN of
    1: VLinienClick(Sender);
    2: PixelStufenClick(Sender);
    3: ButtonPlottenClick(Sender);
    4: inStufen1Click(Sender);
    5: ButtonPlottenClick(Sender);
  end;  
end;

procedure TForm23.SpeedHFarbeClick(Sender: TObject);
begin
  HFarbeClick(Sender);
end;

procedure TForm23.speichernBMPClick(Sender: TObject);
var
  Rahmen : TRect;
begin
  Bitmap        := TBitmap.Create;
  Bitmap.Width  := BBreiteSt;
  Bitmap.Height := BHoeheSt;
  Rahmen        := Rect(0,0,Bitmap.Width,Bitmap.Height);
  Bitmap.Canvas.Stretchdraw(Rahmen,Image1.Picture.Graphic);
  try
    if (CurrentFile <> '') and (UCaseS(RightS(CurrentFile,3)) = 'BMP')
    then Bitmap.SaveToFile(CurrentFile)
    else speichernUBMPClick(Sender);
  finally
    Bitmap.Free;
    Bitmap   := nil;
  end;
end;

procedure TForm23.SpeedBMPClick(Sender: TObject);
begin
  speichernBMPClick(Sender);
end;

procedure TForm23.speichernGIFClick(Sender: TObject);
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
    if (CurrentFile <> '') and (UCaseS(RightS(CurrentFile,3)) = 'GIF')
    then GifBild.SaveToFile(CurrentFile)
    else speichernUGIFClick(Sender);
  finally
    Bitmap.Free;
    GifBild.Free;
  end;
end;

procedure TForm23.SpeedGIFClick(Sender: TObject);
begin
  speichernGIFClick(Sender);
end;

procedure TForm23.speichernTIFClick(Sender: TObject);
var
  Rahmen : TRect;
begin
  Bitmap        := TBitmap.Create;
  Bitmap.Width  := BBreiteSt;
  Bitmap.Height := BHoeheSt;
  Rahmen        := Rect(0,0,Bitmap.Width,Bitmap.Height);
  Bitmap.Canvas.Stretchdraw(Rahmen,Image1.Picture.Graphic);
  try
    if (CurrentFile <> '') and (UCaseS(RightS(CurrentFile,3)) = 'TIF')
    then WriteTiffToFile(CurrentFile,Bitmap)
    else speichernUTIFClick(Sender);
  finally
    Bitmap.Free;
    Bitmap := nil;
  end;
end;

procedure TForm23.SpeedTIFClick(Sender: TObject);
begin
  speichernTIFClick(Sender);
end;

procedure TForm23.speichernJPGClick(Sender: TObject);
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

procedure TForm23.SpeedJPGClick(Sender: TObject);
begin
  speichernJPGClick(Sender);
end;

procedure TForm23.speichernWMFClick(Sender: TObject);
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
    if (CurrentFile <> '') and (UCaseS(RightS(CurrentFile,3)) = 'WMF')
    then MetaFile.SaveToFile(CurrentFile)
    else SpeichernUWMFClick(Sender);
  finally
    Metafile.Free;
  end;
end;

procedure TForm23.SpeedWMFClick(Sender: TObject);
begin
  speichernWMFClick(Sender);
end;

procedure TForm23.speichernEMFClick(Sender: TObject);
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
    if (CurrentFile <> '') and (UCaseS(RightS(CurrentFile,3)) = 'EMF')
    then MetaFile.SaveToFile(CurrentFile)
    else SpeichernUEMFClick(Sender);
  finally
    Metafile.Free;
  end;
end;

procedure TForm23.SpeedEMFClick(Sender: TObject);
begin
  speichernEMFClick(Sender);
end;

procedure TForm23.speichernPLTClick(Sender: TObject);
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

procedure TForm23.speichernDXFClick(Sender: TObject);
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
  CheckBoxOk.State            := cbUnchecked;
  CheckBoxOk.Enabled          := true;
end;

procedure TForm23.speichernUBMPClick(Sender: TObject);
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

procedure TForm23.speichernUGIFClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := 'Compuserve gif file (*.gif)|*.gif';
  SaveDialog1.Filter     := 'Compuserve gif file (*.gif)|*.gif';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    SpeichernGIFClick(Sender);
  end
  else exit;
end;

procedure TForm23.speichernUTIFClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := 'Tagged image file format (*.tif)|*.tif';
  SaveDialog1.Filter     := 'Tagged image file format (*.tif)|*.tif';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    SpeichernTIFClick(Sender);
  end
  else exit;
end;

procedure TForm23.speichernUJPGClick(Sender: TObject);
begin
  SavePictureDialog1.DefaultExt := 'Jpeg file (*.jpg)|*.jpg';
  SavePictureDialog1.Filter     := 'Jpeg file (*.jpg)|*.jpg';
  if SavePictureDialog1.Execute then
  begin
    CurrentFile := SavePictureDialog1.Filename;
    SpeichernJPGClick(Sender);
  end
  else exit;
end;

procedure TForm23.speichernUWMFClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := 'Windows metafile (*.WMF)|*.wmf';
  SaveDialog1.Filter     := 'Windows metafile (*.WMF)|*.wmf';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    speichernWMFClick(Sender);
  end
  else exit;
end;

procedure TForm23.speichernUEMFClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := 'Enhanced windows metafile (*.EMF)|*.emf';
  SaveDialog1.Filter     := 'Enhanced windows metafile (*.EMF)|*.emf';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    speichernEMFClick(Sender);
  end
  else exit;
end;

procedure TForm23.SpeichernUPLTClick(Sender: TObject);
var
  i      : byte;
  Datei  : Textfile;
begin
  GroupBoxPlotten.Visible  := true;
  FarbePeripherie1.Enabled := true;
  GeraetS                     := 'HPGL';
  KonfigZeileS[53] := 'Paper Plot                 :,HPGL';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
end;

procedure TForm23.speichernUDXFClick(Sender: TObject);
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
  CheckBoxOk.State            := cbUnchecked;
  CheckBoxOk.Enabled          := true;
end;

procedure TForm23.ausZwischenablageClick(Sender: TObject);
begin
  FarbePeripherie1.Enabled  := false;
  FarbeDiagramm1.Enabled    := false;
  HFarbe.Enabled            := false;
  HolZwischen               := true;
  ButtonStartClick(Sender);
end;

procedure TForm23.holenBMPClick(Sender: TObject);
begin
  OpenDialog1.DefaultExt := 'Windows bitmap file (*.bmp)|*.bmp';
  OpenDialog1.Filter     := 'Windows bitmap file (*.bmp)|*.bmp';
  if OpenPictureDialog1.Execute then CurrentFile := OpenPictureDialog1.FileName
  else exit;
  HolPixS := 'BMP';
  ButtonStartClick(Sender);
end;

procedure TForm23.SpeedHolBMPClick(Sender: TObject);
begin
  holenBMPClick(Sender);
end;

procedure TForm23.holenGIFClick(Sender: TObject);
begin
  OpenDialog1.DefaultExt := 'Compuserve gif file (*.gif)|*.gif';
  OpenDialog1.Filter     := 'Compuserve gif file (*.gif)|*.gif';
  if OpenDialog1.Execute then CurrentFile := OpenDialog1.FileName
  else exit;
  HolPixS := 'GIF';
  ButtonStartClick(Sender);
end;

procedure TForm23.SpeedHolGIFClick(Sender: TObject);
begin
  holenGIFClick(Sender);
end;

procedure TForm23.holenTIFClick(Sender: TObject);
begin
  OpenDialog1.DefaultExt := 'Tagged image file format (*.tif)|*.tif';
  OpenDialog1.Filter     := 'Tagged image file format (*.tif)|*.tif';
  if OpenDialog1.Execute then CurrentFile := OpenDialog1.FileName
  else exit;
  HolPixS := 'TIF';
  ButtonStartClick(Sender);
end;

procedure TForm23.SpeedHolTIFClick(Sender: TObject);
begin
  holenTIFClick(Sender);
end;

procedure TForm23.holenJPGClick(Sender: TObject);
begin
  OpenPictureDialog1.DefaultExt := 'Jpeg file (*.jpg)|*.jpg';
  OpenPictureDialog1.Filter     := 'Jpeg file (*.jpg)|*.jpg';
  if OpenPictureDialog1.Execute then CurrentFile := OpenPictureDialog1.FileName
  else exit;
  HolPixS := 'JPG';
  ButtonStartClick(Sender);
end;

procedure TForm23.SpeedHolJPGClick(Sender: TObject);
begin
  holenJPGClick(Sender);
end;

procedure TForm23.holenWMFClick(Sender: TObject);
begin
  OpenDialog1.DefaultExt := 'Windows metafile (*.WMF)|*.wmf';
  OpenDialog1.Filter     := 'Windows metafile (*.WMF)|*.wmf';
  if OpenDialog1.Execute then CurrentFile := OpenDialog1.FileName
  else exit;
  HolPixS := 'WMF';
  ButtonStartClick(Sender);
end;

procedure TForm23.SpeedHolWMFClick(Sender: TObject);
begin
  holenWMFClick(Sender);
end;

procedure TForm23.holenEMFClick(Sender: TObject);
begin
  OpenDialog1.DefaultExt := 'Enhanced windows metafile (*.EMF)|*.emf';
  OpenDialog1.Filter     := 'Enhanced windows metafile (*.EMF)|*.emf';
  if OpenDialog1.Execute then CurrentFile := OpenDialog1.FileName
  else exit;
  HolPixS := 'EMF';
  ButtonStartClick(Sender);
end;

procedure TForm23.SpeedHolEMFClick(Sender: TObject);
begin
  holenEMFClick(Sender);
end;

procedure TForm23.HPPlotter1Click(Sender: TObject);
var
  i      : byte;
  Datei  : Textfile;
begin
  FarbePeripherie1.Enabled := true;
  if PrinterSetupDialog1.execute then
  GeraetS          := 'Plotter';
  KonfigZeileS[53] := 'Paper Plot                 :,Plotter';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  GroupBoxPlotten.Visible := true;
  PanelPlotFile.Visible   := true;
  LabelGeraet.Caption     := GeraetS;
end;

procedure TForm23.SpeedPlotterClick(Sender: TObject);
begin
  HPPlotter1Click(Sender);
end;

procedure TForm23.SpeedPLTClick(Sender: TObject);
begin
  SpeichernPLTClick(Sender);
end;

procedure TForm23.SpeedDXFClick(Sender: TObject);
begin
  speichernDXFClick(Sender);
end;

procedure TForm23.FarbePeripherie1Click(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
  Bitmap : TBitmap;
begin
  Clipboard.Assign(Image1.Picture);
  Farbe := clWhite;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS           := ColorToString (Farbe);
  UmfangFarbe      := StringToColor(FarbeS);
  KonfigZeileS[5] := '  Periphery Colour         :,'+FarbeS;
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  CheckBoxOk.State := cbUnchecked;
  Bitmap := TBitmap.Create;
  try
    Bitmap.Assign(ClipBoard);
    Image1.Canvas.Draw(0,0, Bitmap);
  finally
    Bitmap.free;
  end;
  ButtonStartClick(Sender);
  case DarstellungN of
    1 : VLinienClick(Sender);
    2 : PixelStufenClick(Sender);
    3 : ButtonPlottenClick(Sender);
    4 : inStufen1Click(Sender);
    5 : ButtonPlottenClick(Sender);
  end;
end;

procedure TForm23.FarbeDiagramm1Click(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  Farbe := clWhite;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS           := ColorToString (Farbe);
  DiagrFarbe      := StringToColor(FarbeS);
  KonfigZeileS[6] := '  Diagram Colour           :,'+FarbeS;
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  CheckBoxOk.State := cbUnchecked;
  ButtonStartClick(Sender);
  case DarstellungN of
    1 : VLinienClick(Sender);
    2 : PixelStufenClick(Sender);
    3 : ButtonPlottenClick(Sender);
    4 : inStufen1Click(Sender);
    5 : ButtonPlottenClick(Sender);
  end;
end;

procedure TForm23.FarbeRahmenClick(Sender: TObject);
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
  CheckBoxOk.State := cbUnchecked;
  ButtonStartClick(Sender);
  case DarstellungN of
    1 : VLinienClick(Sender);
    2 : PixelStufenClick(Sender);
    3 : ButtonPlottenClick(Sender);
    4 : inStufen1Click(Sender);
    5 : ButtonPlottenClick(Sender);
  end;
end;

procedure TForm23.SpeedPeripherieClick(Sender: TObject);
begin
  FarbePeripherie1Click(Sender);
end;

procedure TForm23.SpeedDiagrammClick(Sender: TObject);
begin
  FarbeDiagramm1Click(Sender);
end;

procedure TForm23.SpeedRahmenClick(Sender: TObject);
begin
  FarbeRahmenClick(Sender);
end;

procedure TForm23.Hilfe1Click(Sender: TObject);
var
  DateiS : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\isol9vov.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\Contours-plot.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm23.SpeedHilfeClick(Sender: TObject);
begin
  Hilfe1Click(Sender);
end;

procedure TForm23.Druckereinrichten1Click(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TForm23.SpeedEinrichtenClick(Sender: TObject);
begin
  DruckerEinrichten1Click(Sender);
end;

procedure TForm23.drucken1Click(Sender: TObject);
var
  SchriftS : string[5];
  i        : byte;
begin
  Paneldrucken.Visible := true;
  RadioButtonlinks.Visible     := true;
  RadioButtonzentriert.Visible := true;
  RadioButtonrechts.Visible    := true;
  RadioGroup.Visible           := true;
  MaskEditRdrucken.EditMask    := '999;0; ';
  MaskEditXdrucken.EditMask    := '999;0; ';
  MaskEditYdrucken.EditMask    := '999;0; ';
  MaskEditRdrucken.Text        := InttoStr(round(DruckenR*10));
  MaskEditXdrucken.Text        := InttoStr(round(DruckenX*10));
  MaskEditYdrucken.Text        := InttoStr(round(DruckenY*10));
  GroupBoxdrucken.Caption      := Tx(880);
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

procedure TForm23.SpeedDruckenClick(Sender: TObject);
begin
  drucken1Click(Sender);
end;

procedure TForm23.MaskEditUnterschriftKeyPress(Sender: TObject;
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

procedure TForm23.RadioButtonlinksClick(Sender: TObject);
begin
  BuendigS := 'Links';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    ButtonDrucken.Enabled := true;
end;

procedure TForm23.RadioButtonzentriertClick(Sender: TObject);
begin
  BuendigS := 'Zentriert';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    ButtonDrucken.Enabled := true;
end;

procedure TForm23.RadioButtonrechtsClick(Sender: TObject);
begin
  BuendigS := 'Rechts';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    ButtonDrucken.Enabled := true;
end;

procedure TForm23.ListBoxSchriftClick(Sender: TObject);
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

procedure TForm23.ButtonDruckenClick(Sender: TObject);
var
  XKoordS : string;
  YKoordS : string;
  RadiusS : string;
  Bitmap  : TBitmap;
  Fenster : TRect;
begin
  Paneldrucken.Visible         := false;
  RadioButtonlinks.Visible     := false;
  RadioButtonzentriert.Visible := false;
  RadioButtonrechts.Visible    := false;
  RadioGroup.Visible           := false;
  RadiusS := MaskEditRdrucken.Text;
  XKoordS := MaskEditXdrucken.Text;
  YKoordS := MaskEditYdrucken.Text;
  Bitmap:=TBitmap.Create;
  try
    Bitmap.Assign(Image1.picture.graphic);
    with Printer do
    begin
      BeginDoc;
      Bitmap.Canvas.Draw(Bitmap.Width -Image3.Width,0,Image3.Picture.Graphic);
      DruckBitmap (Printer.Canvas, Fenster, RadiusS,
                   XKoordS, YKoordS, TextS, Schrift,
                   BuendigS, Bitmap);
      EndDoc;
    end;
  finally
    Bitmap.free;
  end;
end;

procedure TForm23.ButtonAbbrechenClick(Sender: TObject);
begin
  Paneldrucken.Visible         := false;
  RadioButtonlinks.Visible     := false;
  RadioButtonzentriert.Visible := false;
  RadioButtonrechts.Visible    := false;
  RadioGroup.Visible           := false;
end;

procedure TForm23.N11Click(Sender: TObject);
var
  i     : byte;
  Datei : Textfile;
begin
  Glaettung := 1;
  KonfigZeileS[87] := 'Smoothing factor           :,1';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  case DarstellungN of
    4 : inStufen1Click(Sender);
    5 : Fliessend1Click(Sender);
  end;
end;

procedure TForm23.N21Click(Sender: TObject);
var
  i     : byte;
  Datei : Textfile;
begin
  Glaettung := 2;
  KonfigZeileS[87] := 'Smoothing factor           :,2';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  case DarstellungN of
    4 : inStufen1Click(Sender);
    5 : Fliessend1Click(Sender);
  end;
end;

procedure TForm23.N31Click(Sender: TObject);
var
  i     : byte;
  Datei : Textfile;
begin
  Glaettung :=  3;
  KonfigZeileS[87] := 'Smoothing factor           :,3';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  case DarstellungN of
    4 : inStufen1Click(Sender);
    5 : Fliessend1Click(Sender);
  end;
end;

procedure TForm23.N41Click(Sender: TObject);
var
  i     : byte;
  Datei : Textfile;
begin
  Glaettung :=  4;
  KonfigZeileS[87] := 'Smoothing factor           :,4';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  case DarstellungN of
    4 : inStufen1Click(Sender);
    5 : Fliessend1Click(Sender);
  end;
end;

procedure TForm23.N51Click(Sender: TObject);
var
  i     : byte;
  Datei : Textfile;
begin
  Glaettung :=  5;
  KonfigZeileS[87] := 'Smoothing factor           :,5';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  case DarstellungN of
    4 : inStufen1Click(Sender);
    5 : Fliessend1Click(Sender);
  end;
end;

procedure TForm23.N61Click(Sender: TObject);
var
  i     : byte;
  Datei : Textfile;
begin
  Glaettung :=  6;
  KonfigZeileS[87] := 'Smoothing factor           :,6';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  case DarstellungN of
    4 : inStufen1Click(Sender);
    5 : Fliessend1Click(Sender);
  end;
end;

procedure TForm23.N71Click(Sender: TObject);
var
  i     : byte;
  Datei : Textfile;
begin
  Glaettung :=  7;
  KonfigZeileS[87] := 'Smoothing factor           :,7';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  case DarstellungN of
    4 : inStufen1Click(Sender);
    5 : Fliessend1Click(Sender);
  end;
end;

procedure TForm23.N81Click(Sender: TObject);
var
  i     : byte;
  Datei : Textfile;
begin
  Glaettung :=  8;
  KonfigZeileS[87] := 'Smoothing factor           :,8';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  case DarstellungN of
    4 : inStufen1Click(Sender);
    5 : Fliessend1Click(Sender);
  end;
end;

procedure TForm23.N91Click(Sender: TObject);
var
  i     : byte;
  Datei : Textfile;
begin
  Glaettung :=  9;
  KonfigZeileS[87] := 'Smoothing factor           :,9';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  case DarstellungN of
    4 : inStufen1Click(Sender);
    5 : Fliessend1Click(Sender);
  end;
end;

procedure TForm23.N101Click(Sender: TObject);
var
  i     : byte;
  Datei : Textfile;
begin
  Glaettung :=  10;
  KonfigZeileS[87] := 'Smoothing factor           :,10';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
    case DarstellungN of
    4 : inStufen1Click(Sender);
    5 : Fliessend1Click(Sender);
  end;
end;

procedure TForm23.FliessendFarbeClick(Sender: TObject);
begin
  GrauSkala := false;
end;

procedure TForm23.FliessendGraustufenClick(Sender: TObject);
begin
  GrauSkala := true;
end;

procedure TForm23.PixelStufenClick(Sender: TObject);
var
  Datei : TextFile;
  i     : word;
  Rekt  : TRect;
begin
  Rekt := Rect(0,0,Image3.Width,Image3.Height);
  Loeschen(Image3.Canvas,Rekt);
  DarstellungN             := 2;
  PanelHLS.Visible         := false;
  Glaettungsgrad.Enabled   := false;
  Panel3.Visible           := false;
  DarstellungS             := 'Pixel';
  ausZwischenablage.Enabled:= true;
  ausDatei.Enabled         := true;
  KonfigZeileS[88] := 'Type of Diagram            :,Pixel(Steps)';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  Panel3.Visible := false;
  Maus           := true;
  if VielfacheS = 'MULTIPLES' then
  begin
    if ZahlGlob < 100 then Kal := 100/ZahlGlob else Kal := 1;
  end;
  if VielfacheS = 'MANUAL' then Kal := Kalotte/10;
  PixelCalotte (Image1.Canvas, Pis, Kal, Grauskala, HLSMin, HLSMax,
                Iso, MaxDichte, Fortschritt);
  for i := 1 to 5 do str (Pis[i-1]:5:1, PisS[i]);
  with Image1.Canvas do
  begin
    Font.Color  := UmfangFarbe;
    Brush.Color := HintFarbe;
    Font.Size   := 16;
    Brush.Color := HintFarbe;
    Font.Name   := 'Times New Roman';
    Textout (Xmitte - Radius-10, 580, 'Max. '+WMaxS+'%');
    Textout (Xmitte - Radius-10, 600,
             Tx(568)+' ' + IntToStr(LaMax)+'/'+IntToStr(LbMax));
  end;
  Image3.Visible := true;
  With Image3.Canvas do
  begin
    Brush.Color := clWhite;   //DiagrFarbe;
    Pen.Color   := clBlack;   //DiagrFarbe;
    Rectangle (0,0,Width,Height);
    Font.Size   := 14;
    Font.Name   := 'Times New Roman';
    Font.Color  := clBlack;   //UmfangFarbe;
    Brush.Style := bsClear;
    Textout (0, 10, '  '+Tx(567)); {Isolinien:}
    Font.Color := IsoLinie[1];
    Textout (20,30, PisS[1]);
    Font.Color := IsoLinie[2];
    Textout (20,50, PisS[2]);
    Font.Color := IsoLinie[3];
    Textout (20,70, PisS[3]);
    Font.Color := IsoLinie[4];
    Textout (20,90, PisS[4]);
    Font.Color := IsoLinie[5];
    Textout (20,110, PisS[5]);
  end;
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

procedure TForm23.SpeedPixelSClick(Sender: TObject);
begin
  PixelStufenClick(Sender);
end;

procedure TForm23.PixelFliessendClick(Sender: TObject);
var
  Datei   : TextFile;
  i, k    : word;
  Rot     : integer;
  Gruen   : integer;
  Blau    : integer;
  Rekt    : TRect;
begin
  Rekt := Rect(0,0,Image3.Width,Image3.Height);
  Loeschen(Image3.Canvas,Rekt);
  DarstellungN             := 3;
  Glaettungsgrad.Enabled   := false;
  DarstellungS             := 'Pixelfl';
  ausZwischenablage.Enabled:= true;
  ausDatei.Enabled         := true;
  HPPlotter1.Enabled       := true;
  speichernPLT.Enabled     := false;
  speichernDXF.Enabled     := false;
  speichernUPLT.Enabled    := false;
  speichernUDXF.Enabled    := false;
  SpeedPLT.Enabled         := false;
  SpeedDXF.Enabled         := false;
  Glaettungsgrad.Enabled   := false;
  Panel3.Visible           := false;
  KonfigZeileS[88] := 'Type of Diagram            :,Pixel(Floating)';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick (Sender);
  Panel3.Visible := false;
  Maus           := true;
  PanelHLS.Visible         := true;
  GroupBoxPlotten.Visible  := false;
  Abstufung1.enabled       := true;
  Farbe1.enabled           := true;
  Linien1.enabled          := false;
  ausZwischenablage.Enabled:= false;
  ausDatei.Enabled         := false;
  HPPlotter1.Enabled       := false;
  KonfigZeileS[88] := 'Type of Diagram            :,Pixel(floating)';
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
      ImageHLS.Canvas.Pixels[k,ImageHLS.Height-
      round(i*ImageHLS.Height/360)] := RGB(Rot, Gruen, Blau);
    end;
  end;
  Maus  := true;
  Klick := 0;
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

procedure TForm23.SpeedPixelFClick(Sender: TObject);
begin
  PixelFliessendClick(Sender);
end;

procedure TForm23.SpeedVektorClick(Sender: TObject);
begin
  VLinienClick(Sender);
end;

procedure TForm23.inStufen1Click(Sender: TObject);
var
  i     : byte;
  Datei : TextFile;
  Omega : byte;
  AzimS : string;
  PhiS  : string;
begin
  DarstellungN             := 4;
  PanelManuell.Visible     := false;
  PanelHLS.visible         := false;
  GroupBoxPlotten.Visible  := false;
  speichernPLT.Enabled     := false;
  speichernUPLT.Enabled    := false;
  SpeedPLT.Enabled         := false;
  DarStellungS             := 'Steps';
  Linien1.enabled          := false;
  Glaettungsgrad.enabled   := true;
  Panel3.Visible           := true; 
  LabelGlaettung.Caption   := Tx(1001)+'= '+IntToStr(Glaettung);
  Omega                    := 11 -Glaettung;
  Farbe1.enabled           := true;
  ausZwischenablage.Enabled:= false;
  ausDatei.Enabled         := false;
  KonfigZeileS[88] := 'Type of Diagram            :,Steps';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  Isol (Image1.Canvas, Kal, LaMax, LbMax, WMax, Pis, StrichI,
        Fortschritt, MPunkte);
  str (WMax:5:1, WMaxS);
  CosPoWi (Image1.Canvas, Omega, HLSmin, HLSmax,Iso, Grauskala, Pis,
           MaxDichte, XMax, YMax, Fortschritt);
  AzimutFallen(XMax, YMax, AzimS, PhiS);
  for i := 1 to 5 do str (Pis[i-1]:5:1, PisS[i]);
  Image3.Visible := true;
  With Image3.Canvas do
  begin
    Brush.Color := clWhite;  //DiagrFarbe;
    Pen.Color   := clBlack;  //DiagrFarbe;
    Rectangle (0,0,Image3.Width,Image3.Height);
    Font.Size   := 14;
    Font.Name   := 'Times New Roman';
    Font.Color  := clBlack;  //UmfangFarbe;
    Brush.Style := bsClear;
    Textout (0, 10, '  '+Tx(567)); {Isolinien:}
    Font.Color := IsoLinie[1];
    Textout (20,30, PisS[1]);
    Font.Color := IsoLinie[2];
    Textout (20,50, PisS[2]);
    Font.Color := IsoLinie[3];
    Textout (20,70, PisS[3]);
    Font.Color := IsoLinie[4];
    Textout (20,90, PisS[4]);
    Font.Color := IsoLinie[5];
    Textout (20,110, PisS[5]);
  end;
  with Image1.Canvas do
  begin
    Brush.Style := bsClear;
    Pen.Color   := HintFarbe;
    Pen.Width   := 1;
    ellipse(Xmitte-Radius+2,YMitte-Radius+2,XMitte+Radius-2,YMitte+Radius-2);
    ellipse(Xmitte-Radius+1,YMitte-Radius+1,XMitte+Radius-1,YMitte+Radius-1);
    ellipse(Xmitte-Radius,YMitte-Radius,XMitte+Radius,YMitte+Radius);
    Pen.Color := UmfangFarbe;
    ellipse(Xmitte-Radius+2, YMitte-Radius+2, Xmitte+Radius-2, Ymitte+Radius-2);
  end;
  Maus := true;
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

procedure TForm23.SpeedStufenClick(Sender: TObject);
begin
  inStufen1Click(Sender);
end;

procedure TForm23.Fliessend1Click(Sender: TObject);
var
  i, k       : word;
  Datei      : TextFile;
  Rot, Gruen : integer;
  Blau       : integer;
  Rekt       : TRect;
begin
  Rekt := Rect(0,0,Image3.Width,Image3.Height);
  Loeschen(Image3.Canvas,Rekt);
  DarstellungN             := 5;
  PanelHLS.Visible         := true;
  PanelManuell.Visible     := false;
  GroupBoxPlotten.Visible  := false;
  DarstellungS             := 'floating';
  Glaettungsgrad.enabled   := true;
  Panel3.Visible           := true;
  Abstufung1.enabled       := true;
  Farbe1.enabled           := true;
  Linien1.enabled          := false;
  ausZwischenablage.Enabled:= false;
  ausDatei.Enabled         := false;
  HPPlotter1.Enabled       := false;
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
      ImageHLS.Canvas.Pixels[k,ImageHLS.Height-
      round(i*ImageHLS.Height/360)] := RGB(Rot, Gruen, Blau);
    end;
  end;
  Maus  := true;
  Klick := 0;
end;

procedure TForm23.SpeedFliessendClick(Sender: TObject);
begin
  fliessend1Click(Sender);
end;

procedure TForm23.GrauwerteClick(Sender: TObject);
begin
  GrauSkala := true;
  FarbSkala := false;
  Isolinie1.Enabled := false;
  Isolinie2.Enabled := false;
  Isolinie3.Enabled := false;
  Isolinie4.Enabled := false;
  Isolinie5.Enabled := false;
  IsoSpeichern[1] := Isolinie[1];
  IsoSpeichern[2] := Isolinie[2];
  IsoSpeichern[3] := Isolinie[3];
  IsoSpeichern[4] := Isolinie[4];
  IsoSpeichern[5] := Isolinie[5];
  Isolinie[1] := RGB (200, 200, 200);
  Isolinie[2] := RGB (150, 150, 150);
  Isolinie[3] := RGB (100, 100, 100);
  Isolinie[4] := RGB ( 50,  50,  50);
  Isolinie[5] := RGB (  0,   0,   0);
  case DarstellungN of
    1 : VLinienClick(Sender);
    2 : PixelStufenClick(Sender);
    3 : PixelFliessendClick(Sender);
    4 : inStufen1Click(Sender);
    5 : Fliessend1Click(sender);
  end;
end;

procedure TForm23.FarbenIsoClick(Sender: TObject);
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
  case DarstellungN of
    1 : VLinienClick(Sender);
    2 : PixelStufenClick(Sender);
    3 : PixelFliessendClick(Sender);
    4 : inStufen1Click(Sender);
    5 : Fliessend1Click(sender);
  end;
end;

procedure TForm23.SpeedIsoGrauClick(Sender: TObject);
begin
  GrauwerteClick(Sender);
end;

procedure TForm23.SpeedIsoFarbeClick(Sender: TObject);
begin
  FarbenIsoClick(Sender);
end;

procedure TForm23.ImageHLSMouseDown(Sender: TObject; Button: TMouseButton;
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
    if Klick = 1 then ButtonPlotten.Enabled := false;
    if ssLeft in Shift then
    begin
      Hls[Klick] := Y;
      Moveto(5,Y);
      Lineto(ImageHLS.Width-5, Y)
    end;
    //Zeichnen des Rechtecks
    if Klick = 2 then
    begin
      ButtonPlotten.Enabled := true;
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

procedure TForm23.ButtonPlottenClick(Sender: TObject);
var
  Omega      : byte;
  j, l, k, i : word;
  m, H       : single;
  Rot, Gruen : integer;
  Blau       : integer;
  DichteMax  : real;
begin
  str (WMax:5:1, WMaxS);
  if VielfacheS = 'MULTIPLES' then
  begin
    if ZahlGlob < 100 then Kal := 100 / ZahlGlob else Kal := 1;
  end;
  if VielfacheS = 'MANUAL' then Kal := Kalotte/10;
  DichteMax := WMax*ZahlGlob/100;
  if DarstellungN = 5 then
  begin
    LabelGlaettung.Caption := Tx(1001)+'= '+IntToStr(Glaettung);
    Omega  := 11 -Glaettung;
    CosPoWi (Image1.Canvas, Omega, HLSmin, HLSmax, Iso, Grauskala,
             Pis, MaxDichte, XMax, YMax, Fortschritt);
  end;
  if DarstellungN = 3 then
    PixelCalotte (Image1.Canvas, Pis, Kal, Grauskala, HLSMin, HLSMax,
                  Iso, DichteMax, Fortschritt);
  for i := 1 to 5 do str (Pis[i-1]:4:1, PisS[i]);
  Image3.Visible := true;
  with Image3.Canvas do
  begin
    Pen.Color   := clBlack;   //DiagrFarbe;
    Brush.Color := clWhite;   //DiagrFarbe;
    Rectangle (0,0,Width, Height);
    Font.Color  := clBlack;  //Umfangfarbe;
    Font.Size   := 12;
    Font.Name   := 'Times New Roman';
    Textout (3,2,PisS[1]);   {min.}
    Textout (3,118,PisS[5]);  {max}
    Breite := round(Image3.Height/DichteMax);
    for j := 1 to round(DichteMax-1) do
    begin
      for l := 1 to 10 do
      begin
        m := j + l/10;
        if not GrauSkala then
        begin
          H := HLSmin + (HLSmax - HLSmin)*m/DichteMax;
          HLSzuRGB(H, 0.5, 1.0, Rot, Gruen, Blau);
        end
        else
        begin
          Rot   := round(255-255*m/DichteMax);
          if Rot < 0 then Rot := 0;
          Gruen := Rot;
          Blau  := Rot;
        end;
        for k := 1 to Breite do {Breite do}
        for i := 33 to Width do
        begin
          Pixels[i,0-Breite+round(m*Breite+k)] :=
            RGB(Rot, Gruen, Blau);
        end; {l := 1 to 10}
      end; {to MaxDicte}
    end; {image3}
  end;
  Image3.Visible := false;
  Image1.Canvas.Draw(Image1.Width-Image3.Width,0,
                     Image3.picture.graphic);
  PanelHLS.visible     := false;
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

procedure TForm23.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Isolinien.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'Contour_lines.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm23.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  NullX   : word;
  NullY   : word;
  KoordX  : integer;
  KoordY  : integer;
  AziExt  : extended;
  Azimut  : integer;
  AzimutS : string;
  Rho     : extended;
  FalExt  : extended;
  Fallen  : word;
  FallenS : string;
begin
  if not Maus then exit;
  FalExt := 0;
  Bo := Pi / 180;
  Nullx := Xmitte;
  NullY := YMitte;
  if ssLeft in Shift then
  begin
    if ssDouble in Shift then exit;
    KoordX := (X - NullX);
    KoordY := (NullY - Y);
    Rho := sqrt(sqr(KoordX/Radius) + sqr(KoordY/Radius));
    if Rho <= 1.05 then
    begin
      if KoordY = 0 then KoordY := 1;
      AziExt := arctan(KoordX/KoordY)/Bo;
      Azimut := round(AziExt);
      if Azimut < 0 then Azimut := Azimut + 180;
      if (Azimut = 0) and (KoordY < 0) then Azimut := 180;
      if (Azimut = 0) and (KoordY > 0) then Azimut := 0;
      if (Azimut <> 0) and (Azimut <> 180) then
        if KoordX < 0 then Azimut := Azimut + 180;
      if Azimut >=360 then Azimut := Azimut - 360;
      if ProjektionS = 'Lambert' then
        if Rho < 0.999 then
          FalExt := 90 - arccos(1-sqr(Rho))/Bo
        else FalExt := 90;
      if ProjektionS = 'stereographic' then
        FalExt := 90 - 2*(arctan(Rho))/Bo;
      if ProjektionS = 'orthographic' then
        FalExt := arccos(Rho)/Bo;
      if ProjektionS = 'Kavraiskii' then
        FalExt := (Pi-Rho*Pi)/(2*Bo);
      Fallen := round(FalExt);
      if (Gefuegetyp = 2) or (Gefuegetyp = 4) then
      begin
        Azimut := (Azimut + 180) mod 360;
        Fallen := 90-Fallen;
      end;
      AzimutS := IntToStr(Azimut);
      FallenS := IntToStr(Fallen);
      with Image1.Canvas do
      begin
        Pen.Color   := KlickFarbe;
        Brush.Color := KlickFarbe;
        Ellipse (X-3,Y-3,X+3,Y+3);
        Font.Color  := KlickFarbe;
        Brush.Color := DiagrFarbe;
        Font.Size   := 12;
        Font.Name   := 'Times New Roman';
        Textout (X+4,Y+4,AzimutS+'/'+FallenS);
      end;
    end;
  end;
  if ssRight in Shift then
  begin
    Maus := false;
    PanelKlick.Visible := false;
  end;  
end;

procedure TForm23.PunktAnklickenClick(Sender: TObject);
begin
  PanelKlick.Visible := true;
  Maus               := true;
end;

procedure TForm23.SpeedPunktClick(Sender: TObject);
begin
  PunktanklickenClick(Sender);
end;

procedure TForm23.PunkteWegClick(Sender: TObject);
begin
  ButtonStartClick(Sender);
end;

procedure TForm23.SpeedUndoClick(Sender: TObject);
begin
  PunkteWegClick(Sender);
end;

procedure TForm23.PunktFarbeClick(Sender: TObject);
var
  Datei  : TextFile;
  i      : byte;
  FarbeS : string;
begin
  if ColorDialog1.Execute then
    KlickFarbe := ColorDialog1.Color;
  FarbeS := ColorToString(KlickFarbe);
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  KonfigZeileS[94] := 'Colour of clicked point    :,'+FarbeS;
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
end;

procedure TForm23.SpeedFarbeClick(Sender: TObject);
begin
  PunktFarbeClick(Sender);
end;

procedure TForm23.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm23.SpeedKopierenClick(Sender: TObject);
begin
  kopieren1Click(Sender);
end;

procedure TForm23.SpeedZwischenablageClick(Sender: TObject);
begin
  AusZwischenablageClick(Sender);
end;

procedure TForm23.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm23.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

procedure TForm23.DspeichernClick(Sender: TObject);
begin
  if CurrentFile <> '' then Speichern(CurrentFile,Anzahl,
    AziFeld,FalFeld)
  else DspeichernUnterClick(Sender);
end;

procedure TForm23.DspeichernUnterClick(Sender: TObject);
begin
  Erweiterung (ExtenS);
  SaveDialog1.DefaultExt := ExtenS;
  SaveDialog1.Filter     := ExtenS;
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    Speichern (CurrentFile, Anzahl, AziFeld, FalFeld);
  end;
end;

procedure TForm23.SpeedDspeichernUnterClick(Sender: TObject);
begin
  DspeichernUnterClick(Sender);
end;

procedure TForm23.GrosskreiseClick(Sender: TObject);
begin
  WeiterB[23] := true;
  Application.CreateForm(TForm85, Form85);
  Form85.Show;
end;

procedure TForm23.SpeedGKreiseClick(Sender: TObject);
begin
  GrosskreiseClick(Sender);
end;

procedure TForm23.DatenPlottenClick(Sender: TObject);
begin
  WeiterB[23] := true;
  Application.CreateForm(TForm12, Form12);
  Form12.Show;
end;

procedure TForm23.SpeedPunkteClick(Sender: TObject);
begin
  DatenPlottenClick(Sender);
end;

procedure TForm23.StatistikClick(Sender: TObject);
begin
  WeiterB[23] := true;
  Application.CreateForm(TForm21, Form21);
  Form21.Show;
end;

procedure TForm23.SpeedStatistikClick(Sender: TObject);
begin
  StatistikClick(Sender);
end;

procedure TForm23.SubmaximaClick(Sender: TObject);
begin
  WeiterB[23] := true;
  Application.CreateForm(TForm25, Form25);
  Form25.Show;
end;

procedure TForm23.SpeedMaximaClick(Sender: TObject);
begin
  SubmaximaClick(Sender);
end;

procedure TForm23.VLinienClick(Sender: TObject);
var
  Datei   : TextFile;
  i       : word;
  Rekt    : TRect;
begin
  Rekt := Rect(0,0,Image3.Width,Image3.Height);
  Loeschen(Image3.Canvas,Rekt);
  DarstellungN             := 1;
  PanelHLS.Visible         := false;
  Glaettungsgrad.Enabled   := false;
  DarstellungS             := 'Vektor';
  ausZwischenablage.Enabled:= true;
  ausDatei.Enabled         := true;
  HPPlotter1.Enabled       := true;
  speichernPLT.Enabled     := true;
  speichernUPLT.Enabled    := true;
  speichernDXF.Enabled     := true;
  SpeedPLT.Enabled         := true;
  SpeedDXF.Enabled         := true;
  KonfigZeileS[88] := 'Type of Diagram            :,Vector';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick (Sender);
  Panel3.Visible := false;
  Maus           := true;
end;

end.


