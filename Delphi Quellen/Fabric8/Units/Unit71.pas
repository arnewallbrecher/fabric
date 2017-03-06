unit Unit71;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics,
  Controls, Forms, Dialogs,ComCtrls, StdCtrls,
  Globvar, Texte, ExtCtrls, Menus, Clipbrd,
  Jpeg, ExtDlgs, Basic, Buttons, Shellapi,
  Standard, Panozzo, Mask, Bmp2Tiff,GifImage,ReadTiff,
  ehsHelpRouter, PngImage, Grafik;

type
  TForm71 = class(TForm)
    StatusBar: TStatusBar;
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
    speichern: TMenuItem;
    LabelBild: TLabel;
    kopieren: TMenuItem;
    SpeedKopieren: TSpeedButton;
    Ausschnitt: TMenuItem;
    GanzesBild: TMenuItem;
    ausschneiden: TMenuItem;
    SpeedGanzesBild: TSpeedButton;
    SpeedAusschneiden: TSpeedButton;
    ListBoxFoto: TListBox;
    SpeedImportieren: TSpeedButton;
    ListBoxSpeichern: TListBox;
    SpeedGspeichern: TSpeedButton;
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
    Procedure GDemo(Sender: TObject);
    procedure kopierenClick(Sender: TObject);
    procedure SpeedKopierenClick(Sender: TObject);
    procedure GanzesBildClick(Sender: TObject);
    procedure ausschneidenClick(Sender: TObject);
    procedure SpeedGanzesBildClick(Sender: TObject);
    procedure SpeedAusschneidenClick(Sender: TObject);
    procedure ImageFotoMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ausDateiClick(Sender: TObject);
    procedure ListBoxFotoClick(Sender: TObject);
    procedure SpeedImportierenClick(Sender: TObject);
    procedure speichernClick(Sender: TObject);
    procedure ListBoxSpeichernClick(Sender: TObject);
    procedure SpeedGspeichernClick(Sender: TObject);
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
  Klick       : boolean;
  RechteckS   : string;
  Xlinks      : word;
  Xrechts     : word;
  Ylinks      : word;
  Yrechts     : word;

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
var
  i : byte;
begin
  Left   := 70;
  Top    := 10;
  Width  := 1050;
  Height := 750;
  setlength (PolyX, 100);
  setlength (PolyY, 100);
  setlength (Cx, Maxdaten);
  setlength (Cy, Maxdaten);
  setlength (ZeileS,100);
  setlength (ZeilePolygonS,Maxdaten);
  setlength (PolygonZeileS, Maxdaten);
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
  SpeedKopieren.Hint           := Hilf(262);
  SpeedGanzesBild.Hint         := Hilf(679);
  SpeedAusschneiden.Hint       := Hilf(678);
  SpeedImportieren.Hint        := Hilf(345);
  SpeedGspeichern.Hint         := Hilf(683);
  Ausschnitt.Caption           := Tx(1607);
  GanzesBild.Caption           := Tx(1608);
  ausschneiden.Caption         := Tx(1609);
  kopieren.Caption          := Tx(282);
  speichern.Caption         := Tx(87);
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
  SpeedGspeichern.Enabled:= false;
  Ausschnitt.Enabled     := false;
  SpeedAusschneiden.Enabled := false;
  SpeedGanzesBild.Enabled   := false;
  Klick                     := false;
  for i := 1 to 7 do
    ListBoxFoto.Items.Add (Tx(1611+i));
  ListBoxFoto.Visible := false;
  for i := 1 to 7 do
    ListBoxSpeichern.Items.Add (Tx(1611+i));
  ListBoxSpeichern.Visible := false;    
end;

procedure TForm71.ButtonStartClick(Sender: TObject);
begin
  if ClipBoard.HasFormat(CF_Bitmap) then
  begin
    einfuegen.Enabled      := true;
    SpeedEinfuegen.Enabled := true;
  end;
  LabelBild.Visible := true;
  MaskEditDatei.Visible := false;
  LabelDatei.Visible    := false;
  PanelSpeed.Visible    := true;
  ButtonPlotten.Visible := false;
  ListBoxPunkte.Clear;
  ImageFoto.Picture:=nil;
  Bild.Enabled := true;
  ImageFoto.Canvas.Brush.Color := clWhite;
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
  if BHoehe > ImageFoto.Height then
  begin
    BHoehe  := ImageFoto.Height;
    BBreite := round(BHoehe/Ratio);
  end;
  Rahmen := Rect(ImageFoto.Width div 2 - BBreite div 2,
                 ImageFoto.Height div 2 - BHoehe div 2,
                 ImageFoto.Width div 2 + BBreite div 2,
                 ImageFoto.Height div 2 + BHoehe div 2);
  ImageFoto.Canvas.StretchDraw (Rahmen, Bitmap);
  Bitmap.Canvas.StretchDraw (Rahmen, Bitmap);
  Ausschnitt.Enabled        := true;
  SpeedGanzesBild.Enabled   := true;
  SpeedAusschneiden.Enabled := true;
  LabelBild.Caption         := Tx(1609)+'?';
end;

procedure TForm71.ausDateiClick(Sender: TObject);
begin
  ListBoxFoto.Visible := true;
end;

procedure TForm71.SpeedImportierenClick(Sender: TObject);
begin
  AusDateiClick(Sender);
end;

procedure TForm71.ListBoxFotoClick(Sender: TObject);
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
    for i := 0 to ListboxFoto.Items.Count-1 do
    begin
      if ListboxFoto.Selected[i] then
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
  LabelBild.Caption := TX(1609)+' ?';
  Klick := true;
  ListBoxFoto.Visible := false;
  Ausschnitt.Enabled        := true;
  SpeedGanzesBild.Enabled   := true;
  Speedausschneiden.Enabled := true;
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

procedure TForm71.SpeedEinfuegenClick(Sender: TObject);
begin
  einfuegenClick(Sender);
end;

procedure TForm71.GanzesBildClick(Sender: TObject);
begin
  GDemo (ImageFoto.Canvas);
  Klick := true;
end;

procedure TForm71.SpeedGanzesBildClick(Sender: TObject);
begin
  GanzesBildClick(Sender);
end;

procedure TForm71.ausschneidenClick(Sender: TObject);
begin
  Klick     := true;
  RechteckS := 'LinksOben';
  LabelBild.Caption := Tx(1610);
end;

procedure TForm71.SpeedAusschneidenClick(Sender: TObject);
begin
  ausschneidenClick(Sender);
end;

procedure TForm71.ImageFotoMouseUp(Sender: TObject; Button: TMouseButton;
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
      Bitmap.Canvas.CopyRect(Ausschn,ImageFoto.Picture.Bitmap.Canvas,Rahmen);
      ImageFoto.Canvas.Brush.Color := clWhite;
      ImageFoto.Canvas.Rectangle(0,0,ImageFoto.Width,ImageFoto.Height);
      Ratio := Yende/Xende;
      if Xende > Yende then
      begin
        BBreite := ImageFoto.Width;
        BHoehe  := round(ImageFoto.Height*Ratio);
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
    GDemo (ImageFoto.Canvas);
    RechteckS := '';
  end;
end;

procedure TForm71.GDemo (Sender: TObject);
begin
  LabelBild.Caption       := Tx(1159)+Chr(13)+Tx(1161);
  MaskEditDatei.Text      := CurrentFile;
  ListBoxPunkte.Visible   := true;
  SpeedKopieren.Enabled   := true;
  SpeedGspeichern.Enabled := true;
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
      Font.Size   := 20;
      Textout(10, 10,'Demo-Version');
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
    if not Klick then exit;
    if RechteckS = 'LinksOben' then
    begin
      Xlinks    := X;
      Ylinks    := Y;
      RechteckS := 'RechtsUnten';
      with ImageFoto.Canvas do
      begin
        Brush.Style := bsSolid;
        Pen.Color   := clWhite;
        Ellipse(Xlinks-2,Ylinks-2,Xlinks+2,Ylinks+2);
      end;
      LabelBild.Caption := Tx(1611);
      exit;
    end;
    if RechteckS = 'RechtsUnten' then
    begin
      Xrechts := X;
      Yrechts := Y;
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
  SaveDialog1.DefaultExt := 'POL';
  SaveDialog1.Filter := 'Projection Method (*.pol)|*.POL';
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
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
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
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
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

procedure TForm71.speichernClick(Sender: TObject);
begin
  ListBoxSpeichern.Visible := true;
end;

procedure TForm71.SpeedGspeichernClick(Sender: TObject);
begin
  speichernClick(Sender);
end;

procedure TForm71.ListBoxSpeichernClick(Sender: TObject);
var
  i       : byte;
  Rahmen  : TRect;
  BildS   : Graphics.TBitmap;
  BHoeheF : word;
begin
  DNameS      := InputBox(Tx(439),Tx(887),' ');
  BildS       := Graphics.TBitmap.Create;
  BHoeheF     := round(BBreiteF/Ratio);
  BildS.Width  := BBreiteF;
  BildS.Height := BHoeheF;
  BBreiteST   := BBreiteF;
  Rahmen      := Rect(0,0,BildS.Width-50,BildS.Height-50);
  BildS.Canvas.Stretchdraw(Rahmen,ImageFoto.Picture.Graphic);
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
  ListBoxSpeichern.Visible := false;
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
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\66Fry-Bild.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\66Fry-bild.htm');
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


