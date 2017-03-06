unit Unit68;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, ComCtrls, Texte, StdCtrls, ExtCtrls, Menus,
  Jpeg, Clipbrd, Globvar, ExtDlgs, Basic, Fourier, Math, Shellapi, Buttons,
  Mask, GifImage, ReadTiff, Bmp2Tiff, Standard, ehsHelpRouter;

type
  TForm68 = class(TForm)
    StatusBar: TStatusBar;
    ImageFoto: TImage;
    MainMenu1: TMainMenu;
    Importieren: TMenuItem;
    einfuegen  : TMenuItem;
    ausDatei   : TMenuItem;
    OpenPictureDialog1: TOpenPictureDialog;
    Bspeichern: TMenuItem;
    ButtonStart: TButton;
    ButtonBeenden: TButton;
    SavePictureDialog1: TSavePictureDialog;
    ListBoxDaten: TListBox;
    ButtonPlot: TButton;
    Datenspeichern: TMenuItem;
    Dspeichern: TMenuItem;
    DspeichernUnter: TMenuItem;
    SaveDialog1: TSaveDialog;
    Farbe: TMenuItem;
    ColorDialog1: TColorDialog;
    LabelText: TLabel;
    LabelDaten: TLabel;
    LabelDaten2: TLabel;
    Hilfe: TMenuItem;
    Handbuch: TMenuItem;
    Fortschritt: TProgressBar;
    PanelSpeed: TPanel;
    SpeedEinfuegen: TSpeedButton;
    SpeedSpeichern: TSpeedButton;
    SpeedFarbe: TSpeedButton;
    SpeedHilfe: TSpeedButton;
    SpeedHandbuch: TSpeedButton;
    Zwischenablage: TMenuItem;
    ButtonNeueFalte: TButton;
    ButtonRueckgaengig: TButton;
    MaskEditDatei: TMaskEdit;
    LabelDatei: TLabel;
    SpeedLiteratur: TSpeedButton;
    Literatur: TMenuItem;
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
    speichernUnter: TMenuItem;
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
    SpeedBGroesse: TSpeedButton;
    SpeedKopieren: TSpeedButton;
    SpeedBMP: TSpeedButton;
    SpeedGIF: TSpeedButton;
    SpeedTIF: TSpeedButton;
    SpeedJPG: TSpeedButton;
    SpeedWMF: TSpeedButton;
    SpeedEMF: TSpeedButton;
    BGroesse: TMenuItem;
    PanelGroesse: TPanel;
    LabelBHoehe: TLabel;
    LabelBBreite: TLabel;
    MaskEditBBreite: TMaskEdit;
    MaskEditBHoehe: TMaskEdit;
    CheckBoxBild: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure ShowHint(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ButtonStartClick(Sender: TObject);
    procedure ButtonBeendenClick(Sender: TObject);
    procedure einfuegenClick(Sender: TObject);
    procedure ImageFotoMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DspeichernClick(Sender: TObject);
    procedure Dbeenden(Sender: TObject);
    procedure ButtonPlotClick(Sender: TObject);
    procedure DspeichernUnterClick(Sender: TObject);
    procedure FarbeClick(Sender: TObject);
    procedure HandbuchClick(Sender: TObject);
    procedure HilfeClick(Sender: TObject);
    procedure SpeedEinfuegenClick(Sender: TObject);
    procedure SpeedSpeichernClick(Sender: TObject);
    procedure SpeedFarbeClick(Sender: TObject);
    procedure SpeedHilfeClick(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure ZwischenablageClick(Sender: TObject);
    procedure ButtonNeueFalteClick(Sender: TObject);
    procedure VergenzJaClick(Sender: TObject);
    procedure ButtonRueckgaengigClick(Sender: TObject);
    procedure SpeedLiteraturClick(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
    procedure oeffnenBMPClick(Sender: TObject);
    procedure oeffnenGIFClick(Sender: TObject);
    procedure oeffnenTIFClick(Sender: TObject);
    procedure oeffnenJPGClick(Sender: TObject);
    procedure oeffnenWMFClick(Sender: TObject);
    procedure oeffnenEMFClick(Sender: TObject);
    procedure GDemo(Sender: TObject);
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
    procedure BGroesseClick(Sender: TObject);
    procedure MaskEditBBreiteKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditBHoeheKeyPress(Sender: TObject; var Key: Char);
    procedure CheckBoxBildClick(Sender: TObject);
    procedure SpeedBGroesseClick(Sender: TObject);
    procedure SpeedKopierenClick(Sender: TObject);
  end;

var
  Form68      : TForm68;
  Bitmap      : TBitmap;
  JPGDatei    : TJpegImage;
  FaltenBild  : TBitmap;
  EndBitmap   : TBitmap;
  CurrentFile : string;
  Xmess       : word;
  Ymess       : word;
  Xinf        : word;
  Yinf        : word;
  Xscheitel   : word;
  Yscheitel   : word;
  X1, X2      : integer;
  Y1, Y2      : integer;
  Xum1, Yum1  : word;
  Xum2, Yum2  : word;
  Xver1, Yver1: word;
  Xver2, Yver2: word;
  PunktS      : string;
  PunS        : array [0..10] of string;
  Pu          : byte;
  PunktText   : array [0..10] of string;
  Tex         : byte;
  Maus        : boolean;
  Zahl        : word;
  XX1, XX2    : word;
  YY1, YY2    : word;
  Bmap, Emap  : boolean;
  BBreite     : word;
  BHoehe      : word;
  Rahmen      : TRect;
  BHoeheI     : word;
  RatioI      : real;
implementation
{$R *.DFM}
uses Unit51;

procedure TForm68.FormShow(Sender: TObject);
begin
  Form68.Width  := 1027;
  Form68.Height := 722;
  Application.OnHint := ShowHint;
end;

procedure TForm68.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm68.FormActivate(Sender: TObject);
begin
  Left := 4;
  Top  := 0;
  Width := 1016;
  Height := 735;
  if Programm = 12 then Form68.Caption := Tx(1096);
  setlength (X1Fou, MaxDaten);
  setlength (Y1Fou, MaxDaten);
  setlength (X2Fou, MaxDaten);
  setlength (Y2Fou, MaxDaten);
  setlength (X3Fou, MaxDaten);
  setlength (Y3Fou, MaxDaten);
  setlength (B1Fou, MaxDaten);
  setlength (B3Fou, MaxDaten);
  setlength (B5Fou, MaxDaten);
  setlength (Vergenz, MaxDaten);
  ButtonBeenden.Hint        := Hilf(30);
  ButtonStart.Hint          := Hilf(348);
  ButtonPlot.Hint           := Hilf(51);
  SpeedEinfuegen.Hint       := Hilf(246);
  SpeedBMPoeffnen.Hint      := Hilf(621);
  SpeedGIFoeffnen.Hint      := Hilf(622);
  SpeedTIFoeffnen.Hint      := Hilf(623);
  SpeedJPGoeffnen.Hint      := Hilf(624);
  SpeedWMFoeffnen.Hint      := Hilf(625);
  SpeedEMFoeffnen.Hint      := Hilf(626);
  SpeedBGroesse.Hint        := Hilf(627);
  SpeedKopieren.Hint        := Hilf(262);
  SpeedBMP.Hint             := Hilf(586);
  SpeedGIF.Hint             := Hilf(587);
  SpeedTIF.Hint             := Hilf(588);
  SpeedJPG.Hint             := Hilf(589);
  SpeedWMF.Hint             := Hilf(590);
  SpeedEMF.Hint             := Hilf(591);
  SpeedFarbe.Hint           := Hilf(365);
  SpeedHilfe.Hint           := Hilf(210);
  SpeedHandbuch.Hint        := Hilf(274);
  SpeedLiteratur.Hint       := Hilf(462);
  Literatur.Caption         := Tx(1183)+'(F5)';
  ButtonBeenden.Caption     := Tx(53);
  Zwischenablage.Caption    := Tx(282);
  Importieren.Caption       := Tx(1068);
  Importieren.Enabled       := false;
  LabelDaten.Caption        := Tx(1108);
  LabelDaten2.Caption       := Tx(1109);
  einfuegen.Caption         := Tx(1069);
  ausDatei.Caption          := Tx(57);
  Bspeichern.Caption        := Tx(1071);
  speichern.Caption         := Tx(87);
  speichernUnter.Caption    := Tx(88);
  ButtonBeenden.Caption     := Tx(53);
  DatenSpeichern.Caption    := Tx(86);
  Dspeichern.Caption        := Tx(284);
  DspeichernUnter.Caption   := Tx(285);
  Hilfe.Caption             := Tx(162)+' (F1)';
  Handbuch.Caption          := Tx(1055)+' (F2)';
  Farbe.Caption             := Tx(275);
  ButtonRueckgaengig.Caption:= Tx(1235);
  ButtonNeueFalte.Caption   := Tx(1119);
  PunktText[1]              := Tx(1239);
  PunktText[2]              := Tx(1099);
  PunktText[3]              := Tx(1100);
  PunktText[4]              := Tx(1101);
  PunktText[5]              := Tx(1102);
  PunktText[6]              := Tx(1099);
  PunktText[7]              := Tx(1236);
  PunktText[8]              := Tx(1237);
  PunktText[9]              := Tx(1238);
  LabelBBreite.Caption      := Tx(1440);
  LabelBHoehe.Caption       := Tx(1441);
  BGroesse.Caption          := Tx(1439);
  Bspeichern.Enabled        := false;
  Datenspeichern.Enabled    := false;
  ButtonPlot.Visible        := false;
  LabelText.Caption         := '';
  Fortschritt.Visible       := false;
  Farbe.Enabled             := false;
  PanelGroesse.Visible      := false;
  SpeedEinfuegen.Enabled    := false;
  SpeedFarbe.Enabled        := false;
  SpeedBMPoeffnen.Enabled   := false;
  SpeedGIFoeffnen.Enabled   := false;
  SpeedTIFoeffnen.Enabled   := false;
  SpeedJPGoeffnen.Enabled   := false;
  SpeedWMFoeffnen.Enabled   := false;
  SpeedEMFoeffnen.Enabled   := false;
  SpeedBGroesse.Enabled     := false;
  SpeedKopieren.Enabled     := false;
  SpeedBMP.Enabled          := false;
  SpeedGIF.Enabled          := false;
  SpeedTIF.Enabled          := false;
  SpeedJPG.Enabled          := false;
  SpeedWMF.Enabled          := false;
  SpeedEMF.Enabled          := false;
  SpeedSpeichern.Enabled    := false;
  PunS[1]                   := 'UMBIEGUNG1';
  PunS[2]                   := 'UMBIEGUNG2';
  PunS[3]                   := '';
  PunS[4]                   := 'VERGENZ1';
  PunS[5]                   := 'VERGENZ2';
  PunS[6]                   := 'INFLECTION';
  PunS[7]                   := 'SCHEITEL';
  PunS[8]                   := 'X1';
  PunS[9]                   := 'X2';
  PunS[10]                  := '';
  einfuegen.Enabled         := false;
  SpeedEinfuegen.Enabled := false;
  Maus := false;
  ButtonNeueFalte.Visible     := false;
  ButtonRueckgaengig.Visible  := false;
  Bmap := false;
  Emap := false;
  LabelDatei.Caption    := Tx(211);
  MaskEditDatei.Visible := false;
  LabelDatei.Visible    := false;
  RatioI := ImageFoto.Width/ImageFoto.Height;
end;

procedure TForm68.ButtonStartClick(Sender: TObject);
begin
  if ClipBoard.HasFormat(CF_Bitmap) then
  begin
    einfuegen.Enabled      := true;
    SpeedEinfuegen.Enabled := true;
  end;
  SpeedBMPoeffnen.Enabled := true;
  SpeedGIFoeffnen.Enabled := true;
  SpeedTIFoeffnen.Enabled := true;
  SpeedJPGoeffnen.Enabled := true;
  SpeedWMFoeffnen.Enabled := true;
  SpeedEMFoeffnen.Enabled := true;
  BHoeheI := round(BBreiteI/RatioI);
  LabelText.Caption     := Tx(1068);
  MaskEditDatei.Visible := false;
  LabelDatei.Visible    := false;
  ImageFoto.Picture     := nil;
  Importieren.Enabled   := true;
  ImageFoto.Canvas.Brush.Color := clWhite;
  ImageFoto.Canvas.Rectangle (0,0,ImageFoto.Width,ImageFoto.Height);
  if ClipBoard.HasFormat(CF_Bitmap) then
  begin
    einfuegen.Enabled      := true;
    SpeedEinfuegen.Enabled := true;
  end;
  Farbe.Enabled           := true;
  SpeedFarbe.Enabled      := true;
  Fortschritt.Visible     := false;
  PunktS                  := '';
  Zahl                    := 0;
  ListBoxDaten.Clear;
end;

procedure TForm68.ButtonBeendenClick(Sender: TObject);
begin
  X1Fou   := Nil;
  Y1Fou   := Nil;
  X2Fou   := Nil;
  Y2Fou   := Nil;
  X3Fou   := Nil;
  Y3Fou   := Nil;
  B1Fou   := NIL;
  B3Fou   := NIL;
  B5Fou   := NIL;
  Vergenz := NIL;
  if Bmap then
  begin
    Bitmap.Free;
    Bitmap := nil;
  end;
  if Emap then
  begin
    EndBitmap.Free;
    EndBitmap := nil;
  end;
  ImageFoto.Picture:=nil;
  JPGDatei.free;
  Form68.Close;
  SetCurrentDir(DirectS);
end;

procedure TForm68.einfuegenClick(Sender: TObject);
var
  Rahmen  : TRect;
  Ratio   : real;
  BBreite : word;
  BHoehe  : word;
begin
  if not ClipBoard.HasFormat(CF_Bitmap) then
  begin
    Showmessage(Tx(1074));
    exit;
  end
  else
  begin
    ImageFoto.Canvas.CopyMode := cmSrcCopy;
    try
      Bitmap := TBitmap.Create;
      Bitmap.Assign(ClipBoard);
      Bmap := true;
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
      FaltenBild := TBitmap.Create;
      Faltenbild.Assign (ImageFoto.Picture);
    finally
      Bitmap.free;
      Bitmap:=nil;
    end;
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
  Bspeichern.Enabled      := true;
  LabelText.Caption      := PunktText[1];
  Tex := 1;
end;

procedure TForm68.SpeedEinfuegenClick(Sender: TObject);
begin
  einfuegenClick(Sender);
end;

procedure TForm68.oeffnenBMPClick(Sender: TObject);
var
  Ratio   : real;
begin
  OpenPictureDialog1.Filter := 'Bitmap file (*.bmp)|*.bmp';
  if OpenPictureDialog1.Execute then
    CurrentFile := OpenPictureDialog1.FileName;
  Bitmap           := Tbitmap.create;
  ImageFoto.Width  := 760;
  ImageFoto.Height := 560;
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
  Rahmen := Rect(ImageFoto.Width div 2 - BBreite div 2,
                 ImageFoto.Height div 2 - BHoehe div 2,
                 ImageFoto.Width div 2 + BBreite div 2,
                 ImageFoto.Height div 2 + BHoehe div 2);
  ImageFoto.Canvas.StretchDraw (Rahmen, Bitmap);
  GDemo (ImageFoto.Canvas);
end;

procedure TForm68.SpeedBMPoeffnenClick(Sender: TObject);
begin
  oeffnenBMPClick(Sender);
end;

procedure TForm68.oeffnenGIFClick(Sender: TObject);
var
  GBild   : TGIFImage;
  Bitmap  : TBitmap;
  Ratio   : real;
begin
  OpenPictureDialog1.Filter := 'Compuserve gif file (*.gif)|*.gif';
  if OpenPictureDialog1.Execute then
    CurrentFile := OpenPictureDialog1.FileName;
  GBild  := TGIFImage.Create;
  Bitmap := TBitmap.Create;
  ImageFoto.Width  := 760;
  ImageFoto.Height := 560;
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
    Rahmen := Rect(ImageFoto.Width div 2 - BBreite div 2,
                   ImageFoto.Height div 2 - BHoehe div 2,
                   ImageFoto.Width div 2 + BBreite div 2,
                   ImageFoto.Height div 2 + BHoehe div 2);
    ImageFoto.Canvas.StretchDraw (Rahmen, Bitmap);
  finally
    GBild.free;
  end;
  GDemo (ImageFoto.Canvas);
end;

procedure TForm68.SpeedGIFoeffnenClick(Sender: TObject);
begin
  oeffnenGIFClick(Sender);
end;

procedure TForm68.oeffnenTIFClick(Sender: TObject);
var
  Bitmap  : TBitmap;
  Ratio   : real;
begin
  OpenDialog1.Filter := 'Tagged image file format (*.tif)|*.tif';
  if OpenDialog1.Execute then
    CurrentFile := OpenDialog1.FileName;
  Bitmap := TBitmap.Create;
  ImageFoto.Width  := 760;
  ImageFoto.Height := 560;
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
    Rahmen := Rect(ImageFoto.Width div 2 - BBreite div 2,
                   ImageFoto.Height div 2 - BHoehe div 2,
                   ImageFoto.Width div 2 + BBreite div 2,
                   ImageFoto.Height div 2 + BHoehe div 2);
    ImageFoto.Canvas.StretchDraw (Rahmen, Bitmap);
  end;
  GDemo (ImageFoto.Canvas);
end;

procedure TForm68.SpeedTIFoeffnenClick(Sender: TObject);
begin
  oeffnenTIFClick(Sender);
end;

procedure TForm68.oeffnenJPGClick(Sender: TObject);
var
  JBild   : TJPEGImage;
  Ratio   : real;
begin
  OpenPictureDialog1.Filter := 'Jpeg file (*.jpg)|*.jpg';
  if OpenPictureDialog1.Execute then
    CurrentFile := OpenPictureDialog1.FileName;
  JBild  := TJpegImage.Create;
  Bitmap := TBitmap.Create;
  ImageFoto.Width  := 760;
  ImageFoto.Height := 560;
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
    Rahmen := Rect(ImageFoto.Width div 2 - BBreite div 2,
                   ImageFoto.Height div 2 - BHoehe div 2,
                   ImageFoto.Width div 2 + BBreite div 2,
                   ImageFoto.Height div 2 + BHoehe div 2);
    ImageFoto.Canvas.StretchDraw (Rahmen, Bitmap);
  finally
    JBild.free;
  end;
  GDemo (ImageFoto.Canvas);
end;

procedure TForm68.SpeedJPGoeffnenClick(Sender: TObject);
begin
  oeffnenJPGClick(Sender);
end;

procedure TForm68.oeffnenWMFClick(Sender: TObject);
var
  Metafile   : TMetafile;
  Ratio      : real;
begin
  OpenPictureDialog1.Filter := 'Windows metafile (*.WMF)|*.wmf';
  if OpenPictureDialog1.Execute then
    CurrentFile := OpenPictureDialog1.FileName;
  Bitmap   := TBitmap.Create;
  Metafile := TMetaFile.Create;
  MetaFile.Enhanced := false;
  ImageFoto.Width  := 660;
  ImageFoto.Height := 660;
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
    Rahmen := Rect(ImageFoto.Width div 2 - BBreite div 2,
                   ImageFoto.Height div 2 - BHoehe div 2,
                   ImageFoto.Width div 2 + BBreite div 2,
                   ImageFoto.Height div 2 + BHoehe div 2);
    ImageFoto.Canvas.Stretchdraw (Rahmen, MetaFile);
    Bitmap.Canvas.StretchDraw (Rahmen, MetaFile);
  finally
    MetaFile.Free;
  end;
  GDemo (ImageFoto.Canvas);
end;

procedure TForm68.SpeedWMFoeffnenClick(Sender: TObject);
begin
  oeffnenWMFClick(Sender);
end;

procedure TForm68.oeffnenEMFClick(Sender: TObject);
var
  Metafile   : TMetafile;
  Ratio      : real;
begin
  OpenPictureDialog1.Filter := 'Enhanced windows metafile (*.emf)|*.emf';
  if OpenPictureDialog1.Execute then
    CurrentFile := OpenPictureDialog1.FileName;
  Bitmap   := TBitmap.Create;
  Metafile := TMetaFile.Create;
  MetaFile.Enhanced := true;
  ImageFoto.Width  := 760;
  ImageFoto.Height := 560;
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
    Rahmen := Rect(ImageFoto.Width div 2 - BBreite div 2,
                   ImageFoto.Height div 2 - BHoehe div 2,
                   ImageFoto.Width div 2 + BBreite div 2,
                   ImageFoto.Height div 2 + BHoehe div 2);
    ImageFoto.Canvas.Stretchdraw (Rahmen, MetaFile);
    Bitmap.Canvas.StretchDraw (Rahmen, MetaFile); 
  finally
    MetaFile.Free;
  end;
  GDemo (ImageFoto.Canvas);
end;

procedure TForm68.SpeedEMFoeffnenClick(Sender: TObject);
begin
  oeffnenEMFClick(Sender);
end;

procedure TForm68.GDemo (Sender: TObject);
begin
  if DemoB then
  begin
    with ImageFoto.Canvas do
    begin
      Font.Name   := 'Times New Roman';
      Brush.Color := clWhite;
      Font.Color  := clGray;
      Font.Size   := 36;
      Textout(Width -200,Height -100,'Demo-Version');
    end;
  end;
  Bspeichern.Enabled    := true;
  SpeedBGroesse.Enabled := true;
  SpeedKopieren.Enabled := true;
  SpeedBMP.Enabled      := true;
  SpeedGIF.Enabled      := true;
  SpeedTIF.Enabled      := true;
  SpeedJPG.Enabled      := true;
  SpeedWMF.Enabled      := true;
  SpeedEMF.Enabled      := true;
  MaskEditDatei.Visible := true;
  MaskEditDatei.Text    := CurrentFile;
  Farbe.Enabled         := true;
  SpeedFarbe.Enabled    := true;
  Maus                  := true;
  Bitmap := Tbitmap.create;
  Bitmap.Assign(ImageFoto.Picture.Graphic);
  Bmap := true;
  LabelText.Caption := PunktText[2];
  Tex    := 2;
  PunktS := PunS[1];  {UMBIEGUNG1}
  PU     := 1;
  Maus   := true;
end;

procedure TForm68.ImageFotoMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  i, j     : integer;
  k, l     : integer;
  Bild     : array of array of TColor;
  Xkorr    : integer;
  Ykorr    : integer;
  TanDreh  : real;
  Dreh     : real;
  Laenge   : integer;
  Hoehe    : integer;
  xmR      : integer;
  ymR      : integer;
  Xm, Ym   : integer;
  Versatz  : integer;
begin
  if not Maus then exit;
  FaltenBild.Free;
  FaltenBild := TBitmap.Create;
  Faltenbild.Assign (ImageFoto.Picture);
  Xmess := x;
  Ymess := y;
  with ImageFoto.Canvas do
  begin
    Pen.Color   := FourierFarbe;
    Brush.Color := FourierFarbe;
    Ellipse (Xmess-3,Ymess-3,Xmess+3,Ymess+3);
    ButtonRueckgaengig.Visible := true;
  end;
  if PunktS = PunS[1] then   {UMBIEGUNG1}
  begin
    Xum1 := Xmess;
    Yum1 := Ymess;
    ImageFoto.Canvas.Ellipse(Xmess-3,Ymess-3,Xmess+3,Ymess+3);
    PunktS := PunS[2];  {UMBIEGUNG2}
    Pu     := 2;
    LabelText.Caption := PunktText[3];
    Tex := 3;
    exit;
  end;
  if PunktS = PunS[2] then {UMBIEGUNG2}
  begin
    Fortschritt.Visible      := true;
    setlength(Bild,601);
    for i:= 0 to 600 do setlength(Bild[i],901);
    Xum2 := Xmess;
    Yum2 := Ymess;
    X1   := min (Xum1, Xum2);
    X2   := max (Xum1, Xum2);
    if X1 = Xum1 then
    begin
      Y1 := Yum1;
      Y2 := Yum2;
    end
    else
    begin
      Y1 := Yum2;
      Y2 := Yum1;
    end;
    Laenge := X2-X1;
    Hoehe  := Y2-Y1;
    TanDreh := Hoehe/Laenge;
    Dreh    := arctan(TanDreh);
    with ImageFoto do
    begin
      Fortschritt.Visible := true;
      Fortschritt.Max     := Width;
      Fortschritt.Step    := 5;
      Xm   := Width div 2;
      Ym   := Height div 2;
      for i := 0 to Height do
      begin
        for j := 0 to Width do Bild[i,j] := Canvas.pixels[j,i];
        Fortschritt.StepIt;
      end;
      Canvas.Brush.Color := clWhite;
      Canvas.Rectangle(0,0,Width,Height);
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
    end;
    for i := 1 to 600 do setlength(Bild[i],0);
    Bild := NIL;
    Fortschritt.Visible  := false;
    Tex                  := 4;
    LabelText.Caption  := PunktText[4];
    PunktS := PunS[4];   {VERGENZ1}
    Pu     := 4;
    Maus   := true;
    exit;
  end;
  if PunktS = PunS[4] then   {VERGENZ1}
  begin
    Xver1 := Xmess;
    Yver1 := Ymess;
    ImageFoto.Canvas.Ellipse(Xmess-3,Ymess-3,Xmess+3,Ymess+3);
    LabelText.Caption     := PunktText[5];
    Tex    := 5;
    PunktS := PunS[5];   {VERGENZ2}
    Pu     := 5;
    exit;
  end;
  If PunktS = PunS[5] then   {VERGENZ2}
  begin
    setlength(Bild,601);
    for i:=0 to 600 do setlength(Bild[i],901);
    Xver2 := Xmess;
    Yver2 := Ymess;
    Dreh  := arctan((Xver2-Xver1)/(Yver2-Yver1));
    with ImageFoto do
    begin
      Fortschritt.Visible := true;
      Fortschritt.Max     := Width;
      Fortschritt.Step    := 5;
      for i := 0 to Height do
      begin
        for j := 0 to Width do Bild[i,j] := Canvas.pixels[j,i];
        Fortschritt.StepIt;
      end;
      Canvas.Brush.Color := clWhite;
      Canvas.Rectangle(0,0,Width,Height);
      Fortschritt.Max     := Width;
      Fortschritt.Step    := 5;
      for i := 0 to Height do
      begin
        Versatz := round((Height-i) * tan(Dreh)-Height*tan(Dreh)/2);
        k := 0;
        for j := Versatz to Width + Versatz do
        begin
          inc(k);
          Canvas.Pixels[j,i] := Bild[i,k];
        end;
        Fortschritt.StepIt;
      end;
    end;
    if Emap then EndBitmap.Free;
    EndBitmap := TBitmap.Create;
    EndBitmap.Assign (ImageFoto.Picture);
    for i := 1 to 600 do setlength(Bild[i],0);
    Bild := NIL;
    Fortschritt.Visible     := false;
    PunktS := PunS[6];   {INFLECTION}
    Pu     := 6;
    LabelText.Caption := PunktText[6];
    Tex := 6;
    exit;
  end;
  if PunktS = PunS[6] then  {INFLECTION}
  begin
    inc (Zahl);
    Xinf := Xmess;
    Yinf := Ymess;
    with ImageFoto.Canvas do
    begin
      Brush.Color := clWhite;
      Font.Color  := FourierFarbe;
      Textout (Xmess+6,Ymess+5,'I'+IntToStr(Zahl));
    end;
    ListboxDaten.Items.Add (Tx(1122)+' '+IntToStr(Zahl));
    PunktS := PunS[7];   {SCHEITEL}
    Pu     := 7;
    LabelText.Caption := PunktText[7];
    Tex := 7;
    exit;
  end;
  if PunktS = PunS[7] then   {SCHEITEL}
  begin
    Xscheitel := Xmess;
    Yscheitel := Ymess;
    X1 := round((Xscheitel-Xinf)/3);
    with ImageFoto.Canvas do
    begin
      Brush.Color := clWhite;
      Textout (Xmess+5,Ymess+5,'S'+IntToStr(Zahl));
      moveto (Xinf,Yinf);
      lineto (Xmess,Yinf);
      lineto (Xmess,Ymess);
      moveto (Xinf+X1,Yinf);
      lineto (Xinf+X1,Ymess);
    end;
    PunktS := PunS[8];   {X1}
    Pu     := 8;
    LabelText.Caption := PunktText[8];
    Tex := 8;
    exit;
  end;
  if PunktS = PunS[8] then   {X1}
  begin
    X1 := Xmess-Xinf;
    Y1 := Yinf-Ymess;
    X2 := round((Xscheitel-Xinf)*2/3);
    XX1 := Xmess;
    YY1 := Ymess;
    with ImageFoto.Canvas do
    begin
      moveto (Xinf+X2,Yinf);
      lineto (Xinf+X2,Yscheitel);
    end;
    PunktS := PunS[9];   {X2}
    Pu     := 9;
    LabelText.Caption := PunktText[9];
    Tex := 9;
    exit;
  end;
  if PunktS = PunS[9] then    {X2}
  begin
    Y2 := Yinf-Ymess;
    XX2 := Xmess;
    YY2 := Ymess;
    X1Fou[Zahl] := abs(X1);
    Y1Fou[Zahl] := abs(Y1);
    X2Fou[Zahl] := abs(X2);
    Y2Fou[Zahl] := abs(Y2);
    X3Fou[Zahl] := abs(Xscheitel-Xinf);
    Y3Fou[Zahl] := abs(Yinf-Yscheitel);
    ListboxDaten.Items.Add ('      '+IntToStr(X1Fou[Zahl])
                           +'  '+IntToStr(Y1Fou[Zahl]));
    ListboxDaten.Items.Add ('      '+IntToStr(X2Fou[Zahl])
                           +'  '+IntToStr(Y2Fou[Zahl]));
    ListboxDaten.Items.Add ('      '+IntToStr(X3Fou[Zahl])
                           +'  '+IntToStr(Y3Fou[Zahl]));
    LabelText.Caption      := '';
    Dbeenden(Sender);
    PunktS := PunS[10];
    Pu := 10;
  end;
end;

procedure TForm68.BGroesseClick(Sender: TObject);
begin
  PanelGroesse.Visible    := true;
  CheckBoxBild.State      := cbUnchecked;
  MaskEditBBreite.Text    := IntTostr(BBreiteI);
  MaskEditBHoehe.Text     := IntToStr(BHoeheI);
end;

procedure TForm68.SpeedBGroesseClick(Sender: TObject);
begin
  BgroesseClick(Sender);
end;

procedure TForm68.MaskEditBBreiteKeyPress(Sender: TObject; var Key: Char);
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
      BBreiteI := StrToInt (BBreiteS);
      BHoeheI  := round(BBreiteI/RatioI);
      KonfigZeileS[118] := 'Save Image Width (Stereo)  :,'+BBreiteS;
      MaskEditBHoehe.Text := IntToStr(BHoeheI);
      assignFile(Datei,DirectS+'\'+'Fabric.ini');
      rewrite (Datei);
      for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
      closefile (Datei);
    end;
  end;
end;

procedure TForm68.MaskEditBHoeheKeyPress(Sender: TObject; var Key: Char);
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
      BHoeheI  := StrToInt (BHoeheS);
      BBreiteI := round(BHoeheI*RatioI);
      KonfigZeileS[118] := 'Save Image Width (Stereo)  :,'+IntToStr(BBreiteI);
      MaskEditBBreite.Text := IntToStr(BBreiteI);
    end;
    assignFile(Datei,DirectS+'\'+'Fabric.ini');
    rewrite (Datei);
    for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
    closefile (Datei);
  end;
end;

procedure TForm68.CheckBoxBildClick(Sender: TObject);
begin
  PanelGroesse.Visible := false;
end;

procedure TForm68.ZwischenablageClick(Sender: TObject);
begin
  ClipBoard.Assign (ImageFoto.Picture);
end;

procedure TForm68.SpeedKopierenClick(Sender: TObject);
begin
  ZwischenablageClick(Sender);
end;

procedure TForm68.speichernBMPClick(Sender: TObject);
var
  BBild     : TBitmap;
  BRahmen   : TRect;
begin
  BBild        := TBitmap.Create;
  BBild.Width  := BBreiteI;
  BBild.Height := BHoeheI;
  BRahmen      := Rect(0,0,BBild.Width, BBild.Height);
  BBild.Canvas.StretchDraw(BRahmen,ImageFoto.Picture.Graphic);
  try
    if (CurrentFile <> '') and (UCaseS(RightS(CurrentFile,3)) = 'BMP')
    then BBild.SaveToFile(CurrentFile)
    else speichernUBMPClick(Sender);
  finally
    BBild.Free;
  end;
end;

procedure TForm68.SpeedBMPClick(Sender: TObject);
begin
  speichernBMPClick(Sender);
end;

procedure TForm68.speichernGIFClick(Sender: TObject);
var
  BBild   : TBitmap;
  GifBild : TGifImage;
  BRahmen : TRect;
begin
  BBild        := TBitmap.Create;
  GifBild      := TGIFImage.Create;
  BBild.Width  := BBreiteI;
  BBild.Height := BHoeheI;
  BRahmen      := Rect(0,0,BBild.Width,BBild.Height);
  BBild.Canvas.Stretchdraw(BRahmen,ImageFoto.Picture.Graphic);
  try
    GifBild.Assign(BBild);
    if (CurrentFile <> '') and (UCaseS(RightS(CurrentFile,3)) = 'GIF')
    then GifBild.SaveToFile(CurrentFile)
    else speichernUGIFClick(Sender);
  finally
    BBild.Free;
    GifBild.Free;
  end;
end;

procedure TForm68.SpeedGIFClick(Sender: TObject);
begin
  speichernGIFClick(Sender);
end;

procedure TForm68.speichernTIFClick(Sender: TObject);
var
  BRahmen : TRect;
  BBild   : TBitmap;
begin
  BBild        := TBitmap.Create;
  BBild.Width  := BBreiteI;
  BBild.Height := BHoeheI;
  BRahmen      := Rect(0,0,BBild.Width,BBild.Height);
  BBild.Canvas.Stretchdraw(BRahmen,ImageFoto.Picture.Graphic);
  try
    if (CurrentFile <> '') and (UCaseS(RightS(CurrentFile,3)) = 'TIF')
    then WriteTiffToFile(CurrentFile,BBild)
    else speichernUTIFClick(Sender);
  finally
    BBild.Free;
  end;
end;

procedure TForm68.SpeedTIFClick(Sender: TObject);
begin
  speichernTIFClick(Sender);
end;

procedure TForm68.speichernJPGClick(Sender: TObject);
var
  DateiJ   : string;
  BRahmen  : TRect;
  Bild     : TBitmap;
  JpgDatei : TjpegImage;
begin
  JpgDatei    := TJpegImage.Create;
  Bild        := TBitmap.Create;
  Bild.Width  := BBreiteI;
  Bild.Height := BHoeheI;
  BRahmen     := Rect(0,0,Bild.Width,Bild.Height);
  Bild.Canvas.Stretchdraw(BRahmen,ImageFoto.Picture.Graphic);
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
    CurrentFile := '';
  end;
end;

procedure TForm68.SpeedJPGClick(Sender: TObject);
begin
  speichernJPGClick(Sender);
end;

procedure TForm68.speichernWMFClick(Sender: TObject);
var
  Metafile   : TMetafile;
  MetaCanvas : TMetafileCanvas;
  BBild      : TBitmap;
  BRahmen    : TRect;
begin
  Metafile := TMetaFile.Create;
  MetaFile.Enhanced := false;
  try
    BBild        := TBitmap.Create;
    BBild.Width  := BBreiteI;
    BBild.Height := BHoeheI;
    BRahmen      := Rect(0,0,BBild.Width,BBild.Height);
    BBild.Canvas.Stretchdraw(BRahmen,ImageFoto.Picture.Graphic);
    try
      BBild.Assign(ImageFoto.Picture);
      Metafile.Height := BBild.Height;
      Metafile.Width  := BBild.Width;
      MetaCanvas := TMetafileCanvas.Create(Metafile, 0);
      try
        MetaCanvas.Draw(0, 0, BBild);
      finally
        MetaCanvas.Free;
      end;
    finally
      BBild.Free;
    end;
    if (CurrentFile <> '') and (UCaseS(RightS(CurrentFile,3)) = 'WMF')
    then MetaFile.SaveToFile(CurrentFile)
    else SpeichernUWMFClick(Sender);
  finally
    Metafile.Free;
  end;
end;

procedure TForm68.SpeedWMFClick(Sender: TObject);
begin
  speichernWMFClick(Sender);
end;

procedure TForm68.speichernEMFClick(Sender: TObject);
var
  Metafile   : TMetafile;
  MetaCanvas : TMetafileCanvas;
  BBild      : TBitmap;
begin
  Metafile := TMetaFile.Create;
  MetaFile.Enhanced := true;
  try
    BBild := TBitmap.Create;
    try
      BBild.Assign(ImageFoto.Picture);
      Metafile.Height := BHoeheI;
      Metafile.Width  := BBreiteI;
      MetaCanvas := TMetafileCanvas.Create(Metafile, 0);
      try
        MetaCanvas.Draw(0, 0, BBild);
      finally
        MetaCanvas.Free;
      end;
    finally
      BBild.Free;
    end;
    if (CurrentFile <> '') and (UCaseS(RightS(CurrentFile,3)) = 'EMF')
    then MetaFile.SaveToFile(CurrentFile)
    else SpeichernUEMFClick(Sender);
  finally
    Metafile.Free;
  end;
end;

procedure TForm68.SpeedEMFClick(Sender: TObject);
begin
  speichernEMFClick(Sender);
end;

procedure TForm68.speichernUBMPClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := 'Windows bitmap file (*.bmp)|*.bmp';
  SaveDialog1.Filter     := 'Windows bitmap file (*.bmp)|*.bmp';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    speichernBMPClick(Sender);
  end;
end;

procedure TForm68.speichernUGIFClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := 'Compuserve gif file (*.gif)|*.gif';
  SaveDialog1.Filter     := 'Compuserve gif file (*.gif)|*.gif';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    speichernGIFClick(Sender);
  end;
end;

procedure TForm68.speichernUTIFClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := 'Tagged image file format (*.tif)|*.tif';
  SaveDialog1.Filter     := 'Tagged image file format (*.tif)|*.tif';;
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    speichernTIFClick(Sender);
  end;
end;

procedure TForm68.speichernUJPGClick(Sender: TObject);
begin
  SavePictureDialog1.DefaultExt := 'Jpeg file (*.jpg)|*.jpg';
  SavePictureDialog1.Filter     := 'Jpeg file (*.jpg)|*.jpg';
  if SavePictureDialog1.Execute then
  begin
    CurrentFile := SavePictureDialog1.Filename;
    speichernJPGClick(Sender);
  end;
end;

procedure TForm68.speichernUWMFClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := 'Windows metafile (*.WMF)|*.wmf';
  SaveDialog1.Filter     := 'Windows metafile (*.WMF)|*.wmf';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    speichernWMFClick(Sender);
  end;
end;

procedure TForm68.speichernUEMFClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := 'Enhanced windows metafile (*.EMF)|*.emf';
  SaveDialog1.Filter     := 'Enhanced windows metafile (*.EMF)|*.emf';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    speichernEMFClick(Sender);
  end;
end;

procedure TForm68.DspeichernClick(Sender: TObject);
var
  Datei : TextFile;
  j     : word;
  ZeileS: string;
begin
  SaveDialog1.Filter := 'Fourier-Analyse (*.fou)|*.FOU';
  SaveDialog1.DefaultExt := 'FOU';
  if CurrentFile <> '' then
  begin
    assignFile(Datei,CurrentFile);
    rewrite(Datei);
    for j := 1 tO ZahlGlob do
    begin
      ZeileS := '0'+IntToStr(X1Fou[j])+','+IntToStr(Y1Fou[j])
                   +IntToStr(X2Fou[j])+','+IntToStr(Y2Fou[j])
                   +IntToStr(X3Fou[j])+','+IntToStr(Y3Fou[j]);
      Writeln(Datei, ZeileS);
    end;
    CloseFile (Datei);
  end
  else DspeichernUnterClick (Sender);
end;

procedure TForm68.SpeedSpeichernClick(Sender: TObject);
begin
  DSpeichernClick(Sender);
end;

procedure TForm68.DspeichernUnterClick(Sender: TObject);
var
  Datei  : TextFile;
  j      : word;
  ZeileS : string;
begin
  SaveDialog1.Filter := 'Fourier-Analyse (*.fou)|*.FOU';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    if UcaseS(RightS(CurrentFile,3)) <> 'FOU' then
      Currentfile := CurrentFile+'.FOU';
    assignFile(Datei,CurrentFile);
    rewrite(Datei);
    writeln(Datei,Currentfile);
    for j := 1 tO ZahlGlob do
    begin
      ZeileS := '0,'+IntToStr(X1Fou[j])+','+IntToStr(Y1Fou[j])
                   +','+IntToStr(X2Fou[j])+','+IntToStr(Y2Fou[j])
                   +','+IntToStr(X3Fou[j])+','+IntToStr(Y3Fou[j]);
      Writeln(Datei, ZeileS);
    end;
    CloseFile (Datei);
  end;
end;

procedure TForm68.Dbeenden(Sender: TObject);
var
  k : byte;
begin
  Datenspeichern.Enabled  := true;
  ButtonPlot.Visible      := true;
  SpeedSpeichern.Enabled  := true;
  ButtonNeueFalte.Visible := true;
  ZahlGlob := Zahl;
  Maus     := false;
  for k := 1 to ZahlGlob do Vergenz[k] := 0;
  ImageFoto.Canvas.Draw(0,0,EndBitmap);
  with ImageFoto.Canvas do
  begin
    moveto (Xinf, Yinf);
    lineto (XX1, YY1);
    lineto (XX2, YY2);
    lineto (Xscheitel, Yscheitel);
  end;
  if Emap then EndBitmap.Free;
  EndBitmap := TBitmap.Create;
  EndBitmap.Assign (ImageFoto.Picture);
end;

procedure TForm68.ButtonNeueFalteClick(Sender: TObject);
begin
  LabelText.Caption       := PunktText[2];
  ButtonNeueFalte.Visible := false;
  ButtonPlot.Visible      := false;
  Tex    := 2;
  PunktS := PunS[1];  {UMBIEGUNG1}
  PU     := 1;
  Maus   := true;
end;

procedure TForm68.ButtonRueckgaengigClick(Sender: TObject);
var
  l : byte;
begin
  ImageFoto.Canvas.Draw(0,0,FaltenBild);
  LabelText.Caption := PunktText[Tex-1];
  PunktS := PunS[Pu-1];
  Maus := true;
  if PunktS = 'INFLECTION' then
  begin
    Zahl := Zahl-1;
    ListBoxDaten.Items.Delete(ListBoxDaten.Items.Count-1);;
  end;
  if PunktS = 'X2' then
    for l := 1 to 3 do
      ListBoxDaten.Items.delete(ListBoxDaten.Items.Count-1);
end;

procedure TForm68.ButtonPlotClick(Sender: TObject);
begin
  Bitmap.free;
  ImageFoto.Picture:=nil;
  JPGDatei.free;
  Close;
  Form51.Show;
end;

procedure TForm68.FarbeClick(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  FarbeS : string;
begin
  if ColorDialog1.Execute then FourierFarbe := ColorDialog1.Color;
  FarbeS := ColorToString (FourierFarbe);
  KonfigZeileS[95] := 'Colour of Fourier points   :,'+FarbeS;
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
end;

procedure TForm68.SpeedFarbeClick(Sender: TObject);
begin
  FarbeClick(Sender);
end;

procedure TForm68.VergenzJaClick(Sender: TObject);
begin
  Bitmap := Tbitmap.create;
  Bitmap.Assign(ImageFoto.Picture.Graphic);
  Bmap := true;
  LabelText.Caption  := PunktText[4];
  Tex    := 4;
  PunktS := PunS[4];   {VERGENZ1}
  Pu     := 4;
  Maus   := true;
end;

procedure TForm68.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Fourier-Analyse.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'Fourier_analysis.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm68.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm68.HilfeClick(Sender: TObject);
const
  Anfang = 168;
var
  DateiS      : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\four66hw.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\Fourier-image.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm68.SpeedHilfeClick(Sender: TObject);
begin
  HilfeClick(Sender);
end;

procedure TForm68.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm68.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

end.

