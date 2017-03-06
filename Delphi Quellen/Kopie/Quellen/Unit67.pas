unit Unit67;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, ExtCtrls, StdCtrls, Globvar, Basic, Mask,
  Menus, ExtDlgs, Jpeg, Printers, Math, Texte, Shellapi, Buttons,
  Panozzo, ComCtrls, Standard, Plotten, LiesConf,GifImage,
  Bmp2Tiff, ehsHelpRouter;

type
  TForm67 = class(TForm)
    ButtonStart: TButton;
    ButtonBeenden: TButton;
    ListBoxPunkte: TListBox;
    PanelZahl: TPanel;
    LabelZahl: TLabel;
    LabelPunkte: TLabel;
    LabelFaktor: TLabel;
    MainMenu1: TMainMenu;
    FarbePunkte: TMenuItem;
    ColorDialog1: TColorDialog;
    GrafikSpeichern: TMenuItem;
    SavePictureDialog1: TSavePictureDialog;
    GrafikDrucken: TMenuItem;
    DruckerEinrichten: TMenuItem;
    PrinterSetupDialog1: TPrinterSetupDialog;
    Fdrucken: TMenuItem;
    GroupBoxDrucken: TGroupBox;
    LabelLinks: TLabel;
    LabelOben: TLabel;
    LabelLaenge: TLabel;
    LabelGroesse: TLabel;
    LabelSchrift: TLabel;
    LabelErl: TLabel;
    ListBoxSchrift: TListBox;
    MaskEditLinks: TMaskEdit;
    MaskEditOben: TMaskEdit;
    MaskEditLaenge: TMaskEdit;
    MaskEditSchrift: TMaskEdit;
    ButtonDrucken: TButton;
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
    MaskEditDatei: TMaskEdit;
    LabelDatei: TLabel;
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
    LabelD: TLabel;
    LabelA: TLabel;
    LabelDiag: TLabel;
    GFryplot: TMenuItem;
    GdaDiagramm: TMenuItem;
    OpenDialog1: TOpenDialog;
    Ddrucken: TMenuItem;
    LabelX: TLabel;
    LabelR: TLabel;
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
    BildGroesseF: TMenuItem;
    BildGroesseD: TMenuItem;
    ButtonDabbrechen: TButton;
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
    FrySpeichern: TMenuItem;
    FrySpeichernUnter: TMenuItem;
    FrySpeichernGIF: TMenuItem;
    FrySpeichernTIF: TMenuItem;
    FrySpeichernJPG: TMenuItem;
    FrySpeichernWMF: TMenuItem;
    FrySpeichernEMF: TMenuItem;
    FrySpeichernUBMP: TMenuItem;
    FrySpeichernUGIF: TMenuItem;
    FrySpeichernUTIF: TMenuItem;
    FrySpeichernUJPG: TMenuItem;
    FrySpeichernUWMF: TMenuItem;
    FrySpeichernUEMF: TMenuItem;
    FrySpeichernBMP: TMenuItem;
    FryTitel: TMenuItem;
    DTitel: TMenuItem;
    Dspeichern: TMenuItem;
    DSpeichernUnter: TMenuItem;
    DSpeichernBMP: TMenuItem;
    DSpeichernGIF: TMenuItem;
    DSpeichernTIF: TMenuItem;
    DSpeichernJPG: TMenuItem;
    DSpeichernWMF: TMenuItem;
    DSpeichernEMF: TMenuItem;
    DSpeichernUBMP: TMenuItem;
    DSpeichernUGIF: TMenuItem;
    DSpeichernUTIF: TMenuItem;
    DSpeichernUJPG: TMenuItem;
    DSpeichernUWMF: TMenuItem;
    DSpeichernUEMF: TMenuItem;
    SaveDialog1: TSaveDialog;
    SpeedFryLoeschen: TSpeedButton;
    SpeedNNUmriss: TSpeedButton;
    SpeedNNTransparent: TSpeedButton;
    SpeedNNFarbe: TSpeedButton;
    SpeedNNLoeschen: TSpeedButton;
    SpeedFryName: TSpeedButton;
    SpeedFryGIF: TSpeedButton;
    SpeedFryTIF: TSpeedButton;
    SpeedFryWMF: TSpeedButton;
    SpeedFryEMF: TSpeedButton;
    SpeedFryJPG: TSpeedButton;
    SpeedFryBMP: TSpeedButton;
    SpeedNNname: TSpeedButton;
    SpeedNNBMP: TSpeedButton;
    SpeedNNGIF: TSpeedButton;
    SpeedNNTIF: TSpeedButton;
    SpeedNNJPG: TSpeedButton;
    SpeedNNWMF: TSpeedButton;
    SpeedNNEMF: TSpeedButton;
    DPunkte: TMenuItem;
    procedure ButtonBeendenClick(Sender: TObject);
    procedure ButtonStartClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FarbePunkteClick(Sender: TObject);
    procedure DruckerEinrichtenClick(Sender: TObject);
    procedure FdruckenClick(Sender: TObject);
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
    procedure FjpgSpUnterClick(Sender: TObject);
    procedure DdruckenClick(Sender: TObject);
    procedure SpeedPGroesseClick(Sender: TObject);
    procedure SpeedNeuClick(Sender: TObject);
    procedure SpeedLangeAchseClick(Sender: TObject);
    procedure SpeedKurzeAchseClick(Sender: TObject);
    procedure SpeedDrehenClick(Sender: TObject);
    procedure SpeedGroesseClick(Sender: TObject);
    procedure SpeedFryBmpClick(Sender: TObject);
    procedure SpeedFryJpgClick(Sender: TObject);
    procedure SpeedFryDruckenClick(Sender: TObject);
    procedure SpeedProjektionClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ShowHint (Sender: TObject);
    procedure MaskEditBBreiteKeyPress(Sender: TObject; var Key: Char);
    procedure BildGroesseFClick(Sender: TObject);
    procedure MaskEditBHoeheKeyPress(Sender: TObject; var Key: Char);
    procedure CheckBoxBildClick(Sender: TObject);
    procedure BildGroesseDClick(Sender: TObject);
    procedure ButtonDabbrechenClick(Sender: TObject);
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
    procedure FrySpeichernBMPClick(Sender: TObject);
    procedure FrySpeichernUBMPClick(Sender: TObject);
    procedure FrySpeichernGIFClick(Sender: TObject);
    procedure FrySpeichernTIFClick(Sender: TObject);
    procedure FrySpeichernJPGClick(Sender: TObject);
    procedure FrySpeichernWMFClick(Sender: TObject);
    procedure FrySpeichernEMFClick(Sender: TObject);
    procedure FrySpeichernUGIFClick(Sender: TObject);
    procedure FrySpeichernUTIFClick(Sender: TObject);
    procedure FrySpeichernUJPGClick(Sender: TObject);
    procedure FrySpeichernUWMFClick(Sender: TObject);
    procedure FrySpeichernUEMFClick(Sender: TObject);
    procedure FryTitelClick(Sender: TObject);
    procedure DTitelClick(Sender: TObject);
    procedure DSpeichernBMPClick(Sender: TObject);
    procedure DSpeichernGIFClick(Sender: TObject);
    procedure DSpeichernTIFClick(Sender: TObject);
    procedure DSpeichernJPGClick(Sender: TObject);
    procedure DSpeichernWMFClick(Sender: TObject);
    procedure DSpeichernEMFClick(Sender: TObject);
    procedure DSpeichernUBMPClick(Sender: TObject);
    procedure DSpeichernUGIFClick(Sender: TObject);
    procedure DSpeichernUTIFClick(Sender: TObject);
    procedure DSpeichernUJPGClick(Sender: TObject);
    procedure DSpeichernUWMFClick(Sender: TObject);
    procedure DSpeichernUEMFClick(Sender: TObject);
    procedure SpeedFryUmrissClick(Sender: TObject);
    procedure SpeedFryTransparentClick(Sender: TObject);
    procedure SpeedFryFlaecheClick(Sender: TObject);
    procedure SpeedFryLoeschenClick(Sender: TObject);
    procedure SpeedNNUmrissClick(Sender: TObject);
    procedure SpeedNNTransparentClick(Sender: TObject);
    procedure SpeedNNLoeschenClick(Sender: TObject);
    procedure SpeedFryNameClick(Sender: TObject);
    procedure SpeedFryGIFClick(Sender: TObject);
    procedure SpeedFryTIFClick(Sender: TObject);
    procedure SpeedFryWMFClick(Sender: TObject);
    procedure SpeedFryEMFClick(Sender: TObject);
    procedure SpeedNNnameClick(Sender: TObject);
    procedure SpeedNNBMPClick(Sender: TObject);
    procedure SpeedNNGIFClick(Sender: TObject);
    procedure SpeedNNTIFClick(Sender: TObject);
    procedure SpeedNNJPGClick(Sender: TObject);
    procedure SpeedNNWMFClick(Sender: TObject);
    procedure SpeedNNEMFClick(Sender: TObject);
    procedure DPunkteClick(Sender: TObject);
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
  
implementation
Uses Unit65, Unit66, Unit72;
{$R *.DFM}

procedure TForm67.FormShow(Sender: TObject);
begin
  Form67.Width  := 1040;
  Form67.Height := 760;
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
  Form67.Caption             := 'Fabric8: '+Tx(1075);
  setlength (FryX,Maxdaten);
  setlength (FryY,Maxdaten);
  setlength (FryR,MaxDaten);
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
  SpeedFryName.Hint          := Hilf(599);
  SpeedFryBMP.Hint           := Hilf(564);
  SpeedFryGIF.Hint           := Hilf(600);
  SpeedFryTIF.Hint           := Hilf(601);
  SpeedFryJpg.Hint           := Hilf(565);
  SpeedFryWMF.Hint           := Hilf(602);
  SpeedFryEMF.Hint           := Hilf(603);
  SpeedBGroesseD.Hint        := Hilf(572);
  SpeedNNname.Hint           := Hilf(604);
  SpeedNNBMP.Hint            := Hilf(566);
  SpeedNNGIF.Hint            := Hilf(605);
  SpeedNNTIF.Hint            := Hilf(606);
  SpeedNNJpg.Hint            := Hilf(567);
  SpeedNNWMF.Hint            := Hilf(607);
  SpeedNNEMF.Hint            := Hilf(608);
  SpeedFryDrucken.Hint       := Hilf(568);
  SpeedDrucken.Hint          := Hilf(569);
  SpeedEinrichten.Hint       := Hilf(505);
  SpeedProjektion.Hint       := Hilf(570);
  SpeedHilfe.Hint            := Hilf(210);
  SpeedHandbuch.Hint         := Hilf(274);
  SpeedLiteratur.Hint        := Hilf(462);
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
  SpeedFryName.Enabled       := false;
  SpeedFryBmp.Enabled        := false;
  SpeedFryGIF.Enabled        := false;
  SpeedFryTIF.Enabled        := false;
  SpeedFryJPG.Enabled        := false;
  SpeedFryWMF.Enabled        := false;
  SpeedFryEMF.Enabled        := false;
  SpeedBGroesseD.Enabled     := false;
  SpeedNNname.Enabled        := false;
  SpeedNNBMP.Enabled         := false;
  SpeedNNGIF.Enabled         := false;
  SpeedNNTIF.Enabled         := false;
  SpeedNNJPG.Enabled         := false;
  SpeedNNWMF.Enabled         := false;
  SpeedNNEMF.Enabled         := false;
  SpeedFryDrucken.Enabled    := false;
  SpeedDrucken.Enabled       := false;
  SpeedEinrichten.Enabled    := false;
  SpeedProjektion.Enabled    := false;
  FarbePunkte.Caption        := Tx(662);
  Punktgroesse.Caption       := Tx(1213);
  DPunkte.Caption            := TX(1463);
  FryEllipse.Caption         := TX(1455);
  NearestEllipse.Caption     := Tx(1456);
  GrafikSpeichern.Caption    := Tx(1071);
  GrafikDrucken.Caption      := Tx(1080);
  Auswertung.Caption         := Tx(1341);
  Hilfe.Caption              := Tx(162)+' (F1)';
  Handbuch.Caption           := Tx(1055)+' (F2)';
  Literatur.Caption          := Tx(1183)+' (F5)';
  FarbePunkte.Enabled        := false;
  Punktgroesse.Enabled       := false;
  FryEllipse.Enabled         := false;
  NearestEllipse.Enabled     := false;
  GrafikSpeichern.Enabled    := false;
  GrafikDrucken.Enabled      := false;
  Auswertung.Enabled         := false;
  ButtonBeenden.Caption      := Tx(53);
  ButtonZuruck.Caption       := Tx(30);
  Ddrucken.Enabled           := false;
  FryFarbe.Caption           := Tx(275);
  Fryneu.Caption             := Tx(1420);
  LangeAchse.Caption         := Tx(1421);
  GFryPlot.Caption           := Tx(1430);
  GdaDiagramm.Caption        := Tx(1431);
  FrySpeichern.Caption       := Tx(87);
  FrySpeichernUnter.Caption  := Tx(88);
  FryTitel.Caption           := Tx(1457);
  DTitel.Caption             := Tx(1457);
  DSpeichern.Caption         := Tx(87);
  DSpeichernUnter.Caption    := Tx(88);
  DruckerEinrichten.Caption  := Tx(94);
  Fdrucken.Caption           := Tx(1432);
  Ddrucken.Caption           := Tx(1433);
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
  MaskEditDatei.Visible      := false;
  LabelDatei.Visible         := false;
  Projektion.Caption         := Tx(1357);
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
  LabelErl.Caption        := Tx(1414);
  LabelLinks.Caption      := Tx(1415);
  LabelOben.Caption       := Tx(1416);
  LabelLaenge.Caption     := Tx(1417);
  FryDrehen.Caption       := Tx(1422);
  ButtonUhr.Caption       := Tx(1423);
  ButtongegenUhr.Caption  := Tx(1424);
  kurzeAchse.Caption      := Tx(1425);
  LabelGroesse.Caption    := Tx(888);
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
  LabelDiag.Caption         := Tx(1429);
  LabelD.Visible            := false;
  Labela.Visible            := false;
  LabelDiag.Visible         := false;
  GdaDiagramm.Enabled       := false;
  Dbild                     := '';
  BKurve                    := false;
  BildGroesseF.Caption      := Tx(1439);
  BildGroesseD.Caption      := Tx(1439);
  LabelBBreite.Caption      := Tx(1440);
  LabelBHoehe.Caption       := Tx(1441);
  ButtonDabbrechen.Caption  := TX(882);
  BildF                     := false;
  BildD                     := false;
  PanelGroesse.Visible      := false;
  RatioF := ImageAuswertung.Width/ImageAuswertung.Height;
  RatioD := ImageTheta.Width/ImageTheta.Height;
  NElPlot := false;
  FElPlot := false;
  BTitel  := false;
  if WeiterF then
  begin
    ButtonStart.Visible   := false;
    ButtonBeenden.Visible := false;
    ButtonStartClick(Sender);
  end;  
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
  if Bild then Form66.Close;
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
  FryBild.free;
  ThetaBild.free;
  Form67.Close;
  if Bild then Form66.Close;
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
  ImageAuswertung.Cursor:= crArrow;
  LabelEPunkte.Caption  := Tx(1078);
  LabelLang.Caption     := Tx(1079);
  MaskEditDatei.Visible := true;
  LabelDatei.Visible    := true;
  RatioF := ImageAuswertung.Width/ImageAuswertung.Height;
  RatioD := ImageTheta.Width/ImageTheta.Height;
  if not BFaktor then
  begin
    if not plot then
    begin
      i := 0;
      if ausDatei = 'Punkt' then
      begin
        if PunktG then
        begin
          if FryMethode = 'konventionell' then
            OpenDialog1.Filter := 'Fry Method (*.fry)|*.FRY';
          if FryMethode = 'normiert' then
            OpenDialog1.Filter := 'normatised Fry Method (*.frn)|*.FRN';
          if OpenDialog1.Execute then
          begin
            MaskEditDatei.Text := OpenDialog1.FileName;
            NameS := OpenDialog1.Filename;
            AssignFile(Datei, OpenDialog1.FileName);
            Reset(Datei);
            DecimalSeparator := '.';
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
              if FryMethode = 'normiert' then
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
              if FryMethode = 'konventionell' then
                TextS := FryXS+'  '+FryYS;
              if FryMethode = 'normiert' then
              begin
                FryR[i] := StrToFloat(FryRS);
                FryRS   := FloatToStrF(FryR[i],ffFixed,5,1);
                FryRS   := RightS('     '+FryRS,5);
                TextS   := FryXS+' '+FryYS+' '+FryRS;
              end;
              ListBoxPunkte.Items.Add (TextS);
           end;
            CloseFile (Datei);
            ZahlPunkte := i;
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
  X0 := ImageAuswertung.width div 2;
  Y0 := ImageAuswertung.height div 2;
  with ImageAuswertung.Canvas do
  begin
    Brush.Color := clWhite;
    FillRect(Rect(0,0,ImageAuswertung.Width, ImageAuswertung.Height));
    Pen.Color := FryFarbePunkte;
    Brush.Color := FryFarbePunkte;
    for j := 1 to ZahlPunkte do
    begin
      for i := 1 to ZahlPunkte do
      begin
        if i = j then continue;
        if FryMethode = 'konventionell' then
        begin
          x := round(X0+FryFaktor*FryX[i]-FryFaktor*FryX[j]);
          y := round(Y0+FryFaktor*FryY[i]-FryFaktor*FryY[j]);
        end;
        if FryMethode = 'normiert' then
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
    Pen.Color   := FryFarbePunkte;
    Brush.Color := clWhite;
    Font.Color  := FryFarbePunkte;
    Font.Name   := 'Times New Roman';
    Font.Size   := 14;
    rectangle (ImageAuswertung.Width-200,ImageAuswertung.Height-30,
               ImageAuswertung.Width,ImageAuswertung.Height);
    if FryMethode = 'konventionell' then MethodeS := Tx(1437);
    if FryMethode = 'normiert' then MethodeS := Tx(1438);
    Textout(ImageAuswertung.Width-190,ImageAuswertung.Height-25,
            MethodeS);
   end;
  for i := 1 to High(PolygonZeileS) do
    ZeilePolygonS[i] := PolygonZeileS[i];
  if DemoB then
  begin
    with ImageAuswertung.Canvas do
    begin
      Font.Name   := 'Times New Roman';
      Brush.Color := clWhite;
      Font.Color  := clGray;
      Font.Size   := 36;
      Textout(Width div 2-200,Height div 2+50,'Demo-Version');
    end;
  end;
  PanelEllipse.Visible    := true;
  FarbePunkte.Enabled     := true;
  GrafikSpeichern.Enabled := true;
  GrafikDrucken.Enabled   := true;
  SpeedFarbe.Enabled      := true;
  SpeedPGroesse.Enabled   := true;
  SpeedBGroesseF.Enabled  := true;
  SpeedFryName.Enabled    := true;
  SpeedFryBmp.Enabled     := true;
  SpeedFryGIF.Enabled     := true;
  SpeedFryTIF.Enabled     := true;
  SpeedFryJpg.Enabled     := true;
  SpeedFryWMF.Enabled     := true;
  SpeedFryEMF.Enabled     := true;
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
      assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
        Font.Name := 'Times New Roman';
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
      PanelEllipse.Visible   := false;
      LabelEPunkte.Visible   := false;
      LabelLang.Visible      := false;
      PunktS                 := '';
      LabelD.Visible         := true;
      Labela.Visible         := true;
      LabelDiag.Visible      := true;
      GdaDiagramm.Enabled    := true;
      SpeedFryUmriss.Enabled := true;
      FryEllipse.Enabled     := true;
      SpeedBGroesseD.Enabled := true;
      SpeedNNname.Enabled    := true;
      SpeedNNBMP.Enabled     := true;
      SpeedNNGIF.Enabled     := true;
      SpeedNNTIF.Enabled     := true;
      SpeedNNJPG.Enabled     := true;
      SpeedNNWMF.Enabled     := true;
      SpeedNNEMF.Enabled     := true;
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
      Font.Name := 'Times New Roman';
      Textout(5,ImageAuswertung.Height-50,'R = '+RS);
      Font.Name := 'Symbol';
      PhiS := IntTostr(FPhi);
      Textout(5,ImageAuswertung.Height-30,'j = '+ PhiS+'°');
      Pen.Color := FryFarbeEllipse;
      moveto (0,ImageAuswertung.Height div 2);
      lineto (ImageAuswertung.width,ImageAuswertung.Height div 2);
    end;
    if (AchseS = 'lang') or (AchseS = 'kurz') then Kurve;
    PunktS := '';
    AchseS := '';
    Ziehen := false;
    Grosse := false;
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
    Brush.Color := clWhite;
    Pen.Color   := clWhite;
    rectangle (0,0,ImageTheta.Width,ImageTheta.Height);
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
          if FryMethode = 'konventionell' then FNenner := 1;
          if FryMethode = 'normiert' then FNenner := (FryR[i]+FryR[j])/2;
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
    Font.Size := 12;
    Font.Name := 'Times New Roman';
    y := unten;
    for i := 0 to 18 do
    begin
      x := links + round((rechts-links)*i/18);
      moveto (x, y);
      lineto (x, unten+5);
      Textout (x-7,y+5,InttoStr(-90+i*10)+'°');
    end;
    x := links-10;
    for i := 0 to 10 do
    begin
      y := round(unten-i*(unten-oben)/10);
      moveto (x,y);
      lineto (links,y);
      Textout(x-20,y-10,IntToStr(round(i*ZaehlMax/10)));
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
    Pen.Color := NNFarbeEllipse;
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
    Font.Color := NNFarbeEllipse;
    Textout(links,unten+23,'R = '+RfS);
    Font.Name := 'Symbol';
    Textout(links+100,unten+23,'j = '+IntToStr(Phi2)+'°');
    Font.Size   := 20;
    Font.Color  := clBlack;
    Brush.Style := bsClear;
    Textout (rechts-22,unten+23,'a');
    Font.Name := 'Times New Roman';
    Textout (links-60,oben,'d');
    Pen.Color := clBlack;
    Rectangle (links,oben-2,rechts,unten+2);
  end;
  ButtonUebertragen.Visible  := true;
  Ddrucken.Enabled           := true;
  SpeedDrucken.Enabled       := true;
  SpeedFryBmp.Enabled        := true;
  SpeedNNJPG.Enabled         := true;
  if AusDatei = 'Polygon' then
  begin
    if not WeiterF then
      Auswertung.Enabled := true;
    SpeedProjektion.Enabled := true;
  end;
  ThetaBild := TBitmap.Create;
  ThetaBild.Assign(ImageTheta.Picture.Graphic);
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
  ButtonUhr.Visible      := true;
  ButtongegenUhr.Visible := true;
  ButtonOK.Visible       := true;
end;

procedure TForm67.SpeedDrehenClick(Sender: TObject);
begin
  FryDrehenClick(Sender);
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
  Fphi := Fphi-1;
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
  Fphi := Fphi+1;
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
  ButtonOK.Visible := false;
end;

procedure TForm67.BildGroesseFClick(Sender: TObject);
begin
  PanelGroesse.Visible    := true;
  MaskEditBBreite.Text    := IntTostr(BBreiteF);
  MaskEditBHoehe.Text     := IntToStr(BHoeheF);
  BildF := true;
  BildD := false;
end;

procedure TForm67.SpeedBGroesseFClick(Sender: TObject);
begin
  BildGroesseFClick(Sender);
end;

procedure TForm67.FryTitelClick(Sender: TObject);
begin
  BTitel := true;
  showmessage(NameS);
end;

procedure TForm67.SpeedFryNameClick(Sender: TObject);
begin
  FryTitelClick(Sender);
end;

procedure TForm67.BildGroesseDClick(Sender: TObject);
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
  BildGroesseDClick(Sender);
end;

procedure TForm67.DTitelClick(Sender: TObject);
begin
  NNTitel := true;
  Showmessage(NameS);
end;

procedure TForm67.SpeedNNnameClick(Sender: TObject);
begin
  DTitelClick(Sender);
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
      assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
    assignFile(Datei,DirectS+'\'+'Fabric.ini');
    rewrite (Datei);
    for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
    closefile (Datei);
  end;
end;

procedure TForm67.CheckBoxBildClick(Sender: TObject);
begin
  PanelGroesse.Visible := false;
end;

procedure TForm67.FrySpeichernBMPClick(Sender: TObject);
var
  Bitmap : TBitmap;
  Rahmen : TRect;
begin
  Bitmap        := TBitmap.Create;
  Bitmap.Width  := BBReiteF;
  Bitmap.Height := BHoeheF;
  if BTitel then
  begin
    with ImageAuswertung.Canvas do
    begin
      Brush.Color := clWhite;
      Font.Color  := clBlack;
      Font.Size   := 12;
      Font.Name   := 'Times New Roman';
      Textout(0,0,NameS);
    end;
  end;
  Rahmen        := Rect(0,0,Bitmap.Width,Bitmap.Height);
  Bitmap.Canvas.Stretchdraw(Rahmen,ImageAuswertung.Picture.Graphic);
  try
    if (CurrentFile <> '') and (UCaseS(RightS(Currentfile,3)) = 'BMP')
    then Bitmap.SaveToFile(CurrentFile)
    else FrySpeichernUBMPClick(Sender);
  finally
    Bitmap.Free;
    CurrentFile := '';
  end;
  ImageAuswertung.Canvas.Draw(0,0,Frybild);
end;

procedure TForm67.SpeedFryBMPClick(Sender: TObject);
begin
 FrySpeichernBMPClick(Sender);
end;

procedure TForm67.FrySpeichernGIFClick(Sender: TObject);
var
  Bitmap  : TBitmap;
  GifBild : TGifImage;
  Rahmen  : TRect;
begin
  Bitmap        := TBitmap.Create;
  GifBild       := TGIFImage.Create;
  Bitmap.Width  := BBreiteF;
  Bitmap.Height := BHoeheF;
  Rahmen        := Rect(0,0,Bitmap.Width,Bitmap.Height);
  if BTitel then
  begin
    with ImageAuswertung.Canvas do
    begin
      Brush.Color := clWhite;
      Font.Color  := clBlack;
      Font.Size   := 12;
      Font.Name   := 'Times New Roman';
      Textout(0,0,NameS);
    end;
  end;
  Bitmap.Canvas.Stretchdraw(Rahmen,ImageAuswertung.Picture.Graphic);
  if HTransparent then
  begin
    Bitmap.Transparent := True;
    Bitmap.TransParentColor := HintFarbe;
  end
  else Bitmap.Transparent := false;
  try
    GifBild.Assign(Bitmap);
    if CurrentFile <> '' then GifBild.SaveToFile(CurrentFile)
    else FrySpeichernUGIFClick(Sender);
  finally
    Bitmap.Free;
    GifBild.Free;
  end;
  ImageAuswertung.Canvas.Draw(0,0,Frybild);
end;

procedure TForm67.SpeedFryGIFClick(Sender: TObject);
begin
  FrySpeichernGIFClick(Sender);
end;

procedure TForm67.FrySpeichernTIFClick(Sender: TObject);
var
  Bitmap :TBitmap;
  Rahmen : TRect;
begin
  Bitmap        := TBitmap.Create;
  Bitmap.Width  := BBreiteF;
  Bitmap.Height := BHoeheF;
  Rahmen        := Rect(0,0,Bitmap.Width,Bitmap.Height);
  if BTitel then
  begin
    with ImageAuswertung.Canvas do
    begin
      Brush.Color := clWhite;
      Font.Color  := clBlack;
      Font.Size   := 12;
      Font.Name   := 'Times New Roman';
      Textout(0,0,NameS);
    end;
  end;
  Bitmap.Canvas.Stretchdraw(Rahmen,ImageAuswertung.Picture.Graphic);
  try
    if CurrentFile <> '' then
      WriteTiffToFile(CurrentFile,Bitmap)
    else FrySpeichernUTIFClick(Sender);
  finally
    Bitmap.Free;
  end;
  ImageAuswertung.Canvas.Draw(0,0,Frybild);
end;

procedure TForm67.SpeedFryTIFClick(Sender: TObject);
begin
  FrySpeichernTIFClick(Sender);
end;

procedure TForm67.FrySpeichernJPGClick(Sender: TObject);
var
  DateiJ   : string;
  Rahmen   : TRect;
  Bild     : TBitmap;
  JpgDatei : TjpegImage;
begin
  JpgDatei    := TJpegImage.Create;
  Bild        := TBitmap.Create;
  Bild.Width  := BBreiteF;
  Bild.Height := BHoeheF;
  Rahmen      := Rect(0,0,Bild.Width,Bild.Height);
  if BTitel then
  begin
    with ImageAuswertung.Canvas do
    begin
      Brush.Color := clWhite;
      Font.Color  := clBlack;
      Font.Size   := 12;
      Font.Name   := 'Times New Roman';
      Textout(0,0,NameS);
    end;
  end;
  Bild.Canvas.Stretchdraw(Rahmen,ImageAuswertung.Picture.Graphic);
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
      else FrySpeichernUJPGClick(Sender);
    end;
  finally
    JpgDatei.Free;
    Bild.Free;
    Bild        := nil;
    JpgDatei    := nil;
    CurrentFile := '';
  end;
  ImageAuswertung.Canvas.Draw(0,0,Frybild);
end;



procedure TForm67.FrySpeichernWMFClick(Sender: TObject);
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
    Bitmap.Width  := BBreiteF;
    Bitmap.Height := BHoeheF;
    Rahmen        := Rect(0,0,Bitmap.Width,Bitmap.Height);
    if BTitel then
    begin
      with ImageAuswertung.Canvas do
      begin
        Brush.Color := clWhite;
        Font.Color  := clBlack;
        Font.Size   := 12;
        Font.Name   := 'Times New Roman';
        Textout(0,0,NameS);
      end;
    end;
    Bitmap.Canvas.Stretchdraw(Rahmen,ImageAuswertung.Picture.Graphic);
    try
      Bitmap.Assign(ImageAuswertung.Picture);
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
    else FrySpeichernUWMFClick(Sender);
  finally
    Metafile.Free;
  end;
  ImageAuswertung.Canvas.Draw(0,0,Frybild);
end;

procedure TForm67.SpeedFryWMFClick(Sender: TObject);
begin
  FrySpeichernWMFClick(Sender);
end;

procedure TForm67.FrySpeichernEMFClick(Sender: TObject);
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
      if BTitel then
      begin
        with ImageAuswertung.Canvas do
        begin
          Brush.Color := clWhite;
          Font.Color  := clBlack;
          Font.Size   := 12;
          Font.Name   := 'Times New Roman';
          Textout(0,0,NameS);
        end;
      end;
      Bitmap.Assign(ImageAuswertung.Picture);
      Metafile.Height := BHoeheF;
      Metafile.Width  := BBreiteF;
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
    else FrySpeichernUEMFClick(Sender);
  finally
    Metafile.Free;
  end;
  ImageAuswertung.Canvas.Draw(0,0,Frybild);
end;

procedure TForm67.SpeedFryEMFClick(Sender: TObject);
begin
  FrySpeichernEMFClick(Sender);
end;


procedure TForm67.FrySpeichernUBMPClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := GraphicExtension(TBitmap);
  SaveDialog1.Filter := GraphicFilter(TBitmap);
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    FrySpeichernBMPClick(Sender);
  end;
end;

procedure TForm67.FrySpeichernUGIFClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := GraphicExtension(TGIFImage);
  SaveDialog1.Filter     := GraphicFilter(TGIFImage);
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    FrySpeichernGIFClick(Sender);
  end;
end;

procedure TForm67.FrySpeichernUTIFClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := 'Tagged image file format (*.tif)|*.tif';
  SaveDialog1.Filter     := 'Tagged image file format (*.tif)|*.tif';;
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    FrySpeichernTIFClick(Sender);
  end;
end;

procedure TForm67.FrySpeichernUJPGClick(Sender: TObject);
begin
  SavePictureDialog1.DefaultExt := GraphicExtension(TJpegImage);
  SavePictureDialog1.Filter     := GraphicFilter(TJpegImage);
  if SavePictureDialog1.Execute then
  begin
    CurrentFile := SavePictureDialog1.Filename;
    FrySpeichernJPGClick(Sender);
  end;
end;

procedure TForm67.FrySpeichernUWMFClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := GraphicExtension(TMetaFile);
  SaveDialog1.Filter     := GraphicFilter(TMetaFile);
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    FrySpeichernWMFClick(Sender);
  end;
end;

procedure TForm67.FrySpeichernUEMFClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := GraphicExtension(TMetaFile);
  SaveDialog1.Filter     := GraphicFilter(TMetaFile);
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    FrySpeichernEMFClick(Sender);
  end;
end;

procedure TForm67.SpeedFryJpgClick(Sender: TObject);
begin
  FrySpeichernJPGClick(Sender);
end;

procedure TForm67.FjpgSpUnterClick(Sender: TObject);
begin
  SavePictureDialog1.DefaultExt := GraphicExtension(TJpegImage);
  SavePictureDialog1.Filter := GraphicFilter(TJpegImage);
  if SavePictureDialog1.Execute then
  begin
    CurrentFile := SavePictureDialog1.Filename;
    FrySpeichernJPGClick(Sender);
  end;
end;

procedure TForm67.DSpeichernBMPClick(Sender: TObject);
var
  Bitmap : TBitmap;
  Rahmen : TRect;
begin
  Bitmap        := TBitmap.Create;
  Bitmap.Width  := BBReiteD;
  Bitmap.Height := BHoeheD;
  Rahmen        := Rect(0,0,Bitmap.Width,Bitmap.Height);
  if NNTitel then
  begin
    with ImageTheta.Canvas do
    begin
      Brush.Color := clWhite;
      Font.Color  := clBlack;
      Font.Size   := 10;
      Font.Name   := 'Times New Roman';
      Textout(0,0,NameS);
    end;
  end;
  Bitmap.Canvas.Stretchdraw(Rahmen,ImageTheta.Picture.Graphic);
  try
    if (CurrentFile <> '') and (UCaseS(RightS(Currentfile,3)) = 'BMP')
    then Bitmap.SaveToFile(CurrentFile)
    else DSpeichernUBMPClick(Sender);
  finally
    Bitmap.Free;
    CurrentFile := '';
  end;
  ImageTheta.Canvas.Draw(0,0,ThetaBild);
end;

procedure TForm67.SpeedNNBMPClick(Sender: TObject);
begin
  DSpeichernBMPClick(Sender);
end;

procedure TForm67.DSpeichernGIFClick(Sender: TObject);
var
  Bitmap  : TBitmap;
  GifBild : TGifImage;
  Rahmen  : TRect;
begin
  Bitmap        := TBitmap.Create;
  GifBild       := TGIFImage.Create;
  Bitmap.Width  := BBreiteD;
  Bitmap.Height := BHoeheD;
  Rahmen        := Rect(0,0,Bitmap.Width,Bitmap.Height);
  if NNTitel then
  begin
    with ImageTheta.Canvas do
    begin
      Brush.Color := clWhite;
      Font.Color  := clBlack;
      Font.Size   := 10;
      Font.Name   := 'Times New Roman';
      Textout(0,0,NameS);
    end;
  end;
  Bitmap.Canvas.Stretchdraw(Rahmen,ImageTheta.Picture.Graphic);
  if HTransparent then
  begin
    Bitmap.Transparent := True;
    Bitmap.TransParentColor := HintFarbe;
  end
  else Bitmap.Transparent := false;
  try
    GifBild.Assign(Bitmap);
    if CurrentFile <> '' then GifBild.SaveToFile(CurrentFile)
    else DSpeichernUGIFClick(Sender);
  finally
    Bitmap.Free;
    GifBild.Free;
  end;
  ImageTheta.Canvas.Draw(0,0,ThetaBild);
end;

procedure TForm67.SpeedNNGIFClick(Sender: TObject);
begin
  DspeichernGIFClick(Sender);
end;

procedure TForm67.DSpeichernTIFClick(Sender: TObject);
var
  Bitmap : TBitmap;
  Rahmen : TRect;
begin
  Bitmap        := TBitmap.Create;
  Bitmap.Width  := BBreiteD;
  Bitmap.Height := BHoeheD;
  Rahmen        := Rect(0,0,Bitmap.Width,Bitmap.Height);
  if NNTitel then
  begin
    with ImageTheta.Canvas do
    begin
      Brush.Color := clWhite;
      Font.Color  := clBlack;
      Font.Size   := 10;
      Font.Name   := 'Times New Roman';
      Textout(0,0,NameS);
    end;
  end;
  Bitmap.Canvas.Stretchdraw(Rahmen,ImageTheta.Picture.Graphic);
  try
    if CurrentFile <> '' then
      WriteTiffToFile(CurrentFile,Bitmap)
    else DSpeichernUTIFClick(Sender);
  finally
    Bitmap.Free;
  end;
  ImageTheta.Canvas.Draw(0,0,ThetaBild);
end;

procedure TForm67.SpeedNNTIFClick(Sender: TObject);
begin
  DspeichernTIFClick(Sender);
end;

procedure TForm67.DSpeichernJPGClick(Sender: TObject);
var
  DateiJ   : string;
  Rahmen   : TRect;
  Bild     : TBitmap;
  JpgDatei : TjpegImage;
begin
  JpgDatei    := TJpegImage.Create;
  Bild        := TBitmap.Create;
  Bild.Width  := BBreiteD;
  Bild.Height := BHoeheD;
  Rahmen      := Rect(0,0,Bild.Width,Bild.Height);
  if NNTitel then
  begin
    with ImageTheta.Canvas do
    begin
      Brush.Color := clWhite;
      Font.Color  := clBlack;
      Font.Size   := 10;
      Font.Name   := 'Times New Roman';
      Textout(0,0,NameS);
    end;
  end;
  Bild.Canvas.Stretchdraw(Rahmen,ImageTheta.Picture.Graphic);
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
      else DSpeichernUJPGClick(Sender);
    end;
  finally
    JpgDatei.Free;
    Bild.Free;
    Bild        := nil;
    JpgDatei    := nil;
    CurrentFile := '';
  end;
  ImageTheta.Canvas.Draw(0,0,ThetaBild);
end;

procedure TForm67.SpeedNNJPGClick(Sender: TObject);
begin
  DspeichernJPGClick(Sender);
end;

procedure TForm67.DSpeichernWMFClick(Sender: TObject);
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
    Bitmap.Width  := BBreiteD;
    Bitmap.Height := BHoeheD;
    Rahmen        := Rect(0,0,Bitmap.Width,Bitmap.Height);
    if NNTitel then
    begin
      with ImageTheta.Canvas do
      begin
        Brush.Color := clWhite;
        Font.Color  := clBlack;
        Font.Size   := 10;
        Font.Name   := 'Times New Roman';
        Textout(0,0,NameS);
      end;
    end;
    Bitmap.Canvas.Stretchdraw(Rahmen,ImageTheta.Picture.Graphic);
    try
      Bitmap.Assign(ImageTheta.Picture);
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
    else DSpeichernUWMFClick(Sender);
  finally
    Metafile.Free;
  end;
  ImageTheta.Canvas.Draw(0,0,ThetaBild);
end;

procedure TForm67.SpeedNNWMFClick(Sender: TObject);
begin
  DspeichernWMFClick(Sender);
end;

procedure TForm67.DSpeichernEMFClick(Sender: TObject);
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
      if NNTitel then
      begin
        with ImageTheta.Canvas do
        begin
          Brush.Color := clWhite;
          Font.Color  := clBlack;
          Font.Size   := 10;
          Font.Name   := 'Times New Roman';
          Textout(0,0,NameS);
        end;
      end;
      Bitmap.Assign(ImageTheta.Picture);
      Metafile.Height := BHoeheD;
      Metafile.Width  := BBreiteD;
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
    else DSpeichernUEMFClick(Sender);
  finally
    Metafile.Free;
  end;
  ImageTheta.Canvas.Draw(0,0,ThetaBild);
end;

procedure TForm67.SpeedNNEMFClick(Sender: TObject);
begin
  DspeichernEMFClick(Sender);
end;

procedure TForm67.DSpeichernUBMPClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := GraphicExtension(TBitmap);
  SaveDialog1.Filter := GraphicFilter(TBitmap);
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    DSpeichernBMPClick(Sender);
  end;
end;

procedure TForm67.DSpeichernUGIFClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := GraphicExtension(TGIFImage);
  SaveDialog1.Filter     := GraphicFilter(TGIFImage);
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    DSpeichernGIFClick(Sender);
  end;
end;

procedure TForm67.DSpeichernUTIFClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := 'Tagged image file format (*.tif)|*.tif';
  SaveDialog1.Filter     := 'Tagged image file format (*.tif)|*.tif';;
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    DSpeichernTIFClick(Sender);
  end;
end;

procedure TForm67.DSpeichernUJPGClick(Sender: TObject);
begin
  SavePictureDialog1.DefaultExt := GraphicExtension(TJpegImage);
  SavePictureDialog1.Filter     := GraphicFilter(TJpegImage);
  if SavePictureDialog1.Execute then
  begin
    CurrentFile := SavePictureDialog1.Filename;
    DSpeichernJPGClick(Sender);
  end;
end;

procedure TForm67.DSpeichernUWMFClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := GraphicExtension(TMetaFile);
  SaveDialog1.Filter     := GraphicFilter(TMetaFile);
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    DSpeichernWMFClick(Sender);
  end;
end;

procedure TForm67.DSpeichernUEMFClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := GraphicExtension(TMetaFile);
  SaveDialog1.Filter     := GraphicFilter(TMetaFile);
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    DSpeichernEMFClick(Sender);
  end;
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

procedure TForm67.DruckerEinrichtenClick(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TForm67.SpeedEinrichtenClick(Sender: TObject);
begin
  DruckerEinrichtenClick(Sender);
end;

procedure TForm67.FdruckenClick(Sender: TObject);
var
  i      : byte;
begin
  Dbild                   := 'Fry';
  GroupBoxDrucken.Visible := true;
  ButtonDrucken.Enabled   := false;
  MaskEditLinks.EditMask  := '9999;0; ';
  MaskEditOben.EditMask   := '9999;0; ';
  MaskEditLaenge.EditMask := '9999;0; ';
  MaskEditLinks.Text      := IntToStr(Links);
  MaskEditOben.Text       := IntToStr(Oben);
  MaskEditLaenge.Text     := IntToStr(Laenge);
  MaskEditSchrift.Clear;
  For i := 4 to 40 do
    ListBoxSchrift.Items.Add (IntToStr(i));
end;

procedure TForm67.SpeedFryDruckenClick(Sender: TObject);
begin
  FDruckenClick(Sender);
end;

procedure TForm67.DdruckenClick(Sender: TObject);
var
  i : byte;
begin
  Dbild                   := 'Dalpha';
  GroupBoxDrucken.Visible := true;
  ButtonDrucken.Enabled   := false;
  MaskEditLinks.EditMask  := '9999;0; ';
  MaskEditOben.EditMask   := '9999;0; ';
  MaskEditLaenge.EditMask := '9999;0; ';
  MaskEditLinks.Text      := IntToStr(Links);
  MaskEditOben.Text       := IntToStr(Oben);
  MaskEditLaenge.Text     := IntToStr(Laenge);
  MaskEditSchrift.Clear;
  For i := 4 to 40 do
    ListBoxSchrift.Items.Add (IntToStr(i));
end;

procedure TForm67.SpeedDruckenClick(Sender: TObject);
begin
  DdruckenClick(Sender);
end;

procedure TForm67.ButtonDruckenClick(Sender: TObject);
var
  Bitmap  : TBitmap;
  Fenster : TRect;
  LRand   : word;
  ORand   : word;
  BLaenge : word;
begin
  Links   := StrToInt(MaskEditLinks.Text);
  LRand   := round(Links*Printer.PageWidth/100);
  Oben    := StrToInt(MaskEditOben.Text);
  ORand   := round(Oben*Printer.Pagewidth/100);
  Laenge  := StrToInt(MaskEditLaenge.Text);
  BLaenge := round(Laenge*Printer.Pagewidth/100);
  with Fenster do
  begin
    if Dbild = 'Fry' then
    begin
      Left   := LRand;
      Top    := ORand;
      Right  := LRand + BLaenge;
      Bottom := ORand + round(2*BLaenge/3);
    end;
    if Dbild = 'Dalpha' then
    begin
      Left   := LRand;
      Top    := ORand;
      Right  := LRand + BLaenge;
      Bottom := ORand + round(BLaenge/2);
    end;
  end;
  Bitmap:=TBitmap.Create;
  try
    if Dbild = 'Fry' then
      Bitmap.Assign(ImageAuswertung.picture.graphic);
    if Dbild = 'Dalpha' then
      Bitmap.Assign(ImageTheta.picture.graphic);
    with Printer do
    begin
      Canvas.Font.Size  := Schrift;
      Canvas.Font.Name  := 'Times New Roman';
      Canvas.Font.Color := clBlack;
      BeginDoc;
        Canvas.StretchDraw(Fenster,Bitmap);
        Canvas.Textout (Fenster.Left,Fenster.Bottom, TextS);
      EndDoc;
    end;
  finally
    Bitmap.free;
  end;
  GroupBoxDrucken.Visible := false;
end;

procedure TForm67.ButtonDabbrechenClick(Sender: TObject);
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
end;

procedure TForm67.MaskEditSchriftKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(13) then
  begin
    TextS := MaskEditSchrift.Text;
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
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\fry-7d2f.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\Fry-plot.htm');
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

end.
