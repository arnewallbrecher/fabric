unit Unit88;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, ComCtrls, Texte, Globvar, Basic,
  ExtCtrls, RfPhi, Math, Menus, Plotten, ClipBrd, Jpeg, ExtDlgs,
  Mask, Printers, Drucken, Einausga, Buttons, ShellApi, Standard,
  GifImage, Bmp2Tiff, ehsHelpRouter;

type
  TForm88 = class(TForm)
    LabelDemo: TLabel;
    ButtonStart: TButton;
    ButtonZurueck: TButton;
    ButtonBeenden: TButton;
    StatusBar: TStatusBar;
    ListBoxDaten: TListBox;
    LabelDaten: TLabel;
    LabelRf: TLabel;
    LabelPhi: TLabel;
    ImageGrafik: TImage;
    LabelZahl: TLabel;
    LabelIndex: TLabel;
    MainMenu1: TMainMenu;
    PFarbe: TMenuItem;
    ColorDialog1: TColorDialog;
    SymbolDaten: TMenuItem;
    KreisO: TMenuItem;
    KreisG: TMenuItem;
    QuadratO: TMenuItem;
    QuadratG: TMenuItem;
    DreieckO: TMenuItem;
    DreieckG: TMenuItem;
    RauteO: TMenuItem;
    RauteG: TMenuItem;
    PanelSym: TPanel;
    LabelSym: TLabel;
    LabelIsym: TLabel;
    RadioProzent: TRadioGroup;
    Radio5: TRadioButton;
    Radio10: TRadioButton;
    PanelHarm: TPanel;
    LabelHarm: TLabel;
    LabelHmittel: TLabel;
    LabelVektormittel: TLabel;
    LabelPh: TLabel;
    LabelVek: TLabel;
    ImageChi: TImage;
    ButtonChi: TButton;
    PanelRs: TPanel;
    LabelRs: TLabel;
    LabelRsZahl: TLabel;
    LabelFreiheit: TLabel;
    LabelNfr: TLabel;
    ChiQuadratF: TMenuItem;
    ChiHintergrund: TMenuItem;
    ChiKoordinaten: TMenuItem;
    ChiKurve: TMenuItem;
    SaveDialog1: TSaveDialog;
    SavePictureDialog1: TSavePictureDialog;
    ChiKopieren: TMenuItem;
    ChiSpeichern: TMenuItem;
    ChiSpeichernU: TMenuItem;
    PrinterSetupDialog1: TPrinterSetupDialog;
    Paneldrucken: TPanel;
    GroupBoxdrucken: TGroupBox;
    Panel9: TPanel;
    LabelKdrucken: TLabel;
    MaskEditKdrucken: TMaskEdit;
    Panel11: TPanel;
    LabelUnterschrift: TLabel;
    LabelSchrift: TLabel;
    MaskEditUnterschrift: TMaskEdit;
    ListBoxSchrift: TListBox;
    RadioGroup: TRadioGroup;
    RadioButtonLinks: TRadioButton;
    RadioButtonZentriert: TRadioButton;
    RadioButtonRechts: TRadioButton;
    PanelKoordinaten: TPanel;
    LabelMitte: TLabel;
    LabelXdrucken: TLabel;
    LabelYdrucken: TLabel;
    LabelMittel: TLabel;
    MaskEditXdrucken: TMaskEdit;
    MaskEditYdrucken: TMaskEdit;
    Dspeichern: TMenuItem;
    DatSpeichern: TMenuItem;
    DSpeichernUnter: TMenuItem;
    ErgDrucken: TMenuItem;
    Eeinrichten: TMenuItem;
    Edrucken: TMenuItem;
    Hilfe: TMenuItem;
    Handbuch: TMenuItem;
    Literatur: TMenuItem;
    RfGrafik: TMenuItem;
    Rfkopieren: TMenuItem;
    RfSpeichern: TMenuItem;
    RfSpeichernU: TMenuItem;
    FarbeHintergrund: TMenuItem;
    FarbeDiagramm: TMenuItem;
    FarbeKoordinaten: TMenuItem;
    PanelSpeed: TPanel;
    SpeedFarbeP: TSpeedButton;
    SpeedKreisO: TSpeedButton;
    SpeedKreisG: TSpeedButton;
    SpeedQuadratO: TSpeedButton;
    SpeedQuadratG: TSpeedButton;
    SpeedDreieckO: TSpeedButton;
    SpeedDreieckG: TSpeedButton;
    SpeedRauteO: TSpeedButton;
    SpeedRauteG: TSpeedButton;
    SpeedRfKopieren: TSpeedButton;
    SpeedRfHinter: TSpeedButton;
    SpeedRfFarbeDiagramm: TSpeedButton;
    LabelRfphi: TLabel;
    SpeedRfFarbeKoordinaten: TSpeedButton;
    SpeedChiKopieren: TSpeedButton;
    SpeedChiHintergrund: TSpeedButton;
    LabelChi: TLabel;
    SpeedChiKoordinaten: TSpeedButton;
    SpeedChiGraph: TSpeedButton;
    SpeedDEinrichten: TSpeedButton;
    SpeedRfDrucken: TSpeedButton;
    SpeedChiDrucker: TSpeedButton;
    SpeedDSpeichern: TSpeedButton;
    SpeedErgDrucken: TSpeedButton;
    SpeedHilfe: TSpeedButton;
    SpeedHandbuch: TSpeedButton;
    SpeedLiteratur: TSpeedButton;
    OpenDialog1: TOpenDialog;
    MaskEditDatei: TMaskEdit;
    LabelDatei: TLabel;
    LabelBerechnet: TLabel;
    LabelTable: TLabel;
    BildgroesseRf: TMenuItem;
    PanelGroesse: TPanel;
    LabelBHoehe: TLabel;
    LabelBBreite: TLabel;
    MaskEditBHoehe: TMaskEdit;
    MaskEditBBreite: TMaskEdit;
    CheckBoxBild: TCheckBox;
    BildGroesseCh: TMenuItem;
    SpeedGroesseCh: TSpeedButton;
    SpeedGroesseRf: TSpeedButton;
    RFspeichernBMP: TMenuItem;
    RfspeichernGIF: TMenuItem;
    RfspeichernTIF: TMenuItem;
    RfspeichernJPG: TMenuItem;
    RfspeichernWMF: TMenuItem;
    RfspeichernEMF: TMenuItem;
    RfspeichernUBMP: TMenuItem;
    RfspeichernUGIF: TMenuItem;
    RfspeichernUTIF: TMenuItem;
    RfspeichernUJPG: TMenuItem;
    RfspeichernUWMF: TMenuItem;
    RfspeichernUEMF: TMenuItem;
    ChispeichernBMP: TMenuItem;
    ChispeichernGIF: TMenuItem;
    ChispeichernTIF: TMenuItem;
    ChispeichernJPG: TMenuItem;
    ChispeichernWMF: TMenuItem;
    ChispeichernEMf: TMenuItem;
    ChispeichernUBMP: TMenuItem;
    ChispeichernUGIF: TMenuItem;
    ChispeichernUTIF: TMenuItem;
    ChispeichernUJPG: TMenuItem;
    ChispeichernUWMF: TMenuItem;
    ChispeichernUEMF: TMenuItem;
    RfDrucker: TMenuItem;
    Rfeinrichten: TMenuItem;
    Rfdrucken1: TMenuItem;
    ChiDrucker1: TMenuItem;
    ChiEinrichten1: TMenuItem;
    ChiDrucken1: TMenuItem;
    SpeedRFBMP: TSpeedButton;
    SpeedRfGIF: TSpeedButton;
    SpeedRfTIF: TSpeedButton;
    SpeedRfJPG: TSpeedButton;
    SpeedRfWMF: TSpeedButton;
    SpeedRfEMF: TSpeedButton;
    SpeedChiBMP: TSpeedButton;
    SpeedChiGIF: TSpeedButton;
    SpeedChiTIF: TSpeedButton;
    SpeedChiJPG: TSpeedButton;
    SpeedChiWMF: TSpeedButton;
    SpeedChiEMF: TSpeedButton;
    Label1: TLabel;
    SpeedChiEinr: TSpeedButton;
    ButtonDrucken: TButton;
    ButtonAbbrechen: TButton;
    procedure FormShow(Sender: TObject);
    procedure ShowHint(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ButtonZurueckClick(Sender: TObject);
    procedure ButtonBeendenClick(Sender: TObject);
    procedure ButtonStartClick(Sender: TObject);
    procedure PFarbeClick(Sender: TObject);
    procedure KreisOClick(Sender: TObject);
    procedure KreisGClick(Sender: TObject);
    procedure QuadratOClick(Sender: TObject);
    procedure QuadratGClick(Sender: TObject);
    procedure DreieckOClick(Sender: TObject);
    procedure DreieckGClick(Sender: TObject);
    procedure RauteOClick(Sender: TObject);
    procedure RauteGClick(Sender: TObject);
    procedure FarbeDiagrammClick(Sender: TObject);
    procedure FarbeKoordinatenClick(Sender: TObject);
    procedure FarbeHintergrundClick(Sender: TObject);
    procedure Radio5Click(Sender: TObject);
    procedure Radio10Click(Sender: TObject);
    procedure HarmMittelClick(Sender: TObject);
    procedure VekMittelClick(Sender: TObject);
    procedure ButtonChiClick(Sender: TObject);
    procedure ImageChiMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ChiHintergrundClick(Sender: TObject);
    procedure ChiKoordinatenClick(Sender: TObject);
    procedure ChiKurveClick(Sender: TObject);
    procedure RfkopierenClick(Sender: TObject);
    procedure RfSpeichernBMPClick(Sender: TObject);
    procedure RfSpeichernJPGClick(Sender: TObject);
    procedure ChiKopierenClick(Sender: TObject);
    procedure MaskEditUnterschriftKeyPress(Sender: TObject; var Key: Char);
    procedure ListBoxSchriftClick(Sender: TObject);
    procedure RadioButtonZentriertClick(Sender: TObject);
    procedure RadioButtonLinksClick(Sender: TObject);
    procedure RadioButtonRechtsClick(Sender: TObject);
    procedure DatSpeichernClick(Sender: TObject);
    procedure DSpeichernUnterClick(Sender: TObject);
    procedure EeinrichtenClick(Sender: TObject);
    procedure EdruckenClick(Sender: TObject);
    procedure SpeedFarbePClick(Sender: TObject);
    procedure SpeedKreisOClick(Sender: TObject);
    procedure SpeedKreisGClick(Sender: TObject);
    procedure SpeedQuadratOClick(Sender: TObject);
    procedure SpeedQuadratGClick(Sender: TObject);
    procedure SpeedDreieckOClick(Sender: TObject);
    procedure SpeedRauteOClick(Sender: TObject);
    procedure SpeedRauteGClick(Sender: TObject);
    procedure SpeedRfKopierenClick(Sender: TObject);
    procedure SpeedRfHinterClick(Sender: TObject);
    procedure SpeedRfFarbeDiagrammClick(Sender: TObject);
    procedure SpeedRfFarbeKoordinatenClick(Sender: TObject);
    procedure SpeedChiHintergrundClick(Sender: TObject);
    procedure SpeedChiKoordinatenClick(Sender: TObject);
    procedure SpeedChiGraphClick(Sender: TObject);
    procedure SpeedDSpeichernClick(Sender: TObject);
    procedure SpeedErgDruckenClick(Sender: TObject);
    procedure HilfeClick(Sender: TObject);
    procedure SpeedHilfeClick(Sender: TObject);
    procedure HandbuchClick(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
    procedure SpeedLiteraturClick(Sender: TObject);
    procedure SpeedDreieckGClick(Sender: TObject);
    procedure SpeedChiKopierenClick(Sender: TObject);
    procedure BildgroesseRfClick(Sender: TObject);
    procedure MaskEditBBreiteKeyPress(Sender: TObject; var Key: Char);
    procedure BildGroesseChClick(Sender: TObject);
    procedure MaskEditBHoeheKeyPress(Sender: TObject; var Key: Char);
    procedure CheckBoxBildClick(Sender: TObject);
    procedure SpeedGroesseRfClick(Sender: TObject);
    procedure SpeedGroesseChClick(Sender: TObject);
    procedure RfspeichernGIFClick(Sender: TObject);
    procedure RfspeichernTIFClick(Sender: TObject);
    procedure RfspeichernWMFClick(Sender: TObject);
    procedure RfspeichernEMFClick(Sender: TObject);
    procedure RfspeichernUBMPClick(Sender: TObject);
    procedure RfspeichernUGIFClick(Sender: TObject);
    procedure RfspeichernUTIFClick(Sender: TObject);
    procedure RfspeichernUJPGClick(Sender: TObject);
    procedure RfspeichernUWMFClick(Sender: TObject);
    procedure RfspeichernUEMFClick(Sender: TObject);
    procedure ChispeichernBMPClick(Sender: TObject);
    procedure ChispeichernGIFClick(Sender: TObject);
    procedure ChispeichernTIFClick(Sender: TObject);
    procedure ChispeichernJPGClick(Sender: TObject);
    procedure ChispeichernWMFClick(Sender: TObject);
    procedure ChispeichernEMfClick(Sender: TObject);
    procedure ChispeichernUBMPClick(Sender: TObject);
    procedure ChispeichernUGIFClick(Sender: TObject);
    procedure ChispeichernUTIFClick(Sender: TObject);
    procedure ChispeichernUJPGClick(Sender: TObject);
    procedure ChispeichernUWMFClick(Sender: TObject);
    procedure ChispeichernUEMFClick(Sender: TObject);
    procedure RfeinrichtenClick(Sender: TObject);
    procedure Rfdrucken1Click(Sender: TObject);
    procedure ChiEinrichten1Click(Sender: TObject);
    procedure ChiDrucken1Click(Sender: TObject);
    procedure SpeedRFBMPClick(Sender: TObject);
    procedure SpeedRfGIFClick(Sender: TObject);
    procedure SpeedRfTIFClick(Sender: TObject);
    procedure SpeedRfJPGClick(Sender: TObject);
    procedure SpeedRfWMFClick(Sender: TObject);
    procedure SpeedRfEMFClick(Sender: TObject);
    procedure SpeedDEinrichtenClick(Sender: TObject);
    procedure SpeedRfDruckenClick(Sender: TObject);
    procedure SpeedChiEinrClick(Sender: TObject);
    procedure SpeedChiDruckerClick(Sender: TObject);
    procedure SpeedChiBMPClick(Sender: TObject);
    procedure SpeedChiGIFClick(Sender: TObject);
    procedure SpeedChiTIFClick(Sender: TObject);
    procedure SpeedChiJPGClick(Sender: TObject);
    procedure SpeedChiWMFClick(Sender: TObject);
    procedure SpeedChiEMFClick(Sender: TObject);
    procedure ButtonDruckenClick(Sender: TObject);
    procedure ButtonAbbrechenClick(Sender: TObject);
  end;

var
  Form88      : TForm88;
  Bitmap      : TBitmap;
  Hmittel     : real;
  Isym        : real;
  Dist, Index : real;
  Vm          : integer;
  n           : word;
  ChiSum      : array[0..100] of real;
  ChiRS       : array[0..100] of real;
  RsMinS      : string;
  RsMin       : real;
  Ndf         : byte;
  CurrentFile : string;
  JPGDatei    : TJpegImage;
  TextS       : string;
  Gedrueckt   : array [1..3] of boolean;
  BuendigS    : string;
  Bild        : TImage;
  VmittelS    : string;
  NdfS, IsymS : string;
  HmittelS    : string;
  IndexS      : string;
  BildRf      : boolean;
  BildCh      : boolean;
  BHoeheF     : word;
  BHoeheCh    : word;
  RatioRf     : real;
  RatioCh     : real;

implementation
{$R *.DFM}
uses Unit86;

procedure TForm88.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm88.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm88.FormActivate(Sender: TObject);
begin
  Left   := 4;
  Top    := 0;
  Width  := 1040;
  Height := 750;
  Form88.Caption := 'Fabric8: '+Tx(1363);
  LabelDemo.Visible        := false;
  if DemoB then
    LabelDemo.Visible      := true;
  setlength (Rf, MaxDaten);
  setlength (Rphi,MaxDaten);
  ButtonZurueck.Caption    := Tx(30);
  ButtonBeenden.Caption    := Tx(53);
  PFarbe.Caption           := Tx(662);
  SymbolDaten.Caption      := Tx(846);
  RfGrafik.Caption         := Tx(1372);
  ChiQuadratF.Caption      := Tx(1373);
  Dspeichern.Caption       := Tx(86);
  ErgDrucken.Caption       := Tx(1376);
  KreisO.Caption           := Tx(262);
  KreisG.Caption           := Tx(263);
  QuadratO.Caption         := Tx(266);
  QuadratG.Caption         := Tx(267);
  DreieckO.Caption         := Tx(264);
  DreieckG.Caption         := Tx(265);
  RauteO.Caption           := Tx(268);
  RauteG.Caption           := Tx(269);
  RfKopieren.Caption       := Tx(282);
  RfSpeichern.Caption      := Tx(87);
  RfSpeichernU.Caption     := Tx(88);
  FarbeHintergrund.Caption := Tx(856);
  FarbeDiagramm.Caption    := Tx(860);
  FarbeKoordinaten.Caption := Tx(862);
  ChiKopieren.Caption      := Tx(282);
  ChiHintergrund.Caption   := Tx(856);
  ChiKoordinaten.Caption   := Tx(862);
  ChiKurve.Caption         := Tx(1378);
  RfDrucker.Caption        := Tx(1379);
  RfEinrichten.Caption     := Tx(94);
  RfDrucken1.Caption       := Tx(93);
  ChiEinrichten1.Caption    := Tx(94);
  ChiDrucker1.Caption       := Tx(92);
  ChiDrucken1.Caption      := Tx(93);
  Dspeichern.Caption       := Tx(86);
  DatSpeichern.Caption     := Tx(87);
  DspeichernUnter.Caption  := Tx(88);
  ErgDrucken.Caption       := Tx(1381);
  Eeinrichten.Caption      := Tx(94);
  Edrucken.Caption         := Tx(93);
  Hilfe.Caption            := Tx(162);
  Handbuch.Caption         := Tx(1055);
  Literatur.Caption        := Tx(1183);
  LabelDaten.Caption       := Tx(101);
  RadioProzent.Caption     := Tx(508)+':';
  LabelFreiheit.Caption    := Tx(1386);
  LabelHarm.Caption        := Tx(1382);
  LabelVek.Caption         := Tx(1383);
  LabelSym.Caption         := Tx(1384);
  LabelBerechnet.Caption   := Tx(1447);
  LabelTable.Caption       := Tx(1448);
  SpeedFarbeP.Hint         := Hilf(523);
  SpeedKreisO.Hint         := Hilf(371);
  SpeedKreisG.Hint         := Hilf(372);
  SpeedDreieckO.Hint       := Hilf(373);
  SpeedDreieckG.Hint       := Hilf(374);
  SpeedQuadratO.Hint       := Hilf(375);
  SpeedQuadratG.Hint       := Hilf(376);
  SpeedRauteO.Hint         := Hilf(377);
  SpeedRauteG.Hint         := Hilf(378);
  SpeedRfKopieren.Hint     := Hilf(262);
  SpeedChiKopieren.Hint    := Hilf(262);
  SpeedRfHinter.Hint           := Hilf(443);
  SpeedRfFarbeDiagramm.Hint    := Hilf(441);
  SpeedChiHintergrund.Hint     := Hilf(441);
  SpeedRfFarbeKoordinaten.Hint := Hilf(444);
  SpeedChiKoordinaten.Hint     := Hilf(444);
  SpeedChiGraph.Hint           := Hilf(540);
  SpeedDEinrichten.Hint        := Hilf(505);
  SpeedRfDrucken.Hint          := Hilf(541);
  SpeedChiDrucker.Hint         := Hilf(542);
  SpeedErgDrucken.Hint         := Hilf(543);
  SpeedDspeichern.Hint         := Hilf(204);
  SpeedHilfe.Hint              := Hilf(210);
  SpeedHandbuch.Hint           := Hilf(274);
  SpeedLiteratur.Hint          := Hilf(462);
  SpeedGroesseRf.Hint          := Hilf(583);
  SpeedGroesseCh.Hint          := Hilf(583);
  SpeedRFBMP.Hint              := Hilf(586);
  SpeedRfGIF.Hint              := Hilf(587);
  SpeedRfTIF.Hint              := Hilf(588);
  SpeedRfJPG.Hint              := Hilf(589);
  SpeedRfWMF.Hint              := Hilf(590);
  SpeedRfEMF.Hint              := Hilf(591);
  SpeedChiBMP.Hint             := Hilf(586);
  SpeedChiGIF.Hint             := Hilf(587);
  SpeedChiTIF.Hint             := Hilf(588);
  SpeedChiJPG.Hint             := Hilf(589);
  SpeedChiWMF.Hint             := Hilf(590);
  SpeedChiEMF.Hint             := Hilf(591);
  SpeedChiEinr.Hint            := Hilf(505);
  LabelDaten.Visible       := false;
  LabelRf.Visible          := false;
  LabelPhi.Visible         := false;
  LabelZahl.Caption        := '';
  LabelIndex.Caption       := '';
  PanelSym.Visible         := false;
  RadioProzent.Visible     := false;
  Radio5.Visible           := false;
  Radio10.Visible          := false;
  ImageGrafik.Enabled      := false;
  ListBoxDaten.Clear;
  LabelHmittel.Caption     := '';
  PanelHarm.Visible        := false;
  ImageChi.Visible         := false;
  ButtonChi.Visible        := false;
  PanelRs.Visible          := false;
  PanelDrucken.Visible     := false;
  PFarbe.Enabled           := false;
  SymbolDaten.Enabled      := false;
  RfGrafik.Enabled         := false;
  ChiQuadratF.Enabled      := false;
  RfDrucker.Enabled        := false;
  ChiDrucker1.Enabled      := false;
  Dspeichern.Enabled       := false;
  ErgDrucken.Enabled       := false;
  PanelSpeed.Visible       := false;
  SpeedRfKopieren.Enabled         := false;
  SpeedRfHinter.Visible           := false;
  SpeedRfFarbeKoordinaten.Visible := false;
  SpeedRfFarbeDiagramm.Visible    := false;
  SpeedRfDrucken.Visible          := false;
  SpeedChiKopieren.Enabled        := false;
  SpeedChiHintergrund.Visible     := false;
  SpeedChiKoordinaten.Visible     := false;
  SpeedChiGraph.Visible           := false;
  SpeedChiDrucker.Visible         := false;
  SpeedErgDrucken.Visible         := false;
  SpeedGroesseCh.Visible          := false;
  MaskEditBBreite.EditMask        := '99999;0; ';
  MaskEditBHoehe.EditMask         := '99999;0; ';
  BildGroesseRf.Caption           := Tx(1439);
  BildGroesseCh.Caption           := Tx(1439);
  LabelBBreite.Caption      := Tx(1440);
  LabelBHoehe.Caption       := Tx(1441);
  BildRf                    := false;
  BildCh                    := false;
  PanelGroesse.Visible      := false;
  RatioRf := ImageGrafik.Width/ImageGrafik.Height;
  RatioCh := ImageChi.Width/ImageChi.Height;
end;

procedure TForm88.ButtonZurueckClick(Sender: TObject);
var
  Flaeche : TRect;
begin
  Flaeche := Rect(0,0,Clientwidth,ClientHeight);
  Loeschen (ImageGrafik.Canvas, Flaeche);
  Loeschen (ImageChi.Canvas, Flaeche);
  Rf   := Nil;
  RPhi := Nil;
  Bitmap.free;
  Form88.Close;
  SetCurrentDir(DirectS);  
end;

procedure TForm88.ButtonBeendenClick(Sender: TObject);
var
  Flaeche : TRect;
begin
  Flaeche := Rect(0,0,Clientwidth,ClientHeight);
  Loeschen (ImageGrafik.Canvas, Flaeche);
  Loeschen (ImageChi.Canvas, Flaeche);
  Rf   := Nil;
  RPhi := Nil;
  Bitmap.free;
  Form88.Close;
  Form86.Close;
  SetCurrentDir(DirectS);
end;

procedure TForm88.ButtonStartClick(Sender: TObject);
var
  Datei    : TextFile;
  NameS    : string;
  ZeileRFS : string;
  R        : real;
  ZeileS   : string;
  RS, PhS  : string;
  i        : word;
  RfMax    : real;
  RfMin    : real;
  Vmittel  : integer;
begin
  with ImageGrafik.Canvas do
  begin
    Pen.Color   := HintFarbe;
    Brush.Color := HintFarbe;
    Rectangle(0,0,ImageGrafik.Width, ImageGrafik.Height);
  end;
  BHoeheF              := round(BBreiteF/RatioRf);
  BHoeheCh             := round(BBreiteCh/RatioCh);
  LabelDaten.Visible   := true;
  LabelRf.Visible      := true;
  LabelPhi.Visible     := true;
  LabelZahl.Caption    := IntToStr(ZahlGlob);
  ListBoxDaten.Visible := true;
  DecimalSeparator := '.';
  i := 0;
  if EingabeS = 'Achsen' then
  begin
    if SpracheS = 'DEUTSCH' then
      OpenDialog1.Filter := 'Rf-Phi-Dateien (*.RFI)|*.RFI';
    if SpracheS = 'ENGLISH' then
      OpenDialog1.Filter := 'Rf-Phi Files (*.RFI)|*.RFI';
    if OpenDialog1.Execute then
    begin
      NameS              := Opendialog1.Filename;
      MaskEditDatei.Text := NameS;
      AssignFile(Datei, NameS);
      Reset(Datei);
      Readln (Datei, NameS);
      while not eof (Datei) do
      begin
        inc(i);
        Readln(Datei, ZeileS);
        ZeileRfS := copy(ZeileS,1,pos(',',ZeileS)-1);
        R        := StrToFloat(ZeileRfS);
        if R < 1 then
        begin
          i := i - 1;
          continue;
        end;
        Rf[i] := R;
        delete (ZeileS,1,pos(',',ZeileS));
        RPhi[i] := StrToInt(ZeileS);
        if RPhi[i] = 90 then RPhi[i] := 89;
        if RPhi[i] = 180 then RPhi[i] := 179;
      end;
      CloseFile (Datei);
    end
    else exit;
    ZahlGlob := i;
  end;
  RfMax := 0;
  RfMin := 10000;
  for i := 1 to ZahlGlob do
  begin
    if Rf[i] > RfMax then RfMax := Rf[i];
    if Rf[i] < RfMin then RfMin := Rf[i];
    str(Rf[i]:4:1, RS);
    RS  := RightS('0000'+Rs,4);
    if RPhi[i] > 90 then RPhi[i] := RPhi[i] - 180;
    PhS := IntToStr(RPhi[i]);
    PhS := RightS('   '+PhS,3);
    ZeileS := '   '+RS+'  '+PhS;
    ListboxDaten.Items.Add (ZeileS);
  end;
  PanelSpeed.Visible   := true;
  SpeedRfKopieren.Enabled         := true;
  SpeedRfHinter.Visible           := true;
  SpeedRfFarbeKoordinaten.Visible := true;
  SpeedRfFarbeDiagramm.Visible    := true;
  SpeedRfDrucken.Visible          := true;
  PFarbe.Enabled       := true;
  SymbolDaten.Enabled  := true;
  RfGrafik.Enabled     := true;
  RfDrucker.Enabled    := true;
  Dspeichern.Enabled   := true;
  Breite := ImageGrafik.Width-50;
  Hoehe  := ImageGrafik.Height-50;
  ImageGrafik.Enabled := true;
  RfKoordinaten (ImageGrafik.Canvas, RfMax, RfMin, Dist);
  RfHarmonisch (ImageGrafik.Canvas, Hmittel,Dist);
  RfVektorMittel (ImageGrafik.Canvas,Dist,Vm);
  Zaehlen(ImageGrafik.Canvas,Hmittel,Isym,Index,Dist);
  Bitmap := TBitmap.Create;
  Bitmap.assign(ImageGrafik.Picture);
  RadioProzent.Visible   := true;
  Radio5.Visible         := true;
  Radio10.Visible        := true;
  if Prozent = 5  then Radio5.Checked  := true;
  if Prozent = 10 then Radio10.Checked := true;
  PanelHarm.Visible         := true;
  str(Hmittel:4:1, HmittelS);
  LabelHmittel.Caption      := HmittelS;
  Vmittel                   := Vm;
  if Vmittel > 90 then Vmittel := Vmittel - 180;
  VmittelS := IntToStr(Vmittel);
  LabelVektormittel.Caption := VmittelS;
  if Isym > Index then
  LabelIndex.Caption := Tx(1370); //Verteilung wahrscheinlich symmetrisch'
  if Isym <= index then
  LabelIndex.Caption := Tx(1371); //Verteilung ist wahrscheinlich asymmetrisch
  PanelSym.Visible := true;
  str(Isym:4:2,IsymS);
  str(Index:4:2, IndexS);
  LabelIsym.Caption := IsymS+'      ('+IndexS+')';
  ButtonChi.Visible := true;
end;

procedure TForm88.Radio5Click(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
begin
  Prozent := 5;
  KonfigZeileS[108] := 'Percent (Rf/Phi)           :,5';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
end;

procedure TForm88.Radio10Click(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
begin
  Prozent := 10;
  KonfigZeileS[108] := 'Percent (Rf/Phi)           :,10';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
end;

procedure TForm88.ButtonChiClick(Sender: TObject);
begin
  LabelDatei.Visible   := false;
  MaskEditDatei.Visible:= false;
  ImageChi.Visible     := true;
  ChiQuadratF.Enabled  := true;
  ChiDrucker1.Enabled  := true;
  ErgDrucken.Enabled   := true;
  ListBoxDaten.Visible := false;
  ButtonChi.Visible    := false;
  PanelRs.Visible      := true;
  SpeedGroesseCh.Visible        := true;
  SpeedChiKopieren.Enabled      := true;
  SpeedChiHintergrund.Visible   := true;
  SpeedChiKoordinaten.Visible   := true;
  SpeedChiGraph.Visible         := true;
  SpeedChiDrucker.Visible       := true;
  SpeedErgDrucken.Visible       := true;
  Breite := ImageChi.Width;
  Hoehe  := ImageChi.Height;
  ChiQuadrat(Vm, Hmittel, ChiSum, ChiRS, n, RsMin, Ndf);
  str(RsMin:4:1,RsMinS);
  LabelRsZahl.Caption := RsMinS;
  NdfS                := IntToStr(Ndf);
  LabelNfr.Caption    := NdfS;
  Gralin(ImageChi.Canvas, ChiSum, ChiRs, n, Hmittel);
end;

procedure TForm88.ImageChiMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if ssLeft in Shift then
  begin
    ImageChi.Visible      := false;
    ChiDrucker1.Enabled   := false;
    ChiQuadratF.Enabled   := false;
    ListBoxDaten.Visible  := true;
    ButtonChi.Visible     := true;
    ErgDrucken.Enabled    := false;
    LabelDatei.Visible    := true;
    MaskEditDatei.Visible := true;
  end;
end;

procedure TForm88.PFarbeClick(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  Farbe := clWhite;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS := ColorToString (Farbe);
  DatenFarbe      := StringToColor(FarbeS);
  KonfigZeileS[7] := '  Colour of Data Points    :,'+FarbeS;
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick (Sender);
end;

procedure TForm88.SpeedFarbePClick(Sender: TObject);
begin
  PFarbeClick(Sender);
end;

procedure TForm88.KreisOClick(Sender: TObject);
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
end;

procedure TForm88.SpeedKreisOClick(Sender: TObject);
begin
  KreisOClick(Sender);
end;

procedure TForm88.KreisGClick(Sender: TObject);
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
end;

procedure TForm88.SpeedKreisGClick(Sender: TObject);
begin
  KreisGClick(Sender);
end;

procedure TForm88.QuadratOClick(Sender: TObject);
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
end;

procedure TForm88.SpeedQuadratOClick(Sender: TObject);
begin
  QuadratOClick(Sender);
end;

procedure TForm88.QuadratGClick(Sender: TObject);
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
end;

procedure TForm88.SpeedQuadratGClick(Sender: TObject);
begin
  QuadratGClick(Sender);
end;

procedure TForm88.DreieckOClick(Sender: TObject);
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
end;

procedure TForm88.SpeedDreieckOClick(Sender: TObject);
begin
  DreieckOClick(Sender);
end;

procedure TForm88.DreieckGClick(Sender: TObject);
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
end;

procedure TForm88.SpeedDreieckGClick(Sender: TObject);
begin
  DreieckGClick(Sender);
end;


procedure TForm88.RauteOClick(Sender: TObject);
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
end;

procedure TForm88.SpeedRauteOClick(Sender: TObject);
begin
  RauteOClick(Sender);
end;

procedure TForm88.RauteGClick(Sender: TObject);
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
end;

procedure TForm88.SpeedRauteGClick(Sender: TObject);
begin
  RauteGClick(Sender);
end;

procedure TForm88.FarbeDiagrammClick(Sender: TObject);
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

procedure TForm88.SpeedRfFarbeDiagrammClick(Sender: TObject);
begin
  FarbeDiagrammClick(Sender);
end;

procedure TForm88.FarbeKoordinatenClick(Sender: TObject);
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick (Sender);
end;

procedure TForm88.SpeedRfFarbeKoordinatenClick(Sender: TObject);
begin
  FarbeKoordinatenClick(Sender);
end;

procedure TForm88.FarbeHintergrundClick(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  Farbe := clWhite;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS    := ColorToString (Farbe);
  HintFarbe := StringToColor(FarbeS);
  KonfigZeileS[3] := '  Background Colour        :,'+FarbeS;
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick (Sender);
end;

procedure TForm88.SpeedRfHinterClick(Sender: TObject);
begin
  FarbeHintergrundClick(Sender);
end;

procedure TForm88.RfeinrichtenClick(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TForm88.SpeedDEinrichtenClick(Sender: TObject);
begin
  RfeinrichtenClick(Sender);
end;

procedure TForm88.Rfdrucken1Click(Sender: TObject);
var
  SchriftS : string[5];
  i        : byte;
begin
  Bild                 := ImageGrafik;
  for i := 1 to 3 do Gedrueckt[i] := false;
  Paneldrucken.Visible := true;
  MaskEditUnterschrift.Clear;
  MaskEditUnterschrift.SetFocus;
  RadioButtonlinks.Visible     := true;
  RadioButtonzentriert.Visible := true;
  RadioButtonrechts.Visible    := true;
  RadioGroup.Visible           := true;
  ButtonDrucken.Visible        := true;
  ButtonAbbrechen.Visible   := true;
  MaskEditKdrucken.EditMask := '999;0; ';
  MaskEditXdrucken.EditMask := '999;0; ';
  MaskEditYdrucken.EditMask := '999;0; ';
  MaskEditKdrucken.Text     := InttoStr(round(DruckenR*10));
  MaskEditXdrucken.Text     := InttoStr(round(DruckenX*10));
  MaskEditYdrucken.Text     := InttoStr(round(DruckenY*10));
  GroupBoxdrucken.Caption   := Tx(880);
  LabelKdrucken.Caption        := Tx(902);
  LabelMittel.Caption          := Tx(884);
  LabelXdrucken.Caption        := Tx(885);
  LabelYdrucken.Caption        := Tx(886);
  ButtonDrucken.Caption        := Tx(881);
  ButtonAbbrechen.Caption      := Tx(882);
  LabelUnterschrift.Caption    := Tx(887);
  LabelSchrift.Caption         := Tx(888);
  RadioButtonLinks.Caption     := Tx(889);
  RadioButtonZentriert.Caption := Tx(890);
  RadioButtonRechts.Caption    := Tx(891);
  YDruckFaktor                 := 1;
  i                            := 3;
  repeat
    i := i + 1;
    str(i, SchriftS);
    ListBoxSchrift.Items.Add (SchriftS);
  until i = 40;
end;

procedure TForm88.SpeedRfDruckenClick(Sender: TObject);
begin
  RfDrucken1Click(Sender);
end;

procedure TForm88.HarmMittelClick(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  Farbe := clWhite;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS    := ColorToString (Farbe);
  HarmFarbe := StringToColor(FarbeS);
  KonfigZeileS[109] := 'Colour of harmonic mean    :,'+FarbeS;
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  RfHarmonisch (ImageGrafik.Canvas, Hmittel,Dist);
end;

procedure TForm88.VekMittelClick(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  Farbe := clWhite;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS    := ColorToString (Farbe);
  VekFarbe  := StringToColor(FarbeS);
  KonfigZeileS[110] := 'Colour of vector mean      :,'+FarbeS;
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  RfVektorMittel (ImageGrafik.Canvas,Dist,Vm);
end;

procedure TForm88.ChiHintergrundClick(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  Farbe := clWhite;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS    := ColorToString (Farbe);
  ChiHintFarbe  := StringToColor(FarbeS);
  KonfigZeileS[111] := 'Colour of chi-square back  :,'+FarbeS;
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ChiQuadrat(Vm, Hmittel, ChiSum, ChiRS, n, RsMin, Ndf);
  Gralin(ImageChi.Canvas, ChiSum, ChiRs, n, Hmittel);
end;

procedure TForm88.SpeedChiHintergrundClick(Sender: TObject);
begin
  ChiHintergrundClick(Sender);
end;

procedure TForm88.ChiKoordinatenClick(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  Farbe := clWhite;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS       := ColorToString (Farbe);
  ChiKoorFarbe := StringToColor(FarbeS);
  KonfigZeileS[112] := 'Colour of chi-coordinates  :,'+FarbeS;
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ChiQuadrat(Vm, Hmittel, ChiSum, ChiRS, n, RsMin, Ndf);
  Gralin(ImageChi.Canvas, ChiSum, ChiRs, n, Hmittel);
end;

procedure TForm88.SpeedChiKoordinatenClick(Sender: TObject);
begin
  ChiKoordinatenClick(Sender);
end;

procedure TForm88.ChiKurveClick(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  Farbe := clWhite;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS        := ColorToString (Farbe);
  ChiGraphFarbe := StringToColor(FarbeS);
  KonfigZeileS[113] := 'Colour of chi-graph        :,'+FarbeS;
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ChiQuadrat(Vm, Hmittel, ChiSum, ChiRS, n, RsMin, Ndf);
  Gralin(ImageChi.Canvas, ChiSum, ChiRs, n, Hmittel);
end;

procedure TForm88.SpeedChiGraphClick(Sender: TObject);
begin
  ChiKurveClick(Sender);
end;

procedure TForm88.ChiEinrichten1Click(Sender: TObject);
begin
  PrinterSetupdialog1.Execute;
end;

procedure TForm88.SpeedChiEinrClick(Sender: TObject);
begin
  ChiEinrichten1Click(Sender);
end;

procedure TForm88.ChiDrucken1Click(Sender: TObject);
var
  SchriftS : string[5];
  i        : byte;
begin
  Bild                 := ImageChi;
  Paneldrucken.Visible := true;
  for i := 1 to 3 do Gedrueckt[i] := false;
  RadioButtonlinks.Visible     := true;
  RadioButtonzentriert.Visible := true;
  RadioButtonrechts.Visible    := true;
  RadioGroup.Visible           := true;
  ButtonDrucken.Visible        := true;
  ButtonAbbrechen.Visible   := true;
  MaskEditKdrucken.EditMask := '999;0; ';
  MaskEditXdrucken.EditMask := '999;0; ';
  MaskEditYdrucken.EditMask := '999;0; ';
  MaskEditKdrucken.Text     := InttoStr(round(DruckenR*10));
  MaskEditXdrucken.Text     := InttoStr(round(DruckenX*10));
  MaskEditYdrucken.Text     := InttoStr(round(DruckenY*10));
  GroupBoxdrucken.Caption   := Tx(880);
  LabelKdrucken.Caption        := Tx(902);
  LabelMittel.Caption          := Tx(884);
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
  YDruckFaktor                 := 1;
  i                            := 3;
  repeat
    i := i + 1;
    str(i, SchriftS);
    ListBoxSchrift.Items.Add (SchriftS);
  until i = 40;
end;

procedure TForm88.SpeedChiDruckerClick(Sender: TObject);
begin
  ChiDrucken1Click(Sender);
end;


procedure TForm88.BildgroesseRfClick(Sender: TObject);
begin
  PanelGroesse.Visible    := true;
  CheckBoxBild.State      := cbUnchecked;
  MaskEditBBreite.Text    := IntTostr(BBreiteF);
  MaskEditBHoehe.Text     := IntToStr(BHoeheF);
  BildRf                  := true;
  BildCh                  := false;
end;

procedure TForm88.SpeedGroesseRfClick(Sender: TObject);
begin
  BildGroesseRfClick(Sender);
end;

procedure TForm88.BildGroesseChClick(Sender: TObject);
begin
  PanelGroesse.Visible    := true;
  CheckBoxBild.State      := cbUnchecked;
  MaskEditBBreite.Text    := IntTostr(BBreiteCh);
  MaskEditBHoehe.Text     := IntToStr(BHoeheCh);
  BildRf                  := false;
  BildCh                  := true;
end;

procedure TForm88.SpeedGroesseChClick(Sender: TObject);
begin
  BildGroesseChClick(Sender);
end;

procedure TForm88.MaskEditBBreiteKeyPress(Sender: TObject; var Key: Char);
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
      if BildRf then
      begin
        BBreiteF := StrToInt (BBreiteS);
        BHoeheF  := round(BBreiteF/RatioRf);
        KonfigZeileS[115] := 'Save Image Width (Fry-Plot):,'+BBreiteS;
        MaskEditBHoehe.Text := IntToStr(BHoeheF);
      end;
      if BildCh then
      begin
        BBreiteCh := StrToInt(BBreiteS);
        BHoeheCh := round(BBreiteCh/RatioCh);
        KonfigZeileS[125]   := 'Save Image Width (Chi-sq.) :,'+BBreiteS;
        MaskEditBHoehe.Text := IntToStr(BHoeheCh);
      end;
      assignFile(Datei,DirectS+'\'+'Fabric.ini');
      rewrite (Datei);
      for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
      closefile (Datei);
    end;
  end;
end;

procedure TForm88.MaskEditBHoeheKeyPress(Sender: TObject; var Key: Char);
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
      if BildRf then
      begin
        BHoeheCh  := StrToInt (BHoeheS);
        BBreiteF  := round(BHoeheF*RatioRf);
        KonfigZeileS[115]    := 'Save Image Width (Fry-Plot):,'+IntToStr(BBreiteF);
        MaskEditBBreite.Text := IntToStr(BBreiteF);
      end;
      if BildCh then
      begin
        BHoeheCh  := StrToInt(BHoeheS);
        BBreiteCh := round(BHoeheCh*RatioCh);               
        KonfigZeileS[125]    := 'Save Image Width (Chi-sq.) :,'+IntToStr(BBreiteCh);
        MaskEditBBreite.Text := IntToStr(BBreiteCh);
      end;
    end;
    assignFile(Datei,DirectS+'\'+'Fabric.ini');
    rewrite (Datei);
    for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
    closefile (Datei);
  end;
end;

procedure TForm88.CheckBoxBildClick(Sender: TObject);
begin
  PanelGroesse.Visible := false;
end;

procedure TForm88.RfkopierenClick(Sender: TObject);
begin
  ClipBoard.Assign (ImageGrafik.Picture);
end;

procedure TForm88.SpeedRfKopierenClick(Sender: TObject);
begin
  RfKopierenClick(Sender);
end;

procedure TForm88.RfSpeichernBMPClick(Sender: TObject);
var
  Rahmen : TRect;
begin
  Bitmap        := TBitmap.Create;
  Bitmap.Width  := BBReiteF;
  Bitmap.Height := BHoeheF;
  Rahmen        := Rect(0,0,Bitmap.Width,Bitmap.Height);
  Bitmap.Canvas.Stretchdraw(Rahmen,ImageGrafik.Picture.Graphic);
  try
    if (CurrentFile <> '') and (UCaseS(RightS(Currentfile,3)) = 'BMP')
    then Bitmap.SaveToFile(CurrentFile)
    else RfspeichernUBMPClick(Sender);
  finally
    Bitmap.Free;
    Bitmap      := nil;
    CurrentFile := '';
  end;
end;

procedure TForm88.SpeedRFBMPClick(Sender: TObject);
begin
  RfspeichernBMPClick(Sender);
end;

procedure TForm88.RfspeichernGIFClick(Sender: TObject);
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
  Bitmap.Canvas.Stretchdraw(Rahmen,ImageGrafik.Picture.Graphic);
  try
    GifBild.Assign(Bitmap);
    if (CurrentFile <> '') and (UCaseS(RightS(CurrentFile,3)) = 'GIF')
    then GifBild.SaveToFile(CurrentFile)
    else RfspeichernUGIFClick(Sender);
  finally
    Bitmap.Free;
    GifBild.Free;
  end;
end;

procedure TForm88.SpeedRfGIFClick(Sender: TObject);
begin
  RfspeichernGIFClick(Sender);
end;

procedure TForm88.RfspeichernTIFClick(Sender: TObject);
var
  Rahmen : TRect;
begin
  Bitmap        := TBitmap.Create;
  Bitmap.Width  := BBreiteF;
  Bitmap.Height := BHoeheF;
  Rahmen        := Rect(0,0,Bitmap.Width,Bitmap.Height);
  Bitmap.Canvas.Stretchdraw(Rahmen,ImageGrafik.Picture.Graphic);
  try
    if (CurrentFile <> '') and (UCaseS(RightS(CurrentFile,3)) = 'TIF')
    then WriteTiffToFile(CurrentFile,Bitmap)
    else RFspeichernUTIFClick(Sender);
  finally
    Bitmap.Free;
    Bitmap := nil;
  end;
end;

procedure TForm88.SpeedRfTIFClick(Sender: TObject);
begin
  RfspeichernTIFClick(Sender);
end;

procedure TForm88.RfSpeichernJPGClick(Sender: TObject);
var
  DateiJ   : string;
  Rahmen   : TRect;
  Bild     : TBitmap;
begin
  JpgDatei    := TJpegImage.Create;
  Bild        := TBitmap.Create;
  Bild.Width  := BBReiteF;
  Bild.Height := BHoeheF;
  Rahmen      := Rect(0,0,Bild.Width,Bild.Height);
  Bild.Canvas.Stretchdraw(Rahmen,ImageGrafik.Picture.Graphic);
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
      else RfspeichernUJPGClick(Sender);
    end;
  finally
    JpgDatei.Free;
    Bild.Free;
    Bild        := nil;
    JpgDatei    := nil;
    CurrentFile := '';
  end;
end;

procedure TForm88.SpeedRfJPGClick(Sender: TObject);
begin
  RfspeichernJPGClick(Sender);
end;

procedure TForm88.RfspeichernWMFClick(Sender: TObject);
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
    Bitmap.Canvas.Stretchdraw(Rahmen,ImageGrafik.Picture.Graphic);
    try
      Bitmap.Assign(ImageGrafik.Picture);
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
    else RFspeichernUWMFClick(Sender);
  finally
    Metafile.Free;
  end;
end;

procedure TForm88.SpeedRfWMFClick(Sender: TObject);
begin
  RfspeichernWMFClick(Sender);
end;

procedure TForm88.RfspeichernEMFClick(Sender: TObject);
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
      Bitmap.Assign(ImageGrafik.Picture);
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
    if (CurrentFile <> '') and (UCaseS(RightS(CurrentFile,3)) = 'EMF')
    then MetaFile.SaveToFile(CurrentFile)
    else RfspeichernUEMFClick(Sender);
  finally
    Metafile.Free;
  end;
end;

procedure TForm88.SpeedRfEMFClick(Sender: TObject);
begin
  RfspeichernEMFClick(Sender);
end;


procedure TForm88.RfspeichernUBMPClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := GraphicExtension(TBitmap);
  SaveDialog1.Filter     := GraphicFilter(TBitmap);
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    RfSpeichernBMPClick(Sender);
  end;
end;

procedure TForm88.RfspeichernUGIFClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := GraphicExtension(TGIFImage);
  SaveDialog1.Filter     := GraphicFilter(TGIFImage);
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    RfSpeichernGIFClick(Sender);
  end;
end;

procedure TForm88.RfspeichernUTIFClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := 'TIF';
  SaveDialog1.Filter     := 'TIF';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    RfSpeichernTIFClick(Sender);
  end;
end;

procedure TForm88.RfspeichernUJPGClick(Sender: TObject);
begin
  SavePictureDialog1.DefaultExt := GraphicExtension(TJpegImage);
  SavePictureDialog1.Filter     := GraphicFilter(TJpegImage);
  if SavePictureDialog1.Execute then
  begin
    CurrentFile := SavePictureDialog1.Filename;
    RfSpeichernJPGClick(Sender);
  end;
end;

procedure TForm88.RfspeichernUWMFClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := GraphicExtension(TMetaFile);
  SaveDialog1.Filter     := GraphicFilter(TMetaFile);
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    RfspeichernWMFClick(Sender);
  end;
end;

procedure TForm88.RfspeichernUEMFClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := GraphicExtension(TMetaFile);
  SaveDialog1.Filter     := GraphicFilter(TMetaFile);
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    RfspeichernEMFClick(Sender);
  end;
end;

procedure TForm88.ChiKopierenClick(Sender: TObject);
begin
  ClipBoard.Assign (ImageChi.Picture);
end;

procedure TForm88.SpeedChiKopierenClick(Sender: TObject);
begin
  ChiKopierenClick(Sender);
end;

procedure TForm88.ChispeichernBMPClick(Sender: TObject);
var
  Rahmen : TRect;
begin
  Bitmap        := TBitmap.Create;
  Bitmap.Width  := BBreiteCh;
  Bitmap.Height := BHoeheCh;
  Rahmen        := Rect(0,0,Bitmap.Width,Bitmap.Height);
  Bitmap.Canvas.Stretchdraw(Rahmen,ImageChi.Picture.Graphic);
  try
    if (CurrentFile <> '') and (UCaseS(RightS(CurrentFile,3)) = 'BMP')
    then Bitmap.SaveToFile(CurrentFile)
    else ChispeichernUBMPClick(Sender);
  finally
    Bitmap.Free;
    Bitmap   := nil;
  end;
end;

procedure TForm88.SpeedChiBMPClick(Sender: TObject);
begin
  ChispeichernBMPClick(Sender);
end;

procedure TForm88.ChispeichernGIFClick(Sender: TObject);
var
  Bitmap  : TBitmap;
  GifBild : TGifImage;
  Rahmen  : TRect;
begin
  Bitmap        := TBitmap.Create;
  GifBild       := TGIFImage.Create;
  Bitmap.Width  := BBreiteCh;
  Bitmap.Height := BHoeheCh;
  Rahmen        := Rect(0,0,Bitmap.Width,Bitmap.Height);
  Bitmap.Canvas.Stretchdraw(Rahmen,ImageChi.Picture.Graphic);
  try
    GifBild.Assign(Bitmap);
    if (CurrentFile <> '') and (UCaseS(RightS(CurrentFile,3)) = 'GIF')
    then GifBild.SaveToFile(CurrentFile)
    else ChispeichernUGIFClick(Sender);
  finally
    Bitmap.Free;
    GifBild.Free;
  end;
end;

procedure TForm88.SpeedChiGIFClick(Sender: TObject);
begin
  ChispeichernGIFClick(Sender);
end;

procedure TForm88.ChispeichernTIFClick(Sender: TObject);
var
  Rahmen : TRect;
begin
  Bitmap        := TBitmap.Create;
  Bitmap.Width  := BBreiteCh;
  Bitmap.Height := BHoeheCh;
  Rahmen        := Rect(0,0,Bitmap.Width,Bitmap.Height);
  Bitmap.Canvas.Stretchdraw(Rahmen,ImageChi.Picture.Graphic);
  try
    if (CurrentFile <> '') and (UCaseS(RightS(CurrentFile,3)) = 'TIF')
    then WriteTiffToFile(CurrentFile,Bitmap)
    else ChispeichernUTIFClick(Sender);
  finally
    Bitmap.Free;
    Bitmap := nil;
  end;
end;

procedure TForm88.SpeedChiTIFClick(Sender: TObject);
begin
  ChispeichernTIFClick(Sender);
end;

procedure TForm88.ChispeichernJPGClick(Sender: TObject);
var
  DateiJ   : string;
  Rahmen   : TRect;
  Bild     : TBitmap;
  JpgDatei : TjpegImage;
begin
  JpgDatei    := TJpegImage.Create;
  Bild        := TBitmap.Create;
  Bild.Width  := BBreiteCh;
  Bild.Height := BHoeheCh;
  Rahmen      := Rect(0,0,Bild.Width,Bild.Height);
  Bild.Canvas.Stretchdraw(Rahmen,ImageChi.Picture.Graphic);
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
      else ChispeichernUJPGClick(Sender);
    end;
  finally
    JpgDatei.Free;
    Bild.Free;
    Bild        := nil;
    JpgDatei    := nil;
    CurrentFile := '';
  end;
end;

procedure TForm88.SpeedChiJPGClick(Sender: TObject);
begin
  ChispeichernJPGClick(Sender);
end;

procedure TForm88.ChispeichernWMFClick(Sender: TObject);
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
    Bitmap.Width  := BBreiteCh;
    Bitmap.Height := BHoeheCh;
    Rahmen        := Rect(0,0,Bitmap.Width,Bitmap.Height);
    Bitmap.Canvas.Stretchdraw(Rahmen,ImageChi.Picture.Graphic);
    try
      Bitmap.Assign(ImageChi.Picture);
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
    else ChispeichernUWMFClick(Sender);
  finally
    Metafile.Free;
  end;
end;

procedure TForm88.SpeedChiWMFClick(Sender: TObject);
begin
  ChispeichernWMFClick(Sender);
end;

procedure TForm88.ChispeichernEMFClick(Sender: TObject);
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
      Bitmap.Assign(ImageChi.Picture);
      Metafile.Height := BHoeheCh;
      Metafile.Width  := BBreiteCh;
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
    else ChispeichernUEMFClick(Sender);
  finally
    Metafile.Free;
  end;
end;

procedure TForm88.SpeedChiEMFClick(Sender: TObject);
begin
  ChispeichernEMFClick(Sender);
end;

procedure TForm88.ChispeichernUBMPClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := GraphicExtension(TBitmap);
  SaveDialog1.Filter     := GraphicFilter(TBitmap);
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    ChispeichernBMPClick(Sender);
  end;
end;

procedure TForm88.ChispeichernUGIFClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := GraphicExtension(TGIFImage);
  SaveDialog1.Filter     := GraphicFilter(TGIFImage);
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    ChispeichernGIFClick(Sender);
  end;
end;

procedure TForm88.ChispeichernUTIFClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := 'TIF';
  SaveDialog1.Filter     := 'TIF';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    ChispeichernTIFClick(Sender);
  end;
end;

procedure TForm88.ChispeichernUJPGClick(Sender: TObject);
begin
  SavePictureDialog1.DefaultExt := GraphicExtension(TJpegImage);
  SavePictureDialog1.Filter     := GraphicFilter(TJpegImage);
  if SavePictureDialog1.Execute then
  begin
    CurrentFile := SavePictureDialog1.Filename;
    ChispeichernJPGClick(Sender);
  end;
end;

procedure TForm88.ChispeichernUWMFClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := GraphicExtension(TMetaFile);
  SaveDialog1.Filter     := GraphicFilter(TMetaFile);
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    ChispeichernWMFClick(Sender);
  end;
end;

procedure TForm88.ChispeichernUEMFClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := GraphicExtension(TMetaFile);
  SaveDialog1.Filter     := GraphicFilter(TMetaFile);
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    ChispeichernEMFClick(Sender);
  end;
end;

procedure TForm88.MaskEditUnterschriftKeyPress(Sender: TObject;
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

procedure TForm88.ListBoxSchriftClick(Sender: TObject);
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

procedure TForm88.RadioButtonLinksClick(Sender: TObject);
begin
  BuendigS := 'Links';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    ButtonDrucken.Enabled := true;
end;

procedure TForm88.RadioButtonZentriertClick(Sender: TObject);
begin
  BuendigS := 'Zentriert';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    ButtonDrucken.Enabled := true;
end;

procedure TForm88.RadioButtonRechtsClick(Sender: TObject);
begin
  BuendigS := 'Rechts';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    ButtonDrucken.Enabled := true;
end;

procedure TForm88.ButtonDruckenClick(Sender: TObject);
var
  Bitmap  : TBitmap;
  Fenster : TRect;
  LaengeS : string;
  XKoordS : string;
  YKoordS : string;
begin
  Paneldrucken.Visible         := false;
  RadioButtonlinks.Visible     := false;
  RadioButtonzentriert.Visible := false;
  RadioButtonrechts.Visible    := false;
  RadioGroup.Visible           := false;
  LaengeS := MaskEditKdrucken.Text;
  XKoordS := MaskEditXdrucken.Text;
  YKoordS := MaskEditYdrucken.Text;
  Bitmap  :=TBitmap.Create;
  try
    Bitmap.Assign(Bild.picture.graphic);
    with Printer do
    begin
      BeginDoc;
      DruckBitmap (Printer.Canvas, Fenster, LaengeS,
                   XKoordS, YKoordS, TextS, Schrift,
                   BuendigS, Bitmap);
      EndDoc;
    end;
  finally
    Bitmap.free;
  end;
end;

procedure TForm88.ButtonAbbrechenClick(Sender: TObject);
begin
  Paneldrucken.Visible         := false;
  RadioButtonlinks.Visible     := false;
  RadioButtonzentriert.Visible := false;
  RadioButtonrechts.Visible    := false;
  RadioGroup.Visible           := false;
end;

procedure TForm88.DatSpeichernClick(Sender: TObject);
begin
  if CurrentFile <> '' then RfDatSpeichern(CurrentFile,ZahlGlob,
    Rf,RPhi)
  else DspeichernUnterClick(Sender);
end;

procedure TForm88.DspeichernUnterClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := 'RFI';
  SaveDialog1.Filter     := 'RFI';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    RfDatSpeichern (CurrentFile, ZahlGlob, Rf, RPhi);
  end;
  if CurrentFile <> '' then RfDatSpeichern(CurrentFile,ZahlGlob,
    Rf, RPhi)
  else DspeichernUnterClick(Sender);
end;

procedure TForm88.SpeedDSpeichernClick(Sender: TObject);
begin
  DspeichernUnterClick(Sender);
end;

procedure TForm88.EeinrichtenClick(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TForm88.EdruckenClick(Sender: TObject);
var
  Drucktext  : TextFile;
  i          : byte;
  RfS, RPhiS : string;
  JahrS      : string;
  MonS       : string;
  TagS       : string;
  WtagS      : string;
  ZeitS      : string;
  Rp         : word;
begin
  Uhr (JahrS, MonS, TagS, WtagS, ZeitS);
  AssignPrn (Drucktext);
  rewrite (Drucktext);
  try
    with Printer.Canvas.Font do
    begin
      Name := 'TimesNewRoman';
      Size  := 24;
      Style := Style + [fsbold];
      writeln(Drucktext);
      begin
        writeln(Drucktext,SpaceS(8), Tx(1364));  {Strainanalyse mit der Rf/Phi-Methode}
        writeln(Drucktext);
      end;
      Size  := 10;
      Style := Style - [fsbold];
      writeln(DruckText);
      writeln(DruckText);
      writeln(Drucktext, SpaceS(70), Tx(190));         {Tag der Bearbeitung}
      writeln(Drucktext, SpaceS(70), WTagS,',  ', TagS,'.  ', MonS,'  ', JahrS,
      SpaceS(20), Tx(210), ZeitS);                     {Zeit:}
      writeln(DruckText);
      writeln(DruckText);
      writeln(DruckText,Tx(256),'    ',DateinameS[1]); {Dateiname}
      writeln (Drucktext, '   ',ZahlGlob,' ',Tx(101),'  ');
      Writeln(Drucktext);
      Pitch := fpFixed;
      for i := 1 to ZahlGlob do    {Drucken der Daten}
      begin
        str(Rf[i]:4:1, RfS);
        RP := abs(RPhi[i]);
        str(RP, RPhiS);
        RfS    := RightS('000'+RfS,4);
        RPhiS  := RightS('00'+RPhiS,2);
        if RPhi[i] >= 0 then RPhiS := ' '+RPhiS
        else RPhiS := '-'+RPhiS;
        Write (Drucktext, '  ',RfS,' ',RPhiS);
        if i mod 8 = 0 then writeln(Drucktext);
      end;
      HmittelS := RightS(' '+HmittelS,4);
      Name  := 'Courier';
      Size  := 14;
      writeln (Drucktext);
      writeln (Drucktext);
      writeln (Drucktext, SpaceS(10),Tx(1385),' ',IntToStr(ZahlGlob));
      writeln (Drucktext, SpaceS(10),Tx(1365),' ', HmittelS);
      writeln (Drucktext, SpaceS(10),Tx(1366),' ', VmittelS);
      writeln (Drucktext, SpaceS(10),Tx(1367),' ', IsymS,' (',IndexS,')');
      writeln (Drucktext, SpaceS(10),Tx(1368),' ', RightS(' '+RsMinS,4));
      writeln (Drucktext, SpaceS(10),Tx(1369),' ', ' '+NdfS);
      writeln (Drucktext);
      Writeln (Drucktext);
      pitch := fpDefault;
      Name := 'TimesNewRoman';
      Size := 16;
      Writeln (Drucktext,SpaceS(10),Labelindex.Caption);
    end;
  finally
      closeFile (Drucktext);
  end;
end;

procedure TForm88.SpeedErgDruckenClick(Sender: TObject);
begin
  EdruckenClick(Sender);
end;

procedure TForm88.HilfeClick(Sender: TObject);
var
  DateiS : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\rf-p4er7.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\Rf-phi-plot.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm88.SpeedHilfeClick(Sender: TObject);
begin
  HilfeClick(Sender);
end;

procedure TForm88.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Rf-Phi-Methode.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'Rf-Phi-Method(engl).doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm88.SpeedHandbuchClick(Sender: TObject);
begin
  SpeedHandbuchClick(Sender);
end;

procedure TForm88.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm88.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

end.
