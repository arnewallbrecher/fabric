unit Unit74;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, Menus, ExtCtrls, StdCtrls, Globvar, Texte, Clipbrd, Jpeg,
  ExtDlgs, Basic, Math, Mask, Buttons, Printers, Drucken, ShellApi,
  Standard, GifImage, Bmp2Tiff, ReadTiff, ehsHelpRouter,
  PngImage, Grafik, Plotten;

type
  TForm74 = class(TForm)
    ImageFoto: TImage;
    MainMenu1: TMainMenu;
    BildImportieren: TMenuItem;
    einfuegen: TMenuItem;
    ausDatei: TMenuItem;
    StatusBar: TStatusBar;
    LabelDemo: TLabel;
    OpenPictureDialog1: TOpenPictureDialog;
    Grafik: TMenuItem;
    SaveDialog1: TSaveDialog;
    SavePictureDialog1: TSavePictureDialog;
    ButtonBeenden: TButton;
    ButtonZurueck: TButton;
    ButtonStart: TButton;
    kopieren: TMenuItem;
    Fortschritt: TProgressBar;
    ButtonNaechste: TButton;
    ListBoxIsogonen: TListBox;
    LabelListe: TLabel;
    ListBoxWinkel: TListBox;
    LabelSchritt: TLabel;
    Farbe: TMenuItem;
    FarbeIsogonen: TMenuItem;
    ColorDialog1: TColorDialog;
    PrinterSetupDialog1: TPrinterSetupDialog;
    PrintDialog1: TPrintDialog;
    PanelSpeed: TPanel;
    SpeedDrucker: TSpeedButton;
    SpeedEinfuegen: TSpeedButton;
    SpeedFarbe: TSpeedButton;
    SpeedHilfe: TSpeedButton;
    Hilfe: TMenuItem;
    SpeedHandbuch: TSpeedButton;
    Handbuch: TMenuItem;
    Linien: TMenuItem;
    FontDialog1: TFontDialog;
    ListBoxStrich: TListBox;
    LabelStrich: TLabel;
    Strichstaerke: TMenuItem;
    LTyp: TMenuItem;
    durchgezogen: TMenuItem;
    gestrichelt: TMenuItem;
    punktiert: TMenuItem;
    strichpunktiert: TMenuItem;
    strichPunktPunkt: TMenuItem;
    Literatur: TMenuItem;
    SpeedLiteratur: TSpeedButton;
    LabelText: TLabel;
    ButtonRueck: TButton;
    MaskEditDatei: TMaskEdit;
    LabelDatei: TLabel;
    SpeedEinrichten: TSpeedButton;
    SpeedStaerke: TSpeedButton;
    SpeedDurchgezogen: TSpeedButton;
    SpeedGestrichelt: TSpeedButton;
    SpeedPunktiert: TSpeedButton;
    SpeedStrichPunkt: TSpeedButton;
    SpeedStrichPunktPunkt: TSpeedButton;
    PanelGroesse: TPanel;
    LabelBBreite: TLabel;
    LabelBHoehe: TLabel;
    MaskEditBBreite: TMaskEdit;
    MaskEditBHoehe: TMaskEdit;
    CheckBoxBild: TCheckBox;
    BGroesse: TMenuItem;
    PanelDrucken: TPanel;
    GroupBoxDrucken: TGroupBox;
    LabelLinks: TLabel;
    LabelOben: TLabel;
    LabelLaenge: TLabel;
    LabelGroesse: TLabel;
    LabelSchrift: TLabel;
    LabelErl: TLabel;
    ListBoxSchrift: TListBox;
    MaskEditLinks: TMaskEdit;
    MaskEditOben: TMaskEdit;
    MaskEditLaenge: TMaskEdit;
    MaskEditSchrift: TMaskEdit;
    ButtonDrucken: TButton;
    ButtonDabbrechen: TButton;
    SpeedGroesse: TSpeedButton;
    Speichern: TMenuItem;
    Speedkopieren: TSpeedButton;
    Drucker: TMenuItem;
    Deinrichten: TMenuItem;
    Drucken: TMenuItem;
    OpenDialog1: TOpenDialog;
    ButtonGegenUhr: TButton;
    ButtonUhrzeiger: TButton;
    Ausschnitt: TMenuItem;
    GanzesBild: TMenuItem;
    ausschneiden: TMenuItem;
    SpeedGanzesBild: TSpeedButton;
    SpeedAusschneiden: TSpeedButton;
    ListBoxImport: TListBox;
    ListBoxSpeichern: TListBox;
    SpeedImport: TSpeedButton;
    SpeedSpeichern: TSpeedButton;
    FontDialog2: TFontDialog;
    Font: TMenuItem;
    SpeedFont: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure ShowHint (Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure einfuegenClick(Sender: TObject);
    procedure alsBMPspeichernClick(Sender: TObject);
    procedure alsBMPspeichernUnterClick(Sender: TObject);
    procedure alsJPGspeichernClick(Sender: TObject);
    procedure alsJPGspeichernUnterClick(Sender: TObject);
    procedure ButtonBeendenClick(Sender: TObject);
    procedure ButtonZurueckClick(Sender: TObject);
    procedure ButtonStartClick(Sender: TObject);
    procedure kopierenClick(Sender: TObject);
    procedure ImageFotoMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ImageFotoMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ButtonNaechsteClick(Sender: TObject);
    procedure ListBoxWinkelClick(Sender: TObject);
    procedure FarbeIsogonenClick(Sender: TObject);
    procedure druckenClick(Sender: TObject);
    procedure SpeedDruckerClick(Sender: TObject);
    procedure SpeedEinfuegenClick(Sender: TObject);
    procedure SpeedKopierenClick(Sender: TObject);
    procedure SpeedBMPspeichernUnterClick(Sender: TObject);
    procedure SpeedJPGspeichernUnterClick(Sender: TObject);
    procedure SpeedFarbeClick(Sender: TObject);
    procedure HilfeClick(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure HandbuchClick(Sender: TObject);
    procedure StrichstaerkeClick(Sender: TObject);
    procedure ListBoxStrichClick(Sender: TObject);
    procedure durchgezogenClick(Sender: TObject);
    procedure gestricheltClick(Sender: TObject);
    procedure punktiertClick(Sender: TObject);
    procedure strichpunktiertClick(Sender: TObject);
    procedure strichPunktPunktClick(Sender: TObject);
    procedure SpeedHilfeClick(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
    procedure SpeedLiteraturClick(Sender: TObject);
    procedure ButtonRueckClick(Sender: TObject);
    procedure SpeedEinrichtenClick(Sender: TObject);
    procedure SpeedStaerkeClick(Sender: TObject);
    procedure SpeedDurchgezogenClick(Sender: TObject);
    procedure SpeedGestricheltClick(Sender: TObject);
    procedure SpeedStrichPunktClick(Sender: TObject);
    procedure SpeedStrichPunktPunktClick(Sender: TObject);
    procedure BGroesseClick(Sender: TObject);
    procedure MaskEditBBreiteKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditBHoeheKeyPress(Sender: TObject; var Key: Char);
    procedure CheckBoxBildClick(Sender: TObject);
    procedure ListBoxSchriftClick(Sender: TObject);
    procedure MaskEditSchriftKeyPress(Sender: TObject; var Key: Char);
    procedure ButtonDruckenClick(Sender: TObject);
    procedure ButtonDabbrechenClick(Sender: TObject);
    procedure SpeedGroesseClick(Sender: TObject);
    procedure DeinrichtenClick(Sender: TObject);
    procedure oeffnenBMPClick(Sender: TObject);
    procedure GDemo(Sender: TObject);
    procedure oeffnenGIFClick(Sender: TObject);
    procedure oeffnenTIFClick(Sender: TObject);
    procedure oeffnenJPGClick(Sender: TObject);
    procedure oeffnenWMFClick(Sender: TObject);
    procedure oeffnenEMFClick(Sender: TObject);
    procedure ButtonUhrzeigerClick(Sender: TObject);
    procedure ButtonGegenUhrClick(Sender: TObject);
    procedure GanzesBildClick(Sender: TObject);
    procedure ausschneidenClick(Sender: TObject);
    procedure ImageFotoMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SpeedGanzesBildClick(Sender: TObject);
    procedure SpeedAusschneidenClick(Sender: TObject);
    procedure oeffnenPNGClick(Sender: TObject);
    procedure ausDateiClick(Sender: TObject);
    procedure ListBoxImportClick(Sender: TObject);
    procedure SpeichernClick(Sender: TObject);
    procedure ListBoxSpeichernClick(Sender: TObject);
    procedure SpeedImportClick(Sender: TObject);
    procedure SpeedSpeichernClick(Sender: TObject);
    procedure FontClick(Sender: TObject);
    procedure SpeedFontClick(Sender: TObject);
  end;

var
  Form74      : TForm74;
  Bitmap      : TBitmap;
  Rahmen      : TRect;
  CurrentFile : string;
  JPGDatei    : TJpegImage;
  Xmess       : word;
  Ymess       : word;
  Xum1, Yum1  : word;
  Xum2, Yum2  : word;
  Iso         : real;
  MausBewegen : boolean;
  RotBild     : TBitmap;
  Xiso1,Yiso1 : word;
  Xiso2,Yiso2 : word;
  Xmitte      : word;
  Ymitte      : word;
  TextS       : string;
  Gedrueckt   : array [1..3] of boolean;
  BuendigS    : string;
  IWinkel     : integer;
  Vorz        : shortint;
  Punkt       : string;
  XisoR,YisoR : word;
  Ratio       : real;
  BHoeheI     : word;
  Links       : word;
  Oben        : word;
  Laenge      : word;
  BBreite     : word;
  BHoehe      : word;
  Klick       : boolean;
  Rechtecks   : string;
  Xlinks      : word;
  Ylinks      : word;
  Xrechts     : word;
  Yrechts     : word;
  DNameS      : string;
  Bild        : TBitmap; 

implementation
uses Unit73;
{$R *.DFM}

procedure TForm74.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm74.ShowHint(Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm74.FormActivate(Sender: TObject);
var
  i : byte;
begin
  Left   := 70;
  Top    := 10;
  Width  := 1050;
  Height := 750;
  Form74.Caption                  := 'Fabric8: '+Tx(1166);
  ButtonZurueck.Hint              := Hilf(18);
  ButtonBeenden.Hint              := Hilf(19);
  SpeedEinfuegen.Hint             := Hilf(246);
  SpeedFarbe.Hint                 := Hilf(461);
  SpeedDrucker.Hint               := Hilf(309);
  SpeedHandbuch.Hint              := Hilf(274);
  SpeedHilfe.Hint                 := Hilf(210);
  SpeedEinrichten.Hint            := Hilf(505);
  SpeedStaerke.Hint               := Hilf(463);
  SpeedDurchgezogen.Hint          := Hilf(428);
  SpeedGestrichelt.Hint           := Hilf(429);
  SpeedPunktiert.Hint             := Hilf(431);
  SpeedStrichPunkt.Hint           := Hilf(430);
  SpeedStrichPunktPunkt.Hint      := Hilf(526);
  SpeedGroesse.Hint               := Hilf(583);
  SpeedKopieren.Hint              := Hilf(262);
  SpeedGanzesBild.Hint            := Hilf(679);
  SpeedAusschneiden.Hint          := Hilf(678);
  SpeedSpeichern.Hint             := Hilf(264);
  SpeedImport.Hint                := Hilf(368);
  SpeedFont.Hint                  := Hilf(686);
  Speichern.Caption               := Tx(87);
  SpeedLiteratur.Hint             := Hilf(462);
  LabelText.Caption               := Tx(1068);
  ButtonUhrzeiger.Caption         := Tx(1230);
  ButtonGegenUhr.Caption          := Tx(1231);
  Grafik.Caption                  := Tx(281);
  ButtonZurueck.Caption           := Tx(30);
  ButtonBeenden.Caption           := Tx(53);
  einfuegen.Caption               := Tx(1069);
  ausDatei.Caption                := Tx(57);
  kopieren.Caption                := Tx(282);
  BildImportieren.Caption         := Tx(1068);
  ButtonNaechste.Caption          := Tx(1169);
  LabelListe.Caption              := TX(829);
  LabelSchritt.Caption            := Tx(1172);
  Farbe.Caption                   := Tx(275);
  FarbeIsogonen.Caption           := Tx(1180);
  Drucker.Caption                 := TX(92);
  Deinrichten.Caption             := TX(935);
  drucken.Caption                 := Tx(936);
  Hilfe.Caption                   := Tx(162)+' (F1)';
  Handbuch.Caption                := Tx(1055)+' (F2)';
  Literatur.Caption               := Tx(1183)+' (F5)';
  Linien.Caption                  := Tx(525);
  Strichstaerke.Caption           := Tx(1181);
  LabelStrich.Caption             := Tx(1181);
  LTyp.Caption                    := Tx(847);
  durchgezogen.Caption            := Tx(271);
  gestrichelt.Caption             := Tx(272);
  punktiert.Caption               := Tx(273);
  strichpunktiert.Caption         := Tx(274);
  strichPunktPunkt.Caption        := Tx(1182);
  Ausschnitt.Caption              := Tx(1607);
  GanzesBild.Caption              := Tx(1608);
  ausschneiden.Caption            := Tx(1609);
  Font.Caption                    := Tx(1621);
  LabelText.Visible               := false;
  ButtonUhrzeiger.Visible         := false;
  ButtonGegenUhr.Visible          := false;
  BildImportieren.Enabled         := false;
  Fortschritt.Visible             := false;
  MausBewegen                     := false;
  ButtonNaechste.Visible          := false;
  Grafik.Enabled                  := false;
  LabelSchritt.Visible            := false;
  ListBoxIsogonen.Visible         := false;
  LabelListe.Visible              := false;
  Farbe.Enabled                   := false;
  Grafik.Enabled                  := false;
  Linien.Enabled                  := false;
  Drucker.Enabled                 := false;
  Linien.Enabled                  := false;
  einfuegen.Enabled               := false;
  Ausschnitt.Enabled              := false;
  SpeedEinfuegen.Enabled          := false;
  SpeedFarbe.Enabled              := false;
  SpeedStaerke.Enabled            := false;
  SpeedDurchgezogen.Enabled       := false;
  SpeedGestrichelt.Enabled        := false;
  SpeedPunktiert.Enabled          := false;
  SpeedStrichPunkt.Enabled        := false;
  SpeedStrichPunktPunkt.Enabled   := false;
  SpeedGroesse.Enabled            := false;
  SpeedKopieren.Enabled           := false;
  SpeedEinrichten.Enabled         := false;
  SpeedDrucker.Enabled            := false;
  SpeedGanzesBild.Enabled         := false;
  SpeedAusschneiden.Enabled       := false;
  PanelSpeed.Visible              := false;
  Font.Enabled                    := false;
  ListBoxWinkel.Visible := false;
  ListBoxIsogonen.Clear;
  ListBoxWinkel.Clear;
  for i := 0 to 9 do
  begin
    ListBoxStrich.Items.Add(InttoStr(i+1));
  end;
  ListBoxStrich.Visible       := false;
  LabelStrich.Visible         := false;
  Vorz                        := 1;
  Punkt                       := '';
  Iso                         := 10;
  Xiso1                       := 0;
  Yiso1                       := 0;
  ButtonRueck.Caption         := Tx(1235);
  ButtonRueck.Visible         := false;
  LabelDatei.Caption          := Tx(211);
  MaskEditDatei.Visible       := false;
  LabelDatei.Visible          := false;
  MaskEditDatei.Text          := '';
  Ratio := ImageFoto.Width/ImageFoto.Height;
  MaskEditBBreite.EditMask := '99999;0; ';
  MaskEditBHoehe.EditMask  := '99999;0; ';
  BGroesse.Caption         := Tx(1439);
  LabelBBreite.Caption     := Tx(1440);
  LabelBHoehe.Caption      := Tx(1441);
  PanelGroesse.Visible     := false;
  PanelDrucken.Visible     := false;
  GroupBoxDrucken.Caption  := Tx(1413);
  LabelErl.Caption         := Tx(1414);
  LabelLinks.Caption       := Tx(1415);
  LabelOben.Caption        := Tx(1416);
  LabelLaenge.Caption      := Tx(1417);
  LabelGroesse.Caption     := Tx(888);
  LabelSchrift.Caption     := Tx(887);
  ButtonDrucken.Caption    := Tx(93);
  ButtonDabbrechen.Caption := Tx(882);
  Klick                    := false;
  einfuegen.Enabled        := false;
  SpeedEinfuegen.Enabled   := false;
  for i := 1 to 7 do
    ListBoxImport.Items.Add (Tx(1611+i));
  ListBoxImport.Visible := false;
  for i := 1 to 7 do
    ListBoxSpeichern.Items.Add (Tx(1611+i));
  ListBoxSpeichern.Visible := false;    
end;

procedure TForm74.ButtonBeendenClick(Sender: TObject);
begin
  SetCurrentDir(DirectS);
  RotBild.free;
  ImageFoto.Picture:=nil;
  Form74.Close;
  Form73.Close;
end;

procedure TForm74.ButtonZurueckClick(Sender: TObject);
begin
  SetCurrentDir(DirectS);
  RotBild.free;
  ImageFoto.Picture:=nil;
  Form74.Close;
end;

procedure TForm74.ButtonStartClick(Sender: TObject);
var
  i : byte;
begin
  if ClipBoard.HasFormat(CF_Bitmap) then
  begin
    einfuegen.Enabled := true;
    SpeedEinfuegen.Enabled := true;
  end;
  BHoeheI := round(BBreiteI/Ratio);
  BildImportieren.Enabled := true;
  LabelText.Visible       := true;
  PanelSpeed.Visible      := true;
  Font.Enabled            := true;
  ImageFoto.Canvas.Brush.Color := clWhite;
  ImageFoto.Canvas.Rectangle (0,0,ImageFoto.Width,ImageFoto.Height);
  ListBoxIsogonen.Clear;
  ListBoxWinkel.Clear;
  MaskEditDatei.Visible := false;
  LabelDatei.Visible    := false;
  MaskEditDatei.Text := '';
  for i := 1 to 36 do
    ListBoxWinkel.Items.Add ('   '+InttoStr(i*5));
  if ClipBoard.HasFormat(CF_Bitmap) then
  begin
    einfuegen.Enabled      := true;
    SpeedEinfuegen.Enabled := true;
  end;
end;

procedure TForm74.einfuegenClick(Sender: TObject);
var
  BHoehe  : word;
  BBreite : word;
  Ratio   : real;
begin
  ImageFoto.Visible := true;
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
  try
    ImageFoto.Canvas.StretchDraw (Rahmen, Bitmap);
  finally
    Bitmap.free;
  end;  
  RotBild := TBitmap.Create;
  RotBild.Assign (ImageFoto.Picture);
  Grafik.Enabled            := true;
  Drucker.Enabled           := true;
  SpeedDrucker.Visible      := true;
  SpeedKopieren.Visible     := true;
  Farbe.Enabled             := true;
  SpeedFarbe.Visible        := true;
  Linien.Enabled            := true;
  SpeedGroesse.Visible      := true;
  Ausschnitt.Enabled        := true;
  SpeedGanzesBild.Enabled   := true;
  SpeedAusschneiden.Enabled := true;
  LabelText.Caption         := Tx(1609)+'?';
  if DemoB then DemoText (ImageFoto.Canvas,10,ImageFoto.Height-20);
end;

procedure TForm74.SpeedEinfuegenClick(Sender: TObject);
begin
  einfuegenClick(Sender);
end;

procedure TForm74.ausDateiClick(Sender: TObject);
begin
  ListBoxImport.Visible := true;
end;

procedure TForm74.SpeedImportClick(Sender: TObject);
begin
  ausDateiClick(Sender);
end;

procedure TForm74.ListBoxImportClick(Sender: TObject);
var
  i : byte;
begin
  for i := 0 to ListboxImport.Items.Count-1 do
  begin
    if ListboxImport.Selected[i] then
    begin
      if i = 0 then oeffnenBMPClick(Sender);
      if i = 1 then oeffnenGIFClick(Sender);
      if i = 2 then oeffnenTIFClick(Sender);
      if i = 3 then oeffnenJPGClick(Sender);
      if i = 4 then oeffnenWMFClick(Sender);
      if i = 5 then oeffnenEMFClick(Sender);
      if i = 6 then oeffnenPNGClick(Sender);
    end;
  end;
  ListBoxImport.Visible := false;
end;

procedure TForm74.oeffnenBMPClick(Sender: TObject);
var
  Ratio   : real;
begin
  OpenPictureDialog1.Filter := 'Bitmap file (*.bmp)|*.bmp';
  if OpenPictureDialog1.Execute then
    CurrentFile := OpenPictureDialog1.FileName
  else exit;
  Bitmap           := Tbitmap.create;
  ImageFoto.Width  := 800;
  ImageFoto.Height := 580;
  try
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
  finally
    Bitmap.free;
  end;
  Ausschnitt.Enabled        := true;
  SpeedGanzesBild.Enabled   := true;
  SpeedAusschneiden.Enabled := true;
  LabelText.Caption         := Tx(1609)+'?';
end;

procedure TForm74.oeffnenGIFClick(Sender: TObject);
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
    Bitmap.free;
  end;
  Ausschnitt.Enabled        := true;
  SpeedGanzesBild.Enabled   := true;
  SpeedAusschneiden.Enabled := true;
  LabelText.Caption         := Tx(1609)+'?';
end;

procedure TForm74.oeffnenTIFClick(Sender: TObject);
var
  Bitmap  : TBitmap;
  Ratio   : real;
begin
  OpenDialog1.Filter := 'Tagged image file format (*.tif)|*.tif';
  if OpenDialog1.Execute then
    CurrentFile := OpenDialog1.FileName
  else exit;
  Bitmap := TBitmap.Create;
  try
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
  finally
    Bitmap.free;
  end;
  Ausschnitt.Enabled        := true;
  SpeedGanzesBild.Enabled   := true;
  SpeedAusschneiden.Enabled := true;
  LabelText.Caption         := Tx(1609)+'?';
end;

procedure TForm74.oeffnenJPGClick(Sender: TObject);
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
    Bitmap.free;
  end;
  Ausschnitt.Enabled        := true;
  SpeedGanzesBild.Enabled   := true;
  SpeedAusschneiden.Enabled := true;
  LabelText.Caption         := Tx(1609)+'?';
end;

procedure TForm74.oeffnenWMFClick(Sender: TObject);
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
    Bitmap.free;
  end;
  Ausschnitt.Enabled        := true;
  SpeedGanzesBild.Enabled   := true;
  SpeedAusschneiden.Enabled := true;
  LabelText.Caption         := Tx(1609)+'?';
end;

procedure TForm74.oeffnenEMFClick(Sender: TObject);
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
    Bitmap.free
  end;
  Ausschnitt.Enabled        := true;
  SpeedGanzesBild.Enabled   := true;
  SpeedAusschneiden.Enabled := true;
  LabelText.Caption         := Tx(1609)+'?';
end;

procedure TForm74.oeffnenPNGClick(Sender: TObject);
var
  BildPNG : TPngObject;
  Bitmap  : TBitmap;
  BBreite : word;
  BHoehe  : word;
  Rahmen  : TRect;
begin
  OpenPictureDialog1.DefaultExt := 'Portable Network Graphics (*.png)|*.png';
  OpenPictureDialog1.Filter     := 'Portable Network Graphics (*.png)|*.png';
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
  Ausschnitt.Enabled        := true;
  SpeedGanzesBild.Enabled   := true;
  SpeedAusschneiden.Enabled := true;
  LabelText.Caption         := Tx(1609)+'?';
end;

procedure TForm74.GanzesBildClick(Sender: TObject);
begin
  Klick := true;
  GDemo (ImageFoto.Canvas);
end;

procedure TForm74.SpeedGanzesBildClick(Sender: TObject);
begin
  GanzesBildclick(Sender);
end;

procedure TForm74.ausschneidenClick(Sender: TObject);
begin
  LabelText.Caption := Tx(1610);
  RechteckS         := 'LinksOben';
  Klick             := true;
end;

procedure TForm74.SpeedAusschneidenClick(Sender: TObject);
begin
  ausschneidenClick(Sender);
end;

procedure TForm74.ImageFotoMouseUp(Sender: TObject; Button: TMouseButton;
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

procedure TForm74.GDemo(Sender: TObject);
begin
  RotBild := TBitmap.Create;
  RotBild.Assign(ImageFoto.Picture.Graphic);
  Grafik.Enabled                 := true;
  Linien.Enabled                 := true;
  Drucker.Enabled                := true;
  SpeedFarbe.Enabled             := true;
  SpeedStaerke.Enabled           := true;
  SpeedDurchgezogen.Enabled      := true;
  SpeedGestrichelt.Enabled       := true;
  SpeedPunktiert.Enabled         := true;
  SpeedStrichPunkt.Enabled       := true;
  SpeedStrichPunktPunkt.Enabled  := true;
  SpeedGroesse.Enabled           := true;
  SpeedKopieren.Enabled          := true;
  SpeedEinrichten.Enabled        := true;
  SpeedDrucker.Enabled           := true;
  Farbe.Enabled                  := true;
  Linien.Enabled                 := true;
  MaskEditDatei.Visible          := true;
  LabelDatei.Visible             := true;
  MaskEditDatei.Text             := DateinameS[1];
  LabelText.Caption              := TX(1099);
  Punkt                          := 'PUNKT1';
  MaskEditDatei.Text             := CurrentFile;
  CurrentFile                    := '';
  Bitmap         := TBitmap.Create;
  Linien.Enabled := true;
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

procedure TForm74.ImageFotoMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  i, j     : integer;
  k, l     : integer;
  Bild     : array of array of TColor;
  Xkorr    : integer;
  Ykorr    : integer;
  Xm, Ym   : integer;
  TanDreh  : real;
  Dreh     : real;
  Laenge   : integer;
  Hoehe    : integer;
  xmR      : integer;
  ymR      : integer;
  X1, X2   : word;
  Y1, Y2   : word;
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
    Xmess := x;
    Ymess := y;
    ImageFoto.Picture.Assign(RotBild);
    Bitmap.Assign(ImageFoto.Picture);
    with ImageFoto.Canvas do
    begin
      Pen.Color   := IsogonFarbe;
      Brush.Color := IsogonFarbe;
      Ellipse (Xmess-3,Ymess-3,Xmess+3,Ymess+3);
    end;
    if Punkt = 'PUNKT1' then
    begin
      Xum1 := Xmess;
      Yum1 := Ymess;
      Punkt := 'PUNKT2';
      LabelText.Caption := Tx(1100);
      exit;
    end;
    if Punkt = 'PUNKT2' then
    begin
      MausBewegen          := false;
      Fortschritt.Visible  := true;
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
        Xm   := Width div 2 + Xmitte;
        Ym   := Height div 2 + Ymitte;
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
      Fortschritt.Visible   := false;
      for i := 1 to 600 do setlength(Bild[i],0);
      Bild := NIL;
      RotBild.free;
      RotBild := TBitmap.Create;
      RotBild.Assign(ImageFoto.Picture.Graphic);
      Punkt := '';
      LabelText.Caption     := '';
      LabelSchritt.Visible  := true;
      ListBoxWinkel.Visible := true;
      LabelText.Caption     := Tx(1234);
      exit;
    end;
    if Punkt = 'ISO1' then
    begin
      Xiso1 := Xmess;
      Yiso1 := Ymess;
      Punkt := 'ISO2';
      LabelText.Caption := Tx(1233);
      exit;
    end;
    if Punkt = 'ISO2' then
    begin
      Xiso2 := Xmess;
      Yiso2 := Ymess;
      ImageFoto.Picture.Assign(RotBild);
      with ImageFoto.Canvas do
      begin
        Pen.Color   := IsogonFarbe;
        Pen.Width   := Strich;
        moveto (Xiso2,Yiso2);
        Pen.Style := Linientyp;
        lineto (Xiso1,Yiso1);
      end;
      XisoR := Xiso1;
      YisoR := Yiso1;
      Xiso1 := Xiso2;
      Yiso1 := Yiso2;
    end;
    RotBild.Assign(ImageFoto.Picture.Graphic);
  end;
end;

procedure TForm74.ButtonUhrzeigerClick(Sender: TObject);
begin
  Vorz  := -1;
  Iso   := 0.0001;
  Xiso2 := Xiso1;
  Yiso2 := Yiso1;
  ButtonNaechste.Visible  := true;
  Iso                     := 0.0001;
  ListBoxIsogonen.Visible := true;
  LabelListe.Visible      := true;
  ListBoxIsogonen.Items.Add ('   0');
  Punkt                   := 'ISO1';
  Linien.Enabled          := false;
  ButtonRueck.Visible     := true;
  ButtonNaechste.Visible  := true;
end;

procedure TForm74.ButtonGegenUhrClick(Sender: TObject);
begin
  Vorz  := 1;
  Iso   := 0.0001;
  Xiso2 := Xiso1;
  ButtonNaechste.Visible  := true;
  Iso                     := 0.0001;
  ListBoxWinkel.Visible   := true;
  LabelSchritt.Visible    := true;
  ListBoxIsogonen.Visible := true;
  LabelListe.Visible      := true;
  ListBoxIsogonen.Items.Add ('   0');
  Punkt               := 'ISO1';
  LabelText.Caption   := Tx(1234);
  Linien.Enabled      := false;
  ButtonRueck.Visible := true;
  ButtonNaechste.Visible  := true;
end;

procedure TForm74.ImageFotoMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
var
  YR, YL : integer;
  Bo  : real;
begin
  if (x>=0) and (x<=width) and (Y>=0) and (Y<=height) then
  begin
    Bo := Pi/180;
    if ImageFoto.Visible then
    begin
      if MausBewegen then
      begin
        ImageFoto.Picture.Assign(RotBild);
        with ImageFoto.Canvas do
        begin
          Pen.Color   := IsogonFarbe;
          Pen.Width   := 1;
          Brush.Color := IsogonFarbe;
          moveto (x,y);
          ellipse(x+3,y+3,x-3,y-3);
          YR := y - round((width-x)*tan(Iso*Bo));
          if YR >=0 then lineto (Width,YR);
          lineto (width+round(YR/(tan(Iso*Bo))),0);
          moveto (x,y);
          YL := y + round(x*tan(Iso*Bo));
          lineto (0, YL);
        end;
      end;
    end;
  end;
end;

procedure TForm74.alsBMPspeichernClick(Sender: TObject);
var
  Rahmen : TRect;
begin
  Bitmap        := TBitmap.Create;
  Bitmap.Width  := BBreiteI;
  Bitmap.Height := BHoeheI;
  Rahmen        := Rect(0,0,Bitmap.Width,Bitmap.Height);
  Bitmap.Canvas.Stretchdraw(Rahmen,ImageFoto.Picture.Graphic);
  try
    if CurrentFile <> '' then Bitmap.SaveToFile(CurrentFile)
    else alsBMPspeichernUnterClick(Sender);
  finally
    Bitmap.Free;
    Bitmap   := nil;
  end;
end;

procedure TForm74.alsBMPspeichernUnterClick(Sender: TObject);
begin
  SavePictureDialog1.DefaultExt := GraphicExtension(TBitmap);
  SavePictureDialog1.Filter := 'Bitmap (*.bmp)|*.BMP';
  if SavePictureDialog1.Execute then
  begin
    CurrentFile := SavePictureDialog1.Filename;
    alsBMPspeichernClick(Sender);
  end;
end;

procedure TForm74.SpeedBMPspeichernUnterClick(Sender: TObject);
begin
  alsBMPspeichernUnterClick(Sender);
end;

procedure TForm74.alsJPGspeichernClick(Sender: TObject);
var
  DateiJ   : string;
  Rahmen   : TRect;
  Bild     : TBitmap;
begin
  JpgDatei    := TJpegImage.Create;
  Bild        := TBitmap.Create;
  Bild.Width  := BBreiteI;
  Bild.Height := BHoeheI;
  Rahmen      := Rect(0,0,Bild.Width,Bild.Height);
  Bild.Canvas.Stretchdraw(Rahmen,ImageFoto.Picture.Graphic);
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
      else alsJPGspeichernUnterClick(Sender);
    end;
  finally
    JpgDatei.Free;
    Bild.Free;
    CurrentFile := '';
  end;
end;

procedure TForm74.alsJPGspeichernUnterClick(Sender: TObject);
begin
  SavePictureDialog1.DefaultExt := GraphicExtension(TJpegImage);
  SavePictureDialog1.Filter     := 'JPG-Datei (*.jpg)|*.jpg';
  if SavePictureDialog1.Execute then
  begin
    CurrentFile := SavePictureDialog1.Filename;
    alsJPGspeichernClick(Sender);
  end;
end;

procedure TForm74.SpeedJPGspeichernUnterClick(Sender: TObject);
begin
  alsJPGspeichernUnterClick(Sender);
end;

procedure TForm74.FontClick(Sender: TObject);
begin
  WaehlFont(FontDialog1);
end;

procedure TForm74.SpeedFontClick(Sender: TObject);
begin
  FontClick(Sender);
end;

procedure TForm74.BGroesseClick(Sender: TObject);
begin
  PanelGroesse.Visible    := true;
  CheckBoxBild.State      := cbUnchecked;
  MaskEditBBreite.Text    := IntTostr(BBreiteI);
  MaskEditBHoehe.Text     := IntToStr(BHoeheI);
end;

procedure TForm74.SpeedGroesseClick(Sender: TObject);
begin
  BGroesseClick(Sender);
end;

procedure TForm74.MaskEditBBreiteKeyPress(Sender: TObject; var Key: Char);
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
      BHoeheI  := round(BBreiteI/Ratio);
      KonfigZeileS[124] := 'Save Image Width (Isogonen):,'+BBreiteS;
      MaskEditBHoehe.Text := IntToStr(BHoeheI);
      assignFile(Datei,FabricS+'\'+'Fabric.ini');
      rewrite (Datei);
      for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
      closefile (Datei);
    end;
  end;
end;

procedure TForm74.MaskEditBHoeheKeyPress(Sender: TObject; var Key: Char);
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
      BBreiteI := round(BHoeheI*Ratio);
      KonfigZeileS[124] := 'Save Image Width (Isogonen):,'+IntToStr(BBreiteI);
      MaskEditBBreite.Text := IntToStr(BBreiteI);
    end;
    assignFile(Datei,FabricS+'\'+'Fabric.ini');
    rewrite (Datei);
    for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
    closefile (Datei);
  end;
end;

procedure TForm74.CheckBoxBildClick(Sender: TObject);
begin
  PanelGroesse.Visible := false;
end;

procedure TForm74.kopierenClick(Sender: TObject);
begin
  ClipBoard.Assign (ImageFoto.Picture);
  einfuegen.Enabled      := true;
  SpeedEinfuegen.Enabled := true;
end;

procedure TForm74.SpeedKopierenClick(Sender: TObject);
begin
  kopierenClick(Sender);
end;

procedure TForm74.SpeichernClick(Sender: TObject);
begin
  ListBoxSpeichern.Visible := true;
end;

procedure TForm74.SpeedSpeichernClick(Sender: TObject);
begin
  SpeichernClick(Sender);
end;

procedure TForm74.ListBoxSpeichernClick(Sender: TObject);
begin
  BBreiteSt := BBreiteI;
  GrafikSpeichern (ImageFoto, ListBoxSpeichern, Ratio,
                   SavePictureDialog1, SaveDialog1);
end;


procedure TForm74.DeinrichtenClick(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TForm74.SpeedEinrichtenClick(Sender: TObject);
begin
  DeinrichtenClick(Sender);
end;

procedure TForm74.DruckenClick(Sender: TObject);
var
  i      : byte;
begin
  PanelDrucken.Visible    := true;
  ButtonDrucken.Enabled   := false;
  MaskEditLinks.EditMask  := '9999;0; ';
  MaskEditOben.EditMask   := '9999;0; ';
  MaskEditLaenge.EditMask := '9999;0; ';
  MaskEditLinks.Text      := IntToStr(10);
  MaskEditOben.Text       := IntToStr(10);
  MaskEditLaenge.Text     := IntToStr(80);
  MaskEditSchrift.Clear;
  For i := 4 to 40 do
    ListBoxSchrift.Items.Add (IntToStr(i));
  MausBewegen := false;
end;

procedure TForm74.SpeedDruckerClick(Sender: TObject);
begin
  druckenClick(Sender);
end;

procedure TForm74.ButtonNaechsteClick(Sender: TObject);
var
  IsoS    : string;
begin
  Iso := Iso + IWinkel*Vorz;;
  if abs(Iso) > 181 then exit;
  IsoS := InttoStr(round(Iso));
  ListBoxIsogonen.Items.Add('   ' + IsoS);
  Xiso2 := Xiso1;
  Yiso2 := Yiso1;
  Punkt := 'ISO1';
  LabelText.Caption := Tx(1232);
end;

procedure TForm74.ButtonRueckClick(Sender: TObject);
begin
  ImageFoto.Canvas.Draw(0,0,Bitmap);
  RotBild.Assign(ImageFoto.Picture);
  Xiso1 := XisoR;
  Yiso1 := YisoR;
  Punkt := 'ISO2';
end;

procedure TForm74.ListBoxWinkelClick(Sender: TObject);
var
  i       : byte;
  WinkelS : string;
begin
  Mausbewegen := true;
  LabelText.Caption := Tx(1232);
  for i := 1 to ListBoxWinkel.Items.Count-1 do
  if ListboxWinkel.Selected[i] then WinkelS := ListBoxWinkel.Items.Strings[i];
  IWinkel := StrtoInt(WinkelS);
  ButtonUhrzeiger.Visible := true;
  ButtonGegenUhr.Visible  := true;
end;

procedure TForm74.FarbeIsogonenClick(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  FarbeS : string;
begin
  FarbeS := 'clWhite';
  if ColorDialog1.Execute then IsogonFarbe := ColorDialog1.Color;
  FarbeS := ColorToString (IsogonFarbe);
  KonfigZeileS[98] := 'Colour of isogons          :,'+FarbeS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
end;

procedure TForm74.SpeedFarbeClick(Sender: TObject);
begin
  FarbeIsogonenClick(Sender);
end;

procedure TForm74.ListBoxSchriftClick(Sender: TObject);
var
  i        : byte;
  SchriftS : string[2];
begin
  for i := 1 to ListboxSchrift.Items.Count-1 do
  begin
    if ListboxSchrift.Selected[i] then SchriftS := ListBoxSchrift.Items.Strings[i];
  end;
  Schrift := StrToInt(SchriftS);
end;

procedure TForm74.MaskEditSchriftKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(13) then
  begin
    TextS := MaskEditSchrift.Text;
    ButtonDrucken.Enabled := true;
  end;
end;

procedure TForm74.ButtonDruckenClick(Sender: TObject);
var
  Bitmap  : TBitmap;
  Fenster : TRect;
  LRand   : word;
  ORand   : word;
  BLaenge : word;
begin
  Links   := StrToInt(MaskEditLinks.Text);
  LRand   := round(Links*Printer.PageWidth/100);
  Oben    := StrToInt(MaskEditOben.Text);
  ORand   := round(Oben*Printer.Pagewidth/100);
  Laenge  := StrToInt(MaskEditLaenge.Text);
  BLaenge := round(Laenge*Printer.Pagewidth/100);
  with Fenster do
  begin
    Left   := LRand;
    Top    := ORand;
    Right  := LRand + BLaenge;
    Bottom := ORand + round(637*BLaenge/709);
  end;
  Bitmap:=TBitmap.Create;
  try
    Bitmap.Assign(ImageFoto.picture.graphic);
    with Printer do
    begin
      Canvas.Font.Size  := Schrift;
      Canvas.Font.Name  := 'Times New Roman';
      Canvas.Font.Color := clBlack;
      BeginDoc;
        Canvas.StretchDraw(Fenster,Bitmap);
        Canvas.Textout (Fenster.Left,Fenster.Bottom, TextS);
      EndDoc;
    end;
  finally
    Bitmap.free;
  end;
  PanelDrucken.Visible := false;
end;

procedure TForm74.ButtonDabbrechenClick(Sender: TObject);
begin
  PanelDrucken.Visible := false;
end;

procedure TForm74.HilfeClick(Sender: TObject);
var
  DateiS      : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\74Isogonen-plot.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\74Isogons-plot.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm74.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Isogonen.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'Isogons.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm74.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm74.StrichstaerkeClick(Sender: TObject);
begin
  LabelStrich.Visible   := true;
  ListBoxStrich.Visible := true;
  LinienTyp             := psSolid;
end;

procedure TForm74.SpeedStaerkeClick(Sender: TObject);
begin
  StrichstaerkeClick(Sender);
end;

procedure TForm74.ListBoxStrichClick(Sender: TObject);
var
  i       : byte;
  StrichS : string;
  Datei   : TextFile;
begin
  Strich  := 1;
  StrichS := '1';
  for i := 1 to ListBoxStrich.Items.Count-1 do
    if ListboxStrich.Selected[i] then
      StrichS := ListBoxStrich.Items.Strings[i];
  KonfigZeileS[99] := 'Pen width (in pixel)       :,'+StrichS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  Strich := StrtoInt(StrichS);
  LabelStrich.Visible   := false;
  ListBoxStrich.Visible := false;
end;

procedure TForm74.durchgezogenClick(Sender: TObject);
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

procedure TForm74.SpeedDurchgezogenClick(Sender: TObject);
begin
  durchgezogenClick(Sender);
end;

procedure TForm74.gestricheltClick(Sender: TObject);
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

procedure TForm74.punktiertClick(Sender: TObject);
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

procedure TForm74.SpeedGestricheltClick(Sender: TObject);
begin
  punktiertClick(Sender);
end;

procedure TForm74.strichpunktiertClick(Sender: TObject);
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

procedure TForm74.SpeedStrichPunktClick(Sender: TObject);
begin
  strichpunktiertClick(Sender);
end;

procedure TForm74.strichPunktPunktClick(Sender: TObject);
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

procedure TForm74.SpeedStrichPunktPunktClick(Sender: TObject);
begin
  strichPunktPunktClick(Sender);
end;

procedure TForm74.SpeedHilfeClick(Sender: TObject);
begin
  HilfeClick(Sender);
end;

procedure TForm74.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm74.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

end.