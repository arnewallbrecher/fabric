unit Unit102;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, Globvar, Texte, Menus, StdCtrls, ExtCtrls, Clipbrd, Buttons,
  Plotten, ExtDlgs, Mask, GifImage, Bmp2Tiff, ReadTiff, Jpeg, PngImage,
  EinAusga, Grafik, Basic, Standard, Printers, ehsHelpRouter, Shellapi, Math;

type
  TForm102 = class(TForm)
    StatusBar: TStatusBar;
    ImageFoto: TImage;
    ButtonStart: TButton;
    MainMenu1: TMainMenu;
    Importieren: TMenuItem;
    einfuegen: TMenuItem;
    ausDatei: TMenuItem;
    PanelSpeed: TPanel;
    SpeedEinfuegen: TSpeedButton;
    PanelImport: TPanel;
    ListBoxImport: TListBox;
    ButtonIaus: TButton;
    OpenPictureDialog1: TOpenPictureDialog;
    Ausschnitt: TMenuItem;
    GanzesBild: TMenuItem;
    ausschneiden: TMenuItem;
    SpeedausDatei: TSpeedButton;
    SpeedganzesBild: TSpeedButton;
    SpeedAusschneiden: TSpeedButton;
    PanelText: TPanel;
    Label1: TLabel;
    LabelReturn: TLabel;
    MaskEditText: TMaskEdit;
    OpenDialog1: TOpenDialog;
    LabelDatei: TLabel;
    MaskEditDatei: TMaskEdit;
    ButtonZurueck: TButton;
    ButtonBeenden: TButton;
    LabelText: TLabel;
    ButtonEinBeenden: TButton;
    ListBoxDaten: TListBox;
    LabelDaten: TLabel;
    LabelX: TLabel;
    LabelZahl: TLabel;
    LabelNum: TLabel;
    Pspeichern: TMenuItem;
    speichern: TMenuItem;
    speichernU: TMenuItem;
    SaveDialog1: TSaveDialog;
    ButtongegenUhr: TButton;
    ButtonUhr: TButton;
    ButtonOK: TButton;
    Eanpassen: TMenuItem;
    LangeA: TMenuItem;
    KurzeA: TMenuItem;
    Edrehen: TMenuItem;
    WFarbe: TMenuItem;
    PFarbe: TMenuItem;
    EFarbe: TMenuItem;
    ColorDialog1: TColorDialog;
    Font: TMenuItem;
    FontDialog1: TFontDialog;
    Text: TMenuItem;
    Textschreiben: TMenuItem;
    Rueck: TMenuItem;
    PanelPlazieren: TPanel;
    LabelPlazieren: TLabel;
    Grafik: TMenuItem;
    BGroesse: TMenuItem;
    PanelGroesse: TPanel;
    LabelBHoehe: TLabel;
    LabelBBreite: TLabel;
    MaskEditBHoehe: TMaskEdit;
    MaskEditBBreite: TMaskEdit;
    CheckBoxBild: TCheckBox;
    Bspeichern: TMenuItem;
    PanelBspeichern: TPanel;
    ListBoxBspeichern: TListBox;
    ButtonAabbrechen: TButton;
    SavePictureDialog1: TSavePictureDialog;
    Deinrichten: TMenuItem;
    PrinterSetupDialog1: TPrinterSetupDialog;
    drucken: TMenuItem;
    Hintergrund: TMenuItem;
    BRahmen: TMenuItem;
    Hilfe: TMenuItem;
    ButtonLoeschen: TButton;
    Handbuch: TMenuItem;
    Literatur: TMenuItem;
    Speedspeichern: TSpeedButton;
    SpeedFarbeP: TSpeedButton;
    SpeedEFarbe: TSpeedButton;
    SpeedFont: TSpeedButton;
    SpeedText: TSpeedButton;
    SpeedLangeA: TSpeedButton;
    SpeedKurzeA: TSpeedButton;
    SpeedDrehen: TSpeedButton;
    SpeedBGroesse: TSpeedButton;
    SpeedRueck: TSpeedButton;
    SpeedEspeichern: TSpeedButton;
    SpeedDeinrichten: TSpeedButton;
    SpeedDrucker: TSpeedButton;
    SpeedHintergrund: TSpeedButton;
    SpeedRahmen: TSpeedButton;
    SpeedHilfe: TSpeedButton;
    SpeedHandbuch: TSpeedButton;
    SpeedLiteratur: TSpeedButton;
    Bdrehen: TMenuItem;
    rotieren: TMenuItem;
    Fortschritt: TProgressBar;
    SpeedBdrehen: TSpeedButton;
    Kopieren: TMenuItem;
    FarbeRef: TMenuItem;
    SpeedRef: TSpeedButton;
    NichtDrehen: TMenuItem;
    Verschieben: TMenuItem;
    ListBoxWinkel: TListBox;
    LabelWinkel: TLabel;
    PanelDrucken: TPanel;
    GroupBoxDrucken: TGroupBox;
    Panel8: TPanel;
    LabelLdrucken: TLabel;
    MaskEditLaenge: TMaskEdit;
    Panel9: TPanel;
    LabelEcke: TLabel;
    LabelXdrucken: TLabel;
    LabelYdrucken: TLabel;
    MaskEditLinks: TMaskEdit;
    MaskEditOben: TMaskEdit;
    Panel10: TPanel;
    LabelUnterschrift: TLabel;
    LabelSchrift: TLabel;
    MaskEditSchrift: TMaskEdit;
    ListBoxSchrift: TListBox;
    RadioGroup: TRadioGroup;
    RadioButtonLinks: TRadioButton;
    RadioButtonZentr: TRadioButton;
    RadioButtonRechts: TRadioButton;
    ButtonDrucken: TButton;
    ButtonAbort: TButton;
    procedure FormShow(Sender: TObject);
    procedure ShowHint (Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ButtonStartClick(Sender: TObject);
    procedure einfuegenClick(Sender: TObject);
    procedure SpeedEinfuegenClick(Sender: TObject);
    procedure ausDateiClick(Sender: TObject);
    procedure ListBoxImportClick(Sender: TObject);
    procedure oeffnenBMPClick(Sender: TObject);
    procedure oeffnenGIFClick(Sender: TObject);
    procedure oeffnenTIFClick(Sender: TObject);
    procedure oeffnenJPGClick(Sender: TObject);
    procedure oeffnenWMFClick(Sender: TObject);
    procedure oeffnenEMFClick(Sender: TObject);
    procedure oeffnenPNGClick(Sender: TObject);
    procedure GanzesBildClick(Sender: TObject);
    procedure ausschneidenClick(Sender: TObject);
    procedure SpeedausDateiClick(Sender: TObject);
    procedure SpeedganzesBildClick(Sender: TObject);
    procedure SpeedAusschneidenClick(Sender: TObject);
    procedure ButtonZurueckClick(Sender: TObject);
    procedure ButtonBeendenClick(Sender: TObject);
    procedure ImageFotoMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ImageFotoMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Auswertung(Sender: TObject);
    procedure ButtonEinBeendenClick(Sender: TObject);
    procedure speichernClick(Sender: TObject);
    procedure speichernUClick(Sender: TObject);
    procedure ButtongegenUhrClick(Sender: TObject);
    procedure EdrehenClick(Sender: TObject);
    procedure ButtonUhrClick(Sender: TObject);
    procedure ButtonOKClick(Sender: TObject);
    procedure ImageFotoMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure LangeAClick(Sender: TObject);
    procedure KurzeAClick(Sender: TObject);
    procedure PFarbeClick(Sender: TObject);
    procedure EFarbeClick(Sender: TObject);
    procedure FontClick(Sender: TObject);
    procedure MaskEditTextKeyPress(Sender: TObject; var Key: Char);
    procedure TextschreibenClick(Sender: TObject);
    procedure RueckClick(Sender: TObject);
    procedure DspeichernClick(Sender: TObject);
    procedure DspeichernUClick(Sender: TObject);
    procedure MaskEditBBreiteKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditBHoeheKeyPress(Sender: TObject; var Key: Char);
    procedure CheckBoxBildClick(Sender: TObject);
    procedure BspeichernClick(Sender: TObject);
    procedure ListBoxBspeichernClick(Sender: TObject);
    procedure DeinrichtenClick(Sender: TObject);
    procedure druckenClick(Sender: TObject);
    procedure ButtonDruckenClick(Sender: TObject);
    procedure ButtonAbortClick(Sender: TObject);
    procedure MaskEditSchriftKeyPress(Sender: TObject; var Key: Char);
    procedure ListBoxSchriftClick(Sender: TObject);
    procedure HintergrundClick(Sender: TObject);
    procedure BRahmenClick(Sender: TObject);
    procedure HilfeClick(Sender: TObject);
    procedure HandbuchClick(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
    procedure ButtonLoeschenClick(Sender: TObject);
    procedure SpeedspeichernClick(Sender: TObject);
    procedure SpeedFarbePClick(Sender: TObject);
    procedure SpeedEFarbeClick(Sender: TObject);
    procedure SpeedFontClick(Sender: TObject);
    procedure SpeedTextClick(Sender: TObject);
    procedure SpeedKurzeAClick(Sender: TObject);
    procedure SpeedLangeAClick(Sender: TObject);
    procedure SpeedDrehenClick(Sender: TObject);
    procedure BGroesseClick(Sender: TObject);
    procedure SpeedBGroesseClick(Sender: TObject);
    procedure SpeedRueckClick(Sender: TObject);
    procedure SpeedEspeichernClick(Sender: TObject);
    procedure SpeedDeinrichtenClick(Sender: TObject);
    procedure SpeedDruckerClick(Sender: TObject);
    procedure SpeedHintergrundClick(Sender: TObject);
    procedure SpeedRahmenClick(Sender: TObject);
    procedure SpeedHilfeClick(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure SpeedLiteraturClick(Sender: TObject);
    procedure rotierenClick(Sender: TObject);
    procedure SpeedBdrehenClick(Sender: TObject);
    procedure KopierenClick(Sender: TObject);
    procedure FarbeRefClick(Sender: TObject);
    procedure SpeedRefClick(Sender: TObject);
    procedure NichtDrehenClick(Sender: TObject);
    procedure VerschiebenClick(Sender: TObject);
    procedure ListBoxWinkelClick(Sender: TObject);
    procedure RadioButtonLinksClick(Sender: TObject);
    procedure RadioButtonZentrClick(Sender: TObject);
    procedure RadioButtonRechtsClick(Sender: TObject);
    procedure MaskEditLaengeChange(Sender: TObject);
    procedure MaskEditLinksChange(Sender: TObject);
    procedure MaskEditObenChange(Sender: TObject);
  end;

var
  Form102      : TForm102;
  Bitmap       : TBitmap;
  Rahmen       : TRect;
  RotBild      : TBitmap;
  CurrentFile  : string;
  BBreite      : word;
  BHoehe       : word;
  Ratio        : real;
  Klick        : boolean;
  Rechtecks    : string;
  Punkt        : string;
  Btext        : boolean;
  Xlinks       : word;
  Ylinks       : word;
  Xrechts      : word;
  Yrechts      : word;
  Xmess        : word;
  Ymess        : word;
  MarkerS      : string;
  Xmarker1     : array of word;
  Ymarker1     : array of word;
  Xmarker2     : array of word;
  Ymarker2     : array of word;
  Xmarker3     : array of word;
  Ymarker3     : array of word;
  Xmarker4     : array of word;
  Ymarker4     : array of word;
  Xm, Ym       : word;
  index        : word;
  BitmapFoto   : TBitmap;
  WLang, WKurz : real;
  EPunkt       : array[0..360] of Tpoint;
  Fphi         : integer;
  Ziehen       : boolean;
  AchseS       : string;
  X1,X2, Y1,Y2 : word;
  R            : real;
  Laenge       : word;
  X0, Y0       : word;
  TeS          : string;
  TextBitmap   : TBitmap;
  BHoeheW      : word;
  BBreiteW     : word;
  BildW        : boolean;
  RatioW       : real;
  Links        : word;
  TextS        : string;
  BitmapNeu    : TBitmap;
  Xpunkt1      : word;
  Ypunkt1      : word;
  Xpunkt2      : word;
  Ypunkt2      : word;
  Xd1,Yd1      : integer;
  Xd2,Yd2      : integer;
  Schieben     : boolean;
  EAchsenS     : string;
  Winkel       : byte;
  AnOk         : boolean;
  Gedrueckt    : Array[1..3] of boolean;
  BuendigS     : string;

implementation
{$R *.DFM}

uses Unit101, Unit103;

procedure TForm102.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm102.ShowHint(Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm102.FormActivate(Sender: TObject);
var
  i : byte;
begin
  Left   := LeftDiag + ULap;
  Top    := TopDiag + ULap;
  Width  := WidDiag;
  Height := HeiDiag;
  setlength (Xmarker1, MaxDaten);
  setlength (Xmarker2, MaxDaten);
  setlength (Xmarker3, MaxDaten);
  setlength (Xmarker4, MaxDaten);
  setlength (Ymarker4, MaxDaten);
  setlength (Ymarker1, MaxDaten);
  setlength (Ymarker2, MaxDaten);
  setlength (Ymarker3, MaxDaten);
  setlength (Ymarker4, MaxDaten);
  setlength (Xschn, MaxDaten);
  setlength (Yschn, MaxDaten);
  Form102.Caption          := 'Fabric8: '+Tx(1740);
  SpeedEinfuegen.Hint      := Hilf(246);
  SpeedausDatei.Hint       := Hilf(342);
  SpeedganzesBild.Hint     := Hilf(679);
  SpeedAusschneiden.Hint   := Hilf(678);
  SpeedBdrehen.Hint        := Hilf(758);
  Speedspeichern.Hint      := Hilf(750);
  SpeedFarbeP.Hint         := Hilf(751);
  SpeedEFarbe.Hint         := Hilf(752);
  SpeedRef.Hint            := Hilf(759);
  SpeedFont.Hint           := Hilf(686);
  SpeedText.Hint           := Hilf(729);
  SpeedRueck.Hint          := Hilf(730);
  SpeedLangeA.Hint         := Hilf(753);
  SpeedKurzeA.Hint         := Hilf(754);
  SpeedDrehen.Hint         := Hilf(755);
  SpeedBGroesse.Hint       := Hilf(583);
  SpeedEspeichern.Hint     := Hilf(264);
  SpeedDeinrichten.Hint    := Hilf(505);
  SpeedDrucker.Hint        := Hilf(756);
  SpeedHintergrund.Hint    := Hilf(443);
  SpeedRahmen.Hint         := Hilf(442);
  SpeedHilfe.Hint          := Hilf(210);
  SpeedHandbuch.Hint       := Hilf(274);
  SpeedLiteratur.Hint      := Hilf(462);
  ButtonZurueck.Caption    := Tx(30);
  ButtonBeenden.Caption    := Tx(53);
  Importieren.Caption      := Tx(1068);
  einfuegen.Caption        := Tx(1069);
  ausDatei.Caption         := Tx(57);
  Ausschnitt.Caption       := Tx(1607);
  GanzesBild.Caption       := Tx(1608);
  ausschneiden.Caption     := Tx(1609);
  ButtonIaus.Caption       := Tx(882);
  LabelDatei.Caption       := Tx(211);
  Label1.Caption           := Tx(1700);
  LabelReturn.Caption      := Tx(1701);
  LabelPlazieren.Caption   := Tx(1702);
  ButtonEinBeenden.Caption := TX(106);
  LabelDaten.Caption       := Tx(1745);
  LabelZahl.Caption        := Tx(181);
  Pspeichern.Caption       := TX(1747);
  speichern.Caption        := Tx(87);
  speichernU.Caption       := Tx(88);
  Eanpassen.Caption        := Tx(1751);
  Edrehen.Caption          := Tx(1106);
  ButtonGegenUhr.Caption   := Tx(1762);
  ButtonUhr.Caption        := Tx(1763);
  LangeA.Caption           := Tx(1421);
  KurzeA.Caption           := Tx(1425);
  WFarbe.Caption           := Tx(275);
  PFarbe.Caption           := Tx(662);
  EFarbe.Caption           := TX(993);
  Grafik.Caption           := Tx(281);
  BGroesse.Caption         := Tx(1439);
  LabelBBreite.Caption     := Tx(1440);
  LabelBHoehe.Caption      := Tx(1441);
  Deinrichten.Caption      := Tx(94);
  Bspeichern.Caption       := Tx(1071);
  drucken.Caption          := Tx(1753);
  Hintergrund.Caption      := Tx(856);
  BRahmen.Caption          := Tx(944);
  ButtonLoeschen.Caption   := Tx(1754);
  Bdrehen.Caption          := Tx(1140);
  rotieren.Caption         := Tx(1106);
  Nichtdrehen.Caption      := Tx(1755);
  kopieren.Caption         := Tx(282);
  Verschieben.Caption      := Tx(1759);
  ButtonOk.Caption         := Tx(1760);
  Handbuch.Caption         := Tx(1055);
  Literatur.Caption        := Tx(1183);
  Hilfe.Caption            := Tx(162);
  LabelWinkel.Caption      := Tx(1761);
  GroupBoxDrucken.Caption  := Tx(880);
  LabelLDrucken.Caption    := Tx(1764);
  LabelEcke.Caption        := Tx(1274);
  LabelXdrucken.Caption    := Tx(885);
  LabelYdrucken.Caption    := Tx(886);
  LabelUnterschrift.Caption:= Tx(887);
  LabelSchrift.Caption     := Tx(888);
  RadioButtonLinks.Caption := Tx(889);
  RadioButtonZentr.Caption := Tx(890);
  RadioButtonRechts.Caption:= Tx(891);
  ButtonAbort.Caption      := Tx(882);
  ButtonDrucken.Caption    := Tx(93);
  PanelSpeed.Visible       := false;
  Importieren.Enabled      := false;
  ButtonLoeschen.Visible   := false;
  for i := 1 to 7 do
    ListBoxImport.Items.Add (Tx(1611+i));
  PanelImport.Visible      := false;
  LabelDatei.Visible       := false;
  MaskEditDatei.Visible    := false;
  PanelText.Visible        := false;
  Btext                    := false;
  ButtonEinBeenden.Visible := false;
  LabelDaten.Visible       := false;
  LabelX.Visible           := false;
  ListBoxDaten.Visible     := false;
  LabelZahl.Visible        := false;
  Pspeichern.Enabled       := false;
  Speedspeichern.Enabled   := false;
  ButtonGegenUhr.Visible   := false;
  ButtonUhr.Visible        := false;
  ButtonOk.Visible         := false;
  Ziehen                   := false;
  WFarbe.Enabled           := false;
  Font.Enabled             := false;
  Text.Enabled             := false;
  PanelPlazieren.Visible   := false;
  BildW                    := false;
  PanelGroesse.Visible     := false;
  Eanpassen.Enabled        := false;
  Grafik.Enabled           := false;
  for i := 1 to 7 do
    ListBoxBSpeichern.Items.Add (Tx(1611+i));
  PanelBSpeichern.Visible  := false;
  LabelText.Caption        := '';
  MarkerS                  := '';
  LabelNum.Caption         := '';
  AchseS                   := '';
  RatioW                   := ImageFoto.Width/ImageFoto.Height;
  BBreiteW                 := ImageFoto.Width;
  GroupBoxDrucken.Visible  := false;
  Links                    := 20;
  Ausschnitt.Enabled       := false;
  SpeedganzesBild.Enabled  := false;
  SpeedAusschneiden.Enabled:= false;
  EFarbe.Enabled           := false;
  importieren.Enabled      := false;
  Speedeinfuegen.Enabled   := false;
  SpeedausDatei.Enabled    := false;
  SpeedFarbeP.Enabled      := false;
  SpeedEFarbe.Enabled      := false;
  SpeedFont.Enabled        := false;
  SpeedText.Enabled        := false;
  SpeedLangeA.Enabled      := false;
  SpeedKurzeA.Enabled      := false;
  SpeedDrehen.Enabled      := false;
  Fortschritt.Visible      := false;
  Bdrehen.Enabled          := false;
  SpeedBdrehen.Enabled     := false;
  Schieben                 := false;
  Klick                    := false;
  For i := 1 to 30 do
    ListBoxWinkel.Items.Add (IntToStr(i));
  ListBoxWinkel.Visible    := false;
  LabelWinkel.Visible      := false;
  AnOk                     := false;
  PanelDrucken.Visible     := false;
  for i := 1 to 5 do
    Gedrueckt[i] := false;
end;

procedure TForm102.ButtonStartClick(Sender: TObject);
begin
  importieren.Enabled    := true;
  Speedeinfuegen.Enabled := true;
  SpeedausDatei.Enabled  := true;
  WFarbe.Enabled         := true;
  SpeedFarbeP.Enabled    := true;
  Hintergrund.Enabled    := true;
  BRahmen.Enabled        := true;
  ListBoxDaten.Clear;
  PanelSpeed.Visible     := true;
  WFarbe.Enabled         := true;
  Font.Enabled           := true;
  with ImageFoto.Canvas do
  begin
    Pen.Color   := RahmenFarbe;
    Brush.Color := HintFarbe;
    rectangle (0,0,ImageFoto.Width, ImageFoto.Height);
  end;
  FPhi := 90;
  if WellmanDatei then
  begin
    ButtonEinBeendenClick(Sender);
  end
  else
  begin
    Importieren.Enabled   := true;
    if ClipBoard.HasFormat(CF_Bitmap) then
    begin
      einfuegen.Enabled := true;
      SpeedEinfuegen.Enabled := true;
    end
    else
    begin
      einfuegen.Enabled      := false;
      SpeedEinfuegen.Enabled := false;
    end;
    LabelText.Caption := Tx(1068);
  end;
end;

procedure TForm102.ButtonZurueckClick(Sender: TObject);
begin
  Xmarker1 := nil;
  Xmarker2 := nil;
  Xmarker3 := nil;
  Xmarker4 := nil;
  Ymarker1 := nil;
  Ymarker2 := nil;
  Ymarker3 := nil;
  Ymarker4 := nil;
  Xschn    := nil;
  Yschn    := nil;
  BitmapFoto.Free;
  if not WellmanDatei then BitmapNeu.Free;
  SetCurrentDir(DirectS);
  ImageFoto.Picture:=nil;
  Form102.Close;
end;

procedure TForm102.ButtonBeendenClick(Sender: TObject);
begin
  Xmarker1 := nil;
  Xmarker2 := nil;
  Xmarker3 := nil;
  Xmarker4 := nil;
  Ymarker1 := nil;
  Ymarker2 := nil;
  Ymarker3 := nil;
  Ymarker4 := nil;
  Xschn    := nil;
  Yschn    := nil;
  BitmapFoto.Free;
  if not WellmanDatei then BitmapNeu.Free;
  SetCurrentDir(DirectS);
  ImageFoto.Picture:=nil;
  if WellmanDatei then Form103.Close;
  Form102.Close;
  Form101.Close;
end;

procedure TForm102.einfuegenClick(Sender: TObject);
var
  BHoehe  : word;
  BBreite : word;
  Ratio   : real;
begin
  ImageFoto.Visible := true;
  ImageFoto.Canvas.CopyMode := cmSrcCopy;
  Hintergrund.Enabled := false;
  BRahmen.Enabled     := false;
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
  Ausschnitt.Enabled        := true;
  SpeedganzesBild.Enabled   := true;
  SpeedAusschneiden.Enabled := true;
  WFarbe.Enabled            := false;
  LabelText.Caption         := Tx(1609)+'?';
  if DemoB then DemoText (ImageFoto.Canvas,10,ImageFoto.Height-20);
end;

procedure TForm102.SpeedEinfuegenClick(Sender: TObject);
begin
  einfuegenClick(Sender);
end;

procedure TForm102.ausDateiClick(Sender: TObject);
begin
  PanelImport.Visible := true;
  Hintergrund.Enabled := false;
  BRahmen.Enabled     := false;
  WFarbe.Enabled      := false;
end;

procedure TForm102.SpeedausDateiClick(Sender: TObject);
begin
  ausDateiClick(Sender);
end;

procedure TForm102.ListBoxImportClick(Sender: TObject);
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
  PanelImport.Visible := false;
end;

procedure TForm102.oeffnenBMPClick(Sender: TObject);
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

procedure TForm102.oeffnenGIFClick(Sender: TObject);
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

procedure TForm102.oeffnenTIFClick(Sender: TObject);
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

procedure TForm102.oeffnenJPGClick(Sender: TObject);
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

procedure TForm102.oeffnenWMFClick(Sender: TObject);
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

procedure TForm102.oeffnenEMFClick(Sender: TObject);
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

procedure TForm102.oeffnenPNGClick(Sender: TObject);
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

procedure TForm102.GanzesBildClick(Sender: TObject);
begin
  Auswertung(Sender);
  LabelDaten.Visible   := true;
  LabelX.Visible       := true;
  ListBoxDaten.Visible := true;
  LabelZahl.Visible    := true;
  Ziehen               := false;
  Grafik.Enabled       := true;
  Bdrehen.Enabled      := true;
  LabelText.Caption    := Tx(1756);
end;

procedure TForm102.SpeedganzesBildClick(Sender: TObject);
begin
  GanzesBildClick(Sender);
end;

procedure TForm102.ausschneidenClick(Sender: TObject);
begin
  LabelText.Caption    := Tx(1610);
  RechteckS            := 'LinksOben';
  LabelDaten.Visible   := true;
  LabelX.Visible       := true;
  ListBoxDaten.Visible := true;
  LabelZahl.Visible    := true;
  Ziehen               := false;
  Grafik.Enabled       := true;
end;

procedure TForm102.SpeedAusschneidenClick(Sender: TObject);
begin
  ausschneidenClick(Sender);
end;

procedure TForm102.rotierenClick(Sender: TObject);
begin
  MarkerS                   := 'Punkt1';
  Ausschnitt.Enabled        := false;
  SpeedganzesBild.Enabled   := false;
  SpeedAusschneiden.Enabled := false;
  LabelText.Caption         := Tx(1757);
  Klick                     := true;
end;

procedure TForm102.SpeedBdrehenClick(Sender: TObject);
begin
  rotierenClick(Sender);
end;

procedure TForm102.NichtDrehenClick(Sender: TObject);
begin
  LabelText.Caption := Tx(1741);
  Klick := true;
end;

Procedure TForm102.Auswertung (Sender: TObject);
begin
  with ImageFoto.Canvas do
  begin
    Pen.Width := 1;
    Pen.Color := clRed;
    Xm := ImageFoto.Width div 2;
    Ym := ImageFoto.Height div 2;
  end;
  LabelDatei.Visible    := true;
  MaskEditDatei.Visible := true;
  MaskEditDatei.Text    := CurrentFile;
  CurrentFile           := '';
  index                 := 0;
  MarkerS               := 'Marker1';
  LabelText.Caption := Tx(1741);
  BitmapFoto := TBitmap.Create;
  BitmapFoto.Assign(ImageFoto.Picture);
end;

procedure TForm102.ImageFotoMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  Alpha    : extended;
  Yo,Xr    : integer;
  Rahmen   : TRect;
  i, j     : word;
  ZeileS   : string;
  Laenge   : integer;
  Hoehe    : integer;
  Tan      : real;
  Dreh     : real;
  TanDreh  : real;
  Xmm, Ymm : integer;
  XmR, YmR : integer;
  Xkorr    : integer;
  Ykorr    : integer;
  Bild     : array of array of TColor;
  k, l     : integer;
  Nenner   : real;

begin
  if BText then exit;
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
        Brush.Color := clRed;
        Pen.Color   := clRed;
        Ellipse(Xlinks-2,Ylinks-2,Xlinks+2,Ylinks+2);
      end;
      LabelText.Caption := Tx(1611);
      exit;
    end;
    if RechteckS = 'RechtsUnten' then
    begin
      Xrechts := X;
      Yrechts := Y;
      ImageFoto.Canvas.Ellipse(Xrechts-2,Yrechts-2, Xrechts+2,Yrechts+2);
      RechteckS := 'Fertig';
      Auswertung (Sender);
      exit;
    end;
    if MarkerS = 'Marker1' then
    begin
      ButtonLoeschen.Visible := true;
      inc(index);
      Xmarker1[index] := x;
      Ymarker1[index] := y;
      MarkerS  := 'Marker2';
      with ImageFoto.Canvas do
      begin
        Pen.Color   := clRed;
        Brush.Color := clRed;
        ellipse(X-2,Y-2,X+2,Y+2);
      end;
      exit;
    end;
    if MarkerS = 'Marker2' then
    begin
      Xmarker2[index] := x;
      Ymarker2[index]:= y;
      with ImageFoto.Canvas do
      begin
        ellipse(X-2,Y-2,X+2,Y+2);
        moveto(Xmarker1[index],Ymarker1[index]);
        lineto(Xmarker2[index],Ymarker2[index]);
        Nenner := Xmarker2[index] - Xmarker1[index];
        if Nenner = 0 then Nenner := 0.0001;
        Alpha := arctan((Ymarker2[index] - Ymarker1[index])/Nenner);
        yo := round(sin(-Alpha)*ImageFoto.Width);
        Xr := round(cos(Alpha)*ImageFoto.Width);
        moveto (Xm-100,Ym);
        lineto (xm-100+Xr, Ym-Yo);
        moveto (Xm-100,Ym);
        lineto (Xm-100-Xr, Ym+Yo);
      end;
      LabelText.Caption := Tx(1742);
      MarkerS := 'Marker3';
      exit;
    end;
    if MarkerS = 'Marker3' then
    begin
      Xmarker3[index] := x;
      Ymarker3[index] := y;
      MarkerS  := 'Marker4';
      with ImageFoto.Canvas do
      begin
        Pen.Color   := clRed;
        Brush.Color := clRed;
        ellipse(X-2,Y-2,X+2,Y+2);
      end;
      exit;
    end;
    if MarkerS = 'Marker4' then
    begin
      Xmarker4[index] := x;
      Ymarker4[index] := y;
      with ImageFoto.Canvas do
      begin
        ellipse(X-2,Y-2,X+2,Y+2);
        moveto(Xmarker3[index],Ymarker3[index]);
        lineto(Xmarker4[index],Ymarker4[index]);
        Nenner := Xmarker4[index] - Xmarker3[index];
        if Nenner = 0 then Nenner := 0.0001;
        Alpha := arctan((Ymarker4[index] - Ymarker3[index])/Nenner);
        yo := round(sin(-Alpha)*ImageFoto.Width);
        Xr := round(cos(Alpha)*ImageFoto.Width);
        moveto (Xm+100,Ym);
        lineto (Xm+100+Xr, Ym-Yo);
        moveto (Xm+100,Ym);
        lineto (Xm+100-Xr,Ym+Yo);
      end;
      LabelText.Caption := Tx(1743);
      MarkerS := 'Schnitt';
      exit;
    end;
    if MarkerS = 'Schnitt' then
    begin
      Xschn[index] := X;
      Yschn[index] := y;
      with ImageFoto.Canvas do
      begin
        Pen.Color   := clRed;
        Brush.Color := clRed;
        ellipse (X-3,Y-3,X+3,Y+3);
        Zeiles :='      '+ IntToStr(x) + '    '+IntToStr(y);
        ListBoxDaten.Items.Add (ZeileS);
        LabelNum.Caption := IntToStr(index);
        draw(0,0,BitmapFoto);
        for i := 1 to index do
        begin
          Pen.Color := clRed;
          moveto (Xmarker1[i],Ymarker1[i]);
          lineto (Xmarker2[i],Ymarker2[i]);
          moveto (Xmarker3[i],Ymarker3[i]);
          lineto (Xmarker4[i],Ymarker4[i]);
          Pen.Color   := FryFarbePunkte;
          Brush.Color := FryFarbePunkte;
          ellipse (Xschn[i]-3,Yschn[i]-3, Xschn[i]+3,Yschn[i]+3);
        end;
        BitmapNeu := TBitmap.Create;
        BitmapNeu.Assign(ImageFoto.Picture);
      end;
      ButtonEinBeenden.Visible := true;
      LabelText.Caption := Tx(1744);
      MarkerS := 'Marker1';
      exit;
    end;
    if MarkerS = 'Move' then
    begin
      with ImageFoto.Canvas do
      begin
        Pen.Color := FryFarbeEllipse;
        if EAchsenS = 'Achsen' then
        begin
          if Pixels[x,y] = Farbe then
          begin
            Ziehen := true;
            Brush.Style := bsClear;
            RotEllipse(WLang,WKurz,Fphi,X0,Y0,EPunkt);
            Polygon (EPunkt);
          end;
        end;
        if EAchsenS = 'Schieben' then
        begin
          if Pixels[x,y] = Farbe then
          begin
            Schieben := true;;
            RotEllipse(WLang,WKurz,Fphi,Xm,Ym,EPunkt);
            Polygon (EPunkt);
          end;
        end;
      end;
      exit;
    end;
    if MarkerS = 'Punkt1' then
    begin
      Xpunkt1 := X;
      Ypunkt1 := Y;
      ImageFoto.Canvas.Ellipse(X-3,Y-3,X+3,Y+3);
      MarkerS := 'Punkt2';
      LabelText.Caption := Tx(1758);
      exit;
    end;
    if MarkerS = 'Punkt2' then
    begin
      Fortschritt.Visible := true;
      setlength(Bild,600+1);
      for i:= 0 to 600 do setlength(Bild[i],901);
      Xpunkt2 := X;
      Ypunkt2 := Y;
      Xd1   := min (Xpunkt1, Xpunkt2);
      Xd2   := max (Xpunkt1, Xpunkt2);
      if Xd1 = Xpunkt1 then
      begin
        Yd1 := Ypunkt1;
        Yd2 := Ypunkt2;
      end
      else
      begin
        Yd1 := Ypunkt2;
        Yd2 := Ypunkt1;
       end;
       Laenge := Xd2-Xd1;
       Hoehe  := Yd2-Yd1;
       TanDreh := Hoehe/Laenge;
       Dreh    := arctan(TanDreh);
       with ImageFoto do
       begin
         Fortschritt.Visible := true;
         Fortschritt.Max     := Width;
         Fortschritt.Step    := 5;
         Xmm   := Width div 2;
         Ymm   := Height div 2;
         for i := 0 to Height do
         begin
           for j := 0 to Width do Bild[i,j] := Canvas.pixels[j,i];
           Fortschritt.StepIt;
        end;
        Canvas.Brush.Color := HintFarbe;
        Canvas.Rectangle(0,0,Width,Height);
        xmR   := round(cos(Dreh)*Xmm-sin(Dreh)*Ymm);
        ymR   := round(sin(Dreh)*Xmm+cos(Dreh)*Ymm);
        Xkorr := Xmm - XmR;
        Ykorr := Ymm - YmR;
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
      LabelText.Caption  := '';
      MarkerS := 'Marker1';
      Bdrehen.Enabled := false;
      BitmapFoto := TBitmap.Create;
      BitmapFoto.Assign(ImageFoto.Picture);
      Auswertung (Sender);
      exit;
    end;
  end;
end;

procedure TForm102.ImageFotoMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y  : Integer);
var
  Bo    : real;
begin
  if not Klick then exit;
  Bo := Pi/180;
  with ImageFoto.Canvas do
  begin
    if Ziehen then
    begin
      Draw(0,0,BitmapFoto);
      if AchseS = 'lang' then
      begin
        Wlang := 2*sqrt(sqr(x - X0) + sqr(Y0 - y));
        X1 := X0 + round(Wlang*cos(Fphi*Bo)/2)+10;
        Y1 := Y0 - round(Wlang*sin(Fphi*Bo)/2 +10*Fphi/abs(Fphi));
      end;
      if AchseS = 'kurz' then
      begin
        Wkurz := 2*sqrt(sqr(X0 - x - 10) + sqr(Y0 - y - 10));
        X1 := X0 - round(Wkurz*cos((Fphi+90)*Bo)/2 -10*Fphi/abs(Fphi));
        Y1 := Y0 + round(Wkurz*sin((Fphi+90)*Bo)/2) +10;;
      end;
      Brush.Style := bsSolid;
      Brush.Color := Farbe;
      Pen.Color   := Farbe;
      ellipse(X1-5,Y1-5,X1+5,Y1+5);
      Pen.Color   := FryFarbeEllipse;
      Brush.Style := bsClear;
      RotEllipse(Wlang,WKurz,Fphi,X0,Y0,EPunkt);
      Polygon (EPunkt);
    end;
    if Schieben then
    begin
      Xm := x;
      Ym := y;
      with ImageFoto do
      begin
        Draw(0,0,BitmapFoto);
        Brush.Style := bsClear;
        Pen.Color   := FryFarbeEllipse;
        RotEllipse(WLang,WKurz,Fphi,X,Y,EPunkt);
        Polygon (EPunkt);
      end;
    end;
  end;
end;

procedure TForm102.ImageFotoMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  Ausschn    : TRect;
  Xende      : word;
  Yende      : word;
  Recht      : TRect;
begin
  if not Klick then exit;
  if not Btext then
  begin
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
        ImageFoto.Canvas.Pen.Color   := clWhite;
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
      LabelText.Caption := '';
      Auswertung(Sender);
      RechteckS := '';
      exit;
    end;
    if Ziehen then
    begin
      MarkerS := '';
      AchseS  := '';
      Ziehen  := false;
      Klick   := false;
      LabelText.Caption := '';
      exit;
    end;
    if Schieben then
    begin
      MarkerS  := '';
      AchseS   := '';
      Ziehen   := false;
      Klick    := false;
      Schieben := false;
      LabelText.Caption := '';
      X0 := x;
      Y0 := y;
      exit;
    end;
  end;
  if BText then
  begin
    TextBitmap := TBitmap.Create;
    TextBitmap.Assign(ImageFoto.Picture);
    with ImageFoto.Canvas do
    begin
      Brush.Color := clWhite;
      Font.Name   := DSchrift;
      Font.Size   := DGroesse;
      Font.Color  := DFarbe;
      Font.Style  := DStyle;
      TextOut(x,y,TeS);
    end;
    PanelText.Visible      := false;
    PanelPlazieren.Visible := false;
    BText                  := false;
    Rueck.Enabled          := true;
  end;
end;

procedure TForm102.ButtonEinBeendenClick(Sender: TObject);
var
  i       : word;
  Xan     : word;
  Xen     : word;
  Yan     : word;
  Yen     : word;
  Xs2,Ys2 : integer;

begin
  EFarbe.Enabled      := true;
  SpeedEFarbe.Enabled := true;
  Grafik.Enabled      := true;
  Eanpassen.Enabled   := true;
  SpeedLangeA.Enabled := true;
  SpeedKurzeA.Enabled := true;
  SpeedDrehen.Enabled := true;
  if not WellmanDatei then ZahlGlob := index;
  Xan := 2000;
  Xen := 0;
  Yan := 2000;
  Yen := 0;
  for i := 1 to ZahlGlob do
  begin
    if Xschn[i] < Xan then Xan := Xschn[i];
    if Xschn[i] > Xen then Xen := Xschn[i];
    if Yschn[i] < Yan then Yan := Yschn[i];
    if Yschn[i] > Yen then Yen := Yschn[i];
  end;
  WLang := Yen - Yan;
  WKurz := Xen - Xan;
  Xm    := Xan + round(WKurz/2);
  Ym    := Yan + round(WLang/2);
  X0    := Xm;
  Y0    := Ym;
  with ImageFoto.Canvas do
  begin
    Pen.Color   := RahmenFarbe;
    Brush.Color := HintFarbe;
    rectangle(0,0,ImageFoto.Width,ImageFoto.Height);
    for i := 1 to ZahlGlob do
    begin
      Pen.Color   := FryFarbePunkte;
      Brush.Color := FryFarbePunkte;
      ellipse(Xschn[i]-3,Yschn[i]-3,Xschn[i]+3,Yschn[i]+3);
      Xs2  := Xm-(Xschn[i]-Xm);
      Ys2  := Ym+(Ym-Yschn[i]);
      ellipse (Xs2-3,Ys2-3,Xs2+3,Ys2+3);
    end;
  end;
  BitmapFoto := TBitmap.Create;
  BitmapFoto.Assign(ImageFoto.Picture);
  LabelText.Caption  := Tx(1752);
  With ImageFoto.Canvas do
  begin
    Pen.Color   := FryFarbeEllipse;
    Brush.Style := bsClear;
    Rotellipse (Wlang,Wkurz,FPhi,Xm,Ym,EPunkt);
    Polygon(EPunkt);
  end;
  Pspeichern.Enabled      := true;
  Speedspeichern.Enabled  := true;
  AchseS                  := 'lang';
  WFarbe.Enabled          := true;
  ButtonLoeschen.Visible  := false;
end;

procedure TForm102.speichernClick(Sender: TObject);
begin
  if CurrentFile <> '' then PunkteSpeichern(CurrentFile,ZahlGlob,
    Xschn, Yschn)
  else speichernUClick(Sender);
end;

procedure TForm102.SpeedspeichernClick(Sender: TObject);
begin
  speichernClick(Sender);
end;

procedure TForm102.speichernUClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := ExtenS;
  SaveDialog1.Filter := 'Points of ellipse (*.wel)|*.WEL';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    PunkteSpeichern (CurrentFile, ZahlGlob, Xschn, Yschn);
  end;
end;

procedure TForm102.PFarbeClick(Sender: TObject);
var
  Datei    : TextFile;
  i        : word;
  FarbeS   : string;
  Xs2,Ys2  : integer;
  Rs, PhiS : string;
begin
  if ColorDialog1.Execute then FryFarbePunkte := ColorDialog1.Color;
  FarbeS := ColorToString (FryFarbePunkte);
  KonfigZeileS[91] := 'Colour of points (Fry)     :,'+FarbeS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  if not AnOk then ButtonStartClick(Sender)
  else
  begin
    with ImageFoto.Canvas do
    begin
      Pen.Color   := RahmenFarbe;
      Brush.Color := HintFarbe;
      rectangle(0,0,ImageFoto.Width,ImageFoto.Height);
      for i := 1 to ZahlGlob do
      begin
        Pen.Color   := FryFarbePunkte;
        Brush.Color := FryFarbePunkte;
        ellipse(Xschn[i]-3,Yschn[i]-3,Xschn[i]+3,Yschn[i]+3);
        Xs2  := Xm-(Xschn[i]-Xm);
        Ys2  := Ym+(Ym-Yschn[i]);
        ellipse (Xs2-3,Ys2-3,Xs2+3,Ys2+3);
      end;
      Pen.Color := FryFarbeEllipse;
      Brush.Style := bsClear;
      RotEllipse(Wlang,Wkurz,Fphi,X0,Y0,EPunkt);
      Polygon (EPunkt);
      Pen.Color   := FryFarbeEllipse;
      Font.Color  := FryFarbeEllipse;
      Brush.Color := clWhite;
      Rectangle (0,ImageFoto.Height-60,90,ImageFoto.Height);
      Font.Size := 14;
      Font.Name := Dschrift;   //'Times New Roman';
      PhiS := IntToStr(Fphi);
      RS := FloatToStrF(WLang/WKurz, ffFixed,6,2);
      Textout(5,ImageFoto.Height-50,'R = '+RS);
      Font.Name := 'Symbol';
      Textout(5,ImageFoto.Height-30,'j = '+ PhiS+'�');
      Pen.Color   := AequatorFarbe;
      moveto (100,Ym);
      lineto (2*Xm-100,Ym);
      ellipse (Xm-3,Ym-3,Xm+3,Ym+3);
    end;
  end;
end;

procedure TForm102.SpeedFarbePClick(Sender: TObject);
begin
  PFarbeClick(Sender);
end;

procedure TForm102.EFarbeClick(Sender: TObject);
var
  Datei   : TextFile;
  i       : word;
  FarbeS  : string;
  Xs2,Ys2 : integer;
  RS,PhiS : string;
begin
  if ColorDialog1.Execute then FryFarbeEllipse := ColorDialog1.Color;
  FarbeS := ColorToString (FryFarbeEllipse);
  KonfigZeileS[90]  := 'Colour of ellipse (Fry)    :,'+FarbeS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  if not AnOk then ButtonStartClick(Sender)
  else
  begin
    with ImageFoto.Canvas do
    begin
      Pen.Color   := RahmenFarbe;
      Brush.Color := HintFarbe;
      rectangle(0,0,ImageFoto.Width,ImageFoto.Height);
      for i := 1 to ZahlGlob do
      begin
        Pen.Color   := FryFarbePunkte;
        Brush.Color := FryFarbePunkte;
        ellipse(Xschn[i]-3,Yschn[i]-3,Xschn[i]+3,Yschn[i]+3);
        Xs2  := Xm-(Xschn[i]-Xm);
        Ys2  := Ym+(Ym-Yschn[i]);
        ellipse (Xs2-3,Ys2-3,Xs2+3,Ys2+3);
      end;
      Pen.Color := FryFarbeEllipse;
      Brush.Style := bsClear;
      RotEllipse(Wlang,Wkurz,Fphi,X0,Y0,EPunkt);
      Polygon (EPunkt);
      Pen.Color   := FryFarbeEllipse;
      Font.Color  := FryFarbeEllipse;
      Brush.Color := clWhite;
      Rectangle (0,ImageFoto.Height-60,90,ImageFoto.Height);
      Font.Size := 14;
      Font.Name := Dschrift;   //'Times New Roman';
      PhiS := IntToStr(Fphi);
      RS := FloatToStrF(WLang/WKurz, ffFixed,6,2);
      Textout(5,ImageFoto.Height-50,'R = '+RS);
      Font.Name := 'Symbol';
      Textout(5,ImageFoto.Height-30,'j = '+ PhiS+'�');
      Pen.Color   := AequatorFarbe;
      moveto (100,Ym);
      lineto (2*Xm-100,Ym);
      ellipse (Xm-3,Ym-3,Xm+3,Ym+3);
    end;
  end;
end;

procedure TForm102.SpeedEFarbeClick(Sender: TObject);
begin
  EFarbeClick(Sender);
end;

procedure TForm102.FarbeRefClick(Sender: TObject);
var
  Datei   : TextFile;
  i       : word;
  Farbe   : TColor;
  FarbeS  : string;
  Xs2,Ys2 : integer;
  RS,PhiS : string;
begin
  Farbe := clWhite;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS        := ColorToString (Farbe);
  AequatorFarbe := StringToColor(FarbeS);
  KonfigZeileS[26] := 'Colour of Equator          :,'+FarbeS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  if not AnOk then ButtonStartClick (Sender)
  else
  begin
    with ImageFoto.Canvas do
    begin
      Pen.Color   := RahmenFarbe;
      Brush.Color := HintFarbe;
      rectangle(0,0,ImageFoto.Width,ImageFoto.Height);
      for i := 1 to ZahlGlob do
      begin
        Pen.Color   := FryFarbePunkte;
        Brush.Color := FryFarbePunkte;
        ellipse(Xschn[i]-3,Yschn[i]-3,Xschn[i]+3,Yschn[i]+3);
        Xs2  := Xm-(Xschn[i]-Xm);
        Ys2  := Ym+(Ym-Yschn[i]);
        ellipse (Xs2-3,Ys2-3,Xs2+3,Ys2+3);
      end;
      Pen.Color := FryFarbeEllipse;
      Brush.Style := bsClear;
      RotEllipse(Wlang,Wkurz,Fphi,X0,Y0,EPunkt);
      Polygon (EPunkt);
      Pen.Color   := FryFarbeEllipse;
      Font.Color  := FryFarbeEllipse;
      Brush.Color := clWhite;
      Rectangle (0,ImageFoto.Height-60,90,ImageFoto.Height);
      Font.Size := 14;
      Font.Name := Dschrift;   //'Times New Roman';
      PhiS := IntToStr(Fphi);
      RS := FloatToStrF(WLang/WKurz, ffFixed,6,2);
      Textout(5,ImageFoto.Height-50,'R = '+RS);
      Font.Name := 'Symbol';
      Textout(5,ImageFoto.Height-30,'j = '+ PhiS+'�');
      Pen.Color   := AequatorFarbe;
      moveto (100,Ym);
      lineto (2*Xm-100,Ym);
      ellipse (Xm-3,Ym-3,Xm+3,Ym+3);
    end;
  end;
end;

procedure TForm102.SpeedRefClick(Sender: TObject);
begin
  FarbeRefClick(Sender);
end;

procedure TForm102.FontClick(Sender: TObject);
begin
  WaehlFont(FontDialog1);        //Grafik.pas
end;

procedure TForm102.SpeedFontClick(Sender: TObject);
begin
  FontClick(Sender);
end;

procedure TForm102.TextschreibenClick(Sender: TObject);
begin
  PanelText.Visible := true;
  MaskEditText.SetFocus;
  Klick := true;
  BText := true;
  MaskEditText.Clear;
  PanelPlazieren.Visible := false;
end;

procedure TForm102.SpeedTextClick(Sender: TObject);
begin
  TextschreibenClick(Sender);
end;

procedure TForm102.RueckClick(Sender: TObject);
begin
  ImageFoto.Canvas.Draw (0,0,TextBitmap);
  TextBitmap.free;
  Rueck.Enabled     := false;
end;

procedure TForm102.SpeedRueckClick(Sender: TObject);
begin
  RueckClick(Sender);
end;

procedure TForm102.MaskEditTextKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(13) then
  begin
    TeS := MaskEditText.Text;
    PanelPlazieren.Visible := true;
  end;
end;

procedure TForm102.DspeichernClick(Sender: TObject);
begin
  if CurrentFile <> '' then PunkteSpeichern(CurrentFile,ZahlGlob,
     Xschn,Yschn)
   else speichernUClick(Sender);
end;

procedure TForm102.DspeichernUClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := ExtenS;
  if UCaseS(ExtenS) = 'WEL' then
    SaveDialog1.Filter := 'Wellman method (*.wel)|*.WEL';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    PunkteSpeichern (CurrentFile, ZahlGlob, Xschn, Yschn);
  end;
end;

procedure TForm102.EdrehenClick(Sender: TObject);
begin
  Hintergrund.Enabled      := false;
  SpeedHintergrund.Enabled := false;
  BRahmen.Enabled          := false;
  SpeedRahmen.Enabled      := false;
  ButtonGegenUhr.Visible   := true;
  ButtonUhr.Visible        := true;
  ButtonOk.Visible         := true;
  WFarbe.Enabled := false;
//  Xm := X0;
//  Xm := Y0;
  Winkel := 1;
  ListBoxWinkel.Visible := true;
  LabelWinkel.Visible   := true;
  ButtonOK.Visible      := true;
end;

procedure TForm102.ListBoxWinkelClick(Sender: TObject);
var
  i : byte;
begin
  for i := 0 to ListboxWinkel.Items.Count-1 do
  begin
    if ListboxWinkel.Selected[i] then
      Winkel := StrToInt(ListBoxWinkel.Items.Strings[i]);
  end;
end;

procedure TForm102.SpeedDrehenClick(Sender: TObject);
begin
  EdrehenClick(Sender);
end;

procedure TForm102.VerschiebenClick(Sender: TObject);
begin
  Hintergrund.Enabled      := false;
  SpeedHintergrund.Enabled := false;
  BRahmen.Enabled          := false;
  SpeedRahmen.Enabled      := false;
  Bo       := Pi/180;
  Klick    := true;
  MarkerS  := 'Move';
  EAchsenS := 'Schieben';
  Farbe   := ColorToRGB(FryFarbeEllipse) xor $FFFFFF;
  with ImageFoto.Canvas do
  begin
    Draw(0,0,BitmapFoto);
    Pen.Color := FryFarbeEllipse;
    RotEllipse(WLang,WKurz,Fphi,Xm,Ym,EPunkt);
    Brush.Style := bsClear;
    Polygon (EPunkt);
    Brush.Style := bsSolid;
    Brush.Color := Farbe;
    Pen.Color   := Farbe;
    ellipse(Xm-4,Ym-4,Xm+4,Ym+4);
    Brush.Style := bsClear;
  end;
  WFarbe.Enabled   := false;
  ButtonOK.Visible := true;
end;

procedure TForm102.ButtongegenUhrClick(Sender: TObject);
begin
  Schieben := false;
  Fphi := Fphi-Winkel;
  with ImageFoto.Canvas do
  begin
    Draw(0,0,BitmapFoto);
    Brush.Style := BsClear;
    Pen.Color   := FryFarbeEllipse;
    RotEllipse(WLang,WKurz,Fphi,Xm,Ym,EPunkt);
    Polygon (EPunkt);
  end;
end;

procedure TForm102.ButtonUhrClick(Sender: TObject);
begin
  Schieben := false;
  Fphi := Fphi + Winkel;
  Xm := X0;
  Ym := Y0;
  with ImageFoto.Canvas do
  begin
    Brush.Style := bsClear;
    Draw(0,0,BitmapFoto);
    Pen.Color := FryFarbeEllipse;
    RotEllipse(WLang,WKurz,Fphi,Xm,Ym,EPunkt);
    Polygon (EPunkt);
  end;
end;

procedure TForm102.ButtonOKClick(Sender: TObject);
var
  PhiS, RS : string;
begin
  AnOk := true;
  LabelText.Caption := Tx(1728);
  MarkerS := 'PunktL';
  Klick   := true;
  WFarbe.Enabled      := true;
  SpeedFarbeP.Enabled := true;
  SpeedEFarbe.Enabled := true;
  SpeedRef.Enabled    := true;
  Hintergrund.Enabled := true;
  BRahmen.Enabled     := true;
  with ImageFoto.Canvas do
  begin
    Draw (0,0,BitmapFoto);
    Pen.Color := FryFarbeEllipse;
    Brush.Style := bsClear;
    RotEllipse(Wlang,Wkurz,Fphi,X0,Y0,EPunkt);
    Polygon (EPunkt);
    if Fphi < -90 then Fphi := Fphi + 180;
    if Fphi > 90 then Fphi := Fphi - 180;
    PhiS := IntToStr(Fphi);
    RS := FloatToStrF(WLang/WKurz, ffFixed,6,2);
    Brush.Color := clWhite;
    Pen.Color   := AequatorFarbe;
    moveto (100,Ym);
    lineto (2*Xm-100,Ym);
    Brush.Color := AequatorFarbe;
    ellipse(Xm-4,Ym-4,Xm+4,Ym+4);
    Pen.Color   := FryFarbeEllipse;
    Font.Color  := FryFarbeEllipse;
    Brush.Color := clWhite;
    Rectangle (0,ImageFoto.Height-60,90,ImageFoto.Height);
    Font.Size := 14;
    Font.Name := Dschrift;   //'Times New Roman';
    Textout(5,ImageFoto.Height-50,'R = '+RS);
    Font.Name := 'Symbol';
    Textout(5,ImageFoto.Height-30,'j = '+ PhiS+'�');
  end;
  ButtonUhr.Visible      := false;
  ButtongegenUhr.Visible := false;
  ButtonOK.Visible       := false;
  ListBoxWinkel.Visible  := false;
  LabelWinkel.Visible    := false;
  LabelText.Caption      := '';
  Font.Enabled           := true;
  SpeedFont.Enabled      := true;
  Text.Enabled           := true;
  SpeedText.Enabled      := true;
  Klick                  := false;
end;

procedure TForm102.LangeAClick(Sender: TObject);
var
  Bo     : real;
begin
  Hintergrund.Enabled      := false;
  SpeedHintergrund.Enabled := false;
  BRahmen.Enabled          := false;
  SpeedRahmen.Enabled      := false;
  Bo := Pi/180;
  MarkerS  := 'Move';
  Ziehen   := false;
  AchseS   := 'lang';
  Klick    := true;
  EAchsenS := 'Achsen';
  Schieben := false;
  Farbe  := ColorToRGB(FryFarbeEllipse) xor $FFFFFF;
  with ImageFoto.Canvas do
  begin
    Draw(0,0,BitmapFoto);
    Pen.Color := FryFarbeEllipse;
    Brush.Style := bsClear;
    RotEllipse(Wlang,Wkurz,Fphi,X0,Y0,EPunkt);
    Polygon (EPunkt);
    X1 := X0 + round(Wlang*cos(Fphi*Bo)/2)+10;
    Y1 := Y0 - round(WLang*sin(Fphi*Bo)/2+10*Fphi/abs(Fphi));
    Brush.Style := bsSolid;
    Brush.Color := Farbe;
    Pen.Color   := Farbe;
    ellipse(X1-5,Y1-5,X1+5,Y1+5);
  end;
  WFarbe.Enabled   := false;
  ButtonOK.Visible := true;
end;

procedure TForm102.SpeedLangeAClick(Sender: TObject);
begin
  LangeAClick(Sender);
end;

procedure TForm102.KurzeAClick(Sender: TObject);
var
  Bo     : real;
begin
  Hintergrund.Enabled      := false;
  SpeedHintergrund.Enabled := false;
  BRahmen.Enabled          := false;
  SpeedRahmen.Enabled      := false;
  Bo       := Pi/180;
  Klick    := true;
  MarkerS  := 'Move';
  AchseS   := 'kurz';
  EAchsenS := 'Achsen';
  Schieben := false;
  Farbe    := ColorToRGB(FryFarbeEllipse) xor $FFFFFF;
  with ImageFoto.Canvas do
  begin
    Draw(0,0,BitmapFoto);
    Pen.Color := FryFarbeEllipse;
    Brush.Style := bsClear;
    RotEllipse(Wlang,Wkurz,Fphi,X0,Y0,EPunkt);
    Polygon (EPunkt);
    X1 := X0 - round(Wkurz*cos((Fphi+90)*Bo)/2 -10*Fphi/abs(Fphi));
    Y1 := Y0 + round(WKurz*sin((Fphi+90)*Bo)/2 +10);
    Brush.Style := bsSolid;
    Brush.Color := Farbe;
    Pen.Color   := Farbe;
    ellipse(X1-5,Y1-5,X1+5,Y1+5);
  end;
  WFarbe.Enabled   := false;
  ButtonOk.Visible := true;
end;

procedure TForm102.SpeedKurzeAClick(Sender: TObject);
begin
  KurzeAClick(Sender);
end;

procedure TForm102.BGroesseClick(Sender: TObject);
begin
  PanelGroesse.Visible := true;
  MaskEditBBreite.Text := IntTostr(BBreiteW);
  MaskEditBHoehe.Text  := IntToStr(BHoeheW);
  BildW := true;
end;

procedure TForm102.SpeedBGroesseClick(Sender: TObject);
begin
  BGroesseClick(Sender);
end;

procedure TForm102.MaskEditBBreiteKeyPress(Sender: TObject; var Key: Char);
var
  BBreiteS : string;
begin
  if Key = chr(13) then
  begin
    BBreiteS := MaskEditBBreite.Text;
    LeerLoeschen (BBreiteS);
    if BBreiteS = '' then exit
    else
    begin
      if BildW then
      begin
        BBreiteW            := StrToInt (BBreiteS);
        BHoeheW             := round(BBreiteW/RatioW);
        KonfigZeileS[153]   := 'Save Image Width (Wellman) :,'+BBreiteS;
        MaskEditBHoehe.Text := IntToStr(BHoeheW);
      end;
    end;
  end;
end;

procedure TForm102.MaskEditBHoeheKeyPress(Sender: TObject; var Key: Char);
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
      if BildW then
      begin
        BHoeheW  := StrToInt (BHoeheS);
        BBreiteW := round(BHoeheW*RatioW); 
        KonfigZeileS[153]    := 'Save Image Width (Wellman) :,'+IntToStr(BBreiteW);
        MaskEditBBreite.Text := IntToStr(BBreiteW);
      end;
    end;
    assignFile(Datei,FabricS+'\'+'Fabric.ini');
    rewrite (Datei);
    for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
    closefile (Datei);
  end;
end;

procedure TForm102.CheckBoxBildClick(Sender: TObject);
begin
  PanelGroesse.Visible := false;
end;

procedure TForm102.KopierenClick(Sender: TObject);
begin
  ClipBoard.Assign (ImageFoto.Picture);
end;

procedure TForm102.BspeichernClick(Sender: TObject);
begin
  PanelBspeichern.Visible := true;
  LabelText.Caption := '';
  HTransparent := false;
end;

procedure TForm102.SpeedEspeichernClick(Sender: TObject);
begin
  BspeichernClick(Sender);
end;

procedure TForm102.ListBoxBspeichernClick(Sender: TObject);
var
  Ratio : real;
begin
  BBreiteSt := BBreiteW;
  Ratio     := RatioW;
  GrafikSpeichern(ImageFoto, ListBoxBspeichern, Ratio,
                  SavePictureDialog1, SaveDialog1);
  PanelBspeichern.Visible := false;
end;

procedure TForm102.DeinrichtenClick(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TForm102.SpeedDeinrichtenClick(Sender: TObject);
begin
  DeinrichtenClick(Sender);
end;

procedure TForm102.druckenClick(Sender: TObject);
var
  i : byte;
begin
  PanelDrucken.Visible    := true;
  GroupBoxDrucken.Visible := true;
  ButtonDrucken.Enabled   := false;
  MaskEditLinks.EditMask  := '9999;0; ';
  MaskEditOben.EditMask   := '9999;0; ';
  MaskEditLaenge.EditMask := '9999;0; ';
  MaskEditLinks.Text      := IntToStr(BLinks);
  MaskEditOben.Text       := IntToStr(BOben);
  MaskEditLaenge.Text     := IntToStr(BLaenge);
  MaskEditSchrift.Clear;
  For i := 4 to 40 do
    ListBoxSchrift.Items.Add (IntToStr(i));
  MaskEditSchrift.SetFocus;
end;

procedure TForm102.SpeedDruckerClick(Sender: TObject);
begin
  druckenClick(Sender);
end;

procedure TForm102.ButtonDruckenClick(Sender: TObject);
var
  Bitmap  : TBitmap;
  Fenster : TRect;
  LRand   : word;
  ORand   : word;
  PLaenge : word;
  Hoehe   : word;
begin
  Links   := StrToInt(MaskEditLinks.Text);
  LRand   := round(Links*Printer.PageWidth/100);
  Oben    := StrToInt(MaskEditOben.Text);
  ORand   := round(Oben*Printer.PageHeight/100);
  Laenge  := StrToInt(MaskEditLaenge.Text);
  Hoehe   := Laenge*ImageFoto.Height/ImageFoto.Width;
  PLaenge := round(Laenge*Printer.Pagewidth/100);
  with Fenster do
  begin
    Left   := LRand;
    Top    := ORand;
    Right  := LRand + PLaenge;
    Bottom := ORand + Hoehe);
  end;
  Bitmap:=TBitmap.Create;
  try
    Bitmap.Assign(ImageFoto.picture.graphic);
    with Printer do
    begin
      Canvas.Font.Size  := Schrift;
      Canvas.Font.Name  := Dschrift;
      Canvas.Font.Color := clBlack;
      BeginDoc;
        Canvas.StretchDraw(Fenster,Bitmap);
        Canvas.Textout (Fenster.Left,Fenster.Bottom, TextS);
      EndDoc;
    end;
  finally
    Bitmap.free;
  end;
  GroupBoxDrucken.Visible := false;
  PanelDrucken.Visible    := false;
end;

procedure TForm102.ButtonAbortClick(Sender: TObject);
begin
  GroupBoxDrucken.Visible := false;
  PanelDrucken.Visible    := false;
end;

procedure TForm102.MaskEditLaengeChange(Sender: TObject);
var
  Datei : TextFile;
  i     : word;
begin
  KonfigZeileS[154] := 'Image Width (in % Paper W) :,'+MaskEditLaenge.Text;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
end;

procedure TForm102.MaskEditLinksChange(Sender: TObject);
var
  Datei : TextFile;
  i     : word;
begin
  KonfigZeileS[156] := 'Left (in % of Paper Width) :,'+MaskEditLinks.Text;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
end;

procedure TForm102.MaskEditObenChange(Sender: TObject);
var
  Datei : TextFile;
  i     : word;
begin
  KonfigZeileS[155] := 'Top (in % of Paper Width)  :,'+MaskEditOben.Text;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
end;

procedure TForm102.MaskEditSchriftKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(13) then
  begin
    TextS := MaskEditSchrift.Text;
    Gedrueckt[1] := true;
    if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
      ButtonDrucken.Enabled := true;
  end;
end;

procedure TForm102.ListBoxSchriftClick(Sender: TObject);
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
    ButtonDrucken.Enabled := true;
end;

procedure TForm102.RadioButtonLinksClick(Sender: TObject);
begin
  BuendigS := 'Links';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
  and (Gedrueckt[3] = true) then
    ButtonDrucken.Enabled := true;
end;

procedure TForm102.RadioButtonZentrClick(Sender: TObject);
begin
  BuendigS := 'Zentriert';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
  and (Gedrueckt[3] = true) then
    ButtonDrucken.Enabled := true;
end;

procedure TForm102.RadioButtonRechtsClick(Sender: TObject);
begin
  BuendigS := 'Rechts';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
  and (Gedrueckt[3] = true) then
    ButtonDrucken.Enabled := true;
end;

procedure TForm102.HintergrundClick(Sender: TObject);
var
  Datei   : TextFile;
  i       : word;
  Farbe   : TColor;
  FarbeS  : string;
  Xs2,Ys2 : integer;
  RS,PhiS : string;
begin
  Farbe        := clWhite;
  HTransparent := false;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS    := ColorToString (Farbe);
  HintFarbe := StringToColor(FarbeS);
  KonfigZeileS[3] := '  Background Colour        :,'+FarbeS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  if not AnOk then ButtonStartClick (Sender)
  else
  begin
    with ImageFoto.Canvas do
    begin
      Pen.Color   := RahmenFarbe;
      Brush.Color := HintFarbe;
      rectangle(0,0,ImageFoto.Width,ImageFoto.Height);
      for i := 1 to ZahlGlob do
      begin
        Pen.Color   := FryFarbePunkte;
        Brush.Color := FryFarbePunkte;
        ellipse(Xschn[i]-3,Yschn[i]-3,Xschn[i]+3,Yschn[i]+3);
        Xs2  := Xm-(Xschn[i]-Xm);
        Ys2  := Ym+(Ym-Yschn[i]);
        ellipse (Xs2-3,Ys2-3,Xs2+3,Ys2+3);
      end;
      Pen.Color := FryFarbeEllipse;
      Brush.Style := bsClear;
      RotEllipse(Wlang,Wkurz,Fphi,X0,Y0,EPunkt);
      Polygon (EPunkt);
      Pen.Color   := FryFarbeEllipse;
      Font.Color  := FryFarbeEllipse;
      Brush.Color := clWhite;
      Rectangle (0,ImageFoto.Height-60,90,ImageFoto.Height);
      Font.Size := 14;
      Font.Name := Dschrift;   //'Times New Roman';
      PhiS := IntToStr(Fphi);
      RS := FloatToStrF(WLang/WKurz, ffFixed,6,2);
      Textout(5,ImageFoto.Height-50,'R = '+RS);
      Font.Name := 'Symbol';
      Textout(5,ImageFoto.Height-30,'j = '+ PhiS+'�');
      Pen.Color   := AequatorFarbe;
      moveto (100,Ym);
      lineto (2*Xm-100,Ym);
      ellipse (Xm-3,Ym-3,Xm+3,Ym+3);
    end;
  end;
end;

procedure TForm102.SpeedHintergrundClick(Sender: TObject);
begin
  HintergrundClick(Sender);
end;

procedure TForm102.BRahmenClick(Sender: TObject);
var
  Datei   : TextFile;
  i       : word;
  Farbe   : TColor;
  FarbeS  : string;
  Xs2,Ys2 : integer;
  RS,PhiS : string;
begin
  Farbe := clWhite;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS      := ColorToString (Farbe);
  RahmenFarbe := StringToColor(FarbeS);
  KonfigZeileS[4] := '  Frame Colour             :,'+FarbeS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  if not AnOk then ButtonStartClick (Sender)
  else
  begin
    with ImageFoto.Canvas do
    begin
      Pen.Color   := RahmenFarbe;
      Brush.Color := HintFarbe;
      rectangle(0,0,ImageFoto.Width,ImageFoto.Height);
      for i := 1 to ZahlGlob do
      begin
        Pen.Color   := FryFarbePunkte;
        Brush.Color := FryFarbePunkte;
        ellipse(Xschn[i]-3,Yschn[i]-3,Xschn[i]+3,Yschn[i]+3);
        Xs2  := Xm-(Xschn[i]-Xm);
        Ys2  := Ym+(Ym-Yschn[i]);
        ellipse (Xs2-3,Ys2-3,Xs2+3,Ys2+3);
      end;
      Pen.Color := FryFarbeEllipse;
      Brush.Style := bsClear;
      RotEllipse(Wlang,Wkurz,Fphi,X0,Y0,EPunkt);
      Polygon (EPunkt);
      Pen.Color   := FryFarbeEllipse;
      Font.Color  := FryFarbeEllipse;
      Brush.Color := clWhite;
      Rectangle (0,ImageFoto.Height-60,90,ImageFoto.Height);
      Font.Size := 14;
      Font.Name := Dschrift;   //'Times New Roman';
      PhiS := IntToStr(Fphi);
      RS := FloatToStrF(WLang/WKurz, ffFixed,6,2);
      Textout(5,ImageFoto.Height-50,'R = '+RS);
      Font.Name := 'Symbol';
      Textout(5,ImageFoto.Height-30,'j = '+ PhiS+'�');
      Pen.Color   := AequatorFarbe;
      moveto (100,Ym);
      lineto (2*Xm-100,Ym);
      ellipse (Xm-3,Ym-3,Xm+3,Ym+3);
    end;  
  end;
end;

procedure TForm102.SpeedRahmenClick(Sender: TObject);
begin
  BRahmenClick(Sender);
end;

procedure TForm102.ButtonLoeschenClick(Sender: TObject);
begin
  with ImageFoto.Canvas do
  begin
    Draw(0,0,BitmapNeu);
    index   := index -1;
    MarkerS := 'Marker1';
  end;
  BitmapNeu.FreeImage;
end;

procedure TForm102.HilfeClick(Sender: TObject);
var
  DateiS      : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\102Wellman.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\102Wellman.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm102.SpeedHilfeClick(Sender: TObject);
begin
  HilfeClick(Sender);
end;

procedure TForm102.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Wellman-Methode.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'Wellman_Method.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm102.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm102.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm102.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

end.
