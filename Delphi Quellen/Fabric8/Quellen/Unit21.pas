unit Unit21;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, ExtCtrls, Menus, Globvar, Basic,
  Kalkulat, Clipbrd, Plotten, Mask, HPPlot, Texte, ComCtrls,
  Buttons, Einausga, Drucken, Printers, Shellapi, Standard,
  GifImage, Bmp2Tiff, Jpeg, ExtDlgs, ReadTiff, ehsHelpRouter,
  PngImage, Grafik;

type
  TForm21 = class(TForm)
    PanelDateien: TPanel;
      LabelDateien  : TLabel;
      ListBoxDateien: TListBox;
    PanelParameter: TPanel;
      LabelRegelung      : TLabel;
      LabelRegelungzahl  : TLabel;
      LabelKonzentration : TLabel;
      LabelKonzentrZahl  : TLabel;
      LabelVertrauen     : TLabel;
      LabelVertrauenZahl : TLabel;
      LabelOeffnung      : TLabel;
      LabelOeffnungZahl  : TLabel;
      LabelSchwerpunkt   : TLabel;
      LabelSchwerpWert   : TLabel;
    PanelEigenwerte: TPanel;
      LabelEigenwerte    : TLabel;
      LabelEigenvektoren : TLabel;
      Label1E            : TLabel;
      LabelLambda1       : TLabel;
      Label2E            : TLabel;
      LabelLambda2       : TLabel;
      Label3E            : TLabel;
      LabelLambda3       : TLabel;
    LabelStrich2: TLabel;
      LabelSumme         : TLabel;
      LabelVektor1       : TLabel;
      LabelVektor2       : TLabel;
      LabelVektor3       : TLabel;
    PanelZylinder: TPanel;
      LabelZylindrizitaet : TLabel;
      Labelzirkular       : TLabel;
      LabelzirkularZahl   : TLabel;
      LabelProbe          : TLabel;
      LabelZylinderZahl   : TLabel;

    ButtonStart   : TButton;
    Buttonzurueck : TButton;
    Buttonbeenden : TButton;

    Image1: TImage;   {Plotfeld}

    MainMenu1: TMainMenu;

    Konfidenz1    : TMenuItem;
      N90Prozent1 : TMenuItem;
      N95Prozent1 : TMenuItem;
      N99Prozent1 : TMenuItem;
    FarbePeripherie1      : TMenuItem;
    FarbeDiagramm1        : TMenuItem;
    Hintergrund: TMenuItem;
    FarbeRahmen           : TMenuItem;

    DarstellungDaten1  : TMenuItem;
      Kreisoffen1      : TMenuItem;
      Kreisgefuellt1   : TMenuItem;
      Dreieckoffen1    : TMenuItem;
      Dreieckgefuellt1 : TMenuItem;
      Quadratoffen1    : TMenuItem;
      Quadratgefuellt1 : TMenuItem;
      Rauteoffen1      : TMenuItem;
      Rautegefuellt1   : TMenuItem;

    Linien1            : TMenuItem;
    durchgezogen: TMenuItem;
      gestrichelt1     : TMenuItem;
      punktiert1       : TMenuItem;
      strichpunktiert1 : TMenuItem;

    Grafik1                   : TMenuItem;
      kopieren1               : TMenuItem;
      speichern1              : TMenuItem;
    Drucker1: TMenuItem;
      drucken1            : TMenuItem;
      Druckereinrichten1  : TMenuItem;
      PrinterSetupDialog1 : TPrinterSetupDialog;
      PrintDialog1        : TPrintDialog;

    Drucker2            : TMenuItem;
      Druckereinrichten : TMenuItem;
      drucken2          : TMenuItem;

    GroupBoxPlotten : TGroupBox;
      Panel5        : TPanel;

      Panel6             : TPanel;
        LabelMittelpunkt : TLabel;
        LabelX           : TLabel;
        MaskEditX        : TMaskEdit;
        LabelY           : TLabel;
        MaskEditY        : TMaskEdit;

      Panel8           : TPanel;
        LabelRadius    : TLabel;
        MaskEditRadius : TMaskEdit;

    HPPlotter1 : TMenuItem;

    OpenDialog1 : TOpenDialog;
    SaveDialog1 : TSaveDialog;
    PanelSpeed: TPanel;
      SpeedHilfe   : TSpeedButton;
      SpeedDrucken : TSpeedButton;
    Labelg2 : TLabel;
    Labelg3 : TLabel;
    Labelg4 : TLabel;
    Labelg5 : TLabel;
    Labelg6 : TLabel;
    Labelg7 : TLabel;
    Labelg8 : TLabel;

    Hilfe1    : TMenuItem;
    Statusbar : TStatusBar;

    Paneldrucken      : TPanel;
      GroupBoxdrucken : TGroupBox;

      Panel10            : TPanel;
    LabelLaenge: TLabel;
    MaskEditLaenge: TMaskEdit;

      Panel11            : TPanel;
    LabelEcke: TLabel;
        LabelXdrucken    : TLabel;
    MaskEditLinks: TMaskEdit;
        LabelYdrucken    : TLabel;
    MaskEditOben: TMaskEdit;

      PanelUnterschrift      : TPanel;
        LabelUnterschrift    : TLabel;
        MaskEditUnterschrift : TMaskEdit;
        LabelSchrift         : TLabel;
        ListBoxSchrift       : TListBox;
        RadioGroup           : TRadioGroup;
        RadioButtonLinks     : TRadioButton;
        RadioButtonRechts    : TRadioButton;
        RadioButtonZentriert : TRadioButton;
    Handbuch: TMenuItem;
    Projektion: TMenuItem;
    stereografisch: TMenuItem;
    Lambert: TMenuItem;
    orthografisch: TMenuItem;
    Kavraiskii: TMenuItem;
    PanelProjektion: TPanel;
    LabelProjektion: TLabel;
    PFarbe: TMenuItem;
    ColorDialog1: TColorDialog;
    Halbkugel: TMenuItem;
    untere: TMenuItem;
    obere: TMenuItem;
    Image2: TImage;
    SpeedHandbuch: TSpeedButton;
    SpeedObereH: TSpeedButton;
    SpeedUntereH: TSpeedButton;
    SpeedFarbe: TSpeedButton;
    SpeedKopieren: TSpeedButton;
    SpeedZwischenablage: TSpeedButton;
    SpeedKreisO: TSpeedButton;
    SpeedKreisG: TSpeedButton;
    SpeedDreieckO: TSpeedButton;
    SpeedDreieckG: TSpeedButton;
    SpeedQuadratO: TSpeedButton;
    SpeedQuadratG: TSpeedButton;
    SpeedRauteO: TSpeedButton;
    SpeedRauteG: TSpeedButton;
    SpeedLambert: TSpeedButton;
    SpeedStereografisch: TSpeedButton;
    SpeedOrthografisch: TSpeedButton;
    SpeedKavraiskii: TSpeedButton;
    SpeedKonfidenz90: TSpeedButton;
    SpeedKonfidenz95: TSpeedButton;
    SpeedKonfidenz99: TSpeedButton;
    SpeedFarbeEigen: TSpeedButton;
    SpeedFarbeOeffnung: TSpeedButton;
    SpeedFarbeVertrauen: TSpeedButton;
    SpeedDurchgezogen: TSpeedButton;
    SpeedGestrichelt: TSpeedButton;
    SpeedStrichPunkt: TSpeedButton;
    SpeedDruckeListe: TSpeedButton;
    SpeedPlotter: TSpeedButton;
    SpeedPeripherie: TSpeedButton;
    SpeedDiagramm: TSpeedButton;
    SpeedRahmen: TSpeedButton;
    SpeedLiteratur: TSpeedButton;
    ImageNord: TImage;
    SpeedStrich: TSpeedButton;
    ListBoxStrich: TListBox;
    LabelStrich: TLabel;
    PanelKlick: TPanel;
    LabelKlick: TLabel;
    LabelFallrichtung: TLabel;
    LabelFallwinkel: TLabel;
    Dspeichern: TMenuItem;
    DspeichernUnter: TMenuItem;
    LabelBeenden: TLabel;
    SpeedEinrichten: TSpeedButton;
    Weiter: TMenuItem;
    FarbeDaten1: TMenuItem;
    FarbeEigenwerte1: TMenuItem;
    FarbeOeffnungsgrad1: TMenuItem;
    FarbeVertrauenskegel1: TMenuItem;
    Datenpunkte: TMenuItem;
    Isolinien: TMenuItem;
    Maxima: TMenuItem;
    Literatur: TMenuItem;
    SpeedIso: TSpeedButton;
    SpeedMaxima: TSpeedButton;
    SpeedPunkte: TSpeedButton;
    Grosskreise: TMenuItem;
    SpeedGKreise: TSpeedButton;
    SpeedPFarbe: TSpeedButton;
    SpeedPanzeigen: TSpeedButton;
    SpeedPunktiert1: TSpeedButton;
    SpeedUndo: TSpeedButton;
    PanelGroesse: TPanel;
    LabelBHoehe: TLabel;
    LabelBBreite: TLabel;
    MaskEditBBreite: TMaskEdit;
    MaskEditBHoehe: TMaskEdit;
    CheckBoxBild: TCheckBox;
    BGroesse: TMenuItem;
    transparent: TMenuItem;
    HFarbe: TMenuItem;
    SpeedBGroesse: TSpeedButton;
    SpeedTransparent: TSpeedButton;
    SpeedHFarbe: TSpeedButton;
    SavePictureDialog1: TSavePictureDialog;
    OpenPictureDialog1: TOpenPictureDialog;
    Ploterstellen: TButton;
    ButtonDrucken: TButton;
    ButtonAbbrechen: TButton;
    Lagenkugel: TMenuItem;
    SpeedNetz: TSpeedButton;
    SpeedSpeichern: TSpeedButton;
    SpeedLoad: TSpeedButton;
    Font: TMenuItem;
    SpeedFont: TSpeedButton;
    FontDialog1: TFontDialog;
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
    PanelMess: TPanel;
    Labelaktuell: TLabel;
    LabelMess: TLabel;
    Punkt: TMenuItem;
    PunktFarbe: TMenuItem;
    WertAnzeigen: TMenuItem;
    WerteLoeschen: TMenuItem;
    Linear: TMenuItem;
    Flaeche: TMenuItem;
    GKreis: TMenuItem;
    SpeedLanzeigen: TSpeedButton;
    SpeedFanzeigen: TSpeedButton;
    SpeedGKreis: TSpeedButton;
    SpeedPweg: TSpeedButton;
    SpeedAnzFarbe: TSpeedButton;
    PanelDaten: TPanel;
    LabelDaten: TLabel;
    LabelAnzahl: TLabel;
    LabelZahl: TLabel;
    ListBoxDaten: TListBox;
    Labelg1: TLabel;
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
    DEinrichten: TMenuItem;
    Calibrieren: TMenuItem;
    Drucken: TMenuItem;
    SpeedCalib: TSpeedButton;
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
    TextSchreiben: TMenuItem;
    PanelText: TPanel;
    LabelText: TLabel;
    LabelReturn: TLabel;
    MaskEditText: TMaskEdit;
    PanelPlazieren: TPanel;
    LabelPlazieren: TLabel;
    Trueck: TMenuItem;
    SpeedUnText: TSpeedButton;
    SpeedText: TSpeedButton;

    procedure FormShow(Sender: TObject);
    procedure ShowHint(Sender: TObject);
    procedure FormActivate(Sender: TObject);

    procedure ButtonStartClick(Sender: TObject);
    procedure ButtonzurueckClick(Sender: TObject);
    procedure ButtonbeendenClick(Sender: TObject);

    {Konfidenz}
    procedure N90Prozent1Click(Sender: TObject);
    procedure N95Prozent1Click(Sender: TObject);
    procedure N99Prozent1Click(Sender: TObject);

    {Farbe der Daten}
    procedure FarbeDaten1Click(Sender: TObject);

    {Farbe der Eigenwerte}
    procedure FarbeEigenwerte1Click(Sender: TObject);

    {Farbe des Öffnungsgrades}
    procedure Farbeoeffnungsgrad1Click(Sender: TObject);

    {Farbe des Vertrauenskegels}
    procedure FarbeVertrauenskegel1Click(Sender: TObject);

    {Grafik}
    procedure kopieren1Click(Sender: TObject);

    {Darstellung der Daten}
    procedure Kreisoffen1Click(Sender: TObject);
    procedure Kreisgefuellt1Click(Sender: TObject);
    procedure Dreieckoffen1Click(Sender: TObject);
    procedure Dreieckgefuellt1Click(Sender: TObject);
    procedure Quadratoffen1Click(Sender: TObject);
    procedure Quadratgefuellt1Click(Sender: TObject);
    procedure Rauteoffen1Click(Sender: TObject);
    procedure Rautegefuellt1Click(Sender: TObject);

    {Linien}
    procedure gestrichelt1Click(Sender: TObject);
    procedure punktiert1Click(Sender: TObject);
    procedure strichpunktiert1Click(Sender: TObject);

    {Farbe der Peripherie}
    procedure FarbePeripherie1Click(Sender: TObject);

    {Farbe des Diagramms}
    procedure FarbeDiagramm1Click(Sender: TObject);

    {Farbe des Rahmens}
    procedure FarbeRahmenClick(Sender: TObject);

    {Drucken}
    procedure Druckereinrichten1Click(Sender: TObject);
    procedure drucken1Click(Sender: TObject);
    procedure DruckereinrichtenClick(Sender: TObject);
    procedure drucken2Click(Sender: TObject);

    {Plotten}
    procedure Hilfe1Click(Sender: TObject);

    procedure SpeedHilfeClick(Sender: TObject);
    procedure SpeedDruckenClick(Sender: TObject);

    procedure keinPlot1Click(Sender: TObject);

    {Bildschirm drucken}
    procedure MaskEditUnterschriftKeyPress(Sender: TObject; var Key: Char);
    procedure RadioButtonLinksClick(Sender: TObject);
    procedure RadioButtonRechtsClick(Sender: TObject);
    procedure RadioButtonZentriertClick(Sender: TObject);
    procedure ListBoxSchriftClick(Sender: TObject);
    procedure stereografischClick(Sender: TObject);
    procedure LambertClick(Sender: TObject);
    procedure orthografischClick(Sender: TObject);
    procedure KavraiskiiClick(Sender: TObject);
    procedure untereClick(Sender: TObject);
    procedure obereClick(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure SpeedUntereHClick(Sender: TObject);
    procedure SpeedObereHClick(Sender: TObject);
    procedure SpeedFarbeClick(Sender: TObject);
    procedure SpeedKopierenClick(Sender: TObject);
    procedure SpeedZwischenablageClick(Sender: TObject);
    procedure SpeedKreisOClick(Sender: TObject);
    procedure SpeedKreisGClick(Sender: TObject);
    procedure SpeedDreieckOClick(Sender: TObject);
    procedure SpeedDreieckGClick(Sender: TObject);
    procedure SpeedQuadratOClick(Sender: TObject);
    procedure SpeedQuadratGClick(Sender: TObject);
    procedure SpeedRauteOClick(Sender: TObject);
    procedure SpeedRauteGClick(Sender: TObject);
    procedure SpeedLambertClick(Sender: TObject);
    procedure SpeedStereografischClick(Sender: TObject);
    procedure SpeedOrthografischClick(Sender: TObject);
    procedure SpeedKavraiskiiClick(Sender: TObject);
    procedure SpeedKonfidenz90Click(Sender: TObject);
    procedure SpeedKonfidenz95Click(Sender: TObject);
    procedure SpeedKonfidenz99Click(Sender: TObject);
    procedure SpeedFarbeEigenClick(Sender: TObject);
    procedure SpeedFarbeOeffnungClick(Sender: TObject);
    procedure SpeedFarbeVertrauenClick(Sender: TObject);
    procedure SpeedDurchgezogenClick(Sender: TObject);
    procedure SpeedGestricheltClick(Sender: TObject);
    procedure SpeedStrichPunktClick(Sender: TObject);
    procedure SpeedDruckeListeClick(Sender: TObject);
    procedure SpeedPlotterClick(Sender: TObject);
    procedure SpeedPLTClick(Sender: TObject);
    procedure SpeedDXFClick(Sender: TObject);
    procedure SpeedPeripherieClick(Sender: TObject);
    procedure SpeedDiagrammClick(Sender: TObject);
    procedure SpeedRahmenClick(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
    procedure SpeedLiteraturClick(Sender: TObject);
    procedure durchgezogenClick(Sender: TObject);
    procedure ListBoxStrichClick(Sender: TObject);
    procedure SpeedStrichClick(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DspeichernClick(Sender: TObject);
    procedure DspeichernUnterClick(Sender: TObject);
    procedure SpeedEinrichtenClick(Sender: TObject);
    procedure DatenpunkteClick(Sender: TObject);
    procedure IsolinienClick(Sender: TObject);
    procedure MaximaClick(Sender: TObject);
    procedure HandbuchClick(Sender: TObject);
    procedure SpeedIsoClick(Sender: TObject);
    procedure SpeedMaximaClick(Sender: TObject);
    procedure SpeedPunkteClick(Sender: TObject);
    procedure GrosskreiseClick(Sender: TObject);
    procedure SpeedGKreiseClick(Sender: TObject);
    procedure SpeedPFarbeClick(Sender: TObject);
    procedure SpeedPunktiert1Click(Sender: TObject);
    procedure SpeedUndoClick(Sender: TObject);
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
    procedure LagenkugelClick(Sender: TObject);
    procedure SpeedNetzClick(Sender: TObject);
    procedure speichern1Click(Sender: TObject);
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
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure PunktFarbeClick(Sender: TObject);
    procedure WerteLoeschenClick(Sender: TObject);
    procedure LinearClick(Sender: TObject);
    procedure FlaecheClick(Sender: TObject);
    procedure GKreisClick(Sender: TObject);
    procedure SpeedLanzeigenClick(Sender: TObject);
    procedure SpeedAnzFarbeClick(Sender: TObject);
    procedure DEinrichtenClick(Sender: TObject);
    procedure CalibrierenClick(Sender: TObject);
    procedure DruckenClick(Sender: TObject);
    procedure MaskEditBrEKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditBrDKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedCalibClick(Sender: TObject);
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
    procedure TextSchreibenClick(Sender: TObject);
    procedure MaskEditTextKeyPress(Sender: TObject; var Key: Char);
    procedure Image1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TrueckClick(Sender: TObject);
    procedure SpeedTextClick(Sender: TObject);
    procedure SpeedUnTextClick(Sender: TObject);
    procedure MaskEditLaengeChange(Sender: TObject);
    procedure MaskEditLinksChange(Sender: TObject);
    procedure MaskEditObenChange(Sender: TObject);
  end;

var
  Form21       : TForm21;
  HolPixS      : string;
  HolZwischen  : boolean;
  CurrentFile  : string;
  PlotDateiS   : string;
  AziSchwerp   : integer;
  FalSchwerp   : integer;
  Peripherie   : boolean;
  Vertrauen    : real;
  Oeffnung     : real;
  EigenAzi     : array[0..6] of word;
  EigenFal     : array[0..6] of shortint;
  Zirkoeff     : byte;
  Zylinder     : byte;
  RegS         : string[5];
  KonzS        : string[5];
  VerS         : string[5];
  OeffnS       : string[5];
  EigenwS      : array[0..3] of string[6];
  SummeEigenS  : string[6];
  EigenAziS    : array[0..3] of string[3];
  EigenFalS    : array[0..3] of string[2];
  ProbeS       : string[40];
  BuendigS     : string;
  Gedrueckt    : array [1..3] of boolean;
  TextS        : string;
  Maus         : boolean;
  OU           : shortint;
  Ratio        : real;
  BHoeheSt     : word;
  PlusEin      : boolean;
  NPlus, SPlus : integer;
  WPlus, EPlus : integer;
  Apunkt       : word;
  Fpunkt       : word;
  BildImage1   : TBitmap;
  Ebreite      : word;
  Dbreite      : word;
  VektorAlt    : real;
  Zwischen     : boolean;
  DBitmap      : TBitmap;
  TeS          : string;
  BText        : boolean;
  TextBitmap   : array[1..10] of TBitmap;
  texti        : byte;

implementation
uses Unit9, Unit10, Unit11, Unit12, Unit20, Unit23, Unit25,
     Unit64, Unit85, Unit37;
{$R *.DFM}

procedure TForm21.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
  Left   := 4;
  Top    := 0;
  Width  := 1050;
  Height := 755;
end;

procedure TForm21.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm21.FormActivate(Sender: TObject);
var
  i : byte;
begin
  Left   := LeftDiag + 2*ULap;
  Top    := TopDiag + 2*ULap;
  Width  := WidDiag;
  Height := HeiDiag;
  setlength (AziFeld, MaxDaten);
  setlength (FalFeld, MaxDaten);
  WeiterB[21]                     := false;
  Form21.Caption                  := Tx(507);  {Fabric7: Berechnung und Plot}
  SpeedDrucken.Hint               := Hilf(203);
  Image1.Hint                     := Hilf(95);
  ListBoxDateien.Hint             := Hilf(82);
  PanelDateien.Hint               := Hilf(82);
  LabelAnzahl.Hint                := Hilf(36);
  LabelZahl.Hint                  := Hilf(36);
  PanelZylinder.Hint              := Hilf(84);
  PanelEigenwerte.Hint            := Hilf(84);
  PanelParameter.Hint             := Hilf(84);
  GroupBoxPlotten.Hint            := Hilf(58) + Hilf(59);
  Ploterstellen.Hint              := Hilf(60);
  Panel5.Hint                     := Hilf(61);
  Panel6.Hint                     := Hilf(62);
  MaskEditX.Hint                  := Hilf(63);
  MaskEditY.Hint                  := Hilf(64);
  LabelX.Hint                     := Hilf(63);
  LabelY.Hint                     := Hilf(64);
  ButtonStart.Hint                := Hilf(37);
  Buttonzurueck.Hint              := Hilf(97);
  Buttonbeenden.Hint              := Hilf(30);
  SpeedHilfe.Hint                 := Hilf(210);
  PanelProjektion.Hint            := Hilf(276);
  SpeedHandbuch.Hint              := Hilf(274);
  SpeedObereH.Hint                := Hilf(363);
  SpeedUntereH.Hint               := Hilf(364);
  SpeedFarbe.Hint                 := Hilf(365);
  SpeedKopieren.Hint              := Hilf(262);
  SpeedZwischenablage.Hint        := Hilf(246);
  SpeedKreisO.Hint                := Hilf(371);
  SpeedKreisG.Hint                := Hilf(372);
  SpeedDreieckO.Hint              := Hilf(373);
  SpeedDreieckG.Hint              := Hilf(374);
  SpeedQuadratO.Hint              := Hilf(375);
  SpeedQuadratG.Hint              := Hilf(376);
  SpeedRauteO.Hint                := Hilf(377);
  SpeedRauteG.Hint                := Hilf(378);
  SpeedLambert.Hint               := Hilf(387);
  SpeedStereografisch.Hint        := Hilf(388);
  SpeedOrthografisch.Hint         := Hilf(389);
  SpeedKavraiskii.Hint            := Hilf(390);
  SpeedKonfidenz90.Hint           := Hilf(398);
  SpeedKonfidenz95.Hint           := Hilf(399);
  SpeedKonfidenz99.Hint           := Hilf(400);
  SpeedFarbeEigen.Hint            := Hilf(401);
  SpeedFarbeOeffnung.Hint         := Hilf(402);
  SpeedFarbeVertrauen.Hint        := Hilf(403);
  SpeedDruckeListe.Hint           := Hilf(404);
  SpeedDurchgezogen.Hint          := Hilf(391);
  SpeedGestrichelt.Hint           := Hilf(392);
  SpeedStrichPunkt.Hint           := Hilf(393);
  SpeedPunktiert1.Hint            := Hilf(394);
  SpeedPlotter.Hint               := Hilf(437);
  SpeedPeripherie.Hint            := Hilf(440);
  SpeedDiagramm.Hint              := Hilf(441);
  SpeedRahmen.Hint                := Hilf(442);
  SpeedStrich.Hint                := Hilf(463);
  SpeedEinrichten.Hint            := Hilf(505);
  SpeedPunkte.Hint                := Hilf(506);
  SpeedIso.Hint                   := Hilf(507);
  SpeedMaxima.Hint                := Hilf(508);
  SpeedGKreise.Hint               := Hilf(511);
  SpeedNetz.Hint                  := Hilf(677); 
  SpeedPFarbe.Hint                := Hilf(523);
  SpeedPanzeigen.Hint             := Hilf(522);
  SpeedUndo.Hint                  := Hilf(545);
  SpeedBGroesse.Hint              := Hilf(583);
  SpeedTransparent.Hint           := Hilf(584);
  SpeedHFarbe.Hint                := Hilf(585);
  SpeedSpeichern.Hint             := Hilf(264);
  SpeedLoad.Hint                  := Hilf(368);
  SpeedFont.Hint                  := Hilf(686);
  SpeedanzFarbe.Hint              := Hilf(523);
  SpeedLanzeigen.Hint             := Hilf(714);
  SpeedFanzeigen.Hint             := Hilf(715);
  SpeedGKreis.Hint                := Hilf(716);
  SpeedPweg.Hint                  := Hilf(545);
  SpeedCalib.Hint                 := Hilf(717);
  SpeedRueck.Hint                 := Hilf(718);
  ButtonNPlus.Hint                := Hilf(719);
  ButtonNMinus.Hint               := Hilf(720);
  ButtonWPlus.Hint                := Hilf(721);
  ButtonWMinus.Hint               := Hilf(722);
  ButtonEPlus.Hint                := Hilf(723);
  ButtonEMinus.Hint               := Hilf(724);
  ButtonSPlus.Hint                := Hilf(725);
  ButtonSMinus.Hint               := Hilf(726);
  SpeedZoom.Hint                  := Hilf(727);
  Konfidenz1.Caption              := Tx(508);  {&Konfidenz}
  N90Prozent1.Caption             := Tx(509);  {9&0 Prozent}
  N95Prozent1.Caption             := Tx(510);  {9&5 Prozent}
  N99Prozent1.Caption             := Tx(511);  {9&9 Prozent}
  stereografisch.Caption          := Tx(260);
  orthografisch.Caption           := Tx(849); 
  HFarbe.Caption                  := Tx(275);
  PFarbe.Caption                  := TX(275);
  FarbeDaten1.Caption             := Tx(512);  {&Farbe Daten}
  FarbeEigenwerte1.Caption        := Tx(513);  {Farbe &Eigenvektoren}
  Farbeoeffnungsgrad1.Caption     := Tx(514);  {Farbe &Öffnungsgrad}
  FarbeVertrauenskegel1.Caption   := Tx(515);  {Farbe &Vertrauenskegel}
  DarstellungDaten1.Caption       := Tx(516);  {&Darstellung Daten}
  Kreisoffen1.Caption             := Tx(517);  {&Kreis, offen}
  Kreisgefuellt1.Caption          := Tx(518);  {Kreis, &gefüllt}
  Quadratoffen1.Caption           := Tx(519);  {&Quadrat, offen}
  Quadratgefuellt1.Caption        := Tx(520);  {Q&uadrat, gefüllt}
  Dreieckoffen1.Caption           := Tx(521);  {&Dreieck, offen}
  Dreieckgefuellt1.Caption        := Tx(522);  {&Dreieck, gefüllt}
  Rauteoffen1.Caption             := Tx(523);  {&Raute, offen}
  Rautegefuellt1.Caption          := Tx(524);  {R&aute, gefüllt}
  Linien1.Caption                 := Tx(525);  {&Linien}
  durchgezogen.Caption            := Tx(526);  {&durchgezogen}
  gestrichelt1.Caption            := Tx(527);  {&gestrichelt}
  punktiert1.Caption              := Tx(645);  {&punktiert}
  strichpunktiert1.Caption        := Tx(528);  {&strichpunktiert}
  Grafik1.Caption                 := Tx(484);  {&Grafik}
  kopieren1.Caption               := Tx(485);  {&kopieren}
  speichern1.Caption              := Tx(487);  {&speichern}
  HPPlotter1.Caption              := Tx(288);  {auf dem &Hp-Plotter plotten}
  FarbePeripherie1.Caption        := Tx(498);  {Farbe der &Peripherie}
  Hintergrund.Caption             := Tx(1453);    {Farbe des Hintergrunds}
  HFarbe.Caption                  := Tx(275);
  Hilfe1.Caption                  := Tx(162)+' (F1)';
  LabelDateien.Caption            := Tx(136);  {ausgewählte Dateien:}
  LabelAnzahl.Caption             := Tx(533);  {Anzahl der Daten         =}
  LabelRegelung.Caption           := Tx(534);  {Regelungsgrad            =}
  LabelKonzentration.Caption      := Tx(535);  {Konzentrations-Parameter =}
  LabelVertrauen.Caption          := Tx(536);  {Vertrauenskegel          =}
  LabelOeffnung.Caption           := Tx(537);  {sphärischer Öffnungsgrad =}
  LabelSchwerpunkt.Caption        := Tx(538);  {Schwerpunktvektor        =}
  LabelEigenwerte.Caption         := Tx(539);  {Eigenwerte:}
  LabelEigenvektoren.Caption      := Tx(540);  {Eigenvektoren}
  LabelZylindrizitaet.Caption     := Tx(541);  {Zylindrizität           =}
  Labelzirkular.Caption           := Tx(542);  {zirkularer Öffnungsgrad =}
  LabelProbe.Caption              := Tx(543);  {Die Probe liegt im Gürtelfeld}
  GroupBoxPlotten.Caption         := Tx(502);  {Plotten:}
  Ploterstellen.Caption           := Tx(298);  {Plot-Einstellungen OK?}
  LabelLaenge.Caption             := Tx(1764); {Breite des Bildes}
  LabelEcke.Caption               := Tx(1264); {Punkt Links Oben}
  LabelX.Caption                  := Tx(687);  {X:}
  LabelY.Caption                  := Tx(688);  {Y:}
  Buttonzurueck.Caption           := Tx(30);
  Buttonbeenden.Caption           := Tx(53);
  Weiter.Caption                  := Tx(1341);
  Lagenkugel.Caption              := Tx(21);
  Datenpunkte.Caption             := TX(9);
  Grosskreise.Caption             := Tx(10);
  Isolinien.Caption               := Tx(15);
  Maxima.Caption                  := Tx(16);
  Font.Caption                    := Tx(1621);
  Punkt.Caption                   := Tx(1134);
  WertAnzeigen.Caption            := Tx(1134);
  Linear.Caption                  := Tx(1216);
  Flaeche.Caption                 := Tx(1217);
  Gkreis.Caption                  := Tx(1606);
  WerteLoeschen.Caption           := TX(1396);
  LabelAktuell.Caption            := Tx(1662);
  LabelDaten.Caption              := Tx(914);
  DEinrichten.Caption             := Tx(94);
  Calibrieren.Caption             := Tx(1581);
  Drucken.Caption                 := Tx(93);
  LabelCalib.Caption              := Tx(1668);
  LabelCalib2.Caption             := Tx(1669);
  LabelCalib3.Caption             := Tx(1670);
  LabelCalib4.Caption             := Tx(1671);
  LabelCalib5.Caption             := Tx(1672);
  LabelCalib6.Caption             := Tx(1673);
  LabelBrE.Caption                := Tx(1674);
  LabelBrD.Caption                := Tx(1675);
  Calibrieren.Caption             := Tx(1581);
  ButtonCalibEnde.Caption         := Tx(1682);
  ButtonPlotEnde.Caption          := Tx(1682);
  ButtonLabbrechen.Caption        := Tx(1682);
  ButtonSabbrechen.Caption        := Tx(1682);
  DHinzufuegen.Caption            := Tx(1685);
  ausZwischenablage.Caption       := Tx(1686);
  AusDatei.Caption                := Tx(1687);
  Drueck.Caption                  := Tx(1688);
  Textschreiben.Caption           := Tx(1699);
  LabelText.Caption               := Tx(1700);
  LabelReturn.Caption             := Tx(1701);
  LabelPlazieren.Caption          := Tx(1702);
  Trueck.Caption                  := Tx(1688);
  Drucken.Caption                 := Tx(93);
  Halbkugel.Enabled               := false;
  Projektion.Enabled              := false;
  Konfidenz1.Enabled              := false;
  PFarbe.Enabled                  := false;
  WertAnzeigen.Enabled            := false;
  DarstellungDaten1.Enabled       := false;
  Linien1.Enabled                 := false;
  Grafik1.Enabled                 := false;
  Drucker1.Enabled                := false;
  Weiter.Enabled                  := false;
  PanelDateien.Visible            := false;
  PanelParameter.Visible          := false;
  PanelEigenwerte.Visible         := false;
  PanelZylinder.Visible           := false;
  PanelDaten.Visible              := false;
  HolPixS                       := '';
  LabelDateien.Enabled          := false;
  LabelAnzahl.Enabled           := false;
  LabelZahl.Caption             := '';
  LabelRegelung.Enabled         := false;
  LabelRegelungZahl.Caption     := '';
  LabelKonzentration.Enabled    := false;
  LabelKonzentrZahl.Caption     := '';
  LabelVertrauen.Enabled        := false;
  LabelVertrauenZahl.Caption    := '';
  LabelOeffnung.Enabled         := false;
  LabelOeffnungZahl.Caption     := '';
  LabelSchwerpunkt.Enabled      := false;
  LabelSchwerpWert.Caption      := '';
  LabelEigenwerte.Enabled       := false;
  LabelEigenvektoren.Enabled    := false;
  Label1E.Enabled               := false;
  LabelLambda1.Caption          := '';
  Label2E.Enabled               := false;
  LabelLambda2.Caption          := '';
  Label3E.Enabled               := false;
  LabelLambda3.Caption          := '';
  LabelStrich2.Enabled          := false;
  LabelSumme.Caption            := '';
  LabelVektor1.Caption          := '';
  LabelVektor2.Caption          := '';
  LabelVektor3.Caption          := '';
  LabelZylindrizitaet.Enabled   := false;
  Labelzirkular.Enabled         := false;
  LabelZirkularZahl.Caption     := '    ';
  LabelProbe.Caption            := '';
  LabelZylinderZahl.Caption     := '';
  ListboxDateien.Enabled        := false;
  LabelMittelpunkt.Enabled      := false;
  LabelX.Enabled                := false;
  LabelY.Enabled                := false;
  LabelRadius.Enabled           := false;
  LabelMittelpunkt.Enabled      := false;
  Calib                         := false; 
  PanelKaliber.Visible          := false;
  MaskEditRadius.EditMask       := '999;0; ';
  MaskEditX.EditMask            := '999;0; ';
  MaskEditY.EditMask            := '999;0; ';
  MaskEditBrE.EditMask          := '999;0; ';
  MaskEditBrD.EditMask          := '999;0; ';
  MaskEditRadius.Text           := InttoStr(round(HpRadius*10));
  MaskEditX.Text                := InttoStr(round(XKoord*10));
  MaskEditY.Text                := InttoStr(round(YKoord*10));
  MaskEditRadius.Enabled        := false;
  MaskEditX.Enabled             := false;
  MaskEditY.Enabled             := false;
  kopieren1.Enabled             := false;
  speichern1.Enabled            := false;
  Holzwischen                   := false;
  Labelg1.Enabled               := false;
  Labelg2.Enabled               := false;
  Labelg3.Enabled               := false;
  Labelg4.Enabled               := false;
  Labelg5.Enabled               := false;
  Labelg6.Enabled               := false;
  Labelg7.Enabled               := false;
  Labelg8.Enabled               := false;
  Konfidenz1.Enabled            := false;
  FarbeDaten1.Enabled           := false;
  FarbeEigenwerte1.Enabled      := false;
  Farbeoeffnungsgrad1.Enabled   := false;
  FarbeVertrauenskegel1.Enabled := false;
  DarstellungDaten1.Enabled     := false;
  Linien1.Enabled               := false;
  Grafik1.Enabled               := false;
  SpeedDrucken.Enabled          := false;
  FarbeDiagramm1.Caption        := Tx(860);
  Paneldrucken.Visible          := false;
  RadioButtonlinks.Visible      := false;
  RadioButtonzentriert.Visible  := false;
  RadioButtonrechts.Visible     := false;
  RadioGroup.Visible            := false;
  GroupBoxDrucken.Visible       := false;
  PanelUnterschrift.Visible     := false;
  PanelMess.Visible             := false;
  MaskEditBrE.Enabled           := false;
  MaskEditBrD.Enabled           := false;
  Drucker2.Caption              := Tx(92);
  Druckereinrichten.Caption     := Tx(94);
  drucken2.Caption              := Tx(93);
  FarbeRahmen.Caption           := Tx(892);
  Drucker1.Caption              := Tx(1193);
  drucken1.Caption              := Tx(93);
  DruckerEinrichten1.Caption    := Tx(94);
  Dspeichern.Caption            := Tx(87);
  DspeichernUnter.Caption       := Tx(88);
  GroupBoxPlotten.Caption       := '';
  for i := 1 to 3 do Gedrueckt[i] := false;
  GroupBoxPlotten.Visible := false;
  Projektion.Caption      := Tx(258);
  Projektion.Enabled      := false;
  LabelProjektion.Caption := '';
  Drucker1.Enabled        := false;
  Halbkugel.Caption       := Tx(1087);
  untere.Caption          := Tx(1088);
  obere.Caption           := Tx(1089);
  Handbuch.Caption        := Tx(1055)+' (F2)';
  Literatur.Caption       := Tx(1183)+' (F5)';
  SpeedLiteratur.Hint     := Hilf(462);
  PanelSpeed.Visible      := false;
  for i := 0 to 9 do ListboxStrich.Items.Add(IntToStr(i+1));
  ListBoxStrich.Visible     := false;
  LabelStrich.Visible       := false;
  LabelStrich.Caption       := Tx(1187);
  PanelKlick.Visible        := false;
  WertAnzeigen.Caption      := Tx(1194);
  PunktFarbe.Caption        := Tx(275);
  WertAnzeigen.Caption      := Tx(1134);
  LabelKlick.Caption        := Tx(1137);
  LabelFallrichtung.Caption := Tx(1138);
  LabelFallwinkel.Caption   := Tx(1139);
  LabelBeenden.Caption      := Tx(1244); 
  if ObenUntenS = 'LOWER' then OU := 1;
  if ObenUntenS = 'UPPER' then OU := -1;
  Maus := false;
  SpeedGKreise.Enabled     := false;
  SpeedPunkte.Enabled      := false;
  SpeedIso.Enabled         := false;
  SpeedMaxima.Enabled      := false;
  WerteLoeschen.Caption    := Tx(1396);
  Ratio                    := 660/663;
  MaskEditBBreite.EditMask := '99999;0; ';
  MaskEditBHoehe.EditMask  := '99999;0; ';
  LabelBBreite.Caption     := Tx(1440);
  LabelBHoehe.Caption      := Tx(1441);
  BGroesse.Caption         := Tx(1439);
  PanelGroesse.Visible     := false;
  HTransparent             := false;
  for i := 1 to 9 do
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
  Zwischen            := false;
  Drueck.Enabled      := false;
  SpeedRueck.Enabled  := false;
  Zoom.Enabled        := false;
  SpeedZoom.Enabled   := false;
  if WeiterF then
  begin
    ButtonStart.Visible   := false;
    ButtonBeenden.Visible := false;
    ButtonStartClick(Sender);
  end;
  PanelText.Visible   := false;
  BText               := false;
  texti               := 0;
  Trueck.Enabled      := false;
  SpeedUnText.Enabled := false;
end;

procedure TForm21.ButtonStartClick(Sender: TObject);      {Start}
var
  Regelung      : real;
  Konzentration : real;
  Eigenwert     : array[0..3] of real;
  SummeEigen    : real;
  KlKreis       : byte;
  Bitmap        : TBitmap;
  Azimut        : word;
  Fall, i       : word;
  Aa, Ff, Ov,Oo : real;
  ProS          : string[30];
  j             : byte;
  Quadrat       : TRect;
  FBild         : TBitmap;
  JBild         : TJpegImage;
  GBild         : TGifImage;
  MetaFile      : TMetaFile;
  Rahmen1       : TRect;
  Rahmen2       : TRect;
  BildPng       : TPngObject;
  NBild         : TBitmap;
  ZeileS        : string;

begin
  Maus               := false;
  GKreis.Enabled     := false;
  PanelMess.Visible  := false;
  PanelKlick.Visible := false;
  if ObenUntenS = 'LOWER' then OU := 1;
  if ObenUntenS = 'UPPER' then OU := -1;
  GroupBoxPlotten.Visible := false;
  if not PlusEin then
  begin
    BHoeheSt := round(BBreiteSt/Ratio);
    if not Zwischen then
    begin
      if not ClipBoard.HasFormat(CF_Bitmap) then
      begin
        ausZwischenablage.Enabled := false;
        SpeedZwischenablage.Enabled     := false;
      end
      else
      begin
        ausZwischenablage.Enabled := true;
        SpeedZwischenablage.Enabled     := true;
      end;
    end;
    PanelSpeed.Visible := true;
    GroupBoxPlotten.Visible := false;
    for i := 1 to 3 do for j := 1 to 3 do Q[i,j] := 0;
    SpeedDrucken.Enabled          := true;
    ProS                          := GeraetS;
    Konfidenz1.Enabled            := true;
    FarbeDaten1.Enabled           := true;
    FarbeEigenwerte1.Enabled      := true;
    FarbeOeffnungsgrad1.Enabled   := true;
    FarbeVertrauenskegel1.Enabled := true;
    DarstellungDaten1.Enabled     := true;
    Linien1.Enabled               := true;
    Grafik1.Enabled               := true;
    Labelg1.Enabled               := true;
    Labelg2.Enabled               := true;
    Labelg3.Enabled               := true;
    Labelg4.Enabled               := true;
    Labelg5.Enabled               := true;
    Labelg6.Enabled               := true;
    Labelg7.Enabled               := true;
    Labelg8.Enabled               := true;
    LabelRadius.Enabled           := true;
    MaskEditRadius.Enabled        := true;
    LabelMittelpunkt.Enabled      := true;
    LabelX.Enabled                := true;
    MaskEditX.Enabled             := true;
    LabelY.Enabled                := true;
    MaskEditY.Enabled             := true;
    Drucker1.Enabled              := true;
    PanelDateien.Visible          := true;
    PanelParameter.Visible        := true;
    PanelEigenwerte.Visible       := true;
    PanelZylinder.Visible         := true;
    PanelDaten.Visible            := true;
    GroupBoxPlotten.Caption       := 'Plot';
    {Berechnungen}
    Algorithmus(Gefuegetyp, ZahlGlob, AziSchwerp, FalSchwerp,
                Regelung, Konzentration, Vertrauen, Oeffnung,
                AziFeld, FalFeld);
    Eigenwerte(EigenAzi, EigenFal, Eigenwert, ZahlGlob, SummeEigen, Zylinder,
               Zirkoeff, KlKreis);
    {Ausgabe}
    ListBoxDateien.Clear;
    ListboxDateien.Enabled      := true;
    ListBoxDateien.Clear;
    if EingabeS = 'manuell' then PanelDateien.Visible := false;
    if EingabeS <> 'ExcelD' then
      for i := 0 to DateiZahl do
        ListboxDateien.Items.Add (DateiNameS[i])
    else ListBoxDateien.Items.Add(PfadS);
    ListBoxDaten.Clear;
    for i := 1 to ZahlGlob do
    begin
      ZeileS := '     '+RightS('000'+IntToStr(AziFeld[i]),3)
                +'/'+RightS('00'+IntToStr(FalFeld[i]),2);
      ListBoxDaten.Items.Add(ZeileS);
    end;
    LabelDateien.Enabled        := true;
    LabelAnzahl.Enabled         := true;
    LabelZahl. Caption          := IntToStr (ZahlGlob);
    LabelRegelung.Enabled       := true;
    str(Regelung:4:1, RegS);
    LabelRegelungZahl.Caption   := RegS+'%';
    LabelKonzentration.Enabled  := true;
    str(Konzentration:4:1, KonzS);
    LabelKonzentrZahl.Caption   := KonzS;
    LabelVertrauen.Enabled      := true;
    str(Vertrauen:4:1, VerS);
    LabelVertrauenZahl.Caption  := VerS+'°';
    LabelOeffnung.Enabled       := true;
    str(Oeffnung:4:1, OeffnS);
    LabelOeffnungZahl.Caption   := OeffnS+'°';
    LabelSchwerpunkt.Enabled    := true;
    LabelSchwerpWert.Caption    := IntToStr(AziSchwerp)+'/'+IntToStr(FalSchwerp);
    LabelEigenwerte.Enabled     := true;
    LabelEigenvektoren.Enabled  := true;
    Label1E.Enabled             := true;
    for i := 1 to 3 do str(Eigenwert[i]:5:3, EigenwS[i]);
    LabelLambda1.Caption        := EigenwS[1];
    Label2E.Enabled             := true;
    LabelLambda2.Caption        := EigenwS[2];
    Label3E.Enabled             := true;
    LabelLambda3.Caption        := EigenwS[3];
    LabelStrich2.Enabled        := true;
    str(SummeEigen:5:3, SummeEigenS);
    LabelSumme.Caption          := SummeEigenS;
    for i := 1 to 3 do str(EigenAzi[i], EigenAziS[i]);
    for i := 1 to 3 do str(EigenFal[i], EigenFalS[i]);
    LabelVektor1.Caption        := EigenAziS[1]+'/'+EigenFalS[1];
    LabelVektor2.Caption        := EigenAziS[2]+'/'+EigenFalS[2];
    LabelVektor3.Caption        := EigenAziS[3]+'/'+EigenFalS[3];
    LabelZylindrizitaet.Enabled := true;
    Labelzirkular.Enabled       := true;
    LabelzirkularZahl.Caption   := IntToStr (ZirkOeff)+'°';
    if Zylinder <  50 then ProbeS := Tx(365);  {Probe liegt im Cluster-Feld}
    if Zylinder >= 50 then ProbeS := Tx(366);  {Probe liegt im Gürtel-Feld}
    LabelProbe.Caption := ProbeS;          {Die Probe...}
    LabelZylinderZahl.Caption := IntToStr (Zylinder)+'%';
    Projektion.Enabled := true;
    if ProjektionS = 'Lambert' then ProS  := Tx(259);
    if ProjektionS = 'stereographic' then ProS := Tx(260);
    if ProjektionS = 'orthographic' then ProS := Tx(849);
    if ProjektionS = 'Kavraiskii' then ProS := 'Kavraiskii';
    LabelProjektion.Caption := Tx(651)+': '+ ProS;
    ImageNord.Picture.LoadfromFile (DirectS+'\'+'NordPfeil.bmp');
    {Diagramm plotten}
    Bo := Pi/180;
    Bitmap := Tbitmap.Create;
    Bitmap.Width     := Image1.Width;
    Bitmap.Height    := Image1.Height;
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
        Zahlloeschen(Image1.Canvas);
      end
      else MessageDlg(Tx(306), mtInformation, [mbOK],0); {Die Zwischenablage..}
      Holzwischen := false;
    end;
  end //not PlusEin
  else
  begin
    Rahmen1 := Rect(-Wplus,-Nplus,Breite+EPlus,Hoehe+SPlus);
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
  {Plotten der Daten}
  with Image1.Canvas do
  begin
    with Image1.Canvas do
    begin
      Pen.Width := 1;
      Pen.Color := DatenFarbe;
      Pen.Style := psSolid;
      if LeftS(Datensymbol,4) = 'Open' then Brush.Color := DiagrFarbe
      else Brush.Color := DatenFarbe;
      for i := 1 to ZahlGlob do
      begin
        Azimut := AziFeld[i];
        Fall   := FalFeld[i];
        if Gefuegetyp = 2 then
        begin
          Azimut := (Azimut + 180) mod 360;
          Fall := 90 - Fall;
        end;
        PlotAF (Image1.Canvas, Azimut, Fall);
      end;
    end;
    {Plotten der Eigenvektoren}
    with Image1.Canvas do
    begin
      Eigenplot (Image1.Canvas, EigenAzi, EigenFal, AziSchwerp, FalSchwerp,
                 EigenFarbe);
    end;
  end;
  {Potten des Vertrauenskegels und des Öffnungsgrades}
  Aa := AziSchwerp * Bo;
  Ff := FalSchwerp * Bo;
  if Gefuegetyp = 2 then
  begin
    Aa := Aa + Pi;
    Ff := Pi/2 - Ff;
  end;
  Ov := Vertrauen * Bo;
  Oo := Oeffnung * Bo;
  with Image1.Canvas do
  begin
    Pen.Width   := Strich;
    Pen.Style   := LinienTyp;
    Brush.Color := DiagrFarbe;
    if Oeffnung > Vertrauen then
    begin
      Kleinkreis (Image1.Canvas, Aa, Ff, Ov, VertrauFarbe);
      if Zylinder < 50 then Kleinkreis (Image1.Canvas, Aa, Ff, Oo,
                                        OeffnungFarbe);
    end;
  end;
  {Plot eines Teilgroßkreises}
  if Zylinder >= 50 then
  begin
    with Image1.Canvas do Teilkreis (Image1.Canvas, EigenAzi, EigenFal,
                                     Zirkoeff, OeffnungFarbe);
  end;
  with image2 do
  begin
    Image2.Visible := false;
    if not HTransparent then
    begin
      Quadrat := Rect (0, 0, Clientwidth, ClientHeight);
      if ObenUntenS = 'LOWER' then UntereH(Canvas, Quadrat);
      if ObenUntenS = 'UPPER' then ObereH (Canvas, Quadrat);
      Image1.Canvas.Draw(Image1.Width-Image2.width-5,
                         Image1.Height-Image2.Height-5,
                         Image2.picture.graphic);
    end;
  end;
  ImageNord.Visible := false;
  Image1.Canvas.Draw(Image1.Width div 2 - ImageNord.Width div 2,3,
                     ImageNord.Picture.Graphic);
  Halbkugel.Enabled         := true;
  Projektion.Enabled        := true;
  Konfidenz1.Enabled        := true;
  PFarbe.Enabled            := true;
  WertAnzeigen.Enabled      := true;
  DarstellungDaten1.Enabled := true;
  Linien1.Enabled           := true;
  Grafik1.Enabled           := true;
  Drucker1.Enabled          := true;
  if not WeiterF then
  begin
    Weiter.Enabled := true;
    if (Gefuegetyp = 2) or (Gefuegetyp = 4) then
    begin
      Grosskreise.Enabled  := true;
      SpeedGKreise.Enabled := true;
    end  
    else
    begin
      Grosskreise.Enabled  := false;
      SpeedGKreise.Enabled := false;
    end;
    SpeedPunkte.Enabled  := true;
    SpeedIso.Enabled     := true;
    SpeedMaxima.Enabled  := true;
  end;
//  if DemoB then DemoText(Image1.Canvas,480,40);
  kopieren1.Enabled       := true;
  speichern1.Enabled      := true;
  HPPlotter1.Enabled      := true;
  ButtonStart.Enabled     := true;
end;

procedure TForm21.untereClick(Sender: TObject);
var
  Datei : TextFile;
  i     : word;
begin
  ObenUntenS := 'LOWER';
  KonfigZeileS[16] := 'Hemisphere                 :,'+ObenUntenS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm21.obereClick(Sender: TObject);
var
  Datei : TextFile;
  i     : word;
begin
  ObenUntenS := 'UPPER';
  KonfigZeileS[16] := 'Hemisphere                 :,'+ObenUntenS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm21.ButtonzurueckClick(Sender: TObject);     {zurück}
var
  Flaeche : TRect;
begin
  ButtonStart.Enabled   := true;
  if not WeiterF then
  begin
    AziFeld := Nil;
    FalFeld := Nil;
  end;
  ListBoxDateien.Clear;
  Flaeche := Rect(0,0,Clientwidth,ClientHeight);
  Loeschen (Image1.Canvas, Flaeche);
  Loeschen (ImageNord.Canvas, Flaeche);
  Form21.Close;
  if EingabeS = 'ExcelD' then Form64.Close;
end;

procedure TForm21.ButtonbeendenClick(Sender: TObject);    {beenden}
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
  AziFeld := Nil;
  FalFeld := Nil;
  ListBoxDateien.Clear;
  Flaeche := Rect(0,0,Clientwidth,ClientHeight);
  Loeschen (Image1.Canvas, Flaeche);
  Loeschen (ImageNord.Canvas, Flaeche);
  Form21.Close;
  if EingabeS = 'ExcelD' then Form64.Close;
  Form20.Close;
  Form11.Close;
  Form10.Close;
  SetCurrentDir(DirectS);
  Programm := 8;
end;

procedure TForm21.N90Prozent1Click(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  Konfidenz := 90;
  KonfigZeileS[20] := '  Confidence [%]           :,90';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm21.N95Prozent1Click(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  Konfidenz := 95;
  KonfigZeileS[20] := '  Confidence [%]           :,95';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm21.N99Prozent1Click(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  Konfidenz := 99;
  KonfigZeileS[20] := '  Confidence [%]           :,99';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm21.SpeedKonfidenz90Click(Sender: TObject);
begin
  N90Prozent1Click(Sender);
end;

procedure TForm21.SpeedKonfidenz95Click(Sender: TObject);
begin
  N95Prozent1Click(Sender);
end;

procedure TForm21.SpeedKonfidenz99Click(Sender: TObject);
begin
  N99Prozent1Click(Sender);
end;

procedure TForm21.FarbeDaten1Click(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  Farbe := clWhite;
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

procedure TForm21.FarbeEigenwerte1Click(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  Farbe := clWhite;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS     := ColorToString (Farbe);
  EigenFarbe := StringToColor(FarbeS);
  KonfigZeileS[21] := '  Colour of Eigenvectors   :,'+FarbeS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick (Sender);
end;

procedure TForm21.Farbeoeffnungsgrad1Click(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  Farbe := clWhite;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS        := ColorToString (Farbe);
  OeffnungFarbe := StringToColor(FarbeS);
  KonfigZeileS[22] := '  Colour of Aperture       :,'+FarbeS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick (Sender);
end;

procedure TForm21.FarbeVertrauenskegel1Click(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  Farbe := clWhite;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS       := ColorToString (Farbe);
  VertrauFarbe := StringToColor(FarbeS);
  KonfigZeileS[23] := '  C. of Cone of Confidence :,'+FarbeS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick (Sender);
end;

procedure TForm21.SpeedFarbeEigenClick(Sender: TObject);
begin
  FarbeEigenwerte1Click(Sender);
end;

procedure TForm21.SpeedFarbeOeffnungClick(Sender: TObject);
begin
  FarbeOeffnungsgrad1Click(Sender);
end;

procedure TForm21.SpeedFarbeVertrauenClick(Sender: TObject);
begin
  FarbeVertrauenskegel1Click(Sender);
end;

procedure TForm21.Kreisoffen1Click(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  DatenSymbol := 'OpenCircle';
  KonfigZeileS[9] := '  Data Symbol              :,OpenCircle';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm21.Kreisgefuellt1Click(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  DatenSymbol := 'FilledCircle';
  KonfigZeileS[9] := '  Data Symbol              :,FilledCircle';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm21.Dreieckoffen1Click(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  DatenSymbol := 'OpenTriangle';
  KonfigZeileS[9] := '  Data Symbol              :,Opentriangle';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm21.Dreieckgefuellt1Click(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  DatenSymbol := 'FilledTriangle';
  KonfigZeileS[9] := '  Data Symbol              :,FilledTriangle';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm21.Quadratoffen1Click(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  DatenSymbol := 'OpenSquare';
  KonfigZeileS[9] := '  Data Symbol              :,OpenSquare';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm21.Quadratgefuellt1Click(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  DatenSymbol := 'FilledSquare';
  KonfigZeileS[9] := '  Data Symbol              :,FilledSquare';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm21.Rauteoffen1Click(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  DatenSymbol := 'OpenDiamond';
  KonfigZeileS[9] := '  Data Symbol              :,OpenDiamond';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm21.Rautegefuellt1Click(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  DatenSymbol := 'FilledDiamond';
  KonfigZeileS[9] := '  Data Symbol              :,FilledDiamond';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm21.SpeedKreisOClick(Sender: TObject);
begin
  KreisOffen1Click(Sender);
end;

procedure TForm21.SpeedKreisGClick(Sender: TObject);
begin
  KreisGefuellt1Click(Sender);
end;

procedure TForm21.SpeedDreieckOClick(Sender: TObject);
begin
  DreieckOffen1Click(Sender);
end;

procedure TForm21.SpeedDreieckGClick(Sender: TObject);
begin
  DreieckGefuellt1Click(Sender);
end;

procedure TForm21.SpeedQuadratOClick(Sender: TObject);
begin
  QuadratOffen1Click(Sender);
end;

procedure TForm21.SpeedQuadratGClick(Sender: TObject);
begin
  QuadratGefuellt1Click(Sender);
end;

procedure TForm21.SpeedRauteOClick(Sender: TObject);
begin
  RauteOffen1Click(Sender);
end;

procedure TForm21.SpeedRauteGClick(Sender: TObject);
begin
  RauteGefuellt1Click(Sender);
end;

procedure TForm21.PunktFarbeClick(Sender: TObject);
var
  Datei  : TextFile;
  i      : byte;
  FarbeS : string;
begin
  if ColorDialog1.Execute then
    KlickFarbe := ColorDialog1.Color;
  FarbeS := ColorToString(KlickFarbe);
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  KonfigZeileS[94] := 'Colour of clicked point    :,'+FarbeS;
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
end;

procedure TForm21.SpeedAnzFarbeClick(Sender: TObject);
begin
  PunktFarbeClick(Sender);
end;

procedure TForm21.LinearClick(Sender: TObject);
begin
  GtypS := 'linear';
  PanelKlick.Visible := true;
  PanelMess.Visible  := true;
  Maus               := true;
  GKreis.Enabled     := true;
  BildImage1 := TBitmap.Create;
  BildImage1.Assign(Image1.Picture.Graphic);
end;

procedure TForm21.SpeedLanzeigenClick(Sender: TObject);
begin
  LinearClick(Sender);
end;

procedure TForm21.FlaecheClick(Sender: TObject);
begin
  GtypS := 'plane';
  PanelKlick.Visible := true;
  PanelMess.Visible  := true;
  Maus               := true;
  GKreis.Enabled     := true;
  BildImage1 := TBitmap.Create;
  BildImage1.Assign(Image1.Picture.Graphic);
end;

procedure TForm21.GKreisClick(Sender: TObject);
var
  Aa, Ff : real;
begin
  Aa := 0;
  Ff := 0;
  Aa := APunkt*Pi/180;
  Ff := FPunkt*Pi/180;
  Grosskreis(Image1.Canvas, Aa, Ff, KlickFarbe);
end;

procedure TForm21.WerteLoeschenClick(Sender: TObject);
begin
  Maus := false;
  PanelMess.Visible := false;
  GKreis.Enabled := false;
  Image1.Canvas.Draw(0,0,BildImage1);
  BildImage1.Free;
end;

procedure TForm21.BGroesseClick(Sender: TObject);
begin
  PanelGroesse.Visible    := true;
  CheckBoxBild.State      := cbUnchecked;
  MaskEditBBreite.Text    := IntTostr(BBreiteSt);
  MaskEditBHoehe.Text     := IntToStr(BHoeheSt);
end;

procedure TForm21.SpeedBGroesseClick(Sender: TObject);
begin
  BGroesseClick(Sender);
end;

procedure TForm21.MaskEditBBreiteKeyPress(Sender: TObject; var Key: Char);
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

procedure TForm21.MaskEditBHoeheKeyPress(Sender: TObject; var Key: Char);
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

procedure TForm21.CheckBoxBildClick(Sender: TObject);
begin
  PanelGroesse.Visible := false;
end;

procedure TForm21.kopieren1Click(Sender: TObject);
begin
  ClipBoard.Assign (Image1.Picture);
end;

procedure TForm21.transparentClick(Sender: TObject);
begin
  Farbe                 := clWhite;
  HTransparent          := true;
  ListBoxSpeichern.Clear;
  ListBoxSpeichern.Items.Add (Tx(1613));
  ButtonStartClick(Sender);
end;

procedure TForm21.SpeedTransparentClick(Sender: TObject);
begin
  transparentClick(Sender);
end;

procedure TForm21.HFarbeClick(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  Farbe := clWhite;
  HTransparent := false;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS    := ColorToString (Farbe);
  HintFarbe := StringToColor(FarbeS);
  KonfigZeileS[3] := '  Background Colour        :,'+FarbeS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick (Sender);
end;

procedure TForm21.SpeedHFarbeClick(Sender: TObject);
begin
  HFarbeClick(Sender);
end;

procedure TForm21.speichern1Click(Sender: TObject);
begin
  PanelSpeichern.Visible := true;
end;

procedure TForm21.SpeedSpeichernClick(Sender: TObject);
begin
  speichern1Click(Sender);
  
end;

procedure TForm21.ausZwischenablageClick(Sender: TObject);
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

procedure TForm21.SpeedZwischenablageClick(Sender: TObject);
begin
  AusZwischenablageClick(Sender);
end;

procedure TForm21.ausDateiClick(Sender: TObject);
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

procedure TForm21.SpeedLoadClick(Sender: TObject);
begin
  ausDateiClick(Sender);
end;

procedure TForm21.ZoomClick(Sender: TObject);
begin
  PanelDehnen.Visible := true;
  PlusEin             := true;
  if ClipBoard.HasFormat(CF_Bitmap) then
    HolPixS := 'Clipboard';
  ButtonStartClick(Sender);
end;

procedure TForm21.SpeedZoomClick(Sender: TObject);
begin
  ZoomClick(Sender);
end;

procedure TForm21.DrueckClick(Sender: TObject);
begin
  AusDatei.enabled            := true;
  SpeedLoad.Enabled           := true;
  SpeedZoom.Enabled           := false;
  Zoom.Enabled                := false;
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

procedure TForm21.SpeedRueckClick(Sender: TObject);
begin
  DrueckClick(Sender);
end;

procedure TForm21.ButtonSabbrechenClick(Sender: TObject);
begin
  PanelSpeichern.Visible := false;
end;

procedure TForm21.ListBoxSpeichernClick(Sender: TObject);
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

procedure TForm21.speichernPLTClick(Sender: TObject);
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

procedure TForm21.speichernDXFClick(Sender: TObject);
var
  i      : byte;
  Datei  : Textfile;
begin
  PanelDaten.Visible       := false;
  GroupBoxPlotten.Visible  := true;
  FarbePeripherie1.Enabled := true;
  GeraetS                  := 'DXF';
  KonfigZeileS[53] := 'Paper Plot                 :,DXF';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
end;

procedure TForm21.ButtonLabbrechenClick(Sender: TObject);
begin
  PanelLoad.Visible := false;
end;

procedure TForm21.DEinrichtenClick(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TForm21.CalibrierenClick(Sender: TObject);
begin
  Calib                   := true;
  FaktorAlt               := Faktor;
  Faktor                  := 1;
  GeraetS                 := 'Plotter';
  PanelDaten.Visible      := false;
  GroupBoxPlotten.Visible := true;
  PanelKaliber.Visible    := true;
end;

procedure TForm21.SpeedCalibClick(Sender: TObject);
begin
  CalibrierenClick(Sender);
end;

procedure TForm21.ButtonCalibEndeClick(Sender: TObject);
begin
  Calib := false;
  Faktor := FaktorAlt;
  PanelKaliber.Visible := false;
end;

procedure TForm21.DruckenClick(Sender: TObject);
var
  i      : byte;
  Datei  : Textfile;
begin
  DiagrFarbe := clWhite;
  PanelDaten.Visible := false;
  FarbePeripherie1.Enabled := true;
  GeraetS                  := 'Plotter';
  KonfigZeileS[53] := 'Paper Plot                 :,Plotter';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  GroupBoxPlotten.Visible := true;
end;

procedure TForm21.MaskEditBrEKeyPress(Sender: TObject; var Key: Char);
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

procedure TForm21.MaskEditBrDKeyPress(Sender: TObject; var Key: Char);
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

procedure TForm21.ButtonNPlusClick(Sender: TObject);
begin
  NPlus := NPlus +1;
  ButtonStartClick(Sender);
end;

procedure TForm21.ButtonNMinusClick(Sender: TObject);
begin
  NPlus := NPlus -1;
  ButtonStartClick(Sender);
end;

procedure TForm21.ButtonEMinusClick(Sender: TObject);
begin
  EPlus := EPlus -1;
  ButtonStartClick(Sender);
end;

procedure TForm21.ButtonEPlusClick(Sender: TObject);
begin
  EPlus := EPlus +1;
  ButtonStartClick(Sender);
end;

procedure TForm21.ButtonSMinusClick(Sender: TObject);
begin
  SPlus := SPlus -1;
  ButtonStartClick(Sender);
end;

procedure TForm21.ButtonSPlusClick(Sender: TObject);
begin
  SPlus := SPlus +1;
  ButtonStartClick(Sender);
end;

procedure TForm21.ButtonWMinusClick(Sender: TObject);
begin
  WPlus := WPlus -1;
  ButtonStartClick(Sender);
end;

procedure TForm21.ButtonWplusClick(Sender: TObject);
begin
  WPlus := WPlus +1;
  ButtonStartClick(Sender);
end;

procedure TForm21.ButtonHokClick(Sender: TObject);
begin
  NPlus := 0;
  WPlus := 0;
  SPlus := 0;
  EPlus := 0;
  PanelDehnen.Visible := false;
  PlusEin := false;
end;

procedure TForm21.ListBoxLoadClick(Sender: TObject);
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

procedure TForm21.gestrichelt1Click(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  Strich    := 1;
  LinienTyp :=  psDash;
  KonfigZeileS[10] := '  Line Style              :,DASH';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm21.punktiert1Click(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  Strich    := 1;
  LinienTyp := psDot;
  KonfigZeileS[10] := '  Line Style              :,DOT';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm21.SpeedPunktiert1Click(Sender: TObject);
begin
  punktiert1Click(Sender);
end;

procedure TForm21.strichpunktiert1Click(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  Strich    := 1;
  LinienTyp := psDashDot;
  KonfigZeileS[10] := '  Line Style              :,DASHDOT';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm21.SpeedDurchgezogenClick(Sender: TObject);
begin
  durchgezogenClick(Sender);
end;

procedure TForm21.SpeedGestricheltClick(Sender: TObject);
begin
  gestrichelt1Click(Sender);
end;

procedure TForm21.SpeedStrichPunktClick(Sender: TObject);
begin
  strichpunktiert1Click(Sender);
end;

procedure TForm21.FontClick(Sender: TObject);
begin
  WaehlFont(FontDialog1);
end;

procedure TForm21.SpeedFontClick(Sender: TObject);
begin
  FontClick(Sender);
end;

procedure TForm21.keinPlot1Click(Sender: TObject);
var
  i      : byte;
  Datei  : Textfile;
begin
  GeraetS          := 'no';
  KonfigZeileS[53] := 'Paper Plot                 :,no';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  FarbePeripherie1.Enabled := false;
end;

procedure TForm21.SpeedPlotterClick(Sender: TObject);
begin
  DruckenClick(Sender);
end;

procedure TForm21.SpeedPLTClick(Sender: TObject);
begin
  speichernPLTClick(Sender);
end;

procedure TForm21.SpeedDXFClick(Sender: TObject);
begin
  speichernDXFClick(Sender);
end;

procedure TForm21.FarbePeripherie1Click(Sender: TObject);
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

procedure TForm21.FarbeDiagramm1Click(Sender: TObject);
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

procedure TForm21.FarbeRahmenClick(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  Farbe := clWhite;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS      := ColorToString (Farbe);
  RahmenFarbe := StringToColor(FarbeS);
  KonfigZeileS[4] := '  Frame Colour             :,'+FarbeS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick (Sender);
end;

procedure TForm21.SpeedPeripherieClick(Sender: TObject);
begin
  FarbePeripherie1Click(Sender);
end;

procedure TForm21.SpeedDiagrammClick(Sender: TObject);
begin
  FarbeDiagramm1Click(Sender);
end;

procedure TForm21.SpeedRahmenClick(Sender: TObject);
begin
  FarbeRahmenClick(Sender);
end;

procedure TForm21.PloterstellenClick(Sender: TObject);
var
  RmaxS    : string[12];
  Rmax     : real;
  Xmax     : real;
  Ymax     : real;
  RadiusS  : string[4];
  XKoordS  : string[4];
  YKoordS  : string[4];
  Kreuz    : boolean;
  Aa, Ff   : real;
  X, Y     : real;
  Ow       : real;
  Null     : real;
  i        : byte;
  Az, Fa   : real;
  ZS       : string[1];
  Bo       : real;
  Datei    : TextFile;
  XS, YS   : string;
  WS, HS   : string;
  Groesse  : word;
  Typ      : TMsgDlgType;
  Xd, Yd   : word;
begin
  Bo := Pi/180;
  Null := 0;
  if GeraetS = 'no' then exit;
  RadiusS := MaskEditRadius.Text;
  XKoordS := MaskEditX.Text;
  YKoordS := MaskEditY.Text;
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
  if GeraetS <> 'Plotter' then
  begin
    RmaxS := '(max. 100mm)';
    Rmax  := 10.0;
    Xmax := 29.2 - Rmax;
    Ymax := 20.5 - Rmax;
    Typ := mtError;
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
      begin                    {X-Koordinate zu groß}
        MaskEditX.Clear;
        MaskEditX.SetFocus;
        exit;
      end;
    end;
    if YKoord > Ymax then
    begin
       if DlgMessage (Typ, Tx(37), Tx(310)+' max. '
         +FloattoStr(Ymax),3) = 4 then
      begin                  {Y-Koordinate zu groß}
        MaskEditY.Clear;
        MaskEditY.SetFocus;
        exit;
      end;
    end;
  end;
  Kreuz := true;
 {Beginn des Plottens}
  if GeraetS <> 'Plotter' then
  begin
    Plotter (Canvas, SaveDialog1);
    Farben (Canvas, PeriFarbe);
    HPPeriph (Canvas, Kreuz);
    Farben (Canvas, DatenFarbe);
    Plot1 (Canvas);
    Aa := AziSchwerp * Bo;
    Ff := FalSchwerp * Bo;
    if Gefuegetyp = 2 then
    begin
      Aa := Aa + Pi;
      Ff := Pi/2 - Ff;
    end;
    Farben (Canvas, EigenFarbe);
    Hpkoordin (Aa, Ff, X, Y);
    Hppunkt (Canvas, X,Y,'S');
    for i := 1 to 3 do
    begin
      Az := EigenAzi[i] * Bo;
      Fa := EigenFal[i] * Bo;
      ZS := chr(48 + i);
      Hpkoordin (Az,Fa,X,Y);
      Hppunkt (Canvas, X,Y,ZS);
    end;
    if Oeffnung > Vertrauen then
    begin
      if Vertrauen > 0 then
      begin
        Ow := Vertrauen * Bo;
        Farben (Canvas, VertrauFarbe);
        Hpkleinkreis (Canvas, Aa,Ff,Ow);
      end;
      if (Oeffnung > 0) and (ZirkOeff < 50) then
      begin
        Ow   := Oeffnung * Bo;
        Farben (Canvas, OeffnungFarbe);
        Hpkleinkreis (Canvas, Aa,Ff,Ow);
      end;
    end;
    if Zylinder >= 50 then
    begin
      Farben (Canvas, OeffnungFarbe);
      Hpteilkreis (Canvas, EigenAzi, EigenFal, Zirkoeff,
                   0, 8, Null, Null);
    end;
    XS := Inttostr(round((Xkoord-HPRadius) * 400));
    YS := IntToStr(round((YKoord-HpRadius) * 400));
    WS := FloatToStr(HPRadius/20);
    HS := FloatToStr(HPRadius/16);
    Farben (Canvas, PeriFarbe);
    Hpende (XS, YS, WS, HS);
  end;
  if GeraetS = 'Plotter' then
  begin
    with Image1.Canvas do
    begin
      Brush.Color := clWhite;
      Font.Color  := UmfangFarbe;
      Font.Size   := 10;
      Textout (10,650,Tx(436))
                 {Das Diagramm wird geplottet}
    end;
    SetMapMode (Printer.Handle, MM_Himetric);
    with Printer do
    begin
      BeginDoc;
      Canvas.Pen.Width := Strich;
      Plotter (Canvas, SaveDialog1);
      Farben (Canvas, UmfangFarbe);
      HPPeriph (Canvas, Kreuz);
      Farben (Canvas, DatenFarbe);
      Plot1 (Canvas);
      Aa := AziSchwerp * Bo;
      Ff := FalSchwerp * Bo;
      if Gefuegetyp = 2 then
      begin
        Aa := Aa + Pi;
        Ff := Pi/2 - Ff;
      end;
      Canvas.Brush.Color := clWhite;
      Canvas.Font.Color := EigenFarbe;
      Hpkoordin (Aa, Ff, X, Y);
      Hppunkt (Canvas, X,Y,'S');
      for i := 1 to 3 do
      begin
        Az := EigenAzi[i] * Bo;
        Fa := EigenFal[i] * Bo;
        ZS := chr(48 + i);
        Hpkoordin (Az,Fa,X,Y);
        Hppunkt (Canvas, X,Y,ZS);
      end;
      if Oeffnung > Vertrauen then
      begin
        if Vertrauen > 0 then
        begin
          Ow := Vertrauen * Bo;
          Farben (Canvas, VertrauFarbe);
          Hpkleinkreis (Canvas, Aa,Ff,Ow);
        end;
        if (Oeffnung > 0) and (ZirkOeff < 50) then
        begin
          Ow   := Oeffnung * Bo;
          Farben (Canvas, OeffnungFarbe);
          Hpkleinkreis (Canvas, Aa,Ff,Ow);
        end;
      end;
      if Zylinder >= 50 then
      begin
        Farben (Canvas, OeffnungFarbe);
        Hpteilkreis (Canvas, EigenAzi, EigenFal, Zirkoeff,
                     0, 8, Null, Null);
      end;
      if DemoB then
      begin
        Xd := round((Xkoord-HpRadius)*100*Faktor);
        Yd := round((Ykoord+2*HpRadius)*100*Faktor);
        Groesse := round(HpRadius*2);
        Canvas.Brush.Color := clWhite;
        Canvas.Font.Size   := Groesse;
        Canvas.Font.Color  := clBlack;
        Canvas.Textout (Xd, Yd, 'Demo-Version');
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

procedure TForm21.ButtonPlotEndeClick(Sender: TObject);
begin
  GroupBoxPlotten.Visible := false;
  PanelDaten.Visible      := true;
end;

procedure TForm21.Hilfe1Click(Sender: TObject);
var
  DateiS : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\21Statistik-plot.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\21Statistics-plot.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm21.SpeedHilfeClick(Sender: TObject);
begin
  Hilfe1Click(Sender);
end;

procedure TForm21.Druckereinrichten1Click(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TForm21.drucken1Click(Sender: TObject);
var
  Drucktext : TextFile;
  i         : byte;
begin
  if Manuell then Datnam (DateiNameS[0], ExtensionS);
  Titel8 ('8', 0, DateiNameS, AziFeld, FalFeld, ZahlGlob);
  AssignPrn (Drucktext);
  rewrite (Drucktext);
  with Printer.Canvas.Font do
  begin
    Name  := 'Courier';
    Size  := 14;
    Pitch := fpFixed;
    writeln (Drucktext);
    writeln (Drucktext);
    writeln (Drucktext, SpaceS(10),Tx(893),' '+IntToStr(ZahlGlob));
    writeln (Drucktext, SpaceS(10),Tx(894),' '+ RegS+'%');  {Regelungsgrad}
    writeln (Drucktext, SpaceS(10),Tx(895),' '+KonzS);      {Konzentrations-Parameter}
    writeln (Drucktext, SpaceS(10),Tx(896),' '+VerS+'°');   {V44rtrauenskegel}
    writeln (Drucktext, SpaceS(10),Tx(897),' '+OeffnS+'°'); {sphärischer Öffnungsgrad}
    writeln (Drucktext, SpaceS(10),Tx(898),' '+IntToStr(AziSchwerp)+'/'
             +IntToStr(FalSchwerp));             {Schwerpunktvektor}
    writeln (Drucktext);
    writeln (Drucktext, SpaceS(10),Tx(899));  {Eigenwerte    Eigenvektoren}
    for i := 1 to 3 do
    begin
      EigenAziS[i] := RightS('000'+EigenAziS[i],3);
      EigenFalS[i] := RightS( '00'+EigenFalS[i],2);
    end;
    writeln (Drucktext, SpaceS(10),'1.) ',EigenwS[1],SpaceS(11),
                        EigenAziS[1]+'/'+EigenFalS[1]); {1.Eigenwert, Vektor}
    writeln (Drucktext, SpaceS(10),'2.) ',EigenwS[2],SpaceS(11),
                        EigenAziS[2]+'/'+EigenFalS[2]); {2.Eigenwert, Vektor}
    writeln (Drucktext, SpaceS(10),'3.) ',EigenwS[3],SpaceS(11),
                        EigenAziS[3]+'/'+EigenFalS[3]); {3.Eigenwert, Vektor}
    writeln (Drucktext, SpaceS(14),'-----');
    writeln (Drucktext, SpaceS(13),' ',SummeEigenS);
    writeln (Drucktext);
    writeln (Drucktext, SpaceS(10),Tx(900),' ',IntToStr (Zylinder)+'%');
                                                     {Zylindrizität}
    writeln (Drucktext, SpaceS(10),Tx(901),' ',IntToStr (ZirkOeff)+'°');
                                                     {zirkularer Öffnungsgrad}
    writeln (Drucktext);
    writeln (Drucktext, SpaceS(10),ProbeS);
  end;
  closeFile (Drucktext);
end;

procedure TForm21.SpeedDruckeListeClick(Sender: TObject);
begin
  drucken1Click(Sender);
end;

procedure TForm21.DruckereinrichtenClick(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TForm21.SpeedEinrichtenClick(Sender: TObject);
begin
  DruckerEinrichtenClick(Sender);
end;

procedure TForm21.drucken2Click(Sender: TObject);
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
  GroupBoxDrucken.Visible      := true;
  PanelUnterschrift.Visible    := true;
  MaskEditLaenge.EditMask      := '99;0; ';
  MaskEditLinks.EditMask       := '99;0; ';
  MaskEditOben.EditMask        := '99;0; ';
  MaskEditLaenge.Text          := InttoStr(BLaenge);
  MaskEditLinks.Text           := InttoStr(BLinks);
  MaskEditOBen.Text            := InttoStr(BOben);
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

procedure TForm21.SpeedDruckenClick(Sender: TObject);
begin
  drucken2Click(Sender);
end;

procedure TForm21.MaskEditLaengeChange(Sender: TObject);
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

procedure TForm21.MaskEditLinksChange(Sender: TObject);
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

procedure TForm21.MaskEditObenChange(Sender: TObject);
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

procedure TForm21.MaskEditUnterschriftKeyPress(Sender: TObject;
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

procedure TForm21.RadioButtonLinksClick(Sender: TObject);
begin
  BuendigS := 'Links';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    ButtonDrucken.Enabled := true;
end;

procedure TForm21.RadioButtonRechtsClick(Sender: TObject);
begin
  BuendigS := 'Rechts';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    ButtonDrucken.Enabled := true;
end;

procedure TForm21.RadioButtonZentriertClick(Sender: TObject);
begin
  BuendigS := 'Zentriert';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    ButtonDrucken.Enabled := true;
end;

procedure TForm21.ListBoxSchriftClick(Sender: TObject);
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

procedure TForm21.ButtonDruckenClick(Sender: TObject);
var
  Bitmap  : TBitmap;
  Fenster : TRect;
  LRand   : word;
  ORand   : word;
  PLaenge : word;
  Hoehe   : word;
  Anfang  : word;
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
  PanelUnterschrift.Visible    := false;
  RadioGroup.Visible           := false;
  RadioButtonLinks.Visible     := false;
  RadioButtonRechts.Visible    := false;
  RadioButtonzentriert.Visible := false;
end;

procedure TForm21.ButtonAbbrechenClick(Sender: TObject);
begin
  Paneldrucken.Visible         := false;
  RadioButtonlinks.Visible     := false;
  RadioButtonzentriert.Visible := false;
  RadioButtonrechts.Visible    := false;
  RadioGroup.Visible           := false;
  GroupBoxDrucken.Visible      := false;
  PanelUnterschrift.Visible    := false;
end;

procedure TForm21.TextSchreibenClick(Sender: TObject);
begin
  PanelText.Visible := true;
  MaskEditText.SetFocus;
  BText := true;
  MaskEditText.Clear;
  PanelPlazieren.Visible := false;
end;

procedure TForm21.SpeedTextClick(Sender: TObject);
begin
  TextschreibenClick(Sender);
end;

procedure TForm21.MaskEditTextKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(13) then
  begin
    TeS := MaskEditText.Text;
    PanelPlazieren.Visible := true;
  end;
end;

procedure TForm21.Image1MouseUp(Sender: TObject; Button: TMouseButton;
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

procedure TForm21.TrueckClick(Sender: TObject);
begin
  Image1.Canvas.Draw (0,0,TextBitmap[texti]);
  if texti >= 1 then
  begin
    TextBitmap[texti].free;
    Dec(texti);
  end;
  if texti = 0 then
  begin
    Trueck.Enabled := false;
    SpeedUnText.Enabled := false;
  end;  
end;

procedure TForm21.SpeedUnTextClick(Sender: TObject);
begin
  TrueckClick(Sender);
end;

procedure TForm21.stereografischClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  ProjektionS   := 'stereographic';
  KonfigZeileS[24] := '  Projection               :,stereographic';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm21.LambertClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  ProjektionS   := 'Lambert';
  KonfigZeileS[24] := '  Projection               :,Lambert';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm21.orthografischClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  ProjektionS   := 'orthographic';
  KonfigZeileS[24] := '  Projection               :,orthographic';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm21.KavraiskiiClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  ProjektionS   := 'Kavraiskii';
  KonfigZeileS[24] := '  Projection               :,Kavraiskii';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm21.SpeedLambertClick(Sender: TObject);
begin
  LambertClick(Sender);
end;

procedure TForm21.SpeedStereografischClick(Sender: TObject);
begin
  stereografischClick(Sender);
end;

procedure TForm21.SpeedOrthografischClick(Sender: TObject);
begin
  orthografischClick(Sender);
end;

procedure TForm21.SpeedKavraiskiiClick(Sender: TObject);
begin
  KavraiskiiClick(Sender);
end;

procedure TForm21.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm21.SpeedUntereHClick(Sender: TObject);
begin
  untereClick(Sender);
end;

procedure TForm21.SpeedObereHClick(Sender: TObject);
begin
  obereClick(Sender);
end;

procedure TForm21.SpeedFarbeClick(Sender: TObject);
begin
  FarbeDaten1Click(Sender);
end;

procedure TForm21.SpeedKopierenClick(Sender: TObject);
begin
  kopieren1Click(Sender);
end;

procedure TForm21.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
  begin
    if SpracheS = 'DEUTSCH' then HilfeS := 'Gefuege_Statistik.doc';
    if SpracheS = 'ENGLISH' then HilfeS := 'Fabric_Statistics.doc';
    ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
                 nil,nil,sw_normal);
end;

procedure TForm21.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm21.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

procedure TForm21.durchgezogenClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  LinienTyp     := psSolid;
  KonfigZeileS[10] := '  Line Style               :,Solid';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ListBoxStrich.Visible  := true;
  LabelStrich.Color      := HintFarbe;
  LabelStrich.Font.Color := UmfangFarbe;
  LabelStrich.Visible    := true;
end;

procedure TForm21.ListBoxStrichClick(Sender: TObject);
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

procedure TForm21.SpeedStrichClick(Sender: TObject);
begin
  durchgezogenClick(Sender);
end;

procedure TForm21.SpeedPFarbeClick(Sender: TObject);
begin
  PunktFarbeClick(Sender);
end;

procedure TForm21.SpeedUndoClick(Sender: TObject);
begin
  WerteLoeschenClick(Sender);
end;

procedure TForm21.Image1MouseDown(Sender: TObject; Button: TMouseButton;
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
  if BText then exit;
  if not Maus then exit;
  FalExt := 0;
  Bo := Pi / 180;
  Nullx := XMitte;
  NullY := YMitte;
  if ssLeft in Shift then
  begin
    if ssDouble in Shift then exit;
    KoordX := (X - NullX)*OU;
    KoordY := (NullY - Y)*OU;
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
      if GTypS = 'plane' then
      begin
        Azimut := (Azimut+180) mod 360;
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
  Apunkt := Azimut;
  Fpunkt := Fallen;
  if ssRight  in Shift then
  begin
    Maus := false;
    PanelKlick.Visible := false;
    PanelMess.Visible  := false;
  end;
end;

procedure TForm21.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
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
  Azimut := 0;
  Fallen := 0;
  Move   := true;
  if not Maus then exit;
  FalExt := 0;
  Bo := Pi / 180;
  Nullx := XMitte;
  NullY := YMitte;
  if ssDouble in Shift then exit;
  KoordX := (X - NullX)*OU;
  KoordY := (NullY - Y)*OU;
  Rho := sqrt(sqr(KoordX/Radius) + sqr(KoordY/Radius));
  if Rho <= 1.00 then
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
    if GtypS = 'plane'then
    begin
      Azimut := (Azimut + 180) mod 360;
      Fallen := 90-Fallen;
    end;
    AzimutS := IntToStr(Azimut);
    FallenS := IntToStr(Fallen);
    LabelMess.Caption := AzimutS+'/'+FallenS;
  end;
  if ssRight in Shift then
  begin
    Maus := false;
    PanelKlick.Visible := false;
    PanelMess.Visible  := false;
  end;
end;

procedure TForm21.DspeichernClick(Sender: TObject);
begin
  if CurrentFile <> '' then Speichern(CurrentFile,ZahlGlob,
    AziFeld,FalFeld)
  else DspeichernUnterClick(Sender);
end;

procedure TForm21.DspeichernUnterClick(Sender: TObject);
begin
  Erweiterung (ExtenS);
  SaveDialog1.DefaultExt := ExtenS;
  if ExtenS = 'LIN' then SaveDialog1.Filter := 'Linears (*.lin)|*.LIN';
  if ExtenS = 'PLA' then SaveDialog1.Filter := 'Planes (*.pla)|*.PLA';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    Speichern (CurrentFile, ZahlGlob, AziFeld, FalFeld);
  end;
end;

procedure TForm21.DatenpunkteClick(Sender: TObject);
begin
  WeiterB[21] := true;
  Application.CreateForm(TForm12, Form12);
  Form12.Show;
end;

procedure TForm21.SpeedPunkteClick(Sender: TObject);
begin
  DatenPunkteClick(Sender);
end;

procedure TForm21.IsolinienClick(Sender: TObject);
begin
  WeiterB[21] := true;
  Application.CreateForm(TForm23, Form23);
  Form23.Show;
end;

procedure TForm21.SpeedIsoClick(Sender: TObject);
begin
  IsolinienClick(Sender);
end;

procedure TForm21.MaximaClick(Sender: TObject);
begin
  WeiterB[21] := true;
  Application.CreateForm(TForm25, Form25);
  Form25.Show;
end;

procedure TForm21.SpeedMaximaClick(Sender: TObject);
begin
  MaximaClick(Sender);
end;

procedure TForm21.LagenkugelClick(Sender: TObject);
begin
  WeiterB[21] := true;
  Application.CreateForm(TForm37, Form37);
  Form37.Show;
end;

procedure TForm21.SpeedNetzClick(Sender: TObject);
begin
  LagenkugelClick(Sender);
end;

procedure TForm21.GrosskreiseClick(Sender: TObject);
begin
  WeiterB[21] := true;
  Application.CreateForm(TForm85, Form85);
  Form85.Show;
end;

procedure TForm21.SpeedGKreiseClick(Sender: TObject);
begin
  GrosskreiseClick(Sender);
end;

end.
