unit Unit87;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, ComCtrls, Texte, Menus, StdCtrls, ExtCtrls,
  Clipbrd, Buttons, Globvar, Jpeg, ExtDlgs, Basic, Mask, Math,
  RfPhi, Plotten, Printers, Drucken, ShellApi, Standard,
  Bmp2Tiff,GifImage,ReadTiff, ehsHelpRouter;

type
  TForm87 = class(TForm)
    StatusBar: TStatusBar;
    ImageFoto: TImage;
    LabelDemo: TLabel;
    MainMenu1: TMainMenu;
    Bild: TMenuItem;
    einfuegen: TMenuItem;
    PanelSpeed: TPanel;
    SpeedHandbuch: TSpeedButton;
    SpeedHilfe: TSpeedButton;
    SpeedEinfuegen: TSpeedButton;
    SpeedFarbe: TSpeedButton;
    SpeedLiteratur: TSpeedButton;
    Farbe: TMenuItem;
    OpenPictureDialog1: TOpenPictureDialog;
    Gspeichern: TMenuItem;
    ColorDialog1: TColorDialog;
    MaskEditDatei: TMaskEdit;
    LabelDatei: TLabel;
    ListBoxPunkte: TListBox;
    SaveDialog1: TSaveDialog;
    SavePictureDialog1: TSavePictureDialog;
    ButtonStart: TButton;
    ButtonZurueck: TButton;
    ButtonBeenden: TButton;
    SpeedFuell: TSpeedButton;
    Umriss: TMenuItem;
    Fuellung: TMenuItem;
    LabelListe: TLabel;
    LabelRf: TLabel;
    LabelPhi: TLabel;
    ButtonDbeenden: TButton;
    LabelDaten: TLabel;
    LabelZahl: TLabel;
    Dspeichern: TMenuItem;
    DatSpeichern: TMenuItem;
    DatspeichernUnter: TMenuItem;
    SpeedDspeichern: TSpeedButton;
    LabelKlick: TLabel;
    ButtonLoeschen: TButton;
    Gdrucken: TMenuItem;
    einrichten: TMenuItem;
    drucken: TMenuItem;
    PrintDialog1: TPrintDialog;
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
    Panel12: TPanel;
    CheckBoxDrucken: TCheckBox;
    Panel13: TPanel;
    CheckBoxAbbruch: TCheckBox;
    PanelKoordinaten: TPanel;
    LabelMitte: TLabel;
    LabelXdrucken: TLabel;
    MaskEditXdrucken: TMaskEdit;
    LabelYdrucken: TLabel;
    MaskEditYdrucken: TMaskEdit;
    LabelMittel: TLabel;
    kopieren: TMenuItem;
    ButtonPlot: TButton;
    Hilfe: TMenuItem;
    Handbuch: TMenuItem;
    Literatur: TMenuItem;
    Speedkopieren: TSpeedButton;
    ausDatei: TMenuItem;
    oeffnenBMP: TMenuItem;
    oeffnenGIF: TMenuItem;
    oeffnenTIF: TMenuItem;
    oeffnenJPG: TMenuItem;
    oeffnenWMF: TMenuItem;
    oeffnenEMF: TMenuItem;
    OpenDialog1: TOpenDialog;
    SpeedBMPoeffnen: TSpeedButton;
    SpeedGIFoeffnen: TSpeedButton;
    SpeedTIFoeffnen: TSpeedButton;
    SpeedJPGoeffnen: TSpeedButton;
    SpeedWMFoeffnen: TSpeedButton;
    SpeedEMFoeffnen: TSpeedButton;
    speichern: TMenuItem;
    speichernU: TMenuItem;
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
    SpeedBMP: TSpeedButton;
    SpeedGIF: TSpeedButton;
    SpeedTIF: TSpeedButton;
    SpeedJPG: TSpeedButton;
    SpeedWMF: TSpeedButton;
    SpeedEMF: TSpeedButton;
    SpeedEinrichten: TSpeedButton;
    SpeedDrucken: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure ShowHint(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure einfuegenClick(Sender: TObject);
    procedure SpeedEinfuegenClick(Sender: TObject);
    procedure SpeedFarbeClick(Sender: TObject);
    procedure ButtonStartClick(Sender: TObject);
    procedure ImageFotoMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ButtonZurueckClick(Sender: TObject);
    procedure ButtonBeendenClick(Sender: TObject);
    procedure SpeedFuellClick(Sender: TObject);
    procedure UmrissClick(Sender: TObject);
    procedure FuellungClick(Sender: TObject);
    procedure ButtonDbeendenClick(Sender: TObject);
    procedure DatSpeichernClick(Sender: TObject);
    procedure DatspeichernUnterClick(Sender: TObject);
    procedure SpeedDspeichernClick(Sender: TObject);
    procedure ButtonLoeschenClick(Sender: TObject);
    procedure druckenClick(Sender: TObject);
    procedure MaskEditUnterschriftKeyPress(Sender: TObject; var Key: Char);
    procedure ListBoxSchriftClick(Sender: TObject);
    procedure RadioButtonLinksClick(Sender: TObject);
    procedure RadioButtonZentriertClick(Sender: TObject);
    procedure RadioButtonRechtsClick(Sender: TObject);
    procedure CheckBoxDruckenClick(Sender: TObject);
    procedure CheckBoxAbbruchClick(Sender: TObject);
    procedure kopierenClick(Sender: TObject);
    procedure ButtonPlotClick(Sender: TObject);
    procedure HilfeClick(Sender: TObject);
    procedure HandbuchClick(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
    procedure SpeedHilfeClick(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure SpeedLiteraturClick(Sender: TObject);
    procedure SpeedkopierenClick(Sender: TObject);
    procedure oeffnenBMPClick(Sender: TObject);
    procedure oeffnenGIFClick(Sender: TObject);
    procedure oeffnenTIFClick(Sender: TObject);
    procedure oeffnenJPGClick(Sender: TObject);
    procedure oeffnenWMFClick(Sender: TObject);
    procedure oeffnenEMFClick(Sender: TObject);
    procedure GDemo (Sender: TObject);
    procedure SpeedBMPoeffnenClick(Sender: TObject);
    procedure SpeedGIFoeffnenClick(Sender: TObject);
    procedure SpeedTIFoeffnenClick(Sender: TObject);
    procedure SpeedJPGoeffnenClick(Sender: TObject);
    procedure SpeedWMFoeffnenClick(Sender: TObject);
    procedure SpeedEMFoeffnenClick(Sender: TObject);
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
    procedure SpeedBMPClick(Sender: TObject);
    procedure SpeedGIFClick(Sender: TObject);
    procedure SpeedTIFClick(Sender: TObject);
    procedure SpeedJPGClick(Sender: TObject);
    procedure SpeedWMFClick(Sender: TObject);
    procedure SpeedEMFClick(Sender: TObject);
    procedure SpeedEinrichtenClick(Sender: TObject);
    procedure SpeedDruckenClick(Sender: TObject);
    procedure einrichtenClick(Sender: TObject);
  end;

var
  Form87      : TForm87;
  Bitmap      : TBitmap;
  Rahmen      : TRect;
  SchliffBild : TBitmap;
  CurrentFile : string;
  JPGDatei    : TJpegImage;
  DurchX      : array[0..4] of word;
  DurchY      : array[0..4] of word;
  Px, Py      : array[0..4] of word;
  PunktS      : string[1];
  Lang        : real;
  Kurz        : real;
  DZahl, l    : word;
  ZeileS      : string;
  LangS       : string;
  KurzS       : string;
  ALtBild     : array[0..10] of Tbitmap;
  Loesch      : word;
  TextS       : string;
  Gedrueckt   : array [1..3] of boolean;
  BuendigS    : string;
  BBreite     : word;
  BHoehe      : word;

implementation
{$R *.DFM}
uses Unit86, Unit88;

procedure TForm87.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm87.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm87.FormActivate(Sender: TObject);
begin
  Left   := 4;
  Top    := 0;
  Width  := 1040;
  Height := 750;
  Form87.Caption            := 'Fabric8: '+Tx(1361);
  LabelDemo.Visible         := false;
  if DemoB then
    LabelDemo.Visible       := true;
  setlength (Rf, MaxDaten);
  setlength (Rphi,MaxDaten);
  Bild.Caption              := Tx(1068);
  Einfuegen.Caption         := Tx(1069);
  AusDatei.Caption          := Tx(57);
  ButtonZurueck.Caption     := Tx(30);
  ButtonBeenden.Caption     := Tx(53);
  LabelDatei.Caption        := Tx(419);
  Farbe.Caption             := Tx(275);
  Umriss.Caption            := Tx(498);
  Fuellung.Caption          := Tx(475);
  Gspeichern.Caption        := Tx(1071);
  LabelListe.Caption        := Tx(914);
  ButtonDbeenden.Caption    := Tx(106);
  LabelDaten.Caption        := Tx(101);
  Dspeichern.Caption        := Tx(86);
  Datspeichern.Caption      := Tx(87);
  DatspeichernUnter.Caption := Tx(88);
  SpeedEinfuegen.Hint       := Hilf(246);
  SpeedFarbe.Hint           := Hilf(365);
  SpeedFuell.Hint           := Hilf(458);
  Speedkopieren.Hint        := Hilf(262);
  SpeedBMP.Hint             := Hilf(586);
  SpeedGIF.Hint             := Hilf(587);
  SpeedTIF.Hint             := Hilf(588);
  SpeedJPG.Hint             := Hilf(589);
  SpeedWMF.Hint             := Hilf(590);
  SpeedEMF.Hint             := Hilf(591);
  SpeedBMPoeffnen.Hint      := Hilf(621);
  SpeedGIFoeffnen.Hint      := Hilf(622);
  SpeedTIFoeffnen.Hint      := Hilf(623);
  SpeedJPGoeffnen.Hint      := Hilf(624);
  SpeedWMFoeffnen.Hint      := Hilf(625);
  SpeedEMFoeffnen.Hint      := Hilf(626);
  SpeedEinrichten.Hint      := Hilf(505);
  SpeedDrucken.Hint         := Hilf(309);
  SpeedDspeichern.Hint      := Hilf(204);
  SpeedHilfe.Hint           := Hilf(210);
  SpeedHandbuch.Hint        := Hilf(274);
  SpeedLiteratur.Hint       := Hilf(462);
  LabelKlick.Caption        := Tx(1068);
  PanelSpeed.Visible        := false;
  einfuegen.Enabled         := false;
  SpeedEinfuegen.Enabled    := false;
  Bild.Enabled              := false;
  Gspeichern.Enabled        := false;
  Farbe.Enabled             := false;
  SpeedFarbe.Enabled        := false;
  speichern.Caption         := Tx(87);
  speichernU.Caption        := Tx(88);
  SpeedDspeichern.Enabled   := false;
  MaskEditDatei.Visible     := false;
  LabelDatei.Visible        := false;
  SpeedFuell.Enabled        := false;
  LabelListe.Visible        := false;
  LabelRF.Visible           := false;
  LabelPhi.Visible          := false;
  ListBoxPunkte.Visible     := false;
  ButtonDbeenden.Visible    := false;
  LabelZahl.Visible         := false;
  LabelDaten.Visible        := false;
  Dspeichern.Enabled        := false;
  LabelKlick.Visible        := false;
  Speedkopieren.Enabled     := false;
  SpeedBMP.Enabled          := false;
  SpeedGIF.Enabled          := false;
  SpeedTIF.Enabled          := false;
  SpeedJPG.Enabled          := false;
  SpeedWMF.Enabled          := false;
  SpeedEMF.Enabled          := false;
  SpeedEinrichten.Enabled   := false;
  SpeedDrucken.Enabled      := false;
  LangS                     := Tx(1078)+Tx(1079);
  KurzS                     := Tx(1078)+Tx(1446);
  LabelKlick.Visible        := false;
  ListBoxPunkte.Clear;
  ButtonLoeschen.Visible    := false;
  PanelDrucken.Visible      := false;
  LabelKlick.Visible        := false;
  Gdrucken.Caption          := Tx(1080);
  kopieren.Caption          := Tx(282);
  einrichten.Caption        := Tx(94);
  drucken.Caption           := Tx(93);
  ButtonPlot.Caption        := Tx(469);
  ButtonPlot.Visible        := false;
  Gdrucken.Enabled          := false;
  ButtonLoeschen.Caption    := Tx(1393);
  Hilfe.Caption             := Tx(162)+' (F1)';
  Handbuch.Caption          := Tx(1055)+' (F2)';
  Literatur.Caption         := Tx(1183)+' (F5)';
  Speedkopieren.Enabled     := false;
end;

procedure TForm87.ButtonStartClick(Sender: TObject);
begin
  if ClipBoard.HasFormat(CF_Bitmap) then
  begin
    einfuegen.Enabled      := true;
    SpeedEinfuegen.Enabled := true;
  end;
  LabelKlick.Visible   := true;
  ImageFoto.Enabled    := true;
  PanelSpeed.Visible   := true;
  Bild.Enabled         := true;
  PunktS               := '1';
  Dzahl                := 0;
  l                    := 0;
  Loesch               := 0;
end;

procedure TForm87.ButtonZurueckClick(Sender: TObject);
var
  Flaeche : TRect;
begin
  Rf   := Nil;
  RPhi := Nil;
  Flaeche := Rect(0,0,Clientwidth,ClientHeight);
  Loeschen (ImageFoto.Canvas, Flaeche);
  Form87.Close;
  SetCurrentDir(DirectS);
end;

procedure TForm87.ButtonBeendenClick(Sender: TObject);
var
  Flaeche : TRect;
begin
  Rf   := Nil;
  RPhi := Nil;
  Flaeche := Rect(0,0,Clientwidth,ClientHeight);
  Loeschen (ImageFoto.Canvas, Flaeche);
  Form87.Close;
  Form86.Close;
  SetCurrentDir(DirectS);
end;

procedure TForm87.einfuegenClick(Sender: TObject);
var
  BHoehe  : word;
  BBreite : word;
  Ratio   : real;
begin
  ImageFoto.Visible     := true;
  if not ClipBoard.HasFormat(CF_Bitmap) then
  begin
    MessageDlg(Tx(1074),mtInformation,[mbOK],0);
    exit;
  end
  else
  begin
    ImageFoto.Canvas.CopyMode := cmSrcCopy;
    Bitmap := TBitmap.Create;
    Bitmap.Assign(ClipBoard);
    Ratio := Bitmap.Height/Bitmap.Width;
    if Bitmap.Width > Bitmap.Height then
    begin
      BBreite := ImageFoto.Width;
      BHoehe  := round(ImageFoto.Width*Ratio);
    end
    else
    begin
      BHoehe  := ImageFoto.Height;
      BBreite := round(ImageFoto.Height/Ratio);
    end;
    Rahmen := Rect(0,0,BBreite, BHoehe);
    ImageFoto.Canvas.StretchDraw (Rahmen, Bitmap);
    SchliffBild := TBitmap.Create;
    SchliffBild.Assign (ImageFoto.Picture);
  end;
  if DemoB then
  begin
    with ImageFoto.Canvas do
    begin
      Font.Name   := 'Times New Roman';
      Brush.Color := clWhite;
      Font.Color  := clGray;
      Font.Size   := 36;
      Textout(Width div 2-120,Height div 2-20,'Demo-Version');
    end;
  end;
  GDemo (ImageFoto.Canvas);
end;

procedure TForm87.SpeedEinfuegenClick(Sender: TObject);
begin
  einfuegenClick(Sender);
end;

procedure TForm87.oeffnenBMPClick(Sender: TObject);
var
  Ratio   : real;
  Rahmen  : TRect;
begin
  OpenPictureDialog1.Filter := 'Bitmap file (*.bmp)|*.bmp';
  if OpenPictureDialog1.Execute then
    CurrentFile := OpenPictureDialog1.FileName;
  Bitmap           := Tbitmap.create;
  Bitmap.LoadFromFile(CurrentFile);
  Ratio := Bitmap.Height/Bitmap.Width;
  if Bitmap.Width > Bitmap.Height then
  begin
    BBreite := ImageFoto.Width;
    BHoehe  := round(ImageFoto.Width*Ratio);
  end
  else
  begin
    BHoehe  := ImageFoto.Height;
    BBreite := round(ImageFoto.Height/Ratio);
  end;
  Rahmen := Rect(0,0,BBreite,BHoehe);
  ImageFoto.Canvas.StretchDraw (Rahmen, Bitmap);
  GDemo (ImageFoto.Canvas);
end;

procedure TForm87.SpeedBMPoeffnenClick(Sender: TObject);
begin
  oeffnenBMPClick(Sender);
end;

procedure TForm87.oeffnenGIFClick(Sender: TObject);
var
  GBild   : TGIFImage;
  Bitmap  : TBitmap;
  Ratio   : real;
  Rahmen  : TRect;
begin
  OpenPictureDialog1.Filter := 'Compuserve gif file (*.gif)|*.gif';
  if OpenPictureDialog1.Execute then
    CurrentFile := OpenPictureDialog1.FileName;
  GBild  := TGIFImage.Create;
  Bitmap := TBitmap.Create;
  try
    GBild.LoadFromFile(CurrentFile);
    Bitmap.Assign(GBild);
    Ratio := Bitmap.Height/Bitmap.Width;
    if Bitmap.Width > Bitmap.Height then
    begin
      BBreite := ImageFoto.Width;
      BHoehe  := round(ImageFoto.Width*Ratio);
    end
    else
    begin
      BHoehe  := ImageFoto.Height;
      BBreite := round(ImageFoto.Height/Ratio);
    end;
    Rahmen := Rect(0,0,BBreite, BHoehe);
    ImageFoto.Canvas.StretchDraw (Rahmen, Bitmap);
  finally
    GBild.free;
  end;
  GDemo (ImageFoto.Canvas);
end;

procedure TForm87.SpeedGIFoeffnenClick(Sender: TObject);
begin
  oeffnenGIFClick(Sender);
end;

procedure TForm87.oeffnenTIFClick(Sender: TObject);
var
  Bitmap  : TBitmap;
  Ratio   : real;
  Rahmen  : TRect;
begin
  OpenDialog1.Filter := 'Tagged image file format (*.tif)|*.tif';
  if OpenDialog1.Execute then
    CurrentFile := OpenDialog1.FileName;
  Bitmap := TBitmap.Create;
  LoadTiffFromFile(CurrentFile,Bitmap);
  If (Bitmap.Height = 0) or (Bitmap.Width = 0) then
  begin
    showmessage(Tx(1464));
    exit;
  end
  else
  begin
    Ratio := Bitmap.Height/Bitmap.Width;
    if Bitmap.Width > Bitmap.Height then
    begin
      BBreite := ImageFoto.Width;
      BHoehe  := round(ImageFoto.Width*Ratio);
    end
    else
    begin
      BHoehe  := ImageFoto.Height;
      BBreite := round(ImageFoto.Height/Ratio);
    end;
    Rahmen := Rect(0,0, BBreite, BHoehe);
    ImageFoto.Canvas.StretchDraw (Rahmen, Bitmap);
  end;
  GDemo (ImageFoto.Canvas);
end;

procedure TForm87.SpeedTIFoeffnenClick(Sender: TObject);
begin
  oeffnenTIFClick(Sender);
end;

procedure TForm87.oeffnenJPGClick(Sender: TObject);
var
  JBild   : TJPEGImage;
  Ratio   : real;
  Rahmen  : TRect;
begin
  OpenPictureDialog1.Filter := 'Jpeg file (*.jpg)|*.jpg';
  if OpenPictureDialog1.Execute then
    CurrentFile := OpenPictureDialog1.FileName;
  JBild  := TJpegImage.Create;
  Bitmap := TBitmap.Create;
  try
    JBild.LoadFromFile(CurrentFile);
    Bitmap.Assign(JBild);
    Ratio := Bitmap.Height/Bitmap.Width;
    if Bitmap.Width > Bitmap.Height then
    begin
      BBreite := ImageFoto.Width;
      BHoehe  := round(ImageFoto.Width*Ratio);
    end
    else
    begin
      BHoehe  := ImageFoto.Height;
      BBreite := round(ImageFoto.Height/Ratio);
    end;
    Rahmen := Rect(0,0, BBreite, BHoehe);
    ImageFoto.Canvas.StretchDraw (Rahmen, Bitmap);
  finally
    JBild.free;
  end;
  GDemo (ImageFoto.Canvas);
end;

procedure TForm87.SpeedJPGoeffnenClick(Sender: TObject);
begin
  oeffnenJPGClick(Sender);
end;

procedure TForm87.oeffnenWMFClick(Sender: TObject);
var
  Metafile : TMetafile;
  Ratio    : real;
  Rahmen   : TRect;
begin
  OpenPictureDialog1.Filter := 'Windows metafile (*.WMF)|*.wmf';
  if OpenPictureDialog1.Execute then
    CurrentFile := OpenPictureDialog1.FileName;
  Bitmap   := TBitmap.Create;
  Metafile := TMetaFile.Create;
  MetaFile.Enhanced := false;
  try
    MetaFile.LoadFromFile(CurrentFile);
    Ratio := MetaFile.Height/MetaFile.Width;
    if MetaFile.Width > MetaFile.Height then
    begin
      BBreite := ImageFoto.Width;
      BHoehe  := round(ImageFoto.Width*Ratio);
    end
    else
    begin
      BHoehe  := ImageFoto.Height;
      BBreite := round(ImageFoto.Height/Ratio);
    end;
    Rahmen := Rect(0,0, BBreite, BHoehe);
    ImageFoto.Canvas.Stretchdraw (Rahmen, MetaFile);
    Bitmap.Canvas.StretchDraw (Rahmen, MetaFile);
  finally
    MetaFile.Free;
  end;
  GDemo (ImageFoto.Canvas);
end;

procedure TForm87.SpeedWMFoeffnenClick(Sender: TObject);
begin
  oeffnenWMFClick(Sender);
end;

procedure TForm87.oeffnenEMFClick(Sender: TObject);
var
  Metafile : TMetafile;
  Ratio    : real;
  Rahmen   : TRect;
begin
  OpenPictureDialog1.Filter := 'Enhanced windows metafile (*.emf)|*.emf';
  if OpenPictureDialog1.Execute then
    CurrentFile := OpenPictureDialog1.FileName;
  Bitmap   := TBitmap.Create;
  Metafile := TMetaFile.Create;
  MetaFile.Enhanced := true;
  try
    MetaFile.LoadFromFile(CurrentFile);
    Ratio := MetaFile.Height/MetaFile.Width;
    if MetaFile.Width > MetaFile.Height then
    begin
      BBreite := ImageFoto.Width;
      BHoehe  := round(ImageFoto.Width*Ratio);
    end
    else
    begin
      BHoehe  := ImageFoto.Height;
      BBreite := round(ImageFoto.Height/Ratio);
    end;
    Rahmen := Rect(0,0,BBreite, BHoehe);
    ImageFoto.Canvas.Stretchdraw (Rahmen, MetaFile);
    Bitmap.Canvas.StretchDraw (Rahmen, MetaFile); 
  finally
    MetaFile.Free;
  end;
  GDemo (ImageFoto.Canvas);
end;

procedure TForm87.SpeedEMFoeffnenClick(Sender: TObject);
begin
  oeffnenEMFClick(Sender);
end;

procedure TForm87.GDemo (Sender: TObject);
begin
  ListboxPunkte.Enabled   := true;
  SpeedFarbe.Enabled      := true;
  Speedkopieren.Enabled     := true;
  if DemoB then
  begin
    with ImageFoto.Canvas do
    begin
      Font.Name   := 'Times New Roman';
      Brush.Color := clWhite;
      Font.Color  := clGray;
      Font.Size   := 36;
      Textout(Width div 2-200,Height div 2-100,'Demo-Version');
    end;
  end;
  MaskEditDatei.Text       := CurrentFile;
  Farbe.Enabled             := true;
  Gspeichern.Enabled        := true;
  Gdrucken.Enabled          := true;
  SpeedFarbe.Enabled        := true;
  MaskEditDatei.Visible     := true;
  LabelDatei.Visible        := true;
  SpeedFuell.Enabled        := true;
  LabelListe.Visible        := true;
  LabelRF.Visible           := true;
  LabelPhi.Visible          := true;
  ListBoxPunkte.Visible     := true;
  ButtonDbeenden.Visible    := true;
  LabelKlick.Caption        := LangS;
  LabelKlick.Visible        := true;
  Speedkopieren.Enabled     := true;
  SpeedBMP.Enabled          := true;
  SpeedGIF.Enabled          := true;
  SpeedTIF.Enabled          := true;
  SpeedJPG.Enabled          := true;
  SpeedWMF.Enabled          := true;
  SpeedEMF.Enabled          := true;
  SpeedEinrichten.Enabled   := true;
  SpeedDrucken.Enabled      := true;
  AltBild[0] := TBitmap.Create;
  AltBild[0].Assign (ImageFoto.Picture);
end;

procedure TForm87.UmrissClick(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  FarbeS : string;
begin
  if ColorDialog1.Execute then DatenFarbe := ColorDialog1.Color;
  FarbeS := ColorToString (DatenFarbe);
  KonfigZeileS[7] := '  Colour of Data Points    :,'+FarbeS;
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
end;

procedure TForm87.SpeedFarbeClick(Sender: TObject);
begin
  UmrissClick(Sender);
end;

procedure TForm87.FuellungClick(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  FarbeS : string;
begin
  if ColorDialog1.Execute then FuellFarbe := ColorDialog1.Color;
  FarbeS := ColorToString (FuellFarbe);
  KonfigZeileS[97] := '  Colour of polygons       :,'+FarbeS;
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
end;

procedure TForm87.SpeedFuellClick(Sender: TObject);
begin
  FuellungClick(Sender);
end;

procedure TForm87.kopierenClick(Sender: TObject);
begin
  ClipBoard.Assign (ImageFoto.Picture);
end;

procedure TForm87.SpeedkopierenClick(Sender: TObject);
begin
  kopierenClick(Sender);
end;

procedure TForm87.speichernBMPClick(Sender: TObject);
var
  SBitmap : TBitmap;
  Rahmen  : TRect;
begin
  SBitmap        := TBitmap.Create;
  SBitmap.Width  := ImageFoto.Width;
  SBitmap.Height := ImageFoto.Height;
  Rahmen         := Rect(0,0,SBitmap.Width,SBitmap.Height);
  SBitmap.Canvas.StretchDraw(Rahmen,ImageFoto.Picture.Graphic);
  try
    if (CurrentFile <> '') and (UCaseS(RightS(CurrentFile,3)) = 'BMP')
      then SBitmap.SaveToFile(CurrentFile)
    else speichernUBMPClick(Sender);
  finally
    SBitmap.Free;
  end;
end;

procedure TForm87.SpeedBMPClick(Sender: TObject);
begin
  speichernBMPClick(Sender);
end;

procedure TForm87.speichernGIFClick(Sender: TObject);
var
  SBitmap  : TBitmap;
  GifBild : TGifImage;
  Rahmen  : TRect;
begin
  SBitmap        := TBitmap.Create;
  GifBild        := TGIFImage.Create;
  SBitmap.Width  := ImageFoto.Width;
  SBitmap.Height := ImageFoto.Height;
  Rahmen         := Rect(0,0,SBitmap.Width,SBitmap.Height);
  SBitmap.Canvas.Stretchdraw(Rahmen,ImageFoto.Picture.Graphic);
  if HTransparent then
  begin
    SBitmap.Transparent := True;
    SBitmap.TransParentColor := HintFarbe;
  end
  else SBitmap.Transparent := false;
  try
    GifBild.Assign(SBitmap);
    if (CurrentFile <> '') and (UCaseS(RightS(CurrentFile,3)) = 'GIF')
    then GifBild.SaveToFile(CurrentFile)
    else speichernUGIFClick(Sender);
  finally
    SBitmap.Free;
    GifBild.Free;
  end;
end;

procedure TForm87.SpeedGIFClick(Sender: TObject);
begin
  speichernGIFClick(Sender);
end;

procedure TForm87.speichernTIFClick(Sender: TObject);
var
  SBitmap : TBitmap;
  Rahmen  : TRect;
begin
  SBitmap        := TBitmap.Create;
  SBitmap.Width  := ImageFoto.Width;
  SBitmap.Height := ImageFoto.Height;
  Rahmen         := Rect(0,0,SBitmap.Width,SBitmap.Height);
  SBitmap.Canvas.Stretchdraw(Rahmen,ImageFoto.Picture.Graphic);
  try
    if (CurrentFile <> '') and (UCaseS(RightS(CurrentFile,3)) = 'TIF')
    then WriteTiffToFile(CurrentFile,SBitmap)
    else speichernUTIFClick(Sender);
  finally
    SBitmap.Free;
  end;
end;

procedure TForm87.SpeedTIFClick(Sender: TObject);
begin
  speichernTIFClick(Sender);
end;

procedure TForm87.speichernJPGClick(Sender: TObject);
var
  DateiJ    : string;
  Rahmen    : TRect;
  Bild      : TBitmap;
  SJpgDatei : TJpegImage;
begin
  SJpgDatei   := TJpegImage.Create;
  Bild        := TBitmap.Create;
  Bild.Width  := ImageFoto.Width;
  Bild.Height := ImageFoto.Height;
  Rahmen      := Rect(0,0,Bild.Width,Bild.Height);
  Bild.Canvas.Stretchdraw(Rahmen,ImageFoto.Picture.Graphic);
  try
    with SJpgDatei do
    begin
      Assign(Bild);
      if (CurrentFile <> '') and (UCaseS(RightS(Currentfile,3)) = 'JPG') then
      begin
        DateiJ := CurrentFile;
        delete(DateiJ,length(DateiJ)-2,3);
        DateiJ := DateiJ+'JPG';
        SaveToFile(DateiJ);
      end
      else speichernUJPGClick(Sender);
    end;
  finally
    SJpgDatei.Free;
    Bild.Free;
    CurrentFile := '';
  end;
end;

procedure TForm87.SpeedJPGClick(Sender: TObject);
begin
  speichernJPGClick(Sender);
end;

procedure TForm87.speichernWMFClick(Sender: TObject);
var
  Metafile   : TMetafile;
  MetaCanvas : TMetafileCanvas;
  SBitmap     : TBitmap;
  Rahmen     : TRect;
begin
  Metafile := TMetaFile.Create;
  MetaFile.Enhanced := false;
  try
    SBitmap := TBitmap.Create;
    SBitmap.Width  := ImageFoto.Width;
    SBitmap.Height := ImageFoto.Height;
    Rahmen        := Rect(0,0,SBitmap.Width,SBitmap.Height);
    SBitmap.Canvas.Stretchdraw(Rahmen,ImageFoto.Picture.Graphic);
    try
      SBitmap.Assign(ImageFoto.Picture);
      Metafile.Height := SBitmap.Height;
      Metafile.Width  := SBitmap.Width;
      MetaCanvas := TMetafileCanvas.Create(Metafile, 0);
      try
        MetaCanvas.Draw(0, 0, SBitmap);
      finally
        MetaCanvas.Free;
      end;
    finally
      SBitmap.Free;
    end;
    if (CurrentFile <> '') and (UCaseS(RightS(CurrentFile,3)) = 'WMF')
    then MetaFile.SaveToFile(CurrentFile)
    else SpeichernUWMFClick(Sender);
  finally
    Metafile.Free;
  end;
end;

procedure TForm87.SpeedWMFClick(Sender: TObject);
begin
  speichernWMFClick(Sender);
end;

procedure TForm87.speichernEMFClick(Sender: TObject);
var
  Metafile   : TMetafile;
  MetaCanvas : TMetafileCanvas;
  SBitmap    : TBitmap;
begin
  Metafile := TMetaFile.Create;
  MetaFile.Enhanced := true;
  try
    SBitmap := TBitmap.Create;
    try
      SBitmap.Assign(ImageFoto.Picture);
      Metafile.Height := ImageFoto.Width;
      Metafile.Width  := ImageFoto.Height;
      MetaCanvas := TMetafileCanvas.Create(Metafile, 0);
      try
        MetaCanvas.Draw(0, 0, SBitmap);
      finally
        MetaCanvas.Free;
      end;
    finally
      SBitmap.Free;
    end;
    if (CurrentFile <> '') and (UCaseS(RightS(CurrentFile,3)) = 'EMF')
    then MetaFile.SaveToFile(CurrentFile)
    else SpeichernUEMFClick(Sender);
  finally
    Metafile.Free;
  end;
end;

procedure TForm87.SpeedEMFClick(Sender: TObject);
begin
  speichernEMFClick(Sender);
end;

procedure TForm87.speichernUBMPClick(Sender: TObject);
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

procedure TForm87.speichernUGIFClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := 'Compuserve gif file (*.gif)|*.gif';
  SaveDialog1.Filter     := 'Compuserve gif file (*.gif)|*.gif';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    SpeichernGIFClick(Sender);
  end
  else exit;
end;

procedure TForm87.speichernUTIFClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := 'Tagged image file format (*.tif)|*.tif';
  SaveDialog1.Filter     := 'Tagged image file format (*.tif)|*.tif';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    SpeichernTIFClick(Sender);
  end
  else exit;
end;

procedure TForm87.speichernUJPGClick(Sender: TObject);
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

procedure TForm87.speichernUWMFClick(Sender: TObject);
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

procedure TForm87.speichernUEMFClick(Sender: TObject);
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

procedure TForm87.ImageFotoMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  Bo       : real;
  i        : word;
  TnPhi    : real;
  xr, yr   : integer;
  Xp, Yp   : real;
  Phi      : integer;
  R        : real;
  Cx, Cy   : integer;
  RS, PhiS : string[5];
  Steig    : real;
begin
  Bo := Pi/180;
  ImageFoto.Cursor := crCross;
  if ssLeft in Shift then
  begin
    With ImageFoto.Canvas do
    begin
      Pen.Color   := DatenFarbe;
      Brush.Color := DatenFarbe;
      Ellipse (x-2,y-2,x+2,y+2);
    end;
    if PunktS = '1' then
    begin
      ButtonLoeschen.Visible := false;
      DurchX[1] := x;
      DurchY[1] := Y;;
      PunktS    := '2';
      exit;
    end;
    if PunktS = '2' then
    begin
      DurchX[2]  := x;
      DurchY[2]  := y;
      PunktS     := '3';
      LabelKlick.Caption := KurzS;
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
      inc(DZahl);
      DurchX[4] := x;
      DurchY[4] := Y;
      Px[1] := min(DurchX[1],DurchX[2]);
      Px[3] := max(DurchX[1],DurchX[2]);
      Py[2] := min(DurchY[3],DurchY[4]);
      Py[4] := max(DurchY[3],DurchY[4]);
      if Px[1] = DurchX[1] then
      begin
        Py[1] := DurchY[1];
        Py[3] := DurchY[2];
      end
      else
      begin
        Py[1] := DurchY[2];
        Py[3] := DurchY[1];
      end;
      if Py[2] = DurchY[3] then
      begin
        Px[2] := DurchX[3];
        Px[4] := DurchX[4];
      end
      else
      begin
        Px[2] := DurchX[4];
        Px[4] := DurchX[3];
      end;
      if Px[3] = Px[1] then Px[3] := Px[3] +1;
      if Py[2] = Py[4] then Py[4] := Py[4] + 1;
      Lang := sqrt(sqr(Px[3]-Px[1])+ sqr(Py[3]-Py[1]));
      Kurz := sqrt(sqr(Px[4]-Px[2])+ sqr(Py[4]-Py[2]));
      if Kurz = 0 then Kurz := 0.01;
      R  := Lang/Kurz;
      TnPhi := (Py[3]-Py[1])/(Px[3]-Px[1]);
      Phi   := round(arctan(TnPhi)/Bo);
      if Phi < 0 then Phi := 180 + Phi;
      PhiS  := IntToStr(Phi);
      Cx := round(Px[1] + (Px[3]-PX[1])/2);
      Cy := round(Py[4] + (Py[2] - PY[4])/2);
      Steig := (Py[1]-Py[3])/(Px[1]-Px[3]);
      with ImageFoto.Canvas do
      begin
        Pen.Color   := DatenFarbe;
        if Steig > 0 then moveto (Px[3],Py[3])
        else moveto (Px[1],Py[1]);
        for i := 0 to 360 do
        begin
          xp  :=Lang*cos(i*Bo)/2;
          yp  :=Kurz*sin(i*Bo)/2;
          xr := round(xp*cos(Phi*Bo) + yp*sin(Phi*Bo));
          yr := round(-xp*sin(Phi*Bo) + yp*cos(Phi*Bo));
          lineto (Cx+xr, Cy-yr);
        end;
        Brush.Color := FuellFarbe;
        FloodFill(Cx, Cy, DatenFarbe, fsBorder);
      end;
      inc(l);
      if l > 10 then l := 0;
      AltBild[l].free;
      AltBild[l] := TBitmap.Create;
      AltBild[l].Assign (ImageFoto.Picture);
      PunktS := '1';
      Rf[DZahl] := R;
      Rphi[DZahl] := Phi;
      str(R:4:1,RS);
      RS   := RightS('0000'+RS,4);
      PhiS := IntToStr(Phi);
      PhiS := RightS('000'+PhiS,3);
      ZeileS := '  '+RS+'     '+PhiS;
      ListboxPunkte.Items.Add (ZeileS);
      ButtonLoeschen.Visible := true;
    end;
    LabelKlick.Caption := LangS;
    LabelZahl.Visible  := true;
    LabelDaten.Visible := true;
    LabelZahl.Caption  := IntToStr(DZahl);
  end;
end;

procedure TForm87.ButtonDbeendenClick(Sender: TObject);
begin
  ZahlGlob                := Dzahl;
  ImageFoto.Enabled       := false;
  Dspeichern.Enabled      := true;
  SpeedDspeichern.Enabled := true;
  ButtonPlot.Visible      := true;
end;

procedure TForm87.DatSpeichernClick(Sender: TObject);
var
  Datei : TextFile;
  i     : word;
  RfS   : string[5];
  PhiS  : string[5];
begin
  SaveDialog1.Filter := 'Rf/Phi Method (*.RFI)|*.RFI';
  SaveDialog1.DefaultExt := 'RFI';
  if CurrentFile <> '' then
  begin
    assignFile(Datei,CurrentFile);
    rewrite(Datei);
    Writeln (Datei, CurrentFile);
    for i := 1 to ZahlGlob do
    begin
      str(Rf[i]:4:1,RfS);
      PhiS := IntToStr(RPhi[i]);
      Writeln(Datei, RFS+','+PhiS);
    end;
    CloseFile (Datei);
  end
  else DatSpeichernUnterClick (Sender);
end;

procedure TForm87.DatspeichernUnterClick(Sender: TObject);
var
  Datei : TextFile;
  i     : word;
  RfS   : string[5];
  PhiS  : string[5];
begin
  SaveDialog1.Filter := 'Rf/Phi Method (*.RFI)|*.RFI';
  SaveDialog1.DefaultExt := 'RFI';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    assignFile(Datei,CurrentFile);
    rewrite(Datei);
    Writeln(Datei, CurrentFile);
    for i := 1 to ZahlGlob do
    begin
      str(Rf[i]:4:1,RfS);
      PhiS := IntToStr(Rphi[i]);
      Writeln(Datei, RfS+','+PhiS);
    end;
    CloseFile (Datei);
  end;
end;

procedure TForm87.SpeedDspeichernClick(Sender: TObject);
begin
  DatspeichernUnterClick(Sender);
end;

procedure TForm87.ButtonLoeschenClick(Sender: TObject);
begin
  if l > 5 then
  begin
    AltBild[l-5].free;;
    AltBild[l-5] := nil;
  end;
  if (l >= 1) and (AltBild[l-1] <> nil) then
    ImageFoto.Canvas.Draw(0,0,AltBild[l-1])
  else
  begin
    ButtonLoeschen.Visible := false;
    exit;
  end;
  ListBoxPunkte.Items.Delete(ListboxPunkte.Items.Count-1);
  Dzahl := DZahl - 1;
  LabelZahl.Caption := IntToStr(DZahl);
  l     := l - 1;
  if DZahl = 0 then ButtonLoeschen.Visible := false;
end;

procedure TForm87.einrichtenClick(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TForm87.SpeedEinrichtenClick(Sender: TObject);
begin
  einrichtenClick(Sender);
end;

procedure TForm87.druckenClick(Sender: TObject);
var
  SchriftS : string[5];
  i        : byte;
begin
  Paneldrucken.Visible := true;
  CheckBoxDrucken.Visible   := true;
  CheckBoxAbbruch.Visible   := true;
  CheckBoxdrucken.State     := cbUnchecked;
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
  CheckBoxdrucken.Caption      := Tx(881);
  CheckBoxAbbruch.Caption      := Tx(882);
  LabelUnterschrift.Caption    := Tx(887);
  LabelSchrift.Caption         := Tx(888);
  RadioButtonLinks.Caption     := Tx(889);
  RadioButtonZentriert.Caption := Tx(890);
  RadioButtonRechts.Caption    := Tx(891);
  CheckBoxdrucken.Enabled      := false;
  YDruckFaktor                 := 1;
  i                            := 3;
  repeat
    i := i + 1;
    str(i, SchriftS);
    ListBoxSchrift.Items.Add (SchriftS);
  until i = 40;
end;

procedure TForm87.SpeedDruckenClick(Sender: TObject);
begin
  druckenClick(Sender)
end;

procedure TForm87.MaskEditUnterschriftKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = chr(13) then
  begin
    TextS := MaskEditUnterschrift.Text;
    Gedrueckt[1] := true;
    if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
       and (Gedrueckt[3] = true) then
       CheckBoxdrucken.Enabled := true;
  end;
end;

procedure TForm87.ListBoxSchriftClick(Sender: TObject);
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
    CheckBoxdrucken.Enabled := true;
end;

procedure TForm87.RadioButtonLinksClick(Sender: TObject);
begin
  BuendigS := 'Links';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    CheckBoxdrucken.Enabled := true;
end;

procedure TForm87.RadioButtonZentriertClick(Sender: TObject);
begin
  BuendigS := 'Zentriert';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    CheckBoxdrucken.Enabled := true;
end;

procedure TForm87.RadioButtonRechtsClick(Sender: TObject);
begin
  BuendigS := 'Rechts';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    CheckBoxdrucken.Enabled := true;
end;

procedure TForm87.CheckBoxDruckenClick(Sender: TObject);
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
    Bitmap.Assign(ImageFoto.picture.graphic);
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

procedure TForm87.CheckBoxAbbruchClick(Sender: TObject);
begin
  Paneldrucken.Visible         := false;
  RadioButtonlinks.Visible     := false;
  RadioButtonzentriert.Visible := false;
  RadioButtonrechts.Visible    := false;
  RadioGroup.Visible           := false;
end;

procedure TForm87.ButtonPlotClick(Sender: TObject);
var
  i : byte;
begin
  for i := 1 to 10 do AltBild[i].free;
  Form88.Show;
end;

procedure TForm87.HilfeClick(Sender: TObject);
var
  DateiS      : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\rf-p3gmc.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\Rf-phi-plot.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm87.SpeedHilfeClick(Sender: TObject);
begin
  HilfeClick(Sender);
end;

procedure TForm87.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Rf-Phi-Methode.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'Rf-Phi-Method(engl).doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm87.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm87.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm87.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

end.
