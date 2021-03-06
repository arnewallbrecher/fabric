unit Unit63;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, ComCtrls, Menus, ExtCtrls, StdCtrls, Mask,
  Buttons, Texte, Globvar, Basic, Plotten, Clipbrd, Drucken,
  HPPlot, Printers, Kalkulat, MyPlotter, Shellapi, Standard,
  GifImage, Bmp2Tiff, Jpeg, ExtDlgs, ReadTiff, ehsHelpRouter,
  PngImage, Grafik, Einausga, Math;

type
  TForm63 = class(TForm)
    Image1: TImage;

    PanelSpeed: TPanel;

    MainMenu1      : TMainMenu;

    Darstellung : TMenuItem;
    KompressionD: TMenuItem;
    DehnungD: TMenuItem;
    PFarbe: TMenuItem;

    Grafik          : TMenuItem;
    kopieren        : TMenuItem;
    Gspeichern: TMenuItem;
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
    LabelLaenge: TLabel;
    MaskEditLaenge: TMaskEdit;
    PanelBild            : TPanel;
    LabelEcke: TLabel;
    LabelXdrucken        : TLabel;
    LabelYdrucken        : TLabel;
    MaskEditLinks: TMaskEdit;
    MaskEditOben: TMaskEdit;
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
    KompressionFa: TMenuItem;

    FarbeRahmen     : TMenuItem;

    SaveDialog1         : TSaveDialog;
    OpenDialog1         : TOpenDialog;
    PrintDialog1        : TPrintDialog;
    PrinterSetupDialog1 : TPrinterSetupDialog;

    RadioGroup           : TRadioGroup;
    RadioButtonlinks     : TRadioButton;
    RadioButtonzentriert : TRadioButton;
    RadioButtonrechts    : TRadioButton;
    PanelEllipsoid: TPanel;
    FarbeAchsen: TMenuItem;

    LabelXy     : TLabel;
    LabelXYWert : TLabel;
    LabelYZ     : TLabel;
    LabelYZWert : TLabel;
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
    DehnungFa: TMenuItem;
    Image2: TImage;
    SpeedHandbuch: TSpeedButton;
    SpeedKopieren: TSpeedButton;
    SpeedZwischenablage: TSpeedButton;
    SpeedPlotter: TSpeedButton;
    SpeedPeripherie: TSpeedButton;
    SpeedDiagramm: TSpeedButton;
    SpeedRahmen: TSpeedButton;
    SpeedKompressionFarbe: TSpeedButton;
    SpeedFarbeDehnung: TSpeedButton;
    SpeedFarbeAchsen: TSpeedButton;
    Literatur: TMenuItem;
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
    PanelDaten: TPanel;
    ListBoxKomp: TListBox;
    LabelDaten: TLabel;
    ListBoxDehn: TListBox;
    LabelMess: TLabel;
    LabelKompr: TLabel;
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
    ButtonPlotEnde: TButton;
    PanelLoad: TPanel;
    ListBoxLoad: TListBox;
    ButtonLabbrechen: TButton;
    PanelSpeichern: TPanel;
    ListBoxSpeichern: TListBox;
    ButtonSabbrechen: TButton;
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
    LabelText: TLabel;
    LabelReturn: TLabel;
    MaskEditText: TMaskEdit;
    PanelPlazieren: TPanel;
    LabelPlazieren: TLabel;
    SpeedText: TSpeedButton;
    SpeedUnText: TSpeedButton;
    PanelEllipse: TPanel;
    LabelSummeK: TLabel;
    LabelSummeD: TLabel;
    Radionfls: TRadioGroup;
    RadioKompression: TRadioButton;
    RadioDehnung: TRadioButton;
    ButtonFlinn: TButton;
    LabelSum: TLabel;
    LabelKom: TLabel;
    LabelDeh: TLabel;
    ButtonTalbot: TButton;
    SpeedDspeichern: TSpeedButton;
    SpeedLiterat: TSpeedButton;
    PanelAchsen: TPanel;
    LabelAchse: TLabel;
    CheckBoxOK: TCheckBox;
    FarbeEllipse: TMenuItem;
    LkRadienD: TMenuItem;
    LkKreisOffen: TMenuItem;
    LkKreisGefuellt: TMenuItem;
    LkQuadratOffen: TMenuItem;
    LkQuadratGefuellt: TMenuItem;
    LkDreieckOffen: TMenuItem;
    LkDreieckGefuellt: TMenuItem;
    LkRauteOffen: TMenuItem;
    LkRauteGefuellt: TMenuItem;
    SpeedEllipse: TSpeedButton;
    SpeedFlinn: TSpeedButton;
    PanelWieder: TPanel;
    ButtonWieder: TButton;
    CheckBoxWieder: TCheckBox;

    procedure FormShow(Sender: TObject);
    procedure ShowHint(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ButtonzurueckClick(Sender: TObject);
    procedure ButtonBeendenClick(Sender: TObject);
    procedure ButtonStartClick(Sender: TObject);
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
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ButtonFlinnClick(Sender: TObject);
    procedure KreisOffenFClick(Sender: TObject);
    procedure KreisgefuelltFClick(Sender: TObject);
    procedure QuadratOffenFClick(Sender: TObject);
    procedure QuadratGefuelltFClick(Sender: TObject);
    procedure DreieckOffenFClick(Sender: TObject);
    procedure RauteOffenFClick(Sender: TObject);
    procedure DreieckGefuelltFClick(Sender: TObject);
    procedure RauteGefuelltFClick(Sender: TObject);
    procedure HandbuchClick(Sender: TObject);
    procedure DehnungFaClick(Sender: TObject);
    procedure KompressionFaClick(Sender: TObject);
    procedure FarbeAchsenClick(Sender: TObject);
    procedure FarbePolygonClick(Sender: TObject);
    procedure PunktFlinnFClick(Sender: TObject);
    procedure FarbePeripherieClick(Sender: TObject);
    procedure FarbeDiagrammClick(Sender: TObject);
    procedure FarbeRahmenClick(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure SpeedKopierenClick(Sender: TObject);
    procedure SpeedZwischenablageClick(Sender: TObject);
    procedure SpeedPlotterClick(Sender: TObject);
    procedure SpeedPLTClick(Sender: TObject);
    procedure SpeedDXFClick(Sender: TObject);
    procedure SpeedPeripherieClick(Sender: TObject);
    procedure SpeedDiagrammClick(Sender: TObject);
    procedure SpeedRahmenClick(Sender: TObject);
    procedure SpeedKompressionFarbeClick(Sender: TObject);
    procedure SpeedFarbeDehnungClick(Sender: TObject);
    procedure SpeedFarbeFlinnClick(Sender: TObject);
    procedure SpeedFarbeAchsenClick(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
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
    procedure ButtonPlotEndeClick(Sender: TObject);
    procedure ButtonLabbrechenClick(Sender: TObject);
    procedure ButtonSabbrechenClick(Sender: TObject);
    procedure ausZwischenablageClick(Sender: TObject);
    procedure ausDateiClick(Sender: TObject);
    procedure DrueckClick(Sender: TObject);
    procedure SpeedRueckClick(Sender: TObject);
    procedure ZoomClick(Sender: TObject);
    procedure ButtonSPlusClick(Sender: TObject);
    procedure SpeedZoomClick(Sender: TObject);
    procedure TextschreibenClick(Sender: TObject);
    procedure MaskEditTextKeyPress(Sender: TObject; var Key: Char);
    procedure Image1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TrueckClick(Sender: TObject);
    procedure SpeedTextClick(Sender: TObject);
    procedure SpeedUnTextClick(Sender: TObject);
    procedure RadioKompressionClick(Sender: TObject);
    procedure RadioDehnungClick(Sender: TObject);
    procedure ButtonTalbotClick(Sender: TObject);
    procedure SpeedDspeichernClick(Sender: TObject);
    procedure SpeedLiteratClick(Sender: TObject);
    procedure CheckBoxOKClick(Sender: TObject);
    procedure FarbeEllipseClick(Sender: TObject);
    procedure LkKreisOffenClick(Sender: TObject);
    procedure LkQuadratOffenClick(Sender: TObject);
    procedure LkKreisGefuelltClick(Sender: TObject);
    procedure LkQuadratGefuelltClick(Sender: TObject);
    procedure LkDreieckOffenClick(Sender: TObject);
    procedure LkDreieckGefuelltClick(Sender: TObject);
    procedure LkRauteOffenClick(Sender: TObject);
    procedure LkRauteGefuelltClick(Sender: TObject);
    procedure SpeedEllipseClick(Sender: TObject);
    procedure SpeedFlinnClick(Sender: TObject);
    procedure ButtonWiederClick(Sender: TObject);
    procedure CheckBoxWiederClick(Sender: TObject);
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
  Eigen         : boolean;
  DateiNameB    : boolean;
  ZahlDef       : word;
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
  Zwischen      : boolean;
  DBitmap       : TBitmap;
  TeS           : string;
  BText         : boolean;
  TextBitmap    : array[1..10] of TBitmap;
  texti         : byte;
  Deform        : string;
  DSymbol       : string[15];
  BildT         : TBitmap;
  BildF         : TBitmap;
  BildStart     : TBitmap;
  KeinDiag      : boolean;
  LAchse        : boolean;
  PunktS        : string[1];
  Aq            : array[0..3] of word;
  Fq            : array[0..3] of shortint;
  Lang, Kurz    : real;
  TnPhi         : real;
  Xl,Yl, Xp,Yp  : word;
  Xk, Yk        : word;
  ll, lk        : real;
  t1,t2,t3      : real;
  a, b          : real;
  Flinn         : boolean;
  AchsenBild    : TBitmap;
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
  Left   := LeftDiag + 2*ULap;
  Top    := TopDiag + 2*ULap;
  Width  := WidDiag;
  Height := HeiDiag;
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
  PanelEllipsoid.Hint              := Hilf(323);
  SpeedHandbuch.Hint               := Hilf(274);
  SpeedKopieren.Hint               := Hilf(262);
  SpeedZwischenablage.Hint         := Hilf(246);
  SpeedPlotter.Hint                := Hilf(437);
  SpeedPeripherie.Hint             := Hilf(440);
  SpeedDiagramm.Hint               := Hilf(441);
  SpeedRahmen.Hint                 := Hilf(442);
  SpeedHFarbe.Hint                 := Hilf(443);
  SpeedDrucker.Hint                := Hilf(309);
  SpeedKompressionFarbe.Hint       := Hilf(445);
  SpeedFarbeDehnung.Hint           := Hilf(446);
  SpeedFarbeAchsen.Hint            := Hilf(447);
  SpeedFlinn.Hint                  := Hilf(449);
  SpeedEinrichten.Hint             := Hilf(505);
  SpeedBGroesse.Hint               := Hilf(583);
  SpeedTransparent.Hint            := Hilf(584);
  SpeedHFarbe.Hint                 := Hilf(443);
  SpeedSpeichern.Hint              := Hilf(264);
  SpeedLoad.Hint                   := Hilf(368);
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
  SpeedEllipse.Hint                := Hilf(448);
  HolPixS                          := '';
  Darstellung.Caption              := Tx(261); {Darstellung}
  KompressionD.Caption             := Tx(1713); {Verkürzung}
  DehnungD.Caption                 := Tx(976); {Dehnung}
  PunktFlinn.Caption               := Tx(991); {Punkt im Flinn-Diagramm}
  DehnungFa.Caption                := Tx(976);
  KompressionFa.Caption            := Tx(1713);
  KreisoffenK.Caption              := Tx(262);
  KreisgefuelltK.Caption           := Tx(263);
  QuadratoffenK.Caption            := Tx(264);
  QuadratgefuelltK.Caption         := Tx(265);
  DreieckoffenK.Caption            := Tx(266);
  DreieckgefuelltK.Caption         := Tx(267);
  RauteoffenK.Caption              := Tx(268);
  RautegefuelltK.Caption           := Tx(269);
  KreisoffenD.Caption              := Tx(262);
  KreisgefuelltD.Caption           := Tx(263);
  QuadratoffenD.Caption            := Tx(264);
  QuadratgefuelltD.Caption         := Tx(265);
  DreieckoffenD.Caption            := Tx(266);
  DreieckgefuelltD.Caption         := Tx(267);
  RauteoffenD.Caption              := Tx(268);
  RautegefuelltD.Caption           := Tx(269);
  KreisOffenF.Caption              := Tx(262);
  KreisgefuelltF.Caption           := Tx(263);
  DreieckoffenF.Caption            := Tx(266);
  DreieckgefuelltF.Caption         := Tx(267);
  QuadratoffenF.Caption            := Tx(264);
  QuadratgefuelltF.Caption         := Tx(265);
  RauteoffenF.Caption              := Tx(268);
  RautegefuelltF.Caption           := Tx(269);
  PFarbe.Caption                   := Tx(275);
  FarbeAchsen.Caption              := Tx(992);
  PunktFlinnF.Caption              := Tx(991);
  Grafik.Caption                   := Tx(281);
  kopieren.Caption                 := Tx(282);
  Gspeichern.Caption               := Tx(284);
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
  LabelKompr.Caption               := Tx(1713);
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
  ButtonPlotEnde.Caption           := Tx(1682);
  DHinzufuegen.Caption             := Tx(1685);
  ausZwischenablage.Caption        := Tx(1686);
  AusDatei.Caption                 := Tx(1687);
  Drueck.Caption                   := Tx(1688);
  Textschreiben.Caption            := Tx(1699);
  LabelText.Caption                := Tx(1700);
  LabelReturn.Caption              := Tx(1701);
  LabelPlazieren.Caption           := Tx(1702);
  Trueck.Caption                   := Tx(1688);
  Radionfls.Caption                := Tx(1711);
  RadioDehnung.Caption             := Tx(1712);
  RadioKompression.Caption         := Tx(1713);
  FarbeEllipse.Caption             := 'Ellipse';
  LkRadienD.Caption                := Tx(1730);
  LkKreisOffen.Caption             := Tx(262);
  LkKreisGefuellt.Caption          := Tx(263);
  LkQuadratOffen.Caption           := Tx(264);
  LkQuadratGefuellt.Caption        := Tx(265);
  LkDreieckOffen.Caption           := Tx(266);
  LkDreieckGefuellt.Caption        := Tx(267);
  LkRauteOffen.Caption             := Tx(268);
  LkRauteGefuellt.Caption          := Tx(269);
  ButtonWieder.Caption             := Tx(1731);
  LabelZahl.Caption                := '';
  Grafik.Enabled                   := false;
  Hilfe.Caption                    := Tx(162)+' (F1)';
  LabelRadius .Enabled             := false;
  MaskEditRadius.EditMask          := '999;0; ';
  MaskEditX.EditMask               := '999;0; ';
  MaskEditY.EditMask               := '999;0; ';
  MaskEditBrE.EditMask             := '999;0; ';
  MaskEditBrD.EditMask             := '999;0; ';
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
  PFarbe.Enabled                   := false;
  Darstellung.Enabled              := false;
  SpeedDrucker.Enabled             := false;
  Font.Enabled                     := false;
  DatenSpeichern.Enabled           := false;
  for i := 1 to 3 do Gedrueckt[i]  := false;
  PanelKaliber.Visible             := false;
  Calib                            := false;
  MaskEditBrE.Enabled              := false;
  MaskEditBrD.Enabled              := false;
  FarbeRahmen.Caption              := Tx(944);
  DatenSpeichern.Caption           := Tx(86);
  Dspeichern.Caption               := Tx(87);
  DspeichernUnter.Caption          := Tx(88);
  Eigen                            := true;
  DateiNameB                       := true;
  LabelXYWert.caption              :='';
  LabelYZWert.Caption              := '';
  GroupboxPlotten.Enabled          := false;
  GroupboxPlotten.Caption          := '';
  LabelDaten.Enabled               := false;
  LabelKom.Caption                 := '';
  LabelDeh.Caption                 := '';
  PanelDateien.Visible             := false;
  PanelDaten.Visible               := false;
  PanelEllipsoid.Visible           := false;
  GroupBoxPlotten.Visible          := false;
  Handbuch.Caption                 := Tx(1055)+' (F2)';
  Literatur.Caption                := Tx(1183)+' (F5)';
  SpeedLiterat.Hint                := Hilf(462);
  PanelSpeed.Visible               := false;
  Ratio                            := 660/663;
  MaskEditBBreite.EditMask         := '99999;0; ';
  MaskEditBHoehe.EditMask          := '99999;0; ';
  LabelBBreite.Caption             := Tx(1440);
  LabelBHoehe.Caption              := Tx(1441);
  BGroesse.Caption                 := Tx(1439);
  PanelGroesse.Visible             := false;
  HTransparent                     := false;
  for i := 1 to 9 do
    ListBoxSpeichern.Items.Add (Tx(1611+i));
  PanelSpeichern.Visible := false;
  For i := 1 to 7 do
    ListBoxLoad.Items.Add (Tx(1611+i));
  PanelLoad.Visible   := false;
  PanelDehnen.Visible := false;
  PlusEin             := false;
  NPlus               := 0;
  EPlus               := 0;
  SPlus               := 0;
  WPlus               := 0;
  Zwischen            := false;
  Drueck.Enabled      := false;
  SpeedRueck.Enabled  := false;
  Zoom.Enabled        := false;
  SpeedZoom.Enabled   := false;
  PanelText.Visible   := false;
  BText               := false;
  texti               := 0;
  Trueck.Enabled      := false;
  SpeedUnText.Enabled := false;
  PanelEllipse.Visible  := false;
  ButtonTalbot.Visible  := false;
  Darstellung.Enabled   := false;
  PFarbe.Enabled        := false;
  Font.Enabled          := false;
  Grafik.Enabled        := false;
  Text.Enabled          := false;
  DatenSpeichern.Enabled:= false;
  KeinDiag              := false;
  LAchse                := false;
  PunktS                := '';
  PanelAchsen.Visible   := false;
  PFarbe.Enabled        := false;
  ButtonFlinn.Visible   := false;
  CheckBoxOK.Enabled    := false;
  Flinn                 := false;
  PanelEllipsoid.Visible:= false;
  PanelWieder.Visible   := false;
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
  ListboxDateien.Clear;
  AziFeld := NIL;
  FalFeld := NIL;
  Talbot  := NIL;
  BildStart.Free;
  Form63.Close;
end;

procedure TForm63.ButtonBeendenClick(Sender: TObject);
var
  Flaeche : TRect;
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
  BildStart.free;
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
  Xp, Yp       : word;
begin
  LkRadienD.Enabled    := true;
  CheckBoxOk.State     := cbUnchecked;
  LabelXYWert.Caption  := '';
  LabelYZWert.Caption  := '';
  PanelAchsen.Visible  := false;
  PanelEllipse.Visible := true;
  DSymbol := DatenSymbol;
  Breite  := Image1.Width;
  Hoehe   := Image1.Height;
  ProjektionS   := 'Lambert';
//  ProjektionS := 'stereographic';
  AusgewDateien := false;
  Darstellung.Enabled    := true;
  PFarbe.Enabled         := true;
  Font.Enabled           := true;
  Grafik.Enabled         := true;
  Text.Enabled           := true;
  DehnungFa.Enabled      := true;
  KompressionFa.Enabled  := true;
  DatenSpeichern.Enabled := true;
  if not PlusEin then
  begin
    setlength (AziFeld, Maxdaten);
    setlength (FalFeld, Maxdaten);
    setlength (Talbot, Maxdaten);
    Bo := Pi/180;
    BHoeheSt := round(BBreiteST/Ratio);
    if not Zwischen then
    begin
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
    Image2.Visible           := true;
    PanelSpeed.Visible       := true;
    GroupboxPlotten.Enabled  := true;
    PanelDateien.Visible     := true;
    PanelDaten.Visible       := true;
    GroupboxPlotten.Caption  := '';
    LabelDaten.Enabled       := true;
    GroupBoxPlotten.Caption  := Tx(297);
    SpeedDrucker.Enabled     := true;
    UmfangFarbe              := PeriFarbe;
    LabelRadius.Enabled      := true;
    MaskEditRadius.Enabled   := true;
    LabelMittelpunkt.Enabled := true;
    LabelX.Enabled           := true;
    MaskEditX.Enabled        := true;
    LabelY.Enabled           := true;
    MaskEditY.Enabled        := true;
    KompressionD.Enabled     := true;
    DehnungD.Enabled         := true;
    ProS                     := Tx(259);
    mitHPPlotter.Enabled     := true;
    if DateiNameB then
    begin
      if AusgewDateien then
        for i := 0 to DateiZahl do ListboxDateien.Items.Add(DateiNameS[i]);
    end;
    ListBoxKomp.Clear;
    ListBoxDehn.Clear;
    n := 0;
    for i := 1 to ZahlGlob do
    begin
      ZeileS := '  '+RightS('000'+IntToStr(AziFeld[i]),3)
                +'/'+RightS('00'+IntToStr(FalFeld[i]),2);
      if Talbot[i] then ListBoxDehn.Items.Add(ZeileS);
      if not Talbot[i] then
      begin
        ListBoxKomp.Items.Add(ZeileS);
        inc(n);
      end;
    end;
    DateiNameB  := false;
    ExtensionS  := RightS(DateinameS[1],3);
    LabelKom.Caption := IntToStr(n);
    LabelDeh.Caption := IntToStr(ZahlGlob-n);
    Bitmap := Tbitmap.Create;
    ImageNord.Picture.LoadfromFile (DirectS+'\'+'NordPfeil.bmp');
    Image1.Top    := ImTop;
    Image1.Left   := ImLeft;
    Image1.Width  := ImWidth;
    Image1.Height := ImHeight;
    Bitmap := Tbitmap.Create;
    Bitmap.Width     := ImWidth;
    Bitmap.Height    := ImHeight;
    ImageNord.Top    := 3;
    ImageNord.Left   := 400;
    ImageNord.Width  := 18;
    ImageNord.Height := 36;
    with Image1 do
    begin
      Picture.Graphic := Bitmap;
      Xmitte := Image1.Width div 2;
      Ymitte := Image1.Height div 2 + ImYmitte;
      Radius := Image1.Width div 2 - ImRadius;
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
  with Image1.Canvas do
  begin
    Pen.Width := 1;
    for i := 1 to ZahlGlob do
    begin
      if Talbot[i] then
      begin
        DatenSymbol := SymbolDehnung;
        Pen.Color   := DehnungFarbe;
        if LeftS(Datensymbol,4) = 'Open' then
          Brush.Color    := DiagrFarbe
        else Brush.Color := DehnungFarbe;
      end;
      if not Talbot[i] then
      begin
        DatenSymbol := SymbolKompression;
        Pen.Color   := KompressionFarbe;
        if LeftS(Datensymbol,4) = 'Open' then
          Brush.Color    := DiagrFarbe
        else Brush.Color := KompressionFarbe;
      end;
      Azimut := AziFeld[i];
      Fall   := FalFeld[i];
      PlotAF (Image1.Canvas, Azimut, Fall);
    end;
    Brush.Color := HintFarbe;
    Font.Size   := 14;
    Textout(10,620,Tx(651)+': '+ ProS);
    ProS := GeraetS;
  end;
  With Image1.Canvas do
  begin
    Pen.Color   := PeriFarbe;
    Font.Size   := 16;
    Brush.Color := HintFarbe;
    Textout(500,10,Tx(1712));
    Textout(500,40,Tx(1713));
    Pen.Color   := KompressionFarbe;
    if LeftS(SymbolKompression,4) = 'Open' then
      Brush.Color    := HintFarbe
        else Brush.Color := KompressionFarbe;
    Symbole (Image1.Canvas,600,50,SymbolKompression);
    Pen.Color   := DehnungFarbe;
    if LeftS(SymbolDehnung,4) = 'Open' then
      Brush.Color    := HintFarbe
        else Brush.Color := DehnungFarbe;
    Symbole (Image1.Canvas,600,20,SymbolDehnung);
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
  Image1.Canvas.Draw(Image1.Width div 2 - ImageNord.Width div 2,3,
                     ImageNord.Picture.Graphic);
  if DemoB then DemoText (Image1.Canvas,2,Image1.Height-60);
  FarbeDiagramm.Enabled    := true;
  RadioKompression.Checked := false;
  RadioDehnung.Checked     := false;
  BildStart := TBitmap.Create;
  BildStart.Assign(Image1.Picture);
end;

procedure TForm63.Image1MouseDown(Sender: TObject;
          Button: TMouseButton; Shift: TShiftState;
          X, Y: Integer);
var
  Xp, Yp    : word;
  Ae, Ff    : real;
  Nx, Ny    : real;
  AziM      : worD;
  FalM      : word;
  AziL      : word;
  FalL      : word;
  AziK      : word;
  FalK      : word;
  Az, i     : word;
  ThetaL    : integer;
  ThetaK    : integer;
  F         : shortint;
  a3,a2,a1  : real;
  a0        : real;
  l         : array[0..3] of extended;
  S1,S2,S3  : real;
  S11,S22   : real;
  S33       : real;
  av, bv,Ow : real;
  Rl,Rk     : real;
  j         : word;
  Xo,Yo     : word;
  Xr,Yr     : word;
  X0,Y0     : word;
  AziEll    : array[0..360] of word;
  FalEll    : array[0..360] of shortint;
  Arot,Frot : extended;
  Aa,Bb,Cc  : array[0..3] of extended;
  Z         : byte;
  RotAzimut : array[0..360] of word;
  RotFall   : array[0..360] of shortint;
  Sign      : shortint;
  AGross    : word;
  FGross    : shortint;
  AzEll     : word;
  FaEll     : word;
  Xe, Ye    : array[0..360] of real;
  AEll      : word;
  FEll      : shortint;
  xN, yN    :word;
  xa,ya     : word;

begin
  if ssDouble in Shift then exit;
  if ssRight in Shift then exit;
  if BText then exit;
  Bo := Pi/180;
  Ae := Aq[3] * Bo;
  Ff := Fq[3] * Bo;
  Koordinaten(Ae, Ff, Nx, Ny, Xp,Yp);
  if LAchse then
  begin
    if ssLeft in Shift then
    begin
      With Image1.Canvas do
      begin
        Pen.Color   := FarbePoly;
        Brush.Color := FarbePoly;
        if PunktS = '1' then
        begin
          LabelAchse.Caption := Tx(1729);
          xl := x;
          yl := y;
          PunktS := '2';
          Symbole(Image1.Canvas,Xl,Yl,SymbolRadii);
          exit;
        end;
        if PunktS = '2' then
        begin
          Xk := x;
          Yk := y;
          Symbole(Image1.Canvas,Xk,Yk,SymbolRadii);
          PanelAchsen.Visible := false;
        end;
        AziFall (Xp, Yp, AziM, FalM);
        AziFall (Xl, Yl, AziL, FalL);
        AziFall (Xk, Yk, AziK, FalK);
        Rechnen (1,3,FalM,FalL,AziM,AziL,Az,ThetaL,F);
        Rechnen (1,3,FalM,FalK,AziM,AziK,Az,ThetaK,F);
        Ae := Aq[3]*Bo;
        Ff := Fq[3]*Bo;
        Koordinaten(Ae,Ff,Nx,Ny,X0,Y0);
        if ProjektionS = 'Lambert' then
        begin
          Rl := Radius*2*sin(Bo*(ThetaL/2))/sqrt(2);
          Rk := Radius*2*sin(Bo*(ThetaK/2))/sqrt(2);
        end;
        if ProjektionS = 'stereografic' then
        begin
          Rl := Radius * tan(Bo*(90-ThetaL)/2);
          Rk := Radius * tan(Bo*(90-ThetaK)/2);
        end;
        for i := 0 to 360 do
        begin
          x := Xmitte+round(Rl*cos(i*Bo));
          y := Ymitte-round(Rk*sin(i*Bo));
          AziFall(x,y,AzEll,FaEll);
          AziEll[i] := AzEll;
          FalEll[i] := FaEll;
        end;
        Rechnen (1,4,FalL,Fq[3],AziL,Aq[3],AGross,ThetaL,
                 FGross);
        AGross := (AGross+180) mod 360;
        Abc(AGross,0,90,Arot,Frot,Aa,Bb,Cc,Z);
        For i := 0 to 360 do
        begin
          Rotieren (Aa, Bb, Cc, 1, AziEll[i], FalEll[i], Z, Arot,Frot, RotAzimut[i], RotFall[i], Sign);
        end;
        Abc(90-Fq[3],Aq[3]+90,0,Arot,Frot,Aa,Bb,Cc,Z);
        for i := 0 to 360 do
        begin
          Rotieren (Aa, Bb, Cc, 1, RotAzimut[i], RotFall[i], Z, Arot,Frot, AEll, FEll, Sign);
          Koordinaten(AEll*Bo,FEll*Bo,xe[i],ye[i],xN,yN);
          Xe[i] := Xmitte + xe[i]*Radius;
          ye[i] := YMitte - ye[i]*Radius;
        end;
        x := round((xe[359] + xe[0] + xe[1])/3);
        y := round((ye[359] + ye[0] + ye[1])/3);
        moveto(x,y);
        for i := 1 to 359 do
        begin
          x  := round((xe[i-1]+xe[i]+xe[i+1])/3);
          y  := round((ye[i-1]+ye[i]+ye[i+1])/3);
          xa := round((xe[i-2]+xe[i-1]+xe[i])/3);
          ya := round((ye[i-2]+ye[i-1]+ye[i])/3);
          if sqrt(sqr(x-xa)+sqr(y-ya)) < Radius/4 then
          begin
            lineto(x,y);
          end
          else moveto(x,y);
        end;
        if Deform = 'Dehn' then
        begin
          t1 := sqr(tan(ThetaL*Bo));
          t2 := sqr(tan(Thetak*Bo));
          a3 := t1*t2;
          a2 := -(1+t1)*(1+t2);
          a1 := t1+t2+2;
          a0 := -1;
          KubischeGl(a3,a2,a1,a0,l[1],l[2],l[3]);
          for i := 1 to 3 do
            if l[i] > 1.0001 then ll := l[i];
          S1 := sqrt(abs(ll));
          S2 := sqrt(abs(t1*ll/(ll-1)+t1*ll));
          S3 := sqrt(abs(t2*ll/(ll-1+t2*ll)));
        end;
        if Deform = 'Komp' then
        begin
          t2 := sqr(tan(ThetaL*Bo));
          t3 := sqr(tan(ThetaK*Bo));
          a3 := 1;
          a2 := -(t2+1)*(t3+1);
          a1 := (t2+1)*t3+(t3+1)*t2;
          a0 := -t2*t3;
          KubischeGl(a3,a2,a1,a0,l[1],l[2],l[3]);
          for i := 1 to 3 do
            if (l[i] < 0.9999) and (l[i] > 0) then lk := l[i];
          S1 := sqrt(abs(lk/(lk-t2*(1-lk))));
          S2 := sqrt(abs(lk/(lk-t3*(1-lk))));
          S3 := sqrt(abs(lk));
        end;
        if (S1>S2) and (S2>S3) then
        begin
          S11 := S1;
          S22 := S2;
          S33 := S3;
        end;
        if (S1>S3) and (S3>S2) then
        begin
          S11 := S1;
          S22 := S3;
          S33 := S2;
        end;
        if (S2>S1) and (S1>S3) then
        begin
          S11 := S2;
          S22 := S1;
          S33 := S3;
        end;
        if (S2>S3) and (S3>S1) then
        begin
          S11 := S2;
          S22 := S3;
          S33 := S1;
        end;
        if (S3>S1) and (S1>S2) then
        begin
          S11 := S3;
          S22 := S1;
          S33 := S2;
        end;
        if (S3>S2) and (S2>S1) then
        begin
          S11 := S3;
          S22 := S2;
          S33 := S1;
        end;
        a := S11/S22;
        b := S22/S33;
        av := a;
        bv := b;
        if (((a-1)/(b-1) < 1) and (Deform = 'Dehn')) or (((a-1)/(b-1) > 1) and (Deform = 'Komp')) then
        begin
          a := bv;
          b := av;
        end;
        PanelEllipsoid.Visible := true;
        LabelXYWert.Caption := FloatToStrF(a, ffFixed,7,1);
        LabelYZWert.Caption := FloatToStrF(b, ffFixed,7,1);
      end;
      BildT := TBitmap.Create;
      BildT.Assign(Image1.Picture);
      PanelWieder.Visible := true;
    end;
  end;
end;

procedure TForm63.RadioKompressionClick(Sender: TObject);
begin
  Image1.Canvas.Draw(0,0,BildStart);
  Deform                := 'Komp';
  EllipsoidS            := 'oblat';
  CheckBoxOk.Enabled    := true;
end;

procedure TForm63.RadioDehnungClick(Sender: TObject);
begin
  Image1.Canvas.Draw(0,0,BildStart);
  Deform               := 'Dehn';
  EllipsoidS           := 'prolat';
  CheckBoxOk.Enabled   := true;
end;

procedure TForm63.CheckBoxOKClick(Sender: TObject);
var
  SummeEigen : real;
  Zirkoeff   : byte;
  Zylinder   : byte;
  KlKreis    : byte;
  AziKom     : array of word;
  FalKom     : array of shortint;
  AziDehn    : array of word;
  FalDehn    : array of shortint;
  n, i       : word;
  Eigenwert  : array[0..3] of real;
  AST        : array[0..3] of string;
  Aa, Ff     : real;
begin
  Darstellung.Enabled := false;
  PFarbe.Enabled      := false;
  PanelAchsen.Visible := true;
  LabelAchse.Caption  := Tx(1728);
  LAchse := true;
  PunktS := '1';
  setlength (AziDehn, MaxDaten);
  setlength (FalDehn, MaxDaten);
  setlength (AziKom, MaxDaten);
  setlength (FalKom, MaxDaten);
  mitHPPlotter.Enabled   := false;
  Image2.Visible         := true;
  FarbeAchsen.Enabled    := true;
  n := 0;
  for i := 1 to ZahlGlob do
  begin
    if Deform = 'Komp' then
    begin
      if not Talbot[i] then
      inc(n);
      AziKom[n] := AziFeld[i];
      FalKom[n] := FalFeld[i];
    end;
    if Deform = 'Dehn' then
    begin
      if Talbot[i] then
      begin
        inc(n);
        AziDehn[n] := AziFeld[i];
        FalDehn[n] := FalFeld[i];
      end;
    end;
  end;
  ZahlDef := n;
  Bo := Pi / 180;
  if Deform = 'Komp' then
    AlgorithmusT(AziKom, FalKom, ZahlDef);
  if Deform = 'Dehn' then
    AlgorithmusT(AziDehn, FalDehn, ZahlDef);
  Eigenwerte(Aq, Fq, Eigenwert, ZahlDef,
             SummeEigen, Zylinder, Zirkoeff, KlKreis);
  TeilkreisT (Image1.Canvas, Aq, Fq);
  AchsenPlot (Image1.Canvas, Aq, Fq, Deform);
  AchsenBild := TBitmap.Create;;
  AchsenBild.Assign(Image1.Picture);
  AziDehn := Nil;
  FalDehn := Nil;
  AziKom  := Nil;
  Falkom  := Nil;
end;

procedure TForm63.ButtonWiederClick(Sender: TObject);
begin
  Image1.Canvas.Draw(0,0,AchsenBild);
  PanelAchsen.Visible := true;
  LabelAchse.Caption  := Tx(1728);
  LAchse := true;
  PunktS := '1';
end;

procedure TForm63.CheckBoxWiederClick(Sender: TObject);
begin
  PanelWieder.Visible := false;
  ButtonFlinn.Visible := true;
  AchsenBild.Free;
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
  ButtonStartClick(Sender);
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
  ButtonStartClick(Sender);
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
  ButtonStartClick(Sender);
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
  ButtonStartClick(Sender);
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
  ButtonStartClick(Sender);
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
  ButtonStartClick(Sender);
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
  ButtonStartClick(Sender);
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
  ButtonStartClick(Sender);
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
  ButtonStartClick(Sender);
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
  ButtonStartClick(Sender);
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
  ButtonStartClick(Sender);
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
  ButtonStartClick(Sender);
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
  ButtonStartClick(Sender);
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
  ButtonStartClick(Sender);
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
  ButtonStartClick(Sender);
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
  ButtonStartClick(Sender);
end;

procedure TForm63.LkKreisOffenClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  Eigen         := false;
  SymbolRadii   := 'OpenCircle';
  AusgewDateien := false;
  if ProjektionS <> '' then ButtonStart.Enabled  := true;
  KonfigZeileS[152] := 'Symbol of radii            :,OpenCircle';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
end;

procedure TForm63.LkKreisGefuelltClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  Eigen         := false;
  SymbolRadii   := 'FilledCircle';
  AusgewDateien := false;
  if ProjektionS <> '' then ButtonStart.Enabled  := true;
  KonfigZeileS[152] := 'Symbol of radii            :,FilledCircle';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
end;

procedure TForm63.LkQuadratOffenClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  Eigen         := false;
  SymbolRadii   := 'OpenSquare';
  AusgewDateien := false;
  if ProjektionS <> '' then ButtonStart.Enabled  := true;
  KonfigZeileS[152] := 'Symbol of radii            :,OpenSquare';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
end;

procedure TForm63.LkQuadratGefuelltClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  Eigen         := false;
  SymbolRadii   := 'FilledSquare';
  AusgewDateien := false;
  if ProjektionS <> '' then ButtonStart.Enabled  := true;
  KonfigZeileS[152] := 'Symbol of radii            :,FilledSquare';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
end;

procedure TForm63.LkDreieckOffenClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  Eigen         := false;
  SymbolRadii   := 'OpenTriangle';
  AusgewDateien := false;
  if ProjektionS <> '' then ButtonStart.Enabled  := true;
  KonfigZeileS[152] := 'Symbol of radii            :,OpenTriangle';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
end;

procedure TForm63.LkDreieckGefuelltClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  Eigen         := false;
  SymbolRadii   := 'FilledTriangle';
  AusgewDateien := false;
  if ProjektionS <> '' then ButtonStart.Enabled  := true;
  KonfigZeileS[152] := 'Symbol of radii            :,FilledTriangle';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
end;

procedure TForm63.LkRauteOffenClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  Eigen         := false;
  SymbolRadii   := 'OpenDiamond';
  AusgewDateien := false;
  if ProjektionS <> '' then ButtonStart.Enabled  := true;
  KonfigZeileS[152] := 'Symbol of radii            :,OpenDiamond';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
end;

procedure TForm63.LkRauteGefuelltClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  Eigen         := false;
  SymbolRadii   := 'FilledDiamond';
  AusgewDateien := false;
  if ProjektionS <> '' then ButtonStart.Enabled  := true;
  KonfigZeileS[152] := 'Symbol of radii            :,FilledDiamond';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
end;

procedure TForm63.KompressionFaClick(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS := ColorToString (Farbe);
  KompressionFarbe := StringToColor(FarbeS);
  KonfigZeileS[79] := 'Colour of compression      :,'+FarbeS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm63.DehnungFaClick(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS := ColorToString (Farbe);
  DehnungFarbe := StringToColor(FarbeS);
  KonfigZeileS[80] := 'Colour of extension        :,'+FarbeS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
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
  PanelSpeichern.Visible := true;
end;

procedure TForm63.SpeedSpeichernClick(Sender: TObject);
begin
  GspeichernClick(Sender);
end;

procedure TForm63.ausZwischenablageClick(Sender: TObject);
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
  FarbePeripherie.Enabled   := false;
  FarbeDiagramm.Enabled     := false;
  Hintergrund.Enabled       := false;
  HolZwischen := true;
  ButtonStartClick(Sender);
end;

procedure TForm63.SpeedZwischenablageClick(Sender: TObject);
begin
  ausZwischenablageClick(Sender);
end;

procedure TForm63.ausDateiClick(Sender: TObject);
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

procedure TForm63.SpeedLoadClick(Sender: TObject);
begin
  ausDateiClick(Sender);
end;

procedure TForm63.ZoomClick(Sender: TObject);
begin
  PanelDehnen.Visible := true;
  PlusEin             := true;
  if ClipBoard.HasFormat(CF_Bitmap) then
    HolPixS := 'Clipboard';
  ButtonStartClick(Sender);
end;

procedure TForm63.SpeedZoomClick(Sender: TObject);
begin
  ZoomClick(Sender);
end;

procedure TForm63.DrueckClick(Sender: TObject);
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

procedure TForm63.SpeedRueckClick(Sender: TObject);
begin
  DrueckClick(Sender);
end;

procedure TForm63.ButtonSabbrechenClick(Sender: TObject);
begin
  PanelSpeichern.Visible := false;
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
  PanelSpeichern.Visible := false;
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

procedure TForm63.ButtonLabbrechenClick(Sender: TObject);
begin
  PanelLoad.Visible := false;
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

procedure TForm63.ButtonSPlusClick(Sender: TObject);
begin
  Splus := Splus+1;
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
  PanelLoad.Visible := false;
  PlusEin           := true;
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
  ButtonStartClick(Sender);
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
  ButtonStartClick(Sender);
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
  ButtonStartClick(Sender);
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
end;

procedure TForm63.SpeedFarbeAchsenClick(Sender: TObject);
begin
  FarbeAchsenClick(Sender);
end;

procedure TForm63.FarbeEllipseClick(Sender: TObject);
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
end;

procedure TForm63.SpeedEllipseClick(Sender: TObject);
begin
  FarbeEllipseClick(Sender);
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
  Paneldrucken.Visible         := true;
  GroupBoxDrucken.Visible      := true;
  RadioButtonlinks.Visible     := true;
  RadioButtonzentriert.Visible := true;
  RadioButtonrechts.Visible    := true;
  RadioGroup.Visible           := true;
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
  MaskEditUnterschrift.SetFocus;
end;

procedure TForm63.TextschreibenClick(Sender: TObject);
begin
  PanelText.Visible := true;
  MaskEditText.SetFocus;
  BText := true;
  MaskEditText.Clear;
  PanelPlazieren.Visible := false;
end;

procedure TForm63.SpeedTextClick(Sender: TObject);
begin
  TextschreibenClick(Sender);
end;

procedure TForm63.MaskEditTextKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(13) then
  begin
    TeS := MaskEditText.Text;
    PanelPlazieren.Visible := true;
  end;
end;

procedure TForm63.Image1MouseUp(Sender: TObject; Button: TMouseButton;
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
    end;
    Image1.Canvas.TextOut(x,y,TeS);
    PanelText.Visible   := false;
    BText               := false;
    Trueck.Enabled      := true;
    SpeedUnText.Enabled := true;
  end;
end;

procedure TForm63.TrueckClick(Sender: TObject);
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

procedure TForm63.SpeedUnTextClick(Sender: TObject);
begin
  TrueckClick(Sender);
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

procedure TForm63.SpeedDspeichernClick(Sender: TObject);
begin
  DspeichernUnterClick(Sender);
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
    XS := Inttostr(round((Xkoord-HPRadius) * 400));
    YS := IntToStr(round((YKoord-HpRadius) * 400));
    WS := FloatToStr(HPRadius/20);
    HS := FloatToStr(HPRadius/16);
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
  PanelSpeichern.Visible   := false;
  PanelDaten.Visible       := true;
  if Calib then
  begin
    MaskEditBrE.Enabled    := true;
    MaskEditBrD.Enabled    := true;
    MaskEditBrE.SetFocus;
  end;
  Calib                    := false;
end;

procedure TForm63.ButtonPlotEndeClick(Sender: TObject);
begin
  GroupBoxPlotten.Visible := false;
  PanelDaten.Visible      := true;
end;

procedure TForm63.ButtonDruckenClick(Sender: TObject);
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
  Links   := StrToInt(MaskEditLinks.Text);
  LRand   := round(Links*Printer.PageWidth/100);
  Oben    := StrToInt(MaskEditOben.Text);
  ORand   := round(Oben*Printer.PageHeight/100);
  Laenge  := StrToInt(MaskEditLaenge.Text);
  PLaenge := round(Laenge*Printer.Pagewidth/100);
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
  Xnull    : word;
  Ynull    : word;
  Tick     : word;
  Laenge   : word;
  Zoom     : word;
  X1, X2   : word;
  Y1, Y2   : word;
begin
  Flinn                 := true;
  Darstellung.Enabled   := true;
  KompressionD.Enabled  := false;
  DehnungD.Enabled      := false;
  PFarbe.Enabled        := true;
  DehnungFa.Enabled     := false;
  KompressionFa.Enabled := false;
  FarbeAchsen.Enabled   := false;
  FarbeEllipse.Enabled  := false;
  LkRadienD.Enabled     := false;
  Image2.Visible := false;
  Zoom := round(max(a,b));
  if Zoom < 10 then Zoom := 1 + Zoom else Zoom := 5+Zoom;
  PlotFlinn (Image1.Canvas, Zoom);
  a := round(a*10)/10;
  b := round(b*10)/10;
  LabelXYWert.Caption := FloattoStr(a);
  LabelYZWert.Caption := Floattostr(b);
  with Image1.Canvas do
  begin
    Xnull  := round(2*Xmitte/8);
    Ynull  := round(2*Ymitte-2*Ymitte/8);
    Laenge := round(2*Xmitte-2*Xmitte/5);
    Tick   := round(Laenge/Zoom); {/9}
    X1 := round(Xnull+(b-1)*Tick-5);
    Y1 := round(Ynull-(a-1)*Tick-5);
    X2 := round(Xnull+(b-1)*Tick+5);
    Y2 := round(Ynull-(a-1)*Tick+5);
    Pen.Color := DatenFarbe;
    Pen.Width := 1;
    if DSymbol = 'OpenCircle' then
    begin
      Brush.Color := DiagrFarbe;
      Ellipse (X1,Y1, X2,Y2);
    end;
    if DSymbol = 'FilledCircle' then
    begin
      Brush.Color := DatenFarbe;
      Ellipse (X1,Y1, X2,Y2);
    end;
    if DSymbol = 'OpenSquare' then
    begin
      Brush.Color := DiagrFarbe;
      Rectangle (X1,Y1, X2,Y2);
    end;
    if DSymbol = 'FilledSquare' then
    begin
      Brush.Color := DatenFarbe;
      Rectangle (X1,Y1, X2,Y2);
    end;
    if DSymbol = 'OpenTriangle' then
    begin
      Brush.Color := DiagrFarbe;
      Polygon ([Point(X1+5,Y1-5), Point(X2,Y1+5), Point(X1,Y1+5)]);
    end;
    if DSymbol = 'FilledTriangle' then
    begin
      Brush.Color := DatenFarbe;
      Polygon ([Point(X1+5,Y1-5), Point(X2,Y1+5), Point(X1,Y1+5)]);
    end;
    if DSymbol = 'OpenDiamond' then
    begin
      Brush.Color := DiagrFarbe;
      Polygon ([Point(X1+5,Y1), Point(X2,Y1+5), Point(X1+5,Y2),
               Point(X1,Y1+5)]);
    end;
    if DSymbol = 'FilledDiamond' then
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
  ButtonTalbot.Visible := true;
end;

procedure TForm63.ButtonTalbotClick(Sender: TObject);
begin
  Image1.Canvas.Draw (0,0,BildT);
end;

procedure TForm63.KreisOffenFClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  DSymbol     := 'OpenCircle';
  KonfigZeileS[9] := '  Data Symbol              :,OpenCircle';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  if Flinn then ButtonFlinnClick(Sender);
end;

procedure TForm63.KreisgefuelltFClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  DSymbol   := 'FilledCircle';
  KonfigZeileS[9] := '  Data Symbol              :,FilledCircle';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  if Flinn then ButtonFlinnClick(Sender);
end;

procedure TForm63.QuadratOffenFClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  DSymbol   := 'OpenSquare';
  KonfigZeileS[9] := '  Data Symbol              :,OpenSquare';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  if Flinn then ButtonFlinnClick(Sender);
end;

procedure TForm63.QuadratGefuelltFClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  DSymbol   := 'FilledSquare';
  KonfigZeileS[9] := '  Data Symbol              :,FilledSquare';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  if Flinn then ButtonFlinnClick(Sender);
end;

procedure TForm63.DreieckOffenFClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  DSymbol   := 'OpenTriangle';
  KonfigZeileS[9] := '  Data Symbol              :,OpenTriangle';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  if Flinn then ButtonFlinnClick(Sender);
end;

procedure TForm63.DreieckGefuelltFClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  DSymbol   := 'FilledTriangle';
  KonfigZeileS[9] := '  Data Symbol              :,FilledTriangle';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  if Flinn then ButtonFlinnClick(Sender);
end;

procedure TForm63.RauteOffenFClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  DSymbol   := 'OpenDiamond';
  KonfigZeileS[9] := '  Data Symbol              :,OpenDiamond';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  if Flinn then ButtonFlinnClick(Sender);
end;

procedure TForm63.RauteGefuelltFClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  DSymbol   := 'FilledDiamond';
  KonfigZeileS[9] := '  Data Symbol              :,FilledDiamond';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  if Flinn then ButtonFlinnClick(Sender);
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
  if Flinn then ButtonFlinnClick(Sender);
end;

procedure TForm63.SpeedFlinnClick(Sender: TObject);
begin
  PunktFlinnFClick(Sender);
end;

procedure TForm63.SpeedFarbeFlinnClick(Sender: TObject);
begin
  PunktFlinnFClick(Sender);
end;

procedure TForm63.SpeedKompressionFarbeClick(Sender: TObject);
begin
  KompressionFaClick(Sender);
end;

procedure TForm63.SpeedFarbeDehnungClick(Sender: TObject);
begin
  DehnungFaClick(Sender);
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

procedure TForm63.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm63.SpeedLiteratClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

end.

