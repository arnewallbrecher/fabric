unit Unit41;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, Menus, ExtCtrls, Globvar, Basic,
  RGProg, ClipBrd, Mask, HPPlot, Texte, ComCtrls, Buttons,
  Drucken, Printers, Shellapi, Standard, GifImage, Bmp2Tiff,
  Jpeg, ExtDlgs, ehsHelpRouter;

type
  TForm41 = class(TForm)
    Image1: TImage;

    ButtonStart   : TButton;
    Buttonzurueck : TButton;
    Buttonbeenden : TButton;

    MainMenu1: TMainMenu;

    Farbe1   : TMenuItem;

    Grafik1                 : TMenuItem;
    kopieren1               : TMenuItem;
    speichern: TMenuItem;
    speichernunter: TMenuItem;

    Drucker1            : TMenuItem;
    Druckereinrichten   : TMenuItem;
    drucken1            : TMenuItem;
    PrinterSetupDialog1 : TPrinterSetupDialog;
    PrintDialog1        : TPrintDialog;

    Hilfe1: TMenuItem;

    SaveDialog1: TSaveDialog;
    OpenDialog1: TOpenDialog;

    HPPlotter1 : TMenuItem;

    FarbeKoordinaten1 : TMenuItem;

    FarbedesDiagramms1 : TMenuItem;
    Hintergrund: TMenuItem;

    FarbeRahmen   : TMenuItem;

    GroupBoxplotten: TGroupBox;
      Panel3          : TPanel;
        LabelLaenge   : TLabel;
        MaskEditLaenge: TMaskEdit;
      Panel4           : TPanel;
        LabelNullpunkt : TLabel;
        LabelX         : TLabel;
        MaskEditX      : TMaskEdit;
        LabelY         : TLabel;
        MaskEditY      : TMaskEdit;

    Panel1         : TPanel;
    LabelDateien   : TLabel;
    LabelDaten     : TLabel;
    Label00000     : TLabel;
    ListBoxDateien : TListBox;
    Label1         : TLabel;
    Label2         : TLabel;
    PanelSpeed: TPanel;
    SpeedHilfe   : TSpeedButton;
    SpeedDrucken : TSpeedButton;
    PanelPlotFile: TPanel;
    LabelGeraet  : TLabel;

    StatusBar: TStatusBar;

    PanelDrucken    : TPanel;
    GroupBoxDrucken : TGroupBox;
    Panel2           : TPanel;
    LabelRdrucken    : TLabel;
    MaskEditRdrucken : TMaskEdit;
    Panel8           : TPanel;
    LabelMitte       : TLabel;
    LabelXdrucken    : TLabel;
    MaskEditXdrucken : TMaskEdit;
    LabelYdrucken    : TLabel;
    MaskEditYdrucken : TMaskEdit;
    Panel9               : TPanel;
    LabelUnterschrift    : TLabel;
    MaskEditUnterschrift : TMaskEdit;
    LabelSchrift         : TLabel;
    ListBoxSchrift       : TListBox;
    RadioGroup           : TRadioGroup;
    RadioButtonLinks     : TRadioButton;
    RadioButtonZentriert : TRadioButton;
    RadioButtonRechts    : TRadioButton;
    Handbuch: TMenuItem;
    ColorDialog1: TColorDialog;
    LabelPlotter: TLabel;
    SpeedHandbuch: TSpeedButton;
    SpeedFarbe: TSpeedButton;
    SpeedKopieren: TSpeedButton;
    SpeedPlotter: TSpeedButton;
    SpeedPLT: TSpeedButton;
    SpeedDXF: TSpeedButton;
    SpeedKoordinaten: TSpeedButton;
    SpeedDiagramm: TSpeedButton;
    SpeedRahmen: TSpeedButton;
    Literatur: TMenuItem;
    SpeedLiteratur: TSpeedButton;
    SpeedEinrichten: TSpeedButton;
    PanelGroesse: TPanel;
    LabelBHoehe: TLabel;
    LabelBBreite: TLabel;
    MaskEditBBreite: TMaskEdit;
    MaskEditBHoehe: TMaskEdit;
    CheckBoxBild: TCheckBox;
    BGroesse: TMenuItem;
    transparent: TMenuItem;
    HFarbe: TMenuItem;
    SpeedBGroesse: TSpeedButton;
    SpeedTransparent: TSpeedButton;
    SpeedHFarbe: TSpeedButton;
    SpeedBMPSpeichern: TSpeedButton;
    SpeedGIF: TSpeedButton;
    SpeedTIF: TSpeedButton;
    SpeedJPG: TSpeedButton;
    SpeedWMF: TSpeedButton;
    SpeedEMF: TSpeedButton;
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
    speichernPLT: TMenuItem;
    speichernDXF: TMenuItem;
    Ploterstellen: TButton;
    ButtonDrucken: TButton;
    ButtonAbbrechen: TButton;

    procedure ShowHint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ButtonStartClick(Sender: TObject);
    procedure ButtonzurueckClick(Sender: TObject);
    procedure ButtonbeendenClick(Sender: TObject);

    {Farbe}
    procedure Farbe1Click(Sender: TObject);

    {Grafik}
    procedure kopieren1Click(Sender: TObject);
    procedure ausZwischenablageholen1Click(Sender: TObject);
    procedure ausDateiholen1Click(Sender: TObject);

    procedure Hilfe1Click(Sender: TObject);

    {Farbe der Koordinaten}
    procedure FarbeKoordinaten1Click(Sender: TObject);

    {Farbe des Diagramms}
    procedure FarbedesDiagramms1Click(Sender: TObject);

    {Farbe des Rahmens}
    procedure FarbeRahmenClick(Sender: TObject);

    {Drucker}
    procedure DruckereinrichtenClick(Sender: TObject);
    procedure drucken1Click(Sender: TObject);

    procedure MaskEditLaengeKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditXKeyPress(Sender: TObject; var Key: Char);

    procedure SpeedHilfeClick(Sender: TObject);
    procedure SpeedDruckenClick(Sender: TObject);

    {Bildschirm drucken}
    procedure MaskEditUnterschriftKeyPress(Sender: TObject; var Key: Char);
    procedure RadioButtonLinksClick(Sender: TObject);
    procedure RadioButtonZentriertClick(Sender: TObject);
    procedure RadioButtonRechtsClick(Sender: TObject);
    procedure ListBoxSchriftClick(Sender: TObject);
    procedure HandbuchClick(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure SpeedFarbeClick(Sender: TObject);
    procedure SpeedKopierenClick(Sender: TObject);
    procedure SpeedZwischenablageClick(Sender: TObject);
    procedure SpeedausDateiClick(Sender: TObject);
    procedure HPPlotter1Click(Sender: TObject);
    procedure SpeedPLTClick(Sender: TObject);
    procedure SpeedPlotterClick(Sender: TObject);
    procedure SpeedDXFClick(Sender: TObject);
    procedure SpeedKoordinatenClick(Sender: TObject);
    procedure SpeedDiagrammClick(Sender: TObject);
    procedure SpeedRahmenClick(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
    procedure SpeedLiteraturClick(Sender: TObject);
    procedure SpeedEinrichtenClick(Sender: TObject);
    procedure BGroesseClick(Sender: TObject);
    procedure MaskEditBBreiteKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditBHoeheKeyPress(Sender: TObject; var Key: Char);
    procedure CheckBoxBildClick(Sender: TObject);
    procedure transparentClick(Sender: TObject);
    procedure HFarbeClick(Sender: TObject);
    procedure SpeedBGroesseClick(Sender: TObject);
    procedure SpeedTransparentClick(Sender: TObject);
    procedure SpeedHFarbeClick(Sender: TObject);
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
    procedure SpeedBMPSpeichernClick(Sender: TObject);
    procedure SpeedGIFClick(Sender: TObject);
    procedure SpeedTIFClick(Sender: TObject);
    procedure SpeedJPGClick(Sender: TObject);
    procedure SpeedWMFClick(Sender: TObject);
    procedure SpeedEMFClick(Sender: TObject);
    procedure speichernPLTClick(Sender: TObject);
    procedure speichernDXFClick(Sender: TObject);
    procedure PloterstellenClick(Sender: TObject);
    procedure ButtonDruckenClick(Sender: TObject);
    procedure ButtonAbbrechenClick(Sender: TObject);
  end;

var
  Form41      : TForm41;
  ExtensionS  : string;
  Farbe       : TColor;
  Bitmap      : TBitmap;
  HolDatei    : boolean;
  HolZwischen : boolean;
  CurrentFile : string;
  KFarbe      : byte;
  OFarbe      : byte;
  PlotDateiS  : string;
  Schrift     : byte;
  BuendigS    : string;
  Gedrueckt   : array [1..3] of boolean;
  TextS       : string;
  Ratio       : real;
  BHoeheF     : word;

implementation
uses Unit38, Unit39, Unit40;
{$R *.DFM}

procedure TForm41.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm41.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm41.FormActivate(Sender: TObject);
var
  i : word;
begin
  Left   := 4;
  Top    := 0;
  Width  := 1016;
  Height := 735;
  setlength (Regelung, MaxDaten);
  setlength (Zylindrizitaet, MaxDaten);
  setlength (Symbol, MaxDaten);
  WindowState                      := wsNormal;
  SpeedDrucken.Hint                := Hilf(309);
  Form41.Caption                   := Tx(728);  {Fabric7: R%-G%-Diagramm}
  Image1.Hint                      := Hilf(125);
  Panel3.Hint                      := Hilf(86);
  Image1.Hint                      := Hilf(125);
  ListBoxDateien.Hint              := Hilf(82);
  LabelDateien.Hint                := Hilf(82);
  Label1.Hint                      := Hilf(36);
  Label2.Hint                      := Hilf(36);
  Panel3.Hint                      := Hilf(115);
  Panel4.Hint                      := Hilf(116);
  GroupBoxplotten.Hint             := Hilf(58) + Hilf(59);
  MaskEditX.Hint                   := Hilf(117);
  MaskEditY.Hint                   := Hilf(118);
  LabelX.Hint                      := Hilf(117);
  LabelY.Hint                      := Hilf(118);
  Ploterstellen.Hint               := Hilf(65);
  Ploterstellen.Hint               := Hilf(65);
  ButtonStart.Hint                 := Hilf(312);
  Buttonzurueck.Hint               := Hilf(119);
  Buttonbeenden.Hint               := Hilf(30);
  SpeedHilfe.Hint                  := Hilf(210);
  SpeedHandbuch.Hint               := Hilf(274);
  SpeedFarbe.Hint                  := Hilf(365);
  SpeedKopieren.Hint               := Hilf(262);
  SpeedPlotter.Hint                := Hilf(437);
  SpeedPLT.Hint                    := Hilf(438);
  SpeedDXF.Hint                    := Hilf(439);
  SpeedKoordinaten.Hint            := Hilf(444);
  SpeedDiagramm.Hint               := Hilf(441);
  SpeedRahmen.Hint                 := Hilf(442);
  SpeedEinrichten.Hint             := Hilf(505);
  SpeedBGroesse.Hint               := Hilf(583);
  SpeedTransparent.Hint            := Hilf(584);
  SpeedHFarbe.Hint                 := Hilf(585);
  SpeedBMPspeichern.Hint           := Hilf(586);
  SpeedGIF.Hint                    := Hilf(587);
  SpeedTIF.Hint                    := Hilf(588);
  SpeedJPG.Hint                    := Hilf(589);
  SpeedWMF.Hint                    := Hilf(590);
  SpeedEMF.Hint                    := Hilf(591);
  Farbe1.Caption                   := Tx(642);  {&Farbe}
  Grafik1.Caption                  := Tx(281);
  kopieren1.Caption                := Tx(282);
  Hintergrund.Caption              := Tx(1453);    {Hintergrund}
  HFarbe.Caption                   := Tx(275);
  speichern.Caption                := Tx(87);
  speichernUnter.Caption           := Tx(88);
  HPPlotter1.Caption               := Tx(288);
  FarbeKoordinaten1.Caption        := Tx(729);
  Hilfe1.Caption                   := Tx(162)+' (F1)';
  LabelDateien.Caption             := Tx(136);   {ausgewählte Dateien:}
  Label1.Caption                   := Tx(646);   {Zahl der Daten}
  GroupBoxPlotten.Caption          := Tx(297);
  LabelLaenge.Caption              := Tx(731);   {Länge [cm]:}
  LabelNullpunkt.Caption           := Tx(732);   {Nullpunkt}
  LabelX.Caption                   := Tx(733);   {X-Koordinate [cm]:}
  LabelY.Caption                   := Tx(734);   {Y-Koordinate [cm]:}
  Ploterstellen.Caption            := Tx(298);
  Buttonzurueck.Caption            := Tx(30);
  Buttonbeenden.Caption            := Tx(53);
  LabelDateien.Enabled        := false;
  Label1.Enabled              := false;
  Label2.Caption              := '';
  LabelGeraet.Caption         := '';
  Image1.Enabled              := true;
  HolZwischen                 := false;
  HolDatei                    := false;
  kopieren1.Enabled           := false;
  HPPlotter1.Enabled          := false;
  FarbeKoordinaten1.Enabled   := false;
  LabelLaenge.Enabled         := false;
  MaskEditLaenge.Enabled      := false;
  LabelX.Enabled              := false;
  MaskEditX.Enabled           := false;
  LabelY.Enabled              := false;
  MaskEditY.Enabled           := false;
  LabelNullpunkt.Enabled      := false;
  Farbe1.Enabled              := false;
  Grafik1.Enabled             := false;
  MaskEditLaenge.EditMask     := '999;0; ';
  MaskEditX.EditMask          := '999;0; ';
  MaskEditY.EditMask          := '999;0; ';
  DecimalSeparator            := '.';
  MaskEditLaenge.Text         := FloatToStr(Kante);
  MaskEditX.Text              := FloatToStr(XAnfang);
  MaskEditY.Text              := FloatToStr(YAnfang);
  MaskEditLaenge.Enabled      := false;
  SpeedDrucken.Enabled        := false;
  ListBoxDateien.Clear;
  for i := 0 to DateiZahl do
    ListboxDateien.Items.Add (DateiNameS[i]);
  Paneldrucken.Visible         := false;
  ButtonDrucken.Visible        := false;
  ButtonAbbrechen.Visible      := false;
  Drucker1.Caption             := Tx(92);
  Druckereinrichten.Caption    := Tx(94);
  drucken1.Caption             := Tx(93);
  FarbeRahmen.Caption          := Tx(892);
  FarbedesDiagramms1.Caption   := Tx(678);
  GroupBoxPlotten.Caption      := '';
  for i := 1 to 3 do Gedrueckt[i] := false;
  GroupBoxPlotten.Visible   := false;
  LabelGeraet.Caption       := Tx(850);
  PanelPlotFile.Visible     := false;
  Handbuch.Caption          := Tx(1055)+' (F2)';
  Literatur.Caption         := Tx(1183)+' (F5)';
  SpeedLiteratur.Hint       := Hilf(462);
  PanelSpeed.Visible        := false;
  MaskEditBBreite.EditMask  := '99999;0; ';
  MaskEditBHoehe.EditMask   := '99999;0; ';
  LabelBBreite.Caption      := Tx(1440);
  LabelBHoehe.Caption       := Tx(1441);
  BGroesse.Caption          := Tx(1439);
  PanelGroesse.Visible      := false;
  Ratio := Image1.Width/Image1.Height;
end;

procedure TForm41.ButtonStartClick(Sender: TObject);
var
  i      : word;
  X, Y   : word;
  X0, Y0 : word;
  Laenge : word;
begin
  Bo := Pi/180;
  BHoeheF := round(BBreiteF/Ratio);
  PanelSpeed.Visible        := true;
  SpeedDrucken.Enabled      := true;
  LabelLaenge.Enabled       := true;
  MaskEditLaenge.Enabled    := true;
  LabelNullpunkt.Enabled    := true;
  LabelX.Enabled            := true;
  LabelY.Enabled            := true;
  MaskEditx.Enabled         := true;
  MaskEditY.Enabled         := true;
  ExtensionS                := RightS(DateinameS[1],3);
  Farbe1.Enabled            := true;
  Grafik1.Enabled           := true;
  LabelDateien.Enabled      := true;
  Label1.Enabled            := true;
  Label2.Caption            := IntToStr (ZahlGlob);
  kopieren1.Enabled         := true;
  FarbeKoordinaten1.Enabled := true;
  GroupBoxPlotten.Caption   := 'Plot:';
  Bitmap := Tbitmap.Create;
  Bitmap.Width  := Image1.Width;
  Bitmap.Height := Image1.Height;
  Image1.Picture.Graphic := Bitmap;
  with Image1 do
  begin
    Xmitte := ClientWidth div 2;
    Ymitte := ClientHeight div 2;
    Radius := ClientWidth div 2 - 20;
    Breite := Image1.Width;
    Hoehe  := Image1.Height;
  end;
  Bildschirm (Image1.Canvas, X0, Y0, Laenge);
  if HolZwischen then
  begin
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
    else MessageDlg(Tx(306), mtInformation, [mbOK],0);  {Die Zwischenablage..}
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
        showMessage(Tx(307));                         {Datei nicht gefunden}
      end;
    end;
  end; {if HolDatei}
  with Image1.Canvas do
  begin
    Pen.Color := DatenFarbe;
    Pen.Width := 1;
    for i := 1 to ZahlGlob do
    begin
      X := X0+round(Zylindrizitaet[i]*Laenge/100);
      Y := Y0-round(Regelung[i]*Laenge/100);
      Case Symbol[i] of
        1 : begin
              Brush.Color := DiagrFarbe;
              Ellipse (X-5,Y-5, X+5,Y+5);
            end;
        2: begin
             Brush.Color := DatenFarbe;
             Ellipse (X-5,Y-5, X+5,Y+5);
           end;
        3: begin
             Brush.Color := DiagrFarbe;
             Rectangle (X-5,Y-5, X+5,Y+5);
           end;
        4: begin
             Brush.Color := DatenFarbe;
             Rectangle (X-5,Y-5, X+5,Y+5);
           end;
        5: begin
             Brush.Color := DiagrFarbe;
             Polygon ([Point(X,Y-5), Point(X+5,Y+5), Point(X-5,Y+5)]);
           end;
        6: begin
             Brush.Color := DatenFarbe;
             Polygon ([Point(X,Y-5), Point(X+5,Y+5), Point(X-5,Y+5)]);
           end;
        7: begin
             Brush.Color := DiagrFarbe;
             Polygon ([Point(X,Y-5), Point(X+5,Y), Point(X,Y+5),
                      Point(X-5,Y)]);
           end;
        8: begin
             Brush.Color := DatenFarbe;
             Polygon ([Point(X,Y-5), Point(X+5,Y), Point(X,Y+5),
                     Point(X-5,Y)]);
           end;
        9: begin
             Font.Color   := DatenFarbe;
             Brush.Color  := DiagrFarbe;
             TextOut (X-10,Y-20, '+');
           end;
        10: begin
              Font.Color   := DatenFarbe;
              Brush.Color  := DiagrFarbe;
              TextOut (X-8, Y-20, 'x');
            end;
      end;
    end;
  end;
  if DemoB then
  begin
    with Image1.Canvas do
    begin
      Font.Name   := 'Times New Roman';
      Brush.Color := clWhite;
      Font.Color  := clGray;
      Font.Size   := 36;
      Textout(Width div 2-300,Height div 2+10,'Demo-Version');
    end;
  end;
  HPPlotter1.Enabled := true;
end;

procedure TForm41.ButtonzurueckClick(Sender: TObject);
begin
  with Image1.Canvas do
  begin
    Pen.Color := clSilver;
    Brush.Color := clSilver;
    Rectangle (0,0,Image1.Width,Image1.Height);
  end;
  ListboxDateien.Clear;
  Regelung       := Nil;
  Zylindrizitaet := Nil;
  Symbol         := Nil;
  Form41.Close;
end;

procedure TForm41.ButtonbeendenClick(Sender: TObject);
begin
  with Image1.Canvas do
  begin
    Pen.Color := clSilver;
    Brush.Color := clSilver;
    Rectangle (0,0,Image1.Width,Image1.Height);
  end;
  ListboxDateien.Clear;
  Regelung       := Nil;
  Zylindrizitaet := Nil;
  Symbol         := Nil;
  Form41.Close;
  Form40.Close;
  Form39.Close;
  Form38.Close;
  SetCurrentDir(DirectS);
end;

procedure TForm41.Farbe1Click(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS := ColorToString (Farbe);
  DatenFarbe      := StringToColor(FarbeS);
  KonfigZeileS[7] := '  Colour of Data Points    :,'+FarbeS;
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick (Sender);
end;

procedure TForm41.BGroesseClick(Sender: TObject);
begin
  PanelGroesse.Visible := true;
  CheckBoxBild.State   := cbUnchecked;
  MaskEditBBreite.Text := IntTostr(BBreiteF);
  MaskEditBHoehe.Text  := IntToStr(BHoeheF);
end;

procedure TForm41.SpeedBGroesseClick(Sender: TObject);
begin
  BGroesseClick(Sender);
end;

procedure TForm41.MaskEditBBreiteKeyPress(Sender: TObject; var Key: Char);
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
      BBreiteF := StrToInt (BBreiteS);
      BHoeheF  := round(BBreiteF/Ratio);
      KonfigZeileS[118] := 'Save Image Width (Stereo)  :,'+BBreiteS;
      MaskEditBHoehe.Text := IntToStr(BHoeheF);
      assignFile(Datei,DirectS+'\'+'Fabric.ini');
      rewrite (Datei);
      for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
      closefile (Datei);
    end;
  end;
end;

procedure TForm41.MaskEditBHoeheKeyPress(Sender: TObject; var Key: Char);
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
      BHoeheF  := StrToInt (BHoeheS);
      BBreiteF := round(BHoeheF*Ratio);
      KonfigZeileS[118] := 'Save Image Width (Stereo)  :,'+IntToStr(BBreiteF);
      MaskEditBBreite.Text := IntToStr(BBreiteF);
    end;
    assignFile(Datei,DirectS+'\'+'Fabric.ini');
    rewrite (Datei);
    for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
    closefile (Datei);
  end;
end;

procedure TForm41.CheckBoxBildClick(Sender: TObject);
begin
  PanelGroesse.Visible := false;
end;

procedure TForm41.kopieren1Click(Sender: TObject);
begin
  ClipBoard.Assign (Image1.Picture);
end;

procedure TForm41.transparentClick(Sender: TObject);
begin
  Farbe                 := clWhite;
  HTransparent          := true;
  speichernBMP.Enabled  := false;
  speichernJPG.Enabled  := false;
  speichernTIF.Enabled  := false;
  speichernWMF.Enabled  := false;
  speichernEMF.Enabled  := false;
  speichernUBMP.Enabled := false;
  speichernUJPG.Enabled := false;
  speichernUTIF.Enabled := false;
  speichernUWMF.Enabled := false;
  speichernUEMF.Enabled := false;
  ButtonStartClick(Sender);
end;

procedure TForm41.SpeedTransparentClick(Sender: TObject);
begin
  transparentClick(Sender);
end;

procedure TForm41.HFarbeClick(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  HTransparent := false;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS    := ColorToString (Farbe);
  HintFarbe := StringToColor(FarbeS);
  KonfigZeileS[3] := '  Background Colour        :,'+FarbeS;
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  speichernBMP.Enabled  := true;
  speichernJPG.Enabled  := true;
  speichernTIF.Enabled  := true;
  speichernWMF.Enabled  := true;
  speichernEMF.Enabled  := true;
  speichernUBMP.Enabled := true;
  speichernUJPG.Enabled := true;
  speichernUTIF.Enabled := true;
  speichernUWMF.Enabled := true;
  speichernUEMF.Enabled := true;
  ButtonStartClick (Sender);
end;

procedure TForm41.SpeedHFarbeClick(Sender: TObject);
begin
  HFarbeClick(Sender);
end;

procedure TForm41.speichernBMPClick(Sender: TObject);
var
  Rahmen : TRect;
begin
  Bitmap        := TBitmap.Create;
  Bitmap.Width  := BBreiteF;
  Bitmap.Height := BHoeheF;
  Rahmen        := Rect(0,0,Bitmap.Width,Bitmap.Height);
  Bitmap.Canvas.Stretchdraw(Rahmen,Image1.Picture.Graphic);
  try
    if CurrentFile <> '' then Bitmap.SaveToFile(CurrentFile)
    else speichernUBMPClick(Sender);
  finally
    Bitmap.Free;
    Bitmap   := nil;
  end;
end;

procedure TForm41.SpeedBMPSpeichernClick(Sender: TObject);
begin
  speichernBMPClick(Sender);
end;

procedure TForm41.speichernGIFClick(Sender: TObject);
var
  Bitmap  : TBitmap;
  GifBild : TGifImage;
  Rahmen  : TRect;
begin
  Bitmap        := TBitmap.Create;
  GifBild       := TGIFImage.Create;
  Bitmap.Width  := BBreiteF;
  Bitmap.Height := BHoeheF;
  Rahmen        := Rect(0,0,Bitmap.Width,Bitmap.Height);
  Bitmap.Canvas.Stretchdraw(Rahmen,Image1.Picture.Graphic);
  if HTransparent then
  begin
    Bitmap.Transparent := True;
    Bitmap.TransParentColor := HintFarbe;
  end
  else Bitmap.Transparent := false;
  try
    GifBild.Assign(Bitmap);
    if CurrentFile <> '' then GifBild.SaveToFile(CurrentFile)
    else speichernUGIFClick(Sender);
  finally
    Bitmap.Free;
    GifBild.Free;
  end;
end;

procedure TForm41.SpeedGIFClick(Sender: TObject);
begin
  speichernGIFClick(Sender);
end;

procedure TForm41.speichernTIFClick(Sender: TObject);
var
  Rahmen : TRect;
begin
  Bitmap        := TBitmap.Create;
  Bitmap.Width  := BBreiteF;
  Bitmap.Height := BHoeheF;
  Rahmen        := Rect(0,0,Bitmap.Width,Bitmap.Height);
  Bitmap.Canvas.Stretchdraw(Rahmen,Image1.Picture.Graphic);
  try
    if CurrentFile <> '' then
      WriteTiffToFile(CurrentFile,Bitmap)
    else speichernUTIFClick(Sender);
  finally
    Bitmap.Free;
    Bitmap := nil;
  end;
end;

procedure TForm41.SpeedTIFClick(Sender: TObject);
begin
  speichernTIFClick(Sender);
end;

procedure TForm41.speichernJPGClick(Sender: TObject);
var
  DateiJ   : string;
  Rahmen   : TRect;
  Bild     : TBitmap;
  JpgDatei : TjpegImage;
begin
  JpgDatei    := TJpegImage.Create;
  Bild        := TBitmap.Create;
  Bild.Width  := BBreiteF;
  Bild.Height := BHoeheF;
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

procedure TForm41.SpeedJPGClick(Sender: TObject);
begin
  speichernJPGClick(Sender);
end;

procedure TForm41.speichernWMFClick(Sender: TObject);
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
    Bitmap.Width  := BBreiteF;
    Bitmap.Height := BHoeheF;
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
    if CurrentFile <> '' then MetaFile.SaveToFile(CurrentFile)
    else SpeichernUWMFClick(Sender);
  finally
    Metafile.Free;
  end;
end;

procedure TForm41.SpeedWMFClick(Sender: TObject);
begin
  speichernWMFClick(Sender);
end;

procedure TForm41.speichernEMFClick(Sender: TObject);
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
      Metafile.Height := BHoeheF;
      Metafile.Width  := BBreiteF;
      MetaCanvas := TMetafileCanvas.Create(Metafile, 0);
      try
        MetaCanvas.Draw(0, 0, Bitmap);
      finally
        MetaCanvas.Free;
      end;
    finally
      Bitmap.Free;
    end;
    if CurrentFile <> '' then MetaFile.SaveToFile(CurrentFile)
    else SpeichernUEMFClick(Sender);
  finally
    Metafile.Free;
  end;
end;

procedure TForm41.SpeedEMFClick(Sender: TObject);
begin
  speichernEMFClick(Sender);
end;

procedure TForm41.speichernPLTClick(Sender: TObject);
var
  i      : byte;
  Datei  : Textfile;
begin
  GroupBoxPlotten.Visible   := true;
  PanelPlotFile.Visible     := true;
  GeraetS                   := 'HPGL';
  KonfigZeileS[53] := 'Paper Plot                 :,HPGL';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  LabelPlotter.Caption    := GeraetS;
end;

procedure TForm41.speichernDXFClick(Sender: TObject);
var
  i      : byte;
  Datei  : Textfile;
begin
  GroupBoxPlotten.Visible   := true;
  PanelPlotFile.Visible     := true;
  GeraetS                   := 'DXF';
  KonfigZeileS[53] := 'Paper Plot                 :,DXF';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  LabelPlotter.Caption    := GeraetS;
end;

procedure TForm41.speichernUBMPClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := GraphicExtension(TBitmap);
  SaveDialog1.Filter     := GraphicFilter(TBitmap);
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    SpeichernBMPClick(Sender);
  end;
end;

procedure TForm41.speichernUGIFClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := GraphicExtension(TGIFImage);
  SaveDialog1.Filter     := GraphicFilter(TGIFImage);
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    SpeichernGIFClick(Sender);
  end;
end;

procedure TForm41.speichernUTIFClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := 'Tagged image file format (*.tif)|*.tif';
  SaveDialog1.Filter     := 'Tagged image file format (*.tif)|*.tif';;
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    SpeichernTIFClick(Sender);
  end;
end;

procedure TForm41.speichernUJPGClick(Sender: TObject);
begin
  SavePictureDialog1.DefaultExt := GraphicExtension(TJpegImage);
  SavePictureDialog1.Filter     := GraphicFilter(TJpegImage);
  if SavePictureDialog1.Execute then
  begin
    CurrentFile := SavePictureDialog1.Filename;
    SpeichernJPGClick(Sender);
  end;
end;

procedure TForm41.speichernUWMFClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := GraphicExtension(TMetaFile);
  SaveDialog1.Filter     := GraphicFilter(TMetaFile);
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    speichernWMFClick(Sender);
  end;
end;

procedure TForm41.speichernUEMFClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := GraphicExtension(TMetaFile);
  SaveDialog1.Filter     := GraphicFilter(TMetaFile);
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    speichernEMFClick(Sender);
  end;
end;

procedure TForm41.ausZwischenablageholen1Click(Sender: TObject);
begin
  HolZwischen := true;
end;

procedure TForm41.ausDateiholen1Click(Sender: TObject);
begin
  FarbeKoordinaten1.Enabled := false;
  FarbedesDiagramms1.Enabled:= false;
  Hintergrund.Enabled       := false;
  if OpenDialog1.Execute then CurrentFile := OpenDialog1.FileName;
  HolDatei := true;
  ButtonStartClick(Sender);
end;

procedure TForm41.SpeedausDateiClick(Sender: TObject);
begin
  ausDateiHolen1Click(Sender);
end;

procedure TForm41.HPPlotter1Click(Sender: TObject);
var
  i      : byte;
  Datei  : Textfile;
begin
  DiagrFarbe := clWhite;
  ButtonStartClick(Sender);
  PrinterSetupDialog1.execute;
  GeraetS          := 'Plotter';
  KonfigZeileS[53] := 'Paper Plot                 :,Plotter';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  GroupBoxPlotten.Visible := true;
  PanelPlotFile.Visible   := true;
  LabelPlotter.Caption    := GeraetS;
end;

procedure TForm41.SpeedPlotterClick(Sender: TObject);
begin
  HPPlotter1Click(Sender);
end;

procedure TForm41.SpeedPLTClick(Sender: TObject);
begin
  speichernPLTClick(Sender);
end;

procedure TForm41.SpeedDXFClick(Sender: TObject);
begin
  speichernDXFClick(Sender);
end;

procedure TForm41.FarbeKoordinaten1Click(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS       := ColorToString (Farbe);
  KoordinFarbe := StringToColor(FarbeS);
  KonfigZeileS[7] := '  Colour of Data Points    :,'+FarbeS;
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick (Sender);
end;

procedure TForm41.FarbedesDiagramms1Click(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS     := ColorToString (Farbe);
  DiagrFarbe := StringToColor(FarbeS);
  KonfigZeileS[6] := '  Diagram Colour           :,'+FarbeS;
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick (Sender);
end;

procedure TForm41.FarbeRahmenClick(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS      := ColorToString (Farbe);
  RahmenFarbe := StringToColor(FarbeS);
  KonfigZeileS[4] := '  Frame Colour             :,'+FarbeS;
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick (Sender);
end;

procedure TForm41.SpeedKoordinatenClick(Sender: TObject);
begin
  FarbeKoordinaten1Click(Sender);
end;

procedure TForm41.SpeedDiagrammClick(Sender: TObject);
begin
  FarbedesDiagramms1Click(Sender);
end;

procedure TForm41.SpeedRahmenClick(Sender: TObject);
begin
  FarbeRahmenClick(Sender);
end;

procedure TForm41.MaskEditLaengeKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(13) then MaskEditX.SetFocus;
end;

procedure TForm41.MaskEditXKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(13) then MaskEditY.SetFocus;
end;

procedure TForm41.PloterstellenClick(Sender: TObject);
var
  LaengeS   : string;
  XKoordS   : string;
  YKoordS   : string;
  Co        : integer;
  PlotS     : string[8];
  Lmax      : real;
  LmaxS     : string[15];
  Xmax      : real;
  Ymax      : real;
  Laenge    : real;
  XAnfang   : real;
  YAnfang   : real;
  Teile     : byte;
  XBeginn   : real;
  YBeginn   : real;
  XanNeu    : real;
  YanNeu    : real;
  Tick      : real;
  RichtungS : string[6];
  i         : word;
  XProzent  : real;
  YProzent  : real;
  L         : real;
  XS, YS    : string;
  WS, HS    : string;
  X, Y      : word;
  Groesse   : word;
  DiagNameS : string;
  Datei     : TextFile;
  Typ       : TMsgDlgType;
begin
  LaengeS  := MaskEditLaenge.Text;
  XKoordS  := MaskEditX.Text;
  YKoordS  := MaskEditY.Text;
  KonfigZeileS[67] := 'Length of Coordinates [mm] :'+','+LaengeS;
  KonfigZeileS[68] := 'X-Coordin. of Origine [mm] :'+','+XKoordS;
  KonfigZeileS[69] := 'Y-Coordin. of Origine [mm] :'+','+YKoordS;
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  val (LaengeS, Laenge, Co);
  if GeraetS <> 'Plotter' then
  begin
    Typ   := mtError;
    LmaxS := '(max. 200 mm)';
    Lmax  := 200;
    if Laenge > Lmax then
    begin
     if DlgMessage (Typ, Tx(37), Tx(402),3) = 4 then
      begin
        MaskEditLaenge.Clear;
        MaskEditLaenge.SetFocus;
        exit;
      end;  
    end;
  end;
  {Beginn des Plottens}
  if GeraetS = 'Plotter' then
    DiagNameS := InputBox(Tx(439),Tx(887),' ');
  val (XKoordS, XAnfang, Co);
  val (YKoordS, YAnfang, Co);
  val (LaengeS, Laenge, Co);
  XAnfang := XAnfang/10;
  YAnfang := YAnfang/10;
  Laenge  := Laenge/10;
  if GeraetS <> 'Plotter' then
  begin
    Plotter (Canvas, SaveDialog1);
    Farben (Canvas, KoordinFarbe);
    Teile := 10;
    XBeginn := XAnfang;
    YBeginn := YAnfang;
    XanNeu  := XAnfang + Laenge;
    YanNeu  := YAnfang + Laenge;
    Hpstrich (Canvas, XBeginn,YBeginn,Laenge,0);
    Hpstrich (Canvas, XanNeu,YBeginn,Laenge,90);
    Hpstrich (Canvas, XanNeu,YanNeu,Laenge,180);
    Hpstrich (Canvas, XBeginn,YanNeu,Laenge,270);
    Tick      := Laenge / 20;
    RichtungS := 'DI1,0';
    L := Laenge;
    Xskallin (Canvas, 10,Xbeginn,Ybeginn,Laenge,10,Tick);
    Xhpschrift (Canvas, 10,RichtungS,Xbeginn,Ybeginn,L,100,
                Teile);
    Yskallin (Canvas, 10,Xbeginn,Ybeginn,Laenge,10,Tick);
    Yhpschrift (Canvas,10,RichtungS,Xbeginn,Ybeginn,L,100,
                Teile);
    Xbeginn := Xanfang;
    Ybeginn := Yanfang;
    Farben (Canvas, DatenFarbe);
    for i := 1 to ZahlGlob do
    begin
      XProzent := Zylindrizitaet[i] * Laenge / 100;
      YProzent := Regelung[i] * Laenge / 100;
      Farben (Canvas, OFarbe);
      Hpsymbol (Canvas, Xbeginn,Ybeginn,Xprozent,
                Yprozent, Laenge, Symbol[i]);
    end;
    DecimalSeparator := '.';
    if GeraetS = 'HPGL' then
    begin
      XS := IntToStr(round(Xbeginn*400));
      YS := IntToStr(round((Ybeginn-2*Tick)*400));
      WS := FloatToStr(Laenge/20);
      HS := FloatToStr(Laenge/15);
      Farben (Canvas, KoordinFarbe);
      Plotte ('Si'+Ws+','+HS);
      Plotte ('PU;PA'+XS+','+YS+'LB'+DiagNameS+Chr(3));
    end;
    if GeraetS = 'DXF' then
    begin
      Farben (Canvas, KoordinFarbe);
      Dxftext (Xbeginn,Ybeginn-2*Tick,Laenge/3,DiagNameS,'0.00');
    end;
    XS := Inttostr(round((Xbeginn+Laenge/2-5*Tick) * 400));
    YS := IntToStr(round((Ybeginn+Laenge/2) * 400));
    WS := FloatToStr(Laenge/30);
    HS := FloatToStr(Laenge/20);
    Hpende (XS, Ys, WS, HS);
  end;
  if GeraetS = 'Plotter' then
  begin
    SetMapMode (Printer.Handle, MM_Himetric);
    with Printer do
    begin
      BeginDoc;
      Plotter (Canvas, SaveDialog1);
      Farben (Canvas, KoordinFarbe);
      Teile := 10;
      XBeginn := XAnfang;
      YBeginn := YAnfang;
      XanNeu  := XAnfang + Laenge;
      YanNeu  := YAnfang + Laenge;
      Hpstrich (Canvas, XBeginn,YBeginn,Laenge,0);
      Hpstrich (Canvas, XanNeu,YBeginn,Laenge,90);
      Hpstrich (Canvas, XanNeu,YanNeu,Laenge,180);
      Hpstrich (Canvas, XBeginn,YanNeu,Laenge,270);
      Tick      := Laenge/ 20;
      RichtungS := 'DI1,0';
      L := Laenge;
      Farben (Canvas, KoordinFarbe);
      Canvas.Font.Size := round(Tick);
      Xskallin (Canvas, 10,Xbeginn,Ybeginn,L,10,Tick);
      Xhpschrift (Canvas, 10,RichtungS,Xbeginn,Ybeginn+L-Tick/2,L,
                  100,Teile);
      Yskallin (Canvas, 10,Xbeginn-Tick/4,Ybeginn,L,10,Tick);
      Yhpschrift (Canvas,10,RichtungS,Xbeginn-Tick/5,Ybeginn,L,100,
                  Teile);
      X := round(Xbeginn*100*Faktor*DFak);
      Y := round((Ybeginn+L+2*Tick)*100*Faktor*DFak);
      Canvas.Font.Size := 14;
      Canvas.Textout (X, Y, DiagNameS);
      Xbeginn := Xanfang;
      Ybeginn := Yanfang;
      Farben (Canvas, DatenFarbe);
      for i := 1 to ZahlGlob do
      begin
        XProzent := Zylindrizitaet[i] * Laenge / 100;
        YProzent := Regelung[i] * Laenge / 100;
        Hpsymbol (Canvas, Xbeginn,Ybeginn,Xprozent,
                  Yprozent, Laenge, Symbol[i]);
      end;
      if DemoB then
      begin
        X := round((Xbeginn+L/2)*100*Faktor-300);
        Y := round((Ybeginn+L/2)*100*Faktor);
        Groesse := round(L);
        Canvas.Font.Size   := Groesse;
        Canvas.Brush.Color := clWhite;
        Canvas.Font.Color  := clBlack;
        Canvas.Textout (X, Y,'Demo-Version');
      end;
      EndDoc;
    end;
  end;
  showmessage(Tx(435));
  GroupBoxPlotten.Visible := false;
end;

procedure TForm41.DruckereinrichtenClick(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TForm41.SpeedEinrichtenClick(Sender: TObject);
begin
  DruckerEinrichtenClick(Sender);
end;

procedure TForm41.drucken1Click(Sender: TObject);
var
  SchriftS : string[5];
  i        : byte;
begin
  Paneldrucken.Visible      := true;
  ButtonDrucken.Visible     := true;
  ButtonAbbrechen.Visible   := true;
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
  ButtonDrucken.Enabled        := false;
  i                            := 3;
  repeat
    i := i + 1;
    str(i, SchriftS);
    ListBoxSchrift.Items.Add (SchriftS);
  until i = 40;
end;

procedure TForm41.SpeedDruckenClick(Sender: TObject);
begin
  drucken1Click(Sender);
end;

procedure TForm41.MaskEditUnterschriftKeyPress(Sender: TObject;
var
  Key: Char);
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

procedure TForm41.RadioButtonLinksClick(Sender: TObject);
begin
  BuendigS := 'Links';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    ButtonDrucken.Enabled := true;
end;

procedure TForm41.RadioButtonZentriertClick(Sender: TObject);
begin
  BuendigS := 'Zentriert';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    ButtonDrucken.Enabled := true;
end;

procedure TForm41.RadioButtonRechtsClick(Sender: TObject);
begin
  BuendigS := 'Rechts';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    ButtonDrucken.Enabled := true;
end;

procedure TForm41.ListBoxSchriftClick(Sender: TObject);
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

procedure TForm41.ButtonDruckenClick(Sender: TObject);
var
  XKoordS : string;
  YKoordS : string;
  RadiusS : string;
  Bitmap  : TBitmap;
  Fenster : TRect;
  Laenge  : word;
begin
  Paneldrucken.Visible    := false;
  ButtonDrucken.Visible   := false;
  ButtonAbbrechen.Visible := false;
  RadiusS := MaskEditRdrucken.Text;
  XKoordS := MaskEditXdrucken.Text;
  YKoordS := MaskEditYdrucken.Text;
  Laenge  := StrToInt(RadiusS) div 2;
  RadiusS := IntToStr(Laenge);
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

procedure TForm41.ButtonAbbrechenClick(Sender: TObject);
begin
  Paneldrucken.Visible    := false;
  ButtonDrucken.Visible   := false;
  ButtonAbbrechen.Visible := false;
end;

procedure TForm41.Hilfe1Click(Sender: TObject);
var
  DateiS : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\r-g-4o1g.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\RG-diagram-plot.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm41.SpeedHilfeClick(Sender: TObject);
begin
  Hilfe1Click(Sender);
end;

procedure TForm41.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'R-G-Diagramm.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'R-G_diagram.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm41.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm41.SpeedFarbeClick(Sender: TObject);
begin
  Farbe1Click(Sender);
end;

procedure TForm41.SpeedKopierenClick(Sender: TObject);
begin
  kopieren1Click(Sender);
end;

procedure TForm41.SpeedZwischenablageClick(Sender: TObject);
begin
  AusZwischenablageHolen1Click(Sender);
end;

procedure TForm41.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm41.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

end.
