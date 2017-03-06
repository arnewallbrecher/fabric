unit Unit67;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, ExtCtrls, StdCtrls, Globvar, Basic, Mask,
  Menus, ExtDlgs, Jpeg, Printers, Math, Texte, Shellapi, Buttons,
  Panozzo, ComCtrls, Standard, Plotten, LiesConf,GifImage,
  Bmp2Tiff, ehsHelpRouter, PngImage, Grafik;

type
  TForm67 = class(TForm)
    ButtonStart: TButton;
    ButtonBeenden: TButton;
    LabelFaktor: TLabel;
    MainMenu1: TMainMenu;
    FarbePunkte: TMenuItem;
    ColorDialog1: TColorDialog;
    SavePictureDialog1: TSavePictureDialog;
    PrinterSetupDialog1: TPrinterSetupDialog;
    PanelEllipse: TPanel;
    LabelEPunkte: TLabel;
    Hilfe: TMenuItem;
    Handbuch: TMenuItem;
    PanelSpeed: TPanel;
    SpeedHilfe: TSpeedButton;
    SpeedHandbuch: TSpeedButton;
    SpeedFarbe: TSpeedButton;
    SpeedFryUmriss: TSpeedButton;
    SpeedDrucken: TSpeedButton;
    Literatur: TMenuItem;
    SpeedLiteratur: TSpeedButton;
    Punktgroesse: TMenuItem;
    ImageAuswertung: TImage;
    ButtonZuruck: TButton;
    SpeedEinrichten: TSpeedButton;
    Auswertung: TMenuItem;
    Projektion: TMenuItem;
    MaskEditZoom: TMaskEdit;
    ListBoxPGroesse: TListBox;
    ButtonUhr: TButton;
    ButtongegenUhr: TButton;
    ImageTheta: TImage;
    LabelLang: TLabel;
    ButtonUebertragen: TButton;
    OpenDialog1: TOpenDialog;
    SpeedPGroesse: TSpeedButton;
    SpeedFryTransparent: TSpeedButton;
    SpeedFryFlaeche: TSpeedButton;
    SpeedNeu: TSpeedButton;
    SpeedLangeAchse: TSpeedButton;
    SpeedKurzeAchse: TSpeedButton;
    SpeedDrehen: TSpeedButton;
    SpeedGroesse: TSpeedButton;
    SpeedFryDrucken: TSpeedButton;
    SpeedProjektion: TSpeedButton;
    StatusBar: TStatusBar;
    SpeedBGroesseF: TSpeedButton;
    SpeedBGroesseD: TSpeedButton;
    PanelGroesse: TPanel;
    MaskEditBHoehe: TMaskEdit;
    MaskEditBBreite: TMaskEdit;
    CheckBoxBild: TCheckBox;
    LabelBHoehe: TLabel;
    LabelBBreite: TLabel;
    ButtonOK: TButton;
    FryEllipse: TMenuItem;
    FryFarbe: TMenuItem;
    FryUmriss: TMenuItem;
    FryFlaeche: TMenuItem;
    FryTransparent: TMenuItem;
    FryGefuellt: TMenuItem;
    FryNeu: TMenuItem;
    LangeAchse: TMenuItem;
    KurzeAchse: TMenuItem;
    Groesseaendern: TMenuItem;
    FryLoeschen: TMenuItem;
    FryDrehen: TMenuItem;
    NearestEllipse: TMenuItem;
    NNFarbe: TMenuItem;
    NNUmriss: TMenuItem;
    NNFlaeche: TMenuItem;
    NNTransparent: TMenuItem;
    NNFlaecheFarbe: TMenuItem;
    NNLoeschen: TMenuItem;
    SaveDialog1: TSaveDialog;
    SpeedFryLoeschen: TSpeedButton;
    SpeedNNUmriss: TSpeedButton;
    SpeedNNTransparent: TSpeedButton;
    SpeedNNFarbe: TSpeedButton;
    SpeedNNLoeschen: TSpeedButton;
    SpeedNNname: TSpeedButton;
    DPunkte: TMenuItem;
    SpeedSpeichernFry: TSpeedButton;
    SpeedThetaspeichern: TSpeedButton;
    SpeedFont: TSpeedButton;
    FontDialog1: TFontDialog;
    Font: TMenuItem;
    Daten: TMenuItem;
    Dspeichern1: TMenuItem;
    DspeichernUnter: TMenuItem;
    GGrafik: TMenuItem;
    FryPlot: TMenuItem;
    BGroesseF: TMenuItem;
    FrySpeichern: TMenuItem;
    DADiagramm: TMenuItem;
    BildGroesseD: TMenuItem;
    Dspeichern: TMenuItem;
    FDruckerEinrichten: TMenuItem;
    FDrucken: TMenuItem;
    DDruckerEinrichten: TMenuItem;
    Ddrucken: TMenuItem;
    Hintergrund: TMenuItem;
    Rahmen: TMenuItem;
    Diagramm: TMenuItem;
    Koordinaten: TMenuItem;
    PanelDaten: TPanel;
    ListBoxPunkte: TListBox;
    LabelX: TLabel;
    LabelR: TLabel;
    PanelZahl: TPanel;
    LabelZahl: TLabel;
    LabelPunkte: TLabel;
    PanelDatei: TPanel;
    LabelDatei: TLabel;
    MaskEditDatei: TMaskEdit;
    PanelDalpha: TPanel;
    LabelDstrich: TLabel;
    LabelAlpha: TLabel;
    LabelDiagramm: TLabel;
    PanelAuswertung: TPanel;
    ListBoxAuswertung: TListBox;
    ButtonAabbrechen: TButton;
    PanelTheta: TPanel;
    ListBoxTheta: TListBox;
    ButtonTabbrechen: TButton;
    Text: TMenuItem;
    Textschreiben: TMenuItem;
    TFry: TMenuItem;
    TDalpha: TMenuItem;
    Trueck: TMenuItem;
    RueckFry: TMenuItem;
    RueckDAlpha: TMenuItem;
    PanelTextF: TPanel;
    LabelText: TLabel;
    LabelReturn: TLabel;
    MaskEditTextF: TMaskEdit;
    PanelPlazierenF: TPanel;
    LabelPlazierenF: TLabel;
    PanelTextD: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    MaskEditTextD: TMaskEdit;
    PanelPlazierenD: TPanel;
    LabelPlazierenD: TLabel;
    SpeedTextF: TSpeedButton;
    SpeedTextD: TSpeedButton;
    SpeedUnTextF: TSpeedButton;
    SpeedUnTextD: TSpeedButton;
    ListBoxWinkel: TListBox;
    LabelWinkel: TLabel;
    Paneldrucken: TPanel;
    GroupBoxdrucken: TGroupBox;
    LabelLaenge: TLabel;
    Panel8: TPanel;
    LabelEcke: TLabel;
    LabelXdrucken: TLabel;
    LabelYdrucken: TLabel;
    MaskEditLinks: TMaskEdit;
    MaskEditOben: TMaskEdit;
    Panel11: TPanel;
    LabelUnterschrift: TLabel;
    LabelSchrift: TLabel;
    MaskEditUnterschrift: TMaskEdit;
    ListBoxSchrift: TListBox;
    ButtonDrucken: TButton;
    ButtonAbbrechen: TButton;
    MaskEditLaenge: TMaskEdit;
    RadioGroup: TRadioGroup;
    RadioRechts: TRadioButton;
    RadioZentriert: TRadioButton;
    RadioLinks: TRadioButton;
    procedure ButtonBeendenClick(Sender: TObject);
    procedure ButtonStartClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FarbePunkteClick(Sender: TObject);
    procedure ButtonDruckenClick(Sender: TObject);
    procedure ListBoxSchriftClick(Sender: TObject);
    procedure MaskEditSchriftKeyPress(Sender: TObject; var Key: Char);
    procedure HilfeClick(Sender: TObject);
    procedure HandbuchClick(Sender: TObject);
    procedure SpeedHilfeClick(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure SpeedFarbeClick(Sender: TObject);
    procedure SpeedDruckenClick(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
    procedure SpeedLiteraturClick(Sender: TObject);
    procedure ButtonZuruckClick(Sender: TObject);
    procedure SpeedEinrichtenClick(Sender: TObject);
    procedure ProjektionClick(Sender: TObject);
    procedure MaskEditZoomKeyPress(Sender: TObject; var Key: Char);
    procedure PunktgroesseClick(Sender: TObject);
    procedure ListBoxPGroesseClick(Sender: TObject);
    procedure ImageAuswertungMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure ImageAuswertungMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure ImageAuswertungMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ButtonUhrClick(Sender: TObject);
    procedure ButtongegenUhrClick(Sender: TObject);
    procedure Kurve;
    procedure ButtonUebertragenClick(Sender: TObject);
    procedure SpeedPGroesseClick(Sender: TObject);
    procedure SpeedNeuClick(Sender: TObject);
    procedure SpeedLangeAchseClick(Sender: TObject);
    procedure SpeedKurzeAchseClick(Sender: TObject);
    procedure SpeedDrehenClick(Sender: TObject);
    procedure SpeedGroesseClick(Sender: TObject);
    procedure SpeedFryDruckenClick(Sender: TObject);
    procedure SpeedProjektionClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ShowHint (Sender: TObject);
    procedure MaskEditBBreiteKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditBHoeheKeyPress(Sender: TObject; var Key: Char);
    procedure CheckBoxBildClick(Sender: TObject);
    procedure SpeedBGroesseFClick(Sender: TObject);
    procedure SpeedBGroesseDClick(Sender: TObject);
    procedure NNUmrissClick(Sender: TObject);
    procedure FryTransparentClick(Sender: TObject);
    procedure NNTransparentClick(Sender: TObject);
    procedure ButtonOKClick(Sender: TObject);
    procedure FryUmrissClick(Sender: TObject);
    procedure FryGefuelltClick(Sender: TObject);
    procedure FryNeuClick(Sender: TObject);
    procedure LangeAchseClick(Sender: TObject);
    procedure KurzeAchseClick(Sender: TObject);
    procedure GroesseaendernClick(Sender: TObject);
    procedure FryLoeschenClick(Sender: TObject);
    procedure FryDrehenClick(Sender: TObject);
    procedure NNFlaecheFarbeClick(Sender: TObject);
    procedure NNLoeschenClick(Sender: TObject);
    procedure SpeedFryUmrissClick(Sender: TObject);
    procedure SpeedFryTransparentClick(Sender: TObject);
    procedure SpeedFryFlaecheClick(Sender: TObject);
    procedure SpeedFryLoeschenClick(Sender: TObject);
    procedure SpeedNNUmrissClick(Sender: TObject);
    procedure SpeedNNTransparentClick(Sender: TObject);
    procedure SpeedNNLoeschenClick(Sender: TObject);
    procedure DPunkteClick(Sender: TObject);
    procedure ListBoxAuswertungClick(Sender: TObject);
    procedure ListBoxThetaClick(Sender: TObject);
    procedure SpeedSpeichernFryClick(Sender: TObject);
    procedure SpeedThetaspeichernClick(Sender: TObject);
    procedure FontClick(Sender: TObject);
    procedure SpeedFontClick(Sender: TObject);
    procedure Dspeichern1Click(Sender: TObject);
    procedure DspeichernUnterClick(Sender: TObject);
    procedure BGroesseFClick(Sender: TObject);
    procedure FrySpeichernClick(Sender: TObject);
    procedure DBGroesseClick(Sender: TObject);
    procedure DAspeichernClick(Sender: TObject);
    procedure DinstallierenClick(Sender: TObject);
    procedure FryDruckenClick(Sender: TObject);
    procedure DDruckerEinrichtenClick(Sender: TObject);
    procedure DAdruckenClick(Sender: TObject);
    procedure HintergrundClick(Sender: TObject);
    procedure RahmenClick(Sender: TObject);
    procedure DiagrammClick(Sender: TObject);
    procedure KoordinatenClick(Sender: TObject);
    procedure ButtonAabbrechenClick(Sender: TObject);
    procedure ButtonTabbrechenClick(Sender: TObject);
    procedure TFryClick(Sender: TObject);
    procedure TDalphaClick(Sender: TObject);
    procedure MaskEditTextFKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditTextDKeyPress(Sender: TObject; var Key: Char);
    procedure ImageThetaMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure RueckFryClick(Sender: TObject);
    procedure RueckDAlphaClick(Sender: TObject);
    procedure SpeedTextFClick(Sender: TObject);
    procedure SpeedTextDClick(Sender: TObject);
    procedure SpeedUnTextFClick(Sender: TObject);
    procedure SpeedUnTextDClick(Sender: TObject);
    procedure ListBoxWinkelClick(Sender: TObject);
    procedure MaskEditLaengeChange(Sender: TObject);
    procedure MaskEditLinksChange(Sender: TObject);
    procedure MaskEditObenChange(Sender: TObject);
    procedure RadioLinksClick(Sender: TObject);
    procedure RadioZentriertClick(Sender: TObject);
    procedure RadioRechtsClick(Sender: TObject);
    procedure MaskEditUnterschriftKeyPress(Sender: TObject; var Key: Char);
    procedure ButtonAbbrechenClick(Sender: TObject);
  end;

var
  Form67       : TForm67;
  BFaktor      : boolean;
  Links        : word;
  Laenge       : word;
  Oben         : word;
  TextS        : string;
  DurchX       : array[0..4] of word;
  DurchY       : array[0..4] of word;
  Pgroesse     : byte;
  PunktG       : boolean;
  PunktS       : string;
  Fphi, Phi2   : integer;
  Nphi         : integer;
  Lang, Kurz   : real;
  R            : real;
  RS           : string[4];
  PhiS         : string;
  FryBild      : TBitmap;
  ThetaBild    : TBitmap;
  Ziehen       : boolean;
  X1, X2, X0   : word;
  Y1, Y2, Y0   : word;
  Flang, Fkurz : real;
  Nlang, Nkurz : real;
  Farbe        : TColor;
  AchseS       : string;
  Rf, Rg       : real;
  Punkt        : array[0..360] of TPoint;
  Grosse       : boolean;
  CurrentFile  : string;
  Dbild        : string;
  BKurve       : boolean;
  RatioF       : real;
  RatioD       : real;
  BildF        : boolean;
  BildD        : boolean;
  BHoeheF      : word;
  BHoeheD      : word;
  NElPlot      : boolean;
  FElPlot      : boolean;
  NameS        : string;
  BTitel       : boolean;
  NNTitel      : boolean;
  DFarbe       : TColor;
  DNameS       : string;
  Bild         : TBitmap;
  Wieder       : boolean;
  TeSF         : string;
  TeSD         : string;
  BTextF       : boolean;
  BTextD       : boolean;
  TextBitmapF  : array[1..10] of TBitmap;
  TextBitmapD  : array[1..10] of TBitmap;
  textFi       : byte;
  textDi       : byte;
  Winkel       : word;
  Druck        : byte;

implementation
Uses Unit65, Unit66, Unit72;
{$R *.DFM}

procedure TForm67.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm67.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm67.FormActivate(Sender: TObject);
var
  ZoomS : string;
  Dez   : byte;
  i     : word;
begin
  Top    := TopDiag + 2*ULap;
  Left   := LeftDiag + 2*ULap;
  Height := HeiDiag;
  Width  := WidDiag;
  Form67.Caption             := 'Fabric8: '+Tx(1075);
  setlength (FryX,Maxdaten);
  setlength (FryY,Maxdaten);
  setlength (FryR,MaxDaten);
  Wieder := false;
  if WeiterB[67] then Wieder := true;
  WeiterB[67]                := false;
  SpeedFarbe.Hint            := Hilf(365);
  SpeedPGroesse.Hint         := Hilf(556);
  SpeedFryUmriss.Hint        := Hilf(435);
  SpeedFryTransparent.Hint   := Hilf(557);
  SpeedFryFlaeche.Hint       := Hilf(558);
  SpeedNeu.Hint              := Hilf(559);
  SpeedLangeAchse.Hint       := Hilf(560);
  SpeedKurzeAchse.Hint       := Hilf(561);
  SpeedDrehen.Hint           := Hilf(562);
  SpeedGroesse.Hint          := Hilf(563);
  SpeedFryLoeschen.Hint      := Hilf(594);
  SpeedNNUmriss.Hint         := Hilf(595);
  SpeedNNTransparent.Hint    := Hilf(596);
  SpeedNNFarbe.Hint          := Hilf(597);
  SpeedNNLoeschen.Hint       := Hilf(598);
  SpeedBGroesseF.Hint        := Hilf(571);
  SpeedBGroesseD.Hint        := Hilf(572);
  SpeedNNname.Hint           := Hilf(604);
  SpeedFryDrucken.Hint       := Hilf(568);
  SpeedDrucken.Hint          := Hilf(569);
  SpeedEinrichten.Hint       := Hilf(505);
  SpeedProjektion.Hint       := Hilf(570);
  SpeedHilfe.Hint            := Hilf(210);
  SpeedHandbuch.Hint         := Hilf(274);
  SpeedLiteratur.Hint        := Hilf(462);
  SpeedSpeichernFry.Hint     := Hilf(684);
  SpeedThetaSpeichern.Hint   := Hilf(685);
  SpeedFont.Hint             := Hilf(686);
  SpeedTextF.Hint            := Hilf(735);
  SpeedTextD.Hint            := Hilf(736);
  SpeedUnTextF.Hint          := Hilf(737);
  SpeedUnTextD.Hint          := Hilf(738);
  SpeedFarbe.Enabled         := false;
  SpeedPGroesse.Enabled      := false;
  SpeedFryUmriss.Enabled     := false;
  SpeedFryFlaeche.Enabled    := false;
  SpeedFryTransparent.Enabled:= false;
  SpeedNeu.Enabled           := false;
  SpeedLangeAchse.Enabled    := false;
  SpeedKurzeAchse.Enabled    := false;
  SpeedDrehen.Enabled        := false;
  SpeedGroesse.Enabled       := false;
  SpeedFryLoeschen.Enabled   := false;
  SpeedNNFarbe.Enabled       := false;
  SpeedNNUmriss.Enabled      := false;
  SpeedNNTransparent.Enabled := false;
  SpeedNNFarbe.Enabled       := false;
  SpeedNNLoeschen.Enabled    := false;
  SpeedBGroesseF.Enabled     := false;
  SpeedBGroesseD.Enabled     := false;
  SpeedNNname.Enabled        := false;
  SpeedFryDrucken.Enabled    := false;
  SpeedDrucken.Enabled       := false;
  SpeedEinrichten.Enabled    := false;
  SpeedProjektion.Enabled    := false;
  PanelDaten.Visible         := false;
  PanelDatei.Visible         := false;
  PanelDalpha.Visible        := false;
  Font.Enabled               := false;
  DPunkte.Enabled            := false;
  PanelSpeed.Visible         := false;
  Daten.Enabled              := false;
  FarbePunkte.Caption        := Tx(662);
  Punktgroesse.Caption       := Tx(1213);
  DPunkte.Caption            := TX(1463);
  FryEllipse.Caption         := TX(1455);
  NearestEllipse.Caption     := Tx(1456);
  GGrafik.Caption            := Tx(281);
  Auswertung.Caption         := Tx(1341);
  Hilfe.Caption              := Tx(162)+' (F1)';
  Handbuch.Caption           := Tx(1055)+' (F2)';
  Literatur.Caption          := Tx(1183)+' (F5)';
  Font.Caption               := Tx(1621);
  Hintergrund.Caption        := Tx(856);
  Rahmen.Caption             := Tx(944);
  FarbePunkte.Enabled        := false;
  Punktgroesse.Enabled       := false;
  FryEllipse.Enabled         := false;
  NearestEllipse.Enabled     := false;
  GGrafik.Enabled            := false;
  Auswertung.Enabled         := false;
  ButtonBeenden.Caption      := Tx(53);
  ButtonZuruck.Caption       := Tx(30);
  Ddrucken.Enabled           := false;
  FryFarbe.Caption           := Tx(275);
  Fryneu.Caption             := Tx(1420);
  LangeAchse.Caption         := Tx(1421);
  FryPlot.Caption            := Tx(1430);
  DADiagramm.Caption         := Tx(1431);
  FrySpeichern.Caption       := Tx(87);
  DSpeichern.Caption         := Tx(87);
  FDruckerEinrichten.Caption := Tx(94);
  DDruckerEinrichten.Caption := Tx(94);
  Fdrucken.Caption           := Tx(1432);
  Ddrucken.Caption           := Tx(1433);
  Daten.Caption              := TX(101);
  Dspeichern1.Caption        := Tx(87);
  DspeichernUnter.Caption    := Tx(88);
  Diagramm.Caption           := Tx(678);
  Koordinaten.Caption        := Tx(729);
  ButtonAabbrechen.Caption   := Tx(1682);
  ButtonTabbrechen.Caption   := Tx(1682);
  Textschreiben.Caption      := Tx(1699);
  LabelText.Caption          := Tx(1700);
  LabelReturn.Caption        := Tx(1701);
  LabelPlazierenF.Caption    := Tx(1702);
  LabelPlazierenD.Caption    := Tx(1702);
  Trueck.Caption             := Tx(1688);
  TFry.Caption               := Tx(1703);
  TDalpha.Caption            := Tx(1704);
  RueckFry.Caption           := Tx(1703);
  RueckDAlpha.Caption        := Tx(1704);
  LabelWinkel.Caption        := Tx(1761);
  LabelFaktor.Caption        := '';
  ListBoxPunkte.Clear;
  MaskEditZoom.Visible  := false;
  with ImageAuswertung.Canvas do
  begin
    Brush.Color := clWhite;
    FillRect(Rect(0,0,ImageAuswertung.Width, ImageAuswertung.Height));
  end;
  with ImageTheta.Canvas do
  begin
    Brush.Color := clWhite;
    FillRect(Rect(0,0,ImageTheta.Width, ImageTheta.Height));
  end;
  BFaktor                    := false;
  FarbePunkte.Enabled        := false;
  GroupBoxDrucken.Visible    := false;
  Links                      := 20;
  Laenge                     := 70;
  Oben                       := 20;
  PanelEllipse.Visible       := false;
  FryUmriss.Caption          := Tx(1083);
  NNUmriss.Caption           := Tx(1083);
  FryFlaeche.Caption         := Tx(1084);
  NNFlaeche.Caption          := Tx(1084);
  NNFlaecheFarbe.Caption     := Tx(275);
  FryGefuellt.Caption        := Tx(275);
  FryLoeschen.Caption        := Tx(952);
  NNLoeschen.Caption         := Tx(952);
  LabelFaktor.Caption        := Tx(1076);
  LabelPunkte.Caption        := Tx(1077);
  LabelFaktor.Visible        := false;
  PanelZahl.Visible          := false;
  Pgroesse                   := 1;
  PunktG                     := true;
  LabelDatei.Caption         := Tx(211);
  Projektion.Caption         := Tx(1145);
  FryTransparent.Caption     := Tx(1418);
  FryFarbe.Caption           := Tx(275);
  DecimalSeparator           := '.';
  MaskEditZoom.EditMask      := '999.999; ; ';
  MaskEditBBreite.EditMask   := '99999;0; ';
  MaskEditBHoehe.EditMask    := '99999;0; ';
  ZoomS                      := FloatToSTrF(FryFaktor,ffFixed,7,3);
  LeerLoeschen(ZoomS);
  Dez := pos('.',ZoomS);
  if length(ZoomS) - Dez = 1 then ZoomS := ZoomS + '00';
  if length(ZoomS) - Dez = 2 then ZoomS := ZoomS + '0';
  ZoomS                      := RightS('000'+ZoomS,7);
  MaskEditZoom.Text          := ZoomS;
  FryNeu.Enabled          := false;
  GroupBoxDrucken.Caption := Tx(1413);
  LabelLaenge.Caption     := Tx(1764);
  LabelEcke.Caption       := Tx(1274);
  LabelXdrucken.Caption   := Tx(1274);
  LabelLaenge.Caption     := Tx(1417);
  FryDrehen.Caption       := Tx(1422);
  ButtonUhr.Caption       := Tx(1762);
  ButtongegenUhr.Caption  := Tx(1763);
  kurzeAchse.Caption      := Tx(1425);
  LabelSchrift.Caption    := Tx(887);
  ButtonDrucken.Caption   := Tx(93);
  NNFarbe.Caption         := Tx(275);
  ListBoxPGroesse.Visible := false;
  Ziehen                  := false;
  ButtonUhr.Visible       := false;
  ButtongegenUhr.Visible  := false;
  ButtonOK.Visible        := false;
  for i := 1 to 20 do
    ListBoxPGroesse.Items.Add (IntToStr(i));
  X0 := ImageAuswertung.Width div 2;
  Y0 := ImageAuswertung.Height div 2;
  ButtonUebertragen.Caption := Tx(1427);
  ButtonUebertragen.Visible := false;
  Groesseaendern.Caption    := Tx(1428);
  Grosse                    := false;
  DADiagramm.Enabled        := false;
  Dbild                     := '';
  BKurve                    := false;
  BGroesseF.Caption         := Tx(1439);
  BildGroesseD.Caption      := Tx(1439);
  LabelBBreite.Caption      := Tx(1440);
  LabelBHoehe.Caption       := Tx(1441);
  BildF                     := false;
  BildD                     := false;
  PanelGroesse.Visible      := false;
  RatioF                    := 460/350;
  RatioD                    := 290/720;
  BBreiteF := ImageAuswertung.Width;
  BBreiteD := ImageTheta.Width;
  NElPlot  := false;
  FElPlot  := false;
  BTitel   := false;
  for i := 1 to 7 do
    ListBoxAuswertung.Items.Add (Tx(1611+i));
  PanelAuswertung.Visible := false;
  for i := 1 to 30 do
    ListBoxWinkel.Items.Add(IntToStr(i));
  for i := 1 to 7 do
    ListBoxTheta.Items.Add (Tx(1611+i));
  PanelTheta.Visible := false;  
  if WeiterF then
  begin
    ButtonStart.Visible   := false;
    ButtonBeenden.Visible := false;
    ButtonStartClick(Sender);
  end;
  PanelTextF.Visible    := false;
  PanelTextD.Visible    := false;
  BTextF                := false;
  BTextD                := false;
  textFi                := 0;
  textDi                := 0;
  RueckFry.Enabled      := false;
  SpeedUnTextF.Enabled  := false;
  RueckDalpha.Enabled   := false;
  SpeedUnTextD.Enabled  := false;
  ListBoxWinkel.Visible := false;
  LabelWinkel.Visible   := false;
end;

procedure TForm67.ButtonZuruckClick(Sender: TObject);
begin
  if not WeiterF then
  begin
    FryX          := Nil;
    FryY          := NIL;
    ZeilePolygonS := NIL;
    PolygonZeileS := NIL;
    FryBild.free;
    ThetaBild.free;
  end;
  Form67.Close;
  if ABild then Form66.Close;
  SetCurrentDir (DirectS);
end;

procedure TForm67.ButtonBeendenClick(Sender: TObject);
begin
  if ZahlGlob > 0 then
  begin
    FryX          := Nil;
    FryY          := NIL;
    ZeilePolygonS := NIL;
    PolygonZeileS := NIL;
  end;
  WeiterB[67] := false;
  FryBild.free;
  ThetaBild.free;
  Form67.Close;
  if ABild then Form66.Close;
  Form65.Close;
  SetCurrentDir (DirectS);
end;

procedure TForm67.ButtonStartClick(Sender: TObject);
var
  i, j, k    : word;
  Datei      : TextFile;
  TextS      : string;
  Co         : integer;
  x, y, l    : word;
  XS, YS     : string;
  Punkt, n   : word;
  ZahlS      : string;
  Flaeche    : real;
  Xp, Yp     : array of word;
  Cx, Cy     : array of real;
  Komma      : byte;
  FryXS      : string;
  FryYS      : string;
  FryRS      : string;
  ZS, RS     : string;
  Z          : word;
  WertS      : string;
  XpS, YpS   : string;
  Nenner     : real;
  Dist, R    : real;
  Alpha      : real;
  MethodeS   : string;
begin
  setlength (Xp, 100);
  setlength (Yp, 100);
  setlength (Cx, Maxdaten);
  setlength (Cy, Maxdaten);
  BHoeheF := round(BBreiteF/RatioF);
  BHoeheD := round(BBreiteD/RatioD);
  ImageAuswertung.Cursor := crArrow;
  LabelEPunkte.Caption   := Tx(1078);
  LabelLang.Caption      := Tx(1079);
  PanelDaten.Visible     := true;
  PanelDatei.Visible     := true;
  Font.Enabled           := true;
  DPunkte.Enabled        := true;
  PanelSpeed.Visible     := true;
  Daten.Enabled          := true;
  RatioF := ImageAuswertung.Width/ImageAuswertung.Height;
  RatioD := ImageTheta.Width/ImageTheta.Height;
  if not Wieder then
  begin
    if not BFaktor then
    begin
      if not plot then
      begin
        i := 0;
        if ausDatei = 'Punkt' then
        begin
          if PunktG then
          begin
            if FryMethodeS = 'konventionell' then
              OpenDialog1.Filter := 'Fry Method (*.fry)|*.FRY';
            if FryMethodeS = 'normiert' then
              OpenDialog1.Filter := 'normatised Fry Method (*.frn)|*.FRN';
            if OpenDialog1.Execute then
            begin
              MaskEditDatei.Text := OpenDialog1.FileName;
              NameS := OpenDialog1.Filename;
              AssignFile(Datei, OpenDialog1.FileName);
              Reset(Datei);
              DecimalSeparator := '.';
              ZahlPunkte := 0;
              while not eof (Datei) do
              begin
                Readln(Datei, TextS);
                if pos('-',TextS) <> 0 then continue;
                inc(i);
                ZS := copy(TextS,1,1);
                Z := ord(ZS[1]);
                while (Z < 48) or (Z > 57) do
                begin
                  delete (TextS,1,1);
                  ZS := copy(TextS,1,1);
                  Z  := ord(ZS[1]);
                end;
                FryXS := '';
                for j := 1 to Length (TextS) do
                begin
                  ZS := copy(TextS,j,1);
                  Z  := ord(ZS[1]);
                  if ((Z >47) and (Z < 58)) or (ZS = DecimalSeparator)
                  then FryXS := FryXS+ZS
                  else break;
                end;
                FryX[i] := StrToFloat(FryXS);
                delete (TextS,1,length(FryXS)+1);
                FryYS := TextS;
                if FryMethodeS = 'normiert' then
                begin
                  FryYS := '';
                  for j := 1 to Length (TextS) do
                  begin
                    ZS := copy(TextS,j,1);
                    Z  := ord(ZS[1]);
                    if ((Z >47) and (Z < 58)) or (ZS = DecimalSeparator)
                    then FryYS := FryYS+ZS
                    else break;
                  end;
                  delete (TextS,1,length(FryYS)+1);
                  FryRS := TextS;
                  delete(FryRS,pos(DecimalSeparator,FryRS)+4,Length(FryRS));
                end;
                FryX[i] := StrToFloat(FryXS);
                FryY[i] := StrToFloat(FryYS);
                FryXS := FloatToStrF(FryX[i],ffFixed,7,2);
                FryYS := FloatToStrF(FryY[i],ffFixed,7,2);
                FryXS := RightS('       '+FryXS,7);
                FryYS := RightS('       '+FryYS,7);
                if FryMethodeS = 'konventionell' then
                  TextS := FryXS+'  '+FryYS;
                if FryMethodeS = 'normiert' then
                begin
                  FryR[i] := StrToFloat(FryRS);
                  FryRS   := FloatToStrF(FryR[i],ffFixed,5,1);
                  FryRS   := RightS('     '+FryRS,5);
                  TextS   := FryXS+' '+FryYS+' '+FryRS;
                end;
                ListBoxPunkte.Items.Add (TextS);
                ZahlPunkte := Zahlpunkte + 1;
              end;
              CloseFile (Datei);
             end;
          end;
        end;
        if ausDatei = 'Polygon' then
        begin
          if PunktG then
          begin
            PolyDatei (OpenDialog1);
            for i := 1 to ZahlGlob do
              ZeilePolygonS[i] := PolygonZeileS[i];
            MaskEditDatei.Text := OpenDialog1.FileName;
            k := 1;
            for j := 1 to ZahlPoly do
            begin
              delete (ZeilePolygonS[k],length(ZeilePolygonS[k]),1);
              Punkt := pos('(',ZeilePolygonS[k]);
              ZahlS := RightS(ZeilePolygonS[k],length(ZeilePolygonS[k])-Punkt);
              Zahl  := StrtoInt(ZahlS);
              Xp[0] := StrtoInt(LeftS(ZeilePolygonS[k+1],3));
              Yp[0] := StrtoInt(RightS(ZeilePolygonS[k+1],3));
              n := 0;
              for i := k+1 to Zahl+k do
              begin
                inc(n);
                Xp[n] := StrtoInt(LeftS(ZeilePolygonS[i],3));
                Yp[n] := StrtoInt(RightS(ZeilePolygonS[i],3));
              end;
              k := k + Zahl + 1;
              Flaeche := 0;
              for l := 0 to n-1 do
                Flaeche := Flaeche + Xp[l]*Yp[l+1]-Xp[l+1]*Yp[l];
              Flaeche := Flaeche + Xp[n]*Yp[0]-Xp[0]*Yp[n];
              Flaeche := Flaeche/2;
              Cx[j] := 0;
              Cy[j] := 0;
              for l := 0 to n-1 do
              begin
                Cx[j] := Cx[j] + (Xp[l]+Xp[l+1])*(Xp[l]*Yp[l+1]-Xp[l+1]*Yp[l]);
                Cy[j] := Cy[j] + (Yp[l]+Yp[l+1])*(Xp[l]*Yp[l+1]-Xp[l+1]*Yp[l]);
              end;
              Cx[j] := Cx[j] + (Xp[n]+Xp[0])
                     *(Xp[n]*Yp[0]-Xp[0]*Yp[n]);
              Cy[j] := Cy[j] + (Yp[n]+Yp[0])
                     *(Xp[n]*Yp[0]-Xp[0]*Yp[n]);
              FryX[j] := Cx[j]/(Flaeche*6);
              FryY[j] := Cy[j]/(Flaeche*6);
              R := 10000;
              for l := 0 to n-1 do
              begin
                Dist := sqrt(sqr(xp[l]-FryX[j])+sqr(yp[l]-FryY[j]));
                if Dist < R then R := Dist;
              end;
              FryR[j] := R;
              XpS     := FloatToStrF(FryX[j],ffFixed,7,2);
              YpS     := FloatToStrF(FryY[j],ffFixed,7,2);
              RS      := FloatToStrF(FryR[j],ffFixed,5,1);
              XpS     := RightS('       '+XpS,7);
              YpS     := RightS('       '+YpS,7);
              RS      := RightS('     '+RS,5);
              TextS   := XpS+' '+YpS+' '+RS;
              ListBoxPunkte.Items.Add (TextS);
            end;  {Poly}
            ZahlPunkte := ZahlPoly;
          end;    {ausDatei}
        end;
      end;      {if not plot}
    end;        {if not BFaktor}
  end;
  X0 := ImageAuswertung.width div 2;
  Y0 := ImageAuswertung.height div 2;
  with ImageAuswertung.Canvas do
  begin
    Brush.Color := HintFarbe;
    Pen.Color   := RahmenFarbe;
    Rectangle(0,0,ImageAuswertung.Width,ImageAuswertung.Height);
    Pen.Color := FryFarbePunkte;
    Brush.Color := FryFarbePunkte;
    for j := 1 to ZahlPunkte do
    begin
      for i := 1 to ZahlPunkte do
      begin
        if i = j then continue;
        if FryMethodeS = 'konventionell' then
        begin
          x := round(X0+FryFaktor*FryX[i]-FryFaktor*FryX[j]);
          y := round(Y0+FryFaktor*FryY[i]-FryFaktor*FryY[j]);
        end;
        if FryMethodeS = 'normiert' then
        begin
          if FryX[i]-FryX[j] <> 0 then
            Alpha := arctan((FryY[i]-FryY[j])/(FryX[i]-FryX[j]))
          else Alpha := Pi/2;
          if (FryX[i]<FryX[j])then Alpha := Alpha+ Pi;
          Dist  := sqrt(sqr(FryX[i]-FryX[j])+sqr(FryY[i]-FryY[j]));
          Dist  := Dist/((FryR[i]+FryR[j])/2);
          x := round(X0+ Dist*cos(Alpha)*FryFaktor);
          y := round(Y0+ Dist*sin(Alpha)*FryFaktor);
        end;
        Ellipse (x-Pgroesse, y+Pgroesse, x+Pgroesse, y-Pgroesse);
      end;
    end;
    Pen.Color   := RahmenFarbe;
    Brush.Color := clWhite;
    Font.Color  := RahmenFarbe;
    Font.Name   := DSchrift;
    Font.Size   := 14;
    rectangle (ImageAuswertung.Width-220,ImageAuswertung.Height-30,
               ImageAuswertung.Width,ImageAuswertung.Height);
    if FryMethodeS = 'konventionell' then MethodeS := Tx(1437);
    if FryMethodeS = 'normiert' then MethodeS := Tx(1438);
    Textout(ImageAuswertung.Width-210,ImageAuswertung.Height-25,
            MethodeS);
    Brush.Color := HintFarbe;
  end;
  for i := 1 to High(PolygonZeileS) do
    ZeilePolygonS[i] := PolygonZeileS[i];
  PanelEllipse.Visible    := true;
  FarbePunkte.Enabled     := true;
  GGrafik.Enabled         := true;
  Hintergrund.Enabled     := true;
  Rahmen.Enabled          := true;
  Font.Enabled            := true;
  SpeedFarbe.Enabled      := true;
  SpeedPGroesse.Enabled   := true;
  SpeedBGroesseF.Enabled  := true;
  SpeedFryDrucken.Enabled := true;
  SpeedEinrichten.Enabled := true;
  LabelZahl.Caption       := IntToStr(ZahlPunkte);
  LabelFaktor.Visible     := true;
  PanelZahl.Visible       := true;
  MaskEditZoom.Visible    := true;
  Punktgroesse.Enabled    := true;
  Xp := Nil;
  Yp := NIL;
  CX := NIl;
  Cy := Nil;
  PunktS := '1';
  AchseS := '';
  FryBild := TBitmap.Create;
  FryBild.Assign(ImageAuswertung.picture.Graphic);
  CurrentFile := '';
  Wieder := true;
end;

procedure TForm67.PunktgroesseClick(Sender: TObject);
begin
  ListBoxPGroesse.Visible := true;
end;

procedure TForm67.SpeedPGroesseClick(Sender: TObject);
begin
  PunktGroesseClick(Sender);
end;

procedure TForm67.DPunkteClick(Sender: TObject);
begin
  if ColorDialog1.Execute then DFarbe := ColorDialog1.Color;
end;

procedure TForm67.ListBoxPGroesseClick(Sender: TObject);
var
  i       : byte;
begin
  PunktG := false;
  for i := 0 to ListboxPGroesse.Items.Count-1 do
  begin
    if ListboxPGroesse.Selected[i] then
      PGroesse := StrToInt(ListBoxPGroesse.Items.Strings[i]);
  end;
  ListBoxPGroesse.Visible := false;
  ButtonStartClick(Sender);
end;

procedure TForm67.MaskEditZoomKeyPress(Sender: TObject; var Key: Char);
var
  FryFaktorS  : string;
  Datei       : TextFile;
  i           : word;
  AltFaktor   : real;
begin
  if Key = chr(13) then
  begin
    LiesConfig;
    AltFaktor  := FryFaktor;
    FryFaktorS := MaskEditZoom.Text;
    LeerLoeschen (FryFaktorS);
    if FryfaktorS = '' then exit
    else
    begin
      Fryfaktor := StrToFloat (FryFaktorS);
      KonfigZeileS[89] := 'Enlargement (Fry-method)   :,'+FloatToStr(FryFaktor);
      assignFile(Datei,FabricS+'\'+'Fabric.ini');
      rewrite (Datei);
      for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
      closefile (Datei);
      BFaktor  := true;
      ButtonStartClick(Sender);
      Nlang := Nlang*FryFaktor/AltFaktor;
      Nkurz := Nkurz*FryFaktor/AltFaktor;
      Flang := Flang*FryFaktor/AltFaktor;
      Fkurz := Fkurz*FryFaktor/AltFaktor;;
      With ImageAuswertung.Canvas do
      begin
        if NElPlot then
        begin
          Pen.Color   := NNFarbeEllipse;
          if NellipseStilS = 'transparent' then
            Brush.Style := bsClear;
          if NellipseStils = 'Farbe' then
          begin
            Brush.Style := bsSolid;
            Brush.Color := NNFarbeFlaeche;
          end;
          RotEllipse(Nlang,Nkurz,Nphi,ImageAuswertung.Width div 2,
                     ImageAuswertung.Height div 2,Punkt);
          Polygon (Punkt);
        end;
        if FElPlot then
        begin
          Pen.Color   := FryFarbeEllipse;
          if FellipseStilS = 'transparent' then
            Brush.Style := bsClear;
          if FellipseStils = 'Farbe' then
          begin
            Brush.Style := bsSolid;
            Brush.Color := FryFarbeFlaeche;
          end;
          RotEllipse(Flang,Fkurz,Fphi,ImageAuswertung.Width div 2,
                     ImageAuswertung.Height div 2,Punkt);
          Polygon (Punkt);
          Brush.Color := clWhite;
          Rectangle (0,ImageAuswertung.Height-60,90,ImageAuswertung.Height);
          Font.Color := FryFarbeEllipse;
          Font.Size  := 14;
          Font.Name  := 'Times New Roman';
          Textout(5,ImageAuswertung.Height-50,'R = '+RS);
          Font.Name := 'Symbol';
          Textout(5,ImageAuswertung.Height-30,'j = '+ PhiS+'°');
        end;
      end;
    end;
  end;
  Brush.Color := HintFarbe;
  if DemoB then DemoText(ImageAuswertung.Canvas,10,10);
end;

procedure TForm67.ImageAuswertungMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  LangX1 : word;
  LangX2 : word;
  LangY1 : word;
  LangY2 : word;
  TnPhi  : real;
  Bo     : real;
  Punkt  : array[0..360] of TPoint;
begin
  If BTextF then exit;
  Bo := Pi/180;
  if ssLeft in Shift then
  begin
    if (PunktS='1') or (PunktS='2') or (PunktS='3')
    or (PunktS='4') then
    begin
      With ImageAuswertung.Canvas do
      begin
        Pen.Color   := DFarbe; // FryFarbeEllipse;
        Brush.Color := DFarbe; // FryFarbeEllipse;
        Ellipse (x-2,y-2,x+2,y+2);
      end;
    end;
    if PunktS = '1' then
    begin
      DurchX[1] := x;
      DurchY[1] := Y;;
      PunktS   := '2';
      exit;
    end;
    if PunktS = '2' then
    begin
      DurchX[2] := x;
      DurchY[2] := y;
      PunktS    := '3';
      LabelLang.Caption := Tx(1426);
      exit;
    end;
    if PunktS = '3' then
    begin
      DurchX[3] := x;
      DurchY[3] := y;
      PunktS    := '4';
      exit;
    end;
    if PunktS = '4' then
    begin
      FElPlot   := true;
      DurchX[4] := x;
      DurchY[4] := Y;
      Lang   := sqrt(sqr(DurchX[1]-DurchX[2])
                + sqr(DurchY[1]-DurchY[2]));
      LangX1 := min(DurchX[1],DurchX[2]);
      LangX2 := max(DurchX[1],DurchX[2]);
      if LangX1 = DurchX[1] then
      begin
        LangY1 := DurchY[1];
        LangY2 := DurchY[2];
      end
      else
      begin
        LangY1 := DurchY[2];
        LangY2 := DurchY[1];
      end;
      TnPhi := (LangY1-LangY2)/(LangX2-LangX1);
      Fphi   := round(arctan(TnPhi)/Bo);
      if Fphi < -90 then Fphi := 180 + FPhi;
      if Fphi > 90 then Fphi := Fphi - 180;
      PhiS  := IntToStr(FPhi);
      FryNeu.Enabled              := true;
      SpeedFryFlaeche.Enabled     := true;
      SpeedFryTransparent.Enabled := true;
      SpeedFryFlaeche.Enabled     := true;
      SpeedNeu.Enabled            := true;
      SpeedLangeAchse.Enabled     := true;
      SpeedKurzeAchse.Enabled     := true;
      SpeedGroesse.Enabled        := true;
      SpeedDrehen.Enabled         := true;
      SpeedFryLoeschen.Enabled    := true;
      Kurz := sqrt(sqr(DurchX[3]-DurchX[4])
              + sqr(DurchY[3]-DurchY[4]));
      R  := Lang/Kurz;
      RG := R;
      str(R:4:2,RS);
      Flang := Lang;
      Fkurz := Kurz;
      with ImageAuswertung.Canvas do
      begin
        Draw(0,0,FryBild);
        Brush.Color := clWhite;
        Pen.Color   := FryFarbeEllipse;
        Font.Color  := FryFarbeEllipse;
        Rectangle (0,ImageAuswertung.Height-60,90,ImageAuswertung.Height);
        Font.Size := 14;
        Font.Name := DSchrift;
        Textout(5,ImageAuswertung.Height-50,'R = '+RS);
        Font.Name := 'Symbol';
        Textout(5,ImageAuswertung.Height-30,'j = '+ PhiS+'°');
        Pen.Color := FryFarbeEllipse;
        moveto (0,ImageAuswertung.Height div 2);
        lineto (ImageAuswertung.width,ImageAuswertung.Height div 2);
        if FellipseStilS = 'transparent' then Brush.Style := bsClear;
        if FellipseStilS = 'Farbe' then
        begin
          Brush.Style := bsSolid;
          Brush.Color := FryFarbeFlaeche;
        end;
        RotEllipse(FLang,FKurz,Fphi,ImageAuswertung.Width div 2,
                   ImageAuswertung.Height div 2,Punkt);
        Pen.Color := FryFarbeEllipse;
        Polygon (Punkt);
      end;
      PanelDalpha.Visible := true;
      if DemoB then DemoText (ImageAuswertung.Canvas,10,10);
      PanelEllipse.Visible   := false;
      LabelEPunkte.Visible   := false;
      LabelLang.Visible      := false;
      PunktS                 := '';
      DADiagramm.Enabled     := true;
      SpeedFryUmriss.Enabled := true;
      FryEllipse.Enabled     := true;
      SpeedBGroesseD.Enabled := true;
      SpeedNNname.Enabled    := true;
      Kurve;
    end;
    if PunktS = '5' then
    begin
      with ImageAuswertung.Canvas do
      begin
        if Pixels[x,y] = Farbe
        then Ziehen := true else Ziehen := false;
        Pen.Color := FryFarbeEllipse;
        RotEllipse(Flang,Fkurz,Fphi,X0,Y0,Punkt);
        Polygon (Punkt);
      end;
    end;
    if PunktS = '6' then
    begin
      with ImageAuswertung.Canvas do
      begin
        if Pixels[x,y] = Farbe
        then Grosse := true else Grosse := false;
        Pen.Color := FryFarbeEllipse;
        RotEllipse(Flang,Fkurz,FPhi,X0,Y0,Punkt);
        Polygon (Punkt);
      end;
    end;
  end;
end;

procedure TForm67.ImageAuswertungMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
var
  Punkt : array[0..360] of TPoint;
  Bo    : real;
begin
  Bo := Pi/180;
  with ImageAuswertung.Canvas do
  begin
    if Ziehen then
    begin
      Draw(0,0,FryBild);
      Brush.Style := bsSolid;
      Brush.Color := Farbe;
      Pen.Color   := Farbe;
      if AchseS = 'lang' then
      begin
        Flang := 2*sqrt(sqr(x - X0) + sqr(Y0 - y));
        if Flang < Fkurz then Flang := Fkurz;
        X1 := X0 + round(Flang*cos(Fphi*Bo)/2)+10;
        Y1 := Y0 - round(Flang*sin(Fphi*Bo)/2 +10*Fphi/abs(Fphi));
      end;
      if AchseS = 'kurz' then
      begin
        Fkurz := 2*sqrt(sqr(X0 - x - 10) + sqr(Y0 - y - 10));
        if Fkurz > Flang then Fkurz := Flang;
        X1 := X0 - round(Fkurz*cos((Fphi+90)*Bo)/2 -10*Fphi/abs(Fphi));
        Y1 := Y0 + round(Fkurz*sin((Fphi+90)*Bo)/2) +10;;
      end;
      ellipse(X1-5,Y1-5,X1+5,Y1+5);
      Pen.Color   := FryFarbeEllipse;
      Brush.Style := bsClear;
      RotEllipse(Flang,FKurz,Fphi,X0,Y0,Punkt);
      Polygon (Punkt);
    end;
    if Grosse then
    begin
      Draw(0,0,FryBild);
      Brush.Style := bsSolid;
      Brush.Color := Farbe;
      Pen.Color   := Farbe;
      Flang := 2*sqrt(sqr(x - X0) + sqr(Y0 - y));
      Fkurz := FLang/R;
      X1 := X0 + round(FKurz*cos((90-Fphi)*Bo)/2 + FLang*cos(Fphi*Bo)/2);
      Y1 := Y0 + round(FKurz*sin((90-Fphi)*Bo)/2 - FLang*sin(Fphi*Bo)/2);
      ellipse(X1-5,Y1-5,X1+5,Y1+5);
      Pen.Color   := FryFarbeEllipse;
      Brush.Style := bsClear;
      Pen.Color := FryFarbeEllipse;
      RotEllipse(Flang,Fkurz,Fphi,X0,Y0,Punkt);
      Polygon (Punkt);
    end;
    if NElPlot then
    begin
      Pen.Color   := NNFarbeEllipse;
      Brush.Style := bsClear;
      RotEllipse(Nlang,Nkurz,Nphi,ImageAuswertung.Width div 2,
                 ImageAuswertung.Height div 2,Punkt);
      Polygon (Punkt);
    end;
  end;  
end;

procedure TForm67.ImageAuswertungMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  Punkt : array[0..360] of TPoint;
begin
  if Ziehen or Grosse then
  begin
    Rg := Flang/Fkurz;
    RS := FloatToStrF(Flang/Fkurz, ffFixed,6,2);
    With ImageAuswertung.Canvas do
    begin
      Draw(0,0,FryBild);
      Brush.Style := bsClear;
      if Grosse then Pen.Color := FryFarbePunkte;
      if Ziehen then Pen.Color := FryFarbeEllipse;
      Pen.Color := FryFarbeEllipse;
      RotEllipse(FLang,Fkurz,Fphi,X0,Y0,Punkt);
      Polygon(Punkt);
      if NElPlot then
      begin
        Pen.Color   := NNFarbeEllipse;
        Brush.Style := bsClear;
        RotEllipse(Nlang,Nkurz,Nphi,ImageAuswertung.Width div 2,
                   ImageAuswertung.Height div 2,Punkt);
        Polygon (Punkt);
      end;
      Brush.Color := clWhite;
      Pen.Color   := FryFarbeEllipse;
      Font.Color  := FryFarbeEllipse;
      Rectangle (0,ImageAuswertung.Height-60,90,ImageAuswertung.Height);
      Font.Size := 14;
      Font.Name := DSchrift;
      Textout(5,ImageAuswertung.Height-50,'R = '+RS);
      Font.Name := 'Symbol';
      PhiS := IntTostr(FPhi);
      Textout(5,ImageAuswertung.Height-30,'j = '+ PhiS+'°');
      Pen.Color := FryFarbeEllipse;
      moveto (0,ImageAuswertung.Height div 2);
      lineto (ImageAuswertung.width,ImageAuswertung.Height div 2);
    end;
    if (AchseS = 'lang') or (AchseS = 'kurz') then Kurve;
    PunktS              := '';
    AchseS              := '';
    Ziehen              := false;
    Grosse              := false;
  end;
  Font.Enabled        := false;
  Hintergrund.Enabled := false;
  Rahmen.Enabled      := false;
  if BTextF then
  begin
    inc (textFi);
    TextBitmapF[textFi] := Tbitmap.Create;
    TextBitmapF[textFi].Assign(ImageAuswertung.Picture);
    with ImageAuswertung.Canvas do
    begin
      Brush.Color := DiagrFarbe;
      Font.Name   := DSchrift;
      Font.Size   := DGroesse;
      Font.Color  := DFarbe;
      Font.Style  := DStyle;
    end;
    ImageAuswertung.Canvas.TextOut(x,y,TeSF);
    PanelTextF.Visible := false;
    BTextF := false;
    RueckFry.Enabled     := true;
    SpeedUnTextF.Enabled := true;
  end;
end;

procedure TForm67.Kurve;
var
  i, j, k  : word;
  Distanz  : real;
  Theta    : real;
  TanTheta : real;
  x, y     : word;
  Nenner   : real;
  Mittel   : array[0..180] of real;
  SMittel  : array[0..180] of real;
  Zaehler  : array[0..180] of word;
  ZaehlMax : real;
  ZaehlMin : real;
  unten    : word;
  oben     : word;
  rechts   : word;
  links    : word;
  RfS      : string;
  l        : integer;
  X1, X2   : real;
  Y1, Y2   : real;
  Lam1     : real;
  Lam2     : real;
  Radius   : real;
  d        : array[0..180] of real;
  dmax     : real;
  dmin     : real;
  sig      : shortint;
  Ende     : word;
  FNenner  : real;
begin
  BKurve := true;
  PanelEllipse.Visible   := false;
  Bo   := Pi/180;
  sig  := 1;
  with ImageTheta.Canvas do
  begin
    Brush.Color := HintFarbe;
    Pen.Color   := RahmenFarbe;
    rectangle (0,0,ImageTheta.Width,ImageTheta.Height);  //äußere Rechteck
  end;
  for k := 0 to 179 do
  begin
    Zaehler[k] := 0;
    Mittel[k]  := 0;
    l := k - 90;
    for i := 1 to ZahlPunkte do
    begin
      for j := 1 to ZahlPunkte do
      begin
        if i > j then
        begin
          if FryX[i] > FryX[j] then
          begin
            Y1 := FryY[j];
            Y2 := FryY[i];
            X1 := FryX[j];
            X2 := FryX[i];
          end
          else
          begin
            Y1 := FryY[i];
            Y2 := FryY[j];
            X1 := FryX[i];
            X2 := FryX[j];
          end;
          if FryMethodeS = 'konventionell' then FNenner := 1;
          if FryMethodeS = 'normiert' then FNenner := (FryR[i]+FryR[j])/2;
          Distanz  := (sqrt(sqr(x2-x1)+sqr(y2-y1)))/FNenner;
          Nenner   := abs(X2-X1);
          if Nenner = 0 then Nenner := 0.001;
          TanTheta := (Y2-Y1) / Nenner;
          Theta    := sig*arctan (TanTheta)/Bo;
          if (Theta >= l-2) and (Theta < (l+1)+2) then
          begin
            Mittel[k] := Mittel[k] + Distanz;
            inc (Zaehler[k]);
          end;
        end;
      end;
    end;
  end;
  for i := 0 to 179 do
  begin
    if Zaehler[i] > 0 then Mittel[i] := Mittel[i]/Zaehler[i]
    else Mittel[i] := 0;
  end;
  for i := 2 to 177 do
  begin
    SMittel[i] := (Mittel[i-2]+Mittel[i-1]+Mittel[i]+Mittel[i+1]+Mittel[i+2])/5;
  end;
  SMittel[1]   := (Mittel[179]+Mittel[0]+Mittel[1]+Mittel[2]+Mittel[3])/5;
  SMittel[0]   := (Mittel[178]+Mittel[179]+Mittel[0]+Mittel[1]+Mittel[2])/5;
  SMittel[179] := (Mittel[177]+Mittel[178]+Mittel[179]+Mittel[0]+Mittel[1])/5;
  SMittel[178] := (Mittel[176]+Mittel[177]+Mittel[178]+Mittel[179]+Mittel[0])/5;
  ZaehlMax   := 0;
  ZaehlMin   := 100000;
  for i := 0 to 179 do
  begin
    if SMittel[i] > ZaehlMax then
    begin
      ZaehlMax := SMittel[i];
      Phi2     := i;
    end;
    if SMittel[i] < ZaehlMin then ZaehlMin := SMittel[i];
  end;
  sig := -sig;
  for i := 0 to 179 do SMittel[i] := SMittel[i] - ZaehlMin;
  R := ZaehlMax/ZaehlMin;
  ZaehlMax := ZaehlMax - ZaehlMin;
  links  := 80;
  unten  := ImageTheta.Height - 50;
  rechts := ImageTheta.Width - 20;
  oben   := 20;
  with ImageTheta.Canvas do
  begin
    Pen.Color   := KoordinFarbe;
    Brush.Color := DiagrFarbe;
    Rectangle (links,oben-2,rechts,unten+2); //Diagramm
    Font.Size := 12;
    Font.Name := DSchrift;
    y := unten;
    Brush.Color := HintFarbe;
    Font.Color := KoordinFarbe;
    for i := 0 to 18 do
    begin
      x := links + round((rechts-links)*i/18);
      moveto (x, y);
      lineto (x, unten+5);
      Textout (x-7,y+5,InttoStr(-90+i*10)+'°');  //Abszisse
    end;
    x := links-10;
    for i := 0 to 10 do
    begin
      y := round(unten-i*(unten-oben)/10);
      moveto (x,y);
      lineto (links,y);
      Textout(x-35,y-10,IntToStr(round(i*ZaehlMax/10))); //Ordinate
    end;
//errechneter Kurve
    Pen.Color   := NNFarbeEllipse;
    moveto(links,unten-round((unten-oben)*SMittel[0]/ZaehlMax));
    for i := 0 to 179 do
    begin
      x := links+round((rechts-links)*i/179);
      y := unten-round((unten-oben)*SMittel[i]/ZaehlMax);
      lineto(x,y);
    end;
    if Rg > 1.01 then
    begin
      Radius := sqrt(FLang*FKurz);
      Lam1   := 1/sqr(FLang/Radius);
      Lam2   := 1/sqr(Fkurz/Radius);;
      dmax   := 0;
      dmin   := 10000;
      for i := 0 to 179 do
      begin
        d[i] := 1/sqrt(Lam1*sqr(cos((Fphi-i)*Bo))
                   +Lam2*sqr(sin((Fphi-i)*Bo)))-1;
        if d[i] > dmax then dmax := d[i];
        if d[i] < dmin then dmin := d[i];
      end;
//Fry-Kurve
      Pen.Color := FryFarbeEllipse;
      for i := 0 to 179 do d[i] := d[i] - dmin;
      moveto (links,unten-round((unten-oben)*d[0])-1);
      for i := 0 to 179 do
      begin
        k := i + 90;
        if i >=90 then k := i - 90;
        x := links+round((rechts-links)*i/180);
        y := unten-round((unten-oben)*d[k]/(dmax-dmin))-1;
        lineto (x,y);
      end;
    end;
    x := links+round((rechts-links)*(Phi2)/180);
    y := oben;
    Pen.Color := KoordinFarbe;  //NNFarbeEllipse;
    moveto (x,y);
    lineto (x,unten);
    if Rg > 1.01 then
    begin
      Pen.Color := FryFarbeEllipse;
      x := links+round((rechts-links)*(FPhi+90)/180);
      moveto (x,oben);
      lineto (x,unten);
    end;
    str(R:4:2,RfS);
    Phi2      := Phi2-90;
    Font.Size := 14;
    Font.Color := KoordinFarbe;   //NNFarbeEllipse;
    Textout(links,unten+23,'R = '+RfS);
    Font.Name := 'Symbol';
    Textout(links+100,unten+23,'j = '+IntToStr(Phi2)+'°');
    Font.Size   := 20;
    Brush.Style := bsClear;
    Textout (rechts-22,unten+20,'a');
    Font.Name := DSchrift;
    Textout (links-70,oben-20,'d');
  end;
  ButtonUebertragen.Visible  := true;
  Ddrucken.Enabled           := true;
  SpeedDrucken.Enabled       := true;
  if AusDatei = 'Polygon' then
  begin
    if not WeiterF then
      Auswertung.Enabled := true;
    SpeedProjektion.Enabled := true;
  end;
  ThetaBild := TBitmap.Create;
  ThetaBild.Assign(ImageTheta.Picture.Graphic);
  HintFarbe := DiagrFarbe;
  if DemoB then DemoText (ImageTheta.Canvas,ImageTheta.Width-200,20);
  Brush.Color := HintFarbe;
end;

procedure TForm67.FarbePunkteClick(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  FarbeS : string;
begin
  if ColorDialog1.Execute then FryFarbePunkte := ColorDialog1.Color;
  FarbeS := ColorToString (FryFarbePunkte);
  KonfigZeileS[91] := 'Colour of points (Fry)     :,'+FarbeS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  BFaktor := true;
  ButtonStartClick (Sender);
  if BKurve then Kurve;
end;

procedure TForm67.SpeedFarbeClick(Sender: TObject);
begin
  FarbePunkteClick(Sender);
end;

procedure TForm67.FryUmrissClick(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  FarbeS : string;
begin
  if ColorDialog1.Execute then FryFarbeEllipse := ColorDialog1.Color;
  FarbeS := ColorToString (FryFarbeEllipse);
  KonfigZeileS[90]  := 'Colour of ellipse (Fry)    :,'+FarbeS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  BFaktor := true;
  with ImageAuswertung.Canvas do
  begin
    Draw(0,0,FryBild);
    Pen.Color := FryFarbeEllipse;
    moveto (0,ImageAuswertung.height div 2);
    lineto (ImageAuswertung.width,ImageAuswertung.height div 2);
    Brush.Color := clWhite;
    Rectangle (0,ImageAuswertung.Height-60,90,ImageAuswertung.Height);
    Font.Color := FryFarbeEllipse;
    Font.Size  := 14;
    Font.Name  := 'Times New Roman';
    Textout(5,ImageAuswertung.Height-50,'R = '+RS);
    Font.Name := 'Symbol';
    Textout(5,ImageAuswertung.Height-30,'j = '+ PhiS+'°');
    if NElPlot then
    begin
      if NellipseStilS = 'transparent' then
        Brush.Style := bsClear;
      if NellipseStils = 'Farbe' then
      begin
        Brush.Style := bsSolid;
        Brush.Color := NNFarbeFlaeche;
      end;
      Pen.Color   := NNFarbeEllipse;
      RotEllipse(Nlang,Nkurz,Nphi,ImageAuswertung.Width div 2,
                 ImageAuswertung.Height div 2,Punkt);
      Polygon(Punkt);
    end;
    if FElPlot then
    begin
      Pen.Color := FryFarbeEllipse;
      RotEllipse(Flang,Fkurz,Fphi,ImageAuswertung.Width div 2,
                 ImageAuswertung.Height div 2,Punkt);
      Polygon (Punkt);
    end;
    Brush.Color := clWhite;
    Pen.Color   := FryFarbeEllipse;
    Font.Color  := FryFarbeEllipse;
    Rectangle (0,ImageAuswertung.Height-60,90,ImageAuswertung.Height);
    Font.Size := 14;
    Font.Name := 'Times New Roman';
    Textout(5,ImageAuswertung.Height-50,'R = '+RS);
    Font.Name := 'Symbol';
    Textout(5,ImageAuswertung.Height-30,'j = '+ PhiS+'°');
  end;
  Kurve;
end;

procedure TForm67.SpeedFryUmrissClick(Sender: TObject);
begin
  FryUmrissClick(Sender);
end;

procedure TForm67.FryTransparentClick(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
begin
  FEllipseStilS := 'transparent';
  Bo := Pi/180;
  KonfigZeileS[114] := 'Brushstyle of ellipse (Fry):,transparent';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  BFaktor := true;
  with ImageAuswertung.Canvas do
  begin
    Draw(0,0,FryBild);
    Brush.Color := clWhite;
    Pen.Color   := FryFarbeEllipse;
    Font.Color  := FryFarbeEllipse;
    Rectangle (0,ImageAuswertung.Height-60,90,ImageAuswertung.Height);
    Font.Size := 14;
    Font.Name := 'Times New Roman';
    Textout(5,ImageAuswertung.Height-50,'R = '+RS);
    Font.Name := 'Symbol';
    Textout(5,ImageAuswertung.Height-30,'j = '+ PhiS+'°');
    Pen.Color := FryFarbeEllipse;
    moveto (0,ImageAuswertung.height div 2);
    lineto (ImageAuswertung.width,ImageAuswertung.height div 2);
    RotEllipse(FLang,FKurz,Fphi,ImageAuswertung.Width div 2,
               ImageAuswertung.Height div 2,Punkt);
    Brush.Style := bsClear;
    Polygon (Punkt);
    if NElPlot then
    begin
      if NellipseStilS = 'transparent' then
        Brush.Style := bsClear;
      if NellipseStils = 'Farbe' then
      begin
        Brush.Style := bsSolid;
        Brush.Color := NNFarbeFlaeche;
      end;
      Pen.Color   := NNFarbeEllipse;
      RotEllipse(Nlang,Nkurz,Nphi,ImageAuswertung.Width div 2,
                 ImageAuswertung.Height div 2,Punkt);
      Polygon(Punkt);
    end;
  end;
  Kurve;
end;

procedure TForm67.SpeedFryTransparentClick(Sender: TObject);
begin
  FryTransparentClick(Sender);
end;

procedure TForm67.FryGefuelltClick(Sender: TObject);
var
  Datei   : TextFile;
  i        : word;
  FarbeS   : string;
begin
  FellipseStilS := 'Farbe';
  if ColorDialog1.Execute then FryFarbeFlaeche := ColorDialog1.Color;
  FarbeS := ColorToString (FryFarbeFlaeche);
  KonfigZeileS[92] := 'Colour of area (Fry)       :,'+FarbeS;
  KonfigZeileS[114] := 'Brushstyle of ellipse (Fry):,Farbe';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  BFaktor := true;
  with ImageAuswertung.Canvas do
  begin
    Draw (0,0,FryBild);
    Pen.Color := FryFarbeEllipse;
    moveto (0,ImageAuswertung.height div 2);
    lineto (ImageAuswertung.width,ImageAuswertung.height div 2);
    RotEllipse(FLang,FKurz,Fphi,ImageAuswertung.Width div 2,
               ImageAuswertung.Height div 2,Punkt);
    Brush.Style := bsSolid;
    Pen.Color   := FryFarbeEllipse;
    Brush.Color := FryFarbeFlaeche;
    Polygon (Punkt);
    Font.Color  := FryFarbeEllipse;
    Brush.Color := clWhite;
    Rectangle (0,ImageAuswertung.Height-60,90,ImageAuswertung.Height);
    Font.Size := 14;
    Font.Name := 'Times New Roman';
    Textout(5,ImageAuswertung.Height-50,'R = '+RS);
    Font.Name := 'Symbol';
    Textout(5,ImageAuswertung.Height-30,'j = '+ PhiS+'°');
        if NElPlot then
    begin
      if NellipseStilS = 'transparent' then
        Brush.Style := bsClear;
      if NellipseStils = 'Farbe' then
      begin
        Brush.Style := bsSolid;
        Brush.Color := NNFarbeFlaeche;
      end;
      Pen.Color   := NNFarbeEllipse;
      RotEllipse(Nlang,Nkurz,Nphi,ImageAuswertung.Width div 2,
                 ImageAuswertung.Height div 2,Punkt);
      Polygon(Punkt);
    end;
  end;
  Kurve;
end;

procedure TForm67.SpeedFryFlaecheClick(Sender: TObject);
begin
  FryGefuelltClick(Sender);
end;

procedure TForm67.NNUmrissClick(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  FarbeS : string;
begin
  if ColorDialog1.Execute then NNFarbeEllipse := ColorDialog1.Color;
  FarbeS := ColorToString (NNFarbeEllipse);
  KonfigZeileS[126]  := 'Colour of ellipse (Calcul.):,'+FarbeS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  BFaktor := true;
  with ImageAuswertung.Canvas do
  begin
    Draw (0,0, FryBild);
    Brush.Color := clWhite;
    Pen.Color   := FryFarbeEllipse;
    Font.Color  := FryFarbeEllipse;
    Rectangle (0,ImageAuswertung.Height-60,90,ImageAuswertung.Height);
    Font.Size := 14;
    Font.Name := 'Times New Roman';
    Textout(5,ImageAuswertung.Height-50,'R = '+RS);
    Font.Name := 'Symbol';
    Textout(5,ImageAuswertung.Height-30,'j = '+ PhiS+'°');
    RotEllipse(NLang,NKurz,Nphi,ImageAuswertung.Width div 2,
               ImageAuswertung.Height div 2,Punkt);
    Brush.Style := bsClear;
    Pen.Color   := NNFarbeEllipse;
    Polygon (Punkt);
    RotEllipse(FLang,FKurz,Fphi,ImageAuswertung.Width div 2,
               ImageAuswertung.Height div 2,Punkt);
    if FEllipseStilS = 'transparent' then Brush.Style := bsClear;
    if FEllipseStilS = 'Farbe' then
    begin
      Brush.Style := bsSolid;
      Brush.Color := FryFarbeFlaeche;
    end;
    Pen.Color   := FryFarbeEllipse;
    Polygon (Punkt);
  end;
  Kurve;
end;

procedure TForm67.SpeedNNUmrissClick(Sender: TObject);
begin
  NNUmrissClick(Sender);
end;

procedure TForm67.NNTransparentClick(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
begin
  NellipseStilS := 'transparent';
  Bo := Pi/180;
  KonfigZeileS[128] := 'Brushstyle of ellipse (Cal):,transparent';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  BFaktor := true;
  with ImageAuswertung.Canvas do
  begin
    Draw(0,0,FryBild);
    Brush.Color := clWhite;
    Pen.Color   := FryFarbeEllipse;
    Font.Color  := FryFarbeEllipse;
    Rectangle (0,ImageAuswertung.Height-60,90,ImageAuswertung.Height);
    Font.Size := 14;
    Font.Name := 'Times New Roman';
    Textout(5,ImageAuswertung.Height-50,'R = '+RS);
    Font.Name := 'Symbol';
    Textout(5,ImageAuswertung.Height-30,'j = '+ PhiS+'°');
    RotEllipse(Nlang,Nkurz,Nphi,ImageAuswertung.Width div 2,
               ImageAuswertung.Height div 2,Punkt);
    Brush.Style := bsClear;
    Pen.Color   := NNFarbeEllipse;
    Polygon (Punkt);
    if FElPlot then
    begin
      RotEllipse(Flang,Fkurz,Fphi,ImageAuswertung.Width div 2,
                 ImageAuswertung.Height div 2,Punkt);
      if FEllipseStilS = 'transparent' then Brush.Style := bsClear;
      if FEllipseStilS = 'Farbe' then
      begin
        Brush.Style := bsSolid;
        Brush.Color := FryFarbeFlaeche;
      end;
      Pen.Color   := FryFarbeEllipse;
      Polygon (Punkt);
    end;  
  end;
  Kurve;
end;

procedure TForm67.SpeedNNTransparentClick(Sender: TObject);
begin
  NNTransparentClick(Sender);
end;

procedure TForm67.NNFlaecheFarbeClick(Sender: TObject);
var
  Datei   : TextFile;
  i        : word;
  FarbeS   : string;
begin
  FellipseStilS := 'Farbe';
  if ColorDialog1.Execute then NNFarbeFlaeche := ColorDialog1.Color;
  FarbeS := ColorToString (NNFarbeFlaeche);
  KonfigZeileS[127] := 'Colour of area (Calculated):,'+FarbeS;
  KonfigZeileS[128] := 'Brushstyle of ellipse (Cal):,Farbe';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  BFaktor := true;
  with ImageAuswertung.Canvas do
  begin
    Draw (0,0,FryBild);
    RotEllipse(NLang,NKurz,Nphi,ImageAuswertung.Width div 2,
               ImageAuswertung.Height div 2,Punkt);
    Brush.Style := bsSolid;
    Pen.Color   := NNFarbeEllipse;
    Brush.Color := NNFarbeFlaeche;
    Polygon (Punkt);
    if FEllipseStilS = 'transparent' then Brush.Style := bsClear;
    if FEllipseStilS = 'Farbe' then
    begin
      Brush.Style := bsSolid;
      Brush.Color := FryFarbeFlaeche;
    end;
    RotEllipse(FLang,FKurz,Fphi,ImageAuswertung.Width div 2,
               ImageAuswertung.Height div 2,Punkt);
    Pen.Color   := FryFarbeEllipse;
    Polygon (Punkt);
    Brush.Color := clWhite;
    Pen.Color   := FryFarbeEllipse;
    Font.Color  := FryFarbeEllipse;
    Rectangle (0,ImageAuswertung.Height-60,90,ImageAuswertung.Height);
    Font.Size := 14;
    Font.Name := 'Times New Roman';
    Textout(5,ImageAuswertung.Height-50,'R = '+RS);
    Font.Name := 'Symbol';
    Textout(5,ImageAuswertung.Height-30,'j = '+ PhiS+'°');
  end;
  Kurve;
end;

procedure TForm67.FryNeuClick(Sender: TObject);
begin
  ImageAuswertung.Canvas.Draw(0,0,Frybild);
  PanelEllipse.Visible := true;
  LabelEPunkte.Visible := true;
  LabelLang.Caption    := Tx(1079);
  LabelLang.Visible    := true;
  PunktS := '1';
end;

procedure TForm67.SpeedNeuClick(Sender: TObject);
begin
  FryNeuClick(Sender);
end;

procedure TForm67.LangeAchseClick(Sender: TObject);
var
  Bo     : real;
begin
  Bo := Pi/180;
  FryTransparentClick(Sender);
  PunktS := '5';
  Ziehen := false;
  AchseS := 'lang';
  Farbe  := ColorToRGB(FryFarbePunkte) xor $FFFFFF;
  with ImageAuswertung.Canvas do
  begin
    Draw(0,0,FryBild);
    Pen.Color := FryFarbeEllipse;
    moveto (0,ImageAuswertung.height div 2);
    lineto (ImageAuswertung.width,ImageAuswertung.height div 2);
    RotEllipse(Flang,Fkurz,Fphi,X0,Y0,Punkt);
    Brush.Style := bsClear;
    Polygon (Punkt);
    X1 := X0 + round(Flang*cos(Fphi*Bo)/2)+10;
    Y1 := Y0 - round(FLang*sin(Fphi*Bo)/2+10*Fphi/abs(Fphi));
    Brush.Style := bsSolid;
    Brush.Color := Farbe;
    Pen.Color   := Farbe;
    ellipse(X1-5,Y1-5,X1+5,Y1+5);
    Pen.Color   := FryFarbeEllipse;
    Brush.Style := bsClear;
    if NElPlot then
    begin
      Pen.Color   := NNFarbeEllipse;
      Brush.Style := bsClear;
      RotEllipse(Nlang,Nkurz,Nphi,ImageAuswertung.Width div 2,
                 ImageAuswertung.Height div 2,Punkt);
      Polygon (Punkt);
    end;
  end;
end;

procedure TForm67.SpeedLangeAchseClick(Sender: TObject);
begin
  LangeAchseClick(Sender);
end;

procedure TForm67.KurzeAchseClick(Sender: TObject);
var
  Bo     : real;
begin
  Bo := Pi/180;
  FryTransparentClick(Sender);
  PunktS := '5';
  Ziehen := false;
  AchseS := 'kurz';
  Farbe  := ColorToRGB(FryFarbePunkte) xor $FFFFFF;
  with ImageAuswertung.Canvas do
  begin
    Draw(0,0,FryBild);
    Pen.Color := FryFarbeEllipse;
    moveto (0,ImageAuswertung.height div 2);
    lineto (ImageAuswertung.width,ImageAuswertung.height div 2);
    RotEllipse(Flang,Fkurz,Fphi,X0,Y0,Punkt);
    Brush.Style := bsClear;
    Polygon (Punkt);
    X1 := X0 - round(Fkurz*cos((Fphi+90)*Bo)/2 -10*Fphi/abs(Fphi));
    Y1 := Y0 + round(FKurz*sin((Fphi+90)*Bo)/2 +10);
    Brush.Style := bsSolid;
    Brush.Color := Farbe;
    Pen.Color   := Farbe;
    ellipse(X1-5,Y1-5,X1+5,Y1+5);
    Pen.Color   := FryFarbeEllipse;
    Brush.Style := bsClear;
    if NElPlot then
    begin
      Pen.Color   := NNFarbeEllipse;
      Brush.Style := bsClear;
      RotEllipse(Nlang,Nkurz,Nphi,ImageAuswertung.Width div 2,
                 ImageAuswertung.Height div 2,Punkt);
      Polygon (Punkt);
    end;
  end;
end;

procedure TForm67.SpeedKurzeAchseClick(Sender: TObject);
begin
  KurzeAchseClick(Sender);
end;

procedure TForm67.FryDrehenClick(Sender: TObject);
begin
  ListBoxWinkel.Visible  := true;
  LabelWinkel.Visible    := true;
  ButtonUhr.Visible      := true;
  ButtongegenUhr.Visible := true;
  ButtonOK.Visible       := true;
  Winkel                 := 1;
end;

procedure TForm67.SpeedDrehenClick(Sender: TObject);
begin
  FryDrehenClick(Sender);
end;

procedure TForm67.ListBoxWinkelClick(Sender: TObject);
var
  i : byte;
begin
  for i := 0 to ListboxWinkel.Items.Count-1 do
  begin
    if ListboxWinkel.Selected[i] then
      Winkel := StrToInt(ListBoxWinkel.Items.Strings[i]);
  end;
end;

procedure TForm67.GroesseaendernClick(Sender: TObject);
var
  Bo     : real;
begin
  Bo := Pi/180;
  FryTransparentClick(Sender);
  PunktS := '6';
  Grosse := false;
  Farbe  := ColorToRGB(FryFarbePunkte) xor $FFFFFF;
  with ImageAuswertung.Canvas do
  begin
    Draw(0,0,FryBild);
    Pen.Color := FryFarbeEllipse;
    moveto (0,ImageAuswertung.height div 2);
    lineto (ImageAuswertung.width,ImageAuswertung.height div 2);
    RotEllipse(Flang,Fkurz,Fphi,X0,Y0,Punkt);
    Brush.Style := bsClear;
    Polygon (Punkt);
    X1 := X0 + round(FKurz*cos((90-Fphi)*Bo)/2 + Flang*cos(Fphi*Bo)/2);
    Y1 := Y0 + round(Fkurz*sin((90-Fphi)*Bo)/2 - FLang*sin(Fphi*Bo)/2);
    Brush.Style := bsSolid;
    Brush.Color := Farbe;
    Pen.Color   := Farbe;
    ellipse(X1-5,Y1-5,X1+5,Y1+5);
    if NElPlot then
    begin
      Pen.Color   := NNFarbeEllipse;
      Brush.Style := bsClear;
      RotEllipse(Nlang,Nkurz,Nphi,ImageAuswertung.Width div 2,
                 ImageAuswertung.Height div 2,Punkt);
      Polygon (Punkt);
    end;
  end;
end;

procedure TForm67.SpeedGroesseClick(Sender: TObject);
begin
  GroesseaendernClick(Sender);
end;

procedure TForm67.FryLoeschenClick(Sender: TObject);
begin
  with ImageAuswertung.Canvas do
  begin
    Draw(0,0,FryBild);
    if NElPlot then
    begin
      Pen.Color := NNFarbeEllipse;
      if NellipseStils = 'transparent' then
        Brush.Style := bsClear;
      if NellipseStilS = 'Farbe' then
      begin
        Brush.Style := bsSolid;
        Brush.Color := NNFarbeFlaeche;
      end;
      RotEllipse(Nlang,Nkurz,Nphi,ImageAuswertung.Width div 2,
                 ImageAuswertung.Height div 2,Punkt);
      Polygon (Punkt);
    end;
  end;
  FElPlot := false;
//  FryEllipse.Enabled := false;
end;

procedure TForm67.SpeedFryLoeschenClick(Sender: TObject);
begin
  FryLoeschenClick(Sender);
end;

procedure TForm67.NNLoeschenClick(Sender: TObject);
begin
  with ImageAuswertung.Canvas do
  begin
    Draw(0,0,FryBild);
    if FElPlot then
    begin
      Pen.Color := FryFarbeEllipse;
      if FellipseStils = 'transparent' then
        Brush.Style := bsClear;
      if FellipseStilS = 'Farbe' then
      begin
        Brush.Style := bsSolid;
        Brush.Color := FryFarbeFlaeche;
      end;
      RotEllipse(Flang,Fkurz,Fphi,ImageAuswertung.Width div 2,
                 ImageAuswertung.Height div 2,Punkt);
      Polygon (Punkt);
    end;
  end;
  NElPlot := false;
  NNLoeschen.Enabled := false;
end;

procedure TForm67.SpeedNNLoeschenClick(Sender: TObject);
begin
  NNLoeschenClick(Sender);
end;

procedure TForm67.ButtonUhrClick(Sender: TObject);
begin
  Fphi := Fphi-Winkel;
  with ImageAuswertung.Canvas do
  begin
    Draw(0,0,FryBild);
    Brush.Style := BsClear;
    Pen.Color   := FryFarbeEllipse;
    RotEllipse(Flang,Fkurz,Fphi,ImageAuswertung.Width div 2,
             ImageAuswertung.Height div 2,Punkt);
    Polygon (Punkt);
    if NElPlot then
    begin
      Pen.Color   := NNFarbeEllipse;
      Brush.Style := bsClear;
      RotEllipse(Nlang,Nkurz,Nphi,ImageAuswertung.Width div 2,
                 ImageAuswertung.Height div 2,Punkt);
      Polygon (Punkt);
    end;    
  end;
end;

procedure TForm67.ButtongegenUhrClick(Sender: TObject);
begin
  Fphi := Fphi+Winkel;
  with ImageAuswertung.Canvas do
  begin
    Brush.Style := bsClear;
    Draw(0,0,FryBild);
    Pen.Color := FryFarbeEllipse;
    RotEllipse(Flang,Fkurz,Fphi,ImageAuswertung.Width div 2,
             ImageAuswertung.Height div 2,Punkt);
    Polygon (Punkt);
    if NElPlot then
    begin
      Pen.Color   := NNFarbeEllipse;
      Brush.Style := bsClear;
      RotEllipse(Nlang,Nkurz,Nphi,ImageAuswertung.Width div 2,
                 ImageAuswertung.Height div 2,Punkt);
      Polygon (Punkt);
    end;
  end;
end;

procedure TForm67.ButtonOKClick(Sender: TObject);
begin
  if Fphi < -90 then Fphi := Fphi + 180;
  if Fphi > 90 then Fphi := Fphi - 180;
  PhiS := IntToStr(Fphi);
  With ImageAuswertung.Canvas do
  begin
    Brush.Color := clWhite;
    Pen.Color   := FryFarbeEllipse;
    Font.Color  := FryFarbeEllipse;
    Rectangle (0,ImageAuswertung.Height-60,90,ImageAuswertung.Height);
    Font.Size := 14;
    Font.Name := 'Times New Roman';
    Textout(5,ImageAuswertung.Height-50,'R = '+RS);
    Font.Name := 'Symbol';
    Textout(5,ImageAuswertung.Height-30,'j = '+ PhiS+'°');
    Pen.Color := FryFarbeEllipse;
    moveto (0,ImageAuswertung.height div 2);
    lineto (ImageAuswertung.width,ImageAuswertung.height div 2);
  end;
  ButtonUhr.Visible      := false;
  ButtongegenUhr.Visible := false;
  Kurve;
  ButtonOK.Visible      := false;
  ListBoxWinkel.Visible := false;
  LabelWinkel.Visible   := false;
end;

procedure TForm67.FontClick(Sender: TObject);
begin
  WaehlFont(FontDialog1);    //Grafik.pas
  ButtonStartClick(Sender);
end;

procedure TForm67.SpeedFontClick(Sender: TObject);
begin
  FontClick(Sender);
end;

procedure TForm67.BGroesseFClick(Sender: TObject);
begin
  PanelGroesse.Visible    := true;
  MaskEditBBreite.Text    := IntTostr(BBreiteF);
  MaskEditBHoehe.Text     := IntToStr(BHoeheF);
  BildF := true;
  BildD := false;
end;

procedure TForm67.SpeedBGroesseFClick(Sender: TObject);
begin
  BGroesseFClick(Sender);
end;

procedure TForm67.DBGroesseClick(Sender: TObject);
begin
  PanelGroesse.Visible    := true;
  CheckBoxBild.State      := cbUnchecked;
  MaskEditBBreite.Text    := IntTostr(BBreiteF);
  MaskEditBHoehe.Text     := IntToStr(BHoeheF);
  BildF := false;
  BildD := true;
end;

procedure TForm67.SpeedBGroesseDClick(Sender: TObject);
begin
  DBGroesseClick(Sender);
end;

procedure TForm67.MaskEditBBreiteKeyPress(Sender: TObject; var Key: Char);
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
      if BildF then
      begin
        BBreiteF := StrToInt (BBreiteS);
        BHoeheF  := round(BBreiteF/RatioF);
        KonfigZeileS[115] := 'Save Image Width (Fry-Plot):,'+BBreiteS;
        MaskEditBHoehe.Text := IntToStr(BHoeheF);
      end;
      if BildD then
      begin
        BBreiteD := StrToInt(BBreiteS);
        BHoeheD := round(BBreiteD/RatioD);
        KonfigZeileS[116] := 'Save Image Width (d-Theta) :,'+BBreiteS;
        MaskEditBHoehe.Text := IntToStr(BHoeheD);
      end;
      assignFile(Datei,FabricS+'\'+'Fabric.ini');
      rewrite (Datei);
      for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
      closefile (Datei);
    end;
  end;
end;

procedure TForm67.MaskEditBHoeheKeyPress(Sender: TObject; var Key: Char);
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
      if BildF then
      begin
        BHoeheF  := StrToInt (BHoeheS);
        BBreiteF := round(BHoeheF*RatioF);
        KonfigZeileS[115]    := 'Save Image Width (Fry-Plot):,'+IntToStr(BBreiteF);
        MaskEditBBreite.Text := IntToStr(BBreiteF);
      end;
      if BildD then
      begin
        BHoeheD  := StrToInt(BHoeheS);
        BBreiteD := round(BHoeheD*RatioD);
        KonfigZeileS[116]    := 'Save Image Width (d-Theta) :,'+IntToStr(BBreiteD);
        MaskEditBBreite.Text := IntToStr(BBreiteD);
      end;
    end;
    assignFile(Datei,FabricS+'\'+'Fabric.ini');
    rewrite (Datei);
    for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
    closefile (Datei);
  end;
end;

procedure TForm67.CheckBoxBildClick(Sender: TObject);
begin
  PanelGroesse.Visible := false;
end;

procedure TForm67.FrySpeichernClick(Sender: TObject);
begin
  PanelAuswertung.Visible := true;
end;

procedure TForm67.SpeedSpeichernFryClick(Sender: TObject);
begin
  FrySpeichernClick(Sender);
end;

procedure TForm67.ButtonAabbrechenClick(Sender: TObject);
begin
  PanelAuswertung.Visible := false;
end;

procedure TForm67.ListBoxAuswertungClick(Sender: TObject);
var
  Ratio : real;
begin
  BBreiteSt := BBreiteF;
  Ratio     := RatioF;
  Grafik.GrafikSpeichern(ImageAuswertung, ListBoxAuswertung, Ratio,
                  SavePictureDialog1, SaveDialog1);
  PanelAuswertung.Visible := false;
end;

procedure TForm67.DAspeichernClick(Sender: TObject);
begin
  PanelTheta.Visible := true;
end;

procedure TForm67.SpeedThetaspeichernClick(Sender: TObject);
begin
  DAspeichernClick(Sender);
end;

procedure TForm67.ButtonTabbrechenClick(Sender: TObject);
begin
  PanelTheta.Visible := false;
end;

procedure TForm67.DiagrammClick(Sender: TObject);
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
  Kurve;
end;

procedure TForm67.KoordinatenClick(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  Farbe := clWhite;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS       := ColorToString (Farbe);
  KoordinFarbe := StringToColor(FarbeS);
  KonfigZeileS[7] := '  Colour of Data Points    :,'+FarbeS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  Kurve;
end;

procedure TForm67.ListBoxThetaClick(Sender: TObject);
var
  Ratio : real;
begin
  BBreiteSt := BBreiteD;
  Ratio     := RatioD;
  Grafik.GrafikSpeichern(ImageTheta, ListBoxTheta, Ratio,
                         SavePictureDialog1, SaveDialog1);
  PanelTheta.Visible := false;                       
end;

procedure TForm67.ProjektionClick(Sender: TObject);
begin
  WeiterB[67] := true;
  Application.CreateForm(TForm72, Form72);
  Form72.Show;
end;

procedure TForm67.SpeedProjektionClick(Sender: TObject);
begin
  ProjektionClick(Sender);
end;

procedure TForm67.DinstallierenClick(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TForm67.DDruckerEinrichtenClick(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TForm67.SpeedEinrichtenClick(Sender: TObject);
begin
  DDruckerEinrichtenClick(Sender);
end;

procedure TForm67.FryDruckenClick(Sender: TObject);
var
  SchriftS : string[5];
  i        : byte;
begin
  Druck := 1;
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
  LabelLaenge.Caption          := Tx(1764);
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

procedure TForm67.SpeedFryDruckenClick(Sender: TObject);
begin
  FryDruckenClick(Sender);
end;

procedure TForm67.DAdruckenClick(Sender: TObject);
var
  i : byte;
begin
  Druck                   := 2;
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
  LabelLaenge.Caption          := Tx(1764);
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
    ListBoxSchrift.Items.Add (IntToStr(i));
  until i = 40;
  MaskEditUnterschrift.Visible := true;
  MaskEditUnterschrift.SetFocus;
end;

procedure TForm67.SpeedDruckenClick(Sender: TObject);
begin
  DAdruckenClick(Sender);
end;

procedure TForm67.MaskEditLaengeChange(Sender: TObject);
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

procedure TForm67.MaskEditLinksChange(Sender: TObject);
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

procedure TForm67.MaskEditObenChange(Sender: TObject);
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

procedure TForm67.MaskEditUnterschriftKeyPress(Sender: TObject;
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

procedure TForm67.HintergrundClick(Sender: TObject);
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
  ButtonStartClick (Sender);
end;

procedure TForm67.RahmenClick(Sender: TObject);
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

procedure TForm67.TFryClick(Sender: TObject);
begin
  PanelTextF.Visible := true;
  MaskEditTextF.SetFocus;
  BTextF := true;
  MaskEditTextF.Clear;
  PanelPlazierenF.Visible := false;
end;

procedure TForm67.SpeedTextFClick(Sender: TObject);
begin
  TFryClick(Sender);
end;

procedure TForm67.MaskEditTextFKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(13) then
  begin
    TeSF := MaskEditTextF.Text;
    PanelPlazierenF.Visible := true;
  end;
end;

procedure TForm67.TDalphaClick(Sender: TObject);
begin
  PanelTextD.Visible := true;
  MaskEditTextD.SetFocus;
  BTextD := true;
  MaskEditTextD.Clear;
  PanelPlazierenD.Visible := false;
end;

procedure TForm67.SpeedTextDClick(Sender: TObject);
begin
  TDalphaClick(Sender);
end;

procedure TForm67.MaskEditTextDKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(13) then
  begin
    TeSD := MaskEditTextD.Text;
    PanelPlazierenD.Visible := true;
  end;
end;

procedure TForm67.ImageThetaMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inc (textDi);
  TextBitmapD[textDi] := Tbitmap.Create;
  TextBitmapD[textDi].Assign(ImageTheta.Picture);
  with ImageTheta.Canvas do
  begin
    Brush.Color := DiagrFarbe;
    Font.Name   := DSchrift;
    Font.Size   := DGroesse;
    Font.Color  := DFarbe;
    Font.Style  := DStyle;
  end;
  ImageTheta.Canvas.TextOut(x,y,TeSD);
  PanelTextD.Visible   := false;
  BTextD               := false;
  RueckDalpha.Enabled  := true;
  SpeedUnTextD.Enabled := true;
end;

procedure TForm67.RueckFryClick(Sender: TObject);
begin
  ImageAuswertung.Canvas.Draw (0,0,TextBitmapF[textFi]);
  if textFi >= 1 then
  begin
    TextBitmapF[textFi].free;
    Dec(textFi);
  end;
  if textFi = 0 then
  begin
    RueckFry.Enabled     := false;
    SpeedUnTextF.Enabled := false;
  end;
end;

procedure TForm67.SpeedUnTextFClick(Sender: TObject);
begin
  RueckFryClick(Sender);
end;

procedure TForm67.RueckDAlphaClick(Sender: TObject);
begin
  ImageTheta.Canvas.Draw (0,0,TextBitmapD[textDi]);
  if textDi >= 1 then
  begin
    TextBitmapD[textDi].free;
    Dec(textDi);
  end;
  if textDi = 0 then
  begin
    RueckDalpha.Enabled  := false;
    SpeedUnTextD.Enabled := false;
  end;  
end;

procedure TForm67.SpeedUnTextDClick(Sender: TObject);
begin
  RueckDalphaClick(Sender);
end;

procedure TForm67.ButtonDruckenClick(Sender: TObject);
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
  if Druck = 1 then
    Hoehe   := round(PLaenge*ImageAuswertung.Height/ImageAuswertung.Width);;
  if Druck = 2 then
    Hoehe   := round(PLaenge*ImageTheta.Height/ImageTheta.Width);;
  with Fenster do
  begin
    Left   := LRand;
    Top    := ORand;
    Right  := LRand + PLaenge;
    Bottom := ORand + Hoehe;
  end;
  Bitmap:=TBitmap.Create;
  try
    if Druck = 1 then
      Bitmap.Assign(ImageAuswertung.picture.graphic);
    if Druck = 2 then
      Bitmap.Assign(ImageTheta.picture.graphic);
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
  RadioLinks.Visible           := false;
  RadioRechts.Visible          := false;
  RadioZentriert.Visible       := false;
end;

procedure TForm67.ButtonAbbrechenClick(Sender: TObject);
begin
  GroupBoxDrucken.Visible := false;
end;

procedure TForm67.ListBoxSchriftClick(Sender: TObject);
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

procedure TForm67.RadioLinksClick(Sender: TObject);
begin
  BuendigS := 'Links';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    ButtonDrucken.Enabled := true;
end;

procedure TForm67.RadioZentriertClick(Sender: TObject);
begin
  BuendigS := 'Zentriert';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    ButtonDrucken.Enabled := true;
end;

procedure TForm67.RadioRechtsClick(Sender: TObject);
begin
  BuendigS := 'Rechts';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    ButtonDrucken.Enabled := true;
end;

procedure TForm67.MaskEditSchriftKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(13) then
  begin
    TextS := MaskEditUnterschrift.Text;
    ButtonDrucken.Enabled := true;
  end;
end;

procedure TForm67.ButtonUebertragenClick(Sender: TObject);
begin
  NElPlot := true;
  NPhi    := Phi2;
  Nkurz   := Flang/R;
  Nlang   := Flang;
  RotEllipse(Nlang,Nkurz,Nphi,X0,Y0,Punkt);
  With ImageAuswertung.Canvas do
  begin
    Draw(0,0,Frybild);
    if NellipseStils = 'transparent' then Brush.Style := bsClear;
    if NellipseStilS = 'Farbe' then Brush.Style := bsSolid;
    Pen.Color   := NNFarbeEllipse;
    Polygon(Punkt);
    RotEllipse(Flang,Fkurz,Fphi,X0,Y0,Punkt);
    if FellipseStils = 'transparent' then Brush.Style := bsClear;
    if FellipseStilS = 'Farbe' then Brush.Style := bsSolid;
    Pen.Color   := FryFarbeEllipse;
    Polygon(Punkt);
    Brush.Color := clWhite;
    Rectangle (0,ImageAuswertung.Height-60,90,ImageAuswertung.Height);
    Font.Color := FryFarbeEllipse;
    Font.Size  := 14;
    Font.Name  := 'Times New Roman';
    Textout(5,ImageAuswertung.Height-50,'R = '+RS);
    Font.Name := 'Symbol';
    Textout(5,ImageAuswertung.Height-30,'j = '+ PhiS+'°');
  end;
  NearestEllipse.Enabled     := true;
  SpeedNNUmriss.Enabled      := true;
  SpeedNNTransparent.Enabled := true;
  SpeedNNFarbe.Enabled       := true;
  SpeedNNLoeschen.Enabled    := true;
end;

procedure TForm67.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Fry-Methode.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'Fry-Method(english).doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm67.HilfeClick(Sender: TObject);
var
  DateiS : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\67Fry-plot.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\67Fry-plot.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm67.SpeedHilfeClick(Sender: TObject);
begin
  HilfeClick(Sender);
end;

procedure TForm67.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm67.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm67.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

procedure TForm67.Dspeichern1Click(Sender: TObject);
var
  Datei : TextFile;
  i     : word;
  ZeileS: string;
begin
  if FryMethodeS = 'konventionel' then
  begin
    SaveDialog1.DefaultExt := 'FRY';
    SaveDialog1.Filter     := 'Conventional Fry Method (*.fry)|*.FRY';
  end;
  if FryMethodeS = 'normiert' then
    SaveDialog1.DefaultExt := 'FRN';
    SaveDialog1.Filter     := 'normalized Fry Method (*.frn)|*.FRN';
  if CurrentFile <> '' then
  begin
    assignFile(Datei,CurrentFile);
    rewrite(Datei);
    for i := 1 tO ZahlPunkte do
    begin
      if FryMethodeS = 'konventionell' then
        ZeileS := FloatToStr(FryX[i])+','+FloatToStr(FryY[I]);
      if FryMethodeS = 'normiert' then
        ZeileS := FloatToStr(FryX[i])+','+FloatToStr(FryY[I])
        +','+FloatToStrF(FryR[i],ffFixed,6,2);
      Writeln(Datei, ZeileS);
    end;
    CloseFile (Datei);
  end
  else DspeichernUnterClick (Sender);
end;

procedure TForm67.DspeichernUnterClick(Sender: TObject);
begin
  if FryMethodeS = 'konventionell' then
  begin
    SaveDialog1.DefaultExt := 'fry';
    SaveDialog1.Filter     := 'conventional Fry method (*.fry)|*.FRY';
  end;
  if FryMethodeS = 'normiert' then
  begin
    SaveDialog1.DefaultExt := 'frn';
    SaveDialog1.Filter     := 'normatised Fry method (*.frn)|*.FRN';
  end;
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    Dspeichern1Click(Sender);
  end;
end;

end.
