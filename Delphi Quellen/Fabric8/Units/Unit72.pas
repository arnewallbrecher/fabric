unit Unit72;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, ComCtrls, StdCtrls, Globvar, Texte, ExtCtrls,
  Basic, Menus, Buttons, Shellapi, Panozzo, Plotten, Drucken,
  Printers, Mask, Standard, Jpeg, ExtDlgs, Clipbrd,GifImage,
  Bmp2Tiff, ehsHelpRouter, PNGimage, Grafik;

type
  TForm72 = class(TForm)
    StatusBar: TStatusBar;
    ButtonStart: TButton;
    OpenDialog1: TOpenDialog;
    ButtonZurueck: TButton;
    Buttonbeenden: TButton;
    ImagePolygon: TImage;
    MainMenu1: TMainMenu;
    Farbe: TMenuItem;
    ColorDialog1: TColorDialog;
    PanelSpeed: TPanel;
    SpeedFarbe: TSpeedButton;
    SpeedHintergrund: TSpeedButton;
    SpeedHilfe: TSpeedButton;
    Hilfe: TMenuItem;
    SpeedHandbuch: TSpeedButton;
    Handbuch: TMenuItem;
    ImageKurve: TImage;
    ImageX: TImage;
    ImageKreis: TImage;
    PFuellFarbe: TMenuItem;
    SpeedFuellen: TSpeedButton;
    ImageEllipse: TImage;
    ImageStrain: TImage;
    LabelDemo: TLabel;
    PrinterSetupDialog1: TPrinterSetupDialog;
    PrintDialog1: TPrintDialog;
    ImageDrucken: TImage;
    SpeedDrucker: TSpeedButton;
    Literatur: TMenuItem;
    SpeedLiteratur: TSpeedButton;
    SpeedEinrichten: TSpeedButton;
    Auswertung: TMenuItem;
    FryMethode: TMenuItem;
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
    Grafik: TMenuItem;
    BGroesse: TMenuItem;
    PanelGroesse: TPanel;
    LabelBHoehe: TLabel;
    LabelBBreite: TLabel;
    MaskEditBBreite: TMaskEdit;
    MaskEditBHoehe: TMaskEdit;
    CheckBoxBild: TCheckBox;
    SaveDialog1: TSaveDialog;
    SavePictureDialog1: TSavePictureDialog;
    SpeedGroesse: TSpeedButton;
    kopieren: TMenuItem;
    Speichern: TMenuItem;
    Drucker: TMenuItem;
    einrichten: TMenuItem;
    drucken1: TMenuItem;
    Hintergrund: TMenuItem;
    SpeedKopieren: TSpeedButton;
    ListBoxSpeichern: TListBox;
    SpeedSpeichern: TSpeedButton;
    FontDialog1: TFontDialog;
    Font: TMenuItem;
    SpeedFont: TSpeedButton;
    PanelDaten: TPanel;
    LabelPolygone: TLabel;
    LabelX: TLabel;
    LabelY: TLabel;
    ListBoxPolygon: TListBox;
    LabelAnzahl: TLabel;
    LabelZahl: TLabel;
    LabelZahlPoly: TLabel;
    LabelZahlP: TLabel;
    PanelDatei: TPanel;
    MaskEditDatei: TMaskEdit;
    LabelDatei: TLabel;
    procedure FormShow(Sender: TObject);
    procedure ShowHint (Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ButtonStartClick(Sender: TObject);
    procedure ButtonZurueckClick(Sender: TObject);
    procedure ButtonbeendenClick(Sender: TObject);
    procedure FarbeClick(Sender: TObject);
    procedure SpeedFarbeClick(Sender: TObject);
    procedure SpeedHilfeClick(Sender: TObject);
    procedure HilfeClick(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure HandbuchClick(Sender: TObject);
    procedure PFuellFarbeClick(Sender: TObject);
    procedure SpeedFuellenClick(Sender: TObject);
    procedure SpeedDruckerClick(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
    procedure SpeedLiteraturClick(Sender: TObject);
    procedure SpeedEinrichtenClick(Sender: TObject);
    procedure FryMethodeClick(Sender: TObject);
    procedure ListBoxSchriftClick(Sender: TObject);
    procedure MaskEditSchriftKeyPress(Sender: TObject; var Key: Char);
    procedure ButtonDruckenClick(Sender: TObject);
    procedure ButtonDabbrechenClick(Sender: TObject);
    procedure BGroesseClick(Sender: TObject);
    procedure MaskEditBBreiteKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditBHoeheKeyPress(Sender: TObject; var Key: Char);
    procedure CheckBoxBildClick(Sender: TObject);
    procedure SpeedGroesseClick(Sender: TObject);
    procedure kopierenClick(Sender: TObject);
    procedure einrichtenClick(Sender: TObject);
    procedure drucken1Click(Sender: TObject);
    procedure HintergrundClick(Sender: TObject);
    procedure SpeedKopierenClick(Sender: TObject);
    procedure SpeedHintergrundClick(Sender: TObject);
    procedure SpeichernClick(Sender: TObject);
    procedure ListBoxSpeichernClick(Sender: TObject);
    procedure SpeedSpeichernClick(Sender: TObject);
    procedure FontClick(Sender: TObject);
    procedure SpeedFontClick(Sender: TObject);
end;

var
  Form72    : TForm72;
  TextS     : string;
  Gedrueckt : array [1..3] of boolean;
  BuendigS  : string;
  Ratio     : real;
  BHoeheP   : word;
  DNameS    : string;
  Bild      : TBitmap;
  Wieder    : boolean;

implementation

uses Unit67, Unit70, Unit71;
{$R *.DFM}

procedure TForm72.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm72.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm72.FormActivate(Sender: TObject);
var
  Flaeche : TRect;
  i       : byte;
begin
  Left   := 70;
  Top    := 10;
  Width  := 1050;
  Height := 750;
  LabelDemo.Visible               := false;
  if DemoB then LabelDemo.Visible := true;
  Wieder := false;
  if WeiterB[72] then Wieder := true;
  WeiterB[72]           := false;
  Form72.Caption        := 'Fabric8: '+Tx(1150);
  Farbe.Caption         := Tx(275);
  PFuellFarbe.Caption   := Tx(1155);
  Hintergrund.Caption   := Tx(856);
  ButtonBeenden.Caption := Tx(53);
  Buttonzurueck.Caption := Tx(30);
  ButtonBeenden.Hint    := Hilf(19);
  Buttonzurueck.Hint    := Hilf(457);
  Hilfe.Caption         := Tx(162)+' (F1)';
  Handbuch.Caption      := Tx(1055)+' (F2)';
  Literatur.Caption     := Tx(1183)+' (F5)';
  SpeedLiteratur.Hint   := Hilf(462);
  SpeedFarbe.Hint       := Hilf(365);
  SpeedHintergrund.Hint := Hilf(443);
  SpeedFuellen.Hint     := Hilf(458);
  SpeedHilfe.Hint       := Hilf(210);
  SpeedHandbuch.Hint    := Hilf(274);
  SpeedDrucker.Hint     := Hilf(309);
  SpeedEinrichten.Hint  := Hilf(505);
  SpeedGroesse.Hint     := Hilf(583);
  SpeedKopieren.Hint    := Hilf(262);
  SpeedSpeichern.Hint   := Hilf(683);
  SpeedFont.Hint        := Hilf(686);
  Grafik.Caption        := Tx(281);
  kopieren.Caption      := Tx(282);
  Speichern.Caption     := TX(284);
  LabelZahl.Caption     :='';
  LabelAnzahl.Caption   := Tx(1077);
  LabelZahlPoly.Caption := Tx(1154);
  LabelZahlP.Caption    := '';
  ImagePolygon.Visible  := false;
  drucken1.Caption      := TX(93);
  einrichten.Caption    := Tx(94);
  Drucker.Caption       := Tx(92);
  LabelPolygone.Caption := Tx(1355);
  Paneldrucken.Visible  := false;
  ZahlPoly              := PolyNr;
  Flaeche := Rect(0,0,ImageDrucken.Width,ImageDrucken.Height);
  Loeschen (ImageDrucken.Canvas, Flaeche);
  LabelDatei.Caption    := Tx(211);
  PanelSpeed.Visible    := false;
  Farbe.Enabled         := false;
  PFuellFarbe.Enabled   := false;
  Hintergrund.Enabled   := false;
  Drucker.Enabled       := false;
  LabelPolygone.Visible := false;
  LabelX.Visible        := false;
  LabelY.Visible        := false;
  PanelDatei.Visible    := false;
  PanelDaten.Visible    := false;
  Font.Enabled          := false;
  Grafik.Enabled        := false;
  Auswertung.Caption    := Tx(1341);
  FryMethode.Caption    := Tx(1060);
  Auswertung.Enabled       := false;
  MaskEditBBreite.EditMask := '99999;0; ';
  MaskEditBHoehe.EditMask  := '99999;0; ';
  LabelBBreite.Caption     := Tx(1440);
  LabelBHoehe.Caption      := Tx(1441);
  BGroesse.Caption         := Tx(1439);
  PanelGroesse.Visible     := false;
  Ratio     := ImageDrucken.Width/ImageDrucken.Height;
  GroupBoxDrucken.Caption  := Tx(1413);
  LabelErl.Caption         := Tx(1414);
  LabelLinks.Caption       := Tx(1415);
  LabelOben.Caption        := Tx(1416);
  LabelLaenge.Caption      := Tx(1417);
  LabelGroesse.Caption     := Tx(888);
  LabelSchrift.Caption     := Tx(887);
  ButtonDrucken.Caption    := Tx(93);
  ButtonDabbrechen.Caption := Tx(882);
  Font.Caption             := Tx(1621);
  for i := 1 to 7 do
    ListBoxSpeichern.Items.Add (Tx(1611+i));
  ListBoxSpeichern.Visible := false;  
  if WeiterF then
  begin
    ButtonStart.Visible   := false;
    ButtonBeenden.Visible := false;
    ButtonStartClick(Sender);
  end;
end;

procedure TForm72.ButtonStartClick(Sender: TObject);
var
  Hoehe, i  : word;
  Laenge    : array of real;
  MaxLaenge : real;
  MinLaenge : real;
  RS        : string;
  R         : real;
  Theta     : word;
  ThetaS    : string;
  Flaeche   : TRect;
begin
  setlength (Laenge,200);
  Flaeche := Rect(0,0,ImageDrucken.Width,ImageDrucken.Height);
  Loeschen (ImageDrucken.Canvas, Flaeche);
if not Wieder then
begin
  if EingabeS = 'ausPolygon' then
  begin
    PolyDatei (OpenDialog1);
    DateinameS[1] := OpenDialog1.Filename;
  end;
end;
  BHoeheP := round(BBreiteP/Ratio);
  MaskEditDatei.Text := DateiNameS[1];
  if EingabeS = 'aus Bild' then
  begin
    ZahlPoly := PolyNr;
    PolyNr   := 0;
  end;
  if not WeiterF then Auswertung.Enabled := true;
  PanelSpeed.Visible    := true;
  Farbe.Enabled         := true;
  PFuellFarbe.Enabled   := true;
  Hintergrund.Enabled   := true;
  Drucker.Enabled       := true;
  LabelPolygone.Visible := true;
  LabelX.Visible        := true;
  LabelY.Visible        := true;
  PanelDatei.Visible    := true;
  PanelDaten.Visible    := true;
  Font.Enabled          := true;
  Grafik.Enabled        := true;
  MaskEditDatei.Text    := DateinameS[1];
  ListBoxPolygon.Clear;
  ImagePolygon.Visible := true;
  if ZahlGlob = 0 then exit;
  for i := 1 to ZahlGlob do
    ListBoxPolygon.Items.Add ('   '+ZeilePolygonS[i]);
  LabelZahl.Caption     := InttoStr(ZahlGlob-ZahlPoly);
  LabelZahlP.Caption    := InttoStr(ZahlPoly);
  with ImagePolygon.Canvas do
  begin
    Pen.Color   := Datenfarbe;
    Brush.Color := HintFarbe;
    Rectangle (0,0,ImagePolygon.Width,ImagePolygon.Height);
    Polygone (ImagePolygon.Canvas);
  end;
  with ImageKurve.Canvas do
  begin
    Pen.Color   := Datenfarbe;
    Brush.Color := HintFarbe;
    Rectangle (0,0,ImageKurve.Width,ImageKurve.Height);
    Hoehe  := ImageKurve.Height;
    Breite := ImageKurve.Width;
    Kurve (ImageKurve.Canvas, ZahlPoly, Hoehe, Breite, Laenge,
           MaxLaenge, MinLaenge, Theta);
  end;
  with ImageX.Canvas do
  begin
    Breite := imageX.Width;
    XSkala (ImageX.Canvas, Breite);
  end;
  with ImageKreis.Canvas do
  begin
    Pen.Color   := Datenfarbe;
    Radius := ImageKreis.Width div 2;
    Font.Size := 10;
    Font.Name := 'Times New Roman';
    Kreis (ImageKreis.Canvas, Laenge, MaxLaenge);
    Pen.Color := clBlack;
    Font.Size := 16;
    Textout (0,0,Tx(1157));
  end;
  with ImageEllipse.Canvas do
  begin
    Breite    := ImageEllipse.Width;
    Hoehe     := ImageEllipse.Height;
    Pen.Color := Datenfarbe;
    Font.Size := 10;
    Rellipse (ImageEllipse.Canvas, Breite, Hoehe,
              Maxlaenge, MinLaenge, Theta);
  end;
  with ImageStrain.Canvas do
  begin
    Font.Name := 'Times New Roman';
    Pen.Color := clBlack;
    Font.Size := 16;
    Brush.Color := clWhite;
    Textout (0,0,'Strain-Ellipse');
  end;
  if DemoB then DemoText (ImageKurve.Canvas,10,10);
  if DemoB then DemoText (ImagePolygon.Canvas,10,10);
  with ImageDrucken.Canvas do
  begin
    Draw(0,0,ImageKurve.picture.graphic);
    Draw(ImageDrucken.Width-ImageKreis.Width,0,
         ImageKreis.picture.graphic);
    Draw(0,ImageKurve.Height,ImageX.Picture.graphic);
    Draw(0,ImageDrucken.Height-ImagePolygon.Height,
         ImagePolygon.picture.graphic);
    Draw(ImageDrucken.Width-ImageEllipse.Width,
         ImageDrucken.Height-ImageEllipse.Height-50,
         ImageEllipse.picture.graphic);
    Draw(ImageDrucken.Width-ImageEllipse.Width,
         ImageEllipse.Height+10,
         ImageStrain.picture.graphic);
    R  := MaxLaenge / MinLaenge;
    str(R:5:2,RS);
    ThetaS := InttoStr(Theta)+'�';
    Font.Size := 18;
    Font.Name := 'Times New Roman';
    Textout(ImagePolygon.Width+30,ImageDrucken.Height-55,
            Tx(1156));
    Textout(ImagePolygon.Width+30,ImageDrucken.Height-27,
            'Theta');
    Font.Color := clRed;
    Textout(ImageDrucken.Width-90,ImageDrucken.Height-55,
            RS);
    Textout(ImageDrucken.Width-85,ImageDrucken.Height-27,
            ThetaS);
  end;
  Laenge := NIL;
end;

procedure TForm72.ButtonZurueckClick(Sender: TObject);
var
  Flaeche : TRect;
begin
  if not WeiterF then
  begin
    ZeilePolygonS := NIL;
    PolygonZeileS := NIL;
  end;
  Flaeche := Rect(0,0,ImageKurve.Width,ImageKurve.Height);
  Loeschen (ImageKurve.Canvas, Flaeche);
  Flaeche := Rect(0,0,ImagePolygon.Width,ImagePolygon.Height);
  Loeschen (ImagePolygon.Canvas, Flaeche);
  Flaeche := Rect(0,0,ImageKreis.Width,ImageKreis.Height);
  Loeschen (ImageKreis.Canvas, Flaeche);
  Flaeche := Rect(0,0,ImageEllipse.Width,ImageEllipse.Height);
  Loeschen (ImageEllipse.Canvas, Flaeche);
  Flaeche := Rect(0,0,ImageDrucken.Width,ImageDrucken.Height);
  Loeschen (ImageDrucken.Canvas, Flaeche);
  ListBoxPolygon.Clear;
  SetCurrentDir (DirectS);
  Form72.Close;
  if (not WeiterF) and (EingabeS = 'ausBild') then Form71.Close;
end;

procedure TForm72.ButtonbeendenClick(Sender: TObject);
var
  Flaeche : TRect;
begin
  ZeilePolygonS := NIL;
  PolygonZeileS := NIL;
  Flaeche := Rect(0,0,Clientwidth,ClientHeight);
  Loeschen (ImageKurve.Canvas, Flaeche);
  Loeschen (ImagePolygon.Canvas, Flaeche);
  Loeschen (ImageKreis.Canvas, Flaeche);
  Loeschen (ImageX.Canvas, Flaeche);
  ListBoxPolygon.Clear;
  SetCurrentDir (DirectS);
  Form72.Close;
  Form71.Close;
  Form70.Close;
end;

procedure TForm72.FarbeClick(Sender: TObject);
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
  ButtonStartClick(Sender);
end;

procedure TForm72.SpeedFarbeClick(Sender: TObject);
begin
  FarbeClick(Sender);
end;

procedure TForm72.PFuellFarbeClick(Sender: TObject);
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
  EingabeS := '';
  ButtonStartClick(Sender);
end;

procedure TForm72.SpeedFuellenClick(Sender: TObject);
begin
  PFuellFarbeClick(Sender);
end;

procedure TForm72.FontClick(Sender: TObject);
begin
  WaehlFont(FontDialog1);
end;

procedure TForm72.SpeedFontClick(Sender: TObject);
begin
  FontClick(Sender);
end;

procedure TForm72.BGroesseClick(Sender: TObject);
begin
  PanelGroesse.Visible := true;
  CheckBoxBild.State   := cbUnchecked;
  MaskEditBBreite.Text := IntTostr(BBreiteP);
  MaskEditBHoehe.Text  := IntToStr(BHoeheP);
end;

procedure TForm72.SpeedGroesseClick(Sender: TObject);
begin
  BGroesseClick(Sender);
end;

procedure TForm72.MaskEditBBreiteKeyPress(Sender: TObject; var Key: Char);
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
      BBreiteP := StrToInt (BBreiteS);
      BHoeheP  := round(BBreiteP/Ratio);
      KonfigZeileS[123] := 'Save Image Width (Panozzo) :,'+BBreiteS;
      MaskEditBHoehe.Text := IntToStr(BHoeheP);
      assignFile(Datei,FabricS+'\'+'Fabric.ini');
      rewrite (Datei);
      for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
      closefile (Datei);
    end;
  end;
end;

procedure TForm72.MaskEditBHoeheKeyPress(Sender: TObject; var Key: Char);
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
      BHoeheP  := StrToInt (BHoeheS);
      BBreiteP := round(BHoeheP*Ratio);                
      KonfigZeileS[123] := 'Save Image Width (Panozzo) :,'+IntToStr(BBreiteP);
      MaskEditBBreite.Text := IntToStr(BBreiteF);
    end;
    assignFile(Datei,FabricS+'\'+'Fabric.ini');
    rewrite (Datei);
    for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
    closefile (Datei);
  end;
end;

procedure TForm72.CheckBoxBildClick(Sender: TObject);
begin
  PanelGroesse.Visible := false;
end;

procedure TForm72.kopierenClick(Sender: TObject);
begin
  ClipBoard.Assign (ImageDrucken.Picture);
end;

procedure TForm72.SpeedKopierenClick(Sender: TObject);
begin
  kopierenClick(Sender);
end;

procedure TForm72.SpeichernClick(Sender: TObject);
begin
  ListBoxSpeichern.Visible := true;
end;

procedure TForm72.SpeedSpeichernClick(Sender: TObject);
begin
  SpeichernClick(Sender);
end;

procedure TForm72.ListBoxSpeichernClick(Sender: TObject);
begin
  BBreiteSt := BBreiteP;
  GrafikSpeichern (ImageDrucken, ListBoxSpeichern, Ratio,
                   SavePictureDialog1, SaveDialog1);
end;

procedure TForm72.HintergrundClick(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  Farbe := clWhite;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS    := ColorToString (Farbe);
  HintFarbe := StringToColor(FarbeS);
  KonfigZeileS[3] := '  Background Colour        :,'+FarbeS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
EingabeS := '';
  ButtonStartClick(Sender);
end;

procedure TForm72.SpeedHintergrundClick(Sender: TObject);
begin
  HintergrundClick(Sender);
end;

procedure TForm72.einrichtenClick(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TForm72.SpeedEinrichtenClick(Sender: TObject);
begin
  einrichtenClick(Sender);
end;

procedure TForm72.drucken1Click(Sender: TObject);
var
  i      : byte;
begin
  PanelDrucken.Visible    := true;
  ButtonDrucken.Enabled   := false;
  MaskEditLinks.EditMask  := '9999;0; ';
  MaskEditOben.EditMask   := '9999;0; ';
  MaskEditLaenge.EditMask := '9999;0; ';
  MaskEditLinks.Text      := IntToStr(Links);
  MaskEditOben.Text       := IntToStr(Oben);
  MaskEditLaenge.Text     := IntToStr(Laenge);
  MaskEditSchrift.Clear;
  For i := 4 to 40 do
    ListBoxSchrift.Items.Add (IntToStr(i));
end;

procedure TForm72.SpeedDruckerClick(Sender: TObject);
begin
  drucken1Click(Sender);
end;

procedure TForm72.ListBoxSchriftClick(Sender: TObject);
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

procedure TForm72.MaskEditSchriftKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(13) then
  begin
    TextS := MaskEditSchrift.Text;
    ButtonDrucken.Enabled := true;
  end;
end;

procedure TForm72.ButtonDruckenClick(Sender: TObject);
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
    Bitmap.Assign(ImageDrucken.picture.graphic);
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

procedure TForm72.ButtonDabbrechenClick(Sender: TObject);
begin
  PanelDrucken.Visible := false;
end;

procedure TForm72.HilfeClick(Sender: TObject);
var
  DateiS : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\72Panozzo-plot.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\72Panozzo-plot.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm72.SpeedHilfeClick(Sender: TObject);
begin
  HilfeClick(Sender);
end;

procedure TForm72.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Projektionsmethode.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'Projection_Method.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm72.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm72.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm72.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

procedure TForm72.FryMethodeClick(Sender: TObject);
begin
  WeiterB[72] := true;
  ausDatei    := 'Polygon';
  FryMethodeS := 'normiert';
  ZahlPunkte  := ZahlGlob;
  Plot        := false;
  Application.CreateForm(TForm67, Form67);
  Form67.Show;
end;

end.