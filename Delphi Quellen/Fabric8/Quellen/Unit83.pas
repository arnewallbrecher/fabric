unit Unit83;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, ComCtrls, Texte, StdCtrls, ExtCtrls,
  Buttons, Clipbrd, Menus, Globvar, Mask, Standard, ExtDlgs,
  Jpeg, Basic, Karte, Einausga, Plotten, Shellapi, GifImage,
  Bmp2Tiff, ReadTiff, ehsHelpRouter, PngImage, Grafik;

type
  TForm83 = class(TForm)
    StatusBar: TStatusBar;
    ButtonBeenden: TButton;
    ButtonZurueck: TButton;
    ButtonStart: TButton;
    ImageKarte: TImage;
    PanelSpeed: TPanel;
    SpeedFarbe: TSpeedButton;
    Speedkopieren: TSpeedButton;
    Speedspeichern: TSpeedButton;
    SpeedKFarbe: TSpeedButton;
    MainMenu1: TMainMenu;
    Grafik: TMenuItem;
    PanelKarte: TPanel;
    LabelAusschnitt: TLabel;
    LabelLinksOben: TLabel;
    LabelOBreite: TLabel;
    LabelOLaenge: TLabel;
    LabelOGrad: TLabel;
    LabelOMin: TLabel;
    LabelLGrad: TLabel;
    LabelLmin: TLabel;
    LabelRechts: TLabel;
    LabelRBreite: TLabel;
    LabelRGrad: TLabel;
    LabelRMin: TLabel;
    LabelRlaenge: TLabel;
    LabelRUGrad: TLabel;
    LabelRUMin: TLabel;
    LabelFalsch: TLabel;
    MaskEditLOBGrad: TMaskEdit;
    MaskEditLOBMin: TMaskEdit;
    MaskEditLOLGrad: TMaskEdit;
    MaskEditLOLMin: TMaskEdit;
    MaskEditRUBGrad: TMaskEdit;
    MaskEditRUBMin: TMaskEdit;
    MaskEditRULGrad: TMaskEdit;
    MaskEditRULMin: TMaskEdit;
    KarteImportieren: TMenuItem;
    KausZwischenablage: TMenuItem;
    OpenPictureDialog1: TOpenPictureDialog;
    ListBoxDaten: TListBox;
    PanelDaten: TPanel;
    LabelEingabe: TLabel;
    MaskEditAzi: TMaskEdit;
    MaskEditFal: TMaskEdit;
    MaskEditLP: TMaskEdit;
    ButtonDbeenden: TButton;
    Dspeichern: TMenuItem;
    PanelAnzahl: TPanel;
    LabelAnzahl: TLabel;
    LabelZahl: TLabel;
    LabelListe: TLabel;
    speichern: TMenuItem;
    speichernUnter: TMenuItem;
    SaveDialog1: TSaveDialog;
    ButtonPlot: TButton;
    kopieren: TMenuItem;
    FarbeKarte: TMenuItem;
    ColorDialog1: TColorDialog;
    Markieren: TMenuItem;
    Vorderseite: TMenuItem;
    Rueckseite: TMenuItem;
    SavePictureDialog1: TSavePictureDialog;
    SpeedEinfuegen: TSpeedButton;
    SpeedRueckseite: TSpeedButton;
    SpeedVorderseite: TSpeedButton;
    PanelGauss: TPanel;
    LabelGLinksO: TLabel;
    LabelGRechtsU: TLabel;
    LabelRechtsRU: TLabel;
    MaskEditRURechts1: TMaskEdit;
    MaskEditRURechts2: TMaskEdit;
    MaskEditRURechts3: TMaskEdit;
    LabelHochRU: TLabel;
    MaskEditRUHoch1: TMaskEdit;
    MaskEditRUHoch2: TMaskEdit;
    MaskEditRUHoch3: TMaskEdit;
    LabelRechtsLO: TLabel;
    MaskEditLORechts1: TMaskEdit;
    MaskEditLORechts2: TMaskEdit;
    MaskEditLORechts3: TMaskEdit;
    LabelHochLO: TLabel;
    MaskEditLOHoch1: TMaskEdit;
    MaskEditLOHoch2: TMaskEdit;
    MaskEditLOHoch3: TMaskEdit;
    LabelGGrenzen: TLabel;
    LabelGaussFalsch: TLabel;
    Hilfe: TMenuItem;
    SpeedHilfe: TSpeedButton;
    LabelKlicken: TLabel;
    PanelUTM: TPanel;
    MaskEditLOOsten: TMaskEdit;
    MaskEditLONorden: TMaskEdit;
    LabelLoOsten: TLabel;
    LabelLoNorden: TLabel;
    LabelUTMGrenzen: TLabel;
    LabelRUOsten: TLabel;
    MaskEditRUOsten: TMaskEdit;
    MaskEditRUNorden: TMaskEdit;
    LabelRUNorden: TLabel;
    LabelLOEcke: TLabel;
    LabelRUEcke: TLabel;
    LabelUTMFalschO: TLabel;
    LabelUTMFalschN: TLabel;
    LabelUTMZone: TLabel;
    MaskEditUTMZone: TMaskEdit;
    Handbuch: TMenuItem;
    SpeedHandbuch: TSpeedButton;
    Literatur: TMenuItem;
    SpeedLiteratur: TSpeedButton;
    Gspeichern: TMenuItem;
    ausDatei: TMenuItem;
    OpenDialog1: TOpenDialog;
    Farbe: TMenuItem;
    LabelText: TLabel;
    Ausschnitt: TMenuItem;
    GanzesBild: TMenuItem;
    SpeedAusschneiden: TSpeedButton;
    ausschneiden: TMenuItem;
    SpeedGanzesBild: TSpeedButton;
    SpeedImport: TSpeedButton;
    SpeedGspeichern: TSpeedButton;
    PanelImport: TPanel;
    ListBoxImport: TListBox;
    ButtonIaus: TButton;
    PanelSpeichern: TPanel;
    ListBoxSpeichern: TListBox;
    ButtonSaus: TButton;
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ShowHint(Sender: TObject);
    procedure ButtonBeendenClick(Sender: TObject);
    procedure ButtonStartClick(Sender: TObject);
    procedure ButtonZurueckClick(Sender: TObject);
    procedure MaskEditLOBGradKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditLOBMinKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditLOLGradKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditLOLMinKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditRUBGradKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditRUBMinKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditRULGradKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditRULMinKeyPress(Sender: TObject; var Key: Char);
    procedure KausZwischenablageClick(Sender: TObject);
    procedure ImageKarteMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure MaskEditLPKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditLPKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MaskEditAziKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditFalKeyPress(Sender: TObject; var Key: Char);
    procedure ButtonDbeendenClick(Sender: TObject);
    procedure ButtonPlotClick(Sender: TObject);
    procedure kopierenClick(Sender: TObject);
    procedure FarbeKarteClick(Sender: TObject);
    procedure FarbeClick(Sender: TObject);
    procedure VorderseiteClick(Sender: TObject);
    procedure RueckseiteClick(Sender: TObject);
    procedure SpeedEinfuegenClick(Sender: TObject);
    procedure SpeedRueckseiteClick(Sender: TObject);
    procedure SpeedVorderseiteClick(Sender: TObject);
    procedure SpeedkopierenClick(Sender: TObject);
    procedure SpeedKFarbeClick(Sender: TObject);
    procedure SpeedFarbeClick(Sender: TObject);
    procedure MaskEditLORechts1KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditLORechts2KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditLORechts3KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditLOHoch1KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditLOHoch2KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditLOHoch3KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditRURechts1KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditRURechts2KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditRURechts3KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditRUHoch1KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditRUHoch2KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditRUHoch3KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedHilfeClick(Sender: TObject);
    procedure HilfeClick(Sender: TObject);
    procedure MaskEditLOOstenKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditLONordenKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditRuOstenKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditRuNordenKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditUTMZoneKeyPress(Sender: TObject; var Key: Char);
    procedure HandbuchClick(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure SpeedLiteraturClick(Sender: TObject);
    procedure GDemo (Sender: TObject);
    procedure GanzesBildClick(Sender: TObject);
    procedure ausschneidenClick(Sender: TObject);
    procedure SpeedAusschneidenClick(Sender: TObject);
    procedure SpeedGanzesBildClick(Sender: TObject);
    procedure ImageKarteMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ausDateiClick(Sender: TObject);
    procedure ListBoxImportClick(Sender: TObject);
    procedure GspeichernClick(Sender: TObject);
    procedure ListBoxSpeichernClick(Sender: TObject);
    procedure SpeedImportClick(Sender: TObject);
    procedure SpeedGspeichernClick(Sender: TObject);
    procedure ButtonIausClick(Sender: TObject);
    procedure ButtonSausClick(Sender: TObject);
  end;

var
  Form83       : TForm83;
  HKarte       : word;
  LKarte       : word;
  LFaktor      : real;
  HFaktor      : real;
  HolZwischen  : boolean;
  HolDatei     : boolean;
  CurrentFile  : string;
  LOBGradS     : string;
  LOBMinS      : string;
  LOLGradS     : string;
  LOLMinS      : string;
  RUBGradS     : string;
  RUBMinS      : string;
  RULGradS     : string;
  RULMinS      : string;
  LobGrad      : word;
  LOBMin       : word;
  LOLGrad      : word;
  LOLMin       : word;
  ImportierenS : string;
  Maus         : boolean;
  Zahl         : word;
  LPS          : string[1];
  Linear       : boolean;
  AzimutS      : string;
  Azimut       : word;
  Fall         : shortint;
  FallS        : string;
  LGradS       : string;
  LMinS, BMinS : string;
  BGradS       : string;
  BGrad, LGrad : word;
  BMin, LMin   : real;
  Beenden      : boolean;
  Kspiegeln    : boolean;
  LORechts1S   : string;
  LORechts2S   : string;
  LORechts3S   : string;
  LOHoch1S     : string;
  LOHoch2S     : string;
  LOHoch3S     : string;
  RURechts1S   : string;
  RURechts2S   : string;
  RURechts3S   : string;
  RUHoch1S     : string;
  RUHoch2S     : string;
  RUHoch3S     : string;
  Rand         : TRand;
  RandS        : TRandS;
  XLaenge      : real;
  YLaenge      : real;
  LOOstenS     : string;
  LONordenS    : string;
  RUOstenS     : string;
  RUNordenS    : string;
  BHoeheI      : word;
  Ratio        : real;
  BBreite      : word;
  BHoehe       : word;
  Klick        : boolean;
  RechteckS    : string;
  Xlinks       : word;
  Ylinks       : word;
  Xrechts      : word;
  Yrechts      : word;

implementation
uses Unit79, Unit81;
{$R *.DFM}

procedure TForm83.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm83.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm83.FormActivate(Sender: TObject);
var
  i : byte;
begin
  WindowState := wsMaximized;
  Left   := LeftDiag + ULap;
  Top    := TopDiag + ULap;
  Width  := WidDiag;
  Height := HeiDiag;
  Setlength (BreiteFeld, MaxDaten);
  Setlength (LaengeFeld, MaxDaten);
  Setlength (LPFeld, MaxDaten);
  Setlength (AziFeld, MaxDaten);
  Setlength (FalFeld, MaxDaten);
  Form83.Caption             := 'Fabic8: '+Tx(1284);
  ButtonZurueck.Caption      := Tx(30);
  ButtonBeenden.Caption      := Tx(53);
  PanelSpeed.Visible         := false;
  LabelText.Caption          := Tx(1068);
  LabelText.Visible          := false;
  LabelFalsch.Visible        := false;
  MaskEditLOBGrad.EditMask   := '99;0; ';
  MaskEditLOBMin.EditMask    := '99;0; ';
  MaskEditLOLGrad.EditMask   := '99;0; ';
  MaskEditLOLMin.EditMask    := '99;0; ';
  MaskEditRUBGrad.EditMask   := '99;0; ';
  MaskEditRUBMin.EditMask    := '99;0; ';
  MaskEditRULGrad.EditMask   := '99;0; ';
  MaskEditRULMin.EditMask    := '99;0; ';
  MaskEditAzi.EditMask       := '999;0; ';
  MaskEditFal.EditMask       := '99;0; ';
  MaskEditLP.EditMask        := 'L;0; ';
  MaskEditLORechts1.EditMask := '99;0; ';
  MaskEditLORechts2.EditMask := '99;0; ';
  MaskEditLORechts3.EditMask := '999;0; ';
  MaskEditLOHoch1.EditMask   := '99;0; ';
  MaskEditLOHoch2.EditMask   := '99;0; ';
  MaskEditLOHoch3.EditMask   := '999;0; ';
  MaskEditRURechts1.EditMask := '99;0; ';
  MaskEditRURechts2.EditMask := '99;0; ';
  MaskEditRURechts3.EditMask := '999;0; ';
  MaskEditRUHoch1.EditMask   := '99;0; ';
  MaskEditRUHoch2.EditMask   := '99;0; ';
  MaskEditRUHoch3.EditMask   := '999;0; ';
  MaskEditUTMZone.EditMask   := '99l;0; ';
  MaskEditLOOsten.EditMask   := '9999999;0; ';
  MaskEditLONorden.EditMask  := '9999999;0; ';
  MaskEditRUOsten.EditMask   := '9999999;0; ';
  MaskEditRUNorden.EditMask  := '9999999;0; ';
  LabelAusschnitt.Caption    := Tx(1328);
  LabelGGrenzen.Caption      := Tx(1328);
  LabelLinksOben.Caption     := TX(1274);
  LabelGLinksO.Caption       := Tx(1274);
  LabelRechts.Caption        := Tx(1275);
  LabelGRechtsU.Caption      := Tx(1275);
  LabelOBreite.Caption       := Tx(1276);
  LabelOLaenge.Caption       := Tx(1277);
  LabelRBreite.Caption       := Tx(1276);
  LabelRLaenge.Caption       := Tx(1277);
  LabelRechtsLO.Caption      := Tx(1300);
  LabelHochLO.Caption        := Tx(1301);
  LabelRechtsRU.Caption      := Tx(1300);
  LabelHochRU.Caption        := Tx(1301);
  KarteImportieren.Caption   := Tx(1068);
  KausZwischenablage.Caption := Tx(1069);
  ausDatei.Caption           := Tx(490); 
  LabelEingabe.Caption       := Tx(55)+':';
  LabelListe.Caption         := Tx(914)+':';
  Dspeichern.Caption         := Tx(86);
  LabelAnzahl.Caption        := Tx(138);
  Farbe.Caption              := Tx(662);
  FarbeKarte.Caption         := Tx(1281);
  Grafik.Caption             := Tx(281);
  kopieren.Caption           := Tx(282);
  speichern.Caption          := Tx(87);
  speichernUnter.Caption     := Tx(88);
  ButtonDbeenden.Caption     := Tx(182);
  LabelListe.Visible         := false;
  KarteImportieren.Enabled   := false;
  Markieren.Caption          := Tx(1285);
  Vorderseite.Caption        := Tx(1321);
  Rueckseite.Caption         := Tx(1322);
  LabelGaussFalsch.Caption   := '';
  Hilfe.Caption              := Tx(162)+'(F1)';
  Handbuch.Caption           := Tx(1055)+'(F2)';
  Literatur.Caption          := Tx(1183)+'(F5)';
  Ausschnitt.Caption         := Tx(1607);
  GanzesBild.Caption         := Tx(1608);
  ausschneiden.Caption       := Tx(1609);
  ButtonIaus.Caption         := Tx(1682);
  ButtonSaus.Caption         := Tx(1682);
  SpeedEinfuegen.Hint        := Hilf(246);
  Speedkopieren.Hint         := Hilf(262);
  SpeedFarbe.Hint            := Hilf(486);
  SpeedSpeichern.Hint        := Hilf(487);
  SpeedFarbe.Hint            := Hilf(502);
  SpeedKFarbe.Hint           := Hilf(497);
  SpeedRueckseite.Hint       := Hilf(500);
  SpeedVorderseite.Hint      := Hilf(501);
  SpeedHilfe.Hint            := Hilf(210);
  SpeedHandbuch.Hint         := Hilf(274);
  SpeedLiteratur.Hint        := Hilf(462);
  SpeedGanzesBild.Hint       := Hilf(679);
  SpeedAusschneiden.Hint     := Hilf(678);
  SpeedImport.Hint           := Hilf(342);
  SpeedGspeichern.Hint       := Hilf(683);
  Speichern.Caption          := Tx(284);
  SpeichernUnter.Caption     := Tx(285);
  KausZwischenablage.Enabled := false;
  SpeedEinfuegen.Enabled     := false;
  Grafik.Enabled             := false;
  Maus                       := false;
  ButtonDbeenden.Visible     := false;
  ListBoxDaten.Visible       := false;
  PanelDaten.Visible         := false;
  PanelAnzahl.Visible        := false;
  Farbe.Enabled              := false;
  Dspeichern.Enabled         := false;
  ButtonPlot.Visible         := false;
  FarbeKarte.Enabled         := false;
  Beenden                    := false;
  Markieren.Enabled          := false;
  ButtonPlot.Visible         := false;
  PanelGauss.Visible         := false;
  LabelKlicken.Caption       := Tx(1323);
  LabelKlicken.Visible       := false;
  PanelUTM.Visible           := false;
  KausZwischenablage.Enabled := false;
  LabelLoOsten.Caption       := Tx(1324);
  LabelLoNorden.Caption      := Tx(1325);
  LabelRuOsten.Caption       := Tx(1324);
  LabelRuNorden.Caption      := Tx(1325);
  LabelUTMGrenzen.Caption    := Tx(1328);
  LabelLOEcke.Caption        := Tx(1274);
  LabelRUEcke.Caption        := Tx(1275);
  LabelUTMFalschO.Caption    := Tx(1326);
  LabelUTMFalschN.Caption    := Tx(1327);
  LabelUTMFalschO.Visible    := false;
  LabelUTMFalschN.Visible    := false;
  LabelFalsch.Caption        := Tx(1278);
  PanelKarte.Visible         := false;
  PanelGauss.Visible         := false;
  PanelUTM.Visible           := false;
  SpeedEinfuegen.Enabled     := false;
  Klick                      := false;
  Ausschnitt.Enabled         := false;
  SpeedGanzesBild.Enabled    := false;
  SpeedAusschneiden.Enabled  := false;
  Ratio := ImageKarte.Width/ImageKarte.Height;
  for i := 1 to 7 do
    ListBoxImport.Items.Add (Tx(1611+i));
  PanelImport.Visible := false;
  for i := 1 to 7 do
    ListBoxSpeichern.Items.Add (Tx(1611+i));
  PanelSpeichern.Visible := false;
  with ImageKarte.Canvas do
  begin
    Brush.Color := clWhite;
    Pen.Color   := clWhite;
    Rectangle (0,0,ImageKarte.Width,ImageKarte.Height);
  end;
end;

procedure TForm83.ButtonBeendenClick(Sender: TObject);
begin
  BreiteFeld := Nil;
  LaengeFeld := Nil;
  LpFeld     := Nil;
  AziFeld    := Nil;
  Falfeld    := Nil;
  Form83.Close;
  Form79.Close;
end;

procedure TForm83.ButtonZurueckClick(Sender: TObject);
begin
  BreiteFeld := Nil;
  LaengeFeld := Nil;
  LpFeld     := Nil;
  AziFeld    := Nil;
  Falfeld    := Nil;
  Form83.Close;
end;

procedure TForm83.ButtonStartClick(Sender: TObject);
begin
  if ClipBoard.HasFormat(CF_Bitmap) then
  begin
    KausZwischenablage.Enabled := true;
    SpeedEinfuegen.Enabled     := true;
  end;
  BHoeheI                    := round(BBreiteI/Ratio);
  MaskEditLOBGrad.Text       := ' ';
  MaskEditLOBMin.Text        := ' ';
  MaskEditLOLGrad.Text       := ' ';
  MaskEditLOLMin.Text        := ' ';
  MaskEditRUBGrad.Text       := ' ';
  MaskEditRUBMin.Text        := ' ';
  MaskEditRULGrad.Text       := ' ';
  MaskEditRULMin.Text        := ' ';
  MaskEditAzi.Text           := ' ';
  MaskEditFal.Text           := ' ';
  MaskEditLP.Text            := ' ';
  MaskEditLORechts1.Text     := ' ';
  MaskEditLORechts2.Text     := ' ';
  MaskEditLORechts3.Text     := ' ';
  MaskEditLOHoch1.Text       := ' ';
  MaskEditLOHoch2.Text       := ' ';
  MaskEditLOHoch3.Text       := ' ';
  MaskEditRURechts1.Text     := ' ';
  MaskEditRURechts2.Text     := ' ';
  MaskEditRURechts3.Text     := ' ';
  MaskEditRUHoch1.Text       := ' ';
  MaskEditRUHoch2.Text       := ' ';
  MaskEditRUHoch3.Text       := ' ';
  MaskEditUTMZone.Text       := ' ';
  MaskEditLOOsten.Text       := ' ';
  MaskEditLONorden.Text      := ' ';
  MaskEditRUOsten.Text       := ' ';
  MaskEditRUNorden.Text      := ' ';
  PanelSpeed.Visible         := true;
  SpeedVorderseite.Enabled   := false;
  SpeedRueckseite.Enabled    := false;
  Speedkopieren.Enabled      := false;
  SpeedKFarbe.Enabled        := false;
  SpeedFarbe.Enabled         := false;
  Speedspeichern.Enabled     := false;
  KarteImportieren.Enabled   := true;
  LabelText.Visible          := true;
  Maus                       := false;
  Zahl                       := 0;
  Beenden                    := false;
  ListBoxDaten.Visible       := false;
  ListBoxDaten.Clear;
  PanelAnzahl.Visible        := false;
  LabelZahl.Caption          := '';
  LabelListe.Visible         := false;
  with ImageKarte.Canvas do
  begin
    Brush.Color := clWhite;
    Pen.Color   := clWhite;
    Rectangle (0,0,ImageKarte.Width,ImageKarte.Height);
  end;
end;

procedure TForm83.KausZwischenablageClick(Sender: TObject);
var
  Bitmap   : TBitmap;
  Rahmen   : TRect;
  BHoehe   : word;
  BBreite  : word;
  Ratio    : real;
  KartBild : TBitmap;
begin
  ImageKarte.Visible  := true;
  Rahmen := Rect(0,0,Clientwidth,ClientHeight);
  Loeschen (ImageKarte.Canvas, Rahmen);
  ImageKarte.Canvas.CopyMode := cmSrcCopy;
  Bitmap := TBitmap.Create;
  try
    Bitmap.Assign(ClipBoard);
    Ratio := Bitmap.Height/Bitmap.Width;
    if Bitmap.Width > Bitmap.Height then
    begin
      BBreite := ImageKarte.Width;
      BHoehe  := round(ImageKarte.Height*Ratio);
    end
    else
    begin
      BHoehe  := ImageKarte.Height;
      BBreite := round(ImageKarte.Height/Ratio);
    end;
    if BHoehe > ImageKarte.Height then
    begin
      BHoehe  := ImageKarte.Height;
      BBreite := round(BHoehe/Ratio);
    end;
    Rahmen := Rect(ImageKarte.Width div 2 - BBreite div 2,
                   ImageKarte.Height div 2 - BHoehe div 2,
                   ImageKarte.Width div 2 + BBreite div 2,
                   ImageKarte.Height div 2 + BHoehe div 2);
    ImageKarte.Canvas.StretchDraw (Rahmen, Bitmap);
    KartBild := TBitmap.Create;
    KartBild.Assign (ImageKarte.Picture);
  finally
    Bitmap.free;
  end;
  Ausschnitt.Enabled         := true;
  SpeedGanzesBild.Enabled    := true;
  SpeedAusschneiden.Enabled  := true;
  LabelText.Caption          := Tx(1609)+'?';
end;

procedure TForm83.SpeedEinfuegenClick(Sender: TObject);
begin
  KausZwischenablageClick(Sender);
end;

procedure TForm83.ausDateiClick(Sender: TObject);
begin
  PanelImport.Visible := true;
end;

procedure TForm83.SpeedImportClick(Sender: TObject);
begin
  ausDateiClick(Sender);
end;

procedure TForm83.ButtonIausClick(Sender: TObject);
begin
  PanelImport.Visible := false;
end;

procedure TForm83.ListBoxImportClick(Sender: TObject);
var
  i       : byte;
  IWidth  : word;
  IHeight : word;
  BildI   : Graphics.TBitmap;
begin
  BildI             := Graphics.TBitmap.create;
  ImageKarte.Width  := 760;
  ImageKarte.Height := 526;
  IWidth            := ImageKarte.Width;
  IHeight           := ImageKarte.Height;
  try
    for i := 0 to ListboxImport.Items.Count-1 do
    begin
      if ListboxImport.Selected[i] then
      begin
        if i = 0 then OeffnenBMP (OpenPictureDialog1, BildI,
                                  IWidth, IHeight, ImageKarte.Canvas);
        if i = 1 then OeffnenGIF (OpenPictureDialog1, BildI,
                                  IWidth, IHeight, ImageKarte.Canvas);
        if i = 2 then OeffnenTIF (OpenDialog1, BildI,IWidth,
                                  IHeight, ImageKarte.Canvas);
        if i = 3 then OeffnenJPG (OpenDialog1, BildI,IWidth,
                                  IHeight, ImageKarte.Canvas);
        if i = 4 then OeffnenWMF (OpenDialog1, IWidth,
                                  IHeight, ImageKarte.Canvas);
        if i = 5 then OeffnenEMF (OpenDialog1, IWidth,
                                  IHeight, ImageKarte.Canvas);
        if i = 6 then OeffnenPNG (OpenDialog1, BildI, IWidth,
                                  IHeight, ImageKarte.Canvas);
      end;
    end;
  finally
    BildI.Free;
  end;
  Klick := true;
  PanelImport.Visible       := false;
  Ausschnitt.Enabled        := true;
  SpeedGanzesBild.Enabled   := true;
  Speedausschneiden.Enabled := true;
  LabelText.Caption         := Tx(1609)+'?';
  if DemoB then
  begin
    with ImageKarte.Canvas do
    begin
      Font.Name   := 'Times New Roman';
      Brush.Color := clWhite;
      Font.Color  := clGray;
      Font.Size   := 20;
      Textout(10, ImageKarte.Height - 40,'Demo-Version');
    end;
  end;
end;

procedure TForm83.GanzesBildClick(Sender: TObject);
begin
  GDemo (ImageKarte.Canvas);
  Klick := true;
  Maus  := true;
end;

procedure TForm83.SpeedGanzesBildClick(Sender: TObject);
begin
  GanzesBildClick(Sender);
end;

procedure TForm83.ausschneidenClick(Sender: TObject);
begin
  Klick             := true;
  Maus              := true;
  RechteckS         := 'LinksOben';
  LabelText.Caption := Tx(1610);
end;

procedure TForm83.SpeedAusschneidenClick(Sender: TObject);
begin
  ausschneidenClick(Sender);
end;

procedure TForm83.ImageKarteMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  Rahmen   : TRect;
  Ausschn  : TRect;
  Xende    : word;
  Yende    : word;
  Bitmap   : TBitmap;
  Ratio    : real;
  BBreite  : word;
  BHoehe   : word;
  Recht    : TRect;
begin
  if not Klick then exit;
  if RechteckS = 'Fertig' then
  begin
    Xende := Xrechts - Xlinks;
    Yende := Yrechts - Ylinks;
    Ausschn := Rect(0,0,Xende,Yende);
    Rahmen  := Rect(Xlinks,Ylinks,Xrechts,Yrechts);
    Bitmap  := TBitmap.Create;
    try
      Bitmap.PixelFormat := pf32Bit;
      Bitmap.Width  := Xende;
      Bitmap.Height := Yende;
      Bitmap.Canvas.CopyRect(Ausschn,ImageKarte.Picture.Bitmap.Canvas,Rahmen);
      ImageKarte.Canvas.Brush.Color := clWhite;
      ImageKarte.Canvas.Rectangle(0,0,ImageKarte.Width,ImageKarte.Height);
      Ratio := Yende/Xende;
      if Xende > Yende then
      begin
        BBreite := ImageKarte.Width;
        BHoehe  := round(ImageKarte.Width*Ratio);
      end
      else
      begin
        BHoehe  := ImageKarte.Height;
        BBreite := round(ImageKarte.Height/Ratio);
      end;
      Recht := Rect(0,0,BBreite,BHoehe);
      ImageKarte.Canvas.Stretchdraw(Recht,Bitmap);
    finally
      Bitmap.free;
    end;
    GDemo (ImageKarte.Canvas);
    RechteckS := '';
  end;
end;

procedure TForm83.GDemo (Sender: TOBject);
begin
  if DemoB then
  begin
    with ImageKarte.Canvas do
    begin
      Font.Name   := 'Times New Roman';
      Brush.Color := clWhite;
      Font.Color  := clGray;
      Font.Size   := 36;
      Textout(Width div 2-120,Height div 2-20,'Demo-Version');
    end;
  end;
  LabelText.Caption        := Tx(1286);
  Farbe.Enabled            := true;
  Grafik.Enabled           := true;
  SpeedKopieren.Enabled    := true;
  SpeedFarbe.Enabled       := true;
  SpeedKFarbe.Enabled      := true;
  Farbe.Enabled            := true;
  SpeedRueckseite.Enabled  := true;
  SpeedVorderseite.Enabled := true;
  Markieren.Enabled        := true;
  SpeedRueckseite.Enabled  := true;
  SpeedVorderseite.Enabled := true;
end;

procedure TForm83.VorderseiteClick(Sender: TObject);
begin
  LabelText.Visible := false;
  Kspiegeln         := false;
  if KoordinatenS = 'DMM' then
  begin
    PanelKarte.Visible      := true;
    MaskEditLOBGrad.SetFocus;
  end;
  if KoordinatenS = 'Gauss' then
  begin
    PanelGauss.Visible := true;
    MaskEditLORechts1.SetFocus;
  end;
  if KoordinatenS = 'UTM' then
  begin
    PanelUTM.Visible := true;
    MaskEditUTMZone.SetFocus;
  end;
end;

procedure TForm83.SpeedVorderseiteClick(Sender: TObject);
begin
  VorderseiteClick(Sender);
end;

procedure TForm83.RueckseiteClick(Sender: TObject);
begin
  LabelText.Visible  := false;
  PanelKarte.Visible := true;
  Kspiegeln          := true;
  if KoordinatenS = 'DMM' then
  begin
    PanelKarte.Visible := true;
    MaskEditLOBGrad.SetFocus;
  end;
  if KoordinatenS = 'Gauss' then
  begin
    PanelGauss.Visible := true;
    MaskEditLORechts1.SetFocus;
  end;
  if KoordinatenS = 'UTM' then
  begin
    PanelUTM.Visible := true;
    MaskEditUTMZone.SetFocus;
  end;
end;

procedure TForm83.SpeedRueckseiteClick(Sender: TObject);
begin
  RueckseiteClick(Sender);
end;

procedure TForm83.MaskEditLOBGradKeyPress(Sender: TObject; var Key: Char);
begin  if Key = chr(13) then
  begin
    LOBGradS := MaskEditLOBGrad.Text;
    LeerLoeschen (LOBGradS);
    if LOBGradS = '' then exit;
    if length(LOBGradS) < 2 then exit;
    LOBGrad := StrToInt (LOBGradS);
    MaskEditLOBMin.SetFocus;
    LabelFalsch.Visible     := false;
  end;
end;

procedure TForm83.MaskEditLOBMinKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(13) then
  begin
    LOBMinS := MaskEditLOBMin.Text;
    LeerLoeschen (LOBMInS);
    if LOBMinS = '' then exit;
    if length(LOBMinS) < 2 then exit;
    LOBMin := StrToInt (LOBMinS);
    MaskEditLOLGrad.SetFocus;
    Rand.Oben := LOBGrad*60 + LOBMin;
  end;
end;

procedure TForm83.MaskEditLOLGradKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(13) then
  begin
    LOLGradS := MaskEditLOLGrad.Text;
    LeerLoeschen (LOLGradS);
    if LOLGradS = '' then exit;
    if length(LOLGradS) < 2 then exit;
    LOLGrad := StrToInt (LOLGradS);
    MaskEditLOLMin.SetFocus;
  end;
end;

procedure TForm83.MaskEditLOLMinKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(13) then
  begin
    LOLMinS := MaskEditLOLMin.Text;
    LeerLoeschen (LOLMinS);
    if LOLMinS = '' then exit;
    if length(LOLMinS) < 2 then exit;
    LOLMin := StrToInt (LOLMinS);
    MaskEditRUBGrad.SetFocus;
    Rand.Links := LOLGrad*60 + LOLMin;
  end;
end;

procedure TForm83.MaskEditRUBGradKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(13) then
  begin
    RUBGradS := MaskEditRUBGrad.Text;
    LeerLoeschen (RUBGradS);
    if RUBGradS = '' then exit;
    if length(RUBGradS) < 2 then exit;
    RUBGrad := StrToInt (RUBGradS);
    MaskEditRUBMin.SetFocus;
  end;
end;

procedure TForm83.MaskEditRUBMinKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(13) then
  begin
    RUBMinS := MaskEditRUBMin.Text;
    LeerLoeschen (RUBMinS);
    if RUBMinS = '' then exit;
    if length(RUBMinS) < 2 then exit;
    RUBMin := StrToInt (RUBMinS);
    MaskEditRULGrad.SetFocus;
    Rand.Unten := RUBGrad*60 + RUBMin;
    if NordSuedS = 'N' then
    begin
      if Rand.Unten >= Rand.Oben then
      begin
        MaskEditLOBGrad.Clear;
        MaskEditLOBMin.Clear;
        MaskEditRUBGrad.Clear;
        MaskEditRUBMin.Clear;
        MaskEditLOBGrad.SetFocus;
        LabelFalsch.Visible := true;
      end;
    end;
    if NordSuedS = 'S' then
    begin
      if Rand.Unten <= Rand.Oben then
      begin
        MaskEditLOBGrad.Clear;
        MaskEditLOBMin.Clear;
        MaskEditRUBGrad.Clear;
        MaskEditRUBMin.Clear;
        MaskEditLOBGrad.SetFocus;
        LabelFalsch.Visible := true;
      end;
    end;
  end;
end;

procedure TForm83.MaskEditRULGradKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(13) then
  begin
    RULGradS := MaskEditRULGrad.Text;
    LeerLoeschen (RULGradS);
    if RULGradS = '' then exit;
    if length(RULGradS) < 2 then exit;
    RULGrad := StrToInt (RULGradS);
    MaskEditRULMin.Enabled := true;
    MaskEditRULMin.SetFocus;
  end;
end;

procedure TForm83.MaskEditRULMinKeyPress(Sender:TObject;var Key:Char);
begin
  if Key = chr(13) then
  begin
    RULMinS := MaskEditRULMin.Text;
    LeerLoeschen (RULMinS);
    if RULMinS = '' then exit;
    if length(RULMinS) < 2 then exit;
    RULMin := StrToInt (RULMinS);
    Rand.Rechts := RULGrad*60 + RULMin;
    if OstWestS = 'E' then
    begin
    if Rand.Rechts <= Rand.Links then
      begin
        MaskEditLOLGrad.Clear;
        MaskEditLOLMin.Clear;
        MaskEditRULGrad.Clear;
        MaskEditRULMin.Clear;
        MaskEditLOLGrad.SetFocus;
        LabelFalsch.Visible := true;
        exit;
      end;
    end;
    if OstWestS = 'W' then
    begin
      if Rand.Rechts >= Rand.Links then
      begin
        MaskEditLOLGrad.Clear;
        MaskEditLOLMin.Clear;
        MaskEditRULGrad.Clear;
        MaskEditRULMin.Clear;
        MaskEditLOLGrad.SetFocus;
        LabelFalsch.Visible := true;
        exit;
      end;
    end;
    LabelFalsch.Visible  := false;
    PanelKarte.Visible := false;
    Breite   := abs(Rand.Rechts - Rand.Links);
    Hoehe    := abs(Rand.Oben - Rand.Unten);
    Faktor   := Breite/Hoehe;
    HKarte   := 660;
    LKarte   := 660;
    if Breite >= Hoehe then
    begin
      HKarte := round(HKarte/Faktor);
      LKarte := 660;
    end;
    if Hoehe >= Breite then
    begin
      LKarte := round(LKarte*Faktor);
      HKarte := 660;
    end;
    Maus := true;
    LabelKlicken.Visible := true;
    LabelListe.Visible   := true;
    ListBoxDaten.Visible := true;
    ListBoxDaten.Clear;
    PanelAnzahl.Visible  := true;
    LabelZahl.Caption    := '';
    FarbeKarte.Enabled   := true;
  end;
end;

procedure TForm83.MaskEditLORechts1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = chr(13) then
  begin
    LORechts1S := MaskEditLORechts1.Text;
    LeerLoeschen (LORechts1S);
    if LORechts1S = '' then exit;
    if length(LORechts1S) < 2 then exit;
    MaskEditLORechts2.SetFocus;
  end;
end;

procedure TForm83.MaskEditLORechts2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = chr(13) then
  begin
    LORechts2S := MaskEditLORechts2.Text;
    LeerLoeschen (LORechts2S);
    if LORechts2S = '' then exit;
    if length(LORechts2S) < 2 then exit;
    MaskEditLORechts3.SetFocus;
  end;
end;

procedure TForm83.MaskEditLORechts3KeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(13) then
  begin
    LORechts3S  := MaskEditLORechts3.Text;
    LeerLoeschen (LORechts3S);
    if LORechts3S = '' then exit;
    if length(LORechts3S) < 3 then exit;
    Rand.Links  := StrToInt(LORechts1S+LORechts2S+LORechts3S);
    MaskEditLOHoch1.SetFocus;
  end;
end;

procedure TForm83.MaskEditLOHoch1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(13) then
  begin
    LOHoch1S:= MaskEditLOHoch1.Text;
    LeerLoeschen (LOHoch1S);
    if LOHoch1S = '' then exit;
    if length(LOHoch1S) < 2 then exit;
    MaskEditLOHoch2.SetFocus;
  end;
end;

procedure TForm83.MaskEditLOHoch2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(13) then
  begin
    LOHoch2S := MaskEditLOHoch2.Text;
    LeerLoeschen (LOHoch2S);
    if LOHoch2S = '' then exit;
    if length(LOHoch2S) < 2 then exit;
    MaskEditLOHoch3.SetFocus;
  end;
end;

procedure TForm83.MaskEditLOHoch3KeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(13) then
  begin
    LOHoch3S := MaskEditLOHoch3.Text;
    LeerLoeschen (LOHoch3S);
    if LOHoch3S = '' then exit;
    if length(LOHoch3S) < 3 then exit;
    Rand.Oben := StrToInt(LOHoch1S+LOHoch2S+LOHoch3S);
    MaskEditRURechts1.SetFocus;
  end;
end;

procedure TForm83.MaskEditRURechts1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = chr(13) then
  begin
    RURechts1S := MaskEditRURechts1.Text;
    LeerLoeschen (RURechts1S);
    if RURechts1S = '' then exit;
    if length(RURechts1S) < 2 then exit;
    MaskEditRURechts2.SetFocus;
  end;
end;

procedure TForm83.MaskEditRURechts2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = chr(13) then
  begin
    RURechts2S := MaskEditRURechts2.Text;
    LeerLoeschen (RURechts2S);
    if RURechts2S = '' then exit;
    if length(RURechts2S) < 2 then exit;
    MaskEditRURechts3.SetFocus;
  end;
end;

procedure TForm83.MaskEditRURechts3KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = chr(13) then
  begin
    RURechts3S  := MaskEditRURechts3.Text;
    LeerLoeschen (RURechts3S);
    if RURechts3S = '' then exit;
    if length(RURechts3S) < 3 then exit;
    Rand.Rechts := StrToInt(RURechts1S+RURechts2S
                   +RURechts3S);
    if Rand.Rechts <= Rand.Links then
    begin
      LabelGaussFalsch.Caption := Tx(1303);
      MaskEditLORechts1.Text := '';
      MaskEditLORechts2.Text := '';
      MaskEditLORechts3.Text := '';
      MaskEditRURechts1.Text := '';
      MaskEditRURechts2.Text := '';
      MaskEditRURechts3.Text := '';
      MaskEditLORechts1.SetFocus;
    end
    else
    begin
      LabelGaussFalsch.Caption := '';
      MaskEditRUHoch1.SetFocus;
    end;
  end;
end;

procedure TForm83.MaskEditRUHoch1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(13) then
  begin
    RUHoch1S := MaskEditRUHoch1.Text;
    LeerLoeschen (RUHoch1S);
    if RUHoch1S = '' then exit;
    if length(RUHoch1S) < 2 then exit;
    MaskEditRUHoch2.SetFocus;
  end;
end;

procedure TForm83.MaskEditRUHoch2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(13) then
  begin
    RUHoch2S := MaskEditRUHoch2.Text;
    LeerLoeschen (RUHoch2S);
    if RUHoch2S = '' then exit;
    if length(RUHoch2S) < 2 then exit;
    MaskEditRUHoch3.SetFocus;
  end;
end;

procedure TForm83.MaskEditRUHoch3KeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(13) then
  begin
    RUHoch3S   := MaskEditRUHoch3.Text;
    LeerLoeschen (RUHoch3S);
    if RUHoch3S = '' then exit;
    if length(RUHoch3S) < 3 then exit;
    Rand.Unten := StrToInt(RUHoch1S+RUHoch2S+RUHoch3S);
    if Rand.Unten >= Rand.Oben then
    begin
      LabelGaussFalsch.Caption := Tx(1304);
      MaskEditLOHoch1.Text := '';
      MaskEditLOHoch2.Text := '';
      MaskEditLOHoch3.Text := '';
      MaskEditRUHoch1.Text := '';
      MaskEditRUHoch2.Text := '';
      MaskEditRUHoch3.Text := '';
      MaskEditLOHoch1.SetFocus;
    end
    else LabelGaussFalsch.Caption := '';
    Breite   := abs(Rand.Rechts - Rand.Links);
    Hoehe    := abs(Rand.Oben - Rand.Unten);
    Faktor   := Breite/Hoehe;
    HKarte   := 660;
    LKarte   := 660;
    if Breite >= Hoehe then
    begin
      HKarte := round(HKarte/Faktor);
      LKarte := 660;
    end;
    if Hoehe >= Breite then
    begin
      LKarte := round(LKarte*Faktor);
      HKarte := 660;
    end;
    Maus := true;
    LabelKlicken.Visible := true;
    ListBoxDaten.Visible := true;
    ListBoxDaten.Clear;
    LabelListe.Visible   := true;
    PanelAnzahl.Visible  := true;
    FarbeKarte.Enabled   := true;
    PanelGauss.Visible   := false;
    Maus                 := true;
  end;
end;

procedure TForm83.MaskEditUTMZoneKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(13) then
  begin
    UTMZoneS := MaskEditUTMZone.Text;
    LeerLoeschen (UTMZoneS);
    if UTMZoneS = '' then exit;
    if length(UTMZoneS) < 3 then exit;
    MaskEditLOOsten.SetFocus;
  end;
end;

procedure TForm83.MaskEditLOOstenKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(13) then
  begin
    LOOstenS := MaskEditLOOsten.Text;
    LeerLoeschen (LOOstenS);
    if LOOstenS = '' then exit;
    if length(LOOstenS) < 7 then exit;
    Rand.Links := StrToInt(LOOstenS);
    MaskEditLONorden.SetFocus;
  end;
end;

procedure TForm83.MaskEditLONordenKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(13) then
  begin
    LONordenS := MaskEditLONorden.Text;
    LeerLoeschen (LONordenS);
    if LONordenS = '' then exit;
    if length(LONordenS) < 7 then exit;
    Rand.Oben := StrToInt(LONordenS);
    MaskEditRUOsten.SetFocus;
  end;
end;

procedure TForm83.MaskEditRuOstenKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(13) then
  begin
    RUOstenS := MaskEditRUOsten.Text;
    LeerLoeschen (RUOstenS);
    if RUOstenS = '' then exit;
    if length(RUOstenS) < 7 then exit;
    Rand.Rechts := StrToInt(RUOstenS);
    MaskEditRUNorden.SetFocus;
    if Rand.Rechts <= Rand.Links then
    begin
      LabelUTMFalschO.Visible := true;
      MaskEditLOOsten.Text := '';
      MaskEditRUOsten.Text := '';
      MaskEditLOOsten.SetFocus;
    end
    else LabelUTMFalschO.Visible := false;
  end;
end;

procedure TForm83.MaskEditRuNordenKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(13) then
  begin
    RUNordenS := MaskEditRUNorden.Text;
    LeerLoeschen (RUNordenS);
    if RUNordenS = '' then exit;
    if length(RUNordenS) < 7 then exit;
    Rand.Unten := StrToInt(RUNordenS);
    if Rand.Oben <= Rand.Unten then
    begin
    LabelUTMFalschN.Visible := true;
      MaskEditLONorden.Text := '';
      MaskEditRUNorden.Text := '';
      MaskEditLONorden.SetFocus;
    end
    else LabelUTMFalschN.Visible := false;
    PanelUTM.Visible := false;
    PanelAnzahl.Visible  := true;
    Breite   := abs(Rand.Rechts - Rand.Links);
    Hoehe    := abs(Rand.Oben - Rand.Unten);
    Faktor   := Breite/Hoehe;
    HKarte   := 660;
    LKarte   := 660;
    if Breite >= Hoehe then
    begin
      HKarte := round(HKarte/Faktor);
      LKarte := 660;
    end;
    if Hoehe >= Breite then
    begin
      LKarte := round(LKarte*Faktor);
      HKarte := 660;
    end;
    Maus := true;
    LabelKlicken.Visible := true;
    ListBoxDaten.Visible := true;
    ListBoxdaten.Clear;
    LabelListe.Visible   := true;
    FarbeKarte.Enabled   := true;
  end;
end;

procedure TForm83.ImageKarteMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if not Maus then exit;
  LabelKlicken.Visible := false;
  if ssLeft in Shift then
  begin
    if not Klick then exit;
    if RechteckS = 'LinksOben' then
    begin
      Xlinks    := X;
      Ylinks    := Y;
      RechteckS := 'RechtsUnten';
      with ImageKarte.Canvas do
      begin
        Brush.Style := bsSolid;
        Pen.Color   := clWhite;
        Ellipse(Xlinks-2,Ylinks-2,Xlinks+2,Ylinks+2);
      end;
      LabelText.Caption := Tx(1611);
      exit;
    end;
    if RechteckS = 'RechtsUnten' then
    begin
      Xrechts := X;
      Yrechts := Y;
      with ImageKarte.Canvas do
      begin
        Brush.Style := bsClear;
        Pen.Width   := 2;
        Pen.Color := clWhite;
        Rectangle(Xlinks,Ylinks,Xrechts,Yrechts);
        Pen.Width := 1;
      end;
      RechteckS := 'Fertig';
      exit;
    end;
    DecimalSeparator := '.';
    inc(Zahl);
    with ImageKarte.Canvas do
    begin
      Pen.Color   := DatenFarbe;
      Brush.Color := DatenFarbe;
      Font.Color  := DatenFarbe;
      Ellipse(x-2,y-2,x+2,y+2);
      Brush.Color := clWhite;
      Textout (x+2,y+2,IntToStr(Zahl));
    end;
    if Kspiegeln then X := Breite - X;
    if (OstWestS = 'E') or (KoordinatenS = 'UTM') then
      XLaenge := Rand.Links+x*Breite/LKarte;
    if OstWestS = 'W' then
      XLaenge := Rand.Rechts + (LKarte-x)*Breite/LKarte;
    if (NordSuedS = 'N') or (KoordinatenS = 'UTM') then
      YLaenge := Rand.Oben - Y*Hoehe/HKarte;
    if NordSuedS = 'S' then
      YLaenge := Rand.Unten - (HKarte-Y)*Hoehe/HKarte;
    if(KoordinatenS = 'DMM') or (KoordinatenS = 'DMS') then
    begin
      GradMin(XLaenge, Zahl, LGradS, LMinS);
      GradMin(YLaenge, Zahl, BGradS, BMinS);
      BGrad := StrToInt(BGradS);
      BMin  := StrToFloat(BMinS);
      LGrad := StrToInt(LGradS);
      LMin  := StrToFloat(LMinS);
      BreiteFeld[Zahl] := BGrad*60 + BMin;
      LaengeFeld[Zahl] := LGrad*60 + LMin;
    end;
    if (KoordinatenS = 'Gauss') or (KoordinatenS = 'UTM') then
    begin
      BreiteFeld[Zahl] := round(YLaenge);
      LaengeFeld[Zahl] := round(XLaenge);
    end;
    Maus  := false;
    PanelDaten.Visible := true;
    MaskEditLP.SetFocus;
  end;
end;

procedure TForm83.MaskEditLPKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(13) then
  begin
    LPS := UcaseS(MaskEditLP.Text);
    if LPS = '' then exit;
    if LPS = 'L' then Linear := true;
    if LPS = 'P' then Linear := false;
    MaskEditAzi.SetFocus;
//    Farbe.Enabled := false;
  end;
end;

procedure TForm83.MaskEditLPKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  LP : string[1];
begin
  LP := UcaseS(MaskEditLP.Text);
  if (LP <> 'L') and (LP <> 'P') then
  begin
    MaskEditLP.Clear;
    MaskEditLP.SetFocus;
  end;
end;

procedure TForm83.MaskEditAziKeyPress(Sender: TObject; var Key: Char);
var
  MaxAzi : word;
begin
  if Winkel = 1 then MaxAzi := 360 else MaxAzi := 400;
  if Key = chr(13) then
  begin
    AzimutS := MaskEditAzi.Text;
    LeerLoeschen (AzimutS);
    if AzimutS = '' then exit
    else
    begin
      Azimut := StrToInt (AzimutS);
      if Azimut <= MaxAzi then
      begin
        MaskEditFal.SetFocus;
      end
      else
      begin
        MaskEditAzi.Clear;
        MaskEditAzi.SetFocus;
      end;
    end;
  end;
end;

procedure TForm83.MaskEditFalKeyPress(Sender: TObject; var Key: Char);
var
  ZeileS     : string[60];
  AnzahlS    : string[5];
  MaxFall    : shortint;
begin
  if key = chr(13) then
  begin
    ListBoxDaten.Enabled := true;
    MaxFall := 90;
    if Winkel = 2 then MaxFall := 100;
    FallS   := MaskEditFal.Text;
    LeerLoeschen(FallS);
    if FallS = '' then exit
    else
    begin
      Fall := StrToInt (FallS);
      if Fall <= MaxFall then
      begin
        ButtonDBeenden.Enabled := true;
      end
      else
      begin
        MaskEditFal.Clear;
        MaskEditFal.SetFocus;
        exit;
      end;
    end;
    if Winkel = 2 then Neugrad (Azimut, Fall);
    AzimutS := RightS ('000' + AzimutS, 3);
    FallS   := RightS ('00' + FallS, 2);
    if (KoordinatenS = 'DMM') or (KoordinatenS = 'DMS') then
      ZeileS  := NordSuedS+BgradS+'°'+BMinS+'´  '+OstWestS
                 +LGradS+'°'+LMinS+'´  '
                 +LPS+AzimutS+'/'+FallS;
    if (KoordinatenS = 'Gauss') or (KoordinatenS = 'UTM') then
      ZeileS := Tx(1308)+IntToStr(round(XLaenge))
                +'   '+Tx(1309)+IntToStr(round(YLaenge))
                +'  '+LPS+' '+AzimutS+'/'+FallS;
    AnzahlS := IntToStr (Zahl);
    AnzahlS := RightS ('     '+AnzahlS,5);
    LabelZahl.Caption := AnzahlS;
    ListBoxDaten.Items.Add (ZeileS);
    MaskEditAzi.Text    := '   ';
    MaskEditFal.Text    := '   ';
    AziFeld[Zahl]       := Azimut;
    FalFeld[Zahl]       := Fall;
    LPFeld[Zahl]        := Linear;
    MaskEditLP.Clear;
    Maus := true;
    ButtonDbeenden.Visible := true;
    PanelDaten.Visible     := false;
  end;
end;

procedure TForm83.ButtonDbeendenClick(Sender: TObject);
begin
  Beenden                   := true;
  ZahlGlob                  := Zahl;
  Dspeichern.Enabled        := true;
  ButtonPlot.Visible        := true;
end;

procedure TForm83.ButtonPlotClick(Sender: TObject);
begin
  Form81.Show;
end;

procedure TForm83.kopierenClick(Sender: TObject);
begin
  ClipBoard.Assign (ImageKarte.Picture);
end;

procedure TForm83.SpeedkopierenClick(Sender: TObject);
begin
  kopierenClick(Sender);
end;

procedure TForm83.GspeichernClick(Sender: TObject);
begin
  PanelSpeichern.Visible := true;
end;

procedure TForm83.SpeedGspeichernClick(Sender: TObject);
begin
  GspeichernClick(Sender);
end;

procedure TForm83.ButtonSausClick(Sender: TObject);
begin
  PanelSpeichern.Visible := false;
end;

procedure TForm83.ListBoxSpeichernClick(Sender: TObject);
var
  i       : byte;
  Rahmen  : TRect;
  DNameS  : string;
  BildS   : Graphics.TBitmap;
  BHoeheF : word;
begin
  DNameS       := InputBox(Tx(439),Tx(887),' ');
  BildS        := Graphics.TBitmap.Create;
  BHoeheF      := round(BBreiteF/Ratio);
  BildS.Width  := BBreiteF;
  BildS.Height := BHoeheF;
  BBreiteST    := BBreiteF;
  Rahmen       := Rect(0,0,BildS.Width-50,BildS.Height-50);
  BildS.Canvas.Stretchdraw(Rahmen,ImageKarte.Picture.Graphic);
  Unterschrift(BildS.Canvas,Ratio,DNameS);
  try
    for i := 0 to ListboxSpeichern.Items.Count-1 do
    begin
      if ListboxSpeichern.Selected[i] then
      begin
        if i = 0 then speichernBMP (SavePictureDialog1, BildS);
        if i = 1 then speichernGIF (SavePictureDialog1, BildS);
        if i = 2 then speichernTIF (SaveDialog1, BildS);
        if i = 3 then speichernJPG (SavePictureDialog1, BildS);
        if i = 4 then speichernWMF (SavePictureDialog1, BildS);
        if i = 5 then speichernEMF (SavePictureDialog1, BildS);
        if i = 6 then speichernPNG (SavePictureDialog1, BildS);
      end;
    end;
  finally
    BildS.Free;
  end;
  PanelSpeichern.Visible := false;
end;

procedure TForm83.FarbeKarteClick(Sender: TObject);
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
  ButtonDbeendenClick (Sender);
end;

procedure TForm83.SpeedKFarbeClick(Sender: TObject);
begin
  FarbeKarteClick(Sender);
end;

procedure TForm83.FarbeClick(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  Farbe         := clWhite;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS := ColorToString (Farbe);
  DatenFarbe      := StringToColor(FarbeS);
  KonfigZeileS[7] := '  Colour of Data Points    :,'+FarbeS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  if Beenden then ButtonDbeendenClick(Sender);
end;

procedure TForm83.SpeedFarbeClick(Sender: TObject);
begin
  FarbeClick(Sender);
end;

procedure TForm83.HilfeClick(Sender: TObject);
var
  DateiS : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\83Karte-Karte.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\83Map-map');
  end;
  HelpRouter1.free;
end;

procedure TForm83.SpeedHilfeClick(Sender: TObject);
begin
  HilfeClick(Sender);
end;

procedure TForm83.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Eintragen_in_Karte.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'Plot_data_into_map.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm83.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm83.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm83.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

end.
