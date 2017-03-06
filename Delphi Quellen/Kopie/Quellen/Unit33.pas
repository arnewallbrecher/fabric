unit Unit33;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, Menus, ExtCtrls, StdCtrls, Globvar,
  ClipBrd, Plotten, Mask, Basic, Texte, Kalkulat, Einausga,
  Drucken, HPPlot, ComCtrls, Buttons, Printers, Shellapi,
  Standard, GifImage, Bmp2Tiff, Jpeg, ExtDlgs, ReadTiff,
  ehsHelpRouter;

type
  TForm33 = class(TForm)
    Image1: TImage;

    Panel1             : TPanel;
    Labelausgewaehlte: TLabel;
    LabelZahl          : TLabel;
    Label00000         : TLabel;

    ListBoxDateien: TListBox;

    ButtonStart   : TButton;
    Buttonzurueck : TButton;
    Buttonbeenden : TButton;

    MainMenu1 : TMainMenu;

    Projektion1     : TMenuItem;
    Lambert1        : TMenuItem;
    stereografisch1 : TMenuItem;

    ueberarbeiten1 : TMenuItem;
    ja1            : TMenuItem;

    Farbe1          : TMenuItem;
    obereSlipLines1 : TMenuItem;

    untereSlipLines1: TMenuItem;

    Punkte1  : TMenuItem;

    Pfeile1  : TMenuItem;

    Grafik1                : TMenuItem;
    kopieren1              : TMenuItem;
    speichern: TMenuItem;
    speichernunter: TMenuItem;
    ausZwischenablageholen1: TMenuItem;
    ausDateiholen1         : TMenuItem;

    Hilfe1 : TMenuItem;

    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;

    GroupBoxSpannungen : TGroupBox;
    LabelSigma1        : TLabel;
    LabelSigma3        : TLabel;
    MaskEditASigma1    : TMaskEdit;
    MaskEditASigma3    : TMaskEdit;
    ListBoxForm        : TListBox;
    LabelForm          : TLabel;
    LabelForm2         : TLabel;
    ListBoxForm2       : TListBox;

    ButtonKorrektur : TButton;
    speichern2      : TMenuItem;
    drucken1        : TMenuItem;

    Druckereinrichten1  : TMenuItem;
    PrintDialog1        : TPrintDialog;
    PrinterSetupDialog1 : TPrinterSetupDialog;

    gereinigteDaten1  : TMenuItem;

    eliminierteDaten1  : TMenuItem;

    drucken2          : TMenuItem;
    gereinigteDaten2  : TMenuItem;
    eliminierteDaten2 : TMenuItem;

    CheckBoxOK      : TCheckBox;
    MaskEditFSigma1 : TMaskEdit;
    MaskEditFSigma3 : TMaskEdit;

    GroupBoxplotten : TGroupBox;

      Panel3         : TPanel;
      LabelRadius    : TLabel;
      MaskEditRadius : TMaskEdit;

      Panel4           : TPanel;
      LabelMittelpunkt : TLabel;
      LabelX           : TLabel;
      MaskEditX        : TMaskEdit;
      LabelY           : TLabel;
      MaskEditY        : TMaskEdit;

    HPPlotter1 : TMenuItem;

    FarbePeri1  : TMenuItem;

    FarbeDiagramm1 : TMenuItem;

    FarbeRahmen: TMenuItem;

    StatusBar: TStatusBar;
    PanelSpeed: TPanel;
    SpeedDaten1F  : TSpeedButton;
    SpeedDaten2F  : TSpeedButton;
    SpeedDrucken  : TSpeedButton;
    SpeedButton1  : TSpeedButton;
    SpeedHilfe    : TSpeedButton;
    SpeedDrucken2 : TSpeedButton;
    SpeedDrucken3: TSpeedButton;

    orthografisch1 : TMenuItem;
    Kavraiskii1    : TMenuItem;

    PanelDrucken         : TPanel;
    GroupBoxDrucken      : TGroupBox;
    Panel5               : TPanel;
    LabelRdrucken        : TLabel;
    Panel7               : TPanel;
    LabelMitte           : TLabel;
    LabelXdrucken        : TLabel;
    MaskEditRdrucken     : TMaskEdit;
    MaskEditXdrucken     : TMaskEdit;
    LabelYdrucken        : TLabel;
    MaskEditYdrucken     : TMaskEdit;
    Panel8               : TPanel;
    LabelUnterschrift    : TLabel;
    MaskEditUnterschrift : TMaskEdit;
    LabelSchrift         : TLabel;
    ListBoxSchrift       : TListBox;
    RadioGroup           : TRadioGroup;
    RadioButtonLinks     : TRadioButton;
    RadioButtonZentriert : TRadioButton;
    RadioButtonRechts    : TRadioButton;

    Drucker1: TMenuItem;
    Druckereinrichten2: TMenuItem;
    drucken3: TMenuItem;
    Handbuch: TMenuItem;
    ColorDialog1: TColorDialog;
    Hintergrund: TMenuItem;
    PanelProjektion: TPanel;
    LabelProjektion: TLabel;
    PanelGeraet: TPanel;
    LabelGeraet: TLabel;
    Image2: TImage;
    SpeedHandbuch: TSpeedButton;
    SpeedKopieren: TSpeedButton;
    SpeedZwischenablage: TSpeedButton;
    PanelJa: TPanel;
    LabelJa: TLabel;
    LabelJa2: TLabel;
    LabelGrenze: TLabel;
    LabelKlicken: TLabel;
    LabelSigma: TLabel;
    PanelLoeschen: TPanel;
    LabelLoeschen: TLabel;
    LabelLoeschen2: TLabel;
    SpeedLambert: TSpeedButton;
    SpeedStereografisch: TSpeedButton;
    SpeedOrthografisch: TSpeedButton;
    SpeedKavraiskii: TSpeedButton;
    SpeedObere: TSpeedButton;
    SpeedUntere: TSpeedButton;
    SpeedPfeile: TSpeedButton;
    SpeedPunkte: TSpeedButton;
    SpeedPlotter: TSpeedButton;
    SpeedPLT: TSpeedButton;
    SpeedDXF: TSpeedButton;
    SpeedPeripherie: TSpeedButton;
    SpeedDiagramm: TSpeedButton;
    SpeedRahmen: TSpeedButton;
    Literatur: TMenuItem;
    SpeedLiteratur: TSpeedButton;
    ImageNord: TImage;
    SpeedEinrichten: TSpeedButton;
    Auswertung: TMenuItem;
    Versatz: TMenuItem;
    Dieder: TMenuItem;
    Formfaktor: TMenuItem;
    SpeedDieder: TSpeedButton;
    SpeedFaktor: TSpeedButton;
    SpeedVersatz: TSpeedButton;
    SpeedUeberarbeiten: TSpeedButton;
    nein: TMenuItem;
    SpeedNein: TSpeedButton;
    PanelGroesse: TPanel;
    LabelBHoehe: TLabel;
    LabelBBreite: TLabel;
    MaskEditBBreite: TMaskEdit;
    MaskEditBHoehe: TMaskEdit;
    CheckBoxBild: TCheckBox;
    BGroesse: TMenuItem;
    transparent: TMenuItem;
    HFarbe: TMenuItem;
    speichernGIF: TMenuItem;
    speichernTIF: TMenuItem;
    speichernJPG: TMenuItem;
    speichernWMF: TMenuItem;
    speichernEMF: TMenuItem;
    speichernBMP: TMenuItem;
    speichernUBMP: TMenuItem;
    speichernUGIF: TMenuItem;
    speichernUTIF: TMenuItem;
    speichernUJPG: TMenuItem;
    speichernUWMF: TMenuItem;
    speichernUEMF: TMenuItem;
    SavePictureDialog1: TSavePictureDialog;
    SpeedBGroesse: TSpeedButton;
    SpeedTransparent: TSpeedButton;
    SpeedHFarbe: TSpeedButton;
    SpeedBMPSpeichern: TSpeedButton;
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
    SpeedPlotten: TSpeedButton;
    ButtonDrucken: TButton;
    ButtonAbbrechen: TButton;

    {ProjektionS}
    procedure Lambert1Click(Sender: TObject);
    procedure stereografisch1Click(Sender: TObject);
    procedure ja1Click(Sender: TObject);

    {Obere Slipline}
    procedure obereSlipLines1Click(Sender: TObject);
    {Untere Slipline}
    procedure untereSlipLines1Click(Sender: TObject);
    {Punkte}
    procedure Punkte1Click(Sender: TObject);
    {Pfeile}
    procedure Pfeile1Click(Sender: TObject);

    {Grafik}
    procedure kopieren1Click(Sender: TObject);
    procedure ausZwischenablageholen1Click(Sender: TObject);

    procedure ButtonStartClick(Sender: TObject);
    procedure ButtonzurueckClick(Sender: TObject);
    procedure ButtonbeendenClick(Sender: TObject);

    procedure FormActivate(Sender: TObject);

    {Formfaktoren}
    procedure ListBoxFormClick(Sender: TObject);
    procedure ListBoxForm2Click(Sender: TObject);

    {Daten l�schen}
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
              Shift: TShiftState; X, Y: Integer);
    procedure ButtonKorrekturClick(Sender: TObject);
    {drucken}
    procedure Druckereinrichten1Click(Sender: TObject);
    procedure gereinigteDaten2Click(Sender: TObject);
    procedure eliminierteDaten2Click(Sender: TObject);
    {speichern}
    procedure gereinigteDaten1Click(Sender: TObject);
    procedure eliminierteDaten1Click(Sender: TObject);

    procedure CheckBoxOKClick(Sender: TObject);
    procedure Hilfe1Click(Sender: TObject);
    procedure ShowHint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedDaten1FClick(Sender: TObject);
    procedure SpeedDaten2FClick(Sender: TObject);
    procedure SpeedDruckenClick(Sender: TObject);
    procedure SpeedDrucken2Click(Sender: TObject);
    procedure orthografisch1Click(Sender: TObject);
    procedure Kavraiskii1Click(Sender: TObject);
    procedure MaskEditASigma1Change(Sender: TObject);
    procedure MaskEditFSigma1Change(Sender: TObject);
    procedure MaskEditASigma3Change(Sender: TObject);
    procedure MaskEditFSigma3Change(Sender: TObject);
    procedure Druckereinrichten2Click(Sender: TObject);
    procedure drucken3Click(Sender: TObject);
    procedure SpeedDrucken3Click(Sender: TObject);
    procedure MaskEditUnterschriftKeyPress(Sender: TObject; var Key: Char);
    procedure RadioButtonLinksClick(Sender: TObject);
    procedure RadioButtonZentriertClick(Sender: TObject);
    procedure RadioButtonRechtsClick(Sender: TObject);
    procedure ListBoxSchriftClick(Sender: TObject);
    procedure HandbuchClick(Sender: TObject);
    procedure FarbePeri1Click(Sender: TObject);
    procedure FarbeDiagramm1Click(Sender: TObject);
    procedure FarbeRahmenClick(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure SpeedKopierenClick(Sender: TObject);
    procedure SpeedZwischenablageClick(Sender: TObject);
    procedure SpeedLambertClick(Sender: TObject);
    procedure SpeedStereografischClick(Sender: TObject);
    procedure SpeedOrthografischClick(Sender: TObject);
    procedure SpeedKavraiskiiClick(Sender: TObject);
    procedure SpeedObereClick(Sender: TObject);
    procedure SpeedUntereClick(Sender: TObject);
    procedure SpeedPfeileClick(Sender: TObject);
    procedure SpeedPunkteClick(Sender: TObject);
    procedure SpeedPLTClick(Sender: TObject);
    procedure SpeedDXFClick(Sender: TObject);
    procedure HPPlotter1Click(Sender: TObject);
    procedure SpeedPeripherieClick(Sender: TObject);
    procedure SpeedDiagrammClick(Sender: TObject);
    procedure SpeedRahmenClick(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
    procedure SpeedLiteraturClick(Sender: TObject);
    procedure SpeedEinrichtenClick(Sender: TObject);
    procedure VersatzClick(Sender: TObject);
    procedure DiederClick(Sender: TObject);
    procedure FormfaktorClick(Sender: TObject);
    procedure SpeedVersatzClick(Sender: TObject);
    procedure SpeedDiederClick(Sender: TObject);
    procedure SpeedFaktorClick(Sender: TObject);
    procedure SpeedUeberarbeitenClick(Sender: TObject);
    procedure neinClick(Sender: TObject);
    procedure SpeedNeinClick(Sender: TObject);
    procedure BGroesseClick(Sender: TObject);
    procedure MaskEditBBreiteKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditBHoeheKeyPress(Sender: TObject; var Key: Char);
    procedure CheckBoxBildClick(Sender: TObject);
    procedure transparentClick(Sender: TObject);
    procedure HFarbeClick(Sender: TObject);
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
    procedure SpeedTransparentClick(Sender: TObject);
    procedure SpeedHFarbeClick(Sender: TObject);
    procedure SpeedBMPSpeichernClick(Sender: TObject);
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
    procedure SpeedHilfeClick(Sender: TObject);
    procedure PloterstellenClick(Sender: TObject);
    procedure SpeedPlottenClick(Sender: TObject);
    procedure ButtonDruckenClick(Sender: TObject);
    procedure ButtonAbbrechenClick(Sender: TObject);
  end;

var
  Form33        : TForm33;
  ArbeitenS     : string[20];
  OSlipLine     : TColor;
  USlipLine     : TColor;
  Pfeile        : TColor;
  Punkte        : TColor;
  Bitmap        : TBitmap;
  HolZwischen   : boolean;
  HolPixS       : string;
  CurrentFile   : string;
  Aq4zeiger     : array of word;
  Fq4zeiger     : array of shortint;
  AziSigma1S    : string[3];
  FalSigma1S    : string[2];
  AziSigma3S    : string[3];
  FalSigma3S    : string[2];
  FormFaktor1   : real;
  FormFaktor1S  : string[20];
  FormFaktor2   : real;
  FormFaktor2S  : string[20];
  XEcke,YEcke   : word;
  AziRest       : array of word;
  FalRest       : array of word;
  SAziRest      : array of word;
  SFalRest      : array of shortint;
  AziElim       : array of word;
  SAziElim      : array of word;
  FalElim       : array of word;
  SFalElim      : array of shortint;
  Geloescht     : array of boolean;
  Anzahl        : word;
  ZahlGel       : word;
  ZahlNicht     : word;
  Korrektur     : boolean;
  PGedrueckt     : array[0..5] of boolean;
  PunktFarbe    : byte;
  PfFarbe       : byte;
  PlotDateiS    : string;
  Aq            : array[0..6] of word;
  Fq            : array[0..6] of shortint;
  A4            : word;
  F4            : shortint;
  AusgewDateien : boolean;
  Schrift      : byte;
  BuendigS     : string;
  Gedrueckt    : array [1..3] of boolean;
  TextS        : string;
  Ratio        : real;
  BHoeheSt     : word;

implementation
uses Unit27, Unit28, Unit29, Unit31, Unit32, Unit34, Unit94;
{$R *.DFM}

procedure TForm33.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm33.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm33.FormActivate(Sender: TObject);
var
  i : byte;
begin
  Left := 4;
  Top := 0;
  Width := 1040;
  Height := 750;
  setlength (Aq4zeiger, MaxDaten);
  setlength (Fq4zeiger,MaxDaten);
  setlength (Geloescht, MaxDaten);
  WeiterB[33] := false;
  Form33.Caption                   := TX(652);  {Fabric7: Hoeppener-Diagramm}
  Image1.Hint                      := Hilf(56) + Hilf(57);
  ListBoxDateien.Hint              := Hilf(82);
  Labelausgewaehlte.Hint           := Hilf(82);
  LabelZahl.Hint                   := Hilf(36);
  Label00000.Hint                  := Hilf(36);
  GroupBoxplotten.Hint             := Hilf(58) + Hilf(59);
  GroupBoxSpannungen.Hint          := Hilf(158);
  MaskEditASigma1.Hint             := Hilf(159);
  MaskEditFSigma1.Hint             := Hilf(160);
  MaskEditASigma3.Hint             := Hilf(161);
  MaskEditFSigma3.Hint             := Hilf(162);
  LabelForm.Hint                   := Hilf(163);
  ListBoxForm.Hint                 := Hilf(163);
  LabelForm2.Hint                  := Hilf(164);
  ListBoxForm2.Hint                := Hilf(164);
  Ploterstellen.Hint               := Hilf(60);
  Panel3.Hint                      := Hilf(61);
  Panel4.Hint                      := Hilf(62);
  MaskEditX.Hint                   := Hilf(63);
  MaskEditY.Hint                   := Hilf(64);
  ButtonKorrektur.Hint             := Hilf(165);
  ButtonStart.Hint                 := Hilf(37);
  Buttonzurueck.Hint               := Hilf(85);
  Buttonbeenden.Hint               := Hilf(30);
  Hilfe1.Caption                   := Tx(162)+' (F1)';
  SpeedDrucken.Hint                := Hilf(306);
  SpeedDrucken2.Hint               := Hilf(308);
  SpeedDaten1F.Hint                := Hilf(305);
  SpeedHilfe.Hint                  := Hilf(210);
  SpeedDaten2F.Hint                := Hilf(307);
  SpeedHilfe.Hint                  := Hilf(210);
  SpeedDrucken3.Hint               := Hilf(309);
  SpeedHandbuch.Hint               := Hilf(274);
  SpeedKopieren.Hint               := Hilf(262);
  SpeedZwischenablage.Hint         := Hilf(246);
  SpeedLambert.Hint                := Hilf(387);
  SpeedStereografisch.Hint         := Hilf(388);
  SpeedOrthografisch.Hint          := Hilf(389);
  SpeedKavraiskii.Hint             := Hilf(390);
  SpeedObere.Hint                  := Hilf(415);
  SpeedUntere.Hint                 := Hilf(416);
  SpeedPfeile.Hint                 := Hilf(417);
  SpeedPunkte.Hint                 := Hilf(418);
  SpeedPlotten.Hint                := Hilf(437);
  SpeedPLT.Hint                    := Hilf(438);
  SpeedDXF.Hint                    := Hilf(439);
  SpeedPeripherie.Hint             := Hilf(440);
  SpeedDiagramm.Hint               := Hilf(441);
  SpeedRahmen.Hint                 := Hilf(442);
  SpeedEinrichten.Hint             := Hilf(505);
  SpeedVersatz.Hint                := Hilf(512);
  SpeedDieder.Hint                 := Hilf(515);
  SpeedFaktor.Hint                 := Hilf(513);
  SpeedUeberarbeiten.Hint          := Hilf(530);
  SpeedNein.Hint                   := Hilf(539);
  SpeedBGroesse.Hint               := Hilf(583);
  SpeedTransparent.Hint            := Hilf(584);
  SpeedHFarbe.Hint                 := Hilf(585);
  SpeedBMPspeichern.Hint           := Hilf(586);
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
  HolPixS                          := '';
  Projektion1.Caption              := Tx(639);  {&Projektion}
  Lambert1.Caption                 := Tx(640);  {&Lambert}
  stereografisch1.Caption          := Tx(641);  {&stereografisch}
  orthografisch1.Caption           := TX(849);
  ueberarbeiten1.Caption           := Tx(653);  {&�berarbeiten}
  ja1.Caption                      := Tx(655);  {&ja}
  Farbe1.Caption                   := Tx(642);  {&Farbe}
  obereSlipLines1.Caption          := Tx(656);  {&obere Slip-Lines}
  untereSlipLines1.Caption         := Tx(657);  {untere Slip-Lines}
  Punkte1.Caption                  := Tx(662);
  Pfeile1.Caption                  := Tx(663);
  speichern2.Caption               := Tx(658);
  gereinigteDaten1.Caption         := Tx(659);
  eliminierteDaten1.Caption        := Tx(660);
  drucken1.Caption                 := Tx(93);
  Druckereinrichten1.Caption       := Tx(94);
  drucken2.Caption                 := Tx(93);
  gereinigteDaten2.Caption         := Tx(659);
  eliminierteDaten2.Caption        := Tx(660);
  Grafik1.Caption                  := Tx(281);
  kopieren1.Caption                := Tx(282);
  speichern.Caption                := Tx(87);
  speichernUnter.Caption           := Tx(88);
  ausZwischenablageholen1.Caption  := Tx(286);
  ausDateiholen1.Caption           := Tx(287);
  HPPlotter1.Caption               := Tx(288);
  FarbePeri1.Caption               := Tx(498);
  Labelausgewaehlte.Caption        := Tx(136);
  LabelZahl.Caption                := Tx(646);     {Zahl der Daten:}
  GroupBoxPlotten.Caption          := Tx(297);
  LabelRadius.Caption              := Tx(299);
  LabelMittelpunkt.Caption         := Tx(300);
  LabelX.Caption                   := Tx(687);
  LabelY.Caption                   := Tx(688);
  Buttonzurueck.Caption            := Tx(30);
  Buttonbeenden.Caption            := Tx(53);
  ButtonKorrektur.Caption          := Tx(667);
  GroupBoxSpannungen.Caption       := Tx(668);    {Haupt-Normalspannungen:}
  LabelSigma1.Caption              := Tx(669);
  LabelSigma3.Caption              := Tx(670);
  LabelForm.Caption                := Tx(671);    {Formfaktor1:}
  LabelForm2.Caption               := Tx(672);    {Formfaktor2:}
  Ploterstellen.Caption            := Tx(298);
  Auswertung.Caption               := Tx(1341);
  Dieder.Caption                   := Tx(1349);
  FormFaktor.Caption               := Tx(1347);
  Versatz.Caption                  := Tx(1346);
  Image1.Enabled                   := false;
  kopieren1.Enabled                := false;
  Drucker1.Caption                 := Tx(92);
  DruckerEinrichten2.Caption       := Tx(94);
  drucken3.Caption                 := Tx(93);
  ListBoxDateien.Enabled           := false;
  Labelausgewaehlte.Enabled        := false;
  LabelZahl.Enabled                := false;
  Label00000.Caption               := '';
  MaskEditASigma1.EditMask         := '999;0; ';
  MaskEditFSigma1.EditMask         := '99;0; ';
  MaskEditASigma3.EditMask         := '999;0; ';
  MaskEditFSigma3.EditMask         := '99;0; ';
  MaskEditASigma1.Text             := InttoStr(ASigma1);
  MaskEditFSigma1.Text             := InttoStr(FSigma1);
  MaskEditASigma3.Text             := InttoStr(ASigma3);
  MaskEditFSigma3.Text             := InttoStr(FSigma3);
  MaskEditASigma1.Enabled          := false;
  MaskEditFSigma1.Enabled          := false;
  MaskEditASigma3.Enabled          := false;
  MaskEditFSigma3.Enabled          := false;
  Projektion1.Enabled              := false;
  Farbe1.Enabled                   := false;
  FarbeDiagramm1.Caption           := Tx(860);
  Hintergrund.Caption              := Tx(1453); {Hintergrund}
  HFarbe.Caption                   := Tx(275);
  AusgewDateien                    := true;
  CheckBoxOK.State                 := cbUnchecked;
  CheckBoxOK.Enabled               := false;
  ListBoxForm.Enabled              := false;
  ListBoxForm2.Enabled             := false;
  speichern2.Enabled               := false;
  drucken1.Enabled                 := false;
  ButtonKorrektur.Enabled          := false;
  Korrektur                        := false;
  Holzwischen                      := false;
  HolDatei                         := false;
  LabelRadius.Enabled              := false;
  LabelMittelpunkt.Enabled         := false;
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
  GroupBoxPlotten.Caption          := '';
  for i := 0 to 10 do
  begin
    FormFaktor1 := i/10;
    str(FormFaktor1:4:1, FormFaktor1S);
    ListBoxForm.Items.Add (FormFaktor1S);
  end;
  for i := 0 to 10 do
  begin
    FormFaktor2 := i/10;
    str(FormFaktor2:4:1, FormFaktor2S);
    ListBoxForm2.Items.Add (FormFaktor2S);
  end;
  for i := 1 to ZahlGlob do Geloescht[i] := false;
  ueberarbeiten1.Enabled  := false;
  LabelSigma1.Enabled     := false;
  LabelSigma3.Enabled     := false;
  LabelForm.Enabled       := false;
  LabelForm2.Enabled      := false;
  AusgewDateien           := true;
  LabelGeraet.Caption     := '';
  LabelProjektion.Caption := '';
  SpeedDaten1F.Enabled    := false;
  SpeedDaten2F.Enabled    := false;
  SpeedDrucken.Enabled    := false;
  SpeedDrucken2.Enabled   := false;
  SpeedDrucken3.Enabled   := false;
  Paneldrucken.Visible         := false;
  Druckereinrichten1.Caption   := Tx(94);
  drucken1.Caption             := Tx(93);
  FarbeRahmen.Caption          := Tx(892);
  for i := 1 to 3 do Gedrueckt[i] := false;
  PanelProjektion.Visible := false;
  PanelGeraet.Visible     := false;
  GroupBoxPlotten.Visible := false;
  Handbuch.Caption        := Tx(1055)+' (F2)';
  Literatur.Caption       := Tx(1183)+' (F5)';
  nein.Caption            := Tx(654);
  SpeedLiteratur.Hint     := Hilf(462);
  PanelSpeed.Visible      := false;
  PanelJa.Visible         := false;
  PanelLoeschen.Visible   := false;
  LabelLoeschen.Caption   := Tx(1126);
  LabelLoeschen2.Caption  := Tx(1127);
  LabelJa.Caption         := Tx(1128);
  LabelSigma.Caption      := Tx(1129);
  LabelKlicken.Caption    := Tx(1130);
  LabelJa2.Caption        := Tx(1131);
  LabelGrenze.Caption     := Tx(1132);
  ArbeitenS                := 'nein';
  obereSlipLines1.Enabled  := false;
  untereSlipLines1.Enabled := false;
  ButtonKorrektur.Enabled  := false;
  SpeedObere.Enabled       := false;
  SpeedUntere.Enabled      := false;
  Auswertung.Enabled       := false;
  SpeedVersatz.Enabled     := false;
  SpeedDieder.Enabled      := false;
  SpeedFaktor.Enabled      := false;
  MaskEditBBreite.EditMask         := '99999;0; ';
  MaskEditBHoehe.EditMask          := '99999;0; ';
  LabelBBreite.Caption             := Tx(1440);
  LabelBHoehe.Caption              := Tx(1441);
  BGroesse.Caption                 := Tx(1439);
  PanelGroesse.Visible             := false;
  Ratio        := Image1.Width/Image1.Height;
  HTransparent := false;
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

procedure TForm33.ButtonStartClick(Sender: TObject);

const
  AFix : array[0..316] of word
  = (0, 166,172,177,184,189,195,153,158,164,170,177,184,191,197,203,208,140,
        144,150,155,162,169,177,184,192,199,206,211,217,221,131,135,140,146,
        152,159,168,176,185,193,202,209,215,221,226,230,127,131,135,141,148,
        156,165,175,186,196,205,213,220,226,230,234,118,121,125,130,135,143,
        151,162,174,187,199,210,218,226,231,236,240,243,113,116,119,123,128,
        135,145,157,172,189,204,216,226,233,238,242,245,248,105,107,109,112,
        115,120,126,135,150,169,192,211,226,235,241,246,249,252,254,256, 99,
        101,102,103,106,109,114,121,135,162,199,226,240,247,252,255,258,259,
        260,262, 94, 94, 94, 95, 96, 97, 99,102,109,135,226,252,259,262,264,
        265,266,267,267,267, 87, 87, 87, 86, 85, 84, 82, 79, 72, 46,315,289,
        282,279,277,276,275,274,274,274, 82, 80, 79, 78, 75, 72, 67, 60, 46,
         19,342,315,301,294,289,286,283,282,281,279, 76, 74, 72, 69, 66, 61,
         55, 46, 31, 12,349,330,315,306,300,295,292,289,287,285, 68, 65, 62,
         58, 53, 46, 36, 24,  9,352,337,325,315,308,303,299,296,293, 63, 60,
         56, 51, 46, 38, 30, 19,  7,354,342,331,323,315,310,305,301,298, 54,
         50, 46, 40, 33, 25, 16,  6,355,345,336,328,321,315,311,307, 50, 46,
         41, 35, 29, 22, 13,  5,356,348,339,332,326,320,315,311, 41, 37, 31,
         26, 19, 12,  4,357,349,342,335,330,324,320, 28, 23, 17, 11,  4,357,
        350,344,338,333, 15,  9,  4,357,352,346);

  FFix : array[0..316] of shortint
  = (0,87,85,84,84,85,87,85,81,77,75,74,74,75,77,81,85,89,82,76,71,67,65,64,
       64,65,67,71,76,82,89,89,81,74,67,62,59,56,54,54,56,59,62,67,74,81,89,
       82,74,66,60,54,50,47,46,46,47,50,54,60,66,74,82,85,76,67,60,53,47,42,
       39,37,37,39,42,47,53,60,67,76,85,81,71,62,54,47,40,35,31,28,28,31,35,
       40,47,54,62,71,81,87,77,67,59,50,42,35,28,23,20,20,23,28,35,42,50,59,
       67,77,87,85,75,65,56,47,39,31,23,17,12,12,17,23,31,39,47,56,65,75,85,
       84,74,64,54,46,37,28,20,12, 5, 5,12,20,28,37,46,54,64,74,84,84,74,64,
       54,46,37,28,20,12, 5, 5,12,20,28,37,46,54,64,74,84,85,75,65,56,47,39,
       31,23,17,12,12,17,23,31,39,47,56,65,75,85,87,77,67,59,50,42,35,28,23,
       20,20,23,28,35,42,50,59,67,77,87,81,71,62,54,47,40,35,31,28,28,31,35,
       40,47,54,62,71,81,85,76,67,60,53,47,42,39,37,37,39,42,47,53,60,67,76,
       85,82,74,66,60,54,50,47,46,46,47,50,54,60,66,74,82,89,81,74,67,62,59,
       56,54,54,56,59,62,67,74,81,89,89,82,76,71,67,65,64,64,65,67,71,76,82,
       89,85,81,77,75,74,74,75,77,81,85,87,85,84,84,85,87);
var
  i, j      : word;
  Rahmen    : TRect;
  RFaktor   : array[0..2] of real;
  Mal, m    : byte;
  Null      : integer;
  Aa, Ff    : real;
  X, Y      : real;
  Xp, Yp    : word;
  AStrFeld  : array of word;
  FStrFeld  : array of shortint;
  AHar      : array of word;
  FHar      : array of shortint;
  ProS      : string;
  Quadrat   : Trect;
  FBild     : TBitmap;
  JBild     : TJpegImage;
  GBild     : TGifImage;
  MetaFile  : TMetaFile;

begin
  setlength (AStrFeld, 317);
  setlength (FStrFeld, 317);
  setlength (AHar, 317);
  setlength (FHar, 317);
  setlength (Aq4Zeiger, MaxDaten);
  setlength (Fq4Zeiger, MaxDaten);
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
  PanelSpeed.Visible            := true;
  GroupBoxPlotten.Visible       := false;
  GroupBoxPlotten.Caption       := 'Plot:';
  if ProjektionS = 'Lambert' then ProS  := Tx(259);
  if ProjektionS = 'stereographic' then ProS := Tx(260);
  if ProjektionS = 'orthographic' then ProS := Tx(849);
  if ProjektionS = 'Kavraiskii' then ProS := 'Kavraiskii';
  LabelProjektion.Caption := Tx(651)+': '+ ProS;
  ProS                     := GeraetS;
  PanelProjektion.Visible  := true;
  LabelGeraet.Caption      := Tx(850) + ' '+ProS;
  if not WeiterF then
  begin
    Auswertung.Enabled       := true;
    SpeedVersatz.Enabled     := true;
    SpeedDieder.Enabled      := true;
    SpeedFaktor.Enabled      := true;
  end;
  LabelRadius.Enabled      := true;
  LabelMittelpunkt.Enabled := true;
  LabelX.Enabled           := true;
  LabelY.Enabled           := true;
  MaskEditRadius.Enabled   := true;
  MaskEditX.Enabled        := true;
  MaskEditY.Enabled        := true;
  ueberarbeiten1.Enabled   := true;
  Farbe1.Enabled           := true;
  Projektion1.Enabled      := true;
  Grafik1.Enabled          := true;
  Anzahl                   := ZahlGlob;
  if ArbeitenS <> 'nein' then ButtonKorrektur.Enabled := true;
  Labelausgewaehlte.Enabled := true;
  ListBoxDateien.Enabled    := true;
  LabelZahl.Enabled         := true;
  Label00000.Caption        := IntToStr(ZahlGlob);
  Image1.Enabled            := true;
  if AusgewDateien then
  for i := 0 to High (DateinameS) do ListboxDateien.Items.Add (DateiNameS[i]);
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
  if ArbeitenS <> 'nein' then
  begin
    with Image1.Canvas do
    begin
      Font.Size   := 14;
      Font.Color  := clWhite;
      Pen.Color   := clRed;
      Brush.Color := clRed;
      Ellipse (XEcke-145,YEcke+10,XEcke-125,YEcke+30);
      Font.Name := 'Symbol';
      TextOut (XEcke-109,YEcke,   '   s1      ');
      Font.Name := 'Times New Roman';
      TextOut (XEcke-109,YEcke+26,' '+Tx(1090)+' '); {Konvergenz}
      Pen.Color   := clGreen;
      Brush.Color := clGreen;
      Font.Name   := 'Symbol';
      TextOut (XEcke-109,YEcke+60,'   s3      ');
      Ellipse (XEcke-145,YEcke+60,XEcke-125,YEcke+80);
      Font.Name := 'Times New Roman';
      TextOut (XEcke-109,YEcke+85,' '+Tx(1091)+' '); {Divergenz}
      Brush.Color := RahmenFarbe;
      Rahmen := Rect(0,0,Breite,Hoehe);
      FrameRect (Rahmen);
    end;
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
  {Hoeppener-Diagramm}
  Null := 0;
  if ArbeitenS <> 'nein' then
  begin
    {Sliplines}
    for i := 1 to 316 do
    begin
      Ahar[i] := (AFix[i] +180) mod 360;
      Fhar[i] := 90 - FFix[i];
    end;
    Mal := 2;
    RFaktor[1] := FormFaktor1;
    RFaktor[2] := FormFaktor2;
    if FormFaktor1 = FormFaktor2 then Mal := 1;
    with Image1.Canvas do
    begin
      Pen.width := 1;
      for m := 1 to Mal do
      begin
        Glvert (Programm, Ahar, AStrFeld, Fhar, FStrFeld,
                RFaktor[m]);
        for i := 1 to 316 do
        begin
          if m = 1 then Farbe := ObSlipLine;
          if m = 2 then Farbe := UnSlipLine;
          Aq[6] := Ahar[i];
          Fq[6] := Fhar[i];
	  Aq[5] := AStrFeld[i];
          Fq[5] := abs(FStrFeld[i]);
	  Rechnen (Programm, 5, Fq[6], Fq[5], Aq[6], Aq[5],
                   Aq[4], Null, Fq[4]);
          Striemung (1, Aq, Fq, FStrFeld[i], Farbe,
                     Image1.Canvas);
        end; {next i}
      end; {next m}
      Aa := ASigma1 * Bo;
      Ff := FSigma1 * Bo;
      if FSigma1 = 90 then Ff := Ff - 0.5 * Bo;
      Koordinaten (Aa, Ff, X, Y, Xp, Yp);
      Pen.Color := clRed;
      Brush.Color := clRed;
      Pen.Width := 2;
      Ellipse (Xp-10,Yp-10,Xp+10,Yp+10);
      Grosskreis (Image1.Canvas, Aa, Ff, clRed);
      Aa := ASigma3 * Bo;
      Ff := FSigma3 * Bo;
      if FSigma3 = 90 then Ff := Ff - 0.5 * Bo;
      Koordinaten (Aa, Ff, X, Y, Xp, Yp);
      Pen.Color   := clGreen;
      Brush.Color := clGreen;
      Ellipse (Xp-10,Yp-10,Xp+10,Yp+10);
      Grosskreis (Image1.Canvas, Aa, Ff, clGreen);
      Pen.Color   := DatenFarbe;
      Brush.Color := DatenFarbe;
      Pen.Width := 1;
      {Daten}
      for i := 1 to ZahlGlob do
      begin
        Aa := AziFeld[i] * Bo + Pi;
        Ff := Pi / 2 - FalFeld[i] * Bo;
        Koordinaten (Aa, Ff, X, Y, Xp, Yp);
        Ellipse (Xp-5,Yp-5,Xp+5,Yp+5);
      end;
      for i := 1 to ZahlGlob do
      begin
        Aq[6] := AziFeld[i] +180;
        Fq[6] := 90 - FalFeld[i];
        Aq[5] := SAziFeld[i];
        Fq[5] := abs(SFalFeld[i]);
        Rechnen (Programm, 5, Fq[6], Fq[5], Aq[6], Aq[5], A4, Null, F4);
        Aq4zeiger[i] := A4;
        Fq4zeiger[i] := F4;
        Aq[4] := Aq4zeiger[i];
        Fq[4] := Fq4zeiger[i];
        Brush.Color := PfeilFarbe;
        Striemung (0, Aq, Fq, SFalFeld[i], Pfeile,
                   Image1.Canvas);
      end;
    end;
  end;
  {Plotten ohne �berarbeiten}
  if ArbeitenS = 'nein' then
  begin
    with Image1.Canvas do
    begin
      for i := 1 to ZahlGlob do
      begin
        Aa := AziFeld[i] * Bo + Pi;
        Ff := Pi / 2 - FalFeld[i] * Bo;
        Koordinaten (Aa, Ff, X, Y, Xp, Yp);
        Pen.Color   := DatenFarbe;
        Brush.Color := DatenFarbe;
        Pen.Width := 1;
        Ellipse (Xp-5,Yp-5,Xp+5,Yp+5);
        Aq[6] := AziFeld[i] + 180;
        Fq[6] := 90 - FalFeld[i];
        Aq[5] := SAziFeld[i];
        Fq[5] := abs (SfalFeld[i]);
        Brush.Color := PfeilFarbe;
        Rechnen (Programm,5,Fq[6],Fq[5],Aq[6],Aq[5],Aq[4],
                 Null,Fq[4]);
        Striemung (0,Aq,Fq,SFalFeld[i],PfeilFarbe,
                   Image1.Canvas);
      end; {next i}
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
                       Image1.Height-2*Image2.Height-5,
                       Image2.picture.graphic);
  end;
  Image1.Canvas.Draw(Image1.Width div 2 - ImageNord.Width div 2,7,
                     ImageNord.Picture.Graphic);
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
  HpPlotter1.Enabled      := true;
  SpeedDrucken3.Enabled   := true;
  AStrFeld := Nil;
  FStrFeld := Nil;
  AHar     := Nil;
  FHar     := Nil;
end;

procedure TForm33.CheckBoxOkClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
  Typ   : TMsgDlgType;
begin
  Typ := mtError;
  if CheckBoxOk.State = cbUnchecked then exit;
  try
    PanelJa.Visible       := false;
    PanelLoeschen.Visible := true;
    SpeedObere.Enabled    := true;
    SpeedUntere.Enabled   := true;
    AziSigma1S := MaskEditASigma1.Text;
    FalSigma1S := MaskEditFSigma1.Text;
    ASigma1    := StrToInt(AziSigma1S);
    FSigma1    := StrToInt(FalSigma1S);
    AziSigma3S := MaskEditASigma3.Text;
    FalSigma3S := MaskEditFSigma3.Text;
    ASigma3    := StrToInt(AziSigma3S);
    FSigma3    := StrToInt(FalSigma3S);
  except
    if DlgMessage(Typ, Tx(37), Tx(243), 3) = 4 then exit;
  end;
  if (ASigma1 > 360) or (FSigma1 > 90) or (ASigma1 < 0)
  or (FSigma1 < 0) then
  begin
    if DlgMessage(Typ, Tx(37), Tx(71), 3) = 4 then exit;
  end;
  if (ASigma3 > 360) or (FSigma3 > 90) or (ASigma3 < 0)
  or (FSigma3 < 0) then
  begin
    if DlgMessage(Typ, Tx(37), Tx(71), 3) = 4 then exit;
  end;
  KonfigZeileS[63] := 'Paleo-Stress Azimut Sigma1 :,'+AziSigma1S;
  KonfigZeileS[64] := 'Paleo-Stress Dip Sigma1    :,'+FalSigma1S;
  KonfigZeileS[65] := 'Paleo-Stress Azimut Sigma3 :,'+AziSigma3S;
  KonfigZeileS[66] := 'Paleo-Stress Dip Sigma3    :,'+FalSigma3S;
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm33.ListBoxFormClick(Sender: TObject);
var
  i  : byte;
  Co : integer;
begin
  for i := 0 to ListBoxForm.Items.Count-1 do
  begin
    if ListBoxForm.Selected[i] then
      val(ListBoxForm.Items.Strings[i],FormFaktor1, Co);
  end;
  if Formfaktor1 = 0 then Formfaktor1 := 0.01;
  ButtonStartClick(Sender);
end;

procedure TForm33.ListBoxForm2Click(Sender: TObject);
var
  i  : byte;
  Co : integer;
begin
  for i := 0 to ListBoxForm2.Items.Count-1 do
  begin
    if ListBoxForm2.Selected[i] then
      val(ListBoxForm2.Items.Strings[i],FormFaktor2, Co);
  end;
  if Formfaktor2 = 0 then Formfaktor2 := 0.01;
  ButtonStartClick(Sender);
end;

procedure TForm33.Image1MouseDown(Sender: TObject; Button: TMouseButton;
                                  Shift: TShiftState; X, Y: Integer);
var
  Grenze   : real;
  Azi, Fal : real;
  Distanz  : real;
  Xx, Yy   : real;
  Xp, Yp   : word;
  Aq       : array[0..6] of word;
  Fq       : array[0..6] of shortint;
  A4, i    : word;
  F4       : shortint;
  Null     : integer;
  Loeschen : TColor;
begin
  if ArbeitenS = 'nein' then exit;
  Loeschen   := DiagrFarbe;
  Bo := Pi/180;
  Grenze := sqrt(sqr(X-Xmitte) + sqr(Y-Ymitte));
  if Grenze <= Radius then
  begin
    with Image1.Canvas do
    begin
      for i := 1 to ZahlGlob do
      begin
        Azi := (AziFeld[i] + 180) mod 360;
        Azi := Azi * Bo;
        Fal := (90 - FalFeld[i])*Bo;
        Koordinaten (Azi, Fal, Xx, Yy, Xp, Yp);
        Distanz := sqrt(sqr(X-Xp) + sqr(Y-Yp));
        if Distanz <= 5 then
        begin
          Geloescht[i] := true;
          Pen.Color    := Loeschen;
          Brush.Color  := Loeschen;
          Ellipse (Xp-5,Yp-5,Xp+5,Yp+5);
          Aq[6] := AziFeld[i] +180;
          Fq[6] := 90 - FalFeld[i];
          Aq[5] := SAziFeld[i];
          Fq[5] := abs(SFalFeld[i]);
          Rechnen (Programm, 5, Fq[6], Fq[5], Aq[6], Aq[5], A4, Null, F4);
          Aq4zeiger[i] := A4;
          Fq4zeiger[i] := F4;
          Aq[4] := Aq4zeiger[i];
          Fq[4] := Fq4zeiger[i];
          Brush.Color := Loeschen;
          Striemung (0, Aq, Fq, SFalFeld[i], Loeschen,
                     Image1.Canvas);
        end;
      end; {for i}
    end; {Canvas}
  end; {Grenze}
end;

procedure TForm33.ButtonKorrekturClick(Sender: TObject);
var
  i : word;
begin
  setlength (AziRest,  MaxDaten);
  setlength (SAziRest, MaxDaten);
  setlength (FalRest,  MaxDaten);
  setlength (SFalRest, MaxDaten);
  setlength (AziElim,  MaxDaten);
  setlength (SAziElim, MaxDaten);
  setlength (FalElim,  MaxDaten);
  setlength (SFalElim, MaxDaten);
  PanelLoeschen.Visible   := false;
  Korrektur               := true;
  speichern2.Enabled      := true;
  drucken1.Enabled        := true;
  SpeedDaten1F.Enabled    := true;
  SpeedDaten2F.Enabled    := true;
  SpeedDrucken.Enabled    := true;
  SpeedDrucken2.Enabled   := true;
  ZahlGel   := 0;
  ZahlNicht := 0;
  for i := 1 to Zahlglob do
  begin
    if not Geloescht[i] then
    begin
      ZahlNicht           := ZahlNicht + 1;;
      AziRest[ZahlNicht]  := AziFeld[i];
      FalRest[ZahlNicht]  := FalFeld[i];
      SAziRest[ZahlNicht] := SAziFeld[i];
      SFalRest[ZahlNicht] := SFalFeld[i];
    end
    else
    begin
      ZahlGel           := ZahlGel + 1;
      AziElim[ZahlGel]  := AziFeld[i];
      SAziElim[ZahlGel] := SAziFeld[i];
      FalElim[ZahlGel]  := FalFeld[i];
      SFalElim[ZahlGel] := SFalFeld[i];
    end;
  end;
end;

procedure TForm33.ButtonzurueckClick(Sender: TObject);
var
  Flaeche : TRect;
begin
  ButtonStart.Enabled := true;
  MaskEditASigma1.Text := '   ';
  MaskEditFSigma1.Text := '  ';
  MaskEditASigma3.Text := '   ';
  MaskEditFSigma3.Text := '  ';
  ListBoxForm.Enabled  := false;
  ListBoxForm2.Enabled := false;
  ListBoxDateien.Clear;
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
  if Korrektur then
  begin
    AziElim   := Nil;
    SAziElim  := Nil;;
    FalElim   := Nil;
    SFalElim  := Nil;
    AziRest   := Nil;
    FalRest   := Nil;
    SAziRest  := Nil;
    SFalRest  := Nil;
    Geloescht := Nil;
  end;
  if EingabeS = 'ExcelD' then Form94.close;
  Form33.Close;
end;

procedure TForm33.ButtonbeendenClick(Sender: TObject);
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
  if Korrektur then
  begin
    AziElim   := Nil;
    SAziElim  := Nil;;
    FalElim   := Nil;
    SFalElim  := Nil;
    AziRest   := Nil;
    FalRest   := Nil;
    SAziRest  := Nil;
    SFalRest  := Nil;
    Geloescht := Nil;
  end;
  ListBoxDateien.Clear;
  if EingabeS = 'ExcelD' then Form94.Close;
  Form33.Close;
  Form28.Close;
  Form27.Close;
  Form32.Close;
  SetCurrentDir(DirectS);
end;

procedure TForm33.Lambert1Click(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  ProjektionS   := 'Lambert';
  AusgewDateien := false;
  KonfigZeileS[24] := '  Projection               :,Lambert';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm33.stereografisch1Click(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  ProjektionS   := 'stereographic';
  AusgewDateien := false;
  KonfigZeileS[24] := '  Projection               :,stereographic';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm33.orthografisch1Click(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  ProjektionS   := 'orthographic';
  AusgewDateien := false;
  KonfigZeileS[24] := '  Projection               :,orthographic';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm33.Kavraiskii1Click(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  ProjektionS   := 'Kavraiskii';
  AusgewDateien := false;
  KonfigZeileS[24] := '  Projection               :,Kavraiskii';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm33.SpeedLambertClick(Sender: TObject);
begin
  Lambert1Click(Sender);
end;

procedure TForm33.SpeedStereografischClick(Sender: TObject);
begin
  stereografisch1Click(Sender);
end;

procedure TForm33.SpeedOrthografischClick(Sender: TObject);
begin
  orthografisch1Click(Sender);
end;

procedure TForm33.SpeedKavraiskiiClick(Sender: TObject);
begin
  Kavraiskii1Click(Sender);
end;

procedure TForm33.ja1Click(Sender: TObject);
begin
  PanelJa.Visible          := true;
  ArbeitenS                := 'nicht speichern';
  obereSlipLines1.Enabled  := true;
  untereSlipLines1.Enabled := true;
  LabelSigma1.Enabled      := true;
  LabelSigma3.Enabled      := true;
  MaskEditASigma1.Enabled  := true;
  MaskEditFSigma1.Enabled  := true;
  MaskEditASigma3.Enabled  := true;
  MaskEditFSigma3.Enabled  := true;
  CheckBoxOK.Enabled       := true;
  CheckBoxOK.State         := cbUnchecked;
  LabelForm.Enabled        := true;
  LabelForm2.Enabled       := true;
  ListBoxForm.Enabled      := true;
  ListBoxForm2.Enabled     := true;
  MaskEditASigma1.SetFocus;
end;

procedure TForm33.neinClick(Sender: TObject);
begin
  ArbeitenS := 'nein';
  ButtonStartClick(Sender);
end;

procedure TForm33.SpeedUeberarbeitenClick(Sender: TObject);
begin
  ja1Click(Sender);
end;

procedure TForm33.SpeedNeinClick(Sender: TObject);
begin
  neinClick(Sender);
end;

procedure TForm33.MaskEditASigma1Change(Sender: TObject);
begin
  CheckBoxOk.State := cbUnchecked;
end;

procedure TForm33.MaskEditFSigma1Change(Sender: TObject);
begin
  CheckBoxOk.State := cbUnchecked;
end;

procedure TForm33.MaskEditASigma3Change(Sender: TObject);
begin
  CheckBoxOk.State := cbUnchecked;
end;

procedure TForm33.MaskEditFSigma3Change(Sender: TObject);
begin
  CheckBoxOk.State := cbUnchecked;
end;

procedure TForm33.obereSlipLines1Click(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  AusgewDateien := false;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS     := ColorToString (Farbe);
  ObSlipLine := StringToColor(FarbeS);
  KonfigZeileS[34] := 'Colour of Upper Slip Lines :,'+FarbeS;
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick (Sender);
end;

procedure TForm33.untereSlipLines1Click(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  AusgewDateien := false;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS     := ColorToString (Farbe);
  UnSlipLine := StringToColor(FarbeS);
  KonfigZeileS[35] := 'Colour of Lower Slip Lines :,'+FarbeS;
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick (Sender);
end;

procedure TForm33.Punkte1Click(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  AusgewDateien := false;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS     := ColorToString (Farbe);
  DatenFarbe := StringToColor(FarbeS);
  KonfigZeileS[7] := 'Colour of Data Points      :,'+FarbeS;
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick (Sender);
end;

procedure TForm33.Pfeile1Click(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  AusgewDateien := false;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS     := ColorToString (Farbe);
  PfeilFarbe := StringToColor(FarbeS);
  KonfigZeileS[36] := 'Colour of Arrows            :,'+FarbeS;
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick (Sender);
end;

procedure TForm33.SpeedObereClick(Sender: TObject);
begin
  obereSlipLines1Click(Sender);
end;

procedure TForm33.SpeedUntereClick(Sender: TObject);
begin
  untereSlipLines1Click(Sender);
end;

procedure TForm33.SpeedPfeileClick(Sender: TObject);
begin
  Pfeile1Click(Sender);
end;

procedure TForm33.SpeedPunkteClick(Sender: TObject);
begin
  Punkte1Click(Sender);
end;

procedure TForm33.BGroesseClick(Sender: TObject);
begin
  PanelGroesse.Visible    := true;
  CheckBoxBild.State      := cbUnchecked;
  MaskEditBBreite.Text    := IntTostr(BBreiteF);
  MaskEditBHoehe.Text     := IntToStr(BHoeheSt);
end;

procedure TForm33.SpeedBGroesseClick(Sender: TObject);
begin
  BGroesseClick(Sender);
end;

procedure TForm33.MaskEditBBreiteKeyPress(Sender: TObject; var Key: Char);
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
      BBreiteF := StrToInt (BBreiteS);
      BHoeheSt  := round(BBreiteF/Ratio);
      KonfigZeileS[118] := 'Save Image Width (Stereo)  :,'+BBreiteS;
      MaskEditBHoehe.Text := IntToStr(BHoeheSt);
      assignFile(Datei,DirectS+'\'+'Fabric.ini');
      rewrite (Datei);
      for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
      closefile (Datei);
    end;
  end;
end;

procedure TForm33.MaskEditBHoeheKeyPress(Sender: TObject; var Key: Char);
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
      BBreiteF := round(BHoeheSt*Ratio);
      KonfigZeileS[118] := 'Save Image Width (Stereo)  :,'+IntToStr(BBreiteSt);
      MaskEditBBreite.Text := IntToStr(BBreiteSt);
    end;
    assignFile(Datei,DirectS+'\'+'Fabric.ini');
    rewrite (Datei);
    for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
    closefile (Datei);
  end;
end;

procedure TForm33.CheckBoxBildClick(Sender: TObject);
begin
  PanelGroesse.Visible := false;
end;

procedure TForm33.kopieren1Click(Sender: TObject);
begin
  ClipBoard.Assign (Image1.Picture);
end;

procedure TForm33.transparentClick(Sender: TObject);
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

procedure TForm33.SpeedTransparentClick(Sender: TObject);
begin
  transparentClick(Sender);
end;

procedure TForm33.HFarbeClick(Sender: TObject);
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
  CheckBoxOk.State      := cbUnchecked;
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

procedure TForm33.SpeedHFarbeClick(Sender: TObject);
begin
  HFarbeClick(Sender);
end;

procedure TForm33.speichernBMPClick(Sender: TObject);
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

procedure TForm33.SpeedBMPSpeichernClick(Sender: TObject);
begin
  speichernBMPClick(Sender);
end;

procedure TForm33.speichernGIFClick(Sender: TObject);
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

procedure TForm33.SpeedGIFClick(Sender: TObject);
begin
  speichernGIFClick(Sender);
end;

procedure TForm33.speichernTIFClick(Sender: TObject);
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

procedure TForm33.SpeedTIFClick(Sender: TObject);
begin
  speichernTIFClick(Sender);
end;

procedure TForm33.speichernJPGClick(Sender: TObject);
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

procedure TForm33.SpeedJPGClick(Sender: TObject);
begin
  speichernJPGClick(Sender);
end;

procedure TForm33.speichernWMFClick(Sender: TObject);
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

procedure TForm33.SpeedWMFClick(Sender: TObject);
begin
  speichernWMFClick(Sender);
end;

procedure TForm33.speichernEMFClick(Sender: TObject);
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

procedure TForm33.SpeedEMFClick(Sender: TObject);
begin
  speichernEMFClick(Sender);
end;

procedure TForm33.speichernPLTClick(Sender: TObject);
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
  LabelGeraet.Caption := Tx(850)+' '+ GeraetS;
end;

procedure TForm33.speichernDXFClick(Sender: TObject);
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
  FarbePeri1.Enabled     := true;
  LabelGeraet.Caption    := Tx(850)+' '+ GeraetS;
end;

procedure TForm33.speichernUBMPClick(Sender: TObject);
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

procedure TForm33.speichernUGIFClick(Sender: TObject);
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

procedure TForm33.speichernUTIFClick(Sender: TObject);
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

procedure TForm33.speichernUJPGClick(Sender: TObject);
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

procedure TForm33.speichernUWMFClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := 'Windows metafile (*.wmf)|*.wmf';
  SaveDialog1.Filter     := 'Windows metafile (*.wmf)|*.wmf';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    speichernWMFClick(Sender);
  end
  else exit;
end;

procedure TForm33.speichernUEMFClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := 'Windows metafile (*.emf)|*.emf';
  SaveDialog1.Filter     := 'Windows metafile (*.emf)|*.emf';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    speichernEMFClick(Sender);
  end
  else exit;
end;

procedure TForm33.ausZwischenablageholen1Click(Sender: TObject);
begin
  PanelProjektion.Visible   := true;
  PanelGeraet.Visible       := true;
  FarbePeri1.Enabled        := false;
  FarbeDiagramm1.Enabled    := false;
  Hintergrund.Enabled       := false;
  HolZwischen               := true;
  ButtonStartClick(Sender);
end;

procedure TForm33.holenBMPClick(Sender: TObject);
begin
  OpenDialog1.DefaultExt := 'Windows bitmap file (*.bmp)|*.bmp';
  OpenDialog1.Filter     := 'Windows bitmap file (*.bmp)|*.bmp';
  if OpenPictureDialog1.Execute then CurrentFile := OpenPictureDialog1.FileName
  else exit;
  HolPixS := 'BMP';
  ButtonStartClick(Sender);
end;

procedure TForm33.SpeedHolBMPClick(Sender: TObject);
begin
  holenBMPClick(Sender);
end;

procedure TForm33.holenGIFClick(Sender: TObject);
begin
  OpenDialog1.DefaultExt := 'Compuserve gif file (*.gif)|*.gif';
  OpenDialog1.Filter     := 'Compuserve gif file (*.gif)|*.gif';
  if OpenDialog1.Execute then CurrentFile := OpenDialog1.FileName
  else exit;
  HolPixS := 'GIF';
  ButtonStartClick(Sender);
end;

procedure TForm33.SpeedHolGIFClick(Sender: TObject);
begin
  holenGIFClick(Sender);
end;

procedure TForm33.holenTIFClick(Sender: TObject);
begin
  OpenDialog1.DefaultExt := 'Tagged image file format (*.tif)|*.tif';
  OpenDialog1.Filter     := 'Tagged image file format (*.tif)|*.tif';
  if OpenDialog1.Execute then CurrentFile := OpenDialog1.FileName
  else exit;
  HolPixS := 'TIF';
  ButtonStartClick(Sender);
end;

procedure TForm33.SpeedHolTIFClick(Sender: TObject);
begin
  holenTIFClick(Sender);
end;

procedure TForm33.holenJPGClick(Sender: TObject);
begin
  OpenPictureDialog1.DefaultExt := 'Jpeg file (*.jpg)|*.jpg';
  OpenPictureDialog1.Filter     := GraphicFilter(TJpegImage);
  if OpenPictureDialog1.Execute then CurrentFile := OpenPictureDialog1.FileName
  else exit;
  HolPixS := 'JPG';
  ButtonStartClick(Sender);
end;

procedure TForm33.SpeedHolJPGClick(Sender: TObject);
begin
  holenJPGClick(Sender);
end;

procedure TForm33.holenWMFClick(Sender: TObject);
begin
  OpenDialog1.DefaultExt := 'Windows metafile (*.WMF)|*.wmf';
  OpenDialog1.Filter     := 'Windows metafile (*.WMF)|*.wmf';
  if OpenDialog1.Execute then CurrentFile := OpenDialog1.FileName
  else exit;
  HolPixS := 'WMF';
  ButtonStartClick(Sender);
end;

procedure TForm33.SpeedHolWMFClick(Sender: TObject);
begin
  holenWMFClick(Sender);
end;

procedure TForm33.holenEMFClick(Sender: TObject);
begin
  OpenDialog1.DefaultExt := 'Enhanced windows metafile (*.EMF)|*.emf';
  OpenDialog1.Filter     := 'Enhanced windows metafile (*.EMF)|*.emf';
  if OpenDialog1.Execute then CurrentFile := OpenDialog1.FileName
  else exit;
  HolPixS := 'EMF';
  ButtonStartClick(Sender);
end;

procedure TForm33.SpeedHolEMFClick(Sender: TObject);
begin
  holenEMFClick(Sender);
end;

procedure TForm33.Druckereinrichten1Click(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TForm33.gereinigteDaten2Click(Sender: TObject); {drucken}
begin
  Datnam (DateiNameS[0], 'SLI');
  DruckPalaeo ('11', 0, DateiNameS, AziRest, FalRest,
               SAziRest, SFalRest, ZahlNicht);
end;

procedure TForm33.eliminierteDaten2Click(Sender: TObject); {drucken}
begin
  Datnam (DateiNameS[0], 'SLI');
  DruckPalaeo ('11', 0, DateiNameS, AziElim, FalElim,
               SAziElim, SFalElim, ZahlGel);
end;

procedure TForm33.gereinigteDaten1Click(Sender: TObject);
begin
  SaveDialog1.DefaultExt := ExtenS;
  SaveDialog1.Filter     := ExtenS;
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    Stressein(CurrentFile, ZahlNicht, AziRest, SAziRest, FalRest,
              SFalRest);
  end;
end;

procedure TForm33.eliminierteDaten1Click(Sender: TObject);
begin
  SaveDialog1.DefaultExt := ExtenS;
  SaveDialog1.Filter     := ExtenS;
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    Stressein(CurrentFile, ZahlGel, AziElim, SAziElim, FalElim,
              SFalElim);
  end;
end;

procedure TForm33.HPPlotter1Click(Sender: TObject);
var
  i      : byte;
  Datei  : Textfile;
begin
  DiagrFarbe := clWhite;
  ButtonStartClick(Sender);
  PrinterSetupDialog1.execute;
  FarbePeri1.Enabled := true;
  GeraetS            := 'Plotter';
  KonfigZeileS[53]   := 'Paper Plot                 :,Plotter';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  GroupBoxPlotten.Visible := true;
  PanelGeraet.Visible     := true;
  LabelGeraet.Caption := Tx(850)+' '+ GeraetS;
end;

procedure TForm33.SpeedPlottenClick(Sender: TObject);
begin
  HPPlotter1Click(Sender);
end;

procedure TForm33.SpeedPLTClick(Sender: TObject);
begin
  speichernPLTClick(Sender);
end;

procedure TForm33.SpeedDXFClick(Sender: TObject);
begin
  speichernDXFClick(Sender);
end;

procedure TForm33.FarbePeri1Click(Sender: TObject);
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

procedure TForm33.FarbeDiagramm1Click(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS          := ColorToString (Farbe);
  DiagrFarbe      := StringToColor(FarbeS);
  KonfigZeileS[6] := '  Diagram Colour           :,'+FarbeS;
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick (Sender);
end;

procedure TForm33.FarbeRahmenClick(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS          := ColorToString (Farbe);
  RahmenFarbe     := StringToColor(FarbeS);
  KonfigZeileS[4] := '  Frame Colour            :,'+FarbeS;
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick (Sender);
end;

procedure TForm33.SpeedPeripherieClick(Sender: TObject);
begin
  FarbePeri1Click(Sender);
end;

procedure TForm33.SpeedDiagrammClick(Sender: TObject);
begin
  FarbeDiagramm1Click(Sender);
end;

procedure TForm33.SpeedRahmenClick(Sender: TObject);
begin
  FarbeRahmenClick(Sender);
end;

procedure TForm33.PloterstellenClick(Sender: TObject);
var
  RadiusS  : string[4];
  XKoordS  : string[4];
  YKoordS  : string[4];
  Co       : integer;
  Kreuz    : boolean;
  Rmax, H  : real;
  RmaxS    : string[15];
  Xmax, Aa : real;
  Ymax, Ff : real;
  i        : word;
  Xx, Yy   : real;
  Xf, Yf   : real;
  Xp, Yp   : word;
  Rint     : word;
  Aq       : array[0..6] of word;
  Fq       : array[0..6]of shortint;
  Null     : integer;
  XKreis   : real;
  YKreis   : real;
  Datei    : TextFile;
  PRadius  : word;
  XS, YS   : string;
  WS, HS   : string;
  X, Y     : word;
  Groesse  : word;
  Typ      : TMsgDlgType;
begin
  if GeraetS = 'no' then exit;
  Bo := Pi/180;
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
  if ArbeitenS <> 'nein' then ZahlGlob := ZahlNicht;
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
  Rint      := round(HpRadius*400);
  XMitte    := round(XKoord*400);
  YMitte    := round(YKoord*400);
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
  Rint   := round(HpRadius*400);
  XMitte := round(XKoord*400);
  YMitte := round(YKoord*400);
  Kreuz := true;
  {Beginn des Plottens}
  if GeraetS <> 'Plotter' then
  begin
    Plotter (Canvas, SaveDialog1);
    Farben (Canvas, UmfangFarbe);
    HPPeriph (Canvas, Kreuz);
    Farben (Canvas, DatenFarbe);
    for i := 1 to ZahlGlob do
    begin
      Aa := AziFeld[i] * Bo + Pi;
      Ff := Pi / 2 - FalFeld[i] * Bo;
      Hpkoordin (Aa, Ff, Xx, Yy);
      Xf := Xx;
      Yf := Yy;
      if GeraetS <> 'DXF' then
      begin
        Xp := round (Xf * Rint + Xmitte);
        Yp := round (Yf * Rint + Ymitte);
        Zeichkreis (Xp, Yp, round(Rint/80),15);
        Zeichkreis (Xp, Yp, round(Rint/120),15);
        Zeichkreis (Xp, Yp, round(Rint/160),15);
      end
      else
      begin
        H  := Rint/40000;
        Xf := (Xf * Rint + Xmitte) / 400;
        Yf := (Yf * Rint + Ymitte) / 400;
        Dxfkreis (Xf,Yf,H);
        H := H/2;
        DxfKreis (Xf, Yf, H);
      end;
    end;
    Null := 0;
    Farben (Canvas, PfeilFarbe);
    for i := 1 to ZahlGlob do
    begin
      Aq[3] := AziFeld[i] +180;
      Fq[3] := 90 - FalFeld[i];
      Aq[2] := SAziFeld[i];
      Fq[2] := abs (SFalFeld[i]);
      Rechnen (Programm,5,Fq[3],Fq[2],Aq[3],Aq[2],Aq[1],Null,
               Fq[1]);
      Hpteilkreis (Canvas, Aq,Fq,10,SFalFeld[i],14,Xkreis,
                   Ykreis);
      Xf := XKreis;
      Yf := Ykreis;
      Xp := round(Xf * Rint + Xmitte);
      Yp := round(Yf * Rint + Ymitte);
      if GeraetS <> 'DXF' then Zeichkreis (Xp,Yp,round(Rint/120),15)
      else
      begin
        H  := Rint / 80000;
        Xf := (Xf * Rint + Xmitte) / 400;
        Yf := (Yf * Rint + Ymitte) / 400;
        Dxfkreis (Xf,Yf,H);
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
      Farben (Canvas, DatenFarbe);
      PRadius := round(HpRadius * 2);
      Canvas.Brush.Color := DatenFarbe;
      for i := 1 to ZahlGlob do
      begin
        Aa := AziFeld[i] * Bo + Pi;
        Ff := Pi/2 - FalFeld[i] * Bo;
        Hpkoordin (Aa, Ff, Xx, Yy);
        Xp := round (DFak*100*Faktor*(Xx * HpRadius + XKoord));
        Yp := round (DFak*100*Faktor*(YKoord-Yy * HpRadius));
        Canvas.Ellipse(Xp-PRadius,Yp-PRadius,Xp+PRadius,Yp+PRadius);
      end;
      Null := 0;
      Farben (Canvas, PfeilFarbe);
      Canvas.Brush.Color := Pfeilfarbe;
      PRadius := round(HpRadius);
      for i := 1 to ZahlGlob do
      begin
        Aq[3] := AziFeld[i] +180;
        Fq[3] := 90 - FalFeld[i];
        Aq[2] := SAziFeld[i];
        Fq[2] := abs (SFalFeld[i]);
        Rechnen (Programm,5,Fq[3],Fq[2],Aq[3],Aq[2],Aq[1],Null,
                 Fq[1]);
        Hpteilkreis (Canvas, Aq,Fq,10,SFalFeld[i],14,Xkreis,
                     Ykreis);
        Xp := round(DFak*100*Faktor*(XKreis*HpRadius + XKoord));
        Yp := round(DFak*100*Faktor*(YKoord - YKreis*HpRadius));
        Canvas.Ellipse (Xp-PRadius,Yp-PRadius,Xp+PRadius,YP+PRadius);
      end;
      if DemoB then
      begin
        X := round(Xkoord*100*Faktor);
        Y := round(Ykoord*100*Faktor);
        Groesse := round(HpRadius*2);
        Canvas.Font.Size   := Groesse;
        Canvas.Brush.Color := clWhite;
        Canvas.Font.Color  := clBlack;
        Canvas.Textout (round(x-25*Groesse), round(y+100*Faktor),
                                  'Demo-Version');
      end;
      EndDoc;
    end;
  end;
  showmessage(Tx(435));
  GroupBoxPlotten.Visible := false;
end;

procedure TForm33.SpeedDaten1FClick(Sender: TObject);
begin
  GereinigteDaten1Click(Sender);
end;

procedure TForm33.SpeedDaten2FClick(Sender: TObject);
begin
  eliminierteDaten1Click(Sender);
end;

procedure TForm33.SpeedDruckenClick(Sender: TObject);
begin
  gereinigteDaten2Click(Sender);
end;

procedure TForm33.SpeedDrucken2Click(Sender: TObject);
begin
  eliminierteDaten2Click(Sender);
end;

procedure TForm33.Druckereinrichten2Click(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TForm33.SpeedEinrichtenClick(Sender: TObject);
begin
  DruckerEinrichten2Click(Sender);
end;

procedure TForm33.drucken3Click(Sender: TObject);
var
  Schrift  : byte;
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

procedure TForm33.SpeedDrucken3Click(Sender: TObject);
begin
  drucken3Click(Sender);
end;

procedure TForm33.ButtonDruckenClick(Sender: TObject);
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

procedure TForm33.ButtonAbbrechenClick(Sender: TObject);
begin
  Paneldrucken.Visible         := false;
end;

procedure TForm33.MaskEditUnterschriftKeyPress(Sender: TObject;
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

procedure TForm33.RadioButtonLinksClick(Sender: TObject);
begin
  BuendigS := 'Links';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    ButtonDrucken.Enabled := true;
end;

procedure TForm33.RadioButtonZentriertClick(Sender: TObject);
begin
  BuendigS := 'Zentriert';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    ButtonDrucken.Enabled := true;
end;

procedure TForm33.RadioButtonRechtsClick(Sender: TObject);
begin
  BuendigS := 'Rechts';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    ButtonDrucken.Enabled := true;
end;

procedure TForm33.ListBoxSchriftClick(Sender: TObject);
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

procedure TForm33.Hilfe1Click(Sender: TObject);
var
  DateiS : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\hoep6q0i.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\Hoeppener-plot.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm33.SpeedHilfeClick(Sender: TObject);
begin
  Hilfe1Click(Sender);
end;

procedure TForm33.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Hoeppener.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'Hoeppener-E.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm33.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm33.SpeedKopierenClick(Sender: TObject);
begin
  kopieren1Click(Sender);
end;

procedure TForm33.SpeedZwischenablageClick(Sender: TObject);
begin
  AusZwischenablageHolen1Click(Sender)
end;

procedure TForm33.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm33.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

procedure TForm33.VersatzClick(Sender: TObject);
begin
  WeiterB[33] := true;
  Application.CreateForm(TForm31, Form31);
  Form31.Show;
end;

procedure TForm33.SpeedVersatzClick(Sender: TObject);
begin
  VersatzClick(Sender);
end;

procedure TForm33.DiederClick(Sender: TObject);
begin
  WeiterB[33] := true;
  Application.CreateForm(TForm29, Form29);
  Form29.Show;
end;

procedure TForm33.SpeedDiederClick(Sender: TObject);
begin
  DiederClick(Sender);
end;

procedure TForm33.FormfaktorClick(Sender: TObject);
begin
  WeiterB[33] := true;
  Application.CreateForm(TForm34, Form34);
  Form34.Show;
end;

procedure TForm33.SpeedFaktorClick(Sender: TObject);
begin
  FormfaktorClick(Sender);
end;

end.