unit Unit77;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, ExtCtrls, StdCtrls, Globvar, Menus,
  Buttons, ComCtrls, Texte, Clipbrd, Basic, Mask, Plotten,
  Printers, Drucken, Shellapi, Standard, GifImage, Bmp2Tiff,
  Jpeg, ExtDlgs, ehsHelpRouter, PngImage, Grafik, WoodProg;

type
  TForm77 = class(TForm)
    Image1: TImage;
    ButtonStart: TButton;
    ButtonZuruck: TButton;
    ButtonEnde: TButton;
    MainMenu1: TMainMenu;
    Grafik: TMenuItem;
    Rahmen: TMenuItem;
    Hintergrund: TMenuItem;
    ColorDialog1: TColorDialog;
    StatusBar: TStatusBar;
    PanelSpeed: TPanel;
    SpeedRahmen: TSpeedButton;
    SpeedHintergrund: TSpeedButton;
    Koordinaten: TMenuItem;
    SpeedKoordinaten: TSpeedButton;
    Diagramm: TMenuItem;
    SpeedDiagramm: TSpeedButton;
    Symbol: TMenuItem;
    KreisOffen: TMenuItem;
    KreisGefuellt: TMenuItem;
    DreieckOffen: TMenuItem;
    DreieckGefuellt: TMenuItem;
    QuadratOffen: TMenuItem;
    QuadratGefuellt: TMenuItem;
    RauteOffen: TMenuItem;
    RauteGefuellt: TMenuItem;
    Farbe: TMenuItem;
    SpeedFarbe: TSpeedButton;
    SpeedKreisO: TSpeedButton;
    SpeedKreisG: TSpeedButton;
    SpeedDreieckO: TSpeedButton;
    SpeedDreieckG: TSpeedButton;
    SpeedQuadratO: TSpeedButton;
    SpeedQuadratG: TSpeedButton;
    SpeedRauteO: TSpeedButton;
    SpeedRauteG: TSpeedButton;
    PanelDateien: TPanel;
    ListBoxDateien: TListBox;
    kopieren: TMenuItem;
    speichern: TMenuItem;
    SaveDialog1: TSaveDialog;
    Drucker: TMenuItem;
    einrichten: TMenuItem;
    drucken: TMenuItem;
    OpenDialog1: TOpenDialog;
    PrinterSetupDialog1: TPrinterSetupDialog;
    Paneldrucken: TPanel;
    GroupBoxdrucken: TGroupBox;
    Panel7: TPanel;
    LabelLaenge: TLabel;
    MaskEditLaenge: TMaskEdit;
    Panel8: TPanel;
    LabelEcke: TLabel;
    LabelXdrucken: TLabel;
    LabelYdrucken: TLabel;
    MaskEditLinks: TMaskEdit;
    MaskEditOben: TMaskEdit;
    Panel11: TPanel;
    LabelUnterschrift: TLabel;
    LabelSchrift: TLabel;
    MaskEditUnterschrift: TMaskEdit;
    ListBoxSchrift: TListBox;
    RadioGroup: TRadioGroup;
    RadioLinks: TRadioButton;
    RadioZentriert: TRadioButton;
    RadioRechts: TRadioButton;
    LabelDateien: TLabel;
    SpeedKopieren: TSpeedButton;
    SpeedDrucken: TSpeedButton;
    Hilfe: TMenuItem;
    Handbuch: TMenuItem;
    Literatur: TMenuItem;
    SpeedHilfe: TSpeedButton;
    SpeedHandbuch: TSpeedButton;
    SpeedLiteratur: TSpeedButton;
    SpeedEinrichten: TSpeedButton;
    Auswertung: TMenuItem;
    Woodcock: TMenuItem;
    Vollmer: TMenuItem;
    SpeedWoodcock: TSpeedButton;
    SpeedVollmer: TSpeedButton;
    SpeedDFarbe: TSpeedButton;
    Numerierung: TMenuItem;
    NumJa: TMenuItem;
    NumNein: TMenuItem;
    ListBoxNum: TListBox;
    LabelNum: TLabel;
    BGroesse: TMenuItem;
    PanelGroesse: TPanel;
    LabelBHoehe: TLabel;
    LabelBBreite: TLabel;
    MaskEditBBreite: TMaskEdit;
    MaskEditBHoehe: TMaskEdit;
    CheckBoxBild: TCheckBox;
    SavePictureDialog1: TSavePictureDialog;
    SpeedNumerierung: TSpeedButton;
    SpeedKeineNum: TSpeedButton;
    SpeedBGroesse: TSpeedButton;
    ButtonDrucken: TButton;
    ButtonAbbrechen: TButton;
    SpeedSpeichern: TSpeedButton;
    FontDialog1: TFontDialog;
    Font: TMenuItem;
    SpeedFont: TSpeedButton;
    DatenSpeichern: TMenuItem;
    Dspeichern: TMenuItem;
    DspeichernUnter: TMenuItem;
    PanelDaten: TPanel;
    ListBoxDaten: TListBox;
    LabelAnzahl: TLabel;
    LabelZahl: TLabel;
    LabelDaten: TLabel;
    LabelL1: TLabel;
    LabelL2: TLabel;
    LabelL3: TLabel;
    LabelN: TLabel;
    Label1000: TLabel;
    PanelSpeichern: TPanel;
    ListBoxSpeichern: TListBox;
    ButtonSaus: TButton;
    Text: TMenuItem;
    Textschreiben: TMenuItem;
    Trueck: TMenuItem;
    PanelText: TPanel;
    LabelText: TLabel;
    LabelReturn: TLabel;
    MaskEditText: TMaskEdit;
    PanelPlazieren: TPanel;
    LabelPlazieren: TLabel;
    SpeedUnText: TSpeedButton;
    SpeedText: TSpeedButton;
    procedure FormActivate(Sender: TObject);
    procedure ButtonStartClick(Sender: TObject);
    procedure ButtonZuruckClick(Sender: TObject);
    procedure ButtonEndeClick(Sender: TObject);
    procedure RahmenClick(Sender: TObject);
    procedure HintergrundClick(Sender: TObject);
    procedure SpeedRahmenClick(Sender: TObject);
    procedure SpeedHintergrundClick(Sender: TObject);
    procedure KoordinatenClick(Sender: TObject);
    procedure SpeedKoordinatenClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ShowHint (Sender: TObject);
    procedure DiagrammClick(Sender: TObject);
    procedure SpeedDiagrammClick(Sender: TObject);
    procedure KreisOffenClick(Sender: TObject);
    procedure KreisGefuelltClick(Sender: TObject);
    procedure DreieckOffenClick(Sender: TObject);
    procedure DreieckGefuelltClick(Sender: TObject);
    procedure QuadratOffenClick(Sender: TObject);
    procedure QuadratGefuelltClick(Sender: TObject);
    procedure RauteOffenClick(Sender: TObject);
    procedure RauteGefuelltClick(Sender: TObject);
    procedure FarbeClick(Sender: TObject);
    procedure SpeedFarbeClick(Sender: TObject);
    procedure SpeedKreisOClick(Sender: TObject);
    procedure SpeedKreisGClick(Sender: TObject);
    procedure SpeedDreieckOClick(Sender: TObject);
    procedure SpeedDreieckGClick(Sender: TObject);
    procedure SpeedQuadratOClick(Sender: TObject);
    procedure SpeedQuadratGClick(Sender: TObject);
    procedure SpeedRauteOClick(Sender: TObject);
    procedure SpeedRauteGClick(Sender: TObject);
    procedure kopierenClick(Sender: TObject);
    procedure einrichtenClick(Sender: TObject);
    procedure druckenClick(Sender: TObject);
    procedure ListBoxSchriftClick(Sender: TObject);
    procedure RadioLinksClick(Sender: TObject);
    procedure RadioZentriertClick(Sender: TObject);
    procedure RadioRechtsClick(Sender: TObject);
    procedure MaskEditUnterschriftKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedKopierenClick(Sender: TObject);
    procedure SpeedDruckenClick(Sender: TObject);
    procedure HilfeClick(Sender: TObject);
    procedure HandbuchClick(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
    procedure SpeedHilfeClick(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure SpeedLiteraturClick(Sender: TObject);
    procedure SpeedEinrichtenClick(Sender: TObject);
    procedure WoodcockClick(Sender: TObject);
    procedure VollmerClick(Sender: TObject);
    procedure SpeedWoodcockClick(Sender: TObject);
    procedure SpeedVollmerClick(Sender: TObject);
    procedure SpeedDFarbeClick(Sender: TObject);
    procedure NumJaClick(Sender: TObject);
    procedure NumNeinClick(Sender: TObject);
    procedure ListBoxNumClick(Sender: TObject);
    procedure BGroesseClick(Sender: TObject);
    procedure MaskEditBBreiteKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditBHoeheKeyPress(Sender: TObject; var Key: Char);
    procedure CheckBoxBildClick(Sender: TObject);
    procedure ButtonDruckenClick(Sender: TObject);
    procedure ButtonAbbrechenClick(Sender: TObject);
    procedure speichernClick(Sender: TObject);
    procedure ListBoxSpeichernClick(Sender: TObject);
    procedure SpeedSpeichernClick(Sender: TObject);
    procedure FontClick(Sender: TObject);
    procedure SpeedFontClick(Sender: TObject);
    procedure DspeichernClick(Sender: TObject);
    procedure DspeichernUnterClick(Sender: TObject);
    procedure ButtonSausClick(Sender: TObject);
    procedure TextschreibenClick(Sender: TObject);
    procedure TrueckClick(Sender: TObject);
    procedure MaskEditTextKeyPress(Sender: TObject; var Key: Char);
    procedure Image1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SpeedTextClick(Sender: TObject);
    procedure SpeedUnTextClick(Sender: TObject);
    procedure MaskEditLaengeChange(Sender: TObject);
    procedure MaskEditLinksChange(Sender: TObject);
    procedure MaskEditObenChange(Sender: TObject);
end;

var
  Form77      : TForm77;
  CurrentFile : string;
  HolZwischen : boolean;
  HolDatei    : boolean;
  TextS       : string;
  Gedrueckt   : array[1..3] of boolean;
  BuendigS    : string;
  BHoeheSt    : word;
  Ratio       : real;
  DNameS      : string;
  Bild        : TBitmap;
  TeS         : string;
  BText       : boolean;
  TextBitmap  : array[1..10] of TBitmap;
  texti       : byte;

implementation

uses Unit43, Unit44, Unit45, Unit47;
{$R *.DFM}

procedure TForm77.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm77.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm77.FormActivate(Sender: TObject);
var
  i : byte;
begin
  Width  := WidDiag;
  Height := HeiDiag;
  Left   := LeftDiag + 2*ULap;
  Top    := TopDiag + 2*ULap;
  Image1.Width   := 600;
  Image1.Height  := 600;
  Form77.Caption := Tx(1515)+', Plot';
  setlength (Lambda1, MaxDaten);
  setlength (Lambda2, MaxDaten);
  setlength (Lambda3, MaxDaten);
  setlength (ZahlEinzel, Maxdaten);
  WeiterB[77] := false;
  SpeedKoordinaten.Hint   := Hilf(444);
  SpeedRahmen.Hint        := Hilf(442);
  SpeedHintergrund.Hint   := Hilf(443);
  SpeedKreisO.Hint        := Hilf(371);
  SpeedKreisG.Hint        := Hilf(372);
  SpeedDreieckO.Hint      := Hilf(373);
  SpeedDreieckG.Hint      := Hilf(374);
  SpeedQuadratO.Hint      := Hilf(375);
  SpeedQuadratG.Hint      := Hilf(376);
  SpeedRauteO.Hint        := Hilf(377);
  SpeedRauteG.Hint        := Hilf(378);
  SpeedFarbe.Hint         := Hilf(365);
  SpeedDrucken.Hint       := Hilf(309);
  SpeedKopieren.Hint      := Hilf(262);
  SpeedDiagramm.Hint      := Hilf(441);
  SpeedHilfe.Hint         := Hilf(210);
  SpeedHandbuch.Hint      := Hilf(274);
  SpeedLiteratur.Hint     := Hilf(462);
  SpeedEinrichten.Hint    := Hilf(505);
  SpeedWoodcock.Hint      := Hilf(517);
  SpeedVollmer.Hint       := Hilf(516);
  SpeedDFarbe.Hint        := Hilf(441);
  SpeedNumerierung.Hint   := Hilf(592);
  SpeedKeineNum.Hint      := Hilf(593);
  SpeedBGroesse.Hint      := Hilf(583);
  SpeedSpeichern.Hint     := Hilf(264);
  SpeedFont.Hint          := Hilf(686);
  SpeedText.Hint          := Hilf(729);
  SpeedUnText.Hint        := Hilf(730);
  Speichern.Caption       := Tx(87);
  ButtonZuruck.Caption    := Tx(30);
  ButtonEnde.Caption      := Tx(53);
  LabelDateien.Caption    := Tx(136);
  Farbe.Caption           := Tx(275);
  Grafik.Caption          := Tx(281);
  kopieren.Caption        := Tx(282);
  Koordinaten.Caption     := Tx(729);
  Diagramm.Caption        := Tx(860);
  Rahmen.Caption          := Tx(892);
  Hintergrund.Caption     := Tx(856);
  Drucker.Caption         := Tx(1080);
  einrichten.Caption      := Tx(94);
  drucken.Caption         := Tx(93);
  Symbol.Caption          := Tx(720);
  KreisOffen.Caption      := Tx(262);
  KreisGefuellt.Caption   := Tx(263);
  DreieckOffen.Caption    := Tx(266);
  DreieckGefuellt.Caption := Tx(267);
  QuadratOffen.Caption    := Tx(264 );
  QuadratGefuellt.Caption := Tx(265);
  RauteOffen.Caption      := Tx(268);
  RauteGefuellt.Caption   := Tx(269);
  Hilfe.Caption           := Tx(162)+' (F1)';
  Handbuch.Caption        := Tx(1055)+' (F2)';
  Literatur.Caption       := Tx(1183)+' (F5)';
  Auswertung.Caption      := TX(1341);
  Woodcock.Caption        := Tx(23);
  Vollmer.Caption         := Tx(24);
  Font.Caption            := Tx(1621);
  DatenSpeichern.Caption  := Tx(86);
  Dspeichern.Caption      := Tx(87);
  DspeichernUnter.Caption := Tx(88); 
  LabelDaten.Caption      := Tx(914);
  LabelAnzahl.Caption     := Tx(181);
  ButtonSaus.Caption      := Tx(1682);
  Textschreiben.Caption   := Tx(1699);
  LabelText.Caption       := Tx(1700);
  LabelReturn.Caption     := Tx(1701);
  LabelPlazieren.Caption  := Tx(1702);
  Trueck.Caption          := Tx(1688);
  LabelZahl.Caption       := '';
  PanelSpeed.Visible      := false;
  RadioGroup.Visible      := false;
  RadioLinks.Visible      := false;
  RadioZentriert.Visible  := false;
  RadioRechts.Visible     := false;
  Farbe.Enabled           := false;
  Symbol.Enabled          := false;
  Grafik.Enabled          := false;
  Auswertung.Enabled      := false;
  SpeedWoodcock.Enabled   := false;
  SpeedVollmer.Enabled    := false;
  PanelDateien.Visible    := false;
  PanelDaten.Visible      := false;
  Font.Enabled            := false;
  DatenSpeichern.Enabled  := false;
  Numerierung.Enabled := false;
  Num := false;
  for i := 4 to 20 do ListboxNum.Items.Add(IntToStr(i));
  ListBoxNum.Visible  := false;
  LabelNum.Visible    := false;
  NumJa.Caption       := Tx(655);
  NumNein.Caption     := Tx(654);
  LabelNum.Caption    := Tx(888);
  Numerierung.Caption := Tx(1387);
  MaskEditBBreite.EditMask := '99999;0; ';
  MaskEditBHoehe.EditMask  := '99999;0; ';
  LabelBBreite.Caption     := Tx(1440);
  LabelBHoehe.Caption      := Tx(1441);
  BGroesse.Caption         := Tx(1439);
  PanelGroesse.Visible     := false;
  Ratio                    := 620/620;
  for i := 1 to 7 do
    ListBoxSpeichern.Items.Add (Tx(1611+i));
  PanelSpeichern.Visible := false;
  if WeiterF then
  begin
    ButtonStart.Visible := false;
    ButtonEnde.Visible  := false;
    ButtonStartClick(Sender);
  end
  else
  begin
    ButtonStart.Visible := true;
    ButtonEnde.Visible  := true;
  end;
  PanelText.Visible   := false;
  BText               := false;
  texti               := 0;
  Trueck.Enabled      := false;
  SpeedUnText.Enabled := false;
end;

procedure TForm77.ButtonStartClick(Sender: TObject);
var
  DistX  : real;
  DistY  : real;
  i      : word;
  X, Y   : word;
  l      : real;
  Unten  : word;
  Rechts : word;
  Koor   : word;
  Quot   : real;
  Bitmap : TBitmap;
  Rahmen : TRect;
  ZeileS : string;
begin
  BHoeheSt := round(BBreiteST/Ratio);
  Farbe.Enabled           := true;
  Symbol.Enabled          := true;
  Grafik.Enabled          := true;
  Font.Enabled            := true;
  DatenSpeichern.Enabled  := true;
  if not WeiterF then
  begin
    Auswertung.Enabled    := true;
    SpeedWoodcock.Enabled := true;
    SpeedVollmer.Enabled  := true;
  end;
  ListBoxDateien.Clear;
  for i := 0 to DateiZahl do
    ListboxDateien.Items.Add(DateiNameS[i]);
  ListBoxDaten.Clear;
  for i := 1 to ZahlGlob do
  begin
    ZeileS := '   '+RightS('000'+IntToStr(Lambda1[i]),3)+'     '
                   +RightS('000'+IntToStr(Lambda2[i]),3)+'     '
                   +RightS('000'+IntToStr(Lambda3[i]),3)+'     '
                   +RightS('0000'+IntToStr(ZahlEinzel[i]),4);
    ListBoxDaten.Items.Add(ZeileS);
  end;
  LabelZahl.Caption    := IntToStr(ZahlGlob);
  PanelSpeed.Visible   := true;
  PanelDateien.Visible := true;
  PanelDaten.Visible   := true;
  Unten  := Image1.Height;
  Rechts := Image1.Width;
  Koor   := 30;
  DistX := (Rechts-2*Koor)/ln(1000);
  DistY := (Unten-2*Koor)/ln(100);
  Bitmap := Tbitmap.create;
  try
    if SpracheS = 'DEUTSCH' then
      Bitmap.LoadFromFile(DirectS+'\'+'SignifikanzD.bmp');
    if SpracheS = 'ENGLISH' then
      Bitmap.LoadFromFile(DirectS+'\'+'SignifikanzE.bmp');
    Rahmen := Rect(Koor+10,Koor,Rechts-Koor,Unten-Koor-10);
    Bitmap.Transparent := true;
    with Image1.Canvas do
    begin
      Font.Name   :='Times New Roman';
      Font.Size   := 10;
      Pen.Color   := RahmenFarbe;
      Brush.Color := HintFarbe;
      Rectangle (0,0,Rechts, Unten);
      Pen.Color   := KoordinFarbe;
      Brush.Color := DiagrFarbe;
      Rectangle (Koor,Koor,Rechts-Koor+1,Unten-Koor+1);
      Brush.Color := HintFarbe;
      Font.Color  := KoordinFarbe;
      StretchDraw (Rahmen, Bitmap);
      l := 0.1;
      for i := 1 to 4 do
      begin
        l := l* 10;
        X := Koor+round(ln(l)*DistX);
        moveto (X,Unten-Koor);
        lineto (X,Unten-Koor-15);
        textout (X-5,Unten-Koor+5,IntToStr(round(l)));
      end;
      l := 0.1;
      for i := 1 to 3 do
      begin
        l := l*10;
        Y := Unten-Koor - round(ln(l)*DistY);
        moveto (Koor,Y);
        lineto (Koor+15,Y);
        textout (Koor-25,Y,IntToStr(round(l)));
      end;
      Brush.Color := DiagrFarbe;
      Font.Name   := 'Symbol';
      Font.Size   := 14;
      textout(Koor+5,Koor+3,'l');
      Font.Size   := 10;
      Textout(PenPos.x,PenPos.y+8,'3');
      Font.Size   := 14;
      textout(PenPos.x,PenPos.Y-8,'/l');
      Font.Size   := 10;
      textout(PenPos.x,PenPos.y+8,'1');
      Font.Name   := 'Times New Roman';
      Font.Size   := 14;
      Brush.Color := HintFarbe;
      textout(Rechts-180,Unten-25,Tx(1221)+' '+Tx(1222));
      Pen.Color := DatenFarbe;
      if LeftS(Datensymbol,4) = 'Open' then Brush.Color := DiagrFarbe
      else Brush.Color := DatenFarbe;
      Numerierung.Enabled := true;
      for i := 1 to ZahlGlob do
      begin
        Quot := ln(Lambda3[i]/Lambda1[i]);
        X    := Koor+round(ln(ZahlEinzel[i])*DistX);
        Y    := Unten-Koor-round(Quot*DistY);
        if RightS(DatenSymbol,6) = 'Circle' then Ellipse (X-4,Y-4,X+4,Y+4);
        if RightS(DatenSymbol,6) = 'Square' then Rectangle (X-4,Y-4,X+4,Y+4);
        if RightS(Datensymbol,8) = 'Triangle' then Polygon([Point(X,Y-4),
                                                   Point(X-4,Y+4),
                                                   Point(X+4,Y+4)]);
        if RightS(DatenSymbol,7) = 'Diamond' then Polygon ([Point(X,Y-4),
                                                   Point(X+4,Y),
                                                   Point(X,Y+4),
                                                   Point(X-4,Y)]);
        if Num then
        begin
          Pen.Color   := clBlack;
          Font.Name   := 'TimesNewRoman';
          Font.Size   := NumSchrift;
          Brush.Color := DiagrFarbe;
          Textout(X+6,Y-5,IntToStr(i));
          Pen.Color   := DatenFarbe;
          Brush.Color := DatenFarbe;
        end;
      end;
    end;
  finally
    Bitmap.free;
  end;
  HintFarbe := DiagrFarbe;
  if DemoB then DemoText (Image1.Canvas,35,Image1.Height-65);
end;

procedure TForm77.ButtonZuruckClick(Sender: TObject);
var
  Flaeche : TRect;
begin
  Flaeche := Rect(0,0,Clientwidth,ClientHeight);
  Loeschen (Image1.Canvas, Flaeche);
  if not WeiterF then
  begin
    Lambda1 := Nil;
    Lambda2 := Nil;
    Lambda3 := Nil;
    ZahlEinzel := Nil;
  end;
  Form77.Close;
end;

procedure TForm77.ButtonEndeClick(Sender: TObject);
var
  Flaeche : TRect;
begin
  Flaeche := Rect(0,0,Clientwidth,ClientHeight);
  Loeschen (Image1.Canvas, Flaeche);
  Form77.Close;
  if EingabeS = 'manuell' then Form43.Close;
  if EingabeS = 'Festplatte' then Form44.Close;
end;

procedure TForm77.KoordinatenClick(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  Farbe := clWhite;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS       := ColorToString (Farbe);
  KoordinFarbe := StringToColor(FarbeS);
  KonfigZeileS[28] := 'Colour of Coordinates      :,'+FarbeS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick (Sender);
end;

procedure TForm77.SpeedKoordinatenClick(Sender: TObject);
begin
  KoordinatenClick(Sender);
end;

procedure TForm77.DiagrammClick(Sender: TObject);
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

procedure TForm77.SpeedDFarbeClick(Sender: TObject);
begin
  DiagrammClick(Sender);
end;


procedure TForm77.SpeedDiagrammClick(Sender: TObject);
begin
  DiagrammClick(Sender);
end;

procedure TForm77.RahmenClick(Sender: TObject);
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

procedure TForm77.SpeedRahmenClick(Sender: TObject);
begin
  RahmenClick(Sender);
end;

procedure TForm77.HintergrundClick(Sender: TObject);
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
  ButtonStartClick (Sender);
end;

procedure TForm77.SpeedHintergrundClick(Sender: TObject);
begin
  HintergrundClick(Sender);
end;

procedure TForm77.KreisOffenClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  DatenSymbol   := 'OpenCircle';
  KonfigZeileS[9] := '  Data Symbol              :,OpenCircle';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm77.KreisGefuelltClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  DatenSymbol := 'FilledCircle';
  KonfigZeileS[9] := '  Data Symbol              :,FilledCircle';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm77.DreieckOffenClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  Datensymbol := 'OpenTriangle';
  KonfigZeileS[9] := '  Data Symbol              :,OpenTriangle';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm77.DreieckGefuelltClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  DatenSymbol   := 'FilledTriangle';
  KonfigZeileS[9] := '  Data Symbol              :,FilledTriangle';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm77.QuadratOffenClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  DatenSymbol := 'OpenSquare';
  KonfigZeileS[9] := '  Data Symbol              :,OpenSquare';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm77.QuadratGefuelltClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  DatenSymbol := 'FilledSquare';
  KonfigZeileS[9] := '  Data Symbol              :,FilledSquare';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm77.RauteOffenClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  DatenSymbol   := 'OpenDiamond';
  KonfigZeileS[9] := '  Data Symbol              :,OpenDiamond';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm77.RauteGefuelltClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  DatenSymbol   := 'FilledDiamond';
  KonfigZeileS[9] := '  Data Symbol              :,FilledDiamond';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm77.FarbeClick(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  Farbe         := clWhite;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS := ColorToString (Farbe);
  DatenFarbe      := StringToColor(FarbeS);
  KonfigZeileS[7] := '  Colour of Data Points    :,'+FarbeS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick (Sender);
end;

procedure TForm77.SpeedFarbeClick(Sender: TObject);
begin
  FarbeClick(Sender);
end;

procedure TForm77.SpeedKreisOClick(Sender: TObject);
begin
  KreisOffenClick(Sender);
end;

procedure TForm77.SpeedKreisGClick(Sender: TObject);
begin
  KreisGefuelltClick(Sender);
end;

procedure TForm77.SpeedDreieckOClick(Sender: TObject);
begin
  DreieckOffenClick(Sender);
end;

procedure TForm77.SpeedDreieckGClick(Sender: TObject);
begin
  DreieckGefuelltClick(Sender);
end;

procedure TForm77.SpeedQuadratOClick(Sender: TObject);
begin
  QuadratOffenClick(Sender);
end;

procedure TForm77.SpeedQuadratGClick(Sender: TObject);
begin
  QuadratGefuelltClick(Sender);
end;

procedure TForm77.SpeedRauteOClick(Sender: TObject);
begin
  RauteOffenClick(Sender);
end;

procedure TForm77.SpeedRauteGClick(Sender: TObject);
begin
  RauteGefuelltClick(Sender);
end;

procedure TForm77.FontClick(Sender: TObject);
begin
  WaehlFont(FontDialog1);
end;

procedure TForm77.SpeedFontClick(Sender: TObject);
begin
  FontClick(Sender);
end;

procedure TForm77.BGroesseClick(Sender: TObject);
begin
  PanelGroesse.Visible    := true;
  CheckBoxBild.State      := cbUnchecked;
  MaskEditBBreite.Text    := IntTostr(BBreiteSt);
  MaskEditBHoehe.Text     := IntToStr(BHoeheSt);
end;

procedure TForm77.MaskEditBBreiteKeyPress(Sender: TObject; var Key: Char);
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

procedure TForm77.MaskEditBHoeheKeyPress(Sender: TObject; var Key: Char);
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

procedure TForm77.CheckBoxBildClick(Sender: TObject);
begin
  PanelGroesse.Visible := false;
end;

procedure TForm77.kopierenClick(Sender: TObject);
begin
  ClipBoard.Assign (Image1.Picture);
end;

procedure TForm77.speichernClick(Sender: TObject);
begin
  PanelSpeichern.Visible := true;
end;

procedure TForm77.SpeedSpeichernClick(Sender: TObject);
begin
  speichernClick(Sender);
end;

procedure TForm77.ButtonSausClick(Sender: TObject);
begin
  PanelSpeichern.Visible := false;
end;

procedure TForm77.ListBoxSpeichernClick(Sender: TObject);
begin
  GrafikSpeichern (Image1, ListBoxSpeichern, Ratio,
                   SavePictureDialog1, SaveDialog1);
  PanelSpeichern.Visible := false;
end;

procedure TForm77.einrichtenClick(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TForm77.SpeedEinrichtenClick(Sender: TObject);
begin
  einrichtenClick(Sender);
end;


procedure TForm77.druckenClick(Sender: TObject);
var
  SchriftS : string[5];
  i        : byte;
begin
  Paneldrucken.Visible      := true;
  GroupBoxDrucken.Visible   := true;
  RadioLinks.Visible        := true;
  RadioZentriert.Visible    := true;
  RadioRechts.Visible       := true;
  RadioGroup.Visible        := true;
  MaskEditLaenge.EditMask   := '99;0; ';
  MaskEditLinks.EditMask    := '99;0; ';
  MaskEditOben.EditMask     := '99;0; ';
  MaskEditLaenge.Text       := InttoStr(BLaenge);
  MaskEditLinks.Text        := InttoStr(BLinks);
  MaskEditOben.Text         := InttoStr(BOben);
  GroupBoxdrucken.Caption   := Tx(880);
  LabelLaenge.Caption       := Tx(1764);
  LabelEcke.Caption         := Tx(1274);
  LabelXdrucken.Caption     := Tx(885);
  LabelYdrucken.Caption     := Tx(886);
  ButtonDrucken.Caption     := Tx(881);
  ButtonAbbrechen.Caption   := Tx(882);
  LabelUnterschrift.Caption := Tx(887);
  LabelSchrift.Caption      := Tx(888);
  RadioLinks.Caption        := Tx(889);
  RadioZentriert.Caption    := Tx(890);
  RadioRechts.Caption       := Tx(891);
  ButtonDrucken.Enabled     := false;
  i                         := 3;
  repeat
    i := i + 1;
    str(i, SchriftS);
    ListBoxSchrift.Items.Add (SchriftS);
  until i = 40;
  MaskEditUnterschrift.SetFocus;
end;

procedure TForm77.MaskEditLaengeChange(Sender: TObject);
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

procedure TForm77.MaskEditLinksChange(Sender: TObject);
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

procedure TForm77.MaskEditObenChange(Sender: TObject);
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

procedure TForm77.ButtonDruckenClick(Sender: TObject);
var
  Bitmap  : TBitmap;
  Fenster : TRect;
  LRand   : word;
  ORand   : word;
  PLaenge : word;
  Hoehe   : word;
  Anfang  : word;
  Links   : word;
  Laenge  : word;
begin
  Anfang  := 0;
  Links   := StrToInt(MaskEditLinks.Text);
  LRand   := round(Links*Printer.PageWidth/100);
  Oben    := StrToInt(MaskEditOben.Text);
  ORand   := round(Oben*Printer.PageHeight/100);
  Laenge  := StrToInt(MaskEditLaenge.Text);
  PLaenge := round(Laenge*Printer.Pagewidth/100);
  Hoehe   := round(PLaenge*Image1.Height/Image1.Width);;
  with Fenster do
  begin
    Left   := LRand;
    Top    := ORand;
    Right  := LRand + PLaenge;
    Bottom := ORand + Hoehe;
  end;
  Bitmap:=TBitmap.Create;
  try
    Bitmap.Assign(Image1.picture.graphic);
    with Printer do
    begin
      Canvas.Font.Size  := Schrift;
      Canvas.Font.Name  := Dschrift;
      Canvas.Font.Color := clBlack;
      BeginDoc;
        Canvas.StretchDraw(Fenster,Bitmap);
        if BuendigS = 'Links' then Anfang := Fenster.Left;
        if BuendigS = 'Zentriert' then
          Anfang := Fenster.Left + ((Fenster.Right-Fenster.Left) div 2) - (Printer.Canvas.TextWidth(TextS) div 2);
        if BuendigS = 'Rechts' then Anfang := Fenster.Right - Printer.Canvas.TextWidth(TextS);
        Canvas.Textout (Anfang,Fenster.Bottom+5, TextS);
      EndDoc;
    end;
  finally
    Bitmap.free;
  end;
  GroupBoxDrucken.Visible := false;
  PanelDrucken.Visible    := false;
  RadioGroup.Visible      := false;
  RadioLinks.Visible      := false;
  RadioRechts.Visible     := false;
  RadioZentriert.Visible  := false;
end;

procedure TForm77.ButtonAbbrechenClick(Sender: TObject);
begin
  Paneldrucken.Visible   := false;
  RadioLinks.Visible     := false;
  RadioZentriert.Visible := false;
  RadioRechts.Visible    := false;
  RadioGroup.Visible     := false;
end;

procedure TForm77.MaskEditUnterschriftKeyPress(Sender: TObject;
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

procedure TForm77.ListBoxSchriftClick(Sender: TObject);
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

procedure TForm77.RadioLinksClick(Sender: TObject);
begin
  BuendigS := 'Links';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    ButtonDrucken.Enabled := true;
end;

procedure TForm77.RadioZentriertClick(Sender: TObject);
begin
  BuendigS := 'Zentriert';
  Gedrueckt[3] := true;
  if (Gedrueckt[3] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    ButtonDrucken.Enabled := true;
end;

procedure TForm77.RadioRechtsClick(Sender: TObject);
begin
  BuendigS := 'Rechts';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    ButtonDrucken.Enabled := true;
end;

procedure TForm77.SpeedKopierenClick(Sender: TObject);
begin
  kopierenClick(Sender);
end;

procedure TForm77.SpeedDruckenClick(Sender: TObject);
begin
  druckenClick(Sender);
end;

procedure TForm77.TextschreibenClick(Sender: TObject);
begin
  PanelText.Visible := true;
  MaskEditText.SetFocus;
  BText := true;
  MaskEditText.Clear;
  PanelPlazieren.Visible := false;
end;

procedure TForm77.SpeedTextClick(Sender: TObject);
begin
  TextschreibenClick(Sender);
end;

procedure TForm77.MaskEditTextKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(13) then
  begin
    TeS := MaskEditText.Text;
    PanelPlazieren.Visible := true;
  end;
end;

procedure TForm77.Image1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if BText then
  begin
    inc (texti);
    TextBitmap[texti] := Tbitmap.Create;
    TextBitmap[texti].Assign(Image1.Picture);
    with Image1.Canvas do
    begin
      Brush.Color := DiagrFarbe;
      Font.Name   := DSchrift;
      Font.Size   := DGroesse;
      Font.Color  := DFarbe;
      Font.Style  := DStyle;
    end;
    Image1.Canvas.TextOut(x,y,TeS);
    PanelText.Visible   := false;
    BText               := false;
    Trueck.Enabled      := true;
    SpeedUnText.Enabled := true;
  end;
end;

procedure TForm77.TrueckClick(Sender: TObject);
begin
  Image1.Canvas.Draw (0,0,TextBitmap[texti]);
  if texti >= 1 then
  begin
    TextBitmap[texti].free;
    Dec(texti);
  end;
  if texti = 0 then
  begin
    Trueck.Enabled      := false;
    SpeedUnText.Enabled := false;
  end;  
end;

procedure TForm77.SpeedUnTextClick(Sender: TObject);
begin
  TrueckClick(Sender);
end;

procedure TForm77.HilfeClick(Sender: TObject);
const
  Anfang = 251;
var
  DateiS      : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\77Signifikanz-plot.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\77Significance-plot.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm77.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Signifikanztest.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'Test_of_Significance.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm77.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm77.SpeedHilfeClick(Sender: TObject);
begin
  HilfeClick(Sender);
end;

procedure TForm77.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm77.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

procedure TForm77.DspeichernClick(Sender: TObject);
begin
  if CurrentFile <> '' then WSchreiben (CurrentFile, Anzahl,
     Lambda1, Lambda2, Lambda3, ZahlEinzel)
  else DspeichernUnterClick(Sender);
end;

procedure TForm77.DspeichernUnterClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := ExtenS;
  SaveDialog1.Filter     := 'Eigenvalues (*.woo)|*.WOO';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    WSchreiben (CurrentFile, ZahlGlob, Lambda1, Lambda2,
                Lambda3, ZahlEinzel);
  end;
end;

procedure TForm77.WoodcockClick(Sender: TObject);
begin
  WeiterB[77] := true;
  Application.CreateForm(TForm45, Form45);
  Form45.Show;
end;

procedure TForm77.SpeedWoodcockClick(Sender: TObject);
begin
  WoodcockClick(Sender);
end;

procedure TForm77.VollmerClick(Sender: TObject);
begin
  WeiterB[77] := true;
  Application.CreateForm(TForm47, Form47);
  Form47.Show;
end;

procedure TForm77.SpeedVollmerClick(Sender: TObject);
begin
  VollmerClick(Sender);
end;

procedure TForm77.NumJaClick(Sender: TObject);
begin
  Num := true;
  ListBoxNum.Visible := true;
  LabelNum.Visible   := true;
end;

procedure TForm77.NumNeinClick(Sender: TObject);
begin
  Num := false;
  ButtonStartClick(Sender);
end;


procedure TForm77.ListBoxNumClick(Sender: TObject);
var
  i       : byte;
begin
  for i := 0 to ListboxNum.Items.Count-1 do
  begin
    if ListboxNum.Selected[i] then
      NumSchrift := StrToInt(ListBoxNum.Items.Strings[i]);
  end;
  ListBoxNum.Visible := false;
  LabelNum.Visible   := false;
  ButtonStartClick(Sender);
end;

end.
