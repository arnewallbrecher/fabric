unit Unit19;  {Richtingsrose, Plotfläche}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, ExtCtrls, StdCtrls, Menus, Globvar, Basic,
  Clipbrd, Mask, Rose, HPPlot, Texte, ComCtrls, Buttons,
  Drucken, Printers, Shellapi, Plotten, Einausga, Standard,
  GifImage, Bmp2Tiff, Jpeg, ExtDlgs, ReadTiff, ehsHelpRouter,
  PngImage, Grafik;

type
  TForm19 = class(TForm)
    PanelDateien: TPanel;
    Labelausgewaehlte : TLabel;
    PanelIntervall: TPanel;
    LabelIntervall : TLabel;
    LabelInkrement : TLabel;
    ListBoxDateien: TListBox;
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
    SavePictureDialog1: TSavePictureDialog;
    SpeedBGroesse: TSpeedButton;
    SpeedHTransparent: TSpeedButton;
    SpeedHFarbe: TSpeedButton;
    OpenPictureDialog1: TOpenPictureDialog;
    Ploterstellen: TButton;
    ButtonDrucken: TButton;
    ButtonAbbrechen: TButton;
    ListBoxSpeichern: TListBox;
    ListBoxLoad: TListBox;
    SpeedBspeichern: TSpeedButton;
    SpeedHolen: TSpeedButton;
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
    PanelDaten: TPanel;
    ListBoxDaten: TListBox;
    LabelAnzahl: TLabel;
    Label3: TLabel;
    LabelDaten: TLabel;
    DEinrichten: TMenuItem;
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
    SpeedCalib: TSpeedButton;
    ButtonCalibEnde: TButton;

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
    procedure SpeedBGroesseClick(Sender: TObject);
    procedure SpeedHTransparentClick(Sender: TObject);
    procedure SpeedHFarbeClick(Sender: TObject);
    procedure speichernPLTClick(Sender: TObject);
    procedure speichernDXFClick(Sender: TObject);
    procedure PloterstellenClick(Sender: TObject);
    procedure ButtonDruckenClick(Sender: TObject);
    procedure ButtonAbbrechenClick(Sender: TObject);
    procedure speichern1Click(Sender: TObject);
    procedure ListBoxSpeichernClick(Sender: TObject);
    procedure ausDateiholen1Click(Sender: TObject);
    procedure ListBoxLoadClick(Sender: TObject);
    procedure SpeedHolenClick(Sender: TObject);
    procedure FontClick(Sender: TObject);
    procedure SpeedFontClick(Sender: TObject);
    procedure ButtonHokClick(Sender: TObject);
    procedure ButtonNPlusClick(Sender: TObject);
    procedure ButtonNMinusClick(Sender: TObject);
    procedure ButtonEPlusClick(Sender: TObject);
    procedure ButtonWplusClick(Sender: TObject);
    procedure ButtonWMinusClick(Sender: TObject);
    procedure ButtonEMinusClick(Sender: TObject);
    procedure ButtonSMinusClick(Sender: TObject);
    procedure ButtonSPlusClick(Sender: TObject);
    procedure DEinrichtenClick(Sender: TObject);
    procedure CalibrierenClick(Sender: TObject);
    procedure DruckenClick(Sender: TObject);
    procedure MaskEditBrEKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditBrDKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedCalibClick(Sender: TObject);
    procedure ButtonCalibEndeClick(Sender: TObject);
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
  Bild         : TBitmap;
  PlusEin      : boolean;
  NPlus, SPlus : integer;
  EPlus, WPlus : integer;
  Ebreite      : word;
  Dbreite      : word;
  FaktorAlt    : real;

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
  Left   := 70;
  Top    := 10;
  Width  := 1050;
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
  ListBoxDateien.Hint             := Hilf(82);
  LabelAnzahl.Hint                := Hilf(36);
  Label3.Hint                     := Hilf(36);
  PanelIntervall.Hint             := Hilf(91);
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
  SpeedPeripherie.Hint            := Hilf(440);
  SpeedDiagramm.Hint              := Hilf(441);
  SpeedRahmen.Hint                := Hilf(442);
  SpeedFont.Hint                  := Hilf(686);
  SpeedStrich.Hint                := Hilf(463);
  SpeedSkala.Hint                 := Hilf(464);
  SpeedEinrichten.Hint            := Hilf(505);
  SpeedStatistik.Hint             := Hilf(509);
  SpeedKeineSkala.Hint            := Hilf(527);
  SpeedDspeichern.Hint            := Hilf(204);
  SpeedBGroesse.Hint              := Hilf(583);
  SpeedHTransparent.Hint          := Hilf(584);
  SpeedHFarbe.Hint                := Hilf(585);
  SpeedBspeichern.Hint            := Hilf(264);
  SpeedHolen.Hint                 := Hilf(368);
  SpeedCalib.Hint                 := Hilf(717);
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
  LabelDaten.Caption              := Tx(914);
  LabelCalib.Caption              := Tx(1668);
  LabelCalib2.Caption             := Tx(1669);
  LabelCalib3.Caption             := Tx(1670);
  LabelCalib4.Caption             := Tx(1671);
  LabelCalib5.Caption             := Tx(1672);
  LabelCalib6.Caption             := Tx(1673);
  LabelBrE.Caption                := Tx(1674);
  LabelBrD.Caption                := Tx(1675);
  DEinrichten.Caption             := Tx(94);
  Calibrieren.Caption             := Tx(1581);
  Drucken.Caption                 := Tx(93);
  ButtonCalibEnde.Caption         := Tx(1682);
  Label3.Caption              := '';
  Image1.Enabled              := true;
  kopieren1.Enabled           := false;
  Speichern1.Enabled          := false;
  HolZwischen                 := false;
  Labelausgewaehlte.Enabled   := false;
  LabelAnzahl.Enabled         := false;
  Label3.Enabled              := false;
  ListBoxDateien.Enabled      := false;
  LabelIntervall.Enabled      := false;
  LabelInkrement.Enabled      := false;
  PanelDateien.Visible        := false;
  PanelDaten.Visible          := false;
  PanelIntervall.Visible      := false;
  Font.Enabled                := false;
  Calib                       := false;
  HolPixS                     := '';
  MaskEdit1.EditMask          := '99;0; ';            {Intervall}
  MaskEdit2.EditMask          := '99;0; ';            {Inkrement}
  MaskEdit1.Text              := InttoStr(Intervall);
  MaskEdit2.Text              := InttoStr(Inkrement);
  MaskEdit1.Enabled           := false;
  MaskEdit2.Enabled           := false;
  ButtonOK.Enabled            := false;
  Grafik1.Enabled             := false;
  PanelKaliber.Visible        := false;
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
  Statistik.Caption       := Tx(12);
  Strichstaerke.Enabled   := false;
  beschriften.Enabled     := false;
  DatenSpeichern.Enabled  := false;
  ListBoxDateien.Clear;
  Weiter.Enabled          := false;
  MaskEditBBreite.EditMask := '99999;0; ';
  MaskEditBHoehe.EditMask  := '99999;0; ';
  LabelBBreite.Caption     := Tx(1440);
  LabelBHoehe.Caption      := Tx(1441);
  BGroesse.Caption         := Tx(1439);
  PanelGroesse.Visible     := false;
  Ratio        := Image1.Width/Image1.Height;
  HTransparent := false;
  for i := 1 to 9 do
    ListBoxSpeichern.Items.Add (Tx(1611+i));
  ListBoxSpeichern.Visible := false;
  for i := 1 to 7 do
    ListBoxLoad.Items.Add (Tx(1611+i));
  ListBoxLoad.Visible := false;
  if WeiterB[17] then
  begin
    ButtonStart.Visible := false;
    ButtonBeenden.Visible := false;
    ButtonStartClick(Sender);
  end;
  PanelDehnen.Visible := false;
  NPlus               := 0;
  SPlus               := 0;
  WPlus               := 0;
  EPlus               := 0;
  PlusEin             := false;
end;

procedure TForm19.ButtonStartClick(Sender: TObject);      {Start}
var
  i, j     : word;
  ProS     : string[10];
  FBild    : TBitmap;
  GBild    :TGifImage;
  JBild    : TJpegImage;
  MetaFile : TMetaFile;
  Rahmen1  : TRect;
  Rahmen2  : TRect;
  BildPng  : TPngObject;
  NBild    : TBitmap;
begin
  GroupBoxPlotten.Visible := false;
  if not PlusEin then
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
    Font.Enabled             := true;
    if not WeiterB[17] then
      Weiter.Enabled         := true;
    if WeiterB[17] then
      SpeedStatistik.Enabled  := false;
    GroupBoxPlotten.Caption   := 'Plot';
    Bo                        := Pi/180;
    ProS                      := GeraetS;
    Labelausgewaehlte.Enabled := true;
    LabelAnzahl.Enabled       := true;
    Label3.Enabled            := true;
    ListBoxDateien.Enabled    := true;
    ListBoxDateien.Clear;
    ListBoxDaten.Clear;
    PanelDaten.Visible     := true;
    PanelIntervall.Visible := true;
    if EingabeS <> 'manuell' then PanelDateien.Visible := true;
    if (EingabeS = 'Festplatte') then
      for i := 0 to High (DateinameS) do
        ListboxDateien.Items.Add (DateiNameS[i]);
    if EingabeS = 'ExcelD' then ListBoxDateien.Items.Add(PfadS);
    if RichtungenS = 'Richtungen' then
    begin
      for i := 1 to ZahlGlob do
        ListBoxDaten.Items.Add('       '
                + RightS('000'+IntToStr(AziFeld[i]),3));
    end;
    if RichtungenS = 'Betraege' then
    begin
      LabelDaten.Caption := Tx(347)+'  '+Tx(348);
      for i := 1 to ZahlGlob do
        ListBoxDaten.Items.Add('   '
                     + RightS('000'+IntToStr(AziFeld[i]),3)
                     +'   '+RightS('0000'+IntToStr(FalFeld[i]),4));
    end;
    ExtensionS       := RightS(DateinameS[0],3);
    Label3.Caption   := IntToStr (ZahlGlob);
    ButtonOK.Enabled := true;
    kopieren1.Enabled       := true;
    speichern1.Enabled      := true;
    {Grafik}
    ImageNord.Picture.LoadfromFile (DirectS+'\'+'NordPfeil.bmp');
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
  end //not PlusEin
  else
  begin
    Rahmen1 := Rect(-Wplus,-Nplus,Breite+Eplus,Hoehe+SPlus);
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
    if not HTransparent then
      Image1.Canvas.Textout (Xmitte + Radius div 3 + 33,
                             YMitte - Radius,
                             'Maximum: '+NPS+'%');
  end;
  ImageNord.Visible := false;
  Image1.Canvas.Draw(Image1.Width div 2 - ImageNord.Width div 2,7,
                     ImageNord.Picture.Graphic);
  if DemoB then DemoText(Image1.Canvas,10,Image1.Height-40);
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
  ListboxDateien.Clear;
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
  ListboxDateien.Clear;
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
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
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
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
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
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
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
//  ButtonStartClick(Sender);
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
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
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
      assignFile(Datei,FabricS+'\'+'Fabric.ini');
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
      BHoeheSt             := StrToInt (BHoeheS);
      BBreiteSt            := round(BHoehest*Ratio);
      KonfigZeileS[118]    := 'Save Image Width (Stereo)  :,'+IntToStr(BBreiteSt);
      MaskEditBBreite.Text := IntToStr(BBreiteSt);
    end;
    assignFile(Datei,FabricS+'\'+'Fabric.ini');
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
  ListBoxSpeichern.Clear;
  ListBoxSpeichern.Items.Add (Tx(1613));
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
  speichern1.Enabled  := true;
  ButtonStartClick (Sender);
end;

procedure TForm19.SpeedHFarbeClick(Sender: TObject);
begin
  FarbeHClick(Sender);
end;

procedure TForm19.speichern1Click(Sender: TObject);
begin
  ListBoxSpeichern.Visible := true;
end;

procedure TForm19.ListBoxSpeichernClick(Sender: TObject);
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

procedure TForm19.speichernPLTClick(Sender: TObject);
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

procedure TForm19.speichernDXFClick(Sender: TObject);
var
  i      : byte;
  Datei  : Textfile;
begin
  PanelDaten.Visible      := false;
  GroupBoxPlotten.Visible := true;
  GeraetS                 := 'DXF';
  KonfigZeileS[53] := 'Paper Plot                 :,DXF';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
end;

procedure TForm19.ausZwischenablageHolen1Click(Sender: TObject);
begin
  FarbePeripherie1.Enabled  := false;
  FarbeDiagramm1.Enabled    := false;
  Hintergrund.Enabled       := false;
  HolZwischen := true;
  ButtonStartClick(Sender);
end;

procedure TForm19.ausDateiholen1Click(Sender: TObject);
begin
  ListBoxLoad.Visible := true;
end;

procedure TForm19.SpeedHolenClick(Sender: TObject);
begin
  ausDateiholen1Click(Sender);
end;

procedure TForm19.DEinrichtenClick(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TForm19.CalibrierenClick(Sender: TObject);
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

procedure TForm19.SpeedCalibClick(Sender: TObject);
begin
  CalibrierenClick(Sender);
end;

procedure TForm19.ButtonCalibEndeClick(Sender: TObject);
begin
  Calib  := false;
  Faktor := FaktorAlt;
  PanelKaliber.Visible := false;
end;

procedure TForm19.DruckenClick(Sender: TObject);
var
  i      : byte;
  Datei  : Textfile;
begin
  DiagrFarbe := clWhite;
  ButtonStartClick(Sender);
  PanelDaten.Visible := false;
  PrinterSetupDialog1.execute;
  FarbePeripherie1.Enabled := true;
  GeraetS                  := 'Plotter';
  KonfigZeileS[53] := 'Paper Plot                 :,Plotter';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  GroupBoxPlotten.Visible := true;
end;

procedure TForm19.MaskEditBrEKeyPress(Sender: TObject; var Key: Char);
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

procedure TForm19.MaskEditBrDKeyPress(Sender: TObject; var Key: Char);
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

procedure TForm19.ButtonNPlusClick(Sender: TObject);
begin
  NPlus := NPlus +1;
  ButtonStartClick(Sender);
end;

procedure TForm19.ButtonNMinusClick(Sender: TObject);
begin
  NPlus := NPlus -1;
  ButtonStartClick(Sender);
end;

procedure TForm19.ButtonWplusClick(Sender: TObject);
begin
  WPlus := WPlus +1;
  ButtonStartClick(Sender);
end;

procedure TForm19.ButtonWMinusClick(Sender: TObject);
begin
  WPlus := WPlus -1;
  ButtonStartClick(Sender);
end;

procedure TForm19.ButtonEMinusClick(Sender: TObject);
begin
  EPlus := EPlus -1;
  ButtonStartClick(Sender);
end;

procedure TForm19.ButtonEPlusClick(Sender: TObject);
begin
  EPlus := EPlus +1;
  ButtonStartClick(Sender);
end;

procedure TForm19.ButtonSMinusClick(Sender: TObject);
begin
  SPlus := SPlus -1;
  ButtonStartClick(Sender);
end;

procedure TForm19.ButtonSPlusClick(Sender: TObject);
begin
  SPlus := SPlus +1;
  ButtonStartClick(Sender);
end;

procedure TForm19.ButtonHokClick(Sender: TObject);
begin
  NPlus := 0;
  EPlus := 0;
  SPlus := 0;
  WPlus := 0;
  PlusEin     := false;
  PanelDehnen.Visible := false;
end;

procedure TForm19.ListBoxLoadClick(Sender: TObject);
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

procedure TForm19.SpeedPlotterClick(Sender: TObject);
begin
  DruckenClick(Sender);
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
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
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
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
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
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
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
  Xd, Yd  : word;
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
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
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
    With Image1.Canvas do
    begin
      Pen.Color   := HintFarbe;
      Brush.Style := bsClear;
      Font.Size   := 10;
      Textout (10,650,Tx(436))
                {Das Diagramm wird geplottet}
    end;
  end;
  if not Calib then showmessage(Tx(435));
  Xver1Feld := Nil;
  Xver2Feld := Nil;
  Yver1Feld := Nil;
  Yver2Feld := Nil;
  GroupBoxPlotten.Visible  := false;
  ListBoxSpeichern.Visible := false;
  PanelDaten.Visible       := true;
  Calib                    := false;
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
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\19Rose-plot.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\19Rose-plot.htm');
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
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
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

procedure TForm19.FontClick(Sender: TObject);
begin
  WaehlFont(FontDialog1);
end;

procedure TForm19.SpeedFontClick(Sender: TObject);
begin
  FontClick(Sender);
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
  if CurrentFile <> '' then Speichern4 (CurrentFile, ZahlGlob, AziFeld,
    FalFeld)
  else DspeichernUnterClick(Sender);
end;

procedure TForm19.DspeichernUnterClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := ExtenS;
  if ExtenS = 'STR' then
    SaveDialog1.Filter := 'Strike lines (*.str)|*.STR';
  if ExtenS = 'AZI' then
    SaveDialog1.Filter := 'Azimuths (*.azi)|*.AZI';
  if ExtenS = 'LST' then
    SaveDialog1.Filter := 'Strike lines (*.lst)|*.LST';
  if ExtenS = 'LAZ' then
    SaveDialog1.Filter := 'Slickensides (*.laz)|*.LAZ';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    Speichern4 (CurrentFile, ZahlGlob, AziFeld, FalFeld);
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
