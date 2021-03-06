unit Unit85; {Plot von Daten, Grafik}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs,  ExtCtrls, Plotten, StdCtrls, Globvar,
  Menus, Basic, ClipBrd, HPPlot, Mask, Texte, ComCtrls,
  Buttons, Drucken, Printers, Einausga, Shellapi,
  GifImage, Bmp2Tiff, Jpeg, ExtDlgs, Standard, ReadTiff,
  ehsHelpRouter, PngImage, Grafik;

type
  TForm85 = class(TForm)
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
    speichern1              : TMenuItem;

    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    FarbePeripherie1: TMenuItem;

    mitdemHPPlotterplotten1  : TMenuItem;

    GroupBoxPlotten   : TGroupBox;

      Panel2         : TPanel;
      LabelRadius    : TLabel;
      MaskEditRadius : TMaskEdit;

      Panel4           : TPanel;
      LabelMittelpunkt : TLabel;
      LabelX           : TLabel;
      MaskEditX        : TMaskEdit;
      LabelY           : TLabel;
      MaskEditY        : TMaskEdit;
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

    FarbeRahmen     : TMenuItem;

    Panel5      : TPanel;

    Drucker1              : TMenuItem;
      Druckereinrichten1  : TMenuItem;
      drucken1            : TMenuItem;
      PrinterSetupDialog1 : TPrinterSetupDialog;
      PrintDialog1        : TPrintDialog;

    Paneldrucken     : TPanel;
    GroupBoxdrucken  : TGroupBox;
    LabelLaenge: TLabel;
    MaskEditLaenge: TMaskEdit;
    LabelEcke: TLabel;
        LabelXdrucken    : TLabel;
        LabelYdrucken    : TLabel;
    MaskEditLinks: TMaskEdit;
    MaskEditOben: TMaskEdit;
      Panel7               : TPanel;
        LabelUnterschrift    : TLabel;
        MaskEditUnterschrift : TMaskEdit;
        LabelSchrift         : TLabel;
        ListBoxSchrift       : TListBox;
        RadioGroup           : TRadioGroup;
        RadioButtonlinks     : TRadioButton;
        RadioButtonzentriert : TRadioButton;
        RadioButtonrechts    : TRadioButton;
    Panel8           : TPanel;
    Panel11              : TPanel;
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
    SpeedLoad: TSpeedButton;
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
    Flaechenpole: TMenuItem;
    SpeedPole: TSpeedButton;
    SpeedPolePlotten: TSpeedButton;
    SpeedPoleNichtPlotten: TSpeedButton;
    SpeedPunktFarbe: TSpeedButton;
    SpeedLanzeigen: TSpeedButton;
    PunkteWeg: TMenuItem;
    SpeedUndo: TSpeedButton;
    SavePictureDialog1: TSavePictureDialog;
    BGroesse: TMenuItem;
    PanelGroesse: TPanel;
    LabelBHoehe: TLabel;
    LabelBBreite: TLabel;
    MaskEditBBreite: TMaskEdit;
    MaskEditBHoehe: TMaskEdit;
    CheckBoxBild: TCheckBox;
    Hintergrund: TMenuItem;
    transparent: TMenuItem;
    HFarbe: TMenuItem;
    SpeedBGroesse: TSpeedButton;
    SpeedTransparent: TSpeedButton;
    SpeedHFarbe: TSpeedButton;
    OpenPictureDialog1: TOpenPictureDialog;
    ButtonPloterstellen: TButton;
    ButtonDrucken: TButton;
    ButtonAbbrechen: TButton;
    Lagenkugel: TMenuItem;
    SpeedNetz: TSpeedButton;
    SpeedSpeichern: TSpeedButton;
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
    Linear: TMenuItem;
    FlaecheAnzeigen: TMenuItem;
    Flaeche: TMenuItem;
    SpeedFanzeigen: TSpeedButton;
    PanelDaten: TPanel;
    LabelAnzahl1: TLabel;
    LabelZahl2: TLabel;
    ListBoxDaten: TListBox;
    LabelDaten: TLabel;
    Einrichten: TMenuItem;
    Calibrieren: TMenuItem;
    Drucken: TMenuItem;
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
    SpeedKalib: TSpeedButton;
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
    procedure Farbe1Click(Sender: TObject);

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
    procedure RadioButtonlinksClick(Sender: TObject);
    procedure RadioButtonzentriertClick(Sender: TObject);
    procedure RadioButtonrechtsClick(Sender: TObject);
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
    procedure SpeedPLTClick(Sender: TObject);
    procedure SpeedDXFClick(Sender: TObject);
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
    procedure FlaechenpoleClick(Sender: TObject);
    procedure SpeedPoleClick(Sender: TObject);
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
    procedure HFarbeClick(Sender: TObject);
    procedure SpeedTransparentClick(Sender: TObject);
    procedure SpeedBGroesseClick(Sender: TObject);
    procedure SpeedHFarbeClick(Sender: TObject);
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
    procedure ButtonPloterstellenClick(Sender: TObject);
    procedure ButtonDruckenClick(Sender: TObject);
    procedure ButtonAbbrechenClick(Sender: TObject);
    procedure LagenkugelClick(Sender: TObject);
    procedure SpeedNetzClick(Sender: TObject);
    procedure speichern1Click(Sender: TObject);
    procedure ListBoxSpeichernClick(Sender: TObject);
    procedure holenPNGClick(Sender: TObject);
    procedure ListBoxLoadClick(Sender: TObject);
    procedure SpeedLoadClick(Sender: TObject);
    procedure SpeedSpeichernClick(Sender: TObject);
    procedure FontClick(Sender: TObject);
    procedure SpeedFontClick(Sender: TObject);
    procedure ButtonNPlusClick(Sender: TObject);
    procedure ButtonNMinusClick(Sender: TObject);
    procedure ButtonWplusClick(Sender: TObject);
    procedure ButtonWMinusClick(Sender: TObject);
    procedure ButtonEMinusClick(Sender: TObject);
    procedure ButtonEPlusClick(Sender: TObject);
    procedure ButtonSMinusClick(Sender: TObject);
    procedure ButtonSPlusClick(Sender: TObject);
    procedure ButtonHokClick(Sender: TObject);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure LinearClick(Sender: TObject);
    procedure FlaecheAnzeigenClick(Sender: TObject);
    procedure SpeedLanzeigenClick(Sender: TObject);
    procedure SpeedFanzeigenClick(Sender: TObject);
    procedure EinrichtenClick(Sender: TObject);
    procedure DruckenClick(Sender: TObject);
    procedure CalibrierenClick(Sender: TObject);
    procedure MaskEditBrEKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditBrDKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedKalibClick(Sender: TObject);
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
  Form85       : TForm85;
  ExtensionS   : string;
  Xp, Yp       : word;
  Bitmap       : TBitmap;
  HolZwischen  : boolean;
  HolPixS      : string;
  CurrentFile  : string;
  PlotDateiS   : string;
  PolPlot      : boolean;
  Schrift      : byte;
  BuendigS     : string;
  Gedrueckt    : array [1..3] of boolean;
  TextS        : string;
  Maus         : boolean;
  OU           : shortint;
  BHoeheST     : word;
  PlusEin      : boolean;
  NPlus, SPlus : integer;
  WPlus, EPlus : integer;
  BildImage1   : TBitmap;
  FaktorAlt    : real;
  DBitmap      : TBitmap;
  Zwischen     : boolean;
  TeS          : string;
  BText        : boolean;
  TextBitmap   : array[1..10] of TBitmap;
  texti        : byte;


implementation
uses Unit9, Unit10, Unit11, Unit12, Unit13, Unit14, Unit64,
     Unit21, Unit23, Unit25, Unit37;
{$R *.DFM}

procedure TForm85.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm85.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm85.FormActivate(Sender: TObject);
var
  i : byte;
begin
  Left   := LeftDiag + 2*Ulap;
  Top    := TopDiag +2*ULap;
  Width  := WidDiag;
  Height := HeiDiag;
  setlength (AziFeld, MaxDaten);
  setlength (FalFeld, MaxDaten);
  if Programm = 5 then  setlength (WinkelFeld, MaxDaten);
  WeiterB[85] := false;
  Image1.Hint                      := Hilf(56) + Hilf(57);
  SpeedDrucken.Hint                := Hilf(309);
  ListBoxDateien.Hint              := Hilf(32);
  LabelDateien.Hint                := Hilf(32);
  GroupBoxPlotten.Hint             := Hilf(58) + Hilf(59);
  ButtonStart.Hint                 := Hilf(37);
  Buttonzuruck.Hint                := Hilf(52);
  Buttonbeenden.Hint               := Hilf(30);
  ButtonPloterstellen.Hint         := Hilf(60);
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
  SpeedPole.Hint                   := Hilf(519);
  SpeedPolePlotten.Hint            := Hilf(524);
  SpeedPoleNichtPlotten.Hint       := Hilf(525);
  SpeedPunktFarbe.Hint             := Hilf(523);
  SpeedUndo.Hint                   := Hilf(545);
  SpeedBGroesse.Hint               := Hilf(583);
  SpeedTransparent.Hint            := Hilf(584);
  SpeedHFarbe.Hint                 := Hilf(443);
  SpeedSpeichern.Hint              := Hilf(264);
  SpeedLoad.Hint                   := Hilf(368);
  SpeedFont.Hint                   := Hilf(686);
  SpeedLanzeigen.Hint              := Hilf(714);
  SpeedFanzeigen.Hint              := Hilf(715);
  SpeedKalib.Hint                  := Hilf(717);
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
  Projektionen1.Caption            := Tx(258);
  Lambert1.Caption                 := Tx(259);
  stereografisch1.Caption          := Tx(260);
  orthografisch1.Caption           := Tx(849);
  Darstellung1.Caption             := Tx(261);
  Kreisoffen1.Caption              := Tx(262);
  Kreisgefllt1.Caption             := Tx(263);
  Dreieckoffen1.Caption            := Tx(264);
  Dreieckgefllt1.Caption           := Tx(265);
  Quadratoffen1.Caption            := Tx(266);
  Quadratgefllt1.Caption           := Tx(267);
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
  BGroesse.Caption                 := Tx(1439);
  Hintergrund.Caption              := Tx(1453);
  HFarbe.Caption                   := Tx(275);
  speichern1.Caption               := Tx(284);
  mitdemHPPlotterplotten1.Caption  := Tx(288);
  Drucker1.Caption                 := Tx(1080);
  FarbePeripherie1.Caption         := Tx(498);
  FarbeDiagramm1.Caption           := Tx(860);
  LabelDateien.Caption             := Tx(136);
  LabelAnzahl1.Caption             := Tx(296);
  GroupBoxPlotten.Caption          := Tx(297);
  ButtonPloterstellen.Caption      := Tx(298);     {Plot-Einstellungen ok?}
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
  Font.Caption                     := Tx(1621);
  Linear.Caption                   := Tx(1216);
  FlaecheAnzeigen.Caption          := Tx(1217);
  LabelAktuell.Caption             := Tx(1662);
  LabelDaten.Caption               := Tx(914);
  LabelCalib.Caption               := Tx(1668);
  LabelCalib2.Caption              := Tx(1669);
  LabelCalib3.Caption              := Tx(1670);
  LabelCalib4.Caption              := Tx(1671);
  LabelCalib5.Caption              := Tx(1672);
  LabelCalib6.Caption              := Tx(1673);
  LabelBrE.Caption                 := Tx(1674);
  LabelBrD.Caption                 := Tx(1675);
  Einrichten.Caption               := Tx(94);
  Calibrieren.Caption              := Tx(1581);
  ButtonPlotEnde.Caption           := Tx(1682);
  Drucken.Caption                  := Tx(93);
  ButtonLabbrechen.Caption         := Tx(1682);
  ButtonSabbrechen.Caption         := Tx(1682);
  LabelZahl2.Caption               := '';
  Grafik1.Enabled                  := false;
  Hilfe1.Caption                   := Tx(162)+' (F1)';
  DHinzufuegen.Caption             := Tx(1685);
  ausZwischenablage.Caption        := Tx(1686);
  AusDatei.Caption                 := Tx(1687);
  Drueck.Caption                   := Tx(1688);
  Textschreiben.Caption            := Tx(1699);
  LabelText.Caption                := Tx(1700);
  LabelReturn.Caption              := Tx(1701);
  LabelPlazieren.Caption           := Tx(1702);
  Trueck.Caption                   := Tx(1688);
  LabelRadius .Enabled             := false;
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
  PanelDateien.Visible             := false;
  PanelDaten.Visible               := false;
  Font.Enabled                     := false;
  PanelKaliber.Visible             := false;
  Calib                            := false;
  MaskEditBrE.Enabled              := false;
  MaskEditBrD.Enabled              := false;
  LabelBeenden.Caption             := Tx(1244);
  LabelProjektion.Caption          := '';
  GroupBoxPlotten.Caption          := '';
  Weiter.Caption                   := Tx(1341);
  Isolinien.Caption                := Tx(15);
  Statistik.Caption                := Tx(14);
  Submaxima.Caption                := Tx(16);
  Flaechenpole.Caption             := Tx(9);
  Lagenkugel.Caption               := Tx(21);
  Form85.Caption               := Tx(304);   {Plotten von Gro�kreisen}
  Paneldrucken.Visible         := false;
  RadioButtonlinks.Visible     := false;
  RadioButtonzentriert.Visible := false;
  RadioButtonrechts.Visible    := false;
  RadioGroup.Visible           := false;
  Druckereinrichten1.Caption   := Tx(94);
  drucken1.Caption             := Tx(93);
  FarbeRahmen.Caption          := Tx(892);
  Halbkugel.Caption            := Tx(1087);
  untere.Caption               := Tx(1088);
  obere.Caption                := Tx(1089);
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
  ButtonCalibEnde.Caption   := Tx(1682);
  if ObenUntenS = 'LOWER' then OU := 1;
  if ObenUntenS = 'UPPER' then OU := -1;
  Maus                   := false;
  PunkteWeg.Caption      := Tx(1396);
  Halbkugel.Enabled      := false;
  Projektionen1.Enabled  := false;
  PolePlotten.Enabled    := false;
  Darstellung1.Enabled   := false;
  Farbe1.Enabled         := false;
  PunktAnzeigen.Enabled  := false;
  Grafik1.Enabled        := false;
  DatenSpeichern.Enabled := false;
  Weiter.Enabled         := false;
  SpeedIso.Enabled       := false;
  SpeedStatistik.Enabled := false;
  SpeedMaxima.Enabled    := false;
  SpeedPole.Enabled      := false;
  Ratio                  := 660/663;
  HTransparent           := false;
  PanelGroesse.Visible   := false;
  HolPixS                := '';
  for i := 1 to 9 do
    ListBoxSpeichern.Items.Add (Tx(1611+i));
  PanelSpeichern.Visible := false;
  for i := 1 to 7 do
    ListBoxLoad.Items.Add (Tx(1611+i));
  PanelLoad.Visible   := false;
  PanelDehnen.Visible := false;
  NPlus               := 0;
  EPlus               := 0;
  SPlus               := 0;
  WPlus               := 0;
  PlusEin             := false;
  BBreiteST           := Image1.Width;
  PanelMess.Visible   := false;
  Drueck.Enabled      := false;
  SpeedRueck.Enabled  := false;
  Zwischen            := false;
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
  Zoom.Enabled      := false;
  SpeedZoom.Enabled := false;
  PanelText.Visible := false;
  BText             := false;
  texti             := 0;
  Trueck.Enabled    := false;
end;

procedure TForm85.ButtonzuruckClick(Sender: TObject);   {zur�ck}
var
  Flaeche : TRect;
begin
  ButtonStart.Enabled      := true;
  Flaeche := Rect(0,0,Clientwidth,ClientHeight);
  Loeschen (Image1.Canvas, Flaeche);
  Loeschen (Image2.Canvas, Flaeche);
  Loeschen (ImageNord.Canvas, Flaeche);
  if not WeiterF then
  begin
    AziFeld := Nil;
    FalFeld := Nil;
  end;
  Loeschen (Image1.Canvas, Flaeche);
  Form85.Close;
  if EingabeS ='ExcelD' then Form64.Close;
end;

procedure TForm85.ButtonbeendenClick(Sender: TObject);     {beenden}
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
  Form85.Close;
  if EingabeS = 'ExcelD' then Form64.Close;
  if EingabeS = 'Festplatte' then Form11.Close;
  if EingabeS = 'manuell' then Form10.Close;
  Form9.Close;
  SetCurrentDir(DirectS);
end;

procedure TForm85.ButtonStartClick(Sender: TObject);       {Start}
var
  i, j     : word;
  Aa, Ff   : real;
  ProS     : string;
  Quadrat  : TRect;
  Rahmen1  : TRect;
  Rahmen2  : TRect;
  JBild    : TJpegImage;
  MetaFile : TMetaFile;
  BildPng  : TPngObject;
  NBild    : TBitmap;
  ZeileS   : string;
begin
  if not WeiterF then
  begin
    ButtonStart.Visible   := true;
    ButtonBeenden.Visible := true;
  end;
  if ObenUntenS = 'LOWER' then OU := 1;
  if ObenUntenS = 'UPPER' then OU := -1;
  Maus := false;
  PanelMess.Visible := false;
  GroupBoxPlotten.Visible := false;
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
  if not PlusEin then
  begin
    Bo := Pi/180;
    BHoeheSt := round(BBreiteSt/Ratio);
    PanelSpeed.Visible       := true;
    GroupBoxPlotten.Visible  := false;
    Projektionen1.Enabled    := true;
    Farbe1.Enabled           := true;
    Darstellung1.Enabled     := true;
    Grafik1.Enabled          := true;
    LabelRadius.Enabled      := true;
    MaskEditRadius.Enabled   := true;
    LabelMittelpunkt.Enabled := true;
    LabelX.Enabled           := true;
    MaskEditX.Enabled        := true;
    LabelY.Enabled           := true;
    MaskEditY.Enabled        := true;
    Font.Enabled             := true;
    if not WeiterF then
    begin
      Weiter.Enabled         := true;
      SpeedIso.Enabled       := true;
      SpeedStatistik.Enabled := true;
      SpeedMaxima.Enabled    := true;
      SpeedPole.Enabled      := true;
    end;
    PanelDateien.Visible     := true;
    PanelDaten.Visible       := true;
    GroupBoxPlotten.Caption  := 'Plot:';
    if ProjektionS = 'Lambert' then ProS  := Tx(259);
    if ProjektionS = 'stereographic' then ProS := Tx(260);
    if ProjektionS = 'orthographic' then ProS := Tx(849);
    if ProjektionS = 'Kavraiskii' then ProS := 'Kavraiskii';
    LabelProjektion.Caption := Tx(651)+': '+ ProS;
    ListBoxDateien.Clear;
    ListBoxDaten.Clear;
    for i := 1 to ZahlGlob do
    begin
      ZeileS := '    '+ RightS('000'+IntToStr(AziFeld[i]),3)
                + '/' + RightS('00'+IntToStr(FalFeld[i]),2);
      ListBoxDaten.Items.Add(ZeileS);
    end;
    if EingabeS <> 'ExcelD' then
      for i := 0 to DateiZahl do
        ListboxDateien.Items.Add(DateiNameS[i])
    else ListBoxDateien.Items.Add(PfadS);
//    ExtensionS := RightS(DateinameS[1],3);
    LabelZahl2.Caption := IntToStr (ZahlGlob);
    ImageNord.Picture.LoadfromFile (DirectS+'\'+'NordPfeil.bmp');
    Image1.Top    := 0;
    Image1.Left   := 100;
    Image1.Width  := 660;
    Image1.Height := 650;
    Bitmap := Tbitmap.Create;
    Bitmap.Width     := 660;
    Bitmap.Height    := 650;
    ImageNord.Top    := 3;
    ImageNord.Left   := 400;
    ImageNord.Width  := 18;
    ImageNord.Height := 36;
    with Image1 do
    begin
      Picture.Graphic := Bitmap;
      Xmitte := Width div 2;
      Ymitte := Height div 2 + ImYmitte;
      Radius := Width div 2 - ImRadius;
      Breite := Width;
      Hoehe  := Height;
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
      else MessageDlg(Tx(306), mtInformation,[mbOK],0);
      Holzwischen := false;
    end;
  end
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
  {Grosskreise plotten}
  with Image1.Canvas do
  begin
    Pen.Width := Strich;
    Pen.Style := Linientyp;
    for i := 1 to ZahlGlob do
    begin
      Aa := AziFeld[i] * Bo + Pi;
      Ff := Pi/2 - FalFeld[i] * Bo;
      Grosskreis(Image1.Canvas, Aa, Ff, GrosskreisFarbe);
    end;
  end;
  Linientyp1.Enabled := true;
  with image2 do
  begin
    Quadrat := Rect (0,0, ClientWidth, ClientHeight);
    if ObenUntenS = 'LOWER' then UntereH(Canvas, Quadrat);
    if ObenUntenS = 'UPPER' then ObereH (Canvas, Quadrat);
  end;
  Image2.Visible    := false;
  ImageNord.Visible := false;
  if not HTransparent then
    Image1.Canvas.Draw(Image1.Width-Image2.width-5,
                       Image1.Height-Image2.Height-5,
                       Image2.picture.graphic);
  Image1.Canvas.Draw(Image1.Width div 2 - ImageNord.Width div 2,3,
                     ImageNord.Picture.Graphic);
  Halbkugel.Enabled      := true;
  Projektionen1.Enabled  := true;
  PolePlotten.Enabled    := true;
  Darstellung1.Enabled   := true;
  Farbe1.Enabled         := true;
  PunktAnzeigen.Enabled  := true;
  Grafik1.Enabled        := true;
  DatenSpeichern.Enabled := true;
  if DemoB then DemoText(Image1.Canvas,10,Image1.Height-40);
end;

procedure TForm85.untereClick(Sender: TObject);
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

procedure TForm85.obereClick(Sender: TObject);
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

procedure TForm85.Lambert1Click(Sender: TObject);
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

procedure TForm85.stereografisch1Click(Sender: TObject);
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

procedure TForm85.Kavraiskii1Click(Sender: TObject);
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

procedure TForm85.SpeedLambertClick(Sender: TObject);
begin
  Lambert1Click(Sender);
end;

procedure TForm85.SpeedStereografischClick(Sender: TObject);
begin
  stereografisch1Click(Sender);
end;

procedure TForm85.SpeedOrthografischClick(Sender: TObject);
begin
  orthografisch1Click(Sender);
end;

procedure TForm85.SpeedKavraiskiiClick(Sender: TObject);
begin
  Kavraiskii1Click(Sender);
end;

procedure TForm85.orthografisch1Click(Sender: TObject);
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

procedure TForm85.Kreisoffen1Click(Sender: TObject);
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

procedure TForm85.Kreisgefllt1Click(Sender: TObject);
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

procedure TForm85.Quadratoffen1Click(Sender: TObject);
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

procedure TForm85.Quadratgefllt1Click(Sender: TObject);
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

procedure TForm85.Dreieckoffen1Click(Sender: TObject);
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

procedure TForm85.Dreieckgefllt1Click(Sender: TObject);
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

procedure TForm85.Rauteoffen1Click(Sender: TObject);
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

procedure TForm85.Rautegefllt1Click(Sender: TObject);
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

procedure TForm85.SpeedKreisOClick(Sender: TObject);
begin
  KreisOffen1Click(Sender);
end;

procedure TForm85.SpeedKreisGClick(Sender: TObject);
begin
  Kreisgefllt1Click(Sender);
end;

procedure TForm85.SpeedDreieckOClick(Sender: TObject);
begin
  DreieckOffen1Click(Sender);
end;

procedure TForm85.SpeedDreieckGClick(Sender: TObject);
begin
  DreieckGefllt1Click(Sender)
end;

procedure TForm85.SpeedQuadratOClick(Sender: TObject);
begin
  QuadratOffen1Click(Sender);
end;

procedure TForm85.SpeedQuadratGClick(Sender: TObject);
begin
  QuadratGefllt1Click(Sender);
end;

procedure TForm85.SpeedRauteOClick(Sender: TObject);
begin
  RauteOffen1Click(Sender);
end;

procedure TForm85.SpeedRauteGClick(Sender: TObject);
begin
  Rautegefllt1Click(Sender);
end;

procedure TForm85.Farbe1Click(Sender: TObject);
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
  DatenFarbe      := StringToColor(FarbeS);
  KonfigZeileS[8] := '  Colour of Great Circles  :,'+FarbeS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick (Sender);
  if PolPlot then PoleJaClick(Sender);
end;

procedure TForm85.FontClick(Sender: TObject);
begin
  WaehlFont(FontDialog1);
end;

procedure TForm85.SpeedFontClick(Sender: TObject);
begin
  FontClick(Sender);
end;

procedure TForm85.BGroesseClick(Sender: TObject);
begin
  PanelGroesse.Visible    := true;
  CheckBoxBild.State      := cbUnchecked;
  MaskEditBBreite.Text    := IntTostr(BBreiteSt);
  MaskEditBHoehe.Text     := IntToStr(BHoeheSt);
end;

procedure TForm85.SpeedBGroesseClick(Sender: TObject);
begin
  BGroesseClick(Sender);
end;

procedure TForm85.MaskEditBBreiteKeyPress(Sender: TObject; var Key: Char);
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

procedure TForm85.MaskEditBHoeheKeyPress(Sender: TObject; var Key: Char);
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

procedure TForm85.CheckBoxBildClick(Sender: TObject);
begin
  PanelGroesse.Visible := false;
end;

procedure TForm85.kopieren1Click(Sender: TObject);
begin
  ClipBoard.Assign (Image1.Picture);
end;

procedure TForm85.transparentClick(Sender: TObject);
begin
  Farbe                 := clWhite;
  HTransparent          := true;
  ButtonStartClick(Sender);
end;

procedure TForm85.SpeedTransparentClick(Sender: TObject);
begin
  transparentClick(Sender);
end;

procedure TForm85.HFarbeClick(Sender: TObject);
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

procedure TForm85.SpeedHFarbeClick(Sender: TObject);
begin
  HFarbeClick(Sender);
end;

procedure TForm85.speichern1Click(Sender: TObject);
begin
  PanelSpeichern.Visible := true;
end;

procedure TForm85.ausZwischenablageClick(Sender: TObject);
begin
  Zwischen                    := true;
  Zoom.Enabled                := true;
  SpeedZoom.Enabled           := true;
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

procedure TForm85.SpeedZwischenablageClick(Sender: TObject);
begin
  AusZwischenablageClick(Sender);
end;

procedure TForm85.ausDateiClick(Sender: TObject);
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

procedure TForm85.SpeedLoadClick(Sender: TObject);
begin
  ausDateiClick(Sender);
end;

procedure TForm85.ZoomClick(Sender: TObject);
begin
  PanelDehnen.Visible := true;
  PlusEin             := true;
  if ClipBoard.HasFormat(CF_Bitmap) then
    HolPixS := 'Clipboard';
  ButtonStartClick(Sender);
end;

procedure TForm85.SpeedZoomClick(Sender: TObject);
begin
  ZoomClick(Sender);
end;

procedure TForm85.DrueckClick(Sender: TObject);
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
  SpeedZoom.Enabled  := false;
end;

procedure TForm85.SpeedRueckClick(Sender: TObject);
begin
  DrueckClick(Sender);
end;

procedure TForm85.ButtonSabbrechenClick(Sender: TObject);
begin
  PanelSpeichern.Visible := false;
end;

procedure TForm85.SpeedSpeichernClick(Sender: TObject);
begin
  speichern1Click(Sender);
end;

procedure TForm85.ListBoxSpeichernClick(Sender: TObject);
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

procedure TForm85.speichernPLTClick(Sender: TObject);
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

procedure TForm85.speichernDXFClick(Sender: TObject);
var
  i      : byte;
  Datei  : Textfile;
begin
  PanelDaten.Visible       := false;
  GroupBoxPlotten.Visible  := true;
  FarbePeripherie1.Enabled := true;
  GeraetS                  := 'DXF';
  KonfigZeileS[53]         := 'Paper Plot                 :,DXF';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  FarbePeripherie1.Enabled := true;
end;

procedure TForm85.ButtonLabbrechenClick(Sender: TObject);
begin
  PanelLoad.Visible := false;
end;

procedure TForm85.EinrichtenClick(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TForm85.CalibrierenClick(Sender: TObject);
begin
  Calib                   := true;
  FaktorAlt               := Faktor;
  Faktor                  := 1;
  GeraetS                 := 'Plotter';
  PanelDaten.Visible      := false;
  GroupBoxPlotten.Visible := true;
  PanelKaliber.Visible    := true;
end;

procedure TForm85.ButtonCalibEndeClick(Sender: TObject);
begin
  Calib := false;
  Faktor := FaktorAlt;
  PanelKaliber.Visible := false;
end;

procedure TForm85.SpeedKalibClick(Sender: TObject);
begin
  CalibrierenClick(Sender);
end;

procedure TForm85.MaskEditBrEKeyPress(Sender: TObject; var Key: Char);
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

procedure TForm85.MaskEditBrDKeyPress(Sender: TObject; var Key: Char);
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

procedure TForm85.DruckenClick(Sender: TObject);
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

procedure TForm85.ButtonNPlusClick(Sender: TObject);
begin
  NPlus    := NPlus +1;
  ButtonStartClick(Sender);
end;

procedure TForm85.ButtonNMinusClick(Sender: TObject);
begin
  NPlus    := NPlus -1;
  ButtonStartClick(Sender);
end;

procedure TForm85.ButtonWplusClick(Sender: TObject);
begin
  WPlus    := WPlus +1;
  ButtonStartClick(Sender);
end;

procedure TForm85.ButtonWMinusClick(Sender: TObject);
begin
  WPlus    := WPlus -1;
  ButtonStartClick(Sender);
end;

procedure TForm85.ButtonEMinusClick(Sender: TObject);
begin
  EPlus    := EPlus -1;
  ButtonStartClick(Sender);
end;

procedure TForm85.ButtonEPlusClick(Sender: TObject);
begin
  EPlus    := EPlus +1;
  ButtonStartClick(Sender);
end;

procedure TForm85.ButtonSMinusClick(Sender: TObject);
begin
  SPlus    := SPlus -1;
  ButtonStartClick(Sender);
end;

procedure TForm85.ButtonSPlusClick(Sender: TObject);
begin
  SPlus    := SPlus +1;
  ButtonStartClick(Sender);
end;

procedure TForm85.ButtonHokClick(Sender: TObject);
begin
  SPlus   := 0;
  WPlus   := 0;
  Nplus   := 0;
  EPlus   := 0;
  PlusEin := false;
  PanelDehnen.Visible := false;
end;

procedure TForm85.ListBoxLoadClick(Sender: TObject);
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

procedure TForm85.holenBMPClick(Sender: TObject);
begin
  OpenDialog1.DefaultExt := 'Windows bitmap file (*.bmp)|*.bmp';
  OpenDialog1.Filter     := 'Windows bitmap file (*.bmp)|*.bmp';
  if OpenPictureDialog1.Execute then CurrentFile := OpenPictureDialog1.FileName
  else exit;
  HolPixS := 'BMP';
  ButtonStartClick(Sender);
end;

procedure TForm85.SpeedHolBMPClick(Sender: TObject);
begin
  holenBMPClick(Sender);
end;

procedure TForm85.holenGIFClick(Sender: TObject);
begin
  OpenDialog1.DefaultExt := 'Compuserve gif file (*.gif)|*.gif';
  OpenDialog1.Filter     := 'Compuserve gif file (*.gif)|*.gif';
  if OpenDialog1.Execute then CurrentFile := OpenDialog1.FileName
  else exit;
  HolPixS := 'GIF';
  ButtonStartClick(Sender);
end;

procedure TForm85.SpeedHolGIFClick(Sender: TObject);
begin
  holenGIFClick(Sender);
end;

procedure TForm85.holenTIFClick(Sender: TObject);
begin
  OpenDialog1.DefaultExt := 'Tagged image file format (*.tif)|*.tif';
  OpenDialog1.Filter     := 'Tagged image file format (*.tif)|*.tif';
  if OpenDialog1.Execute then CurrentFile := OpenDialog1.FileName
  else exit;
  HolPixS := 'TIF';
  ButtonStartClick(Sender);
end;

procedure TForm85.SpeedHolTIFClick(Sender: TObject);
begin
  holenTIFClick(Sender);
end;

procedure TForm85.holenJPGClick(Sender: TObject);
begin
  OpenPictureDialog1.DefaultExt := 'Jpeg file (*.jpg)|*.jpg';
  OpenPictureDialog1.Filter     := GraphicFilter(TJpegImage);
  if OpenPictureDialog1.Execute then CurrentFile := OpenPictureDialog1.FileName
  else exit;
  HolPixS := 'JPG';
  ButtonStartClick(Sender);
end;

procedure TForm85.SpeedHolJPGClick(Sender: TObject);
begin
  holenJPGClick(Sender);
end;

procedure TForm85.holenWMFClick(Sender: TObject);
begin
  OpenDialog1.DefaultExt := 'Windows metafile (*.WMF)|*.wmf';
  OpenDialog1.Filter     := 'Windows metafile (*.WMF)|*.wmf';
  if OpenDialog1.Execute then CurrentFile := OpenDialog1.FileName
  else exit;
  HolPixS := 'WMF';
  ButtonStartClick(Sender);
end;

procedure TForm85.SpeedHolWMFClick(Sender: TObject);
begin
  holenWMFClick(Sender);
end;

procedure TForm85.holenEMFClick(Sender: TObject);
begin
  OpenDialog1.DefaultExt := 'Enhanced windows metafile (*.EMF)|*.emf';
  OpenDialog1.Filter     := 'Enhanced windows metafile (*.EMF)|*.emf';
  if OpenDialog1.Execute then CurrentFile := OpenDialog1.FileName
  else exit;
  HolPixS := 'EMF';
  ButtonStartClick(Sender);
end;

procedure TForm85.SpeedHolEMFClick(Sender: TObject);
begin
  holenEMFClick(Sender);
end;

procedure TForm85.holenPNGClick(Sender: TObject);
begin
  OpenDialog1.DefaultExt := 'Portable Network Graphics (*.PNG)|*.png';
  OpenDialog1.Filter     := 'Portable Network Graphics (*.PNG)|*.png';
  if OpenDialog1.Execute then CurrentFile := OpenDialog1.FileName
  else exit;
  HolPixS := 'PNG';
  ButtonStartClick(Sender);
end;

procedure TForm85.PoleJaClick(Sender: TObject);
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

procedure TForm85.SpeedPolePlottenClick(Sender: TObject);
begin
  PoleJaClick(Sender);
end;

procedure TForm85.PoleNeinClick(Sender: TObject);
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

procedure TForm85.SpeedPoleNichtPlottenClick(Sender: TObject);
begin
  PoleNeinClick(Sender);
end;

procedure TForm85.durchgezogeneLinien1Click(Sender: TObject);
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

procedure TForm85.gestrichelteLinien1Click(Sender: TObject);
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

procedure TForm85.gepunkteteLinien1Click(Sender: TObject);
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

procedure TForm85.strichpunktierteLinien1Click(Sender: TObject);
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

procedure TForm85.SpeedDurchgezogenClick(Sender: TObject);
begin
  durchgezogeneLinien1Click(Sender);
end;

procedure TForm85.SpeedGestricheltClick(Sender: TObject);
begin
  gestrichelteLinien1Click(Sender);
end;

procedure TForm85.SpeedStrichPunktClick(Sender: TObject);
begin
  strichpunktierteLinien1Click(Sender);
end;

procedure TForm85.SpeedPunktiertClick(Sender: TObject);
begin
  gepunkteteLinien1Click(Sender);
end;

procedure TForm85.SpeedPLTClick(Sender: TObject);
begin
  speichernPLTClick(Sender);
end;

procedure TForm85.SpeedDXFClick(Sender: TObject);
begin
  speichernDXFClick(Sender);
end;

procedure TForm85.FarbePeripherie1Click(Sender: TObject);
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

procedure TForm85.FarbeDiagramm1Click(Sender: TObject);
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

procedure TForm85.FarbeRahmenClick(Sender: TObject);
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

procedure TForm85.SpeedPeripherieClick(Sender: TObject);
begin
  FarbePeripherie1Click(Sender);
end;

procedure TForm85.SpeedDiagrammClick(Sender: TObject);
begin
  FarbeDiagramm1Click(Sender);
end;

procedure TForm85.SpeedRahmenClick(Sender: TObject);
begin
  FarbeRahmenClick(Sender);
end;

procedure TForm85.SpeedStrichClick(Sender: TObject);
begin
  durchgezogeneLinien1Click(Sender);
end;

procedure TForm85.ListBoxStrichClick(Sender: TObject);
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

procedure TForm85.ButtonPloterstellenClick(Sender: TObject);
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
  X, Y     : real;
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
    Xmax := 29.2 - Rmax;
    Ymax := 20.5 - Rmax;
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
    Farben (Canvas, GrosskreisFarbe);
    if PolPlot then
    begin
      Gefuegetyp := 2;
      Plot1 (Canvas);
    end;
    Farben (Canvas, GrosskreisFarbe);
    for i := 1 to ZahlGlob do
    begin
      Aa := AziFeld[i] * Bo;
      Ff := FalFeld[i] * Bo;
      Aa := Aa + Pi;
      Ff := Pi/2 - Ff;
      Hpkoordin (Aa, Ff, X, Y);
      Hpgrosskreis (Canvas, Aa, Ff);
    end;
    XS := Inttostr(round((Xkoord-HPRadius) * 400));
    YS := IntToStr(round((YKoord-HpRadius) * 400));
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
      if Programm = 4 then
      begin
        Farben (Canvas, GrosskreisFarbe);
        if PolPlot then
        begin
          Gefuegetyp := 2;
          Plot1(Canvas);
        end;
        for i := 1 to ZahlGlob do
        begin
          Aa := AziFeld[i] * Bo;
          Ff := FalFeld[i] * Bo;
          Aa := Aa + Pi;
          Ff := Pi/2 - Ff;
          Hpgrosskreis (Canvas, Aa, Ff);
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
        Canvas.Textout (Xd, Yd,'Demo-Version');
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
    MaskEditBrE.Enabled := true;
    MaskEditBrD.Enabled := true;
    MaskEditBrE.SetFocus;
  end;
  Calib                    := false;
end;

procedure TForm85.ButtonPlotEndeClick(Sender: TObject);
begin
  GroupBoxPlotten.Visible := false;
  PanelDaten.Visible      := true;
end;

procedure TForm85.Druckereinrichten1Click(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TForm85.SpeedEinrichtenClick(Sender: TObject);
begin
  Druckereinrichten1Click(Sender);
end;

procedure TForm85.drucken1Click(Sender: TObject);
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
  i                         := 3;
  repeat
    i := i + 1;
    str(i, SchriftS);
    ListBoxSchrift.Items.Add (SchriftS);
  until i = 40;
end;

procedure TForm85.MaskEditLaengeChange(Sender: TObject);
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

procedure TForm85.MaskEditLinksChange(Sender: TObject);
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

procedure TForm85.MaskEditObenChange(Sender: TObject);
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

procedure TForm85.MaskEditUnterschriftKeyPress(Sender: TObject;
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

procedure TForm85.RadioButtonlinksClick(Sender: TObject);
begin
  BuendigS := 'Links';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    ButtonDrucken.Enabled := true;
end;

procedure TForm85.RadioButtonzentriertClick(Sender: TObject);
begin
  BuendigS := 'Zentriert';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    ButtonDrucken.Enabled := true;
end;

procedure TForm85.RadioButtonrechtsClick(Sender: TObject);
begin
  BuendigS := 'Rechts';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    ButtonDrucken.Enabled := true;
end;

procedure TForm85.ListBoxSchriftClick(Sender: TObject);
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

procedure TForm85.SpeedDruckenClick(Sender: TObject);
begin
  drucken1Click(Sender);
end;

procedure TForm85.ButtonDruckenClick(Sender: TObject);
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
  Bitmap  := TBitmap.Create;

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

procedure TForm85.ButtonAbbrechenClick(Sender: TObject);
begin
  Paneldrucken.Visible         := false;
  RadioButtonlinks.Visible     := false;
  RadioButtonzentriert.Visible := false;
  RadioButtonrechts.Visible    := false;
  RadioGroup.Visible           := false;
end;

procedure TForm85.SpeedPlotterClick(Sender: TObject);
begin
  DruckenClick(Sender);
end;

procedure TForm85.TextSchreibenClick(Sender: TObject);
begin
  PanelText.Visible := true;
  MaskEditText.SetFocus;
  BText := true;
  PanelPlazieren.Visible := false;
end;

procedure TForm85.SpeedTextClick(Sender: TObject);
begin
  TextschreibenClick(Sender);
end;

procedure TForm85.MaskEditTextKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(13) then
  begin
    TeS := MaskEditText.Text;
    PanelPlazieren.Visible := true;
  end;
end;

procedure TForm85.Image1MouseUp(Sender: TObject; Button: TMouseButton;
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

procedure TForm85.TrueckClick(Sender: TObject);
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

procedure TForm85.SpeedUnTextClick(Sender: TObject);
begin
  TrueckClick(Sender);
end;

procedure TForm85.IsolinienClick(Sender: TObject);
begin
  WeiterB[85] := true;
  Application.CreateForm(TForm23, Form23);
  Form23.Show;
  Programm := 4;
end;

procedure TForm85.SpeedIsoClick(Sender: TObject);
begin
  IsolinienClick(Sender);
end;

procedure TForm85.StatistikClick(Sender: TObject);
begin
  WeiterB[85] := true;
  Application.CreateForm(TForm21, Form21);
  Form21.Show;
  Programm := 4;
end;

procedure TForm85.SpeedStatistikClick(Sender: TObject);
begin
  StatistikClick(Sender);
end;

procedure TForm85.SubmaximaClick(Sender: TObject);
begin
  WeiterB[85] := true;
  Application.CreateForm(TForm25, Form25);
  Form25.Show;
  Programm := 4;
end;

procedure TForm85.SpeedMaximaClick(Sender: TObject);
begin
  SubmaximaClick(Sender);
end;

procedure TForm85.LagenkugelClick(Sender: TObject);
begin
  WeiterB[85] := true;
  Application.CreateForm(TForm37, Form37);
  Form37.Show;
  Programm := 4;
end;

procedure TForm85.SpeedNetzClick(Sender: TObject);
begin
  LagenkugelClick(Sender);
end;

procedure TForm85.Hilfe1Click(Sender: TObject);
const
  Anfang = 112;
var
  DateiS : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\12PlotPunkte-plot.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\12PlotPoints-plot.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm85.SpeedHilfeClick(Sender: TObject);
begin
  Hilfe1Click(Sender);
end;

procedure TForm85.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Grosskreise.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'Great_circles.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm85.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm85.SpeedObereHClick(Sender: TObject);
begin
  obereClick(Sender);
end;

procedure TForm85.SpeedUntereHClick(Sender: TObject);
begin
  untereClick(Sender);
end;

procedure TForm85.SpeedFarbeClick(Sender: TObject);
begin
  Farbe1Click(Sender);
end;

procedure TForm85.SpeedKopierenClick(Sender: TObject);
begin
  Kopieren1Click(Sender);
end;

procedure TForm85.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm85.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

procedure TForm85.PunktFarbeClick(Sender: TObject);
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

procedure TForm85.SpeedPunktFarbeClick(Sender: TObject);
begin
  PunktFarbeClick(Sender);
end;

procedure TForm85.LinearClick(Sender: TObject);
begin
  GTypS              := 'linear';
  PanelMess.Visible  := true;
  PanelKlick.Visible := true;
  Maus               := true;
  BildImage1 := TBitmap.Create;
  BildImage1.Assign(Image1.Picture.Graphic);
end;

procedure TForm85.SpeedLanzeigenClick(Sender: TObject);
begin
  LinearClick(Sender);
end;

procedure TForm85.FlaecheAnzeigenClick(Sender: TObject);
begin
  GTypS              := 'plane';
  PanelMess.Visible  := true;
  PanelKlick.Visible := true;
  Maus               := true;
  BildImage1 := TBitmap.Create;
  BildImage1.Assign(Image1.Picture.Graphic);
end;

procedure TForm85.SpeedFanzeigenClick(Sender: TObject);
begin
  FlaecheAnzeigenClick(Sender);
end;

procedure TForm85.PunkteWegClick(Sender: TObject);
begin
  PanelKlick.Visible := false;
  PanelMess.Visible  := false;
  Image1.Canvas.Draw(0,0,BildImage1);
  BildImage1.Free;
end;

procedure TForm85.SpeedUndoClick(Sender: TObject);
begin
  PunkteWegClick(Sender);
end;

procedure TForm85.Image1MouseDown(Sender: TObject; Button: TMouseButton;
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
  if ssRight in Shift then
  begin
    Maus := false;
    PanelMess.Visible  := false;
    PanelKlick.Visible := false;
  end;
end;

procedure TForm85.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
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
  Xalt,Yalt : word;
begin
  Azimut := 0;
  Fallen := 0;
  Move   := true;
  if not Maus then exit;
  FalExt := 0;
  Bo := Pi / 180;
  Nullx := XMitte;
  NullY := YMitte;
  Image1.Canvas.Font.Color := DiagrFarbe;
  Image1.Canvas.Textout (Xalt+4,Yalt+4,'      ');
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
  Xalt   := X;
  YAlt   := Y;
  if ssRight in Shift then
  begin
    Maus := false;
    PanelMess.Visible  := false;
    PanelKlick.Visible := false;
  end;
end;

procedure TForm85.DspeichernClick(Sender: TObject);
begin
  if CurrentFile <> '' then Speichern(CurrentFile,ZahlGlob,
    AziFeld,FalFeld)
  else DspeichernUnterClick(Sender);
end;

procedure TForm85.DspeichernUnterClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := ExtenS;
  SaveDialog1.Filter := 'Planes (*.pla)|*.PLA';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    Speichern (CurrentFile, ZahlGlob, AziFeld, FalFeld);
  end;
end;

procedure TForm85.SpeedDspeichernUnterClick(Sender: TObject);
begin
  DSpeichernUnterClick(Sender);
end;

procedure TForm85.FlaechenpoleClick(Sender: TObject);
begin
  WeiterB[85] := true;
  Programm    := 3;
  Application.CreateForm(TForm12, Form12);
  Form12.Show;
  Programm := 4;
end;

procedure TForm85.SpeedPoleClick(Sender: TObject);
begin
  FlaechenpoleClick(Sender);
end;

end.
