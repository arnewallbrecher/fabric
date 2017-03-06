unit Unit55;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, ExtCtrls, StdCtrls, Menus, Globvar, Basic,
  ClipBrd, Plotten, Mask, HPPlot, Texte, ComCtrls, Buttons,
  Printers, Drucken, Shellapi, Standard,GifImage, Bmp2Tiff,
  Jpeg, ExtDlgs, ehsHelpRouter;

type
  TForm55 = class(TForm)
    Panel1         : TPanel;
    ListBoxDateien : TListBox;
    LabelDateien   : TLabel;
    LabelAnzahl    : TLabel;
    Label00000     : TLabel;

    Panel2         : TPanel;
    ListBoxTabelle : TListBox;

    ButtonStart   : TButton;
    Buttonzurueck : TButton;
    Buttonbeenden : TButton;

    MainMenu1: TMainMenu;

    Farbe1   : TMenuItem;

    Linien1          : TMenuItem;
    durchgezogen1    : TMenuItem;
    gestrichelt1     : TMenuItem;
    strichpunktiert1 : TMenuItem;
    punktiert1       : TMenuItem;

    Grafik1                    : TMenuItem;
    kopieren1                  : TMenuItem;
    speichern1                 : TMenuItem;
    speichernunter1            : TMenuItem;

    Hilfe1: TMenuItem;

    Image1: TImage;

    OpenDialog1 : TOpenDialog;
    SaveDialog1 : TSaveDialog;

    LabelTabelle : TLabel;
    LabelT0      : TLabel;

    GroupBoxplotten : TGroupBox;
    Panel4          : TPanel;
    LabelOrd        : TLabel;
    MaskEditOrd     : TMaskEdit;
    Panel5          : TPanel;
    LabelNull       : TLabel;
    LabelX          : TLabel;
    MaskEditX       : TMaskEdit;
    LabelY          : TLabel;
    MaskEditY       : TMaskEdit;

    HPPlotter1 : TMenuItem;

    FarbeKoordin1  : TMenuItem;

    StatusBar  : TStatusBar;
    PanelSpeed: TPanel;
    SpeedHilfe : TSpeedButton;
    FarbeHintergrund1: TMenuItem;
    PanelPlotFile: TPanel;
    LabelGeraet: TLabel;
    FarbeDiagramm1: TMenuItem;
    PanelDrucken: TPanel;
    GroupBoxDrucken: TGroupBox;
    Panel8: TPanel;
    LabelRdrucken: TLabel;
    MaskEditRdrucken: TMaskEdit;
    Panel9: TPanel;
    LabelMitte: TLabel;
    LabelXdrucken: TLabel;
    MaskEditXdrucken: TMaskEdit;
    LabelYdrucken: TLabel;
    MaskEditYdrucken: TMaskEdit;
    Panel10: TPanel;
    LabelUnterschrift: TLabel;
    MaskEditUnterschrift: TMaskEdit;
    LabelSchrift: TLabel;
    ListBoxSchrift: TListBox;
    RadioGroup: TRadioGroup;
    RadioButtonLinks: TRadioButton;
    RadioButtonZentriert: TRadioButton;
    RadioButtonRechts: TRadioButton;
    FarbeRahmen: TMenuItem;
    Drucker1: TMenuItem;
    Druckereinrichten1: TMenuItem;
    drucken1: TMenuItem;
    PrinterSetupDialog1: TPrinterSetupDialog;
    PrintDialog1: TPrintDialog;
    SpeedDrucken: TSpeedButton;
    Handbuch: TMenuItem;
    ColorDialog1: TColorDialog;
    LabelPlotter: TLabel;
    SpeedHandbuch: TSpeedButton;
    LabelTalpha: TLabel;
    SpeedFarbe: TSpeedButton;
    SpeedKopieren: TSpeedButton;
    SpeedDurchgezogen: TSpeedButton;
    SpeedGestrichelt: TSpeedButton;
    SpeedStrichPunkt: TSpeedButton;
    SpeedPunktiert: TSpeedButton;
    SpeedPlotter: TSpeedButton;
    SpeedPLT: TSpeedButton;
    SpeedDXF: TSpeedButton;
    SpeedKoordinaten: TSpeedButton;
    SpeedHintergrund: TSpeedButton;
    SpeedDiagramm: TSpeedButton;
    SpeedRahmen: TSpeedButton;
    Literatur: TMenuItem;
    SpeedLiteratur: TSpeedButton;
    ListBoxStrich: TListBox;
    LabelStrich: TLabel;
    SpeedStrich: TSpeedButton;
    SpeedEinrichten: TSpeedButton;
    PanelGroesse: TPanel;
    LabelBHoehe: TLabel;
    LabelBBreite: TLabel;
    MaskEditBBreite: TMaskEdit;
    MaskEditBHoehe: TMaskEdit;
    CheckBoxBild: TCheckBox;
    BGroesse: TMenuItem;
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
    speichernUWMF: TMenuItem;
    speichernUEMF: TMenuItem;
    speichernUJPG: TMenuItem;
    SavePictureDialog1: TSavePictureDialog;
    SpeedBMP: TSpeedButton;
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

    procedure ButtonStartClick(Sender: TObject);
    procedure ButtonzurueckClick(Sender: TObject);
    procedure ButtonbeendenClick(Sender: TObject);

    {Farbe}
    procedure Farbe1Click(Sender: TObject);

    {Linie}
    procedure durchgezogen1Click(Sender: TObject);
    procedure gestrichelt1Click(Sender: TObject);
    procedure strichpunktiert1Click(Sender: TObject);
    procedure punktiert1Click(Sender: TObject);

    {Grafik}
    procedure kopieren1Click(Sender: TObject);
    procedure ausZwischenablageholen1Click(Sender: TObject);
    procedure ausDateiholen1Click(Sender: TObject);

    procedure Hilfe1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);

    procedure ShowHint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedHilfeClick(Sender: TObject);
    procedure Druckereinrichten1Click(Sender: TObject);
    procedure drucken1Click(Sender: TObject);
    procedure SpeedDruckenClick(Sender: TObject);
    procedure MaskEditUnterschriftKeyPress(Sender: TObject; var Key: Char);
    procedure RadioButtonLinksClick(Sender: TObject);
    procedure RadioButtonZentriertClick(Sender: TObject);
    procedure RadioButtonRechtsClick(Sender: TObject);
    procedure ListBoxSchriftClick(Sender: TObject);
    procedure HandbuchClick(Sender: TObject);
    procedure FarbeKoordin1Click(Sender: TObject);
    procedure FarbeHintergrund1Click(Sender: TObject);
    procedure FarbeDiagramm1Click(Sender: TObject);
    procedure FarbeRahmenClick(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure SpeedFarbeClick(Sender: TObject);
    procedure SpeedKopierenClick(Sender: TObject);
    procedure SpeedZwischenablageClick(Sender: TObject);
    procedure SpeedDurchgezogenClick(Sender: TObject);
    procedure SpeedGestricheltClick(Sender: TObject);
    procedure SpeedStrichPunktClick(Sender: TObject);
    procedure SpeedPunktiertClick(Sender: TObject);
    procedure SpeedausDateiClick(Sender: TObject);
    procedure HPPlotter1Click(Sender: TObject);
    procedure SpeedPlotterClick(Sender: TObject);
    procedure SpeedPLTClick(Sender: TObject);
    procedure SpeedDXFClick(Sender: TObject);
    procedure SpeedKoordinatenClick(Sender: TObject);
    procedure SpeedHintergrundClick(Sender: TObject);
    procedure SpeedDiagrammClick(Sender: TObject);
    procedure SpeedRahmenClick(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
    procedure SpeedLiteraturClick(Sender: TObject);
    procedure ListBoxStrichClick(Sender: TObject);
    procedure SpeedStrichClick(Sender: TObject);
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
    procedure speichernPLTClick(Sender: TObject);
    procedure speichernDXFClick(Sender: TObject);
    procedure PloterstellenClick(Sender: TObject);
    procedure ButtonDruckenClick(Sender: TObject);
    procedure ButtonAbbrechenClick(Sender: TObject);
  end;

var
  Form55      : TForm55;
  ExtensionS  : string;
  Farbe       : TColor;
  Bitmap      : TBitmap;
  HolDatei    : boolean;
  HolZwischen : boolean;
  CurrentFile : string;
  Linie       : TPenStyle;
  PlotDateiS  : string;
  Schrift     : byte;
  BuendigS    : string;
  Gedrueckt   : array [1..3] of boolean;
  TextS       : string;
  RatioT      : real;
  BHoeheT     : word;

implementation
uses Unit52, Unit53, Unit54;
{$R *.DFM}

procedure TForm55.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm55.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm55.FormActivate(Sender: TObject);
var i : byte;
begin
  Left   := 4;
  Top    := 0;
  Width  := 1040;
  Height := 750;
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
  DecimalSeparator                 := '.';
  Form55.Width                     := 1010;
  Form55.Height                    := 740;
  Form55.Caption                   := Tx(792);   {Fabric7: T'alpha/Alpha-Met}  Farbe1.Caption              := Tx(642);   {&Farbe}
  Image1.Hint                      := Hilf(318);
  ListBoxDateien.Hint              := Hilf(82);
  LabelDateien.Hint                := Hilf(82);
  LabelAnzahl.Hint                 := Hilf(36);
  Label00000.Hint                  := Hilf(36);
  LabelTabelle.Hint                := Hilf(181);
  LabelT0.Hint                     := Hilf(181);
  ListBoxTabelle.Hint              := Hilf(181);
  GroupBoxplotten.Hint             := Hilf(58) + Hilf(59);
  Ploterstellen.Hint               := Hilf(60);
  Panel4.Hint                      := Hilf(182);
  MaskEditOrd.Hint                 := Hilf(182);
  Panel5.Hint                      := Hilf(145);
  MaskEditX.Hint                   := Hilf(117);
  MaskEditY.Hint                   := Hilf(118);
  ButtonStart.Hint                 := Hilf(319);
  Buttonzurueck.Hint               := Hilf(85);
  Buttonbeenden.Hint               := Hilf(30);
  SpeedHilfe.Hint                  := Hilf(210);
  SpeedHandbuch.Hint               := Hilf(274);
  SpeedFarbe.Hint                  := Hilf(365);
  SpeedKopieren.Hint               := Hilf(262);
  SpeedDrucken.Hint                := Hilf(309);
  SpeedDurchgezogen.Hint           := Hilf(428);
  SpeedGestrichelt.Hint            := Hilf(429);
  SpeedStrichPunkt.Hint            := Hilf(430);
  SpeedPunktiert.Hint              := Hilf(431);
  SpeedPlotter.Hint                := Hilf(437);
  SpeedPLT.Hint                    := Hilf(438);
  SpeedDXF.Hint                    := Hilf(439);
  SpeedKoordinaten.Hint            := Hilf(444);
  SpeedDiagramm.Hint               := Hilf(441);
  SpeedRahmen.Hint                 := Hilf(442);
  SpeedHintergrund.Hint            := Hilf(443);
  SpeedStrich.Hint                 := Hilf(463);
  SpeedEinrichten.Hint             := Hilf(505);
  SpeedBGroesse.Hint               := Hilf(583);
  SpeedBMP.Hint                    := Hilf(586);
  SpeedGIF.Hint                    := Hilf(587);
  SpeedTIF.Hint                    := Hilf(588);
  SpeedJPG.Hint                    := Hilf(589);
  SpeedWMF.Hint                    := Hilf(590);
  SpeedEMF.Hint                    := Hilf(591);
  Linien1.Caption                  := Tx(793);   {&Linien}
  durchgezogen1.Caption            := Tx(794);   {&durchgezogen}
  gestrichelt1.Caption             := Tx(795);   {&gestrichelt}
  strichpunktiert1.Caption         := Tx(796);   {&strichpunktiert}
  punktiert1.Caption               := Tx(797);   {&punktiert}
  Grafik1.Caption                  := Tx(281);
  kopieren1.Caption                := Tx(282);
  speichern1.Caption               := Tx(284);
  speichernunter1.Caption          := Tx(285);
  HPPlotter1.Caption               := Tx(288);
  FarbeKoordin1.Caption            := Tx(729);   {Farbe des Diagramms}
  FarbeHintergrund1.Caption        := Tx(856);    {Farbe des Hintergrunds}
  FarbeDiagramm1.Caption           := Tx(860);
  Hilfe1.Caption                   := Tx(162)+' (F1)';
  LabelAnzahl.Caption              := Tx(798);    {Anzahl der Falten:}
  LabelTabelle.Caption             := Tx(799);    {Tabelle:}
  LabelT0.Caption                  := Tx(800);    {T0:    Isogone:    T /T0:}
  GroupBoxPlotten.Caption          := Tx(297);
  Ploterstellen.Caption            := Tx(298);   {Plot-Einstellungen ok?}
  LabelOrd.Caption                 := Tx(807);   {Länge der Ordinate [cm]:}
  LabelNull.Caption                := Tx(732);   {Nullpunkt [cm]:}
  LabelX.Caption                   := Tx(775);   {X:}
  LabelY.Caption                   := Tx(776);   {Y:}
  Buttonzurueck.Caption            := Tx(30);
  Buttonbeenden.Caption            := Tx(53);
  LabelDateien.Enabled    := false;
  LabelAnzahl.Enabled     := false;
  Label00000.Caption      := '';
  LabelTabelle.Enabled    := false;
  LabelTabelle.Enabled    := false;
  LabelT0.Enabled         := false;
  LabelTalpha.Enabled     := false;
  Image1.Enabled          := false;
  HolZwischen             := false;
  HolDatei                := false;
  LabelOrd.Enabled        := false;
  LabelNull.Enabled       := false;
  LabelX.Enabled          := false;
  LabelY.Enabled          := false;
  MaskEditOrd.EditMask    := '999;0; ';
  MaskEditX.EditMask      := '999;0; ';
  MaskEditY.EditMask      := '999;0; ';
  MaskEditOrd.Text        := FloatToStr(Kante);
  MaskEditX.Text          := FloatToStr(XAnfang);
  MaskEditY.Text          := FloatToStr(YAnfang);
  MaskEditOrd.Enabled     := false;
  MaskEditX.Enabled       := false;
  MaskEditY.Enabled       := false;
  Grafik1.Enabled         := false;
  LabelNull.Enabled       := false;
  Farbe1.Enabled          := false;
  Linien1.Enabled         := false;
  LabelGeraet.Caption     := '';
  Paneldrucken.Visible         := false;
  GroupBoxDrucken.Visible      := false;
  Drucker1.Caption             := Tx(92);
  Druckereinrichten1.Caption   := Tx(94);
  drucken1.Caption             := Tx(93);
  FarbeRahmen.Caption          := Tx(892);
  GroupBoxPlotten.Caption      := '';
  for i := 1 to 3 do Gedrueckt[i] := false;
  GroupBoxPlotten.Visible := false;
  LabelGeraet.Caption     := Tx(850);
  PanelPlotFile.Visible   := false;
  Handbuch.Caption        := Tx(1055)+' (F2)';
  Literatur.Caption       := Tx(1183)+' (F5)';
  SpeedLiteratur.Hint     := Hilf(462);
  PanelSpeed.Visible      := false;
  LabelDateien.Caption    := Tx(136);
  for i := 0 to 9 do ListboxStrich.Items.Add(IntToStr(i+1));
  ListBoxStrich.Visible := false;
  LabelStrich.Visible   := false;
  LabelStrich.Caption     := Tx(1187);
  RatioT := Image1.Width/Image1.Height;
  MaskEditBBreite.EditMask := '99999;0; ';
  MaskEditBHoehe.EditMask  := '99999;0; ';
  LabelBBreite.Caption     := Tx(1440);
  LabelBHoehe.Caption      := Tx(1441);
  BGroesse.Caption         := Tx(1439);
  PanelGroesse.Visible     := false;
end;

procedure TForm55.ButtonStartClick(Sender: TObject);
var
  i         : word;
  TalStrich : array[0..9] of real;
  j         : byte;
  XAnfang   : word;
  YAnfang   : word;
  XEnde     : word;
  YEnde     : word;
  YLaenge   : word;
  XKurve    : integer;
  YKurve    : integer;
  LaengeX   : word;
  LaengeY   : word;
  isS       : string[3];
  T0S       : string[4];
  Zeile0S   : string[50];
  ZeileS    : string[50];
  ProS      : string[20];
begin
  BHoeheT := round(BBreiteT/RatioT);
  PanelSpeed.Visible := true;
  ListBoxTabelle.Clear;
  ListBoxDateien.Clear;
  for i := 0 to DateiZahl do
    ListboxDateien.Items.Add (DateiNameS[i]);
  ProS                    := GeraetS;
  Farbe1.Enabled          := true;
  Grafik1.Enabled         := true;
  Linien1.Enabled         := true;
  LabelOrd.Enabled        := true;
  LabelNull.Enabled       := true;
  LabelX.Enabled          := true;
  LabelY.Enabled          := true;
  MaskEditOrd.Enabled     := true;
  MaskEditX.Enabled       := true;
  MaskEditY.Enabled       := true;
  GroupBoxPlotten.Caption := 'Plot:';
  Bo := Pi/180;
  XKurve := 0;
  YKurve := 0;
  ExtensionS            := RightS(DateinameS[1],3);
  LabelDateien.Enabled  := true;
  LabelAnzahl.Enabled   := true;
  LabelTabelle.Enabled  := true;
  Label00000.Caption    := IntToStr (ZahlGlob);
  LabelT0.Enabled       := true;
  LabelTalpha.Enabled   := true;
  for i := 1 to ZahlGlob do
  begin
    T0S := RightS('0000'+IntToStr(T0[i]),4);
    str (T1Strich[i]:4:2,TS[1]);
    str (T2Strich[i]:4:2,TS[2]);
    str (T3Strich[i]:4:2,TS[3]);
    str (T4Strich[i]:4:2,TS[4]);
    str (T5Strich[i]:4:2,TS[5]);
    str (T6Strich[i]:4:2,TS[6]);
    str (T7Strich[i]:4:2,TS[7]);
    str (T8Strich[i]:4:2,TS[8]);
    str (T9Strich[i]:4:2,TS[9]);
    Zeile0S    := ' '+T0S+'      10'+'          '+TS[1];
    ListboxTabelle.Items.Add(Zeile0S);
    for j := 2 to Isogonenzahl[i] do
    begin
      ZeileS := '              '+IntToStr(j*10)+'           '+TS[j];
      ListboxTabelle.Items.Add(ZeileS);
    end;
  end;
  Bitmap                := Tbitmap.Create;
  Bitmap.Width          := 401;
  Bitmap.Height         := 633;
  Image1.Picture.Graphic:= Bitmap;
  with Image1 do
  begin
    Xmitte := ClientWidth div 2;
    Ymitte := ClientHeight div 2;
    Radius := ClientWidth div 2 - 20;
    Breite := Image1.Width;
    Hoehe  := Image1.Height;
  end;
  TSchirm (Image1.Canvas, XAnfang, YAnfang, XEnde, YEnde, YLaenge, Laengex,
           Laengey);
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
        showMessage(Tx(307));                        {Datei nicht gefunden}
      end;
    end;
  end; {if HolDatei}
  with Image1.Canvas do
  begin
    Pen.Width   := Strich;
    Pen.Color   := GrosskreisFarbe;
    Pen.Style   := Linientyp;
    Brush.Color := RGFarbe;
    for i:= 1 to ZahlGlob do
    begin
      for j := 1 to 9 do
      begin
        case j of
          1 : Talstrich[j] := T1Strich[i];
          2 : Talstrich[j] := T2Strich[i];
          3 : Talstrich[j] := T3Strich[i];
          4 : Talstrich[j] := T4Strich[i];
          5 : Talstrich[j] := T5Strich[i];
          6 : Talstrich[j] := T6Strich[i];
          7 : Talstrich[j] := T7Strich[i];
          8 : Talstrich[j] := T8Strich[i];
          9 : Talstrich[j] := T9Strich[i];
        end;
      end;
      moveto (Xanfang, Yende-Ylaenge);
      for j := 1 to IsogonenZahl[i] do
      begin
        if Talstrich[j] <> 0 then
        begin
          Xkurve := Xanfang+round(Laengex*j/9);
          Ykurve := Yende-Ylaenge+round(Ylaenge*(1-Talstrich[j]));
        end;
        if Ykurve >= round(Yende - 1.5*Ylaenge) then
          Lineto (Xkurve, Ykurve)
        else
        begin
          YKurve := round(YEnde - 1.5*YLaenge)+17;
          break;
        end;
      end;
      str(i, isS);
      Textout(Xkurve-20, Ykurve-15, isS);
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
      Textout(50,Height-250,'Demo-Version');
    end;
  end;
end;

procedure TForm55.ButtonzurueckClick(Sender: TObject);
begin
  with Image1.Canvas do
  begin
    Pen.Color := clSilver;
    Brush.Color := clSilver;
    Rectangle (0,0,Image1.Width,Image1.Height);
  end;
  ListboxDateien.Clear;
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
  Form55.Close;
end;

procedure TForm55.ButtonbeendenClick(Sender: TObject);
var
  Flaeche : TRect;
begin
  with Image1.Canvas do
  begin
    Pen.Color := clSilver;
    Brush.Color := clSilver;
    Rectangle (0,0,Image1.Width,Image1.Height);
    ListboxDateien.Clear;
    Loeschen (Image1.Canvas, Flaeche);
  end;
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
  Form55.Close;
  Form54.Close;
  Form53.Close;
  Form52.Close;
  SetCurrentDir(DirectS);
end;

procedure TForm55.Farbe1Click(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS := ColorToString (Farbe);
  GrosskreisFarbe := StringToColor(FarbeS);
  KonfigZeileS[8] := '  Colour of Great Circles  :,'+FarbeS;
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick (Sender);
end;

procedure TForm55.durchgezogen1Click(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  LinienTyp   := psSolid;
  KonfigZeileS[10] := '  Line Style               :,SOLID';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ListBoxStrich.Visible  := true;
  LabelStrich.Color      := RGFarbe;
  LabelStrich.Font.Color := KoordinFarbe;
  LabelStrich.Visible    := true;
end;

procedure TForm55.gestrichelt1Click(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  Strich := 1;
  LinienTyp   := psDash;
  KonfigZeileS[10] := '  Line Style               :,DASH';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm55.strichpunktiert1Click(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  Strich := 1;
  LinienTyp   := psDashDot;
  KonfigZeileS[10] := '  Line Style               :,DASHDOT';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm55.punktiert1Click(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  Strich := 1;
  LinienTyp   := psDot;
  KonfigZeileS[10] := '  Line Style               :,DOT';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm55.SpeedDurchgezogenClick(Sender: TObject);
begin
  durchgezogen1Click(Sender);
end;

procedure TForm55.SpeedGestricheltClick(Sender: TObject);
begin
  gestrichelt1Click(Sender);
end;

procedure TForm55.SpeedStrichPunktClick(Sender: TObject);
begin
  strichpunktiert1Click(Sender);
end;

procedure TForm55.SpeedPunktiertClick(Sender: TObject);
begin
  punktiert1Click(Sender);
end;

procedure TForm55.BGroesseClick(Sender: TObject);
begin
  PanelGroesse.Visible    := true;
  CheckBoxBild.State      := cbUnchecked;
  MaskEditBBreite.Text    := IntTostr(BBreiteT);
  MaskEditBHoehe.Text     := IntToStr(BHoeheT);
end;

procedure TForm55.SpeedBGroesseClick(Sender: TObject);
begin
  BGroesseClick(Sender);
end;

procedure TForm55.MaskEditBBreiteKeyPress(Sender: TObject; var Key: Char);
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
      BBreiteT := StrToInt (BBreiteS);
      BHoeheT  := round(BBreiteT/RatioT);
      KonfigZeileS[121] := 'Save Image Width (TAlpha)  :,'+BBreiteS;
      MaskEditBHoehe.Text := IntToStr(BHoeheT);
      assignFile(Datei,DirectS+'\'+'Fabric.ini');
      rewrite (Datei);
      for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
      closefile (Datei);
    end;
  end;
end;

procedure TForm55.MaskEditBHoeheKeyPress(Sender: TObject; var Key: Char);
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
      BHoeheT  := StrToInt (BHoeheS);
      BBreiteT := round(BHoeheT*RatioT);
      KonfigZeileS[121] := 'Save Image Width (TAlpha)  :,'+IntToStr(BBreiteF);
      MaskEditBBreite.Text := IntToStr(BBreiteT);
    end;
    assignFile(Datei,DirectS+'\'+'Fabric.ini');
    rewrite (Datei);
    for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
    closefile (Datei);
  end;
end;

procedure TForm55.CheckBoxBildClick(Sender: TObject);
begin
  PanelGroesse.Visible := false;
end;

procedure TForm55.kopieren1Click(Sender: TObject);
begin
  ClipBoard.Assign (Image1.Picture);
end;

procedure TForm55.speichernBMPClick(Sender: TObject);
var
  Rahmen : TRect;
begin
  Bitmap        := TBitmap.Create;
  Bitmap.Width  := BBreiteT;
  Bitmap.Height := BHoeheT;
  Rahmen        := Rect(0,0,Bitmap.Width,Bitmap.Height);
  Bitmap.Canvas.Stretchdraw(Rahmen,Image1.Picture.Graphic);
  try
    if (CurrentFile <> '') and (UCaseS(RightS(CurrentFile,3)) = 'BMP')
    then Bitmap.SaveToFile(CurrentFile)
    else speichernUBMPClick(Sender);
  finally
    Bitmap.Free;
    Bitmap := nil;
  end;
end;

procedure TForm55.SpeedBMPClick(Sender: TObject);
begin
  speichernBMPClick(Sender);
end;

procedure TForm55.speichernGIFClick(Sender: TObject);
var
  Bitmap  : TBitmap;
  GifBild : TGifImage;
  Rahmen  : TRect;
begin
  Bitmap        := TBitmap.Create;
  GifBild       := TGIFImage.Create;
  Bitmap.Width  := BBreiteT;
  Bitmap.Height := BHoeheT;
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

procedure TForm55.SpeedGIFClick(Sender: TObject);
begin
  speichernGIFClick(Sender);
end;

procedure TForm55.speichernTIFClick(Sender: TObject);
var
  Rahmen : TRect;
begin
  Bitmap        := TBitmap.Create;
  Bitmap.Width  := BBreiteT;
  Bitmap.Height := BHoeheT;
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

procedure TForm55.SpeedTIFClick(Sender: TObject);
begin
  speichernTIFClick(Sender);
end;

procedure TForm55.speichernJPGClick(Sender: TObject);
var
  DateiJ   : string;
  Rahmen   : TRect;
  Bild     : TBitmap;
  JpgDatei : TjpegImage;
begin
  JpgDatei    := TJpegImage.Create;
  Bild        := TBitmap.Create;
  Bild.Width  := BBreiteT;
  Bild.Height := BHoeheT;
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

procedure TForm55.SpeedJPGClick(Sender: TObject);
begin
  speichernJPGClick(Sender);
end;

procedure TForm55.speichernWMFClick(Sender: TObject);
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
    Bitmap.Width  := BBreiteT;
    Bitmap.Height := BHoeheT;
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

procedure TForm55.SpeedWMFClick(Sender: TObject);
begin
  speichernWMFClick(Sender);
end;

procedure TForm55.speichernEMFClick(Sender: TObject);
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
      Metafile.Height := BHoeheT;
      Metafile.Width  := BBreiteT;
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

procedure TForm55.SpeedEMFClick(Sender: TObject);
begin
  speichernEMFClick(Sender);
end;

procedure TForm55.speichernPLTClick(Sender: TObject);
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

procedure TForm55.speichernDXFClick(Sender: TObject);
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

procedure TForm55.speichernUBMPClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := GraphicExtension(TBitmap);
  SaveDialog1.Filter     := GraphicFilter(TBitmap);
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    SpeichernBMPClick(Sender);
  end;
end;

procedure TForm55.speichernUGIFClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := GraphicExtension(TGIFImage);
  SaveDialog1.Filter     := GraphicFilter(TGIFImage);
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    SpeichernGIFClick(Sender);
  end;
end;

procedure TForm55.speichernUTIFClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := 'Tagged image file format (*.tif)|*.tif';
  SaveDialog1.Filter     := 'Tagged image file format (*.tif)|*.tif';;
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    SpeichernTIFClick(Sender);
  end;
end;

procedure TForm55.speichernUJPGClick(Sender: TObject);
begin
  SavePictureDialog1.DefaultExt := GraphicExtension(TJpegImage);
  SavePictureDialog1.Filter     := GraphicFilter(TJpegImage);
  if SavePictureDialog1.Execute then
  begin
    CurrentFile := SavePictureDialog1.Filename;
    SpeichernJPGClick(Sender);
  end;
end;

procedure TForm55.speichernUWMFClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := GraphicExtension(TMetaFile);
  SaveDialog1.Filter     := GraphicFilter(TMetaFile);
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    speichernWMFClick(Sender);
  end;
end;

procedure TForm55.speichernUEMFClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := GraphicExtension(TMetaFile);
  SaveDialog1.Filter     := GraphicFilter(TMetaFile);
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    speichernEMFClick(Sender);
  end;
end;

procedure TForm55.ausZwischenablageholen1Click(Sender: TObject);
begin
  FarbeKoordin1.Enabled     := false;
  FarbeDiagramm1.Enabled    := false;
  FarbeHintergrund1.Enabled := false;
  HolZwischen := true;
  ButtonStartClick(Sender);
end;

procedure TForm55.ausDateiholen1Click(Sender: TObject);
begin
  FarbeKoordin1.Enabled     := false;
  FarbeDiagramm1.Enabled    := false;
  FarbeHintergrund1.Enabled := false;
  if OpenDialog1.Execute then CurrentFile := OpenDialog1.FileName;
  HolDatei := true;
  ButtonStartClick(Sender);
end;

procedure TForm55.SpeedausDateiClick(Sender: TObject);
begin
  ausDateiHolen1Click(Sender);
end;

procedure TForm55.HPPlotter1Click(Sender: TObject);
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

procedure TForm55.SpeedPlotterClick(Sender: TObject);
begin
  HPPlotter1Click(Sender);
end;

procedure TForm55.SpeedPLTClick(Sender: TObject);
begin
  speichernPLTClick(Sender);
end;

procedure TForm55.SpeedDXFClick(Sender: TObject);
begin
  speichernDXFClick(Sender);
end;

procedure TForm55.FarbeKoordin1Click(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS := ColorToString (Farbe);
  KoordinFarbe := StringToColor(FarbeS);
  KonfigZeileS[28] := 'Colour of Coordinates      :,'+FarbeS;
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick (Sender);
end;

procedure TForm55.FarbeHintergrund1Click(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS           := ColorToString (Farbe);
  GrundFarbe       := StringToColor(FarbeS);
  KonfigZeileS[73] := 'Colour of Background       :,'+FarbeS;
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick (Sender);
end;

procedure TForm55.FarbeDiagramm1Click(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS           := ColorToString (Farbe);
  RGFarbe          := StringToColor(FarbeS);
  KonfigZeileS[27] := 'Background of Diagrams     :,'+FarbeS;
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick (Sender);
end;

procedure TForm55.FarbeRahmenClick(Sender: TObject);
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

procedure TForm55.SpeedKoordinatenClick(Sender: TObject);
begin
  FarbeKoordin1Click(Sender);
end;

procedure TForm55.SpeedHintergrundClick(Sender: TObject);
begin
  FarbeHintergrund1Click(Sender);
end;

procedure TForm55.SpeedDiagrammClick(Sender: TObject);
begin
  FarbeDiagramm1Click(Sender);
end;

procedure TForm55.SpeedRahmenClick(Sender: TObject);
begin
  FarbeRahmenClick(Sender);
end;

procedure TForm55.PloterstellenClick(Sender: TObject);
var
  LaengeS   : string[4];
  XKoordS   : string[4];
  YKoordS   : string[4];
  Lmax      : real;
  LmaxS     : string[15];
  Xmax      : real;
  Ymax      : real;
  i         : word;
  SeiteX    : real;
  Xanneu1   : real;
  Yanneu1   : real;
  Xanneu2   : real;
  Yanneu2   : real;
  Xanneu3   : real;
  Yanneu3   : real;
  Richtung1 : word;
  Richtung2 : word;
  Richtung3 : word;
  Richtung4 : word;
  RichtungS : string[5];
  Tick      : real;
  j         : byte;
  Talstrich : array[0..10] of real;
  XS, YS    : string[10];
  Xa, Ya    : real;
  XpKurve   : real;
  YpKurve   : real;
  Xe, Ye, H : real;
  IiS       : string[2];
  WinkelS   : string[4];
  Datei     : TextFile;
  Winkel    : real;
  WdS, HdS  : string[10];
  XNull     : real;
  YNull     : real;
  Breite    : real;
  Xw, Yw    : word;
  DiagNameS : string;
  WS, HS    : string;
  X, Y      : word;
  Groesse   : word;
  Typ       : TMsgDlgType;
begin
  Bo := Pi/180;
  DecimalSeparator := '.';
  LaengeS := MaskEditOrd.Text;
  XKoordS := MaskEditX.Text;
  YKoordS := MaskEditY.Text;
  KonfigZeileS[67] := 'Length of Coordinates [mm] :'+','+LaengeS;
  KonfigZeileS[68] := 'X-Coordin. of Origine [mm] :'+','+XKoordS;
  KonfigZeileS[69] := 'Y-Coordin. of Origine [mm] :'+','+YKoordS;
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  Breite  := StrToFloat (LaengeS)/10;
  XNull   := StrToFloat (XKoordS)/10;
  YNull   := StrToFloat (YKoordS)/10;
  SeiteX  := Breite/2;
  LmaxS := '(max. 290mm)';
  Lmax  := 29.0;
  Xmax  := 29.2 - Breite;
  Ymax  := 21.0 - Breite;
  Typ   := mtError;
  if Breite > Lmax then
  begin
    if DlgMessage (Typ, Tx(37), Tx(387),3) = 4 then
    begin
      MaskEditOrd.Clear;
      MaskEditOrd.SetFocus;
      exit;
    end;
  end;
  {Beginn des Plottens}
  if GeraetS = 'Plotter' then
    DiagNameS := InputBox(Tx(439),Tx(887),' ');
  RichtungS := 'DI1,0';
  if GeraetS <> 'Plotter' then
  begin
    Plotter(Canvas, SaveDialog1);
    Xanneu1 := XNull + Seitex;
    Yanneu1 := YNull;
    Xanneu2 := Xanneu1;
    Yanneu2 := YNull + Breite;
    Xanneu3 := XNull;
    Yanneu3 := Yanneu2;
    Richtung1 := 0;
    Richtung2 := 90;
    Richtung3 := 180;
    Richtung4 := 270;
    Farben (Canvas, KoordinFarbe);                             {Zeichnen der Umrisse}
    Hpstrich (Canvas, XNull,YNull,Seitex,Richtung1);
    Hpstrich (Canvas, Xanneu1,Yanneu1,Breite,Richtung2);
    Hpstrich (Canvas, Xanneu2,Yanneu2,Seitex,Richtung3);
    Hpstrich (Canvas, Xanneu3,Yanneu3,Breite,Richtung4);
    Hpstrich (Canvas, XNull,YNull+Breite*2/3,SeiteX,
              Richtung1);
    if GeraetS <> 'DXF' then
    begin
      str(round(XNull*400), XS);
      str(round(400*(YNull+2*Breite/3)), YS);
      Plotte ('Pu;'+'Pa,'+XS+','+YS+';');
    end
    else
    begin
      Xa := XNull;
      Ya := YNull + 2*Breite/3;
    end;
    for i := 0 to 90 do
    begin
      Winkel := i*Bo;
      if GeraetS <> 'DXF' then
      begin
        str(round(400*(XNull+i*SeiteX/90)), XS);
        str(round(400*(YNull + cos(Winkel)*2*Breite/3)), YS);
        Plotte('Pd;Pa,'+Xs+','+YS+';');
      end
      else
      begin
        Xe := XNull + i* SeiteX/90;
        Ye := YNull + cos(Winkel)*2*Breite/3;
        Dxflinie (Xa, Ya, Xe, Ye);
        Xa := Xe;
        Ya := Ye;
      end;  {DXF}
    end; {Schleife}
    Tick      := Seitex / 10;                           {X-Skala}
    if GeraetS <> 'DXF' then
    begin
      str ((Breite/60):5:3, WdS);
      str ((Breite/60):5:3, HdS);
      Plotte('Si'+WdS+','+HdS+';');
    end;
    Xskallin (Canvas, 18,XNull,YNull,Seitex,9,Tick);
    Xhpschrift (Canvas, 18,RichtungS,XNull-0.1,YNull,Seitex,90,9);
    Tick := Breite/15;
    Yskallin (Canvas, 18,XNull,YNull,Breite,15,Tick);
    Yhpschrift (Canvas, 18,RichtungS,XNull-0.3,YNull,Breite,15,15);
    {Zeichnen der Kurven}
    Farben (Canvas, GrosskreisFarbe);
    for i:= 1 to ZahlGlob do
    begin
      for j := 1 to 9 do
      begin
        case j of
          1 : Talstrich[j] := T1Strich[i];
          2 : Talstrich[j] := T2Strich[i];
          3 : Talstrich[j] := T3Strich[i];
          4 : Talstrich[j] := T4Strich[i];
          5 : Talstrich[j] := T5Strich[i];
          6 : Talstrich[j] := T6Strich[i];
          7 : Talstrich[j] := T7Strich[i];
          8 : Talstrich[j] := T8Strich[i];
          9 : Talstrich[j] := T9Strich[i];
        end;
      end;
      if GeraetS <> 'DXF' then
      begin
        str ((400*XNull):6:2,XS);
        str ((400*(YNull + Breite*2/3)):6:2,YS);
        Plotte ('Pu;Pa'+XS+','+YS+';PD;')
      end
      else
      begin
        Xa := XNull;
        Ya := YNull + Breite*2/3;
        Dxfpunkt (Xa, Ya);
      end;
      for j := 1 to 9 do
      begin
        Xpkurve := Seitex*j/9;
        str ((400*(XNull+Xpkurve)):6:2,XS);
        if Talstrich[j] >0 then Ypkurve := Breite*2/3*Talstrich[j]
        else break;
        if YpKurve <= Breite/2 then
        begin
          str ((400*(YNull+Ypkurve)):6:2,YS);
          Xe := XNull + Xpkurve;
          Ye := YNull + Ypkurve;
          if GeraetS <> 'DXF' then Plotte ('Pa'+XS+','+YS+';')
          else Dxflinie (Xa, Ya, Xe, Ye);
          Xa := Xe;
          Ya := Ye;
        end
        else
        begin
          str ((400*(YNull+Breite+0.5)):6:2,YS);
          break;
        end;
      end;
      str (i,IiS);
      H := Seitex / 5;
      WinkelS := '0.0';
      str ((400*(XNull+Xpkurve+Seitex/30)):6:2,XS);
      Xe := XNull + Xpkurve + Seitex/30;
      if GeraetS <> 'DXF' then Plotte ('Pu;Pa'+XS+','+YS+'LB'+IiS+chr(3))
      else Dxftext (Xe, Ye, H*3, IiS, WinkelS);
    end; //ZahlGlob
    Farben (Canvas, KoordinFarbe);
    if GeraetS = 'HPGL' then
    begin
      XS := IntToStr(round(Xnull*400));
      YS := IntToStr(round((Ynull-Breite/10)*400));
      WS := FloatToStr(Breite/40);
      HS := FloatToStr(Breite/30);
      Plotte ('Si'+Ws+','+HS);
      Plotte ('PU;PA'+XS+','+YS+'LB'+DiagNameS+Chr(3));
    end;
    if GeraetS = 'DXF' then
      Dxftext (Xnull,Ynull-Breite/10,Breite/3,DiagNameS,'0.00');
    XS := Inttostr(round((Xnull+Breite/20)*400));
    YS := IntToStr(round((Ynull+Breite/3)*400));
    WS := FloatToStr(Kante/40);
    HS := FloatToStr(Kante/30);
    Hpende (XS, Ys, WS, HS);
  end;
  if GeraetS = 'Plotter' then
  begin
    SetMapMode (Printer.Handle, MM_Himetric);
    with Printer do
    begin
      BeginDoc;
      Canvas.Font.Color := KoordinFarbe;
      Plotter(Canvas, SaveDialog1);
      Xanneu1 := XNull + Seitex;
      Yanneu1 := YNull;
      Xanneu2 := Xanneu1;
      Yanneu2 := Breite + YNull;
      Xanneu3 := XNull;
      Yanneu3 := Yanneu2;
      Richtung1 := 0;
      Richtung2 := 90;
      Richtung3 := 180;
      Richtung4 := 270;
      Farben (Canvas, KoordinFarbe);             {Zeichnen der Umrisse}
      Canvas.Pen.Color := KoordinFarbe;
      Canvas.Rectangle (round(100*Faktor*DFak*XNull),
                        round(100*Faktor*DFak*YNull),
                        round(100*DFak*Faktor*Xanneu2),
                        round(100*Faktor*DFak*Yanneu2));
      Hpstrich (Canvas, XNull,YNull+Breite/3,SeiteX,
                Richtung1);
      Xw := round(XNull*100*Faktor*DFak);
      Yw := round(100*Faktor*DFak*(YNull+Breite/3));
      Canvas.Moveto (Xw, Yw);
      for i := 0 to 90 do
      begin
        Winkel := i*Bo;
        Xw := round(100*Faktor*DFak*(XNull+i*SeiteX/90));
        Yw := round(100*Faktor*DFak*(YNull+Breite - cos(Winkel)*2*Breite/3));
        Canvas.Lineto (Xw, Yw);
      end; {Schleife}
      Tick := Seitex / 10;                           {X-Skala}
      Xskallin (Canvas, 18,XNull,YNull+Seitex,Seitex,9,Tick);
      Xhpschrift (Canvas, 18,RichtungS,XNull-0.1,YNull, Seitex,90,9);
      Tick := Breite/15;
      Yskallin (Canvas, 18,XNull,YNull,Breite,15,Tick);
      Yhpschrift (Canvas, 18,RichtungS,XNull-0.2,YNull,Breite,15,15);
      {Zeichnen der Kurven}
      Farben (Canvas, GrosskreisFarbe);
      for i:= 1 to ZahlGlob do
      begin
        for j := 1 to 9 do
        begin
          case j of
            1 : Talstrich[j] := T1Strich[i];
            2 : Talstrich[j] := T2Strich[i];
            3 : Talstrich[j] := T3Strich[i];
            4 : Talstrich[j] := T4Strich[i];
            5 : Talstrich[j] := T5Strich[i];
            6 : Talstrich[j] := T6Strich[i];
            7 : Talstrich[j] := T7Strich[i];
            8 : Talstrich[j] := T8Strich[i];
            9 : Talstrich[j] := T9Strich[i];
          end;
        end;
        Canvas.Font.Color := GrosskreisFarbe;
        Xw := round(100*Faktor*DFak*XNull);
        Yw := round(100*Faktor*DFak*(YNull + Breite/3));
        Canvas.Moveto (Xw, Yw);
        Canvas.Pen.Color := GrosskreisFarbe;
        for j := 1 to 8 do
        begin
          Xpkurve := Seitex*j/9;
          Xw := round(100*Faktor*DFak*(XNull+Xpkurve));
          Ypkurve := Breite*2/3*Talstrich[j];
          if YpKurve <= Breite then   //Breite
          begin
            Yw := round(100*Faktor*DFak*(YNull+Breite-Ypkurve));
            Xe := XNull + Xpkurve;
            Ye := YNull + Ypkurve;
            Canvas.Lineto (Xw, Yw);
            Xa := Xe;
            Ya := Ye;
          end
          else
          begin
            Yw := round(100*Faktor*DFak*(YNull+Breite+0.5));
            break;
          end;
        end;
        str (i,IiS);
        H := Seitex / 5;
        Xw := round(100*Faktor*DFak*(XNull+Xpkurve+Seitex/30));
        Xe := XNull + Xpkurve + Seitex/30;
        Canvas.Textout (Xw, Yw, IiS);
      end;
      X := round(Xnull*100*DFak*Faktor);
      Y := round((Ynull+Breite+Breite/10)*100*Faktor*DFak);
      Canvas.Brush.Color := clWhite;
      Canvas.Font.Color  := KoordinFarbe;
      Canvas.Font.Size   := 14;
      Canvas.Textout (X, Y, DiagNameS);
      if DemoB then
      begin
        X := round((Xnull+Kante/10)*100*Faktor*DFak);
        Y := round((Ynull+Kante/2)*100*Faktor*DFak);
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

procedure TForm55.Druckereinrichten1Click(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TForm55.SpeedEinrichtenClick(Sender: TObject);
begin
  DruckerEinrichten1Click(Sender);
end;

procedure TForm55.drucken1Click(Sender: TObject);
var
  SchriftS : string[5];
  i        : byte;
begin
  Paneldrucken.Visible         := true;
  GroupBoxDrucken.Visible      := true;
  MaskEditRdrucken.EditMask    := '999;0; ';
  MaskEditXdrucken.EditMask    := '999;0; ';
  MaskEditYdrucken.EditMask    := '999;0; ';
  MaskEditRdrucken.Text        := InttoStr(round(DruckenR*10));
  MaskEditXdrucken.Text        := InttoStr(round(DruckenX*10));
  MaskEditYdrucken.Text        := InttoStr(round(DruckenY*10));
  GroupBoxdrucken.Caption      := Tx(880);
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

procedure TForm55.SpeedDruckenClick(Sender: TObject);
begin
  drucken1Click(Sender);
end;

procedure TForm55.MaskEditUnterschriftKeyPress(Sender: TObject;
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

procedure TForm55.RadioButtonLinksClick(Sender: TObject);
begin
  BuendigS := 'Links';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    ButtonDrucken.Enabled := true;
end;

procedure TForm55.RadioButtonZentriertClick(Sender: TObject);
begin
  BuendigS := 'Zentriert';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    ButtonDrucken.Enabled := true;
end;

procedure TForm55.RadioButtonRechtsClick(Sender: TObject);
begin
  BuendigS := 'Rechts';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    ButtonDrucken.Enabled := true;
end;

procedure TForm55.ListBoxSchriftClick(Sender: TObject);
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

procedure TForm55.ButtonDruckenClick(Sender: TObject);
var
  XKoordS : string;
  YKoordS : string;
  RadiusS : string;
  Bitmap  : TBitmap;
  Fenster : TRect;
begin
  Paneldrucken.Visible         := false;
  GroupBoxDrucken.Visible      := false;
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

procedure TForm55.ButtonAbbrechenClick(Sender: TObject);
begin
  Paneldrucken.Visible         := false;
  GroupBoxDrucken.Visible      := false;
  RadioButtonlinks.Visible     := false;
  RadioButtonzentriert.Visible := false;
  RadioButtonrechts.Visible    := false;
  RadioGroup.Visible           := false;
end;

procedure TForm55.Hilfe1Click(Sender: TObject);
var
  DateiS      : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\talp5hys.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\Talpha-plot.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm55.SpeedHilfeClick(Sender: TObject);
begin
  Hilfe1Click(Sender);
end;

procedure TForm55.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Talpha.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'Talpha-E.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm55.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm55.SpeedFarbeClick(Sender: TObject);
begin
  Farbe1Click(Sender);
end;

procedure TForm55.SpeedKopierenClick(Sender: TObject);
begin
  kopieren1Click(Sender);
end;

procedure TForm55.SpeedZwischenablageClick(Sender: TObject);
begin
  AusZwischenablageHolen1Click(Sender);
end;

procedure TForm55.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm55.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

procedure TForm55.ListBoxStrichClick(Sender: TObject);
var
  i       : byte;
  StrichS : string[3];
  Datei   : TextFile;
begin
  for i := 0 to ListboxStrich.Items.Count-1 do
  begin
    if ListboxStrich.Selected[i] then
      Strich := StrToInt(ListBoxStrich.Items.Strings[i]);
  end;
  StrichS := IntToStr(Strich);
  KonfigZeileS[99] := 'Pen width (in pixel)      :,'+StrichS;
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ListBoxStrich.Visible := false;
  LabelStrich.Visible   := false;
  ButtonStartClick(Sender);
end;

procedure TForm55.SpeedStrichClick(Sender: TObject);
begin
  durchgezogen1Click(Sender);
end;

end.
