unit Unit66;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, Menus, ExtCtrls, Clipbrd, Jpeg, ExtDlgs,
  Basic, StdCtrls, Globvar, Einausga, Mask, Texte, Shellapi,
  Buttons, ComCtrls, Plotten, Standard, GifImage, Bmp2Tiff,
  ReadTiff, ehsHelpRouter;

type
  TForm66 = class(TForm)
    MainMenu1: TMainMenu;
    BildImportieren: TMenuItem;
    Einfuegen: TMenuItem;
    ImageFoto: TImage;
    OpenPictureDialog1: TOpenPictureDialog;
    Gspeichern: TMenuItem;
    ButtonStart: TButton;
    ButtonBeenden: TButton;
    SavePictureDialog1: TSavePictureDialog;
    LabelPunkte: TLabel;
    ListBoxPunkte: TListBox;
    LabelX: TLabel;
    LabelY: TLabel;
    PFarbe: TMenuItem;
    ColorDialog1: TColorDialog;
    Punktespeichern: TMenuItem;
    Pspeichern: TMenuItem;
    Pspeichernunter: TMenuItem;
    SaveDialog1: TSaveDialog;
    ButtonPunkte: TButton;
    ButtonPlotten: TButton;
    Hilfe: TMenuItem;
    Handbuch: TMenuItem;
    PanelZahl: TPanel;
    LabelAnzahl: TLabel;
    LabelZahl: TLabel;
    PanelSpeed: TPanel;
    SpeedHilfe: TSpeedButton;
    SpeedHandbuch: TSpeedButton;
    SpeedEinfuegen: TSpeedButton;
    SpeedFarbe: TSpeedButton;
    SpeedSpeichern: TSpeedButton;
    StatusBar: TStatusBar;
    Literatur: TMenuItem;
    SpeedLiteratur: TSpeedButton;
    ButtonZuruck: TButton;
    MaskEditDatei: TMaskEdit;
    LabelDatei: TLabel;
    ButtonRueck: TButton;
    LabelR: TLabel;
    speichern: TMenuItem;
    speichernBMP: TMenuItem;
    speichernGIF: TMenuItem;
    speichernTIF: TMenuItem;
    speichernJPG: TMenuItem;
    speichernWMF: TMenuItem;
    speichernEMF: TMenuItem;
    speichernUnter: TMenuItem;
    speichernUBMP: TMenuItem;
    speichernUGIF: TMenuItem;
    speichernUTIF: TMenuItem;
    speichernUJPG: TMenuItem;
    speichernUWMF: TMenuItem;
    speichernUEMF: TMenuItem;
    SpeedBMP     : TSpeedButton;
    SpeedGIF     : TSpeedButton;
    SpeedTIF     : TSpeedButton;
    SpeedJPG     : TSpeedButton;
    SpeedWMF     : TSpeedButton;
    SpeedEMF     : TSpeedButton;
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
    LabelText: TLabel;
    procedure ShowHint(Sender: TObject);
    procedure EinfuegenClick(Sender: TObject);
    procedure ButtonStartClick(Sender: TObject);
    procedure ButtonBeendenClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ImageFotoMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure PFarbeClick(Sender: TObject);
    procedure PspeichernClick(Sender: TObject);
    procedure PspeichernunterClick(Sender: TObject);
    procedure ButtonPunkteClick(Sender: TObject);
    procedure ButtonPlottenClick(Sender: TObject);
    procedure HilfeClick(Sender: TObject);
    procedure HandbuchClick(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure SpeedHilfeClick(Sender: TObject);
    procedure SpeedEinfuegenClick(Sender: TObject);
    procedure SpeedFarbeClick(Sender: TObject);
    procedure SpeedSpeichernClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
    procedure SpeedLiteraturClick(Sender: TObject);
    procedure ButtonZuruckClick(Sender: TObject);
    procedure ButtonRueckClick(Sender: TObject);
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
  end;

var
  Form66      : TForm66;
  CurrentFile : string;
  Gspeichern  : boolean;
  Zahl        : word;
  PunktS      : string[1];
  XM, YM      : word;
  MitteXS     : string;
  MitteYS     : string;
  BHoehe      : word;
  BBreite     : word;
  Bitmap      : TBitmap;
implementation
uses Unit67, Unit65;
{$R *.DFM}

procedure TForm66.FormShow(Sender: TObject);
begin
  Form66.Width  := 1040;
  Form66.Height := 750;
  Application.OnHint := ShowHint;
end;

procedure TForm66.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm66.FormActivate(Sender: TObject);
begin
  Left   := 4;
  Top    := 0;
  Width  := 1016;
  Height := 735;
  setlength (FryX,MaxDaten);
  setlength (FryY,MaxDaten);
  setlength (FryR,MaxDaten);
  SpeedHandbuch.Hint           := Tx(274);
  SpeedHilfe.Hint              := Tx(210);
  Form66.Caption               := 'Fabric8: '+Tx(1067);
  ButtonPunkte.Caption         := Tx(1066);
  ButtonPlotten.Caption        := Tx(241);
  ButtonBeenden.Caption        := Tx(53);
  BildImportieren.Caption      := Tx(1068);
  Einfuegen.Caption            := Tx(1069);
  AusDatei.Caption             := Tx(57);
  PFarbe.Caption               := Tx(275);
  PunkteSpeichern.Caption      := Tx(1070);
  Pspeichern.Caption           := Tx(284);
  PspeichernUnter.Caption      := Tx(285);
  Gspeichern.Caption           := Tx(1071);
  Hilfe.Caption                := Tx(162)+' (F1)';
  SpeedEinfuegen.Hint          := Hilf(246);
  SpeedSpeichern.Hint          := Hilf(204);
  SpeedBMPoeffnen.Hint         := Hilf(621);
  SpeedGIFoeffnen.Hint         := Hilf(622);
  SpeedTIFoeffnen.Hint         := Hilf(623);
  SpeedJPGoeffnen.Hint         := Hilf(624);
  SpeedWMFoeffnen.Hint         := Hilf(625);
  SpeedEMFoeffnen.Hint         := Hilf(626);
  SpeedFarbe.Hint              := Hilf(365);
  SpeedHilfe.Hint              := Hilf(210);
  SpeedHandbuch.Hint           := Hilf(274);
  SpeedBMP.Hint                := Hilf(586);
  SpeedGIF.Hint                := Hilf(587);
  SpeedTIF.Hint                := Hilf(588);
  SpeedJPG.Hint                := Hilf(589);
  SpeedWMF.Hint                := Hilf(590);
  SpeedEMF.Hint                := Hilf(591);
  LabelText.Caption            := Tx(1068);
  LabelText.Visible            := false;
  speichern.Caption            := Tx(284);
  speichernunter.Caption       := Tx(285);
  LabelZahl.Caption       := '';
  LabelAnzahl.Caption     := Tx(1077);
  LabelPunkte.Caption     := Tx(1086);
  PanelZahl.Visible       := false;
  BildImportieren.Enabled := false;
  ListboxPunkte.Visible   := false;
  LabelPunkte.Visible     := false;
  LabelX.Visible          := false;
  LabelY.Visible          := false;
  Punktespeichern.Enabled := false;
  Gspeichern.Enabled      := false;
  ButtonPunkte.Visible    := false;
  ButtonPlotten.Visible   := false;
  Handbuch.Caption        := Tx(1055)+' (F2)';
  Einfuegen.Enabled       := false;
  PanelSpeed.Visible      := false;
  Gspeichern.Enabled      := false;
  SpeedEinfuegen.Enabled  := false;
  SpeedSpeichern.Enabled  := false;
  SpeedBMP.Enabled        := false;
  SpeedGIF.Enabled        := false;
  SpeedTIF.Enabled        := false;
  SpeedJPG.Enabled        := false;
  SpeedWMF.Enabled        := false;
  SpeedEMF.Enabled        := false;
  Literatur.Caption       := Tx(1183)+' (F5)';
  SpeedLiteratur.Hint     := Hilf(462);
  ButtonZuruck.Caption    := TX(30);
  ImageFoto.Width         := 630;
  ImageFoto.Height        := 630;
  LabelDatei.Caption      := Tx(211);
  MaskEditDatei.Visible   := false;
  LabelDatei.Visible      := false;
  PFarbe.Enabled          := false;
  ButtonRueck.Caption     := Tx(1235);
  ButtonRueck.Visible     := false;
  SpeedFarbe.Enabled      := false;
  LabelR.Visible          := false;
  DecimalSeparator        := '.';
end;

procedure TForm66.ButtonStartClick(Sender: TObject);
begin
  LabelText.Visible := true;
  if ClipBoard.HasFormat(CF_Bitmap) then
  begin
    einfuegen.Enabled      := true;
    SpeedEinfuegen.Enabled := true;
  end;
  MaskEditDatei.Visible := false;
  LabelDatei.Visible    := false;
  PanelSpeed.Visible    := true;
  ButtonPlotten.Visible := false;
  ListBoxPunkte.Clear;
  ImageFoto.Picture:=nil;
  Bildimportieren.Enabled := true;
  ImageFoto.Canvas.Brush.Color := clWhite;
  ImageFoto.Canvas.Rectangle (0,0,ImageFoto.Width,ImageFoto.Height);;
end;

procedure TForm66.ButtonZuruckClick(Sender: TObject);
begin
  Bitmap.free;
  ImageFoto.Picture:=nil;
  Form66.Close;
  FryR := NIL;
  FryX := NIL;
  FryY := NIL;
  SetCurrentDir (DirectS);
end;

procedure TForm66.ButtonBeendenClick(Sender: TObject);
begin
  Bitmap.free;
  ImageFoto.Picture:=nil;
  Form66.Close;
  Form65.Close;
  FryR := NIL;
  FryX := NIL;
  FryY := NIL;
  SetCurrentDir (DirectS);
end;

procedure TForm66.EinfuegenClick(Sender: TObject);
var
  Rahmen  : TRect;
  BHoehe  : word;
  BBreite : word;
  Ratio   : real;
begin
  ImageFoto.Visible     := true;
  Rahmen := Rect(0,0,Clientwidth,ClientHeight);
  Loeschen (ImageFoto.Canvas, Rahmen);
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
      BHoehe  := round(ImageFoto.Height*Ratio);
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
  if FryMethode = 'normiert' then
  begin
    PunktS := '1';
    LabelR.Visible := true;
  end
  else PunktS := '';
end;

procedure TForm66.SpeedEinfuegenClick(Sender: TObject);
begin
  EinfuegenClick(Sender);
end;

procedure TForm66.oeffnenBMPClick(Sender: TObject);
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

procedure TForm66.SpeedBMPoeffnenClick(Sender: TObject);
begin
  oeffnenBMPClick(Sender);
end;

procedure TForm66.oeffnenGIFClick(Sender: TObject);
var
  GBild   : TGIFImage;
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

procedure TForm66.SpeedGIFoeffnenClick(Sender: TObject);
begin
  oeffnenGIFClick(Sender);
end;

procedure TForm66.oeffnenTIFClick(Sender: TObject);
var
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

procedure TForm66.SpeedTIFoeffnenClick(Sender: TObject);
begin
  oeffnenTIFClick(Sender);
end;

procedure TForm66.oeffnenJPGClick(Sender: TObject);
var
  JBild  : TJPEGImage;
  Ratio  : real;
  Rahmen : TRect;
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

procedure TForm66.SpeedJPGoeffnenClick(Sender: TObject);
begin
  oeffnenJPGClick(Sender);
end;

procedure TForm66.oeffnenWMFClick(Sender: TObject);
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

procedure TForm66.SpeedWMFoeffnenClick(Sender: TObject);
begin
  oeffnenWMFClick(Sender);
end;

procedure TForm66.oeffnenEMFClick(Sender: TObject);
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

procedure TForm66.SpeedEMFoeffnenClick(Sender: TObject);
begin
  oeffnenEMFClick(Sender);
end;

procedure TForm66.GDemo(Sender: TObject);
begin
  Zahl                  := 0;
  LabelDatei.Visible    := true;
  MaskEditDatei.Visible := true;
  MaskEditDatei.Text    := CurrentFile;
  LabelPunkte.Visible   := true;
  LabelX.Visible        := true;
  LabelY.Visible        := true;
  LabelPunkte.Visible   := true;
  ListBoxPunkte.Visible := true;
  ButtonPunkte.Visible  := true;
  PFarbe.Enabled        := true;
  if FryMethode = 'normiert' then
  begin
    LabelText.Caption := Tx(1466);
    PunktS            := '1';
    LabelR.Visible    := true;
  end
  else
  begin
    PunktS := '';
    LabelText.Caption := TX(1465);
  end;
  SpeedFarbe.Enabled := true;
  SpeedBMP.Enabled   := true;
  SpeedGIF.Enabled   := true;
  SpeedTIF.Enabled   := true;
  SpeedJPG.Enabled   := true;
  SpeedWMF.Enabled   := true;
  SpeedEMF.Enabled   := true;
  Gspeichern.Enabled := true;
  PanelZahl.Visible  := true;
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
  ImageFoto.Canvas.Pen.Color   := DatenFarbe;
  CurrentFile := '';
  Bitmap := TBitmap.Create;
end;

procedure TForm66.speichernBMPClick(Sender: TObject);
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

procedure TForm66.SpeedBMPClick(Sender: TObject);
begin
  speichernBMPClick(Sender);
end;

procedure TForm66.speichernGIFClick(Sender: TObject);
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

procedure TForm66.SpeedGIFClick(Sender: TObject);
begin
  speichernGIFClick(Sender);
end;

procedure TForm66.speichernTIFClick(Sender: TObject);
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

procedure TForm66.SpeedTIFClick(Sender: TObject);
begin
  speichernTIFClick(Sender);
end;

procedure TForm66.speichernJPGClick(Sender: TObject);
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

procedure TForm66.SpeedJPGClick(Sender: TObject);
begin
  speichernJPGClick(Sender);
end;

procedure TForm66.speichernWMFClick(Sender: TObject);
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

procedure TForm66.SpeedWMFClick(Sender: TObject);
begin
  speichernWMFClick(Sender);
end;

procedure TForm66.speichernEMFClick(Sender: TObject);
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

procedure TForm66.SpeedEMFClick(Sender: TObject);
begin
  speichernEMFClick(Sender);
end;

procedure TForm66.speichernUBMPClick(Sender: TObject);
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

procedure TForm66.speichernUGIFClick(Sender: TObject);
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

procedure TForm66.speichernUTIFClick(Sender: TObject);
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

procedure TForm66.speichernUJPGClick(Sender: TObject);
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

procedure TForm66.speichernUWMFClick(Sender: TObject);
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

procedure TForm66.speichernUEMFClick(Sender: TObject);
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

procedure TForm66.ImageFotoMouseDown(Sender: TObject;
          Button: TMouseButton;
          Shift: TShiftState; X, Y: Integer);
var
  ZeileS  : string;
  Zahls   : string;
  RS      : string;
  R       : word;
begin
  if ssLeft in Shift then
  begin
    if ssDouble in Shift then exit;
    Bitmap.Assign(ImageFoto.Picture);
    ButtonRueck.Visible := true;
    ImageFoto.Canvas.Brush.Color := DatenFarbe;
    ImageFoto.Canvas.Brush.Style := bsSolid;
    if FryMethode = 'konventionell' then
    begin
      inc(Zahl);
      FryX[Zahl] := x;
      FryY[Zahl] := y;
      MitteXS    := IntToStr(x);
      MitteYS    := IntToStr(y);
      MitteXS    := RightS('000'+MitteXS,3);
      MitteYS    := RightS('000'+MitteYS,3);
      ZeileS     := '   '+MitteXS+'     '+MitteYS;
      ListBoxPunkte.Items.Add (ZeileS);
      ImageFoto.Canvas.Ellipse (x-3,y-3,X+3,y+3);
    end;
    if FryMethode = 'normiert' then
    begin
      if PunktS = '1' then
      begin
        inc(Zahl);
        FryX[Zahl] := x;
        FryY[Zahl] := y;
        MitteXS    := IntToStr(x);
        MitteYS    := IntToStr(y);
        MitteXS    := RightS('000'+MitteXS,3);
        MitteYS    := RightS('000'+MitteYS,3);
        PunktS := '2';
        XM := x;
        YM := y;
        ImageFoto.Canvas.Ellipse(x-3,Y-3,x+3,y+3);
        exit;
      end;
      if PunktS = '2' then
      begin
        FryR[Zahl] := sqrt(sqr(FryX[Zahl]-x) + sqr(FryY[Zahl]-y));
        RS := FloatToStrF(FryR[Zahl],ffFixed,6,1);
        ZeileS := '  '+MitteXS+'      '+MitteYS+'    '+RS;
        R := round(sqrt(sqr(x-XM)+sqr(y-Ym)));
        ImageFoto.Canvas.Brush.Style := bsClear;
        ImageFoto.Canvas.Ellipse (XM-R,YM-R,XM+R,YM+R);
        PunktS := '1';
        ListBoxPunkte.Items.Add (ZeileS);
      end;
    end;
    ZahlS := IntToStr(Zahl);
    ZahlS := RightS('     '+ZahlS,5);
    LabelZahl.Caption := ZahlS;
  end;
end;

procedure TForm66.ButtonRueckClick(Sender: TObject);
var
  ZahlS : string[6];
begin
  ImageFoto.Canvas.Draw(0,0,Bitmap);
  ButtonRueck.Visible := false;
  ListBoxPunkte.Items.Delete(Zahl-1);
  Zahl  := Zahl-1;
  ZahlS := IntToStr(Zahl);
  LabelZahl.Caption := ZahlS;
end;

procedure TForm66.PFarbeClick(Sender: TObject);
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

procedure TForm66.SpeedFarbeClick(Sender: TObject);
begin
  PFarbeClick(Sender);
end;

procedure TForm66.PspeichernClick(Sender: TObject);
var
  Datei : TextFile;
  i     : word;
  ZeileS: string;
begin
  if FryMethode = 'konventionel' then
  begin
    SaveDialog1.Filter := 'Fry Method (*.fry)|*.FRY';
    SaveDialog1.DefaultExt := 'FRY';
  end;
  if FryMethode = 'normiert' then
    SaveDialog1.Filter := 'normalized Fry Method (*.frn)|*.FRN';
    SaveDialog1.DefaultExt := 'FRN';
  if CurrentFile <> '' then
  begin
    assignFile(Datei,CurrentFile);
    rewrite(Datei);
    for i := 1 tO Zahl do
    begin
      if FryMethode = 'konventionell' then
        ZeileS := FloatToStr(FryX[i])+','+FloatToStr(FryY[I]);
      if FryMethode = 'normiert' then
        ZeileS := FloatToStr(FryX[i])+','+FloatToStr(FryY[I])
        +','+FloatToStrF(FryR[i],ffFixed,6,2);
      Writeln(Datei, ZeileS);
    end;
    CloseFile (Datei);
  end
  else PspeichernUnterClick (Sender);
end;

procedure TForm66.SpeedSpeichernClick(Sender: TObject);
begin
  PspeichernClick(Sender);
end;

procedure TForm66.PspeichernunterClick(Sender: TObject);
begin
  if FryMethode = 'konventionell' then
  begin
    SaveDialog1.DefaultExt := 'fry';
    SaveDialog1.Filter     := 'fry';
  end;
  if FryMethode = 'normiert' then
  begin
    SaveDialog1.DefaultExt := 'frn';
    SaveDialog1.Filter     := 'frn';
  end;
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    PspeichernClick(Sender);
  end;
end;

procedure TForm66.ButtonPunkteClick(Sender: TObject);
begin
  Punktespeichern.Enabled := true;
  ZahlPunkte              := Zahl;
  ButtonPlotten.Visible   := true;
end;

procedure TForm66.ButtonPlottenClick(Sender: TObject);
begin
  Form67.Show;
  Plot := true;
end;

procedure TForm66.HilfeClick(Sender: TObject);
var
  DateiS : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\fry-0cry.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\Circular-data-satellite.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm66.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Fry-Methode.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'Fry-Method(english).doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm66.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm66.SpeedHilfeClick(Sender: TObject);
begin
  HilfeClick(Sender);
end;

procedure TForm66.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm66.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

end.
