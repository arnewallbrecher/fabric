unit Unit19;  {Richtingsrose, Plotfläche}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, ExtCtrls, StdCtrls, Menus, Globvar, Basic,
  Clipbrd, Mask, Rose, HPPlot, Texte, ComCtrls, Buttons,
  Drucken, Printers, Shellapi, Plotten, Einausga, Standard,
  GifImage, Bmp2Tiff, Jpeg, ExtDlgs, ReadTiff, ehsHelpRouter;

type
  TForm19 = class(TForm)
    Panel1            : TPanel;
    Labelausgewaehlte : TLabel;
    LabelAnzahl       : TLabel;

    Panel2         : TPanel;
    LabelIntervall : TLabel;
    LabelInkrement : TLabel;                {Maximum}

    Label3: TLabel;

    ListBox1      : TListBox;
    ButtonStart   : TButton;
    Buttonzurueck : TButton;
    Buttonbeenden : TButton;
    ButtonOK      : TButton;              {ok}

    MaskEdit1     : TMaskEdit;          {Intervall}
    MaskEdit2     : TMaskEdit;          {Inkrement}

    Image1: TImage;                {Zeichenfläche}

    SaveDialog1 : TSaveDialog;
    OpenDialog1 : TOpenDialog;
    MainMenu1   : TMainMenu;

    Darstellung1        : TMenuItem;
    mitSektorengrenzen1 : TMenuItem;
    mitSektorenmitten1  : TMenuItem;
    gleitend1           : TMenuItem;
    Fuellung1           : TMenuItem;
    nichtgefuellt1      : TMenuItem;
    gefuellt1           : TMenuItem;

    Farbe1   : TMenuItem;

    Grafik1                 : TMenuItem;
    kopieren1               : TMenuItem;
    speichern1              : TMenuItem;
    speichernunter1         : TMenuItem;
    auszwischenablageholen1 : TMenuItem;
    ausDateiholen1          : TMenuItem;

    HPPlotter1 : TMenuItem;

    FarbePeripherie1 : TMenuItem;

    FarbeDiagramm1 : TMenuItem;
    Hintergrund: TMenuItem;

    FarbeRahmen   : TMenuItem;

    Drucker1            : TMenuItem;
    DruckerEinrichten   : TMenuItem;
    drucken1            : TMenuItem;
    PrinterSetupDialog1 : TPrinterSetupDialog;
    PrintDialog1        : TPrintDialog;

    GroupBoxPlotten : TGroupBox;
    Panel5         : TPanel;
    LabelRadius    : TLabel;
    MaskEditRadius : TMaskEdit;
    Panel6           : TPanel;
    LabelMittelpunkt : TLabel;
    LabelX           : TLabel;
    LabelY           : TLabel;
    MaskEditX        : TMaskEdit;
    MaskEditY        : TMaskEdit;

    Panel7       : TPanel;
    LabelGeraet  : TLabel;
    PanelSpeed: TPanel;
    SpeedHilfe   : TSpeedButton;
    SpeedDrucker : TSpeedButton;

    StatusBar : TStatusBar;
    Hilfe1    : TMenuItem;

    Paneldrucken    : TPanel;
    GroupBoxdrucken : TGroupBox;
    Panel9           : TPanel;
    LabelRdrucken    : TLabel;
    MaskEditRdrucken : TMaskEdit;
    Panel10          : TPanel;
    LabelMitte       : TLabel;
    LabelXdrucken    : TLabel;
    LabelYdrucken    : TLabel;
    MaskEditXdrucken : TMaskEdit;
    MaskEditYdrucken : TMaskEdit;
    Panel11              : TPanel;
    LabelUnterschrift    : TLabel;
    MaskEditUnterschrift : TMaskEdit;
    LabelSchrift         : TLabel;
    ListBoxSchrift       : TListBox;
    RadioGroup           : TRadioGroup;
    RadioButtonLinks     : TRadioButton;
    RadioButtonZentriert : TRadioButton;
    RadioButtonRechts    : TRadioButton;
    Handbuch: TMenuItem;
    ColorDialog1: TColorDialog;
    SpeedHandbuch: TSpeedButton;
    SpeedGefuellt: TSpeedButton;
    Speednichtgefuellt: TSpeedButton;
    SpeedFarbe: TSpeedButton;
    SpeedKopieren: TSpeedButton;
    SpeedZwischenablage: TSpeedButton;
    SpeedGrenzen: TSpeedButton;
    SpeedMitten: TSpeedButton;
    SpeedFloating: TSpeedButton;
    SpeedPlotter: TSpeedButton;
    SpeedPLT: TSpeedButton;
    SpeedDXF: TSpeedButton;
    SpeedPeripherie: TSpeedButton;
    SpeedDiagramm: TSpeedButton;
    SpeedRahmen: TSpeedButton;
    Literatur: TMenuItem;
    SpeedLiteratur: TSpeedButton;
    ImageNord: TImage;
    Strichstaerke: TMenuItem;
    ListBoxStrich: TListBox;
    LabelStrich: TLabel;
    SpeedStrich: TSpeedButton;
    beschriften: TMenuItem;
    BeschriftenJa: TMenuItem;
    BeschriftenNein: TMenuItem;
    SpeedSkala: TSpeedButton;
    DatenSpeichern: TMenuItem;
    Dspeichern: TMenuItem;
    DspeichernUnter: TMenuItem;
    SpeedEinrichten: TSpeedButton;
    Weiter: TMenuItem;
    Statistik: TMenuItem;
    SpeedStatistik: TSpeedButton;
    SpeedKeineSkala: TSpeedButton;
    SpeedDspeichern: TSpeedButton;
    PanelGroesse: TPanel;
    LabelBHoehe: TLabel;
    LabelBBreite: TLabel;
    MaskEditBBreite: TMaskEdit;
    MaskEditBHoehe: TMaskEdit;
    CheckBoxBild: TCheckBox;
    BGroesse: TMenuItem;
    transparent: TMenuItem;
    FarbeH: TMenuItem;
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
    SpeedBGroesse: TSpeedButton;
    SpeedHTransparent: TSpeedButton;
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
    Ploterstellen: TButton;
    ButtonDrucken: TButton;
    ButtonAbbrechen: TButton;

    procedure FormActivate(Sender: TObject);
    procedure ButtonStartClick(Sender: TObject);             {Start}
    procedure ButtonzurueckClick(Sender: TObject);             {zurück}
    procedure ButtonbeendenClick(Sender: TObject);             {beenden}

    procedure ButtonOKClick(Sender: TObject);             {ok}
    {Darstellung}
    procedure mitSektorengrenzen1Click(Sender: TObject);
    procedure mitSektorenmitten1Click(Sender: TObject);
    procedure gleitend1Click(Sender: TObject);
    {Füllung}
    procedure nichtgefuellt1Click(Sender: TObject);
    procedure gefuellt1Click(Sender: TObject);
    {Farbe}
    procedure Farbe1Click(Sender: TObject);
    {Grafik}
    procedure kopieren1Click(Sender: TObject);
    procedure auszwischenablageholen1Click(Sender: TObject);
    procedure HPPlotter1Click(Sender: TObject);
    procedure Hilfe1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ShowHint(Sender: TObject);
    procedure SpeedHilfeClick(Sender: TObject);
    procedure DruckerEinrichtenClick(Sender: TObject);
    procedure drucken1Click(Sender: TObject);
    procedure SpeedDruckerClick(Sender: TObject);
    procedure MaskEditUnterschriftKeyPress(Sender: TObject; var Key: Char);
    procedure RadioButtonLinksClick(Sender: TObject);
    procedure RadioButtonZentriertClick(Sender: TObject);
    procedure RadioButtonRechtsClick(Sender: TObject);
    procedure ListBoxSchriftClick(Sender: TObject);
    procedure HandbuchClick(Sender: TObject);
    procedure FarbePeripherie1Click(Sender: TObject);
    procedure FarbeDiagramm1Click(Sender: TObject);
    procedure FarbeRahmenClick(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure SpeednichtgefuelltClick(Sender: TObject);
    procedure SpeedGefuelltClick(Sender: TObject);
    procedure SpeedFarbeClick(Sender: TObject);
    procedure SpeedKopierenClick(Sender: TObject);
    procedure SpeedZwischenablageClick(Sender: TObject);
    procedure SpeedGrenzenClick(Sender: TObject);
    procedure SpeedMittenClick(Sender: TObject);
    procedure SpeedFloatingClick(Sender: TObject);
    procedure SpeedPlotterClick(Sender: TObject);
    procedure SpeedPLTClick(Sender: TObject);
    procedure SpeedDXFClick(Sender: TObject);
    procedure SpeedPeripherieClick(Sender: TObject);
    procedure SpeedDiagrammClick(Sender: TObject);
    procedure SpeedRahmenClick(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
    procedure SpeedLiteraturClick(Sender: TObject);
    procedure StrichstaerkeClick(Sender: TObject);
    procedure SpeedStrichClick(Sender: TObject);
    procedure ListBoxStrichClick(Sender: TObject);
    procedure BeschriftenJaClick(Sender: TObject);
    procedure BeschriftenNeinClick(Sender: TObject);
    procedure SpeedSkalaClick(Sender: TObject);
    procedure DspeichernClick(Sender: TObject);
    procedure DspeichernUnterClick(Sender: TObject);
    procedure SpeedEinrichtenClick(Sender: TObject);
    procedure StatistikClick(Sender: TObject);
    procedure SpeedStatistikClick(Sender: TObject);
    procedure SpeedKeineSkalaClick(Sender: TObject);
    procedure SpeedDspeichernClick(Sender: TObject);
    procedure BGroesseClick(Sender: TObject);
    procedure MaskEditBBreiteKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditBHoeheKeyPress(Sender: TObject; var Key: Char);
    procedure CheckBoxBildClick(Sender: TObject);
    procedure transparentClick(Sender: TObject);
    procedure FarbeHClick(Sender: TObject);
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
    procedure SpeedHTransparentClick(Sender: TObject);
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
    procedure SpeedHolEMFClick(Sender: TObject);
    procedure PloterstellenClick(Sender: TObject);
    procedure ButtonDruckenClick(Sender: TObject);
    procedure ButtonAbbrechenClick(Sender: TObject);
  end;

var
  Form19       : TForm19;
  HolZwischen  : boolean;
  ExtensionS   : string[3];
  Bitmap       : TBitmap;
  CurrentFile  : string;
  Gefuellt     : boolean;
  PlotDateiS   : string;
  IntervallS   : string[2];
  InkrementS   : string[2];
  Zahl         : word;
  A, Cc, C, Rr : byte;
  R, Nm, X ,Y  : real;
  Plott, D, V  : byte;
  Rmax, Xmax   : integer;
  Ymax         : integer;
  zaehlen      : word;
  Np, Xi, Yi   : real;
  NpS          : string;
  Schrift      : byte;
  BuendigS     : string;
  Gedrueckt    : array [1..3] of boolean;
  TextS        : string;
  WertFeld     : array of word;
  TNzeiger     : array of real;
  Nzeiger      : array of real;
  Wzeiger      : array of real;
  Ratio        : real;
  BHoeheSt     : word;
  HolpixS      : string;

implementation
uses Unit15, Unit16, Unit17, Unit18, Unit78, Unit92;
{$R *.DFM}

procedure TForm19.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm19.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm19.FormActivate(Sender: TObject);
var
  i : byte;
begin
  Left   := 4;
  Top    := 0;
  Width  := 1040;
  Height := 750;
  setlength (AziFeld,  MaxDaten);
  setlength (FalFeld,  MaxDaten);
  setlength (TNzeiger, MaxDaten);
  setlength (WertFeld, MaxDaten);
  setlength (NZeiger, MaxDaten+1);
  setlength (WZeiger, MaxDaten+1);
  WeiterB[19]                     := false;
  Form19.Caption                  := Tx(470);  {Fabric7: Plotten von Richt..}
  Image1.Hint                     := Hilf(87);
  ListBox1.Hint                   := Hilf(82);
  LabelAnzahl.Hint                := Hilf(36);
  Label3.Hint                     := Hilf(36);
  Panel2.Hint                     := Hilf(91);
  MaskEdit1.Hint                  := Hilf(89);
  LabelIntervall.Hint             := Hilf(89);
  MaskEdit2.Hint                  := Hilf(90);
  LabelInkrement.Hint             := Hilf(90);
  ButtonOk.Hint                   := Hilf(92);
  GroupBoxPlotten.Hint            := Hilf(58) + Hilf(59);
  Ploterstellen.Hint              := Hilf(60);
  Panel5.Hint                     := Hilf(61);
  Panel6.Hint                     := Hilf(62);
  MaskEditX.Hint                  := Hilf(63);
  MaskEditY.Hint                  := Hilf(64);
  LabelX.Hint                     := Hilf(63);
  LabelY.Hint                     := Hilf(64);
  ButtonStart.Hint                := Hilf(37);
  Buttonzurueck.Hint              := Hilf(93);
  Buttonbeenden.Hint              := Hilf(30);
  SpeedHilfe.Hint                 := Hilf(210);
  SpeedHandbuch.Hint              := Hilf(274);
  SpeedNichtGefuellt.Hint         := Hilf(366);
  SpeedGefuellt.Hint              := Hilf(367);
  SpeedFarbe.Hint                 := Hilf(365);
  SpeedKopieren.Hint              := Hilf(262);
  SpeedZwischenablage.Hint        := Hilf(246);
  SpeedGrenzen.Hint               := Hilf(395);
  SpeedMitten.Hint                := Hilf(396);
  SpeedFloating.Hint              := Hilf(397);
  SpeedPlotter.Hint               := Hilf(437);
  SpeedPLT.Hint                   := Hilf(438);
  SpeedDXF.Hint                   := Hilf(439);
  SpeedPeripherie.Hint            := Hilf(440);
  SpeedDiagramm.Hint              := Hilf(441);
  SpeedRahmen.Hint                := Hilf(442);
//  SpeedHintergrund.Hint           := Hilf(443);
  SpeedStrich.Hint                := Hilf(463);
  SpeedSkala.Hint                 := Hilf(464);
  SpeedEinrichten.Hint            := Hilf(505);
  SpeedStatistik.Hint             := Hilf(509);
  SpeedKeineSkala.Hint            := Hilf(527);
  SpeedDspeichern.Hint            := Hilf(204);
  SpeedBGroesse.Hint              := Hilf(583);
  SpeedHTransparent.Hint          := Hilf(584);
  SpeedHFarbe.Hint                := Hilf(585);
  SpeedBMP.Hint                   := Hilf(586);
  SpeedGIF.Hint                   := Hilf(587);
  SpeedTif.Hint                   := Hilf(588);
  SpeedJPG.Hint                   := Hilf(589);
  SpeedWMF.Hint                   := Hilf(590);
  SpeedEMF.Hint                   := Hilf(591);
  SpeedHolBMP.Hint                := Hilf(621);
  SpeedHolGIF.Hint                := Hilf(622);
  SpeedHolTIF.Hint                := Hilf(623);
  SpeedHolJPG.Hint                := Hilf(624);
  SpeedHolWMF.Hint                := Hilf(625);
  SpeedHolEMF.Hint                := Hilf(626);
  Darstellung1.Caption            := Tx(471);  {&Darstellung}
  mitSektorengrenzen1.Caption     := Tx(472);  {mit &Sektorengrenzen}
  mitSektorenmitten1.Caption      := Tx(473);  {mit Sektoren&mitten}
  gleitend1.Caption               := Tx(474);  {&gleitend}
  Fuellung1.Caption               := Tx(475);  {&Füllung}
  nichtgefuellt1.Caption          := Tx(476);  {&nicht gefüllt}
  gefuellt1.Caption               := Tx(477);  {&gefüllt}
  Farbe1.Caption                  := Tx(478);  {&Farbe}
  Grafik1.Caption                 := Tx(484);  {&Grafik}
  kopieren1.Caption               := Tx(485);  {&kopieren}
  speichern1.Caption              := Tx(487);  {&speichern}
  speichernunter1.Caption         := Tx(488);  {speichern &unter}
  ausZwischenablageholen1.Caption := Tx(489);  {aus &Zwischenablage holen}
  ausDateiholen1.Caption          := Tx(490);  {aus &Datei holen}
  HPPlotter1.Caption              := Tx(288);  {Drucker/Plotter}
  FarbePeripherie1.Caption        := Tx(498);  {Farbe der &Peripherie}
  Hintergrund.Caption             := Tx(1453); {Hintergrund}
  FarbeH.Caption                  := Tx(275);  {Farbe}
  Hilfe1.Caption                  := Tx(162)+' (F1)';  {ausgewählte Dateien:}
  LabelAnzahl.Caption             := Tx(181);  {Anzahl der Daten}
  LabelIntervall.Caption          := Tx(500);  {Intervall:}
  LabelInkrement.Caption          := Tx(501);  {Inkrement}
  GroupBoxPlotten.Caption         := Tx(502);  {Plotten:}
  Ploterstellen.Caption           := Tx(298);  {Plot-Einstellungen OK?}
  LabelRadius.Caption             := TX(299);  {Radius [cm]:}
  LabelMittelpunkt.Caption        := Tx(300);  {Mittelpunkt [cm]:}
  LabelX.Caption                  := Tx(301);  {X-Koordinate:}
  LabelY.Caption                  := Tx(302);  {Y-Koordinate:}
  Buttonzurueck.Caption           := Tx(30);
  Buttonbeenden.Caption           := Tx(53);
  Datenspeichern.Caption          := Tx(86);
  Dspeichern.Caption              := Tx(87);
  DspeichernUnter.Caption         := Tx(88);
  Labelausgewaehlte.Caption       := Tx(136); 
  Label3.Caption              := '';
  Image1.Enabled              := true;
  kopieren1.Enabled           := false;
  Speichern1.Enabled          := false;
  SpeichernUnter1.Enabled     := false;
  HolZwischen                 := false;
  Labelausgewaehlte.Enabled   := false;
  LabelAnzahl.Enabled         := false;
  Label3.Enabled              := false;
  ListBox1.Enabled            := false;
  LabelIntervall.Enabled      := false;
  LabelInkrement.Enabled      := false;
  HolPixS                     := '';
  MaskEdit1.EditMask          := '99;0; ';            {Intervall}
  MaskEdit2.EditMask          := '99;0; ';            {Inkrement}
  MaskEdit1.Text              := InttoStr(Intervall);
  MaskEdit2.Text              := InttoStr(Inkrement);
  MaskEdit1.Enabled           := false;
  MaskEdit2.Enabled           := false;
  ButtonOK.Enabled            := false;
  Grafik1.Enabled             := false;
  FarbeDiagramm1.Caption      := Tx(860);
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
  Farbe1.Enabled              := false;
  Fuellung1.Enabled           := false;
  LabelGeraet.Caption         := '';
  Darstellung1.Enabled        := false;
  SpeedDrucker.Enabled        := false;
  SpeedDrucker.Hint           := Hilf(203);
  Paneldrucken.Visible         := false;
  RadioButtonlinks.Visible     := false;
  RadioButtonzentriert.Visible := false;
  RadioButtonrechts.Visible    := false;
  RadioGroup.Visible           := false;
  Drucker1.Caption             := Tx(92);
  Druckereinrichten.Caption    := Tx(94);
  drucken1.Caption             := Tx(93);
  FarbeRahmen.Caption          := Tx(892);
  GroupBoxPlotten.Caption      := '';
  Gefuellt                     := false;
  for i := 1 to 3 do Gedrueckt[i] := false;
  GroupBoxPlotten.Visible := false;
  Panel7.Visible          := false;
  Handbuch.Caption        := Tx(1055)+' (F2)';
  Literatur.Caption       := Tx(1183)+' (F5)';
  SpeedLiteratur.Hint     := Hilf(462);
  PanelSpeed.Visible      := false;
  ImageNord.Visible       := false;
  for i := 0 to 9 do ListboxStrich.Items.Add(IntToStr(i+1));
  ListBoxStrich.Visible := false;
  LabelStrich.Visible   := false;
  Strichstaerke.Caption   := Tx(1186);
  LabelStrich.Caption     := Tx(1187);
  Beschriften.Caption     := Tx(1188);
  BeschriftenJa.Caption   := Tx(655);
  BeschriftenNein.Caption := Tx(654);
  Weiter.Caption          := Tx(1341);
  Statistik.Caption       := Tx(1342);
  Strichstaerke.Enabled   := false;
  beschriften.Enabled     := false;
  DatenSpeichern.Enabled  := false;
  ListBox1.Clear;
  Weiter.Enabled          := false;
  MaskEditBBreite.EditMask := '99999;0; ';
  MaskEditBHoehe.EditMask  := '99999;0; ';
  LabelBBreite.Caption     := Tx(1440);
  LabelBHoehe.Caption      := Tx(1441);
  BGroesse.Caption         := Tx(1439);
  PanelGroesse.Visible     := false;
  Ratio        := Image1.Width/Image1.Height;
  HTransparent := false;
  if WeiterB[17] then
  begin
    ButtonStart.Visible := false;
    ButtonBeenden.Visible := false;
    ButtonStartClick(Sender);
  end;  
end;

procedure TForm19.ButtonStartClick(Sender: TObject);      {Start}
var
  i, j     : word;
  ProS     : string[10];
  FBild    : TBitmap;
  GBild    :TGifImage;
  JBild    : TJpegImage;
  MetaFile : TMetaFile;
  Rahmen   : TRect;
begin
  BHoeheST := round(BBreiteST/Ratio);
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
  Panel7.Visible           := false;
  SpeedDrucker.Enabled     := true;
  Darstellung1.Enabled     := true;
  ButtonOk.Enabled         := true;
  LabelIntervall.Enabled   := true;
  LabelInkrement.Enabled   := true;
  MaskEdit1.Enabled        := true;
  MaskEdit2.Enabled        := true;
  LabelRadius.Enabled      := true;
  MaskEditRadius.Enabled   := true;
  LabelMittelpunkt.Enabled := true;
  LabelX.Enabled           := true;
  MaskEditX.Enabled        := true;
  LabelY.Enabled           := true;
  MaskEditY.Enabled        := true;
  Grafik1.Enabled          := true;
  Farbe1.Enabled           := true;
  Fuellung1.Enabled        := true;
  Strichstaerke.Enabled    := true;
  beschriften.Enabled      := true;
  DatenSpeichern.Enabled   := true;
  if not WeiterB[17] then
    Weiter.Enabled         := true;
  if WeiterB[17] then
    SpeedStatistik.Enabled := false;
  GroupBoxPlotten.Caption  := 'Plot';
  Bo                       := Pi/180;
  ProS                     := GeraetS;
  LabelGeraet.Caption      := Tx(850) + ' '+ProS;
  Labelausgewaehlte.Enabled := true;
  LabelAnzahl.Enabled       := true;
  Label3.Enabled   := true;
  ListBox1.Enabled := true;
  ListBox1.Clear;
  if (EingabeS = 'Festplatte') then
    for i := 0 to High (DateinameS) do
      Listbox1.Items.Add (DateiNameS[i]);
  if EingabeS = 'ExcelD' then ListBox1.Items.Add(PfadS); 
  if EingabeS = 'manuell' then
  begin
    if RichtungenS = 'Richtungen' then
    begin
    Labelausgewaehlte.Caption := '     ' + Tx(347);
      for i := 1 to ZahlGlob do
        ListBox1.Items.Add('              '
                + RightS('000'+IntToStr(AziFeld[i]),3));
    end;
    if RichtungenS = 'Betraege' then
    begin
      Labelausgewaehlte.Caption := Tx(347)+'  '+Tx(348);
      for i := 1 to ZahlGlob do
        ListBox1.Items.Add('         '
                     + RightS('000'+IntToStr(AziFeld[i]),3)
                           +'       '+RightS('0000'+IntToStr(FalFeld[i]),4));
    end;
  end;
  ExtensionS       := RightS(DateinameS[0],3);
  Label3.Caption   := IntToStr (ZahlGlob);
  ButtonOK.Enabled := true;
  kopieren1.Enabled       := true;
  speichern1.Enabled      := true;
  speichernunter1.Enabled := true;
  {Grafik}
  ImageNord.Picture.LoadfromFile (DirectS+'\'+'NordPfeil.bmp');
  Bitmap := Tbitmap.Create;
  Bitmap := Tbitmap.Create;
  Bitmap.Width     := Image1.Width;
  Bitmap.Height    := Image1.Height;
  ImageNord.Top    := 15;
  ImageNord.Left   := 400;
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
  with Image1.Canvas do
  begin
    Pen.Color   := Rahmenfarbe;
    Pen.Style   := psSolid;
    Brush.Color := HintFarbe;
    if HTransparent then
    begin
      Brush.Color := clWhite;
      HintFarbe   := clWhite;
    end
    else Rectangle (0, 0, Breite, Hoehe);
    Pen.Color := UmfangFarbe;
    Pen.Width := 2;
    Brush.Color := DiagrFarbe;
    Ellipse (Xmitte-Radius,Ymitte-Radius,Xmitte+Radius, Ymitte+Radius);
    Font.Color  := UMfangFarbe;
    Font.Size   := 20;
    Font.Name   := 'Times New Roman';
    Brush.Color := HintFarbe;
    Textout (Xmitte - Radius, YMitte - Radius,
             IntToStr(ZahlGlob) + Tx(440));
  end;
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
    if ClipBoard.HasFormat(CF_BITMAP) then
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
    else MessageDlg(Tx(306), mtInformation, [mbOK],0); {Zwischenablage enthält..}
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
 {Richtungsrose plotten}
  with Image1.Canvas do
  begin
    Pen.Width   := Strich;
    Pen.Style   := psSolid;
    Pen.Color   := RoseFarbe;
    Brush.Color := HintFarbe;
    for i := 0 to MaxDaten do
    begin
      NZeiger[i] := 0.1;
      WZeiger[i] := 0.1;
    end;
    V  := Intervall;
    A  := V;
    Cc := 0;
    C  := 0;
    R  := Radius - 1;
    Nm := 0;
    Plott := 0;
    Rmax := 0;
    Zahl := ZahlGlob;
    if RoseS = 'floating' then D := Inkrement;
    Klassen (BereichS, RichtungenS, V, D, Rr, A, C, Nm, Np,
             Nzeiger, Wzeiger);
    if RoseS <> 'floating' then
      GrenzenOMitten (Image1.Canvas, Plott, V, BereichS, Cc,
                      Rr, R, Nm, X, Y, Xi, Yi, Nzeiger,
                      Xmax, Ymax, Rmax)
    else
      Kordin (Image1.Canvas, Plott, BereichS, V, Rr, A, R,
              Nm, Xi, Yi, Nzeiger, Wzeiger, X, Y, Xmax,
              Ymax,Rmax)
  end;
  if Np < 100 then
  begin
    str (Np:4:1, NpS);
    Image1.Canvas.Font.Size := 18;
    Image1.Canvas.Textout (Xmitte + Radius div 3 + 33,
                           YMitte - Radius,
                           'Maximum: '+NPS+'%');
  end;
  ImageNord.Visible := false;
  Image1.Canvas.Draw(Image1.Width div 2 - ImageNord.Width div 2,7,
                     ImageNord.Picture.Graphic);
  if DemoB then
  begin
    with Image1.Canvas do
    begin
      Pen.Color := RoseFarbe;
      Rectangle (Width div 2-301,Height-151,
                 Width div 2-17 , Height);
      Font.Name   := 'Times New Roman';
      Brush.Color := clWhite;
      Font.Color  := clGray;
      Font.Size   := 36;
      Textout(Width div 2-300,Height-150,'Demo-Version');
    end;
  end;
end;

procedure TForm19.ButtonOKClick(Sender: TObject);
var
  IntervallS : string[4];
  InkrementS : string[4];
begin
  IntervallS := MaskEdit1.Text;
  InkrementS := MaskEdit2.Text;
  Intervall  := StrToInt (IntervallS);
  Inkrement  := StrToInt (InkrementS);
  ButtonStartClick(Sender);
end;

procedure TForm19.ButtonzurueckClick(Sender: TObject);      {zurück}
var
  Flaeche : TRect;
begin
  ButtonStart.Enabled := true;
  Listbox1.Clear;
  Flaeche := Rect(0,0,Clientwidth,ClientHeight);
  Loeschen (Image1.Canvas, Flaeche);
  Loeschen (ImageNord.Canvas, Flaeche);
  if not WeiterB[17] then
  begin
    AziFeld  := Nil;
    FalFeld  := Nil;
    WertFeld := Nil;
    TNzeiger := Nil;
    NZeiger  := Nil;
    WZeiger  := Nil;
  end;
  Form19.Close;
  if EingabeS = 'manuell'    then Form16.Close;
  if EingabeS = 'Festplatte' then Form18.Close;
  if EingabeS = 'Bild'       then Form78.Close;
  if EingabeS = 'ExcelD'     then Form92.Close;
end;

procedure TForm19.ButtonbeendenClick(Sender: TObject);      {beenden}
var
  Flaeche : TRect;
begin
  Flaeche := Rect(0,0,Clientwidth,ClientHeight);
  Loeschen (Image1.Canvas, Flaeche);
  Loeschen (ImageNord.Canvas, Flaeche);
  Listbox1.Clear;
  AziFeld  := Nil;
  FalFeld  := Nil;
  WertFeld := Nil;
  TNzeiger := Nil;
  NZeiger  := Nil;
  WZeiger  := Nil;
  Form19.Close;
  if EingabeS = 'manuell'    then Form16.Close;
  if EingabeS = 'Festplatte' then Form18.Close;
  if EingabeS = 'Bild'       then Form78.Close;
  if EingabeS = 'ExcelD'     then Form92.Close;
  Form15.Close;
  SetCurrentDir(DirectS);
end;

procedure TForm19.mitSektorengrenzen1Click(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  RoseS := 'Block';
  KonfigZeileS[60] := 'Rose Diagram (Style)       :,Block';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
  if Gefuellt then
  begin
    with Image1.Canvas do
    begin
      Brush.Color := RoseFarbe;
      FloodFill (Xmitte, Ymitte, RoseFarbe, fsBorder);
    end;
  end;
end;

procedure TForm19.mitSektorenmitten1Click(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  RoseS := 'Star';
  KonfigZeileS[60] := 'Rose Diagram (Style)       :,Star';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
  if Gefuellt then
  begin
    with Image1.Canvas do
    begin
      Brush.Color := RoseFarbe;
      FloodFill (Xmitte, Ymitte, RoseFarbe, fsBorder);
    end;
  end;
end;

procedure TForm19.gleitend1Click(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  RoseS := 'floating';
  KonfigZeileS[60] := 'Rose Diagram (Style)       :,floating';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
  if Gefuellt then
  begin
    with Image1.Canvas do
    begin
      Brush.Color := RoseFarbe;
      FloodFill (Xmitte, Ymitte, RoseFarbe, fsBorder);
    end;
  end;
end;

procedure TForm19.SpeedGrenzenClick(Sender: TObject);
begin
  mitSektorengrenzen1Click(Sender);
end;

procedure TForm19.SpeedMittenClick(Sender: TObject);
begin
  mitSektorenmitten1Click(Sender);
end;

procedure TForm19.SpeedFloatingClick(Sender: TObject);
begin
  gleitend1Click(Sender);
end;

procedure TForm19.nichtgefuellt1Click(Sender: TObject);
begin
  Gefuellt := false;
  ButtonOkClick(Sender);
end;

procedure TForm19.gefuellt1Click(Sender: TObject);
begin
  ButtonStartClick(Sender);
  Gefuellt := true;
  with Image1.Canvas do
  begin
    Brush.Color := RoseFarbe;
    FloodFill (Xmitte, Ymitte, RoseFarbe, fsBorder);
  end;
end;

procedure TForm19.Farbe1Click(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  Farbe := clWhite;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS    := ColorToString (Farbe);
  RoseFarbe := StringToColor(FarbeS);
  KonfigZeileS[11] := '  Colour of Rose Diagram   :,'+FarbeS;
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonOkClick(Sender);
end;

procedure TForm19.BGroesseClick(Sender: TObject);
begin
  PanelGroesse.Visible    := true;
  CheckBoxBild.State      := cbUnchecked;
  MaskEditBBreite.Text    := IntTostr(BBreiteSt);
  MaskEditBHoehe.Text     := IntToStr(BHoeheSt);
end;

procedure TForm19.SpeedBGroesseClick(Sender: TObject);
begin
  BGroesseClick(Sender);
end;

procedure TForm19.MaskEditBBreiteKeyPress(Sender: TObject; var Key: Char);
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

procedure TForm19.MaskEditBHoeheKeyPress(Sender: TObject; var Key: Char);
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
      BBreiteSt := round(BHoehest*Ratio);
      KonfigZeileS[118] := 'Save Image Width (Stereo)  :,'+IntToStr(BBreiteSt);
      MaskEditBBreite.Text := IntToStr(BBreiteSt);
    end;
    assignFile(Datei,DirectS+'\'+'Fabric.ini');
    rewrite (Datei);
    for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
    closefile (Datei);
  end;
end;

procedure TForm19.CheckBoxBildClick(Sender: TObject);
begin
  PanelGroesse.Visible := false;
end;

procedure TForm19.kopieren1Click(Sender: TObject);
begin
  ClipBoard.Assign (Image1.Picture);
end;

procedure TForm19.transparentClick(Sender: TObject);
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

procedure TForm19.SpeedHTransparentClick(Sender: TObject);
begin
  transparentClick(Sender);
end;

procedure TForm19.FarbeHClick(Sender: TObject);
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

procedure TForm19.SpeedHFarbeClick(Sender: TObject);
begin
  FarbeHClick(Sender);
end;

procedure TForm19.speichernBMPClick(Sender: TObject);
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

procedure TForm19.SpeedBMPClick(Sender: TObject);
begin
  speichernBMPClick(Sender);
end;

procedure TForm19.speichernGIFClick(Sender: TObject);
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

procedure TForm19.SpeedGIFClick(Sender: TObject);
begin
  speichernGIFClick(Sender);
end;

procedure TForm19.speichernTIFClick(Sender: TObject);
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

procedure TForm19.SpeedTIFClick(Sender: TObject);
begin
  speichernTIFClick(Sender);
end;

procedure TForm19.speichernJPGClick(Sender: TObject);
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

procedure TForm19.SpeedJPGClick(Sender: TObject);
begin
  speichernJPGClick(Sender);
end;

procedure TForm19.speichernWMFClick(Sender: TObject);
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

procedure TForm19.SpeedWMFClick(Sender: TObject);
begin
  speichernWMFClick(Sender);
end;

procedure TForm19.speichernEMFClick(Sender: TObject);
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

procedure TForm19.SpeedEMFClick(Sender: TObject);
begin
  speichernEMFClick(Sender);
end;

procedure TForm19.speichernPLTClick(Sender: TObject);
var
  i      : byte;
  Datei  : Textfile;
begin
  GroupBoxPlotten.Visible  := true;
  Panel7.Visible           := true;
  FarbePeripherie1.Enabled := true;
  GeraetS                     := 'HPGL';
  KonfigZeileS[53] := 'Paper Plot                 :,HPGL';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  LabelGeraet.Caption := Tx(850)+' '+ GeraetS;
end;

procedure TForm19.speichernDXFClick(Sender: TObject);
var
  i      : byte;
  Datei  : Textfile;
begin
  GroupBoxPlotten.Visible := true;
  Panel7.Visible          := true;
  GeraetS                 := 'DXF';
  KonfigZeileS[53] := 'Paper Plot                 :,DXF';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  LabelGeraet.Caption := Tx(850)+' '+ GeraetS;
end;

procedure TForm19.speichernUBMPClick(Sender: TObject);
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

procedure TForm19.speichernUGIFClick(Sender: TObject);
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

procedure TForm19.speichernUTIFClick(Sender: TObject);
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

procedure TForm19.speichernUJPGClick(Sender: TObject);
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

procedure TForm19.speichernUWMFClick(Sender: TObject);
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

procedure TForm19.speichernUEMFClick(Sender: TObject);
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

procedure TForm19.ausZwischenablageHolen1Click(Sender: TObject);
begin
  FarbePeripherie1.Enabled  := false;
  FarbeDiagramm1.Enabled    := false;
  Hintergrund.Enabled       := false;
  HolZwischen := true;
  ButtonStartClick(Sender);
end;

procedure TForm19.holenBMPClick(Sender: TObject);
begin
  OpenDialog1.DefaultExt := 'Windows bitmap file (*.bmp)|*.bmp';
  OpenDialog1.Filter     := 'Windows bitmap file (*.bmp)|*.bmp';
  if OpenPictureDialog1.Execute then CurrentFile := OpenPictureDialog1.FileName
  else exit;
  HolPixS := 'BMP';
  ButtonStartClick(Sender);
end;

procedure TForm19.SpeedHolBMPClick(Sender: TObject);
begin
  holenBMPClick(Sender);
end;

procedure TForm19.holenGIFClick(Sender: TObject);
begin
  OpenDialog1.DefaultExt := 'Compuserve gif file (*.gif)|*.gif';
  OpenDialog1.Filter     := 'Compuserve gif file (*.gif)|*.gif';
  if OpenDialog1.Execute then CurrentFile := OpenDialog1.FileName;
  HolPixS := 'GIF';
  ButtonStartClick(Sender);
end;

procedure TForm19.SpeedHolGIFClick(Sender: TObject);
begin
  holenGIFClick(Sender);
end;

procedure TForm19.holenTIFClick(Sender: TObject);
begin
  OpenDialog1.DefaultExt := 'Tagged image file format (*.tif)|*.tif';
  OpenDialog1.Filter     := 'Tagged image file format (*.tif)|*.tif';
  if OpenDialog1.Execute then CurrentFile := OpenDialog1.FileName
  else exit;
  HolPixS := 'TIF';
  ButtonStartClick(Sender);
end;

procedure TForm19.SpeedHolTIFClick(Sender: TObject);
begin
  holenTIFClick(Sender);
end;

procedure TForm19.holenJPGClick(Sender: TObject);
begin
  OpenPictureDialog1.DefaultExt := 'Jpeg file (*.jpg)|*.jpg';
  OpenPictureDialog1.Filter     := 'Jpeg file (*.jpg)|*.jpg';
  if OpenPictureDialog1.Execute then CurrentFile := OpenPictureDialog1.FileName
  else exit;
  HolPixS := 'JPG';
  ButtonStartClick(Sender);
end;

procedure TForm19.SpeedHolJPGClick(Sender: TObject);
begin
  holenJPGClick(Sender);
end;

procedure TForm19.holenWMFClick(Sender: TObject);
begin
  OpenDialog1.DefaultExt := 'Windows metafile (*.WMF)|*.wmf';
  OpenDialog1.Filter     := 'Windows metafile (*.WMF)|*.wmf';
  if OpenDialog1.Execute then CurrentFile := OpenDialog1.FileName
  else exit;
  HolPixS := 'WMF';
  ButtonStartClick(Sender);
end;

procedure TForm19.SpeedHolWMFClick(Sender: TObject);
begin
  holenWMFClick(Sender);
end;

procedure TForm19.holenEMFClick(Sender: TObject);
begin
  OpenDialog1.DefaultExt := 'Enhanced windows metafile (*.EMF)|*.emf';
  OpenDialog1.Filter     := 'Enhanced windows metafile (*.EMF)|*.emf';
  if OpenDialog1.Execute then CurrentFile := OpenDialog1.FileName
  else exit;
  HolPixS := 'EMF';
  ButtonStartClick(Sender);
end;

procedure TForm19.SpeedHolEMFClick(Sender: TObject);
begin
  holenEMFClick(Sender);
end;

procedure TForm19.HPPlotter1Click(Sender: TObject);
var
  i      : byte;
  Datei  : Textfile;
begin
  DiagrFarbe := clWhite;
  ButtonStartClick(Sender);
  Panel7.Visible           := true;
  PrinterSetupDialog1.execute;
  FarbePeripherie1.Enabled := true;
  GeraetS                  := 'Plotter';
  KonfigZeileS[53] := 'Paper Plot                 :,Plotter';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  LabelGeraet.Caption := Tx(850)+' '+ GeraetS;
  GroupBoxPlotten.Visible := true;
end;

procedure TForm19.SpeedPlotterClick(Sender: TObject);
begin
  HPPlotter1Click(Sender);
end;

procedure TForm19.SpeedPLTClick(Sender: TObject);
begin
  speichernPLTClick(Sender);
end;

procedure TForm19.SpeedDXFClick(Sender: TObject);
begin
  speichernDXFClick(Sender);
end;

procedure TForm19.FarbePeripherie1Click(Sender: TObject);
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
  ButtonOkClick(Sender);
end;

procedure TForm19.FarbeDiagramm1Click(Sender: TObject);
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
  ButtonStartClick(Sender);
end;

procedure TForm19.FarbeRahmenClick(Sender: TObject);
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
  ButtonOkClick(Sender);
end;

procedure TForm19.SpeedPeripherieClick(Sender: TObject);
begin
  FarbePeripherie1Click(Sender);
end;

procedure TForm19.SpeedDiagrammClick(Sender: TObject);
begin
  FarbeDiagramm1Click(Sender);
end;

procedure TForm19.SpeedRahmenClick(Sender: TObject);
begin
  FarbeRahmenClick(Sender);
end;

procedure TForm19.PloterstellenClick(Sender: TObject);
var
  Datei   : TextFile;
  i       : byte;
  RmaxS   : string[12];
  RadiusS : string[12];
  XKoordS : string[12];
  YKoordS : string[12];
  Kreuz   : boolean;
  XmaxE   : real;
  YmaxE   : real;
  RmaxE   : real;
  XS, YS  : string;
  WS, HS  : string;
  Groesse : word;
  Typ     : TMsgDlgType;
begin
  setlength (Xver1Feld, MaxDaten);
  setlength (Xver2Feld, MaxDaten);
  setlength (Yver1Feld, MaxDaten);
  setlength (Yver2Feld, MaxDaten);
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
  Typ :=mtError;
  if GeraetS <> 'Plotter' then
  begin
    RmaxS := '(max. 100mm)';
    RmaxE := 10.0;
    XmaxE := 29.2 - RmaxE;
    YmaxE := 20.5 - RmaxE;
    if HpRadius > RmaxE then
    begin
      if DlgMessage (Typ, Tx(37), Tx(308)+RMaxS,3) = 4 then
      begin
        MaskEditRadius.Clear;
        exit;
      end;
    end;
    if XKoord > XmaxE then
    begin
      if DlgMessage (Typ, Tx(37), Tx(309)+' max. '
         +FloattoStr(Xmax),3) = 4 then
      begin
        MaskEditX.Clear;
        exit;
      end;
    end;
    if YKoord > YmaxE then
    begin
      if DlgMessage (Typ, Tx(37), Tx(310)+' max. '
           +FloattoStr(ymax),3) = 4 then
      begin
        MaskEditY.Clear;
        exit;
      end;  
    end;
  end;
  Plott := 1;
  Kreuz := false;
 {Beginn des Plottens}
  if GeraetS <> 'Plotter' then
  begin
    Plotter (Canvas, SaveDialog1);
    Farben (Canvas, PeriFarbe);
    HPPeriph (Canvas, Kreuz);
    Zaehler := 0;
    Klassen (BereichS, RichtungenS, V, D, Rr, A, C, Nm, Np,
             Nzeiger, Wzeiger);
    Hpmaximum (Canvas, Np);
    Farben (Canvas, RoseFarbe);
    if (GeraetS = 'DXF') and (RoseS = 'Star') then
      Zaehler := 0;
    if RoseS <> 'floating' then
      GrenzenOMitten (Image1.Canvas, Plott, V, BereichS,
                      Cc, Rr, R, Nm, X, Y, Xi, Yi, Nzeiger,
                      Xmax, Ymax, Rmax)
    else
      Kordin (Image1.Canvas, Plott, BereichS, V, Rr, A,
              Radius, Nm, Xi, Yi, Nzeiger, Wzeiger, X, Y,
              Xmax, Ymax, Rmax);
    if GeraetS = 'DXF' then Dxfvertex;
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
      Brush.Style := bsClear;
      Pen.Color   := UmfangFarbe;
      Font.Size   := 10;
      Textout (10,650,Tx(436)) {Das Diagramm wird geplottet}
    end;
    SetMapMode (Printer.Handle, MM_Himetric);
    with Printer do
    begin
      BeginDoc;
      Plotter (Canvas, SaveDialog1);
      Farben (Canvas, UmfangFarbe);
      HPPeriph (Canvas, Kreuz);
      Canvas.Pen.Color := RoseFarbe;
      Zaehler := 0;
      Klassen (BereichS, RichtungenS, V, D, Rr, A, C, Nm, Np,
               Nzeiger, Wzeiger);
      Hpmaximum (Canvas, Np);
      Farben (Canvas, RoseFarbe);
      if RoseS <> 'floating' then
        GrenzenOMitten (Canvas, Plott, V, BereichS,
                        Cc, Rr, R, Nm, X, Y, Xi, Yi, Nzeiger,
                        Xmax, Ymax, Rmax)
      else
        Kordin (Canvas, Plott, BereichS, V, Rr, A,
                Radius, Nm, Xi, Yi, Nzeiger, Wzeiger, X, Y,
                Xmax, Ymax, Rmax);
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
    With Image1.Canvas do
    begin
      Pen.Color   := HintFarbe;
      Brush.Style := bsClear;
      Font.Size   := 10;
      Textout (10,650,Tx(436))
                {Das Diagramm wird geplottet}
    end;
  end;
  showmessage(Tx(435));
  Xver1Feld := Nil;
  Xver2Feld := Nil;
  Yver1Feld := Nil;
  Yver2Feld := Nil;
  GroupBoxPlotten.Visible := false;
end;

procedure TForm19.Hilfe1Click(Sender: TObject);
var
  DateiS : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\rich6ras.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\Rose-plot.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm19.SpeedHilfeClick(Sender: TObject);
begin
  Hilfe1Click(Sender);
end;

procedure TForm19.DruckerEinrichtenClick(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TForm19.SpeedEinrichtenClick(Sender: TObject);
begin
  DruckerEinrichtenClick(Sender);
end;

procedure TForm19.drucken1Click(Sender: TObject);
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
  ButtonDrucken.Enabled        := false;
  i                            := 3;
  repeat
    i := i + 1;
    str(i, SchriftS);
    ListBoxSchrift.Items.Add (SchriftS);
  until i = 40;
end;

procedure TForm19.SpeedDruckerClick(Sender: TObject);
begin
  drucken1Click(Sender);
end;

procedure TForm19.MaskEditUnterschriftKeyPress(Sender: TObject;
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

procedure TForm19.ButtonAbbrechenClick(Sender: TObject);
begin
  Paneldrucken.Visible         := false;
  RadioButtonlinks.Visible     := false;
  RadioButtonzentriert.Visible := false;
  RadioButtonrechts.Visible    := false;
  RadioGroup.Visible           := false;
end;

procedure TForm19.ButtonDruckenClick(Sender: TObject);
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

procedure TForm19.RadioButtonLinksClick(Sender: TObject);
begin
  BuendigS := 'Links';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    ButtonDrucken.Enabled := true;
end;

procedure TForm19.RadioButtonZentriertClick(Sender: TObject);
begin
  BuendigS := 'Zentriert';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    ButtonDrucken.Enabled := true;
end;

procedure TForm19.RadioButtonRechtsClick(Sender: TObject);
begin
  BuendigS := 'Rechts';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    ButtonDrucken.Enabled := true;
end;

procedure TForm19.ListBoxSchriftClick(Sender: TObject);
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

procedure TForm19.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Richtungsrose.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'Rose_Diagrams.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm19.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm19.SpeednichtgefuelltClick(Sender: TObject);
begin
  nichtgefuellt1Click(Sender);
end;

procedure TForm19.SpeedGefuelltClick(Sender: TObject);
begin
  gefuellt1Click(Sender);
end;

procedure TForm19.SpeedFarbeClick(Sender: TObject);
begin
  Farbe1Click(Sender);
end;

procedure TForm19.StrichstaerkeClick(Sender: TObject);
begin
  ListBoxStrich.Visible  := true;
  LabelStrich.Color      := HintFarbe;
  LabelStrich.Font.Color := UmfangFarbe;
  LabelStrich.Visible    := true;
end;

procedure TForm19.SpeedStrichClick(Sender: TObject);
begin
  StrichStaerkeClick(Sender);
end;

procedure TForm19.ListBoxStrichClick(Sender: TObject);
var
  i : byte;
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

procedure TForm19.SpeedKopierenClick(Sender: TObject);
begin
  kopieren1Click(Sender);
end;

procedure TForm19.SpeedZwischenablageClick(Sender: TObject);
begin
  AusZwischenablageHolen1Click(Sender);
end;

procedure TForm19.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm19.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

procedure TForm19.BeschriftenJaClick(Sender: TObject);
var
  X, Y : word;
  Bo   : real;
  i, l : word;
begin
  Bo := Pi / 180;
  for i := 1 to 35 do
  begin
    X := round(Xmitte + Radius*sin(i*10*Bo));
    Y := round(Ymitte - Radius*cos(i*10*Bo));
    with Image1.Canvas do
    begin
      Pen.Color := UmfangFarbe;
      moveto(X, Y);
      X := round(Xmitte + (Radius-10)*sin(i*10*Bo));
      Y := round(Ymitte - (Radius-10)*cos(i*10*Bo));
      lineto(X,Y);
    end;
  end;
  l := 0;
  for i := 1 to 35 do
  begin
    if i >= 28 then l := 15;
    if i = 27 then l := 10;
    if (i < 27) and (i >= 17) then l := 5;
    if (i <=16) and (i >= 9) then l := 20;
    if i < 9 then l := 25;
    X := round(Xmitte - (Radius+l)*sin(i*10*Bo));
    Y := round(Ymitte - (Radius+l)*cos(i*10*Bo));
    with image1.Canvas do
    begin
      Brush.Color := HintFarbe;
      Font.Color  := UmfangFarbe;
      Font.Size   := 8;
      TextOut(X,Y,inttostr(360-i*10));
    end;
  end;
end;

procedure TForm19.BeschriftenNeinClick(Sender: TObject);
begin
  ButtonStartClick(sender);
end;

procedure TForm19.SpeedKeineSkalaClick(Sender: TObject);
begin
  BeschriftenNeinClick(Sender);
end;

procedure TForm19.SpeedSkalaClick(Sender: TObject);
begin
  BeschriftenJaClick(Sender);
end;

procedure TForm19.DspeichernClick(Sender: TObject);
begin
  if CurrentFile <> '' then Speichern4 (CurrentFile, Anzahl, AziFeld,
    FalFeld)
  else DspeichernUnterClick(Sender);
end;

procedure TForm19.DspeichernUnterClick(Sender: TObject);
begin
  Erweiterung (ExtenS);
  SaveDialog1.DefaultExt := ExtenS;
  SaveDialog1.Filter     := ExtenS;
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    Speichern4 (CurrentFile, Anzahl, AziFeld, FalFeld);
  end;
end;

procedure TForm19.SpeedDspeichernClick(Sender: TObject);
begin
  DspeichernUnterClick(Sender);
end;

procedure TForm19.StatistikClick(Sender: TObject);
begin
  WeiterB[19] := true;
  Application.CreateForm(TForm17, Form17);
  Form17.Show;
end;

procedure TForm19.SpeedStatistikClick(Sender: TObject);
begin
  StatistikClick(Sender);
end;

end.
