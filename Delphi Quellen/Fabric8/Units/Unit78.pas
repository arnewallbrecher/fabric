unit Unit78;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, ExtCtrls, Buttons, Texte, StdCtrls, Menus,
  Globvar, Plotten, Clipbrd, Jpeg, ExtDlgs, Basic, ComCtrls,
  Math, EinAusga, Mask, Printers, Drucken, Shellapi,ehsHelpRouter,
  GifImage, ReadTiff, Bmp2Tiff, PngImage;

type
  TForm78 = class(TForm)
    PanelSpeed: TPanel;
    SpeedHilfe: TSpeedButton;
    SpeedHandbuch: TSpeedButton;
    SpeedEinfuegen: TSpeedButton;
    SpeedFarbe: TSpeedButton;
    SpeedSpeichern: TSpeedButton;
    SpeedLiteratur: TSpeedButton;
    ImageFoto: TImage;
    ButtonStart: TButton;
    ButtonZuruck: TButton;
    ButtonEnde: TButton;
    MainMenu1: TMainMenu;
    BildImportieren: TMenuItem;
    einfuegen: TMenuItem;
    ausDatei: TMenuItem;
    OpenPictureDialog1: TOpenPictureDialog;
    LabelText: TLabel;
    BildKorrigieren: TMenuItem;
    BildRotieren: TMenuItem;
    Fortschritt: TProgressBar;
    ListBoxDaten: TListBox;
    KeineKorrektur: TMenuItem;
    Farbe: TMenuItem;
    FarbeLineation: TMenuItem;
    ColorDialog1: TColorDialog;
    PanelDaten: TPanel;
    LabelLineationen: TLabel;
    LabelAzimut: TLabel;
    PanelZahl: TPanel;
    LabelZahlD: TLabel;
    LabelZahl: TLabel;
    ButtonDbeenden: TButton;
    ButtonPlotten: TButton;
    DatenSpeichern: TMenuItem;
    speichern: TMenuItem;
    speichernUnter: TMenuItem;
    SaveDialog1: TSaveDialog;
    GrafikSpeichern: TMenuItem;
    Gkopieren: TMenuItem;
    SavePictureDialog1: TSavePictureDialog;
    Linien: TMenuItem;
    Strichstaerke: TMenuItem;
    Linienstil: TMenuItem;
    ListBoxStrich: TListBox;
    LabelStrich: TLabel;
    durchgezogen: TMenuItem;
    gestrichelt: TMenuItem;
    punktiert: TMenuItem;
    strichpunktiert: TMenuItem;
    StrichPunktPunkt: TMenuItem;
    Drucken: TMenuItem;
    Deinrichten: TMenuItem;
    Drucker: TMenuItem;
    PrinterSetupDialog1: TPrinterSetupDialog;
    Paneldrucken: TPanel;
    GroupBoxdrucken: TGroupBox;
    Panel7: TPanel;
    LabelRdrucken: TLabel;
    MaskEditRdrucken: TMaskEdit;
    Panel8: TPanel;
    LabelMitte: TLabel;
    LabelXdrucken: TLabel;
    LabelYdrucken: TLabel;
    MaskEditXdrucken: TMaskEdit;
    Panel9: TPanel;
    CheckBoxdrucken: TCheckBox;
    MaskEditYdrucken: TMaskEdit;
    Panel10: TPanel;
    CheckBoxAbbruch: TCheckBox;
    Panel11: TPanel;
    LabelUnterschrift: TLabel;
    LabelSchrift: TLabel;
    MaskEditUnterschrift: TMaskEdit;
    ListBoxSchrift: TListBox;
    RadioGroup: TRadioGroup;
    RadioButtonLinks: TRadioButton;
    RadioButtonZentriert: TRadioButton;
    RadioButtonRechts: TRadioButton;
    ButtonRueck: TButton;
    SpeedKopieren: TSpeedButton;
    SpeedDrucker: TSpeedButton;
    Handbuch: TMenuItem;
    Literatur: TMenuItem;
    StatusBar: TStatusBar;
    SpeedRotieren: TSpeedButton;
    SpeedKeineKorrektur: TSpeedButton;
    ButtonAuswertung: TButton;
    MaskEditDatei: TMaskEdit;
    LabelDatei: TLabel;
    SpeedEinrichten: TSpeedButton;
    SpeedSStaerke: TSpeedButton;
    SpeedDurchgezogen: TSpeedButton;
    SpeedGestrichelt: TSpeedButton;
    SpeedPunktiert: TSpeedButton;
    SpeedStrichPunkt: TSpeedButton;
    SpeedStrichPunktPunkt: TSpeedButton;
    Hilfe: TMenuItem;
    OpenDialog1: TOpenDialog;
    SpeedHolTIF: TSpeedButton;
    SpeedHolJPG: TSpeedButton;
    SpeedHolWMF: TSpeedButton;
    SpeedHolEMF: TSpeedButton;
    Ausschnitt : TMenuItem;
    GanzesBild : TMenuItem;
    ausschneiden: TMenuItem;
    SpeedAusschneiden: TSpeedButton;
    SpeedGanzesBild: TSpeedButton;
    ListBoxImport: TListBox;
    SpeedImport: TSpeedButton;
    ListBoxSpeichern: TListBox;
    BildSpeichern: TMenuItem;
    SpeedBspeichern: TSpeedButton;
    procedure FormActivate(Sender: TObject);
    procedure SpeedHilfeClick(Sender: TObject);
    procedure ButtonStartClick(Sender: TObject);
    procedure einfuegenClick(Sender: TObject);
    procedure ButtonZuruckClick(Sender: TObject);
    procedure ButtonEndeClick(Sender: TObject);
    procedure BildRotierenClick(Sender: TObject);
    procedure ImageFotoMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure KeineKorrekturClick(Sender: TObject);
    procedure FarbeLineationClick(Sender: TObject);
    procedure ButtonDbeendenClick(Sender: TObject);
    procedure ButtonPlottenClick(Sender: TObject);
    procedure speichernClick(Sender: TObject);
    procedure speichernUnterClick(Sender: TObject);
    procedure alsBMPClick(Sender: TObject);
    procedure alsJPGClick(Sender: TObject);
    procedure GkopierenClick(Sender: TObject);
    procedure StrichstaerkeClick(Sender: TObject);
    procedure ListBoxStrichClick(Sender: TObject);
    procedure durchgezogenClick(Sender: TObject);
    procedure gestricheltClick(Sender: TObject);
    procedure punktiertClick(Sender: TObject);
    procedure strichpunktiertClick(Sender: TObject);
    procedure StrichPunktPunktClick(Sender: TObject);
    procedure DeinrichtenClick(Sender: TObject);
    procedure DruckerClick(Sender: TObject);
    procedure MaskEditUnterschriftKeyPress(Sender: TObject; var Key: Char);
    procedure ListBoxSchriftClick(Sender: TObject);
    procedure RadioButtonLinksClick(Sender: TObject);
    procedure RadioButtonZentriertClick(Sender: TObject);
    procedure RadioButtonRechtsClick(Sender: TObject);
    procedure CheckBoxdruckenClick(Sender: TObject);
    procedure CheckBoxAbbruchClick(Sender: TObject);
    procedure ButtonRueckClick(Sender: TObject);
    procedure SpeedEinfuegenClick(Sender: TObject);
    procedure SpeedFarbeClick(Sender: TObject);
    procedure SpeedKopierenClick(Sender: TObject);
    procedure SpeedDruckerClick(Sender: TObject);
    procedure HandbuchClick(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
    procedure SpeedLiteraturClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ShowHint(Sender: TObject);
    procedure SpeedSpeichernClick(Sender: TObject);
    procedure SpeedRotierenClick(Sender: TObject);
    procedure SpeedKeineKorrekturClick(Sender: TObject);
    procedure ButtonAuswertungClick(Sender: TObject);
    procedure SpeedEinrichtenClick(Sender: TObject);
    procedure SpeedDurchgezogenClick(Sender: TObject);
    procedure SpeedSStaerkeClick(Sender: TObject);
    procedure SpeedGestricheltClick(Sender: TObject);
    procedure SpeedPunktiertClick(Sender: TObject);
    procedure SpeedStrichPunktClick(Sender: TObject);
    procedure SpeedStrichPunktPunktClick(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure HilfeClick(Sender: TObject);
    procedure ausBMPClick(Sender: TObject);
    procedure ausJPGClick(Sender: TObject);
    procedure ausBild;
    procedure ausBildEnde;
    procedure ausGIFClick(Sender: TObject);
    procedure ausTIFClick(Sender: TObject);
    procedure ausWMFClick(Sender: TObject);
    procedure ausEMFClick(Sender: TObject);
    procedure alsGIFClick(Sender: TObject);
    procedure alsTIFClick(Sender: TObject);
    procedure alsWMFClick(Sender: TObject);
    procedure alsEMFClick(Sender: TObject);
    procedure ausschneidenClick(Sender: TObject);
    procedure ganzesBildClick(Sender: TObject);
    procedure ImageFotoMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SpeedAusschneidenClick(Sender: TObject);
    procedure SpeedGanzesBildClick(Sender: TObject);
    procedure ausPNGClick(Sender: TObject);
    procedure ausDateiClick(Sender: TObject);
    procedure ListBoxImportClick(Sender: TObject);
    procedure SpeedImportClick(Sender: TObject);
    procedure alsPNGClick(Sender: TObject);
    procedure BildSpeichernClick(Sender: TObject);
    procedure ListBoxSpeichernClick(Sender: TObject);
    procedure SpeedBspeichernClick(Sender: TObject);
  end;

var
  Form78      : TForm78;
  Bitmap      : TBitmap;
  JPGDatei    : TJpegImage;
  CurrentFile : string;
  Punkt       : string;
  Xmess       : word;
  Ymess       : word;
  Xum1, Yum1  : word;
  Xum2, Yum2  : word;
  Maus        : boolean;
  Bo          : real;
  SBild       : TBitmap;
  Zahl        : word;
  BuendigS    : string;
  RBild       : TBitmap;
  Klick       : boolean;
  RechteckS   : string;
  Xlinks      : word;
  Ylinks      : word;
  Xrechts     : word;
  Yrechts     : word;

implementation
uses Unit15, Unit17, Unit19;
{$R *.DFM}

procedure TForm78.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm78.ShowHint(Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm78.FormActivate(Sender: TObject);
var
  i : byte;
begin
  Top    := 10;
  Left   := 70;
  Width  := 1050;
  Height := 750;
  Form78.Caption := Tx(1246);
  Bo := Pi/180;
  setlength (AziFeld, MaxDaten);
  setlength (FalFeld, MaxDaten);
  ButtonZuruck.Hint           := Hilf(18);
  ButtonEnde.Hint             := Hilf(19);
  SpeedEinfuegen.Hint         := Hilf(246);
  Speedkopieren.Hint          := Hilf(262);
  SpeedFarbe.Hint             := Hilf(486);
  SpeedDrucker.Hint           := Hilf(309);
  SpeedHandbuch.Hint          := Hilf(274);
  SpeedHilfe.Hint             := Hilf(210);
  SpeedSpeichern.Hint         := Hilf(487);
  SpeedLiteratur.Hint         := Hilf(462);
  SpeedRotieren.Hint          := Hilf(488);
  SpeedKeineKorrektur.Hint    := Hilf(489);
  SpeedEinrichten.Hint        := Hilf(505);
  SpeedAusschneiden.Hint      := Hilf(678);
  SpeedGanzesBild.Hint        := Hilf(679);
  SpeedSStaerke.Hint          := Hilf(463);
  SpeedDurchgezogen.Hint      := Hilf(428);
  SpeedGestrichelt.Hint       := Hilf(429);
  SpeedPunktiert.Hint         := Hilf(431);
  SpeedStrichPunkt.Hint       := Hilf(430);
  SpeedStrichPunktPunkt.Hint  := Hilf(526);
  SpeedImport.Hint            := Hilf(368);
  SpeedBspeichern.Hint        := Hilf(264);
  BildImportieren.Enabled  := false;
  ButtonEnde.Caption       := Tx(53);
  ButtonZuruck.Caption     := Tx(30);
  BildImportieren.Caption  := Tx(1068);
  Einfuegen.Caption        := Tx(1069);
  AusDatei.Caption         := Tx(57);
  Hilfe.Caption            := Tx(162)+' (F1)';
  SpeedHilfe.Hint          := Hilf(210);
  SpeedHandbuch.Hint       := Hilf(274);
  LabelText.Caption        := '';
  BildKorrigieren.Caption  := Tx(1105);
  BildRotieren.Caption     := Tx(1247);
  Fortschritt.Visible      := false;
  BildKorrigieren.Enabled  := false;
  Ausschnitt.Caption       := Tx(1607);
  ganzesBild.Caption       := Tx(1608);
  ausschneiden.Caption     := Tx(1609);
  Maus                     := false;
  KeineKorrektur.Caption   := Tx(1240);
  Farbe.Caption            := Tx(275);
  FarbeLineation.Caption   := Tx(1252);
  LabelLineationen.Caption := Tx(1253);
  LabelAzimut.Caption      := Tx(1254);
  ListBoxDaten.Visible     := false;
  PanelDaten.Visible       := false;
  PanelZahl.Visible        := false;
  LabelZahlD.Caption       := Tx(646);
  ButtonDbeenden.Caption   := Tx(106);
  ButtonPlotten.Caption    := Tx(696);
  ButtonDBeenden.Visible   := false;
  ButtonPlotten.Visible    := false;
  DatenSpeichern.Caption   := Tx(86);
  speichern.Caption        := Tx(87);
  speichernUnter.Caption   := Tx(88);
  DatenSpeichern.Enabled   := false;
  GrafikSpeichern.Caption  := Tx(1071);
  BildSpeichern.Caption    := Tx(87);
  Linien.Caption           := Tx(525);
  Strichstaerke.Caption    := Tx(1181);
  Linienstil.Caption       := Tx(847);
  LabelStrich.Caption      := Tx(1181);
  LabelStrich.Visible      := false;
  for i := 1 to 10 do
    ListBoxStrich.Items.Add (IntToStr(i));
  ListBoxStrich.Visible    := false;
  durchgezogen.Caption     := Tx(526);
  gestrichelt.Caption      := Tx(527);
  punktiert.Caption        := Tx(645);
  strichpunktiert.Caption  := Tx(528);
  StrichPunktPunkt.Caption := Tx(1182);
  LabelZahl.Caption        := '';
  Drucken.Caption          := Tx(92);
  Deinrichten.Caption      := TX(935);
  Drucker.Caption          := Tx(936);
  ButtonRueck.Visible      := false;
  Farbe.Enabled            := false;
  Linien.Enabled           := false;
  GrafikSpeichern.Enabled  := false;
  Drucken.Enabled          := false;
  Handbuch.Caption         := Tx(1055)+' (F2)';
  Literatur.Caption        := Tx(1183)+' (F5)';
  ButtonAuswertung.Caption := Tx(349);
  ButtonAuswertung.Visible := false;
  PanelSpeed.Visible       := false;
  SpeedFarbe.Enabled       := false;
  SpeedSpeichern.Enabled   := false;
  SpeedKopieren.Enabled    := false;
  SpeedDrucker.Enabled     := false;
  SpeedRotieren.Enabled    := false;
  SpeedKeineKorrektur.Enabled   := false;
  SpeedEinrichten.Enabled       := false;
  MaskEditDatei.Text            := '';
  LabelDatei.Caption            := Tx(419);
  ButtonRueck.Caption           := Tx(1235);
  Gkopieren.Caption             := Tx(282);
  SpeedDurchgezogen.Enabled     := false;
  SpeedGestrichelt.Enabled      := false;
  SpeedPunktiert.Enabled        := false;
  SpeedStrichPunkt.Enabled      := false;
  SpeedStrichPunktPunkt.Enabled := false;
  SpeedSStaerke.Enabled         := false;
  einfuegen.Enabled             := false;
  SpeedEinfuegen.Enabled        := false;
  Klick                         := false;
  Ausschnitt.Enabled            := false;
  SpeedGanzesBild.Enabled       := false;
  SpeedAusschneiden.Enabled     := false;
  RechteckS                     := '';
  MaskEditDatei.Visible         := false;
  LabelDatei.Visible            := false;
  For i := 1 to 7 do
    ListBoxImport.Items.Add (Tx(1611+i));
  ListBoxImport.Visible := false;
  for i := 1 to 7 do
    ListBoxSpeichern.Items.Add (Tx(1611+i));
  ListBoxSpeichern.Visible := false;
  BildSpeichern.Enabled    := false;
end;

procedure TForm78.ButtonStartClick(Sender: TObject);
begin
  if ClipBoard.HasFormat(CF_Bitmap) then
  begin
    einfuegen.Enabled      := true;
    SpeedEinfuegen.Enabled := true;
  end;
  PanelSpeed.Visible := true;
  Bildimportieren.Enabled := true;
  With ImageFoto.Canvas do
  begin
    Brush.Color := clWhite;
    Rectangle (0,0,Width,Height);;
  end;
  LabelText.Caption        :=  Tx(1158);
  ButtonDbeenden.Visible   := false;
  ButtonPlotten.Visible    := false;
  ListBoxDaten.Clear;
end;

procedure TForm78.ButtonZuruckClick(Sender: TObject);
begin
  AziFeld := Nil;
  FalFeld := Nil;
  ImageFoto.Picture:=nil;
  Form78.Close;
  SetCurrentDir (DirectS);
end;

procedure TForm78.ButtonEndeClick(Sender: TObject);
begin
  AziFeld := Nil;
  FalFeld := Nil;
  ImageFoto.Picture:=nil;
  Form78.Close;
  Form15.Close;
  SetCurrentDir (DirectS);
end;

procedure TForm78.einfuegenClick(Sender: TObject);
var
  Rahmen  : TRect;
  BHoehe  : word;
  BBreite : word;
  Ratio   : real;
begin
  if not ClipBoard.HasFormat(CF_Bitmap) then
  begin
    MessageDlg(Tx(1074),mtInformation,[mbOK],0);
    exit;
  end
  else
  begin
    ImageFoto.Canvas.CopyMode := cmSrcCopy;
    Bitmap := TBitmap.Create;
    try
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
    finally
      Bitmap.free;
      Bitmap:=nil;
    end;
  end;
  BildKorrigieren.Enabled := true;
  SpeedRotieren.Enabled   := true;
  SpeedKeineKorrektur.Enabled := true;
  LabelText.Caption       := Tx(1105)+'?';
  Klick := true;
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
end;

procedure TForm78.SpeedEinfuegenClick(Sender: TObject);
begin
  einfuegenClick(Sender);
end;

procedure TForm78.ausDateiClick(Sender: TObject);
begin
  ListBoxImport.Visible := true;
end;

procedure TForm78.SpeedImportClick(Sender: TObject);
begin
  ausDateiClick(Sender);
end;

procedure TForm78.ListBoxImportClick(Sender: TObject);
var
  i : byte;
begin
  for i := 0 to ListboxImport.Items.Count-1 do
  begin
    if ListboxImport.Selected[i] then
    begin
      if i = 0 then ausBMPClick(Sender);
      if i = 1 then ausGIFClick(Sender);
      if i = 2 then ausTIFClick(Sender);
      if i = 3 then ausJPGClick(Sender);
      if i = 4 then ausWMFClick(Sender);
      if i = 5 then ausEMFClick(Sender);
      if i = 6 then ausPNGClick(Sender);
    end;
  end;
  ListBoxImport.Visible := false;
end;

procedure TForm78.ausBMPClick(Sender: TObject);
var
  BBreite : word;
  BHoehe  : word;
  Rahmen  : TRect;
begin
  AusBild;
  OpenPictureDialog1.DefaultExt := 'Windows bitmap (*.bmp)|*.bmp';
  OpenPictureDialog1.Filter     := 'Windows bitmap (*.bmp)|*.bmp';
  if OpenPictureDialog1.Execute then
    CurrentFile := OpenPictureDialog1.FileName
  else exit;
  if CurrentFile = '' then exit;
  MaskEditDatei.Text := CurrentFile;
  Bitmap := Tbitmap.create;
  try
    Bitmap.LoadFromFile(CurrentFile);
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
  finally
    Bitmap.free;
  end;
  Klick := true;
  LabelText.Caption := Tx(1105)+'?';
  MaskEditDatei.Visible := true;
  LabelDatei.Visible    := true;
  ausBildEnde;
end;

procedure TForm78.ausGIFClick(Sender: TObject);
Var
  GBild   : TGIFImage;
  BBreite : word;
  BHoehe  : word;
  Rahmen  : TRect;
begin
  AusBild;
  OpenPictureDialog1.DefaultExt := 'Compuserve Gif file (*.gif)|*.gif';
  OpenPictureDialog1.Filter     := 'Compuserve Gif file (*.gif)|*.gif';
  if OpenPictureDialog1.Execute then
    CurrentFile := OpenPictureDialog1.FileName
  else exit;
  GBild  := TGifImage.Create;
  try
    GBild.LoadFromFile(CurrentFile);
    Bitmap := TBitmap.Create;
    Bitmap.Assign(GBild);
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
  finally
    GBild.free;
    Bitmap.free;
  end;
  Klick := true;
  LabelText.Caption := Tx(1105)+'?';
  AusBildEnde;
end;

procedure TForm78.ausTIFClick(Sender: TObject);
var
  BBild   : TBitmap;
  BBreite : word;
  BHoehe  : word;
  Rahmen  : TRect;
begin
  AusBild;
  OpenDialog1.DefaultExt := 'Tagged image file format (*.tif)|*.tif';
  OpenDialog1.Filter     := 'Tagged image file format (*.tif)|*.tif';
  if OpenDialog1.Execute then
    CurrentFile := OpenDialog1.FileName
  else exit;
  BBild  := TBitmap.Create;
  try
    LoadTiffFromFile(CurrentFile,BBild);
    Ratio := BBild.Height/BBild.Width;
    if BBild.Width > BBild.Height then
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
    ImageFoto.Canvas.StretchDraw (Rahmen, BBild);
  finally
    BBild.Free;
  end;
  Klick := true;
  LabelText.Caption := Tx(1105)+'?';
  AusBildEnde;
end;

procedure TForm78.ausJPGClick(Sender: TObject);
var
  Bild    : TJPEGImage;
  BBreite : word;
  BHoehe  : word;
  Rahmen  : TRect;
begin
  AusBild;
  OpenPictureDialog1.DefaultExt := 'Jpeg file (*.jpg)|*.jpg';
  OpenPictureDialog1.Filter     := 'Jpeg file (*.jpg)|*.jpg';
  if OpenPictureDialog1.Execute then
    CurrentFile := OpenPictureDialog1.FileName
  else exit;
  Bild   := TJpegImage.Create;
  try
    Bitmap := TBitmap.Create;
    Bild.LoadFromFile(CurrentFile);
    Bitmap.Assign(Bild);
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
    Bild.free;
    Bitmap.free;
  end;
  Klick := true;
  LabelText.Caption := Tx(1105)+'?';
  AusBildEnde;
end;

procedure TForm78.ausWMFClick(Sender: TObject);
var
  MetaFile : TMetaFile;
  FBild    : TBitmap;
  BBreite  : word;
  BHoehe   : word;
  Rahmen   : TRect;
begin
  AusBild;
  OpenDialog1.DefaultExt := 'Windows metafile (*.WMF)|*.wmf';
  OpenDialog1.Filter     := 'Windows metafile (*.WMF)|*.wmf';
  if OpenDialog1.Execute then
    CurrentFile := OpenDialog1.FileName
  else exit;
  MetaFile := TMetaFile.Create;
  FBild    := TBitmap.Create;
  try
    MetaFile.Enhanced := false;
    MetaFile.LoadFromFile(CurrentFile);
    FBild.Width  := MetaFile.Width;
    FBild.Height := MetaFile.Height;
    FBild.Canvas.Draw(0,0,MetaFile);
    Ratio := FBild.Height/FBild.Width;
    if FBild.Width > FBild.Height then
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
    ImageFoto.Canvas.StretchDraw (Rahmen, FBild);
  finally
    MetaFile.Free;
    FBild.Free;
  end;
  Klick := true;
  LabelText.Caption := Tx(1105)+'?';
  AusBildEnde;
end;

procedure TForm78.ausEMFClick(Sender: TObject);
var
  MetaFile : TMetaFile;
  FBild    : TBitmap;
  BBreite  : word;
  BHoehe   : word;
  Rahmen   : TRect;
begin
  AusBild;
  OpenDialog1.DefaultExt := 'Enhanced windows metafile (*.EMF)|*.emf';
  OpenDialog1.Filter     := 'Enhanced windows metafile (*.EMF)|*.emf';
  if OpenDialog1.Execute then
    CurrentFile := OpenDialog1.FileName
  else exit;
  MetaFile := TMetaFile.Create;
  FBild    := TBitmap.Create;
  try
    MetaFile.Enhanced := true;
    MetaFile.LoadFromFile(CurrentFile);
    FBild.Width  := MetaFile.Width;
    FBild.Height := MetaFile.Height;
    FBild.Canvas.Draw(0,0,MetaFile);
    Ratio := FBild.Height/FBild.Width;
    if FBild.Width > FBild.Height then
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
    ImageFoto.Canvas.StretchDraw (Rahmen, FBild);
  finally
    MetaFile.Free;
    FBild.Free;
  end;
  Klick := true;
  LabelText.Caption := Tx(1105)+'?';
  AusBildEnde;
end;

procedure TForm78.ausPNGClick(Sender: TObject);
var
  BildPNG : TPngObject;
  Bitmap  : TBitmap;
  BBreite : word;
  BHoehe  : word;
  Rahmen  : TRect;
begin
  AusBild;
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
  LabelText.Caption := Tx(1105)+'?';
  AusBildEnde;
end;

procedure TForm78.AusBild;
var
  Sdir    : string;
  SLaenge : word;
begin
  GetDir(0,SDir);
  SLaenge := length (SDir);
  DateinameS[1] := RightS(CurrentFile,Length(CurrentFile)-SLaenge-1);
  DateiZahl := 1;
  MaskEditDatei.Text := DateiNameS[1];
end;

procedure TForm78.AusBildEnde;
begin
  BildKorrigieren.Enabled := true;
  SpeedRotieren.Enabled   := true;
  LabelText.Visible       := true;
  SpeedKeineKorrektur.Enabled := true;
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
end;

procedure TForm78.BildRotierenClick(Sender: TObject);
begin
  LabelText.Caption         := Tx(1248);
  Punkt                     := 'PUNKT1';
  Maus                      := true;
  Ausschnitt.Enabled        := true;
  SpeedGanzesBild.Enabled   := true;
  SpeedAusschneiden.Enabled := true;
end;

procedure TForm78.SpeedRotierenClick(Sender: TObject);
begin
  BildRotierenClick(Sender);
end;

procedure TForm78.KeineKorrekturClick(Sender: TObject);
begin
  Ausschnitt.Enabled        := true;
  LabelText.Caption         := Tx(1609)+'?';
  Ausschnitt.Enabled        := true;
  SpeedGanzesBild.Enabled   := true;
  SpeedAusschneiden.Enabled := true;
end;

procedure TForm78.SpeedKeineKorrekturClick(Sender: TObject);
begin
  keineKorrekturClick(Sender);
end;

procedure TForm78.ganzesBildClick(Sender: TObject);
begin
  if BereichS = '1..180°' then LabelText.Caption := Tx(1250);
  if BereichS = '1..360°' then LabelText.Caption := Tx(1255);
  Punkt := 'Streich1';
  Maus  := true;
  ListBoxDaten.Visible    := true;
  PanelDaten.Visible      := true;
  PanelZahl.Visible       := true;
  Zahl                    := 0;
    ButtonDbeenden.Visible  := true;
  Farbe.Enabled           := true;
  Linien.Enabled          := true;
  GrafikSpeichern.Enabled := true;
  Drucken.Enabled         := true;
  BildSpeichern.Enabled   := true;
  SpeedFarbe.Enabled      := true;
  SpeedSpeichern.Enabled  := true;
  SpeedKopieren.Enabled   := true;
  SpeedDrucker.Enabled    := true;
  SpeedEinrichten.Enabled := true;
  SpeedDurchgezogen.Enabled     := true;
  SpeedGestrichelt.Enabled      := true;
  SpeedPunktiert.Enabled        := true;
  SpeedStrichPunkt.Enabled      := true;
  SpeedStrichPunktPunkt.Enabled := true;
  SpeedSStaerke.Enabled         := true;
  SpeedBspeichern.Enabled       := true;
  if BereichS = '1..180°' then LabelText.Caption := Tx(1250);
  if BereichS = '1..360°' then LabelText.Caption := Tx(1255);
end;

procedure TForm78.SpeedGanzesBildClick(Sender: TObject);
begin
  ganzesBildClick(Sender);
end;

procedure TForm78.ausschneidenClick(Sender: TObject);
begin
  LabelText.Caption       := Tx(1610);
  RechteckS               := 'LinksOben';
  Maus                    := true;
  ListBoxDaten.Visible    := true;
  PanelDaten.Visible      := true;
  PanelZahl.Visible       := true;
  Zahl                    := 0;
  ButtonDbeenden.Visible  := true;
  Farbe.Enabled           := true;
  Linien.Enabled          := true;
  GrafikSpeichern.Enabled := true;
  Drucken.Enabled         := true;
  SpeedFarbe.Enabled      := true;
  SpeedSpeichern.Enabled  := true;
  SpeedKopieren.Enabled   := true;
  SpeedDrucker.Enabled    := true;
  SpeedEinrichten.Enabled := true;
  SpeedDurchgezogen.Enabled     := true;
  SpeedGestrichelt.Enabled      := true;
  SpeedPunktiert.Enabled        := true;
  SpeedStrichPunkt.Enabled      := true;
  SpeedStrichPunktPunkt.Enabled := true;
  SpeedSStaerke.Enabled         := true;
  Bildspeichern.Enabled         := true;
  SpeedBspeichern.Enabled       := true;
end;

procedure TForm78.SpeedAusschneidenClick(Sender: TObject);
begin
  ausschneidenClick(Sender);
end;

procedure TForm78.ImageFotoMouseUp(Sender: TObject; Button: TMouseButton;
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
    RechteckS := '';
    LabelText.Caption := '';
    Punkt := 'Streich1';
    if BereichS = '1..180°' then LabelText.Caption := Tx(1250);
    if BereichS = '1..360°' then LabelText.Caption := Tx(1255);
  end;
end;

procedure TForm78.ImageFotoMouseDown(Sender: TObject; Button: TMouseButton;
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
  Winkel   : integer;
  Betrag   : word;
  Zeile    : string;
  WinkelS  : string;
  BetragS  : string;
begin
  if not Maus then exit;
  if ssLeft in Shift then
  begin
    if ssDouble in Shift then exit;
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
    if Punkt = 'PUNKT1' then
    begin
      with ImageFoto.Canvas do
      begin
        Pen.Color   := LinearFarbe;
        Brush.Color := LinearFarbe;
        Ellipse (Xmess-3,Ymess-3,Xmess+3,Ymess+3);
      end;
      Xum1 := Xmess;
      Yum1 := Ymess;
      Punkt := 'PUNKT2';
      LabelText.Caption := Tx(1249);
      exit;
    end;
    if Punkt = 'PUNKT2' then
    begin
      With ImageFoto do
      begin
        Canvas.Pen.Color   := LinearFarbe;
        Canvas.Brush.Color := LinearFarbe;
        Canvas.Ellipse (Xmess-3,Ymess-3,Xmess+3,Ymess+3);
        setlength(Bild,Height+1);
        for i:= 0 to Height do setlength(Bild[i],Width+1);
        Xum2 := Xmess;
        Yum2 := Ymess;
        Laenge := Xum2-Xum1;
        Hoehe  := Yum2-Yum1;
        TanDreh := Laenge/Hoehe;
        Dreh    := -arctan(TanDreh);
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
        Fortschritt.Visible   := false;
        for i := 0 to Height do setlength(Bild[i],0);
        Bild := NIL;
      end;
      Punkt := 'Streich1';
      if BereichS = '1..180°' then LabelText.Caption := Tx(1250);
      if BereichS = '1..360°' then LabelText.Caption := Tx(1255);
      LabelText.Caption             := Tx(1609)+'?';
      Ausschnitt.Enabled := true;
      exit;
    end;
    If Punkt = 'Streich1' then
    begin
      Xum1 := Xmess;
      Yum1 := Ymess;
      SBild := TBitmap.Create;
      SBild.Assign(ImageFoto.Picture.Graphic);
      With ImageFoto.Canvas do
      begin
        Pen.Color   := LinearFarbe;
        Brush.Color := LinearFarbe;
        Ellipse (Xum1-3,Yum1-3,Xum1+3,Yum1+3);
      end;
      Punkt := 'Streich2';
      if BereichS = '1..180°' then LabelText.Caption := Tx(1251);
      if BereichS = '1..360°' then LabelText.Caption := Tx(1256);
      exit;
    end;
    if Punkt = 'Streich2' then
    begin
      TanDreh := 0;
      Xum2 := Xmess;
      Yum2 := Ymess;
      Laenge := abs(Xum2-Xum1);
      Hoehe  := abs(Yum2-Yum1);
      if Yum1 <> Yum2 then TanDreh := Laenge/Hoehe;
      Winkel := Round(arctan(TanDreh)/Bo);
      if (Yum1 = Yum2) and (Xum1 > Xum2) then Winkel := 90;
      if (Yum1 = Yum2) and (Xum1 < Xum2) then Winkel := 270;
      if (Xum1 = Xum2) and (Yum2 > Yum1) then Winkel := 0;
      if (Xum1 = Xum2) and (Yum1 > Yum2) then Winkel := 180;
      if (Xum1 > Xum2) and (Yum1 > Yum2) then Winkel := 180-Winkel;
      if (Xum1 < Xum2) and (Yum1 > Yum2) then Winkel := Winkel + 180;
      if (Xum1 < Xum2) and (Yum2 > Yum1) then Winkel := 360-Winkel;
      Betrag := Round(sqrt(sqr(Laenge)+sqr(Hoehe)));
      WinkelS := RightS('000'+IntToStr(Winkel),3);
      BetragS := RightS('0000'+IntToStr(Betrag),3);
      Zeile  := '  '+WinkelS+'       '+BetragS;
      listBoxDaten.Items.Add (Zeile);
      Punkt := 'Streich1';
      ImageFoto.Picture.Assign (SBild);
      RBild := TBitmap.Create;
      RBild.Assign(ImageFoto.Picture.Graphic);
      With ImageFoto.Canvas do
      begin
        Pen.Width := Strich;
        Pen.Color := LinearFarbe;
        Pen.Style := LinienTyp;
        moveto (Xum1, Yum1);
        lineto (Xum2, Yum2);
      end;
      if BereichS = '1..180°' then LabelText.Caption := Tx(1250);
      if BereichS = '1..360°' then LabelText.Caption := Tx(1255);
      inc(Zahl);
      LabelZahl.Caption := IntToStr(Zahl);
      AziFeld[Zahl] := Winkel;
      FalFeld[Zahl] := Round(Betrag/5);
      if FalFeld[Zahl] = 0 then FalFeld[Zahl] := 1;
      ButtonRueck.Visible := true;
      SBild.Free;
    end;
  end;
end;

procedure TForm78.ButtonDbeendenClick(Sender: TObject);
begin
  ZahlGlob               := Zahl;
  if Programm = 7 then ButtonPlotten.Visible  := true;
  if Programm = 6 then ButtonAuswertung.Visible := true;
  DatenSpeichern.Enabled := true;
  LabelText.Caption := '';
end;

procedure TForm78.ButtonPlottenClick(Sender: TObject);
begin
  Form19.Show;
end;

procedure TForm78.ButtonAuswertungClick(Sender: TObject);
begin
  Form17.Show;
end;

procedure TForm78.FarbeLineationClick(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  FarbeS : string;
begin
  FarbeS := 'clWhite';
  if ColorDialog1.Execute then LinearFarbe := ColorDialog1.Color;
  FarbeS := ColorToString (LinearFarbe);
  KonfigZeileS[106] := 'Colour of foto-lineations  :,'+FarbeS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
end;

procedure TForm78.SpeedFarbeClick(Sender: TObject);
begin
  FarbeLineationClick(Sender);
end;

procedure TForm78.StrichstaerkeClick(Sender: TObject);
begin
  LabelStrich.Visible   := true;
  ListBoxStrich.Visible := true;
  LinienTyp             := psSolid;
end;

procedure TForm78.SpeedSStaerkeClick(Sender: TObject);
begin
  StrichstaerkeClick(Sender);
end;

procedure TForm78.ListBoxStrichClick(Sender: TObject);
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

procedure TForm78.durchgezogenClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  LinienTyp        := psSolid;
  KonfigZeileS[10] := '  Line Style               :,Solid';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  Strich := 1;
end;

procedure TForm78.SpeedDurchgezogenClick(Sender: TObject);
begin
  durchgezogenClick(Sender);
end;

procedure TForm78.gestricheltClick(Sender: TObject);
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

procedure TForm78.SpeedGestricheltClick(Sender: TObject);
begin
  gestricheltClick(Sender);
end;

procedure TForm78.punktiertClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  LinienTyp := psDot;
  KonfigZeileS[10] := '  Line Style               :,Dot';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  Strich := 1;
end;

procedure TForm78.SpeedPunktiertClick(Sender: TObject);
begin
  punktiertClick(Sender);
end;

procedure TForm78.strichpunktiertClick(Sender: TObject);
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

procedure TForm78.SpeedStrichPunktClick(Sender: TObject);
begin
  strichpunktiertClick(Sender);
end;

procedure TForm78.StrichPunktPunktClick(Sender: TObject);
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

procedure TForm78.SpeedStrichPunktPunktClick(Sender: TObject);
begin
  StrichPunktPunktClick(Sender);
end;

procedure TForm78.speichernClick(Sender: TObject);
begin
  if CurrentFile <> '' then Speichern4 (CurrentFile, ZahlGlob, AziFeld,
    FalFeld)
  else speichernUnterClick(Sender);
end;

procedure TForm78.speichernUnterClick(Sender: TObject);
begin
  Erweiterung (ExtenS);
  SaveDialog1.DefaultExt := ExtenS;
  SaveDialog1.Filter     := ExtenS;
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    Speichern4 (CurrentFile, ZahlGlob, AziFeld, FalFeld);
  end;
end;

procedure TForm78.SpeedSpeichernClick(Sender: TObject);
begin
  speichernUnterClick(Sender);
end;

procedure TForm78.GkopierenClick(Sender: TObject);
begin
  Clipboard.Assign(ImageFoto.Picture);
end;

procedure TForm78.SpeedKopierenClick(Sender: TObject);
begin
  GkopierenClick(Sender);
end;

procedure TForm78.BildSpeichernClick(Sender: TObject);
begin
  ListBoxSpeichern.Visible := true;
end;

procedure TForm78.SpeedBspeichernClick(Sender: TObject);
begin
  BildSpeichernClick(Sender);
end;

procedure TForm78.ListBoxSpeichernClick(Sender: TObject);
var
  i : byte;
begin
  for i := 0 to ListboxSpeichern.Items.Count-1 do
  begin
    if ListboxSpeichern.Selected[i] then
    begin
      if i = 0 then alsBMPClick(Sender);
      if i = 1 then alsGIFClick(Sender);
      if i = 2 then alsTIFClick(Sender);
      if i = 3 then alsJPGClick(Sender);
      if i = 4 then alsWMFClick(Sender);
      if i = 5 then alsEMFClick(Sender);
      if i = 6 then alsPNGClick(Sender);
    end;
  end;
  ListBoxSpeichern.Visible := false;
end;

procedure TForm78.alsBMPClick(Sender: TObject);
begin
  SavePictureDialog1.DefaultExt := 'Windows bitmap file (*.bmp)|*.bmp';
  SavePictureDialog1.Filter     := 'Windows bitmap file (*.bmp)|*.bmp';
  if SavePictureDialog1.Execute then
  begin
    CurrentFile := SavePictureDialog1.Filename;
    Bitmap   := TBitmap.Create;
    Bitmap.Assign(ImageFoto.Picture.Graphic);
    try
      Bitmap.SaveToFile(CurrentFile)
    finally
      Bitmap.Free;
    end;
  end;
end;

procedure TForm78.alsGIFClick(Sender: TObject);
var
  GifBild : TGifImage;
  Rahmen  : TRect;
begin
  SavePictureDialog1.DefaultExt := 'Compuserve gif file (*.gif)|*.gif';
  SavePictureDialog1.Filter     := 'Compuserve gif file (*.gif)|*.gif';
  if SavePictureDialog1.Execute then
    CurrentFile := SavePictureDialog1.Filename;
  Bitmap        := TBitmap.Create;
  GifBild       := TGIFImage.Create;
  Bitmap.Width  := ImageFoto.Width;
  Bitmap.Height := ImageFoto.Height;
  Rahmen        := Rect(0,0,Bitmap.Width,Bitmap.Height);
  Bitmap.Canvas.Stretchdraw(Rahmen,ImageFoto.Picture.Graphic);
  try
    GifBild.Assign(Bitmap);
    if (CurrentFile <> '') and (UCaseS(RightS(CurrentFile,3)) = 'GIF') then
      GifBild.SaveToFile(CurrentFile);
  finally
    Bitmap.Free;
    GifBild.Free;
  end;
end;

procedure TForm78.alsTIFClick(Sender: TObject);
var
  Rahmen : TRect;
begin
  SavePictureDialog1.DefaultExt := 'Tagged image file format (*.tif)|*.tif';
  SavePictureDialog1.Filter     := 'Tagged image file format (*.tif)|*.tif';
  if SavePictureDialog1.Execute then CurrentFile := SavePictureDialog1.Filename;
  Bitmap        := TBitmap.Create;
  Bitmap.Width  := ImageFoto.Width;
  Bitmap.Height := ImageFoto.Width;
  Rahmen        := Rect(0,0,Bitmap.Width,Bitmap.Height);
  Bitmap.Canvas.Stretchdraw(Rahmen,ImageFoto.Picture.Graphic);
  try
    if (CurrentFile <> '') and (UCaseS(RightS(CurrentFile,3)) = 'TIF')
    then WriteTiffToFile(CurrentFile,Bitmap);
  finally
    Bitmap.Free;
  end;
end;

procedure TForm78.alsJPGClick(Sender: TObject);
var
  DateiJ   : string;
begin
  SavePictureDialog1.DefaultExt := 'JPG-Datei (*.jpg)|*.jpg';
  SavePictureDialog1.Filter     := 'JPG-Datei (*.jpg)|*.jpg';
  if SavePictureDialog1.Execute then
  begin
    CurrentFile := SavePictureDialog1.Filename;
    JpgDatei := TJpegImage.Create;
    Bitmap   := TBitmap.Create;
    try
      with JpgDatei do
      begin
        Assign(ImageFoto.Picture.Bitmap);
        DateiJ := CurrentFile;
        delete(DateiJ,length(DateiJ)-2,3);
        DateiJ := DateiJ+'JPG';
        SaveToFile(DateiJ);
      end;
    finally
      JpgDatei.Free;
      Bitmap.Free;
      Bitmap   := nil;
      JpgDatei := nil;
    end;
  end;
end;

procedure TForm78.alsWMFClick(Sender: TObject);
var
  MetaFile   : TMetaFile;
  MetaCanvas : TMetafileCanvas;
  Rahmen     : TRect;
begin
  SavePictureDialog1.DefaultExt := 'Windows metafile (*.WMF)|*.wmf';
  SavePictureDialog1.Filter     := 'Windows metafile (*.WMF)|*.wmf';
  if SavePictureDialog1.Execute then
    CurrentFile := SavePictureDialog1.Filename;
  Metafile := TMetaFile.Create;
  MetaFile.Enhanced := false;
  try
    Bitmap := TBitmap.Create;
    Bitmap.Width  := ImageFoto.Width;
    Bitmap.Height := ImageFoto.Height;
    Rahmen        := Rect(0,0,Bitmap.Width,Bitmap.Height);
    Bitmap.Canvas.Stretchdraw(Rahmen,ImageFoto.Picture.Graphic);
    try
      Bitmap.Assign(ImageFoto.Picture);
      Metafile.Height := Bitmap.Height;
      Metafile.Width  := Bitmap.Width;
      MetaCanvas := TMetafileCanvas.Create(Metafile, 0);
      try
        MetaCanvas.Draw(0, 0, Bitmap);
      finally
        MetaCanvas.Free;
      end;
    finally
      Bitmap.Free;
    end;
    if (CurrentFile <> '') and (UCaseS(RightS(CurrentFile,3)) = 'WMF') then
      MetaFile.SaveToFile(CurrentFile)
  finally
    Metafile.Free;
  end;
end;

procedure TForm78.alsEMFClick(Sender: TObject);
var
  MetaFile   : TMetaFile;
  MetaCanvas : TMetaFileCanvas;
begin
  SavePictureDialog1.DefaultExt := 'Enhanced windows metafile (*.EMF)|*.emf';
  SavePictureDialog1.Filter     := 'Enhanced windows metafile (*.EMF)|*.emf';
  if SavePictureDialog1.Execute then
    CurrentFile := SavePictureDialog1.Filename;
  Metafile := TMetaFile.Create;
  MetaFile.Enhanced := true;
  try
    Bitmap := TBitmap.Create;
    try
      Bitmap.Assign(ImageFoto.Picture);
      Metafile.Height := ImageFoto.Height;
      Metafile.Width  := ImageFoto.Width;
      MetaCanvas := TMetafileCanvas.Create(Metafile, 0);
      try
        MetaCanvas.Draw(0, 0, Bitmap);
      finally
        MetaCanvas.Free;
      end;
    finally
      Bitmap.Free;
    end;
    if (CurrentFile <> '') and (UCaseS(RightS(CurrentFile,3)) = 'EMF') then
      MetaFile.SaveToFile(CurrentFile)
  finally
    Metafile.Free;
  end;
end;

procedure TForm78.alsPNGClick(Sender: TObject);
var
  BildPng : TPngObject;
  DateiP  : string;
begin
  SavePictureDialog1.DefaultExt := 'Portable Network Graphics (*.PNG)|*.png';
  SavePictureDialog1.Filter     := 'Portable Network Graphics (*.PNG)|*.png';
  if SavePictureDialog1.Execute then
    CurrentFile := SavePictureDialog1.Filename;
  BildPng := TPngObject.Create;
  Bitmap   := TBitmap.Create;
  try
    with BildPng do
    begin
      Assign(ImageFoto.Picture.Bitmap);
      DateiP := CurrentFile;
      delete(DateiP,length(DateiP)-2,3);
      DateiP := DateiP+'PNG';
      SaveToFile(DateiP);
    end;
  finally
    BildPng.Free;
    Bitmap.Free;
  end;
end;

procedure TForm78.ButtonRueckClick(Sender: TObject);
begin
  ImageFoto.Picture.Assign (RBild);
  Punkt := 'Streich1';
  ListBoxDaten.Items.delete(Zahl-1);
  Zahl := Zahl - 1;
  LabelZahl.Caption   := IntToStr(Zahl);
  ButtonRueck.Visible := false;
end;

procedure TForm78.DeinrichtenClick(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TForm78.SpeedEinrichtenClick(Sender: TObject);
begin
  DeinrichtenClick(Sender);
end;

procedure TForm78.DruckerClick(Sender: TObject);
var
  SchriftS : string[5];
  i        : byte;
begin
  Paneldrucken        .Visible := true;
  RadioButtonlinks.Visible     := true;
  RadioButtonzentriert.Visible := true;
  RadioButtonrechts.Visible    := true;
  RadioGroup.Visible           := true;
  CheckBoxdrucken.State        := cbUnchecked;
  MaskEditRdrucken.EditMask := '999;0; ';
  MaskEditXdrucken.EditMask := '999;0; ';
  MaskEditYdrucken.EditMask := '999;0; ';
  MaskEditRdrucken.Text     := InttoStr(round(DruckenR*10));
  MaskEditXdrucken.Text     := InttoStr(round(DruckenX*10));
  MaskEditYdrucken.Text     := InttoStr(round(DruckenY*10));
  GroupBoxdrucken.Caption   := Tx(880);
  LabelRdrucken.Caption        := Tx(883);
  LabelMitte.Caption           := Tx(884);
  LabelXdrucken.Caption        := Tx(885);
  LabelYdrucken.Caption        := Tx(886);
  CheckBoxdrucken.Caption      := Tx(881);
  CheckBoxAbbruch.Caption      := Tx(882);
  LabelUnterschrift.Caption    := Tx(887);
  LabelSchrift.Caption         := Tx(888);
  RadioButtonLinks.Caption     := Tx(889);
  RadioButtonZentriert.Caption := Tx(890);
  RadioButtonRechts.Caption    := Tx(891);
  CheckBoxdrucken.Enabled   := false;
  i                         := 3;
  repeat
    i := i + 1;
    str(i, SchriftS);
    ListBoxSchrift.Items.Add (SchriftS);
  until i = 40;
end;

procedure TForm78.SpeedDruckerClick(Sender: TObject);
begin
  DruckerClick(Sender);
end;

procedure TForm78.MaskEditUnterschriftKeyPress(Sender: TObject;
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

procedure TForm78.ListBoxSchriftClick(Sender: TObject);
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

procedure TForm78.RadioButtonLinksClick(Sender: TObject);
begin
  BuendigS := 'Links';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    CheckBoxdrucken.Enabled := true;
end;

procedure TForm78.RadioButtonZentriertClick(Sender: TObject);
begin
  BuendigS := 'Zentriert';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    CheckBoxdrucken.Enabled := true;
end;

procedure TForm78.RadioButtonRechtsClick(Sender: TObject);
begin
  BuendigS := 'Rechts';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    CheckBoxdrucken.Enabled := true;
end;

procedure TForm78.CheckBoxdruckenClick(Sender: TObject);
var
  XKoordS : string;
  YKoordS : string;
  RadiusS : string;
  DBitmap : TBitmap;
  Fenster : TRect;
begin
  Paneldrucken.Visible         := false;
  RadioButtonlinks.Visible     := false;
  RadioButtonzentriert.Visible := false;
  RadioButtonrechts.Visible    := false;
  RadioGroup.Visible           := false;
  RadiusS := MaskEditRdrucken.Text;
  XKoordS := MaskEditXdrucken.Text;
  YKoordS := MaskEditYdrucken.Text;
  DBitmap:=TBitmap.Create;
  try
    DBitmap.Assign(ImageFoto.picture.graphic);
    with Printer do
    begin
      BeginDoc;
      DruckBitmap (Printer.Canvas, Fenster, RadiusS,
                   XKoordS, YKoordS, TextS, Schrift,
                   BuendigS, Bitmap);
      EndDoc;
    end;
  finally
    DBitmap.free;
  end;
end;

procedure TForm78.CheckBoxAbbruchClick(Sender: TObject);
begin
  Paneldrucken.Visible         := false;
  RadioButtonlinks.Visible     := false;
  RadioButtonzentriert.Visible := false;
  RadioButtonrechts.Visible    := false;
  RadioGroup.Visible           := false;
end;

procedure TForm78.HilfeClick(Sender: TObject);
const
  Anfang = 167;
var
  DateiS      : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\78BildImportieren.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\78ImportPicture.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm78.SpeedHilfeClick(Sender: TObject);
begin
  HilfeClick(Sender);
end;

procedure TForm78.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if Programm = 16 then
  begin
    if SpracheS = 'DEUTSCH' then HilfeS := 'Masszahlen_zirkular.doc';
    if SpracheS = 'ENGLISH' then HilfeS := 'Circular_measures.doc';
  end;
  if Programm = 7 then
  begin
    if SpracheS = 'DEUTSCH' then HilfeS := 'Richtungsrose.doc';
    if SpracheS = 'ENGLISH' then HilfeS := 'Rose_diagrams.doc';
  end;
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm78.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm78.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm78.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

end.
