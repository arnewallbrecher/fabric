unit Unit51;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, ExtCtrls, Menus, StdCtrls, ClipBrd,
  Globvar, Basic, Fourier, Mask, HPPlot, Texte, ComCtrls,
  Buttons, Printers, Drucken, Shellapi, Standard, GifImage, Bmp2Tiff,
  Jpeg, ExtDlgs, ehsHelpRouter;

type
  TForm51 = class(TForm)
    Image1: TImage;

    Panel1         : TPanel;
    Labelausgewaehlte: TLabel;
    ListBoxDateien : TListBox;
    LabelAnzahl    : TLabel;
    Label00000     : TLabel;

    Panel2         : TPanel;
    LabelTabelle   : TLabel;
    LabelB         : TLabel;
    ListBoxTabelle : TListBox;

    GroupBoxplotten: TGroupBox;

      Panel4         : TPanel;
    LabelKante: TLabel;
    MaskEditKante: TMaskEdit;

      Panel5          : TPanel;
      LabelNullpunkt1 : TLabel;
      LabelNullpunkt2 : TLabel;
      LabelX          : TLabel;
      MaskEditX       : TMaskEdit;
      LabelY          : TLabel;
      MaskEditY       : TMaskEdit;

    ButtonStart   : TButton;
    Buttonzurueck : TButton;
    Buttonbeenden : TButton;

    MainMenu1: TMainMenu;

    Hilfe1      : TMenuItem;
    SaveDialog1 : TSaveDialog;
    OpenDialog1 : TOpenDialog;

    {Bildschirm}
    Farbe1   : TMenuItem;

    Grafik1                    : TMenuItem;
    kopieren1                  : TMenuItem;
    speichern1                 : TMenuItem;
    speichernunter1            : TMenuItem;
    HPPlotter1                 : TMenuItem;
    Hintergrund: TMenuItem;

    FarbeKoordinaten1          : TMenuItem;

    FarbeDiagramm1   : TMenuItem;

    FarbeRahmen     : TMenuItem;
    PanelSpeed: TPanel;
      SpeedHilfe: TSpeedButton;
      SpeedDrucken: TSpeedButton;
    PanelPlotFile: TPanel;
      LabelGeraet  : TLabel;
 
    Drucker1              : TMenuItem;
      Druckereinrichten   : TMenuItem;
      drucken1            : TMenuItem;
      PrinterSetupDialog1 : TPrinterSetupDialog;
      PrintDialog1        : TPrintDialog;

    PanelDrucken: TPanel;
    GroupBoxDrucken: TGroupBox;
      Panel8             : TPanel;
        LabelRdrucken    : TLabel;
        MaskEditRdrucken : TMaskEdit;
      Panel9             : TPanel;
        LabelMitte       : TLabel;
        MaskEditXdrucken : TMaskEdit;
        LabelXdrucken    : TLabel;
        LabelYdrucken    : TLabel;
        MaskEditYdrucken : TMaskEdit;
      Panel10                : TPanel;
        LabelUnterschrift    : TLabel;
        MaskEditUnterschrift : TMaskEdit;
        LabelSchrift         : TLabel;
        ListBoxSchrift       : TListBox;
        RadioGroup           : TRadioGroup;
        RadioButtonLinks     : TRadioButton;
        RadioButtonZentriert : TRadioButton;
        RadioButtonRechts: TRadioButton;

    StatusBar: TStatusBar;
    Handbuch: TMenuItem;
    ColorDialog1: TColorDialog;
    LabelPlotter: TLabel;
    SpeedHandbuch: TSpeedButton;
    SpeedFarbe: TSpeedButton;
    SpeedKopieren: TSpeedButton;
    SpeedPlotter: TSpeedButton;
    SpeedDXF: TSpeedButton;
    SpeedPLT: TSpeedButton;
    SpeedKoordinaten: TSpeedButton;
    SpeedDiagramm: TSpeedButton;
    SpeedRahmen: TSpeedButton;
    Literatur: TMenuItem;
    SpeedLiteratur: TSpeedButton;
    DSpeichern: TMenuItem;
    speichern: TMenuItem;
    speichernunter: TMenuItem;
    SpeedDspeichern: TSpeedButton;
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
    FarbeGrund: TMenuItem;
    SpeedBGroesse: TSpeedButton;
    SpeedTransparent: TSpeedButton;
    SpeedHFarbe: TSpeedButton;
    SpeedBMPSpeichern: TSpeedButton;
    SpeedGIF: TSpeedButton;
    SpeedTIF: TSpeedButton;
    SpeedJPG: TSpeedButton;
    SpeedWMF: TSpeedButton;
    SpeedEMF: TSpeedButton;
    speichernPLT: TMenuItem;
    speichernDXF: TMenuItem;
    Ploterstellen: TButton;
    ButtonDrucken: TButton;
    ButtonAbbrechen: TButton;

    procedure ShowHint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);

    {Farbe Punkte}
    procedure Farbe1Click(Sender: TObject);

    {Grafik}
    procedure kopieren1Click(Sender: TObject);
    procedure Hilfe1Click(Sender: TObject);
    procedure ButtonStartClick(Sender: TObject);
    procedure ButtonzurueckClick(Sender: TObject);
    procedure ButtonbeendenClick(Sender: TObject);

    {Farbe Koordinaten}
    procedure FarbeKoordinaten1Click(Sender: TObject);
    {Farbe Diagramm}
    procedure FarbeDiagramm1Click(Sender: TObject);
    {Farbe Rahmen}
    procedure FarbeRahmenClick(Sender: TObject);

    {Drucken}
    procedure DruckereinrichtenClick(Sender: TObject);
    procedure drucken1Click(Sender: TObject);

    {Bildschirmplot}
    procedure MaskEditUnterschriftKeyPress(Sender: TObject; var Key: Char);
    procedure RadioButtonLinksClick(Sender: TObject);
    procedure RadioButtonZentriertClick(Sender: TObject);
    procedure RadioButtonRechtsClick(Sender: TObject);
    procedure ListBoxSchriftClick(Sender: TObject);
    procedure SpeedHilfeClick(Sender: TObject);
    procedure SpeedDruckenClick(Sender: TObject);
    procedure HandbuchClick(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure SpeedFarbeClick(Sender: TObject);
    procedure SpeedKopierenClick(Sender: TObject);
    procedure HPPlotter1Click(Sender: TObject);
    procedure SpeedPlotterClick(Sender: TObject);
    procedure SpeedPLTClick(Sender: TObject);
    procedure SpeedDXFClick(Sender: TObject);
    procedure SpeedKoordinatenClick(Sender: TObject);
    procedure SpeedDiagrammClick(Sender: TObject);
    procedure SpeedRahmenClick(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
    procedure SpeedLiteraturClick(Sender: TObject);
    procedure speichernClick(Sender: TObject);
    procedure speichernunterClick(Sender: TObject);
    procedure SpeedDspeichernClick(Sender: TObject);
    procedure SpeedEinrichtenClick(Sender: TObject);
    procedure MaskEditBBreiteKeyPress(Sender: TObject; var Key: Char);
    procedure BGroesseClick(Sender: TObject);
    procedure MaskEditBHoeheKeyPress(Sender: TObject; var Key: Char);
    procedure CheckBoxBildClick(Sender: TObject);
    procedure transparentClick(Sender: TObject);
    procedure HFarbeClick(Sender: TObject);
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
    procedure FarbeGrundClick(Sender: TObject);
    procedure SpeedBGroesseClick(Sender: TObject);
    procedure SpeedTransparentClick(Sender: TObject);
    procedure SpeedHFarbeClick(Sender: TObject);
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
  Form51        : TForm51;
  ExtensionS    : string;
  Farbe         : TColor;
  Bitmap        : TBitmap;
  HolDatei      : boolean;
  HolZwischen   : boolean;
  CurrentFile   : string;
  PGedrueckt    : array[0..4] of boolean;
  PlotDateiS    : string;
  KFarbe        : byte;
  Schrift      : byte;
  BuendigS     : string;
  Gedrueckt    : array [1..3] of boolean;
  TextS        : string;
  Ratio        : real;
  BHoeheF      : word;

implementation
uses Unit48, Unit49, Unit50;
{$R *.DFM}

procedure TForm51.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm51.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm51.FormActivate(Sender: TObject);
var
  i : byte;
begin
  Left   := 4;
  Top    := 0;
  Width  := 1040;
  Height := 750;
  setlength (X1Fou, MaxDaten);
  setlength (X2Fou, MaxDaten);
  setlength (X3Fou, MaxDaten);
  setlength (Y1Fou, MaxDaten);
  setlength (Y2Fou, MaxDaten);
  setlength (Y3Fou, MaxDaten);
  setlength (Vergenz, MaxDaten);
  setlength (B1Fou, MaxDaten);
  setlength (B3Fou, MaxDaten);
  setlength (B5Fou, MaxDaten);
  setlength (Symbol, MaxDaten);
  WindowState                      := wsNormal;
  ListBoxDateien.Hint              := Hilf(82);
  Labelausgewaehlte.Hint           := Hilf(82);
  LabelAnzahl.Hint                 := Hilf(36);
  Label00000.Hint                  := Hilf(36);
  LabelTabelle.Hint                := Hilf(142);
  LabelB.Hint                      := Hilf(142);
  ListBoxTabelle.Hint              := Hilf(142);
  GroupBoxplotten.Hint             := Hilf(58) + Hilf(59);
  Panel4.Hint                      := Hilf(143);
  MaskEditKante.Hint               := Hilf(144);
  Ploterstellen.Hint               := Hilf(60);
  Panel5.Hint                      := Hilf(145);
  MaskEditX.Hint                   := Hilf(117);
  MaskEditY.Hint                   := Hilf(118);
  PanelPlotFile.Hint               := Hilf(65);
  Ploterstellen.Hint               := Hilf(65);
  ButtonStart.Hint                 := Hilf(317);
  Buttonzurueck.Hint               := Hilf(85);
  Buttonbeenden.Hint               := Hilf(30);
  Image1.Hint                      := Hilf(316);
  SpeedHandbuch.Hint               := Hilf(274);
  SpeedFarbe.Hint                  := Hilf(365);
  SpeedKopieren.Hint               := Hilf(262);
  SpeedPlotter.Hint                := Hilf(437);
  SpeedPLT.Hint                    := Hilf(438);
  SpeedDXF.Hint                    := Hilf(439);
  SpeedKoordinaten.Hint            := Hilf(444);
  SpeedDiagramm.Hint               := Hilf(441);
  SpeedRahmen.Hint                 := Hilf(442);
  SpeedDspeichern.Hint             := Hilf(204);
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
  Form51.Caption                   := Tx(772);   {Fabric7: Fourier-Analyse}
  Farbe1.Caption                   := Tx(642);   {&Farbe}
  Dspeichern.Caption               := Tx(86);
  speichern.Caption                := Tx(87);
  speichernUnter.Caption           := Tx(88);
  speichern1.Caption               := Tx(87);
  speichernUnter1.Caption          := Tx(88);
  Grafik1.Caption                  := Tx(281);
  kopieren1.Caption                := Tx(282);
  HPPlotter1.Caption               := Tx(288);
  FarbeKoordinaten1.Caption        := Tx(729);
  Hintergrund.Caption              := Tx(1453);
  HFarbe.Caption                   := Tx(275);
  FarbeDiagramm1.Caption           := Tx(860);
  FarbeGrund.Caption               := TX(1454);
  Hilfe1.Caption                   := Tx(162)+' (F1)';
  Labelausgewaehlte.Caption        := Tx(136);
  LabelAnzahl.Caption              := Tx(222);
  GroupBoxPlotten.Caption          := '';
  Ploterstellen.Caption            := Tx(298);   {Plot-Einstellungen ok?}
  LabelKante.Caption               := Tx(773);   {KantenLänge [mm]:}
  LabelNullpunkt1.Caption          := Tx(1133);
  LabelNullpunkt2.Caption          := Tx(813);   {Nullpunkt}
  LabelX.Caption                   := Tx(775);   {X:}
  LabelY.Caption                   := Tx(776);   {Y:}
  LabelTabelle.Caption             := Tx(1444);
  Buttonzurueck.Caption            := Tx(30);
  Buttonbeenden.Caption            := Tx(53);
  Labelausgewaehlte.Enabled   := false;
  LabelAnzahl.Enabled         := false;
  Label00000.Caption          := '';
  LabelTabelle.Enabled        := false;
  LabelB.Enabled              := false;
  Image1.Enabled              := true;
  HolZwischen                 := false;
  HolDatei                    := false;
  kopieren1.Enabled           := false;
  LabelKante.Enabled          := false;
  LabelNullpunkt1.Enabled     := false;
  LabelNullpunkt2.Enabled     := false;
  LabelX.Enabled              := false;
  LabelY.Enabled              := false;
  MaskEditKante.EditMask    := '999;0; ';
  MaskEditX.EditMask        := '999;0; ';
  MaskEditY.EditMask        := '999;0; ';
  DecimalSeparator            := '.';
  MaskEditKante.Text          := FloatToStr(Kante);
  MaskEditX.Text              := FloatToStr(XAnfang);
  MaskEditY.Text              := FloatToStr(YAnfang);
  MaskEditKante.Enabled       := false;
  MaskEditX.Enabled           := false;
  MaskEditY.Enabled           := false;
  Farbe1.Enabled              := false;
  Grafik1.Enabled             := false;
  Paneldrucken.Visible        := false;
  Drucker1.Caption            := Tx(92);
  Druckereinrichten.Caption   := Tx(94);
  drucken1.Caption            := Tx(93);
  FarbeRahmen.Caption         := Tx(892);
  SpeedDrucken.Enabled        := false;
  SpeedHilfe.Hint             := Hilf(210);
  SpeedDrucken.Hint           := Hilf(309);
  for i := 1 to 3 do Gedrueckt[i] := false;
  LabelGeraet.Caption     := Tx(850);
  GroupBoxPlotten.Visible := false;
  PanelPlotFile.Visible   := false;
  Handbuch.Caption        := Tx(1055)+' (F2)';
  Literatur.Caption       := Tx(1183)+' (F5)';
  SpeedLiteratur.Hint     := Hilf(462);
  PanelSpeed.Visible      := false;
  MaskEditBBreite.EditMask  := '99999;0; ';
  MaskEditBHoehe.EditMask   := '99999;0; ';
  LabelBBreite.Caption      := Tx(1440);
  LabelBHoehe.Caption       := Tx(1441);
  BGroesse.Caption          := Tx(1439);
  PanelGroesse.Visible      := false;
  Ratio := Image1.Width/Image1.Height;
end;

procedure TForm51.ButtonStartClick(Sender: TObject);
var
  i        : word;
  B1S, B3S : string[6];
  B5S, nS  : string[6];
  ZeileS   : string[40];
  Xt1, Yt1 : word;
  ProS     : string[20];
begin
  BHoeheF := round(BBreiteFou/Ratio);
  PanelSpeed.Visible := true;
  ListBoxTabelle.Clear;
  ListBoxDateien.Clear;
  for i := 0 to DateiZahl do
    ListboxDateien.Items.Add (DateiNameS[i]);
  ProS                    := GeraetS;
  Farbe1.Enabled          := true;
  Grafik1.Enabled         := true;
  LabelKante.Enabled      := true;
  LabelNullpunkt1.Enabled := true;
  LabelNullpunkt2.Enabled := true;
  LabelX.Enabled          := true;
  LabelY.Enabled          := true;
  MaskEditKante.Enabled   := true;
  MaskEditX.Enabled       := true;
  MaskEditY.Enabled       := true;
  Bo := Pi/180;
  ExtensionS := RightS(DateinameS[1],3);
  kopieren1.Enabled           := true;
  Labelausgewaehlte.Enabled   := true;
  LabelAnzahl.Enabled         := true;
  LabelTabelle.Enabled        := true;
  LabelB.Enabled              := true;
  Label00000.Caption          := IntToStr (ZahlGlob);
  Grafik1.Enabled             := true;
  GroupBoxPlotten.Caption     := Tx(297);
  FBerechnen (ZahlGlob, X1Fou ,X2Fou, X3Fou, Y1Fou, Y2Fou,
              Y3Fou, Vergenz, B1Fou, B3Fou, B5Fou);
  for i := 1 to ZahlGlob do
  begin
    str(B1Fou[i]:6:2, B1S);
    str(B3Fou[i]:6:2, B3S);
    str(B5Fou[i]:6:2, B5S);
    ZeileS :=' '+B1S+'    '+B3S+'   '+B5S;
    ListBoxTabelle.Items.Add (ZeileS);
  end;
  Bitmap                := Tbitmap.Create;
  Bitmap.Width          := Image1.Width;
  Bitmap.Height         := Image1.Height;
  Image1.Picture.Graphic:= Bitmap;
  with Image1 do
  begin
    Xmitte := ClientWidth div 2;
    Ymitte := ClientHeight div 2;
    Breite := Image1.Width;
    Hoehe  := Image1.Height;
  end;
  FDiagramm (Image1.Canvas);
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
    else MessageDlg(Tx(306), mtInformation, [mbOK],0); {Die Zwischenablage..}
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
        showMessage(Tx(307));                      {Datei nicht gefunden}
      end;
    end;
  end;
  with Image1.Canvas do
  begin
    Pen.Color   := DatenFarbe;
    Brush.Color := DatenFarbe;
    Font.Color  := clWhite;
    for i := 1 to ZahlGlob do
    begin
      if (abs (B3Fou[i]) <= 1.1) and (B1Fou[i] <= 15)
      and (B1Fou[i] >=0) then
      begin
        Xt1 := round (XMitte+(XMitte-0.1*XMitte)*B3Fou[i]/1.1);
        Yt1 := round (YMitte/10+(2*YMitte-0.2*YMitte)*B1Fou[i]/15);
        Ellipse (Xt1-13,Yt1-13,Xt1+13,Yt1+13);
        str(i,nS);
        Textout (Xt1-length(nS)*3,Yt1-9,nS); {Nummern der Daten}
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
      Textout(Width div 2-250,Height-300,'Demo-Version');
    end;
  end;
  SpeedDrucken.Enabled := true;
end;

procedure TForm51.ButtonzurueckClick(Sender: TObject);
begin
  ButtonStart.Enabled := true;
  with Image1.Canvas do
  begin
    Pen.Color := clSilver;
    Brush.Color := clSilver;
    Rectangle (0,0,Image1.Width,Image1.Height);
    ListboxDateien.Clear;
  end;
  X1Fou   := Nil;
  X2Fou   := Nil;
  X3Fou   := Nil;
  Y1Fou   := Nil;
  Y2Fou   := Nil;
  Y3Fou   := Nil;
  Vergenz := Nil;
  B1Fou   := Nil;
  B3Fou   := Nil;
  B5Fou   := Nil;
  Form51.Close;
end;

procedure TForm51.ButtonbeendenClick(Sender: TObject);
begin
  with Image1.Canvas do
  begin
    Pen.Color := clSilver;
    Brush.Color := clSilver;
    Rectangle (0,0,Image1.Width,Image1.Height);
    ListboxDateien.Clear;
  end;
  X1Fou   := Nil;
  X2Fou   := Nil;
  X3Fou   := Nil;
  Y1Fou   := Nil;
  Y2Fou   := Nil;
  Y3Fou   := Nil;
  Vergenz := Nil;
  B1Fou   := Nil;
  B3Fou   := Nil;
  B5Fou   := Nil;
  Form51.Close;
  Form50.Close;
  Form49.Close;
  Form48.Close;
  SetCurrentDir(DirectS);
end;

procedure TForm51.Farbe1Click(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  Farbe := clNone;
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

procedure TForm51.BGroesseClick(Sender: TObject);
begin
  PanelGroesse.Visible := true;
  CheckBoxBild.State   := cbUnchecked;
  MaskEditBBreite.Text := IntTostr(BBreiteFou);
  MaskEditBHoehe.Text  := IntToStr(BHoeheF);
end;

procedure TForm51.SpeedBGroesseClick(Sender: TObject);
begin
  BGroesseClick(Sender);
end;

procedure TForm51.MaskEditBBreiteKeyPress(Sender: TObject; var Key: Char);
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
      BBreiteFou := StrToInt (BBreiteS);
      BHoeheF    := round(BBreiteFou/Ratio);
      KonfigZeileS[119] := 'Save Image Width (Fourier) :,'+BBreiteS;
      MaskEditBHoehe.Text := IntToStr(BHoeheF);
      assignFile(Datei,DirectS+'\'+'Fabric.ini');
      rewrite (Datei);
      for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
      closefile (Datei);
    end;
  end;
end;

procedure TForm51.MaskEditBHoeheKeyPress(Sender: TObject; var Key: Char);
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
      BHoeheF    := StrToInt (BHoeheS);
      BBreiteFou := round(BHoeheF*Ratio);
      KonfigZeileS[119] := 'Save Image Width (Fourier) :,'+IntToStr(BBreiteFou);
      MaskEditBBreite.Text := IntToStr(BBreiteF);
    end;
    assignFile(Datei,DirectS+'\'+'Fabric.ini');
    rewrite (Datei);
    for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
    closefile (Datei);
  end;
end;

procedure TForm51.CheckBoxBildClick(Sender: TObject);
begin
  PanelGroesse.Visible := false;
end;

procedure TForm51.kopieren1Click(Sender: TObject);
begin
  ClipBoard.Assign (Image1.Picture);
end;

procedure TForm51.transparentClick(Sender: TObject);
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

procedure TForm51.SpeedTransparentClick(Sender: TObject);
begin
  transparentClick(Sender);
end;

procedure TForm51.HFarbeClick(Sender: TObject);
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

procedure TForm51.SpeedHFarbeClick(Sender: TObject);
begin
  HFarbeClick(Sender);
end;

procedure TForm51.speichernBMPClick(Sender: TObject);
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

procedure TForm51.SpeedBMPSpeichernClick(Sender: TObject);
begin
  speichernBMPClick(Sender);
end;

procedure TForm51.speichernGIFClick(Sender: TObject);
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

procedure TForm51.SpeedGIFClick(Sender: TObject);
begin
  speichernGIFClick(Sender);
end;

procedure TForm51.speichernTIFClick(Sender: TObject);
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

procedure TForm51.SpeedTIFClick(Sender: TObject);
begin
  speichernTIFClick(Sender);
end;

procedure TForm51.speichernJPGClick(Sender: TObject);
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

procedure TForm51.SpeedJPGClick(Sender: TObject);
begin
  speichernJPGClick(Sender);
end;

procedure TForm51.speichernWMFClick(Sender: TObject);
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

procedure TForm51.SpeedWMFClick(Sender: TObject);
begin
  speichernWMFClick(Sender);
end;

procedure TForm51.speichernEMFClick(Sender: TObject);
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

procedure TForm51.SpeedEMFClick(Sender: TObject);
begin
  speichernEMFClick(Sender);
end;

procedure TForm51.speichernPLTClick(Sender: TObject);
var
  i      : byte;
  Datei  : Textfile;
begin
  GroupBoxPlotten.Visible := true;
  PanelPlotFile.Visible   := true;
  GeraetS                 := 'HPGL';
  LabelPlotter.Caption    := GeraetS;
  KonfigZeileS[53] := 'Paper Plot                 :,HPGL';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
end;

procedure TForm51.speichernDXFClick(Sender: TObject);
var
  i      : byte;
  Datei  : Textfile;
begin
  GroupBoxPlotten.Visible := true;
  PanelPlotFile.Visible   := true;
  GeraetS                 := 'DXF';
  LabelPlotter.Caption    := GeraetS;
  KonfigZeileS[53] := 'Paper Plot                 :,DXF';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
end;

procedure TForm51.speichernUBMPClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := GraphicExtension(TBitmap);
  SaveDialog1.Filter     := GraphicFilter(TBitmap);
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    SpeichernBMPClick(Sender);
  end;
end;

procedure TForm51.speichernUGIFClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := GraphicExtension(TGIFImage);
  SaveDialog1.Filter     := GraphicFilter(TGIFImage);
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    SpeichernGIFClick(Sender);
  end;
end;

procedure TForm51.speichernUTIFClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := 'Tagged image file format (*.tif)|*.tif';
  SaveDialog1.Filter     := 'Tagged image file format (*.tif)|*.tif';;
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    SpeichernTIFClick(Sender);
  end;
end;

procedure TForm51.speichernUJPGClick(Sender: TObject);
begin
  SavePictureDialog1.DefaultExt := GraphicExtension(TJpegImage);
  SavePictureDialog1.Filter     := GraphicFilter(TJpegImage);
  if SavePictureDialog1.Execute then
  begin
    CurrentFile := SavePictureDialog1.Filename;
    SpeichernJPGClick(Sender);
  end;
end;

procedure TForm51.speichernUWMFClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := GraphicExtension(TMetaFile);
  SaveDialog1.Filter     := GraphicFilter(TMetaFile);
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    speichernWMFClick(Sender);
  end;
end;

procedure TForm51.speichernUEMFClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := GraphicExtension(TMetaFile);
  SaveDialog1.Filter     := GraphicFilter(TMetaFile);
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    speichernEMFClick(Sender);
  end;
end;

procedure TForm51.HPPlotter1Click(Sender: TObject);
var
  i      : byte;
  Datei  : Textfile;
begin
  RGFarbe := clWhite;
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

procedure TForm51.SpeedPlotterClick(Sender: TObject);
begin
  HPPlotter1Click(Sender);
end;

procedure TForm51.SpeedPLTClick(Sender: TObject);
begin
  speichernPLTClick(Sender);
end;

procedure TForm51.SpeedDXFClick(Sender: TObject);
begin
  speichernDXFClick(Sender);
end;

procedure TForm51.FarbeKoordinaten1Click(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  Farbe := clNone;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS           := ColorToString (Farbe);
  KoordinFarbe     := StringToColor(FarbeS);
  KonfigZeileS[28] := 'Colour of Coordinates      :,'+FarbeS;
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick (Sender);
end;

procedure TForm51.FarbeDiagramm1Click(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  Farbe := clNone;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS           := ColorToString (Farbe);
  RGFarbe       := StringToColor(FarbeS);
  KonfigZeileS[27] := 'Background of Diagrams     :,'+FarbeS;
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick (Sender);
end;

procedure TForm51.FarbeGrundClick(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  Farbe := clNone;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS           := ColorToString (Farbe);
  GrundFarbe       := StringToColor(FarbeS);
  KonfigZeileS[73] := 'Colour of Background      :,'+FarbeS;
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick (Sender);
end;

procedure TForm51.FarbeRahmenClick(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  Farbe := clNone;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS           := ColorToString (Farbe);
  RahmenFarbe       := StringToColor(FarbeS);
  KonfigZeileS[4] := '  Frame Colour             :,'+FarbeS;
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick (Sender);
end;

procedure TForm51.SpeedKoordinatenClick(Sender: TObject);
begin
  FarbeKoordinaten1Click(Sender);
end;

procedure TForm51.SpeedDiagrammClick(Sender: TObject);
begin
  FarbeDiagramm1Click(Sender);
end;

procedure TForm51.SpeedRahmenClick(Sender: TObject);
begin
  FarbeRahmenClick(Sender);
end;

procedure TForm51.PloterstellenClick(Sender: TObject);
var
  LaengeS   : string[4];
  XKoordS   : string[4];
  YKoordS   : string[4];
  Lmax      : real;
  LmaxS     : string[15];
  Datei     : TextFile;
  i         : byte;
  XNull     : real;
  YNull     : real;
  DiagNameS : string;
  XS, YS    : string;
  WS, HS    : string;
  X, Y      : word;
  Groesse   : word;
  Typ       : TMsgDlgType;
begin
  Bo := Pi/180;
  DecimalSeparator := '.';
  LaengeS := MaskEditKante.Text;
  XKoordS := MaskEditX.Text;
  YKoordS := MaskEditY.Text;
  KonfigZeileS[67] := 'Length of Coordinates [mm] :'+','+LaengeS;
  KonfigZeileS[68] := 'X-Coordin. of Origine [mm] :'+','+XKoordS;
  KonfigZeileS[69] := 'Y-Coordin. of Origine [mm] :'+','+YKoordS;
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  Kante := StrToFloat(LaengeS)/10;
  XNull := StrToFloat(XKoordS)/10;
  YNull := StrToFloat(YKoordS)/10;
  LmaxS := '(max. 290mm)';
  Lmax  := 29.0;
  Typ   := mtError;
  if Kante > Lmax then
  begin
    if DlgMessage (Typ, Tx(37), Tx(387),3) = 4 then
    begin
      MaskEditKante.Clear;
      MaskEditKante.SetFocus;
      exit;
    end;
  end;
  {Beginn des Plottens}
  if GeraetS = 'Plotter' then
    DiagNameS := InputBox(Tx(439),Tx(887),' ');
  if GeraetS <> 'Plotter' then
  begin
    Plotter (Canvas, SaveDialog1);
    Farben (Canvas, KoordinFarbe);
    PlFouRahmen (Canvas, XNull, YNull, Kante);
    Farben (Canvas, KoordinFarbe);
    PlFouLinien (Canvas, XNull, YNull, Kante);
    Farben (Canvas, DatenFarbe);
    PlFouPlot (Canvas, B3Fou, B1Fou, Xnull, Ynull, Kante);
    Farben (Canvas, KoordinFarbe);
    if GeraetS = 'HPGL' then
    begin
      XS := IntToStr(round(Xnull*400));
      YS := IntToStr(round((Ynull-Kante/10)*400));
      WS := FloatToStr(Kante/30);
      HS := FloatToStr(Kante/20);
      Plotte ('Si'+Ws+','+HS);
      Plotte ('PU;PA'+XS+','+YS+'LB'+DiagNameS+Chr(3));
    end;
    if GeraetS = 'DXF' then
      Dxftext (Xnull,Ynull-Kante/20,Kante/3,DiagNameS,'0.00');
    XS := Inttostr(round((Xnull+5*Kante/20)*400));
    YS := IntToStr(round((Ynull+Kante/3)*400));
    WS := FloatToStr(Kante/30);
    HS := FloatToStr(Kante/20);
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
      PlFouRahmen (Canvas, XNull, YNull, Kante);
      Farben (Canvas, KoordinFarbe);
      PlFouLinien (Canvas, XNull, YNull, Kante);
      Farben (Canvas, DatenFarbe);
      PlFouPlot (Canvas, B3Fou, B1Fou, XNull, YNull, Kante);
      X := round(Xnull*100*Faktor*DFak);
      Y := round((Ynull+4*Kante/5)*100*Faktor*DFak);
      Canvas.Brush.Color := clWhite;
      Canvas.Font.Color  := KoordinFarbe;
      Canvas.Font.Size   := 14;
      Canvas.Textout (X, Y, DiagNameS);
      if DemoB then
      begin
        X := round((Xnull+Kante/3)*100*Faktor-300);
        Y := round((Ynull+Kante/3)*100*Faktor);
        Groesse := round(Kante);
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

procedure TForm51.DruckereinrichtenClick(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TForm51.SpeedEinrichtenClick(Sender: TObject);
begin
  DruckereinrichtenClick(Sender);
end;

procedure TForm51.SpeedDruckenClick(Sender: TObject);
begin
  drucken1Click(Sender);
end;

procedure TForm51.drucken1Click(Sender: TObject);
var
  SchriftS : string[5];
  i        : byte;
begin
  Paneldrucken.Visible := true;
  RadioButtonlinks.Visible     := true;
  RadioButtonzentriert.Visible := true;
  RadioButtonrechts.Visible    := true;
  RadioGroup.Visible           := true;
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

procedure TForm51.MaskEditUnterschriftKeyPress(Sender: TObject;
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

procedure TForm51.RadioButtonLinksClick(Sender: TObject);
begin
  BuendigS := 'Links';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    ButtonDrucken.Enabled := true;
end;

procedure TForm51.RadioButtonZentriertClick(Sender: TObject);
begin
  BuendigS := 'Zentriert';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    ButtonDrucken.Enabled := true;
end;

procedure TForm51.RadioButtonRechtsClick(Sender: TObject);
begin
  BuendigS := 'Rechts';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    ButtonDrucken.Enabled := true;
end;

procedure TForm51.ListBoxSchriftClick(Sender: TObject);
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

procedure TForm51.ButtonDruckenClick(Sender: TObject);
var
  XKoordS : string;
  YKoordS : string;
  RadiusS : string;
  Bitmap  : TBitmap;
  Fenster : TRect;
  Radius  : word;
begin
  Paneldrucken.Visible := false;
  RadiusS := MaskEditRdrucken.Text;
  XKoordS := MaskEditXdrucken.Text;
  YKoordS := MaskEditYdrucken.Text;
  Radius  := StrToInt(RadiusS) div 2;
  RadiusS := IntToStr(Radius);
  Bitmap:=TBitmap.Create;
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

procedure TForm51.ButtonAbbrechenClick(Sender: TObject);
begin
  Paneldrucken.Visible         := false;
end;

procedure TForm51.Hilfe1Click(Sender: TObject);
const
  Anfang = 151;
var
  DateiS : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\four53xw.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\Fourier-plot.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm51.SpeedHilfeClick(Sender: TObject);
begin
  Hilfe1Click(Sender);
end;

procedure TForm51.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Fourier-Analyse.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'Fourier_analysis-E.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm51.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm51.SpeedFarbeClick(Sender: TObject);
begin
  Farbe1Click(Sender);
end;

procedure TForm51.SpeedKopierenClick(Sender: TObject);
begin
  kopieren1Click(Sender);
end;

procedure TForm51.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm51.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

procedure TForm51.speichernClick(Sender: TObject);
var
  Datei : TextFile;
  j     : word;
  ZeileS: string;
begin
  SaveDialog1.Filter := 'Fourier-Analyse (*.fou)|*.FOU';
  SaveDialog1.DefaultExt := 'FOU';
  if CurrentFile <> '' then
  begin
    assignFile(Datei,CurrentFile);
    rewrite(Datei);
    for j := 1 tO ZahlGlob do
    begin
      ZeileS := IntToStr(Vergenz[j])+','+IntToStr(X1Fou[j])+','+IntToStr(Y1Fou[j])
                +IntToStr(X2Fou[j])+','+IntToStr(Y2Fou[j])
                +IntToStr(X3Fou[j])+','+IntToStr(Y3Fou[j]);
      Writeln(Datei, ZeileS);
    end;
    CloseFile (Datei);
  end
  else speichernunterClick (Sender);
end;

procedure TForm51.speichernunterClick(Sender: TObject);
var
  Datei  : TextFile;
  j      : word;
  ZeileS : string;
begin
  SaveDialog1.Filter := 'Fourier-Analyse (*.fou)|*.FOU';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    if UcaseS(RightS(CurrentFile,3)) <> 'FOU' then
      Currentfile := CurrentFile+'.FOU';
    assignFile(Datei,CurrentFile);
    rewrite(Datei);
    writeln(Datei,Currentfile);
    for j := 1 tO ZahlGlob do
    begin
      ZeileS := IntToStr(Vergenz[j])+','+IntToStr(X1Fou[j])+','+IntToStr(Y1Fou[j])
                   +','+IntToStr(X2Fou[j])+','+IntToStr(Y2Fou[j])
                   +','+IntToStr(X3Fou[j])+','+IntToStr(Y3Fou[j]);
      Writeln(Datei, ZeileS);
    end;
    CloseFile (Datei);
  end;
end;

procedure TForm51.SpeedDspeichernClick(Sender: TObject);
begin
  speichernunterClick(Sender);
end;

end.
