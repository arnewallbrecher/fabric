unit Unit71;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics,
  Controls, Forms, Dialogs,ComCtrls, StdCtrls,
  Globvar, Texte, ExtCtrls, Menus, Clipbrd,
  Jpeg, ExtDlgs, Basic, Buttons, Shellapi,
  Standard, Panozzo, Mask, Bmp2Tiff,GifImage,ReadTiff,
  ehsHelpRouter;

type
  TForm71 = class(TForm)
    StatusBar: TStatusBar;
    LabelDemo: TLabel;
    ImageFoto: TImage;
    MainMenu1: TMainMenu;
    Bild: TMenuItem;
    einfuegen: TMenuItem;
    OpenPictureDialog1: TOpenPictureDialog;
    Gspeichern: TMenuItem;
    ButtonStart: TButton;
    ButtonBeenden: TButton;
    ListBoxPunkte: TListBox;
    PanelSpeed: TPanel;
    ButtonPlotten: TButton;
    SpeedHandbuch: TSpeedButton;
    Handbuch: TMenuItem;
    SpeedHilfe: TSpeedButton;
    Farbe: TMenuItem;
    ButtonPunkte: TButton;
    PolygoneSpeichern: TMenuItem;
    Pspeichern: TMenuItem;
    PspeichernUnter: TMenuItem;
    Hilfe: TMenuItem;
    SpeedEinfuegen: TSpeedButton;
    SpeedPspeichern: TSpeedButton;
    SpeedFarbe: TSpeedButton;
    PanelZahl: TPanel;
    LabelAnzahl: TLabel;
    LabelZahl: TLabel;
    PanelPolygon: TPanel;
    LabelPolygone: TLabel;
    LabelX: TLabel;
    LabelY: TLabel;
    ColorDialog1: TColorDialog;
    SaveDialog1: TSaveDialog;
    SavePictureDialog1: TSavePictureDialog;
    ButtonZurueck: TButton;
    PFuellFarbe: TMenuItem;
    SpeedFuellFarbe: TSpeedButton;
    ButtonLoeschen: TButton;
    Schwerpunkte: TMenuItem;
    Sspeichern: TMenuItem;
    SspeichernUnter: TMenuItem;
    Literatur: TMenuItem;
    SpeedLiteratur: TSpeedButton;
    MaskEditDatei: TMaskEdit;
    LabelDatei: TLabel;
    SpeedSspeichern: TSpeedButton;
    OpenDialog1: TOpenDialog;
    ausDatei: TMenuItem;
    oeffnenBMP: TMenuItem;
    oeffnenGIF: TMenuItem;
    oeffnenTIF: TMenuItem;
    oeffnenJPG: TMenuItem;
    oeffnenWMF: TMenuItem;
    oeffnenEMF: TMenuItem;
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
    speichernUWMF: TMenuItem;
    speichernUEMF: TMenuItem;
    speichernUJPG: TMenuItem;
    SpeedGIF: TSpeedButton;
    SpeedTIF: TSpeedButton;
    SpeedJPG: TSpeedButton;
    SpeedWMF: TSpeedButton;
    SpeedEMF: TSpeedButton;
    SpeedBMP: TSpeedButton;
    LabelBild: TLabel;
    kopieren: TMenuItem;
    SpeedKopieren: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure ShowHint (Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure einfuegenClick(Sender: TObject);
    procedure ButtonStartClick(Sender: TObject);
    procedure HandbuchClick(Sender: TObject);
    procedure FarbeClick(Sender: TObject);
    procedure ButtonBeendenClick(Sender: TObject);
    procedure PspeichernClick(Sender: TObject);
    procedure PspeichernUnterClick(Sender: TObject);
    procedure HilfeClick(Sender: TObject);
    procedure SpeedEinfuegenClick(Sender: TObject);
    procedure SpeedPspeichernClick(Sender: TObject);
    procedure SpeedFarbeClick(Sender: TObject);
    procedure SpeedHilfeClick(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure ImageFotoMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ButtonZurueckClick(Sender: TObject);
    procedure PFuellFarbeClick(Sender: TObject);
    procedure ButtonPunkteClick(Sender: TObject);
    procedure SpeedFuellFarbeClick(Sender: TObject);
    procedure ButtonPlottenClick(Sender: TObject);
    procedure ButtonLoeschenClick(Sender: TObject);
    procedure SspeichernClick(Sender: TObject);
    procedure SspeichernUnterClick(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
    procedure SpeedLiteraturClick(Sender: TObject);
    procedure SpeedSspeichernClick(Sender: TObject);
    procedure oeffnenBMPClick(Sender: TObject);
    procedure oeffnenGIFClick(Sender: TObject);
    procedure oeffnenTIFClick(Sender: TObject);
    procedure oeffnenJPGClick(Sender: TObject);
    procedure oeffnenWMFClick(Sender: TObject);
    procedure oeffnenEMFClick(Sender: TObject);
    Procedure GDemo(Sender: TObject);
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
    procedure speichernUWMFClick(Sender: TObject);
    procedure speichernUJPGClick(Sender: TObject);
    procedure speichernUEMFClick(Sender: TObject);
    procedure SpeedGIFClick(Sender: TObject);
    procedure SpeedTIFClick(Sender: TObject);
    procedure SpeedWMFClick(Sender: TObject);
    procedure SpeedEMFClick(Sender: TObject);
    procedure SpeedBMPClick(Sender: TObject);
    procedure SpeedJPGClick(Sender: TObject);
    procedure kopierenClick(Sender: TObject);
    procedure SpeedKopierenClick(Sender: TObject);
end;

var
  Form71      : TForm71;
  Bitmap      : TBitmap;
  CurrentFile : string;
  Gspeichern  : boolean;
  JPGDatei    : TJpegImage;
  Zahl        : word;
  PolyX,PolyY : array of word;
  Cx, Cy      : array of word;
  ZeileS      : array of string;
  Loesch      : word;
  Rahmen      : TRect;
  PZahl       : word;
  BHoeheMa    : word;
  BBreite     : word;
  BHoehe      : word;

implementation

uses Unit70, Unit72;
{$R *.DFM}
procedure TForm71.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm71.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm71.FormActivate(Sender: TObject);
begin
  Left   := 4;
  Top    := 0;
  Width  := 1016;
  Height := 735;
  setlength (PolyX, 100);
  setlength (PolyY, 100);
  setlength (Cx, Maxdaten);
  setlength (Cy, Maxdaten);
  setlength (ZeileS,100);
  setlength (ZeilePolygonS,Maxdaten);
  setlength (PolygonZeileS, Maxdaten);
  LabelDemo.Visible               := false;
  if DemoB then LabelDemo.Visible := true;
  Form71.Caption               := Tx(1514);
  ButtonPunkte.Caption         := Tx(1066);
  ButtonPlotten.Caption        := Tx(241);
  ButtonBeenden.Caption        := Tx(53);
  Buttonzurueck.Caption        := Tx(30);
  Bild.Caption                 := Tx(1068);
  Einfuegen.Caption            := Tx(1069);
  AusDatei.Caption             := Tx(57);
  Farbe.Caption                := Tx(275);
  PFuellFarbe.Caption          := Tx(1155);
  PolygoneSpeichern.Caption    := Tx(1151);
  Pspeichern.Caption           := Tx(284);
  PspeichernUnter.Caption      := Tx(285);
  Gspeichern.Caption           := Tx(1071);
  Hilfe.Caption                := Tx(162)+' (F1)';
  LabelBild.Caption            := Tx(1068);
  ButtonBeenden.Hint           := Hilf(19);
  Buttonzurueck.Hint           := Hilf(457);
  ButtonStart.Hint             := Hilf(454);
  ButtonPunkte.Hint            := Hilf(455);
  SpeedEinfuegen.Hint          := Hilf(246);
  SpeedPspeichern.Hint         := Hilf(204);
  SpeedFarbe.Hint              := Hilf(365);
  SpeedHilfe.Hint              := Hilf(210);
  SpeedHandbuch.Hint           := Hilf(274);
  SpeedFuellFarbe.Hint         := Hilf(458);
  SpeedSspeichern.Hint         := Hilf(533);
  SpeedBMPoeffnen.Hint         := Hilf(621);
  SpeedGIFoeffnen.Hint         := Hilf(622);
  SpeedTIFoeffnen.Hint         := Hilf(623);
  SpeedJPGoeffnen.Hint         := Hilf(624);
  SpeedWMFoeffnen.Hint         := Hilf(625);
  SpeedEMFoeffnen.Hint         := Hilf(626);
  SpeedKopieren.Hint           := Hilf(262);
  SpeedBMP.Hint                := Hilf(586);
  SpeedGIF.Hint                := Hilf(587);
  SpeedTIF.Hint                := Hilf(588);
  SpeedJPG.Hint                := Hilf(589);
  SpeedWMF.Hint                := Hilf(590);
  SpeedEMF.Hint                := Hilf(591);
  kopieren.Caption          := Tx(282);
  speichern.Caption         := Tx(87);
  speichernU.Caption        := Tx(88);
  LabelZahl.Caption         := '';
  LabelAnzahl.Caption       := Tx(1154);
  PanelZahl.Visible         := false;
  Bild.Enabled              := false;
  ListboxPunkte.Enabled     := false;
  PanelPolygon.Visible      := false;
  LabelPolygone.Caption     := '';
  LabelX.Caption            := '';
  LabelY.Caption            := '';
  Polygonespeichern.Enabled := false;
  Gspeichern.Enabled      := false;
  ButtonPunkte.Visible    := false;
  ButtonPlotten.Visible   := false;
  Handbuch.Caption        := Tx(1055)+' (F2)';
  Literatur.Caption       := Tx(1183)+' (F5)';
  SpeedLiteratur.Hint     := Hilf(462);
  PanelSpeed.Visible      := false;
  SpeedPspeichern.Enabled := false;
  ButtonLoeschen.Visible  := false;
  ButtonLoeschen.Caption  := Tx(1162);
  Schwerpunkte.Enabled    := false;
  Schwerpunkte.Caption    := TX(1163);
  Sspeichern.Caption      := Tx(87);
  SspeichernUnter.Caption := Tx(88);
  SpeedSspeichern.Enabled := false;
  ImageFoto.Width         := 630;
  ImageFoto.Height        := 630;
  LabelDatei.Caption      := Tx(211);
  MaskEditDatei.Visible   := false;
  LabelDatei.Visible      := false;
  Farbe.Enabled           := false;
  LabelBild.Visible       := false;
  SpeedFarbe.Enabled      := false;
  SpeedFuellFarbe.Enabled := false;
  PFuellFarbe.Enabled     := false;
  Ratio := ImageFoto.Width/ImageFoto.Height;
  ListBoxPunkte.Visible  := false;
  einfuegen.Enabled      := false;
  SpeedEinfuegen.Enabled := false;
  SpeedKopieren.Enabled  := false;
  SpeedBMP.Enabled       := false;
  SpeedGIF.Enabled       := false;
  SpeedTIF.Enabled       := false;
  SpeedJPG.Enabled       := false;
  SpeedWMF.Enabled       := false;
  SpeedEMF.Enabled       := false;
end;

procedure TForm71.ButtonStartClick(Sender: TObject);
var
  i : word;
begin
  if ClipBoard.HasFormat(CF_Bitmap) then
  begin
    einfuegen.Enabled      := true;
    SpeedEinfuegen.Enabled := true;
  end;
  LabelBild.Visible := true;
  if EingabeS = 'ausPolygon' then
  begin
    PolyDatei (OpenDialog1);
    DateinameS[1] := OpenDialog1.Filename;
    Form72.Show;
  end;  
  if EingabeS = 'aus Bild' then
  begin
    MaskEditDatei.Visible := false;
    LabelDatei.Visible    := false;
    PanelSpeed.Visible    := true;
    ButtonPlotten.Visible := false;
    ListBoxPunkte.Clear;
    ImageFoto.Picture:=nil;
    Bild.Enabled := true;
    ImageFoto.Canvas.Brush.Color := clWhite;
  end;
end;

procedure TForm71.ButtonBeendenClick(Sender: TObject);
begin
  PolyX  := NIL;
  PolyY  := NIL;
  Cx     := NIL;
  Cy     := NIL;
  ZeileS := NIL;
  ZeilePolygonS := NIL;
  PolygonZeileS := Nil;
  Bitmap.free;
  ImageFoto.Picture:=nil;
  JPGDatei.free;
  Form71.Close;
  Form70.Close;
  SetCurrentDir (DirectS);
end;

procedure TForm71.ButtonZurueckClick(Sender: TObject);
begin
  PolyX  := NIL;
  PolyY  := NIL;
  Cx     := NIL;
  Cy     := NIL;
  ZeileS := NIL;
  ZeilePolygonS := NIL;
  PolygonZeileS := Nil;
  Bitmap.free;
  ImageFoto.Picture:=nil;
  JPGDatei.free;
  Form71.Close;
  SetCurrentDir (DirectS);
end;

procedure TForm71.einfuegenClick(Sender: TObject);
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
  end;
  GDemo (ImageFoto.Canvas);
end;

procedure TForm71.SpeedEinfuegenClick(Sender: TObject);
begin
  einfuegenClick(Sender);
end;

procedure TForm71.oeffnenBMPClick(Sender: TObject);
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

procedure TForm71.SpeedBMPoeffnenClick(Sender: TObject);
begin
  oeffnenBMPClick(Sender);
end;

procedure TForm71.oeffnenGIFClick(Sender: TObject);
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

procedure TForm71.SpeedGIFoeffnenClick(Sender: TObject);
begin
  oeffnenGIFClick(Sender);
end;

procedure TForm71.oeffnenTIFClick(Sender: TObject);
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

procedure TForm71.SpeedTIFoeffnenClick(Sender: TObject);
begin
  oeffnenTIFClick(Sender);
end;

procedure TForm71.oeffnenJPGClick(Sender: TObject);
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

procedure TForm71.SpeedJPGoeffnenClick(Sender: TObject);
begin
  oeffnenJPGClick(Sender);
end;

procedure TForm71.oeffnenWMFClick(Sender: TObject);
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

procedure TForm71.SpeedWMFoeffnenClick(Sender: TObject);
begin
  oeffnenWMFClick(Sender);
end;

procedure TForm71.oeffnenEMFClick(Sender: TObject);
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

procedure TForm71.SpeedEMFoeffnenClick(Sender: TObject);
begin
  oeffnenEMFClick(Sender);
end;

procedure TForm71.GDemo (Sender: TObject);
begin
  LabelBild.Caption       := Tx(1159)+Chr(13)+Tx(1161);
  MaskEditDatei.Text      := CurrentFile;
  ListBoxPunkte.Visible   := true;
  SpeedKopieren.Enabled   := true;
  SpeedBMP.Enabled        := true;
  SpeedGIF.Enabled        := true;
  SpeedTIF.Enabled        := true;
  SpeedJPG.Enabled        := true;
  SpeedWMF.Enabled        := true;
  SpeedEMF.Enabled        := true;
  Gspeichern.Enabled      := true;
  ListboxPunkte.Enabled   := true;
  PanelPolygon.Enabled    := true;
  LabelDatei.Visible      := true;
  MaskEditDatei.Visible   := true;
  LabelPolygone.Caption   := Tx(1086);
  LabelX.Caption          := 'X';
  LabelY.Caption          := 'Y';
  PanelZahl.Visible       := true;
  ButtonPunkte.Visible    := true;
  Farbe.Enabled           := true;
  PFuellFarbe.Enabled     := true;
  SpeedFarbe.Enabled      := true;
  SpeedFuellFarbe.Enabled := true;
  Zahl                    := 0;
  PolyNr := 0;
  Bitmap := TBitmap.Create;
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
  CurrentFile := '';
end;

procedure TForm71.ImageFotoMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  Zahls    : string;
  ZahlPS   : string;
  PolyXS   : string;
  PolyYS   : string;
  Cpx, Cpy : integer;
  i        : word;
begin
  ImageFoto.Cursor := crArrow;
  ButtonLoeschen.Visible := false;
  if ssLeft in Shift then
  begin
    if ssDouble in Shift then exit;
    if Zahl = 1 then Bitmap.Assign(ImageFoto.Picture);
    with ImageFoto.Canvas do
    begin
      Pen.Color   := DatenFarbe;
      Brush.Color := DatenFarbe;
    end;
    inc(Zahl);
    PolyX[Zahl] := x;
    PolyY[Zahl] := y;
    PolyXS := IntToStr(x);
    PolyYS := IntToStr(y);
    PolyXS := RightS('   '+PolyXS,3);
    PolyYS := RightS('   '+PolyYS,3);
    ZeileS[Zahl] := PolyXS+','+PolyYS;
    With ImageFoto.Canvas do
    begin
      Ellipse (x-2,y+2,X+2,y-2);
      FloodFill (x,y,DatenFarbe,fsBorder);
    end;
  end;
  if ssRight in Shift then
  begin
    if ssDouble in Shift then exit;
    Bitmap.Assign(ImageFoto.Picture);
    inc(PolyNr);
    if Zahl <= 1 then exit;
    ZahlS  := IntToStr(Zahl);
    ZahlPS := '('+ZahlS+')';
    ListBoxPunkte.Items.Add ('   '+InttoStr(PolyNr)+'.Polygon'+ZahlPS);
    LabelZahl.Caption := Inttostr(PolyNR);
    for i := 1 to Zahl do
      ListBoxPunkte.Items.Add ('   '+ZeileS[i]);
    PolyCenter (Zahl, PolyX, PolyY, Cpx, Cpy);
    Cx[PolyNr] := Cpx;
    Cy[PolyNr] := Cpy;
    with ImageFoto.Canvas do
    begin
      Pen.Width := 2;
      moveto (PolyX[1],PolyY[1]);
      for i := 2 to Zahl do
      begin
        lineto (PolyX[i], PolyY[i]);
      end;
      lineto (PolyX[1], PolyY[1]);
      Brush.Color := FuellFarbe;
      FloodFill (Cx[PolyNr], Cy[PolyNr], DatenFarbe, FsBorder);
      Brush.Color := DatenFarbe;
      Ellipse (Cx[PolyNr]-3,Cy[PolyNr]-3,Cx[PolyNr]+3,Cy[PolyNr]+3);
    end;
    PZahl := Zahl;
    Zahl := 0;
    ButtonLoeschen.Visible := true;
  end;
end;

procedure TForm71.ButtonLoeschenClick(Sender: TObject);
var
  i, k, j : word;
  Xmax    : word;
  Ymax    : word;
  Xmin    : word;
  Ymin    : word;
  Punkt   : byte;
  ZahlS   : string;
  Xa, Ya  : word;
  X, Y    : word;
  Xm, Ym  : word;
begin
  PolyNr := PolyNr - 1;
  LabelZahl.Caption := IntToStr(PolyNr);
  for i := 1 to Pzahl+1 do
    ListBoxPunkte.Items.Delete(ListboxPunkte.Items.Count-1);
  ImageFoto.Canvas.Draw(0,0,Bitmap);
  if PolyNr = 0 then exit;
  for i := 0 to ListboxPunkte.Items.Count-1 do
  begin
    ZeilePolygonS[i+1] := ListboxPunkte.Items.Strings[i];
    delete (ZeilePolygonS[i+1],1,3);
  end;
  with ImageFoto.Canvas do
  begin
    k := 1;
    for j := 1 to PolyNr do
    begin
      Xmax := 0;
      Ymax := 0;
      Xmin := 60000;
      Ymin := 60000;
      delete (ZeilePolygonS[k],length(ZeilePolygonS[k]),1);
      Punkt := pos('(',ZeilePolygonS[k]);
      ZahlS := RightS(ZeilePolygonS[k],length(ZeilePolygonS[k])-Punkt);
      Zahl  := StrtoInt(ZahlS);
      Xa := StrtoInt(LeftS(ZeilePolygonS[k+1],3));
      Ya := StrtoInt(RightS(ZeilePolygonS[k+1],3));
      moveto (Xa, Ya);
      for i := k+1 to Zahl+k do
      begin
        X := StrtoInt(LeftS(ZeilePolygonS[i],3));
        Y := StrtoInt(RightS(ZeilePolygonS[i],3));
        lineto (X, Y);
        if X > Xmax then Xmax := X;
        if Y > Ymax then Ymax := Y;
        if X < Xmin then Xmin := X;
        if Y < Ymin then Ymin := Y;
      end;
      Xm := (Xmax + Xmin) div 2;
      Ym := (Ymax + Ymin) div 2;
      lineto (Xa, Ya);
      Brush.Color := FuellFarbe;
      FloodFill (Xm, Ym, DatenFarbe, fsBorder);
      k := k + Zahl+1;
    end;
  end;
  Zahl := 0;
end;

procedure TForm71.PspeichernClick(Sender: TObject);
var
  Datei : TextFile;
  i     : word;
  ZahlS : strinG;
begin
  SaveDialog1.Filter := 'Projection Method (*.POL)|*.POL';
  SaveDialog1.DefaultExt := 'POL';
  if CurrentFile <> '' then
  begin
    assignFile(Datei,CurrentFile);
    rewrite(Datei);
    ZahlS := Inttostr(PolyNr)+' '+'Polygons';
    Writeln (Datei, ZahlS);
    for i := 1 to ZahlGlob do
      Writeln(Datei, ZeilePolygonS[i]);
    CloseFile (Datei);
  end
  else PspeichernUnterClick (Sender);
end;

procedure TForm71.SspeichernClick(Sender: TObject);
var
  Datei : TextFile;
  i     : word;
begin
  SaveDialog1.Filter := 'Fry Method (*.FRY)|*.FRY';
  SaveDialog1.DefaultExt := 'FRY';
  if CurrentFile <> '' then
  begin
    assignFile(Datei,CurrentFile);
    rewrite(Datei);
    for i := 1 to PolyNr do
      Writeln(Datei, IntToStr(Cx[i])+','+IntToStr(Cy[i]));
    CloseFile (Datei);
  end
  else SspeichernUnterClick (Sender);
end;

procedure TForm71.SspeichernUnterClick(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
begin
  SaveDialog1.Filter := 'Fry Method (*.FRY)|*.FRY';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    assignFile(Datei,CurrentFile);
    rewrite(Datei);
    for i := 1 to PolyNr do
      Writeln(Datei, IntToStr(Cx[i])+','+IntToStr(Cy[i]));
    CloseFile (Datei);
  end;
end;

procedure TForm71.SpeedSspeichernClick(Sender: TObject);
begin
  SspeichernUnterClick(Sender);
end;


procedure TForm71.SpeedPspeichernClick(Sender: TObject);
begin
  PspeichernClick(Sender);
end;

procedure TForm71.PspeichernUnterClick(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  ZahlS  : string;
begin
  SaveDialog1.Filter := 'Projection Method (*.POL)|*.POL';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    assignFile(Datei,CurrentFile);
    rewrite(Datei);
    ZahlS := Inttostr(PolyNr)+' '+'Polygons';
    Writeln (Datei, ZahlS);
    for i := 1 to ZahlGlob do
      Writeln(Datei, ZeilePolygonS[i]);
    CloseFile (Datei);
  end;
end;

procedure TForm71.FarbeClick(Sender: TObject);
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

procedure TForm71.PFuellFarbeClick(Sender: TObject);
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

procedure TForm71.SpeedFuellFarbeClick(Sender: TObject);
begin
  PFuellFarbeClick(Sender);
end;

procedure TForm71.SpeedFarbeClick(Sender: TObject);
begin
  FarbeClick(Sender);
end;

procedure TForm71.kopierenClick(Sender: TObject);
begin
  ClipBoard.Assign (ImageFoto.Picture);
end;

procedure TForm71.SpeedKopierenClick(Sender: TObject);
begin
  kopierenClick(Sender);
end;

procedure TForm71.speichernBMPClick(Sender: TObject);
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

procedure TForm71.SpeedBMPClick(Sender: TObject);
begin
  speichernBMPClick(Sender);
end;

procedure TForm71.speichernGIFClick(Sender: TObject);
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

procedure TForm71.SpeedGIFClick(Sender: TObject);
begin
  speichernGIFClick(Sender);end;

procedure TForm71.speichernTIFClick(Sender: TObject);
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

procedure TForm71.SpeedTIFClick(Sender: TObject);
begin
  speichernTIFClick(Sender);
end;

procedure TForm71.speichernJPGClick(Sender: TObject);
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

procedure TForm71.SpeedJPGClick(Sender: TObject);
begin
  speichernJPGClick(Sender);
end;

procedure TForm71.speichernWMFClick(Sender: TObject);
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

procedure TForm71.SpeedWMFClick(Sender: TObject);
begin
  speichernWMFClick(Sender);
end;

procedure TForm71.speichernEMFClick(Sender: TObject);
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

procedure TForm71.SpeedEMFClick(Sender: TObject);
begin
  speichernEMFClick(Sender);
end;

procedure TForm71.speichernUBMPClick(Sender: TObject);
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

procedure TForm71.speichernUGIFClick(Sender: TObject);
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

procedure TForm71.speichernUTIFClick(Sender: TObject);
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

procedure TForm71.speichernUJPGClick(Sender: TObject);
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

procedure TForm71.speichernUWMFClick(Sender: TObject);
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

procedure TForm71.speichernUEMFClick(Sender: TObject);
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

procedure TForm71.ButtonPunkteClick(Sender: TObject);
var
  i : word;
begin
  PolygoneSpeichern.Enabled := true;
  ButtonPlotten.Visible     := true;
  Schwerpunkte.Enabled      := true;
  SpeedSspeichern.Enabled   := true;
  ButtonLoeschen.Visible    := false;
  ZahlGlob := ListboxPunkte.Items.Count;
  if ZahlGlob = 0 then exit;
  for i := 0 to ListboxPunkte.Items.Count-1 do
  begin
    ZeilePolygonS[i+1] := ListboxPunkte.Items.Strings[i];
    delete (ZeilePolygonS[i+1],1,3);
    PolygonZeileS[i+1] := ZeilePolygonS[i+1];
  end;
  Bitmap.free;
  Bitmap := NIL;
end;

procedure TForm71.ButtonPlottenClick(Sender: TObject);
begin
  EingabeS := 'plotten';
  Form72.show;
end;

procedure TForm71.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Projektionsmethode.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'Projection_Method.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm71.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm71.HilfeClick(Sender: TObject);
var
  DateiS      : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\fry-02ck.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\Panozzo-image.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm71.SpeedHilfeClick(Sender: TObject);
begin
  HilfeClick(Sender);
end;

procedure TForm71.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm71.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

end.
