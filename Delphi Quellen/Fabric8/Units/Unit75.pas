unit Unit75;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, ExtCtrls, Menus, StdCtrls, Mask, ClipBrd,
  Globvar, Basic, Plotten, NetzProj, HPPlot, Texte, ComCtrls,
  Buttons, Drucken, Printers, Shellapi, Standard, GifImage,
  Bmp2Tiff, Jpeg, ExtDlgs, ReadTiff, ehsHelpRouter, ToolWin,
  PngImage, Grafik;
type
  TForm75 = class(TForm)
    ButtonStart  : TButton;
    ButtonZurueck: TButton;
    ButtonBeenden: TButton;
    ImageNord  : TImage;
    MainMenu1: TMainMenu;
    Projection: TMenuItem;
    Lambert: TMenuItem;
    PanelProjektion: TPanel;
    LabelProjektion: TLabel;
    LabelNetz: TLabel;
    stereografisch: TMenuItem;
    orthographic: TMenuItem;
    Kavraiskii: TMenuItem;
    KalFarbe: TMenuItem;
    ColorDialog1: TColorDialog;
    ListBoxAbstand: TListBox;
    LabelAbstand: TLabel;
    Raster: TMenuItem;
    RasterAendern: TMenuItem;
    PanelAbstand: TPanel;
    LabelRaster: TLabel;
    LabelPunkte: TLabel;
    LabelZahl: TLabel;
    ListBoxKalotte: TListBox;
    LabelKalotte: TLabel;
    ZaehlKalotte: TMenuItem;
    KalotteAendern: TMenuItem;
    PanelKalotte: TPanel;
    LabelProzent: TLabel;
    LabelKZahl: TLabel;
    Grafik: TMenuItem;
    kopieren: TMenuItem;
    speichern: TMenuItem;
    SaveDialog1: TSaveDialog;
    FarbePeripherie: TMenuItem;
    FarbeDiagramm: TMenuItem;
    FarbeRahmen: TMenuItem;
    Hintergrund: TMenuItem;
    OpenDialog1: TOpenDialog;
    Paneldrucken: TPanel;
    GroupBoxDrucken: TGroupBox;
    Panel7: TPanel;
    LabelRdrucken: TLabel;
    MaskEditRdrucken: TMaskEdit;
    Panel8: TPanel;
    LabelMitte: TLabel;
    LabelXdrucken: TLabel;
    LabelYdrucken: TLabel;
    MaskEditXdrucken: TMaskEdit;
    MaskEditYdrucken: TMaskEdit;
    Panel9: TPanel;
    LabelUnterschrift: TLabel;
    LabelSchrift: TLabel;
    MaskEditUnterschrift: TMaskEdit;
    ListBoxSchrift: TListBox;
    RadioGroup: TRadioGroup;
    RadioButtonLinks: TRadioButton;
    RadioButtonZentriert: TRadioButton;
    RadioButtonRechts: TRadioButton;
    Panel10: TPanel;
    Panel11: TPanel;
    CheckBoxAbbruch: TCheckBox;
    PDrucker: TMenuItem;
    einrichten: TMenuItem;
    drucken: TMenuItem;
    PrinterSetupDialog1: TPrinterSetupDialog;
    PrintDialog1: TPrintDialog;
    Image1: TImage;
    PanelSpeed: TPanel;
    SpeedHilfe: TSpeedButton;
    SpeedDrucken: TSpeedButton;
    SpeedHandbuch: TSpeedButton;
    SpeedKopieren: TSpeedButton;
    SpeedLambert: TSpeedButton;
    SpeedStereografisch: TSpeedButton;
    SpeedOrthografisch: TSpeedButton;
    SpeedKavraiskii: TSpeedButton;
    SpeedPeripherie: TSpeedButton;
    SpeedDiagramm: TSpeedButton;
    SpeedRahmen: TSpeedButton;
    SpeedLiteratur: TSpeedButton;
    SpeedFarbe: TSpeedButton;
    SpeedRaster: TSpeedButton;
    SpeedZaehl: TSpeedButton;
    StatusBar: TStatusBar;
    Handbuch: TMenuItem;
    Literatur: TMenuItem;
    SpeedEinrichten: TSpeedButton;
    PanelGroesse: TPanel;
    LabelBHoehe: TLabel;
    LabelBBreite: TLabel;
    MaskEditBBreite: TMaskEdit;
    MaskEditBHoehe: TMaskEdit;
    CheckBoxBild: TCheckBox;
    BGroesse: TMenuItem;
    transparent: TMenuItem;
    FarbeH: TMenuItem;
    SpeedBGroesse: TSpeedButton;
    SpeedTransparent: TSpeedButton;
    SavePictureDialog1: TSavePictureDialog;
    SpeedHFarbe: TSpeedButton;
    Hilfe: TMenuItem;
    ButtonDrucken: TButton;
    ButtonAbbrechen: TButton;
    ListBoxSpeichern: TListBox;
    SpeedSpeichern: TSpeedButton;
    Font: TMenuItem;
    FontDialog1: TFontDialog;
    SpeedFont: TSpeedButton;
    procedure FormActivate(Sender: TObject);
    procedure ButtonStartClick(Sender: TObject);
    procedure ButtonZurueckClick(Sender: TObject);
    procedure ButtonBeendenClick(Sender: TObject);
    procedure LambertClick(Sender: TObject);
    procedure stereografischClick(Sender: TObject);
    procedure orthographicClick(Sender: TObject);
    procedure KavraiskiiClick(Sender: TObject);
    procedure KalFarbeClick(Sender: TObject);
    procedure ListBoxAbstandClick(Sender: TObject);
    procedure RasterAendernClick(Sender: TObject);
    procedure ListBoxKalotteClick(Sender: TObject);
    procedure KalotteAendernClick(Sender: TObject);
    procedure kopierenClick(Sender: TObject);
    procedure ZwischenablageClick(Sender: TObject);
    procedure ausDateiClick(Sender: TObject);
    procedure FarbePeripherieClick(Sender: TObject);
    procedure FarbeDiagrammClick(Sender: TObject);
    procedure FarbeRahmenClick(Sender: TObject);
    procedure einrichtenClick(Sender: TObject);
    procedure druckenClick(Sender: TObject);
    procedure RadioButtonLinksClick(Sender: TObject);
    procedure RadioButtonZentriertClick(Sender: TObject);
    procedure RadioButtonRechtsClick(Sender: TObject);
    procedure MaskEditUnterschriftKeyPress(Sender: TObject; var Key: Char);
    procedure ListBoxSchriftClick(Sender: TObject);
    procedure SpeedLambertClick(Sender: TObject);
    procedure SpeedStereografischClick(Sender: TObject);
    procedure SpeedOrthografischClick(Sender: TObject);
    procedure SpeedKavraiskiiClick(Sender: TObject);
    procedure SpeedFarbeClick(Sender: TObject);
    procedure SpeedRasterClick(Sender: TObject);
    procedure SpeedZaehlClick(Sender: TObject);
    procedure SpeedKopierenClick(Sender: TObject);
    procedure SpeedZwischenablageClick(Sender: TObject);
    procedure SpeedausDateiClick(Sender: TObject);
    procedure SpeedPeripherieClick(Sender: TObject);
    procedure SpeedDiagrammClick(Sender: TObject);
    procedure SpeedRahmenClick(Sender: TObject);
    procedure SpeedDruckenClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ShowHint(Sender: TObject);
    procedure HandbuchClick(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure SpeedLiteraturClick(Sender: TObject);
    procedure HilfeClick(Sender: TObject);
    procedure SpeedHilfeClick(Sender: TObject);
    procedure SpeedEinrichtenClick(Sender: TObject);
    procedure BGroesseClick(Sender: TObject);
    procedure MaskEditBBreiteKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditBHoeheKeyPress(Sender: TObject; var Key: Char);
    procedure CheckBoxBildClick(Sender: TObject);
    procedure transparentClick(Sender: TObject);
    procedure FarbeHClick(Sender: TObject);
    procedure SpeedHFarbeClick(Sender: TObject);
    procedure SpeedTransparentClick(Sender: TObject);
    procedure ButtonDruckenClick(Sender: TObject);
    procedure ButtonAbbrechenClick(Sender: TObject);
    procedure speichernClick(Sender: TObject);
    procedure ListBoxSpeichernClick(Sender: TObject);
    procedure SpeedSpeichernClick(Sender: TObject);
    procedure FontClick(Sender: TObject);
    procedure SpeedFontClick(Sender: TObject);
  end;
  type TBitmap = class(Graphics.Tbitmap)
  end;
var
  Form75      : TForm75;
  Image1      : TImage;
  ImageNord   : TImage;
  NetS        : string;
  AbstandS    : string;
  Calotte     : real;
  KalotteS    : string;
  CurrentFile : string;
  Holzwischen : boolean;
  HolDatei    : boolean;
  Gedrueckt   : array [1..3] of boolean;
  TextS       : string;
  BuendigS    : string;
  Schrift     : byte;
  Ratio       : real;
  Bitmap      : TBitmap;
  BHoeheSt    : word;
  DNameS      : string;
  Bild        : TBitmap;

implementation

uses Unit36;
{$R *.DFM}

procedure TForm75.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm75.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm75.FormActivate(Sender: TObject);
var
  i : byte;
begin
  Left                    := 70;
  Top                     := 10;
  Height                  := 750;
  Width                   := 1050;
  Form75.Caption          := Tx(1195);
  Image1.Enabled          := false;
  Buttonzurueck.Caption   := Tx(30);
  Buttonbeenden.Caption   := Tx(53);
  Projection.Caption      := Tx(639);
  LabelProjektion.Caption := Tx(639);
  Raster.Caption          := Tx(1197);
  RasterAendern.Caption   := Tx(1198);
  LabelAbstand.Caption    := Tx(1196);
  LabelRaster.Caption     := Tx(1197);
  LabelPunkte.Caption     := Tx(1196);
  Lambert.Caption         := Tx(259);
  stereografisch.Caption  := TX(260);
  orthographic.Caption    := Tx(1202);
  KalFarbe.Caption        := Tx(1203);
  ZaehlKalotte.Caption    := Tx(1204);
  KalotteAendern.Caption  := Tx(1205);
  LabelKalotte.Caption    := Tx(1206);
  LabelProzent.Caption    := Tx(1206);
  Grafik.Caption          := Tx(281);
  kopieren.Caption        := Tx(282);
  speichern.Caption       := Tx(284);
  PDrucker.Caption        := Tx(1080);
  FarbePeripherie.Caption := Tx(498);
  Hintergrund.Caption     := Tx(1453);
  FarbeH.Caption          := Tx(275);
  FarbeDiagramm.Caption   := Tx(860);
  FarbeRahmen.Caption     := Tx(892);
  einrichten.Caption      := Tx(94);
  drucken.Caption         := Tx(93);
  Hilfe.Caption           := Tx(162)+' (F1)';
  Handbuch.Caption        := Tx(1055)+' (F2)';
  Literatur.Caption       := Tx(1183)+' (F5)';
  Font.Caption            := Tx(1621);
  SpeedLambert.Hint       := Hilf(387);
  SpeedStereografisch.Hint:= Hilf(388);
  SpeedOrthografisch.Hint := Hilf(389);
  SpeedKavraiskii.Hint    := Hilf(390);
  SpeedFarbe.Hint         := Hilf(467);
  SpeedRaster.Hint        := Hilf(468);
  SpeedZaehl.Hint         := Hilf(469);
  SpeedKopieren.Hint      := Hilf(262);
  SpeedPeripherie.Hint    := Hilf(440);
  SpeedDiagramm.Hint      := Hilf(441);
  SpeedRahmen.Hint        := Hilf(442);
  SpeedDrucken.Hint       := Hilf(309);
  SpeedEinrichten.Hint    := Hilf(505);
  SpeedBGroesse.Hint      := Hilf(583);
  SpeedTransparent.Hint   := Hilf(584);
  SpeedHFarbe.Hint        := Hilf(585);
  SpeedSpeichern.Hint     := Hilf(264);
  SpeedFont.Hint          := Hilf(686);
  LabelNetz.Caption       := ProjektionS;
  for i := 2 to 50 do ListboxAbstand.Items.Add(IntToStr(i));
  for i := 1 to 100 do ListBoxKalotte.Items.Add(FloatToStr(i/10));
  AbstandS := IntToStr(GAbstand);
  LabelAbstand.Visible    := false;
  ListBoxAbstand.Visible  := false;
  ListBoxKalotte.Visible  := false;
  LabelZahl.Caption       := AbstandS;
  KalotteS                := FloatToStr(Kalotte/10);
  Calotte                 := Kalotte/10;
  PanelProjektion.Visible := false;
  PanelAbstand.Visible    := false;
  PanelKalotte.Visible    := false;
  LabelAbstand.Visible    := false;
  LabelKalotte.Visible    := false;
  Projection.Visible      := false;
  KalFarbe.Visible        := false;
  Raster.Visible          := false;
  ZaehlKalotte.Visible    := false;
  Grafik.Visible          := false;
  PanelDrucken.Visible    := false;
  Handbuch.Visible        := false;
  PanelSpeed.Visible      := false;
  MaskEditBBreite.EditMask:= '99999;0; ';
  MaskEditBHoehe.EditMask := '99999;0; ';
  LabelBBreite.Caption    := Tx(1440);
  LabelBHoehe.Caption     := Tx(1441);
  BGroesse.Caption        := Tx(1439);
  PanelGroesse.Visible    := false;
  Ratio := Image1.Width/Image1.Height;
  for i := 1 to 7 do
    ListBoxSpeichern.Items.Add (Tx(1611+i));
  ListBoxSpeichern.Visible := false;  
end;

procedure TForm75.ButtonStartClick(Sender: TObject);
var
  i, j, m : word;
  x, y    : word;
  KoordX  : integer;
  KoordY  : integer;
  Rho     : extended;
  FalExt  : extended;
  AziExt  : extended;
  Oo      : extended;
  AnfangX : real;
  AnfangY : real;
  Bitmap  : Tbitmap;
begin
  Bo := Pi/180;
  BHoeheSt := round(BBreiteSt/Ratio);
  PanelSpeed.Visible := true;
  PanelProjektion.Visible := true;
  PanelAbstand.Visible    := true;
  PanelKalotte.Visible    := true;
  Projection.Visible      := true;
  KalFarbe.Visible        := true;
  Raster.Visible          := true;
  ZaehlKalotte.Visible    := true;
  Grafik.Visible          := true;
  Handbuch.Visible        := true;
  LabelKZahl.Caption      := KalotteS;
  Image1.Enabled := true;
  ImageNord.Top    := 12;
  ImageNord.Left   := 400;
  ImageNord.Height := 36;
  ImageNord.Width  := 18;
  ImageNord.Picture.LoadfromFile (DirectS+'\'+'NordPfeil.bmp');
  with Image1 do
  begin
    Xmitte := Width div 2;
    Ymitte := Height div 2 + 18;
    Radius := Width div 2 - 24;
    Breite := Width;
    Hoehe  := Height;
    Canvas.Brush.Color := HintFarbe;
    Canvas.Pen.Color   := RahmenFarbe;
    Canvas.Rectangle(0,0,Image1.Width-1,Image1.Height-1);
  end;
  with ImageNord do
  begin
    if not HTransparent then
    begin
      for i := 0 to Width-1 do
      begin
        for j := 0 to Height-1 do
        begin
          if Canvas.Pixels[i,j] = clWhite then
            Canvas.Pixels[i,j] := HintFarbe
          else Canvas.Pixels[i,j] := UmfangFarbe;
        end;
      end;
    end;
  end;
  Diagramm (Image1.Canvas);
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
    Holzwischen := false;
  end;
  if HolDatei then
  begin
    try
      Image1.Picture.LoadFromFile(CurrentFile);
    except
      on Exception do
      begin
        Beep;
        showMessage(Tx(307));               {Datei nicht gefunden}
      end;
    end;
  end; {if HolDatei}
  With Image1.Canvas do
  begin
    Pen.Color   := NetzFarbe;
    Brush.Style := bsClear;
    AnfangX := Xmitte-Radius;
    AnfangY := Ymitte-Radius;
    FalExt  := 0;
    for i := 0 to GAbstand-1 do
    begin
      X := round(AnfangX+2*i*Radius/GAbstand);
      KoordX := X - Xmitte;
      for j := 0 to GAbstand-1 do
      begin
        Y := round(AnfangY+2*j*Radius/GAbstand);
        KoordY := Y - Ymitte;
        Rho := sqrt(sqr(KoordX/Radius) + sqr(KoordY/Radius));
        if Rho <= 1.05 then
        begin
          if Rho > 1.0 then Rho := 1.0;
          if KoordY = 0 then KoordY := 1;
          AziExt := arctan(KoordX/KoordY);
          if AziExt < 0 then AziExt := AziExt + Pi;
          if (AziExt = 0) and (KoordY < 0) then AziExt := Pi;
          if (AziExt = 0) and (KoordY > 0) then AziExt := 0;
          if (AziExt <> 0) and (AziExt <> Pi) then
            if KoordX < 0 then AziExt := AziExt + Pi;
          if AziExt >=360 then AziExt := AziExt - 2*Pi;
          if ProjektionS = 'Lambert' then
            FalExt := (Pi/2 - arccos(1-sqr(Rho)));
          if ProjektionS = 'stereographic' then
            FalExt := Pi/2 - 2*(arctan(Rho));
          if ProjektionS = 'orthographic' then
            FalExt := arccos(Rho);
          if ProjektionS = 'Kavraiskii' then
            FalExt := (Pi-Rho*Pi)/2;
          Oo := arccos (1-Calotte/100);
          Kleinkreis (Image1.Canvas, AziExt, FalExt, Oo, NetzFarbe);
          Ellipse(X-2,Y-2,X+2,Y+2);
        end;
      end;
    end;
    Pen.Color := UmfangFarbe;
    Ellipse(Xmitte-Radius,ymitte-Radius,Xmitte+Radius,Ymitte+Radius);
  end;
  if DemoB then DemoText (Image1.Canvas,10,Image1.Height-40);
end;

procedure TForm75.ButtonZurueckClick(Sender: TObject);
var
  Flaeche : TRect;
begin
  Flaeche := Rect(0,0,Clientwidth,ClientHeight);
  Loeschen (Image1.Canvas, Flaeche);
  Loeschen (ImageNord.Canvas, Flaeche);
  Form75.Close;
end;

procedure TForm75.ButtonBeendenClick(Sender: TObject);
var
  Flaeche : TRect;
begin
  Loeschen (Image1.Canvas, Flaeche);
  Loeschen (ImageNord.Canvas, Flaeche);
  Form75.Close;
  Form36.Close;
  SetCurrentDir(DirectS);
end;

procedure TForm75.LambertClick(Sender: TObject);
var
  Datei : TextFile;
  i     : word;
begin
  NetS         := 'Schmidt';
  ProjektionS  := 'Lambert';
  KonfigZeileS[24] := '  Projection               :,Lambert';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  LabelNetz.Caption := Tx(803);
  ButtonStartClick(Sender);
end;

procedure TForm75.SpeedLambertClick(Sender: TObject);
begin
  LambertClick(Sender);
end;


procedure TForm75.stereografischClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  NetzS        := 'Wulff';
  ProjektionS  := 'stereographic';
  KonfigZeileS[24] := '  Projection               :,stereographic';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  LabelNetz.Caption := Tx(804);
  ButtonStartClick(Sender);
end;

procedure TForm75.SpeedStereografischClick(Sender: TObject);
begin
  stereografischClick(Sender);
end;

procedure TForm75.orthographicClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  NetzS        := 'ortho';
  ProjektionS  := 'orthographic';
  KonfigZeileS[24] := '  Projection               :,orthographic';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  LabelNetz.Caption := Tx(805);
  ButtonStartClick(Sender);
end;

procedure TForm75.SpeedOrthografischClick(Sender: TObject);
begin
  orthographicClick(Sender);
end;

procedure TForm75.KavraiskiiClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  NetzS        := 'Kavraiskii';
  ProjektionS  := 'Kavraiskii';
  KonfigZeileS[24] := '  Projection               :,Kavraiskii';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  LabelNetz.Caption := Tx(806);
  ButtonStartClick(Sender);
end;

procedure TForm75.SpeedKavraiskiiClick(Sender: TObject);
begin
  KavraiskiiClick(Sender);
end;

procedure TForm75.KalFarbeClick(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  Farbe := clWhite;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS           := ColorToString (Farbe);
  NetzFarbe        := StringToColor(FarbeS);
  KonfigZeileS[25] := 'Colour of Nets             :,'+FarbeS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick (Sender);
end;

procedure TForm75.SpeedFarbeClick(Sender: TObject);
begin
  KalFarbeClick(Sender);
end;

procedure TForm75.ListBoxAbstandClick(Sender: TObject);
var
  i       : byte;
  Datei   : TextFile;
begin
  for i := 0 to ListboxAbstand.Items.Count-1 do
  begin
    if ListboxAbstand.Selected[i] then
      GAbstand := StrToInt(ListBoxAbstand.Items.Strings[i]);
  end;
  AbstandS := IntToStr(GAbstand);
  LabelZahl.Caption := AbstandS;
  KonfigZeileS[105] := 'Counting grid distance    :,'+AbstandS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ListBoxAbstand.Visible := false;
  LabelAbstand.Visible  := false;
  ButtonStartClick(Sender);
end;

procedure TForm75.RasterAendernClick(Sender: TObject);
begin
  ListboxAbstand.Visible := true;
  LabelAbstand.Visible   := true;
end;

procedure TForm75.SpeedRasterClick(Sender: TObject);
begin
  RasterAendernClick(Sender);
end;

procedure TForm75.ListBoxKalotteClick(Sender: TObject);
var
  i        : byte;
  Datei    : TextFile;
  SKalotteS: string;
begin
  for i := 0 to ListboxKalotte.Items.Count-1 do
  begin
    if ListboxKalotte.Selected[i] then
      Calotte := StrToFloat(ListBoxKalotte.Items.Strings[i]);
  end;
  KalotteS := FloatToStr(Calotte);
  LabelKZahl.Caption := KalotteS;
  SKalotteS := IntToStr(round(Calotte*10));
  KonfigZeileS[49] := 'Counting Calotte x 10     :,'+SkalotteS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ListBoxKalotte.Visible := false;
  LabelKalotte.Visible   := false;
  ButtonStartClick(Sender);
end;

procedure TForm75.KalotteAendernClick(Sender: TObject);
begin
  ListBoxKalotte.Visible := true;
  LabelKalotte.Visible   := true;
end;

procedure TForm75.SpeedZaehlClick(Sender: TObject);
begin
  KalotteAendernClick(Sender);
end;

procedure TForm75.FontClick(Sender: TObject);
var
  FarbeS : string;
  Style  : integer;
  Datei  : TextFile;
  i      : byte;
begin
  if FontDialog1.Execute then
  begin
    DSchrift := FontDialog1.Font.Name;
    DFarbe   := FontDialog1.Font.Color;
    DGroesse := FontDialog1.Font.Size;
    DStyle   := FontDialog1.Font.Style;
    Style    := Integer(TFontStyle(DStyle));
    FarbeS   := ColorToString(DFarbe);
    KonfigZeileS[132] := 'Font name                  :,'+DSchrift;
    KonfigZeileS[133] := 'Font size                  :,'+IntToStr(DGroesse);
    KonfigZeileS[134] := 'Font colour                :,'+FarbeS;
    KonfigZeileS[135] := 'Font style                 :,'+IntToStr(Style);
    assignFile(Datei,Fabrics+'\'+'Fabric.ini');
    rewrite (Datei);
    for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
    closefile (Datei);
  end;
end;

procedure TForm75.SpeedFontClick(Sender: TObject);
begin
  FontClick(Sender);
end;

procedure TForm75.BGroesseClick(Sender: TObject);
begin
  PanelGroesse.Visible := true;
  CheckBoxBild.State   := cbUnchecked;
  MaskEditBBreite.Text := IntTostr(BBreiteSt);
  MaskEditBHoehe.Text  := IntToStr(BHoeheSt);
end;

procedure TForm75.MaskEditBBreiteKeyPress(Sender: TObject; var Key: Char);
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
      BBreiteSt := StrToInt (BBreiteS);
      BHoeheSt  := round(BBreiteSt/Ratio);
      KonfigZeileS[118] := 'Save Image Width (Stereo)  :,'+BBreiteS;
      MaskEditBHoehe.Text := IntToStr(BHoeheSt);
      assignFile(Datei,FabricS+'\'+'Fabric.ini');
      rewrite (Datei);
      for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
      closefile (Datei);
    end;
  end;
end;

procedure TForm75.MaskEditBHoeheKeyPress(Sender: TObject; var Key: Char);
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
      BHoeheSt  := StrToInt (BHoeheS);
      BBreiteSt := round(BHoeheSt*Ratio);
      KonfigZeileS[118] := 'Save Image Width (Stereo)  :,'+IntToStr(BBreiteSt);
      MaskEditBBreite.Text := IntToStr(BBreiteSt);
    end;
    assignFile(Datei,FabricS+'\'+'Fabric.ini');
    rewrite (Datei);
    for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
    closefile (Datei);
  end;
end;

procedure TForm75.CheckBoxBildClick(Sender: TObject);
begin
  PanelGroesse.Visible := false;
end;

procedure TForm75.kopierenClick(Sender: TObject);
begin
  ClipBoard.Assign (Image1.Picture);
end;

procedure TForm75.SpeedKopierenClick(Sender: TObject);
begin
  kopierenClick(Sender);
end;

procedure TForm75.transparentClick(Sender: TObject);
begin
  Farbe                 := clWhite;
  HTransparent          := true;
  ListBoxSpeichern.Clear;
  ListBoxSpeichern.Items.Add (Tx(1613));
  ButtonStartClick(Sender);
end;

procedure TForm75.SpeedTransparentClick(Sender: TObject);
begin
  transparentClick(Sender);
end;

procedure TForm75.FarbeHClick(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  Farbe := clWhite;
  HTransparent := false;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS    := ColorToString (Farbe);
  HintFarbe := StringToColor(FarbeS);
  KonfigZeileS[3] := '  Background Colour        :,'+FarbeS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ListBoxSpeichern.Clear;
  for i := 1 to 7 do
    ListBoxspeichern.Items.Add (Tx(1611+i));
  ButtonStartClick (Sender);
end;

procedure TForm75.SpeedHFarbeClick(Sender: TObject);
begin
  FarbeHClick(Sender);
end;

procedure TForm75.speichernClick(Sender: TObject);
begin
  ListBoxSpeichern.Visible := true;
end;

procedure TForm75.SpeedSpeichernClick(Sender: TObject);
begin
  speichernClick(Sender);
end;

procedure TForm75.ListBoxSpeichernClick(Sender: TObject);
begin
  GrafikSpeichern (Image1, ListBoxSpeichern, Ratio,
                   SavePictureDialog1, SaveDialog1);
end;

procedure TForm75.ZwischenablageClick(Sender: TObject);
begin
  FarbePeripherie.Enabled  := false;
  FarbeDiagramm.Enabled    := false;
  Hintergrund.Enabled      := false;
  HolZwischen              := true;
  ButtonStartClick(Sender);
end;

procedure TForm75.SpeedZwischenablageClick(Sender: TObject);
begin
  ZwischenablageClick(Sender);
end;


procedure TForm75.ausDateiClick(Sender: TObject);
begin
  FarbePeripherie.Enabled  := false;
  FarbeDiagramm.Enabled    := false;
  Hintergrund.Enabled      := false;
  if OpenDialog1.Execute then CurrentFile := OpenDialog1.FileName;
  HolDatei := true;
  ButtonStartClick(Sender);
end;

procedure TForm75.SpeedausDateiClick(Sender: TObject);
begin
  ausDateiClick(Sender)
end;

procedure TForm75.FarbePeripherieClick(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  Farbe := clWhite;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS    := ColorToString (Farbe);
  UmfangFarbe := StringToColor(FarbeS);
  KonfigZeileS[5] := '  Periphery Colour         :,'+FarbeS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick (Sender);
end;

procedure TForm75.SpeedPeripherieClick(Sender: TObject);
begin
  FarbePeripherieClick(Sender);
end;


procedure TForm75.FarbeDiagrammClick(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  Farbe := clWhite;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS     := ColorToString (Farbe);
  DiagrFarbe := StringToColor(FarbeS);
  KonfigZeileS[6] := '  Diagram Colour           :,'+FarbeS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick (Sender);
end;

procedure TForm75.SpeedDiagrammClick(Sender: TObject);
begin
  FarbeDiagrammClick(Sender);
end;

procedure TForm75.FarbeRahmenClick(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
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
  ButtonStartClick (Sender);
end;

procedure TForm75.SpeedRahmenClick(Sender: TObject);
begin
  FarbeRahmenClick(Sender);
end;

procedure TForm75.einrichtenClick(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TForm75.SpeedEinrichtenClick(Sender: TObject);
begin
  einrichtenClick(Sender);
end;

procedure TForm75.druckenClick(Sender: TObject);
var
  SchriftS : string[5];
  i        : byte;
begin
  if PrintDialog1.Execute then
  begin
    Paneldrucken.Visible    := true;
    GroupBoxDrucken.Visible := true;
    MaskEditRdrucken.EditMask := '999;0; ';
    MaskEditXdrucken.EditMask := '999;0; ';
    MaskEditYdrucken.EditMask := '999;0; ';
    MaskEditRdrucken.Text     := InttoStr(round(DruckenR*10));
    MaskEditXdrucken.Text     := InttoStr(round(DruckenX*10));
    MaskEditYdrucken.Text     := InttoStr(round(DruckenY*10));
    MaskEditUnterschrift.Text := ProjektionS;
    GroupBoxdrucken.Caption   := Tx(880);
    LabelRdrucken.Caption        := Tx(883);
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
    ButtonDrucken.Enabled        := false;
    i                            := 3;
    repeat
      i := i + 1;
      str(i, SchriftS);
      ListBoxSchrift.Items.Add (SchriftS);
    until i = 40;
  end;
end;

procedure TForm75.SpeedDruckenClick(Sender: TObject);
begin
  druckenClick(Sender);
end;

procedure TForm75.ButtonDruckenClick(Sender: TObject);
var
  XKoordS : string;
  YKoordS : string;
  RadiusS : string;
  Bitmap  : TBitmap;
  Fenster : TRect;
begin
  Paneldrucken.Visible    := false;
  GroupBoxDrucken.Visible := false;
  RadiusS := MaskEditRdrucken.Text;
  XKoordS := MaskEditXdrucken.Text;
  YKoordS := MaskEditYdrucken.Text;
  Bitmap  :=TBitmap.Create;
  try
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

procedure TForm75.ButtonAbbrechenClick(Sender: TObject);
begin
  Paneldrucken.Visible         := false;
  GroupBoxDrucken.Visible      := false;
end;

procedure TForm75.RadioButtonLinksClick(Sender: TObject);
begin
  BuendigS := 'Links';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    ButtonDrucken.Enabled := true;
end;

procedure TForm75.RadioButtonZentriertClick(Sender: TObject);
begin
  BuendigS := 'Zentriert';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    ButtonDrucken.Enabled := true;
end;

procedure TForm75.RadioButtonRechtsClick(Sender: TObject);
begin
  BuendigS := 'Rechts';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    ButtonDrucken.Enabled := true;
end;

procedure TForm75.MaskEditUnterschriftKeyPress(Sender: TObject;
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

procedure TForm75.ListBoxSchriftClick(Sender: TObject);
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

procedure TForm75.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Lagenkugel.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'Projections.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm75.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm75.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm75.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(sender);
end;

procedure TForm75.HilfeClick(Sender: TObject);
const
  Anfang = 175;
var
  DateiS : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\75Kalotten.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\75Calottes.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm75.SpeedHilfeClick(Sender: TObject);
begin
  HilfeClick(Sender);
end;

end.

