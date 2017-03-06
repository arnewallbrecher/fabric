unit Unit59;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, ExtCtrls, ComCtrls, Texte, StdCtrls, Menus,
  Globvar, Liesconf, Math, Basic, Clipbrd, Mask, Drucken,
  Printers, Buttons, ExtDlgs, Shellapi, Standard, GifImage,
  Bmp2Tiff, Jpeg, ehsHelpRouter;

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
    ButtonLinie         : TButton;
    ButtonEllipse       : TButton;
    ButtonRechteck      : TButton;
    ButtonZwischen      : TButton;
    ButtonDatei         : TButton;
    ButtonLoeschen      : TButton;

    Panel1            : TPanel;
    LabelScherwinkel  : TLabel;
    ListBoxScherwinkel: TListBox;

    Panel2       : TPanel;
    LabelScher   : TLabel;
    LabelWinkel  : TLabel;
    LabelScherung: TLabel;
    LabelGrad    : TLabel;
    LabelTan     : TLabel;

    Panel3        : TPanel;
    ListBoxFaktor : TListBox;
    LabelFaktor   : TLabel;

    Panel4         : TPanel;
    LabelAuf       : TLabel;
    LabelProzent: TLabel;
    ListBoxProzent : TListBox;

    Panel5           : TPanel;
    ButtonScherung   : TButton;
    ButtonAffin      : TButton;
    ButtonNichtaffin : TButton;

    Panel6          : TPanel;
    ButtonPlaettung : TButton;

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
    speichernunter1: TMenuItem;

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
    speichernBMP: TMenuItem;
    speichernGIF: TMenuItem;
    speichernTIF: TMenuItem;
    speichernJPG: TMenuItem;
    speichernWMF: TMenuItem;
    speichernEMF: TMenuItem;
    speichernUBMP: TMenuItem;
    speichernUGIF: TMenuItem;
    speichernUTIF: TMenuItem;
    speichernUJPG: TMenuItem;
    speichernUWMF: TMenuItem;
    speichernUEMF: TMenuItem;
    SavePictureDialog1: TSavePictureDialog;
    SpeedBMP: TSpeedButton;
    SpeedGIF: TSpeedButton;
    SpeedTIF: TSpeedButton;
    SpeedJPG: TSpeedButton;
    SpeedWMF: TSpeedButton;
    SpeedEMF: TSpeedButton;
    ButtonDrucken: TButton;
    ButtonAbbrechen: TButton;

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
    procedure kopieren1Click(Sender: TObject);
    procedure SpeedKopierenClick(Sender: TObject);
    procedure ButtonDruckenClick(Sender: TObject);
    procedure ButtonAbbrechenClick(Sender: TObject);
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
  Left := 4;
  Top := 0;
  Width := 1016;
  Height := 735;
  LiesConfig;
  Fortschritt.Visible          := false;
  Fortschritt2.Visible         := false;
  LabelScher.Caption           := '';
  LabelGrad.Caption            := '';
  LabelScherung.Caption        := '';
  LabelWinkel.Caption          := '';
  LabelTan.Caption             := '';
  GroupBoxVorzeichnung.Caption := '';
  LabelProzent.Enabled         := false;
  LabelAuf.Enabled             := false;
  LabelFaktor.Enabled          := false;
  ButtonLinie.Enabled          := false;
  ButtonEllipse.Enabled        := false;
  ButtonRechteck.Enabled       := false;
  ButtonZwischen.Enabled       := false;
  ButtonDatei.Enabled          := false;
  LabelScherwinkel.Enabled     := false;
  ListBoxScherwinkel.Enabled   := false;
  ButtonScherung.Enabled       := false;
  ButtonPlaettung.Enabled      := false;
  ButtonLoeschen.Enabled       := false;
  Grafik.Enabled               := false;
  Paneldrucken.Visible         := false;
  RadioButtonlinks.Visible     := false;
  RadioButtonzentriert.Visible := false;
  RadioButtonrechts.Visible    := false;
  drucken.Enabled              := false;
  speichern1.Enabled           := false;
  speichernunter1.Enabled      := false;
  kopieren1.Enabled            := false;
  SpeedKopieren.Enabled        := false;
  SpeedDrucken.Enabled         := false;
  SpeedEinrichten.Enabled      := false;
  ButtonDrucken.Enabled        := false;
  ButtonAffin.Enabled          := false;
  ButtonNichtaffin.Enabled     := false;
  ListboxFaktor.Enabled        := false;
  ListboxProzent.Enabled       := false;
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
  Panel2.Hint                  := Hilf(249);
  Image1.Hint                  := Hilf(251);
  Panel5.Hint                  := Hilf(252);
  ButtonScherung.Hint          := Hilf(253);
  ButtonAffin.Hint             := Hilf(254);
  ButtonNichtAffin.Hint        := Hilf(255);
  Panel1.Hint                  := Hilf(256);
  Panel3.Hint                  := Hilf(257);
  Panel6.Hint                  := Hilf(258);
  ButtonPlaettung.Hint         := Hilf(259);
  Panel4.Hint                  := Hilf(260);
  SpeedHandbuch.Hint           := Hilf(274);
  SpeedKopieren.Hint           := Hilf(262);
  SpeedEinrichten.Hint         := Hilf(240);
  SpeedBGroesse.Hint           := Hilf(583);
  SpeedBMP.Hint                := Hilf(586);
  SpeedGIF.Hint                := Hilf(587);
  SpeedTIF.Hint                := Hilf(588);
  SpeedJPG.Hint                := Hilf(589);
  SpeedWMF.Hint                := Hilf(590);
  SpeedEMF.Hint                := Hilf(591);
  Grafik.Caption               := Tx(281);  {&Grafik}
  FarbeRahmen.Caption          := Tx(944);  {Farbe des &Rahmens}
  FarbeVorzeichnung.Caption    := Tx(945);  {Farbe der &Vorzeichnung}
  FarbeScherung.Caption        := Tx(946);  {Farbe nach &Scherung}
  Drucker1.Caption             := Tx(92);   {&Drucker}
  kopieren1.Caption            := Tx(282);
  speichern1.Caption           := Tx(284);
  speichernunter1.Caption      := Tx(285);
  DruckerEinrichten.Caption    := Tx(94);   {Drucker &einrichten}
  drucken.Caption              := Tx(93);   {&drucken}
  Hilfe.Caption                := Tx(162)+' (F1)';  {&Hilfe}
  ButtonLinie.Caption          := Tx(948);  {&Linie}
  ButtonEllipse.Caption        := Tx(949);  {&Ellipse}
  ButtonRechteck.Caption       := Tx(950);  {&Rechteck}
  ButtonZwischen.Caption       := Tx(951);  {&Zwischenablage}
  ButtonLoeschen.Caption       := Tx(952);  {&Löschen}
  ButtonScherung.Caption       := Tx(956);  {&Scherung}
  ButtonAffin.Caption          := Tx(957);  {&affin}
  ButtonNichtaffin.Caption     := Tx(958);  {&nicht affin}
  LabelScherwinkel.Caption     := Tx(955);  {Scherung:}
  LabelFaktor.Caption          := Tx(959);  {Faktor:}
  ButtonPlaettung.Caption      := Tx(960);  {Plättung}
  LabelAuf.Caption             := Tx(961);  {auf}
  LabelProzent.Caption         := Tx(962);  {Prozent:}
  ButtonZurueck.Caption        := Tx(30);   {&Zurück}
  ButtonBeenden.Caption        := TX(53);   {&beenden}
  ButtonDatei.Caption          := LeftS(Tx(419),length(Tx(419))-1);
  GroupboxVorzeichnung.Caption := Tx(947);
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
  BHoeheSh := round(BBreiteSh/RatioS);
  PanelSpeed.Visible           := true;
  Grafik.Enabled               := true;
  ButtonLinie.Enabled          := true;
  ButtonEllipse.Enabled        := true;
  ButtonRechteck.Enabled       := true;
  ButtonZwischen.Enabled       := true;
  ButtonLoeschen.Enabled       := true;
  ButtonStart.Enabled          := false;
  ButtonDatei.Enabled          := true;
  FarbeVorzeichnung.Enabled    := true;
  GroupBoxVorzeichnung.Caption := Tx(947);  {Vorzeichnung:}
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
  if DemoB then
  begin
    with Image1.Canvas do
    begin
      Font.Name   := 'Times New Roman';
      Brush.Color := clWhite;
      Font.Color  := clGray;
      Font.Size   := 36;
      Textout(Width div 2-80,Height div 2-100,'Demo-Version');
    end;
  end;
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
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS          := ColorToString (Farbe);
  RahmenFarbe     := StringToColor(FarbeS);
  KonfigZeileS[4] := '  Frame Colour             :,'+FarbeS;
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS           := ColorToString (Farbe);
  ObjektFarbe      := StringToColor(FarbeS);
  KonfigZeileS[77] := 'Colour of shearbox objects :,'+FarbeS;
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS           := ColorToString (Farbe);
  ScherFarbe      := StringToColor(FarbeS);
  KonfigZeileS[78] := 'Colour of sheared objects  :,'+FarbeS;
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick (Sender);
end;

procedure TForm59.ButtonLinieClick(Sender: TObject);
begin
  FarbeVorzeichnung.Enabled := false;
  FarbeScherung.Enabled     := false;
  ButtonScherung.Enabled    := true;
  ButtonPlaettung.Enabled   := true;
  Image1.Enabled            := true;
  Werkzeug                  := weLinie;
  Zeichnung                 := true;
  Image1.Canvas.Pen.Color   := ObjektFarbe;
end;

procedure TForm59.ButtonEllipseClick(Sender: TObject);
begin
  FarbeVorzeichnung.Enabled := false;
  FarbeScherung.Enabled     := false;
  ButtonScherung.Enabled    := true;
  ButtonPlaettung.Enabled   := true;
  Image1.Enabled            := true;
  Werkzeug                  := weEllipse;
  FarbTausch;
  Image1.Canvas.Pen.Color   := ObjektFarbe;
  Zeichnung                 := true
end;

procedure TForm59.ButtonRechteckClick(Sender: TObject);
begin
  FarbeVorzeichnung.Enabled := false;
  FarbeScherung.Enabled     := false;
  ButtonScherung.Enabled    := true;
  ButtonPlaettung.Enabled   := true;
  Image1.Enabled            := true;
  FarbTausch;
  Image1.Canvas.Pen.Color   := ObjektFarbe;
  Werkzeug                  := weRechteck;
  Zeichnung                 := true;
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
  ButtonScherung.Enabled    := true;
  ButtonPlaettung.Enabled   := true;
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

procedure TForm59.ButtonDateiClick(Sender: TObject);
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

procedure TForm59.ButtonLoeschenClick(Sender: TObject);
var
  i : word;
begin
  Dehnen                     := false;
  FarbeVorzeichnung.Enabled  := true;
  FarbeScherung.Enabled      := true;
  ButtonScherung.Enabled     := false;
  ButtonPlaettung.Enabled    := false;
  ButtonAffin.Enabled        := false;
  ButtonNichtaffin.Enabled   := false;
  ListboxScherwinkel.Enabled := false;
  LabelScherwinkel.Enabled   := false;
  ListboxFaktor.Enabled      := false;
  ListboxProzent.Enabled     := false;
  LabelProzent.Enabled       := false;
  LabelAuf.Enabled           := false;
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
      Pen.Mode := pmNotXor; {XOR-Modus zum zeichnen/Löschen}
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
    MovePt   := Point (X, Y); {für nächste Bewegung speichern}
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
  LabelScher.Caption         := Tx(953); {Scherwinkrl}
  LabelGrad.Caption          := Tx(954); {Grad}
  LabelScherung.Caption      := Tx(955); {Scherung}
  ButtonAffin.Enabled        := true;
  ButtonNichtaffin.Enabled   := true;
  ButtonPlaettung.Enabled    := false;
end;

procedure TForm59.ButtonAffinClick(Sender: TObject);
var
  i : word;
begin
  ListboxScherwinkel.Enabled := true;
  LabelScherwinkel.Enabled   := true;
  ListBoxScherwinkel.Enabled := true;
  ListboxFaktor.Enabled      := false;
  LabelFaktor.Enabled        := false;
  ButtonNichtaffin.Enabled   := false;
  for i := 1 to 401 do
    Faktor[i] := 1;
end;

procedure TForm59.ButtonNichtaffinClick(Sender: TObject);
begin
  ButtonAffin.Enabled        := false;
  ListboxFaktor.Enabled      := true;
  LabelFaktor.Enabled        := true;
  ListboxScherwinkel.Enabled := false;
  LabelScherwinkel.Enabled   := false;
end;

procedure TForm59.ListBoxFaktorClick(Sender: TObject);
var
  i  : word;
  Co : integer;
begin
  ListboxScherwinkel.Enabled := true;
  LabelScherwinkel.Enabled   := true;
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
  ListboxProzent.Enabled     := true;
  LabelProzent.Enabled       := true;
  LabelAuf.Enabled           := true;
  ButtonScherung.Enabled     := false;
  ButtonAffin.Enabled        := false;
  ButtonNichtaffin.Enabled   := false;
  ListboxScherwinkel.Enabled := false;
  LabelScherwinkel.Enabled   := false;
  ListboxFaktor.Enabled      := false;
  LabelFaktor.Enabled        := false;
end;

procedure TForm59.ListBoxProzentClick(Sender: TObject);
var
  i        : byte;
  Co       : integer;
  Flaeche  : longword;
  YStrich  : word;
  x, y     : word;
  Xp, Yp   : word;
  XStrich  : word;
  XLaenge  : word;
  YLaenge  : word;
  XpStrich : word;
  YpStrich : word;
  XBild    : word;
  YBild    : word;
  Bild     : array[0..401, 0..401] of TColor;
begin
  SpeedDrucken.Enabled         := true;
  SpeedEinrichten.Enabled      := true;
  speichern1.Enabled           := true;
  speichernunter1.Enabled      := true;
  kopieren1.Enabled            := true;
  Fortschritt2.Visible := true;
  for i := 1 to ListboxProzent.Items.Count-1 do
  begin
    if ListboxProzent.Selected[i] then
    begin
      ProzentS :=ListboxProzent.Items.Strings[i];
      val(ProzentS,Prozent, Co);
    end;
  end;
  LabelScher.Caption  := 'Plättung auf';
  LabelWinkel.Caption := ProzentS;
  LabelGrad.Caption   := ' %';
  XLaenge := Laenge - 10;
  YLaenge := Hoehe - 20;
  Flaeche := XLaenge*YLaenge;
  YStrich := round(YLaenge*Prozent/100);
  XStrich := round(Flaeche/YStrich);
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
        Fortschritt2.Max  := Yunten;
        Fortschritt2.Min  := 10;
        Fortschritt2.Step := 1;
        for y := 10 to Yunten-10 do
        begin
          for x := XBild to Laenge do
          begin
            if Pixels [x,y] = ObjektFarbe then
            begin
              Xp       := x -10;
              Yp       := Hoehe-10-y;
              XpStrich := round(Xp*XStrich/XLaenge);
              YpStrich := round(Yp*YStrich/YLaenge);
              Pixels [XpStrich+10,Hoehe-10-YpStrich] := Bild[y,x];
            end;
          end;
          Fortschritt2.StepIt;
        end;
      end;
      Fortschritt2.Max  := Hoehe-10;
      Fortschritt2.Min  := YBild;
      Fortschritt2.Step := 1;
      for y := YBild to Hoehe-10 do
      begin
        for x := 10 to Laenge do
        begin
          if Pixels [x,y] = ObjektFarbe then
          begin
            Xp       := x -10;
            Yp       := Hoehe-10-y;
            XpStrich := round(Xp*XStrich/XLaenge);
            YpStrich := round(Yp*YStrich/YLaenge);
            Pixels [XpStrich+10,Hoehe-10-YpStrich] := Bild[y,x];
          end;
        end;
        Fortschritt2.StepIt;
      end;
    end;
  end;
  if Zwischenablage then
  begin
    with Image1.Canvas do
    begin
      for y := 10 to Yunten do
        for X := 10 to Xrechts do
          Bild[x,y] := Image1.Canvas.Pixels[y,x];
      Fortschritt2.Max  := Yunten;
      Fortschritt2.Min  := 10;
      Fortschritt2.Step := 1;
      for y := 10 to Yunten do
      begin
        for x := 10 to Xrechts-10 do
        begin
          Xp       := x -10;
          Yp       := Hoehe-10-y;
          XpStrich := round(Xp*XStrich/XLaenge);
          YpStrich := round(Yp*YStrich/YLaenge);
          Pixels [XpStrich+10,Hoehe-10-YpStrich] := Bild[y,x];
        end;
        Fortschritt2.StepIt;
      end; {Y-Schleife}
    end; {X-Schleife}
  end; {Zwischenablage}
  Fortschritt2.Visible := false;
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
begin
  SpeedDrucken.Enabled         := true;
  SpeedEinrichten.Enabled      := true;
  speichern1.Enabled           := true;
  speichernunter1.Enabled      := true;
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
      assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
    assignFile(Datei,DirectS+'\'+'Fabric.ini');
    rewrite (Datei);
    for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
    closefile (Datei);
  end;
end;

procedure TForm59.CheckBoxBildClick(Sender: TObject);
begin
  PanelGroesse.Visible := false;
end;

procedure TForm59.speichernBMPClick(Sender: TObject);
var
  Rahmen : TRect;
begin
  Bitmap        := TBitmap.Create;
  Bitmap.Width  := BBreiteSh;
  Bitmap.Height := BHoeheSh;
  Rahmen        := Rect(0,0,Bitmap.Width,Bitmap.Height);
  Bitmap.Canvas.Stretchdraw(Rahmen,Image1.Picture.Graphic);
  try
    if (CurrentFile <> '') and (UCaseS(RightS(CurrentFile,3)) = 'BMP')
    then Bitmap.SaveToFile(CurrentFile)
    else speichernUBMPClick(Sender);
  finally
    Bitmap.Free;
    Bitmap   := nil;
  end;
end;

procedure TForm59.SpeedBMPClick(Sender: TObject);
begin
  speichernBMPClick(Sender);
end;

procedure TForm59.speichernGIFClick(Sender: TObject);
var
  Bitmap  : TBitmap;
  GifBild : TGifImage;
  Rahmen  : TRect;
begin
  Bitmap        := TBitmap.Create;
  GifBild       := TGIFImage.Create;
  Bitmap.Width  := BBreiteSh;
  Bitmap.Height := BHoeheSh;
  Rahmen        := Rect(0,0,Bitmap.Width,Bitmap.Height);
  Bitmap.Canvas.Stretchdraw(Rahmen,Image1.Picture.Graphic);
  try
    GifBild.Assign(Bitmap);
    if (CurrentFile <> '') and (UCaseS(RightS(CurrentFile,3)) = 'GIF')
    then GifBild.SaveToFile(CurrentFile)
    else speichernUGIFClick(Sender);
  finally
    Bitmap.Free;
    GifBild.Free;
  end;
end;

procedure TForm59.SpeedGIFClick(Sender: TObject);
begin
  speichernGIFClick(Sender);
end;

procedure TForm59.speichernTIFClick(Sender: TObject);
var
  Rahmen : TRect;
begin
  Bitmap        := TBitmap.Create;
  Bitmap.Width  := BBreiteSh;
  Bitmap.Height := BHoeheSh;
  Rahmen        := Rect(0,0,Bitmap.Width,Bitmap.Height);
  Bitmap.Canvas.Stretchdraw(Rahmen,Image1.Picture.Graphic);
  try
    if (CurrentFile <> '') and (UCaseS(RightS(CurrentFile,3)) = 'TIF')
    then WriteTiffToFile(CurrentFile,Bitmap)
    else speichernUTIFClick(Sender);
  finally
    Bitmap.Free;
    Bitmap := nil;
  end;
end;

procedure TForm59.SpeedTIFClick(Sender: TObject);
begin
  speichernTIFClick(Sender);
end;

procedure TForm59.speichernJPGClick(Sender: TObject);
var
  DateiJ   : string;
  Rahmen   : TRect;
  Bild     : TBitmap;
  JpgDatei : TjpegImage;
begin
  JpgDatei    := TJpegImage.Create;
  Bild        := TBitmap.Create;
  Bild.Width  := BBreiteSh;
  Bild.Height := BHoeheSh;
  Rahmen      := Rect(0,0,Bild.Width,Bild.Height);
  Bild.Canvas.Stretchdraw(Rahmen,Image1.Picture.Graphic);
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
    Bild        := nil;
    JpgDatei    := nil;
    CurrentFile := '';
  end;
end;

procedure TForm59.SpeedJPGClick(Sender: TObject);
begin
  speichernJPGClick(Sender);
end;

procedure TForm59.speichernWMFClick(Sender: TObject);
var
  Metafile   : TMetafile;
  MetaCanvas : TMetafileCanvas;
  Bitmap     : TBitmap;
  Rahmen     : TRect;
begin
  Metafile := TMetaFile.Create;
  MetaFile.Enhanced := false;
  try
    Bitmap := TBitmap.Create;
    Bitmap.Width  := BBreiteSh;
    Bitmap.Height := BHoeheSh;
    Rahmen        := Rect(0,0,Bitmap.Width,Bitmap.Height);
    Bitmap.Canvas.Stretchdraw(Rahmen,Image1.Picture.Graphic);
    try
      Bitmap.Assign(Image1.Picture);
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
    if (CurrentFile <> '') and (UCaseS(RightS(CurrentFile,3)) = 'WMF')
    then MetaFile.SaveToFile(CurrentFile)
    else SpeichernUWMFClick(Sender);
  finally
    Metafile.Free;
  end;
end;

procedure TForm59.SpeedWMFClick(Sender: TObject);
begin
  speichernWMFClick(Sender);
end;

procedure TForm59.speichernEMFClick(Sender: TObject);
var
  Metafile   : TMetafile;
  MetaCanvas : TMetafileCanvas;
  Bitmap     : TBitmap;
begin
  Metafile := TMetaFile.Create;
  MetaFile.Enhanced := true;
  try
    Bitmap := TBitmap.Create;
    try
      Bitmap.Assign(Image1.Picture);
      Metafile.Height := BHoeheSh;
      Metafile.Width  := BBreiteSh;
      MetaCanvas := TMetafileCanvas.Create(Metafile, 0);
      try
        MetaCanvas.Draw(0, 0, Bitmap);
      finally
        MetaCanvas.Free;
      end;
    finally
      Bitmap.Free;
    end;
    if (CurrentFile <> '') and (UCaseS(RightS(CurrentFile,3)) = 'EMF')
    then MetaFile.SaveToFile(CurrentFile)
    else SpeichernUEMFClick(Sender);
  finally
    Metafile.Free;
  end;
end;

procedure TForm59.SpeedEMFClick(Sender: TObject);
begin
  speichernEMFClick(Sender);
end;

procedure TForm59.speichernUBMPClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := GraphicExtension(TBitmap);
  SaveDialog1.Filter     := GraphicFilter(TBitmap);
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    SpeichernBMPClick(Sender);
  end;
end;

procedure TForm59.speichernUGIFClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := GraphicExtension(TGIFImage);
  SaveDialog1.Filter     := GraphicFilter(TGIFImage);
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    SpeichernGIFClick(Sender);
  end;  
end;

procedure TForm59.speichernUTIFClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := 'Tagged image file format (*.tif)|*.tif';
  SaveDialog1.Filter     := 'Tagged image file format (*.tif)|*.tif';;
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    SpeichernTIFClick(Sender);
  end;
end;

procedure TForm59.speichernUJPGClick(Sender: TObject);
begin
  SavePictureDialog1.DefaultExt := GraphicExtension(TJpegImage);
  SavePictureDialog1.Filter     := GraphicFilter(TJpegImage);
  if SavePictureDialog1.Execute then
  begin
    CurrentFile := SavePictureDialog1.Filename;
    SpeichernJPGClick(Sender);
  end;
end;

procedure TForm59.speichernUWMFClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := GraphicExtension(TMetaFile);
  SaveDialog1.Filter     := GraphicFilter(TMetaFile);
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    speichernWMFClick(Sender);
  end;
end;

procedure TForm59.speichernUEMFClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := GraphicExtension(TMetaFile);
  SaveDialog1.Filter     := GraphicFilter(TMetaFile);
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    speichernEMFClick(Sender);
  end;
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
  ButtonScherung.Enabled    := true;
  ButtonPlaettung.Enabled   := true;
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
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\verf929g.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\Shearbox-plot.htm');
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
