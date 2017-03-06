unit Unit100;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, Globvar, StdCtrls, Texte, ExtCtrls, Basic, Mask,
  Kalkulat, FormFak, Menus, Plotten, Clipbrd, Grafik, ExtDlgs,
  Printers, Drucken, Einausga, ehsHelpRouter, ShellApi,
  Buttons, Standard, LiesConf;

type
  TForm100 = class(TForm)
    StatusBar: TStatusBar;
    ButtonStart: TButton;
    ButtonZuruck: TButton;
    ButtonEnde: TButton;
    PanelDateien: TPanel;
    LabelDateien: TLabel;
    LabelAnzahl: TLabel;
    Label00000: TLabel;
    LabelZahl: TLabel;
    ListBoxDateien: TListBox;
    PanelDaten: TPanel;
    LabelAnzahl1: TLabel;
    LabelZahl2: TLabel;
    LabelDaten: TLabel;
    ListBoxDaten: TListBox;
    PanelEingabe: TPanel;
    LabelSig1: TLabel;
    LabelSig3: TLabel;
    LabelAzimut: TLabel;
    LabelFal: TLabel;
    LabelStress: TLabel;
    MaskEditS1Azi: TMaskEdit;
    MaskEditS3Azi: TMaskEdit;
    MaskEditS1Fal: TMaskEdit;
    MaskEditS3Fal: TMaskEdit;
    CheckBoxOK: TCheckBox;
    ImageMohr: TImage;
    ImageHisto: TImage;
    MainMenu1: TMainMenu;
    Farbe: TMenuItem;
    Mohr: TMenuItem;
    Histo: TMenuItem;
    HHintergrund: TMenuItem;
    HRahmen: TMenuItem;
    HKoordinaten: TMenuItem;
    HFuellung: TMenuItem;
    ColorDialog1: TColorDialog;
    MHintergrund: TMenuItem;
    MRahmen: TMenuItem;
    MKoordinaten: TMenuItem;
    S1Kreis: TMenuItem;
    S2Kreis: TMenuItem;
    s3Kreis: TMenuItem;
    Mvektor: TMenuItem;
    PanelKlick: TPanel;
    LabelKlick1: TLabel;
    LabelKlick2: TLabel;
    LabelKlick3: TLabel;
    LabelKlick4: TLabel;
    LabelKlick5: TLabel;
    LabelKlick6: TLabel;
    LabelKlick7: TLabel;
    LabelKlick8: TLabel;
    LabelHisto: TLabel;
    Grafik: TMenuItem;
    kopieren: TMenuItem;
    kopierenMohr: TMenuItem;
    kopierenHisto: TMenuItem;
    speichern: TMenuItem;
    SpeichernMohr: TMenuItem;
    speichernHisto: TMenuItem;
    ListBoxMSpeichern: TListBox;
    ListBoxHspeichern: TListBox;
    SavePictureDialog1: TSavePictureDialog;
    SaveDialog1: TSaveDialog;
    PrinterSetupDialog1: TPrinterSetupDialog;
    PrintDialog1: TPrintDialog;
    Drucker: TMenuItem;
    Installieren: TMenuItem;
    DruckenMohr: TMenuItem;
    DruckenHisto: TMenuItem;
    PanelDrucken: TPanel;
    GroupBoxDrucken: TGroupBox;
    Panel6: TPanel;
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
    RadioButtonRechts: TRadioButton;
    RadioButtonZentriert: TRadioButton;
    RadioButtonLinks: TRadioButton;
    ButtonDrucken: TButton;
    ButtonAbbrechen: TButton;
    Font: TMenuItem;
    FontDialog1: TFontDialog;
    DatenSpeichern: TMenuItem;
    Dspeichern: TMenuItem;
    DspeichernU: TMenuItem;
    Hilfe: TMenuItem;
    Handbuch: TMenuItem;
    Literatur: TMenuItem;
    PanelSpeed: TPanel;
    SpeedMPunkte: TSpeedButton;
    SpeedMHinter: TSpeedButton;
    SpeedMRahmen: TSpeedButton;
    SpeedMKoord: TSpeedButton;
    SpeedS1: TSpeedButton;
    SpeedS2: TSpeedButton;
    SpeedS3: TSpeedButton;
    SpeedHHinter: TSpeedButton;
    SpeedHRahmen: TSpeedButton;
    SpeedHKoordin: TSpeedButton;
    SpeedHFuellung: TSpeedButton;
    SpeedMkopieren: TSpeedButton;
    SpeedHkopieren: TSpeedButton;
    SpeedMspeichern: TSpeedButton;
    SpeedHspeichern: TSpeedButton;
    SpeedEinrichten: TSpeedButton;
    SpeedMdrucken: TSpeedButton;
    SpeedHdrucken: TSpeedButton;
    SpeedFont: TSpeedButton;
    SpeedDspeichern: TSpeedButton;
    PanelMGroesse: TPanel;
    LabelMBHoehe: TLabel;
    LabelMBBreite: TLabel;
    CheckBoxMBild: TCheckBox;
    LabelMohr: TLabel;
    PanelHGroesse: TPanel;
    LabelHHoehe: TLabel;
    LabelHBreite: TLabel;
    LabelHistogramm: TLabel;
    CheckBoxHOk: TCheckBox;
    MaskEditMBBreite : TMaskEdit;
    MaskEditMBHoehe  : TMaskEdit;
    MaskEditHBBreite : TMaskEdit;
    MaskEditHBHoehe  : TMaskEdit;
    Auswertung: TMenuItem;
    Dieder: TMenuItem;
    Versatz: TMenuItem;
    Hoeppener: TMenuItem;
    Eigenwert: TMenuItem;
    Iteration: TMenuItem;
    SpeedVersatz: TSpeedButton;
    SpeedDieder: TSpeedButton;
    SpeedHoeppener: TSpeedButton;
    SpeedIter: TSpeedButton;
    SpeedEigenwerte: TSpeedButton;
    PanelHilfe: TPanel;
    SpeedHilfe: TSpeedButton;
    SpeedHandbuch: TSpeedButton;
    SpeedLiteratur: TSpeedButton;
    procedure ShowHint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ButtonZuruckClick(Sender: TObject);
    procedure ButtonEndeClick(Sender: TObject);
    procedure ButtonStartClick(Sender: TObject);
    procedure MaskEditS1AziChange(Sender: TObject);
    procedure MaskEditS1FalChange(Sender: TObject);
    procedure MaskEditS3AziChange(Sender: TObject);
    procedure MaskEditS3FalChange(Sender: TObject);
    procedure CheckBoxOKClick(Sender: TObject);
    procedure ImageMohrMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ImageMohrMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ImageMohrMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure HHintergrundClick(Sender: TObject);
    procedure HRahmenClick(Sender: TObject);
    procedure HKoordinatenClick(Sender: TObject);
    procedure HFuellungClick(Sender: TObject);
    procedure MHintergrundClick(Sender: TObject);
    procedure MRahmenClick(Sender: TObject);
    procedure MKoordinatenClick(Sender: TObject);
    procedure S1KreisClick(Sender: TObject);
    procedure S2KreisClick(Sender: TObject);
    procedure s3KreisClick(Sender: TObject);
    procedure MvektorClick(Sender: TObject);
    procedure kopierenMohrClick(Sender: TObject);
    procedure kopierenHistoClick(Sender: TObject);
    procedure SpeichernMohrClick(Sender: TObject);
    procedure speichernHistoClick(Sender: TObject);
    procedure ListBoxMSpeichernClick(Sender: TObject);
    procedure ListBoxHspeichernClick(Sender: TObject);
    procedure InstallierenClick(Sender: TObject);
    procedure DruckenMohrClick(Sender: TObject);
    procedure MaskEditUnterschriftKeyPress(Sender: TObject; var Key: Char);
    procedure RadioButtonLinksClick(Sender: TObject);
    procedure RadioButtonZentriertClick(Sender: TObject);
    procedure RadioButtonRechtsClick(Sender: TObject);
    procedure ButtonDruckenClick(Sender: TObject);
    procedure ListBoxSchriftClick(Sender: TObject);
    procedure ButtonAbbrechenClick(Sender: TObject);
    procedure DruckenHistoClick(Sender: TObject);
    procedure FontClick(Sender: TObject);
    procedure DspeichernClick(Sender: TObject);
    procedure DspeichernUClick(Sender: TObject);
    procedure HilfeClick(Sender: TObject);
    procedure HandbuchClick(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
    procedure SpeedMPunkteClick(Sender: TObject);
    procedure SpeedMHinterClick(Sender: TObject);
    procedure SpeedMRahmenClick(Sender: TObject);
    procedure SpeedMKoordClick(Sender: TObject);
    procedure SpeedS1Click(Sender: TObject);
    procedure SpeedS2Click(Sender: TObject);
    procedure SpeedS3Click(Sender: TObject);
    procedure SpeedHHinterClick(Sender: TObject);
    procedure SpeedHRahmenClick(Sender: TObject);
    procedure SpeedHKoordinClick(Sender: TObject);
    procedure SpeedHFuellungClick(Sender: TObject);
    procedure SpeedMkopierenClick(Sender: TObject);
    procedure SpeedHkopierenClick(Sender: TObject);
    procedure SpeedMspeichernClick(Sender: TObject);
    procedure SpeedHspeichernClick(Sender: TObject);
    procedure SpeedEinrichtenClick(Sender: TObject);
    procedure SpeedMdruckenClick(Sender: TObject);
    procedure SpeedHdruckenClick(Sender: TObject);
    procedure SpeedFontClick(Sender: TObject);
    procedure SpeedDspeichernClick(Sender: TObject);
    procedure SpeedHilfeClick(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure SpeedLiteraturClick(Sender: TObject);
    procedure CheckBoxMBildClick(Sender: TObject);
    procedure MaskEditMBBreiteKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditMBHoeheKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditHBBreiteKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditHBHoeheKeyPress(Sender: TObject; var Key: Char);
    procedure CheckBoxHOkClick(Sender: TObject);
    procedure DiederClick(Sender: TObject);
    procedure VersatzClick(Sender: TObject);
    procedure HoeppenerClick(Sender: TObject);
    procedure EigenwertClick(Sender: TObject);
    procedure IterationClick(Sender: TObject);
    procedure SpeedEigenwerteClick(Sender: TObject);
    procedure SpeedIterClick(Sender: TObject);
    procedure SpeedDiederClick(Sender: TObject);
    procedure SpeedVersatzClick(Sender: TObject);
    procedure SpeedHoeppenerClick(Sender: TObject);
  end;

var
  Form100         : TForm100;
  AziRotZeiger    : array of word;
  FalRotZeiger    : array of word;
  GAziRotZeiger   : array of word;
  GFalRotZeiger   : array of shortint;
  AziStrZeiger    : array of word;
  FalStrZeiger    : array of shortint;
  xnr, ynr        : array of word;
  BildMohr        : TBitmap;
  Ziehen          : boolean;
  Zaehl           : word;
  RatioM, RatioH  : real;
  BHoeheM,BHoeheH : word;
  TextS           : string;
  BuendigS        : string;
implementation
uses Unit27, Unit28, Unit29, Unit31, Unit33, Unit34, Unit35, Unit94, Unit99;
{$R *.DFM}

procedure TForm100.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm100.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm100.FormActivate(Sender: TObject);
var
  i : byte;
begin
  LiesConfig;
  Left   := 10;
  Top    := 10;
  Width  := 1050;
  Height := 750;
  WeiterB[100] := false;
  setlength (AziFeld, MaxDaten);
  setlength (FalFeld, MaxDaten);
  setlength (SAziFeld, MaxDaten);
  setlength (SFalFeld, MaxDaten);
  setlength (AziRotZeiger, MaxDaten);
  setlength (FalRotZeiger, MaxDaten);
  setlength (GAziRotZeiger, MaxDaten);
  setlength (GFalRotZeiger, MaxDaten);
  setlength (AziStrZeiger, MaxDaten);
  setlength (FalStrZeiger, MaxDaten);
  setlength (xnr, MaxDaten);
  setlength (ynr, MaxDaten);
  Form100.Caption        := Tx(1638);
  SpeedMPunkte.Hint      := Hilf(693);
  SpeedMHinter.Hint      := Hilf(694);
  SpeedMRahmen.Hint      := Hilf(695);
  SpeedMKoord.Hint       := Hilf(696);
  SpeedS1.Hint           := Hilf(697);
  SpeedS2.Hint           := Hilf(698);
  SpeedS3.Hint           := Hilf(699);
  SpeedHHinter.Hint      := Hilf(700);
  SpeedHRahmen.Hint      := Hilf(701);
  SpeedHKoordin.Hint     := Hilf(702);
  SpeedHFuellung.Hint    := Hilf(703);
  SpeedMkopieren.Hint    := Hilf(704);
  SpeedHkopieren.Hint    := Hilf(705);
  SpeedMspeichern.Hint   := Hilf(706);
  SpeedHspeichern.Hint   := Hilf(707);
  SpeedEinrichten.Hint   := Hilf(708);
  SpeedMdrucken.Hint     := Hilf(709);
  SpeedHdrucken.Hint     := Hilf(710);
  SpeedFont.Hint         := Hilf(711);
  SpeedDspeichern.Hint   := Hilf(712);
  SpeedHilfe.Hint        := Hilf(210);
  SpeedHandbuch.Hint     := Hilf(274);
  SpeedLiteratur.Hint    := Hilf(462);
  SpeedEigenwerte.Hint   := Hilf(513);
  SpeedIter.Hint         := Hilf(664);
  SpeedDieder.Hint       := Hilf(515);
  SpeedVersatz.Hint      := Hilf(512);
  SpeedHoeppener.Hint    := Hilf(514);
  LabelDateien.Caption   := Tx(136);
  LabelDaten.Caption     := Tx(914);
  LabelAnzahl1.Caption   := Tx(296);
  LabelZahl2.Caption     := '';
  LabelStress.Caption    := Tx(1245);
  LabelAzimut.Caption    := Tx(1568);
  LabelFal.Caption       := Tx(1569);
  ButtonZuruck.Caption   := Tx(30);
  ButtonEnde.Caption     := Tx(28);
  MaskEditS1Azi.EditMask := '999;0; ';
  MaskEditS1Fal.EditMask := '99;0; ';
  MaskEditS3Azi.EditMask := '999;0; ';
  MaskEditS3Fal.EditMask := '99;0; ';
  PanelDateien.Visible   := false;
  PanelDateien.Visible   := false;
  PanelEingabe.Visible   := false;
  MaskEditS1Azi.Text     := InttoStr (ASigma1);
  MaskEditS1Fal.Text     := InttoStr (FSigma1);
  MaskEditS3Azi.Text     := InttoStr (ASigma3);
  MaskEditS3Fal.Text     := InttoStr (FSigma3);
  CheckBoxOk.State       := cbUnchecked;
  PanelKlick.Visible     := false;
  LabelKlick1.Caption    := Tx(1639);
  LabelKlick2.Caption    := Tx(1640);
  LabelKlick3.Caption    := Tx(1641);
  LabelKlick4.Caption    := Tx(1642);
  LabelKlick5.Caption    := Tx(1643);
  LabelKlick6.Caption    := Tx(1644);
  LabelKlick7.Caption    := Tx(1645);
  LabelKlick8.Caption    := Tx(1646);
  PanelDaten.Visible     := false;
  LabelHisto.Caption     := Tx(1647);
  Farbe.Caption          := Tx(275);
  Mohr.Caption           := Tx(1649);
  Histo.Caption          := Tx(1650);
  Mvektor.Caption        := Tx(1651);
  MHintergrund.Caption   := Tx(1453);
  MRahmen.Caption        := Tx(1555);
  MKoordinaten.Caption   := Tx(689);
  s1Kreis.Caption        := Tx(1652);
  s2Kreis.Caption        := Tx(1653);
  s3Kreis.Caption        := Tx(1654);
  HHintergrund.Caption   := Tx(1453);
  HRahmen.Caption        := Tx(1555);
  HKoordinaten.Caption   := Tx(689);
  HFuellung.Caption      := Tx(475);
  LabelHisto.Visible     := false;
  Grafik.Caption         := Tx(281);
  kopieren.Caption       := Tx(282);
  speichern.Caption      := Tx(284);
  Drucker.Caption        := Tx(93);
  Installieren.Caption   := Tx(94);
  kopierenMohr.Caption   := Tx(1649);
  kopierenHisto.Caption  := Tx(1650);
  speichernMohr.Caption  := Tx(1649);
  speichernHisto.Caption := Tx(1650);
  DruckenMohr.Caption    := Tx(1649);
  DruckenHisto.Caption   := Tx(1650);
  Font.Caption           := Tx(1621);
  DatenSpeichern.Caption := Tx(86);
  Dspeichern.Caption     := Tx(87);
  DspeichernU.Caption    := Tx(88);
  Hilfe.Caption          := Tx(162);
  Handbuch.Caption       := Tx(1055);
  Literatur.Caption      := Tx(1183);
  LabelMohr.Caption      := Tx(1649);
  LabelMBBreite.Caption  := Tx(1440);
  LabelMBHoehe.Caption   := Tx(1441);
  LabelHistogramm.Caption:= Tx(1650);
  LabelHBreite.Caption   := Tx(1440);
  LabelHHoehe.Caption    := Tx(1441);
  Auswertung.Caption     := Tx(1341);
  Dieder.Caption         := Tx(17);
  Versatz.Caption        := Tx(18);
  Hoeppener.Caption      := Tx(1348);
  Eigenwert.Caption      := Tx(20)+', '+Tx(1566);
  Iteration.Caption      := Tx(20)+', '+Tx(1567);
  for i := 1 to 7 do
    ListBoxMSpeichern.Items.Add (Tx(1611+i));
  ListBoxMspeichern.Visible := false;
  for i := 1 to 7 do
    ListBoxHSpeichern.Items.Add (Tx(1611+i));
  ListBoxHspeichern.Visible := false;
  RatioM := ImageMohr.Width/ImageMohr.Height;
  RatioH := ImageHisto.Width/ImageHisto.Height;
  PanelDrucken.Visible  := false;
  PanelMGroesse.Visible := false;
  PanelHGroesse.Visible := false;
  PanelSpeed.Visible    := false;
  CheckBoxMBild.State   := cbUnchecked;
  CheckBoxHOk.State     := cbUnchecked;
  MaskEditMBBreite.Text := IntToStr(BBreiteMo);
  MaskEditMBHoehe.Text  := IntToStr(round(BBreiteMo/RatioM));
  MaskEditHBBreite.Text := IntToStr(BBreiteHi);
  MaskEditHBHoehe.Text  := IntToStr(round(BBreiteHi/RatioH));
  Auswertung.Enabled       := false;
  SpeedEigenwerte.Enabled  := false;
  SpeedIter.Enabled        := false;
  SpeedDieder.Enabled      := false;
  SpeedVersatz.Enabled     := false;
  SpeedHoeppener.Enabled   := false;
  SpeedMkopieren.Enabled   := false;
  SpeedHkopieren.Enabled   := false;
  SpeedMspeichern.Enabled  := false;
  SpeedHspeichern.Enabled  := false;
  SpeedMdrucken.Enabled    := false;
  SpeedHdrucken.Enabled    := false;
  Grafik.Enabled           := false;
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
end;

procedure TForm100.ButtonZuruckClick(Sender: TObject);
var
  Flaeche : TRect;
  i       : word;
begin
  Flaeche := Rect(0,0,Clientwidth,ClientHeight);
  Loeschen (ImageMohr.Canvas, Flaeche);
  Loeschen (ImageHisto.Canvas, Flaeche);
  BildMohr.Free;
  if not WeiterF then
  begin
    AziFeld       := NIL;
    FalFeld       := NIL;
    SAziFeld      := NIL;
    SFalFeld      := NIL;
    AziRotZeiger  := NIL;
    FalRotZeiger  := NIL;
    GAziRotZeiger := NIL;
    GFalRotZeiger := NIL;
    AziStrZeiger  := NIL;
    FalStrZeiger  := NIL;
    xnr           := NIL;
    ynr           := NIL;
  end;
  Form100.Close;
end;

procedure TForm100.ButtonEndeClick(Sender: TObject);
var
  Flaeche : TRect;
begin
  Flaeche := Rect(0,0,Clientwidth,ClientHeight);
  Loeschen (ImageMohr.Canvas, Flaeche);
  Loeschen (ImageHisto.Canvas, Flaeche);
  BildMohr.Free;
  AziFeld       := NIL;
  FalFeld       := NIL;
  SAziFeld      := NIL;
  SFalFeld      := NIL;
  AziRotZeiger  := NIL;
  FalRotZeiger  := NIL;
  GAziRotZeiger := NIL;
  GFalRotZeiger := NIL;
  AziStrZeiger  := NIL;
  FalStrZeiger  := NIL;
  xnr           := NIL;
  ynr           := NIL;
  Form100.Close;
  if EingabeS = 'manuell' then Form27.Close;
  if EingabeS = 'Festplatte' then Form28.Close;
  if EingabeS = 'Excel' then Form94.Close;
  Form35.Close;
end;

procedure TForm100.ButtonStartClick(Sender: TObject);
var
  i        : word;
  ZeileS   : string;
  SFallenS : string;
begin
  PanelSpeed.Visible   := true;
  PanelDateien.Visible := true;
  PanelDaten.Visible   := true;
  PanelEingabe.Visible := true;
  BHoeheM := round(BBreiteMo/RatioM);
  BHoeheH := round(BBreiteHi/RatioH);
  ListBoxDateien.Clear;
  ListBoxDaten.Clear;
  LabelZahl2.Caption := IntToStr (ZahlGlob);
  for i := 1 to ZahlGlob do
  begin
    ZeileS := '       '+RightS('000'+IntToStr(AziFeld[i]),3)
              +'/'+RightS('00'+IntToStr(FalFeld[i]),2)
              +'  '+RightS('000'+IntTostr(SAziFeld[i]),3);
    if SFalFeld[i] > 0 then
      SFallenS := RightS('00'+IntToStr(SFalFeld[i]),2)
    else
    begin
     SFallenS := RightS('00'+IntToStr(abs(SFalFeld[i])),2);
     SFallenS := '-'+SFallenS;
    end;
    ListBoxDaten.Items.Add(ZeileS+'/'+SFallenS);
  end;
  if EingabeS <> 'ExcelD' then
  begin
    for i := 0 to DateiZahl do
    begin
      ListboxDateien.Items.Add(DateiNameS[i]);
      ExtensionS := RightS(DateinameS[1],3);
    end;
  end
  else ListBoxDateien.Items.Add(PfadS);
end;

procedure TForm100.MaskEditS1AziChange(Sender: TObject);
begin
  CheckBoxOk.State := cbUnchecked;
end;

procedure TForm100.MaskEditS1FalChange(Sender: TObject);
begin
  CheckBoxOk.State := cbUnchecked;
end;

procedure TForm100.MaskEditS3AziChange(Sender: TObject);
begin
  CheckBoxOk.State := cbUnchecked;
end;

procedure TForm100.MaskEditS3FalChange(Sender: TObject);
begin
  CheckBoxOk.State := cbUnchecked;
end;

procedure TForm100.CheckBoxOKClick(Sender: TObject);
var
  Datei     : TextFile;
  Typ       : TMsgDlgType;
  ASigma1S  : string;
  FSigma1S  : string;
  ASigma3S  : string;
  FSigma3S  : string;
  i         : word;
  AEr       : word;
  FEr       : shortint;
  Normazi   : word;
  NormFal   : word;
  L,M,N,R   : real;
  Theta     : integer;
  Phi       : integer;
  Zaehler   : real;
  Nenner    : real;
  Rw        : array[0..20] of word;
  Rm        : real;
  j         : byte;
  Rmax      : word;
  N1, N2    : real;
  Sn, T,Ir  : real;
  Mx1       : word;
  Durch     : word;
  Basis     : word;
  Mrad      : word;
  Mrad1     : word;
  Mrad2     : word;
  Laenge    : word;
  Xn, Yn    : word;
  SFallen   : array of shortint;
  Fw,Aw,Cc  : real;
  Streichen : word;
  Az,A      : word;
  Fz,F      : shortint;
  Ttheta    : real;
begin
  setlength (SFallen, MaxDaten);
  Bo := Pi / 180;
  if not WeiterF then
  begin
    Auswertung.Enabled       := true;
    SpeedEigenwerte.Enabled  := true;
    SpeedIter.Enabled        := true;
    SpeedDieder.Enabled      := true;
    SpeedVersatz.Enabled     := true;
    SpeedHoeppener.Enabled   := true;
  end;
  SpeedMkopieren.Enabled   := true;
  SpeedHkopieren.Enabled   := true;
  SpeedMspeichern.Enabled  := true;
  SpeedHspeichern.Enabled  := true;
  SpeedMdrucken.Enabled    := true;
  SpeedHdrucken.Enabled    := true;
  Grafik.Enabled           := true;
  Farbe.Enabled      := true;
  Grafik.Enabled     := true;
  Font.Enabled       := true;
  Auswertung.Enabled := true;
  LabelHisto.Visible := true;
  DecimalSeparator := '.';
  if CheckBoxOk.State = cbUnchecked then exit;
  PanelKlick.Visible  := true;
  Typ := mtError;
  try
    ASigma1S := MaskEditS1Azi.Text;
    FSigma1S := MaskEditS1Fal.Text;
    ASigma1  := StrToInt(ASigma1S);
    FSigma1  := StrToInt(FSigma1S);
    ASigma3S := MaskEditS3Azi.Text;
    FSigma3S := MaskEditS3Fal.Text;
    ASigma3  := StrToInt(ASigma3S);
    FSigma3  := StrToInt(FSigma3S);
  except
    if DlgMessage (Typ, Tx(37), Tx(243),3) = 4 then exit;
  end;
  if (ASigma1 > 360) or (FSigma1 > 90) or (ASigma1 < 0)
    or (FSigma1 < 0) or (ASigma3 > 360) or (FSigma3 > 90)
    or (ASigma3 < 0) or (FSigma3 < 0) then
  begin
    if DlgMessage (Typ, Tx(37), Tx(71),3) = 4 then exit;
  end;
  KonfigZeileS[63] := 'Paleo-Stress Azimut Sigma1 :,'+ASigma1S;
  KonfigZeileS[64] := 'Paleo-Stress Dip Sigma1    :,'+FSigma1S;
  KonfigZeileS[65] := 'Paleo-Stress Azimut Sigma3 :,'+ASigma3S;
  KonfigZeileS[66] := 'Paleo-Stress Dip Sigma3    :,'+FSigma3S;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  Bo := Pi/180;
  for i := 1 to Zahlglob do
  begin
    SFallen[i] := abs(SFalFeld[i]);
    Korrdaten (15,AziFeld[i],SAziFeld[i],FalFeld[i],SFallen[i]);
  end;
  Sigrot (ZahlGlob, AziFeld, AziRotZeiger,FalFeld,FalRotZeiger,
          SAziFeld, GAziRotZeiger, SFallen,GFalRotZeiger);
  Zaehl := 0;
  for j := 0 to 19 do Rw[j] := 0;
  With ImageMohr.Canvas do
  begin
    Brush.Color := MHintFarbe;
    Pen.Color   := MRahmenFarbe;
    Rectangle (0,0,ImageMohr.Width,ImageMohr.Height);
    Durch       := ImageMohr.Width-100;
    Basis       := ImageMohr.Height-40;
    Mrad        := Durch div 2;
    Pen.Color   := MKoordinFarbe;
    Font.Color  := MKoordinFarbe;
    Brush.Color := MHintFarbe;
    Font.Size   := 10;
    moveto (50,Basis);
    for i := 1 to 20 do
    begin
      moveto(round(50+i*Durch/20),Basis);
      lineto(round(50+i*Durch/20),Basis+10);
      if i mod 2 = 0 then
        Textout(round(45+i*Durch/20),Basis+15,FloattostrF(i/20, ffFixed,4,1));
    end;
    Rm := 0;
    for i := 1 to ZahlGlob do
    begin
      Fw := FalRotZeiger[i] * Bo;
      Aw := AziRotZeiger[i] * Bo;
      Cc := cos(Fw);
      L  := -cos(Aw) * Cc;
      M  := -sin(Aw) * Cc;
      N  := -sin(Fw);
      if N = 0 then N := -0.0001;
      Streichen := AziRotZeiger[i] + 90;
      Az := GAziRotZeiger[i];
      Fz := GFalRotZeiger[i];
      Rechnen (17,3, 0, Fz, Streichen, Az, A, Theta, F);
      if Streichen > Az then Theta := 180 - Theta;
      if Theta <0 then Theta := 180 + Theta;
      if Theta > 180 then Theta := Theta - 180;
      Ttheta := tan(Theta*Bo);
      Zaehler := (1 - sqr(N))*N;
      Nenner  := sqr(M)*N - (Ttheta*L*M);
      if Nenner = 0 then Nenner := 0.0001;
      R := Zaehler/Nenner;
      R := abs(R);
      if R>1.01 then continue;
      Rm := Rm + R;
      Zaehl := Zaehl + 1;
      for j := 0 to 20 do
      begin
        if (R >j/20) and (R<(j+1)/20) then
        begin
          Rw[j]:= RW[j] +1;
        end;
      end;
      if R >= 1 then R := 0.99;
      Sn := sqr(M)*R - sqr(L)*(1-R)/(R-1);  //M L
      T  := sqrt(abs(sqr(L)*(1-R) - sqr(Sn)+Sn*R)); //L
      xnr[Zaehl] := 50 + round(Sn*Durch);
      ynr[Zaehl] := Basis-round(T*Durch);
    end; //ZahlGlob
    Rm := Rm/Zaehl;
    Pen.Color   := MKoordinFarbe;
    Arc(50,Basis-Mrad,50+Durch,Basis+Mrad,50+Durch,Basis,50,Basis);
    moveto (50, Basis-1);
    lineto (50+Durch, Basis-1);
    Brush.Color := MS1FuellFarbe;
    floodfill (55, Basis-7, MKoordinFarbe, FsBorder);
    Pen.Color   := MVektorFarbe;
    Brush.Color := MVektorFarbe;
    for i := 1 to Zaehl do
    begin
      if Xnr[i] >= 50+Durch then
      begin
        Xnr[i] := Xnr[i] - 2;
        Ynr[i] := Ynr[i] - 2;
      end;
      ellipse(Xnr[i]-2,Ynr[i]-2,Xnr[i]+2,Ynr[i]+2);
    end;
    BildMohr := TBitmap.Create;
    BildMohr.Assign(ImageMohr.Picture.Graphic);
    Rmax := 0;
    for j := 0 to 19 do
    begin
      if Rw[j] > Rmax then
      begin
        Rmax := Rw[j];
        Ir   := j/20;
      end;
    end;
    Mx1   := round(Durch*Rm);
    Mrad1 := Mx1 div 2;
    Mrad2 := (Durch-Mx1) div 2;
    Pen.Color := MKoordinFarbe;
    Brush.Color := Ms3FuellFarbe;
    Arc(50,Basis-Mrad1,50+Mx1,Basis+Mrad1,50+Mx1,Basis,50,Basis);
    floodfill (52,Basis-3,MKoordinFarbe, FsBorder);
    Brush.Color := Ms2FuellFarbe;
    Arc(50+Mx1,Basis-Mrad2,50+Durch,Basis+Mrad2,50+Durch,Basis,Mx1,Basis);
    floodFill (56+ Mx1, Basis-2, MKoordinFarbe, fsBorder);
    Brush.Color := MVektorFarbe;
    Pen.Color   := MVektorFarbe;
    for i := 1 to Zaehl do
    begin
      if Xnr[i] >= 50+Durch then
      begin
        Xnr[i] := Xnr[i] - 2;
        Ynr[i] := Ynr[i] - 2;
      end;
      ellipse(Xnr[i]-2,Ynr[i]-2,Xnr[i]+2,Ynr[i]+2);
    end;
    Pen.Color   := MKoordinFarbe;
    Brush.Color := MKoordinFarbe;
    ellipse (50+Mx1-5,Basis-5,50+Mx1+5,Basis+5);
    Brush.Color := MHintFarbe;
    Font.Name   := 'Symbol';
    Font.Size   := 10;
    Font.Color  := MKoordinFarbe;
    Brush.Color := MHintFarbe;
    textout(35,Basis-15,'s3');
    textout(55+Durch,Basis-15,'s1');
    Brush.Color := Ms2FuellFarbe;
    textout(55+Mx1,Basis-20,'s2');
  end;
  with ImageHisto.Canvas do
  begin
    Brush.Color := HHintFarbe;
    Pen.Color   := RahmenFarbe;
    rectangle(0,0,ImageHisto.Width,ImageHisto.Height);
    Laenge    := ImageHisto.Width-100;
    Basis     := ImageHisto.Height-70;
    Pen.Color := HFuellFarbe;
    moveto (50,Basis+2);
    lineto (50+Laenge,Basis+2);
    moveto (50,Basis);
    moveto (50,Basis+2);
    for i := 0 to 19 do
    begin
      Xn := round(i*Laenge/20);
      Yn := Basis - round(Rw[i]*(Basis-10)/Rmax);
      lineto (50+Xn,Yn);
      lineto (50+Xn+round(Laenge/20),Yn);
    end;
    lineto (50+Laenge,Basis+2);
    Brush.Color := HFuellFarbe;
    floodfill (51,Basis+1, HFuellFarbe, FsBorder);
    moveto (50,Basis);
    lineto (50,10);
    Pen.Color := HKoordinFarbe;
    Pen.Width   := 2;
    moveto (50,Basis+2);
    lineto (50+Laenge,Basis+2);
    moveto (50,Basis);
    lineto (50,10);
    Brush.Color := HHintFarbe;
    Pen.Width   := 1;
    Font.Color  := HKoordinFarbe;
    Font.Size   := 10;
    for i := 1 to 20 do
    begin
      moveto(round(50+i*Laenge/20),Basis+2);
      lineto(round(50+i*Laenge/20),Basis+10);
      if i mod 2 = 0 then
        Textout(round(45+i*Laenge/20),Basis+15,FloattostrF(i/20, ffFixed,4,1));
    end;
    for i := 1 to 10 do
    begin
      moveto(50,Basis-round(i*(Basis-10)/10));
      lineto(40,Basis-round(i*(Basis-10)/10));
      textout(15,Basis-5-round(i*(Basis-10)/10),FloatToStrF(i*Rmax/10,ffFixed,5,1));
    end;
    Font.Color := HKoordinFarbe;
    Font.Size  := 14;
    Font.Name  := DSchrift;
    textout(Laenge-270,Basis+40,Tx(1655)+':  '+IntToStr(Zaehl));
    textout(Laenge-40,Basis+40,Tx(1661)+' '+ FloatToStrF(Rm, ffFixed,5,2));
  end;
  Ziehen := false;
  HintFarbe := HHintFarbe;
  If DemoB then DemoText (ImageHisto.Canvas,10,ImageHisto.Height-40);
  SFallen := NIL;
end;

procedure TForm100.ImageMohrMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Ziehen := true;
end;

procedure TForm100.ImageMohrMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
var
  Mx1   : integer;
  Basis : word;
  Mrad1 : word;
  Mrad2 : word;
  Durch : word;
  i     : word;
begin
  if Ziehen then
  begin
    with ImageMohr.Canvas do
    begin
      Draw(0,0,BildMohr);
      Durch := ImageMohr.Width-100;
      Basis := ImageMohr.Height-40;
      if (x >= 50) and (x < 50 + Durch) then
      begin
        Mx1   := x-50;
        Mrad1 := Mx1 div 2;
        Mrad2 := (Durch-Mx1) div 2;
        Pen.Color := MKoordinFarbe;
        Brush.Color := Ms3FuellFarbe;
        Arc(50,Basis-Mrad1,50+Mx1,Basis+Mrad1,50+Mx1,Basis,50,Basis);
        floodfill (52,Basis-2,MKoordinFarbe, FsBorder);
        Brush.Color := Ms2FuellFarbe;
        Arc(50+Mx1,Basis-Mrad2,50+Durch,Basis+Mrad2,50+Durch,Basis,Mx1,Basis);
        floodFill (52+Mx1, Basis-2, MKoordinFarbe, fsBorder);
        Brush.Color := MKoordinFarbe;
        ellipse (50+Mx1-5,Basis-5,50+Mx1+5,Basis+5);
        Pen.Color   := MVektorFarbe;
        Brush.Color := MVektorFarbe;
        for i := 1 to Zaehl do
          ellipse (xnr[i]-2,ynr[i]-2,xnr[i]+2,ynr[i]+2);
        Brush.Color := MHintFarbe;
        Font.Name  := 'Symbol';
        Font.Size  := 10;
        textout(35,Basis-15,'s3');
        textout(55+Durch,Basis-15,'s1');
        Brush.Color := Ms2FuellFarbe;
        textout(55+Mx1,Basis-20,'s2');
      end;
    end;
  end;
end;

procedure TForm100.ImageMohrMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Ziehen := false;
  PanelKlick.Visible := false;
  HintFarbe := MHintFarbe;
  if DemoB then DemoText (ImageMohr.Canvas,10,10);
end;

procedure TForm100.MvektorClick(Sender: TObject);
var
  Datei  : TextFile;
  Farbe  : TColor;
  FarbeS : string;
  i      : byte;
begin
  Farbe := clWhite;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS            := ColorToString (Farbe);
  MVektorFarbe      := StringToColor(FarbeS);
  KonfigZeileS[136] := 'Stress vectors             :,'+FarbeS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  CheckBoxOkClick(Sender);
end;

procedure TForm100.SpeedMPunkteClick(Sender: TObject);
begin
  MVektorClick(Sender);
end;

procedure TForm100.MHintergrundClick(Sender: TObject);
var
  Datei  : TextFile;
  Farbe  : TColor;
  FarbeS : string;
  i      : byte;
begin
  Farbe := clWhite;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS    := ColorToString (Farbe);
  MHintFarbe := StringToColor(FarbeS);
  KonfigZeileS[137] := 'Background Mohr            :,'+FarbeS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  CheckBoxOkClick(Sender);
end;

procedure TForm100.SpeedMHinterClick(Sender: TObject);
begin
  MHintergrundClick(Sender);
end;

procedure TForm100.MRahmenClick(Sender: TObject);
var
  Datei  : TextFile;
  Farbe  : TColor;
  FarbeS : string;
  i      : byte;
begin
  Farbe := clWhite;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS      := ColorToString (Farbe);
  MRahmenFarbe := StringToColor(FarbeS);
  KonfigZeileS[138] := 'Frame Mohr                 :,'+FarbeS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  CheckBoxOkClick(Sender);
end;

procedure TForm100.SpeedMRahmenClick(Sender: TObject);
begin
  MRahmenClick(Sender);
end;

procedure TForm100.MKoordinatenClick(Sender: TObject);
var
  Datei  : TextFile;
  Farbe  : TColor;
  FarbeS : string;
  i      : byte;
begin
  Farbe := clWhite;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS            := ColorToString (Farbe);
  MKoordinFarbe     := StringToColor(FarbeS);
  KonfigZeileS[139] := 'Coordinates Mohr           :,'+FarbeS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  CheckBoxOkClick(Sender);
end;

procedure TForm100.SpeedMKoordClick(Sender: TObject);
begin
  MKoordinatenClick(Sender);
end;

procedure TForm100.S1KreisClick(Sender: TObject);
var
  Datei  : TextFile;
  Farbe  : TColor;
  FarbeS : string;
  i      : byte;
begin
  Farbe := clWhite;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS            := ColorToString (Farbe);
  Ms1FuellFarbe     := StringToColor(FarbeS);
  KonfigZeileS[140] := 'Filling Mohr s1            :,'+FarbeS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  CheckBoxOkClick(Sender);
end;

procedure TForm100.SpeedS1Click(Sender: TObject);
begin
  S1KreisClick(Sender);
end;

procedure TForm100.S2KreisClick(Sender: TObject);
var
  Datei  : TextFile;
  Farbe  : TColor;
  FarbeS : string;
  i      : byte;
begin
  Farbe := clWhite;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS      := ColorToString (Farbe);
  Ms2FuellFarbe := StringToColor(FarbeS);
  KonfigZeileS[141] := 'Filling Mohr s2            :,'+FarbeS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  CheckBoxOkClick(Sender);
end;

procedure TForm100.SpeedS2Click(Sender: TObject);
begin
  S2KreisClick(Sender);
end;

procedure TForm100.s3KreisClick(Sender: TObject);
var
  Datei  : TextFile;
  Farbe  : TColor;
  FarbeS : string;
  i      : byte;
begin
  Farbe := clWhite;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS            := ColorToString (Farbe);
  Ms3FuellFarbe     := StringToColor(FarbeS);
  KonfigZeileS[142] := 'Filling Mohr s3            :,'+FarbeS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  CheckBoxOkClick(Sender);
end;

procedure TForm100.SpeedS3Click(Sender: TObject);
begin
  s3KreisClick(Sender);
end;

procedure TForm100.HHintergrundClick(Sender: TObject);
var
  Datei  : TextFile;
  Farbe  : TColor;
  FarbeS : string;
  i      : byte;
begin
  Farbe := clWhite;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS     := ColorToString (Farbe);
  HHintFarbe := StringToColor(FarbeS);
  KonfigZeileS[143] := 'Background histogram       :,'+FarbeS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  CheckBoxOkClick(Sender);
end;

procedure TForm100.SpeedHHinterClick(Sender: TObject);
begin
  HHintergrundClick(Sender);
end;

procedure TForm100.HRahmenClick(Sender: TObject);
var
  Datei  : TextFile;
  Farbe  : TColor;
  FarbeS : string;
  i      : byte;
begin
  Farbe := clWhite;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS      := ColorToString (Farbe);
  HRahmenFarbe := StringToColor(FarbeS);
  KonfigZeileS[144] := 'Frame Histogram            :,'+FarbeS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  CheckBoxOkClick(Sender);
end;

procedure TForm100.SpeedHRahmenClick(Sender: TObject);
begin
  HRahmenClick(Sender);
end;

procedure TForm100.HKoordinatenClick(Sender: TObject);
var
  Datei  : TextFile;
  Farbe  : TColor;
  FarbeS : string;
  i      : byte;
begin
  Farbe := clWhite;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS           := ColorToString (Farbe);
  HKoordinFarbe    := StringToColor(FarbeS);
  KonfigZeileS[145] := 'Coordinates histogram      :,'+FarbeS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  CheckBoxOkClick(Sender);
end;

procedure TForm100.SpeedHKoordinClick(Sender: TObject);
begin
  HKoordinatenClick(Sender);
end;

procedure TForm100.HFuellungClick(Sender: TObject);
var
  Datei  : TextFile;
  Farbe  : TColor;
  FarbeS : string;
  i      : byte;
begin
  Farbe := clWhite;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS      := ColorToString (Farbe);
  HFuellFarbe := StringToColor(FarbeS);
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  KonfigZeileS[146] := 'Filling histogram          :,'+FarbeS;
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  CheckBoxOkClick(Sender);
end;

procedure TForm100.SpeedHFuellungClick(Sender: TObject);
begin
  HFuellungClick(Sender);
end;

procedure TForm100.kopierenMohrClick(Sender: TObject);
begin
  ClipBoard.Assign (ImageMohr.Picture);
end;

procedure TForm100.SpeedMkopierenClick(Sender: TObject);
begin
  kopierenMohrClick(Sender);
end;

procedure TForm100.kopierenHistoClick(Sender: TObject);
begin
  ClipBoard.Assign (ImageHisto.Picture);
end;

procedure TForm100.SpeedHkopierenClick(Sender: TObject);
begin
  kopierenHistoClick(Sender);
end;

procedure TForm100.SpeichernMohrClick(Sender: TObject);
begin
  PanelMGroesse.Visible     := true;
end;

procedure TForm100.SpeedMspeichernClick(Sender: TObject);
begin
  SpeichernMohrClick(Sender);
end;

procedure TForm100.speichernHistoClick(Sender: TObject);
begin
  PanelHGroesse.Visible := true;
end;

procedure TForm100.SpeedHspeichernClick(Sender: TObject);
begin
  speichernHistoClick(Sender);
end;

procedure TForm100.ListBoxMSpeichernClick(Sender: TObject);
begin
  BBreiteSt := BBreiteMo;
  GrafikSpeichern (ImageMohr, ListBoxMSpeichern, RatioM,
                   SavePictureDialog1, SaveDialog1);
end;

procedure TForm100.ListBoxHspeichernClick(Sender: TObject);
begin
  BBreiteSt := BBreiteHi;
  GrafikSpeichern (ImageHisto, ListBoxHSpeichern, RatioH,
                   SavePictureDialog1, SaveDialog1);
end;

procedure TForm100.InstallierenClick(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TForm100.SpeedEinrichtenClick(Sender: TObject);
begin
  InstallierenClick(Sender);
end;

procedure TForm100.DruckenMohrClick(Sender: TObject);
var
  SchriftS : string[5];
  i        : byte;
begin
  Druck := 1;
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

procedure TForm100.SpeedMdruckenClick(Sender: TObject);
begin
  DruckenMohrClick(Sender);
end;

procedure TForm100.MaskEditUnterschriftKeyPress(Sender: TObject;
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

procedure TForm100.RadioButtonLinksClick(Sender: TObject);
begin
  BuendigS := 'Links';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    ButtonDrucken.Enabled := true;
end;

procedure TForm100.RadioButtonZentriertClick(Sender: TObject);
begin
  BuendigS := 'Zentriert';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    ButtonDrucken.Enabled := true;
end;

procedure TForm100.RadioButtonRechtsClick(Sender: TObject);
begin
 BuendigS := 'Rechts';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    ButtonDrucken.Enabled := true;
end;

procedure TForm100.ButtonDruckenClick(Sender: TObject);
var
  XKoordS : string;
  YKoordS : string;
  RadiusS : string;
  Bitmap  : TBitmap;
  Fenster : TRect;
begin
  Paneldrucken.Visible := false;
  RadiusS := MaskEditRdrucken.Text;
  XKoordS := MaskEditXdrucken.Text;
  YKoordS := MaskEditYdrucken.Text;
  Radius  := StrToInt(RadiusS) div 2;
  RadiusS := IntToStr(Radius);
  Bitmap  :=TBitmap.Create;
  try
    if Druck = 1 then Bitmap.Assign(ImageMohr.picture.graphic);
    if Druck = 2 then Bitmap.Assign(ImageHisto.picture.graphic);
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

procedure TForm100.ListBoxSchriftClick(Sender: TObject);
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

procedure TForm100.ButtonAbbrechenClick(Sender: TObject);
begin
  Paneldrucken.Visible := false;
end;

procedure TForm100.DruckenHistoClick(Sender: TObject);
var
  SchriftS : string[5];
  i        : byte;
begin
  Druck := 2;
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

procedure TForm100.SpeedHdruckenClick(Sender: TObject);
begin
  DruckenHistoClick(Sender);
end;

procedure TForm100.FontClick(Sender: TObject);
begin
  WaehlFont(FontDialog1);
  CheckBoxOkClick(Sender);
end;

procedure TForm100.SpeedFontClick(Sender: TObject);
begin
  FontClick(Sender);
end;

procedure TForm100.DspeichernClick(Sender: TObject);
begin
   if CurrentFile <> '' then Stressein(CurrentFile, ZahlGlob,
      AziFeld, SAziFeld, FalFeld, SFalFeld)
   else DspeichernUClick(Sender);
end;

procedure TForm100.DspeichernUClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := 'SLI';
  SaveDialog1.Filter     := 'Displacement data (*.sli)|*.SLI';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    Stressein(CurrentFile, ZahlGlob, AziFeldAlt, SAziFeldAlt,
              FalFeldAlt, SFalFeldAlt);
  end;
end;

procedure TForm100.SpeedDspeichernClick(Sender: TObject);
begin
  DspeichernUClick(Sender);
end;

procedure TForm100.MaskEditMBBreiteKeyPress(Sender: TObject;
  var Key: Char);
var
  BBreiteS : string;
  Datei    : TextFile;
  i        : byte;
begin
  if Key = chr(13) then
  begin
    CheckBoxMBild.State := cbUnchecked;
    BBreiteS := MaskEditMBBreite.Text;
    LeerLoeschen (BBreiteS);
    if BBreiteS = '' then exit
    else
    begin
      BBreiteMo := StrToInt (BBreiteS);
      BHoeheM   := round(BBreiteMo/RatioM);
      MaskEditMBHoehe.Text := IntToStr(BHoeheM);
      KonfigZeileS[147] := 'Save image width (Mohr)    :,'+BBreiteS;
      assignFile(Datei,FabricS+'\'+'Fabric.ini');
      rewrite (Datei);
      for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
      closefile (Datei);
    end;
  end;
end;

procedure TForm100.MaskEditMBHoeheKeyPress(Sender: TObject; var Key: Char);
var
  BHoeheS : string;
  Datei   : TextFile;
  i       : byte;
begin
  if Key = chr(13) then
  begin
    CheckBoxMBild.State := cbUnchecked;
    BHoeheS := MaskEditMBHoehe.Text;
    LeerLoeschen (BHoeheS);
    if BHoeheS = '' then exit
    else
    begin
      BHoeheM   := StrToInt (BHoeheS);
      BBreiteMo := round(BHoeheM*RatioM);
      KonfigZeileS[147] := 'Save image width (Mohr)   :,'+IntToStr(BBreiteMo);
      MaskEditMBBreite.Text := IntToStr(BBreiteSt);
    end;
    assignFile(Datei,FabricS+'\'+'Fabric.ini');
    rewrite (Datei);
    for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
    closefile (Datei);
  end;
end;

procedure TForm100.CheckBoxMBildClick(Sender: TObject);
begin
  ListBoxMSpeichern.Visible := true;
  PanelMGroesse.Visible     := false;
end;

procedure TForm100.MaskEditHBBreiteKeyPress(Sender: TObject;
  var Key: Char);
var
  BBreiteS : string;
  Datei    : TextFile;
  i        : byte;
begin
  if Key = chr(13) then
  begin
    CheckBoxHOk.State := cbUnchecked;
    BBreiteS := MaskEditHBBreite.Text;
    LeerLoeschen (BBreiteS);
    if BBreiteS = '' then exit
    else
    begin
      BBreiteHi := StrToInt (BBreiteS);
      BHoeheH   := round(BBreiteHi/RatioH);
      MaskEditHBHoehe.Text := IntToStr(BHoeheH);
      KonfigZeileS[148] := 'Save image width (Histo)   :,'+BBreiteS;
      assignFile(Datei,FabricS+'\'+'Fabric.ini');
      rewrite (Datei);
      for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
      closefile (Datei);
    end;
  end;
end;

procedure TForm100.MaskEditHBHoeheKeyPress(Sender: TObject; var Key: Char);
var
  BHoeheS : string;
  Datei   : TextFile;
  i       : byte;
begin
  if Key = chr(13) then
  begin
    CheckBoxHOk.State := cbUnchecked;
    BHoeheS := MaskEditHBHoehe.Text;
    LeerLoeschen (BHoeheS);
    if BHoeheS = '' then exit
    else
    begin
      BHoeheH   := StrToInt (BHoeheS);
      BBreiteHi := round(BHoeheH*RatioH);
      KonfigZeileS[148] := 'Save image width (Histo)  :,'+IntToStr(BBreiteMo);
      MaskEditMBBreite.Text := IntToStr(BBreiteSt);
    end;
    assignFile(Datei,FabricS+'\'+'Fabric.ini');
    rewrite (Datei);
    for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
    closefile (Datei);
  end;
end;

procedure TForm100.CheckBoxHOkClick(Sender: TObject);
begin
  ListBoxHSpeichern.Visible := true;
  PanelHGroesse.Visible := false;
end;

procedure TForm100.EigenwertClick(Sender: TObject);
begin
  WeiterB[100] := true;
  Application.CreateForm(TForm34, Form34);
  Form34.Show;
end;

procedure TForm100.SpeedEigenwerteClick(Sender: TObject);
begin
  EigenwertClick(Sender);
end;

procedure TForm100.IterationClick(Sender: TObject);
begin
  WeiterB[100] := true;
  Application.CreateForm(TForm99, Form99);
  Form99.Show;
end;

procedure TForm100.SpeedIterClick(Sender: TObject);
begin
  IterationClick(Sender);
end;

procedure TForm100.DiederClick(Sender: TObject);
begin
  WeiterB[100] := true;
  Application.CreateForm(TForm29, Form29);
  Form29.Show;
end;

procedure TForm100.SpeedDiederClick(Sender: TObject);
begin
  DiederClick(Sender);
end;

procedure TForm100.VersatzClick(Sender: TObject);
begin
  WeiterB[100] := true;
  Application.CreateForm(TForm31, Form31);
  Form31.Show;
end;

procedure TForm100.SpeedVersatzClick(Sender: TObject);
begin
  VersatzClick(Sender);
end;

procedure TForm100.HoeppenerClick(Sender: TObject);
begin
  WeiterB[100] := true;
  Application.CreateForm(TForm33, Form33);
  Form33.Show;
end;

procedure TForm100.SpeedHoeppenerClick(Sender: TObject);
begin
  HoeppenerClick(sender);
end;

procedure TForm100.HilfeClick(Sender: TObject);
var
  DateiS      : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\100Direkte_Methode.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\100Direct_Method.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm100.SpeedHilfeClick(Sender: TObject);
begin
  HilfeClick(Sender);
end;

procedure TForm100.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Formfaktor.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'Shape-factor.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm100.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm100.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm100.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

end.
