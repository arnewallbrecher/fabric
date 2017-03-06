unit Unit31;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, ExtCtrls, Menus, StdCtrls, Globvar,
  Clipbrd, Plotten, Mask, HPPlot, Texte, ComCtrls, Buttons,
  Printers, Drucken, Shellapi, Basic, Standard, GifImage,
  Bmp2Tiff, Jpeg, ExtDlgs, ReadTiff, ehsHelpRouter, PngImage,
  Grafik, Einausga;

type
  TForm31 = class(TForm)
    Image1                  : TImage;
    PanelDateien: TPanel;
    Labelausgewaehlte: TLabel;

    ListBoxDateien: TListBox;

    ButtonStart  : TButton;
    Buttonzurueck: TButton;
    Buttonbeenden: TButton;

    MainMenu1: TMainMenu;

    Projektion1    : TMenuItem;
    Lambert1       : TMenuItem;
    stereografisch1: TMenuItem;

    Farbe1         : TMenuItem;
    Harnischflaechen1: TMenuItem;
    Striemungen1   : TMenuItem;

    Linien1         : TMenuItem;
    durchgezogen1   : TMenuItem;
    gestrichelt1    : TMenuItem;
    strichpunktiert1: TMenuItem;
    punktiert1      : TMenuItem;

    Hilfe1: TMenuItem;

    Grafik1                 : TMenuItem;
    kopieren1               : TMenuItem;
    speichern: TMenuItem;
    ausZwischenablageholen1: TMenuItem;
    ausDateiholen1          : TMenuItem;

    OpenDialog1 : TOpenDialog;
    SaveDialog1 : TSaveDialog;

    GroupBoxplotten : TGroupBox;

      Panel3        : TPanel;
      LabelRadius   : TLabel;
      MaskEditRadius: TMaskEdit;

      Panel4        : TPanel;
      LabelMittelp  : TLabel;
      LabelX        : TLabel;
      MaskEditX     : TMaskEdit;
      LabelY        : TLabel;
      MaskEditY     : TMaskEdit;

    HPPlotter1 : TMenuItem;

    FarbePeri1  : TMenuItem;

    FarbeDiagramm1 : TMenuItem;
    Hintergrund: TMenuItem;

    FarbeRahmen   : TMenuItem;

    StatusBar: TStatusBar;
    PanelSpeed: TPanel;
    SpeedHilfe: TSpeedButton;
    orthografisch1: TMenuItem;
    Kavraiskii1: TMenuItem;

    Drucker1            : TMenuItem;
    DruckerEinrichten1  : TMenuItem;
    drucken1            : TMenuItem;
    PrintDialog1        : TPrintDialog;
    PrinterSetupDialog1 : TPrinterSetupDialog;

    PanelDrucken         : TPanel;
    GroupBoxdrucken      : TGroupBox;
    Panel7               : TPanel;
    LabelRdrucken        : TLabel;
    MaskEditRdrucken     : TMaskEdit;
    Panel8               : TPanel;
    LabelMitte           : TLabel;
    LabelXdrucken        : TLabel;
    MaskEditXdrucken     : TMaskEdit;
    LabelYdrucken        : TLabel;
    MaskEditYdrucken     : TMaskEdit;
    Panel9               : TPanel;
    LabelUnterschrift    : TLabel;
    MaskEditUnterschrift : TMaskEdit;
    LabelSchrift         : TLabel;
    ListBoxSchrift       : TListBox;
    RadioGroup           : TRadioGroup;
    RadioButtonLinks     : TRadioButton;
    RadioButtonZentriert : TRadioButton;
    RadioButtonRechts    : TRadioButton;

    SpeedDrucken: TSpeedButton;
    Handbuch: TMenuItem;
    ColorDialog1: TColorDialog;
    PanelProjektion: TPanel;
    LabelProjektion: TLabel;
    Image2: TImage;
    SpeedHandbuch: TSpeedButton;
    SpeedKopieren: TSpeedButton;
    SpeedZwischenablage: TSpeedButton;
    Speedharnisch: TSpeedButton;
    SpeedStriemung: TSpeedButton;
    SpeedStereografisch: TSpeedButton;
    SpeedLambert: TSpeedButton;
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
    SpeedEinrichten: TSpeedButton;
    Auswertung: TMenuItem;
    Dieder: TMenuItem;
    Formfaktor: TMenuItem;
    Hoeppener: TMenuItem;
    SpeedDieder: TSpeedButton;
    SpeedHoeppener: TSpeedButton;
    PanelGroesse: TPanel;
    LabelBHoehe: TLabel;
    LabelBBreite: TLabel;
    MaskEditBBreite: TMaskEdit;
    MaskEditBHoehe: TMaskEdit;
    CheckBoxBild: TCheckBox;
    BGroesse: TMenuItem;
    transparent: TMenuItem;
    HFarbe: TMenuItem;
    SavePictureDialog1: TSavePictureDialog;
    SpeedTransparent: TSpeedButton;
    SpeedHFarbe: TSpeedButton;
    SpeedBGroesse: TSpeedButton;
    OpenPictureDialog1: TOpenPictureDialog;
    Ploterstellen: TButton;
    ButtonDrucken: TButton;
    ButtonAbbrechen: TButton;
    ListBoxSpeichern: TListBox;
    ListBoxLoad: TListBox;
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
    DatenSpeichern: TMenuItem;
    DSpeichern: TMenuItem;
    DSpeichernUnter: TMenuItem;
    Eigenwerte: TMenuItem;
    SpeedEigenwerte: TSpeedButton;
    Iteration: TMenuItem;
    SpeedIteration: TSpeedButton;
    SpeedDirekt: TSpeedButton;
    Direkt: TMenuItem;
    PanelDaten: TPanel;
    LabelZahl: TLabel;
    Label00000: TLabel;
    ListBoxDaten: TListBox;
    LabelDaten: TLabel;
    LabelHarnisch: TLabel;
    LabelStriemung: TLabel;
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
    ButtonCalibEnde: TButton;

    procedure ButtonStartClick(Sender: TObject);
    procedure ButtonzurueckClick(Sender: TObject);
    procedure ButtonbeendenClick(Sender: TObject);

    procedure Lambert1Click(Sender: TObject);
    procedure stereografisch1Click(Sender: TObject);

    procedure Harnischflaechen1Click(Sender: TObject);
    procedure Striemungen1Click(Sender: TObject);

    procedure durchgezogen1Click(Sender: TObject);
    procedure gestrichelt1Click(Sender: TObject);
    procedure strichpunktiert1Click(Sender: TObject);
    procedure punktiert1Click(Sender: TObject);

    procedure FormActivate(Sender: TObject);

    procedure kopieren1Click(Sender: TObject);
    procedure ausZwischenablageholen1Click(Sender: TObject);

    procedure Hilfe1Click(Sender: TObject);
    procedure ShowHint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedHilfeClick(Sender: TObject);
    procedure orthografisch1Click(Sender: TObject);
    procedure Kavraiskii1Click(Sender: TObject);
    procedure DruckerEinrichten1Click(Sender: TObject);
    procedure drucken1Click(Sender: TObject);
    procedure MaskEditUnterschriftKeyPress(Sender: TObject; var Key: Char);
    procedure RadioButtonLinksClick(Sender: TObject);
    procedure RadioButtonZentriertClick(Sender: TObject);
    procedure RadioButtonRechtsClick(Sender: TObject);
    procedure ListBoxSchriftClick(Sender: TObject);
    procedure SpeedDruckenClick(Sender: TObject);
    procedure HandbuchClick(Sender: TObject);
    procedure FarbePeri1Click(Sender: TObject);
    procedure FarbeDiagramm1Click(Sender: TObject);
    procedure FarbeRahmenClick(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure SpeedKopierenClick(Sender: TObject);
    procedure SpeedZwischenablageClick(Sender: TObject);
    procedure SpeedharnischClick(Sender: TObject);
    procedure SpeedStriemungClick(Sender: TObject);
    procedure SpeedStereografischClick(Sender: TObject);
    procedure SpeedLambertClick(Sender: TObject);
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
    procedure SpeedEinrichtenClick(Sender: TObject);
    procedure DiederClick(Sender: TObject);
    procedure HoeppenerClick(Sender: TObject);
    procedure SpeedDiederClick(Sender: TObject);
    procedure SpeedHoeppenerClick(Sender: TObject);
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
    procedure speichernClick(Sender: TObject);
    procedure ListBoxSpeichernClick(Sender: TObject);
    procedure ausDateiholen1Click(Sender: TObject);
    procedure ListBoxLoadClick(Sender: TObject);
    procedure SpeedSpeichernClick(Sender: TObject);
    procedure FontClick(Sender: TObject);
    procedure SpeedFontClick(Sender: TObject);
    procedure ButtonHokClick(Sender: TObject);
    procedure ButtonNPlusClick(Sender: TObject);
    procedure ButtonNMinusClick(Sender: TObject);
    procedure ButtonEMinusClick(Sender: TObject);
    procedure ButtonEPlusClick(Sender: TObject);
    procedure ButtonSMinusClick(Sender: TObject);
    procedure ButtonSPlusClick(Sender: TObject);
    procedure ButtonWplusClick(Sender: TObject);
    procedure ButtonWMinusClick(Sender: TObject);
    procedure DSpeichernClick(Sender: TObject);
    procedure DSpeichernUnterClick(Sender: TObject);
    procedure EigenwerteClick(Sender: TObject);
    procedure SpeedEigenwerteClick(Sender: TObject);
    procedure IterationClick(Sender: TObject);
    procedure SpeedIterationClick(Sender: TObject);
    procedure DirektClick(Sender: TObject);
    procedure DEinrichtenClick(Sender: TObject);
    procedure CalibrierenClick(Sender: TObject);
    procedure DruckenClick(Sender: TObject);
    procedure ButtonCalibEndeClick(Sender: TObject);
    procedure MaskEditBrEKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditBrDKeyPress(Sender: TObject; var Key: Char);
  end;

var
  Form31      : TForm31;
  Linie       : TPenStyle;
  Bitmap      : TBitmap;
  HolZwischen : boolean;
  HolPixS     : string;
  CurrentFile : string;
  PlotDateiS  : string;
  Schrift     : byte;
  BuendigS    : string;
  Gedrueckt   : array [1..3] of boolean;
  TextS       : string;
  Ratio       : real;
  BHoeheSt    : word;
  Bild        : TBitmap;
  NPlus,SPlus : integer;
  WPlus,EPlus : integer;
  PlusEin     : boolean;
  Dbreite     : word;
  Ebreite     : word;
  FaktorAlt   : real;

implementation
uses Unit27, Unit28, Unit29, Unit30, Unit33, Unit34, Unit94,
     Unit99, Unit100;
{$R *.DFM}

procedure TForm31.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm31.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm31.FormActivate(Sender: TObject);
var
  i : byte;
begin
  Top    := 10;
  Left   := 70;
  Width  := 1050;
  Height := 750;
  setlength (AziFeld, MaxDaten);
  setlength (FalFeld, MaxDaten);
  setlength (SAziFeld, MaxDaten);
  setlength (SFalFeld, MaxDaten);
  WeiterB[31] := false;
  Form31.Caption                   := Tx(638);  {Fabric7: Harnische und..}
  Image1.Hint                      := Hilf(56) + Hilf(57);
  ListBoxDateien.Hint              := Hilf(32);
  LabelZahl.Hint                   := Hilf(36);
  Label00000.Hint                  := Hilf(36);
  GroupBoxPlotten.Hint             := Hilf(58) + Hilf(59);
  ButtonStart.Hint                 := Hilf(37);
  Buttonzurueck.Hint               := Hilf(52);
  Buttonbeenden.Hint               := Hilf(30);
  Ploterstellen.Hint               := Hilf(60);
  Panel4.Hint                      := Hilf(62);
  MaskEditX.Hint                   := Hilf(63);
  MaskEditY.Hint                   := Hilf(64);
  SpeedHilfe.Hint                  := Hilf(210);
  SpeedKopieren.Hint               := Hilf(262);
  SpeedZwischenablage.Hint         := Hilf(246);
  PanelProjektion.Hint             := Hilf(276);
  SpeedHandbuch.Hint               := Hilf(274);
  SpeedHarnisch.Hint               := Hilf(385);
  SpeedStriemung.Hint              := Hilf(386);
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
  SpeedDrucken.Hint                := Hilf(309);
  SpeedStrich.Hint                 := Hilf(463);
  SpeedEinrichten.Hint             := Hilf(505);
  SpeedDieder.Hint                 := Hilf(515);
  SpeedHoeppener.Hint              := Hilf(514);
  SpeedBGroesse.Hint               := Hilf(583);
  SpeedTransparent.Hint            := Hilf(584);
  SpeedHFarbe.Hint                 := Hilf(585);
  SpeedFont.Hint                   := Hilf(686);
  SpeedEigenwerte.Hint             := Hilf(513);
  SpeedIteration.Hint              := Hilf(664);
  SpeedDirekt.Hint                 := Hilf(692);
  HolPixS                          := '';
  Projektion1.Caption              := Tx(639);  {&Projektion}
  Lambert1.Caption                 := Tx(640);  {&Lambert}
  stereografisch1.Caption          := Tx(641);  {&stereografisch}
  orthografisch1.Caption           := Tx(849);
  Farbe1.Caption                   := Tx(642);  {&Farbe}
  Harnischflaechen1.Caption        := Tx(643);  {&Harnischflächen}
  Striemungen1.Caption             := Tx(644);   {&Striemungen}
  Linien1.Caption                  := Tx(525);   {&linien}
  durchgezogen1.Caption            := Tx(526);   {&durchgezogen}
  gestrichelt1.Caption             := Tx(527);   {&getrichelt}
  strichpunktiert1.Caption         := Tx(528);   {&strichpunktiert}
  punktiert1.Caption               := Tx(645);   {&punktiert}
  Grafik1.Caption                  := TX(281);
  kopieren1.Caption                := Tx(282);
  speichern.Caption                := Tx(87);
  ausZwischenablageholen1.Caption  := Tx(286);
  ausDateiholen1.Caption           := Tx(287);
  HPPlotter1.Caption               := Tx(288);
  FarbePeri1.Caption               := Tx(830);
  FarbeDiagramm1.Caption           := Tx(860);
  Hintergrund.Caption              := Tx(1453);    {Hintergrund}
  HFarbe.Caption                   := Tx(275);
  Hilfe1.Caption                   := Tx(162)+' (F1)';
  Labelausgewaehlte.Caption        := Tx(136);
  LabelZahl.Caption                := Tx(646);     {Zahl der Daten:}
  GroupBoxPlotten.Caption          := Tx(297);
  Ploterstellen.Caption            := Tx(298);     {Plot-Einstellungen ok?}
  LabelRadius.Caption              := Tx(299);
  LabelMittelp.Caption             := Tx(300);
  LabelX.Caption                   := Tx(687);
  LabelY.Caption                   := Tx(688);
  Buttonzurueck.Caption            := Tx(30);
  Buttonbeenden.Caption            := Tx(53);
  Auswertung.Caption               := Tx(1341);
  Dieder.Caption                   := Tx(17);
  FormFaktor.Caption               := Tx(20);
  Hoeppener.Caption                := Tx(19);
  Font.Caption                     := Tx(1621);
  Eigenwerte.Caption               := Tx(1570);
  Iteration.Caption                := Tx(1567);
  Direkt.Caption                   := Tx(1648);
  DatenSpeichern.Caption           := Tx(86);
  DSpeichern.Caption               := Tx(87);
  DSpeichernUnter.Caption          := TX(88);
  LabelHarnisch.Caption            := Tx(615);
  LabelStriemung.Caption           := Tx(616);
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
  ButtonCalibEnde.Caption          := Tx(1682);
  Image1.Enabled                   := false;
  LabelZahl.Enabled                := false;
  Label00000.Caption               := '';
  Holzwischen                      := false;
  HolDatei                         := false;
  kopieren1.Enabled                := false;
  LabelRadius.Enabled              := false;
  LabelMittelp.Enabled             := false;
  LabelX.Enabled                   := false;
  LabelY.Enabled                   := false;
  MaskEditRadius.EditMask          := '999;0; ';
  MaskEditX.EditMask               := '999;0; ';
  MaskEditY.EditMask               := '999;0; ';
  MaskEditRadius.Text              := InttoStr(round(HpRadius*10));
  MaskEditX.Text                   := InttoStr(round(XKoord*10));
  MaskEditY.Text                   := InttoStr(round(YKoord*10));
  MaskEditRadius.Enabled           := false;
  MaskEditX.Enabled                := false;
  MaskEditY.Enabled                := false;
  Grafik1.Enabled                  := false;
  Projektion1.Enabled              := false;
  Farbe1.Enabled                   := false;
  Linien1.Enabled                  := false;
  AusgewDateien                    := true;
  PanelDateien.Visible             := false;
  PanelDaten.Visible               := false;
  PanelDaten.Visible               := false;
  Font.Enabled                     := false;
  LabelProjektion.Caption          := '';
  Paneldrucken.Visible         := false;
  Drucker1.Caption             := Tx(92);
  Druckereinrichten1.Caption   := Tx(94);
  drucken1.Caption             := Tx(93);
  FarbeRahmen.Caption          := Tx(892);
  SpeedDrucken.Enabled         := false;
  GroupBoxPlotten.Caption      := '';
  for i := 1 to 3 do Gedrueckt[i] := false;
  GroupBoxPlotten.Visible := false;
  Handbuch.Caption        := Tx(1055)+' (F2)';
  Literatur.Caption       := Tx(1183)+' (F5)';
  SpeedLiteratur.Hint     := Hilf(462);  
  PanelSpeed.Visible      := false;
  for i := 0 to 9 do ListboxStrich.Items.Add(IntToStr(i+1));
  ListBoxStrich.Visible    := false;
  LabelStrich.Visible      := false;
  LabelStrich.Caption      := Tx(1187);
  Auswertung.Enabled       := false;
  SpeedDieder.Enabled      := false;
  SpeedEigenwerte.Enabled  := false;
  SpeedIteration.Enabled   := false;
  SpeedDirekt.Enabled      := false;
  SpeedHoeppener.Enabled   := false;
  PanelKaliber.Visible     := false;
  Calib                    := false;
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
  PanelDehnen.Visible := false;
  NPlus               := 0;
  EPlus               := 0;
  SPlus               := 0;
  WPlus               := 0;
  PlusEin             := false;
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

procedure TForm31.ButtonStartClick(Sender: TObject);
var
  i, j        : word;
  Ag,Fg       : real;
  Al,Fl,X,Y   : real;
  Xp1,Yp1     : word;
  Xecke1      : real;
  Yecke1      : real;
  Xecke2      : real;
  Yecke2      : real;
  Xspitze     : real;
  Yspitze     : real;
  Abstand     : real;
  Xpol1,Ypol1 : word;
  Xpol2,Ypol2 : word;
  Xpol3,Ypol3 : word;
  ProS        : string;
  Datei       : TextFile;
  Quadrat     : TRect;
  FBild       : TBitmap;
  JBild       : TJpegImage;
  GBild       : TGifImage;
  MetaFile    : TMetaFile;
  Rahmen1     : TRect;
  Rahmen2     : TRect;
  BildPng     : TPngObject;
  NBild       : TBitmap;
  ZeileS      : string;
begin
  GroupBoxPlotten.Visible := false;
  Breite := Image1.Width;
  Hoehe  := Image1.Height;
  if not WeiterF then
  begin
    Auswertung.Enabled      := true;
    SpeedDieder.Enabled     := true;
    SpeedEigenwerte.Enabled := true;
    SpeedIteration.Enabled  := true;
    SpeedHoeppener.Enabled  := true;
    SpeedDirekt.Enabled     := true;
  end;
  if not PlusEin then
  begin
    BHoeheSt := round(BBreiteSt/Ratio);
    if not ClipBoard.HasFormat(CF_Bitmap) then
    begin
      ausZwischenablageholen1.Enabled := false;
      SpeedZwischenablage.Enabled     := false;
    end
    else
    begin
      ausZwischenablageholen1.Enabled := true;
      SpeedZwischenablage.Enabled     := true;
    end;
    PanelSpeed.Visible        := true;
    PanelDateien.Visible      := true;
    PanelDaten.Visible        := true;
    Font.Enabled              := true;
    DatenSpeichern.Enabled    := true;
    Projektion1.Enabled       := true;
    Farbe1.Enabled            := true;
    Linien1.Enabled           := true;
    LabelZahl.Enabled         := true;
    Label00000.Caption        := IntToStr(ZahlGlob);
    Grafik1.Enabled           := true;
    LabelRadius.Enabled       := true;
    LabelMittelp.Enabled      := true;
    LabelX.Enabled            := true;
    LabelY.Enabled            := true;
    MaskEditRadius.Enabled    := true;
    MaskEditX.Enabled         := true;
    MaskEditY.Enabled         := true;
    kopieren1.Enabled         := true;
    if not WeiterF then
    begin
      Auswertung.Enabled      := true;
      SpeedDieder.Enabled     := true;
      SpeedEigenwerte.Enabled := true;
      SpeedIteration.Enabled  := true;
      SpeedDirekt.Enabled     := true;
      SpeedHoeppener.Enabled  := true;
    end;
    GroupBoxPlotten.Caption   := 'Plot:';
    if ProjektionS = 'Lambert' then ProS  := Tx(259);
    if ProjektionS = 'stereographic' then ProS := Tx(260);
    if ProjektionS = 'orthographic' then ProS := Tx(849);
    if ProjektionS = 'Kavraiskii' then ProS := 'Kavraiskii';
    LabelProjektion.Caption := Tx(651)+': '+ ProS;
    ProS                      := GeraetS;
    Image1.Enabled            := true;
    ListBoxDateien.Clear;
    for i := 0 to Dateizahl do
      ListboxDateien.Items.Add (DateiNameS[i]);
    ListBoxDaten.Clear;
    for i := 1 to ZahlGlob do
    begin
      ZeileS := '      '+RightS('000'+IntToStr(AziFeld[i]),3)+'/'
                    +RightS('00'+IntTostr(FalFeld[i]),2)+'         '
                    +RightS('000'+IntToStr(SAziFeld[i]),3)+'/'
                    +RightS('000'+IntToStr(SFalFeld[i]),3);
      ListBoxDaten.Items.Add(ZeileS);
    end;
    {Diagramm plotten}
    Bo := Pi/180;
    Bitmap := Tbitmap.Create;
    ImageNord.Picture.LoadfromFile (DirectS+'\'+'NordPfeil.bmp');
    Bitmap := Tbitmap.Create;
    Bitmap.Width     := Image1.Width;
    Bitmap.Height    := Image1.Height;
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
        ZahlLoeschen(Image1.Canvas);
      end
      else MessageDlg(Tx(306), mtInformation, [mbOK],0);   {Die Zwischenablage}
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
  with Image1.Canvas do
  begin
    Pen.Width := Strich;
    Pen.Style := LinienTyp;
    for i := 1 to ZahlGlob do
    begin
      Ag := AziFeld[i] * Bo + Pi;
      Fg := Pi / 2 - FalFeld[i] * Bo;
      Grosskreis (Image1.Canvas, Ag, Fg, GrosskreisFarbe);
    end;
    Pen.Color   := PfeilFarbe;
    Brush.Color := PfeilFarbe;
    for i := 1 to ZahlGlob do
    begin
      Al := SAziFeld[i] * Bo;
      Fl := SFalFeld[i] * Bo;
      Fl := abs(Fl);
      Koordinaten (Al, Fl, X, Y, Xp1, Yp1);
      Ellipse (Xp1-3,Yp1-3,Xp1+3,Yp1+3);
      Xecke1  := 5;
      Xecke2  := -5;
      Xspitze := 0;
      Abstand := Radius * sqrt(sqr(X) + sqr(Y));
      if SFalFeld[i] < 0 then
      begin
        Yecke1  := Abstand + 10;
        Yecke2  := Abstand + 10;
        Yspitze := Yecke1  + 7;
      end
      else
      begin
        Yecke1  := Abstand - 10;
        Yecke2  := Abstand - 10;
        Yspitze := Yecke1  - 7;
      end;
      Xpol1 := Xmitte+round(Xecke1 *cos(-2*Pi-Al)-Yecke1 *sin(-2*Pi-Al));
      Ypol1 := Ymitte-round(Xecke1 *sin(-2*Pi-Al)+Yecke1 *cos(-2*Pi-Al));
      Xpol2 := Xmitte+round(Xecke2 *cos(-2*Pi-Al)-Yecke2 *sin(-2*Pi-Al));
      Ypol2 := Ymitte-round(Xecke2 *sin(-2*Pi-Al)+Yecke2 *cos(-2*Pi-Al));
      Xpol3 := Xmitte+round(Xspitze*cos(-2*Pi-Al)-Yspitze*sin(-2*Pi-Al));
      Ypol3 := Ymitte-round(Xspitze*sin(-2*Pi-Al)+Yspitze*cos(-2*Pi-Al));
      Polygon([Point(Xpol1,Ypol1),Point(Xpol2,Ypol2),Point(Xpol3,Ypol3)]);
      moveto (Xp1,Yp1);
      lineto (Xpol3,Ypol3);
    end;
  end;
  Image2.Visible    := false;
  ImageNord.Visible := false;
  if not HTransparent then
  begin
    with image2 do
    begin
      Quadrat := Rect (0, 0, Clientwidth, ClientHeight);
      UntereH(Canvas, Quadrat);
    end;
    Image1.Canvas.Draw(Image1.Width-Image2.width-5,
                       Image1.Height-Image2.Height-5,
                       Image2.picture.graphic);
  end;
  Image1.Canvas.Draw(Image1.Width div 2 - ImageNord.Width div 2,7,
                     ImageNord.Picture.Graphic);
  if DemoB then DemoText (Image1.Canvas, Image1.Width-200,20);
  SpeedDrucken.Enabled := true;
end;

procedure TForm31.ButtonzurueckClick(Sender: TObject);
var
  Flaeche : TRect;
begin
  ButtonStart.Enabled  := true;
  ListBoxDateien.Clear;
  MaskEditRadius.Clear;
  MaskEditX.Clear;
  MaskEditY.Clear;
  Flaeche := Rect(0,0,Clientwidth,ClientHeight);
  Loeschen (Image1.Canvas, Flaeche);
  Loeschen (Image2.Canvas, Flaeche);
  Loeschen (ImageNord.Canvas, Flaeche);
  if not WeiterF then
  begin
    AziFeld  := Nil;
    FalFeld  := Nil;
    SAziFeld := Nil;
    SFalFeld := Nil;
  end;
  if EingabeS = 'ExcelD' then Form94.Close;
  Form31.Close;
end;

procedure TForm31.ButtonbeendenClick(Sender: TObject);
var
  Flaeche : TRect;
begin
  Loeschen (Image1.Canvas, Flaeche);
  Loeschen (Image2.Canvas, Flaeche);
  Loeschen (ImageNord.Canvas, Flaeche);
  AziFeld  := Nil;
  FalFeld  := Nil;
  SAziFeld := Nil;
  SFalFeld := Nil;
  ListBoxDateien.Clear;
  MaskEditRadius.Clear;
  MaskEditX.Clear;
  MaskEditY.Clear;
  Application.ProcessMessages;
  Form31.Close;
  Application.ProcessMessages;
  Form28.Close;
  Application.ProcessMessages;
  Form27.Close;
  Form30.Close;
  Form99.Close;
  Form100.Close;
  if EingabeS = 'ExcelD' then form94.Close;
  SetCurrentDir(DirectS);
end;

procedure TForm31.Lambert1Click(Sender: TObject);
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

procedure TForm31.stereografisch1Click(Sender: TObject);
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

procedure TForm31.orthografisch1Click(Sender: TObject);
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

procedure TForm31.Kavraiskii1Click(Sender: TObject);
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

procedure TForm31.SpeedStereografischClick(Sender: TObject);
begin
  Stereografisch1Click(Sender);
end;

procedure TForm31.SpeedLambertClick(Sender: TObject);
begin
  Lambert1Click(Sender);
end;

procedure TForm31.SpeedOrthografischClick(Sender: TObject);
begin
  orthografisch1Click(Sender);
end;

procedure TForm31.SpeedKavraiskiiClick(Sender: TObject);
begin
  Kavraiskii1Click(Sender);
end;

procedure TForm31.Harnischflaechen1Click(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  Farbe := clWhite;
  AusgewDateien   := false;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS := ColorToString (Farbe);
  GrosskreisFarbe := StringToColor(FarbeS);
  KonfigZeileS[8] := '  Colour of Great Circles  :,'+FarbeS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick (Sender);
end;

procedure TForm31.Striemungen1Click(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  Farbe := clWhite;
  AusgewDateien   := false;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS := ColorToString (Farbe);
  PfeilFarbe       := StringToColor(FarbeS);
  KonfigZeileS[36] := 'Colour of Arrows           :,'+FarbeS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick (Sender);
end;

procedure TForm31.SpeedharnischClick(Sender: TObject);
begin
  HarnischFlaechen1Click(Sender);
end;

procedure TForm31.SpeedStriemungClick(Sender: TObject);
begin
  Striemungen1Click(Sender);
end;

procedure TForm31.durchgezogen1Click(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  AusgewDateien := false;
  LinienTyp := psSolid;
  KonfigZeileS[10] := '  Line Style               :,Solid';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
  ListBoxStrich.Visible  := true;
  LabelStrich.Color      := HintFarbe;
  LabelStrich.Font.Color := UmfangFarbe;
  LabelStrich.Visible    := true;
end;

procedure TForm31.gestrichelt1Click(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  AusgewDateien := false;
  Strich := 1;
  LinienTyp := psDash;
  KonfigZeileS[10] := '  Line Style               :,DASH';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm31.strichpunktiert1Click(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  AusgewDateien := false;
  Strich := 1;
  LinienTyp := psDashDot;
  KonfigZeileS[10] := '  Line Style               :,DASHDOT';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm31.punktiert1Click(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  AusgewDateien := false;
  Strich := 1;
  LinienTyp := psDOT;
  KonfigZeileS[10] := '  Line Style               :,DOT';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm31.SpeedDurchgezogenClick(Sender: TObject);
begin
  durchgezogen1Click(Sender);
end;

procedure TForm31.SpeedGestricheltClick(Sender: TObject);
begin
  gestrichelt1Click(Sender);
end;

procedure TForm31.SpeedStrichPunktClick(Sender: TObject);
begin
  strichpunktiert1Click(Sender);
end;

procedure TForm31.SpeedPunktiertClick(Sender: TObject);
begin
  punktiert1Click(Sender);
end;

procedure TForm31.FontClick(Sender: TObject);
begin
  WaehlFont(FontDialog1);
end;

procedure TForm31.SpeedFontClick(Sender: TObject);
begin
  FontClick(Sender);
end;

procedure TForm31.BGroesseClick(Sender: TObject);
begin
  PanelGroesse.Visible    := true;
  CheckBoxBild.State      := cbUnchecked;
  MaskEditBBreite.Text    := IntTostr(BBreiteSt);
  MaskEditBHoehe.Text     := IntToStr(BHoeheSt);
end;

procedure TForm31.SpeedBGroesseClick(Sender: TObject);
begin
  BGroesseClick(Sender);
end;

procedure TForm31.MaskEditBBreiteKeyPress(Sender: TObject; var Key: Char);
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

procedure TForm31.MaskEditBHoeheKeyPress(Sender: TObject; var Key: Char);
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

procedure TForm31.CheckBoxBildClick(Sender: TObject);
begin
  PanelGroesse.Visible := false;
end;

procedure TForm31.kopieren1Click(Sender: TObject);
begin
  ClipBoard.Assign (Image1.Picture);
end;

procedure TForm31.transparentClick(Sender: TObject);
begin
  Farbe                 := clWhite;
  HTransparent          := true;
  ListBoxSpeichern.Clear;
  ListBoxSpeichern.Items.Add (Tx(1613));
  ButtonStartClick(Sender);
end;

procedure TForm31.SpeedTransparentClick(Sender: TObject);
begin
  transparentClick(Sender);
end;

procedure TForm31.HFarbeClick(Sender: TObject);
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
  speichern.Enabled := true;
  ButtonStartClick (Sender);
end;

procedure TForm31.SpeedHFarbeClick(Sender: TObject);
begin
  HFarbeClick(Sender);
end;

procedure TForm31.speichernClick(Sender: TObject);
begin
  ListBoxSpeichern.Visible := true;
end;

procedure TForm31.SpeedSpeichernClick(Sender: TObject);
begin
  speichernClick(Sender);
end;

procedure TForm31.ListBoxSpeichernClick(Sender: TObject);
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

procedure TForm31.speichernPLTClick(Sender: TObject);
var
  i      : byte;
  Datei  : Textfile;
begin
  GroupBoxPlotten.Visible := true;
  FarbePeri1.Enabled := true;
  GeraetS            := 'HPGL';
  KonfigZeileS[53]   := 'Paper Plot                 :,HPGL';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
end;

procedure TForm31.speichernDXFClick(Sender: TObject);
var
  i      : byte;
  Datei  : Textfile;
begin
  GroupBoxPlotten.Visible := true;
  FarbePeri1.Enabled := true;
  GeraetS            := 'DXF';
  KonfigZeileS[53]   := 'Paper Plot                 :,DXF';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  FarbePeri1.Enabled     := true;
end;

procedure TForm31.ausZwischenablageholen1Click(Sender: TObject);
begin
  FarbePeri1.Enabled        := false;
  FarbeDiagramm1.Enabled    := false;
  Hintergrund.Enabled       := false;
  HolZwischen := true;
  ButtonStartClick(Sender);
end;

procedure TForm31.ausDateiholen1Click(Sender: TObject);
begin
  ListBoxLoad.Visible := true;
end;

procedure TForm31.DEinrichtenClick(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TForm31.CalibrierenClick(Sender: TObject);
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

procedure TForm31.ButtonCalibEndeClick(Sender: TObject);
begin
  Calib := false;
  Faktor := FaktorAlt;
  PanelKaliber.Visible := false;
end;

procedure TForm31.MaskEditBrEKeyPress(Sender: TObject; var Key: Char);
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

procedure TForm31.MaskEditBrDKeyPress(Sender: TObject; var Key: Char);
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

procedure TForm31.DruckenClick(Sender: TObject);
var
  i      : byte;
  Datei  : Textfile;
begin
  DiagrFarbe := clWhite;
  ButtonStartClick(Sender);
  PanelDaten.Visible := false;
  PrinterSetupDialog1.execute;
  FarbePeri1.Enabled := true;
  GeraetS            := 'Plotter';
  KonfigZeileS[53]   := 'Paper Plot                 :,Plotter';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  GroupBoxPlotten.Visible := true;
end;

procedure TForm31.ButtonNPlusClick(Sender: TObject);
begin
  NPlus := NPlus +1;
  ButtonStartClick(Sender);
end;

procedure TForm31.ButtonNMinusClick(Sender: TObject);
begin
  NPlus := NPlus -1;
  ButtonStartClick(Sender);
end;

procedure TForm31.ButtonEMinusClick(Sender: TObject);
begin
  EPlus := EPlus -1;
  ButtonStartClick(Sender);
end;

procedure TForm31.ButtonEPlusClick(Sender: TObject);
begin
  EPlus := EPlus +1;
  ButtonStartClick(Sender);
end;

procedure TForm31.ButtonSMinusClick(Sender: TObject);
begin
  SPlus := SPlus -1;
  ButtonStartClick(Sender);
end;

procedure TForm31.ButtonSPlusClick(Sender: TObject);
begin
  SPlus := SPlus +1;
  ButtonStartClick(Sender);
end;

procedure TForm31.ButtonWplusClick(Sender: TObject);
begin
  WPlus := WPlus +1;
  ButtonStartClick(Sender);
end;

procedure TForm31.ButtonWMinusClick(Sender: TObject);
begin
  WPlus := WPlus -1;
  ButtonStartClick(Sender);
end;

procedure TForm31.ButtonHokClick(Sender: TObject);
begin
  NPlus := 0;
  EPlus := 0;
  SPlus := 0;
  WPlus := 0;
  PanelDehnen.Visible := false;
  PlusEin := false;
end;

procedure TForm31.ListBoxLoadClick(Sender: TObject);
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

procedure TForm31.SpeedPlotterClick(Sender: TObject);
begin
  DruckenClick(Sender);
end;

procedure TForm31.SpeedPLTClick(Sender: TObject);
begin
  speichernPLTClick(Sender);
end;

procedure TForm31.SpeedDXFClick(Sender: TObject);
begin
  speichernDXFClick(Sender);
end;

procedure TForm31.FarbePeri1Click(Sender: TObject);
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

procedure TForm31.FarbeDiagramm1Click(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  Farbe := clWhite;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS          := ColorToString (Farbe);
  DiagrFarbe      := StringToColor(FarbeS);
  KonfigZeileS[6] := '  Diagram Colour           :,'+FarbeS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick (Sender);
end;

procedure TForm31.FarbeRahmenClick(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  Farbe := clWhite;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS          := ColorToString (Farbe);
  RahmenFarbe     := StringToColor(FarbeS);
  KonfigZeileS[4] := '  Frame Colour             :,'+FarbeS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick (Sender);
end;

procedure TForm31.SpeedPeripherieClick(Sender: TObject);
begin
  FarbePeri1Click(Sender);
end;

procedure TForm31.SpeedDiagrammClick(Sender: TObject);
begin
  FarbeDiagramm1Click(Sender);
end;

procedure TForm31.SpeedRahmenClick(Sender: TObject);
begin
  FarbeRahmenClick(Sender);
end;

procedure TForm31.PloterstellenClick(Sender: TObject);
var
  RadiusS     : string[4];
  XKoordS     : string[4];
  YKoordS     : string[4];
  Co          : integer;
  Kreuz       : boolean;
  Rmax, Xmax  : real;
  RmaxS       : string[15];
  Ymax        : real;
  i, Rint     : word;
  Aa, Ff      : real;
  Laenge      : real;
  Pfeil       : real;
  Winkel      : real;
  X, Y, H, Fl : real;
  Xp, Yp, Al  : real;
  Xm, Ym      : word;
  Xf, Yf, Y2  : real;
  X1, X2, Y1  : real;
  Datei       : TextFile;
  X1m, Y1m    : word;
  X2m, Y2m    : word;
  XSchwer     : word;
  YSchwer     : word;
  XS, YS      : string;
  WS, HS      : string;
  Groesse     : word;
  Typ         : TMsgDlgType;
  Xd,Yd       : word;
  DiagNameS   : string;
begin
  if GeraetS = 'no' then exit;
  Bo := Pi/180;
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
    Rint   := round(HpRadius*400);
    XMitte := round(XKoord*400);
    YMitte := round(YKoord*400);
    Plotter (Canvas, SaveDialog1);
    Farben (Canvas, UmfangFarbe);
    HPPeriph (Canvas, Kreuz);
    Farben (Canvas, GrosskreisFarbe);
    for i := 1 to ZahlGlob do
    begin
      Aa := AziFeld[i] * Bo;
      Ff := FalFeld[i] * Bo;
      Aa := Aa + Pi;
      Ff := Pi / 2 - Ff;
      Hpgrosskreis (Canvas, Aa,Ff);
    end;
    Laenge := Rint/40000;
    Pfeil  := 20 * Bo;
    Winkel := 70 * Bo;
    Farben (Canvas, PfeilFarbe);
    for i := 1 to ZahlGlob do
    begin
      Al := SAziFeld[i] * Bo;
      Fl := abs(SFalFeld[i]) * Bo;
      Hpkoordin (Al, Fl, X, Y);
      Xp := X;
      Yp := Y;
      if GeraetS = 'HPGL' then
      begin
        Xm := round(Xp * Rint + Xmitte);
        Ym := round(Yp * Rint + Ymitte);
        Zeichkreis (Xm,Ym,round(Rint/80),15);
      end;
      if GeraetS = 'DXF' then
      begin
        H  := Rint / 40000;
        Xf := (Xp * Rint + Xmitte) / 400;
        Yf := (Yp * Rint + Ymitte) / 400;
        Dxfkreis (Xf,Yf,H);
      end;
      if SFalFeld[i] < 0 then
      begin
        Fl := (abs(SFalFeld[i]) - 10) * Bo;
        X1 := Laenge * sin(Al-Pfeil);
        Y1 := Laenge * cos(Al-Pfeil);
        X2 := Laenge * sin(Pfeil+Al);
        Y2 := Laenge * cos(Pfeil+Al);
      end
      else
      begin
        X1 := -Laenge * sin(Pfeil+Al);
        Y1 := -Laenge * cos(Pfeil+Al);
        X2 := -Laenge * sin(Al-Pfeil);
        Y2 := -Laenge * cos(Al-Pfeil);
        if abs(SFalFeld[i]) <= 80 then
        Fl := (abs(SFalFeld[i])+10)*Bo
        else
        begin
          Fl := (170 - abs(SFalFeld[i]))*Bo;
          Al := Al + Pi;
        end;
      end;
      setlength (Xver1Feld, 5000);
      setlength (Xver2Feld, 5000);
      setlength (Yver1Feld, 5000);
      setlength (Yver2Feld, 5000);
      Zaehler := 0;
      Hpkoordin (SAziFeld[i]*BO, abs(SFalFeld[i])*Bo, X, Y);
      PudS := 'PU;';
      Hpline (Canvas, X,Y);
      Hpkoordin (Al,Fl,X,Y);
      PudS := 'PD;';
      Hpline (Canvas, X,Y);
      Hpline (Canvas, X-X1,Y-Y1);
      Hpline (Canvas, X-X2,Y-Y2);
      Hpline (Canvas, X,Y);
      if GeraetS = 'DXF' then Dxfvertex;
      Xver1Feld := Nil;
      Xver2Feld := Nil;
      Yver1Feld := Nil;
      Yver2Feld := Nil;
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
      Farben (Canvas, GrosskreisFarbe);
      for i := 1 to ZahlGlob do
      begin
        Aa := AziFeld[i] * Bo;
        Ff := FalFeld[i] * Bo;
        Aa := Aa + Pi;
        Ff := Pi / 2 - Ff;
        Hpgrosskreis (Canvas, Aa,Ff);
      end;
      Laenge := Faktor*HPRadius/150;
      Pfeil  := 20 * Bo;
      Winkel := 70 * Bo;
      Farben (Canvas, PfeilFarbe);
      Canvas.Pen.Color   := PFeilFarbe;
      Canvas.Brush.Color := PfeilFarbe;
      Canvas.Brush.Style := bsSolid;
      for i := 1 to ZahlGlob do           {Plotten der Striemung}
      begin
        Al := SAziFeld[i] * Bo;
        Fl := abs(SFalFeld[i]) * Bo;
        Hpkoordin (Al, Fl, X, Y);
        Xp := X;
        Yp := Y;
        Xm := round(100*Faktor*(Xp * HPRadius + XKoord));
        Ym := round(100*Faktor*(YKoord - Yp * HPRadius));
        Rint := round(Faktor*HPRadius);
        Canvas.Ellipse (Xm-Rint,Ym-Rint,Xm+Rint,Ym+Rint);
        if SFalFeld[i] < 0 then
        begin
          Fl := (abs(SFalFeld[i]) - 10) * Bo;
          X1 := Laenge * sin(Al-Pfeil);
          Y1 := Laenge * cos(Al-Pfeil);
          X2 := Laenge * sin(Pfeil+Al);
          Y2 := Laenge * cos(Pfeil+Al);
        end
        else
        begin
          X1 := -Laenge * sin(Pfeil+Al);
          Y1 := -Laenge * cos(Pfeil+Al);
          X2 := -Laenge * sin(Al-Pfeil);
          Y2 := -Laenge * cos(Al-Pfeil);
          if abs(SFalFeld[i]) <= 80 then
            Fl := (abs(SFalFeld[i])+10)*Bo
          else
          begin
            Fl := (170 - abs(SFalFeld[i]))*Bo;
            Al := Al + Pi;
          end;
        end;
        Zaehler := 0;
        Hpkoordin (SAziFeld[i]*BO, abs(SFalFeld[i])*Bo, X, Y);
        PudS := 'PU;';
        Hpline (Canvas, X,Y);
        Hpkoordin (Al,Fl,X,Y);
        PudS := 'PD;';
        Hpline (Canvas, X,Y);
        Hpline (Canvas, X-X1,Y-Y1);
        Hpline (Canvas, X-X2,Y-Y2);
        Hpline (Canvas, X,Y);
      end;
      Xd := round((XKoord-length(DiagnameS)/8)*100*Faktor);
      Yd := round((YKoord+1.1*HpRadius)*100*Faktor);
      Canvas.Font.Size   := round(2*HpRadius);
      Canvas.Brush.Color := clWhite;
      Canvas.Textout (Xd, Yd, DiagNameS);
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
    end; {Printer}
  end; {Plotter}
  if not Calib then showmessage(Tx(435));
  GroupBoxPlotten.Visible  := false;
  ListBoxSpeichern.Visible := false;
  Calib                    := false;
end;

procedure TForm31.DruckerEinrichten1Click(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TForm31.SpeedEinrichtenClick(Sender: TObject);
begin
  DruckerEinrichten1Click(Sender);
end;

procedure TForm31.drucken1Click(Sender: TObject);
var
  SchriftS : string[5];
  i        : byte;
begin
  Paneldrucken.Visible      := true;
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

procedure TForm31.MaskEditUnterschriftKeyPress(Sender: TObject; var Key: Char);
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

procedure TForm31.ButtonAbbrechenClick(Sender: TObject);
begin
  Paneldrucken.Visible         := false;
end;

procedure TForm31.RadioButtonLinksClick(Sender: TObject);
begin
  BuendigS := 'Links';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    ButtonDrucken.Enabled := true;
end;

procedure TForm31.RadioButtonZentriertClick(Sender: TObject);
begin
  BuendigS := 'Zentriert';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    ButtonDrucken.Enabled := true;
end;

procedure TForm31.RadioButtonRechtsClick(Sender: TObject);
begin
  BuendigS := 'Rechts';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    ButtonDrucken.Enabled := true;
end;

procedure TForm31.ListBoxSchriftClick(Sender: TObject);
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

procedure TForm31.SpeedDruckenClick(Sender: TObject);
begin
  drucken1Click(Sender);
end;

procedure TForm31.ButtonDruckenClick(Sender: TObject);
var
  XKoordS : string;
  YKoordS : string;
  RadiusS : string;
  Bitmap  : TBitmap;
  Fenster : TRect;
begin
  Paneldrucken.Visible         := false;
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

procedure TForm31.DSpeichernClick(Sender: TObject);
begin
   if CurrentFile <> '' then Stressein(CurrentFile, ZahlGlob,
      AziFeld, SAziFeld, FalFeld, SFalFeld)
   else DspeichernUnterClick(Sender);
end;

procedure TForm31.DSpeichernUnterClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := ExtenS;
  SaveDialog1.Filter     := 'Displacement Data (*.sli)|*.SLI';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    Stressein(CurrentFile, ZahlGlob, AziFeld, SAziFeld, FalFeld,
              SFalFeld);
  end;
end;

procedure TForm31.Hilfe1Click(Sender: TObject);
var
  DateiS      : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\31Harnische-Plot.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\31Slickensides-plot.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm31.SpeedHilfeClick(Sender: TObject);
begin
  Hilfe1Click(Sender);
end;

procedure TForm31.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Harnischflaechen.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'Slickensides.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm31.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm31.SpeedKopierenClick(Sender: TObject);
begin
  kopieren1Click(Sender);
end;

procedure TForm31.SpeedZwischenablageClick(Sender: TObject);
begin
  AusZwischenablageHolen1Click(Sender);
end;

procedure TForm31.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm31.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

procedure TForm31.ListBoxStrichClick(Sender: TObject);
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

procedure TForm31.SpeedStrichClick(Sender: TObject);
begin
  durchgezogen1Click(Sender);
end;

procedure TForm31.DiederClick(Sender: TObject);
begin
  WeiterB[31] := true;
  Application.CreateForm(TForm29, Form29);
  Form29.Show;
end;

procedure TForm31.SpeedDiederClick(Sender: TObject);
begin
  DiederClick(Sender);
end;

procedure TForm31.EigenwerteClick(Sender: TObject);
begin
  WeiterB[31] := true;
  Application.CreateForm(TForm34, Form34);
  Form34.Show;
end;

procedure TForm31.IterationClick(Sender: TObject);
begin
  WeiterB[31] := true;
  Application.CreateForm(TForm99, Form99);
  Form99.Show;
end;

procedure TForm31.SpeedIterationClick(Sender: TObject);
begin
  IterationClick(Sender);
end;

procedure TForm31.SpeedEigenwerteClick(Sender: TObject);
begin
  EigenwerteClick(Sender);
end;

procedure TForm31.DirektClick(Sender: TObject);
begin
  WeiterB[31] := true;
  Application.CreateForm(TForm100, Form100);
  Form100.Show;
end;

procedure TForm31.HoeppenerClick(Sender: TObject);
begin
  WeiterB[31] := true;
  Application.CreateForm(TForm33, Form33);
  Form33.Show;
end;

procedure TForm31.SpeedHoeppenerClick(Sender: TObject);
begin
  HoeppenerClick(sender);
end;

end.
