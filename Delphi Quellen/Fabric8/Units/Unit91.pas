unit Unit91;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, ExtCtrls, Mask, Standard, Texte,
  Globvar, Menus, Basic, Plotten, ClipBrd, GifImage, Bmp2Tiff,
  ReadTiff, Jpeg, ExtDlgs, Printers, Drucken, ComCtrls,
  ShellApi, Buttons, ehsHelpRouter, PngImage, Grafik;

type
  TForm91 = class(TForm)
    ImageMohr: TImage;
    ButtonStart: TButton;
    ButtonZuruck: TButton;
    ButtonEnde: TButton;
    PanelStress: TPanel;
    MaskEditS1: TMaskEdit;
    MaskEditS2: TMaskEdit;
    MaskEditTh: TMaskEdit;
    LabelEin: TLabel;
    LabelS1: TLabel;
    LabelS2: TLabel;
    LabelTh: TLabel;
    PanelErgebnis: TPanel;
    LabelSn: TLabel;
    LabelD: TLabel;
    Labeleins: TLabel;
    LabelZwei: TLabel;
    LabelSS: TLabel;
    LabelS: TLabel;
    LabelSigN: TLabel;
    LabelSigS: TLabel;
    MainMenu1: TMainMenu;
    Punkte: TMenuItem;
    KreisO: TMenuItem;
    KreisG: TMenuItem;
    DreieckO: TMenuItem;
    DreieckG: TMenuItem;
    QuadratO: TMenuItem;
    QuadratG: TMenuItem;
    RauteO: TMenuItem;
    RauteG: TMenuItem;
    ButtonOK: TButton;
    FarbeP: TMenuItem;
    ColorDialog1: TColorDialog;
    Grafik: TMenuItem;
    kopieren: TMenuItem;
    speichern: TMenuItem;
    Hintergrund: TMenuItem;
    transparent: TMenuItem;
    HFarbe: TMenuItem;
    FarbeK: TMenuItem;
    Fuellung: TMenuItem;
    FarbeR: TMenuItem;
    Drucker: TMenuItem;
    einrichten: TMenuItem;
    drucken: TMenuItem;
    SaveDialog1: TSaveDialog;
    SavePictureDialog1: TSavePictureDialog;
    KoordFarbe: TMenuItem;
    PunktGr: TMenuItem;
    ListBoxGroesse: TListBox;
    LabelGroesse: TLabel;
    PrinterSetupDialog1: TPrinterSetupDialog;
    Paneldrucken: TPanel;
    GroupBoxdrucken: TGroupBox;
    Panel7: TPanel;
    LabelRdrucken: TLabel;
    MaskEditRdrucken: TMaskEdit;
    Panel8: TPanel;
    LabelMitte: TLabel;
    LabelXdrucken: TLabel;
    LabelYdrucken: TLabel;
    MaskEditXdrucken: TMaskEdit;
    MaskEditYdrucken: TMaskEdit;
    Panel11: TPanel;
    LabelUnterschrift: TLabel;
    LabelSchrift: TLabel;
    MaskEditUnterschrift: TMaskEdit;
    ListBoxSchrift: TListBox;
    RadioGroup: TRadioGroup;
    RadioButtonlinks: TRadioButton;
    RadioButtonzentriert: TRadioButton;
    RadioButtonrechts: TRadioButton;
    StatusBar: TStatusBar;
    Hilfe: TMenuItem;
    Handbuch: TMenuItem;
    Literatur: TMenuItem;
    PanelSpeed: TPanel;
    SpeedKreisO: TSpeedButton;
    SpeedKreisG: TSpeedButton;
    SpeedDreieckO: TSpeedButton;
    SpeedDreieckG: TSpeedButton;
    SpeedQuadratO: TSpeedButton;
    SpeedQuadratG: TSpeedButton;
    SpeedRauteO: TSpeedButton;
    SpeedRauteG: TSpeedButton;
    SpeedFarbe: TSpeedButton;
    PanelStrain: TPanel;
    MaskEditA1: TMaskEdit;
    MaskEditA2: TMaskEdit;
    MaskEditThS: TMaskEdit;
    LabelA1: TLabel;
    LabelA2: TLabel;
    LabelTS: TLabel;
    LabelSt: TLabel;
    PanelErgStrain: TPanel;
    ButtonOkS: TButton;
    LabelEL1: TLabel;
    Labele1: TLabel;
    LabelEL2: TLabel;
    LabelE2: TLabel;
    Labeli1: TLabel;
    Labeli2: TLabel;
    LabelElon: TLabel;
    LabelEwert: TLabel;
    LabelWinkel: TLabel;
    LabelWwert: TLabel;
    StrainEingabe: TMenuItem;
    EinAchsen: TMenuItem;
    EinElongation: TMenuItem;
    PanelElong: TPanel;
    LabelSEin: TLabel;
    MaskEditE1: TMaskEdit;
    MaskEditE2: TMaskEdit;
    MaskEditThel: TMaskEdit;
    ButtonOkE: TButton;
    LabelAEing: TLabel;
    LabelElo1: TLabel;
    LabelEloi1: TLabel;
    LabelElo2: TLabel;
    LabelEloi2: TLabel;
    LabelThs: TLabel;
    LabelStr: TLabel;
    LabelStrain: TLabel;
    SpeedAchsen: TSpeedButton;
    SpeedElong: TSpeedButton;
    SpeedPGroesse: TSpeedButton;
    SpeedKopieren: TSpeedButton;
    SpeedTransparent: TSpeedButton;
    SpeedHFarbe: TSpeedButton;
    SpeedKreisFarbe: TSpeedButton;
    SpeedKreisFuell: TSpeedButton;
    SpeedFKoord: TSpeedButton;
    SpeedRahmenFarbe: TSpeedButton;
    SpeedEinrichten: TSpeedButton;
    SpeedDrucken: TSpeedButton;
    SpeedHilfe: TSpeedButton;
    SpeedHandbuch: TSpeedButton;
    SpeedLiteratur: TSpeedButton;
    LabelScher: TLabel;
    LabelGamma: TLabel;
    LabelFehler: TLabel;
    ButtonDrucken: TButton;
    ButtonAbbrechen: TButton;
    ListBoxSpeichern: TListBox;
    SpeedSpeichern: TSpeedButton;
    FontDialog1: TFontDialog;
    Font: TMenuItem;
    SpeedFont: TSpeedButton;

    procedure FormShow(Sender: TObject);
    procedure ShowHint(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ButtonZuruckClick(Sender: TObject);
    procedure ButtonEndeClick(Sender: TObject);
    procedure ButtonStartClick(Sender: TObject);
    procedure MaskEditS1KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditS2KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditThKeyPress(Sender: TObject; var Key: Char);
    procedure KreisOClick(Sender: TObject);
    procedure ButtonOKClick(Sender: TObject);
    procedure KreisGClick(Sender: TObject);
    procedure DreieckOClick(Sender: TObject);
    procedure DreieckGClick(Sender: TObject);
    procedure QuadratOClick(Sender: TObject);
    procedure QuadratGClick(Sender: TObject);
    procedure RauteOClick(Sender: TObject);
    procedure RauteGClick(Sender: TObject);
    procedure FarbePClick(Sender: TObject);
    procedure kopierenClick(Sender: TObject);
    procedure transparentClick(Sender: TObject);
    procedure HFarbeClick(Sender: TObject);
    procedure FarbeKClick(Sender: TObject);
    procedure FarbeRClick(Sender: TObject);
    procedure FuellungClick(Sender: TObject);
    procedure KoordFarbeClick(Sender: TObject);
    procedure PunktGrClick(Sender: TObject);
    procedure ListBoxGroesseClick(Sender: TObject);
    procedure einrichtenClick(Sender: TObject);
    procedure druckenClick(Sender: TObject);
    procedure MaskEditUnterschriftKeyPress(Sender: TObject; var Key: Char);
    procedure RadioButtonlinksClick(Sender: TObject);
    procedure RadioButtonzentriertClick(Sender: TObject);
    procedure RadioButtonrechtsClick(Sender: TObject);
    procedure ListBoxSchriftClick(Sender: TObject);
    procedure HilfeClick(Sender: TObject);
    procedure HandbuchClick(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
    procedure SpeedKreisOClick(Sender: TObject);
    procedure SpeedKreisGClick(Sender: TObject);
    procedure SpeedDreieckOClick(Sender: TObject);
    procedure SpeedDreieckGClick(Sender: TObject);
    procedure SpeedQuadratOClick(Sender: TObject);
    procedure SpeedQuadratGClick(Sender: TObject);
    procedure SpeedRauteOClick(Sender: TObject);
    procedure SpeedRauteGClick(Sender: TObject);
    procedure SpeedFarbeClick(Sender: TObject);
    procedure ButtonOkSClick(Sender: TObject);
    procedure MaskEditA1KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditA2KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditThSKeyPress(Sender: TObject; var Key: Char);
    procedure EinAchsenClick(Sender: TObject);
    procedure EinElongationClick(Sender: TObject);
    procedure MaskEditE1KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditE2KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditThelKeyPress(Sender: TObject; var Key: Char);
    procedure ButtonOKEClick(Sender: TObject);
    procedure MaskEditE2KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedAchsenClick(Sender: TObject);
    procedure SpeedPGroesseClick(Sender: TObject);
    procedure SpeedKopierenClick(Sender: TObject);
    procedure SpeedTransparentClick(Sender: TObject);
    procedure SpeedHFarbeClick(Sender: TObject);
    procedure SpeedKreisFarbeClick(Sender: TObject);
    procedure SpeedKreisFuellClick(Sender: TObject);
    procedure SpeedFKoordClick(Sender: TObject);
    procedure SpeedRahmenFarbeClick(Sender: TObject);
    procedure SpeedEinrichtenClick(Sender: TObject);
    procedure SpeedDruckenClick(Sender: TObject);
    procedure SpeedHilfeClick(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure SpeedLiteraturClick(Sender: TObject);
    procedure SpeedElongClick(Sender: TObject);
    procedure ButtonDruckenClick(Sender: TObject);
    procedure ButtonAbbrechenClick(Sender: TObject);
    procedure speichernClick(Sender: TObject);
    procedure ListBoxSpeichernClick(Sender: TObject);
    procedure FontClick(Sender: TObject);
    procedure SpeedFontClick(Sender: TObject);
end;

const
  Bo = Pi/180;
var
  Form91      : TForm91;
  Sigma1      : integer;
  Sigma2      : integer;
  Theta       : shortint;
  SigmaS      : real;
  SigmaN      : real;
  CurrentFile : string;
  TextS       : string;
  Gedrueckt   : array [1..3] of boolean;
  BuendigS    : string;
  Alang       : real;
  Akurz       : real;
  Thets       : shortint;
  EingS       : string;
  E1, E2      : real;
  DNameS      : string;
  Bild        : TBitmap;
  Ratio       : real;

implementation

uses Unit90;
{$R *.DFM}

procedure TForm91.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm91.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm91.FormActivate(Sender: TObject);
var
  i : byte;
begin
  Left   := 70;
  Top    := 10;
  Width  := 1050;
  Height := 750;
  if MohrKreisS = 'Spannung' then Form91.Caption := 'Fabric8: '+Tx(1491);
  if MohrKreisS = 'Deformation' then Form91.Caption :='Fabric8: '+Tx(1501);
  SpeedAchsen.Hint      := Hilf(634);
  SpeedElong.Hint       := Hilf(635);
  SpeedKreisO.Hint      := Hilf(371);
  SpeedKreisG.Hint      := Hilf(372);
  SpeedDreieckO.Hint    := Hilf(373);
  SpeedDreieckG.Hint    := Hilf(374);
  SpeedQuadratO.Hint    := Hilf(375);
  SpeedQuadratG.Hint    := Hilf(376);
  SpeedRauteO.Hint      := Hilf(377);
  SpeedRauteG.Hint      := Hilf(378);
  SpeedFarbe.Hint       := Hilf(365);
  SpeedPGroesse.Hint    := Hilf(636);
  SpeedKopieren.Hint    := Hilf(262);
  SpeedTransparent.Hint := Hilf(584);
  SpeedHFarbe.Hint      := Hilf(443);
  SpeedKreisFarbe.Hint  := Hilf(637);
  SpeedKreisFuell.Hint  := Hilf(638);
  SpeedFKoord.Hint      := Hilf(444);
  SpeedRahmenFarbe.Hint := Hilf(442);
  SpeedDrucken.Hint     := Hilf(309);
  SpeedEinrichten.Hint  := Hilf(240);
  SpeedSpeichern.Hint   := Hilf(264);
  SpeedFont.Hint        := Hilf(686);
  PanelStress.Visible   := false;
  PanelStrain.Visible   := false;
  PanelElong.Visible    := false;
  PanelErgebnis.Visible := false;
  PanelErgStrain.Visible:= false;
  StrainEingabe.Enabled := false;
  DecimalSeparator      := '.';
  MaskEditS1.EditMask   := '#9999;0; ';
  MaskEditS2.EditMask   := '#9999;0; ';
  MaskEditTh.EditMask   := '#99;0; ';
  MaskEditA1.EditMask   := '999.99;.; ';
  MaskEditA2.EditMask   := '999.99;.; ';
  MaskEditThS.EditMask  := '#99;0; ';
  MaskeditE1.EditMask   := '999.99;.; ';
  MaskEditE2.EditMask   := '-9.999;.; ';
  MaskEditThel.EditMask := '#99;0; ';
  ButtonZuruck.Caption  := Tx(30);
  ButtonEnde.Caption    := Tx(53);
  LabelEin.Caption      := Tx(809);
  LabelAEing.Caption    := Tx(809);
  LabelSEin.Caption     := Tx(1533);
  Punkte.Caption        := Tx(846);
  KreisO.Caption        := Tx(262);
  KreisG.Caption        := Tx(263);
  DreieckO.Caption      := Tx(266);
  DreieckG.Caption      := Tx(267);
  QuadratO.Caption      := Tx(264);
  QuadratG.Caption      := Tx(265);
  RauteO.Caption        := Tx(268);
  RauteG.Caption        := Tx(269);
  FarbeP.Caption        := Tx(662);
  PunktGr.Caption       := Tx(1498);
  LabelGroesse.Caption  := Tx(1498);
  Grafik.Caption        := Tx(281);
  kopieren.Caption      := Tx(282);
  speichern.Caption     := Tx(284);
  Hintergrund.Caption   := Tx(1453);
  HFarbe.Caption        := Tx(275);
  FarbeK.Caption        := Tx(1499);
  Fuellung.Caption      := Tx(1500);
  KoordFarbe.Caption    := Tx(729);
  FarbeR.Caption        := Tx(944);
  Drucker.Caption       := Tx(1080);
  einrichten.Caption    := Tx(94);
  drucken.Caption       := Tx(93);
  Hilfe.Caption         := Tx(162) + ' (F1)';
  Handbuch.Caption      := Tx(1055) + ' (F2)';
  Literatur.Caption     := Tx(1183) + ' (F5)';
  LabelA1.Caption       := Tx(987);
  LabelA2.Caption       := Tx(989);
  LabelWinkel.Caption   := Tx(953);
  StrainEingabe.Caption := Tx(55);
  EinAchsen.Caption     := Tx(1502);
  LabelStrain.Caption   := Tx(1503);
  LabelScher.Caption    := Tx(1504);
  Font.Caption          := Tx(1621);
  PanelErgebnis.Visible := false;
  ButtonOK.Visible      := false;
  LabelGroesse.Visible  := false;
  ListBoxGroesse.Visible:= false;
  Punkte.Enabled        := false;
  FarbeP.Enabled        := false;
  PunktGr.Enabled       := false;
  Grafik.Enabled        := false;
  LabelStrain.Visible   := false;
  LabelFehler.Visible   := false;
  for i := 3 to 50 do
    ListBoxGroesse.Items.Add(IntTostr(i));
  With ImageMohr do
  begin
    Canvas.Brush.Color := clWhite;
    Canvas.Rectangle (0,0,Width,Height);
  end;
  HTransparent             := false;
  PanelSpeed.Visible       := false;
  SpeedKreisO.Visible      := false;
  SpeedKreisG.Visible      := false;
  SpeedDreieckO.Visible    := false;
  SpeedDreieckG.Visible    := false;
  SpeedQuadratO.Visible    := false;
  SpeedQuadratG.Visible    := false;
  SpeedRauteO.Visible      := false;
  SpeedRauteG.Visible      := false;
  SpeedFarbe.Visible       := false;
  SpeedPGroesse.Visible    := false;
  SpeedKopieren.Visible    := false;
  SpeedTransparent.Visible := false;
  SpeedHFarbe.Visible      := false;
  SpeedKreisFarbe.Visible  := false;
  SpeedKreisFuell.Visible  := false;
  SpeedFKoord.Visible      := false;
  SpeedRahmenFarbe.Visible := false;
  SpeedEinrichten.Visible  := false;
  SpeedDrucken.Visible     := false;
  for i := 1 to 7 do
    ListBoxSpeichern.Items.Add (Tx(1611+i));
  ListBoxSpeichern.Visible := false;  
end;

procedure TForm91.ButtonStartClick(Sender: TObject);
begin
  Ratio := ImageMohr.Width/ImageMohr.Height;
  PanelSpeed.Visible := true;
  With ImageMohr do
  begin
    Canvas.Brush.Color := clWhite;
    Canvas.Rectangle (0,0,Width,Height);
  end;
  if MohrKreisS = 'Deformation' then
  begin
    StrainEingabe.Enabled := true;
    LabelStrain.Visible   := true;
    PanelErgebnis.Visible := false;
    SpeedAchsen.Visible   := true;
    SpeedElong.Visible    := true;
    MaskEditE1.Clear;
    MaskEditE2.Clear;
    MaskEditThel.Clear;
    MaskEditA1.Clear;
    MaskEditA2.Clear;
    MaskEditThS.Clear;
  end;
  if MohrKreisS = 'Spannung' then
  begin
    StrainEingabe.Enabled := false;
    SpeedAchsen.Visible   := false;
    SpeedElong.Visible    := false;
    PanelStress.Visible   := true;
    MaskEditS1.Clear;
    MaskEditS2.Clear;
    MaskEditTh.Clear;
    MaskeditS1.Setfocus;
    ButtonOK.Visible      := false;
    PanelErgebnis.Visible := false;
  end;
  HTransparent := false;
end;

procedure TForm91.ButtonZuruckClick(Sender: TObject);
begin
  Form91.Close;
end;

procedure TForm91.ButtonEndeClick(Sender: TObject);
begin
  Form91.Close;
  Form90.Close;
end;

procedure TForm91.EinAchsenClick(Sender: TObject);
begin
  PanelStrain.Visible := true;
  PanelElong.Visible  := false;
  MaskEditA1.Clear;
  MaskEditA2.Clear;
  MaskEditThS.Clear;
  MaskEditA1.SetFocus;
  ButtonOKS.Visible      := false;
  PanelErgStrain.Visible := false;
  EingS                  := 'Achsen';
  LabelStrain.Visible    := false;
end;

procedure TForm91.SpeedAchsenClick(Sender: TObject);
begin
  EinAchsenClick(Sender);
end;

procedure TForm91.EinElongationClick(Sender: TObject);
begin
  PanelElong.Visible  := true;
  PanelStrain.Visible := false;
  MaskEditE1.Clear;
  MaskEditE2.Clear;
  MaskEditThel.Clear;
  MaskEditE1.SetFocus;
  ButtonOKE.Visible      := false;
  PanelErgStrain.Visible := false;
  EingS                  := 'Elongation';
  LabelStrain.Visible    := false;
end;

procedure TForm91.SpeedElongClick(Sender: TObject);
begin
  EinElongationClick(Sender);
end;

procedure TForm91.MaskEditS1KeyPress(Sender: TObject; var Key: Char);
var
  Sigma1S : string;
begin
  if Key = chr(13) then
  begin
    Sigma1S := MaskEditS1.Text;
    LeerLoeschen (Sigma1S);
    if Sigma1S = '' then exit
    else
    begin
      Sigma1 := StrToInt(Sigma1S);
      MaskEditS2.SetFocus;
    end;
  end;
end;

procedure TForm91.MaskEditS2KeyPress(Sender: TObject; var Key: Char);
var
  Sigma2S : string;

begin
  if Key = chr(13) then
  begin
    Sigma2S := MaskEditS2.Text;
    LeerLoeschen (Sigma2S);
    if Sigma2S = '' then exit
    else Sigma2 := StrToInt(Sigma2S);
    if Sigma2 > Sigma1 then
    begin
      MaskEditS2.Clear;
      MaskEditS1.Clear;
      showmessage(Tx(1525));
      MaskEditS1.Setfocus
    end
    else MaskEditTh.SetFocus;
  end;
end;

procedure TForm91.MaskEditThKeyPress(Sender: TObject; var Key: Char);
var
  ThetaS  : string;
begin
  DecimalSeparator := '.';
  if Key = chr(13) then
  begin
    ThetaS := MaskEditTh.Text;
    LeerLoeschen (ThetaS);
    if ThetaS = '' then exit
    else Theta := StrToInt(ThetaS);
    SigmaS := sin(2*Theta*Bo)*(Sigma1 - Sigma2)/2;
    SigmaN := (Sigma1 + Sigma2)/2 + cos(2*Theta*Bo)*(Sigma1 - Sigma2)/2;
    SigmaS := round(SigmaS*10)/10;
    SigmaN := round(SigmaN*10)/10;
    ButtonOK.Visible := true;
  end;
end;

procedure TForm91.ButtonOKClick(Sender: TObject);
var
  X, Y    : word;
  NumS    : string;
  Xn, Yn  : integer;
  X0, l   : integer;
  XM, Ra  : real;
  Faktor  : real;
  NFaktor : real;
  i       : byte;
  Rekt    : TRect;
begin
  PanelErgebnis.Visible := true;
  LabelSigN.Caption := FloatToStr(SigmaN);
  LabelSigS.Caption := FloatToStr(SigmaS);
  with ImageMohr do
  begin
    Faktor  := (Width-50)/Sigma1;
    NFaktor := (Width-50)/(Sigma1+abs(Sigma2));
    XM      := (Sigma1+Sigma2)/2;
    RA      := (Sigma1-Sigma2)/2;
    if Sigma2 >= 0 then
    begin
      X0 := 0;
      XMitte := round(XM*Faktor);
      Radius := round(RA*Faktor);
    end
    else
    begin
      X0 := round(abs(Sigma2)*NFaktor);
      XMitte := round(XM*NFaktor);
      XMitte := XMitte + X0;
      Radius := round(RA*NFaktor);
    end;
    YMitte := Height div 2;
    with Canvas do
    begin
      if HTransparent then
      begin
        Rekt := Rect(0,0,Breite+1,Hoehe+1);
        Loeschen(Canvas,Rekt);
        Brush.Color := clWhite;
        HintFarbe   := clWhite;
        Rectangle (0,0,Width,Height);
      end
      else
      begin
        Pen.Color   := RahmenFarbe;
        Brush.Color := HintFarbe;
        Rectangle(0,0,Width, Height);
      end;
      Pen.Color := UmfangFarbe;
      Brush.Color := Diagrfarbe;
      Ellipse(XMitte-Radius, YMitte-Radius, XMitte+Radius, YMitte+Radius);
      if Sigma2 < 0 then
      begin
        Pen.Color := KoordinFarbe;
        Moveto (X0,0);
        Lineto (X0,Height);
      end;
      Pen.Color := DatenFarbe;
      Pen.Width := 2;
      if LeftS(Datensymbol,4) = 'Open' then Brush.Color := clWhite
      else Brush.Color := DatenFarbe;
      Pplotten(ImageMohr.Canvas, XMitte+Radius,YMitte, Strich);
      Pplotten(ImageMohr.Canvas, Xmitte-Radius,YMitte, Strich);
      Xn := round(XMitte+Radius*cos(2*Theta*Bo));
      Yn := round(YMitte-Radius*sin(2*Theta*Bo));
      Pplotten(ImageMohr.Canvas,Xn, Yn, Strich);
      Moveto(XMitte,YMitte);
      Pen.Width := 2;
      Pen.Color := KoordinFarbe;
      Lineto(Xn,Yn);
      MoveTo(0,YMitte);
      Pen.Width := 1;
      LineTo(Width,YMitte);
      Font.Color := KoordinFarbe;
      Brush.Style := bsClear;
      for i := 1 to 10 do
      begin
        X := X0+round(i*(Width-50-X0)/10);
        moveto (X,YMitte);
        Lineto (X,YMitte+10);
        NumS := FloatToStr(i*Sigma1/10);
        Textout (X+5,YMitte+5,NumS);
      end;
      if (RA < 20) then l := 5 else l := 10;
      for i := 1 to l do
      begin
        Y := YMitte-round((i*Radius/l)*Theta/abs(Theta));
        moveto(X0,Y);
        Lineto(X0+10,Y);
        NumS := FloatToStr(round((i*RA)/l)*Theta/abs(Theta));
        Textout(X0+5,Y+2,NumS);
      end;
      Textout(X0+5,YMitte+5,'0');
      if Sigma2 <0 then
      begin
        l := abs(Sigma2) div 10;
        for i := 1 to l do
        begin
          X := X0 - round(i*(Width-50-X0)/10);
          Moveto (X,YMitte);
          Lineto (X,YMitte+10);
          NumS := FloatToStr(-i*Sigma1/10);
          Textout(X+5,YMitte+5,NumS);
        end;
      end;
      Font.Size := 20;
      Font.Name := 'Symbol';
      Textout(10,5,'s');
      Textout(Width-50,Height-40,'s');
      Font.Name := 'Times New Roman';
      Textout(25,15,'s');
      Textout(Width-30,Height-30,'n'); 
      Font.Size := 8;
    end;
  end;
  if DemoB then DemoText (ImageMohr.Canvas,10,ImageMohr.Height-50);
  SpeedKreisO.Visible      := true;
  SpeedKreisG.Visible      := true;
  SpeedDreieckO.Visible    := true;
  SpeedDreieckG.Visible    := true;
  SpeedQuadratO.Visible    := true;
  SpeedQuadratG.Visible    := true;
  SpeedRauteO.Visible      := true;
  SpeedRauteG.Visible      := true;
  SpeedFarbe.Visible       := true;
  SpeedPGroesse.Visible    := true;
  SpeedKopieren.Visible    := true;
  SpeedTransparent.Visible := true;
  SpeedHFarbe.Visible      := true;
  SpeedKreisFarbe.Visible  := true;
  SpeedKreisFuell.Visible := true;
  SpeedFKoord.Visible      := true;
  SpeedRahmenFarbe.Visible := true;
  SpeedEinrichten.Visible  := true;
  SpeedDrucken.Visible     := true;
  Punkte.Enabled           := true;
  FarbeP.Enabled           := true;
  PunktGr.Enabled          := true;
  Grafik.Enabled           := true;
end;

procedure TForm91.MaskEditA1KeyPress(Sender: TObject; var Key: Char);
var
  AlangS : string;
begin
  if Key = chr(13) then
  begin
    AlangS := MaskEditA1.Text;
    LeerLoeschen (AlangS);
    if AlangS = '' then exit
    else
    begin
      Alang := StrToFloat(AlangS);
      MaskEditA2.SetFocus;
    end;
  end;
end;

procedure TForm91.MaskEditA2KeyPress(Sender: TObject; var Key: Char);
var
  AkurzS : string;
begin
  if Key = chr(13) then
  begin
    AkurzS := MaskEditA2.Text;
    LeerLoeschen (AkurzS);
    if AkurzS = '' then exit
    else
    begin
      Akurz := StrToFloat(AkurzS);
      MaskEditThS.SetFocus;
    end;
  end;
end;

procedure TForm91.MaskEditThSKeyPress(Sender: TObject; var Key: Char);
var
  ThetaS : string;
begin
  if Key = chr(13) then
  begin
    ThetaS := MaskEditThS.Text;
    LeerLoeschen (ThetaS);
    if ThetaS = '' then exit
    else
    begin
      Thets := StrToInt(ThetaS);
      ButtonOKS.Visible := true;
    end;
  end;
end;

procedure TForm91.MaskEditE1KeyPress(Sender: TObject; var Key: Char);
var
  Elong1S : string;
begin
  if Key = chr(13) then
  begin
    Elong1S := MaskEditE1.Text;
    LeerLoeschen (Elong1S);
    if Elong1S = '' then exit
    else
    begin
      E1 := StrToFloat(Elong1S);
      MaskEditE2.SetFocus;
    end;
  end;
end;

procedure TForm91.MaskEditE2KeyPress(Sender: TObject; var Key: Char);
var
  Elong2S : string;
begin
  if Key = chr(13) then
  begin
    Elong2S := MaskEditE2.Text;
    LeerLoeschen (Elong2S);
    if Elong2S = '' then exit
    else
    begin
      E2 := StrToFloat(Elong2S);
      MaskEditThel.SetFocus;
    end;
  end;
end;

procedure TForm91.MaskEditE2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  NullS  : string[1];
begin
  NullS := copy(MaskEditE2.Text,2,1);
  if (NullS = '0') or (NullS = ' ') then LabelFehler.Visible := false
  else
  begin
    MaskEditE2.Clear;
    if ord(NullS[1]) > 48 then LabelFehler.Visible := true
  end;
end;

procedure TForm91.MaskEditThelKeyPress(Sender: TObject; var Key: Char);
var
  ThetaS : string;
begin
  if Key = chr(13) then
  begin
    ThetaS := MaskEditThel.Text;
    LeerLoeschen (ThetaS);
    if ThetaS = '' then exit
    else
    begin
      Thets := StrToInt(ThetaS);
      ButtonOKE.Visible := true;
    end;
  end;
end;

procedure TForm91.ButtonOKEClick(Sender: TObject);
begin
  ButtonOkSClick(Sender);
end;

procedure TForm91.ButtonOkSClick(Sender: TObject);
var
  RadEll    : real;
  S1, S2    : real;
  L1, L2    : real;
  El1, El2  : integer;
  L1s, L2s  : real;
  Ls, Gs    : real;
  Gamma, Le : real;
  Psi, Ee   : integer;
  NFaktor   : real;
  XM, RA    : real;
  Rekt      : TRect;
  Xn, Yn    : word;
  X, Y      : word;
  i, l      : byte;
  NumS      : string;
begin
  PanelErgStrain.Visible := true;
  if EingS = 'Achsen' then
  begin
    RadEll := sqrt(Alang * Akurz);
    E1     := (Alang - RadEll)/RadEll;
    E2     := (Akurz - RadEll)/RadEll;
  end;
  El1    := round(E1*100);
  El2    := round(E2*100);
  S1     := 1 + E1;
  S2     := 1 + E2;
  L1     := sqr(S1);
  L2     := sqr(S2);
  LabelE1.Caption   := IntToStr(EL1)+'%';
  LabelE2.Caption   := IntToStr(EL2)+'%';
  L1s   := 1/L1;
  L2s   := 1/L2;
  Ls    := (L1s+L2s)/2 + (L1s-L2s)*cos(2*Thets*Bo)/2;
  Gs    := (L2s-L1s)*sin(2*Thets*Bo)/2;
  Le    := round(100/Ls)/100;
  Gamma := Gs*Le;
  Psi   := round(arctan(Gamma)/Bo);
  Ee    := round((sqrt(Le)-1)*100);
  LabelEwert.Caption := IntToStr(Ee)+' %';
  LabelGamma.Caption := FloatToStr(round(Gamma*1000)/1000);
  LabelWwert.Caption := IntToStr(Psi)+'°';
  with ImageMohr do
  begin
    Faktor  := (Width-50)/L2s;
    NFaktor := (Width-50)/(L2s+L1s);
    XM      := (L1s+l2s)/2;
    RA      := (L2s-L1s)/2;
    XMitte := round(XM*Faktor);
    Radius := round(RA*Faktor);
    YMitte := Height div 2;
    with Canvas do
    begin
      if HTransparent then
      begin
        Rekt := Rect(0,0,Breite+1,Hoehe+1);
        Loeschen(Canvas,Rekt);
        Brush.Color := clWhite;
        HintFarbe   := clWhite;
        Rectangle (0,0,Width,Height);
      end
      else
      begin
        Pen.Color   := RahmenFarbe;
        Brush.Color := HintFarbe;
        Rectangle(0,0,Width, Height);
      end;
      Pen.Color := UmfangFarbe;
      Brush.Color := Diagrfarbe;
      Ellipse(XMitte-Radius, YMitte-Radius, XMitte+Radius, YMitte+Radius);
      Pen.Color := DatenFarbe;
      Pen.Width := 2;
      if LeftS(Datensymbol,4) = 'Open' then Brush.Color := clWhite
      else Brush.Color := DatenFarbe;
      Pplotten(ImageMohr.Canvas, XMitte+Radius,YMitte, Strich);
      Pplotten(ImageMohr.Canvas, Xmitte-Radius,YMitte, Strich);
      Xn := round(XMitte+Radius*cos(Pi-2*Thets*Bo));
      Yn := round(YMitte-Radius*sin(Pi-2*Thets*Bo));
      Pplotten(ImageMohr.Canvas,Xn, Yn, Strich);
      Moveto(XMitte,YMitte);
      Pen.Width := 2;
      Pen.Color := KoordinFarbe;
      Lineto(Xn,Yn);
      MoveTo(0,YMitte);
      Pen.Width := 1;
      LineTo(Width,YMitte);
      Font.Color := KoordinFarbe;
      Brush.Style := bsClear;
      for i := 1 to 10 do
      begin
        X := round(i*(Width-50)/10);
        moveto (X,YMitte);
        Lineto (X,YMitte+10);
        NumS := FloatToStr(round(i*L2s*10)/100);
        Textout (X+5,YMitte+5,NumS);
      end;
      if (L2s-L1s)/2 < 0.25 then l := 5 else l := 10;
      for i := 1 to l do
      begin
        Y := YMitte-round((i*(L2s-L1s)*(Width-50)/(2*L2s*l))*Thets/abs(Thets));
        moveto(0,Y);
        Lineto(0+10,Y);
        NumS := FloatToStr(round(i*GS*10)/(l*10));
        Textout(5,Y+2,NumS);
      end;
      Textout(5,YMitte+5,'0');
      Font.Size := 20;
      Font.Name := 'Symbol';
      Textout(10,10,'g/l');
      Textout(Width-50,Height-35,'1/l');
      Font.Size := 8;
    end;
  end;
  if DemoB then DemoText (ImageMohr.Canvas,10,ImageMohr.Height-40);
  SpeedKreisO.Visible      := true;
  SpeedKreisG.Visible      := true;
  SpeedDreieckO.Visible    := true;
  SpeedDreieckG.Visible    := true;
  SpeedQuadratO.Visible    := true;
  SpeedQuadratG.Visible    := true;
  SpeedRauteO.Visible      := true;
  SpeedRauteG.Visible      := true;
  SpeedFarbe.Visible       := true;
  SpeedPGroesse.Visible    := true;
  SpeedKopieren.Visible    := true;
  SpeedTransparent.Visible := true;
  SpeedHFarbe.Visible      := true;
  SpeedKreisFarbe.Visible  := true;
  SpeedKreisFuell.Visible := true;
  SpeedFKoord.Visible      := true;
  SpeedRahmenFarbe.Visible := true;
  SpeedEinrichten.Visible  := true;
  SpeedDrucken.Visible     := true;
  Punkte.Enabled           := true;
  FarbeP.Enabled           := true;
  PunktGr.Enabled          := true;
  Grafik.Enabled           := true;
end;

procedure TForm91.KreisOClick(Sender: TObject);
var
Datei : TextFile;
i     : byte;
begin
  DatenSymbol   := 'OpenCircle';
  if ProjektionS <> '' then ButtonStart.Enabled := true;
  KonfigZeileS[9] := '  Data Symbol              :,OpenCircle';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  if MohrKreisS = 'Spannung' then ButtonOKClick(Sender);
  if MohrKreisS = 'Deformation' then ButtonOKSClick(Sender);
end;

procedure TForm91.SpeedKreisOClick(Sender: TObject);
begin
  KreisOClick(Sender);
end;

procedure TForm91.KreisGClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  DatenSymbol := 'FilledCircle';
  if ProjektionS <> '' then ButtonStart.Enabled := true;
  KonfigZeileS[9] := '  Data Symbol              :,FilledCircle';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  if MohrKreisS = 'Spannung' then ButtonOKClick(Sender);
  if MohrKreisS = 'Deformation' then ButtonOKSClick(Sender);
end;

procedure TForm91.SpeedKreisGClick(Sender: TObject);
begin
  KreisGClick(Sender);
end;

procedure TForm91.DreieckOClick(Sender: TObject);
var
Datei : TextFile;
i     : byte;
begin
  Datensymbol := 'OpenTriangle';
  if ProjektionS <> '' then ButtonStart.Enabled := true;
  KonfigZeileS[9] := '  Data Symbol              :,OpenTriangle';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  if MohrKreisS = 'Spannung' then ButtonOKClick(Sender);
  if MohrKreisS = 'Deformation' then ButtonOKSClick(Sender);
end;

procedure TForm91.SpeedDreieckOClick(Sender: TObject);
begin
  DreieckOClick(Sender);
end;

procedure TForm91.DreieckGClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  DatenSymbol   := 'FilledTriangle';
  if ProjektionS <> '' then ButtonStart.Enabled := true;
  KonfigZeileS[9] := '  Data Symbol              :,FilledTriangle';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  if MohrKreisS = 'Spannung' then ButtonOKClick(Sender);
  if MohrKreisS = 'Deformation' then ButtonOKSClick(Sender);
end;

procedure TForm91.SpeedDreieckGClick(Sender: TObject);
begin
  DreieckGClick(Sender);
end;

procedure TForm91.QuadratOClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  DatenSymbol := 'OpenSquare';
  if ProjektionS <> '' then ButtonStart.Enabled := true;
  KonfigZeileS[9] := '  Data Symbol              :,OpenSquare';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  if MohrKreisS = 'Spannung' then ButtonOKClick(Sender);
  if MohrKreisS = 'Deformation' then ButtonOKSClick(Sender);
end;

procedure TForm91.SpeedQuadratOClick(Sender: TObject);
begin
  QuadratOClick(Sender);
end;

procedure TForm91.QuadratGClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  DatenSymbol := 'FilledSquare';
  if ProjektionS <> '' then ButtonStart.Enabled := true;
  KonfigZeileS[9] := '  Data Symbol              :,FilledSquare';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  if MohrKreisS = 'Spannung' then ButtonOKClick(Sender);
  if MohrKreisS = 'Deformation' then ButtonOKSClick(Sender);
end;

procedure TForm91.SpeedQuadratGClick(Sender: TObject);
begin
  QuadratGClick(Sender);
end;

procedure TForm91.RauteOClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  DatenSymbol   := 'OpenDiamond';
  if ProjektionS <> '' then ButtonStart.Enabled := true;
  KonfigZeileS[9] := '  Data Symbol              :,OpenDiamond';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  if MohrKreisS = 'Spannung' then ButtonOKClick(Sender);
  if MohrKreisS = 'Deformation' then ButtonOKSClick(Sender);
end;

procedure TForm91.SpeedRauteOClick(Sender: TObject);
begin
  RauteOClick(Sender);
end;

procedure TForm91.RauteGClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  DatenSymbol   := 'FilledDiamond';
  if ProjektionS <> '' then ButtonStart.Enabled := true;
  KonfigZeileS[9] := '  Data Symbol              :,FilledDiamond';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  if MohrKreisS = 'Spannung' then ButtonOKClick(Sender);
  if MohrKreisS = 'Deformation' then ButtonOKSClick(Sender);
end;

procedure TForm91.SpeedRauteGClick(Sender: TObject);
begin
  RauteGClick(Sender);
end;

procedure TForm91.FarbePClick(Sender: TObject);
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
  if MohrKreisS = 'Spannung' then ButtonOKClick(Sender);
  if MohrKreisS = 'Deformation' then ButtonOKSClick(Sender);
end;

procedure TForm91.SpeedFarbeClick(Sender: TObject);
begin
  FarbePClick(Sender);
end;

procedure TForm91.FontClick(Sender: TObject);
begin
  WaehlFont(FontDialog1);
end;

procedure TForm91.SpeedFontClick(Sender: TObject);
begin
  FontClick(Sender);
end;

procedure TForm91.kopierenClick(Sender: TObject);
begin
  ClipBoard.Assign (ImageMohr.Picture);
end;

procedure TForm91.SpeedKopierenClick(Sender: TObject);
begin
  kopierenClick(Sender);
end;

procedure TForm91.speichernClick(Sender: TObject);
begin
  ListBoxSpeichern.Visible := true;
end;

procedure TForm91.ListBoxSpeichernClick(Sender: TObject);
begin
  BBreiteSt := ImageMohr.Width;
  Ratio        := ImageMohr.Width/ImageMohr.Height;
  GrafikSpeichern (ImageMohr, ListBoxSpeichern, Ratio,
                   SavePictureDialog1, SaveDialog1);
end;

procedure TForm91.transparentClick(Sender: TObject);
begin
  Farbe        := clWhite;
  HTransparent := true;
  ListBoxSpeichern.Clear;
  ListBoxSpeichern.Items.Add (Tx(1613));
  if MohrKreisS = 'Spannung' then ButtonOKClick(Sender);
  if MohrKreisS = 'Deformation' then ButtonOKSClick(Sender);
end;

procedure TForm91.SpeedTransparentClick(Sender: TObject);
begin
  transparentClick(Sender);
end;

procedure TForm91.HFarbeClick(Sender: TObject);
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
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  if MohrKreisS = 'Spannung' then ButtonOKClick(Sender);
  if MohrKreisS = 'Deformation' then ButtonOKSClick(Sender);
end;

procedure TForm91.SpeedHFarbeClick(Sender: TObject);
begin
  HFarbeClick(Sender);
end;

procedure TForm91.FarbeKClick(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  Farbe := clWhite;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS          := ColorToString (Farbe);
  UmfangFarbe     := StringToColor(FarbeS);
  KonfigZeileS[5] := '  Periphery Colour         :,'+FarbeS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  if MohrKreisS = 'Spannung' then ButtonOKClick(Sender);
  if MohrKreisS = 'Deformation' then ButtonOKSClick(Sender);
end;

procedure TForm91.SpeedKreisFarbeClick(Sender: TObject);
begin
  FarbeKClick(Sender);
end;

procedure TForm91.FarbeRClick(Sender: TObject);
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
  if MohrKreisS = 'Spannung' then ButtonOKClick(Sender);
  if MohrKreisS = 'Deformation' then ButtonOKSClick(Sender);
end;

procedure TForm91.SpeedRahmenFarbeClick(Sender: TObject);
begin
  FarbeRClick(Sender);
end;

procedure TForm91.FuellungClick(Sender: TObject);
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
  if MohrKreisS = 'Spannung' then ButtonOKClick(Sender);
  if MohrKreisS = 'Deformation' then ButtonOKSClick(Sender);
end;

procedure TForm91.SpeedKreisFuellClick(Sender: TObject);
begin
  FuellungClick(Sender);
end;

procedure TForm91.KoordFarbeClick(Sender: TObject);
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
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  if MohrKreisS = 'Spannung' then ButtonOKClick(Sender);
  if MohrKreisS = 'Deformation' then ButtonOKSClick(Sender);
end;

procedure TForm91.SpeedFKoordClick(Sender: TObject);
begin
  KoordFarbeClick(Sender);
end;

procedure TForm91.PunktGrClick(Sender: TObject);
begin
  LabelGroesse.Visible    := true;
  ListboxGroesse. visible := true;
end;

procedure TForm91.SpeedPGroesseClick(Sender: TObject);
begin
  PunktGrClick(Sender);
end;

procedure TForm91.ListBoxGroesseClick(Sender: TObject);
var
  i       : byte;
  StrichS : string[3];
  Datei   : TextFile;
begin
  for i := 0 to ListboxGroesse.Items.Count-1 do
  begin
    if ListboxGroesse.Selected[i] then
      Strich := StrToInt(ListBoxGroesse.Items.Strings[i]);
  end;
  StrichS := IntToStr(Strich);
  KonfigZeileS[99] := 'Pen width (in pixel)       :,'+StrichS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ListBoxGroesse.Visible := false;
  LabelGroesse.Visible   := false;
  if MohrKreisS = 'Spannung' then ButtonOKClick(Sender);
  if MohrKreisS = 'Deformation' then ButtonOKSClick(Sender);
end;

procedure TForm91.einrichtenClick(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TForm91.SpeedEinrichtenClick(Sender: TObject);
begin
  einrichtenClick(Sender);
end;

procedure TForm91.druckenClick(Sender: TObject);
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

procedure TForm91.SpeedDruckenClick(Sender: TObject);
begin
  druckenClick(Sender);
end;

procedure TForm91.MaskEditUnterschriftKeyPress(Sender: TObject;
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

procedure TForm91.RadioButtonlinksClick(Sender: TObject);
begin
  BuendigS := 'Links';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    ButtonDrucken.Enabled := true;
end;

procedure TForm91.RadioButtonzentriertClick(Sender: TObject);
begin
  BuendigS := 'Zentriert';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    ButtonDrucken.Enabled := true;
end;

procedure TForm91.RadioButtonrechtsClick(Sender: TObject);
begin
  BuendigS := 'Rechts';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    ButtonDrucken.Enabled := true;
end;

procedure TForm91.ListBoxSchriftClick(Sender: TObject);
var
  i        : word;
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

procedure TForm91.ButtonDruckenClick(Sender: TObject);
var
  XKoordS : string;
  YKoordS : string;
  RadiusS : string;
  Bitmap  : TBitmap;
  Fenster : TRect;
begin
  Paneldrucken.Visible         := false;
  RadioButtonlinks.Visible     := false;
  RadioButtonzentriert.Visible := false;
  RadioButtonrechts.Visible    := false;
  RadioGroup.Visible           := false;
  RadiusS := MaskEditRdrucken.Text;
  XKoordS := MaskEditXdrucken.Text;
  YKoordS := MaskEditYdrucken.Text;
  Bitmap:=TBitmap.Create;
  try
    Bitmap.Assign(ImageMohr.picture.graphic);
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

procedure TForm91.ButtonAbbrechenClick(Sender: TObject);
begin
  Paneldrucken.Visible         := false;
  RadioButtonlinks.Visible     := false;
  RadioButtonzentriert.Visible := false;
  RadioButtonrechts.Visible    := false;
  RadioGroup.Visible           := false;
end;

procedure TForm91.HilfeClick(Sender: TObject);
var
  DateiS : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\91Mohr-plot.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\91Mohr-plot.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm91.SpeedHilfeClick(Sender: TObject);
begin
  HilfeClick(Sender);
end;

procedure TForm91.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  begin
    if SpracheS = 'DEUTSCH' then HilfeS := 'Mohrscher_Kreis.doc';
    if SpracheS = 'ENGLISH' then HilfeS := 'Mohr´s_circle.doc';
    ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
                 nil,nil,sw_normal);
  end;
end;

procedure TForm91.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm91.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm91.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

end.
