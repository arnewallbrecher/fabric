unit Unit59;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, ExtCtrls, ComCtrls, Texte, StdCtrls, Menus,
  Globvar, Liesconf, Math, Basic, Clipbrd, Mask, Drucken,
  Printers, Buttons, ExtDlgs, Shellapi, Standard, GifImage,
  Bmp2Tiff, Jpeg, ehsHelpRouter, Plotten, ReadTiff, PngImage,
  Grafik;

type
  TForm59 = class(TForm)
    Image1   : TImage;
    StatusBar: TStatusBar;

    ButtonStart     : TButton;
    ButtonZurueck   : TButton;
    ButtonBeenden   : TButton;

    MainMenu1    : TMainMenu;
    Grafik       : TMenuItem;
    FarbeRahmen  : TMenuItem;

    FarbeVorzeichnung  : TMenuItem;

    FarbeScherung  : TMenuItem;

    GroupBoxVorzeichnung: TGroupBox;
    ButtonDatei         : TButton;
    PanelScherung: TPanel;
    LabelScher   : TLabel;
    LabelWinkel  : TLabel;
    LabelScherung: TLabel;
    LabelGrad    : TLabel;
    LabelTan     : TLabel;
    PanelAffin: TPanel;
    PanelPlaettung: TPanel;

    Hilfe: TMenuItem;

    Paneldrucken   : TPanel;
    GroupBoxdrucken: TGroupBox;

    Panel7          : TPanel;
    LabelRdrucken   : TLabel;
    MaskEditRdrucken: TMaskEdit;

    Panel8          : TPanel;
    LabelMitte      : TLabel;
    LabelXdrucken   : TLabel;
    LabelYdrucken   : TLabel;
    MaskEditXdrucken: TMaskEdit;
    MaskEditYdrucken: TMaskEdit;

    Panel11             : TPanel;
    LabelUnterschrift   : TLabel;
    MaskEditUnterschrift: TMaskEdit;
    LabelSchrift        : TLabel;
    ListBoxSchrift      : TListBox;
    RadioButtonlinks    : TRadioButton;
    RadioButtonzentriert: TRadioButton;
    RadioButtonrechts   : TRadioButton;

    Drucker1           : TMenuItem;
    Druckereinrichten  : TMenuItem;
    drucken            : TMenuItem;
    PrinterSetupDialog1: TPrinterSetupDialog;
    PrintDialog1       : TPrintDialog;

    kopieren1      : TMenuItem;
    Speichern1     : TMenuItem;

    SaveDialog1: TSaveDialog;
    OpenDialog1: TOpenDialog;
    Fortschritt: TProgressBar;
    Fortschritt2: TProgressBar;
    Handbuch: TMenuItem;
    ColorDialog1: TColorDialog;
    PanelSpeed         : TPanel;
    SpeedHilfe         : TSpeedButton;
    SpeedHandbuch      : TSpeedButton;
    SpeedKopieren      : TSpeedButton;
    SpeedDrucken       : TSpeedButton;
    Literatur: TMenuItem;
    SpeedLiteratur: TSpeedButton;
    SpeedEinrichten: TSpeedButton;
    BGroesse: TMenuItem;
    PanelGroesse: TPanel;
    LabelBHoehe: TLabel;
    LabelBBreite: TLabel;
    MaskEditBBreite: TMaskEdit;
    MaskEditBHoehe: TMaskEdit;
    CheckBoxBild: TCheckBox;
    SpeedBGroesse: TSpeedButton;
    SavePictureDialog1: TSavePictureDialog;
    ButtonDrucken: TButton;
    ButtonAbbrechen: TButton;
    ListBoxBild: TListBox;
    ListBoxSpeichern: TListBox;
    SpeedSpeichern: TSpeedButton;
    FontDialog1: TFontDialog;
    Font: TMenuItem;
    SpeedFont: TSpeedButton;
    ButtonLoeschen: TButton;
    ButtonZwischen: TButton;
    ButtonRechteck: TButton;
    ButtonEllipse: TButton;
    ButtonLinie: TButton;
    ButtonScherung: TButton;
    ButtonAffin: TButton;
    ButtonNichtaffin: TButton;
    PanelWinkel: TPanel;
    LabelScherwinkel: TLabel;
    ListBoxScherwinkel: TListBox;
    PanelFaktor: TPanel;
    LabelFaktor: TLabel;
    ListBoxFaktor: TListBox;
    ButtonPlaettung: TButton;
    PanelProzent: TPanel;
    LabelProzent: TLabel;
    LabelAuf: TLabel;
    ListBoxProzent: TListBox;

    procedure FormShow(Sender: TObject);
    procedure ShowHint (Sender: TObject);
    procedure FormActivate(Sender: TObject);

    procedure ButtonZurueckClick(Sender: TObject);
    procedure ButtonBeendenClick(Sender: TObject);
    procedure ButtonStartClick(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ButtonLinieClick(Sender: TObject);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ButtonEllipseClick(Sender: TObject);
    procedure ButtonRechteckClick(Sender: TObject);
    procedure ListBoxScherwinkelClick(Sender: TObject);
    procedure ButtonScherungClick(Sender: TObject);
    procedure ButtonPlaettungClick(Sender: TObject);
    procedure ButtonLoeschenClick(Sender: TObject);
    procedure ButtonAffinClick(Sender: TObject);
    procedure ButtonNichtaffinClick(Sender: TObject);
    procedure ListBoxFaktorClick(Sender: TObject);
    procedure ListBoxProzentClick(Sender: TObject);
    procedure ButtonZwischenClick(Sender: TObject);
    procedure DruckereinrichtenClick(Sender: TObject);
    procedure druckenClick(Sender: TObject);
    procedure RadioButtonlinksClick(Sender: TObject);
    procedure RadioButtonzentriertClick(Sender: TObject);
    procedure RadioButtonrechtsClick(Sender: TObject);
    procedure ListBoxSchriftClick(Sender: TObject);
    procedure MaskEditUnterschriftKeyPress(Sender: TObject; var Key: Char);
    procedure HilfeClick(Sender: TObject);
    procedure SpeedHilfeClick(Sender: TObject);
    procedure ButtonDateiClick(Sender: TObject);
    procedure HandbuchClick(Sender: TObject);
    procedure FarbeRahmenClick(Sender: TObject);
    procedure FarbeVorzeichnungClick(Sender: TObject);
    procedure FarbeScherungClick(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure SpeedDruckenClick(Sender: TObject);
    procedure AusZwischenablageHolen1Click(Sender: TObject);
    procedure ausDateiholenClick(Sender: TObject);
    procedure SpeedausDateiClick(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
    procedure SpeedLiteraturClick(Sender: TObject);
    procedure SpeedEinrichtenClick(Sender: TObject);
    procedure BGroesseClick(Sender: TObject);
    procedure MaskEditBBreiteKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditBHoeheKeyPress(Sender: TObject; var Key: Char);
    procedure CheckBoxBildClick(Sender: TObject);
    procedure SpeedBGroesseClick(Sender: TObject);
    procedure kopieren1Click(Sender: TObject);
    procedure SpeedKopierenClick(Sender: TObject);
    procedure ButtonDruckenClick(Sender: TObject);
    procedure ButtonAbbrechenClick(Sender: TObject);
    procedure ListBoxBildClick(Sender: TObject);
    procedure Speichern1Click(Sender: TObject);
    procedure ListBoxSpeichernClick(Sender: TObject);
    procedure SpeedSpeichernClick(Sender: TObject);
    procedure FontClick(Sender: TObject);
    procedure SpeedFontClick(Sender: TObject);
    public
      Drawing  : boolean;
      MovePt   : TPoint;
    end;

type
  TWerkzeug = (weLinie, weEllipse, weRechteck, weNichts);

var
  Form59        : TForm59;
  DeformationS  : string[20];
  Scherwinkel   : byte;
  Werkzeug      : TWerkzeug;
  Origin        : TPoint;
  Laenge        : word;
  Faktor        : array[0..500] of real;
  Mal           : word;
  MalS          : string[4];
  Prozent       : byte;
  ProzentS      : string[4];
  Gedrueckt     : array [0..3] of boolean;
  BuendigS      : string;
  TextS         : string;
  CurrentFile   : string;
  Zwischenablage: boolean;
  Kreuz         : TCursor;
  Xunten        : word;
  Xrechts       : word;
  XEcke         : word;
  Yunten        : word;
  Yrechts       : word;
  YEcke         : word;
  Dehnen        : boolean;
  Lang, Hoch    : word;
  TanAlpha      : real;
  Zeichnung     : boolean;
  HolZwischen   : boolean;
  HolDatei      : boolean;
  RatioS        : real;
  BHoeheSh      : word;
  Bitmap        : TBitmap;
  Klick         : boolean;
  DNameS        : string;
  Bild          : TBitmap;

const
  Bo = Pi/180;
implementation
uses Unit58;
{$R *.DFM}

procedure TForm59.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm59.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm59.FormActivate(Sender: TObject);
var
  i            : word;
  ScherwinkelS : string[3];
begin
  Left := 70;
  Top := 10;
  Width := 1050;
  Height := 750;
  LiesConfig;
  Fortschritt.Visible          := false;
  Fortschritt2.Visible         := false;
  LabelScher.Caption           := '';
  LabelGrad.Caption            := '';
  LabelScherung.Caption        := '';
  LabelWinkel.Caption          := '';
  LabelTan.Caption             := '';
  GroupBoxVorzeichnung.Caption := '';
  Grafik.Enabled               := false;
  Paneldrucken.Visible         := false;
  RadioButtonlinks.Visible     := false;
  RadioButtonzentriert.Visible := false;
  RadioButtonrechts.Visible    := false;
  drucken.Enabled              := false;
  speichern1.Enabled           := false;
  kopieren1.Enabled            := false;
  SpeedKopieren.Enabled        := false;
  SpeedDrucken.Enabled         := false;
  SpeedEinrichten.Enabled      := false;
  ButtonDrucken.Enabled        := false;
  GroupBoxVorzeichnung.Visible := false;
  PanelScherung.Visible        := false;
  PanelAffin.Visible           := false;
  PanelPlaettung.Visible       := false;
  ButtonAffin.Visible          := false;
  ButtonNichtAffin.Visible     := false;
  PanelWinkel.Visible          := false;
  PanelFaktor.Visible          := false;
  PanelProzent.Visible         := false;
  Form59.Caption               := Tx(942);  {Sherkasten}
  ButtonStart.Hint             := Hilf(250);
  ButtonZurueck.Hint           := Hilf(261);
  ButtonBeenden.Hint           := Hilf(19);
  SpeedHilfe.Hint              := Hilf(210);
  SpeedDrucken.Hint            := Hilf(241);
  GroupBoxVorzeichnung.Hint    := Hilf(242);
  ButtonLinie.Hint             := Hilf(243);
  ButtonEllipse.Hint           := Hilf(244);
  ButtonRechteck.Hint          := Hilf(245);
  ButtonZwischen.Hint          := Hilf(246)+Hilf(247);
  ButtonLoeschen.Hint          := Hilf(248);
  PanelScherung.Hint           := Hilf(249);
  Image1.Hint                  := Hilf(251);
  PanelAffin.Hint              := Hilf(252);
  ButtonScherung.Hint          := Hilf(253);
  ButtonAffin.Hint             := Hilf(254);
  ButtonNichtAffin.Hint        := Hilf(255);
  PanelWinkel.Hint             := Hilf(256);
  PanelFaktor.Hint             := Hilf(257);
  PanelPlaettung.Hint          := Hilf(258);
  ButtonPlaettung.Hint         := Hilf(259);
  PanelPlaettung.Hint          := Hilf(260);
  SpeedHandbuch.Hint           := Hilf(274);
  SpeedKopieren.Hint           := Hilf(262);
  SpeedEinrichten.Hint         := Hilf(240);
  SpeedBGroesse.Hint           := Hilf(583);
  SpeedSpeichern.Hint          := Hilf(264);
  SpeedFont.Hint               := Hilf(686);
  Grafik.Caption               := Tx(281);  {&Grafik}
  FarbeRahmen.Caption          := Tx(944);  {Farbe des &Rahmens}
  FarbeVorzeichnung.Caption    := Tx(945);  {Farbe der &Vorzeichnung}
  FarbeScherung.Caption        := Tx(946);  {Farbe nach &Scherung}
  Drucker1.Caption             := Tx(92);   {&Drucker}
  kopieren1.Caption            := Tx(282);
  speichern1.Caption           := Tx(284);
  DruckerEinrichten.Caption    := Tx(94);   {Drucker &einrichten}
  drucken.Caption              := Tx(93);   {&drucken}
  Hilfe.Caption                := Tx(162)+' (F1)';  {&Hilfe}
  ButtonLinie.Caption          := Tx(948);  {&Linie}
  ButtonEllipse.Caption        := Tx(949);  {&Ellipse}
  ButtonRechteck.Caption       := Tx(950);  {&Rechteck}
  ButtonZwischen.Caption       := Tx(951);  {&Zwischenablage}
  ButtonLoeschen.Caption       := Tx(952);  {&L�schen}
  ButtonScherung.Caption       := Tx(956);  {&Scherung}
  ButtonAffin.Caption          := Tx(957);  {&affin}
  ButtonNichtaffin.Caption     := Tx(958);  {&nicht affin}
  LabelScherwinkel.Caption     := Tx(953);  {Scherungwinkel:}
  LabelFaktor.Caption          := Tx(959);  {Faktor:}
  ButtonPlaettung.Caption      := Tx(960);  {Pl�ttung}
  LabelAuf.Caption             := Tx(961);  {auf}
  LabelProzent.Caption         := Tx(962);  {Prozent:}
  ButtonZurueck.Caption        := Tx(30);   {&Zur�ck}
  ButtonBeenden.Caption        := TX(53);   {&beenden}
  ButtonDatei.Caption          := LeftS(Tx(419),length(Tx(419))-1);
  GroupboxVorzeichnung.Caption := Tx(947);
  Font.Caption                 := Tx(1621);
  GroupBoxVorzeichnung.Caption := Tx(947);  {Vorzeichnung:}
  LabelScher.Caption           := Tx(953); {Scherwinkrl}
  LabelGrad.Caption            := Tx(954); {Grad}
  LabelScherung.Caption        := Tx(955); {Scherung}
  Werkzeug                     := weNichts;
  for i := 1 to 3 do Gedrueckt[i] := false;
  for i := 0 to 90 do
  begin
    Scherwinkel := i;
    str(Scherwinkel, ScherwinkelS);
    ListBoxScherwinkel.Items.Add (ScherwinkelS);
  end;
  for i := 1 to 50 do
  begin
    Mal := i;
    str(Mal, MalS);
    ListBoxFaktor.Items.Add (MalS);
  end;
  for i := 100 downto 1 do
  begin
    Prozent := i;
    str(Prozent, ProzentS);
    ListBoxProzent.Items.Add (ProzentS);
  end;
  Image1.Enabled           := false;
  ButtonStart.Enabled      := true;
  Scherwinkel              := 0;
  for i := 10 to 401 do
    Faktor[i] := 1;
  Handbuch.Caption := Tx(1055)+' (F2)';
  Literatur.Caption       := Tx(1183)+' (F5)';
  SpeedLiteratur.Hint     := Hilf(462);  
  HintFarbe := clWhite;
  PanelSpeed.Visible := false;
  MaskEditBBreite.EditMask := '99999;0; ';
  MaskEditBHoehe.EditMask  := '99999;0; ';
  LabelBBreite.Caption     := Tx(1440);
  LabelBHoehe.Caption      := Tx(1441);
  BGroesse.Caption         := Tx(1439);
  PanelGroesse.Visible     := false;
  RatioS := Image1.Width/Image1.Height;
  ListBoxBild.Items.Add('*.bmp');
  ListBoxBild.Items.Add('*.gif');
  ListBoxBild.Items.Add('*.tif');
  ListBoxBild.Items.Add('*.jpg');
  ListBoxBild.Items.Add('*.wmf');
  ListBoxBild.Items.Add('*.emf');
  ListBoxBild.Visible    := false;
  Klick                  := false;
  for i := 1 to 7 do
    ListBoxSpeichern.Items.Add (Tx(1611+i));;
  ListBoxSpeichern.Visible := false;  
end;

procedure TForm59.ButtonZurueckClick(Sender: TObject);
begin
  with Image1.Canvas do
  begin
    Pen.Color   := clSilver;
    Brush.Color := clSilver;
    Rectangle (0,0,Image1.Width,Image1.Height);
  end;
  Form59.Close;
end;

procedure TForm59.ButtonBeendenClick(Sender: TObject);
begin
    with Image1.Canvas do
    begin
    Pen.Color   := clSilver;
    Brush.Color := clSilver;
    Rectangle (0,0,Image1.Width,Image1.Height);
  end;
  Form59.Close;
  Form58.Close;
  SetCurrentDir(DirectS);
end;

procedure TForm59.ButtonStartClick(Sender: TObject);
var
  Bitmap : TBitmap;
begin
  if ClipBoard.HasFormat(CF_Bitmap) then
    ButtonZwischen.Enabled := true;
  BHoeheSh := round(BBreiteSh/RatioS);
  PanelSpeed.Visible           := true;
  GroupBoxVorzeichnung.Visible := true;
  Grafik.Enabled               := true;
  FarbeVorzeichnung.Enabled    := true;
  Bitmap := Tbitmap.Create;
  with Image1 do
  begin
    Bitmap.Width    := ClientWidth;
    Bitmap.Height   := ClientHeight;
    Picture.Graphic := Bitmap;
    Breite          := Width;
    Hoehe           := Height;
    with Canvas do
    begin
      Pen.Color   := Rahmenfarbe;
      Brush.Color := HintFarbe;
      Rectangle (0, 0, Breite, Hoehe);
      Laenge := Hoehe;
      Pen.Color := ObjektFarbe;
      Rectangle (10,10,Laenge, Hoehe - 10);
    end;
  end;
  if HolZwischen then
  begin
    Image1.Canvas.CopyMode := cmSrcCopy;
    if ClipBoard.HasFormat(CF_Bitmap) then
    begin
      Bitmap := TBitmap.Create;
      try
        Bitmap.Assign(ClipBoard);
        Image1.Canvas.Draw(0,0, Bitmap);
      finally
        Bitmap.free;
      end;
    end
    else MessageDlg(Tx(306), mtInformation,[mbOK],0);
  end;
  if DemoB then Demotext(Image1.Canvas,420,Image1.Height-40);
  Zwischenablage := false;
  Kreuz          := Screen.Cursor;
  Lang           := Laenge;
  Hoch           := Hoehe;
  Dehnen         := false;
  Zeichnung      := false;
end;

procedure TForm59.FarbeRahmenClick(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  Farbe := clWhite;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS          := ColorToString (Farbe);
  RahmenFarbe     := StringToColor(FarbeS);
  KonfigZeileS[4] := '  Frame Colour             :,'+FarbeS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick (Sender);
end;

procedure TForm59.FarbeVorzeichnungClick(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  Farbe := clWhite;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS           := ColorToString (Farbe);
  ObjektFarbe      := StringToColor(FarbeS);
  KonfigZeileS[77] := 'Colour of shearbox objects :,'+FarbeS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick (Sender);
end;

procedure TForm59.FarbeScherungClick(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  Farbe := clWhite;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS           := ColorToString (Farbe);
  ScherFarbe      := StringToColor(FarbeS);
  KonfigZeileS[78] := 'Colour of sheared objects  :,'+FarbeS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick (Sender);
end;

procedure TForm59.ButtonLinieClick(Sender: TObject);
begin
  FarbeVorzeichnung.Enabled    := false;
  FarbeScherung.Enabled        := false;
  Image1.Enabled               := true;
  Werkzeug                     := weLinie;
  Zeichnung                    := true;
  Image1.Canvas.Pen.Color      := ObjektFarbe;
  PanelAffin.Visible           := true;
  PanelPlaettung.Visible       := true;
  ButtonPlaettung.Visible      := true;
  PanelProzent.Visible         := false;
end;

procedure TForm59.ButtonEllipseClick(Sender: TObject);
begin
  FarbeVorzeichnung.Enabled    := false;
  FarbeScherung.Enabled        := false;
  Image1.Enabled               := true;
  Werkzeug                     := weEllipse;
  FarbTausch;
  Image1.Canvas.Pen.Color      := ObjektFarbe;
  Zeichnung                    := true;
  PanelAffin.Visible           := true;
  PanelPlaettung.Visible       := true;
  ButtonPlaettung.Visible      := true;
  PanelProzent.Visible         := false;
end;

procedure TForm59.ButtonRechteckClick(Sender: TObject);
begin
  FarbeVorzeichnung.Enabled    := false;
  FarbeScherung.Enabled        := false;
  Image1.Enabled               := true;
  FarbTausch;
  Image1.Canvas.Pen.Color      := ObjektFarbe;
  Werkzeug                     := weRechteck;
  Zeichnung                    := true;
  PanelAffin.Visible           := true;
  PanelPlaettung.Visible       := true;
  ButtonPlaettung.Visible      := true;
  PanelProzent.Visible         := false;
end;

procedure TForm59.ButtonZwischenClick(Sender: TObject);
var
  Bitmap   : TBitmap;
  BreitBit : word;
  HoehBit  : word;
  Rahmen   : TRect;
begin
  FarbeVorzeichnung.Enabled := false;
  FarbeScherung.Enabled     := false;
  Image1.Enabled            := true;
  Image1.Canvas.CopyMode    := cmSrcCopy;
  if ClipBoard.HasFormat(CF_Bitmap) then
  begin
    Bitmap := TBitmap.Create;
    try
      Bitmap.Assign(ClipBoard);
      BreitBit := 200; {Bitmap.Width;}
      HoehBit  := 200; {Bitmap.Height;}
      Xunten   :=  105; {5 + BreitBit div 2;}
      Yunten   := 210; {HoehBit + 10;}
      Xrechts  := 210; {BreitBit + 10;}
      Yrechts  := 105; { 5 + HoehBit div 2;}
      XEcke    := BreitBit + 10;
      YEcke    := HoehBit  + 10;
      TanAlpha := BreitBit/HoehBit;
      Rahmen.Left   := 10;
      Rahmen.Top    := 10;
      Rahmen.Right  := 200;
      Rahmen.Bottom := 200;
      Image1.Canvas.StretchDraw(Rahmen,Bitmap);
      Zwischenablage := true;
    finally
      Bitmap.free;
    end;
  end
  else MessageDlg(Tx(306), mtInformation,[mbOK],0);
  Klick := true;
  PanelAffin.Visible      := true;
  PanelPlaettung.Visible  := true;
  ButtonPlaettung.Visible := true;
  PanelProzent.Visible    := false;
end;

procedure TForm59.ButtonDateiClick(Sender: TObject);
var
  Bitmap      : TBitmap;
  CurrentFile : string;
begin
  OpenDialog1.DefaultExt := 'Windows bitmap file (*.bmp)|*.bmp';
  OpenDialog1.Filter     := 'Windows bitmap file (*.bmp)|*.bmp';
  CurrentFile := '';
  if OpenDialog1.Execute then
  CurrentFile := OpenDialog1.FileName;
  if Currentfile = '' then exit;
  Bitmap := Tbitmap.create;
  Bitmap.LoadFromFile(CurrentFile);
  ClipBoard.Assign(Bitmap);
  ButtonZwischenClick(Sender);
  PanelAffin.Visible     := true;
  PanelPlaettung.Visible := true;
  ButtonPlaettung.Visible := true;
  PanelProzent.Visible    := false;
end;

procedure TForm59.ListBoxBildClick(Sender: TObject);
var
  i        : byte;
  BildS    : string;
  Gewaehlt : byte;
  BBild    : TBitmap;
  GBild    : TGifImage;
  JBild    : TJpegImage;
  MetaFile : TMetaFile;
begin
  Gewaehlt := 0;
  CurrentFile := '';
  for i := 0 to ListBoxBild.Items.Count-1 do
    if ListBoxBild.Selected[i] then Gewaehlt := i;
  case Gewaehlt of
    0 : BildS := '*.bmp';
    1 : BildS := '*.gif';
    2 : BildS := '*.tif';
    3 : BildS := '*.jpg';
    4 : BildS := '*.wmf';
    5 : BildS := '*.emf';
  end;
  if BildS = '*.bmp' then
  begin
    OpenDialog1.DefaultExt := 'Windows bitmap (*.bmp)|*.bmp';
    OpenDialog1.Filter     := 'Windows bitmap (*.bmp)|*.bmp';
    if OpenDialog1.Execute then CurrentFile := OpenDialog1.FileName
    else exit;
    BBild := Tbitmap.create;
    try
       BBild.LoadFromFile(CurrentFile);
      ClipBoard.Assign(BBild);
    finally
      BBild.free;
    end;
  end;
  if BildS = '*.gif' then
  begin
    OpenDialog1.DefaultExt := 'Compuserve Gif file (*.gif)|*.gif';
    OpenDialog1.Filter     := 'Compuserve Gif file (*.gif)|*.gif';
    if OpenDialog1.Execute then CurrentFile := OpenDialog1.FileName
    else exit;
    GBild  := TGifImage.Create;
    try
      GBild.LoadFromFile(CurrentFile);
      ClipBoard.Assign(GBild);
    finally
      GBild.Free;
    end;
  end;
  if BildS = '*.tif' then
  begin
    OpenDialog1.DefaultExt := 'Tagged image file format (*.tif)|*.tif';
    OpenDialog1.Filter     := 'Tagged image file format (*.tif)|*.tif';
    if OpenDialog1.Execute then CurrentFile := OpenDialog1.FileName
    else exit;
    BBild  := TBitmap.Create;
    try
      LoadTiffFromFile(CurrentFile,BBild);
      ClipBoard.Assign(BBild);
    finally
      BBild.Free;
    end;
  end;
  if BildS = '*.jpg' then
  begin
    OpenDialog1.DefaultExt := 'Jpeg file (*.jpg)|*.jpg';
    OpenDialog1.Filter     := 'Jpeg file (*.jpg)|*.jpg';
    if OpenDialog1.Execute then CurrentFile := OpenDialog1.FileName
    else exit;
    JBild := TJpegImage.Create;
    BBild := TBitmap.Create;
    try
      JBild.LoadFromFile(CurrentFile);
      BBild.Assign(JBild);
      ClipBoard.Assign(BBild);
    finally
      BBild.Free;
      JBild.Free;
    end;
  end;
  if BildS = '*.wmf' then
  begin
    OpenDialog1.DefaultExt := 'Windows metafile (*.WMF)|*.wmf';
    OpenDialog1.Filter     := 'Windows metafile (*.WMF)|*.wmf';
    if OpenDialog1.Execute then CurrentFile := OpenDialog1.FileName
    else exit;
    MetaFile := TMetaFile.Create;
    MetaFile.Enhanced := false;
    BBild := TBitmap.Create;
    try
      MetaFile.LoadFromFile(CurrentFile);
      BBild.Width  := MetaFile.Width;
      BBild.Height := MetaFile.Height;
      BBild.Canvas.Draw(0,0,MetaFile);
      Clipboard.Assign(BBild);
    finally
      MetaFile.Free;
      BBild.Free;
    end;
  end;
  if BildS = '*.emf' then
  begin
    OpenDialog1.DefaultExt := 'Enhanced windows metafile (*.EMF)|*.emf';
    OpenDialog1.Filter     := 'Enhanced windows metafile (*.EMF)|*.emf';
    if OpenDialog1.Execute then CurrentFile := OpenDialog1.FileName
    else exit;
    MetaFile := TMetaFile.Create;
    MetaFile.Enhanced := true;
    BBild := TBitmap.Create;
    try
      MetaFile.LoadFromFile(CurrentFile);
      BBild.Width  := MetaFile.Width;
      BBild.Height := MetaFile.Height;
      BBild.Canvas.Draw(0,0,MetaFile);
      Clipboard.Assign(BBild);
    finally
      MetaFile.Free;
      BBild.Free;
    end;
  end;
  ButtonZwischenClick(Sender);
  ListBoxBild.Visible := false;
  Klick               := true;
end;

procedure TForm59.ButtonLoeschenClick(Sender: TObject);
var
  i : word;
begin
  PanelAffin.Visible         := false;
  PanelPlaettung.Visible     := false;
  ButtonAffin.Visible        := false;
  ButtonNichtAffin.Visible   := false;
  PanelWinkel.Visible        := false;
  PanelFaktor.Visible        := false;
  ButtonPlaettung.Visible    := false;
  PanelProzent.Visible       := false;
  Dehnen                     := false;
  FarbeVorzeichnung.Enabled  := true;
  FarbeScherung.Enabled      := true;
  For i := 10 to 401 do
    Faktor[i] := 0;
  with Image1.Canvas do
  begin
    Pen.Color   := Rahmenfarbe;
    Brush.Color := HintFarbe;
    Rectangle (0,0,Breite,Hoehe);
    FarbTausch;
    Pen.Color := ObjektFarbe;
    Rectangle (10,10,Laenge, Hoehe - 10);
    Werkzeug := weNichts;
  end;
  Zwischenablage := false;
  Zeichnung      := false;
end;

procedure TForm59.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if ssLeft in Shift then
  begin
    if (Zwischenablage) and (not Zeichnung) then
    begin
      if (X>=10) and (X <= Xrechts) and (Y>=10)
      and (Y<= Yunten) then
      begin
        with Image1.Canvas do
        begin
          Pen.Color   := clBlack;
          Brush.Color := clBlack;
          Rectangle (Xunten,Yunten,Xunten+10,Yunten+10);
          Rectangle (Xrechts,Yrechts,Xrechts+10,Yrechts+10);
          Rectangle (XEcke,YEcke,XEcke+10,YEcke+10);
        end;
      end;
      if (X>= Xunten) and (X<=Xunten+10) and (Y>=Yunten)
         and (Y<=Yunten+10) then Screen.Cursor := crSizeNS;
      if (X>=Xrechts) and (X<=Xrechts+10) and (Y>= Yrechts)
          and (Y<= Yrechts+10) then Screen.Cursor := crSizeWE;
      if (X>= XEcke) and (X<= XEcke+10) and (Y>= YEcke)
         and (Y <= YEcke+10) then Screen.Cursor := crSizeNWSE;
    end;
    Drawing  := true;
    Image1.Canvas.MoveTo (X, Y);
    Origin := Point(X, Y);
    MovePt := Point(X, Y);
  end;
end;

procedure TForm59.Image1MouseMove
          (Sender: TObject; Shift: TShiftState; X,Y: Integer);
var
  Rect     : TRect;
  Bitmap   : TBitmap;
  XBild    : word;
  YBild    : word;
begin
  XBild := 0;
  YBild := 0;
  Dehnen := false;
  if Screen.Cursor = crSizeNS then
  begin
    if Y > Hoch-10 then Y := Hoch -10;
    Yunten  := Y;
    Yrechts := 10+(Y-10) div 2 - 5;
    YEcke   := Yunten;
    TanAlpha := (Xrechts-10)/(Yunten-10);
    XBild    := Xrechts;
    YBild    := Yunten;
    Dehnen   := true;
  end;
  if Screen.Cursor = crSizeWE then
  begin
    if X > Lang then X := Lang;
    Xrechts := X;
    Xunten  := 10+(X-10) div 2 - 5;
    XEcke   := Xrechts;
    TanAlpha := (Xrechts-10)/(Yunten-10);
    XBild    := Xrechts;
    YBild    := Yunten;
    Dehnen   := true;
  end;
  if Screen.Cursor = crSizeNWSE then
  begin
    if Y > Hoch-10 then Y := Hoch-10;
    YEcke   := Y;
    XEcke   := round(Y*TanAlpha);
    Xunten  := 10+(XEcke-10) div 2 - 5;
    Yunten  := YEcke;
    Xrechts := XEcke;
    Yrechts := 10+(YEcke-10) div 2 - 5;
    XBild    := XEcke;
    YBild    := YEcke;
    Dehnen   := true;
  end;
  if Dehnen then
  begin
    Bitmap := TBitmap.Create;
    Bitmap.Assign(Clipboard);
    with Image1.Canvas do
    begin
      Pen.Color   := Rahmenfarbe;
      Brush.Color := HintFarbe;
      Rectangle (0,0,Breite,Hoehe);
      FarbTausch;
      Pen.Color := ObjektFarbe;
      Rectangle (10,10,Laenge, Hoehe-10);
      Rect.Top    := 10;
      Rect.Left   := 10;
      if XBild < Laenge then Rect.Right  := XBild
      else Rect.Right := Laenge;
      if YBild < Hoehe-10 then Rect.Bottom := YBild
      else Rect.Bottom := Hoehe-10;
      stretchdraw(Rect, Bitmap);
      Pen.Color := clBlack;
      Brush.Color := clBlack;
      Rectangle(Xunten,Yunten,Xunten+10,Yunten+10);
      Rectangle(Xrechts,Yrechts,Xrechts+10,Yrechts+10);
      Rectangle(XEcke,YEcke,XEcke+10,YEcke+10);
      Pen.Color   := ObjektFarbe;
      Brush.Color := HintFarbe;
    end;
  end;
  with Image1.Canvas do
  begin
    Brush.Color := clWhite;
    if Drawing then
    begin
      Pen.Mode := pmNotXor; {XOR-Modus zum zeichnen/L�schen}
      MoveTo (Origin.X, Origin.Y); {zum Anfang}
      case Werkzeug of
        weLinie    : begin
                       LineTo (MovePt.X, MovePt.Y);
                       MoveTo (Origin.X, Origin.Y);
                       LineTo (X, Y);
                     end;
        weEllipse :  begin
                       Ellipse (Origin.X,Origin.Y,
                                MovePt.X,MovePt.Y);
                       MoveTo (Origin.X, Origin.Y);
                       Ellipse(Origin.X,Origin.Y,X,Y);
                     end;
        weRechteck : begin
                       Rectangle (Origin.X,Origin.Y,
                                  MovePt.X,MovePt.Y);
                       MoveTo (Origin.X, Origin.Y);
                       Rectangle (Origin.X,Origin.Y,X,Y);
                     end;
      end;
    end;
    MovePt   := Point (X, Y); {f�r n�chste Bewegung speichern}
    Pen.Mode := pmCopy;
  end;
end;

procedure TForm59.Image1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Screen.Cursor := Kreuz;
  Drawing := false;
  if Dehnen then
  begin
    with image1.Canvas do
    begin
      Pen.Color   := HintFarbe;
      Brush.Color := HintFarbe;
      Rectangle(Xunten,Yunten,Xunten+10,Yunten+10);
      Rectangle(Xrechts,Yrechts,Xrechts+10,Yrechts+10);
      Rectangle(XEcke,YEcke,XEcke+10,YEcke+10);
      Pen.Color := ObjektFarbe;
    end;
  end;
  Dehnen := false;
end;

procedure TForm59.ButtonScherungClick(Sender: TObject);
begin
  ButtonAffin.Visible      := true;
  ButtonNichtAffin.Visible := true;
end;

procedure TForm59.ButtonAffinClick(Sender: TObject);
var
  i : word;
begin
  PanelFaktor.Visible := false;
  PanelWinkel.Visible := true;
  for i := 1 to 401 do
    Faktor[i] := 1;
end;

procedure TForm59.ButtonNichtaffinClick(Sender: TObject);
begin
  PanelFaktor.Visible := true;
end;

procedure TForm59.ListBoxFaktorClick(Sender: TObject);
var
  i  : word;
  Co : integer;
begin
  PanelWinkel.Visible := true;
  for i := 0 to ListboxFaktor.Items.Count-1 do
  begin
    if ListboxFaktor.Selected[i] then
    begin
      MalS :=ListboxFaktor.Items.Strings[i];
      val(MalS,Mal, Co);
    end;
  end;
  for i := 10 to 401 do
    Faktor[i] := exp((401-i)*(Mal-1)/10000);
end;

procedure TForm59.ButtonPlaettungClick(Sender: TObject);
begin
  PanelProzent.Visible  := true;
end;

procedure TForm59.ListBoxProzentClick(Sender: TObject);
var
  i          : byte;
  Flaeche    : longword;
  Xlaenge    : word;
  YLaenge    : word;
  XBild      : word;
  YBild      : word;
  Bild       : TBitmap;                  //array[0..401, 0..401] of TColor;
  Recht      : TRect;
  Ziel       : TRect;
  Quelle     : TRect;
  Rahmen     : TRect;
begin
  SpeedDrucken.Enabled         := true;
  SpeedEinrichten.Enabled      := true;
  speichern1.Enabled           := true;
  kopieren1.Enabled            := true;
  Fortschritt2.Visible := true;
  for i := 1 to ListboxProzent.Items.Count-1 do
  begin
    if ListboxProzent.Selected[i] then
    begin
      ProzentS :=ListboxProzent.Items.Strings[i];
      Prozent  := StrToInt (ProzentS);
    end;
  end;
  if (Werkzeug = weLinie) or (Werkzeug = weEllipse) or (Werkzeug = weRechteck) then
  begin
    Yecke := Image1.Height - 20;
    Xecke := Yecke;
  end;
  Bild := TBitmap.Create;
  try
    Bild.PixelFormat := pf32Bit;
    Bild.Width  := Xecke;
    Bild.Height := Yecke;
    Ziel := Rect(0,0,Xecke,Yecke);
    Quelle := Rect(11,11, Xecke+9,Yecke+9);
    Bild.Canvas.CopyRect(Ziel,Image1.Picture.Bitmap.Canvas,Quelle);
    Flaeche := Xecke*Yecke;
    YBild   := round(Yecke*Prozent/100);
    XBild   := round(Flaeche/YBild);
    Recht   := Rect(9,9,Xecke+21,Image1.Height-9);
    Loeschen (Image1.Canvas, Recht);
    Rahmen  := Rect(10,Yecke-YBild,XBild+10,YBild+10);
    Image1.Canvas.StretchDraw(Rahmen, Bild);
  finally
    Bild.free;
  end;
  LabelScher.Caption  := Tx(1605);
  LabelWinkel.Caption := ProzentS;
  LabelGrad.Caption   := ' %';
  drucken.enabled      := true;
end;

procedure TForm59.ListBoxScherwinkelClick(Sender: TObject);
var
  i         : byte;
  Co        : integer;
  x, y, Xo  : word;
  TanScher  : real;
  WinkelS   : string[3];
  ScherungS : string[5];
  XPixel    : word;
  Bild      : array[0..500, 0..500] of TColor;
  XBild     : word;
  YBild     : word;
  Recht     : TRect;
begin
  SpeedDrucken.Enabled         := true;
  SpeedEinrichten.Enabled      := true;
  speichern1.Enabled           := true;
  kopieren1.Enabled            := true;
  SpeedKopieren.Enabled        := true;
  Fortschritt.Visible          := true;
  for i := 1 to ListboxScherwinkel.Items.Count-1 do
  begin
    if ListboxScherwinkel.Selected[i] then
    begin
      WinkelS :=ListboxScherwinkel.Items.Strings[i];
      val(WinkelS,Scherwinkel, Co);
      LabelWinkel.Caption := WinkelS;
    end;
  end;
  TanScher         := tan(Scherwinkel*Bo);
  ScherungS        := FloatToStr (TanScher);
  LabelTan.Caption := ScherungS;
  if Zeichnung then
  begin
    if Zwischenablage then
    begin
      XBild := Xrechts+1;
      YBild := Yunten+1;
    end
    else
      XBild := 10;
      YBild := 10;
    with Image1.Canvas do
    begin
      if Zwischenablage then
      begin
        Fortschritt.Max  := Yunten;
        Fortschritt.Min  := 10;
        Fortschritt.Step := 1;
        for y := 10 to Yunten-10 do
        begin
          for x := XBild to Laenge do
          begin
            if Pixels [x,y] = ObjektFarbe then
            begin
              XPixel := x+round(Faktor[y]*TanScher
                        *(Hoehe-10-y));
              Pixels [XPixel,y] := Bild[y,x];
            end;
          end;
          Fortschritt.StepIt;
        end;
      end;
      Fortschritt.Max  := Hoehe-10;
      Fortschritt.Min  := YBild;
      Fortschritt.Step := 1;
      for y := YBild to Hoehe-10 do
      begin
        for x := 10 to Laenge do
        begin
          if Pixels [x,y] = ObjektFarbe then
          begin
            XPixel := x+round(Faktor[y]*TanScher
                       *(Hoehe-10-y));
            Pixels [XPixel,y] := Bild[y,x];
          end;
        end;
        Fortschritt.StepIt;
      end;
      Fortschritt.StepIt;
    end;
  end;
  if Zwischenablage then
  begin
    with Image1.Canvas do
    begin
      Pen.Color := ScherFarbe;
      for y := 10 to Yunten do
        for X := 10 to Xrechts do
          Bild[x,y] := Image1.Canvas.Pixels[y,x];
      Fortschritt.Max  := Yunten;
      Fortschritt.Min  := 10;
      Fortschritt.Step := 1;
      Recht := Rect(0,0,Image1.Width,Image1.Height);
      Loeschen(Image1.Canvas,Recht);
      for y := 10 to Yunten do
      begin
        for x := 10 to Xrechts-10 do
        begin
          XPixel := x+round(Faktor[y]*TanScher
                     *(Hoehe-10-y));
          Pixels [XPixel,y] := Bild[y,x];
        end;
        Fortschritt.StepIt;
      end; {Y-Schleife}
    end; {X-Schleife}
  end; {Zwischenablage}
  with image1.Canvas do
  begin
    Pen.Color := ScherFarbe;
    X := 10+round(Faktor[y]*TanScher*Hoehe-10);
    moveto (X,10);
    lineto (X+Laenge-10,10);
    moveto (10,Hoehe-10);
    lineto (Laenge,Hoehe-10);
    moveto (X,10);
    Xo := X;
    for Y := 10 to Hoehe-10 do
      lineto (10+round(Faktor[y]*TanScher*(Hoehe-10-Y)),Y);
    moveto (Xo, 10);
    for y := 10 to Hoehe-10 do
      lineto (Laenge+round(Faktor[y]*TanScher
             *(Hoehe-10-Y)),Y);
    Pen.Color := ObjektFarbe;
    Fortschritt.Visible := false;
    drucken.Enabled     := true;
  end;
end;

procedure TForm59.DruckereinrichtenClick(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TForm59.SpeedEinrichtenClick(Sender: TObject);
begin
  DruckerEinrichtenClick(Sender);
end;


procedure TForm59.druckenClick(Sender: TObject);
var
  SchriftS : string[5];
  i        : byte;
begin
  Paneldrucken.Visible := true;
  RadioButtonlinks.Visible     := true;
  RadioButtonzentriert.Visible := true;
  RadioButtonrechts.Visible    := true;
  MaskEditRdrucken.EditMask := '999;0; ';
  MaskEditXdrucken.EditMask := '999;0; ';
  MaskEditYdrucken.EditMask := '999;0; ';
  MaskEditRdrucken.Text     := InttoStr(round(DruckenR*10));
  MaskEditXdrucken.Text     := InttoStr(round(DruckenX*10));
  MaskEditYdrucken.Text     := InttoStr(round(DruckenY*10));
  GroupBoxdrucken.Caption   := Tx(880);
  LabelRdrucken.Caption        := Tx(902);
  LabelMitte.Caption           := Tx(884);
  LabelXdrucken.Caption        := Tx(885);
  LabelYdrucken.Caption        := Tx(886);
  ButtonDrucken.Caption        := Tx(881);
  ButtonAbbrechen.Caption      := Tx(882);
  LabelUnterschrift.Caption    := Tx(887);
  LabelSchrift.Caption         := Tx(888);
  RadioButtonLinks.Caption     := Tx(889);
  RadioButtonZentriert.Caption := Tx(890);
  RadioButtonRechts.Caption    := Tx(891);
  i := 3;
  repeat
    i := i + 1;
    str(i, SchriftS);
    ListBoxSchrift.Items.Add (SchriftS);
  until i = 40;
end;

procedure TForm59.RadioButtonlinksClick(Sender: TObject);
begin
  BuendigS := 'Links';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    ButtonDrucken.Enabled := true;
end;

procedure TForm59.RadioButtonzentriertClick(Sender: TObject);
begin
  BuendigS := 'Zentriert';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    ButtonDrucken.Enabled := true;
end;

procedure TForm59.RadioButtonrechtsClick(Sender: TObject);
begin
  BuendigS := 'Rechts';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    ButtonDrucken.Enabled := true;
end;

procedure TForm59.ListBoxSchriftClick(Sender: TObject);
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

procedure TForm59.ButtonDruckenClick(Sender: TObject);
var
  XKoordS : string;
  YKoordS : string;
  RadiusS : string;
  Bitmap  : TBitmap;
  Fenster : TRect;
begin
  Paneldrucken.Visible         := false;
  GroupBoxDrucken.Visible      := false;
  RadioButtonLinks.Visible     := false;
  RadioButtonZentriert.Visible := false;
  RadioButtonRechts.Visible    := false;
  RadiusS := MaskEditRdrucken.Text;
  XKoordS := MaskEditXdrucken.Text;
  YKoordS := MaskEditYdrucken.Text;
  Radius  := StrToInt(RadiusS) div 2;
  RadiusS := IntToStr(Radius);
  try
    Bitmap:=TBitmap.Create;
    Bitmap.Assign(Image1.picture.graphic);
    with Printer do
    begin
      BeginDoc;
      DruckBitmap (Printer.Canvas, Fenster, RadiusS,
                   XKoordS, YKoordS, TextS, Schrift,
                   BuendigS, Bitmap);
      EndDoc;
    end;
  finally
    Bitmap.free;
  end;
end;

procedure TForm59.ButtonAbbrechenClick(Sender: TObject);
begin
  Paneldrucken.Visible         := false;
  GroupBoxDrucken.Visible      := false;
  RadioButtonlinks.Visible     := false;
  RadioButtonzentriert.Visible := false;
  RadioButtonrechts.Visible    := false;
end;

procedure TForm59.MaskEditUnterschriftKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = chr(13) then
  begin
    TextS := MaskEditUnterschrift.Text;
    Gedrueckt[1] := true;
    if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
       and (Gedrueckt[3] = true) then
       ButtonDrucken.Enabled := true;
  end;
end;

procedure TForm59.FontClick(Sender: TObject);
begin
  WaehlFont(FontDialog1);
end;

procedure TForm59.SpeedFontClick(Sender: TObject);
begin
  FontClick(Sender);
end;

procedure TForm59.BGroesseClick(Sender: TObject);
begin
  PanelGroesse.Visible    := true;
  CheckBoxBild.State      := cbUnchecked;
  MaskEditBBreite.Text    := IntTostr(BBreiteSh);
  MaskEditBHoehe.Text     := IntToStr(BHoeheSh);
end;

procedure TForm59.SpeedBGroesseClick(Sender: TObject);
begin
  BGroesseClick(Sender);
end;

procedure TForm59.kopieren1Click(Sender: TObject);
begin
  ClipBoard.Assign (Image1.Picture);
end;

procedure TForm59.SpeedKopierenClick(Sender: TObject);
begin
  kopieren1Click(Sender);
end;

procedure TForm59.Speichern1Click(Sender: TObject);
begin
  ListBoxSpeichern.Visible := true;
end;

procedure TForm59.SpeedSpeichernClick(Sender: TObject);
begin
  Speichern1Click(Sender);
end;

procedure TForm59.ListBoxSpeichernClick(Sender: TObject);
var
  Ratio : real;
begin
  BBreiteSt := BBreiteSh;
  Ratio     := RatioS;
  GrafikSpeichern (Image1, ListBoxSpeichern, Ratio,
                   SavePictureDialog1, SaveDialog1);
end;

procedure TForm59.MaskEditBBreiteKeyPress(Sender: TObject; var Key: Char);
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
      BBreiteSh := StrToInt (BBreiteS);
      BHoeheSh  := round(BBreiteSh/RatioS);
      KonfigZeileS[122] := 'Save Image Width (Shear)   :,'+BBreiteS;
      MaskEditBHoehe.Text := IntToStr(BHoeheSh);
      assignFile(Datei,FabricS+'\'+'Fabric.ini');
      rewrite (Datei);
      for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
      closefile (Datei);
    end;
  end;
end;

procedure TForm59.MaskEditBHoeheKeyPress(Sender: TObject; var Key: Char);
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
      BHoeheSh  := StrToInt (BHoeheS);
      BBreiteSh := round(BHoeheSh*RatioS);
      KonfigZeileS[122] := 'Save Image Width (Shear)   :,'+IntToStr(BBreiteSH);
      MaskEditBBreite.Text := IntToStr(BBreiteSh);
    end;
    assignFile(Datei,FabricS+'\'+'Fabric.ini');
    rewrite (Datei);
    for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
    closefile (Datei);
  end;
end;

procedure TForm59.CheckBoxBildClick(Sender: TObject);
begin
  PanelGroesse.Visible := false;
end;

procedure TForm59.AusZwischenablageHolen1Click(Sender: TObject);
var
  Bitmap   : TBitmap;
  BreitBit : word;
  HoehBit  : word;
  Rahmen   : TRect;
begin
  FarbeVorzeichnung.Enabled := false;
  FarbeScherung.Enabled     := false;
  Image1.Enabled            := true;
  Image1.Canvas.CopyMode    := cmSrcCopy;
  if ClipBoard.HasFormat(CF_Bitmap) then
  begin
    Bitmap := TBitmap.Create;
    try
      Bitmap.Assign(ClipBoard);
      BreitBit := 200; {Bitmap.Width;}
      HoehBit  := 200; {Bitmap.Height;}
      Xunten   :=  105; {5 + BreitBit div 2;}
      Yunten   := 210; {HoehBit + 10;}
      Xrechts  := 210; {BreitBit + 10;}
      Yrechts  := 105; { 5 + HoehBit div 2;}
      XEcke    := BreitBit + 10;
      YEcke    := HoehBit  + 10;
      TanAlpha := BreitBit/HoehBit;
      Rahmen.Left   := 10;
      Rahmen.Top    := 10;
      Rahmen.Right  := 200;
      Rahmen.Bottom := 200;
      Image1.Canvas.StretchDraw(Rahmen,Bitmap);
      Zwischenablage := true;
    finally
      Bitmap.free;
    end;
  end
  else MessageDlg(Tx(306), mtInformation,[mbOK],0);
end;

procedure TForm59.ausDateiholenClick(Sender: TObject);
var
  Bitmap      : TBitmap;
  CurrentFile : string;
begin
  CurrentFile := '';
  if OpenDialog1.Execute then
  CurrentFile := OpenDialog1.FileName;
  if Currentfile = '' then exit;
  Bitmap := Tbitmap.create;
  Bitmap.LoadFromFile(CurrentFile);
  ClipBoard.Assign(Bitmap);
  ButtonZwischenClick(Sender);
end;

procedure TForm59.SpeedausDateiClick(Sender: TObject);
begin
  ausDateiHolenClick(Sender);
end;

procedure TForm59.HilfeClick(Sender: TObject);
var
  DateiS      : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\59Scherkasten-plot.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\59Shearbox-plot.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm59.SpeedHilfeClick(Sender: TObject);
begin
  HilfeClick(Sender);
end;

procedure TForm59.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Scherkasten.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'Shear_box.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm59.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm59.SpeedDruckenClick(Sender: TObject);
begin
  druckenClick(Sender);
end;

procedure TForm59.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm59.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

end.
