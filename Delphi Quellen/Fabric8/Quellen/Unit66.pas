unit Unit66;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, Menus, ExtCtrls, Clipbrd, Jpeg, ExtDlgs,
  Basic, StdCtrls, Globvar, Einausga, Mask, Texte, Shellapi,
  Buttons, ComCtrls, Plotten, Standard, GifImage, Bmp2Tiff,
  ReadTiff, ehsHelpRouter, PngImage, Grafik;

type
  TForm66 = class(TForm)
    MainMenu1: TMainMenu;
    Bildimportieren: TMenuItem;
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
    ausDatei: TMenuItem;
    OpenDialog1: TOpenDialog;
    LabelText: TLabel;
    Ausschnitt: TMenuItem;
    GanzesBild: TMenuItem;
    ausschneiden: TMenuItem;
    SpeedGanzesBild: TSpeedButton;
    SpeedAusschneiden: TSpeedButton;
    kopieren: TMenuItem;
    SpeedImport: TSpeedButton;
    SpeedGspeichern: TSpeedButton;
    PanelImport: TPanel;
    ListBoxImport: TListBox;
    PanelSpeichern: TPanel;
    ListBoxSpeichern: TListBox;
    ButtonSabbrechen: TButton;
    ButtonIAbbrechen: TButton;
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
    procedure GDemo(Sender: TObject);
    procedure GanzesBildClick(Sender: TObject);
    procedure ausschneidenClick(Sender: TObject);
    procedure ImageFotoMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SpeedGanzesBildClick(Sender: TObject);
    procedure SpeedAusschneidenClick(Sender: TObject);
    procedure ausDateiClick(Sender: TObject);
    procedure ListBoxImportClick(Sender: TObject);
    procedure ListBoxSpeichernClick(Sender: TObject);
    procedure speichernClick(Sender: TObject);
    procedure kopierenClick(Sender: TObject);
    procedure SpeedImportClick(Sender: TObject);
    procedure SpeedGspeichernClick(Sender: TObject);
    procedure ButtonSabbrechenClick(Sender: TObject);
    procedure ButtonIAbbrechenClick(Sender: TObject);
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
  Klick       : boolean;
  RechteckS   : string;
  Xlinks      : word;
  Xrechts     : word;
  Ylinks      : word;
  Yrechts     : word;
  Ratio       : real;
implementation
uses Unit67, Unit65;
{$R *.DFM}

procedure TForm66.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm66.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm66.FormActivate(Sender: TObject);
var
  i : byte;
begin
  Left   := LeftDiag + ULap;
  Top    := TopDiag + ULap;
  Width  := WidDiag;
  Height := HeiDiag;
  setlength (FryX,MaxDaten);
  setlength (FryY,MaxDaten);
  setlength (FryR,MaxDaten);
  SpeedHandbuch.Hint        := Tx(274);
  SpeedHilfe.Hint           := Tx(210);
  Form66.Caption            := 'Fabric8: '+Tx(1067);
  ButtonPunkte.Caption      := Tx(1066);
  ButtonPlotten.Caption     := Tx(241);
  ButtonBeenden.Caption     := Tx(53);
  BildImportieren.Caption   := Tx(1068);
  Einfuegen.Caption         := Tx(1069);
  AusDatei.Caption          := Tx(57);
  Ausschnitt.Caption        := Tx(1607);
  GanzesBild.Caption        := Tx(1608);
  ausschneiden.Caption      := Tx(1609);
  PFarbe.Caption            := Tx(275);
  PunkteSpeichern.Caption   := Tx(1070);
  Pspeichern.Caption        := Tx(284);
  PspeichernUnter.Caption   := Tx(285);
  Gspeichern.Caption        := Tx(1071);
  kopieren.Caption          := Tx(282);
  Hilfe.Caption             := Tx(162)+' (F1)';
  SpeedEinfuegen.Hint       := Hilf(246);
  SpeedSpeichern.Hint       := Hilf(204);
  SpeedFarbe.Hint           := Hilf(365);
  SpeedHilfe.Hint           := Hilf(210);
  SpeedHandbuch.Hint        := Hilf(274);
  SpeedGanzesBild.Hint      := Hilf(679);
  SpeedAusschneiden.Hint    := Hilf(678);
  SpeedImport.Hint          := Hilf(345);
  SpeedGspeichern.Hint      := Hilf(683);
  LabelText.Caption         := Tx(1068);
  LabelText.Visible         := false;
  speichern.Caption         := Tx(284);
  LabelZahl.Caption         := '';
  LabelAnzahl.Caption       := Tx(1077);
  LabelPunkte.Caption       := Tx(1086);
  ButtonIabbrechen.Caption  := Tx(1682);
  ButtonSabbrechen.Caption  := Tx(1682);
  PanelZahl.Visible         := false;
  BildImportieren.Enabled   := false;
  ListboxPunkte.Visible     := false;
  LabelPunkte.Visible       := false;
  LabelX.Visible            := false;
  LabelY.Visible            := false;
  Punktespeichern.Enabled   := false;
  Gspeichern.Enabled        := false;
  ButtonPunkte.Visible      := false;
  ButtonPlotten.Visible     := false;
  Handbuch.Caption          := Tx(1055)+' (F2)';
  Einfuegen.Enabled         := false;
  PanelSpeed.Visible        := false;
  Gspeichern.Enabled        := false;
  SpeedEinfuegen.Enabled    := false;
  SpeedSpeichern.Enabled    := false;
  SpeedGanzesBild.Enabled   := false;
  SpeedAusschneiden.Enabled := false;
  Literatur.Caption         := Tx(1183)+' (F5)';
  SpeedLiteratur.Hint       := Hilf(462);
  ButtonZuruck.Caption      := TX(30);
  ImageFoto.Width           := 630;
  ImageFoto.Height          := 630;
  LabelDatei.Caption        := Tx(211);
  MaskEditDatei.Visible     := false;
  LabelDatei.Visible        := false;
  PFarbe.Enabled            := false;
  ButtonRueck.Caption       := Tx(1235);
  ButtonRueck.Visible       := false;
  SpeedFarbe.Enabled        := false;
  LabelR.Visible            := false;
  DecimalSeparator          := '.';
  Klick                     := false;
  Ausschnitt.Enabled        := false;
  for i := 1 to 7 do
    ListBoxImport.Items.Add (Tx(1611+i));
  PanelImport.Visible := false;
  for i := 1 to 7 do
    ListBoxSpeichern.Items.Add (Tx(1611+i));
  PanelSpeichern.Visible := false;
  Ratio := ImageFoto.Width/ImageFoto.Height;
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
  Bildimportieren.Enabled := true;
  ImageFoto.Canvas.Brush.Color := clWhite;
  ImageFoto.Canvas.Rectangle (0,0,ImageFoto.Width,ImageFoto.Height);;
  if DemoB then
  begin
    with ImageFoto.Canvas do
    begin
      Font.Name   := 'Times New Roman';
      Brush.Color := clWhite;
      Font.Color  := clGray;
      Font.Size   := 20;
      Textout(10, ImageFoto.Height-40,'Demo-Version');
    end;
  end;
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
  GDemo (ImageFoto.Canvas);
  if FryMethodeS = 'normiert' then
  begin
    PunktS := '1';
    LabelR.Visible := true;
  end
  else PunktS := '';
  Ausschnitt.Visible        := true;
  SpeedGanzesBild.Enabled   := true;
  SpeedAusschneiden.Enabled := true;
  LabelText.Caption         := Tx(1609)+'?'
end;

procedure TForm66.SpeedEinfuegenClick(Sender: TObject);
begin
  EinfuegenClick(Sender);
end;

procedure TForm66.ausDateiClick(Sender: TObject);
begin
  PanelImport.Visible := true;
end;

procedure TForm66.SpeedImportClick(Sender: TObject);
begin
  ausDateiClick(Sender);
end;

procedure TForm66.ListBoxImportClick(Sender: TObject);
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
    for i := 0 to ListboxImport.Items.Count-1 do
    begin
      if ListboxImport.Selected[i] then
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
  PanelImport.Visible       := false;
  LabelText.Caption         := Tx(1105)+'?';
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

procedure TForm66.GanzesBildClick(Sender: TObject);
begin
  GDemo (ImageFoto.Canvas);
  Klick := true;
end;

procedure TForm66.SpeedGanzesBildClick(Sender: TObject);
begin
  GanzesBildClick(Sender);
end;

procedure TForm66.ausschneidenClick(Sender: TObject);
begin
  LabelText.Caption := Tx(1610);
  RechteckS         := 'LinksOben';
  Klick             := true;
end;

procedure TForm66.SpeedAusschneidenClick(Sender: TObject);
begin
  ausschneidenClick(Sender);
end;

procedure TForm66.ImageFotoMouseUp(Sender: TObject; Button: TMouseButton;
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
    GDemo (ImageFoto.Canvas);
    RechteckS := '';
  end;
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
  SpeedFarbe.Enabled := true;
  Gspeichern.Enabled := true;
  PanelZahl.Visible  := true;
  if FryMethodeS = 'normiert' then
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
  ImageFoto.Canvas.Pen.Color   := DatenFarbe;
  CurrentFile := '';
  Bitmap := TBitmap.Create;
end;

procedure TForm66.kopierenClick(Sender: TObject);
begin
  Clipboard.Assign(ImageFoto.Picture);
end;

procedure TForm66.speichernClick(Sender: TObject);
begin
  PanelSpeichern.Visible := true;
end;

procedure TForm66.SpeedGspeichernClick(Sender: TObject);
begin
  speichernClick(Sender);
end;

procedure TForm66.ButtonSabbrechenClick(Sender: TObject);
begin
  PanelSpeichern.Visible := false;
end;

procedure TForm66.ButtonIAbbrechenClick(Sender: TObject);
begin
  PanelImport.Visible := false;
end;

procedure TForm66.ListBoxSpeichernClick(Sender: TObject);
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
  PanelSpeichern.Visible := false;
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
      LabelText.Caption := Tx(1611);
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
    Bitmap.Assign(ImageFoto.Picture);
    ButtonRueck.Visible := true;
    ImageFoto.Canvas.Brush.Color := DatenFarbe;
    ImageFoto.Canvas.Brush.Style := bsSolid;
    if FryMethodeS = 'konventionell' then
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
    if FryMethodeS = 'normiert' then
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
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
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
  if FryMethodeS = 'konventionel' then
  begin
    SaveDialog1.Filter := 'Fry Method (*.fry)|*.FRY';
    SaveDialog1.DefaultExt := 'FRY';
  end;
  if FryMethodeS = 'normiert' then
    SaveDialog1.Filter := 'normalized Fry Method (*.frn)|*.FRN';
    SaveDialog1.DefaultExt := 'FRN';
  if CurrentFile <> '' then
  begin
    assignFile(Datei,CurrentFile);
    rewrite(Datei);
    for i := 1 tO Zahl do
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
  else PspeichernUnterClick (Sender);
end;

procedure TForm66.SpeedSpeichernClick(Sender: TObject);
begin
  PspeichernClick(Sender);
end;

procedure TForm66.PspeichernunterClick(Sender: TObject);
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
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\66Fry-Bitmap.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\22DataFromPicture.htm');
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

