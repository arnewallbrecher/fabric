unit Unit68;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, ComCtrls, Texte, StdCtrls, ExtCtrls, Menus,
  Jpeg, Clipbrd, Globvar, ExtDlgs, Basic, Fourier, Math, Shellapi, Buttons,
  Mask, GifImage, ReadTiff, Bmp2Tiff, Standard, ehsHelpRouter,
  PngImage, Grafik;
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
    OpenDialog1: TOpenDialog;
    speichern: TMenuItem;
    SpeedBGroesse: TSpeedButton;
    SpeedKopieren: TSpeedButton;
    BGroesse: TMenuItem;
    PanelGroesse: TPanel;
    LabelBHoehe: TLabel;
    LabelBBreite: TLabel;
    MaskEditBBreite: TMaskEdit;
    MaskEditBHoehe: TMaskEdit;
    CheckBoxBild: TCheckBox;
    Ausschnitt: TMenuItem;
    ganzesBild: TMenuItem;
    ausschneiden: TMenuItem;
    SpeedganzesBild: TSpeedButton;
    Speedausschneiden: TSpeedButton;
    ButtonZuruck: TButton;
    ListBoxOeffnen: TListBox;
    SpeedOeffnen: TSpeedButton;
    ListBoxSpeichern: TListBox;
    SpeedBSpeichern: TSpeedButton;
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
    procedure BGroesseClick(Sender: TObject);
    procedure MaskEditBBreiteKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditBHoeheKeyPress(Sender: TObject; var Key: Char);
    procedure CheckBoxBildClick(Sender: TObject);
    procedure SpeedBGroesseClick(Sender: TObject);
    procedure SpeedKopierenClick(Sender: TObject);
    procedure ganzesBildClick(Sender: TObject);
    procedure ausschneidenClick(Sender: TObject);
    procedure ImageFotoMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SpeedganzesBildClick(Sender: TObject);
    procedure SpeedausschneidenClick(Sender: TObject);
    procedure ButtonZuruckClick(Sender: TObject);
    procedure ListBoxOeffnenClick(Sender: TObject);
    procedure ausDateiClick(Sender: TObject);
    procedure SpeedOeffnenClick(Sender: TObject);
    procedure ListBoxSpeichernClick(Sender: TObject);
    procedure speichernClick(Sender: TObject);
    procedure SpeedBSpeichernClick(Sender: TObject);
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
  Klick       : boolean;
  RechteckS   : string;
  Xrechts     : word;
  Yrechts     : word;
  Xlinks      : word;
  Ylinks      : word;
  Ratio       : real;

implementation
{$R *.DFM}
uses Unit51, Unit48;

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
var
  i : byte;
begin
  Left   := LeftDiag + ULap;
  Top    := TopDiag + ULap;
  Width  := WidDiag;
  Height := HeiDiag;
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
  SpeedBGroesse.Hint        := Hilf(627);
  SpeedKopieren.Hint        := Hilf(262);
  SpeedFarbe.Hint           := Hilf(365);
  SpeedHilfe.Hint           := Hilf(210);
  SpeedHandbuch.Hint        := Hilf(274);
  SpeedLiteratur.Hint       := Hilf(462);
  SpeedGanzesBild.Hint      := Hilf(679);
  Speedausschneiden.Hint    := Hilf(678);
  SpeedOeffnen.Hint         := Hilf(368);
  SpeedBSpeichern.Hint      := Hilf(264);
  Literatur.Caption         := Tx(1183)+'(F5)';
  ButtonBeenden.Caption     := Tx(53);
  Zwischenablage.Caption    := Tx(282);
  Importieren.Caption       := Tx(1068);
  Importieren.Enabled       := false;
  LabelDaten.Caption        := Tx(1108);
  LabelDaten2.Caption       := Tx(1109);
  einfuegen.Caption         := Tx(1069);
  ausDatei.Caption          := Tx(57);
  Ausschnitt.Caption        := TX(1607);
  GanzesBild.Caption        := Tx(1608);
  ausschneiden.Caption      := Tx(1609); 
  Bspeichern.Caption        := Tx(1071);
  speichern.Caption         := Tx(87);
  ButtonZuruck.Caption      := Tx(30);
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
  SpeedOeffnen.Enabled      := false;
  SpeedBGroesse.Enabled     := false;
  SpeedKopieren.Enabled     := false;
  speichern.Enabled         := false;
  SpeedSpeichern.Enabled    := false;
  SpeedBSpeichern.Enabled   := false;
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
  Farbe.Enabled             := false;
  SpeedEinfuegen.Enabled := false;
  Maus := false;
  ButtonNeueFalte.Visible     := false;
  ButtonRueckgaengig.Visible  := false;
  Bmap := false;
  Emap := false;
  LabelDatei.Caption         := Tx(211);
  MaskEditDatei.Visible      := false;
  LabelDatei.Visible         := false;
  Ausschnitt.Enabled         := false;
  ListBoxDaten.Visible       := false;
  LabelDaten.Visible         := false;
  LabelDaten2.Visible        := false;
  ButtonRueckgaengig.Visible := false;
  ButtonNeueFalte.Visible    := false;
  ButtonPlot.Visible         := false;
  SpeedGanzesBild.Enabled    := false;
  Speedausschneiden.Enabled  := false;
  RatioI    := ImageFoto.Width/ImageFoto.Height;
  Klick     := false;
  RechteckS := '';
  for i := 1 to 7 do
    ListBoxOeffnen.Items.Add (TX(1611 + i));
  ListBoxOeffnen.Visible := false;
  for i := 1 to 7 do
    ListBoxSpeichern.Items.Add (TX(1611 + i));
  ListBoxSpeichern.Visible := false;
  Ratio := ImageFoto.Width/ImageFoto.Height;
end;

procedure TForm68.ButtonStartClick(Sender: TObject);
begin
  if ClipBoard.HasFormat(CF_Bitmap) then
  begin
    einfuegen.Enabled      := true;
    SpeedEinfuegen.Enabled := true;
  end;
  SpeedOeffnen.Enabled := true;
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
  Fortschritt.Visible     := false;
  PunktS                  := '';
  Zahl                    := 0;
  ListBoxDaten.Clear;
  if DemoB then
  begin
    with ImageFoto.Canvas do
    begin
      Font.Name   := 'Times New Roman';
      Brush.Color := clWhite;
      Font.Color  := clGray;
      Font.Size   := 20;
      Textout(10,ImageFoto.Height- 40,'Demo-Version');
    end;
  end;
end;

procedure TForm68.ButtonZuruckClick(Sender: TObject);
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
  if Bmap then Bitmap.Free;
  if Emap then EndBitmap.Free;
  ImageFoto.Picture:=nil;
  JPGDatei.free;
  Form68.Close;
  SetCurrentDir(DirectS);
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
  if Bmap then Bitmap.Free;
  if Emap then EndBitmap.Free;
  ImageFoto.Picture:=nil;
  JPGDatei.free;
  Form68.Close;
  Form48.Close;
  SetCurrentDir(DirectS);
end;

procedure TForm68.einfuegenClick(Sender: TObject);
var
  Rahmen  : TRect;
  Ratio   : real;
  BBreite : word;
  BHoehe  : word;
  Foto    : Tbitmap;
begin
  ImageFoto.Canvas.CopyMode := cmSrcCopy;
  Foto := TBitmap.Create;
  try
    Foto.Assign(ClipBoard);
    Bmap := true;
    Ratio := Foto.Height/Foto.Width;
    if Foto.Width > Foto.Height then
    begin
      BBreite := ImageFoto.Width;
      BHoehe  := round(ImageFoto.Width*Ratio);
    end
    else
    begin
      BHoehe  := ImageFoto.Height;
      BBreite := round(ImageFoto.Height/Ratio);
    end;
    if BHoehe > ImageFoto.Height then
    begin
      BHoehe  := ImageFoto.Height;
      BBreite := round(BHoehe/Ratio);
    end;
    Rahmen := Rect(ImageFoto.Width div 2 - BBreite div 2,
                   ImageFoto.Height div 2 - BHoehe div 2,
                   ImageFoto.Width div 2 + BBreite div 2,
                   ImageFoto.Height div 2 + BHoehe div 2);
    ImageFoto.Canvas.StretchDraw (Rahmen, Foto);
  finally
    Foto.free;
  end;
  FaltenBild := TBitmap.Create;
  Faltenbild.Assign (ImageFoto.Picture);
  LabelText.Caption := Tx(1609)+'?';
  if DemoB then
  begin
    with ImageFoto.Canvas do
    begin
      Font.Name   := 'Times New Roman';
      Brush.Color := clWhite;
      Font.Color  := clGray;
      Font.Size   := 20;
      Textout(10, ImageFoto.Height - 40,'Demo-Version');
    end;
  end;
  Bspeichern.Enabled        := true;
  Ausschnitt.Enabled        := true;
  SpeedGanzesBild.Enabled   := true;
  Speedausschneiden.Enabled := true;
  LabelText.Caption         := PunktText[1];
  Tex := 1;
end;

procedure TForm68.SpeedEinfuegenClick(Sender: TObject);
begin
  einfuegenClick(Sender);
end;

procedure TForm68.ausDateiClick(Sender: TObject);
begin
  ListBoxOeffnen.Visible := true;
end;

procedure TForm68.SpeedOeffnenClick(Sender: TObject);
begin
  ausDateiClick(Sender);
end;

procedure TForm68.ListBoxOeffnenClick(Sender: TObject);
var
  i       : byte;
  IWidth  : word;
  IHeight : word;
  BildI   : Graphics.TBitmap;
begin
  BildI            := Graphics.TBitmap.create;
  ImageFoto.Width  := 760;
  ImageFoto.Height := 526;
  IWidth        := ImageFoto.Width;
  IHeight       := ImageFoto.Height;
  try
    for i := 0 to ListboxOeffnen.Items.Count-1 do
    begin
      if ListboxOeffnen.Selected[i] then
      begin
        if i = 0 then OeffnenBMP (OpenPictureDialog1, BildI,
                                  IWidth, IHeight, ImageFoto.Canvas);
        if i = 1 then OeffnenGIF (OpenPictureDialog1, BildI,
                                  IWidth, IHeight, ImageFoto.Canvas);
        if i = 2 then OeffnenTIF (OpenDialog1, BildI,IWidth,
                                  IHeight, ImageFoto.Canvas);
        if i = 3 then OeffnenJPG (OpenDialog1, BildI,IWidth,
                                  IHeight, ImageFoto.Canvas);
        if i = 4 then OeffnenWMF (OpenDialog1, IWidth,
                                  IHeight, ImageFoto.Canvas);
        if i = 5 then OeffnenEMF (OpenDialog1, IWidth,
                                  IHeight, ImageFoto.Canvas);
        if i = 6 then OeffnenPNG (OpenDialog1, BildI, IWidth,
                                  IHeight, ImageFoto.Canvas);
      end;
    end;
  finally
    BildI.Free;
  end;
  Klick := true;
  ListBoxOeffnen.Visible := false;
  Ausschnitt.Enabled        := true;
  SpeedGanzesBild.Enabled   := true;
  Speedausschneiden.Enabled := true;
  LabelText.Caption         := Tx(1609)+'?';
  if DemoB then
  begin
    with ImageFoto.Canvas do
    begin
      Font.Name   := 'Times New Roman';
      Brush.Color := clWhite;
      Font.Color  := clGray;
      Font.Size   := 20;
      Textout(10, ImageFoto.Height - 40,'Demo-Version');
    end;
  end;
end;

procedure TForm68.ganzesBildClick(Sender: TObject);
begin
  Klick := true;
  ListBoxDaten.Visible       := true;
  LabelDaten.Visible         := true;
  LabelDaten2.Visible        := true;
  ButtonRueckgaengig.Visible := true;
  ButtonNeueFalte.Visible    := true;
  ButtonPlot.Visible         := true;
  Bspeichern.Enabled         := true;
  SpeedBGroesse.Enabled      := true;
  SpeedKopieren.Enabled      := true;
  SpeedBSpeichern.Enabled    := true;
  speichern.Enabled     := true;
  MaskEditDatei.Visible := true;
  MaskEditDatei.Text    := CurrentFile;
  Farbe.Enabled         := true;
  SpeedFarbe.Enabled    := true;
  Maus                  := true;
  LabelText.Caption     := PunktText[2];
  PunktS                := PunS[1];
  Bitmap := Tbitmap.create;
  Bitmap.Assign(ImageFoto.Picture.Graphic);
  Bmap := true;
  Tex  := 2;
  PU   := 1;
  Ausschnitt.Enabled := false;
end;

procedure TForm68.SpeedganzesBildClick(Sender: TObject);
begin
  GanzesBildClick(Sender);
end;

procedure TForm68.ausschneidenClick(Sender: TObject);
begin
  RechteckS         := 'LinksOben';
  Maus              := true;
  Klick             := true;
  LabelText.Caption := Tx(1610);
  Bitmap := Tbitmap.create;
  Bitmap.Assign(ImageFoto.Picture.Graphic);
  Tex  := 2;
  PU   := 1;
  Ausschnitt.Enabled := false;
  SpeedBSpeichern.Enabled := true;
end;

procedure TForm68.SpeedausschneidenClick(Sender: TObject);
begin
  ausschneidenClick(Sender);
end;

procedure TForm68.ImageFotoMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  Rahmen   : TRect;
  Ausschn  : TRect;
  Xende    : word;
  Yende    : word;
  Ratio    : real;
  BBreite  : word;
  BHoehe   : word;
  Recht    : TRect;
begin
  if not Maus then exit;
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
      Bitmap.Canvas.CopyRect(Ausschn,ImageFoto.Picture.Bitmap.Canvas,Rahmen);
      ImageFoto.Canvas.Brush.Color := clWhite;
      ImageFoto.Canvas.Rectangle(0,0,ImageFoto.Width,ImageFoto.Height);
      Ratio := Yende/Xende;
      if Xende > Yende then
      begin
        BBreite := ImageFoto.Width;
        BHoehe  := round(ImageFoto.Width*Ratio);   
      end
      else
      begin
        BHoehe  := ImageFoto.Height;
        BBreite := round(ImageFoto.Height/Ratio);
      end;
      Recht := Rect(0,0,BBreite,BHoehe);
      ImageFoto.Canvas.Stretchdraw(Recht,Bitmap);
    finally
      Bitmap.free;
    end;
    RechteckS := '';
    LabelText.Caption := PunktText[2];
    PunktS := PunS[1];
    ListBoxDaten.Visible       := true;
    LabelDaten.Visible         := true;
    LabelDaten2.Visible        := true;
    Bspeichern.Enabled    := true;
    SpeedBGroesse.Enabled := true;
    SpeedKopieren.Enabled := true;
    speichern.Enabled     := true;
    MaskEditDatei.Visible := true;
    MaskEditDatei.Text    := CurrentFile;
    Farbe.Enabled         := true;
    SpeedFarbe.Enabled    := true;
  end;
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
  if not Klick then exit;
  FaltenBild.Free;
  FaltenBild := TBitmap.Create;
  Faltenbild.Assign (ImageFoto.Picture);
  Xmess := x;
  Ymess := y;
  if RechteckS = 'LinksOben' then
  begin
    Xlinks    := Xmess;
    Ylinks    := Ymess;
    RechteckS := 'RechtsUnten';
    with ImageFoto.Canvas do
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
    Xrechts := Xmess;
    Yrechts := Ymess;
    with ImageFoto.Canvas do
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
    setlength(Bild,600+1);
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
    setlength(Bild,600 +1 );
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
    ButtonRueckgaengig.Visible := true;
    ButtonNeueFalte.Visible    := true;
    ButtonPlot.Visible         := true;
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
      assignFile(Datei,FabricS+'\'+'Fabric.ini');
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
    assignFile(Datei,FabricS+'\'+'Fabric.ini');
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

procedure TForm68.speichernClick(Sender: TObject);
begin
  ListBoxSpeichern.Visible := true;
end;

procedure TForm68.SpeedBSpeichernClick(Sender: TObject);
begin
  speichernClick(Sender);
end;

procedure TForm68.ListBoxSpeichernClick(Sender: TObject);
var
  i      : byte;
  Rahmen : TRect;
begin
  DNameS      := InputBox(Tx(439),Tx(887),' ');
  Bild        := Graphics.TBitmap.Create;
  BHoeheF     := round(BBreiteF/Ratio);
  Bild.Width  := BBreiteF;
  Bild.Height := BHoeheF;
  BBreiteST   := BBreiteF;
  Rahmen      := Rect(0,0,Bild.Width-50,Bild.Height-50);
  Bild.Canvas.Stretchdraw(Rahmen,ImageFoto.Picture.Graphic);
  Unterschrift(Bild.Canvas,Ratio,DNameS);
  try
    for i := 0 to ListboxSpeichern.Items.Count-1 do
    begin
      if ListboxSpeichern.Selected[i] then
      begin
        if i = 0 then speichernBMP (SavePictureDialog1, Bild);
        if i = 1 then speichernGIF (SavePictureDialog1, Bild);
        if i = 2 then speichernTIF (SaveDialog1, Bild);
        if i = 3 then speichernJPG (SavePictureDialog1, Bild);
        if i = 4 then speichernWMF (SavePictureDialog1, Bild);
        if i = 5 then speichernEMF (SavePictureDialog1, Bild);
        if i = 6 then speichernPNG (SavePictureDialog1, Bild);
      end;
    end;
  finally
    Bild.Free;
  end;
  ListBoxSpeichern.Visible := false;
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
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
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
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\68Fourier-Bild.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\68Fourier-Bild.htm');
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

