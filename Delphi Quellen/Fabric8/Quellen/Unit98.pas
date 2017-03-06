unit Unit98;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, ComCtrls, StdCtrls, ExtCtrls, Globvar,
  Texte, Plotten, Basic, Math, Menus, Buttons, Mask, Standard,
  Clipbrd, GifImage, Bmp2Tiff, ReadTiff, Jpeg, ExtDlgs, Printers,
  Drucken, Shellapi, ehsHelpRouter, PngImage, Grafik;

type
  TForm98 = class(TForm)
    StatusBar: TStatusBar;
    ImageFlinn: TImage;
    ImageHsu: TImage;
    LabelFlinn: TLabel;
    LabelHsu: TLabel;
    ButtonStart: TButton;
    ButtonZurueck: TButton;
    ButtonBeenden: TButton;
    MainMenu1: TMainMenu;
    Skalierung: TMenuItem;
    linear: TMenuItem;
    Logarithmisch: TMenuItem;
    Symbole: TMenuItem;
    KreisO: TMenuItem;
    KreisG: TMenuItem;
    DreieckO: TMenuItem;
    DreieckG: TMenuItem;
    QuadratO: TMenuItem;
    QuadratG: TMenuItem;
    RauteO: TMenuItem;
    RauteG: TMenuItem;
    PanelSpeed: TPanel;
    SpeedLinear: TSpeedButton;
    SpeedLogar: TSpeedButton;
    SpeedKreisO: TSpeedButton;
    SpeedKreisG: TSpeedButton;
    SpeedDreieckO: TSpeedButton;
    SpeedDreieckG: TSpeedButton;
    SpeedQuadratO: TSpeedButton;
    SpeedQuadratG: TSpeedButton;
    SpeedRauteO: TSpeedButton;
    SpeedRauteG: TSpeedButton;
    GrafikF: TMenuItem;
    GrafikH: TMenuItem;
    LabelF: TLabel;
    BildF: TMenuItem;
    PanelFlGroesse: TPanel;
    LabelFlBHoehe: TLabel;
    LabelFlBBreite: TLabel;
    MaskEditBBreiteFL: TMaskEdit;
    MaskEditBHoeheFl: TMaskEdit;
    CheckBoxFlBild: TCheckBox;
    Flkopieren: TMenuItem;
    Flspeichern: TMenuItem;
    SaveDialog1: TSaveDialog;
    FlHintergrund: TMenuItem;
    FlTransparent: TMenuItem;
    FlFarbe: TMenuItem;
    ColorDialog1: TColorDialog;
    SavePictureDialog1: TSavePictureDialog;
    BildH: TMenuItem;
    PanelHsGroesse: TPanel;
    LabelHsBBreite: TLabel;
    LabelHsBHoehe: TLabel;
    MaskEditBHoeheHs: TMaskEdit;
    MaskEditBBreiteHs: TMaskEdit;
    CheckBoxHsBild: TCheckBox;
    HsHintergrund: TMenuItem;
    HsTransparent: TMenuItem;
    HsFarbe: TMenuItem;
    Hskopieren: TMenuItem;
    HsSpeichern: TMenuItem;
    Farben: TMenuItem;
    FarbeKoord: TMenuItem;
    FarbeDaten: TMenuItem;
    FarbeDiagr: TMenuItem;
    FarbeRahmen: TMenuItem;
    PanelDrucken: TPanel;
    GroupBoxDrucken: TGroupBox;
    Panel2: TPanel;
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
    ButtonDrucken: TButton;
    ButtonAbbrechen: TButton;
    FlDrucker: TMenuItem;
    FlEinrichten: TMenuItem;
    PrinterSetupDialog1: TPrinterSetupDialog;
    PrintDialog1: TPrintDialog;
    FlDrucken: TMenuItem;
    HsDrucker: TMenuItem;
    HsEinrichten: TMenuItem;
    HsDrucken: TMenuItem;
    Hilfe: TMenuItem;
    Handbuch: TMenuItem;
    Literatur: TMenuItem;
    LabelSHsu: TLabel;
    SpeedFlBGroesse: TSpeedButton;
    SpeedFlEinrichten: TSpeedButton;
    SpeedFlDrucken: TSpeedButton;
    SpeedFarbeDat: TSpeedButton;
    SpeedFarbeKoord: TSpeedButton;
    SpeedFarbeDiagr: TSpeedButton;
    SpeedFarbeRahmen: TSpeedButton;
    SpeedFlTransparent: TSpeedButton;
    SpeedFlHFarbe: TSpeedButton;
    SpeedFlKopieren: TSpeedButton;
    SpeedHsBGroesse: TSpeedButton;
    SpeedHsTransparent: TSpeedButton;
    SpeedHsFarbe: TSpeedButton;
    SpeedHsKopieren: TSpeedButton;
    SpeedHsDrucken: TSpeedButton;
    SpeedHsEinrichten: TSpeedButton;
    SpeedHilfe: TSpeedButton;
    SpeedHandbuch: TSpeedButton;
    SpeedLiteratur: TSpeedButton;
    SpeedFlspeichern: TSpeedButton;
    SpeedHsspeichern: TSpeedButton;
    FontDialog1: TFontDialog;
    Font: TMenuItem;
    SpeedFont: TSpeedButton;
    PanelDaten: TPanel;
    LabelDaten: TLabel;
    LabelXYZ: TLabel;
    ListBoxDaten: TListBox;
    Labele1e2e3: TLabel;
    ListBoxElon: TListBox;
    PanelDateien: TPanel;
    ListBoxDateien: TListBox;
    LabelDateien: TLabel;
    PanelFlinn: TPanel;
    ListBoxFlinn: TListBox;
    ButtonFaus: TButton;
    PanelHsu: TPanel;
    ListBoxHsu: TListBox;
    ButtonHaus: TButton;
    Text: TMenuItem;
    Textschreiben: TMenuItem;
    TextFlinn: TMenuItem;
    TextHsu: TMenuItem;
    Trueck: TMenuItem;
    RueckFlinn: TMenuItem;
    RueckHsu: TMenuItem;
    PanelTextFl: TPanel;
    LabelText: TLabel;
    LabelReturn: TLabel;
    MaskEditTextFl: TMaskEdit;
    PanelPlazierenFl: TPanel;
    LabelPlazieren: TLabel;
    PanelTextHs: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    MaskEditTextHs: TMaskEdit;
    PanelPlazierenHs: TPanel;
    Label3: TLabel;
    SpeedTextF: TSpeedButton;
    SpeedTextH: TSpeedButton;
    SpeedRueckF: TSpeedButton;
    SpeedRueckH: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure ShowHint(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ButtonZurueckClick(Sender: TObject);
    procedure ButtonBeendenClick(Sender: TObject);
    procedure ButtonStartClick(Sender: TObject);
    procedure linearClick(Sender: TObject);
    procedure LogarithmischClick(Sender: TObject);
    procedure KreisOClick(Sender: TObject);
    procedure KreisGClick(Sender: TObject);
    procedure DreieckOClick(Sender: TObject);
    procedure DreieckGClick(Sender: TObject);
    procedure QuadratOClick(Sender: TObject);
    procedure QuadratGClick(Sender: TObject);
    procedure RauteOClick(Sender: TObject);
    procedure RauteGClick(Sender: TObject);
    procedure SpeedLinearClick(Sender: TObject);
    procedure SpeedLogarClick(Sender: TObject);
    procedure SpeedKreisOClick(Sender: TObject);
    procedure SpeedKreisGClick(Sender: TObject);
    procedure SpeedDreieckOClick(Sender: TObject);
    procedure SpeedDreieckGClick(Sender: TObject);
    procedure SpeedQuadratOClick(Sender: TObject);
    procedure SpeedQuadratGClick(Sender: TObject);
    procedure SpeedRauteOClick(Sender: TObject);
    procedure SpeedRauteGClick(Sender: TObject);
    procedure BildFClick(Sender: TObject);
    procedure MaskEditBBreiteFLKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditBHoeheFlKeyPress(Sender: TObject; var Key: Char);
    procedure CheckBoxFlBildClick(Sender: TObject);
    procedure FlkopierenClick(Sender: TObject);
    procedure FlTransparentClick(Sender: TObject);
    procedure FlFarbeClick(Sender: TObject);
    procedure BildHClick(Sender: TObject);
    procedure MaskEditBBreiteHsKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditBHoeheHsKeyPress(Sender: TObject; var Key: Char);
    procedure CheckBoxHsBildClick(Sender: TObject);
    procedure HsTransparentClick(Sender: TObject);
    procedure HsFarbeClick(Sender: TObject);
    procedure HskopierenClick(Sender: TObject);
    procedure FarbeKoordClick(Sender: TObject);
    procedure FarbeDatenClick(Sender: TObject);
    procedure FarbeDiagrClick(Sender: TObject);
    procedure FarbeRahmenClick(Sender: TObject);
    procedure FlEinrichtenClick(Sender: TObject);
    procedure FlDruckenClick(Sender: TObject);
    procedure MaskEditUnterschriftKeyPress(Sender: TObject; var Key: Char);
    procedure ListBoxSchriftClick(Sender: TObject);
    procedure RadioButtonLinksClick(Sender: TObject);
    procedure RadioButtonZentriertClick(Sender: TObject);
    procedure RadioButtonRechtsClick(Sender: TObject);
    procedure ButtonDruckenClick(Sender: TObject);
    procedure ButtonAbbrechenClick(Sender: TObject);
    procedure HsEinrichtenClick(Sender: TObject);
    procedure HsDruckenClick(Sender: TObject);
    procedure HilfeClick(Sender: TObject);
    procedure HandbuchClick(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
    procedure SpeedFarbeDatClick(Sender: TObject);
    procedure SpeedFarbeKoordClick(Sender: TObject);
    procedure SpeedFarbeDiagrClick(Sender: TObject);
    procedure SpeedFarbeRahmenClick(Sender: TObject);
    procedure SpeedFlBGroesseClick(Sender: TObject);
    procedure SpeedFlTransparentClick(Sender: TObject);
    procedure SpeedFlHFarbeClick(Sender: TObject);
    procedure SpeedFlKopierenClick(Sender: TObject);
    procedure SpeedFlEinrichtenClick(Sender: TObject);
    procedure SpeedFlDruckenClick(Sender: TObject);
    procedure SpeedHsBGroesseClick(Sender: TObject);
    procedure SpeedHsTransparentClick(Sender: TObject);
    procedure SpeedHsFarbeClick(Sender: TObject);
    procedure SpeedHsKopierenClick(Sender: TObject);
    procedure SpeedHsEinrichtenClick(Sender: TObject);
    procedure SpeedHsDruckenClick(Sender: TObject);
    procedure SpeedHilfeClick(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure SpeedLiteraturClick(Sender: TObject);
    procedure FlspeichernClick(Sender: TObject);
    procedure ListBoxFlinnClick(Sender: TObject);
    procedure HsSpeichernClick(Sender: TObject);
    procedure ListBoxHsuClick(Sender: TObject);
    procedure SpeedFlspeichernClick(Sender: TObject);
    procedure SpeedHsspeichernClick(Sender: TObject);
    procedure FontClick(Sender: TObject);
    procedure SpeedFontClick(Sender: TObject);
    procedure ButtonFausClick(Sender: TObject);
    procedure ButtonHausClick(Sender: TObject);
    procedure TextFlinnClick(Sender: TObject);
    procedure TextHsuClick(Sender: TObject);
    procedure MaskEditTextFlKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditTextHsKeyPress(Sender: TObject; var Key: Char);
    procedure ImageFlinnMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ImageHsuMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure RueckFlinnClick(Sender: TObject);
    procedure RueckHsuClick(Sender: TObject);
    procedure SpeedTextFClick(Sender: TObject);
    procedure SpeedTextHClick(Sender: TObject);
    procedure SpeedRueckFClick(Sender: TObject);
    procedure SpeedRueckHClick(Sender: TObject);
  end;

var
  Form98    : TForm98;
  El1, El2  : array of real;
  El3       : array of real;
  BHoeheFl  : word;
  BHoeheHs  : word;
  RatioFl   : real;
  RatioHs   : real;
  Bitmap    : TBitmap;
  TextS     : string;
  Gedrueckt : array[0..3] of boolean;
  BuendigS  : string;
  DNameS    : string;
  Bild      : TBitmap;
  TeFlS          : string;
  BTextFl        : boolean;
  TextBitmapFl   : array[1..10] of TBitmap;
  textFli        : byte;
  TeHsS          : string;
  BTextHs        : boolean;
  TextBitmapHs   : array[1..10] of TBitmap;
  textHsi        : byte;

implementation
uses Unit95, Unit96, Unit97;
{$R *.DFM}

procedure TForm98.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm98.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm98.FormActivate(Sender: TObject);
var
  Flaeche : TRect;
  i       : byte;
begin
  Top    := TopDiag + 2*ULap;
  Left   := LeftDiag + 2*ULap;
  Height := HeiDiag;
  Width  := WidDiag;
  Form98.Caption := Tx(1551)+', Plot';
  setlength (Lang, MaxDaten);
  setlength (Mittel, MaxDaten);
  setlength (Kurz, MaxDaten);
  SpeedLinear.Hint        := Hilf(642);
  SpeedLogar.Hint         := Hilf(643);
  SpeedKreisO.Hint        := Hilf(371);
  SpeedKreisG.Hint        := Hilf(372);
  SpeedDreieckO.Hint      := Hilf(373);
  SpeedDreieckG.Hint      := Hilf(374);
  SpeedQuadratO.Hint      := Hilf(375);
  SpeedQuadratG.Hint      := Hilf(376);
  SpeedRauteO.Hint        := Hilf(377);
  SpeedRauteG.Hint        := Hilf(378);
  SpeedFarbeDat.Hint      := Hilf(365);
  SpeedFarbeKoord.Hint    := Hilf(444);
  SpeedFarbeDiagr.Hint    := Hilf(441);
  SpeedFarbeRahmen.Hint   := Hilf(442);
  SpeedHilfe.Hint         := Hilf(210);
  SpeedFLBGroesse.Hint    := Hilf(583);
  SpeedHsBGroesse.Hint    := Hilf(583);
  SpeedFlTransparent.Hint := Hilf(584);
  SpeedHsTransparent.Hint := Hilf(584);
  SpeedFlHFarbe.Hint      := Hilf(443);
  SpeedHsFarbe.Hint       := Hilf(443);
  SpeedFlKopieren.Hint    := Hilf(262);
  SpeedHsKopieren.Hint    := Hilf(262);
  SpeedFlEinrichten.Hint  := Hilf(505);
  SpeedHsEinrichten.Hint  := Hilf(505);
  SpeedFlDrucken.Hint     := Hilf(309);
  SpeedHsDrucken.Hint     := Hilf(309);
  SpeedHandbuch.Hint      := Hilf(274);
  SpeedLiteratur.Hint     := Hilf(462);
  Buttonzurueck.Hint      := Hilf(18);
  Buttonbeenden.Hint      := Hilf(30);
  SpeedFlspeichern.Hint   := Hilf(264);
  SpeedHsspeichern.Hint   := Hilf(264);
  SpeedFont.Hint          := Hilf(686);
  SpeedTextF.Hint         := Hilf(743);
  SpeedTextH.Hint         := Hilf(744);
  SpeedRueckF.Hint        := Hilf(745);
  SpeedRueckH.Hint        := Hilf(746);    
  ButtonZurueck.Caption   := Tx(30);
  ButtonBeenden.Caption   := Tx(53);
  LabelFlinn.Caption      := Tx(1551);
  LabelHsu.Caption        := Tx(1552);
  LabelDaten.Caption      := Tx(183);
  Skalierung.Caption      := Tx(1537);
  linear.Caption          := Tx(1538);
  Logarithmisch.Caption   := Tx(1539);
  Symbole.Caption         := Tx(846);
  KreisO.Caption          := Tx(262);
  KreisG.Caption          := Tx(263);
  DreieckO.Caption        := Tx(266);
  DreieckG.Caption        := Tx(267);
  QuadratO.Caption        := Tx(264);
  QuadratG.Caption        := Tx(265);
  RauteO.Caption          := Tx(268);
  RauteG.Caption          := Tx(269);
  Farben.Caption          := Tx(1553);
  FarbeDaten.Caption      := Tx(101);
  FarbeKoord.Caption      := Tx(689);
  FarbeDiagr.Caption      := Tx(1554);
  FarbeRahmen.Caption     := Tx(1555);
  GrafikF.Caption         := Tx(1551);
  GrafikH.Caption         := Tx(1552);
  BildF.Caption           := Tx(1439);
  FlHintergrund.Caption   := Tx(1453);
  FlFarbe.Caption         := Tx(275);
  FlKopieren.Caption      := Tx(282);
  FlSpeichern.Caption     := Tx(284);
  FlDrucker.Caption       := Tx(92);
  FlEinrichten.Caption    := Tx(94);
  FlDrucken.Caption       := Tx(93);
  GrafikH.Caption         := Tx(1552);
  BildH.Caption           := Tx(1439);
  HsHintergrund.Caption   := Tx(1453);
  HsFarbe.Caption         := Tx(275);
  HsKopieren.Caption      := Tx(282);
  HsSpeichern.Caption     := Tx(284);
  HsDrucker.Caption       := Tx(92);
  HsEinrichten.Caption    := Tx(94);
  HsDrucken.Caption       := Tx(93);
  Hilfe.Caption           := Tx(162)+' (F1)';
  Handbuch.Caption        := Tx(1055)+' (F2)';
  Literatur.Caption       := Tx(1183)+' (F5)';
  LabelHsBBreite.Caption  := Tx(1440);
  LabelHsBHoehe.Caption   := Tx(1441);
  LabelFlBBreite.Caption  := Tx(1440);
  LabelFlBHoehe.Caption   := Tx(1441);
  Font.Caption            := Tx(1621);
  LabelDateien.Caption    := Tx(136);
  ButtonFaus.Caption      := Tx(1682);
  ButtonHaus.Caption      := Tx(1682); 
  Textschreiben.Caption   := Tx(1699);
  LabelText.Caption       := Tx(1700);
  LabelReturn.Caption     := Tx(1701);
  LabelPlazieren.Caption  := Tx(1702);
  Trueck.Caption          := Tx(1688);
  LabelFlinn.Visible      := false;
  LabelHsu.Visible        := false;
  PanelDaten.Visible      := false;
  PanelDateien.Visible    := false;
  Flaeche := Rect(0,0,Clientwidth,ClientHeight);
  Loeschen (ImageFlinn.Canvas, Flaeche);
  Loeschen (ImageHsu.Canvas, Flaeche);
  RatioFl   := 460/450;
  RatioHs   := 361/450;
  BBreiteFl := ImageFlinn.Width;
  BBreiteHs := ImageHsu.Width;
  PanelFlGroesse.Visible := false;
  PanelHsGroesse.Visible := false;
  HTransparent := false;
  PanelDrucken.Visible := false;
  PanelSpeed.Visible   := false;
  for i := 1 to 7 do
    ListBoxFlinn.Items.Add (Tx(1611+i));
  PanelFlinn.Visible := false;
  for i := 1 to 7 do
    ListBoxHsu.Items.Add (Tx(1611+i));
  PanelHsu.Visible    := false;
  PanelTextFl.Visible := false;
  BTextFl             := false;
  textFli             := 0;
  RueckFlinn.Enabled  := false;
  RueckHsu.Enabled    := false;
  SpeedRueckF.Enabled := false;
  SpeedRueckH.Enabled := false;
  PanelTextHs.Visible := false;
  BTextHs             := false;
  textHsi             := 0;
end;

procedure TForm98.ButtonZurueckClick(Sender: TObject);
var
  Flaeche : TRect;
begin
  Flaeche := Rect(0,0,Clientwidth,ClientHeight);
  Loeschen (ImageFlinn.Canvas, Flaeche);
  Loeschen (ImageHsu.Canvas, Flaeche);
  Lang   := Nil;
  Mittel := Nil;
  Kurz   := Nil;
  Form98.Close;
end;

procedure TForm98.ButtonBeendenClick(Sender: TObject);
var
  Flaeche : TRect;
begin
  Flaeche := Rect(0,0,Clientwidth,ClientHeight);
  Loeschen (ImageFlinn.Canvas, Flaeche);
  Loeschen (ImageHsu.Canvas, Flaeche);
  Lang   := Nil;
  Mittel := Nil;
  Kurz   := Nil;
  Form98.Close;
  if EingabeS = 'manuell' then Form96.Close;
  if EingabeS = 'Festplatte' then Form97.Close;
  Form95.Close;
  SetCurrentDir(DirectS);
end;

procedure TForm98.ButtonStartClick(Sender: TObject);
var
  i       : word;
  ZeileS  : string;
  a, b    : real;
  x, y    : word;
  Kubik   : real;
  Ra      : real;
  SpalteS : string;
  Laenge  : word;
  LobenX  : word;
  LobenY  : word;
  RobenX  : word;
  RobenY  : word;
  NullX   : word;
  NullY   : word;
  En1,En2 : real;
  En3     : real;
  Lode    : array of real;
  Esn     : array of real;
  Ta, ES  : real;
  xl, yl  : word;
  EsMax   : real;
  LaengeN : real;
  Amax    : real;
  Re, Li  : word;
begin
  Bo := Pi/180;
  Xl := 0;
  DecimalSeparator := '.';
  PanelSpeed.Visible := true;
  BHoeheFl := round(BBreiteFl/RatioFl);
  BHoeheHs := round(BBreiteHs/RatioHs);
  setlength (El1, MaxDaten);
  setlength (El2, MaxDaten);
  setlength (El3, MaxDaten);
  setlength (Lode, MaxDaten);
  setlength (Esn, MaxDaten);
  PanelDaten.Visible   := true;
  PanelDateien.Visible := true;
  ListBoxDaten.Clear;
  ListBoxElon.Clear;
  ListBoxDateien.Clear;
  if EingabeS = 'manuell' then PanelDateien.Visible := false
  else for i := 0 to DateiZahl do
         ListboxDateien.Items.Add(DateiNameS[i]);
  with ImageFlinn.Canvas do
  begin
    Li := 60;
    Re := 450;
    Pen.Color   := RahmenFarbe;
    Brush.Color := HintFarbe;
    Pen.Style   := psSolid;
    Rectangle (0,0,ImageFlinn.Width,ImageFlinn.Height);
    Brush.Color := DiagrFarbe;
    Pen.Color   := KoordinFarbe;
    Rectangle(Li,10,Re,400);
    Pen.Width   := 2;
    moveto (Li,10);
    lineto (Li,400);
    lineto (Li,400);
    Pen.Width := 1;
    moveto (Li, 400);
    lineto (Re,10);
    Brush.Color := HintFarbe;
    Font.Color := KoordinFarbe;
    Font.Name  := 'TimesNewRoman';
    Font.Size  := 10;
    AMax := 0;
    for i := 1 to ZahlGlob do
    begin
      a := Lang[i]/Mittel[i];
      b := Mittel[i]/Kurz[i];
      if SkalaS = 'logarithmisch' then
      begin
        a := ln(a);
        b := ln(b);
      end;
      if a > AMax then AMax := a;
      if b > AMax then AMax := b;
    end;
    for i := 0 to 9 do
    begin
      moveto (Li+i*39,400);
      lineto (Li+i*39,410);
      if SkalaS <> 'logarithmisch' then
        textout(Li+i*39+5,405,FloatToStrF(1+i*(Amax-1)/10,ffFixed,3,1))
      else
        textout(Li+i*39+5,405,FloatToStrF(i*AMax/10,ffFixed,3,1));
    end;
    for i := 0 to 9 do
    begin
      moveto (Li,400-i*39);
      lineto (Li-10,400-i*39);
      if SkalaS <> 'logarithmisch' then
        textout(30,400-i*39+2,FloatToStrF(1+i*(Amax-1)/10,ffFixed,3,1))
      else
        textout(30,400-i*39+2,FloatToStrF(i*AMax/10,ffFixed,3,1));
    end;
    Font.Size := 14;
    if SkalaS <> 'logarithmisch' then
    begin
      textout(5,10,'X/Y');
      textout(400,420,'Y/Z');
    end
    else
    begin
      textout(2,2,'ln(x/y)');
      textout(390,420,'ln(y/z)');
    end;
    textout(5,420,'x>y>z');
    for i := 1 to ZahlGlob do
    begin
      a := Lang[i]/Mittel[i];
      b := Mittel[i]/Kurz[i];
      if SkalaS = 'logarithmisch' then
      begin
        a := ln(a);
        b := ln(b);
      end;
      if SkalaS <> 'logarithmisch' then
      begin
        x := round(Li+(b-1)*390/(AMax-1));
        y := round(400-(a-1)*390/(Amax-1));
      end
      else
      begin
        x := round(Li+(b*390/AMax));
        y := round(400-(a*390/Amax));
      end;
      Pen.Color   := DatenFarbe;
      if DatenSymbol = 'OpenCircle' then
      begin
        Brush.Color := RGFarbe;
        ellipse (x-5,y-5,x+5,y+5);
      end;
      if DatenSymbol =  'FilledCircle' then
      begin
        Brush.Color := DatenFarbe;
        Ellipse (x-5,y-5,x+5,y+5);
      end;
      if DatenSymbol = 'OpenSquare' then
      begin
        Brush.Color := RGFarbe;
        Rectangle (x-5,y-5,x+5,y+5);
      end;
      if DatenSymbol = 'FilledSquare' then
      begin
        Brush.Color := DatenFarbe;
        Rectangle (x-5,y-5,x+5,y+5);
      end;
      if DatenSymbol = 'OpenTriangle' then
      begin
        Brush.Color := RGFarbe;
        Polygon ([Point(x,y-5), Point(x+5,y+5), Point(x-5,y+5)]);
      end;
      if DatenSymbol = 'FilledTriangle' then
      begin
        Brush.Color := DatenFarbe;
        Polygon ([Point(x,y-5), Point(x+5,y+5), Point(x-5,y+5)]);
      end;
      if DatenSymbol = 'OpenDiamond' then
      begin
        Brush.Color := RGFarbe;
        Polygon ([Point(x,y-5), Point(x+5,y), Point(x,y+5), Point(x-5,y)]);
      end;
      if DatenSymbol = 'FilledDiamond' then
      begin
        Brush.Color := DatenFarbe;
        Polygon ([Point(x,y-5), Point(x+5,y), Point(x,y+5), Point(x-5,y)]);
      end;
    end;
  end;
  EsMax := 0;
  for i := 1 to Zahlglob do
  begin
    Kubik   := Lang[i]*Mittel[i]*Kurz[i]/8;
    Ra      := power(Kubik,1.0/3);
    El1[i]  := (Lang[i]/2-Ra)/Ra;
    El2[i]  := (Mittel[i]/2-Ra)/Ra;
    El3[i]  := (Kurz[i]/2-Ra)/Ra;
    En1     := ln(1+El1[i]);
    En2     := ln(1+El2[i]);
    En3     := ln(1+El3[i]);
    Es      := 1/sqrt(3*sqr(En1-En3)+sqr(En2-En3)+sqr(En3-En1));
    Lode[i] := (2*En2-En1-En3)/(En1-En3);
    Esn[i]  := ln(1+Es);
    if Esn[i] > EsMax then EsMax := Esn[i];
  end;
  with ImageHsu.Canvas do
  begin
    Pen.Color   := RahmenFarbe;
    Brush.Color := HintFarbe;
    Pen.Style   := psSolid;
    Rectangle (0,0,ImageHsu.Width,ImageHsu.Height);
    Pen.Color  := KoordinFarbe;
    Pen.Width  := 2;
    NullX  := 175;
    NullY  := 400;
    Laenge := 300;
    LobenX := round(NullX - Laenge/2);
    LobenY := round(NullY-Laenge*sin(60*Bo));
    RobenX := round(NullX + Laenge/2);
    RobenY := LobenY;
    moveto (LobenX,LobenY);
    lineto(Nullx,NullY);
    lineto(RobenX,RobenY);
    arc (NullX-Laenge,NullY-Laenge,NullX+Laenge,NullY+Laenge,
         RobenX,RobenY,LobenX,LobenY);
    Brush.Color := DiagrFarbe;
    FloodFill(NullX,NullY-100,KoordinFarbe,fsBorder);
    Pen.Width := 1;
    moveto(NullX,NullY);
    lineto (NullX,NullY-Laenge);
    for i := 1 to 5 do
    begin
      moveto(Nullx,NullY);
      lineto(round(Nullx-Laenge*cos((90-6*i)*Bo)),
             round(NullY-Laenge*sin((90-6*i)*Bo)));
    end;
    for i := 1 to 5 do
    begin
      moveto(Nullx,NullY);
      lineto(round(Nullx+Laenge*cos((90-6*i)*Bo)),
             round(NullY-Laenge*sin((90-6*i)*Bo)));
    end;
    for i := 1 to 3 do
    begin
      LobenX := round(Nullx - i*Laenge/8);
      LobenY := round(NullY-i*Laenge*sin(60*Bo)/4);
      RobenX := round(NullX + i*Laenge/8);
      RobenY := LobenY;
      arc (round(NullX-i*Laenge/4),round(NullY-i*Laenge/4),
           round(NullX+i*Laenge/4),round(NullY+i*Laenge/4),
           RobenX,RobenY,LobenX,LobenY);
    end;
    Brush.Color := HintFarbe;
    Font.Color := KoordinFarbe;
    Font.Size  := 10;
    for i := 1 to 4 do
      textout(round(NullX+i*Laenge/8)+2,round(NullY-i*Laenge*sin(60*Bo)/4),
              FloattostrF(i*EsMax/4,ffFixed,4,2));
    textout(NullX-2,NullY-Laenge-16,'0');
    for i := 1 to 5 do
      textout(round(Nullx-Laenge*cos((90-6*i)*Bo))-10,
              round(NullY-Laenge*sin((90-6*i)*Bo))-16-i,
              FloatToStrF(-i/5,ffFixed,3,1));
    for i := 1 to 5 do
      textout(round(Nullx+Laenge*cos((90-6*i)*Bo))-8,
              round(NullY-Laenge*sin((90-6*i)*Bo))-16-i,
              FloatToStrF(i/5,ffFixed,3,1));
    Font.Size := 18;
    Font.Name := 'Symbol';
    Textout(NullX-6, NullY-Laenge-50,'n');
    Font.Name := 'Times New Roman';
    Textout(round(NullX+Laenge/4)+30,round(NullY-Laenge/2)+40,'e');
    Font.Size := 14;
    Textout(round(NullX+Laenge/4)+40,round(NullY-Laenge/2)+50,'s');
    moveto(round(NullX+Laenge/4)+30,round(NullY-Laenge/2)+45);
    lineto(round(NullX+Laenge/4)+40,round(NullY-Laenge/2+45));
    Brush.Color := DatenFarbe;
    Pen.Color   := DatenFarbe;
    for i := 1 to ZahlGlob do
    begin
      Ta := 2*ArcTan(Lode[i])/3;
      LaengeN := Laenge*Esn[i]/EsMax;
      if Ta >= 0 then xl := round(NullX+LaengeN*sin(abs(Ta)));
      if Ta < 0  then xl := round(NullX-LaengeN*sin(abs(Ta)));
      yl := round(NullY-LaengeN*cos(abs(Ta)));
      if DatenSymbol = 'OpenCircle' then
      begin
        Brush.Color := RGFarbe;
        ellipse (xl-5,yl-5,xl+5,yl+5);
      end;
      if DatenSymbol =  'FilledCircle' then
      begin
        Brush.Color := DatenFarbe;
        Ellipse (xl-5,yl-5,xl+5,yl+5);
      end;
      if DatenSymbol = 'OpenSquare' then
      begin
        Brush.Color := RGFarbe;
        Rectangle (xl-5,yl-5,xl+5,yl+5);
      end;
      if DatenSymbol = 'FilledSquare' then
      begin
        Brush.Color := DatenFarbe;
        Rectangle (xl-5,yl-5,xl+5,yl+5);
      end;
      if DatenSymbol = 'OpenTriangle' then
      begin
        Brush.Color := RGFarbe;
        Polygon ([Point(xl,yl-5), Point(xl+5,yl+5), Point(xl-5,yl+5)]);
      end;
      if DatenSymbol = 'FilledTriangle' then
      begin
        Brush.Color := DatenFarbe;
        Polygon ([Point(xl,yl-5), Point(xl+5,yl+5), Point(xl-5,yl+5)]);
      end;
      if DatenSymbol = 'OpenDiamond' then
      begin
        Brush.Color := RGFarbe;
        Polygon ([Point(xl,yl-5), Point(xl+5,yl), Point(xl,yl+5), Point(xl-5,yl)]);
      end;
      if DatenSymbol = 'FilledDiamond' then
      begin
        Brush.Color := DatenFarbe;
        Polygon ([Point(xl,yl-5), Point(xl+5,yl), Point(xl,yl+5), Point(xl-5,yl)]);
      end;
    end;
  end;
  LabelFlinn.Visible := true;
  LabelHsu.Visible   := true;
  for i := 1 to ZahlGlob do
  begin
    ZeileS := ' '+RightS('00000'+IntToStr(Lang[i]),5)
              +'    '+RightS('00000'+IntToStr(Mittel[i]),5)
              +'    '+RightS('00000'+IntToStr(Kurz[i]),5);
    ListBoxDaten.Items.Add(ZeileS);
    SpalteS :=  '     ';
    if El2[i] < 0 then SpalteS := '    ';
    ZeileS := ' '+FloatToStrF(El1[i],ffFixed,3,2)
              +SpalteS+FloatToStrF(El2[i],ffFixed,3,2)
             +'    '+FloatToStrF(El3[i],ffFixed,3,2);
    ListBoxElon.Items.Add(ZeileS);
  end;
  El1 := Nil;
  El2 := Nil;
  El3 := Nil;
  Lode:= Nil;
  Esn := Nil;
  if DemoB then DemoText (ImageFlinn.Canvas,150,ImageFlinn.Height-32);
  if DemoB then DemoText (ImageHsu.Canvas,10,ImageHsu.Height-40);
end;

procedure TForm98.linearClick(Sender: TObject);
begin
  SkalaS := 'linear';
  ListBoxDaten.Clear;
  ListBoxElon.Clear;
  ButtonStartClick(Sender);
end;

procedure TForm98.SpeedLinearClick(Sender: TObject);
begin
  linearClick(Sender);
end;

procedure TForm98.LogarithmischClick(Sender: TObject);
begin
  SkalaS := 'logarithmisch';
  ListBoxDaten.Clear;
  ListBoxElon.Clear;
  ButtonStartClick(Sender);
end;

procedure TForm98.SpeedLogarClick(Sender: TObject);
begin
  LogarithmischClick(Sender);
end;

procedure TForm98.KreisOClick(Sender: TObject);
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
  ListBoxDaten.Clear;
  ListBoxElon.Clear;
  ButtonStartClick(Sender);
end;

procedure TForm98.SpeedKreisOClick(Sender: TObject);
begin
  KreisOClick(Sender);
end;

procedure TForm98.KreisGClick(Sender: TObject);
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
  ListBoxDaten.Clear;
  ListBoxElon.Clear;
  ButtonStartClick(Sender);
end;

procedure TForm98.SpeedKreisGClick(Sender: TObject);
begin
  KreisGClick(Sender);
end;

procedure TForm98.DreieckOClick(Sender: TObject);
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
  ListBoxDaten.Clear;
  ListBoxElon.Clear;
  ButtonStartClick(Sender);
end;

procedure TForm98.SpeedDreieckOClick(Sender: TObject);
begin
  DreieckOClick(Sender);
end;

procedure TForm98.DreieckGClick(Sender: TObject);
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
  ListBoxDaten.Clear;
  ListBoxElon.Clear;
  ButtonStartClick(Sender);
end;

procedure TForm98.SpeedDreieckGClick(Sender: TObject);
begin
  DreieckGClick(Sender);
end;

procedure TForm98.QuadratOClick(Sender: TObject);
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
  ListBoxDaten.Clear;
  ListBoxElon.Clear;
  ButtonStartClick(Sender);
end;

procedure TForm98.SpeedQuadratOClick(Sender: TObject);
begin
  QuadratOClick(Sender);
end;

procedure TForm98.QuadratGClick(Sender: TObject);
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
  ListBoxDaten.Clear;
  ListBoxElon.Clear;
  ButtonStartClick(Sender);
end;

procedure TForm98.SpeedQuadratGClick(Sender: TObject);
begin
  QuadratGClick(Sender);
end;

procedure TForm98.RauteOClick(Sender: TObject);
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
  ListBoxDaten.Clear;
  ListBoxElon.Clear;
  ButtonStartClick(Sender);
end;

procedure TForm98.SpeedRauteOClick(Sender: TObject);
begin
  RauteOClick(Sender);
end;

procedure TForm98.RauteGClick(Sender: TObject);
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
  ListBoxDaten.Clear;
  ListBoxElon.Clear;
  ButtonStartClick(Sender);
end;

procedure TForm98.SpeedRauteGClick(Sender: TObject);
begin
  RauteGClick(Sender);
end;

procedure TForm98.FontClick(Sender: TObject);
begin
  WaehlFont(FontDialog1);
end;

procedure TForm98.SpeedFontClick(Sender: TObject);
begin
  FontClick(Sender);
end;

procedure TForm98.BildFClick(Sender: TObject);
begin
  PanelFlGroesse.Visible  := true;
  CheckBoxFlBild.State    := cbUnchecked;
  MaskEditBBreiteFl.Text  := IntTostr(BBreiteFl);
  MaskEditBHoeheFl.Text   := IntToStr(BHoeheFl);
end;

procedure TForm98.SpeedFlBGroesseClick(Sender: TObject);
begin
  BildFClick(Sender);
end;

procedure TForm98.MaskEditBBreiteFLKeyPress(Sender: TObject; var Key: Char);
var
  BBreiteS : string;
  Datei    : TextFile;
  i        : byte;
begin
  if Key = chr(13) then
  begin
    BBreiteS := MaskEditBBreiteFl.Text;
    LeerLoeschen (BBreiteS);
    if BBreiteS = '' then exit
    else
    begin
      BBreiteFl := StrToInt (BBreiteS);
      BHoeheFl  := round(BBreiteFl/RatioFl);         
      KonfigZeileS[129] := 'Save Image Width (Flinn)   :,'+BBreiteS;
      MaskEditBHoeheFl.Text := IntToStr(BHoeheFl);
      assignFile(Datei,FabricS+'\'+'Fabric.ini');
      rewrite (Datei);
      for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
      closefile (Datei);
    end;
  end;
end;

procedure TForm98.MaskEditBHoeheFlKeyPress(Sender: TObject; var Key: Char);
var
  BHoeheS : string;
  Datei   : TextFile;
  i       : byte;
begin
  if Key = chr(13) then
  begin
    BHoeheS := MaskEditBHoeheFl.Text;
    LeerLoeschen (BHoeheS);
    if BHoeheS = '' then exit
    else
    begin
      BHoeheFl  := StrToInt (BHoeheS);
      BBreiteFl := round(BHoeheFl*RatioFl);
      KonfigZeileS[129] := 'Save Image Width (Stereo)  :,'+IntToStr(BBreiteFl);
      MaskEditBBreiteFl.Text := IntToStr(BBreiteFl);
    end;
    assignFile(Datei,FabricS+'\'+'Fabric.ini');
    rewrite (Datei);
    for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
    closefile (Datei);
  end;
end;

procedure TForm98.CheckBoxFlBildClick(Sender: TObject);
begin
  PanelFlGroesse.Visible := false;
end;

procedure TForm98.FlkopierenClick(Sender: TObject);
var
  Rahmen : TRect;
begin
  Bitmap        := TBitmap.Create;
  Bitmap.Width  := BBreiteFl;
  Bitmap.Height := BHoeheFl;
  Rahmen        := Rect(0,0,Bitmap.Width,Bitmap.Height);
  Bitmap.Canvas.Stretchdraw(Rahmen,ImageFlinn.Picture.Graphic);
  try
    ClipBoard.Assign (Bitmap);
  finally
    Bitmap.Free;
    Bitmap   := nil;
  end;
end;

procedure TForm98.SpeedFlKopierenClick(Sender: TObject);
begin
  FlKopierenClick(Sender);
end;

procedure TForm98.FlTransparentClick(Sender: TObject);
begin
  Farbe                   := clWhite;
  HTransparent            := true;
  ListBoxFlinn.Clear;
  ListBoxFlinn.Items.Add (Tx(1613));
  ButtonStartClick(Sender);
end;

procedure TForm98.SpeedFlTransparentClick(Sender: TObject);
begin
  FlTransparentClick(Sender);
end;

procedure TForm98.FlFarbeClick(Sender: TObject);
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
  ListBoxFlinn.Clear;
  for i := 1 to 7 do
    ListBoxFlinn.Items.Add (Tx(1611+i));
  ButtonStartClick (Sender);
end;

procedure TForm98.SpeedFlHFarbeClick(Sender: TObject);
begin
  FlFarbeClick(Sender);
end;

procedure TForm98.FlspeichernClick(Sender: TObject);
begin
  PanelFlinn.Visible := true;
end;

procedure TForm98.SpeedFlspeichernClick(Sender: TObject);
begin
  FlspeichernClick(Sender);
end;

procedure TForm98.ButtonFausClick(Sender: TObject);
begin
  PanelFlinn.Visible := false;
end;

procedure TForm98.ListBoxFlinnClick(Sender: TObject);
var
  i      : byte;
  Rahmen : TRect;
  Ratio  : real;
  ZBild  : TBitmap;
begin
  BBreiteSt := BBreiteFl;
  Ratio     := RatioFl;
  GrafikSpeichern (ImageFlinn, ListBoxFlinn, Ratio,
                   SavePictureDialog1, SaveDialog1);
  PanelFlinn.Visible := false;
end;

procedure TForm98.BildHClick(Sender: TObject);
begin
  PanelHsGroesse.Visible    := true;
  CheckBoxHsBild.State    := cbUnchecked;
  MaskEditBBreiteHs.Text  := IntTostr(BBreiteHs);
  MaskEditBHoeheHs.Text   := IntToStr(BHoeheHs);
end;

procedure TForm98.SpeedHsBGroesseClick(Sender: TObject);
begin
  BildHClick(Sender);
end;

procedure TForm98.MaskEditBBreiteHsKeyPress(Sender: TObject;
  var Key: Char);
var
  BBreiteS : string;
  Datei    : TextFile;
  i        : byte;
begin
  if Key = chr(13) then
  begin
    BBreiteS := MaskEditBBreiteHs.Text;
    LeerLoeschen (BBreiteS);
    if BBreiteS = '' then exit
    else
    begin
      BBreiteHs := StrToInt (BBreiteS);
      BHoeheHs  := round(BBreiteHs/RatioHs);
      KonfigZeileS[130] := 'Save Image Width (Hsu)     :,'+BBreiteS;
      MaskEditBHoeheHs.Text := IntToStr(BHoeheHs);
      assignFile(Datei,FabricS+'\'+'Fabric.ini');
      rewrite (Datei);
      for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
      closefile (Datei);
    end;
  end;
end;

procedure TForm98.MaskEditBHoeheHsKeyPress(Sender: TObject; var Key: Char);
var
  BHoeheS : string;
  Datei   : TextFile;
  i       : byte;
begin
  if Key = chr(13) then
  begin
    BHoeheS := MaskEditBHoeheHs.Text;
    LeerLoeschen (BHoeheS);
    if BHoeheS = '' then exit
    else
    begin
      BHoeheHs  := StrToInt (BHoeheS);
      BBreiteHs := round(BHoeheHs*RatioHs);
      KonfigZeileS[130] := 'Save Image Width (Hsu)        :,'+IntToStr(BBreiteHs);
      MaskEditBBreiteHs.Text := IntToStr(BBreiteHs);
    end;
    assignFile(Datei,FabricS+'\'+'Fabric.ini');
    rewrite (Datei);
    for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
    closefile (Datei);
  end;
end;

procedure TForm98.CheckBoxHsBildClick(Sender: TObject);
begin
  PanelHsGroesse.Visible := false;
end;

procedure TForm98.HsTransparentClick(Sender: TObject);
begin
  Farbe                   := clWhite;
  HTransparent            := true;
  ListBoxHsu.Clear;
  ListBoxHsu.Items.Add (Tx(1613));
  ButtonStartClick(Sender);
end;

procedure TForm98.SpeedHsTransparentClick(Sender: TObject);
begin
  HsTransparentClick(Sender);
end;

procedure TForm98.HsFarbeClick(Sender: TObject);
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
  ListBoxHsu.Clear;
  for i := 1 to 7 do
    ListBoxHsu.Items.Add (Tx(1611+i));
  ButtonStartClick (Sender);
end;

procedure TForm98.SpeedHsFarbeClick(Sender: TObject);
begin
  HsFarbeClick(Sender);
end;

procedure TForm98.HskopierenClick(Sender: TObject);
var
  Rahmen : TRect;
begin
  Bitmap        := TBitmap.Create;
  Bitmap.Width  := BBreiteHs;
  Bitmap.Height := BHoeheHs;
  Rahmen        := Rect(0,0,Bitmap.Width,Bitmap.Height);
  Bitmap.Canvas.Stretchdraw(Rahmen,ImageHsu.Picture.Graphic);
  try
    ClipBoard.Assign (Bitmap);
  finally
    Bitmap.Free;
    Bitmap   := nil;
  end;
end;

procedure TForm98.SpeedHsKopierenClick(Sender: TObject);
begin
  HsKopierenClick(Sender);
end;

procedure TForm98.HsSpeichernClick(Sender: TObject);
begin
  PanelHsu.Visible := true;
end;

procedure TForm98.SpeedHsspeichernClick(Sender: TObject);
begin
  HsspeichernClick(Sender);
end;

procedure TForm98.ButtonHausClick(Sender: TObject);
begin
  PanelHsu.Visible := false;
end;

procedure TForm98.ListBoxHSUClick(Sender: TObject);
var
  i      : byte;
  Rahmen : TRect;
  Ratio  : real;
  ZBild  : TBitmap;
begin
  BBreiteSt := BBreiteHs;
  Ratio     := RatioHs;
  GrafikSpeichern (ImageHsu, ListBoxHsu, Ratio,
                   SavePictureDialog1, SaveDialog1);
  PanelHsu.Visible := false;                 
end;

procedure TForm98.FarbeDatenClick(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  Farbe := clWhite;
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

procedure TForm98.SpeedFarbeDatClick(Sender: TObject);
begin
 FarbeDatenClick(Sender);
end;

procedure TForm98.FarbeKoordClick(Sender: TObject);
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
  KonfigZeileS[7] := '  Colour of Data Points    :,'+FarbeS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick (Sender);
end;

procedure TForm98.SpeedFarbeKoordClick(Sender: TObject);
begin
  FarbeKoordClick(Sender);
end;

procedure TForm98.FarbeDiagrClick(Sender: TObject);
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

procedure TForm98.SpeedFarbeDiagrClick(Sender: TObject);
begin
  FarbeDiagrClick(Sender);
end;

procedure TForm98.FarbeRahmenClick(Sender: TObject);
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

procedure TForm98.SpeedFarbeRahmenClick(Sender: TObject);
begin
  FarbeRahmenClick(Sender);
end;

procedure TForm98.FlEinrichtenClick(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TForm98.SpeedFlEinrichtenClick(Sender: TObject);
begin
 FlEinrichtenClick(Sender);
end;

procedure TForm98.FlDruckenClick(Sender: TObject);
var
  SchriftS : string[5];
  i        : byte;
begin
  DDruckS                   := 'Flinn';
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

procedure TForm98.SpeedFlDruckenClick(Sender: TObject);
begin
  FlDruckenClick(Sender);
end;

procedure TForm98.MaskEditUnterschriftKeyPress(Sender: TObject;
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

procedure TForm98.ListBoxSchriftClick(Sender: TObject);
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

procedure TForm98.RadioButtonLinksClick(Sender: TObject);
begin
  BuendigS := 'Links';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    ButtonDrucken.Enabled := true;
end;

procedure TForm98.RadioButtonZentriertClick(Sender: TObject);
begin
  BuendigS := 'Zentriert';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    ButtonDrucken.Enabled := true;
end;

procedure TForm98.RadioButtonRechtsClick(Sender: TObject);
begin
  BuendigS := 'Rechts';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    ButtonDrucken.Enabled := true;
end;

procedure TForm98.ButtonDruckenClick(Sender: TObject);
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
  Bitmap:=TBitmap.Create;
  try
    if DDruckS = 'Flinn' then Bitmap.Assign(ImageFlinn.picture.graphic);
    if DDruckS = 'Hsu' then Bitmap.Assign(ImageHsu.picture.graphic);
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

procedure TForm98.ButtonAbbrechenClick(Sender: TObject);
begin
  Paneldrucken.Visible    := false;
  ButtonDrucken.Visible   := false;
  ButtonAbbrechen.Visible := false;
end;

procedure TForm98.HsEinrichtenClick(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TForm98.SpeedHsEinrichtenClick(Sender: TObject);
begin
  HsEinrichtenClick(Sender);
end;

procedure TForm98.HsDruckenClick(Sender: TObject);
var
  SchriftS : string[5];
  i        : byte;
begin
  DDruckS                   := 'Hsu';
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

procedure TForm98.SpeedHsDruckenClick(Sender: TObject);
begin
  HsDruckenClick(Sender);
end;

procedure TForm98.TextFlinnClick(Sender: TObject);
begin
  PanelTextFl.Visible := true;
  MaskEditTextFl.SetFocus;
  BTextFl := true;
  MaskEditTextFl.Clear;
  PanelPlazierenFl.Visible := false;
end;

procedure TForm98.SpeedTextFClick(Sender: TObject);
begin
  TextFlinnClick(Sender);
end;

procedure TForm98.TextHsuClick(Sender: TObject);
begin
  PanelTextHs.Visible := true;
  MaskEditTextHs.SetFocus;
  BTextHs := true;
  MaskEditTextHs.Clear;
  PanelPlazierenHs.Visible := false;
end;

procedure TForm98.SpeedTextHClick(Sender: TObject);
begin
  TextHsuClick(Sender);
end;

procedure TForm98.MaskEditTextFlKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(13) then
  begin
    TeFlS := MaskEditTextFl.Text;
    PanelPlazierenFl.Visible := true;
  end;
end;

procedure TForm98.MaskEditTextHsKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(13) then
  begin
    TeHsS := MaskEditTextHs.Text;
    PanelPlazierenHs.Visible := true;
  end;
end;

procedure TForm98.ImageFlinnMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if BTextFl then
  begin
    inc (textFli);
    TextBitmapFl[textFli] := Tbitmap.Create;
    TextBitmapFl[textFli].Assign(ImageFlinn.Picture);
    with ImageFlinn.Canvas do
    begin
      Brush.Color := DiagrFarbe;
      Font.Name   := DSchrift;
      Font.Size   := DGroesse;
      Font.Color  := DFarbe;
      Font.Style  := DStyle;
    end;
    ImageFlinn.Canvas.TextOut(x,y,TeFlS);
    PanelTextFl.Visible := false;
    BTextFl             := false;
    RueckFlinn.Enabled  := true;
    SpeedRueckF.Enabled := true;
  end;
end;

procedure TForm98.ImageHsuMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if BTextHs then
  begin
    inc (textHsi);
    TextBitmapHs[textHsi] := Tbitmap.Create;
    TextBitmapHs[textHsi].Assign(ImageHsu.Picture);
    with ImageHsu.Canvas do
    begin
      Brush.Color := DiagrFarbe;
      Font.Name   := DSchrift;
      Font.Size   := DGroesse;
      Font.Color  := DFarbe;
      Font.Style  := DStyle;
    end;
    ImageHsu.Canvas.TextOut(x,y,TeHsS);
    PanelTextHs.Visible := false;
    BTextHs             := false;
    RueckHsu.Enabled    := true;
    SpeedRueckH.Enabled := true;
  end;
end;

procedure TForm98.RueckFlinnClick(Sender: TObject);
begin
  ImageFlinn.Canvas.Draw (0,0,TextBitmapFl[textFli]);
  if textFli >= 1 then
  begin
    TextBitmapFl[textFli].free;
    Dec(textFli);
  end;
  if textFli = 0 then
  begin
    RueckFlinn.Enabled  := false;
    SpeedRueckF.Enabled := false;
  end;  
end;

procedure TForm98.SpeedRueckFClick(Sender: TObject);
begin
  RueckFlinnClick(Sender);
end;

procedure TForm98.RueckHsuClick(Sender: TObject);
begin
  ImageHsu.Canvas.Draw (0,0,TextBitmapHs[textHsi]);
  if textHsi >= 1 then
  begin
    TextBitmapHs[textHsi].free;
    Dec(textHsi);
  end;
  if textHsi = 0 then
  begin
    RueckHsu.Enabled    := false;
    SpeedRueckH.Enabled := false;
  end;
end;

procedure TForm98.SpeedRueckHClick(Sender: TObject);
begin
  RueckHsuClick(Sender);
end;

procedure TForm98.HilfeClick(Sender: TObject);
var
  DateiS      : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\98Flinn-plot.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\98Flinn-plot.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm98.SpeedHilfeClick(Sender: TObject);
begin
  HilfeClick(Sender);
end;

procedure TForm98.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Flinn-Hsu.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'Flinn-Hsu-E.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm98.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm98.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm98.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

end.
