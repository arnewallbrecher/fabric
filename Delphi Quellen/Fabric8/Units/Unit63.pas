unit Unit63;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, ComCtrls, Menus, ExtCtrls, StdCtrls, Mask,
  Buttons, Texte, Globvar, Basic, Plotten, Clipbrd, Drucken,
  HPPlot, Printers, Kalkulat, MyPlotter, Shellapi, Standard,
  GifImage, Bmp2Tiff, Jpeg, ExtDlgs, ReadTiff, ehsHelpRouter,
  PngImage, Grafik, Einausga;

type
  TForm63 = class(TForm)
    Image1: TImage;

    PanelSpeed: TPanel;

    MainMenu1      : TMainMenu;

    Projektionen   : TMenuItem;
    Lambert        : TMenuItem;
    stereografisch : TMenuItem;
    orthografisch  : TMenuItem;
    Kavraiskii     : TMenuItem;

    Darstellung : TMenuItem;
    KompressionD: TMenuItem;
    DehnungD: TMenuItem;
    PFarbe: TMenuItem;

    Grafik          : TMenuItem;
    kopieren        : TMenuItem;
    Gspeichern: TMenuItem;
    Zwischenablage  : TMenuItem;
    ausDatei        : TMenuItem;
    mitHPPlotter    : TMenuItem;
    FarbePeripherie : TMenuItem;
    FarbeDiagramm   : TMenuItem;
    Hintergrund: TMenuItem;
    Drucker1: TMenuItem;

    PanelDateien   : TPanel;
    LabelDateien   : TLabel;
    ListBoxDateien : TListBox;
    LabelAnzahl    : TLabel;
    LabelZahl      : TLabel;

    Hilfe: TMenuItem;

    GroupBoxPlotten : TGroupBox;
    PanelRadius     : TPanel;
    LabelRadius     : TLabel;
    MaskEditRadius  : TMaskEdit;

    PanelMittelpunkt : TPanel;
    LabelMittelpunkt : TLabel;
    LabelX           : TLabel;
    LabelY           : TLabel;
    MaskEditX        : TMaskEdit;
    MaskEditY        : TMaskEdit;
    ButtonStart      : TButton;
    Buttonzurueck    : TButton;
    ButtonBeenden    : TButton;

    Paneldrucken         : TPanel;
    GroupBoxdrucken      : TGroupBox;
    PanelDRadius         : TPanel;
    LabelRdrucken        : TLabel;
    MaskEditRdrucken     : TMaskEdit;
    PanelBild            : TPanel;
    LabelMitte           : TLabel;
    LabelXdrucken        : TLabel;
    LabelYdrucken        : TLabel;
    MaskEditXdrucken     : TMaskEdit;
    MaskEditYdrucken     : TMaskEdit;
    Panel1Unterschrift   : TPanel;
    LabelUnterschrift    : TLabel;
    LabelSchrift         : TLabel;
    MaskEditUnterschrift : TMaskEdit;
    ListBoxSchrift       : TListBox;
    KreisOffenK      : TMenuItem;
    KreisGefuelltK   : TMenuItem;
    QuadratOffenK    : TMenuItem;
    QuadratGefuelltK : TMenuItem;
    DreieckOffenK    : TMenuItem;
    DreieckGefuelltK : TMenuItem;
    RauteOffenK      : TMenuItem;
    RauteGefuelltK   : TMenuItem;
    KreisoffenD      : TMenuItem;
    KreisgefuelltD   : TMenuItem;
    QuadratoffenD    : TMenuItem;
    QuadratgefuelltD : TMenuItem;
    DreieckoffenD    : TMenuItem;
    DreieckgefuelltD : TMenuItem;
    RauteoffenD      : TMenuItem;
    RautegefuelltD   : TMenuItem;

    einrichten : TMenuItem;
    drucken    : TMenuItem;

    SpeedHilfe   : TSpeedButton;
    SpeedDrucker : TSpeedButton;

    StatusBar1: TStatusBar;

    DehnungF   : TMenuItem;

    FarbeRahmen     : TMenuItem;

    FarbePolygon   : TMenuItem;

    SaveDialog1         : TSaveDialog;
    OpenDialog1         : TOpenDialog;
    PrintDialog1        : TPrintDialog;
    PrinterSetupDialog1 : TPrinterSetupDialog;

    RadioGroup           : TRadioGroup;
    RadioButtonlinks     : TRadioButton;
    RadioButtonzentriert : TRadioButton;
    RadioButtonrechts    : TRadioButton;
    PanelEllipsoid: TPanel;
    LabelVektor1: TLabel;
    LabelVektor2: TLabel;
    LabelVektor3: TLabel;
    FarbeAchsen: TMenuItem;

    LabelStrainEllipsoid : TLabel;
    LabelLangeAchse      : TLabel;
    LabelMittlereAchse   : TLabel;
    LabelKurzeAchse      : TLabel;
    LabelKegelWinkel     : TLabel;
    LabelWinkelLang      : TLabel;
    LabelWinkelKurz      : TLabel;
    LabelWinkel1         : TLabel;
    LabelWinkel2         : TLabel;

    ButtonAchsen  : TButton;
    ButtonCluster : TButton;

    LabelXy     : TLabel;
    LabelXYWert : TLabel;
    LabelYZ     : TLabel;
    LabelYZWert : TLabel;
    PanelProlat: TPanel;
    RadioProlat: TRadioButton;
    RadioOblat: TRadioButton;
    PunktFlinn: TMenuItem;
    KreisOffenF: TMenuItem;
    KreisGefuelltF: TMenuItem;
    QuadratOffenF: TMenuItem;
    QuadratGefuelltF: TMenuItem;
    DreieckOffenF: TMenuItem;
    DreieckGefuelltF: TMenuItem;
    RauteOffenF: TMenuItem;
    RauteGefuelltF: TMenuItem;
    PunktFlinnF: TMenuItem;
    Handbuch: TMenuItem;
    ColorDialog1: TColorDialog;
    KompressionF: TMenuItem;
    Image2: TImage;
    SpeedHandbuch: TSpeedButton;
    SpeedKopieren: TSpeedButton;
    SpeedZwischenablage: TSpeedButton;
    SpeedLambert: TSpeedButton;
    SpeedStereografisch: TSpeedButton;
    SpeedOrthografisch: TSpeedButton;
    SpeedKavraiskii: TSpeedButton;
    SpeedPlotter: TSpeedButton;
    SpeedPeripherie: TSpeedButton;
    SpeedDiagramm: TSpeedButton;
    SpeedRahmen: TSpeedButton;
    SpeedKompressionFarbe: TSpeedButton;
    SpeedFarbeDehnung: TSpeedButton;
    SpeedFarbeAchsen: TSpeedButton;
    SpeedFarbeEllipse: TSpeedButton;
    SpeedFarbeFlinn: TSpeedButton;
    Literatur: TMenuItem;
    SpeedLiteratur: TSpeedButton;
    ImageNord: TImage;
    SpeedEinrichten: TSpeedButton;
    BGroesse: TMenuItem;
    PanelGroesse: TPanel;
    LabelBHoehe: TLabel;
    LabelBBreite: TLabel;
    MaskEditBBreite: TMaskEdit;
    MaskEditBHoehe: TMaskEdit;
    CheckBoxBild: TCheckBox;
    SpeedBGroesse: TSpeedButton;
    transparent: TMenuItem;
    HFarbe: TMenuItem;
    SavePictureDialog1: TSavePictureDialog;
    SpeedButton1: TSpeedButton;
    SpeedTransparent: TSpeedButton;
    SpeedHFarbe: TSpeedButton;
    OpenPictureDialog1: TOpenPictureDialog;
    Ploterstellen: TButton;
    ButtonDrucken: TButton;
    ButtonAbbrechen: TButton;
    ListBoxSpeichern: TListBox;
    ListBoxLoad: TListBox;
    SpeedSpeichern: TSpeedButton;
    SpeedLoad: TSpeedButton;
    Font: TMenuItem;
    FontDialog1: TFontDialog;
    SpeedFont: TSpeedButton;
    PanelDehnen: TPanel;
    ButtonNPlus: TButton;
    ButtonNMinus: TButton;
    ButtonWplus: TButton;
    ButtonWMinus: TButton;
    ButtonEMinus: TButton;
    ButtonEPlus: TButton;
    ButtonHok: TButton;
    ButtonSMinus: TButton;
    ButtonSPlus: TButton;
    DatenSpeichern: TMenuItem;
    Dspeichern: TMenuItem;
    DspeichernUnter: TMenuItem;
    PanelProjektion: TPanel;
    LabelProjektion: TLabel;
    PanelDaten: TPanel;
    ListBoxKomp: TListBox;
    LabelDaten: TLabel;
    Label00000: TLabel;
    ListBoxDehn: TListBox;
    LabelMess: TLabel;
    LabelKomp: TLabel;
    LabelDehn: TLabel;
    DEinrichten: TMenuItem;
    Calibrieren: TMenuItem;
    DDrucken: TMenuItem;
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

    procedure FormShow(Sender: TObject);
    procedure ShowHint(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ButtonzurueckClick(Sender: TObject);
    procedure ButtonBeendenClick(Sender: TObject);
    procedure ButtonStartClick(Sender: TObject);
    procedure LambertClick(Sender: TObject);
    procedure stereografischClick(Sender: TObject);
    procedure orthografischClick(Sender: TObject);
    procedure KavraiskiiClick(Sender: TObject);
    procedure KreisOffenKClick(Sender: TObject);
    procedure KreisGefuelltKClick(Sender: TObject);
    procedure QuadratOffenKClick(Sender: TObject);
    procedure QuadratGefuelltKClick(Sender: TObject);
    procedure DreieckOffenKClick(Sender: TObject);
    procedure DreieckGefuelltKClick(Sender: TObject);
    procedure RauteOffenKClick(Sender: TObject);
    procedure RauteGefuelltKClick(Sender: TObject);
    procedure KreisoffenDClick(Sender: TObject);
    procedure KreisgefuelltDClick(Sender: TObject);
    procedure QuadratoffenDClick(Sender: TObject);
    procedure QuadratgefuelltDClick(Sender: TObject);
    procedure DreieckoffenDClick(Sender: TObject);
    procedure DreieckgefuelltDClick(Sender: TObject);
    procedure RauteoffenDClick(Sender: TObject);
    procedure RautegefuelltDClick(Sender: TObject);
    procedure kopierenClick(Sender: TObject);
    procedure ZwischenablageClick(Sender: TObject);
    procedure einrichtenClick(Sender: TObject);
    procedure druckenClick(Sender: TObject);
    procedure HilfeClick(Sender: TObject);
    procedure SpeedDruckerClick(Sender: TObject);
    procedure SpeedHilfeClick(Sender: TObject);
    procedure MaskEditUnterschriftKeyPress(Sender: TObject; var Key: Char);
    procedure RadioButtonrechtsClick(Sender: TObject);
    procedure RadioButtonzentriertClick(Sender: TObject);
    procedure RadioButtonlinksClick(Sender: TObject);
    procedure ListBoxSchriftClick(Sender: TObject);
    procedure ButtonAchsenClick(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ButtonClusterClick(Sender: TObject);
    procedure ButtonFlinnClick(Sender: TObject);
    procedure RadioProlatClick(Sender: TObject);
    procedure RadioOblatClick(Sender: TObject);
    procedure KreisOffenFClick(Sender: TObject);
    procedure KreisgefuelltFClick(Sender: TObject);
    procedure QuadratOffenFClick(Sender: TObject);
    procedure QuadratGefuelltFClick(Sender: TObject);
    procedure DreieckOffenFClick(Sender: TObject);
    procedure RauteOffenFClick(Sender: TObject);
    procedure DreieckGefuelltFClick(Sender: TObject);
    procedure RauteGefuelltFClick(Sender: TObject);
    procedure HandbuchClick(Sender: TObject);
    procedure KompressionFClick(Sender: TObject);
    procedure DehnungFClick(Sender: TObject);
    procedure FarbeAchsenClick(Sender: TObject);
    procedure FarbePolygonClick(Sender: TObject);
    procedure PunktFlinnFClick(Sender: TObject);
    procedure FarbePeripherieClick(Sender: TObject);
    procedure FarbeDiagrammClick(Sender: TObject);
    procedure FarbeRahmenClick(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure SpeedKopierenClick(Sender: TObject);
    procedure SpeedZwischenablageClick(Sender: TObject);
    procedure SpeedLambertClick(Sender: TObject);
    procedure SpeedStereografischClick(Sender: TObject);
    procedure SpeedOrthografischClick(Sender: TObject);
    procedure SpeedKavraiskiiClick(Sender: TObject);
    procedure SpeedPlotterClick(Sender: TObject);
    procedure SpeedPLTClick(Sender: TObject);
    procedure SpeedDXFClick(Sender: TObject);
    procedure SpeedPeripherieClick(Sender: TObject);
    procedure SpeedDiagrammClick(Sender: TObject);
    procedure SpeedRahmenClick(Sender: TObject);
    procedure SpeedKompressionFarbeClick(Sender: TObject);
    procedure SpeedFarbeDehnungClick(Sender: TObject);
    procedure SpeedFarbeEllipseClick(Sender: TObject);
    procedure SpeedFarbeFlinnClick(Sender: TObject);
    procedure SpeedFarbeAchsenClick(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
    procedure SpeedLiteraturClick(Sender: TObject);
    procedure SpeedEinrichtenClick(Sender: TObject);
    procedure BGroesseClick(Sender: TObject);
    procedure MaskEditBBreiteKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditBHoeheKeyPress(Sender: TObject; var Key: Char);
    procedure CheckBoxBildClick(Sender: TObject);
    procedure SpeedBGroesseClick(Sender: TObject);
    procedure transparentClick(Sender: TObject);
    procedure HFarbeClick(Sender: TObject);
    procedure SpeedTransparentClick(Sender: TObject);
    procedure SpeedHFarbeClick(Sender: TObject);
    procedure speichernPLTClick(Sender: TObject);
    procedure speichernDXFClick(Sender: TObject);
    procedure PloterstellenClick(Sender: TObject);
    procedure ButtonDruckenClick(Sender: TObject);
    procedure ButtonAbbrechenClick(Sender: TObject);
    procedure GspeichernClick(Sender: TObject);
    procedure ListBoxSpeichernClick(Sender: TObject);
    procedure ausDateiClick(Sender: TObject);
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
    procedure ButtonWplusClick(Sender: TObject);
    procedure ButtonWMinusClick(Sender: TObject);
    procedure DspeichernClick(Sender: TObject);
    procedure DspeichernUnterClick(Sender: TObject);
    procedure DEinrichtenClick(Sender: TObject);
    procedure CalibrierenClick(Sender: TObject);
    procedure DDruckenClick(Sender: TObject);
    procedure ButtonCalibEndeClick(Sender: TObject);
    procedure MaskEditBrEKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditBrDKeyPress(Sender: TObject; var Key: Char);
  end;

var
  Form63        : TForm63;
  AusgewDateien : boolean;
  Gedrueckt     : array[0..3] of boolean;
  ExtensionS    : string;
  Bitmap        : TBitmap;
  HolZwischen   : boolean;
  HolPixS       : string;
  CurrentFile   : string;
  Symbol        : string[15];
  TextS         : string;
  BuendigS      : string;
  PlotDateiS    : string;
  AchseAzi      : array[0..3] of word;
  AchseFal      : array[0..3] of shortint;
  Eigen         : boolean;
  DateiNameB    : boolean;
  AziKom        : array of word;
  FalKom        : array of shortint;
  AzimutK       : array of word;
  FallenK       : array of shortint;
  ZahlKompr     : word;
  Eliminieren   : boolean;
  Cluster       : array of boolean;
  Winkel1       : word;
  Winkel2       : word;
  BildS         : string;
  Ratio         : real;
  BHoeheST      : word;
  DnameS        : string;
  Bild          : TBitmap;
  NPlus, SPlus  : integer;
  WPlus, EPlus  : integer;
  PlusEin       : boolean;
  Ebreite       : word;
  Dbreite       : word;
  FaktorAlt     : real;

implementation
uses Unit60, Unit61, Unit62;
{$R *.DFM}

procedure TForm63.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm63.ShowHint (Sender: TObject);
begin
  StatusBar1.SimpleText := Application.Hint;
end;

procedure TForm63.FormActivate(Sender: TObject);
var
  i : byte;
begin
  Left   := 70;
  Top    := 10;
  Width  := 1050;
  Height := 750;
  Form63.Caption                   := 'Fabric8: '+Tx(1144);
  Image1.Hint                      := Hilf(56) + Hilf(57);
  SpeedDrucker.Hint                := Hilf(203);
  ListBoxDateien.Hint              := Hilf(32);
  LabelDateien.Hint                := Hilf(32);
  GroupBoxPlotten.Hint             := Hilf(58) + Hilf(59);
  ButtonStart.Hint                 := Hilf(37);
  ButtonZurueck.Hint               := Hilf(52);
  ButtonBeenden.Hint               := Hilf(30);
  Ploterstellen.Hint               := Hilf(60);
  PanelRadius.Hint                 := Hilf(61);
  PanelMittelpunkt.Hint            := Hilf(62);
  MaskEditX.Hint                   := Hilf(63);
  MaskEditY.Hint                   := Hilf(64);
  SpeedHilfe.Hint                  := Hilf(210);
  ButtonAchsen.Hint                := Hilf(320);
  ButtonCluster.Hint               := Hilf(321);
  PanelProlat.Hint                 := Hilf(322);
  LabelProjektion.Hint             := Hilf(276);
  PanelEllipsoid.Hint              := Hilf(323);
  SpeedHandbuch.Hint               := Hilf(274);
  SpeedKopieren.Hint               := Hilf(262);
  SpeedZwischenablage.Hint         := Hilf(246);
  SpeedLambert.Hint                := Hilf(387);
  SpeedStereografisch.Hint         := Hilf(388);
  SpeedOrthografisch.Hint          := Hilf(389);
  SpeedKavraiskii.Hint             := Hilf(390);
  SpeedPlotter.Hint                := Hilf(437);
  SpeedPeripherie.Hint             := Hilf(440);
  SpeedDiagramm.Hint               := Hilf(441);
  SpeedRahmen.Hint                 := Hilf(442);
  SpeedHFarbe.Hint                 := Hilf(443);
  SpeedDrucker.Hint                := Hilf(309);
  SpeedKompressionFarbe.Hint       := Hilf(445);
  SpeedFarbeDehnung.Hint           := Hilf(446);
  SpeedFarbeAchsen.Hint            := Hilf(447);
  SpeedFarbeEllipse.Hint           := Hilf(448);
  SpeedFarbeFlinn.Hint             := Hilf(449);
  SpeedEinrichten.Hint             := Hilf(505);
  SpeedBGroesse.Hint               := Hilf(583);
  SpeedTransparent.Hint            := Hilf(584);
  SpeedHFarbe.Hint                 := Hilf(443);
  SpeedSpeichern.Hint              := Hilf(264);
  SpeedLoad.Hint                   := Hilf(368);
  HolPixS                          := '';
  PunktFlinn.Enabled               := false;
  PunktFlinnF.Enabled              := false;
  Projektionen.Caption             := Tx(258);
  Lambert.Caption                  := Tx(259);
  stereografisch.Caption           := Tx(260);
  orthografisch.Caption            := Tx(849);
  Darstellung.Caption              := Tx(261); {Darstellung}
  KompressionD.Caption             := Tx(975); {Kompression}
  DehnungD.Caption                 := Tx(976); {Dehnung}
  PunktFlinn.Caption               := Tx(991); {Punkt im Flinn-Diagramm}
  KompressionF.Caption             := Tx(975);
  DehnungF.Caption                 := Tx(976);
  KreisoffenK.Caption              := Tx(262);
  KreisgefuelltK.Caption           := Tx(263);
  DreieckoffenK.Caption            := Tx(264);
  DreieckgefuelltK.Caption         := Tx(265);
  QuadratoffenK.Caption            := Tx(266);
  QuadratgefuelltK.Caption         := Tx(267);
  RauteoffenK.Caption              := Tx(268);
  RautegefuelltK.Caption           := Tx(269);
  KreisoffenD.Caption              := Tx(262);
  KreisgefuelltD.Caption           := Tx(263);
  DreieckoffenD.Caption            := Tx(264);
  DreieckgefuelltD.Caption         := Tx(265);
  QuadratoffenD.Caption            := Tx(266);
  QuadratgefuelltD.Caption         := Tx(267);
  RauteoffenD.Caption              := Tx(268);
  RautegefuelltD.Caption           := Tx(269);
  KreisOffenF.Caption              := Tx(262);
  KreisgefuelltF.Caption           := Tx(263);
  DreieckoffenF.Caption            := Tx(264);
  DreieckgefuelltF.Caption         := Tx(265);
  QuadratoffenF.Caption            := Tx(266);
  QuadratgefuelltF.Caption         := Tx(267);
  RauteoffenF.Caption              := Tx(268);
  RautegefuelltF.Caption           := Tx(269);
  PFarbe.Caption                   := Tx(275);
  FarbeAchsen.Caption              := Tx(992);
  PunktFlinnF.Caption              := Tx(991);
  FarbePolygon.Caption             := Tx(993);
  Grafik.Caption                   := Tx(281);
  kopieren.Caption                 := Tx(282);
  Gspeichern.Caption               := Tx(284);
  Zwischenablage.Caption           := Tx(286);
  ausDatei.Caption                 := Tx(287);
  mitHPPlotter.Caption             := Tx(288);
  FarbePeripherie.Caption          := Tx(498);
  Hintergrund.Caption              := Tx(1453);    {Farbe des Hintergrunds}
  FarbeDiagramm.Caption            := Tx(860);
  LabelDateien.Caption             := Tx(136);
  LabelAnzahl.Caption              := Tx(296);
  LabelAnzahl.Enabled              := false;
  Ploterstellen.Caption            := Tx(298);     {Plot-Einstellungen ok?}
  LabelRadius.Caption              := Tx(299);
  LabelMittelpunkt.Caption         := Tx(300);
  LabelX.Caption                   := Tx(301);
  LabelY.Caption                   := Tx(302);
  Buttonzurueck.Caption            := Tx(30);
  Buttonbeenden.Caption            := Tx(53);
  Drucker1.Caption                 := Tx(92);
  einrichten.Caption               := Tx(935);
  drucken.Caption                  := Tx(936); 
  HFarbe.Caption                   := Tx(275);
  LabelMess.Caption                := Tx(914);
  LabelKomp.Caption                := Tx(975);
  LabelDehn.Caption                := Tx(976); 
  DEinrichten.Caption              := Tx(94);
  Calibrieren.Caption              := Tx(1581);
  DDrucken.Caption                 := Tx(93);
  LabelCalib.Caption               := Tx(1668);
  LabelCalib2.Caption              := Tx(1669);
  LabelCalib3.Caption              := Tx(1670);
  LabelCalib4.Caption              := Tx(1671);
  LabelCalib5.Caption              := Tx(1672);
  LabelCalib6.Caption              := Tx(1673);
  LabelBrE.Caption                 := Tx(1674);
  LabelBrD.Caption                 := Tx(1675);
  ButtonCalibEnde.Caption          := Tx(1682);
  LabelZahl.Caption                := '';
  Grafik.Enabled                   := false;
  Hilfe.Caption                    := Tx(162)+' (F1)';
  LabelRadius .Enabled             := false;
  MaskEditRadius.EditMask          := '999;0; ';
  MaskEditX.EditMask               := '999;0; ';
  MaskEditY.EditMask               := '999;0; ';
  MaskEditRadius.Text              := InttoStr(round(HpRadius*10));
  MaskEditX.Text                   := InttoStr(round(XKoord*10));
  MaskEditY.Text                   := InttoStr(round(YKoord*10));
  MaskEditRadius.Enabled           := false;
  LabelMittelpunkt.Enabled         := false;
  LabelX.Enabled                   := false;
  MaskEditX.Enabled                := false;
  LabelY.Enabled                   := false;
  MaskEditY.Enabled                := false;
  AusgewDateien                    := true;
  Projektionen.Enabled             := false;
  PFarbe.Enabled                   := false;
  Darstellung.Enabled              := false;
  SpeedDrucker.Enabled             := false;
  Font.Enabled                     := false;
  DatenSpeichern.Enabled           := false;
  for i := 1 to 3 do Gedrueckt[i]  := false;
  PanelKaliber.Visible             := false;
  Calib                            := false;
  LabelStrainEllipsoid.Caption     := Tx(986); {Strain-Ellipsoid:}
  LabelLangeAchse.Caption          := Tx(987); {lange Achse}
  LabelMittlereAchse.Caption       := Tx(988); {mittlere Achse}
  LabelKurzeAchse.Caption          := Tx(989); {kurze Achse}
  LabelVektor1.Caption             := '';
  LabelVektor2.Caption             := '';
  LabelVektor3.Caption             := '';
  LabelKegelWinkel.Caption         := Tx(990); {Kegelwinkel}
  LabelWinkelLang.Caption          := Tx(988);
  LabelWinkelKurz.Caption          := Tx(989); {kurze Achse}
  FarbeRahmen.Caption              := Tx(944);
  LabelWinkel1.Caption             := '';
  LabelWinkel2.Caption             := '';
  DatenSpeichern.Caption           := Tx(86);
  Dspeichern.Caption               := Tx(87);
  DspeichernUnter.Caption          := Tx(88);
  Eigen                            := true;
  ButtonAchsen.Visible             := false;
  DateiNameB                       := true;
  ButtonCluster.Visible            := false;
  Image1.Enabled                   := false;
  Eliminieren                      := false;
  FarbeAchsen.Enabled              := false;
  FarbePolygon.Enabled             := false;
  LabelXYWert.caption              :='';
  LabelYZWert.Caption              := '';
  LabelProjektion.Caption          := Tx(651); {Projektion}
  LabelDaten.Caption               := Tx(181); {Anzahl der Daten}
  GroupboxPlotten.Enabled          := false;
  GroupboxPlotten.Caption          := '';
  LabelDaten.Enabled               := false;
  Label00000.Caption               := '';
  PanelProjektion.Visible          := false;
  PanelDateien.Visible             := false;
  PanelDaten.Visible               := false;
  PanelProlat.Visible              := false;
  PanelEllipsoid.Visible           := false;
  ButtonAchsen.Caption             := Tx(982); {Orientierung des Strain-Ellipsoides}
  ButtonCluster.Caption            := Tx(983); {Cluster eliminieren}
  RadioProlat.Caption              := Tx(984); {Prolat}
  RadioOblat.Caption               := Tx(985); {oblat}
  GroupBoxPlotten.Visible          := false;
  Handbuch.Caption                 := Tx(1055)+' (F2)';
  Literatur.Caption                := Tx(1183)+' (F5)';
  SpeedLiteratur.Hint              := Hilf(462);
  PanelSpeed.Visible               := false;
  Ratio                            := Image1.Width/Image1.Height;
  MaskEditBBreite.EditMask         := '99999;0; ';
  MaskEditBHoehe.EditMask          := '99999;0; ';
  LabelBBreite.Caption             := Tx(1440);
  LabelBHoehe.Caption              := Tx(1441);
  BGroesse.Caption                 := Tx(1439);
  PanelGroesse.Visible             := false;
  HTransparent                     := false;
  for i := 1 to 9 do
    ListBoxSpeichern.Items.Add (Tx(1611+i));
  ListBoxSpeichern.Visible := false;
  For i := 1 to 7 do
    ListBoxLoad.Items.Add (Tx(1611+i));
  ListBoxLoad.Visible := false;
  PanelDehnen.Visible := false;
  PlusEin             := false;
  NPlus               := 0;
  EPlus               := 0;
  SPlus               := 0;
  WPlus               := 0;
end;

procedure TForm63.ButtonzurueckClick(Sender: TObject);
var
  Flaeche : TRect;
begin
  ButtonStart.Enabled   := true;
  UmfangFarbe           := clSilver;
  Flaeche := Rect(0,0,Clientwidth,ClientHeight);
  Loeschen (Image1.Canvas, Flaeche);
  Loeschen (Image2.Canvas, Flaeche);
  Loeschen (ImageNord.Canvas, Flaeche);
  RadioProlat.Checked := false;
  RadioOblat.Checked  := false;
  ListboxDateien.Clear;
  AziFeld := NIL;
  FalFeld := NIL;
  Talbot  := NIL;
  AziKom  := NIL;
  FalKom  := NIL;
  Cluster := NIL;
  Form63.Close;
end;

procedure TForm63.ButtonBeendenClick(Sender: TObject);
var
  Flaeche : TRect;
begin
   with Image1.Canvas do
  begin
    Pen.Color := clSilver;
    Brush.Color := clSilver;
    Rectangle (0,0,Image1.Width,Image1.Height);
  end;
  ListboxDateien.Clear;
  Loeschen (Image1.Canvas, Flaeche);
  Loeschen (Image2.Canvas, Flaeche);
  Loeschen (ImageNord.Canvas, Flaeche);
  AziFeld := NIL;
  FalFeld := NIL;
  Talbot  := NIL;
  AziKom  := NIL;
  FalKom  := NIL;
  Cluster := NIL;
  Form63.Close;
  Form62.Close;
  Form61.Close;
  Form60.Close;
  SetCurrentDir(DirectS);
end;

procedure TForm63.ButtonStartClick(Sender: TObject);
var
  ProS         : string;
  Azimut, i, n : word;
  Fall         : shortint;
  Dsymbol      : string;
  Quadrat      : TRect;
  j            : byte;
  FBild        : TBitmap;
  JBild        : TJpegImage;
  GBild        : TGifImage;
  MetaFile     : TMetaFile;
  Rahmen1      : TRect;
  Rahmen2      : TRect;
  BildPng      : TPngObject;
  NBild        : TBitmap;
  ZeileS       : string;
begin
  Breite := Image1.Width;
  Hoehe  := Image1.Height;
  if not PlusEin then
  begin
    setlength (AziKom, MaxDaten);
    setlength (FalKom, MaxDaten);
    setlength (AzimutK, MaxDaten);
    setlength (FallenK, MaxDaten);
    BildS := 'Start';
    Bo := Pi/180;
    BHoeheSt := round(BBreiteST/Ratio);
    if not ClipBoard.HasFormat(CF_Bitmap) then
    begin
      Zwischenablage.Enabled      := false;
      SpeedZwischenablage.Enabled := false;
    end
    else
    begin
      Zwischenablage.Enabled      := true;
      SpeedZwischenablage.Enabled := true;
    end;
    Image2.Visible           := true;
    PanelSpeed.Visible       := true;
    GroupboxPlotten.Enabled  := true;
    PanelDateien.Visible     := true;
    PanelDaten.Visible       := true;
    Font.Enabled             := true;
    DatenSpeichern.Enabled   := true;
    GroupboxPlotten.Caption  := '';
    LabelDaten.Enabled       := true;
    Label00000.Caption       := '';
    PanelProjektion.Visible  := true;
    GroupBoxPlotten.Caption  := Tx(297);
    SpeedDrucker.Enabled     := true;
    UmfangFarbe              := PeriFarbe;
    Projektionen.Enabled     := true;
    PFarbe.Enabled           := true;
    Darstellung.Enabled      := true;
    Grafik.Enabled           := true;
    LabelRadius.Enabled      := true;
    MaskEditRadius.Enabled   := true;
    LabelMittelpunkt.Enabled := true;
    LabelX.Enabled           := true;
    MaskEditX.Enabled        := true;
    LabelY.Enabled           := true;
    MaskEditY.Enabled        := true;
    ButtonAchsen.Visible     := true;
    ButtonCluster.Visible    := true;
    KompressionD.Enabled     := true;
    DehnungD.Enabled         := true;
    if ProjektionS = 'Lambert' then ProS  := Tx(259);
    if ProjektionS = 'stereographic' then ProS := Tx(260);
    if ProjektionS = 'orthographic' then ProS := Tx(849);
    if ProjektionS = 'Kavraiskii' then ProS := 'Kavraiskii';
    LabelProjektion.Caption := Tx(651)+': '+ ProS;
    ProS                 := GeraetS;
    LabelDaten.Enabled   := true;
    mitHPPlotter.Enabled := true;
    if DateiNameB then
    begin
      if AusgewDateien then
        for i := 0 to DateiZahl do ListboxDateien.Items.Add(DateiNameS[i]);
    end;
    ListBoxKomp.Clear;
    ListBoxDehn.Clear;
    for i := 1 to ZahlGlob do
    begin
      ZeileS := '  '+RightS('000'+IntToStr(AziFeld[i]),3)
                +'/'+RightS('00'+IntToStr(FalFeld[i]),2);
      if Talbot[i] then ListBoxKomp.Items.Add(ZeileS);
      if not Talbot[i] then ListBoxDehn.Items.Add(ZeileS);
    end;
    DateiNameB := false;
    ExtensionS := RightS(DateinameS[1],3);
    Label00000.Caption := IntToStr (ZahlGlob);
    Bitmap := Tbitmap.Create;
    ImageNord.Picture.LoadfromFile (DirectS+'\'+'NordPfeil.bmp');
    Image1.Top    := 2;
    Image1.Left   := 80;
    Image1.Width  := 660;
    Image1.Height := 663;
    Bitmap := Tbitmap.Create;
    Bitmap.Width     := 660;
    Bitmap.Height    := 672;
    ImageNord.Top    := 22;
    ImageNord.Left   := 400;
    ImageNord.Width  := 18;
    ImageNord.Height := 36;
    with Image1 do
    begin
      Picture.Graphic := Bitmap;
      Xmitte := Image1.Width div 2;
      Ymitte := Image1.Height div 2 + 18;
      Radius := Image1.Width div 2 - 24;
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
        ZahlLoeschen(Image1.Canvas);
      end
      else MessageDlg(Tx(306), mtInformation,[mbOK],0);
      Holzwischen := false;
    end;
  end
  else
  begin
    Rahmen1 := Rect(-WPlus,-NPlus,Breite+EPlus,Hoehe+SPlus);
    Rahmen2 := Rect(0,0,Breite,Hoehe+50);
    NBild   := TBitmap.Create;
    NBild.Width  := Breite;
    NBild.Height := Hoehe;
    try
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
  Dsymbol := Datensymbol;
  with Image1.Canvas do
  begin
    Pen.Width := 1;
    for i := 1 to ZahlGlob do
    begin
      if Talbot[i] then
      begin
        DatenSymbol := SymbolDehnung;
        Pen.Color := KompressionFarbe;
        if LeftS(Datensymbol,4) = 'Open' then
          Brush.Color    := DiagrFarbe
        else Brush.Color := KompressionFarbe;
      end;
      if not Talbot[i] then
      begin
        DatenSymbol := SymbolKompression;
        Pen.Color   := DehnungFarbe;
        if LeftS(Datensymbol,4) = 'Open' then
          Brush.Color    := DiagrFarbe
        else Brush.Color := DehnungFarbe;
      end;
      Azimut := AziFeld[i];
      Fall   := FalFeld[i];
      if Gefuegetyp = 2 then
      begin
        Azimut := (Azimut + 180) mod 360;
        Fall := 90 - Fall;
      end;
      PlotAF (Image1.Canvas, Azimut, Fall);
    end;
    Datensymbol := Dsymbol;
  end;
  with image2 do
  begin
    Quadrat := Rect (0, 0, Clientwidth, ClientHeight);
    UntereH(Canvas, Quadrat);
  end;
  Image2.Visible    := false;
  ImageNord.Visible := false;
  if not HTransparent then
    Image1.Canvas.Draw(Image1.Width-Image2.width-5,
                       Image2.Top, Image2.picture.graphic);
  Image1.Canvas.Draw(Image1.Width div 2 - ImageNord.Width div 2,7,
                     ImageNord.Picture.Graphic);
  if DemoB then DemoText (Image1.Canvas,2,Image1.Height-60);
    {Kompressionsdaten finden auf AziKom und FalKom schreiben
  und zählen}
  n:= 0;
  for i := 1 to ZahlGlob do
  begin
    if Talbot[i] then
    begin
      inc(n);
      AzimutK[n] := AziFeld[i];
      FallenK[n] := FalFeld[i];
    end;
  end;
  ZahlKompr := n;
end;

procedure TForm63.ButtonClusterClick(Sender: TObject);
var
  i : word;
begin
  Image1.Enabled        := true;
  ButtonCluster.Enabled := false;
  setlength (Cluster, MaxDaten);
  for i := 1 to ZahlKompr do Cluster[i] := false;
end;

procedure TForm63.Image1MouseDown(Sender: TObject;
          Button: TMouseButton; Shift: TShiftState;
          X, Y: Integer);
var
  Distanz  : real;
  Xx, Yy   : real;
  Xp, Yp   : word;
  Grenze   : real;
  i        : word;
begin
  Bo := Pi/180;
  Grenze := sqrt(sqr(X-Xmitte) + sqr(Y-Ymitte));
  if ssMiddle in Shift then exit;
  if ssDouble in Shift then exit;
  if ssLeft in Shift then
  begin
    if Grenze <= Radius then
    begin
      with Image1.Canvas do
      begin
        for i := 1 to ZahlKompr do
        begin
          Koordinaten (AzimutK[i]*Bo, FallenK[i]*Bo, Xx, Yy,
                       Xp, Yp);
          Distanz := sqrt(sqr(X-Xp) + sqr(Y-Yp));
          if Distanz <= 4 then
          begin
            Cluster[i]  := true;
            Pen.Color   := DiagrFarbe;
            Brush.Color := DiagrFarbe;
            Ellipse (Xp-5,Yp-5,Xp+5,Yp+5);
          end;
        end; {for i}
      end; {Canvas}
    end; {Grenze}
  end; {if ssLeft in Shift}
end;

procedure TForm63.ButtonAchsenClick(Sender: TObject);
var
  AziSchwer   : word;
  FalSchwer   : word;
  AzDreh      : integer;
  DrehWinkel  : shortint;
  Ad, Fd, Bo  : extended;
  Aa, B ,C    : array[0..3] of extended;
  Z           : byte;
  Sign        : shortint;
  FallDreh    : shortint;
  i, A, j     : word;
  F           : shortint;
  XPixel      : ^TFword;
  YPixel      : ^TFword;
  X, Y        : real;
  SummeEigen  : real;
  Zirkoeff    : byte;
  Zylinder    : byte;
  KlKreis     : byte;
  AchseAziS   : array[0..3] of string[3];
  AchseFalS   : array[0..3] of string[2];
  Yoben       : word;
  Xrechts     : word;
  Yunten      : word;
  Xlinks      : word;
  LangeAchse  : real;
  KurzeAchse  : real;
  AziAchse2   : word;
  FalAchse2   : shortint;
  Xp, Yp, n   : word;
  Eigenwert   : array[0..3] of real;
  FillStyle   : TFillStyle;
  XpAlt       : word;
  YpAlt       : word;
  Rand        : array[0..10] of word;
  Azimut      : word;
  Fall        : word;
  DSymbol     : string;
begin
  PanelEllipsoid.Visible       := true;
  PanelProlat.Visible          := true;
  mitHPPlotter.Enabled         := false;
  BildS := 'Achsen';
  Image2.Visible               := true; 
  ButtonStart.Enabled          := false;
  RadioProlat.Checked          := false;
  RadioOblat.Checked           := false;
  Projektionen.Enabled         := false;
  ButtonCluster.Enabled        := false;
  FarbeAchsen.Enabled          := true;
  FarbePolygon.Enabled         := true;
  LabelStrainEllipsoid.Enabled := true;
  LabelLangeAchse.Enabled      := true;
  LabelMittlereAchse.Enabled   := true;
  LabelKurzeAchse.Enabled      := true;
  LabelKegelWinkel.Enabled     := true;
  LabelWinkelLang.Enabled      := true;
  LabelWinkelKurz.Enabled      := true;
  PunktFlinn.Enabled           := false;
  KompressionD.Enabled         := true;
  DehnungD.Enabled             := true;
  PunktFlinnF.Enabled          := false;
  Xpixel := NIL;
  Ypixel := NIL;
  GetMem (XPixel, SizeOf(TFreal));
  GetMem (YPixel, SizeOf(TFreal));
  UmfangFarbe := PeriFarbe;
  Diagramm (Image1.Canvas);
  Bo := Pi / 180;
  if not Eliminieren then
  begin
    for i := 1 to ZahlKompr do
    begin
      AziKom[i] := AzimutK[i];
      FalKom[i] := FallenK[i];
    end;
  end;
  if Eliminieren then
  begin
    n := 0;
    for i := 1 to ZahlKompr do
    begin
      if not Cluster[i] then
      begin
        inc(n);
        AziKom[n] := AzimutK[i];
        FalKom[n] := FallenK[i];
      end;
    end;
    ZahlKompr := n;
  end;
  AlgorithmusT(AziKom, FalKom, AziSchwer, FalSchwer,
               ZahlKompr);
  for i := ZahlKompr to ZahlKompr + 5 do
  begin
    AziKom[i] := AziSchwer;
    FalKom[i] := FalSchwer;
  end;
  {Achsen des strainellipsoides über Eigenwerte berechnen}
  Eigenwerte(AchseAzi, AchseFal, Eigenwert, ZahlKompr+5,
             SummeEigen, Zylinder, Zirkoeff, KlKreis);
  {Schwerpunkt, 3. Eigenwert, in den Mittelpunkt rotieren}
  Azdreh := AchseAzi[3] - 90;
  if AzDreh <0 then AzDreh := AzDreh + 360;
  DrehWinkel := 90 - AchseFal[3];
  FallDreh := 0;
  Abc (DrehWinkel, AzDreh, FallDreh, Ad, Fd, Aa, B, C, Z);
  for i := 1 to ZahlKompr do
  begin
    Rotieren (Aa, B, C, 1, AziKom[i], FalKom[i], Z, Ad, Fd,
              A, F, Sign);
    AziKom[i] := A;
    FalKom[i] := F;
  end;
  AziAchse2 := AchseAzi[2];
  FalAchse2 := AchseFal[2];
  Rotieren (Aa, B, C, 1, AziAchse2, FalAchse2, Z, Ad, Fd,
            A, F, Sign);
  {2.Eigenvektor in NS drehen}
  Abc (180-AziAchse2, 0, 90, Ad, Fd, Aa, B, C, Z);
  for i := 1 to Zahlkompr do
  begin
    Rotieren (Aa, B, C, 1, AziKom[i], FalKom[i], Z, Ad, Fd,
              A, F, Sign);
    AziKom[i] := A;
    FalKom[i] := F;
  end;
  {Achsen der Ellipse bestimmen}
  Yoben   := 700;
  Xrechts := 0;
  Yunten  := 0;
  Xlinks  := 700;
  for i := 1 to ZahlKompr do
  begin
    Koordinaten (AziKom[i]*Bo,FalKom[i]*Bo, X, Y,
                 Xp, Yp);
    if Yp < Yoben then Yoben     := Yp;
    if Xp > Xrechts then Xrechts := Xp;
    if Xp < Xlinks then Xlinks   := Xp;
    if Yp > Yunten then Yunten   := Yp;
  end;
  LangeAchse := (Yunten - Yoben) / 2;
  KurzeAchse := (Xrechts - Xlinks) / 2;
  for i := 0 to 360 do
  begin
    Xpixel[i] := round(Xmitte + KurzeAchse * cos(i*Bo));
    Ypixel[i] := round(Ymitte - LangeAchse * sin(i*Bo));
    WinkelausKoord (Xpixel[i], Ypixel[i], A, F);
    AziKom[i] := A;
    FalKom[i] := F;
  end;
  Winkel2 := 90 - FalKom[0];   {Winkel1}
  Winkel1 := 90 - FalKom[90];
  {zurückrotieren}
  Abc (AziAchse2-180, 0, 90, Ad, Fd, Aa, B, C, Z);
  for i := 0 to 360 do
  begin
    Rotieren (Aa, B, C, 1, AziKom[i], FalKom[i], Z, Ad, Fd,
            A, F, Sign);
    AziKom[i] := A;
    FalKom[i] := F;
  end;
  Abc (-DrehWinkel, AzDreh, 0, Ad, Fd, Aa, B, C, Z);
  for i := 0 to 360 do
  begin
    Rotieren (Aa, B, C, 1, AziKom[i], FalKom[i], Z, Ad, Fd,
              A, F, Sign);
    AziKom[i] := A;
    FalKom[i] := F;
  end;
  with Image1.Canvas do
  begin
    Pen.Color   := clSilver;
    Brush.Color := DiagrFarbe;  //FarbePoly;
    Ellipse (Xmitte-Radius+1,Ymitte-Radius+1,Xmitte+Radius-1, Ymitte+Radius-1);
    Pen.Color   := KompressionFarbe;
    Brush.Color := KompressionFarbe;
    for i := 0 to 360 do
    begin
      Koordinaten (AziKom[i]*Bo, FalKom[i]*Bo, X, Y, Xp, YP);
      XPixel[i] := Xp;
      YPixel[i] := Yp;
    end;
    moveto (XPixel[0], YPixel[0]);
    Pen.Color := clSilver;
    Pen.Width := 1;
    for i := 1 to 6 do
    begin
      Xpixel[360+i] := Xpixel[i];
      Ypixel[360+i] := Ypixel[i];
    end;
    XpAlt := round((Xpixel[0] + Xpixel[1] + Xpixel[2] +
             Xpixel[3] + Xpixel[4] + Xpixel[5] +
             Xpixel[6])/7);
    YpAlt := round((YPixel[0] + YPixel[1] + Ypixel[2] +
             Ypixel[3] + Ypixel[4] + Ypixel[5] +
             Ypixel[6])/7);
    j := 0;
    for i := 3 to 363 do
    begin
      Xp  := round((Xpixel[i-3] + Xpixel[i-2] + Xpixel[i-1] +
             Xpixel[i] + Xpixel[i+1] + Xpixel[i+2] +
             Xpixel[i+3])/7);
      Yp  := round((YPixel[i-3] + YPixel[i-2] + Ypixel[i-1] +
             Ypixel[i] + Ypixel[i+1] + Ypixel[i+2] +
             Ypixel[i+3])/7);
      if sqr(Xp-XpAlt) + sqr(Yp-YpAlt) >= sqr(Radius/3.7) then
      begin
        moveto (Xp, Yp);
        inc(j);
        Rand[j] := i;
      end
      else lineto (Xp, Yp);
      XpAlt := Xp;
      YpAlt := Yp;
    end;
    Pen.Color   := clSilver;
    Brush.Color := FarbePoly;
    for i := 1 to j do
    begin
      koordinaten(AziKom[Rand[i]]*Bo, FalKom[Rand[i]]*Bo,
                  X, Y, Xp, Yp);
      ellipse (Xp-4,Yp-4, Xp+4,Yp+4);
    end;
    Brush.Color := FarbePoly;
    floodfill (Xmitte+2, Ymitte+2, clSilver, fsBorder);
  end;
  Dsymbol := Datensymbol;
  with Image1.Canvas do
  begin
    for i := 1 to ZahlGlob do
    begin
      if Talbot[i] then
      begin
        DatenSymbol := SymbolDehnung;
        Pen.Color := KompressionFarbe;
        if LeftS(Datensymbol,4) = 'Open' then
          Brush.Color    := DiagrFarbe
        else Brush.Color := KompressionFarbe;
      end;
      if not Talbot[i] then
      begin
        DatenSymbol := SymbolKompression;
        Pen.Color   := DehnungFarbe;
        if LeftS(Datensymbol,4) = 'Open' then
          Brush.Color    := DiagrFarbe
        else Brush.Color := DehnungFarbe;
      end;
      Azimut := AziFeld[i];
      Fall   := FalFeld[i];
      if Gefuegetyp = 2 then
      begin
        Azimut := (Azimut + 180) mod 360;
       Fall := 90 - Fall;
      end;
      PlotAF (Image1.Canvas, Azimut, Fall);
    end;
    Pen.Width := 2;
    TeilkreisT (Image1.Canvas, AchseAzi, AchseFal);
    AchsenPlot (Image1.Canvas, AchseAzi, AchseFal);
  end;
  if DemoB then DemoText(Image1.Canvas,Image1.Width-100,Image1.Height-20);
  for i := 1 to 3 do str(AchseAzi[i], AchseAziS[i]);
  for i := 1 to 3 do str(AchseFal[i], AchseFalS[i]);
  LabelVektor1.Caption  := AchseAziS[3]+'/' + AchseFalS[3];
  LabelVektor2.Caption  := AchseAziS[2]+'/' + AchseFalS[2];
  LabelVektor3.Caption  := AchseAziS[1]+'/' + AchseFalS[1];
  LabelWinkel1.Caption  := InttoStr (Winkel2);
  LabelWinkel2.Caption  := InttoStr (Winkel1);
  RadioProlat.Checked   := false;
  RadioOblat.Checked    := false;
  Datensymbol := DSymbol;
  FreeMem (XPixel);
  FreeMem (YPixel);
end;

procedure TForm63.LambertClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  ProjektionS   := 'Lambert';
  AusgewDateien := false;
  KonfigZeileS[24] := '  Projection               :,Lambert';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm63.stereografischClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  ProjektionS   := 'stereographic';
  AusgewDateien := false;
  KonfigZeileS[24] := '  Projection               :,stereographic';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm63.orthografischClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  ProjektionS   := 'orthographic';
  AusgewDateien := false;
  KonfigZeileS[24] := '  Projection               :,orthographic';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm63.KavraiskiiClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  ProjektionS   := 'Kavraiskii';
  AusgewDateien := false;
  KonfigZeileS[24] := '  Projection               :,Kavraiskii';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm63.SpeedLambertClick(Sender: TObject);
begin
  LambertClick(Sender);
end;

procedure TForm63.SpeedStereografischClick(Sender: TObject);
begin
  stereografischClick(Sender);
end;

procedure TForm63.SpeedOrthografischClick(Sender: TObject);
begin
  orthografischClick(Sender);
end;

procedure TForm63.SpeedKavraiskiiClick(Sender: TObject);
begin
  KavraiskiiClick(Sender);
end;

procedure TForm63.KreisOffenKClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  Eigen := false;
  SymbolKompression := 'OpenCircle';
  AusgewDateien     := false;
  if ProjektionS <> '' then ButtonStart.Enabled := true;
  KonfigZeileS[81] := 'Symbol of compression      :,OpenCircle';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  if BildS = 'Start'  then ButtonStartClick(Sender);
  if BildS = 'Achsen' then ButtonAchsenClick(Sender);
  if BildS = 'Flinn'  then ButtonFlinnClick(Sender);
end;

procedure TForm63.KreisGefuelltKClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  Eigen             := false;
  SymbolKompression := 'FilledCircle';
  AusgewDateien     := false;
  if ProjektionS <> '' then ButtonStart.Enabled := true;
  KonfigZeileS[81] := 'Symbol of compression      :,FilledCircle';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  if BildS = 'Start'  then ButtonStartClick(Sender);
  if BildS = 'Achsen' then ButtonAchsenClick(Sender);
  if BildS = 'Flinn'  then ButtonFlinnClick(Sender);
end;

procedure TForm63.QuadratOffenKClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  Eigen             := false;
  SymbolKompression := 'OpenSquare';
  AusgewDateien     := false;
  if ProjektionS <> '' then ButtonStart.Enabled   := true;
  KonfigZeileS[81] := 'Symbol of compression      :,OpenSquare';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  if BildS = 'Start'  then ButtonStartClick(Sender);
  if BildS = 'Achsen' then ButtonAchsenClick(Sender);
  if BildS = 'Flinn'  then ButtonFlinnClick(Sender);
end;

procedure TForm63.QuadratGefuelltKClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  Eigen             := false;
  SymbolKompression := 'FilledSquare';
  AusgewDateien     := false;
  if ProjektionS <> '' then ButtonStart.Enabled   := true;
  KonfigZeileS[81] := 'Symbol of compression      :,FilledSquare';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  if BildS = 'Start'  then ButtonStartClick(Sender);
  if BildS = 'Achsen' then ButtonAchsenClick(Sender);
  if BildS = 'Flinn'  then ButtonFlinnClick(Sender);
end;

procedure TForm63.DreieckOffenKClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  Eigen             := false;
  SymbolKompression := 'OpenTriangle';
  AusgewDateien     := false;
  if ProjektionS <> '' then ButtonStart.Enabled  := true;
  KonfigZeileS[81] := 'Symbol of compression      :,OpenTriangle';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  if BildS = 'Start'  then ButtonStartClick(Sender);
  if BildS = 'Achsen' then ButtonAchsenClick(Sender);
  if BildS = 'Flinn'  then ButtonFlinnClick(Sender);
end;

procedure TForm63.DreieckGefuelltKClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  Eigen             := false;
  SymbolKompression := 'FilledTriangle';
  AusgewDateien     := false;
  if ProjektionS <> '' then ButtonStart.Enabled  := true;
  KonfigZeileS[81] := 'Symbol of compression      :,FilledTriangle';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  if BildS = 'Start'  then ButtonStartClick(Sender);
  if BildS = 'Achsen' then ButtonAchsenClick(Sender);
  if BildS = 'Flinn'  then ButtonFlinnClick(Sender);
end;

procedure TForm63.RauteOffenKClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  Eigen             := false;
  SymbolKompression := 'OpenDiamond';
  AusgewDateien     := false;
  if ProjektionS <> '' then ButtonStart.Enabled  := true;
  KonfigZeileS[81] := 'Symbol of compression      :,OpenDiamond';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  if BildS = 'Start'  then ButtonStartClick(Sender);
  if BildS = 'Achsen' then ButtonAchsenClick(Sender);
  if BildS = 'Flinn'  then ButtonFlinnClick(Sender);
end;

procedure TForm63.RauteGefuelltKClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  Eigen             := false;
  SymbolKompression := 'FilledDiamond';
  AusgewDateien     := false;
  if ProjektionS <> '' then ButtonStart.Enabled  := true;
  KonfigZeileS[81] := 'Symbol of compression      :,FilledDiamond';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  if BildS = 'Start'  then ButtonStartClick(Sender);
  if BildS = 'Achsen' then ButtonAchsenClick(Sender);
  if BildS = 'Flinn'  then ButtonFlinnClick(Sender);
end;

procedure TForm63.KreisoffenDClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  Eigen         := false;
  SymbolDehnung := 'OpenCircle';
  AusgewDateien := false;
  if ProjektionS <> '' then ButtonStart.Enabled  := true;
  KonfigZeileS[82] := 'Symbol of extension        :,OpenCircle';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  if BildS = 'Start'  then ButtonStartClick(Sender);
  if BildS = 'Achsen' then ButtonAchsenClick(Sender);
  if BildS = 'Flinn'  then ButtonFlinnClick(Sender);
end;

procedure TForm63.KreisgefuelltDClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  Eigen         := false;
  SymbolDehnung := 'FilledCircle';
  AusgewDateien := false;
  if ProjektionS <> '' then ButtonStart.Enabled  := true;
  KonfigZeileS[82] := 'Symbol of extension        :,FilledCircle';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  if BildS = 'Start'  then ButtonStartClick(Sender);
  if BildS = 'Achsen' then ButtonAchsenClick(Sender);
  if BildS = 'Flinn'  then ButtonFlinnClick(Sender);
end;

procedure TForm63.QuadratoffenDClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  Eigen         := false;
  SymbolDehnung := 'OpenSquare';
  AusgewDateien := false;
  if ProjektionS <> '' then ButtonStart.Enabled  := true;
  KonfigZeileS[82] := 'Symbol of extension        :,OpenSquare';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  if BildS = 'Start'  then ButtonStartClick(Sender);
  if BildS = 'Achsen' then ButtonAchsenClick(Sender);
  if BildS = 'Flinn'  then ButtonFlinnClick(Sender);
end;

procedure TForm63.QuadratgefuelltDClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  Eigen         := false;
  SymbolDehnung := 'FilledSquare';
  AusgewDateien := false;
  if ProjektionS <> '' then ButtonStart.Enabled  := true;
  KonfigZeileS[82] := 'Symbol of extension        :,FilledSquare';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  if BildS = 'Start'  then ButtonStartClick(Sender);
  if BildS = 'Achsen' then ButtonAchsenClick(Sender);
  if BildS = 'Flinn'  then ButtonFlinnClick(Sender);
end;

procedure TForm63.DreieckoffenDClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  Eigen         := false;
  SymbolDehnung := 'OpenTriangle';
  AusgewDateien := false;
  if ProjektionS <> '' then ButtonStart.Enabled  := true;
  KonfigZeileS[82] := 'Symbol of extension        :,OpenTriangle';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  if BildS = 'Start'  then ButtonStartClick(Sender);
  if BildS = 'Achsen' then ButtonAchsenClick(Sender);
  if BildS = 'Flinn'  then ButtonFlinnClick(Sender);
end;

procedure TForm63.DreieckgefuelltDClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  Eigen         := false;
  SymbolDehnung := 'FilledTriangle';
  AusgewDateien := false;
  if ProjektionS <> '' then ButtonStart.Enabled  := true;
  KonfigZeileS[82] := 'Symbol of extension        :,FilledTriangle';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  if BildS = 'Start'  then ButtonStartClick(Sender);
  if BildS = 'Achsen' then ButtonAchsenClick(Sender);
  if BildS = 'Flinn'  then ButtonFlinnClick(Sender);
end;

procedure TForm63.RauteoffenDClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  Eigen         := false;
  SymbolDehnung := 'OpenDiamond';
  AusgewDateien := false;
  if ProjektionS <> '' then ButtonStart.Enabled  := true;
  KonfigZeileS[82] := 'Symbol of extension        :,OpenDiamond';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  if BildS = 'Start'  then ButtonStartClick(Sender);
  if BildS = 'Achsen' then ButtonAchsenClick(Sender);
  if BildS = 'Flinn'  then ButtonFlinnClick(Sender);
end;

procedure TForm63.RautegefuelltDClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  Eigen         := false;
  SymbolDehnung := 'FilledDiamond';
  AusgewDateien := false;
  if ProjektionS <> '' then ButtonStart.Enabled  := true;
  KonfigZeileS[82] := 'Symbol of extension        :,FilledDiamond';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  if BildS = 'Start'  then ButtonStartClick(Sender);
  if BildS = 'Achsen' then ButtonAchsenClick(Sender);
  if BildS = 'Flinn'  then ButtonFlinnClick(Sender);
end;

procedure TForm63.DehnungFClick(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  Eigen            := false;
  AusgewDateien    := false;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS := ColorToString (Farbe);
  DehnungFarbe := StringToColor(FarbeS);
  KonfigZeileS[79] := 'Colour of compression      :,'+FarbeS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  if BildS = 'Start'  then ButtonStartClick(Sender);
  if BildS = 'Achsen' then ButtonAchsenClick(Sender);
end;

procedure TForm63.KompressionFClick(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  Eigen            := false;
  AusgewDateien    := false;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS := ColorToString (Farbe);
  KompressionFarbe := StringToColor(FarbeS);
  KonfigZeileS[80] := 'Colour of extension        :,'+FarbeS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  if BildS = 'Start'  then ButtonStartClick(Sender);
  if BildS = 'Achsen' then ButtonAchsenClick(Sender);
end;

procedure TForm63.FontClick(Sender: TObject);
begin
  WaehlFont(FontDialog1);
end;

procedure TForm63.SpeedFontClick(Sender: TObject);
begin
  FontClick(Sender);
end;

procedure TForm63.BGroesseClick(Sender: TObject);
begin
  PanelGroesse.Visible    := true;
  CheckBoxBild.State      := cbUnchecked;
  MaskEditBBreite.Text    := IntTostr(BBreiteST);
  MaskEditBHoehe.Text     := IntToStr(BHoeheST);
end;

procedure TForm63.SpeedBGroesseClick(Sender: TObject);
begin
  BGroesseClick(Sender);
end;

procedure TForm63.MaskEditBBreiteKeyPress(Sender: TObject; var Key: Char);
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
      BBreiteST := StrToInt (BBreiteS);
      BHoeheST  := round(BBreiteST/Ratio);
      KonfigZeileS[118] := 'Save Image Width (Stereo)  :,'+BBreiteS;
      MaskEditBHoehe.Text := IntToStr(BHoeheST);
      assignFile(Datei,FabricS+'\'+'Fabric.ini');
      rewrite (Datei);
      for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
      closefile (Datei);
    end;
  end;
end;

procedure TForm63.MaskEditBHoeheKeyPress(Sender: TObject; var Key: Char);
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
      BHoeheST  := StrToInt (BHoeheS);
      BBreiteST := round(BHoeheST*Ratio);
      KonfigZeileS[118] := 'Save Image Width (Stereo)  :,'+IntToStr(BBreiteST);
      MaskEditBBreite.Text := IntToStr(BBreiteST);
    end;
    assignFile(Datei,FabricS+'\'+'Fabric.ini');
    rewrite (Datei);
    for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
    closefile (Datei);
  end;
end;

procedure TForm63.CheckBoxBildClick(Sender: TObject);
begin
  PanelGroesse.Visible := false;
end;

procedure TForm63.kopierenClick(Sender: TObject);
begin
  ClipBoard.Assign (Image1.Picture);
end;

procedure TForm63.transparentClick(Sender: TObject);
begin
  Farbe                 := clWhite;
  HTransparent          := true;
  ListBoxSpeichern.Clear;
  ListBoxSpeichern.Items.Add (Tx(1613));
  ButtonStartClick(Sender);
end;

procedure TForm63.SpeedTransparentClick(Sender: TObject);
begin
  transparentClick(Sender);
end;

procedure TForm63.HFarbeClick(Sender: TObject);
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
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ListBoxSpeichern.Clear;
  for i := 1 to 9 do
    ListBoxSpeichern.Items.Add (Tx(1611+i));
  ButtonStartClick (Sender);
end;

procedure TForm63.SpeedHFarbeClick(Sender: TObject);
begin
  HFarbeClick(Sender);
end;

procedure TForm63.GspeichernClick(Sender: TObject);
begin
  ListBoxSpeichern.Visible := true;
end;

procedure TForm63.SpeedSpeichernClick(Sender: TObject);
begin
  GspeichernClick(Sender);
end;

procedure TForm63.ListBoxSpeichernClick(Sender: TObject);
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
end;

procedure TForm63.speichernPLTClick(Sender: TObject);
var
  i      : byte;
  Datei  : Textfile;
begin
  PanelDaten.Visible      := false;
  GroupBoxPlotten.Visible := true;
  FarbePeripherie.Enabled := true;
  GeraetS                 := 'HPGL';
  KonfigZeileS[53] := 'Paper Plot                 :,HPGL';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  FarbePeripherie.Enabled := true;
end;

procedure TForm63.speichernDXFClick(Sender: TObject);
var
  i      : byte;
  Datei  : Textfile;
begin
  PanelDaten.Visible      := false;
  GroupBoxPlotten.Visible := true;
  FarbePeripherie.Enabled := true;
  GeraetS                 := 'DXF';
  KonfigZeileS[53] := 'Paper Plot                 :,DXF';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  FarbePeripherie.Enabled := true;
end;

procedure TForm63.ZwischenablageClick(Sender: TObject);
begin
  Eigen                    := false;
  FarbePeripherie.Enabled  := false;
  FarbeDiagramm.Enabled    := false;
  Hintergrund.Enabled      := false;
  HolZwischen := true;
  ButtonStartClick(Sender);
end;

procedure TForm63.ausDateiClick(Sender: TObject);
begin
  ListBoxLoad.Visible := true;
end;

procedure TForm63.DEinrichtenClick(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TForm63.CalibrierenClick(Sender: TObject);
begin
  Calib                   := true;
  FaktorAlt               := Faktor;
  Faktor                  := 1;
  GeraetS                 := 'Plotter';
  PanelDaten.Visible      := false;
  GroupBoxPlotten.Visible := true;
  PanelKaliber.Visible    := true;
  MaskEditBrE.Setfocus;
end;

procedure TForm63.ButtonCalibEndeClick(Sender: TObject);
begin
  Calib := false;
  Faktor := FaktorAlt;
  PanelKaliber.Visible := false;
end;

procedure TForm63.MaskEditBrEKeyPress(Sender: TObject; var Key: Char);
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

procedure TForm63.MaskEditBrDKeyPress(Sender: TObject; var Key: Char);
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

procedure TForm63.DDruckenClick(Sender: TObject);
var
  i      : byte;
  Datei  : Textfile;
begin
  DiagrFarbe := clWhite;
  PanelDaten.Visible := false;
  PrinterSetupDialog1.execute;
  GeraetS                  := 'Plotter';
  KonfigZeileS[53] := 'Paper Plot                 :,Plotter';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  GroupBoxPlotten.Visible := true;
end;

procedure TForm63.ButtonNPlusClick(Sender: TObject);
begin
  NPlus := NPlus +1;
  ButtonStartClick(Sender);
end;

procedure TForm63.ButtonNMinusClick(Sender: TObject);
begin
  NPlus := NPlus -1;
  ButtonStartClick(Sender);
end;

procedure TForm63.ButtonEMinusClick(Sender: TObject);
begin
  EPlus := EPlus -1;
  ButtonStartClick(Sender);
end;

procedure TForm63.ButtonEPlusClick(Sender: TObject);
begin
  EPlus := EPlus +1;
  ButtonStartClick(Sender);
end;

procedure TForm63.ButtonSMinusClick(Sender: TObject);
begin
  SPlus := SPlus -1;
  ButtonStartClick(Sender);
end;

procedure TForm63.ButtonWplusClick(Sender: TObject);
begin
  WPlus := WPlus +1;
  ButtonStartClick(Sender);
end;

procedure TForm63.ButtonWMinusClick(Sender: TObject);
begin
  WPlus := WPlus -1;
  ButtonStartClick(Sender);
end;

procedure TForm63.ButtonHokClick(Sender: TObject);
begin
  NPlus := 0;
  EPlus := 0;
  SPlus := 0;
  WPlus := 0;
  PanelDehnen.Visible := false;
  PlusEin := false;
end;

procedure TForm63.SpeedLoadClick(Sender: TObject);
begin
  ausDateiClick(Sender);
end;

procedure TForm63.ListBoxLoadClick(Sender: TObject);
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
  ListBoxLoad.Visible := false;
  PanelDehnen.Visible := true;
  PlusEin             := true;
  ButtonStartClick(Sender);
end;

procedure TForm63.SpeedPlotterClick(Sender: TObject);
begin
  DDruckenClick(Sender);
end;

procedure TForm63.SpeedPLTClick(Sender: TObject);
begin
  speichernPLTClick(Sender);
end;

procedure TForm63.SpeedDXFClick(Sender: TObject);
begin
  speichernDXFClick(Sender);
end;

procedure TForm63.FarbePeripherieClick(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  Eigen := false;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS := ColorToString (Farbe);
  PeriFarbe     := StringToColor(FarbeS);
  KonfigZeileS[56] := 'Colour of Periphery        :,'+FarbeS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  if BildS = 'Start'  then ButtonStartClick(Sender);
  if BildS = 'Achsen' then ButtonAchsenClick(Sender);
  if BildS = 'Flinn'  then ButtonFlinnClick(Sender);
end;

procedure TForm63.FarbeDiagrammClick(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  Eigen := false;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS := ColorToString (Farbe);
  DiagrFarbe     := StringToColor(FarbeS);
  KonfigZeileS[6] := '  Diagram Colour           :,'+FarbeS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  if BildS = 'Start'  then ButtonStartClick(Sender);
  if BildS = 'Achsen' then ButtonAchsenClick(Sender);
  if BildS = 'Flinn'  then ButtonFlinnClick(Sender);
end;

procedure TForm63.FarbeRahmenClick(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  Eigen := false;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS := ColorToString (Farbe);
  RahmenFarbe     := StringToColor(FarbeS);
  KonfigZeileS[4] := '  Frame Colour             :,'+FarbeS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  if BildS = 'Start'  then ButtonStartClick(Sender);
  if BildS = 'Achsen' then ButtonAchsenClick(Sender);
  if BildS = 'Flinn'  then ButtonFlinnClick(Sender);
end;

procedure TForm63.SpeedPeripherieClick(Sender: TObject);
begin
  FarbePeripherieClick(Sender);
end;

procedure TForm63.SpeedDiagrammClick(Sender: TObject);
begin
  FarbeDiagrammClick(Sender);
end;

procedure TForm63.SpeedRahmenClick(Sender: TObject);
begin
  FarbeRahmenClick(Sender);
end;

procedure TForm63.FarbeAchsenClick(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS := ColorToString (Farbe);
  EigenFarbe       := StringToColor(FarbeS);
  KonfigZeileS[21] := '  Colour of Eigenvectors   :,'+FarbeS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  OeffnungFarbe := EigenFarbe;
  TeilkreisT (Image1.Canvas, AchseAzi, AchseFal);
  AchsenPlot (Image1.Canvas, AchseAzi, AchseFal);
end;

procedure TForm63.SpeedFarbeAchsenClick(Sender: TObject);
begin
  FarbeAchsenClick(Sender);
end;

procedure TForm63.FarbePolygonClick(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS    := ColorToString (Farbe);
  FarbePoly := StringToColor(FarbeS);
  KonfigZeileS[83] := 'Colour of Polygons         :,'+FarbeS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
  ButtonAchsenClick(Sender);
end;

procedure TForm63.SpeedFarbeEllipseClick(Sender: TObject);
begin
  FarbePolygonClick(Sender)
end;

procedure TForm63.einrichtenClick(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TForm63.SpeedEinrichtenClick(Sender: TObject);
begin
  einrichtenClick(Sender);
end;

procedure TForm63.druckenClick(Sender: TObject);
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

procedure TForm63.DspeichernClick(Sender: TObject);
begin
  if CurrentFile <> '' then Speichern (CurrentFile,ZahlGlob,
    AziFeld,FalFeld)
  else DspeichernUnterClick(Sender);
end;

procedure TForm63.DspeichernUnterClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := ExtenS;
  if ExtenS = 'TLI' then SaveDialog1.Filter := 'Talbot mrthod, linears (*.tli)|*.TLI';
  if ExtenS = 'PLA' then SaveDialog1.Filter := 'Talbot method, planes (*.tpl)|*.TPL';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    Speichern (CurrentFile, ZahlGlob, AziFeld, FalFeld);
  end;
end;

procedure TForm63.HilfeClick(Sender: TObject);
const
  Anfang = 163;
var
  DateiS : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\63Talbot-plot.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\63Talbot-plot.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm63.SpeedDruckerClick(Sender: TObject);
begin
  druckenClick(Sender);
end;

procedure TForm63.SpeedHilfeClick(Sender: TObject);
begin
  HilfeClick(Sender);
end;

procedure TForm63.MaskEditUnterschriftKeyPress(Sender: TObject;
var Key: Char);
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

procedure TForm63.RadioButtonRechtsClick(Sender: TObject);
begin
  BuendigS := 'Rechts';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    ButtonDrucken.Enabled := true;
end;

procedure TForm63.RadioButtonZentriertClick(Sender: TObject);
begin
  BuendigS := 'Zentriert';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    ButtonDrucken.Enabled := true;
end;

procedure TForm63.RadioButtonLinksClick(Sender: TObject);
begin
  BuendigS := 'Links';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    ButtonDrucken.Enabled := true;
end;

procedure TForm63.ListBoxSchriftClick(Sender: TObject);
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

procedure TForm63.PloterstellenClick(Sender: TObject);
var
  RadiusS  : string[6];
  XKoordS  : string[6];
  YKoordS  : string[6];
  Kreuz    : boolean;
  Rmax     : real;
  RmaxS    : string[15];
  Xmax     : real;
  Ymax     : real;
  i        : word;
  Datei    : TextFile;
  XS, YS   : string;
  Ws, HS   : string;
  X, Y     : word;
  Groesse  : word;
  Typ      : TMsgDlgType;
  DiagnameS: string;
begin
  DecimalSeparator := '.';
  mitHPPlotter.Enabled := true;
  RadiusS              := MaskEditRadius.Text;
  XKoordS              := MaskEditX.Text;
  YKoordS              := MaskEditY.Text;
  KonfigZeileS[57] := 'Radius [mm]                :'+','+RadiusS;
  KonfigZeileS[58] := 'X-Coordinate of Centre [mm]:'+','+XKoordS;
  KonfigZeileS[59] := 'Y-Coordinate of Centre [mm]:'+','+YKoordS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  HpRadius  := StrtoInt(RadiusS)/10;
  XKoord    := StrtoInt(XKoordS)/10;
  YKoord    := StrtoInt(YKoordS)/10;
  RmaxS := '(max. 100mm)';
  Rmax  := 10;
  Xmax := 29.2 - Rmax;
  Ymax := 20.5 - Rmax;
  Typ  := mtError;
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
    HPPeriph (Canvas, Kreuz);
    Plot1 (Canvas);
    XS := Inttostr(round((Xkoord-HPRadius/1.5) * 400));
    YS := IntToStr(round((YKoord-HpRadius/4) * 400));
    WS := FloatToStr(HPRadius/10);
    HS := FloatToStr(HPRadius/8);
    Farben (Canvas, clBlack);
    Hpende (XS, Ys, WS, HS);
  end;
  if GeraetS = 'Plotter' then
  begin
    with Image1.Canvas do
    begin
      Pen.Color := DatenFarbe;
      Brush.Color := HintFarbe;
      Brush.Style := bsClear;
      Font.Size   := 10;
    end;
    SetMapMode (Printer.Handle, MM_Himetric);
    with Printer do
    begin
      BeginDoc;
      Plotter (Canvas, SaveDialog1);
      Farben (Canvas, UmfangFarbe);
      HPPeriph (Canvas, Kreuz);
      Plot1 (Canvas);
      if DemoB then
      begin
        X := round((Xkoord-HpRadius)*100*Faktor);
        Y := round((Ykoord+HpRadius)*100*Faktor);
        Groesse := round(HpRadius*2);
        Canvas.Font.Size   := Groesse;
        Canvas.Brush.Color := clWhite;
        Canvas.Font.Color  := clBlack;
        Canvas.Textout (X, Y,'Demo-Version');
      end;
      EndDoc;
    end;
  end;
  if not Calib then
    showmessage(Tx(435));
  GroupBoxPlotten.Visible  := false;
  ListBoxSpeichern.Visible := false;
  PanelDaten.Visible       := true;
  Calib                    := false;
end;

procedure TForm63.ButtonDruckenClick(Sender: TObject);
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
      DruckBitmap (Printer.Canvas, Fenster, RadiusS,
                   XKoordS, YKoordS, TextS, Schrift,
                   BuendigS, Bitmap);
      EndDoc;
    end;
  finally
    Bitmap.free;
  end;
end;

procedure TForm63.ButtonAbbrechenClick(Sender: TObject);
begin
  Paneldrucken.Visible         := false;
  RadioButtonlinks.Visible     := false;
  RadioButtonzentriert.Visible := false;
  RadioButtonrechts.Visible    := false;
  RadioGroup.Visible           := false;
end;

procedure TForm63.ButtonFlinnClick(Sender: TObject);
var
  a, b   : real;
  Xnull  : word;
  Ynull  : word;
  Tick   : word;
  Laenge : word;
  Zoom   : word;
  X1, X2 : word;
  Y1, Y2 : word;

begin
  BildS := 'Flinn';
  Image2.Visible        := false;
  ButtonCluster.Enabled := false;
  KompressionD.Enabled  := false;
  DehnungD.Enabled      := false;
  KompressionF.Enabled  := false;
  DehnungF.Enabled      := false;
  FarbeAchsen.Enabled   := false;
  FarbePolygon.Enabled  := false;
  PunktFlinnF.Enabled   := true;
  PunktFlinn.Enabled    := true;
  Flinn_Diagramm (a, b, Winkel1, Winkel2);
  Zoom := round(max(a,b));
  if Zoom < 10 then Zoom := 1 + Zoom else Zoom := 5+Zoom;
  PlotFlinn (Image1.Canvas, Zoom);
  LabelXY.Enabled := true;
  LabelYZ.Enabled := true;
  a := round(a*10)/10;
  b := round(b*10)/10;
  LabelXYWert.Caption := FloattoStr(a);
  LabelYZWert.Caption := Floattostr(b);
  with Image1.Canvas do
  begin
    Xnull  := round(2*Xmitte/8);
    Ynull  := round(2*Ymitte - 2*Ymitte/8);
    Laenge := round(2*Xmitte - 2*Xmitte/5);
    Tick   := round(Laenge/Zoom); {/9}
    Pen.Color := DatenFarbe;
    Pen.Width := 1;
    X1 := round(Xnull+b*Tick-Tick-5);
    Y1 := round(Ynull-a*Tick+Tick-5);
    X2 := round(Xnull+b*Tick-Tick+5);
    Y2 := round(Ynull-a*Tick+Tick+5);
    if Datensymbol = 'OpenCircle' then
    begin
      Brush.Color := DiagrFarbe;
      Ellipse (X1,Y1, X2,Y2);
    end;
    if Datensymbol = 'FilledCircle' then
    begin
      Brush.Color := DatenFarbe;
      Ellipse (X1,Y1, X2,Y2);
    end;
    if Datensymbol = 'OpenSquare' then
    begin
      Brush.Color := DiagrFarbe;
      Rectangle (X1,Y1, X2,Y2);
    end;
    if Datensymbol = 'FilledSquare' then
    begin
      Brush.Color := DatenFarbe;
      Rectangle (X1,Y1, X2,Y2);
    end;
    if Datensymbol = 'OpenTriangle' then
    begin
      Brush.Color := DiagrFarbe;
      Polygon ([Point(X1+5,Y1-5), Point(X2,Y1+5), Point(X1,Y1+5)]);
    end;
    if Datensymbol = 'FilledTriangle' then
    begin
      Brush.Color := DatenFarbe;
      Polygon ([Point(X1+5,Y1-5), Point(X2,Y1+5), Point(X1,Y1+5)]);
    end;
    if Datensymbol = 'OpenDiamond' then
    begin
      Brush.Color := DiagrFarbe;
      Polygon ([Point(X1+5,Y1), Point(X2,Y1+5), Point(X1+5,Y2),
               Point(X1,Y1+5)]);
    end;
    if Datensymbol = 'FilledDiamond' then
    begin
      Brush.Color := DatenFarbe;
      Polygon ([Point(X1+5,Y1), Point(X2,Y1+5), Point(X1+5,Y2),
               Point(X1,Y1+5)]);
    end;
  end; {Canvas}
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

procedure TForm63.RadioProlatClick(Sender: TObject);
begin
  PanelProjektion.Visible := false;
  mitHPPlotter.Enabled    := false;
  EllipsoidS              := 'prolat';
  ButtonFlinnClick(Sender);
end;

procedure TForm63.RadioOblatClick(Sender: TObject);
begin
  PanelProjektion.Visible := false;
  mitHPPlotter.Enabled    := false;
  EllipsoidS              := 'oblat';
  ButtonFlinnClick(Sender);
end;

procedure TForm63.KreisOffenFClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  DatenSymbol   := 'OpenCircle';
  KonfigZeileS[9] := '  Data Symbol              :,OpenCircle';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonFlinnClick(Sender);
end;

procedure TForm63.KreisgefuelltFClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  DatenSymbol   := 'FilledCircle';
  KonfigZeileS[9] := '  Data Symbol              :,FilledCircle';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonFlinnClick(Sender);
end;

procedure TForm63.QuadratOffenFClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  DatenSymbol   := 'OpenSquare';
  KonfigZeileS[9] := '  Data Symbol              :,OpenSquare';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonFlinnClick(Sender);
end;

procedure TForm63.QuadratGefuelltFClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  DatenSymbol   := 'FilledSquare';
  KonfigZeileS[9] := '  Data Symbol              :,FilledSquare';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonFlinnClick(Sender);
end;

procedure TForm63.DreieckOffenFClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  DatenSymbol   := 'OpenTriangle';
  KonfigZeileS[9] := '  Data Symbol              :,OpenTriangle';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonFlinnClick(Sender);
end;

procedure TForm63.DreieckGefuelltFClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  DatenSymbol   := 'FilledTriangle';
  KonfigZeileS[9] := '  Data Symbol              :,FilledTriangle';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonFlinnClick(Sender);
end;

procedure TForm63.RauteOffenFClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  DatenSymbol   := 'OpenDiamond';
  KonfigZeileS[9] := '  Data Symbol              :,OpenDiamond';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonFlinnClick(Sender);
end;

procedure TForm63.RauteGefuelltFClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  DatenSymbol   := 'FilledDiamond';
  KonfigZeileS[9] := '  Data Symbol              :,FilledDiamond';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonFlinnClick(Sender);
end;

procedure TForm63.PunktFlinnFClick(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  Eigen            := false;
  AusgewDateien    := false;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS          := ColorToString (Farbe);
  DatenFarbe      := StringToColor(FarbeS);
  KonfigZeileS[7] := '  Colour of Data Points    :,'+FarbeS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonFlinnClick(Sender);
end;

procedure TForm63.SpeedFarbeFlinnClick(Sender: TObject);
begin
  PunktFlinnFClick(Sender);
end;

procedure TForm63.SpeedKompressionFarbeClick(Sender: TObject);
begin
  KompressionFClick(Sender);
end;

procedure TForm63.SpeedFarbeDehnungClick(Sender: TObject);
begin
  DehnungFClick(Sender);
end;

procedure TForm63.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Talbot-Methode.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'Talbot_Method.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm63.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm63.SpeedKopierenClick(Sender: TObject);
begin
  kopierenClick(Sender);
end;

procedure TForm63.SpeedZwischenablageClick(Sender: TObject);
begin
  ZwischenablageClick(Sender);
end;

procedure TForm63.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm63.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

end.

