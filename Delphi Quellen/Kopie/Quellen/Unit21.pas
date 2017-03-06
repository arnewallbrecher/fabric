unit Unit21;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, ExtCtrls, Menus, Globvar, Basic,
  Kalkulat, Clipbrd, Plotten, Mask, HPPlot, Texte, ComCtrls,
  Buttons, Einausga, Drucken, Printers, Shellapi, Standard,
  GifImage, Bmp2Tiff, Jpeg, ExtDlgs, ReadTiff, ehsHelpRouter;

type
  TForm21 = class(TForm)
    Panel1          : TPanel;
      LabelDateien  : TLabel;
      ListBoxDateien: TListBox;

    Panel2               : TPanel;
      LabelAnzahl        : TLabel;
      LabelZahl          : TLabel;
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

    Panel3               : TPanel;
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

    Panel4              : TPanel;
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
      speichernunter1         : TMenuItem;
      ausZwischenablageholen1 : TMenuItem;
      ausDateiholen1          : TMenuItem;
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
    PanelPlotFile: TPanel;
      LabelGeraet  : TLabel;
    PanelSpeed: TPanel;
      SpeedHilfe   : TSpeedButton;
      SpeedDrucken : TSpeedButton;

    Labelg1 : TLabel;
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
        LabelRdrucken    : TLabel;
        MaskEditRdrucken : TMaskEdit;

      Panel11            : TPanel;
        LabelMitte       : TLabel;
        LabelXdrucken    : TLabel;
        MaskEditxdrucken : TMaskEdit;
        LabelYdrucken    : TLabel;
        MaskEditYdrucken : TMaskEdit;

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
    LabelPlotter: TLabel;
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
    SpeedPLT: TSpeedButton;
    SpeedDXF: TSpeedButton;
    SpeedPeripherie: TSpeedButton;
    SpeedDiagramm: TSpeedButton;
    SpeedRahmen: TSpeedButton;
    SpeedLiteratur: TSpeedButton;
    ImageNord: TImage;
    SpeedStrich: TSpeedButton;
    ListBoxStrich: TListBox;
    LabelStrich: TLabel;
    PunktAnzeigen: TMenuItem;
    PunktFarbe: TMenuItem;
    WertAnzeigen: TMenuItem;
    PanelKlick: TPanel;
    LabelKlick: TLabel;
    LabelFallrichtung: TLabel;
    LabelFallwinkel: TLabel;
    LabelWerte: TLabel;
    LabelPixel: TLabel;
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
    PunkteWeg: TMenuItem;
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
    SpeedEMF: TSpeedButton;
    SpeedHFarbe: TSpeedButton;
    SpeedBMP: TSpeedButton;
    SpeedGIF: TSpeedButton;
    SpeedTIF: TSpeedButton;
    SpeedJPG: TSpeedButton;
    SpeedWMF: TSpeedButton;
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
    SpeedHolEMF: TSpeedButton;
    Ploterstellen: TButton;
    ButtonDrucken: TButton;
    ButtonAbbrechen: TButton;

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
    procedure ausZwischenablageholen1Click(Sender: TObject);

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

    {Plotten}
    procedure HPPlotter1Click(Sender: TObject);

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
    procedure PunktFarbeClick(Sender: TObject);
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
    procedure WertAnzeigenClick(Sender: TObject);
    procedure SpeedPFarbeClick(Sender: TObject);
    procedure SpeedPanzeigenClick(Sender: TObject);
    procedure SpeedPunktiert1Click(Sender: TObject);
    procedure PunkteWegClick(Sender: TObject);
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
    procedure SpeedHolEMFClick(Sender: TObject);
    procedure PloterstellenClick(Sender: TObject);
    procedure ButtonDruckenClick(Sender: TObject);
    procedure ButtonAbbrechenClick(Sender: TObject);
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
  BHoeheSt      : word;

implementation
uses Unit9, Unit10, Unit11, Unit12, Unit20, Unit23, Unit25,
     Unit64, Unit85;
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
  setlength (AziFeld, MaxDaten);
  setlength (FalFeld, MaxDaten);
  WeiterB[21]                     := false;
  Form21.Caption                  := Tx(507);  {Fabric7: Berechnung und Plot}
  SpeedDrucken.Hint               := Hilf(203);
  Image1.Hint                     := Hilf(95);
  ListBoxDateien.Hint             := Hilf(82);
  Panel1.Hint                     := Hilf(82);
  LabelAnzahl.Hint                := Hilf(36);
  LabelZahl.Hint                  := Hilf(36);
  Panel4.Hint                     := Hilf(84);
  Panel3.Hint                     := Hilf(84);
  Panel2.Hint                     := Hilf(84);
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
  PanelPlotFile.Hint              := Hilf(277);
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
  SpeedPLT.Hint                   := Hilf(438);
  SpeedDXF.Hint                   := Hilf(439);
  SpeedPeripherie.Hint            := Hilf(440);
  SpeedDiagramm.Hint              := Hilf(441);
  SpeedRahmen.Hint                := Hilf(442);
  SpeedStrich.Hint                := Hilf(463);
  SpeedEinrichten.Hint            := Hilf(505);
  SpeedPunkte.Hint                := Hilf(506);
  SpeedIso.Hint                   := Hilf(507);
  SpeedMaxima.Hint                := Hilf(508);
  SpeedGKreise.Hint               := Hilf(511);
  SpeedPFarbe.Hint                := Hilf(523);
  SpeedPanzeigen.Hint             := Hilf(522);
  SpeedUndo.Hint                  := Hilf(545);
  SpeedBGroesse.Hint              := Hilf(583);
  SpeedTransparent.Hint           := Hilf(584);
  SpeedHFarbe.Hint                := Hilf(585);
  SpeedBMP.Hint                   := Hilf(586);
  SpeedGIF.Hint                   := Hilf(587);
  SpeedTIF.Hint                   := Hilf(588);
  SpeedJPG.Hint                   := Hilf(589);
  SpeedWMF.Hint                   := Hilf(590);
  SpeedEMF.Hint                   := Hilf(591);
  SpeedHolBMP.Hint                := Hilf(621);
  SpeedHolGIF.Hint                := Hilf(622);
  SpeedHolTIF.Hint                := Hilf(623);
  SpeedHolJPG.Hint                := Hilf(624);
  SpeedHolWMF.Hint                := Hilf(625);
  SpeedHolEMF.Hint                := Hilf(626);
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
  speichernunter1.Caption         := Tx(488);  {speichern &unter}
  ausZwischenablageholen1.Caption := Tx(489);  {aus &Zwischenablage holen}
  ausDateiholen1.Caption          := Tx(490);  {aus &Datei holen}
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
  LabelRadius.Caption             := Tx(299);  {Radius [cm]:}
  LabelMittelpunkt.Caption        := Tx(300);  {Mittelpunkt [cm]:}
  LabelX.Caption                  := Tx(687);  {X:}
  LabelY.Caption                  := Tx(688);  {Y:}
  Buttonzurueck.Caption           := Tx(30);
  Buttonbeenden.Caption           := Tx(53);
  Weiter.Caption                  := Tx(1341);
  if Gefuegetyp = 1 then
    Datenpunkte.Caption           := TX(1343);
  if Gefuegetyp = 2 then
    Datenpunkte.Caption           := Tx(1344);
  Grosskreise.Caption             := Tx(1345);
  Isolinien.Caption               := Tx(618);
  Maxima.Caption                  := Tx(579);
  Halbkugel.Enabled               := false;
  Projektion.Enabled              := false;
  Konfidenz1.Enabled              := false;
  PFarbe.Enabled                  := false;
  PunktAnzeigen.Enabled           := false;
  DarstellungDaten1.Enabled       := false;
  Linien1.Enabled                 := false;
  Grafik1.Enabled                 := false;
  Drucker1.Enabled                := false;
  Weiter.Enabled                  := false;
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
  MaskEditRadius.EditMask       := '999;0; ';
  MaskEditX.EditMask            := '999;0; ';
  MaskEditY.EditMask            := '999;0; ';
  MaskEditRadius.Text           := InttoStr(round(HpRadius*10));
  MaskEditX.Text                := InttoStr(round(XKoord*10));
  MaskEditY.Text                := InttoStr(round(YKoord*10));
  MaskEditRadius.Enabled        := false;
  MaskEditX.Enabled             := false;
  MaskEditY.Enabled             := false;
  kopieren1.Enabled             := false;
  speichern1.Enabled            := false;
  speichernunter1.Enabled       := false;
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
  LabelGeraet.Caption           := '';
  Paneldrucken.Visible          := false;
  RadioButtonlinks.Visible      := false;
  RadioButtonzentriert.Visible  := false;
  RadioButtonrechts.Visible     := false;
  RadioGroup.Visible            := false;
  GroupBoxDrucken.Visible       := false;
  PanelUnterschrift.Visible     := false;
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
  PanelPlotFile.Visible   := false;
  LabelGeraet.Caption     := TX(850);
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
  PunktAnzeigen.Caption     := Tx(1194);
  PunktFarbe.Caption        := Tx(275);
  WertAnzeigen.Caption      := Tx(1134);
  LabelKlick.Caption        := Tx(1137);
  LabelFallrichtung.Caption := Tx(1138);
  LabelFallwinkel.Caption   := Tx(1139);
  LabelBeenden.Caption      := Tx(1244); 
  if ObenUntenS = 'LOWER' then OU := 1;
  if ObenUntenS = 'UPPER' then OU := -1;
  Maus := false;
  SpeedGKreise.Enabled := false;
  SpeedPunkte.Enabled  := false;
  SpeedIso.Enabled     := false;
  SpeedMaxima.Enabled  := false;
  PunkteWeg.Caption    := Tx(1396);
  Ratio := Image1.Width/Image1.Height;
  MaskEditBBreite.EditMask := '99999;0; ';
  MaskEditBHoehe.EditMask  := '99999;0; ';
  LabelBBreite.Caption     := Tx(1440);
  LabelBHoehe.Caption      := Tx(1441);
  BGroesse.Caption         := Tx(1439);
  PanelGroesse.Visible     := false;
  HTransparent             := false;
  if WeiterF then
  begin
    ButtonStart.Visible   := false;
    ButtonBeenden.Visible := false;
    ButtonStartClick(Sender);
  end;  
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
  Rahmen        : TRect;
begin
  BHoeheSt := round(BBreiteSt/Ratio);
  if not ClipBoard.HasFormat(CF_Bitmap) then
  begin
    ausZwischenablageHolen1.Enabled := false;
    SpeedZwischenablage.Enabled     := false;
  end
  else
  begin
    ausZwischenablageHolen1.Enabled := true;
    SpeedZwischenablage.Enabled     := true;
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
  if EingabeS <> 'ExcelD' then
    for i := 0 to DateiZahl do
      ListboxDateien.Items.Add (DateiNameS[i])
  else ListBoxDateien.Items.Add(PfadS);
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
  ImageNord.Top    := 22;
  ImageNord.Left   := 424;
  ImageNord.Width  := 18;
  ImageNord.Height := 36;
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
      Zahlloeschen(Image1.Canvas);
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
  Image1.Canvas.Draw(Image1.Width div 2 - ImageNord.Width div 2,7,
                     ImageNord.Picture.Graphic);
  Halbkugel.Enabled         := true;
  Projektion.Enabled        := true;
  Konfidenz1.Enabled        := true;
  PFarbe.Enabled            := true;
  PunktAnzeigen.Enabled     := true;
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
  kopieren1.Enabled       := true;
  speichern1.Enabled      := true;
  speichernunter1.Enabled := true;
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
begin
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
      assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
    assignFile(Datei,DirectS+'\'+'Fabric.ini');
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

procedure TForm21.SpeedHFarbeClick(Sender: TObject);
begin
  HFarbeClick(Sender);
end;

procedure TForm21.speichernBMPClick(Sender: TObject);
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

procedure TForm21.SpeedBMPClick(Sender: TObject);
begin
  speichernBMPClick(Sender);
end;

procedure TForm21.speichernGIFClick(Sender: TObject);
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

procedure TForm21.SpeedGIFClick(Sender: TObject);
begin
  speichernGIFClick(Sender);
end;

procedure TForm21.speichernTIFClick(Sender: TObject);
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

procedure TForm21.SpeedTIFClick(Sender: TObject);
begin
  speichernTIFClick(Sender);
end;

procedure TForm21.speichernJPGClick(Sender: TObject);
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

procedure TForm21.SpeedJPGClick(Sender: TObject);
begin
  speichernJPGClick(Sender);
end;

procedure TForm21.speichernWMFClick(Sender: TObject);
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

procedure TForm21.SpeedWMFClick(Sender: TObject);
begin
  speichernEMFClick(Sender);
end;

procedure TForm21.speichernEMFClick(Sender: TObject);
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

procedure TForm21.SpeedEMFClick(Sender: TObject);
begin
  speichernEMFClick(Sender);
end;

procedure TForm21.speichernPLTClick(Sender: TObject);
var
  i      : byte;
  Datei  : Textfile;
begin
  GroupBoxPlotten.Visible  := true;
  PanelPlotFile.Visible    := true;
  FarbePeripherie1.Enabled := true;
  GeraetS                  := 'HPGL';
  KonfigZeileS[53] := 'Paper Plot                 :,HPGL';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  LabelPlotter.Caption := GeraetS;
end;

procedure TForm21.speichernDXFClick(Sender: TObject);
var
  i      : byte;
  Datei  : Textfile;
begin
  GroupBoxPlotten.Visible  := true;
  PanelPlotFile.Visible    := true;
  FarbePeripherie1.Enabled := true;
  GeraetS                  := 'DXF';
  KonfigZeileS[53] := 'Paper Plot                 :,DXF';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  LabelPlotter.Caption := GeraetS;
end;

procedure TForm21.speichernUBMPClick(Sender: TObject);
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

procedure TForm21.speichernUGIFClick(Sender: TObject);
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

procedure TForm21.speichernUTIFClick(Sender: TObject);
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

procedure TForm21.speichernUJPGClick(Sender: TObject);
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

procedure TForm21.speichernUWMFClick(Sender: TObject);
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

procedure TForm21.speichernUEMFClick(Sender: TObject);
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

procedure TForm21.ausZwischenablageholen1Click(Sender: TObject);
begin
  PanelProjektion.Visible   := true;
  FarbePeripherie1.Enabled  := false;
  FarbeDiagramm1.Enabled    := false;
  Hintergrund.Enabled       := false;
  HolZwischen := true;
  ButtonStartClick(Sender);
end;

procedure TForm21.holenBMPClick(Sender: TObject);
begin
  OpenDialog1.DefaultExt := 'Windows bitmap file (*.bmp)|*.bmp';
  OpenDialog1.Filter     := 'Windows bitmap file (*.bmp)|*.bmp';
  if OpenPictureDialog1.Execute then CurrentFile := OpenPictureDialog1.FileName
  else exit;
  HolPixS := 'BMP';
  ButtonStartClick(Sender);
end;

procedure TForm21.SpeedHolBMPClick(Sender: TObject);
begin
  holenBMPClick(Sender);
end;

procedure TForm21.holenGIFClick(Sender: TObject);
begin
  OpenDialog1.DefaultExt := 'Compuserve gif file (*.gif)|*.gif';
  OpenDialog1.Filter     := 'Compuserve gif file (*.gif)|*.gif';
  if OpenDialog1.Execute then CurrentFile := OpenDialog1.FileName
  else exit;
  HolPixS := 'GIF';
  ButtonStartClick(Sender);
end;

procedure TForm21.SpeedHolGIFClick(Sender: TObject);
begin
  holenGIFClick(Sender);
end;

procedure TForm21.holenTIFClick(Sender: TObject);
begin
  OpenDialog1.DefaultExt := 'Tagged image file format (*.tif)|*.tif';
  OpenDialog1.Filter     := 'Tagged image file format (*.tif)|*.tif';
  if OpenDialog1.Execute then CurrentFile := OpenDialog1.FileName
  else exit;
  HolPixS := 'TIF';
  ButtonStartClick(Sender);
end;

procedure TForm21.SpeedHolTIFClick(Sender: TObject);
begin
  holenTIFClick(Sender);
end;

procedure TForm21.holenJPGClick(Sender: TObject);
begin
  OpenPictureDialog1.DefaultExt := 'Jpeg file (*.jpg)|*.jpg';
  OpenPictureDialog1.Filter     := GraphicFilter(TJpegImage);
  if OpenPictureDialog1.Execute then CurrentFile := OpenPictureDialog1.FileName
  else exit;
  HolPixS := 'JPG';
  ButtonStartClick(Sender);
end;

procedure TForm21.SpeedHolJPGClick(Sender: TObject);
begin
  holenJPGClick(Sender);
end;

procedure TForm21.holenWMFClick(Sender: TObject);
begin
  OpenDialog1.DefaultExt := 'Windows metafile (*.WMF)|*.wmf';
  OpenDialog1.Filter     := 'Windows metafile (*.WMF)|*.wmf';
  if OpenDialog1.Execute then CurrentFile := OpenDialog1.FileName
  else exit;
  HolPixS := 'WMF';
  ButtonStartClick(Sender);
end;

procedure TForm21.SpeedHolWMFClick(Sender: TObject);
begin
  holenWMFClick(Sender);
end;

procedure TForm21.holenEMFClick(Sender: TObject);
begin
  OpenDialog1.DefaultExt := 'Enhanced windows metafile (*.EMF)|*.emf';
  OpenDialog1.Filter     := 'Enhanced windows metafile (*.EMF)|*.emf';
  if OpenDialog1.Execute then CurrentFile := OpenDialog1.FileName
  else exit;
  HolPixS := 'EMF';
  ButtonStartClick(Sender);
end;

procedure TForm21.SpeedHolEMFClick(Sender: TObject);
begin
  holenEMFClick(Sender);
end;

procedure TForm21.gestrichelt1Click(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  Strich    := 1;
  LinienTyp :=  psDash;
  KonfigZeileS[10] := '  Line Style              :,DASH';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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

procedure TForm21.keinPlot1Click(Sender: TObject);
var
  i      : byte;
  Datei  : Textfile;
begin
  GeraetS          := 'no';
  KonfigZeileS[53] := 'Paper Plot                 :,no';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  FarbePeripherie1.Enabled := false;
end;

procedure TForm21.HPPlotter1Click(Sender: TObject);
var
  i      : byte;
  Datei  : Textfile;
begin
  DiagrFarbe := clWhite;
  ButtonStartClick(Sender);
  PrinterSetupDialog1.execute;
  FarbePeripherie1.Enabled := true;
  GeraetS                  := 'Plotter';
  KonfigZeileS[53] := 'Paper Plot                 :,Plotter';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  GroupBoxPlotten.Visible := true;
  PanelPlotFile.Visible   := true;
  LabelPlotter.Caption    := GeraetS;
end;

procedure TForm21.SpeedPlotterClick(Sender: TObject);
begin
  HPPlotter1Click(Sender);
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
    XS := Inttostr(round((Xkoord-HPRadius/1.5) * 400));
    YS := IntToStr(round((YKoord-HpRadius/4) * 400));
    WS := FloatToStr(HPRadius/10);
    HS := FloatToStr(HPRadius/8);
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
        X := round(Xkoord*100*Faktor);
        Y := round(Ykoord*100*Faktor);
        Groesse := round(HpRadius*2);
        Canvas.Font.Size  := Groesse;
        Canvas.Font.Color := clBlack;
        Canvas.Textout (round(x-25*Groesse), round(y+100*Faktor),
                                  'Demo-Version');
      end;
      EndDoc;
    end;
  end;
  showmessage(Tx(435));
  GroupBoxPlotten.Visible := false;
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
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\gefu22p1.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\Fabric-plot.htm');
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
  RadioButtonlinks.Visible     := true;
  RadioButtonzentriert.Visible := true;
  RadioButtonrechts.Visible    := true;
  RadioGroup.Visible           := true;
  GroupBoxDrucken.Visible      := true;
  PanelUnterschrift.Visible    := true;
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

procedure TForm21.SpeedDruckenClick(Sender: TObject);
begin
  drucken2Click(Sender);
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
  GroupBoxDrucken.Visible      := false;
  PanelUnterschrift.Visible    := false;
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

procedure TForm21.stereografischClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  ProjektionS   := 'stereographic';
  KonfigZeileS[24] := '  Projection               :,stereographic';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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

procedure TForm21.SpeedZwischenablageClick(Sender: TObject);
begin
  AusZwischenablageHolen1Click(Sender);
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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

procedure TForm21.PunktFarbeClick(Sender: TObject);
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

procedure TForm21.SpeedPFarbeClick(Sender: TObject);
begin
  PunktFarbeClick(Sender);
end;

procedure TForm21.WertAnzeigenClick(Sender: TObject);
begin
  PanelKlick.Visible := true;
  Maus               := true;
end;

procedure TForm21.SpeedPanzeigenClick(Sender: TObject);
begin
  WertAnzeigenClick(Sender);
end;

procedure TForm21.PunkteWegClick(Sender: TObject);
begin
  ButtonStartClick(Sender);
end;

procedure TForm21.SpeedUndoClick(Sender: TObject);
begin
  PunkteWegClick(Sender);
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
  if ssRight  in Shift then
  begin
    Maus := false;
    PanelKlick.Visible := false;
  end;
end;

procedure TForm21.DspeichernClick(Sender: TObject);
begin
  if CurrentFile <> '' then Speichern(CurrentFile,Anzahl,
    AziFeld,FalFeld)
  else DspeichernUnterClick(Sender);
end;

procedure TForm21.DspeichernUnterClick(Sender: TObject);
begin
  Erweiterung (ExtenS);
  SaveDialog1.DefaultExt := ExtenS;
  SaveDialog1.Filter     := ExtenS;
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    Speichern (CurrentFile, Anzahl, AziFeld, FalFeld);
  end;         if CurrentFile <> '' then Speichern(CurrentFile,Anzahl,
    AziFeld,FalFeld)
  else DspeichernUnterClick(Sender);
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
