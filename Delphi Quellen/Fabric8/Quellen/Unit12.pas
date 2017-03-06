unit Unit12; {Plot von Daten, Grafik}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs,  ExtCtrls, Plotten, StdCtrls, Globvar,
  Menus, Basic, ClipBrd, HPPlot, Mask, Texte, ComCtrls,
  Buttons, Drucken, Printers, Einausga, Shellapi, Standard, Jpeg,
  ExtDlgs, Chart, GifImage, Bmp2Tiff, ReadTiff, ehsHelpRouter,
  PngImage, Grafik;

type
  TForm12 = class(TForm)
    Image1 : TImage;
    PanelDateien: TPanel;
    LabelDateien   : TLabel;
    ListBoxDateien : TListBox;

    Buttonzuruck  : TButton;
    ButtonStart   : TButton;
    Buttonbeenden : TButton;

    MainMenu1: TMainMenu;

    Projektionen1     : TMenuItem;
      Lambert1        : TMenuItem;
      stereografisch1 : TMenuItem;
      orthografisch1  : TMenuItem;
      Kavraiskii1     : TMenuItem;

    Darstellung1   : TMenuItem;

    Farbe1         : TMenuItem;

    Grafik1                 : TMenuItem;
    kopieren1               : TMenuItem;
    Bildspeichern: TMenuItem;

    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    FarbePeripherie1: TMenuItem;

    mitdemHPPlotterplotten1  : TMenuItem;
    Hilfe1    : TMenuItem;
    PanelSpeed: TPanel;
      SpeedHilfe   : TSpeedButton;
    SpeedDrucken: TSpeedButton;

    SymbolfrDatenpunkte1 : TMenuItem;
      Kreisoffen1        : TMenuItem;
      Kreisgefllt1       : TMenuItem;
      Dreieckoffen1      : TMenuItem;
      Dreieckgefllt1     : TMenuItem;
      Quadratoffen1      : TMenuItem;
      Quadratgefllt1     : TMenuItem;
      Rauteoffen1        : TMenuItem;
      Rautegefllt1       : TMenuItem;

    Linientyp1                : TMenuItem;
      durchgezogeneLinien1    : TMenuItem;
      gestrichelteLinien1     : TMenuItem;
      gepunkteteLinien1       : TMenuItem;
      strichpunktierteLinien1 : TMenuItem;

    LabelProjektion: TLabel;

    FarbeDiagramm1   : TMenuItem;
    Hintergrund: TMenuItem;

    FarbeRahmen     : TMenuItem;

    Panel5      : TPanel;

    Drucker1              : TMenuItem;
      Druckereinrichten1  : TMenuItem;
      drucken1            : TMenuItem;
      PrinterSetupDialog1 : TPrinterSetupDialog;
      PrintDialog1        : TPrintDialog;

    Paneldrucken     : TPanel;
    GroupBoxdrucken  : TGroupBox;
    LabelEcke: TLabel;
        LabelXdrucken    : TLabel;
        LabelYdrucken    : TLabel;
    MaskEditLinks: TMaskEdit;
    MaskEditOben: TMaskEdit;
        LabelUnterschrift    : TLabel;
        MaskEditUnterschrift : TMaskEdit;
        LabelSchrift         : TLabel;
        ListBoxSchrift       : TListBox;
        RadioGroup           : TRadioGroup;
    RadioLinks: TRadioButton;
    RadioZentriert: TRadioButton;
    RadioRechts: TRadioButton;
    Panel8           : TPanel;
    Panel11          : TPanel;
    Handbuch: TMenuItem;
    ColorDialog1: TColorDialog;
    Halbkugel: TMenuItem;
    untere: TMenuItem;
    obere: TMenuItem;
    SpeedHandbuch: TSpeedButton;
    SpeedObereH: TSpeedButton;
    SpeedUntereH: TSpeedButton;
    SpeedFarbe: TSpeedButton;
    SpeedKopieren: TSpeedButton;
    SpeedZwischenablage: TSpeedButton;
    Image2: TImage;
    SpeedDatei: TSpeedButton;
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
    SpeedDurchgezogen: TSpeedButton;
    SpeedGestrichelt: TSpeedButton;
    SpeedStrichPunkt: TSpeedButton;
    SpeedPunktiert: TSpeedButton;
    SpeedPlotter: TSpeedButton;
    SpeedPeripherie: TSpeedButton;
    SpeedDiagramm: TSpeedButton;
    SpeedRahmen: TSpeedButton;
    Literatur: TMenuItem;
    SpeedLiteratur: TSpeedButton;
    ImageNord: TImage;
    ListBoxStrich: TListBox;
    LabelStrich: TLabel;
    SpeedStrich: TSpeedButton;
    PolePlotten: TMenuItem;
    PoleJa: TMenuItem;
    PoleNein: TMenuItem;
    PunktAnzeigen: TMenuItem;
    PunktFarbe: TMenuItem;
    WertAnzeigen: TMenuItem;
    PanelKlick: TPanel;
    LabelKlick: TLabel;
    LabelFallrichtung: TLabel;
    LabelFallwinkel: TLabel;
    LabelWerte: TLabel;
    DatenSpeichern: TMenuItem;
    Dspeichern: TMenuItem;
    DspeichernUnter: TMenuItem;
    SpeedDspeichernUnter: TSpeedButton;
    LabelBeenden: TLabel;
    StatusBar: TStatusBar;
    SpeedEinrichten: TSpeedButton;
    Weiter: TMenuItem;
    Isolinien: TMenuItem;
    Statistik: TMenuItem;
    Submaxima: TMenuItem;
    SpeedIso: TSpeedButton;
    SpeedStatistik: TSpeedButton;
    SpeedMaxima: TSpeedButton;
    Grosskreise: TMenuItem;
    SpeedPolePlotten: TSpeedButton;
    SpeedPoleNichtPlotten: TSpeedButton;
    SpeedPunktFarbe: TSpeedButton;
    SpeedGKreise: TSpeedButton;
    PunkteWeg: TMenuItem;
    SpeedUndo: TSpeedButton;
    BGroesse: TMenuItem;
    PanelGroesse: TPanel;
    LabelBHoehe: TLabel;
    LabelBBreite: TLabel;
    MaskEditBBreite: TMaskEdit;
    MaskEditBHoehe: TMaskEdit;
    CheckBoxBild: TCheckBox;
    SavePictureDialog1: TSavePictureDialog;
    transparent: TMenuItem;
    FarbeH: TMenuItem;
    SpeedBGroesse: TSpeedButton;
    SpeedTransparent: TSpeedButton;
    SpeedHFarbe : TSpeedButton;
    OpenPictureDialog1: TOpenPictureDialog;
    ButtonDrucken: TButton;
    ButtonAbbrechen: TButton;
    KreisFarbe: TMenuItem;
    FarbePunkte: TMenuItem;
    KreisFuellung: TMenuItem;
    NichtFuellen: TMenuItem;
    SpeedKleinKreis: TSpeedButton;
    SpeedFuellung: TSpeedButton;
    SpeedNichtFuellen: TSpeedButton;
    Lagenkugel: TMenuItem;
    SpeedNetz: TSpeedButton;
    Linear: TMenuItem;
    Flaeche: TMenuItem;
    Gkreis: TMenuItem;
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
    ButtonHok: TButton;
    ButtonSMinus: TButton;
    ButtonSPlus: TButton;
    PanelMess: TPanel;
    Labelaktuell: TLabel;
    LabelMess: TLabel;
    SpeedFanzeigen: TSpeedButton;
    SpeedGKreis: TSpeedButton;
    SpeedLanzeigen: TSpeedButton;
    GroupBoxPlotten: TGroupBox;
    Panel2: TPanel;
    LabelRadius: TLabel;
    MaskEditRadius: TMaskEdit;
    Panel4: TPanel;
    LabelMittelpunkt: TLabel;
    LabelX: TLabel;
    LabelY: TLabel;
    MaskEditX: TMaskEdit;
    MaskEditY: TMaskEdit;
    Ploterstellen: TButton;
    PanelDaten: TPanel;
    ListBoxDaten: TListBox;
    LabelDaten: TLabel;
    LabelAnzahl1: TLabel;
    LabelZahl2: TLabel;
    PanelKaliber: TPanel;
    LabelBrE: TLabel;
    LabelBrD: TLabel;
    MaskEditBrE: TMaskEdit;
    MaskEditBrD: TMaskEdit;
    DEinrichten: TMenuItem;
    Drucken: TMenuItem;
    Calibrieren : TMenuItem;
    LabelCalib: TLabel;
    LabelCalib2: TLabel;
    LabelCalib3: TLabel;
    LabelCalib4: TLabel;
    LabelCalib5: TLabel;
    LabelCalib6: TLabel;
    ButtonCalibEnde: TButton;
    SpeedCalib: TSpeedButton;
    ButtonPlotEnde: TButton;
    PanelLoad: TPanel;
    ListBoxLoad: TListBox;
    ButtonLabbrechen: TButton;
    PanelSpeichern: TPanel;
    ListBoxSpeichern: TListBox;
    ButtonSabbrechen: TButton;
    DHinzufuegen: TMenuItem;
    AusZwischenablage: TMenuItem;
    ausDatei: TMenuItem;
    Rueckgaengig: TMenuItem;
    SpeedRueck: TSpeedButton;
    Zoom: TMenuItem;
    SpeedZoom: TSpeedButton;
    Text: TMenuItem;
    Textschreiben: TMenuItem;
    PanelText: TPanel;
    MaskEditText: TMaskEdit;
    Trueck: TMenuItem;
    LabelText: TLabel;
    LabelReturn: TLabel;
    PanelPlazieren: TPanel;
    LabelPlazieren: TLabel;
    SpeedText: TSpeedButton;
    SpeedUnText: TSpeedButton;
    LabelLdrucken: TLabel;
    MaskEditLaenge: TMaskEdit;

    procedure FormActivate(Sender: TObject);
    procedure ButtonzuruckClick(Sender: TObject);
    procedure ButtonStartClick(Sender: TObject);
    procedure ButtonbeendenClick(Sender: TObject);

    {Projektion}
    procedure Lambert1Click(Sender: TObject);
    procedure stereografisch1Click(Sender: TObject);

    {Pole plotten}
    procedure Kreisoffen1Click(Sender: TObject);
    procedure Kreisgefllt1Click(Sender: TObject);
    procedure Dreieckoffen1Click(Sender: TObject);
    procedure Dreieckgefllt1Click(Sender: TObject);
    procedure Quadratoffen1Click(Sender: TObject);
    procedure Quadratgefllt1Click(Sender: TObject);
    procedure Rauteoffen1Click(Sender: TObject);
    procedure Rautegefllt1Click(Sender: TObject);

    {Farbe}
    procedure KreisFarbeClick(Sender: TObject);

    {Grafik}
    procedure kopieren1Click(Sender: TObject);

    {Linie}
    procedure durchgezogeneLinien1Click(Sender: TObject);
    procedure gestrichelteLinien1Click(Sender: TObject);
    procedure gepunkteteLinien1Click(Sender: TObject);
    procedure strichpunktierteLinien1Click(Sender: TObject);

    {Farben}
    procedure FarbePeripherie1Click(Sender: TObject);
    procedure FarbeDiagramm1Click(Sender: TObject);
    procedure FarbeRahmenClick(Sender: TObject);

    procedure Hilfe1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ShowHint(Sender: TObject);
    procedure SpeedHilfeClick(Sender: TObject);
    procedure orthografisch1Click(Sender: TObject);
    procedure Kavraiskii1Click(Sender: TObject);

    {Drucker}
    procedure Druckereinrichten1Click(Sender: TObject);
    procedure drucken1Click(Sender: TObject);
    procedure SpeedDruckenClick(Sender: TObject);
    procedure ListBoxSchriftClick(Sender: TObject);
    procedure RadioLinksClick(Sender: TObject);
    procedure RadioZentriertClick(Sender: TObject);
    procedure RadioRechtsClick(Sender: TObject);
    procedure MaskEditUnterschriftKeyPress(Sender: TObject; var Key: Char);
    procedure HandbuchClick(Sender: TObject);
    procedure untereClick(Sender: TObject);
    procedure obereClick(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure SpeedObereHClick(Sender: TObject);
    procedure SpeedUntereHClick(Sender: TObject);
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
    procedure SpeedDurchgezogenClick(Sender: TObject);
    procedure SpeedGestricheltClick(Sender: TObject);
    procedure SpeedStrichPunktClick(Sender: TObject);
    procedure SpeedPunktiertClick(Sender: TObject);
    procedure SpeedPlotterClick(Sender: TObject);
    procedure SpeedPeripherieClick(Sender: TObject);
    procedure SpeedDiagrammClick(Sender: TObject);
    procedure SpeedRahmenClick(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
    procedure SpeedLiteraturClick(Sender: TObject);
    procedure ListBoxStrichClick(Sender: TObject);
    procedure SpeedStrichClick(Sender: TObject);
    procedure PoleJaClick(Sender: TObject);
    procedure PoleNeinClick(Sender: TObject);
    procedure PunktFarbeClick(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DspeichernClick(Sender: TObject);
    procedure DspeichernUnterClick(Sender: TObject);
    procedure SpeedDspeichernUnterClick(Sender: TObject);
    procedure SpeedEinrichtenClick(Sender: TObject);
    procedure IsolinienClick(Sender: TObject);
    procedure StatistikClick(Sender: TObject);
    procedure SubmaximaClick(Sender: TObject);
    procedure SpeedIsoClick(Sender: TObject);
    procedure SpeedStatistikClick(Sender: TObject);
    procedure SpeedMaximaClick(Sender: TObject);
    procedure GrosskreiseClick(Sender: TObject);
    procedure SpeedGKreiseClick(Sender: TObject);
    procedure SpeedPolePlottenClick(Sender: TObject);
    procedure SpeedPoleNichtPlottenClick(Sender: TObject);
    procedure SpeedPunktFarbeClick(Sender: TObject);
    procedure PunkteWegClick(Sender: TObject);
    procedure SpeedUndoClick(Sender: TObject);
    procedure BGroesseClick(Sender: TObject);
    procedure MaskEditBBreiteKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditBHoeheKeyPress(Sender: TObject; var Key: Char);
    procedure CheckBoxBildClick(Sender: TObject);
    procedure transparentClick(Sender: TObject);
    procedure FarbeHClick(Sender: TObject);
    procedure SpeedBGroesseClick(Sender: TObject);
    procedure SpeedTransparentClick(Sender: TObject);
    procedure SpeedHFarbeClick(Sender: TObject);
    procedure speichernPLTClick(Sender: TObject);
    procedure speichernDXFClick(Sender: TObject);
    procedure PloterstellenClick(Sender: TObject);
    procedure ButtonDruckenClick(Sender: TObject);
    procedure ButtonAbbrechenClick(Sender: TObject);
    procedure FarbePunkteClick(Sender: TObject);
    procedure KreisFuellungClick(Sender: TObject);
    procedure NichtFuellenClick(Sender: TObject);
    procedure SpeedKleinKreisClick(Sender: TObject);
    procedure SpeedNichtFuellenClick(Sender: TObject);
    procedure LagenkugelClick(Sender: TObject);
    procedure SpeedNetzClick(Sender: TObject);
    procedure LinearClick(Sender: TObject);
    procedure FlaecheClick(Sender: TObject);
    procedure GkreisClick(Sender: TObject);
    procedure BildspeichernClick(Sender: TObject);
    procedure ListBoxSpeichernClick(Sender: TObject);
    procedure ListBoxLoadClick(Sender: TObject);
    procedure SpeedSpeichernClick(Sender: TObject);
    procedure SpeedLoadClick(Sender: TObject);
    procedure FontClick(Sender: TObject);
    procedure SpeedFontClick(Sender: TObject);
    procedure ButtonSPlusClick(Sender: TObject);
    procedure ButtonSMinusClick(Sender: TObject);
    procedure ButtonHokClick(Sender: TObject);
    procedure ButtonWplusClick(Sender: TObject);
    procedure ButtonWMinusClick(Sender: TObject);
    procedure ButtonNPlusClick(Sender: TObject);
    procedure ButtonNMinusClick(Sender: TObject);
    procedure ButtonEPlusClick(Sender: TObject);
    procedure ButtonEMinusClick(Sender: TObject);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SpeedLanzeigenClick(Sender: TObject);
    procedure SpeedFanzeigenClick(Sender: TObject);
    procedure SpeedGKreisClick(Sender: TObject);
    procedure DEinrichtenClick(Sender: TObject);
    procedure CalibrierenClick(Sender: TObject);
    procedure DruckenClick(Sender: TObject);
    procedure MaskEditBrEKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditBrDKeyPress(Sender: TObject; var Key: Char);
    procedure ButtonCalibEndeClick(Sender: TObject);
    procedure SpeedCalibClick(Sender: TObject);
    procedure ButtonPlotEndeClick(Sender: TObject);
    procedure SchliessenClick(Sender: TObject);
    procedure ButtonLabbrechenClick(Sender: TObject);
    procedure ButtonSabbrechenClick(Sender: TObject);
    procedure AusZwischenablageClick(Sender: TObject);
    procedure ausDateiClick(Sender: TObject);
    procedure RueckgaengigClick(Sender: TObject);
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
    procedure MaskEditLaengeChange(Sender: TObject);
    procedure MaskEditLinksChange(Sender: TObject);
    procedure MaskEditObenChange(Sender: TObject);
  end;

var
  Form12       : TForm12;
  Xp, Yp       : word;
  Bitmap       : TBitmap;
  FBild        : TBitmap;
  GBild        : TGifImage;
  HolPixS      : string;
  HolZwischen  : boolean;
  Holalle      : boolean;
  CurrentFile  : string;
  PlotDateiS   : string;
  PolPlot      : boolean;
  Schrift      : byte;
  BuendigS     : string;
  Gedrueckt    : array [1..3] of boolean;
  TextS        : string;
  Maus         : boolean;
  OU           : shortint;
  Ratio        : real;
  GtypS        : string;
  Apunkt       : word;
  Fpunkt       : word;
  DNameS       : string;
  Bild         : TBitmap;
  SPlus,WPlus  : integer;
  NPlus,EPlus  : integer;
  PlusEin      : boolean;
  Move         : boolean;
  BildImage1   : TBitmap;
  Ebreite      : word;
  Dbreite      : word;
  FaktorAlt    : real;
  DBitmap      : TBitmap;
  Zwischen     : boolean;
  TeS          : string;
  BText        : boolean;
  TextBitmap   : array[1..10] of TBitmap;
  texti        : byte;
  Links        : word;
  Laenge       : word;

implementation
uses Unit9, Unit10, Unit11, Unit13, Unit14, Unit64,
     Unit21, Unit23, Unit25, Unit85, Unit89, Unit37;
{$R *.DFM}

procedure TForm12.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm12.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm12.FormActivate(Sender: TObject);
var
  i : byte;
begin
  Left   := LeftDiag + 2*ULap;
  Top    := TopDiag + 2*Ulap;
  Width  := WidDiag;
  Height := HeiDiag;
  setlength (AziFeld, MaxDaten);
  setlength (FalFeld, MaxDaten);
  if Programm = 5 then
    setlength (WinkelFeld, MaxDaten);
  WeiterB[12] := false;
  Image1.Hint                      := Hilf(56) + Hilf(57);
  SpeedDrucken.Hint                := Hilf(309);
  ListBoxDateien.Hint              := Hilf(32);
  LabelDateien.Hint                := Hilf(32);
  GroupBoxPlotten.Hint             := Hilf(58) + Hilf(59);
  ButtonStart.Hint                 := Hilf(37);
  Buttonzuruck.Hint                := Hilf(52);
  Buttonbeenden.Hint               := Hilf(30);
  Ploterstellen.Hint               := Hilf(60);
  Panel2.Hint                      := Hilf(61);
  Panel4.Hint                      := Hilf(62);
  MaskEditX.Hint                   := Hilf(63);
  MaskEditY.Hint                   := Hilf(64);
  SpeedHilfe.Hint                  := Hilf(210);
  Panel5.Hint                      := Hilf(276);
  SpeedHandbuch.Hint               := Hilf(274);
  SpeedUntereH.Hint                := Hilf(364);
  SpeedObereH.Hint                 := Hilf(363);
  SpeedFarbe.Hint                  := Hilf(365);
  SpeedKopieren.Hint               := Hilf(262);
  SpeedZwischenablage.Hint         := Hilf(246);
  SpeedDatei.Hint                  := Hilf(368);
  SpeedDrucken.Hint                := Hilf(309);
  SpeedKreisO.Hint                 := Hilf(371);
  SpeedKreisG.Hint                 := Hilf(372);
  SpeedDreieckO.Hint               := Hilf(373);
  SpeedDreieckG.Hint               := Hilf(374);
  SpeedQuadratO.Hint               := Hilf(375);
  SpeedQuadratG.Hint               := Hilf(376);
  SpeedRauteO.Hint                 := Hilf(377);
  SpeedRauteG.Hint                 := Hilf(378);
  SpeedLambert.Hint                := Hilf(387);
  SpeedStereografisch.Hint         := Hilf(388);
  SpeedOrthografisch.Hint          := Hilf(389);
  SpeedKavraiskii.Hint             := Hilf(390);
  SpeedDurchgezogen.Hint           := Hilf(391);
  SpeedGestrichelt.Hint            := Hilf(392);
  SpeedStrichPunkt.Hint            := Hilf(393);
  SpeedPunktiert.Hint              := Hilf(394);
  SpeedPlotter.Hint                := Hilf(437);
  SpeedPeripherie.Hint             := Hilf(440);
  SpeedDiagramm.Hint               := Hilf(441);
  SpeedRahmen.Hint                 := Hilf(442);
  SpeedStrich.Hint                 := Hilf(463);
  SpeedDspeichernUnter.Hint        := Hilf(204);
  SpeedEinrichten.Hint             := Hilf(505);
  SpeedStatistik.Hint              := Hilf(509);
  SpeedIso.Hint                    := Hilf(507);
  SpeedMaxima.Hint                 := Hilf(508);
  SpeedNetz.Hint                   := Hilf(677);
  SpeedPolePlotten.Hint            := Hilf(524);
  SpeedPoleNichtPlotten.Hint       := Hilf(525);
  SpeedPunktFarbe.Hint             := Hilf(523);
  SpeedGKreise.Hint                := Hilf(511);
  SpeedUndo.Hint                   := Hilf(545);
  SpeedBGroesse.Hint               := Hilf(583);
  SpeedTransparent.Hint            := Hilf(584);
  SpeedHFarbe.Hint                 := Hilf(443);
  SpeedKleinKreis.Hint             := Hilf(667);
  SpeedFuellung.Hint               := Hilf(668);
  SpeedNichtFuellen.Hint           := Hilf(669);
  SpeedSpeichern.Hint              := Hilf(264);
  SpeedLoad.Hint                   := Hilf(368);
  SpeedFont.Hint                   := Hilf(686);
  SpeedLanzeigen.Hint              := Hilf(714);
  SpeedFanzeigen.Hint              := Hilf(715);
  SpeedGKreis.Hint                 := Hilf(716);
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
  HolPixS                          := '';
  Form12.Caption                   := Tx(257); {Fabric8: Plotten, Grafik}
  Projektionen1.Caption            := Tx(258);
  Lambert1.Caption                 := Tx(259);
  stereografisch1.Caption          := Tx(260);
  orthografisch1.Caption           := Tx(1202);
  Darstellung1.Caption             := Tx(261);
  Kreisoffen1.Caption              := Tx(262);
  Kreisgefllt1.Caption             := Tx(263);
  Dreieckoffen1.Caption            := Tx(266);
  Dreieckgefllt1.Caption           := Tx(267);
  Quadratoffen1.Caption            := Tx(264);
  Quadratgefllt1.Caption           := Tx(265);
  Rauteoffen1.Caption              := Tx(268);
  Rautegefllt1.Caption             := Tx(269);
  Poleplotten.Caption              := Tx(270);
  durchgezogeneLinien1.Caption     := Tx(271);
  gestrichelteLinien1.Caption      := Tx(272);
  gepunkteteLinien1.Caption        := Tx(273);
  strichpunktierteLinien1.Caption  := Tx(274);
  Farbe1.Caption                   := Tx(275);
  Grafik1.Caption                  := Tx(281);
  kopieren1.Caption                := Tx(282);
  Bildspeichern.Caption            := Tx(284);
  mitdemHPPlotterplotten1.Caption  := Tx(288);
  Drucker1.Caption                 := Tx(1080);
  FarbePeripherie1.Caption         := Tx(498);
  Hintergrund.Caption              := Tx(1453);    {Hintergrund}
  FarbeH.Caption                   := Tx(275);
  FarbeDiagramm1.Caption           := Tx(860);
  LabelDateien.Caption             := Tx(136);
  LabelAnzahl1.Caption             := Tx(296);
  GroupBoxPlotten.Caption          := Tx(297);
  Ploterstellen.Caption            := Tx(298);     {Plot-Einstellungen ok?}
  LabelRadius.Caption              := Tx(299);
  LabelMittelpunkt.Caption         := Tx(300);
  LabelX.Caption                   := Tx(301);
  LabelY.Caption                   := Tx(302);
  Buttonzuruck.Caption             := Tx(30);
  Buttonbeenden.Caption            := Tx(53);
  SymbolfrDatenpunkte1.Caption     := Tx(846);
  Linientyp1.Caption               := Tx(847);
  PoleJa.Caption                   := Tx(655);
  PoleNein.Caption                 := Tx(654);
  DatenSpeichern.Caption           := Tx(86);
  Dspeichern.Caption               := Tx(87);
  DspeichernUnter.Caption          := Tx(88);
  Linear.Caption                   := Tx(1216);
  Flaeche.Caption                  := Tx(1217);
  Gkreis.Caption                   := Tx(1606);
  LabelDaten.Caption               := Tx(914);
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
  ButtonPlotEnde.Caption           := Tx(1682);
  Druckereinrichten1.Caption       := Tx(94);
  drucken1.Caption                 := Tx(93);
  FarbeRahmen.Caption              := Tx(892);
  Halbkugel.Caption                := Tx(1087);
  untere.Caption                   := Tx(1088);
  obere.Caption                    := Tx(1089);
  LabelBeenden.Caption             := Tx(1244);
  LabelProjektion.Caption          := '';
  GroupBoxPlotten.Caption          := '';
  Weiter.Caption                   := Tx(1341);
  Isolinien.Caption                := Tx(15);
  Statistik.Caption                := Tx(14);
  Submaxima.Caption                := Tx(16);
  Grosskreise.Caption              := TX(10);
  LabelBBreite.Caption             := Tx(1440);
  LabelBHoehe.Caption              := Tx(1441);
  LabelZahl2.Caption               := '';
  Labelaktuell.Caption             := Tx(1662);
  Hilfe1.Caption                   := Tx(162)+' (F1)';
  BGroesse.Caption                 := Tx(1439);
  FarbePunkte.Caption              := Tx(1588);
  KreisFarbe.Caption               := Tx(1589);
  KreisFuellung.Caption            := Tx(1590);
  NichtFuellen.Caption             := Tx(1591);
  ButtonCalibEnde.Caption          := Tx(1682);
  ButtonLabbrechen.Caption         := Tx(1682);
  ButtonSabbrechen.Caption         := Tx(1682);
  DHinzufuegen.Caption             := Tx(1685);
  ausZwischenablage.Caption        := Tx(1686);
  AusDatei.Caption                 := Tx(1687);
  Rueckgaengig.Caption             := Tx(1688);
  Textschreiben.Caption            := Tx(1699);
  LabelText.Caption                := Tx(1700);
  LabelReturn.Caption              := Tx(1701);
  LabelPlazieren.Caption           := Tx(1702);
  Trueck.Caption                   := Tx(1688);
  MaskEditRadius.EditMask          := '999;0; ';
  MaskEditX.EditMask               := '999;0; ';
  MaskEditY.EditMask               := '999;0; ';
  MaskEditBrE.EditMask             := '999;0; ';
  MaskEditBrD.EditMask             := '999;0; ';
  MaskEditBBreite.EditMask         := '99999;0; ';
  MaskEditBHoehe.EditMask          := '99999;0; ';
  MaskEditRadius.Text              := InttoStr(round(HpRadius*10));
  MaskEditX.Text                   := InttoStr(round(XKoord*10));
  MaskEditY.Text                   := InttoStr(round(YKoord*10));
  Grafik1.Enabled                  := false;
  PanelDateien.Visible             := false;
  PanelDaten.Visible               := false;
  LabelRadius .Enabled             := false;
  MaskEditRadius.Enabled           := false;
  LabelMittelpunkt.Enabled         := false;
  LabelX.Enabled                   := false;
  MaskEditX.Enabled                := false;
  LabelY.Enabled                   := false;
  MaskEditY.Enabled                := false;
  Projektionen1.Enabled            := false;
  Farbe1.Enabled                   := false;
  Darstellung1.Enabled             := false;
  Linientyp1.Enabled               := false;
  GKreis.Enabled                   := false;
  PanelKaliber.Visible             := false;
  Calib                            := false;
  PanelGroesse.Visible             := false;
  if Programm <> 5 then
  begin
    KreisFarbe.Enabled              := false;
    KreisFuellung.Enabled           := false;
    NichtFuellen.Enabled            := false;
    SpeedKleinKreis.Enabled         := false;
    SpeedFuellung.Enabled           := false;
    SpeedNichtFuellen.Enabled       := false;
    SpeedStrich.Enabled             := false;
    DurchgezogeneLinien1.Enabled    := false;
    GestrichelteLinien1.Enabled     := false;
    GepunkteteLinien1.Enabled       := false;
    StrichpunktierteLinien1.Enabled := false;
    PolePlotten.Enabled             := false;
    SpeedDurchgezogen.Enabled       := false;
    SpeedGestrichelt.Enabled        := false;
    SpeedStrichPunkt.Enabled        := false;
    SpeedPunktiert.Enabled          := false;
  end
  else
  begin
    Form12.Caption         := Tx(305); //Plotten von Kleinkreisen
    FarbePunkte.Enabled    := false;
    SpeedFarbe.Enabled     := false;
    Weiter.Enabled         := false;
    SpeedGKreise.Enabled   := false;
    SpeedIso.Enabled       := false;
    SpeedStatistik.Enabled := false;
    SpeedMaxima.Enabled    := false;
  end;
  MaskEditBrE.Enabled    := false;
  MaskEditBrD.Enabled    := false;
  Paneldrucken.Visible   := false;
  Radiolinks.Visible     := false;
  RadioZentriert.Visible := false;
  RadioRechts.Visible    := false;
  RadioGroup.Visible           := false;
  for i := 1 to 3 do Gedrueckt[i] := false;
  GroupBoxPlotten.Visible := false;
  Handbuch.Caption        := Tx(1055)+' (F2)';
  Literatur.Caption       := Tx(1183)+' (F5)';
  SpeedLiteratur.Hint     := Hilf(462);
  PanelSpeed.Visible      := false;
  ImageNord.Visible       := false;
  for i := 0 to 9 do ListboxStrich.Items.Add(IntToStr(i+1));
  ListBoxStrich.Visible     := false;
  LabelStrich.Visible       := false;
  LabelStrich.Caption       := Tx(1187);
  PanelKlick.Visible        := false;
  PunktAnzeigen.Caption     := Tx(1134);
  PunktFarbe.Caption        := Tx(275);
  WertAnzeigen.Caption      := Tx(1134);
  LabelKlick.Caption        := Tx(1137);
  LabelFallrichtung.Caption := Tx(1138);
  LabelFallwinkel.Caption   := Tx(1139);
  if ObenUntenS = 'LOWER' then OU := 1;
  if ObenUntenS = 'UPPER' then OU := -1;
  Maus := false;
  LabelWerte.Caption := Tx(1191);
  Halbkugel.Enabled      := false;
  Projektionen1.Enabled  := false;
  PolePlotten.Enabled    := false;
  Darstellung1.Enabled   := false;
  Farbe1.Enabled         := false;
  PunktAnzeigen.Enabled  := false;
  Font.Enabled           := false;
  Grafik1.Enabled        := false;
  DatenSpeichern.Enabled := false;
  Weiter.Enabled         := false;
  SpeedIso.Enabled       := false;
  SpeedStatistik.Enabled := false;
  SpeedMaxima.Enabled    := false;
  if (Gefuegetyp = 1) or (Gefuegetyp = 3) then
    Grosskreise.Enabled    := false;
  SpeedGKreise.Enabled   := false;
  Lagenkugel.Caption     := Tx(698);
  LabelWerte.Caption     := Tx(1394);
  PunkteWeg.Caption      := TX(1396);
  Font.Caption           := Tx(1621);
  Ratio                  := 660/650;
  HTransparent           := false;
  PanelDehnen.Visible    := false;
  SPlus                  := 0;
  WPlus                  := 0;
  NPlus                  := 0;
  EPlus                  := 0;
  if Programm = 5 then
  begin
    Grosskreise.Enabled := false;
    Isolinien.Enabled   := false;
    Statistik.Enabled   := false;
    Submaxima.Enabled   := false;
  end;
  for i := 1 to 9 do
    ListBoxSpeichern.Items.Add (Tx(1611+i));
  PanelSpeichern.Visible := false;
  for i := 1 to 7 do
    ListBoxLoad.Items.Add (Tx(1611+i));
  PanelLoad.Visible := false;
  BBreiteSt := Image1.Width;
  PanelMess.Visible := false;
  if WeiterF then
  begin
    ButtonStart.Visible   := false;
    ButtonBeenden.Visible := false;
    ButtonStartClick(Sender);
  end;
  Rueckgaengig.Enabled := false;
  SpeedRueck.Enabled   := false;
  Zwischen             := false;
  Zoom.Enabled         := false;
  SpeedZoom.Enabled    := false;
  PanelText.Visible    := false;
  BText                := false;
  texti                := 0;
  Trueck.Enabled       := false;
  SpeedUnText.Enabled  := false;
end;

procedure TForm12.ButtonzuruckClick(Sender: TObject);   {zurück}
var
  Flaeche : TRect;
begin
  Flaeche := Rect(0,0,Clientwidth,ClientHeight);
  Loeschen (Image1.Canvas, Flaeche);
  Loeschen (Image2.Canvas, Flaeche);
  Loeschen (ImageNord.Canvas, Flaeche);
  if WeiterF then
  begin
    ButtonStart.Visible     := true;
    ButtonBeenden.Visible   := true;
    Weiter.Enabled          := true;
    SpeedIso.Enabled        := true;
    SpeedStatistik.Enabled  := true;
    SpeedMaxima.Enabled     := true;
    SpeedNetz.Enabled       := true;
    ButtonStartClick(Sender);
  end;
  if not WeiterF then
  begin
    AziFeld := Nil;
    FalFeld := Nil;
    if Programm = 5 then WinkelFeld := Nil;
  end;
  Form12.Close;
  if EingabeS ='ExcelD' then Form64.Close;
end;

procedure TForm12.ButtonbeendenClick(Sender: TObject);     {beenden}
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
  Flaeche := Rect(0,0,Clientwidth,ClientHeight);
  Loeschen (Image1.Canvas, Flaeche);
  Loeschen (Image2.Canvas, Flaeche);
  Loeschen (ImageNord.Canvas, Flaeche);
  AziFeld  := Nil;
  FalFeld  := Nil;
  ListboxDateien.Clear;
  MaskEditRadius.Clear;
  MaskEditX.Clear;
  MaskEditY.Clear;
  Form12.Close;
  if EingabeS = 'ExcelD' then Form64.Close;
  if EingabeS = 'Festplatte' then
  begin
    if (Programm=3) or (Programm=4) then Form11.Close;
    if Programm = 5 then Form89.Close;
  end;
  if EingabeS = 'manuell' then
  begin
    if (Programm=3) or (Programm=4) then Form10.Close;
    if Programm = 5 then Form14.Close
  end;
  if (Programm = 3) or (Programm = 4) then Form9.Close;
  if Programm = 5 then
  begin
    WinkelFeld := Nil;
    Form13.Close;
  end;
  SetCurrentDir(DirectS);
  PlusEin := false;
end;

procedure TForm12.ButtonStartClick(Sender: TObject);       {Start}
var
  i, j     : word;
  Aa, Ff   : real;
  Oo       : real;
  Azimut   : word;
  Fall     : shortint;
  ProS     : string;
  Quadrat  : TRect;
  AzS, FaS : string;
  WiS      : string;
  BBild    : TBitmap;
  FBild    : TBitmap;
  JBild    : TJpegImage;
  GBild    : TGifImage;
  MetaFile : TMetaFile;
  BildPNG  : TPngObject;
  Rahmen1  : TRect;
  Rahmen2  : TRect;
  X, y     : real;
  Xp, Yp   : word;
  ImageNeu : TImage;
  NBild    : TBitmap;
  ZeileS   : string;

begin
  Maus               := false;
  GKreis.Enabled     := false;
  PanelMess.Visible  := false;
  PanelKlick.Visible := false;
  if ObenUntenS = 'LOWER' then OU := 1;
  if ObenUntenS = 'UPPER' then OU := -1;
  if not PlusEin then
  begin
    Bo := Pi/180;
    GroupBoxPlotten.Visible := false;
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
    PanelSpeed.Visible       := true;
    if Programm <> 5 then
    begin
      SpeedGKreise.Enabled     := true;
      SpeedIso.Enabled         := true;
      SpeedStatistik.Enabled   := true;
      SpeedMaxima.Enabled      := true;
    end;
    Projektionen1.Enabled    := true;
    Farbe1.Enabled           := true;
    Darstellung1.Enabled     := true;
    Grafik1.Enabled          := true;
    Font.Enabled             := true;
    LabelRadius.Enabled      := true;
    MaskEditRadius.Enabled   := true;
    LabelMittelpunkt.Enabled := true;
    LabelX.Enabled           := true;
    MaskEditX.Enabled        := true;
    LabelY.Enabled           := true;
    MaskEditY.Enabled        := true;
    if not WeiterF then
    begin
      Weiter.Enabled         := true;
    end;
    GroupBoxPlotten.Caption  := 'Plot:';
    if ProjektionS = 'Lambert' then ProS  := Tx(259);
    if ProjektionS = 'stereographic' then ProS := Tx(260);
    if ProjektionS = 'orthographic' then ProS := Tx(849);
    if ProjektionS = 'Kavraiskii' then ProS := 'Kavraiskii';
    LabelProjektion.Caption := Tx(651)+': '+ ProS;
    PanelDateien.Visible := true;
    PanelDaten.Visible   := true;
    ListBoxDateien.Clear;
    ListBoxDaten.Clear;
    for i := 1 to ZahlGlob do
    begin
      ZeileS := '  '+ RightS('000'+IntToStr(AziFeld[i]),3)
                +'/'+RightS('00'+IntToStr(FalFeld[i]),2);
      ListBoxDaten.Items.Add (ZeileS);
    end;
    if EingabeS = 'manuell' then PanelDateien.Visible := false;
    if EingabeS <> 'ExcelD' then
    begin
      for i := 0 to DateiZahl do
        ListboxDateien.Items.Add(DateiNameS[i]);
    end
    else ListBoxDateien.Items.Add(PfadS);
    LabelZahl2.Caption := IntToStr (ZahlGlob);
    ImageNord.Picture.LoadfromFile (DirectS+'\'+'NordPfeil.bmp');
    BBild := Tbitmap.Create;
    BBild.Width     := Image1.Width;
    BBild.Height    := Image1.Height;
    ImageNord.Top    := 3;
    ImageNord.Left   := 400;
    ImageNord.Width  := 18;
    ImageNord.Height := 36;
    Image1.Picture.Graphic := BBild;
    Xmitte := Image1.Width div 2;
    Ymitte := Image1.Height div 2 + ImYmitte;
    Radius := Image1.Width div 2 - ImRadius;
    Breite := Image1.Width;
    Hoehe  := Image1.Height;
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
        BBild := TBitmap.Create;
        try
          BBild.Assign(ClipBoard);
          Image1.Canvas.Draw(0,0, BBild);
        finally
          BBild.free;
        end;
        Zahlloeschen(Image1.Canvas);
      end
      else MessageDlg(Tx(306), mtInformation,[mbOK],0);
      Holzwischen := false;
    end;
  end //not PlusEin
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
  {Plotten der Daten}
  if Programm <> 5 then
  begin
    with Image1.Canvas do
    begin
      Pen.Color := DatenFarbe;
      Pen.Width := 1;
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
    if not WeiterF then
      Weiter.Enabled := true;
  end;
  {Kleinkreise plotten}
  if Programm = 5 then
  begin
    LabelDaten.Caption := Tx(319)+' '+Tx(320);
    with Image1.Canvas do
    begin
      Pen.Width   := Strich;
      Pen.Style   := Linientyp;
      Brush.Color := KleinFarbe;
      ListBoxDaten.Clear;
      for i := 1 to ZahlGlob do
      begin
        Aa := AziFeld[i] * Bo;
        Ff := FalFeld[i] * Bo;
        Oo := WinkelFeld[i] * Bo;
        Kleinkreis (Image1.Canvas, Aa, Ff, Oo, GrosskreisFarbe);
        AzS := RightS('000'+IntTostr(AziFeld[i]),3);
        FaS := RightS('00'+ IntToStr(FalFeld[i]),2);
        WiS := RightS('000'+ IntToStr(WinkelFeld[i]),3);
        ZeileS := '  '+AzS+'/'+FaS+'  '+WiS;
        ListBoxDaten.Items.Add(ZeileS);
        Koordinaten(Aa,Ff,x,y,Xp,Yp);
        FloodFill(Xp, Yp, DiagrFarbe, fsSurface);
        if WinkelFeld[i] > FalFeld[i] then
        begin
          Aa := Aa + Pi;
          Ff := 3*Bo;
          Koordinaten(Aa,Ff,x,y,Xp,Yp);
          FloodFill(Xp, Yp, DiagrFarbe, fsSurface);
        end;
      end;
    end;
  end;
  if Programm <> 5 then
    SymbolfrDatenpunkte1.Enabled   := true
  else Linientyp1.Enabled := true;
  if not HTransparent then
  begin
    with image2 do
    begin
      Quadrat := Rect (0,0, ClientWidth, ClientHeight);
      if ObenUntenS = 'LOWER' then UntereH(Canvas, Quadrat);
      if ObenUntenS = 'UPPER' then ObereH (Canvas, Quadrat);
    end;
    Image2.Visible    := false;
    Image1.Canvas.Draw(Image1.Width-Image2.width-5,
                       Image1.Height-Image2.Height-5,
                       Image2.picture.graphic);
  end;
  ImageNord.Visible := false;
  Image1.Canvas.Draw(Image1.Width div 2 - ImageNord.Width div 2,3,
                     ImageNord.Picture.Graphic);
  Halbkugel.Enabled      := true;
  Projektionen1.Enabled  := true;
  if Programm = 4 then
    PolePlotten.Enabled  := true;
  Darstellung1.Enabled   := true;
  Farbe1.Enabled         := true;
  PunktAnzeigen.Enabled  := true;
  Grafik1.Enabled        := true;
  DatenSpeichern.Enabled := true;
  if DemoB then DemoText (Image1.Canvas, 10,Image1.Height-40);
end;

procedure TForm12.untereClick(Sender: TObject);
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

procedure TForm12.obereClick(Sender: TObject);
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

procedure TForm12.Lambert1Click(Sender: TObject);
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
  if PolPlot then PoleJaClick(Sender);
end;

procedure TForm12.stereografisch1Click(Sender: TObject);
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
  if PolPlot then PoleJaClick(Sender);
end;

procedure TForm12.Kavraiskii1Click(Sender: TObject);
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
  if PolPlot then PoleJaClick(Sender);
end;

procedure TForm12.SpeedLambertClick(Sender: TObject);
begin
  Lambert1Click(Sender);
end;

procedure TForm12.SpeedStereografischClick(Sender: TObject);
begin
  stereografisch1Click(Sender);
end;

procedure TForm12.SpeedOrthografischClick(Sender: TObject);
begin
  orthografisch1Click(Sender);
end;

procedure TForm12.SpeedKavraiskiiClick(Sender: TObject);
begin
  Kavraiskii1Click(Sender);
end;

procedure TForm12.orthografisch1Click(Sender: TObject);
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
  if PolPlot then PoleJaClick(Sender);
end;

procedure TForm12.Kreisoffen1Click(Sender: TObject);
var
Datei : TextFile;
i     : byte;
begin
  DatenSymbol   := 'OpenCircle';
  if ProjektionS <> '' then ButtonStart.Enabled := true;
  KonfigZeileS[9] := '  Data Symbol              :,OpenCircle';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
  if PolPlot then PoleJaClick(Sender);
end;

procedure TForm12.Kreisgefllt1Click(Sender: TObject);
var
Datei : TextFile;
i     : byte;
begin
  DatenSymbol := 'FilledCircle';
  if ProjektionS <> '' then ButtonStart.Enabled := true;
  KonfigZeileS[9] := '  Data Symbol              :,FilledCircle';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
  if PolPlot then PoleJaClick(Sender);
end;

procedure TForm12.Quadratoffen1Click(Sender: TObject);
var
Datei : TextFile;
i     : byte;
begin
  DatenSymbol := 'OpenSquare';
  if ProjektionS <> '' then ButtonStart.Enabled := true;
  KonfigZeileS[9] := '  Data Symbol              :,OpenSquare';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
  if PolPlot then PoleJaClick(Sender);
end;

procedure TForm12.Quadratgefllt1Click(Sender: TObject);
var
Datei : TextFile;
i     : byte;
begin
  DatenSymbol := 'FilledSquare';
  if ProjektionS <> '' then ButtonStart.Enabled := true;
  KonfigZeileS[9] := '  Data Symbol              :,FilledSquare';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
  if PolPlot then PoleJaClick(Sender);
end;

procedure TForm12.Dreieckoffen1Click(Sender: TObject);
var
Datei : TextFile;
i     : byte;
begin
  Datensymbol := 'OpenTriangle';
  if ProjektionS <> '' then ButtonStart.Enabled := true;
  KonfigZeileS[9] := '  Data Symbol              :,OpenTriangle';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
  if PolPlot then PoleJaClick(Sender);
end;

procedure TForm12.Dreieckgefllt1Click(Sender: TObject);
var
Datei : TextFile;
i     : byte;
begin
  DatenSymbol   := 'FilledTriangle';
  if ProjektionS <> '' then ButtonStart.Enabled := true;
  KonfigZeileS[9] := '  Data Symbol              :,FilledTriangle';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
  if PolPlot then PoleJaClick(Sender);
end;

procedure TForm12.Rauteoffen1Click(Sender: TObject);
var
Datei : TextFile;
i     : byte;
begin
  DatenSymbol   := 'OpenDiamond';
  if ProjektionS <> '' then ButtonStart.Enabled := true;
  KonfigZeileS[9] := '  Data Symbol              :,OpenDiamond';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
  if PolPlot then PoleJaClick(Sender);
end;

procedure TForm12.Rautegefllt1Click(Sender: TObject);
var
Datei : TextFile;
i     : byte;
begin
  DatenSymbol   := 'FilledDiamond';
  if ProjektionS <> '' then ButtonStart.Enabled := true;
  KonfigZeileS[9] := '  Data Symbol              :,FilledDiamond';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
  if PolPlot then PoleJaClick(Sender);
end; 

procedure TForm12.SpeedKreisOClick(Sender: TObject);
begin
  KreisOffen1Click(Sender);
end;

procedure TForm12.SpeedKreisGClick(Sender: TObject);
begin
  Kreisgefllt1Click(Sender);
end;

procedure TForm12.SpeedDreieckOClick(Sender: TObject);
begin
  DreieckOffen1Click(Sender);
end;

procedure TForm12.SpeedDreieckGClick(Sender: TObject);
begin
  DreieckGefllt1Click(Sender)
end;

procedure TForm12.SpeedQuadratOClick(Sender: TObject);
begin
  QuadratOffen1Click(Sender);
end;

procedure TForm12.SpeedQuadratGClick(Sender: TObject);
begin
  QuadratGefllt1Click(Sender);
end;

procedure TForm12.SpeedRauteOClick(Sender: TObject);
begin
  RauteOffen1Click(Sender);
end;

procedure TForm12.SpeedRauteGClick(Sender: TObject);
begin
  Rautegefllt1Click(Sender);
end;

procedure TForm12.FarbePunkteClick(Sender: TObject);
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
  assignFile(Datei,Fabrics+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick (Sender);
  if PolPlot then PoleJaClick(Sender);
end;

procedure TForm12.SpeedFarbeClick(Sender: TObject);
begin
  FarbePunkteClick(Sender);
end;

procedure TForm12.KreisFarbeClick(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  Farbe         := clWhite;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS := ColorToString (Farbe);
  GrosskreisFarbe := StringToColor(FarbeS);
  KonfigZeileS[8] := '  Colour of Great Circles  :,'+FarbeS;
  assignFile(Datei,Fabrics+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick (Sender);
  if PolPlot then PoleJaClick(Sender);
end;

procedure TForm12.SpeedKleinKreisClick(Sender: TObject);
begin
  KreisFarbeClick(Sender);
end;

procedure TForm12.KreisFuellungClick(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  Farbe         := clWhite;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS           := ColorToString (Farbe);
  KonfigZeileS[12] := 'Small circle filling       :,'+FarbeS;
  KleinFarbe       := Farbe;
  assignFile(Datei,Fabrics+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick (Sender);
  if PolPlot then PoleJaClick(Sender);
end;

procedure TForm12.NichtFuellenClick(Sender: TObject);
var
  Datei : TextFile;
  i     : word;
begin
  KonfigZeileS[12] := 'Small circle filling       :,'+ColorToString(DiagrFarbe);
  KleinFarbe       := DiagrFarbe;
  assignFile(Datei,Fabrics+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick (Sender);
  if PolPlot then PoleJaClick(Sender);
end;

procedure TForm12.SpeedNichtFuellenClick(Sender: TObject);
begin
  NichtFuellenClick(Sender);
end;

procedure TForm12.FontClick(Sender: TObject);
begin
  WaehlFont(FontDialog1);
end;

procedure TForm12.SpeedFontClick(Sender: TObject);
begin
  FontClick(Sender);
end;

procedure TForm12.BGroesseClick(Sender: TObject);
begin
  PanelGroesse.Visible    := true;
  CheckBoxBild.State      := cbUnchecked;
  MaskEditBBreite.Text    := IntTostr(BBreiteSt);
  MaskEditBHoehe.Text     := IntToStr(BHoeheSt);
end;

procedure TForm12.SpeedBGroesseClick(Sender: TObject);
begin
  BGroesseClick(Sender);
end;

procedure TForm12.MaskEditBBreiteKeyPress(Sender: TObject; var Key: Char);
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

procedure TForm12.MaskEditBHoeheKeyPress(Sender: TObject; var Key: Char);
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

procedure TForm12.CheckBoxBildClick(Sender: TObject);
begin
  PanelGroesse.Visible := false;
end;

procedure TForm12.kopieren1Click(Sender: TObject);
begin
  ClipBoard.Assign (Image1.Picture);
end;

procedure TForm12.speichernPLTClick(Sender: TObject);
var
  i      : byte;
  Datei  : Textfile;
begin
  GeraetS                  := 'HPGL';
  PanelDaten.Visible       := false;
  GroupBoxPlotten.Visible  := true;
  FarbePeripherie1.Enabled := true;
  KonfigZeileS[53] := 'Paper Plot                 :,HPGL';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  FarbePeripherie1.Enabled := true;
end;

procedure TForm12.speichernDXFClick(Sender: TObject);
var
  i      : byte;
  Datei  : Textfile;
begin
  GroupBoxPlotten.Visible  := true;
  FarbePeripherie1.Enabled := true;
  PanelDaten.Visible       := false;
  GeraetS                  := 'DXF';
  KonfigZeileS[53]         := 'Paper Plot                 :,DXF';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  FarbePeripherie1.Enabled := true;
end;

procedure TForm12.SchliessenClick(Sender: TObject);
begin
  PanelSpeichern.Visible := false;
end;

procedure TForm12.BildspeichernClick(Sender: TObject);
begin
  PanelSpeichern.Visible := true;
end;

procedure TForm12.ButtonSabbrechenClick(Sender: TObject);
begin
  PanelSpeichern.Visible := false;
end;

procedure TForm12.SpeedSpeichernClick(Sender: TObject);
begin
  BildSpeichernClick(Sender);
end;

procedure TForm12.ListBoxSpeichernClick(Sender: TObject);
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
      if i = 9 then SchliessenClick(Sender);
    end;
  end;
  PanelSpeichern.Visible := false;
end;

procedure TForm12.DEinrichtenClick(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TForm12.CalibrierenClick(Sender: TObject);
begin
  Calib                   := true;
  FaktorAlt               := Faktor;
  Faktor                  := 1;
  GeraetS                 := 'Plotter';
  PanelDaten.Visible      := false;
  GroupBoxPlotten.Visible := true;
  PanelKaliber.Visible    := true;
end;

procedure TForm12.SpeedCalibClick(Sender: TObject);
begin
  CalibrierenClick(Sender);
end;

procedure TForm12.ButtonCalibEndeClick(Sender: TObject);
begin
  Calib := false;
  Faktor := FaktorAlt;
  PanelKaliber.Visible := false;
end;

procedure TForm12.MaskEditBrEKeyPress(Sender: TObject; var Key: Char);
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

procedure TForm12.MaskEditBrDKeyPress(Sender: TObject; var Key: Char);
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

procedure TForm12.DruckenClick(Sender: TObject);
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

procedure TForm12.SpeedPlotterClick(Sender: TObject);
begin
  DruckenClick(Sender);
end;

procedure TForm12.AusZwischenablageClick(Sender: TObject);
begin
  Zwischen                    := true;
  Zoom.Enabled                := true;
  SpeedZoom.Enabled           := true;
  Rueckgaengig.Enabled        := true;
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

procedure TForm12.SpeedZwischenablageClick(Sender: TObject);
begin
  AusZwischenablageClick(Sender);
end;

procedure TForm12.ausDateiClick(Sender: TObject);
begin
  Rueckgaengig.Enabled        := true;
  SpeedRueck.Enabled          := true;
  ausDatei.Enabled            := false;
  AusZwischenablage.Enabled   := false;
  SpeedLoad.Enabled           := false;
  SpeedZwischenablage.Enabled := false;
  Zoom.Enabled                := true;
  SpeedZoom.Enabled           := true;
  PanelLoad.Visible := true;
  DBitmap := Tbitmap.Create;
  DBitmap.Assign(Image1.Picture);
end;

procedure TForm12.ZoomClick(Sender: TObject);
begin
  PanelDehnen.Visible := true;
  PlusEin             := true;
  if ClipBoard.HasFormat(CF_Bitmap) then
    HolPixS := 'Clipboard';
  ButtonStartClick(Sender);
end;

procedure TForm12.SpeedZoomClick(Sender: TObject);
begin
  ZoomClick(Sender);
end;

procedure TForm12.RueckgaengigClick(Sender: TObject);
begin
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
  Rueckgaengig.Enabled := false;
  SpeedRueck.Enabled   := false;
end;

procedure TForm12.SpeedRueckClick(Sender: TObject);
begin
  RueckgaengigClick(Sender);
end;

procedure TForm12.ButtonLabbrechenClick(Sender: TObject);
begin
  PanelLoad.Visible := false;
end;

procedure TForm12.SpeedLoadClick(Sender: TObject);
begin
  ausDateiClick(Sender);
end;

procedure TForm12.ButtonSPlusClick(Sender: TObject);
begin
  SPlus := SPlus +1;
  ButtonStartClick(Sender);
end;

procedure TForm12.ButtonSMinusClick(Sender: TObject);
begin
  SPlus    := SPlus -1;
  ButtonStartClick(Sender);
end;

procedure TForm12.ButtonWPlusClick(Sender: TObject);
begin
  WPlus    := WPlus +1;
  ButtonStartClick(Sender);
end;

procedure TForm12.ButtonWMinusClick(Sender: TObject);
begin
  WPlus    := WPlus -1;
  ButtonStartClick(Sender);
end;

procedure TForm12.ButtonNPlusClick(Sender: TObject);
begin
  NPlus    := NPlus +1;
  ButtonStartClick(Sender);
end;

procedure TForm12.ButtonNMinusClick(Sender: TObject);
begin
  NPlus    := NPlus -1;
  ButtonStartClick(Sender);
end;

procedure TForm12.ButtonEPlusClick(Sender: TObject);
begin
  EPlus    := EPlus +1;
  ButtonStartClick(Sender);
end;

procedure TForm12.ButtonEMinusClick(Sender: TObject);
begin
  EPlus    := EPlus -1;
  ButtonStartClick(Sender);
end;

procedure TForm12.ButtonHokClick(Sender: TObject);
begin
  SPlus := 0;
  WPlus := 0;
  Nplus := 0;
  EPlus := 0;
  PanelDehnen.Visible := false;
  PlusEin := false;
end;

procedure TForm12.ListBoxLoadClick(Sender: TObject);
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
  PanelLoad.Visible   := false;
  PlusEin := true;
  ButtonStartClick(Sender);
end;

procedure TForm12.PoleJaClick(Sender: TObject);
var
  Azimut : word;
  Fall   : shortint;
  i      : word;
begin
  PolPlot := true;
  PunktAnzeigen.Enabled := true;
  SymbolfrDatenpunkte1.Enabled   := true;
  with Image1.Canvas do
  begin
    Pen.Style := psSolid;
    Pen.Color := GrosskreisFarbe;
    Pen.Width := 1;
    if LeftS(Datensymbol,4) = 'Open' then Brush.Color := DiagrFarbe
    else Brush.Color := GrosskreisFarbe;
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
    Pen.Style := LinienTyp;
  end;
end;

procedure TForm12.SpeedPolePlottenClick(Sender: TObject);
begin
  PoleJaClick(Sender);
end;

procedure TForm12.PoleNeinClick(Sender: TObject);
var
  NFarbe : TColor;
begin
  SymbolfrDatenpunkte1.Enabled   := true;
  NFarbe := GrosskreisFarbe;
  GrosskreisFarbe := DiagrFarbe;
  PoleJaClick(Sender);
  GrosskreisFarbe := NFarbe;
  ButtonStartClick(Sender);
  PunktAnzeigen.Enabled := false;
end;

procedure TForm12.SpeedPoleNichtPlottenClick(Sender: TObject);
begin
  PoleNeinClick(Sender);
end;

procedure TForm12.durchgezogeneLinien1Click(Sender: TObject);
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
  if PolPlot then PoleJaClick(Sender);
end;

procedure TForm12.gestrichelteLinien1Click(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  Strich := 1;
  LinienTyp     := psDash;
  KonfigZeileS[10] := '  Line Style                 :,Dash';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
  if PolPlot then PoleJaClick(Sender);
end;

procedure TForm12.gepunkteteLinien1Click(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  Strich := 1;
  LinienTyp     := psDot;
  KonfigZeileS[10] := '  Line Style                 :,Dot';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
  if PolPlot then PoleJaClick(Sender);
end;

procedure TForm12.strichpunktierteLinien1Click(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  Strich := 1;
  LinienTyp     := psDashDot;
  KonfigZeileS[10] := '  Line Style                 :,DashDot';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
  if PolPlot then PoleJaClick(Sender);
end;

procedure TForm12.SpeedDurchgezogenClick(Sender: TObject);
begin
  durchgezogeneLinien1Click(Sender);
end;

procedure TForm12.SpeedGestricheltClick(Sender: TObject);
begin
  gestrichelteLinien1Click(Sender);
end;

procedure TForm12.SpeedStrichPunktClick(Sender: TObject);
begin
  strichpunktierteLinien1Click(Sender);
end;

procedure TForm12.SpeedPunktiertClick(Sender: TObject);
begin
  gepunkteteLinien1Click(Sender);
end;

procedure TForm12.FarbePeripherie1Click(Sender: TObject);
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

procedure TForm12.FarbeDiagramm1Click(Sender: TObject);
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

procedure TForm12.FarbeRahmenClick(Sender: TObject);
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

procedure TForm12.transparentClick(Sender: TObject);
begin
  Farbe                 := clWhite;
  HTransparent          := true;
  ListBoxSpeichern.Clear;
  ListBoxSpeichern.Items.Add (Tx(1613));
  ButtonStartClick(Sender);
end;

procedure TForm12.SpeedTransparentClick(Sender: TObject);
begin
  transparentClick(Sender);
end;

procedure TForm12.FarbeHClick(Sender: TObject);
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
  ListBoxSpeichern.Clear;
  for i := 1 to 9 do
    ListBoxSpeichern.Items.Add (Tx(1611+i));
  ButtonStartClick (Sender);
end;

procedure TForm12.SpeedHFarbeClick(Sender: TObject);
begin
  FarbeHClick(Sender);
end;

procedure TForm12.SpeedPeripherieClick(Sender: TObject);
begin
  FarbePeripherie1Click(Sender);
end;

procedure TForm12.SpeedDiagrammClick(Sender: TObject);
begin
  FarbeDiagramm1Click(Sender);
end;

procedure TForm12.SpeedRahmenClick(Sender: TObject);
begin
  FarbeRahmenClick(Sender);
end;

procedure TForm12.SpeedStrichClick(Sender: TObject);
begin
  durchgezogeneLinien1Click(Sender);
end;

procedure TForm12.ListBoxStrichClick(Sender: TObject);
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

procedure TForm12.PloterstellenClick(Sender: TObject);
var
  RadiusS  : string[6];
  XKoordS  : string[6];
  YKoordS  : string[6];
  Kreuz    : boolean;
  Rmax     : real;
  RmaxS    : string[15];
  Xmax     : real;
  Ymax     : real;
  Aa, Ff   : real;
  Oo, X, Y : real;
  i        : word;
  Datei    : TextFile;
  XS, YS   : string;
  WS, HS   : string;
  Groesse  : word;
  Typ      : TMsgDlgType;
  Xd, Yd   : word;
begin
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
    Rmax  := 10;
    Xmax  := 29.2 - Rmax;
    Ymax  := 20.5 - Rmax;
    Typ   := mtError;
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
  end;
  Kreuz := true;
  {Beginn des Plottens}
  if GeraetS <> 'Plotter' then
  begin
    Plotter (Canvas, SaveDialog1);
    Farben (Canvas, UmfangFarbe);
    HPPeriph (Canvas, Kreuz);
    if Programm <> 5 then
    begin
      Farben (Canvas, DatenFarbe);
      Plot1 (Canvas);
    end;
    if Programm = 5 then
    begin
      Farben (Canvas, GrosskreisFarbe);
      if PolPlot then
      begin
        Gefuegetyp := 1;
        Plot1 (Canvas);
        Farben (Canvas, GrosskreisFarbe);
      end;
      for i := 1 to ZahlGlob do
      begin
        Aa := AziFeld[i] * Bo;
        Ff := FalFeld[i] * Bo;
        Oo := WinkelFeld[i]* Bo;
        Hpkleinkreis (Canvas, Aa, Ff, Oo);
      end;
    end;
    XS := Inttostr(round((Xkoord-HPRadius) * 400));        // -HpRadius/1.5
    YS := IntToStr(round((YKoord-HpRadius) * 400));        // -HpRadius/4
    WS := FloatToStr(HPRadius/20);
    HS := FloatToStr(HPRadius/16);  
    Farben (Canvas, clBlack);
    Hpende (XS, Ys, WS, HS);
  end;
  if GeraetS = 'Plotter' then
  begin
    SetMapMode (Printer.Handle, MM_Himetric);
    with Printer do
    begin
      BeginDoc;
      Plotter (Canvas, SaveDialog1);
      Farben (Canvas, clBlack);
      Canvas.Pen.Width := Strich;
      HPPeriph (Canvas, Kreuz);
      if Programm <> 5 then
      begin
        Farben (Canvas, DatenFarbe);
        Plot1 (Canvas);
      end;
      if Programm = 5 then
      begin
        Farben (Canvas, GrosskreisFarbe);
        if PolPlot then
        begin
          Gefuegetyp := 1;
          Plot1 (Canvas);
        end;
        for i := 1 to ZahlGlob do
        begin
          Aa := AziFeld[i] * Bo;
          Ff := FalFeld[i] * Bo;
          Oo := WinkelFeld[i]* Bo;
          Hpkleinkreis (Canvas, Aa, Ff, Oo);
        end;
      end;
      if DemoB then
      begin
        Xd := round((Xkoord-HpRadius)*100*Faktor);
        Yd := round((Ykoord+HpRadius)*100*Faktor);
        Groesse := round(HpRadius*2);
        Canvas.Brush.Color := clWhite;
        Canvas.Font.Size   := Groesse;
        Canvas.Font.Color  := clBlack;
        Canvas.Textout (Xd,Yd,'Demo-Version');
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

procedure TForm12.ButtonPlotEndeClick(Sender: TObject);
begin
  GroupBoxPlotten.Visible := false;
  PanelDaten.Visible      := true;
end;

procedure TForm12.Druckereinrichten1Click(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TForm12.SpeedEinrichtenClick(Sender: TObject);
begin
  Druckereinrichten1Click(Sender);
end;

procedure TForm12.drucken1Click(Sender: TObject);
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
  LabelLdrucken.Caption        := Tx(1764);
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

procedure TForm12.MaskEditLaengeChange(Sender: TObject);
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

procedure TForm12.MaskEditLinksChange(Sender: TObject);
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

procedure TForm12.MaskEditObenChange(Sender: TObject);
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

procedure TForm12.MaskEditUnterschriftKeyPress(Sender: TObject;
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

procedure TForm12.RadioLinksClick(Sender: TObject);
begin
  BuendigS := 'Links';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    ButtonDrucken.Enabled := true;
end;

procedure TForm12.RadioZentriertClick(Sender: TObject);
begin
  BuendigS := 'Zentriert';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    ButtonDrucken.Enabled := true;
end;

procedure TForm12.RadioRechtsClick(Sender: TObject);
begin
  BuendigS := 'Rechts';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    ButtonDrucken.Enabled := true;
end;

procedure TForm12.ListBoxSchriftClick(Sender: TObject);
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

procedure TForm12.SpeedDruckenClick(Sender: TObject);
begin
  drucken1Click(Sender);
end;

procedure TForm12.ButtonDruckenClick(Sender: TObject);
var
  Bitmap  : TBitmap;
  Fenster : TRect;
  LRand   : word;
  ORand   : word;
  PLaenge : word;
  Hoehe   : word;
  Anfang  : word;
begin
  Anfang  := 0;
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
  RadioLinks.Visible     := false;
  RadioRechts.Visible    := false;
  RadioZentriert.Visible := false;
end;

procedure TForm12.ButtonAbbrechenClick(Sender: TObject);
begin
  Paneldrucken.Visible   := false;
  RadioLinks.Visible     := false;
  RadioZentriert.Visible := false;
  RadioRechts.Visible    := false;
  RadioGroup.Visible     := false;
end;

procedure TForm12.TextschreibenClick(Sender: TObject);
begin
  PanelText.Visible := true;
  BText               := true;
  MaskEditText.Clear;
  MaskEditText.SetFocus;
  PanelPlazieren.Visible := false;
end;

procedure TForm12.SpeedTextClick(Sender: TObject);
begin
  TextschreibenClick(Sender);
end;

procedure TForm12.MaskEditTextKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(13) then
  begin
    TeS := MaskEditText.Text;
    PanelPlazieren.Visible := true;
  end;
end;

procedure TForm12.Image1MouseUp(Sender: TObject; Button: TMouseButton;
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
    PanelText.Visible := false;
    BText := false;
    Trueck.Enabled      := true;
    SpeedUnText.Enabled := true;
  end;
end;

procedure TForm12.TrueckClick(Sender: TObject);
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

procedure TForm12.SpeedUnTextClick(Sender: TObject);
begin
  TrueckClick(Sender);
end;

procedure TForm12.IsolinienClick(Sender: TObject);
begin
  WeiterB[12] := true;
  Application.CreateForm(TForm23, Form23);
  Form23.Show;
end;

procedure TForm12.SpeedIsoClick(Sender: TObject);
begin
  IsolinienClick(Sender);
end;

procedure TForm12.StatistikClick(Sender: TObject);
begin
  WeiterB[12] := true;
  Application.CreateForm(TForm21, Form21);
  Form21.Show;
end;

procedure TForm12.SpeedStatistikClick(Sender: TObject);
begin
  StatistikClick(Sender);
end;

procedure TForm12.SubmaximaClick(Sender: TObject);
begin
  WeiterB[12] := true;
  Application.CreateForm(TForm25, Form25);
  Form25.Show;
end;

procedure TForm12.SpeedMaximaClick(Sender: TObject);
begin
  SubmaximaClick(Sender);
end;

procedure TForm12.LagenkugelClick(Sender: TObject);
begin
  WeiterB[12] := true;
  Application.CreateForm(TForm37, Form37);
  Form37.Show;
end;

procedure TForm12.SpeedNetzClick(Sender: TObject);
begin
  LagenkugelClick(Sender);
end;

procedure TForm12.Hilfe1Click(Sender: TObject);
var
  DateiS      : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\12PlotPunkte-Plot.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\12PlotPoints-plot.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm12.SpeedHilfeClick(Sender: TObject);
begin
  Hilfe1Click(Sender);
end;

procedure TForm12.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if Programm <> 5 then
  begin
    if SpracheS = 'DEUTSCH' then HilfeS := 'Daten_plotten.doc';
    if SpracheS = 'ENGLISH' then HilfeS := 'Plot_data.doc';
    ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
                 nil,nil,sw_normal);
  end;
  if Programm = 5 then
  begin
    if SpracheS = 'DEUTSCH' then HilfeS := 'Kleinkreise.doc';
    if SpracheS = 'ENGLISH' then HilfeS := 'Small_circles.doc';
    ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
                 nil,nil,sw_normal);
  end;
end;

procedure TForm12.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm12.SpeedObereHClick(Sender: TObject);
begin
  obereClick(Sender);
end;

procedure TForm12.SpeedUntereHClick(Sender: TObject);
begin
  untereClick(Sender);
end;

procedure TForm12.SpeedKopierenClick(Sender: TObject);
begin
  Kopieren1Click(Sender);
end;

procedure TForm12.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm12.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

procedure TForm12.PunktFarbeClick(Sender: TObject);
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

procedure TForm12.SpeedPunktFarbeClick(Sender: TObject);
begin
  PunktFarbeClick(Sender);
end;

procedure TForm12.LinearClick(Sender: TObject);
begin
  GtypS := 'linear';
  PanelKlick.Visible := true;
  PanelMess.Visible  := true;
  Maus               := true;
  GKreis.Enabled     := true;
  BildImage1 := TBitmap.Create;
  BildImage1.Assign(Image1.Picture.Graphic);
end;

procedure TForm12.SpeedLanzeigenClick(Sender: TObject);
begin
  LinearClick(Sender);
end;

procedure TForm12.FlaecheClick(Sender: TObject);
begin
  GtypS := 'plane';
  PanelKlick.Visible := true;
  PanelMess.Visible  := true;
  Maus               := true;
  GKreis.Enabled     := true;
  BildImage1 := TBitmap.Create;
  BildImage1.Assign(Image1.Picture.Graphic);
end;

procedure TForm12.SpeedFanzeigenClick(Sender: TObject);
begin
  FlaecheClick(Sender);
end;

procedure TForm12.GkreisClick(Sender: TObject);
var
  Aa, Ff : real;
begin
  Aa := 0;
  Ff := 0;
  Aa := APunkt*Pi/180;
  Ff := FPunkt*Pi/180;
  Grosskreis(Image1.Canvas, Aa, Ff, KlickFarbe);
end;

procedure TForm12.SpeedGKreisClick(Sender: TObject);
begin
  GKreisClick(Sender);
end;

procedure TForm12.PunkteWegClick(Sender: TObject);
begin
  Maus := false;
  PanelMess.Visible := false;
  GKreis.Enabled := false;
  Image1.Canvas.Draw(0,0,BildImage1);
  BildImage1.Free;
  PunkteWeg.Enabled := false;
end;

procedure TForm12.SpeedUndoClick(Sender: TObject);
begin
  PunkteWegClick(Sender);
end;

procedure TForm12.Image1MouseDown(Sender: TObject; Button: TMouseButton;
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
  if Btext then exit;
  Move   := false;
  Azimut := 0;
  Fallen := 0;
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
    Apunkt := Azimut;
    Fpunkt := Fallen;
  end;
  if ssRight in Shift then
  begin
    Maus := false;
    PanelKlick.Visible := false;
    PanelMess.Visible  := false;
    GKreis.Enabled     := false;
  end;
end;

procedure TForm12.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
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
    GKreis.Enabled     := false;
  end;
end;

procedure TForm12.DspeichernClick(Sender: TObject);
begin
  if CurrentFile <> '' then Speichern(CurrentFile,ZahlGlob,
    AziFeld,FalFeld)
  else DspeichernUnterClick(Sender);
end;

procedure TForm12.DspeichernUnterClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := ExtenS;
  if ExtenS = 'LIN' then SaveDialog1.Filter := 'Linears (*.lin)|*.LIN';
  if ExtenS = 'PLA' then SaveDialog1.Filter := 'Planes (*.pla)|*.PLA';
  if ExtenS = 'SCI' then SaveDialog1.Filter := 'Small circles (*.sci)|*.SCI';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    Speichern (CurrentFile, ZahlGlob, AziFeld, FalFeld);
  end;
end;

procedure TForm12.SpeedDspeichernUnterClick(Sender: TObject);
begin
  DSpeichernUnterClick(Sender);
end;

procedure TForm12.GrosskreiseClick(Sender: TObject);
begin
  WeiterB[12] := true;
  Application.CreateForm(TForm85, Form85);
  Form85.Show;
end;

procedure TForm12.SpeedGKreiseClick(Sender: TObject);
begin
  GrosskreiseClick(Sender);
end;

end.
