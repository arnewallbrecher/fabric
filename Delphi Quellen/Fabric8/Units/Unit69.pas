unit Unit69;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, ComCtrls, Texte, StdCtrls, ExtCtrls, Menus,
  Jpeg, Clipbrd, Globvar, ExtDlgs, Basic, Fourier, Math,
  Shellapi, Einausga, Buttons, Mask, GifImage, ReadTiff,
  Standard, Bmp2Tiff, Plotten, ehsHelpRouter, PngImage,
  Grafik;

type
  TForm69 = class(TForm)
    StatusBar: TStatusBar;
    ButtonBeenden: TButton;
    ButtonStart: TButton;
    MainMenu1: TMainMenu;
    BildImportieren: TMenuItem;
    einfuegen: TMenuItem;
    ausDatei: TMenuItem;
    ImageFoto: TImage;
    OpenPictureDialog1: TOpenPictureDialog;
    SavePictureDialog1: TSavePictureDialog;
    Datenspeichern: TMenuItem;
    Dspeichern: TMenuItem;
    DspeichernUnter: TMenuItem;
    SaveDialog1: TSaveDialog;
    Farbe: TMenuItem;
    Hilfe: TMenuItem;
    Handbuch: TMenuItem;
    ColorDialog1: TColorDialog;
    Fortschritt: TProgressBar;
    ListBoxDaten: TListBox;
    LabelFall: TLabel;
    GroupBoxIsogone: TGroupBox;
    ButtonIsoBeenden: TButton;
    PanelDaten: TPanel;
    LabelDaten: TLabel;
    LabelAlpha: TLabel;
    LabelTstrich: TLabel;
    ButtonPlot: TButton;
    ButtonFalte: TButton;
    LabelText: TLabel;
    PanelSpeed: TPanel;
    SpeedEinfuegen: TSpeedButton;
    SpeedDspeichern: TSpeedButton;
    SpeedFarbe: TSpeedButton;
    SpeedHilfe: TSpeedButton;
    SpeedHandbuch: TSpeedButton;
    Literatur: TMenuItem;
    SpeedLiteratur: TSpeedButton;
    Buttonrueckgaengig: TButton;
    Linien: TMenuItem;
    Strichstaerke: TMenuItem;
    LinienStil: TMenuItem;
    ListBoxStrich: TListBox;
    LabelStrich: TLabel;
    durchgezogen: TMenuItem;
    gestrichelt: TMenuItem;
    punktiert: TMenuItem;
    strichpunktiert: TMenuItem;
    strichpunktpunkt: TMenuItem;
    MaskEditDatei: TMaskEdit;
    LabelDatei: TLabel;
    SpeedStaerke: TSpeedButton;
    SpeedDurchgezogen: TSpeedButton;
    SpeedGestrichelt: TSpeedButton;
    SpeedPunktiert: TSpeedButton;
    SpeedStrichPunkt: TSpeedButton;
    SpeedStrichPunktPunkt: TSpeedButton;
    OpenDialog1: TOpenDialog;
    SpeedBGroesse: TSpeedButton;
    SpeedKopieren: TSpeedButton;
    BGroesse: TMenuItem;
    PanelGroesse: TPanel;
    LabelBHoehe: TLabel;
    LabelBBreite: TLabel;
    MaskEditBBreite: TMaskEdit;
    MaskEditBHoehe: TMaskEdit;
    CheckBoxBild: TCheckBox;
    kopieren: TMenuItem;
    Bspeichern: TMenuItem;
    speichern: TMenuItem;
    ButtonUhrzeiger: TButton;
    ButtonGegenUhr: TButton;
    Ausschnitt: TMenuItem;
    GanzesBild: TMenuItem;
    ausschneiden: TMenuItem;
    ButtonZuruck: TButton;
    SpeedGanzesBild: TSpeedButton;
    SpeedAusschneiden: TSpeedButton;
    ListBoxOeffnen: TListBox;
    SpeedOeffnen: TSpeedButton;
    ListBoxSpeichern: TListBox;
    SpeedBspeichern: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure ShowHint(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ButtonBeendenClick(Sender: TObject);
    procedure ButtonStartClick(Sender: TObject);
    procedure einfuegenClick(Sender: TObject);
    procedure BMPspeichernClick(Sender: TObject);
    procedure DspeichernClick(Sender: TObject);
    procedure DspeichernUnterClick(Sender: TObject);
    procedure FarbeClick(Sender: TObject);
    procedure HilfeClick(Sender: TObject);
    procedure HandbuchClick(Sender: TObject);
    procedure ImageFotoMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ImageFotoMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ButtonIsoBeendenClick(Sender: TObject);
    procedure ButtonPlotClick(Sender: TObject);
    procedure ButtonFalteClick(Sender: TObject);
    procedure SpeedEinfuegenClick(Sender: TObject);
    procedure SpeedDspeichernClick(Sender: TObject);
    procedure SpeedFarbeClick(Sender: TObject);
    procedure SpeedHilfeClick(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
    procedure SpeedLiteraturClick(Sender: TObject);
    procedure ButtonrueckgaengigClick(Sender: TObject);
    procedure StrichstaerkeClick(Sender: TObject);
    procedure ListBoxStrichClick(Sender: TObject);
    procedure durchgezogenClick(Sender: TObject);
    procedure gestricheltClick(Sender: TObject);
    procedure punktiertClick(Sender: TObject);
    procedure strichpunktiertClick(Sender: TObject);
    procedure strichpunktpunktClick(Sender: TObject);
    procedure SpeedStaerkeClick(Sender: TObject);
    procedure SpeedDurchgezogenClick(Sender: TObject);
    procedure SpeedGestricheltClick(Sender: TObject);
    procedure SpeedPunktiertClick(Sender: TObject);
    procedure SpeedStrichPunktClick(Sender: TObject);
    procedure SpeedStrichPunktPunktClick(Sender: TObject);
    procedure oeffnenBMPClick(Sender: TObject);
    procedure GDemo (Canvas : TCanvas);
    procedure oeffnenGIFClick(Sender: TObject);
    procedure oeffnenTIFClick(Sender: TObject);
    procedure oeffnenJPGClick(Sender: TObject);
    procedure oeffnenWMFClick(Sender: TObject);
    procedure oeffnenEMFClick(Sender: TObject);
    procedure SpeedBMPoeffnenClick(Sender: TObject);
    procedure SpeedGIFoeffnenClick(Sender: TObject);
    procedure SpeedTIFoeffnenClick(Sender: TObject);
    procedure SpeedJPGoeffnenClick(Sender: TObject);
    procedure SpeedWMFoeffnenClick(Sender: TObject);
    procedure SpeedEMFoeffnenClick(Sender: TObject);
    procedure BGroesseClick(Sender: TObject);
    procedure SpeedBGroesseClick(Sender: TObject);
    procedure MaskEditBBreiteKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditBHoeheKeyPress(Sender: TObject; var Key: Char);
    procedure CheckBoxBildClick(Sender: TObject);
    procedure kopierenClick(Sender: TObject);
    procedure speichernUBMPClick(Sender: TObject);
    procedure GIFspeichernClick(Sender: TObject);
    procedure speichernUGIFClick(Sender: TObject);
    procedure TIFspeichernClick(Sender: TObject);
    procedure speichernUTIFClick(Sender: TObject);
    procedure JPGspeichernClick(Sender: TObject);
    procedure speichernUJPGClick(Sender: TObject);
    procedure WMFspeichernClick(Sender: TObject);
    procedure speichernUWMFClick(Sender: TObject);
    procedure EMFspeichernClick(Sender: TObject);
    procedure speichernUEMFClick(Sender: TObject);
    procedure SpeedKopierenClick(Sender: TObject);
    procedure SpeedBMPClick(Sender: TObject);
    procedure SpeedGIFClick(Sender: TObject);
    procedure SpeedTIFClick(Sender: TObject);
    procedure SpeedJPGClick(Sender: TObject);
    procedure SpeedWMFClick(Sender: TObject);
    procedure SpeedEMFClick(Sender: TObject);
    procedure ButtonUhrzeigerClick(Sender: TObject);
    procedure ButtonGegenUhrClick(Sender: TObject);
    procedure GanzesBildClick(Sender: TObject);
    procedure ausschneidenClick(Sender: TObject);
    procedure ButtonZuruckClick(Sender: TObject);
    procedure ImageFotoMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SpeedGanzesBildClick(Sender: TObject);
    procedure SpeedAusschneidenClick(Sender: TObject);
    procedure oeffnenPNGClick(Sender: TObject);
    procedure ListBoxOeffnenClick(Sender: TObject);
    procedure ausDateiClick(Sender: TObject);
    procedure SpeedOeffnenClick(Sender: TObject);
    procedure ListBoxSpeichernClick(Sender: TObject);
    procedure speichernClick(Sender: TObject);
    procedure SpeedBspeichernClick(Sender: TObject);
  end;

var
  Form69       : TForm69;
  Bitmap       : TBitmap;
  CurrentFile  : string;
  Xmess, i     : word;
  Ymess        : word;
  Xsch1, Ysch1 : word;
  Xsch2, Ysch2 : word;
  XMitte       : word;
  YMitte       : word;
  Winkel       : real;
  MausBewegen  : boolean;
  RotBild      : TBitmap;
  Iso          : integer;
  m, n         : shortint;
  Liso         : array[0..200] of real;
  Uhr          : shortint;
  Punkt        : string;
  Xiso1, Xiso2 : word;
  Yiso1, Yiso2 : word;
  Maus         : boolean;
  BHoehe       : word;
  BBreite      : word;
  Rahmen       : TRect;
  BHoeheI      : word;
  RatioI       : real;
  Klick        : boolean;
  RechteckS    : string;
  Xrechts      : word;
  YRechts      : word;
  Xlinks       : word;
  Ylinks       : word;
  Ratio        : real;

implementation
{$R *.DFM}
uses Unit52, Unit55;

procedure TForm69.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm69.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm69.FormActivate(Sender: TObject);
var
  l : byte;
begin
  Left := 70;
  Top  := 10;
  Height := 750;
  Width := 1050;
  if Programm = 12 then Form69.Caption := Tx(1096);
  if Programm = 18 then Form69.Caption := Tx(1513);
  setlength (T0, MaxDaten);
  setlength (T1Strich, MaxDaten);
  setlength (T2Strich, MaxDaten);
  setlength (T3Strich, MaxDaten);
  setlength (T4Strich, MaxDaten);
  setlength (T5Strich, MaxDaten);
  setlength (T6Strich, MaxDaten);
  setlength (T7Strich, MaxDaten);
  setlength (T8Strich, MaxDaten);
  setlength (T9Strich, MaxDaten);
  setlength (IsogonenZahl, MaxDaten);
  ButtonBeenden.Hint        := Hilf(30);
  ButtonStart.Hint          := Hilf(348);
  GroupBoxIsogone.Hint      := Hilf(358);
  ButtonIsoBeenden.Hint     := Hilf(361);
  ButtonPlot.Hint           := Hilf(51);
  ButtonFalte.Hint          := Hilf(362);
  SpeedEinfuegen.Hint       := Hilf(246);
  SpeedDspeichern.Hint      := Hilf(204);
  SpeedFarbe.Hint           := Hilf(365);
  SpeedHilfe.Hint           := Hilf(210);
  SpeedHandbuch.Hint        := Hilf(274);
  SpeedStaerke.Hint         := Hilf(463);
  SpeedDurchgezogen.Hint    := Hilf(428);
  SpeedGestrichelt.Hint     := Hilf(429);
  SpeedPunktiert.Hint       := Hilf(431);
  SpeedStrichPunkt.Hint     := Hilf(430);
  SpeedStrichPunktPunkt.Hint:= Hilf(526);
  SpeedBGroesse.Hint        := Hilf(627);
  SpeedKopieren.Hint        := Hilf(262);
  SpeedGanzesBild.Hint      := Hilf(679);
  SpeedAusschneiden.Hint    := Hilf(678);
  SpeedOeffnen.Hint         := Hilf(368);
  SpeedBspeichern.Hint      := Hilf(264);
  kopieren.Caption          := Tx(282);
  ButtonZuruck.Caption      := Tx(30);
  ButtonBeenden.Caption     := Tx(53);
  Hilfe.Caption             := Tx(162);
  Handbuch.Caption          := Tx(1055);
  Farbe.Caption             := Tx(275);
  Datenspeichern.Caption    := Tx(86);
  Datenspeichern.Enabled    := false;
  BildImportieren.Caption   := Tx(1068);
  BildImportieren.Enabled   := false;
  Bspeichern.Caption        := Tx(1071);
  Bspeichern.Enabled        := false;
  speichern.Caption         := Tx(1071);
  Dspeichern.Caption        := Tx(284);
  Farbe.Caption             := Tx(275);
  Hilfe.Caption             := Tx(162)+' (F1)';
  Handbuch.Caption          := Tx(1055)+' (F2)';
  Literatur.Caption         := Tx(1183)+' (F5)';
  SpeedLiteratur.Hint       := Hilf(462);
  einfuegen.Caption         := Tx(1069);
  ausDatei.Caption          := Tx(57);
  Ausschnitt.Caption        := Tx(1607);
  GanzesBild.Caption        := Tx(1608);
  ausschneiden.Caption      := Tx(1609);
  Fortschritt.Visible       := false;
  MausBewegen               := false;
  GroupBoxIsogone.Visible   := false;
  ButtonIsoBeenden.Caption  := Tx(53);
  ButtonIsoBeenden.Visible  := false;
  LabelFall.Caption         := Tx(1117);
  LabelFall.Visible         := false;
  PanelDaten.Visible        := false;
  ButtonPlot.Visible        := false;
  ButtonFalte.Visible       := false;
  ButtonUhrzeiger.Visible   := false;
  ButtonGegenUhr.Visible    := false;
  ListBoxDaten.Visible      := false;
  LabelDaten.Caption        := Tx(183);
  ButtonFalte.Caption       := Tx(1119);
  ButtonPlot.Caption        := Tx(241);
  SpeedEinfuegen.Enabled    := false;
  SpeedOeffnen.Enabled      := false;
  SpeedBGroesse.Enabled     := false;
  SpeedKopieren.Enabled     := false;
  SpeedBspeichern.Enabled   := false;
  SpeedDspeichern.Enabled   := false;
  SpeedFarbe.Enabled        := false;
  for l := 0 to 9 do
  begin
    ListBoxStrich.Items.Add(InttoStr(l+1));
  end;
  Linien.Caption            := Tx(525);
  Linien.Enabled            := false;
  ListBoxStrich.Visible     := false;
  LabelStrich.Visible       := false;
  einfuegen.Enabled         := false;
  Speedeinfuegen.Enabled    := false;
  Uhr                       := 1;
  ButtonUhrzeiger.Caption   := Tx(1230);
  ButtonGegenUhr.Caption    := Tx(1231);
  LabelText.Caption          := '';
  ButtonRueckgaengig.Caption := Tx(1235);
  Farbe.Enabled              := false;
  Maus                       := false;
  LabelStrich.Caption        := Tx(1181);
  durchgezogen.Caption       := Tx(271);
  gestrichelt.Caption        := Tx(272);
  punktiert.Caption          := Tx(273);
  strichpunktiert.Caption    := Tx(274);
  strichPunktPunkt.Caption   := Tx(1182);
  Strichstaerke.Caption      := Tx(1181);
  LinienStil.Caption         := Tx(847);
  ExtenS                     := 'TAL';
  LabelDatei.Caption         := Tx(211);
  MaskEditDatei.Visible      := false;
  LabelDatei.Visible         := false;
  SpeedStaerke.Enabled          := false;
  SpeedDurchgezogen.Enabled     := false;
  SpeedGestrichelt.Enabled      := false;
  SpeedPunktiert.Enabled        := false;
  SpeedStrichPunkt.Enabled      := false;
  SpeedStrichPunktPunkt.Enabled := false;
  MaskEditBBreite.EditMask      := '99999;0; ';
  MaskEditBHoehe.EditMask       := '99999;0; ';
  LabelBBreite.Caption          := Tx(1440);
  LabelBHoehe.Caption           := Tx(1441);
  BGroesse.Caption              := Tx(1439);
  PanelGroesse.Visible          := false;
  RatioI := ImageFoto.Width/ImageFoto.Height;
  Klick  := false;
  Ausschnitt.Enabled := false;
  for i := 1 to 7 do
    ListBoxOeffnen.Items.Add (Tx(1611+i));
  ListBoxOeffnen.Visible := false;
  for i := 1 to 7 do
    ListBoxSpeichern.Items.Add (Tx(1611+i));
  ListBoxSpeichern.Visible := false;
  Ratio := ImageFoto.Width/ImageFoto.Height;
end;

procedure TForm69.ButtonStartClick(Sender: TObject);
begin
  LabelText.Caption := Tx(1068);
  BHoeheI := round(BBreiteI/RatioI);
  MausBewegen               := false;
  ImageFoto.Picture         := nil;
  if ClipBoard.HasFormat(CF_Bitmap) then
  begin
    einfuegen.Enabled      := true;
    SpeedEinfuegen.Enabled := true;
  end;
  ausDatei.Enabled          := true;
  SpeedOeffnen.Enabled      := true;
  ImageFoto.Canvas.Brush.Color := clWhite;
  ImageFoto.Canvas.Rectangle (0,0,ImageFoto.Width,ImageFoto.Height);
  MaskEditDatei.Visible     := false;
  LabelDatei.Visible        := false;
  BildImportieren.Enabled   := true;
  ListBoxDaten.Clear;
  ImageFoto.Cursor          := crArrow;
  ButtonPlot.Visible        := false;
  n := 1;  //Nr. der Falte
  Punkt                     := 'MITTE';
  ButtonRueckgaengig.Enabled:= false;
end;

procedure TForm69.ButtonZuruckClick(Sender: TObject);
begin
  T0       := Nil;
  T1Strich := Nil;
  T2Strich := Nil;
  T3Strich := Nil;
  T4Strich := Nil;
  T5Strich := Nil;
  T6Strich := Nil;
  T7Strich := Nil;
  T8Strich := Nil;
  T9Strich := Nil;
  IsogonenZahl := NIL;
  Form69.Close;
  Form52.Close;
  Bitmap.free;
  RotBild.free;
  ImageFoto.Picture:=nil;
  Form69.Close;
  SetCurrentDir(DirectS);
end;

procedure TForm69.ButtonBeendenClick(Sender: TObject);
begin
  T0       := Nil;
  T1Strich := Nil;
  T2Strich := Nil;
  T3Strich := Nil;
  T4Strich := Nil;
  T5Strich := Nil;
  T6Strich := Nil;
  T7Strich := Nil;
  T8Strich := Nil;
  T9Strich := Nil;
  IsogonenZahl := NIL;
  Form69.Close;
  Form52.Close;
  Bitmap.free;
  RotBild.free;
  ImageFoto.Picture:=nil;
  Form69.Close;
  Form52.Close;
  SetCurrentDir(DirectS);
end;

procedure TForm69.einfuegenClick(Sender: TObject);
var
  Ratio   : real;
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
  Klick := true;
  LabelText.Caption  := Tx(1609)+'?';
  Ausschnitt.Enabled := true;
end;

procedure TForm69.SpeedEinfuegenClick(Sender: TObject);
begin
  einfuegenClick(Sender);
end;

procedure TForm69.ausDateiClick(Sender: TObject);
begin
  ListBoxOeffnen.Visible := true;
end;

procedure TForm69.SpeedOeffnenClick(Sender: TObject);
begin
  ausDateiClick(Sender);
end;

procedure TForm69.ListBoxOeffnenClick(Sender: TObject);
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
  LabelText.Caption := Tx(1105)+'?';
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

procedure TForm69.oeffnenBMPClick(Sender: TObject);
var
  Ratio   : real;
  BBreite : word;
  BHoehe  : word;
begin
  OpenPictureDialog1.Filter := 'Bitmap file (*.bmp)|*.bmp';
  if OpenPictureDialog1.Execute then
    CurrentFile := OpenPictureDialog1.FileName
  else exit;
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
  Klick := true;
  LabelText.Caption  := Tx(1609)+'?';
  Ausschnitt.Enabled := true;
end;

procedure TForm69.SpeedBMPoeffnenClick(Sender: TObject);
begin
  oeffnenBMPClick(Sender);
end;

procedure TForm69.oeffnenGIFClick(Sender: TObject);
var
  GBild   : TGIFImage;
  Bitmap  : TBitmap;
  Ratio   : real;
begin
  OpenPictureDialog1.Filter := 'Compuserve gif file (*.gif)|*.gif';
  if OpenPictureDialog1.Execute then
    CurrentFile := OpenPictureDialog1.FileName
  else exit;
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
  finally
    GBild.free;
  end;
  Klick := true;
  LabelText.Caption  := Tx(1609)+'?';
  Ausschnitt.Enabled := true;
end;

procedure TForm69.SpeedGIFoeffnenClick(Sender: TObject);
begin
  oeffnenGIFClick(Sender);
end;

procedure TForm69.oeffnenTIFClick(Sender: TObject);
var
  Bitmap  : TBitmap;
  Ratio   : real;
begin
  OpenDialog1.Filter := 'Tagged image file format (*.tif)|*.tif';
  if OpenDialog1.Execute then
    CurrentFile := OpenDialog1.FileName
  else exit;
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
  end;
  Klick := true;
  LabelText.Caption  := Tx(1609)+'?';
  Ausschnitt.Enabled := true;
end;

procedure TForm69.SpeedTIFoeffnenClick(Sender: TObject);
begin
  oeffnenTIFClick(Sender);
end;

procedure TForm69.oeffnenJPGClick(Sender: TObject);
var
  JBild   : TJPEGImage;
  Ratio   : real;
begin
  OpenPictureDialog1.Filter := 'Jpeg file (*.jpg)|*.jpg';
  if OpenPictureDialog1.Execute then
    CurrentFile := OpenPictureDialog1.FileName
  else exit;
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
  finally
    JBild.free;
  end;
  Klick := true;
  LabelText.Caption  := Tx(1609)+'?';
  Ausschnitt.Enabled := true;
end;

procedure TForm69.SpeedJPGoeffnenClick(Sender: TObject);
begin
  oeffnenJPGClick(Sender);
end;

procedure TForm69.oeffnenWMFClick(Sender: TObject);
var
  Metafile   : TMetafile;
  Ratio      : real;
begin
  OpenPictureDialog1.Filter := 'Windows metafile (*.WMF)|*.wmf';
  if OpenPictureDialog1.Execute then
    CurrentFile := OpenPictureDialog1.FileName
  else exit;
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
    if BHoehe > ImageFoto.Height then
    begin
      BHoehe  := ImageFoto.Height;
      BBreite := round(BHoehe/Ratio);
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
  Klick := true;
  LabelText.Caption  := Tx(1609)+'?';
  Ausschnitt.Enabled := true;
end;

procedure TForm69.SpeedWMFoeffnenClick(Sender: TObject);
begin
  oeffnenWMFClick(Sender);
end;

procedure TForm69.oeffnenEMFClick(Sender: TObject);
var
  Metafile   : TMetafile;
  Ratio      : real;
begin
  OpenPictureDialog1.Filter := 'Enhanced windows metafile (*.emf)|*.emf';
  if OpenPictureDialog1.Execute then
    CurrentFile := OpenPictureDialog1.FileName
  else exit;  
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
    if BHoehe > ImageFoto.Height then
    begin
      BHoehe  := ImageFoto.Height;
      BBreite := round(BHoehe/Ratio);
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
  Klick := true;
  LabelText.Caption  := Tx(1609)+'?';
  Ausschnitt.Enabled := true;
end;

procedure TForm69.SpeedEMFoeffnenClick(Sender: TObject);
begin
  oeffnenEMFClick(Sender);
end;

procedure TForm69.oeffnenPNGClick(Sender: TObject);
var
  BildPNG : TPngObject;
  Bitmap  : TBitmap;
  BBreite : word;
  BHoehe  : word;
  Rahmen  : TRect;
  Ratio   : real;
begin
  OpenPictureDialog1.DefaultExt := 'Portable Network Graphics (*.png)|*.png';
  OpenPictureDialog1.Filter     := 'Png file (*.png)|*.png';
  if OpenPictureDialog1.Execute then
    CurrentFile := OpenPictureDialog1.FileName
  else exit;
  BildPNG := TPngObject.Create;
  Bitmap  := TBitmap.Create;
  try
    BildPNg.LoadFromFile(CurrentFile);
    Bitmap.Assign(BildPNG);
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
  finally
    BildPNG.free;
    Bitmap.free;
  end;
  Klick := true;
  LabelText.Caption  := Tx(1609)+'?';
  Ausschnitt.Enabled := true;
end;

procedure TForm69.GDemo (Canvas : TCanvas);
begin
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
  ListboxDaten.Visible          := true;
  PanelDaten.Visible            := true;
  Bspeichern.Enabled            := true;
  MaskEditDatei.Visible         := true;
  MaskEditDatei.Text            := CurrentFile;
  Linien.Enabled                := true;
  Farbe.Enabled                 := true;
  Punkt     := 'SCHEITEL1';
  LabelText.Caption := Tx(1115);
  SpeedFarbe.Enabled            := true;
  SpeedStaerke.Enabled          := true;
  SpeedDurchgezogen.Enabled     := true;
  SpeedGestrichelt.Enabled      := true;
  SpeedPunktiert.Enabled        := true;
  SpeedStrichPunkt.Enabled      := true;
  SpeedStrichPunktPunkt.Enabled := true;
  Maus                          := true;
  Ausschnitt.Enabled            := true;
end;

procedure TForm69.GanzesBildClick(Sender: TObject);
begin
  GDemo(ImageFoto.Canvas);
  Maus := true;
  SpeedBspeichern.Enabled := true;
end;

procedure TForm69.SpeedGanzesBildClick(Sender: TObject);
begin
  GanzesBildClick(Sender);
end;

procedure TForm69.ausschneidenClick(Sender: TObject);
begin
  LabelText.Caption       := Tx(1610);
  RechteckS               := 'LinksOben';
  Maus                    := true;
  SpeedBspeichern.Enabled := true;
end;

procedure TForm69.SpeedAusschneidenClick(Sender: TObject);
begin
  ausschneidenClick(Sender);
end;

procedure TForm69.DspeichernClick(Sender: TObject);
begin
  SaveDialog1.Filter := 'Isogons (*.tal)|*.TAL';
  SaveDialog1.DefaultExt := 'TAL';
  Extens                 := 'TAL';
  if CurrentFile <> '' then Tschreiben (CurrentFile)
  else DspeichernUnterClick (Sender);
end;

procedure TForm69.SpeedDspeichernClick(Sender: TObject);
begin
  DspeichernClick(Sender);
end;

procedure TForm69.DspeichernUnterClick(Sender: TObject);
begin
  SaveDialog1.Filter     := 'Isogons (*.tal)|*.TAL';
  SaveDialog1.DefaultExt := ExtenS;
  SaveDialog1.Filter     := ExtenS;
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    Tschreiben (CurrentFile);
  end;
end;

procedure TForm69.FarbeClick(Sender: TObject);
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

procedure TForm69.SpeedFarbeClick(Sender: TObject);
begin
  FarbeClick(Sender);
end;

procedure TForm69.StrichstaerkeClick(Sender: TObject);
begin
  LabelStrich.Visible   := true;
  ListBoxStrich.Visible := true;
  LinienTyp             := psSolid;
end;

procedure TForm69.SpeedStaerkeClick(Sender: TObject);
begin
  StrichStaerkeClick(Sender);
end;

procedure TForm69.ListBoxStrichClick(Sender: TObject);
var
  l       : byte;
  StrichS : string;
  Datei   : TextFile;
begin
  Strich  := 1;
  StrichS := '1';
  for l := 1 to ListBoxStrich.Items.Count-1 do
    if ListboxStrich.Selected[l] then
      StrichS := ListBoxStrich.Items.Strings[l];
  KonfigZeileS[99] := 'Pen width (in pixel)       :,'+StrichS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for l := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[l]);
  closefile (Datei);
  Strich := StrtoInt(StrichS);
  LabelStrich.Visible   := false;
  ListBoxStrich.Visible := false;
end;

procedure TForm69.durchgezogenClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  LinienTyp     := psSolid;
  KonfigZeileS[10] := '  Line Style               :,Solid';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  Strich := 1;
end;

procedure TForm69.SpeedDurchgezogenClick(Sender: TObject);
begin
  durchgezogenClick(Sender);
end;

procedure TForm69.gestricheltClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  LinienTyp     := psDash;
  KonfigZeileS[10] := '  Line Style               :,Dash';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  Strich :=1;
end;

procedure TForm69.SpeedGestricheltClick(Sender: TObject);
begin
  gestricheltClick(Sender);
end;

procedure TForm69.punktiertClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  LinienTyp     := psDot;
  KonfigZeileS[10] := '  Line Style               :,Dot';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  Strich := 1;
end;

procedure TForm69.SpeedPunktiertClick(Sender: TObject);
begin
  punktiertClick(Sender);
end;

procedure TForm69.strichpunktiertClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  LinienTyp     := psDashDot;
  KonfigZeileS[10] := '  Line Style               :,DashDot';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  Strich := 1;
end;

procedure TForm69.SpeedStrichPunktClick(Sender: TObject);
begin
  strichpunktiertClick(Sender);
end;

procedure TForm69.strichpunktpunktClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  LinienTyp     := psDashDotDot;
  KonfigZeileS[10] := '  Line Style               :,DashDotDot';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  Strich := 1;
end;

procedure TForm69.SpeedStrichPunktPunktClick(Sender: TObject);
begin
  strichpunktpunktClick(Sender);
end;

procedure TForm69.ImageFotoMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  Rahmen   : TRect;
  Ausschn  : TRect;
  Xende    : word;
  Yende    : word;
  Bitmap   : TBitmap;
  AusBild  : TBitmap;
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
    LabelText.Caption := '';
    GDemo(ImageFoto.Canvas);
  end;
end;

procedure TForm69.ImageFotoMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  Bild     : array of array of TColor;
  i, j     : integer;
  k, l     : integer;
  TanDreh  : real;
  Dreh     : real;
  Laenge   : word;
  Hoehe    : word;
  Sig      : shortint;
  Y1       : word;
  X1, X2   : word;
  Xkorr    : integer;
  Ykorr    : integer;
  XmR, YmR : integer;
  Xm, Ym   : word;
  LisoS    : string;
begin
  if ssLeft in Shift then
  begin
    if ssDouble in Shift then exit;
    if not Maus then exit;
    if not Klick then exit;
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
    end;
    if Punkt = 'SCHEITEL1' then
    begin
      ImageFoto.Canvas.Ellipse (Xmess-3,Ymess-3,Xmess+3,Ymess+3);
      Xsch1 := Xmess;
      Ysch1 := Ymess;
      Punkt := 'SCHEITEL2';;
      LabelText.Caption := Tx(1116);
      exit;
    end;
    if Punkt = 'SCHEITEL2' then
    begin
      ImageFoto.Canvas.Ellipse (Xmess-3,Ymess-3,Xmess+3,Ymess+3);
      setlength(Bild,ImageFoto.Height+1);
      for i:= 0 to ImageFoto.Height do setlength(Bild[i],ImageFoto.Width+1);
      Xsch2 := Xmess;
      Ysch2 := Ymess;
      ImageFoto.Canvas.StretchDraw(Rahmen,Bitmap);
      Y1 := min (Ysch1, Ysch2);
      if Y1 = Ysch1 then
      begin
        X1 := Xsch1;
        X2 := Xsch2;
      end
      else
      begin
        X1 := Xsch2;
        X2 := Xsch1;
      end;
      Laenge  := abs(Xsch1-Xsch2);
      Hoehe   := abs(Ysch1-Ysch2);
      Sig     := 1;
      if X2 > X1 then Sig := -1;
      TanDreh := Sig*Laenge/Hoehe;
      Dreh    := arctan(TanDreh);
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
        Xm := Width div 2;
        Ym := Height div 2;
        XmR := round(cos(Dreh)*Xm-sin(Dreh)*Ym);
        YmR := round(sin(Dreh)*Xm+cos(Dreh)*Ym);
        Xkorr := Xm - XmR;
        Ykorr := Ym - YmR;
        Fortschritt.Visible := true;
        Fortschritt.Max     := Width;
        Fortschritt.Step    := 5;
        for i := 0 to Height do
        begin
          for j := 0 to Width do
          begin
            k := round(cos(Dreh)*j - sin(Dreh)*i) + Xkorr;
            l := round(sin(Dreh)*j + cos(Dreh)*i) + Ykorr;
            if (k>=0) and (k<Width) and (l>=0) and (l<Height) then  //k,l
              Canvas.Pixels[j,i]    := Bild[l,k]
            else Canvas.Pixels[j,i] := clWhite;
          end;
          Fortschritt.StepIt;
        end;
      end;
      Punkt := '';
      Fortschritt.Visible := false;
      GroupBoxIsogone.Visible := true;
      for i := 1 to ImageFoto.Height do setlength(Bild[i],0);
      Bild := NIL;
      LabelText.Caption := '';
      Maus := false;
      ButtonUhrzeiger.Visible := true;
      ButtonGegenUhr.Visible  := true;
      exit;
    end;
    if Punkt = 'PUNKT1' then
    begin
      Xiso1 := Xmess;
      Yiso1 := Ymess;
      ImageFoto.Picture.Assign(RotBild);
      Bitmap.Assign(ImageFoto.Picture);
      RotBild.Assign(ImageFoto.Picture.Graphic);
      Punkt := 'PUNKT2';
      LabelText.Caption := Tx(1121);
      exit;
    end;
    if Punkt = 'PUNKT2' then
    begin
      Xiso2 := Xmess;
      Yiso2 := Ymess;
      if m = 0 then
      begin
        T0[n] := round(sqrt(sqr(Xiso1-Xiso2)+sqr(Yiso1-Yiso2)));
        ListBoxDaten.Items.Add ('      T0 = '
        + RightS('      '+InttoStr(T0[n]),3));
        m := m + 1;
      end
      else
      begin
        if abs(Iso) >= 90 then Iso := 89*Uhr;;
        Liso[m]  := sqrt(sqr(Xiso1-Xiso2)+sqr(Yiso1-Yiso2))/T0[n];
        str(Liso[m]:6:3,LisoS);
        ListBoxDaten.Items.Add ('  '+InttoStr(Iso)+
                                '         '+LisoS);
        m := m + 1;
      end;
      ImageFoto.Picture.Assign(RotBild);
      with ImageFoto.Canvas do
      begin
        Pen.Width := Strich;
        Pen.Color := FourierFarbe;
        Pen.Style := Linientyp;
        moveto (Xiso2,Yiso2);
        lineto (Xiso1,Yiso1);
      end;
      Iso := Iso + 10*Uhr;
      RotBild.Assign(ImageFoto.Picture.Graphic);
      LabelFall.Caption      := Tx(1117)+' '+InttoStr(Iso);
      if abs(Iso) > 90 then ButtonIsoBeendenClick(Sender);
      Punkt := 'PUNKT1';
      LabelText.Caption := Tx(1120);
    end;
  end;
end;

procedure TForm69.ButtonUhrzeigerClick(Sender: TObject);
begin
  Uhr := -1;
  Iso := 10* Uhr;
  m   := 0;
  Iso := 0;
  RotBild := TBitmap.Create;
  RotBild.Assign(ImageFoto.Picture.Graphic);
  MausBewegen              := true;
  LabelFall.Visible        := true;
  LabelFall.Caption        := Tx(1117)+'  0';
  ButtonIsoBeenden.Visible := true;
  PanelDaten.Visible       := true;
  Punkt := 'PUNKT1';
  LabelText.Caption := Tx(1120);
  ButtonRueckgaengig.Enabled := true;
  Maus           := true;
end;

procedure TForm69.ButtonGegenUhrClick(Sender: TObject);
begin
  Uhr := 1;
  Iso := 10*Uhr;
  m   := 0;
  Iso := 0;
  RotBild := TBitmap.Create;
  RotBild.Assign(ImageFoto.Picture.Graphic);
  MausBewegen              := true;
  LabelFall.Visible        := true;
  LabelFall.Caption        := Tx(1117)+'  0';
  ButtonIsoBeenden.Visible := true;
  PanelDaten.Visible       := true;
  Punkt := 'PUNKT1';
  LabelText.Caption := Tx(1120);
  ButtonRueckgaengig.Enabled := true;
  Maus           := true;
  Linien.Enabled := false;
  ButtonUhrzeiger.Visible := false;
  ButtonGegenUhr.Visible  := false;
end;

procedure TForm69.ButtonrueckgaengigClick(Sender: TObject);
begin
  m   := m-1;
  Iso := Iso - 10*Uhr;
  ListBoxDaten.Items.Delete(ListBoxDaten.Items.Count-1);
  ImageFoto.Canvas.Draw(0,0,Bitmap);
  RotBild.Assign(ImageFoto.Picture);
  LabelFall.Caption      := Tx(1117)+' '+InttoStr(Iso);
end;

procedure TForm69.ImageFotoMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
var
  YR, YL : integer;
  Bo     : real;
begin
  Bo := Pi/180;
  if abs(Iso) >= 90 then Iso := 89*Uhr;
  if ImageFoto.Visible then
  begin
    if MausBewegen then
    begin
      ImageFoto.Picture.Assign(RotBild);
      ImageFoto.Cursor := crNone;
      with ImageFoto.Canvas do
      begin
        Pen.Color   := FourierFarbe;
        Brush.Color := FourierFarbe;
        moveto (x,y);
        ellipse(x+3,y+3,x-3,y-3);
        YR := y - round((width-x)*tan(Iso*Bo));
        if YR >=0 then
          Lineto (Width,YR)
        else lineto (width+round(YR/(tan(Iso*Bo))),0);
        moveto (x,y);
        YL := y + round(x*tan(Iso*Bo));
        lineto (0, YL);
      end;
    end;
  end;
end;

procedure TForm69.ButtonIsoBeendenClick(Sender: TObject);
var
  i : byte;
begin
  MausBewegen             := false;
  ImageFoto.Cursor        := crArrow;
  ButtonPlot.Visible      := true;
  ButtonFalte.Visible     := true;
  IsogonenZahl[n]         := m-1;
  GroupBoxIsogone.Visible := false;
  LabelText.Caption       := '';
  for i := 1 to 9 do
  begin
    case i of
      1 : T1Strich[n] := Liso[1];
      2 : T2Strich[n] := Liso[2];
      3 : T3Strich[n] := Liso[3];
      4 : T4Strich[n] := Liso[4];
      5 : T5Strich[n] := Liso[5];
      6 : T6Strich[n] := Liso[6];
      7 : T7Strich[n] := Liso[7];
      8 : T8Strich[n] := Liso[8];
      9 : T9Strich[n] := Liso[9];
    end;
  end;
  DatenSpeichern.Enabled  := true;
  SpeedDspeichern.Enabled := true;
  Linien.Enabled          := true;
  ZahlGlob := n;
end;

procedure TForm69.ButtonFalteClick(Sender: TObject);
var
  Flaeche : TRect;
begin
  n   := n +1;
  Punkt := 'SCHEITEL1';
  ButtonPlot.Visible      := false;
  GroupBoxIsogone.Visible := false;
  LabelText.Caption := Tx(1115);
  Bitmap.free;
  Bitmap := TBitmap.Create;
  Flaeche := Rect(0,0,ImageFoto.Width,ImageFoto.Height);
  Loeschen (ImageFoto.Canvas,Flaeche);
  ImageFoto.Canvas.StretchDraw(Rahmen, Bitmap);
end;

procedure TForm69.ButtonPlotClick(Sender: TObject);
begin
  durchgezogenClick(Sender);
  Form69.Close;
  Bitmap.free;
  RotBild.free;
  ImageFoto.Picture:=nil;
  Form55.Show;
end;

procedure TForm69.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Talpha.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'Talpha-E.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm69.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm69.HilfeClick(Sender: TObject);
var
  DateiS : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\69Talpha-Bild.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\69Talpha-Bild.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm69.SpeedHilfeClick(Sender: TObject);
begin
  HilfeClick(Sender);
end;

procedure TForm69.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm69.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

procedure TForm69.BGroesseClick(Sender: TObject);
begin
  PanelGroesse.Visible    := true;
  CheckBoxBild.State      := cbUnchecked;
  MaskEditBBreite.Text    := IntTostr(BBreiteI);
  MaskEditBHoehe.Text     := IntToStr(BHoeheI);
end;

procedure TForm69.SpeedBGroesseClick(Sender: TObject);
begin
  BGroesseClick(Sender);
end;

procedure TForm69.MaskEditBBreiteKeyPress(Sender: TObject; var Key: Char);
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

procedure TForm69.MaskEditBHoeheKeyPress(Sender: TObject; var Key: Char);
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

procedure TForm69.CheckBoxBildClick(Sender: TObject);
begin
  PanelGroesse.Visible := false;
end;

procedure TForm69.kopierenClick(Sender: TObject);
begin
  ClipBoard.Assign (ImageFoto.Picture);
end;

procedure TForm69.SpeedKopierenClick(Sender: TObject);
begin
  kopierenClick(Sender);
end;

procedure TForm69.speichernClick(Sender: TObject);
begin
  ListBoxSpeichern.Visible := true;
end;

procedure TForm69.SpeedBspeichernClick(Sender: TObject);
begin
  speichernClick(Sender);
end;

procedure TForm69.ListBoxSpeichernClick(Sender: TObject);
var
  i       : byte;
  Rahmen  : TRect;
  BHoeheF : word;
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

procedure TForm69.BMPspeichernClick(Sender: TObject);
var
  BBild   : TBitmap;
  BRahmen : TRect;
begin
  BBild        := TBitmap.Create;
  BBild.Width  := BBreiteI;
  BBild.Height := BHoeheI;
  BRahmen      := Rect(0,0,BBild.Width,BBild.Height);
  BBild.Canvas.Stretchdraw(BRahmen,ImageFoto.Picture.Graphic);
  try
    if (CurrentFile <> '') and (UCaseS(RightS(CurrentFile,3)) = 'BMP')
    then BBild.SaveToFile(CurrentFile)
    else speichernUBMPClick(Sender);
  finally
    BBild.Free;
  end;
end;

procedure TForm69.SpeedBMPClick(Sender: TObject);
begin
  BMPspeichernClick(Sender);
end;

procedure TForm69.GIFspeichernClick(Sender: TObject);
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

procedure TForm69.SpeedGIFClick(Sender: TObject);
begin
  GIFspeichernClick(Sender);
end;

procedure TForm69.TIFspeichernClick(Sender: TObject);
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

procedure TForm69.SpeedTIFClick(Sender: TObject);
begin
  TIFspeichernClick(Sender);
end;

procedure TForm69.JPGspeichernClick(Sender: TObject);
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

procedure TForm69.SpeedJPGClick(Sender: TObject);
begin
  JPGspeichernClick(Sender);
end;

procedure TForm69.WMFspeichernClick(Sender: TObject);
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

procedure TForm69.SpeedWMFClick(Sender: TObject);
begin
  WMFspeichernClick(Sender);
end;

procedure TForm69.EMFspeichernClick(Sender: TObject);
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

procedure TForm69.SpeedEMFClick(Sender: TObject);
begin
  EMFspeichernClick(Sender);
end;

procedure TForm69.speichernUBMPClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := 'Windows bitmap file (*.bmp)|*.bmp';
  SaveDialog1.Filter     := 'Windows bitmap file (*.bmp)|*.bmp';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    BMPspeichernClick(Sender);
  end;
end;

procedure TForm69.speichernUGIFClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := 'Compuserve gif file (*.gif)|*.gif';
  SaveDialog1.Filter     := 'Compuserve gif file (*.gif)|*.gif';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    GIFspeichernClick(Sender);
  end;
end;

procedure TForm69.speichernUTIFClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := 'Tagged image file format (*.tif)|*.tif';
  SaveDialog1.Filter     := 'Tagged image file format (*.tif)|*.tif';;
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    TIFspeichernClick(Sender);
  end;
end;

procedure TForm69.speichernUJPGClick(Sender: TObject);
begin
  SavePictureDialog1.DefaultExt := 'Jpeg file (*.jpg)|*.jpg';
  SavePictureDialog1.Filter     := 'Jpeg file (*.jpg)|*.jpg';
  if SavePictureDialog1.Execute then
  begin
    CurrentFile := SavePictureDialog1.Filename;
    JPGspeichernClick(Sender);
  end;
end;

procedure TForm69.speichernUWMFClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := 'Windows metafile (*.WMF)|*.wmf';
  SaveDialog1.Filter     := 'Windows metafile (*.WMF)|*.wmf';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    WMFspeichernClick(Sender);
  end;
end;

procedure TForm69.speichernUEMFClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := 'Enhanced windows metafile (*.EMF)|*.emf';
  SaveDialog1.Filter     := 'Enhanced windows metafile (*.EMF)|*.emf';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    EMFspeichernClick(Sender);
  end;
end;

end.
