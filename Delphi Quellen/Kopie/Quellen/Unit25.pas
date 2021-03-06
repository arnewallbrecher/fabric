unit Unit25;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, ExtCtrls, StdCtrls, Mask, Menus, Basic,
  Globvar, Clipbrd, Plotten, CloUnit1, CloVar, ComCtrls,
  HPPlot, Standard, Texte, Buttons, Printers, Drucken,
  Shellapi, Einausga, GifImage, Bmp2Tiff, Jpeg, ExtDlgs,
  ReadTiff, ehsHelpRouter;

type
  TForm25 = class(TForm)
    PanelDateien         : TPanel;
    LabelDateien         : TLabel;
    LabelAnzahl          : TLabel;
    Label00000           : TLabel;
    LabelVielfaches      : TLabel;
    LabelGleichverteilung: TLabel;

    Panel1        : TPanel;
    LabelGruppe   : TLabel;
    LabelMenge    : TLabel;
    LabelRProzent : TLabel;
    LabelKonzPar  : TLabel;
    LabelTheta    : TLabel;
    LabelSOeffnung: TLabel;
    LabelZOeffnung: TLabel;
    LabelZylinder : TLabel;
    LabelZentrum  : TLabel;

    Panel2           : TPanel;
    LabelTrennung    : TLabel;
    Labelsignifikant : TLabel;
    Labelnichtsig1   : TLabel;

    Panel3       : TPanel;
    LabelTest    : TLabel;
    LabelWinkel  : TLabel;
    LabelCluster : TLabel;
    LabelDaten   : TLabel;

    ListBox1: TListBox;
    ListBox2: TListBox;

    MainMenu1    : TMainMenu;

    Konfidenz1   : TMenuItem;
    N99Prozent1: TMenuItem;
    N95Prozent1: TMenuItem;
    N90Prozent1: TMenuItem;

    ButtonStart  : TButton;
    Buttonzurueck: TButton;
    ButtonBeenden: TButton;

    Image1       : TImage;

    ListBox3     : TListBox;

    Grafik1                 : TMenuItem;
    kopieren1               : TMenuItem;
    speichern1              : TMenuItem;
    speichernunter1         : TMenuItem;
    ausZwischenablageholen1 : TMenuItem;
    ausDateiholen1          : TMenuItem;

    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;

    GroupBoxplotten  : TGroupBox;

      Panel5         : TPanel;
      LabelRadius    : TLabel;
      MaskEditRadius : TMaskEdit;

      Panel6         : TPanel;
      LabelMittel    : TLabel;
      LabelX         : TLabel;
      MaskEditX      : TMaskEdit;
      LabelY         : TLabel;
      MaskEditY      : TMaskEdit;

    HpPlotter1 : TMenuItem;

    Farbe1: TMenuItem;

    FarbePeri1  : TMenuItem;

    FarbeDiagramm1 : TMenuItem;

    FarbeRahmen   : TMenuItem;

    Hilfe1      : TMenuItem;
    StatusBar   : TStatusBar;
    Fortschritt : TProgressBar;

    Oeffnungsgrad1 : TMenuItem;

    Vertrauenskegel1 : TMenuItem;

    Obergruppen1 : TMenuItem;
    ObergruppenVertrauen1: TMenuItem;

    Datenpunkte1 : TMenuItem;

    Datenpunkte2   : TMenuItem;
    Kreisoffen1    : TMenuItem;
    Kreisgefllt1   : TMenuItem;
    Quadratoffen1  : TMenuItem;
    Quadratgefllt1 : TMenuItem;
    Dreieckoffen1  : TMenuItem;
    Dreieckgefllt1 : TMenuItem;
    Rauteoffen1    : TMenuItem;
    Rautegefllt1   : TMenuItem;
    PanelDrucken         : TPanel;
    GroupBoxDrucken      : TGroupBox;
    Panel7               : TPanel;
    LabelRdrucken        : TLabel;
    MaskEditRdrucken     : TMaskEdit;
    Panel9               : TPanel;
    LabelMitte           : TLabel;
    LabelXdrucken        : TLabel;
    LabelYdrucken        : TLabel;
    MaskEditXdrucken     : TMaskEdit;
    MaskEditYdrucken     : TMaskEdit;
    enden: TPanel;
    LabelUnterschrift    : TLabel;
    LabelSchrift         : TLabel;
    MaskEditUnterschrift : TMaskEdit;
    ListBoxSchrift       : TListBox;
    RadioGroup           : TRadioGroup;
    RadioButtonLinks     : TRadioButton;
    RadioButtonZentriert : TRadioButton;
    RadioButtonRechts    : TRadioButton;

    Drucker1            : TMenuItem;
    Druckereinrichten1  : TMenuItem;
    drucken1            : TMenuItem;
    PrinterSetupDialog1 : TPrinterSetupDialog;
    PrintDialog1        : TPrintDialog;
    PanelSpeed: TPanel;
    SpeedHilfe   : TSpeedButton;
    SpeedDrucken : TSpeedButton;
    Handbuch: TMenuItem;
    Projektion: TMenuItem;
    stereografisch: TMenuItem;
    Lambert: TMenuItem;
    orthografisch: TMenuItem;
    Kavraiskii: TMenuItem;
    ColorDialog1: TColorDialog;
    Eigenwerte1: TMenuItem;
    Hintergrund: TMenuItem;
    PanelProjektion: TPanel;
    LabelProjektion: TLabel;
    PanelPlotFile: TPanel;
    LabelGeraet: TLabel;
    LabelPlotter: TLabel;
    Halbkugel: TMenuItem;
    untere: TMenuItem;
    obere: TMenuItem;
    Image2: TImage;
    SpeedHandbuch      : TSpeedButton;
    SpeedObereH        : TSpeedButton;
    SpeedUntereH       : TSpeedButton;
    SpeedKopieren      : TSpeedButton;
    SpeedZwischenablage: TSpeedButton;
    SpeedKreisO        : TSpeedButton;
    SpeedKreisG        : TSpeedButton;
    SpeedDreieckO      : TSpeedButton;
    SpeedDreieckG      : TSpeedButton;
    SpeedQuadratO      : TSpeedButton;
    SpeedQuadratG      : TSpeedButton;
    SpeedRauteO        : TSpeedButton;
    SpeedRauteG        : TSpeedButton;
    SpeedLambert       : TSpeedButton;
    SpeedStereografisch: TSpeedButton;
    SpeedOrthografisch : TSpeedButton;
    SpeedKavraiskii    : TSpeedButton;
    SpeedKonfidenz90   : TSpeedButton;
    SpeedKonfidenz95   : TSpeedButton;
    SpeedKonfidenz99   : TSpeedButton;
    SpeedFarbeVertrauen: TSpeedButton;
    SpeedOoeffnung     : TSpeedButton;
    SpeedOVertrauen    : TSpeedButton;
    SpeedFarbeDaten    : TSpeedButton;
    SpeedFarbeEigen    : TSpeedButton;
    SpeedFarbeOeffnung : TSpeedButton;
    SpeedPlotter       : TSpeedButton;
    SpeedPLT           : TSpeedButton;
    SpeedDXF           : TSpeedButton;
    SpeedPeripherie    : TSpeedButton;
    SpeedDiagramm      : TSpeedButton;
    SpeedRahmen        : TSpeedButton;
    SpeedHintergrund   : TSpeedButton;
    Literatur: TMenuItem;
    SpeedLiteratur: TSpeedButton;
    ImageNord: TImage;
    Linien: TMenuItem;
    durchgezogen: TMenuItem;
    gestrichelt: TMenuItem;
    punktiert: TMenuItem;
    strichpunktiert: TMenuItem;
    ListBoxStrich: TListBox;
    LabelStrich: TLabel;
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
    SpeedDurchgezogen: TSpeedButton;
    SpeedGestrichelt: TSpeedButton;
    SpeedPunktiert: TSpeedButton;
    SpeedStrichpunkt: TSpeedButton;
    SpeedDspeichern: TSpeedButton;
    LabelBeenden: TLabel;
    SpeedEinrichten: TSpeedButton;
    Auswertung: TMenuItem;
    DatenPlotten: TMenuItem;
    Grosskreise: TMenuItem;
    Isolinien: TMenuItem;
    SpeedPunkte: TSpeedButton;
    SpeedGKreise: TSpeedButton;
    SpeedIso: TSpeedButton;
    Statistik: TMenuItem;
    SpeedStatistik: TSpeedButton;
    PunkteWeg: TMenuItem;
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
    transparent: TMenuItem;
    HFarbe: TMenuItem;
    SpeedBGroesse: TSpeedButton;
    SpeedBMP: TSpeedButton;
    SpeedGIF: TSpeedButton;
    SpeedTIF: TSpeedButton;
    SpeedJPG: TSpeedButton;
    SpeedWMF: TSpeedButton;
    SpeedEMF: TSpeedButton;
    speichernPLT: TMenuItem;
    speichernDXF: TMenuItem;
    OpenPictureDialog1: TOpenPictureDialog;
    holenBMP: TMenuItem;
    holenGIF: TMenuItem;
    holenTIF: TMenuItem;
    holenJPG: TMenuItem;
    holenWMF: TMenuItem;
    holenEMF: TMenuItem;
    SpeedHolBMP: TSpeedButton;
    SpeedHolGIF: TSpeedButton;
    SpeedHolTIF: TSpeedButton;
    SpeedHolJPG: TSpeedButton;
    SpeedHolWMF: TSpeedButton;
    SpeedHolEMF: TSpeedButton;
    Ploterstellen: TButton;
    ButtonDrucken: TButton;
    ButtonAbbrechen: TButton;

    {Konfidenz}
    procedure N99Prozent1Click(Sender: TObject);
    procedure N95Prozent1Click(Sender: TObject);
    procedure N90Prozent1Click(Sender: TObject);

    procedure FormActivate(Sender: TObject);
    procedure ButtonStartClick(Sender: TObject);
    procedure ListBox2Click(Sender: TObject);
    procedure ButtonBeendenClick(Sender: TObject);
    procedure ButtonzurueckClick(Sender: TObject);

    {Grafik}
    procedure kopieren1Click(Sender: TObject);
    procedure ausZwischenablageholen1Click(Sender: TObject);

    {Farbe}
    procedure FarbePeri1Click(Sender: TObject);
    procedure FarbeDiagramm1Click(Sender: TObject);
    procedure FarbeRahmenClick(Sender: TObject);
    procedure Hilfe1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ShowHint(Sender: TObject);
    procedure SpeedHilfeClick(Sender: TObject);
    procedure Kreisoffen1Click(Sender: TObject);
    procedure Kreisgefllt1Click(Sender: TObject);
    procedure Quadratoffen1Click(Sender: TObject);
    procedure Quadratgefllt1Click(Sender: TObject);
    procedure Dreieckoffen1Click(Sender: TObject);
    procedure Dreieckgefllt1Click(Sender: TObject);
    procedure Rauteoffen1Click(Sender: TObject);
    procedure Rautegefllt1Click(Sender: TObject);
    procedure Druckereinrichten1Click(Sender: TObject);
    procedure drucken1Click(Sender: TObject);
    procedure MaskEditUnterschriftKeyPress(Sender: TObject; var Key: Char);
    procedure RadioButtonLinksClick(Sender: TObject);
    procedure RadioButtonZentriertClick(Sender: TObject);
    procedure RadioButtonRechtsClick(Sender: TObject);
    procedure ListBoxSchriftClick(Sender: TObject);
    procedure SpeedDruckenClick(Sender: TObject);
    procedure HandbuchClick(Sender: TObject);
    procedure stereografischClick(Sender: TObject);
    procedure LambertClick(Sender: TObject);
    procedure orthografischClick(Sender: TObject);
    procedure KavraiskiiClick(Sender: TObject);
    procedure Oeffnungsgrad1Click(Sender: TObject);
    procedure Vertrauenskegel1Click(Sender: TObject);
    procedure Obergruppen1Click(Sender: TObject);
    procedure ObergruppenVertrauen1Click(Sender: TObject);
    procedure Datenpunkte1Click(Sender: TObject);
    procedure Eigenwerte1Click(Sender: TObject);
    procedure DruckereinrichtenClick(Sender: TObject);
    procedure untereClick(Sender: TObject);
    procedure obereClick(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure SpeedUntereHClick(Sender: TObject);
    procedure SpeedObereHClick(Sender: TObject);
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
    procedure SpeedFarbeVertrauenClick(Sender: TObject);
    procedure SpeedFarbeOeffnungClick(Sender: TObject);
    procedure SpeedOoeffnungClick(Sender: TObject);
    procedure SpeedOVertrauenClick(Sender: TObject);
    procedure SpeedFarbeDatenClick(Sender: TObject);
    procedure SpeedFarbeEigenClick(Sender: TObject);
    procedure SpeedPlotterClick(Sender: TObject);
    procedure SpeedPLTClick(Sender: TObject);
    procedure SpeedDXFClick(Sender: TObject);
    procedure HpPlotter1Click(Sender: TObject);
    procedure SpeedPeripherieClick(Sender: TObject);
    procedure SpeedDiagrammClick(Sender: TObject);
    procedure SpeedRahmenClick(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
    procedure SpeedLiteraturClick(Sender: TObject);
    procedure durchgezogenClick(Sender: TObject);
    procedure punktiertClick(Sender: TObject);
    procedure strichpunktiertClick(Sender: TObject);
    procedure ListBoxStrichClick(Sender: TObject);
    procedure PunktFarbeClick(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DspeichernClick(Sender: TObject);
    procedure DspeichernUnterClick(Sender: TObject);
    procedure SpeedDurchgezogenClick(Sender: TObject);
    procedure SpeedGestricheltClick(Sender: TObject);
    procedure SpeedPunktiertClick(Sender: TObject);
    procedure SpeedStrichpunktClick(Sender: TObject);
    procedure SpeedDspeichernClick(Sender: TObject);
    procedure gestricheltClick(Sender: TObject);
    procedure SpeedEinrichtenClick(Sender: TObject);
    procedure DatenPlottenClick(Sender: TObject);
    procedure GrosskreiseClick(Sender: TObject);
    procedure IsolinienClick(Sender: TObject);
    procedure WertAnzeigenClick(Sender: TObject);
    procedure SpeedPunkteClick(Sender: TObject);
    procedure SpeedGKreiseClick(Sender: TObject);
    procedure SpeedIsoClick(Sender: TObject);
    procedure StatistikClick(Sender: TObject);
    procedure SpeedStatistikClick(Sender: TObject);
    procedure PunkteWegClick(Sender: TObject);
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
    procedure speichernUBMPClick(Sender: TObject);
    procedure speichernUGIFClick(Sender: TObject);
    procedure speichernUTIFClick(Sender: TObject);
    procedure speichernUJPGClick(Sender: TObject);
    procedure speichernUWMFClick(Sender: TObject);
    procedure speichernUEMFClick(Sender: TObject);
    procedure transparentClick(Sender: TObject);
    procedure HFarbeClick(Sender: TObject);
    procedure SpeedBGroesseClick(Sender: TObject);
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
  Form25       : TForm25;
  CurrentFile  : string;
  HolZwischen  : boolean;
  HolPixS      : string;
  Bitmap       : TBitmap;
  HpPlotter    : boolean;
  PlotDateiS   : string;
  Viel         : real;
  Schrift      : byte;
  BuendigS     : string;
  Gedrueckt    : array [1..3] of boolean;
  TextS        : string;
  Maus         : boolean;
  OU           : shortint;
  Ratio        : real;
  BHoeheSt     : word;

implementation
uses CloUnit5, Unit10, Unit11, Unit12, Unit21, Unit23,
     Unit24, Unit64, Unit85;
{$R *.DFM}

procedure TForm25.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm25.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm25.FormActivate(Sender: TObject);
var
  VielfachesS : string[5];
  VielS       : string[5];
  i           : byte;
begin
  Left   := 4;
  Top    := 0;
  Width  := 1040;
  Height := 750;
  WeiterB[25] := false;
  setlength (AziFeld, MaxDaten);
  setlength (FalFeld, MaxDaten);
  WindowState                     := wsNormal;
  Image1.Hint                     := Hilf(184);
  Panel2.Hint                     := Hilf(186);
  LabelTest.Hint                  := Hilf(187);
  LabelWinkel.Hint                := Hilf(187);
  LabelCluster.Hint               := Hilf(188);
  LabelDaten.Hint                 := Hilf(188);
  ListBox1.Hint                   := Hilf(32);
  LabelDateien.Hint               := Hilf(32);
  LabelAnzahl.Hint                := Hilf(36);
  Label00000.Hint                 := Hilf(36);
  LabelVielfaches.Hint            := Hilf(189);
  LabelGleichverteilung.Hint      := Hilf(189);
  ListBox2.Hint                   := Hilf(189);
  GroupBoxPlotten.Hint            := Hilf(58) + Hilf(59);
  ButtonStart.Hint                := Hilf(37);
  Buttonzurueck.Hint              := Hilf(52);
  Buttonbeenden.Hint              := Hilf(30);
  Ploterstellen.Hint              := Hilf(60);
  Panel2.Hint                     := Hilf(84);
  Panel5.Hint                     := Hilf(61);
  Panel6.Hint                     := Hilf(62);
  SpeedUntereH.Hint               := Hilf(364);
  SpeedObereH.Hint                := Hilf(363);
  MaskEditX.Hint                  := Hilf(63);
  MaskEditY.Hint                  := Hilf(64);
  Panel1.Hint                     := Hilf(190);
  ListBox3.Hint                   := Hilf(190);
  SpeedHilfe.Hint                 := Hilf(210);
  PanelProjektion.Hint            := Hilf(276);
  PanelPlotFile.Hint              := Hilf(277);
  SpeedHandbuch.Hint              := Hilf(274);
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
  SpeedKavraiskii.Hint            := Hilf(390);
  SpeedKonfidenz90.Hint           := Hilf(398);
  SpeedKonfidenz95.Hint           := Hilf(399);
  SpeedKonfidenz99.Hint           := Hilf(400);
  SpeedFarbeEigen.Hint            := Hilf(401);
  SpeedFarbeOeffnung.Hint         := Hilf(402);
  SpeedFarbeVertrauen.Hint        := Hilf(403);
  SpeedFarbeDaten.Hint            := Hilf(409);
  SpeedOoeffnung.Hint             := Hilf(410);
  SpeedOVertrauen.Hint            := Hilf(411);
  SpeedPlotter.Hint               := Hilf(437);
  SpeedPLT.Hint                   := Hilf(438);
  SpeedDXF.Hint                   := Hilf(439);
  SpeedPeripherie.Hint            := Hilf(440);
  SpeedDiagramm.Hint              := Hilf(441);
  SpeedRahmen.Hint                := Hilf(442);
  SpeedHintergrund.Hint           := Hilf(443);
  SpeedDurchgezogen.Hint          := Hilf(391);
  SpeedGestrichelt.Hint           := Hilf(392);
  SpeedStrichPunkt.Hint           := Hilf(393);
  SpeedPunktiert.Hint             := Hilf(394);
  SpeedDspeichern.Hint            := Hilf(204);
  LabelGruppe.Hint                := Hilf(474);
  LabelMenge.Hint                 := Hilf(475);
  LabelRProzent.Hint              := Hilf(476);
  LabelKonzPar.Hint               := Hilf(477);
  LabelTheta.Hint                 := Hilf(478);
  LabelSOeffnung.Hint             := Hilf(479);
  LabelZOeffnung.Hint             := Hilf(480);
  LabelZylinder.Hint              := Hilf(481);
  LabelZentrum.Hint               := Hilf(482);
  SpeedEinrichten.Hint            := Hilf(505);
  SpeedPunkte.Hint                := Hilf(506);
  SpeedIso.Hint                   := Hilf(507);
  SpeedGKreise.Hint               := Hilf(511);
  SpeedBgroesse.Hint              := Hilf(583);
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
  HolPixS                         := '';
  Form25.Caption                  := Tx(582);  {Fabric7: Cluster von..}
  Linien.Caption                  := Tx(525);
  durchgezogen.Caption            := Tx(526);
  gestrichelt.Caption             := Tx(527);
  punktiert.Caption               := Tx(645);
  strichpunktiert.Caption         := Tx(528);
  Konfidenz1.Caption              := Tx(508);  {&Konfidenz}
  N90Prozent1.Caption             := Tx(509);  {9&0 Prozent}
  N95Prozent1.Caption             := Tx(510);  {9&5 Prozent}
  N99Prozent1.Caption             := Tx(511);  {9&9 Prozent}
  Grafik1.Caption                 := Tx(484);  {&Grafik}
  kopieren1.Caption               := Tx(485);  {&kopieren}
  HFarbe.Caption                  := Tx(275);
  speichern1.Caption              := Tx(487);  {&speichern}
  speichernunter1.Caption         := Tx(488);  {speichern &unter}
  ausZwischenablageholen1.Caption := Tx(489);  {aus &Zwischenablage holen}
  ausDateiholen1.Caption          := Tx(490);  {aus &Datei holen}
  HPPlotter1.Caption              := Tx(288);  {mit dem Drucker plotten}
  FarbePeri1.Caption              := Tx(498);  {Farbe der &Peripherie}
  FarbeDiagramm1.Caption          := Tx(860);
  Hintergrund.Caption             := Tx(1453);  {Hintergrund}
  Hilfe1.Caption                  := Tx(162)+' (F1)';
  LabelTrennung.Caption           := Tx(586);   {Trennung signifikant}
  LabelSignifikant.Caption        := Tx(587);   {signifikant}
  Labelnichtsig1.Caption          := Tx(588);   {1,2,3,4,5,6,7,8,9,10}
  LabelTest.Caption               := Tx(589);   {Testwinkel:}
  LabelCluster.Caption            := Tx(590);   {Daten in Clustern}
  LabelDateien.Caption            := Tx(136);   {ausgew�hlte Dateien:}
  LabelAnzahl.Caption             := Tx(181);   {Anzahl der Daten}
  LabelVielfaches.Caption         := Tx(591);   {Vielfaches der}
  LabelGleichverteilung.Caption   := Tx(592);   {Gleichverteilung:}
  GroupBoxPlotten.Caption         := Tx(502);  {Plotten:}
  Ploterstellen.Caption           := Tx(298);  {Plot-Einstellungen OK?}
  LabelRadius.Caption             := Tx(299);  {Radius [cm]:}
  LabelMittel.Caption             := Tx(300);  {Mittelpunkt [cm]:}
  LabelX.Caption                  := Tx(687);  {X:}
  LabelY.Caption                  := Tx(688);  {Y:}
  Buttonzurueck.Caption           := Tx(30);
  Buttonbeenden.Caption           := Tx(53);
  LabelGruppe.Caption             := Tx(593);  {Gruppe}
  LabelRProzent.Caption           := Tx(595);  {R%}
  LabelKonzPar.Caption            := Tx(596);  {Konz.-P.}
  LabelZylinder.Caption           := Tx(600);  {Zylin.}
  LabelZentrum.Caption            := Tx(601);  {Zentrum}
  Auswertung.Caption              := TX(1341);
  if Gefuegetyp = 1 then
    DatenPlotten.Caption          := TX(1343);
  if Gefuegetyp = 2 then
    DatenPlotten.Caption          := Tx(1344);
  Grosskreise.Caption             := Tx(1345);
  Isolinien.Caption               := Tx(618);
  Fortschritt.Visible             := false;
  LabelDateien.Enabled     := false;
  LabelAnzahl.Enabled      := false;
  LabelGruppe.Enabled      := false;
  LabelMenge.Enabled       := false;
  LabelRProzent.Enabled    := false;
  LabelKonzPar.Enabled     := false;
  LabelTheta.Enabled       := false;
  LabelSOeffnung.Enabled   := false;
  LabelZOeffnung.Enabled   := false;
  LabelZylinder.Enabled    := false;
  LabelZentrum.Enabled     := false;
  LabelTrennung.Caption    := '';
  Labelsignifikant.Caption := '';
  Labelnichtsig1.Caption   := '';
  Label00000.Caption       := '';
  LabelTest.Enabled        := false;
  LabelWinkel.Caption      := '';
  LabelCluster.Enabled     := false;
  LabelDaten.Caption       := '';
  HolZwischen              := false;
  kopieren1.Enabled        := false;
  speichern1.Enabled       := false;
  speichernunter1.Enabled  := false;
  LabelRadius.Enabled      := false;
  GroupBoxPlotten.Caption  := '';
  MaskEditRadius.EditMask  := '999;0; ';
  MaskEditX.EditMask       := '999;0; ';
  MaskEditY.EditMask       := '999;0; ';
  MaskEditRadius.Text      := InttoStr(round(HpRadius*10));
  MaskEditX.Text           := InttoStr(round(XKoord*10));
  MaskEditY.Text           := InttoStr(round(YKoord*10));
  MaskEditRadius.Enabled   := false;
  LabelMittel.Enabled      := false;
  LabelX.Enabled           := false;
  MaskEditX.Enabled        := false;
  LabelY.Enabled           := false;
  MaskEditY.Enabled        := false;
  Viel                     := 0.5;
  repeat
    Viel := Viel + 0.5;
    str(Viel:4:1, VielfachesS);
    ListBox2.Items.Add (VielfachesS);
  until Viel = 50.0;
  Konfidenz1.Enabled            := false;
  str(Vielfach:4:1, VielS);
  LabelGeraet.Caption           := '';
  Konfidenz1.Enabled            := false;
  Farbe1.Enabled                := false;
  Datenpunkte2.Enabled          := false;
  Grafik1.Enabled               := false;
  LabelVielfaches.Enabled       := false;
  LabelGleichverteilung.Enabled := false;
  ListBox2.Enabled              := false;
  Paneldrucken.Visible         := false;
  GroupBoxDrucken.Visible      := false;
  Drucker1.Caption             := Tx(92);
  Druckereinrichten1.Caption   := Tx(94);
  drucken1.Caption             := Tx(93);
  DatenSpeichern.Caption       := Tx(86);
  Dspeichern.Caption           := Tx(87);
  DspeichernUnter.Caption      := Tx(88);
  FarbeRahmen.Caption          := Tx(892);
  SpeedDrucken.Enabled         := false;
  SpeedDrucken.Hint            := Hilf(309);
  for i := 1 to 3 do Gedrueckt[i] := false;
  GroupBoxPlotten.Visible      := false;
  PanelProjektion.Visible      := false;
  PanelPlotFile.Visible        := false;
  Handbuch.Caption        := Tx(1055)+' (F2)';
  LabelProjektion.Caption := Tx(258);
  Datenpunkte2.Caption    := Tx(846);
  stereografisch.Caption  := Tx(918);
  orthografisch.Caption   := Tx(919);
  Farbe1.Caption          := Tx(923);
  Oeffnungsgrad1.Caption  := Tx(531);
  Vertrauenskegel1.Caption:= Tx(532);
  Obergruppen1.Caption    := Tx(1056);
  ObergruppenVertrauen1.Caption := Tx(1057);
  Datenpunkte1.Caption    := Tx(1058);
  Eigenwerte1.Caption     := Tx(530);
  KreisOffen1.Caption     := Tx(262);
  KreisGefllt1.Caption    := Tx(263);
  QuadratOffen1.Caption   := Tx(264);
  QuadratGefllt1.Caption  := Tx(265);
  DreieckOffen1.Caption   := Tx(266);
  DreieckGefllt1.Caption  := Tx(267);
  RauteOffen1.Caption     := Tx(268);
  RauteGefllt1.Caption    := Tx(269);
  Halbkugel.Caption       := Tx(1087);
  untere.Caption          := Tx(1088);
  obere.Caption           := Tx(1089);
  Projektion.Caption      := Tx(258);
  Literatur.Caption       := Tx(1183)+' (F5)';
  SpeedLiteratur.Hint     := Hilf(462);
  PanelSpeed.Visible      := false;
  for i := 0 to 9 do ListboxStrich.Items.Add(IntToStr(i+1));
  ListBoxStrich.Visible   := false;
  LabelStrich.Visible     := false;
  LabelStrich.Caption     := Tx(1187);
  PanelKlick.Visible      := false;
  PunktAnzeigen.Caption   := Tx(1134);
  PunktFarbe.Caption      := Tx(275);
  WertAnzeigen.Caption    := Tx(1134);
  LabelKlick.Caption        := Tx(1137);
  LabelFallrichtung.Caption := Tx(1138);
  LabelFallwinkel.Caption   := Tx(1139);
  LabelBeenden.Caption      := Tx(1244);
  Statistik.Caption       := Tx(1342);
  SpeedStatistik.Hint     := Hilf(509);
  if ObenUntenS = 'LOWER' then OU := 1;
  if ObenUntenS = 'UPPER' then OU := -1;
  Halbkugel.enabled        := false;
  Projektion.Enabled       := false;
  PunktAnzeigen.Enabled    := false;
  DatenSpeichern.Enabled   := false;
  Linien.Enabled           := false;
  Auswertung.Enabled       := false;
  PunkteWeg.Caption        := Tx(1396);
  MaskEditBBreite.EditMask := '99999;0; ';
  MaskEditBHoehe.EditMask  := '99999;0; ';
  LabelBBreite.Caption     := Tx(1440);
  LabelBHoehe.Caption      := Tx(1441);
  BGroesse.Caption         := Tx(1439);
  PanelGroesse.Visible     := false;
  Ratio := Image1.Width/Image1.Height;
  HTransparent := false;
  if WeiterF then
  begin
    ButtonStart.Visible   := false;
    ButtonBeenden.Visible := false;
    ButtonStartClick(Sender);
  end;       
end;

procedure TForm25.ButtonStartClick(Sender: TObject);         {Start}
var
  i, j       : word;
  Gruppen    : byte;
  Trennung   : boolean;
  Aq         : array[0..3] of word;
  Fq         : array[0..3] of shortint;
  La         : word;
  Lp         : shortint;
  Aa, Ff     : real;
  ProS, VielS: string;
  Quadrat    : TRect;
  FBild      : TBitmap;
  JBild      : TJpegImage;
  GBild      : TGifImage;
  MetaFile   : TMetaFile;
  Rahmen     : TRect;
  Dir        : string;

begin
  Dir := DirectS;
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
  FarbePeri1.Enabled            := true;
  FarbeDiagramm1.Enabled        := true;
  Hintergrund.Enabled           := true;
  PanelSpeed.Visible            := true;
  PanelProjektion.Visible       := true;
  LabelVielfaches.Enabled       := true;
  LabelGleichverteilung.Enabled := true;
  ListBox2.Enabled              := true;
  Konfidenz1.Enabled        := true;
  Farbe1.Enabled            := true;
  Datenpunkte2.Enabled      := true;
  Grafik1.Enabled           := true;
  LabelRadius.Enabled       := true;
  LabelMittel.Enabled       := true;
  LabelX.Enabled            := true;
  LabelY.Enabled            := true;
  MaskEditRadius.Enabled    := true;
  MaskEditX.Enabled         := true;
  MaskEditY.Enabled         := true;
  GroupBoxPlotten.Caption   := 'Plot:';
  if ProjektionS = 'Lambert' then ProS  := Tx(259);
  if ProjektionS = 'stereographic' then ProS := Tx(260);
  if ProjektionS = 'orthographic' then ProS := Tx(849);
  if ProjektionS = 'Kavraiskii' then ProS := 'Kavraiskii';
  LabelProjektion.Caption := Tx(651)+': '+ProS;
  ProS                    := GeraetS;
  LabelGeraet.Caption     := Tx(850) + ' '+ProS;
  GroupBoxPlotten.Caption := 'Plot:';
  str (Vielfach:5:1,VielS);
  Konfidenz1.Enabled      := true;
  LabelDateien.Enabled    := true;
  LabelAnzahl.Enabled     := true;
  LabelGruppe.Enabled     := true;
  LabelMenge.Enabled      := true;
  LabelRProzent.Enabled   := true;
  LabelKonzPar.Enabled    := true;
  LabelTheta.Enabled      := true;
  LabelSOeffnung.Enabled  := true;
  LabelZOeffnung.Enabled  := true;
  LabelZylinder.Enabled   := true;
  LabelZentrum.Enabled    := true;
  Labelnichtsig1.Caption  := '';
  LabelTest.Enabled       := true;
  LabelCluster.Enabled    := true;
  Listbox1.Enabled        := true;
  Listbox3.Clear;
  kopieren1.Enabled       := true;
  speichern1.Enabled      := true;
  speichernunter1.Enabled := true;
  Fortschritt.Visible     := true;
  Halbkugel.Enabled       := true;
  Projektion.Enabled      := true;
  PunktAnzeigen.Enabled   := true;
  DatenSpeichern.Enabled  := true;
  Linien.Enabled          := true;
  if not WeiterF then
  begin
    Auswertung.Enabled     := true;
    SpeedPunkte.Enabled    := true;
    SpeedStatistik.Enabled := true;
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
    SpeedIso.Enabled := true;
  end
  else
  begin
    SpeedPunkte.Enabled    := false;
    SpeedGKreise.Enabled   := false;
    SpeedIso.Enabled       := false;
    SpeedStatistik.Enabled := false;
  end;
  Anzahl                  := 0;
  ListBox1.Clear;
  if EingabeS <> 'ExcelD' then
    for i := 0 to DateiZahl do
      Listbox1.Items.Add(DateiNameS[i])
  else ListBox1.Items.Add(PfadS);    
  Label00000.Caption := IntToStr(ZahlGlob);
  with Image1.Canvas do
  begin
    BeginnCluster (Gruppen, Trennung, Fortschritt);
  end;
  DirectS := Dir;
  LabelWinkel.Caption := RightS('     '+TestS,5);
  LabelDaten.Caption  := RightS('     '+AnzahlS,5);
  for i := 1 to Gruppen do Listbox3.Items.Add (ZeileS[i]);
  if Trennung then
  begin
    LabelTrennung.Caption    := Tx(370); {Trennung signifikant}
    Labelsignifikant.Caption := '           ';
  end
  else
  begin
    LabelTrennung.Caption    := Tx(371);  {nicht signifikant}
    Labelsignifikant.Caption := Tx(372);  {getrennte Gruppen}
    Labelnichtsig1.Caption   := nsGruppenS;
    Listbox3.Items.Add (Tx(373));                      {Obergruppen}
    for i := 1 to nGruppe do Listbox3.Items.Add (nZeileS[i]);
  end;
  {Diagramm plotten}
  Bitmap := Tbitmap.Create;
  ImageNord.Picture.LoadfromFile (DirectS+'\'+'NordPfeil.bmp');
  Image1.Top    := 2;
  Image1.Left   := 90;
  Image1.Width  := 660;
  Image1.Height := 663;
  Bitmap := Tbitmap.Create;
  Bitmap.Width     := 660;
  Bitmap.Height    := 663;
  ImageNord.Top    := 22;
  ImageNord.Left   := 437;
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
    end
    else MessageDlg(Tx(306), mtInformation, [mbOK],0);    {Die Zwischenablage}
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
  {gesamte Daten plotten}
  HpPlotter := false;
  Bo := Pi/180;
  with Image1.Canvas do
  begin
    Pen.Width   := Strich;
    Pen.Color   := Datenfarbe;
    if LeftS(Datensymbol,4) = 'Open' then Brush.Color := DiagrFarbe
    else Brush.Color := DatenFarbe;
    Farbe := DatenFarbe;
    for i := 1 to ZahlGlob do Pplot (Image1.Canvas,
                                     HpPlotter, AziFeld[i],
                                     FalFeld[i]);
    {Kleinkreise der Cluster plotten}
    with Image1.Canvas do
    begin
      Pen.Width   := Strich;
      Pen.Style   := Linientyp;
      Brush.Color := DiagrFarbe;
    end;
    for i := 1 to GrupMax do
    begin
      if ZylinMatrix[i] > 50 then
      begin
        Aq[1] := AqBild1Matrix[i];
        Aq[2] := AqBild2Matrix[i];
        Aq[3] := AqBild3Matrix[i];
        Fq[1] := FqBild1Matrix[i];
        Fq[2] := FqBild2Matrix[i];
        Fq[3] := FqBild3Matrix[i];
        La    := AlMatrix[i];
        Lp    := FlMatrix[i];
        if Gefuegetyp = 2 then
        begin
          La := (La + 180) mod 360;
          Lp := 90 - Lp;
        end;
        Eigenplot (Image1.Canvas, Aq, Fq, La, Lp, EigenFarbe);
        Teilkreis (Image1.Canvas, Aq, Fq, ZirkOeffMatrix[i], OeffnungFarbe);
      end
      else
      begin
        Aa := AlMatrix[i] * Bo;
        Ff := FlMatrix[i] * Bo;
        if i > Gruppen then
        begin
          OFarbeMatrix[i] := OberVertrauFarbe;
          TFarbeMatrix[i] := OberOeffnungFarbe;
        end;
        Kleinkreis (Image1.Canvas, Aa, Ff, OmegaMatrix[i],
                    OFarbeMatrix[i]);
        Kleinkreis (Image1.Canvas, Aa, Ff, ThetaMatrix[i],
                    TFarbeMatrix[i]);
      end;
    end;
  end;  {Ende Canvas}
  Image2.Visible    := false;
  if not HTransparent then
  begin
    with image2 do
    begin
      Canvas.Brush.Color := HintFarbe;
      Quadrat := Rect (0, 0, Clientwidth, ClientHeight);
      if ObenUntenS = 'LOWER' then UntereH(Canvas, Quadrat);
      if ObenUntenS = 'UPPER' then ObereH (Canvas, Quadrat);
    end;
    Image1.Canvas.Draw(4,Image1.Height-Image2.Height-20,
                       Image2.picture.graphic);
  end;
  ImageNord.Visible := false;
  Image1.Canvas.Draw(Image1.Width div 2 - ImageNord.Width div 2,7,
                     ImageNord.Picture.Graphic);
  With Image1.Canvas do
  begin
    Font.Size   := 12;
    Font.Color  := UmfangFarbe;
    Brush.Color := HintFarbe;
    Textout (465,15, Tx(591)+' '+Tx(592));
    Textout (575,35,VielS);
    Textout (545,55,Tx(855)+IntToStr(Konfidenz)+'%');
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
  Fortschritt.Visible  := false;
  SpeedDrucken.Enabled := true;
  DirectS := Dir;
end;

procedure TForm25.untereClick(Sender: TObject);
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
  OU := 1;
  ButtonStartClick(Sender);
end;

procedure TForm25.obereClick(Sender: TObject);
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
  OU := -1;
  ButtonStartClick(Sender);
end;

procedure TForm25.ListBox2Click(Sender: TObject);     {Vielfaches ausw�hlen}
var
  i      : byte;
  Datei  : Textfile;
  Co    : integer;
  VielS : string[5];
begin
  for i := 0 to Listbox2.Items.Count-1 do
  begin
    if Listbox2.Selected[i] then val(Listbox2.Items.Strings[i],Vielfach, Co);
  end;
  str(Vielfach:5:1, VielS);
  KonfigZeileS[50] := 'Multiple of Random (CLODAT):,'+VielS;
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm25.ButtonBeendenClick(Sender: TObject);     {beenden}
var
  Flaeche : TRect;
begin
  Listbox1.Clear;
  Listbox2.Clear;
  ListBox3.Clear;
  AziFeld := Nil;
  FalFeld := Nil;
  Loeschen (Image1.Canvas, Flaeche);
  Loeschen (Image2.Canvas, Flaeche);
  Loeschen (ImageNord.Canvas, Flaeche);
  Form25.Close;
  if EingabeS = 'ExcelD' then Form64.Close;
  Form11.Close;
  Form10.Close;
  Form24.Close;
  SetCurrentDir(DirectS);
end;

procedure TForm25.ButtonzurueckClick(Sender: TObject);     {zur�ck}
var
  Flaeche : TRect;
begin
  ButtonStart.Enabled := true;
  Listbox1.Clear;
  ListBox2.Enabled := true;
  ListBox2.Clear;
  ListBox3.Clear;
  Flaeche := Rect(0,0,Clientwidth,ClientHeight);
  Loeschen (Image1.Canvas, Flaeche);
  Loeschen (Image2.Canvas, Flaeche);
  Loeschen (ImageNord.Canvas, Flaeche);
  SetCurrentDir (DirectS);
  if not WeiterF then
  begin
    AziFeld := Nil;
    FalFeld := Nil;
  end;
  Form25.Close;
  if EingabeS = 'ExcelD' then Form64.Close;
end;

procedure TForm25.N99Prozent1Click(Sender: TObject);
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

procedure TForm25.N95Prozent1Click(Sender: TObject);
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

procedure TForm25.N90Prozent1Click(Sender: TObject);
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

procedure TForm25.SpeedKonfidenz90Click(Sender: TObject);
begin
  N90Prozent1Click(Sender);
end;

procedure TForm25.SpeedKonfidenz95Click(Sender: TObject);
begin
  N95Prozent1Click(Sender);
end;

procedure TForm25.SpeedKonfidenz99Click(Sender: TObject);
begin
  N99Prozent1Click(Sender);
end;

procedure TForm25.BGroesseClick(Sender: TObject);
begin
  PanelGroesse.Visible := true;
  CheckBoxBild.State   := cbUnchecked;
  MaskEditBBreite.Text := IntTostr(BBreiteSt);
  MaskEditBHoehe.Text  := IntToStr(BHoeheSt);
end;

procedure TForm25.SpeedBGroesseClick(Sender: TObject);
begin
  BGroesseClick(Sender);
end;

procedure TForm25.MaskEditBBreiteKeyPress(Sender: TObject; var Key: Char);
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

procedure TForm25.MaskEditBHoeheKeyPress(Sender: TObject; var Key: Char);
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

procedure TForm25.CheckBoxBildClick(Sender: TObject);
begin
  PanelGroesse.Visible := false;
end;

procedure TForm25.kopieren1Click(Sender: TObject);
begin
  ClipBoard.Assign (Image1.Picture);
end;

procedure TForm25.transparentClick(Sender: TObject);
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

procedure TForm25.HFarbeClick(Sender: TObject);
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

procedure TForm25.speichernBMPClick(Sender: TObject);
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

procedure TForm25.SpeedBMPClick(Sender: TObject);
begin
  speichernBMPClick(Sender);
end;

procedure TForm25.speichernGIFClick(Sender: TObject);
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

procedure TForm25.SpeedGIFClick(Sender: TObject);
begin
  speichernGIFClick(Sender);
end;

procedure TForm25.speichernTIFClick(Sender: TObject);
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

procedure TForm25.SpeedTIFClick(Sender: TObject);
begin
  speichernTIFClick(Sender);
end;

procedure TForm25.speichernJPGClick(Sender: TObject);
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

procedure TForm25.SpeedJPGClick(Sender: TObject);
begin
  speichernJPGClick(Sender);
end;

procedure TForm25.speichernWMFClick(Sender: TObject);
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

procedure TForm25.SpeedWMFClick(Sender: TObject);
begin
  speichernWMFClick(Sender);
end;

procedure TForm25.speichernEMFClick(Sender: TObject);
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

procedure TForm25.SpeedEMFClick(Sender: TObject);
begin
  speichernEMFClick(Sender);
end;

procedure TForm25.speichernPLTClick(Sender: TObject);
var
  i      : byte;
  Datei  : Textfile;
begin
  GroupBoxPlotten.Visible := true;
  FarbePeri1.Enabled := true;
  GeraetS            := 'HPGL';
  KonfigZeileS[53]   := 'Paper Plot                 :,HPGL';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  PanelPlotFile.Visible := true;
  LabelPlotter.Caption  := GeraetS;
end;

procedure TForm25.speichernDXFClick(Sender: TObject);
var
  i      : byte;
  Datei  : Textfile;
begin
  GroupBoxPlotten.Visible := true;
  FarbePeri1.Enabled := true;
  GeraetS            := 'DXF';
  KonfigZeileS[53]   := 'Paper Plot                 :,DXF';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  PanelPlotFile.Visible := true;
  LabelPlotter.Caption  := GeraetS;
  LabelGeraet.Caption   := Tx(850)+' '+ GeraetS;
end;

procedure TForm25.speichernUBMPClick(Sender: TObject);
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

procedure TForm25.speichernUGIFClick(Sender: TObject);
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

procedure TForm25.speichernUTIFClick(Sender: TObject);
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

procedure TForm25.speichernUJPGClick(Sender: TObject);
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

procedure TForm25.speichernUWMFClick(Sender: TObject);
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

procedure TForm25.speichernUEMFClick(Sender: TObject);
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

procedure TForm25.ausZwischenablageholen1Click(Sender: TObject);
begin
  FarbePeri1.Enabled        := false;
  FarbeDiagramm1.Enabled    := false;
  Hintergrund.Enabled       := false;
  HolZwischen               := true;
  ButtonStartClick(Sender);
end;

procedure TForm25.holenBMPClick(Sender: TObject);
begin
  OpenDialog1.DefaultExt := 'Windows Bitmap (*.BMP)|*.BMP';
  OpenDialog1.Filter     := 'Windows Bitmap (*.BMP)|*.BMP';
  if OpenPictureDialog1.Execute then CurrentFile := OpenPictureDialog1.FileName
  else exit;
  HolPixS := 'BMP';
  ButtonStartClick(Sender);
end;

procedure TForm25.SpeedHolBMPClick(Sender: TObject);
begin
  holenBMPClick(Sender);
end;

procedure TForm25.holenGIFClick(Sender: TObject);
begin
  OpenDialog1.DefaultExt := 'Compuserve GIF file (*.GIF)|*.GIF';
  OpenDialog1.Filter     := 'Compuserve GIF file (*.GIF)|*.GIF';
  if OpenDialog1.Execute then CurrentFile := OpenDialog1.FileName
  else exit;
  HolPixS := 'GIF';
  ButtonStartClick(Sender);
end;

procedure TForm25.SpeedHolGIFClick(Sender: TObject);
begin
  holenGIFClick(Sender);
end;

procedure TForm25.holenTIFClick(Sender: TObject);
begin
  OpenDialog1.DefaultExt := 'Tagged image file format (*.tif)|*.tif';
  OpenDialog1.Filter     := 'Tagged image file format (*.tif)|*.tif';
  if OpenDialog1.Execute then CurrentFile := OpenDialog1.FileName
  else exit;
  HolPixS := 'TIF';
  ButtonStartClick(Sender);
end;

procedure TForm25.SpeedHolTIFClick(Sender: TObject);
begin
  holenTIFClick(Sender);
end;

procedure TForm25.holenJPGClick(Sender: TObject);
begin
  OpenPictureDialog1.DefaultExt := 'JPG file format (*.JPG)|*.JPG';
  OpenPictureDialog1.Filter     := 'JPG file format (*.JPG)|*.JPG';
  if OpenPictureDialog1.Execute then CurrentFile := OpenPictureDialog1.FileName
  else exit;
  HolPixS := 'JPG';
  ButtonStartClick(Sender);
end;

procedure TForm25.SpeedHolJPGClick(Sender: TObject);
begin
  holenJPGClick(Sender);
end;

procedure TForm25.holenWMFClick(Sender: TObject);
begin
  OpenDialog1.DefaultExt := 'Windows metafile (*.WMF)|*.wmf';
  OpenDialog1.Filter     := 'Windows metafile (*.WMF)|*.wmf';
  if OpenDialog1.Execute then CurrentFile := OpenDialog1.FileName
  else exit;
  HolPixS := 'WMF';
  ButtonStartClick(Sender);
end;

procedure TForm25.SpeedHolWMFClick(Sender: TObject);
begin
  holenWMFClick(Sender);
end;

procedure TForm25.holenEMFClick(Sender: TObject);
begin
  OpenDialog1.DefaultExt := 'Enhanced windows metafile (*.EMF)|*.emf';
  OpenDialog1.Filter     := 'Enhanced windows metafile (*.EMF)|*.emf';
  if OpenDialog1.Execute then CurrentFile := OpenDialog1.FileName
  else exit;
  HolPixS := 'EMF';
  ButtonStartClick(Sender);
end;

procedure TForm25.SpeedHolEMFClick(Sender: TObject);
begin
  holenEMFClick(Sender);
end;

procedure TForm25.HpPlotter1Click(Sender: TObject);
var
  i      : byte;
  Datei  : Textfile;
begin
  Diagrfarbe := clWhite;
  ButtonStartClick(Sender);
  PrinterSetupDialog1.execute;
  GeraetS          := 'Plotter';
  KonfigZeileS[53] := 'Paper Plot                 :,Plotter';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  GroupBoxPlotten.Visible := true;
  PanelPlotFile.Visible   := true;
  LabelPlotter.Caption    := GeraetS;
end;

procedure TForm25.SpeedPlotterClick(Sender: TObject);
begin
  HpPlotter1Click(Sender);
end;

procedure TForm25.SpeedPLTClick(Sender: TObject);
begin
  speichernPLTClick(Sender);
end;

procedure TForm25.SpeedDXFClick(Sender: TObject);
begin
  speichernDXFClick(Sender);
end;

procedure TForm25.PloterstellenClick(Sender: TObject);
var
  RadiusS  : string[4];
  XKoordS  : string[4];
  YKoordS  : string[4];
  Co       : integer;
  Kreuz    : boolean;
  Rmax     : real;
  RmaxS    : string[15];
  Xmax     : real;
  Ymax     : real;
  PolFarbe : byte;
  Aa, Ff   : real;
  Oo, X, Y : real;
  i        : word;
  XaS, YaS : string[10];
  Aq       : array[0..3] of word;
  Fq       : array[0..3] of shortint;
  Null     : reaL;
  j        : byte;
  Zs       : string[1];
  La, Lp   : word;
  Hp       : boolean;
  XDxf     : real;
  YDxf     : real;
  WinkelS  : string[6];
  Datei    : TextFile;
  XPMitte  : word;
  YPMitte  : word;
  Rint     : word;
  XS, YS   : string;
  RichS    : string;
  WS, HS   : string;
  Xw, Yw   : word;
  Groesse  : word;
  Typ      : TMsgDlgType;
begin
  Bo := Pi/180;
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
  Xmax := 29.2 - Rmax;
  Ymax := 20.5 - Rmax;
  Typ  := mtError;
  if HpRadius > Rmax then
  begin
    if DlgMessage (Typ, Tx(37), Tx(308)+RMaxS,3) = 4 then
    begin
      MaskEditRadius.Clear;
      exit;
    end;
  end;
  if XKoord > Xmax then
  begin
    if DlgMessage (Typ, Tx(37), Tx(309)+' max. '
       +FloattoStr(Xmax),3) = 4 then
    begin
      MaskEditX.Clear;
      exit;
    end;
  end;
  if YKoord > Ymax then
  begin
    if DlgMessage (Typ, Tx(37), Tx(310)+' max. '
       +FloattoStr(Ymax),3) = 4 then
    begin
      MaskEditY.Clear;
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
    Kompress (AnzahlS);
    Null := 0;
    HpPlotter := true;
    Farben (Canvas, DatenFarbe);
    Plot1 (Canvas);
    {Kleinkreise der Cluster plotten}
    for i := 1 to Grupmax do
    begin
      if ZylinMatrix[i] > 50 then
      begin
        Aq[1] := AqBild1Matrix[i];
        Aq[2] := AqBild2Matrix[i];
        Aq[3] := AqBild3Matrix[i];
        Fq[1] := FqBild1Matrix[i];
        Fq[2] := FqBild2Matrix[i];
        Fq[3] := FqBild3Matrix[i];
        La    := AlMatrix[i];
        Lp    := FlMatrix[i];
        if Gefuegetyp = 2 then
        begin
          La := (La + 180) mod 360;
          Lp := 90 - Lp;
        end;
        Farben (Canvas, EigenFarbe);
        for j := 1 to 3 do
        begin
          Aa := Aq[j] * Bo;
          Ff := Fq[j] * Bo;
          ZS := chr(48 + j);
          Hpkoordin (Aa,Ff,X,Y);
          Hppunkt (Canvas, X,Y,ZS);
        end;
        Farben (Canvas, OeffnungFarbe);
        HPTeilkreis (Canvas, Aq, Fq, ZirkOeffMatrix[i], 0,8,
                     Null,Null);
      end
      else
      begin
        Aa := AlMatrix[i] * Bo;
        Ff := FlMatrix[i] * Bo;
        Farben (Canvas, OeffnungFarbe);
        ProjektionS := 'Lambert';
        HpKleinkreis (Canvas, Aa, Ff, OmegaMatrix[i]);
        Farben (Canvas, VertrauFarbe);
        HpKleinkreis (Canvas, Aa, Ff, ThetaMatrix[i]);
      end;
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
      Farben (Canvas, UmfangFarbe);
      HPPeriph (Canvas, Kreuz);
      Kompress (AnzahlS);
      XPMitte := round(Xkoord*100*Faktor);
      YPMitte := round(YKoord*100*Faktor);
      Rint    := round(HpRadius*100*Faktor);
      Xw := round(XPMitte+Rint/3);
      Yw := round(YPMitte-Rint-Rint/60);
      Canvas.Textout (Xw, Yw, AnzahlS+Tx(374));
      Null := 0;
      Xmitte := XPmitte;
      Ymitte := YPmitte;
      Radius := Rint;
      Farben (Canvas, DatenFarbe);
      Plot1 (Canvas);
      {Kleinkreise der Cluster plotten}
      for i := 1 to Grupmax do
      begin
        if ZylinMatrix[i] > 50 then
        begin
          Aq[1] := AqBild1Matrix[i];
          Aq[2] := AqBild2Matrix[i];
          Aq[3] := AqBild3Matrix[i];
          Fq[1] := FqBild1Matrix[i];
          Fq[2] := FqBild2Matrix[i];
          Fq[3] := FqBild3Matrix[i];
          La    := AlMatrix[i];
          Lp    := FlMatrix[i];
          if Gefuegetyp = 2 then
          begin
            La := (La + 180) mod 360;
            Lp := 90 - Lp;
          end;
          Farben (Canvas, EigenFarbe);
          for j := 1 to 3 do
          begin
            Aa := Aq[j] * Bo;
            Ff := Fq[j] * Bo;
            ZS := chr(48 + j);
            Hpkoordin (Aa,Ff,X,Y);
            Hppunkt (Canvas, X,Y,ZS);
          end;
          Farben (Canvas, OeffnungFarbe);
          HPTeilkreis (Canvas, Aq, Fq, ZirkOeffMatrix[i], 0,8,
                       Null,Null);
        end
        else
        begin
          Aa := AlMatrix[i] * Bo;
          Ff := FlMatrix[i] * Bo;
          Farben (Canvas, OeffnungFarbe);
          HpKleinkreis (Canvas, Aa, Ff, OmegaMatrix[i]);
          Farben (Canvas, VertrauFarbe);
          HpKleinkreis (Canvas, Aa, Ff, ThetaMatrix[i]);
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
  showmessage(Tx(435));
  GroupBoxPlotten.Visible := false;
end;

procedure TForm25.Hilfe1Click(Sender: TObject);
var
  DateiS      : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\clod8ptg.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\CLODAT-plot.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm25.SpeedHilfeClick(Sender: TObject);
begin
  Hilfe1Click(Sender);
end;

procedure TForm25.Oeffnungsgrad1Click(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS := ColorToString (Farbe);
  OeffnungFarbe   := StringToColor(FarbeS);
  KonfigZeileS[22] := '  Colour of Aperture       :,'+FarbeS;
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick (Sender);
end;

procedure TForm25.Vertrauenskegel1Click(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS           := ColorToString (Farbe);
  VertrauFarbe     := StringToColor(FarbeS);
  KonfigZeileS[23] := '  C. of Cone of Confidence :,'+FarbeS;
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick (Sender);
end;

procedure TForm25.SpeedFarbeOeffnungClick(Sender: TObject);
begin
  Oeffnungsgrad1Click(Sender);
end;

procedure TForm25.SpeedFarbeVertrauenClick(Sender: TObject);
begin
 Vertrauenskegel1Click(Sender);
end;

procedure TForm25.Obergruppen1Click(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS            := ColorToString (Farbe);
  OberOeffnungFarbe := StringToColor(FarbeS);
  KonfigZeileS[51]  :='Pooled Group Aperture      :,'+FarbeS;
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick (Sender);
end;

procedure TForm25.ObergruppenVertrauen1Click(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS           := ColorToString (Farbe);
  OberVertrauFarbe := StringToColor(FarbeS);
  KonfigZeileS[52] :='Pooled Group C. of Confid. :,'+FarbeS;
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick (Sender);
end;

procedure TForm25.SpeedOoeffnungClick(Sender: TObject);
begin
  Obergruppen1Click(Sender);
end;

procedure TForm25.SpeedOVertrauenClick(Sender: TObject);
begin
  ObergruppenVertrauen1Click(Sender);
end;

procedure TForm25.Datenpunkte1Click(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS          := ColorToString (Farbe);
  DatenFarbe      := StringToColor(FarbeS);
  KonfigZeileS[7] := '  Colour of Data Points    :,'+FarbeS;
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick (Sender);
end;

procedure TForm25.SpeedFarbeDatenClick(Sender: TObject);
begin
  Datenpunkte1Click(Sender);
end;


procedure TForm25.Eigenwerte1Click(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS           := ColorToString (Farbe);
  EigenFarbe       := StringToColor(FarbeS);
  KonfigZeileS[21] := '  Colour of Eigenvectors   :,'+FarbeS;
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick (Sender);
end;

procedure TForm25.SpeedFarbeEigenClick(Sender: TObject);
begin
  Eigenwerte1Click(Sender);
end;

procedure TForm25.Kreisoffen1Click(Sender: TObject);
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

procedure TForm25.Kreisgefllt1Click(Sender: TObject);
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

procedure TForm25.Quadratoffen1Click(Sender: TObject);
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

procedure TForm25.Quadratgefllt1Click(Sender: TObject);
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

procedure TForm25.Dreieckoffen1Click(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  DatenSymbol := 'OpenTriangle';
  KonfigZeileS[9] := '  Data Symbol              :,OpenTriangle';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm25.Dreieckgefllt1Click(Sender: TObject);
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

procedure TForm25.Rauteoffen1Click(Sender: TObject);
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

procedure TForm25.Rautegefllt1Click(Sender: TObject);
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

procedure TForm25.SpeedKreisOClick(Sender: TObject);
begin
  KreisOffen1Click(Sender);
end;

procedure TForm25.SpeedKreisGClick(Sender: TObject);
begin
  KreisGefllt1Click(Sender);
end;

procedure TForm25.SpeedDreieckOClick(Sender: TObject);
begin
  DreieckOffen1Click(Sender);
end;

procedure TForm25.SpeedDreieckGClick(Sender: TObject);
begin
  DreieckGefllt1Click(Sender);
end;

procedure TForm25.SpeedQuadratOClick(Sender: TObject);
begin
  QuadratOffen1Click(Sender);
end;

procedure TForm25.SpeedQuadratGClick(Sender: TObject);
begin
  QuadratGefllt1Click(Sender);
end;

procedure TForm25.SpeedRauteOClick(Sender: TObject);
begin
  RauteOffen1Click(Sender);
end;

procedure TForm25.SpeedRauteGClick(Sender: TObject);
begin
  RauteGefllt1Click(Sender);
end;

procedure TForm25.FarbePeri1Click(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
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

procedure TForm25.FarbeDiagramm1Click(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS           := ColorToString (Farbe);
  DiagrFarbe       := StringToColor(FarbeS);
  KonfigZeileS[6] := '  Diagram Colour           :,'+FarbeS;
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick (Sender);
end;

procedure TForm25.FarbeRahmenClick(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
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

procedure TForm25.SpeedPeripherieClick(Sender: TObject);
begin
  FarbePeri1Click(Sender);
end;

procedure TForm25.SpeedDiagrammClick(Sender: TObject);
begin
  FarbeDiagramm1Click(Sender);
end;

procedure TForm25.SpeedRahmenClick(Sender: TObject);
begin
  FarbeRahmenClick(Sender);
end;

procedure TForm25.Druckereinrichten1Click(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TForm25.SpeedEinrichtenClick(Sender: TObject);
begin
  DruckerEinrichten1Click(Sender);
end;

procedure TForm25.drucken1Click(Sender: TObject);
var
  Schrift  : byte;
  SchriftS : string[5];
  i        : byte;
begin
  Paneldrucken.Visible         := true;
  GroupBoxDrucken.Visible      := true;
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

procedure TForm25.MaskEditUnterschriftKeyPress(Sender: TObject;
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

procedure TForm25.RadioButtonLinksClick(Sender: TObject);
begin
  BuendigS := 'Links';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    ButtonDrucken.Enabled := true;
end;

procedure TForm25.RadioButtonZentriertClick(Sender: TObject);
begin
  BuendigS := 'Zentriert';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    ButtonDrucken.Enabled := true;
end;

procedure TForm25.RadioButtonRechtsClick(Sender: TObject);
begin
  BuendigS := 'Rechts';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    ButtonDrucken.Enabled := true;
end;

procedure TForm25.ListBoxSchriftClick(Sender: TObject);
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

procedure TForm25.ButtonDruckenClick(Sender: TObject);
var
  XKoordS : string;
  YKoordS : string;
  RadiusS : string;
  Bitmap  : TBitmap;
  Fenster : TRect;
begin
  Paneldrucken.Visible         := false;
  GroupBoxDrucken.Visible      := false;
  RadioButtonlinks.Visible     := false;
  RadioButtonzentriert.Visible := false;
  RadioButtonrechts.Visible    := false;
  RadioGroup.Visible           := false;
  RadiusS := MaskEditRdrucken.Text;
  XKoordS := MaskEditXdrucken.Text;
  YKoordS := MaskEditYdrucken.Text;
  try
    Bitmap:=TBitmap.Create;
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

procedure TForm25.ButtonAbbrechenClick(Sender: TObject);

begin
  Paneldrucken.Visible         := false;
  GroupBoxDrucken.Visible      := false;
end;

procedure TForm25.SpeedDruckenClick(Sender: TObject);
begin
  drucken1Click(Sender);
end;

procedure TForm25.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Clodat.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'Clodat-E.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm25.stereografischClick(Sender: TObject);
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

procedure TForm25.LambertClick(Sender: TObject);
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

procedure TForm25.orthografischClick(Sender: TObject);
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

procedure TForm25.KavraiskiiClick(Sender: TObject);
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

procedure TForm25.SpeedLambertClick(Sender: TObject);
begin
  LambertClick(Sender);
end;

procedure TForm25.SpeedStereografischClick(Sender: TObject);
begin
  stereografischClick(Sender);
end;

procedure TForm25.SpeedOrthografischClick(Sender: TObject);
begin
  orthografischClick(Sender);
end;

procedure TForm25.SpeedKavraiskiiClick(Sender: TObject);
begin
  KavraiskiiClick(Sender);
end;

procedure TForm25.DruckereinrichtenClick(Sender: TObject);
var
  i      : byte;
  Datei  : Textfile;
begin
  PrinterSetupDialog1.execute;
  FarbePeri1.Enabled := true;
  GeraetS            := 'Plotter';
  KonfigZeileS[53]   := 'Paper Plot                 :,Plotter';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  GroupBoxPlotten.visible     := true;
  PanelPlotFile.Visible       := true;
  LabelPlotter.Caption        := GeraetS;
end;

procedure TForm25.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm25.SpeedUntereHClick(Sender: TObject);
begin
  untereClick(Sender);
end;

procedure TForm25.SpeedObereHClick(Sender: TObject);
begin
  obereClick(Sender);
end;

procedure TForm25.SpeedKopierenClick(Sender: TObject);
begin
  Kopieren1Click(Sender);
end;

procedure TForm25.SpeedZwischenablageClick(Sender: TObject);
begin
  AusZwischenablageHolen1Click(Sender);
end;

procedure TForm25.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm25.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

procedure TForm25.durchgezogenClick(Sender: TObject);
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

procedure TForm25.SpeedDurchgezogenClick(Sender: TObject);
begin
  durchgezogenClick(Sender);
end;

procedure TForm25.gestricheltClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  Strich := 1;
  LinienTyp     := psDash;
  KonfigZeileS[10] := '  Line Style               :,Dash';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm25.SpeedGestricheltClick(Sender: TObject);
begin
  gestricheltClick(Sender);
end;

procedure TForm25.punktiertClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  Strich := 1;
  LinienTyp     := psDot;
  KonfigZeileS[10] := '  Line Style               :,Dot';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm25.SpeedPunktiertClick(Sender: TObject);
begin
  PunktiertClick(Sender);
end;

procedure TForm25.strichpunktiertClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  Strich := 1;
  LinienTyp     := psDashDot;
  KonfigZeileS[10] := '  Line Style               :,DashDot';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm25.SpeedStrichpunktClick(Sender: TObject);
begin
  strichpunktiertClick(Sender);
end;

procedure TForm25.ListBoxStrichClick(Sender: TObject);
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

procedure TForm25.PunktFarbeClick(Sender: TObject);
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

procedure TForm25.WertAnzeigenClick(Sender: TObject);
begin
  PanelKlick.Visible := true;
  Maus               := true;
end;

procedure TForm25.PunkteWegClick(Sender: TObject);
begin
  ButtonStartClick(Sender);
end;

procedure TForm25.Image1MouseDown(Sender: TObject; Button: TMouseButton;
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
  if ssRight in Shift then
  begin
    Maus := false;
    PanelKlick.Visible := false;
  end;
end;

procedure TForm25.DspeichernClick(Sender: TObject);
begin
  if CurrentFile <> '' then Speichern(CurrentFile,Anzahl,
    AziFeld,FalFeld)
  else DspeichernUnterClick(Sender);
end;

procedure TForm25.DspeichernUnterClick(Sender: TObject);
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

procedure TForm25.SpeedDspeichernClick(Sender: TObject);
begin
  DspeichernUnterClick(Sender);
end;

procedure TForm25.DatenPlottenClick(Sender: TObject);
begin
  WeiterB[25] := true;
  Application.CreateForm(TForm12, Form12);
  Form12.Show;
end;

procedure TForm25.SpeedPunkteClick(Sender: TObject);
begin
  DatenPlottenClick(Sender);
end;

procedure TForm25.GrosskreiseClick(Sender: TObject);
begin
  WeiterB[25] := true;
  Application.CreateForm(TForm85, Form85);
  Form85.Show;
end;

procedure TForm25.SpeedGKreiseClick(Sender: TObject);
begin
  GrosskreiseClick(Sender);
end;

procedure TForm25.IsolinienClick(Sender: TObject);
begin
  WeiterB[25] := true;
  Application.CreateForm(TForm23, Form23);
  Form23.Show;
end;

procedure TForm25.SpeedIsoClick(Sender: TObject);
begin
  IsolinienClick(Sender);
end;

procedure TForm25.StatistikClick(Sender: TObject);
begin
  WeiterB[25] := true;
  Application.CreateForm(TForm21, Form21);
  Form21.Show;
end;

procedure TForm25.SpeedStatistikClick(Sender: TObject);
begin
  StatistikClick(Sender);
end;

end.












