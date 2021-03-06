unit Unit37;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, ExtCtrls, Menus, StdCtrls, Mask, ClipBrd,
  Globvar, Basic, Plotten, NetzProj, HPPlot, Texte, ComCtrls,
  Buttons, Drucken, Printers, Shellapi, Standard, GifImage,
  Bmp2Tiff, Jpeg, ExtDlgs, ReadTiff, ehsHelpRouter, ToolWin,
  PngImage, Grafik;

type
  TForm37 = class(TForm)
    Image1: TImage;

    Panel1         : TPanel;
    LabelProjektion: TLabel;
    LabelNetz      : TLabel;

    ButtonStart  : TButton;
    Buttonzurueck: TButton;
    Buttonbeenden: TButton;

    GroupBoxWinkel    : TGroupBox;
    MaskEditAbstand   : TMaskEdit;
    MaskEditKippwinkel: TMaskEdit;
    LabelAbstand      : TLabel;
    LabelKippwinkel   : TLabel;
    CheckBoxOK: TCheckBox;

    MainMenu1: TMainMenu;

    Projektion1           : TMenuItem;
    SchmidtschesNetz1     : TMenuItem;
    WulffschesNetz1       : TMenuItem;
    orthographischesNetz1 : TMenuItem;
    KavraiskiiNetz1: TMenuItem;

    Farbe1   : TMenuItem;

    Grafik1                    : TMenuItem;
    kopieren1                  : TMenuItem;
    Speichern1                 : TMenuItem;

    Hilfe1: TMenuItem;

    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;

    GrossuKleinkreise1: TMenuItem;
    Aequator1: TMenuItem;
    HPPlotter1: TMenuItem;

    FarbePeripherie1 : TMenuItem;
    GroupBoxplotten: TGroupBox;
    Panel3: TPanel;
    LabelRadius: TLabel;
    MaskEditRadius: TMaskEdit;
    Panel4: TPanel;
    LabelMittelpunkt: TLabel;
    LabelX: TLabel;
    MaskEditX: TMaskEdit;
    LabelY: TLabel;
    MaskEditY: TMaskEdit;
    StatusBar: TStatusBar;
    PanelSpeed: TPanel;
    SpeedHilfe: TSpeedButton;
    FarbeDiagramm1: TMenuItem;
    Hintergrund: TMenuItem;
    PrinterSetupDialog1: TPrinterSetupDialog;
    PrintDialog1: TPrintDialog;
    SpeedDrucken: TSpeedButton;
    Drucker1: TMenuItem;
    Druckereinrichten: TMenuItem;
    drucken1: TMenuItem;
    FarbeRahmen: TMenuItem;
    Paneldrucken: TPanel;
    GroupBoxDrucken: TGroupBox;
    Panel7: TPanel;
    LabelLaenge: TLabel;
    MaskEditLaenge: TMaskEdit;
    Panel8: TPanel;
    LabelEcke: TLabel;
    LabelXdrucken: TLabel;
    MaskEditLinks: TMaskEdit;
    LabelYdrucken: TLabel;
    MaskEditOben: TMaskEdit;
    Panel9: TPanel;
    LabelUnterschrift: TLabel;
    MaskEditUnterschrift: TMaskEdit;
    LabelSchrift: TLabel;
    ListBoxSchrift: TListBox;
    RadioGroup: TRadioGroup;
    RadioButtonLinks: TRadioButton;
    RadioButtonZentriert: TRadioButton;
    RadioButtonRechts: TRadioButton;
    Handbuch: TMenuItem;
    ColorDialog1: TColorDialog;
    Halbkugel: TMenuItem;
    untere: TMenuItem;
    obere: TMenuItem;
    Image2: TImage;
    SpeedHandbuch: TSpeedButton;
    SpeedObereH: TSpeedButton;
    SpeedUntereH: TSpeedButton;
    SpeedFarbeKreise: TSpeedButton;
    SpeedKopieren: TSpeedButton;
    SpeedZwischenablage: TSpeedButton;
    SpeedLambert: TSpeedButton;
    SpeedStereografisch: TSpeedButton;
    SpeedOrthografisch: TSpeedButton;
    SpeedKavraiskii: TSpeedButton;
    SpeedFarbeAequator: TSpeedButton;
    SpeedPlotter: TSpeedButton;
    SpeedPeripherie: TSpeedButton;
    SpeedDiagramm: TSpeedButton;
    SpeedRahmen: TSpeedButton;
    SpeedausDatei: TSpeedButton;
    Literatur: TMenuItem;
    SpeedLiteratur: TSpeedButton;
    ImageNord: TImage;
    StrichStaerke: TMenuItem;
    ListBoxStrich: TListBox;
    LabelStrich: TLabel;
    SpeedStrich: TSpeedButton;
    Beschriften: TMenuItem;
    BeschriftenJa: TMenuItem;
    BeschriftenNein: TMenuItem;
    rechts: TMenuItem;
    links: TMenuItem;
    SpeedEinrichten: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedKeineSkala: TSpeedButton;
    SpeedSkalaLinks: TSpeedButton;
    SpeedSkalaRechts: TSpeedButton;
    PanelGroesse: TPanel;
    LabelBHoehe: TLabel;
    LabelBBreite: TLabel;
    MaskEditBBreite: TMaskEdit;
    MaskEditBHoehe: TMaskEdit;
    CheckBoxBild: TCheckBox;
    BGroesse: TMenuItem;
    FarbeH: TMenuItem;
    SpeedBGroesse: TSpeedButton;
    SpeedTransparent: TSpeedButton;
    SpeedFarbe: TSpeedButton;
    SavePictureDialog1: TSavePictureDialog;
    OpenPictureDialog1: TOpenPictureDialog;
    Ploterstellen: TButton;
    ButtonDrucken: TButton;
    ButtonAbbrechen: TButton;
    drehen: TMenuItem;
    MaskEditDrehen: TMaskEdit;
    LabelAzimut: TLabel;
    Fortschritt: TProgressBar;
    SpeedDrehen: TSpeedButton;
    SpeedSpeichern: TSpeedButton;
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
    ButtonCalibEnde: TButton;
    SpeedCalib: TSpeedButton;
    ButtonPlotEnde: TButton;
    PanelLoad: TPanel;
    ListBoxLoad: TListBox;
    ButtonLabbrechen: TButton;
    PanelSpeichern: TPanel;
    ListBoxSpeichern: TListBox;
    ButtonSabbrechen: TButton;
    Deinfuegen: TMenuItem;
    ausZwischenablage: TMenuItem;
    ausDatei: TMenuItem;
    Drueck: TMenuItem;
    SpeedRueck: TSpeedButton;
    Zoom: TMenuItem;
    SpeedZoom: TSpeedButton;
    Text: TMenuItem;
    Textschreiben: TMenuItem;
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
    procedure ButtonStartClick(Sender: TObject);
    procedure ButtonzurueckClick(Sender: TObject);
    procedure ButtonbeendenClick(Sender: TObject);

   {Projektion}
    procedure SchmidtschesNetz1Click(Sender: TObject);
    procedure WulffschesNetz1Click(Sender: TObject);
    procedure orthographischesNetz1Click(Sender: TObject);
    procedure KavraiskiiNetz1Click(Sender: TObject);

    {Farben Gro�kreise}
    procedure GrossuKleinkreise1Click(Sender: TObject);

    {Farben �quator}
    procedure Aequator1Click(Sender: TObject);

    {Grafik}
    procedure kopieren1Click(Sender: TObject);

    {Plotten}
    procedure Hilfe1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ShowHint(Sender: TObject);
    procedure SpeedHilfeClick(Sender: TObject);
    procedure CheckBoxOKClick(Sender: TObject);
    procedure MaskEditAbstandChange(Sender: TObject);
    procedure MaskEditKippwinkelChange(Sender: TObject);
    procedure DruckereinrichtenClick(Sender: TObject);
    procedure drucken1Click(Sender: TObject);
    procedure SpeedDruckenClick(Sender: TObject);
    procedure MaskEditUnterschriftKeyPress(Sender: TObject; var Key: Char);
    procedure RadioButtonLinksClick(Sender: TObject);
    procedure RadioButtonZentriertClick(Sender: TObject);
    procedure RadioButtonRechtsClick(Sender: TObject);
    procedure ListBoxSchriftClick(Sender: TObject);
    procedure HandbuchClick(Sender: TObject);
    procedure FarbePeripherie1Click(Sender: TObject);
    procedure FarbeDiagramm1Click(Sender: TObject);
    procedure FarbeRahmenClick(Sender: TObject);
    procedure untereClick(Sender: TObject);
    procedure obereClick(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure SpeedObereHClick(Sender: TObject);
    procedure SpeedUntereHClick(Sender: TObject);
    procedure SpeedFarbeKreiseClick(Sender: TObject);
    procedure SpeedKopierenClick(Sender: TObject);
    procedure SpeedZwischenablageClick(Sender: TObject);
    procedure SpeedLambertClick(Sender: TObject);
    procedure SpeedStereografischClick(Sender: TObject);
    procedure SpeedOrthografischClick(Sender: TObject);
    procedure SpeedKavraiskiiClick(Sender: TObject);
    procedure SpeedFarbeAequatorClick(Sender: TObject);
    procedure SpeedPlotterClick(Sender: TObject);
    procedure SpeedPLTClick(Sender: TObject);
    procedure SpeedDXFClick(Sender: TObject);
    procedure SpeedPeripherieClick(Sender: TObject);
    procedure SpeedDiagrammClick(Sender: TObject);
    procedure SpeedRahmenClick(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
    procedure SpeedLiteraturClick(Sender: TObject);
    procedure StrichStaerkeClick(Sender: TObject);
    procedure ListBoxStrichClick(Sender: TObject);
    procedure SpeedStrichClick(Sender: TObject);
    procedure BeschriftenNeinClick(Sender: TObject);
    procedure rechtsClick(Sender: TObject);
    procedure linksClick(Sender: TObject);
    procedure SpeedEinrichtenClick(Sender: TObject);
    procedure SpeedSkalaLinksClick(Sender: TObject);
    procedure SpeedKeineSkalaClick(Sender: TObject);
    procedure SpeedSkalaRechtsClick(Sender: TObject);
    procedure BGroesseClick(Sender: TObject);
    procedure MaskEditBBreiteKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditBHoeheKeyPress(Sender: TObject; var Key: Char);
    procedure CheckBoxBildClick(Sender: TObject);
    procedure SpeedBGroesseClick(Sender: TObject);
    procedure FarbeHClick(Sender: TObject);
    procedure transparentClick(Sender: TObject);
    procedure SpeedTransparentClick(Sender: TObject);
    procedure SpeedFarbeClick(Sender: TObject);
    procedure speichernPLTClick(Sender: TObject);
    procedure speichernDXFClick(Sender: TObject);
    procedure PloterstellenClick(Sender: TObject);
    procedure ButtonDruckenClick(Sender: TObject);
    procedure ButtonAbbrechenClick(Sender: TObject);
    procedure drehenClick(Sender: TObject);
    procedure MaskEditDrehenKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedDrehenClick(Sender: TObject);
    procedure Speichern1Click(Sender: TObject);
    procedure ListBoxSpeichernClick(Sender: TObject);
    procedure ListBoxLoadClick(Sender: TObject);
    procedure SpeedSpeichernClick(Sender: TObject);
    procedure SpeedausDateiClick(Sender: TObject);
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
    procedure PplottenClick(Sender: TObject);
    procedure DEinrichtenClick(Sender: TObject);
    procedure CalibrierenClick(Sender: TObject);
    procedure DruckenClick(Sender: TObject);
    procedure MaskEditBrEKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditBrDKeyPress(Sender: TObject; var Key: Char);
    procedure ButtonCalibEndeClick(Sender: TObject);
    procedure SpeedCalibClick(Sender: TObject);
    procedure ButtonPlotEndeClick(Sender: TObject);
    procedure ButtonLabbrechenClick(Sender: TObject);
    procedure ButtonSabbrechenClick(Sender: TObject);
    procedure ausZwischenablageClick(Sender: TObject);
    procedure ausDateiClick(Sender: TObject);
    procedure DrueckClick(Sender: TObject);
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
  end;

var
  Form37      : TForm37;
  Bitmap      : TBitmap;
  HolZwischen : boolean;
  HolDatei    : boolean;
  CurrentFile : string;
  NetzS       : string[20];
  PlotDateiS  : string;
  Schrift     : byte;
  BuendigS    : string;
  Gedrueckt   : array [1..3] of boolean;
  TextS       : string;
  ProS        : string[25];
  Image1      : TImage;
  Ratio       : real;
  BHoeheSt    : word;
  HolPixS     : string;
  DNameS      : string;
  Bild        : TBitmap;
  PlusEin     : boolean;
  NPlus,SPlus : integer;
  WPlus,EPlus : integer;
  Dbreite     : word;
  Ebreite     : word;
  VektorAlt   : real;
  Zwischen    : boolean;
  DBitmap     : TBitmap;
  TeS          : string;
  BText        : boolean;
  TextBitmap   : array[1..10] of TBitmap;
  texti        : byte;

implementation
uses Unit36, Unit12;
{$R *.DFM}

procedure TForm37.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm37.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm37.FormActivate(Sender: TObject);
var
  i : byte;
begin
  Left   := LeftDiag + ULap;
  Top    := TopDiag + ULap;
  Height := HeiDiag;
  Width  := WidDiag;
  WeiterB[37]                      := false; 
  SpeedDrucken.Hint                := Hilf(309);
  Form37.Caption                   := Tx(699);  {Fabric7: Projektionen der}
  Image1.Hint                      := Hilf(99);
  Panel1.Hint                      := Hilf(100);
  GroupBoxWinkel.Hint              := Hilf(101);
  MaskEditAbstand.Hint             := Hilf(102);
  LabelAbstand.Hint                := Hilf(102);
  MaskEditKippwinkel.Hint          := Hilf(104);
  LabelKippwinkel.Hint             := Hilf(104);
  CheckBoxOk.Hint                  := Hilf(105);
  GroupBoxPlotten.Hint             := Hilf(58) + Hilf(59);
  CheckBoxOk.Hint                  := Hilf(60);
  Ploterstellen.Hint               := Hilf(60);
  Panel3.Hint                      := Hilf(61);
  Panel4.Hint                      := Hilf(62);
  MaskEditX.Hint                   := Hilf(63);
  MaskEditY.Hint                   := Hilf(64);
  LabelX.Hint                      := Hilf(63);
  LabelY.Hint                      := Hilf(64);
  SpeedUntereH.Hint                := Hilf(364);
  SpeedObereH.Hint                 := Hilf(363);
  ButtonStart.Hint                 := Hilf(37);
  Buttonzurueck.Hint               := Hilf(106);
  ButtonBeenden.Hint               := Hilf(30);
  SpeedHandbuch.Hint               := Hilf(274);
  SpeedKopieren.Hint               := Hilf(262);
  SpeedZwischenablage.Hint         := Hilf(246);
  SpeedLambert.Hint                := Hilf(387);
  SpeedStereografisch.Hint         := Hilf(388);
  SpeedOrthografisch.Hint          := Hilf(389);
  SpeedKavraiskii.Hint             := Hilf(390);
  SpeedFarbeKreise.Hint            := Hilf(421);
  SpeedFarbeAequator.Hint          := Hilf(422);
  SpeedausDatei.Hint               := Hilf(368);
  SpeedPlotter.Hint                := Hilf(437);
  SpeedPeripherie.Hint             := Hilf(440);
  SpeedDiagramm.Hint               := Hilf(441);
  SpeedRahmen.Hint                 := Hilf(442);
  SpeedStrich.Hint                 := Hilf(463);
  SpeedEinrichten.Hint             := Hilf(505);
  SpeedSkalaRechts.Hint            := Hilf(528);
  SpeedSkalaLinks.Hint             := Hilf(529);
  SpeedKeineSkala.Hint             := Hilf(527);
  SpeedTransparent.Hint            := Hilf(584);
  SpeedFarbe.Hint                  := Hilf(585);
  SpeedBGroesse.Hint               := Hilf(583);  {&Projektion}
  SpeedDrehen.Hint                 := Hilf(676);
  SpeedSpeichern.Hint              := Hilf(264);
  SpeedFont.Hint                   := Hilf(686);
  SpeedHilfe.Hint                  := Hilf(210);
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
  SchmidtschesNetz1.Caption        := Tx(803);
  WulffschesNetz1.Caption          := Tx(804);
  orthographischesNetz1.Caption    := Tx(805);
  KavraiskiiNetz1.Caption          := Tx(806);
  Farbe1.Caption                   := Tx(642);  {&Farbe}
  GrossuKleinkreise1.Caption       := Tx(700);  {&Gro�- und Kleinkreise}
  Aequator1.Caption                := Tx(701);  {�quator}
  Grafik1.Caption                  := Tx(281);
  kopieren1.Caption                := Tx(282);
  Hintergrund.Caption              := Tx(1453); {Hintergrund}
  FarbeH.Caption                   := TX(275);
  speichern1.Caption               := Tx(284);
  HPPlotter1.Caption               := Tx(288);
  FarbePeripherie1.Caption         := Tx(498);
  FarbeDiagramm1.Caption           := Tx(860);
  Hilfe1.Caption                   := Tx(162)+' (F1)';
  LabelProjektion.Caption          := Tx(704);   {Projektionsnetz:}
  LabelNetz.Caption                := Tx(705);   {orthografisches Netz}
  GroupBoxWinkel.Caption           := Tx(706);   {Winkel:}
  LabelAbstand.Caption             := Tx(707);   {Abstand der Kreise}
  LabelKippwinkel.Caption          := Tx(709);   {Kippwinkel:}
  GroupBoxPlotten.Caption          := Tx(297);
  Ploterstellen.Caption            := Tx(298);
  LabelRadius.Caption              := Tx(299);
  LabelMittelpunkt.Caption         := Tx(300);
  LabelX.Caption                   := Tx(301);
  LabelY.Caption                   := Tx(302);
  Buttonzurueck.Caption            := Tx(30);
  Buttonbeenden.Caption            := Tx(53);
  LabelAzimut.Caption              := Tx(219);
  Drehen.Caption                   := Tx(1106);
  Font.Caption                     := Tx(1621);
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
  ButtonPlotEnde.Caption           := Tx(1682);
  ButtonLabbrechen.Caption         := Tx(1682);
  ButtonSabbrechen.Caption         := Tx(1682);
  Deinfuegen.Caption               := Tx(1685);
  ausZwischenablage.Caption        := Tx(1686);
  ausDatei.Caption                 := Tx(1687);
  Drueck.Caption                   := Tx(1688);
  Textschreiben.Caption            := Tx(1699);
  LabelText.Caption                := Tx(1700);
  LabelReturn.Caption              := Tx(1701);
  LabelPlazieren.Caption           := Tx(1702);
  Trueck.Caption                   := Tx(1688);
  GroupBoxPlotten.Caption          := '';
  Image1.Enabled              := false;
  GroupBoxWinkel.Caption      := '';
  LabelAbstand.Enabled        := false;
  LabelKippwinkel.Enabled     := false;
  CheckBoxOK.State            := cbUnchecked;
  CheckBoxOK.Enabled          := false;
  Grafik1.Enabled             := false;
  MaskEditAbstand.EditMask    := '99;0; ';
  MaskEditKippwinkel.EditMask := '999;0; ';
  MaskEditDrehen.EditMask     := '999;0; ';
  MaskEditBrE.EditMask        := '999;0; ';
  MaskEditBrD.EditMask        := '999;0; ';
  MaskEditAbstand.Text        := InttoStr(Abstand);
  MaskEditKippwinkel.Text     := InttoStr(Kippen);
  MaskEditAbstand.Enabled     := false;
  MaskEditKippwinkel.Enabled  := false;
  LabelProjektion.Enabled     := false;
  LabelNetz.Caption           := ' ';
  HolDatei                    := false;
  HolZwischen                 := false;
  LabelRadius.Enabled         := false;
  Calib                       := false;
  PanelKaliber.Visible        := false;
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
  Projektion1.Enabled         := false;
  Farbe1.Enabled              := false;
  Grafik1.Enabled             := false;
  SpeedDrucken.Enabled        := false;
  Paneldrucken.Visible        := false;
  MaskEditBrE.Enabled         := false;
  MaskEditBrD.Enabled         := false;
  GroupBoxDrucken.Visible     := false;
  Drucker1.Caption            := Tx(92);
  Druckereinrichten.Caption   := Tx(94);
  drucken1.Caption            := Tx(93);
  FarbeRahmen.Caption         := Tx(892);
  for i := 1 to 3 do Gedrueckt[i] := false;
  GroupBoxPlotten.Visible := false;
  Halbkugel.Caption       := Tx(1087);
  untere.Caption          := Tx(1088);
  obere.Caption           := Tx(1089);
  Handbuch.Caption        := Tx(1055)+' (F2)';
  Literatur.Caption       := Tx(1183)+' (F5)';
  SpeedLiteratur.Hint     := Hilf(462);
  PanelSpeed.Visible      := false;
  for i := 0 to 9 do ListboxStrich.Items.Add(IntToStr(i+1));
  ListBoxStrich.Visible   := false;
  LabelStrich.Visible     := false;
  Strichstaerke.Caption   := Tx(1186);
  LabelStrich.Caption     := Tx(1187);
  Beschriften.Caption     := Tx(1188);
  BeschriftenJa.Caption   := Tx(655);
  BeschriftenNein.Caption := Tx(654);
  rechts.Caption          := Tx(1189);
  links.Caption           := Tx(1190);
  MaskEditBBreite.EditMask:= '99999;0; ';
  MaskEditBHoehe.EditMask := '99999;0; ';
  LabelBBreite.Caption    := Tx(1440);
  LabelBHoehe.Caption     := Tx(1441);
  BGroesse.Caption        := Tx(1439);
  PanelGroesse.Visible    := false;
  Ratio                   := 660/663;
  HTransparent            := false;
  MaskEditDrehen.Visible  := false;
  LabelAzimut.Visible     := false;
  Fortschritt.Visible     := false;
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

procedure TForm37.ButtonStartClick(Sender: TObject);
var
  ProS     : string[25];
  Quadrat  : TRect;
  i, j     : byte;
  FBild    : TBitmap;
  JBild    : TJpegImage;
  GBild    : TGifImage;
  MetaFile : TMetaFile;
  Rahmen1  : TRect;
  Rahmen2  : TRect;
  BildPNG  : TPngObject;
  NBild    : TBitmap;
begin
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
    PanelSpeed.Visible       := true;
    SpeedDrucken.Enabled     := true;
    LabelProjektion.Enabled  := true;
    GroupBoxPlotten.Caption  := 'Plot:';
    if ProjektionS = 'Lambert'       then ProS := Tx(803);
    if ProjektionS = 'stereographic' then ProS := Tx(804);
    if ProjektionS = 'orthographic'  then ProS := Tx(805);
    if ProjektionS = 'Kavraiskii'    then ProS := Tx(806);
    if LeftS(ProS,1) = '&' then delete (ProS,1,1);
    LabelNetz.Caption    := ProS;
    Grafik1.Enabled            := true;
    MaskEditRadius.Enabled     := true;
    LabelMittelpunkt.Enabled   := true;
    LabelX.Enabled             := true;
    MaskEditX.Enabled          := true;
    LabelY.Enabled             := true;
    MaskEditY.Enabled          := true;
    Projektion1.Enabled        := true;
    Farbe1.Enabled             := true;
    CheckBoxOk.Enabled         := true;
    LabelAbstand.Enabled       := true;
    LabelKippwinkel.Enabled    := true;
    MaskEditAbstand.Enabled    := true;
    MaskEditKippwinkel.Enabled := true;
    LabelRadius.Enabled        := true;
    Bo := Pi/180;
    Image1.Enabled             := true;
    Bitmap := Tbitmap.Create;
    ImageNord.Picture.LoadfromFile (DirectS+'\'+'NordPfeil.bmp');
    Bitmap := Tbitmap.Create;
    Bitmap.Width     := Image1.Width;
    Bitmap.Height    := Image1.Height;
    Image1.Top       := ImTop;
    Image1.Left      := ImLeft;
    Image1.Height    := ImHeight;
    Image1.Width     := ImWidth;
    ImageNord.Top    := 3;
    ImageNord.Left   := 400;
    ImageNord.Width  := 18;
    ImageNord.Height := 36;
    Image1.Picture.Graphic := Bitmap;
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
        Bitmap := TBitmap.Create;
        try
          Bitmap.Assign(ClipBoard);
          Image1.Canvas.Draw(0,0, Bitmap);
        finally
          Bitmap.free;
        end;
        Zahlloeschen(Image1.Canvas);
      end
      else MessageDlg(Tx(306), mtInformation, [mbOK],0);  {Die Zwischenablage}
      Holzwischen := false;
    end;
  end  // not PlusEin
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
  {Zeichnen des Netzes}
  Kippen := Kippen mod 180;
  if ObenUntenS = 'LOWER' then Kippwinkel := abs(Kippen);
  if ObenUntenS = 'UPPER' then Kippwinkel := Kippen*-1;
  if Kippwinkel < 0 then KippWinkel := 180 + Kippwinkel;
  with Image1.Canvas do
  begin
    Projektionen (NetzS, Image1.Canvas);
    if not HTransparent then
    begin
      with image2 do
      begin
        Quadrat := Rect (0, 0, Clientwidth, ClientHeight);
        if ObenUntenS = 'LOWER' then UntereH(Canvas, Quadrat);
        if ObenUntenS = 'UPPER' then ObereH (Canvas, Quadrat);
      end;
    end;
  end;
  Image2.Visible    := false;
  ImageNord.Visible := false;
  if not HTransparent then
    Image1.Canvas.Draw(Image1.Width-Image2.width-5,
                       Image1.Height-Image2.Height-5,
                       Image2.picture.graphic);
  Image1.Canvas.Draw(Image1.Width div 2 - ImageNord.Width div 2,3,
                     ImageNord.Picture.Graphic);
  if DemoB then DemoText (Image1.Canvas,10,Image1.Height-40);
end;

procedure TForm37.ButtonzurueckClick(Sender: TObject);
var
  Flaeche : TRect;
begin
  ButtonStart.Enabled     := true;
  CheckBoxOK.State        := cbUnchecked;
  Flaeche := Rect(0,0,Clientwidth,ClientHeight);
  Loeschen (Image1.Canvas, Flaeche);
  Loeschen (Image2.Canvas, Flaeche);
  Loeschen (ImageNord.Canvas, Flaeche);
  if WeiterF then
  begin
    ButtonStart.Visible     := true;
    ButtonBeenden.Visible   := true;
    ButtonStartClick(Sender);
  end;
  Form37.Close;
end;

procedure TForm37.ButtonbeendenClick(Sender: TObject);
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
  Loeschen (Image1.Canvas, Flaeche);
  Loeschen (Image2.Canvas, Flaeche);
  Loeschen (ImageNord.Canvas, Flaeche);
  Form37.Close;
  Form36.Close;
  SetCurrentDir(DirectS);
end;

procedure TForm37.MaskEditAbstandChange(Sender: TObject);
begin
  CheckBoxOk.State := cbUnchecked;
end;

procedure TForm37.MaskEditKippwinkelChange(Sender: TObject);
begin
  CheckBoxOk.State := cbUnchecked;
end;

procedure TForm37.CheckBoxOKClick(Sender: TObject);
var
  Datei : TextFile;
  i     : word;
begin
  if CheckBoxOk.State = cbUnchecked then exit;
  Abstand       := StrtoInt(MaskEditAbstand.Text);
  NetzInkrement := Abstand;
  Kippen        := StrtoInt(MaskEditKippwinkel.Text);
  KonfigZeileS[70] := 'Distance of Circles Deg.   :,'+IntToStr(Abstand);
  KonfigZeileS[71] := 'Distance of Points Deg.    :,'+IntToStr(NetzInkrement);
  KonfigZeileS[72] := 'Tilt Angle Deg.            :,'+IntToStr(Kippen);
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm37.untereClick(Sender: TObject);
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

procedure TForm37.obereClick(Sender: TObject);
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

procedure TForm37.SchmidtschesNetz1Click(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  NetzS        := 'Schmidt';
  ProjektionS  := 'Lambert';
  KonfigZeileS[24] := '  Projection               :,Lambert';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ProS := Tx(803);
  delete (ProS,1,1);
  LabelNetz.Caption := ProS;
  ButtonStartClick(Sender);
end;

procedure TForm37.WulffschesNetz1Click(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  NetzS        := 'Wulff';
  ProjektionS  := 'stereographic';
  KonfigZeileS[24] := '  Projection               :,stereographic';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ProS := Tx(804);
  delete (ProS,1,1);
  LabelNetz.Caption := ProS;
  ButtonStartClick(Sender);
end;

procedure TForm37.orthographischesNetz1Click(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  NetzS        := 'ortho';
  ProjektionS  := 'orthographic';
  KonfigZeileS[24] := '  Projection               :,orthographic';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ProS := Tx(805);
  delete (ProS,1,1);
  LabelNetz.Caption := ProS;
  ButtonStartClick(Sender);
end;

procedure TForm37.KavraiskiiNetz1Click(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  NetzS        := 'Kavraiskii';
  ProjektionS  := 'Kavraiskii';
  KonfigZeileS[24] := '  Projection               :,Kavraiskii';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ProS := Tx(806);
  delete (ProS,1,1);
  LabelNetz.Caption := ProS;
  ButtonStartClick(Sender);
end;

procedure TForm37.SpeedLambertClick(Sender: TObject);
begin
  SchmidtschesNetz1Click(Sender);
end;

procedure TForm37.SpeedStereografischClick(Sender: TObject);
begin
  WulffschesNetz1Click(Sender);
end;

procedure TForm37.SpeedOrthografischClick(Sender: TObject);
begin
  orthographischesNetz1Click(Sender);
end;

procedure TForm37.SpeedKavraiskiiClick(Sender: TObject);
begin
  KavraiskiiNetz1Click(Sender);
end;

procedure TForm37.BGroesseClick(Sender: TObject);
begin
  PanelGroesse.Visible := true;
  CheckBoxBild.State   := cbUnchecked;
  MaskEditBBreite.Text := IntTostr(BBreiteSt);
  MaskEditBHoehe.Text  := IntToStr(BHoeheSt);
end;

procedure TForm37.SpeedBGroesseClick(Sender: TObject);
begin
  BGroesseClick(Sender);
end;

procedure TForm37.MaskEditBBreiteKeyPress(Sender: TObject; var Key: Char);
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
      BHoeheSt := round(BBreiteSt/Ratio);
      KonfigZeileS[118] := 'Save Image Width (Stereo)  :,'+BBreiteS;
      MaskEditBHoehe.Text := IntToStr(BHoeheSt);
      assignFile(Datei,FabricS+'\'+'Fabric.ini');
      rewrite (Datei);
      for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
      closefile (Datei);
    end;
  end;
end;

procedure TForm37.MaskEditBHoeheKeyPress(Sender: TObject; var Key: Char);
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

procedure TForm37.CheckBoxBildClick(Sender: TObject);
begin
  PanelGroesse.Visible := false;
end;

procedure TForm37.kopieren1Click(Sender: TObject);
begin
  ClipBoard.Assign (Image1.Picture);
end;

procedure TForm37.transparentClick(Sender: TObject);
begin
  Farbe        := clWhite;
  HTransparent := true;
  ListBoxSpeichern.Clear;
  ListBoxSpeichern.Items.Add (Tx(1613));
  ButtonStartClick(Sender);
end;

procedure TForm37.SpeedTransparentClick(Sender: TObject);
begin
  transparentClick(Sender);
end;

procedure TForm37.FarbeHClick(Sender: TObject);
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
  CheckBoxOk.State      := cbUnchecked;
  ListBoxSpeichern.Clear;
  for i := 1 to 9 do
    ListBoxSpeichern.Items.Add (Tx(1611+i));
  ButtonStartClick (Sender);
end;

procedure TForm37.SpeedFarbeClick(Sender: TObject);
begin
  FarbeHClick(Sender);
end;

procedure TForm37.Speichern1Click(Sender: TObject);
begin
  PanelSpeichern.Visible := true;
end;

procedure TForm37.SpeedSpeichernClick(Sender: TObject);
begin
  Speichern1Click(Sender);
end;

procedure TForm37.ausZwischenablageClick(Sender: TObject);
begin
  Zoom.Enabled                := true;
  SpeedZoom.Enabled           := true;
  Zwischen                    := true;
  Drueck.Enabled              := true;
  SpeedRueck.Enabled          := true;
  ausDatei.Enabled            := false;
  AusZwischenablage.Enabled   := false;
  SpeedausDatei.Enabled       := false;
  SpeedZwischenablage.Enabled := false;
  DBitmap := Tbitmap.Create;
  DBitmap.Assign(Image1.Picture);
  FarbePeripherie1.Enabled  := false;
  FarbeDiagramm1.Enabled    := false;
  Hintergrund.Enabled       := false;
  HolZwischen := true;
  ButtonStartClick(Sender);
end;

procedure TForm37.SpeedZwischenablageClick(Sender: TObject);
begin
  ausZwischenablageClick(Sender);
end;

procedure TForm37.ausDateiClick(Sender: TObject);
begin
  Zoom.Enabled                := true;
  SpeedZoom.Enabled           := true;
  Drueck.Enabled              := true;
  SpeedRueck.Enabled          := true;
  ausDatei.Enabled            := false;
  AusZwischenablage.Enabled   := false;
  SpeedausDatei.Enabled       := false;
  SpeedZwischenablage.Enabled := false;
  PanelLoad.Visible := true;
  DBitmap := Tbitmap.Create;
  DBitmap.Assign(Image1.Picture);
end;

procedure TForm37.SpeedausDateiClick(Sender: TObject);
begin
  ausDateiClick(Sender);
end;

procedure TForm37.ZoomClick(Sender: TObject);
begin
  PanelDehnen.Visible := true;
  PlusEin             := true;
  if ClipBoard.HasFormat(CF_Bitmap) then
    HolPixS := 'Clipboard';
  ButtonStartClick(Sender);
end;

procedure TForm37.SpeedZoomClick(Sender: TObject);
begin
  ZoomClick(Sender);
end;

procedure TForm37.DrueckClick(Sender: TObject);
begin
  AusDatei.enabled            := true;
  SpeedausDatei.Enabled       := true;
  Zoom.Enabled                := false;
  SpeedZoom.Enabled           := false;
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

procedure TForm37.SpeedRueckClick(Sender: TObject);
begin
  DrueckClick(Sender);
end;

procedure TForm37.ButtonSabbrechenClick(Sender: TObject);
begin
  PanelSpeichern.Visible := false;
end;

procedure TForm37.ListBoxSpeichernClick(Sender: TObject);
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

procedure TForm37.speichernPLTClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  GroupBoxPlotten.Visible := true;
  GeraetS          := 'HPGL';
  KonfigZeileS[53] := 'Paper Plot                 :,HPGL';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
end;

procedure TForm37.speichernDXFClick(Sender: TObject);
var
  i      : byte;
  Datei  : Textfile;
begin
  GroupBoxPlotten.Visible := true;
  GeraetS          := 'DXF';
  KonfigZeileS[53] := 'Paper Plot                 :,DXF';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
end;

procedure TForm37.ButtonLabbrechenClick(Sender: TObject);
begin
  PanelLoad.Visible := false;
end;

procedure TForm37.DEinrichtenClick(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TForm37.CalibrierenClick(Sender: TObject);
begin
  Calib                   := true;
  FaktorAlt               := Faktor;
  Faktor                  := 1;
  GeraetS                 := 'Plotter';
  GroupBoxPlotten.Visible := true;
  PanelKaliber.Visible    := true;
end;

procedure TForm37.SpeedCalibClick(Sender: TObject);
begin
  CalibrierenClick(Sender);
end;

procedure TForm37.ButtonCalibEndeClick(Sender: TObject);
begin
  Calib := false;
  Faktor := FaktorAlt;
  PanelKaliber.Visible := false;
end;

procedure TForm37.MaskEditBrEKeyPress(Sender: TObject; var Key: Char);
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

procedure TForm37.MaskEditBrDKeyPress(Sender: TObject; var Key: Char);
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

procedure TForm37.DruckenClick(Sender: TObject);
var
  i      : byte;
  Datei  : Textfile;
begin
  DiagrFarbe := clWhite;
  FarbePeripherie1.Enabled := true;
  GeraetS                  := 'Plotter';
  KonfigZeileS[53] := 'Paper Plot                 :,Plotter';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  GroupBoxPlotten.Visible := true;
end;

procedure TForm37.ButtonNPlusClick(Sender: TObject);
begin
  NPlus := NPlus +1;
  ButtonStartClick(Sender);
end;

procedure TForm37.ButtonNMinusClick(Sender: TObject);
begin
  NPlus := NPlus -1;
  ButtonStartClick(Sender);
end;

procedure TForm37.ButtonEMinusClick(Sender: TObject);
begin
  EPlus := EPlus -1;
  ButtonStartClick(Sender);
end;

procedure TForm37.ButtonEPlusClick(Sender: TObject);
begin
  EPlus := EPlus +1;
  ButtonStartClick(Sender);
end;

procedure TForm37.ButtonSMinusClick(Sender: TObject);
begin
  SPlus := SPlus -1;
  ButtonStartClick(Sender);
end;

procedure TForm37.ButtonSPlusClick(Sender: TObject);
begin
  SPlus := SPlus +1;
  ButtonStartClick(Sender);
end;

procedure TForm37.ButtonWplusClick(Sender: TObject);
begin
  WPlus := WPlus +1;
  ButtonStartClick(Sender);
end;

procedure TForm37.ButtonWMinusClick(Sender: TObject);
begin
  WPlus := WPlus -1;
  ButtonStartClick(Sender);
end;

procedure TForm37.ButtonHokClick(Sender: TObject);
begin
  NPlus := 0;
  EPlus := 0;
  SPlus := 0;
  WPlus := 0;
  PanelDehnen.Visible := false;
  PlusEin := false;  
end;

procedure TForm37.ListBoxLoadClick(Sender: TObject);
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

procedure TForm37.GrossuKleinkreise1Click(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  Farbe := clWhite;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS    := ColorToString (Farbe);
  NetzFarbe := StringToColor(FarbeS);
  KonfigZeileS[25] := 'Colour of Nets             :,'+FarbeS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick (Sender);
end;

procedure TForm37.Aequator1Click(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  Farbe := clWhite;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS        := ColorToString (Farbe);
  AequatorFarbe := StringToColor(FarbeS);
  KonfigZeileS[26] := 'Colour of Equator          :,'+FarbeS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick (Sender);
end;

procedure TForm37.SpeedFarbeAequatorClick(Sender: TObject);
begin
  Aequator1Click(Sender);
end;

procedure TForm37.SpeedPlotterClick(Sender: TObject);
begin
  DRuckenClick(Sender);
end;

procedure TForm37.SpeedPLTClick(Sender: TObject);
begin
  speichernPLTClick(Sender);
end;

procedure TForm37.SpeedDXFClick(Sender: TObject);
begin
  speichernDXFClick(Sender);
end;

procedure TForm37.FarbePeripherie1Click(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  Farbe := clWhite;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS    := ColorToString (Farbe);
  UmfangFarbe := StringToColor(FarbeS);
  KonfigZeileS[5] := '  Periphery Colour         :,'+FarbeS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  CheckBoxOk.State := cbUnchecked;
  ButtonStartClick (Sender);
end;

procedure TForm37.FarbeDiagramm1Click(Sender: TObject);
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

procedure TForm37.FarbeRahmenClick(Sender: TObject);
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

procedure TForm37.SpeedPeripherieClick(Sender: TObject);
begin
  FarbePeripherie1Click(Sender);
end;

procedure TForm37.SpeedDiagrammClick(Sender: TObject);
begin
  FarbeDiagramm1Click(Sender);
end;

procedure TForm37.SpeedRahmenClick(Sender: TObject);
begin
  FarbeRahmenClick(Sender);
end;

procedure TForm37.PloterstellenClick(Sender: TObject);
var
  RmaxS   : string[12];
  Rmax    : real;
  Xmax    : real;
  Ymax    : real;
  RadiusS : string[4];
  XKoordS : string[4];
  YKoordS : string[4];
  Kreuz   : boolean;
  Xm, Ym  : word;
  Datei   : TextFile;
  i       : byte;
  XS, YS  : string;
  WS, HS  : string;
  X, Y    : word;
  Groesse : word;
  X1, X2  : word;
  Y1, Y2  : word;
  Typ     : TMsgDlgType;
  Xd, Yd  : word;
begin
  ZahlGlob := 0;
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
    Typ   := mtError;
    RmaxS := '(max. 100mm)';
    Rmax  := 10.0;
    Xmax  := 29.2 - Rmax;
    Ymax  := 20.5 - Rmax;
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
  Kreuz := false;
  {Beginn des Plottens}
  if GeraetS <> 'Plotter' then
  begin
    Canvas.Pen.Width := Strich;
    Plotter (Canvas, SaveDialog1);
    Farben (Canvas, UmfangFarbe);
    HPPeriph (Canvas, Kreuz);
    HPProjektionen (Canvas, NetzS, Abstand, NetzInkrement,
                    Kippwinkel);
    Farben (Canvas, PeriFarbe);
    Xm := round(XKoord*400);
    Ym := round(YKoord*400);
    Zeichkreis (Xm, Ym, 80, 5);
    DecimalSeparator := '.';
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
    Kreuz := true;
    with Printer do
    begin
      BeginDoc;
      Plotter (Canvas, SaveDialog1);
      Farben (Canvas, PeriFarbe);
      HPPeriph (Canvas, Kreuz);
      HPProjektionen (Canvas, NetzS, Abstand, NetzInkrement,
                      Kippwinkel);
      Xm := round(XKoord*100*Faktor);
      Ym := round(YKoord*100*Faktor);
      X1 := Xm - round(HPRadius*100*Faktor);
      X2 := Xm + round(HPRadius*100*Faktor);
      Y1 := Ym - round(HPRadius*100*Faktor);
      Y2 := Ym + round(HPRadius*100*Faktor);
      Canvas.Pen.Color := UmfangFarbe;
      Canvas.Ellipse(X1,Y1,X2,Y2);
      if DemoB then
      begin
        Xd := round((Xkoord-HpRadius)*100*Faktor);
        Yd := round((Ykoord+HpRadius)*100*Faktor);
        Groesse := round(HpRadius*2);
        Canvas.Font.Size  := Groesse;
        Canvas.Font.Color := clBlack;
        Canvas.Textout (Xd, Yd, 'Demo-Version');
      end;
      EndDoc;
    end;
  end;
  if not Calib then showmessage(Tx(435));
  GroupBoxPlotten.Visible  := false;
  PanelSpeichern.Visible   := false;
  if Calib then
  begin
    MaskEditBrE.Enabled    := true;
    MaskEditBrD.Enabled    := true;
    MaskEditBrE.SetFocus;
  end;
  Calib                    := false;
end;

procedure TForm37.ButtonPlotEndeClick(Sender: TObject);
begin
  GroupBoxPlotten.Visible := false;
end;

procedure TForm37.DruckereinrichtenClick(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TForm37.SpeedEinrichtenClick(Sender: TObject);
begin
  DruckerEinrichtenClick(Sender);
end;

procedure TForm37.drucken1Click(Sender: TObject);
var
  SchriftS : string[5];
  i        : byte;
begin
  Paneldrucken.Visible         := true;
  GroupBoxDrucken.Visible      := true;
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
  ButtonDrucken.Enabled        := false;
  i                            := 3;
  repeat
    i := i + 1;
    str(i, SchriftS);
    ListBoxSchrift.Items.Add (SchriftS);
  until i = 40;
  MaskEditUnterschrift.SetFocus;
end;

procedure TForm37.SpeedDruckenClick(Sender: TObject);
begin
  drucken1Click(Sender);
end;

procedure TForm37.PplottenClick(Sender: TObject);
begin
  WeiterB[37] := true;
  Application.CreateForm(TForm12, Form12);
  Form12.Show;
end;

procedure TForm37.MaskEditUnterschriftKeyPress(Sender: TObject;
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

procedure TForm37.RadioButtonLinksClick(Sender: TObject);
begin
  BuendigS := 'Links';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    ButtonDrucken.Enabled := true;
end;

procedure TForm37.RadioButtonZentriertClick(Sender: TObject);
begin
  BuendigS := 'Zentriert';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    ButtonDrucken.Enabled := true;
end;

procedure TForm37.RadioButtonRechtsClick(Sender: TObject);
begin
  BuendigS := 'Rechts';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    ButtonDrucken.Enabled := true;
end;

procedure TForm37.ListBoxSchriftClick(Sender: TObject);
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

procedure TForm37.ButtonDruckenClick(Sender: TObject);
var
  Bitmap  : TBitmap;
  Fenster : TRect;
  LRand   : word;
  ORand   : word;
  PLaenge : word;
  Hoehe   : word;
  Anfang  : word;
  LinksB  : word;
begin
  LinksB  := StrToInt(MaskEditLinks.Text);
  LRand   := round(LinksB*Printer.PageWidth/100);
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
  RadioButtonLinks.Visible     := false;
  RadioButtonRechts.Visible    := false;
  RadioButtonzentriert.Visible := false;
end;

procedure TForm37.ButtonAbbrechenClick(Sender: TObject);
begin
  Paneldrucken.Visible         := false;
  GroupBoxDrucken.Visible      := false;
end;

procedure TForm37.TextschreibenClick(Sender: TObject);
begin
  PanelText.Visible := true;
  MaskEditText.SetFocus;
  BText := true;
  MaskEditText.Clear;
  PanelPlazieren.Visible := false;
end;

procedure TForm37.SpeedTextClick(Sender: TObject);
begin
  TextschreibenClick(Sender);
end;

procedure TForm37.MaskEditTextKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(13) then
  begin
    TeS := MaskEditText.Text;
    PanelPlazieren.Visible := true;
  end;
end;

procedure TForm37.Image1MouseUp(Sender: TObject; Button: TMouseButton;
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

procedure TForm37.TrueckClick(Sender: TObject);
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

procedure TForm37.SpeedUnTextClick(Sender: TObject);
begin
  TrueckClick(Sender);
end;

procedure TForm37.Hilfe1Click(Sender: TObject);
var
  DateiS : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\37Lagenkugel-plot.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\37Nets-plot.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm37.SpeedHilfeClick(Sender: TObject);
begin
  Hilfe1Click(Sender);
end;

procedure TForm37.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Lagenkugel.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'Projections.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm37.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm37.SpeedObereHClick(Sender: TObject);
begin
  obereClick(Sender);
end;

procedure TForm37.SpeedUntereHClick(Sender: TObject);
begin
  untereClick(Sender);
end;

procedure TForm37.SpeedFarbeKreiseClick(Sender: TObject);
begin
  GrossuKleinkreise1Click(Sender);
end;

procedure TForm37.SpeedKopierenClick(Sender: TObject);
begin
  kopieren1Click(Sender);
end;

procedure TForm37.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm37.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

procedure TForm37.StrichStaerkeClick(Sender: TObject);
begin
  ListBoxStrich.Visible  := true;
  LabelStrich.Color      := HintFarbe;
  LabelStrich.Font.Color := UmfangFarbe;
  LabelStrich.Visible    := true;
end;

procedure TForm37.ListBoxStrichClick(Sender: TObject);
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

procedure TForm37.SpeedStrichClick(Sender: TObject);
begin
  StrichStaerkeClick(Sender);
end;

procedure TForm37.BeschriftenNeinClick(Sender: TObject);
begin 
  ButtonStartClick(sender);
end;

procedure TForm37.FontClick(Sender: TObject);
begin
  WaehlFont(FontDialog1);
end;

procedure TForm37.SpeedFontClick(Sender: TObject);
begin
  FontClick(Sender);
end;

procedure TForm37.drehenClick(Sender: TObject);
begin
  MaskEditDrehen.Visible := true;
  LabelAzimut.Visible    := true;
  MaskEditDrehen.SetFocus;
  RahmenFarbe := HintFarbe;
  ButtonStartClick(Sender);
end;

procedure TForm37.SpeedDrehenClick(Sender: TObject);
begin
  drehenClick(Sender);
end;

procedure TForm37.MaskEditDrehenKeyPress(Sender: TObject; var Key: Char);
var
  Rahmen      : TRect;
  AzimutS     : string;
  Azimut      : word;
  Bild        : array of array of TColor;
  Bo          : real;
  i, j, k, l  : integer;
  Dreh        : real;
  Xm, Ym      : integer;
  Xmr, Ymr    : integer;
  Xkorr,Ykorr : integer;
begin
  Bo := Pi/180;
  if Key = chr(13) then
  begin
    ButtonStartClick(Sender);
    with Image1.Canvas do
    begin
      for j := 5 to 41 do
        for i := 320 to 338 do Pixels[i,j] := HintFarbe;
    end;
    setlength(Bild,Image1.Height+1);
    for i:= 0 to Image1.Height do
      setlength(Bild[i],Image1.Width+1);
    AzimutS := MaskEditDrehen.Text;
    LeerLoeschen (AzimutS);
    if AzimutS = '' then exit
    else Azimut := StrToInt (AzimutS);
    Bitmap        := TBitmap.Create;
    Bitmap.Width  := Image1.Width;
    Bitmap.Height := Image1.Height;
    Rahmen        := Rect(0,0,Bitmap.Width,Bitmap.Height);
    Bitmap.Canvas.Stretchdraw(Rahmen,Image1.Picture.Graphic);
    Dreh := -Azimut*Bo;
    Fortschritt.Visible := true;
    Fortschritt.Max     := Width;
    Fortschritt.Step    := 5;
    Xm   := Image1.Width div 2;
    Ym   := Image1.Height div 2 + 18;
    with Image1 do
    begin
      for i := 0 to Height do
      begin
        for j := 0 to Width do Bild[i,j] := Canvas.pixels[j,i];
        Fortschritt.StepIt;
      end;
      Canvas.Brush.Color := clWhite;
      Canvas.Rectangle(1,1,Width-1,Height-1);
      xmR   := round(cos(Dreh)*Xm-sin(Dreh)*Ym);
      ymR   := round(sin(Dreh)*Xm+cos(Dreh)*Ym);
      Xkorr := Xm - XmR;
      Ykorr := Ym - YmR;
      Fortschritt.Visible := true;
      Fortschritt.Max     := Width;
      Fortschritt.Step    := 5;
      for i := 0 to Height do
      begin
        for j := 0 to Width do
        begin
          k := round(cos(Dreh)*j - sin(Dreh)*i)+Xkorr;
          l := round(sin(Dreh)*j + cos(Dreh)*i)+Ykorr;
          if (k>=0) and (k<Width) and (l>=0) and (l<Height) then  //k,l
            Canvas.Pixels[j,i]    := Bild[l,k]
          else Canvas.Pixels[j,i] := clWhite;
        end;
        Fortschritt.StepIt;
      end;
      Fortschritt.Visible   := false;
      for i := 0 to Height do setlength(Bild[i],0);
      Bild := NIL;
    end; // end with Image
    Bitmap.free;
  end;  // end key
end;

procedure TForm37.SpeedKeineSkalaClick(Sender: TObject);
begin
  BeschriftenNeinClick(Sender);
end;

procedure TForm37.rechtsClick(Sender: TObject);
var
  X, Y : word;
  Bo   : real;
  i, l : word;
begin
  l := 0;
  Bo := Pi / 180;
  for i := 1 to 35 do
  begin
    if i < 12 then l := 20;
    if (i > 12) and (i < 16) then l := 10;
    if (i > 16) and (i < 20) then l := 5;
    if i > 30 then l := 15;
    X := round(Xmitte - (Radius+l)*sin(i*10*Bo));
    Y := round(Ymitte - (Radius+l)*cos(i*10*Bo));
    with image1.Canvas do
    begin
      Brush.Color := HintFarbe;
      Font.Color  := UmfangFarbe;
      Font.Size   := 6;
      TextOut(X,Y,inttostr(360-i*10));
    end;
  end;
end;

procedure TForm37.SpeedSkalaRechtsClick(Sender: TObject);
begin
  rechtsClick(Sender);
end;

procedure TForm37.linksClick(Sender: TObject);
var
  X, Y : word;
  Bo   : real;
  i, l : word;
begin
  ButtonStartClick(Sender);
  l := 0;
  Bo := Pi / 180;
  for i := 1 to 35 do
  begin
    if i < 12 then l := 20;
    if (i > 12) and (i < 16) then l := 10;
    if (i > 16) and (i < 20) then l := 5;
    if i > 30 then l := 15;
    X := round(Xmitte - (Radius+l)*sin(i*10*Bo));
    Y := round(Ymitte - (Radius+l)*cos(i*10*Bo));
    with image1.Canvas do
    begin
      Brush.Color := HintFarbe;
      Font.Color  := UmfangFarbe;
      Font.Size   := 6;
      TextOut(X,Y,inttostr(i*10));
    end;
  end;
end;

procedure TForm37.SpeedSkalaLinksClick(Sender: TObject);
begin
  linksClick(Sender);
end;

end.
