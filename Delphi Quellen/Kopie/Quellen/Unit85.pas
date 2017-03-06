unit Unit85; {Plot von Daten, Grafik}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs,  ExtCtrls, Plotten, StdCtrls, Globvar,
  Menus, Basic, ClipBrd, HPPlot, Mask, Texte, ComCtrls,
  Buttons, Drucken, Printers, Einausga, Shellapi,
  GifImage, Bmp2Tiff, Jpeg, ExtDlgs, Standard, ReadTiff,
  ehsHelpRouter;

type
  TForm85 = class(TForm)
    Image1 : TImage;

    Panel1         : TPanel;
    LabelDateien   : TLabel;
    ListBoxDateien : TListBox;
    LabelAnzahl1   : TLabel;

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
    speichernunter1         : TMenuItem;
    ausZwischenablageholen1 : TMenuItem;
    ausDateiholen1          : TMenuItem;

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

       LabelZahl2: TLabel;

    Paneldrucken     : TPanel;
    GroupBoxdrucken  : TGroupBox;
        LabelRdrucken    : TLabel;
        MaskEditRdrucken : TMaskEdit;
        LabelMitte       : TLabel;
        LabelXdrucken    : TLabel;
        LabelYdrucken    : TLabel;
        MaskEditXdrucken : TMaskEdit;
        MaskEditYdrucken : TMaskEdit;
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
    PanelPlotfile: TPanel;
    LabelTyp: TLabel;
    LabelPlot: TLabel;
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
    LabelPixel: TLabel;
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
    SpeedPanzeigen: TSpeedButton;
    PunkteWeg: TMenuItem;
    SpeedUndo: TSpeedButton;
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
    SpeedHolEMF: TSpeedButton;
    ButtonPloterstellen: TButton;
    ButtonDrucken: TButton;
    ButtonAbbrechen: TButton;

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
    procedure ausZwischenablageholen1Click(Sender: TObject);

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
    procedure mitdemHPPlotterplotten1Click(Sender: TObject);
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
    procedure WertAnzeigenClick(Sender: TObject);
    procedure FlaechenpoleClick(Sender: TObject);
    procedure SpeedPoleClick(Sender: TObject);
    procedure SpeedPolePlottenClick(Sender: TObject);
    procedure SpeedPoleNichtPlottenClick(Sender: TObject);
    procedure SpeedPunktFarbeClick(Sender: TObject);
    procedure SpeedPanzeigenClick(Sender: TObject);
    procedure PunkteWegClick(Sender: TObject);
    procedure SpeedUndoClick(Sender: TObject);
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
    procedure BGroesseClick(Sender: TObject);
    procedure MaskEditBBreiteKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditBHoeheKeyPress(Sender: TObject; var Key: Char);
    procedure CheckBoxBildClick(Sender: TObject);
    procedure transparentClick(Sender: TObject);
    procedure HFarbeClick(Sender: TObject);
    procedure SpeedTransparentClick(Sender: TObject);
    procedure SpeedBGroesseClick(Sender: TObject);
    procedure SpeedHFarbeClick(Sender: TObject);
    procedure SpeedBMPClick(Sender: TObject);
    procedure SpeedGIFClick(Sender: TObject);
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
    procedure ButtonPloterstellenClick(Sender: TObject);
    procedure ButtonDruckenClick(Sender: TObject);
    procedure ButtonAbbrechenClick(Sender: TObject);
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

implementation
uses Unit9, Unit10, Unit11, Unit12, Unit13, Unit14, Unit64,
     Unit21, Unit23, Unit25;
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
  WindowState := wsMaximized;
  Left   := 4;
  Top    := 0;
  Width  := 1030;
  Height := 750;
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
  PanelPlotFile.Hint               := Hilf(277);
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
  SpeedPLT.Hint                    := Hilf(438);
  SpeedDXF.Hint                    := Hilf(439);
  SpeedPeripherie.Hint             := Hilf(440);
  SpeedDiagramm.Hint               := Hilf(441);
  SpeedRahmen.Hint                 := Hilf(442);
  SpeedStrich.Hint                 := Hilf(463);
  SpeedDspeichernUnter.Hint        := Hilf(204);
  SpeedEinrichten.Hint             := Hilf(505);
  SpeedStatistik.Hint              := Hilf(509);
  SpeedIso.Hint                    := Hilf(507);
  SpeedMaxima.Hint                 := Hilf(508);
  SpeedPole.Hint                   := Hilf(519);
  SpeedPolePlotten.Hint            := Hilf(524);
  SpeedPoleNichtPlotten.Hint       := Hilf(525);
  SpeedPunktFarbe.Hint             := Hilf(523);
  SpeedPanzeigen.Hint              := Hilf(522);
  SpeedUndo.Hint                   := Hilf(545);
  SpeedBGroesse.Hint               := Hilf(583);
  SpeedTransparent.Hint            := Hilf(584);
  SpeedHFarbe.Hint                 := Hilf(443);
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
  SpeedHolEMF.Hint                 := Hilf(626);
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
  speichernUnter1.Caption          := Tx(285);
  ausZwischenablageholen1.Caption  := Tx(286);
  ausDateiholen1.Caption           := Tx(287);
  mitdemHPPlotterplotten1.Caption  := Tx(288);
  Drucker1.Caption                 := Tx(1080);
  FarbePeripherie1.Caption         := Tx(498);
  FarbeDiagramm1.Caption           := Tx(860);
  LabelDateien.Caption             := Tx(136);
  LabelAnzahl1.Caption             := Tx(296);
  LabelAnzahl1.Enabled             := false;
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
  LabelDateien.Enabled             := false;
  LabelZahl2.Caption               := '';
  Grafik1.Enabled                  := false;
  Hilfe1.Caption                   := Tx(162)+' (F1)';
  LabelRadius .Enabled             := false;
  MaskEditRadius.EditMask          := '999;0; ';
  MaskEditX.EditMask               := '999;0; ';
  MaskEditY.EditMask               := '999;0; ';
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
  LabelBeenden.Caption             := Tx(1244);
  LabelProjektion.Caption          := '';
  GroupBoxPlotten.Caption          := '';
  Weiter.Caption                   := Tx(1341);
  Isolinien.Caption                := Tx(618);
  Statistik.Caption                := Tx(1342);
  Submaxima.Caption                := Tx(579);
  Flaechenpole.Caption             := Tx(1351);
  Form85.Caption               := Tx(304);   {Plotten von Großkreisen}
  Paneldrucken.Visible         := false;
  RadioButtonlinks.Visible     := false;
  RadioButtonzentriert.Visible := false;
  RadioButtonrechts.Visible    := false;
  RadioGroup.Visible           := false;
  Druckereinrichten1.Caption   := Tx(94);
  drucken1.Caption             := Tx(93);
  FarbeRahmen.Caption          := Tx(892);
  LabelTyp.Caption             := Tx(850);
  PanelPlotFile.Visible        := false;
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
  if ObenUntenS = 'LOWER' then OU := 1;
  if ObenUntenS = 'UPPER' then OU := -1;
  Maus := false;
  LabelWerte.Caption := Tx(1191);
  LabelPixel.Caption := Tx(1192);
  PunkteWeg.Caption  := Tx(1396);
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
  Ratio                  := Image1.Width/Image1.Height;
  HTransparent           := false;
  PanelGroesse.Visible   := false;
  HolPixS                := '';
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
end;

procedure TForm85.ButtonzuruckClick(Sender: TObject);   {zurück}
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
begin
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
  Oo       : real;
  Azimut   : word;
  Fall     : shortint;
  ProS     : string;
  Quadrat  : TRect;
  Rahmen   : TRect;
  JBild    : TJpegImage;
  MetaFile : TMetaFile;
begin
  if not WeiterF then
  begin
    ButtonStart.Visible   := true;
    ButtonBeenden.Visible := true;
  end;
  Bo := Pi/180;
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
  if not WeiterF then
  begin
    Weiter.Enabled         := true;
    SpeedIso.Enabled       := true;
    SpeedStatistik.Enabled := true;
    SpeedMaxima.Enabled    := true;
    SpeedPole.Enabled      := true;
  end;
  GroupBoxPlotten.Caption  := 'Plot:';
  if ProjektionS = 'Lambert' then ProS  := Tx(259);
  if ProjektionS = 'stereographic' then ProS := Tx(260);
  if ProjektionS = 'orthographic' then ProS := Tx(849);
  if ProjektionS = 'Kavraiskii' then ProS := 'Kavraiskii';
  LabelProjektion.Caption := Tx(651)+': '+ ProS;
  LabelDateien.Enabled   := true;
  LabelAnzahl1.Enabled   := true;
  ListBoxDateien.Clear;
  if EingabeS <> 'ExcelD' then
    for i := 0 to DateiZahl do
      ListboxDateien.Items.Add(DateiNameS[i])
  else ListBoxDateien.Items.Add(PfadS);
  ExtensionS := RightS(DateinameS[1],3);
  LabelZahl2.Caption := IntToStr (ZahlGlob);
  ImageNord.Picture.LoadfromFile (DirectS+'\'+'NordPfeil.bmp');
  Image1.Top    := 2;
  Image1.Left   := 80;
  Image1.Width  := 660;
  Image1.Height := 663;
  Bitmap := Tbitmap.Create;
  Bitmap.Width     := 660;
  Bitmap.Height    := 663;
  ImageNord.Top    := 22;
  ImageNord.Left   := 400;
  ImageNord.Width  := 18;
  ImageNord.Height := 36;
  with Image1 do
  begin
    Picture.Graphic := Bitmap;
    Xmitte := Width div 2;
    Ymitte := Height div 2 + 18;
    Radius := Width div 2 - 24;
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
  Image1.Canvas.Draw(Image1.Width div 2 - ImageNord.Width div 2,7,
                     ImageNord.Picture.Graphic);
  Halbkugel.Enabled      := true;
  Projektionen1.Enabled  := true;
  PolePlotten.Enabled    := true;
  Darstellung1.Enabled   := true;
  Farbe1.Enabled         := true;
  PunktAnzeigen.Enabled  := true;
  Grafik1.Enabled        := true;
  DatenSpeichern.Enabled := true;
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

procedure TForm85.untereClick(Sender: TObject);
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

procedure TForm85.obereClick(Sender: TObject);
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

procedure TForm85.Lambert1Click(Sender: TObject);
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
  if PolPlot then PoleJaClick(Sender);
end;

procedure TForm85.stereografisch1Click(Sender: TObject);
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
  if PolPlot then PoleJaClick(Sender);
end;

procedure TForm85.Kavraiskii1Click(Sender: TObject);
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick (Sender);
  if PolPlot then PoleJaClick(Sender);
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
      assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
    assignFile(Datei,DirectS+'\'+'Fabric.ini');
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

procedure TForm85.SpeedHFarbeClick(Sender: TObject);
begin
  HFarbeClick(Sender);
end;

procedure TForm85.speichernBMPClick(Sender: TObject);
var
  Rahmen  : TRect;
  BBitmap : TBitmap;
begin
  BBitmap        := TBitmap.Create;
  BBitmap.Width  := BBreiteSt;
  BBitmap.Height := BHoeheSt;
  Rahmen        := Rect(0,0,BBitmap.Width,BBitmap.Height);
  BBitmap.Canvas.Stretchdraw(Rahmen,Image1.Picture.Graphic);
  try
    if (CurrentFile <> '') and (UCaseS(RightS(CurrentFile,3)) = 'BMP')
    then BBitmap.SaveToFile(CurrentFile)
    else speichernUBMPClick(Sender);
  finally
    BBitmap.Free;
  end;
end;

procedure TForm85.SpeedBMPClick(Sender: TObject);
begin
  speichernBMPClick(Sender);
end;

procedure TForm85.speichernGIFClick(Sender: TObject);
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

procedure TForm85.SpeedGIFClick(Sender: TObject);
begin
  speichernGIFClick(Sender);
end;

procedure TForm85.speichernTIFClick(Sender: TObject);
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
  end;
end;

procedure TForm85.speichernJPGClick(Sender: TObject);
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

procedure TForm85.SpeedJPGClick(Sender: TObject);
begin
  speichernJPGClick(Sender);
end;

procedure TForm85.speichernWMFClick(Sender: TObject);
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

procedure TForm85.SpeedWMFClick(Sender: TObject);
begin
  speichernWMFClick(Sender);
end;

procedure TForm85.speichernEMFClick(Sender: TObject);
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

procedure TForm85.SpeedEMFClick(Sender: TObject);
begin
  speichernEMFClick(Sender);
end;

procedure TForm85.speichernPLTClick(Sender: TObject);
var
  i      : byte;
  Datei  : Textfile;
begin
  GeraetS                  := 'HPGL';
  GroupBoxPlotten.Visible  := true;
  PanelPlotFile.Visible    := true;
  LabelPlot.Caption        := GeraetS;
  FarbePeripherie1.Enabled := true;
  KonfigZeileS[53] := 'Paper Plot                 :,HPGL';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
  GroupBoxPlotten.Visible  := true;
  FarbePeripherie1.Enabled := true;
  GeraetS                  := 'DXF';
  PanelPlotFile.Visible    := true;
  LabelPlot.Caption        := GeraetS;
  KonfigZeileS[53]         := 'Paper Plot                 :,DXF';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  FarbePeripherie1.Enabled := true;
end;

procedure TForm85.speichernUBMPClick(Sender: TObject);
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

procedure TForm85.speichernUGIFClick(Sender: TObject);
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

procedure TForm85.speichernUTIFClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := 'Tagged image file format (*.tif)|*.tif';
  SaveDialog1.Filter     := 'Tagged image file format (*.tif)|*.tif';;
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    speichernTIFClick(Sender);
  end
  else exit;
end;

procedure TForm85.speichernUJPGClick(Sender: TObject);
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

procedure TForm85.speichernUWMFClick(Sender: TObject);
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

procedure TForm85.speichernUEMFClick(Sender: TObject);
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

procedure TForm85.ausZwischenablageholen1Click(Sender: TObject);
begin
  FarbePeripherie1.Enabled  := false;
  FarbeDiagramm1.Enabled    := false;
  Hintergrund.Enabled       := false;
  HolZwischen := true;
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
  Oo, X, Y : real;
  i        : word;
  Datei    : TextFile;
  XS, YS   : string;
  WS, HS   : string;
  Groesse  : word;
  Typ      : TMsgDlgType;
begin
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
    XS := Inttostr(round((Xkoord-HPRadius/1.5) * 400));
    YS := IntToStr(round((YKoord-HpRadius/4) * 400));
    WS := FloatToStr(HPRadius/10);
    HS := FloatToStr(HPRadius/8);
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
  GroupBoxPlotten.Visible := false;
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
  Paneldrucken.Visible := true;
  RadioButtonlinks.Visible     := true;
  RadioButtonzentriert.Visible := true;
  RadioButtonrechts.Visible    := true;
  RadioGroup.Visible           := true;
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
  i                         := 3;
  repeat
    i := i + 1;
    str(i, SchriftS);
    ListBoxSchrift.Items.Add (SchriftS);
  until i = 40;
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

procedure TForm85.ButtonAbbrechenClick(Sender: TObject);
begin
  Paneldrucken.Visible         := false;
  RadioButtonlinks.Visible     := false;
  RadioButtonzentriert.Visible := false;
  RadioButtonrechts.Visible    := false;
  RadioGroup.Visible           := false;
end;

procedure TForm85.mitdemHPPlotterplotten1Click(Sender: TObject);
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
  LabelPlot.Caption       := GeraetS;
end;

procedure TForm85.SpeedPlotterClick(Sender: TObject);
begin
  mitdemHpPlotterPlotten1Click(Sender);
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
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\plot0uwj.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\Plot-Data-Plot.htm');
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

procedure TForm85.SpeedZwischenablageClick(Sender: TObject);
begin
  AusZwischenablageHolen1Click(Sender);
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  KonfigZeileS[94] := 'Colour of clicked point    :,'+FarbeS;
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
end;

procedure TForm85.SpeedPunktFarbeClick(Sender: TObject);
begin
  PunktFarbeClick(Sender);
end;

procedure TForm85.WertAnzeigenClick(Sender: TObject);
begin
  PanelKlick.Visible := true;
  Maus               := true;
end;

procedure TForm85.SpeedPanzeigenClick(Sender: TObject);
begin
  WertAnzeigenClick(Sender);
end;

procedure TForm85.PunkteWegClick(Sender: TObject);
begin
  ButtonStartClick(Sender);
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
      if (Gefuegetyp = 2) or (Gefuegetyp = 4)then
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

procedure TForm85.DspeichernClick(Sender: TObject);
begin
  if CurrentFile <> '' then Speichern(CurrentFile,Anzahl,
    AziFeld,FalFeld)
  else DspeichernUnterClick(Sender);
end;

procedure TForm85.DspeichernUnterClick(Sender: TObject);
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
