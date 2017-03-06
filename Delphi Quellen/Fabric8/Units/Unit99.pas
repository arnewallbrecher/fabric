unit Unit99;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, Comctrls, Texte, StdCtrls, Globvar,
  Kalkulat, Basic, ExtCtrls, Mask, FormFak, Standard,
  Menus, Einausga, Paleostress, Clipbrd, GifImage, Bmp2Tiff,
  Jpeg, ExtDlgs, HpPlot, Printers, Liesconf, Drucken, Buttons,
  Shellapi, ehsHelpRouter, PngImage, Grafik, Plotten;

type
  TForm99 = class(TForm)
    StatusBar: TStatusBar;
    ButtonStart: TButton;
    ButtonZuruck: TButton;
    ButtonBeenden: TButton;
    ImageFlukt: TImage;
    PanelEingabe: TPanel;
    LabelSig1: TLabel;
    LabelSig3: TLabel;
    MaskEditS1Azi: TMaskEdit;
    MaskEditS3Azi: TMaskEdit;
    MaskEditS1Fal: TMaskEdit;
    MaskEditS3Fal: TMaskEdit;
    LabelAzimut: TLabel;
    LabelFal: TLabel;
    LabelStress: TLabel;
    MainMenu1: TMainMenu;
    SaveDialog1: TSaveDialog;
    PanelDateien: TPanel;
    LabelDateien: TLabel;
    LabelAnzahl: TLabel;
    Label00000: TLabel;
    LabelZahl: TLabel;
    ListBoxDateien: TListBox;
    Dplotten: TMenuItem;
    orgDaten: TMenuItem;
    rotDaten: TMenuItem;
    orgDieder: TMenuItem;
    orgHoeppener: TMenuItem;
    orgVersatz: TMenuItem;
    rotDieder: TMenuItem;
    rotHoeppener: TMenuItem;
    rotVersatz: TMenuItem;
    PanelR: TPanel;
    LabelR: TLabel;
    LabelRZahl: TLabel;
    ImageMohr: TImage;
    Grafik: TMenuItem;
    BGroesse: TMenuItem;
    BIteration: TMenuItem;
    BMohr: TMenuItem;
    PanelGroesse: TPanel;
    LabelBHoehe: TLabel;
    LabelBBreite: TLabel;
    MaskEditBBreite: TMaskEdit;
    MaskEditBHoehe: TMaskEdit;
    CheckBoxBild: TCheckBox;
    kopieren: TMenuItem;
    kIteration: TMenuItem;
    kMohr: TMenuItem;
    ItSpeichern: TMenuItem;
    GroupBoxplotten: TGroupBox;
    Panel4: TPanel;
    LabelKante: TLabel;
    MaskEditKante: TMaskEdit;
    Panel5: TPanel;
    LabelNull: TLabel;
    LabelX: TLabel;
    LabelY: TLabel;
    MaskEditX: TMaskEdit;
    MaskEditY: TMaskEdit;
    Ploterstellen: TButton;
    SavePictureDialog1: TSavePictureDialog;
    MohrDiagramm: TMenuItem;
    plotDrucker: TMenuItem;
    PrintDialog1: TPrintDialog;
    PrinterSetupDialog1: TPrinterSetupDialog;
    Einrichten: TMenuItem;
    Drucken: TMenuItem;
    Calibrieren: TMenuItem;
    FarbeKoord: TMenuItem;
    ColorDialog: TColorDialog;
    FarbeHinter: TMenuItem;
    FarbeKurve: TMenuItem;
    FarbeRahmen: TMenuItem;
    Drucker: TMenuItem;
    Deinrichten: TMenuItem;
    Ddrucken: TMenuItem;
    DFormfaktor: TMenuItem;
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
    DMohr: TMenuItem;
    FarbeDiagramm: TMenuItem;
    PanelSpeed: TPanel;
    SpeedorgVersatz: TSpeedButton;
    SpeedorgDieder: TSpeedButton;
    SpeedorgHoeppener: TSpeedButton;
    Labelrot: TLabel;
    SpeedrotVersatz: TSpeedButton;
    SpeedrotDieder: TSpeedButton;
    SpeedrotHoeppener: TSpeedButton;
    SpeedEigen: TSpeedButton;
    SpeedBGroesseF: TSpeedButton;
    SpeedBGroesseM: TSpeedButton;
    SpeedKopierenR: TSpeedButton;
    SpeedKopierenM: TSpeedButton;
    SpeedPlotter: TSpeedButton;
    SpeedKoordinaten: TSpeedButton;
    SpeedHintergrund: TSpeedButton;
    SpeedDiagramm: TSpeedButton;
    SpeedEinrichten: TSpeedButton;
    SpeedDruckenR: TSpeedButton;
    SpeedDruckenM: TSpeedButton;
    SpeedKaliber: TSpeedButton;
    SpeedRahmen: TSpeedButton;
    Hilfe: TMenuItem;
    Handbuch: TMenuItem;
    Literatur: TMenuItem;
    SpeedHilfe: TSpeedButton;
    SpeedHandbuch: TSpeedButton;
    SpeedLiteratur: TSpeedButton;
    DatenSpeichern: TMenuItem;
    Dspeichern: TMenuItem;
    DspeichernU: TMenuItem;
    PanelDaten: TPanel;
    ListBoxDaten: TListBox;
    LabelAnzahl1: TLabel;
    LabelZahl2: TLabel;
    LabelDaten: TLabel;
    CheckBoxOK: TCheckBox;
    ListBoxItSpeichern: TListBox;
    ListBoxMSpeichern: TListBox;
    SpeedIspeichern: TSpeedButton;
    SpeedMspeichern: TSpeedButton;
    FontDialog1: TFontDialog;
    Font: TMenuItem;
    SpeedFont: TSpeedButton;
    Auswertung: TMenuItem;
    Dieder: TMenuItem;
    Versatz: TMenuItem;
    Hoeppener: TMenuItem;
    Direkt: TMenuItem;
    Eigenwerte: TMenuItem;
    PanelKaliber: TPanel;
    LabelBrE: TLabel;
    LabelBrD: TLabel;
    LabelCalib1: TLabel;
    LabelCalib: TLabel;
    LabelCalib2: TLabel;
    LabelCalib3: TLabel;
    LabelCalib4: TLabel;
    LabelCalib5: TLabel;
    LabelCalib6: TLabel;
    MaskEditBrE: TMaskEdit;
    MaskEditBrD: TMaskEdit;
    ButtonCalibEnde: TButton;

    procedure FormShow(Sender: TObject);
    procedure ShowHint(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ButtonZuruckClick(Sender: TObject);
    procedure ButtonBeendenClick(Sender: TObject);
    procedure ButtonStartClick(Sender: TObject);
    procedure orgDiederClick(Sender: TObject);
    procedure orgHoeppenerClick(Sender: TObject);
    procedure orgVersatzClick(Sender: TObject);
    procedure rotDiederClick(Sender: TObject);
    procedure rotHoeppenerClick(Sender: TObject);
    procedure rotVersatzClick(Sender: TObject);
    procedure BIterationClick(Sender: TObject);
    procedure MaskEditBBreiteKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditBHoeheKeyPress(Sender: TObject; var Key: Char);
    procedure CheckBoxBildClick(Sender: TObject);
    procedure BMohrClick(Sender: TObject);
    procedure kIterationClick(Sender: TObject);
    procedure kMohrClick(Sender: TObject);
    procedure ItSpeichernPltClick(Sender: TObject);
    procedure ItSpeichernDxfClick(Sender: TObject);
    procedure PloterstellenClick(Sender: TObject);
    procedure EinrichtenClick(Sender: TObject);
    procedure DruckenClick(Sender: TObject);
    procedure CalibrierenClick(Sender: TObject);
    procedure MaskEditBrEKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditBrDKeyPress(Sender: TObject; var Key: Char);
    procedure FarbeKoordClick(Sender: TObject);
    procedure FarbeHinterClick(Sender: TObject);
    procedure FarbeKurveClick(Sender: TObject);
    procedure FarbeRahmenClick(Sender: TObject);
    procedure DFormfaktorClick(Sender: TObject);
    procedure DeinrichtenClick(Sender: TObject);
    procedure MaskEditUnterschriftKeyPress(Sender: TObject; var Key: Char);
    procedure RadioButtonLinksClick(Sender: TObject);
    procedure RadioButtonZentriertClick(Sender: TObject);
    procedure RadioButtonRechtsClick(Sender: TObject);
    procedure ButtonDruckenClick(Sender: TObject);
    procedure ListBoxSchriftClick(Sender: TObject);
    procedure ButtonAbbrechenClick(Sender: TObject);
    procedure DMohrClick(Sender: TObject);
    procedure FarbeDiagrammClick(Sender: TObject);
    procedure SpeedorgVersatzClick(Sender: TObject);
    procedure SpeedorgDiederClick(Sender: TObject);
    procedure SpeedorgHoeppenerClick(Sender: TObject);
    procedure SpeedBGroesseFClick(Sender: TObject);
    procedure SpeedBGroesseMClick(Sender: TObject);
    procedure SpeedKopierenMClick(Sender: TObject);
    procedure SpeedKopierenRClick(Sender: TObject);
    procedure SpeedPlotterClick(Sender: TObject);
    procedure SpeedKaliberClick(Sender: TObject);
    procedure SpeedKoordinatenClick(Sender: TObject);
    procedure SpeedHintergrundClick(Sender: TObject);
    procedure SpeedDiagrammClick(Sender: TObject);
    procedure SpeedEinrichtenClick(Sender: TObject);
    procedure SpeedDruckenRClick(Sender: TObject);
    procedure SpeedDruckenMClick(Sender: TObject);
    procedure SpeedRahmenClick(Sender: TObject);
    procedure HandbuchClick(Sender: TObject);
    procedure HilfeClick(Sender: TObject);
    procedure SpeedHilfeClick(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
    procedure SpeedLiteraturClick(Sender: TObject);
    procedure DspeichernClick(Sender: TObject);
    procedure DspeichernUClick(Sender: TObject);
    procedure MaskEditS1AziChange(Sender: TObject);
    procedure MaskEditS1FalChange(Sender: TObject);
    procedure MaskEditS3AziChange(Sender: TObject);
    procedure MaskEditS3FalChange(Sender: TObject);
    procedure CheckBoxOKClick(Sender: TObject);
    procedure ItSpeichernClick(Sender: TObject);
    procedure ListBoxItSpeichernClick(Sender: TObject);
    procedure MohrDiagrammClick(Sender: TObject);
    procedure ListBoxMSpeichernClick(Sender: TObject);
    procedure SpeedIspeichernClick(Sender: TObject);
    procedure SpeedMspeichernClick(Sender: TObject);
    procedure FontClick(Sender: TObject);
    procedure SpeedFontClick(Sender: TObject);
    procedure DiederClick(Sender: TObject);
    procedure VersatzClick(Sender: TObject);
    procedure HoeppenerClick(Sender: TObject);
    procedure EigenwerteClick(Sender: TObject);
    procedure DirektClick(Sender: TObject);
    procedure ButtonCalibEndeClick(Sender: TObject);
  end;

var
  Form99          : TForm99;
  AziFeldRot      : array of word;
  FalFeldRot      : array of word;
  SAziFeldRot     : array of word;
  SFalFeldRot     : array of shortint;
  BildF, BildM    : boolean;
  RatioF, RatioM  : real;
  BHoeheF,BHoeheM : word;
  MaxWinkel       : real;  
  FlWinkel        : array[0..100] of real;
  Teile           : word;
  R, FlMin        : real;
  Vteil, Teilv    : real;
  Teilh           : real;
  Ebreite,Dbreite : word;
  Spring          : boolean;
  Gedrueckt       : array[0..3] of boolean;
  Bild            : TBitmap;
  FaktorAlt       : real;

implementation

uses Unit26, Unit27, Unit28, Unit29, Unit31, Unit33, Unit34,
     Unit35, Unit94, Unit100;
{$R *.DFM}

procedure TForm99.FormShow (Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm99.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm99.FormActivate(Sender: TObject);
var
  i : byte;
begin
  Left   := 70;
  Top    := 10;
  Width  := 1050;
  Height := 750;
  setlength (AziFeld, MaxDaten);
  setlength (FalFeld, MaxDaten);
  setlength (AziFeldRot, MaxDaten);
  setlength (FalFeldRot, MaxDaten);
  setlength (SAziFeldRot, MaxDaten);
  setlength (SFalFeldRot, MaxDaten);
  setlength (AziFeldAlt, MaxDaten);
  setlength (FalFeldAlt, MaxDaten);
  setlength (SAziFeldAlt, MaxDaten);
  setlength (SFalFeldAlt, MaxDaten);
  if WeiterB[99] then rotDaten.Enabled := true;
  WeiterB[99]             := false;
  Form99.Caption          := Tx(1564);
  SpeedorgDieder.Hint     := Hilf(648);
  SpeedorgHoeppener.Hint  := Hilf(649);
  SpeedorgVersatz.Hint    := Hilf(650);
  SpeedrotDieder.Hint     := Hilf(651);
  SpeedrotHoeppener.Hint  := Hilf(652);
  SpeedrotVersatz.Hint    := Hilf(653);
  SpeedEigen.Hint         := Hilf(654);
  SpeedBGroesseF.Hint     := Hilf(573);
  SpeedBGroesseM.Hint     := Hilf(574);
  SpeedPlotter.Hint       := Hilf(437);
  SpeedKoordinaten.Hint   := Hilf(444);
  SpeedDiagramm.Hint      := Hilf(441);
  SpeedRahmen.Hint        := Hilf(442);
  SpeedHintergrund.Hint   := Hilf(443);
  SpeedEinrichten.Hint    := Hilf(505);
  SpeedKopierenR.Hint     := Hilf(575);
  SpeedKopierenM.Hint     := Hilf(576);
  SpeedDruckenR.Hint      := Hilf(581);
  SpeedDruckenM.Hint      := Hilf(582);
  SpeedKaliber.Hint       := Hilf(655);
  SpeedHilfe.Hint         := Hilf(210);
  SpeedHandbuch.Hint      := Hilf(274);
  SpeedLiteratur.Hint     := Hilf(462);
  SpeedISpeichern.Hint    := Hilf(682);
  SpeedMspeichern.Hint    := Hilf(681);
  SpeedFont.Hint          := Hilf(686);
  LabelAzimut.Caption     := Tx(1568);
  LabelFal.Caption        := Tx(1569);
  LabelAnzahl1.Caption    := Tx(296);
  DPlotten.Caption        := Tx(1572);
  orgDaten.Caption        := Tx(1573);
  rotDaten.Caption        := Tx(1574);
  orgDieder.Caption       := Tx(1575);
  orgHoeppener.Caption    := Tx(1576);
  orgVersatz.Caption      := Tx(1577);
  rotDieder.Caption       := Tx(1575);
  rotHoeppener.Caption    := Tx(1576);
  rotVersatz.Caption      := Tx(1577);
  MaskEditS1Azi.EditMask  := '999;0; ';
  MaskEditS1Fal.EditMask  := '99;0; ';
  MaskEditS3Azi.EditMask  := '999;0; ';
  MaskEditS3Fal.EditMask  := '99;0; ';
  LabelStress.Caption     := Tx(1245);
  LabelZahl2.Caption      := '';
  LabelDateien.Caption    := Tx(136);
  ButtonZuruck.Caption    := Tx(30);
  ButtonBeenden.Caption   := Tx(53);
  PanelR.Visible          := false;
  PanelEingabe.Visible    := false;
  PanelGroesse.Visible    := false;
  Eigenwerte.Caption      := Tx(1570);
  Grafik.Caption          := Tx(281);
  BGroesse.Caption        := Tx(1439);
  BIteration.Caption      := TX(1567);
  BMohr.Caption           := Tx(1450);
  LabelBBreite.Caption    := TX(1440);
  LabelBHoehe.Caption     := Tx(1441);
  kopieren.Caption        := Tx(282);
  kIteration.Caption      := Tx(1567);
  kMohr.Caption           := Tx(1450);
  ItSpeichern.Caption     := Tx(1578);
  GroupBoxPlotten.Caption := Tx(297);
  LabelKante.Caption      := Tx(1580)+':';
  LabelNull.Caption       := Tx(686);
  LabelX.Caption          := Tx(687);
  LabelY.Caption          := Tx(688);
  Ploterstellen.Caption   := Tx(298);
  MohrDiagramm.Caption    := Tx(1460);
  plotDrucker.Caption     := TX(288);
  Einrichten.Caption      := Tx(94);
  Drucken.Caption         := Tx(93);
  Calibrieren.Caption     := Tx(1581);
  LabelBrE.Caption        := Tx(1582);
  LabelBrD.Caption        := Tx(1583);
  FarbeKoord.Caption      := Tx(862);
  FarbeHinter.Caption     := Tx(856);
  FarbeKurve.Caption      := Tx(1584);
  FarbeRahmen.Caption     := Tx(892);
  Drucken.Caption         := Tx(92);
  Deinrichten.Caption     := Tx(94);
  Ddrucken.Caption        := Tx(92);
  DFormfaktor.Caption     := Tx(1449);
  DMohr.Caption           := Tx(1450);
  DatenSpeichern.Caption  := Tx(86);
  Dspeichern.Caption      := Tx(87);
  DspeichernU.Caption     := Tx(88);
  LabelDaten.Caption      := Tx(914);
  Hilfe.Caption           := Tx(162)+' (F1)';
  Handbuch.Caption        := Tx(1055)+' (F2)';
  Literatur.Caption       := Tx(1183)+' (F5)';
  Auswertung.Caption      := Tx(1341);
  Dieder.Caption          := Tx(17);
  Versatz.Caption         := Tx(18);
  Hoeppener.Caption       := Tx(19);
  Eigenwerte.Caption      := Tx(20)+', '+Tx(1570);
  Direkt.Caption          := Tx(20)+', '+Tx(1648);
  Font.Caption            := Tx(1621);
  Calibrieren.Caption     := Tx(1581);
  LabelCalib.Caption      := Tx(1676);
  LabelCalib2.Caption     := Tx(1677);
  LabelCalib3.Caption     := Tx(1670);
  LabelCalib4.Caption     := Tx(1671);
  LabelCalib5.Caption     := Tx(1678);
  LabelCalib6.Caption     := Tx(1679);
  LabelBrE.Caption        := Tx(1680);
  LabelBrD.Caption        := Tx(1681);
  ButtonCalibEnde.Caption := Tx(1682);
  PanelKaliber.Visible    := false;
  Calib                   := false;
  Auswertung.Enabled      := false;
  BildF                   := false;
  BildM                   := false;
  RatioF                  := ImageFlukt.Width/ImageFlukt.Height;
  RatioM                  := ImageMohr.Width/ImageMohr.Height;
  for i := 1 to ZahlGlob do
  begin
    AziFeldAlt[i]  := AziFeld[i];
    FalFeldAlt[i]  := FalFeld[i];
    SAziFeldAlt[i] := SAziFeld[i];
    SFalFeldAlt[i] := SFalFeld[i];
  end;
  GroupBoxPlotten.Visible := false;
  Grafik.Enabled          := false;
  MaskEditKante.Text      := FloatTostr(Kante);
  MaskEditX.Text          := FloatTostr(XAnfang);
  MaskEditY.Text          := FloatToStr(YAnfang);
  Spring                  := false;
  PanelDrucken.Visible    := false;
  for i := 1 to 3 do Gedrueckt[i] := false;
  PanelSpeed.Visible      := false;
  DatenSpeichern.Enabled  := false;
  PanelDaten.Visible      := false;
  PanelDateien.Visible    := false;
  MaskEditS1Azi.Text      := InttoStr (ASigma1);
  MaskEditS1Fal.Text      := InttoStr (FSigma1);
  MaskEditS3Azi.Text      := InttoStr (ASigma3);
  MaskEditS3Fal.Text      := InttoStr (FSigma3);
  CheckBoxOk.State        := cbUnchecked;
  for i := 1 to 9 do
    ListBoxItSpeichern.Items.Add (Tx(1611+i));
  ListBoxItSpeichern.Visible := false;
  for i := 1 to 7 do
    ListBoxMSpeichern.Items.Add (Tx(1611+i));
  ListBoxMSpeichern.Visible := false;
  if WeiterF then
  begin
    ButtonStart.Visible   := false;
    ButtonBeenden.Visible := false;
    ButtonStartClick(Sender);
  end
  else
  begin
    ButtonStart.Visible   := true;
    ButtonBeenden.Visible := true;
  end;
  if WeiterF then
  begin
    CheckBoxOk.State := cbChecked;
    CheckBoxOkClick(Sender);
  end;
end;

procedure TForm99.ButtonZuruckClick(Sender: TObject);
var
  i : word;
begin
  for i := 1 to ZahlGlob do
  begin
    AziFeld[i]  := AziFeldAlt[i];
    FalFeld[i]  := FalFeldAlt[i];
    SAziFeld[i] := SAziFeldAlt[i];
    SFalFeld[i] := SFalFeldAlt[i];
  end;
  if not WeiterF then
  begin
    AziFeld      := nil;
    FalFeld      := nil;
    AziFeldRot   := nil;
    FalFeldRot   := nil;
    SAziFeldRot  := nil;
    SFalFeldRot  := nil;
    AziFeldAlt   := nil;
    FalFeldAlt   := nil;
    SAziFeldAlt  := nil;
    SFalFeldAlt  := nil;
  end;
  if EingabeS = 'ExcelD' then Form94.close;
  Form99.Close;
end;

procedure TForm99.ButtonBeendenClick(Sender: TObject);
begin
  if not WeiterF then
  begin
    AziFeld      := nil;
    FalFeld      := nil;
    AziFeldRot   := nil;
    FalFeldRot   := nil;
    SAziFeldRot  := nil;
    SFalFeldRot  := nil;
    AziFeldAlt   := nil;
    FalFeldAlt   := nil;
    SAziFeldAlt  := nil;
    SFalFeldAlt  := nil;
  end;
  if EingabeS = 'ExcelD' then Form94.Close;
  Form99.Close;
  Form28.Close;
  Form27.Close;
  Form35.Close;
  SetCurrentDir(DirectS);
end;

procedure TForm99.ButtonStartClick(Sender: TObject);
var
  i        : word;
  ZeileS   : string;
  SFallenS : string;
begin
  if not WeiterF then
  begin
    Auswertung.Enabled := true;
  end;
  Spring  := false;
  PanelSpeed.Visible := true;
  BHoeheF := round(BBreiteF/RatioF);
  BHoeheM := round(BBreiteM/RatioM);
  DatenSpeichern.Enabled := true;
  ListBoxDateien.Clear;
  PanelEingabe.Visible := true;
  PanelDaten.Visible   := true;
  PanelDateien.Visible := true;
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

procedure TForm99.MaskEditS1AziChange(Sender: TObject);
begin
  CheckBoxOk.State := cbUnchecked;
end;

procedure TForm99.MaskEditS1FalChange(Sender: TObject);
begin
  CheckBoxOk.State := cbUnchecked;
end;

procedure TForm99.MaskEditS3AziChange(Sender: TObject);
begin
  CheckBoxOk.State := cbUnchecked;
end;

procedure TForm99.MaskEditS3FalChange(Sender: TObject);
begin
  CheckBoxOk.State := cbUnchecked;
end;

procedure TForm99.CheckBoxOKClick(Sender: TObject);
var
  Datei        : TextFile;
  i, j         : word;
  Typ          : TMsgDlgType;
  MaxFal       : shortint;
  FalS         : string;
  RFaktor      : double;
  Theta        : integer;
  Winkel       : integer;
  AziStreich   : integer;
  AErgebnis    : word;
  FErgebnis    : shortint;
  FlAlpha      : word;
  Bo           : real;
  FlMax        : real;
  FlSum        : array[0..100] of real;
  Mx2, My2, Yu : word;
  Mx1, My1     : word;
  Laenge       : word;
  Mx3, My3     : word;
  Mx4, My4     : word;
begin
  if CheckBoxOk.State = cbUnchecked then exit;
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
  DecimalSeparator := '.';
  Bo := Pi/180;
  {Zeichnen der Plotfläche und Koordinaten}
  FluktDiagramm (ImageFlukt.Canvas, ImageFlukt.Width,ImageFlukt.Height);
  if not Spring then
  begin
    Teile := 100;
    rotDaten.Enabled := true;
    if Winkel = 1 then MaxFal := 90 else MaxFal := 100;
    FalS := MaskEditS3Fal.Text;
    LeerLoeschen (FalS);
    if FalS = '' then exit
    else
    begin
      FSigma3 := StrToInt (FalS);
      if FSigma3 > MaxFal then
      begin
        MaskEditS3Fal.Clear;
        MaskEditS3Fal.SetFocus;
      end
      else
      begin
        for i := 1 to ZahlGlob do
        begin
          AziFeld[i] := (180+AziFeld[i]) mod 360;
          FalFeld[i] := 90-FalFeld[i];
        end;
        Sigrot (ZahlGlob,AziFeld,AziFeldRot,FalFeld,FalFeldRot,SAziFeld,
                SAziFeldRot, SFalFeld,SFalFeldRot);
        FlMin := 1000;
        FlMax := 0;
        for j := 0 to Teile do
        begin
          FlSum[j] := 0;
          RFaktor  := j/Teile;
          for i := 1 to ZahlGlob do
          begin
            SBott (AziFeldRot[i], FalFeldRot[i], RFaktor, Theta);
            if Theta > 90 then Theta := 180 - Theta;
            AziStreich := AziFeldRot[i] - 90;
            if AziStreich <0 then AziStreich := AziStreich + 360;
            Rechnen (1,6,0,SFalFeldRot[i],SAziFeldRot[i],AziStreich,
                     Aergebnis, Winkel, FErgebnis);
            FlAlpha := abs(Winkel-Theta);
            if FlAlpha > 90 then FlAlpha := 180 - FlAlpha;
            FlSum[j] := FlSum[j] + sin(abs(FlAlpha)*Bo);
            SFalFeldRot[i] := (-1)*abs(SFalFeldRot[i]);
          end;
          FlSum[j]    := FlSum[j]/ZahlGlob;
          FlWinkel[j] := arcsin(FlSum[j])/Bo;
          if FlSum[j] > FlMax then FlMax := FlSum[j];
          if FlSum[j] <= Flmin then
          begin
            FlMin := FlSum[j];
            R     := j/Teile;
          end;
          PanelR.Visible := true;
          LabelRZahl.Caption := FloatToStrF(R,ffFixed,7,2);
        end; //j
        MaxWinkel := arcsin(FlMax)/Bo;
      end;
    end;
  end;
  with ImageFlukt.Canvas do
  begin
    Font.Size := 10;
    Vteil := (ImageFlukt.Height-75)/10;
    for i := 1 to 10 do
    begin
      Textout(42,ImageFlukt.Height-62-round(i*Vteil),
              FloatToStrF(i*MaxWinkel/10,ffFixed,7,1)); //Vertikale Skala
    end;
    Teilh := (ImageFlukt.Width-80)/Teile;
    Teilv := (ImageFlukt.Height-75)/MaxWinkel;
    moveto(65,ImageFlukt.Height-65-round(FlWinkel[0]*Teilv));  //*Teilv
    Pen.Color := IterFarbe;
    for i := 0 to Teile do
    begin
      lineto(65+round(i*Teilh),
             ImageFlukt.Height-65-round(FlWinkel[i]*Teilv)); //*Teilv
    end;
    moveto (65+round(100*R*Teilh),
            ImageFlukt.Height-65-round(arcsin(FlMin)*Teilv/Bo));
    lineto (65+round(100*R*Teilh),ImageFlukt.Height-65);
  end; //Canvas
  With ImageMohr.Canvas do
  begin
    Brush.Color := GrundFarbe;
    Pen.Color   := RahmenFarbe;
    Pen.Width   := 1;
    Mx2 := ImageMohr.Width;
    My2 := ImageMohr.Height;
    Rectangle (0,0,Mx2,My2);
    Pen.Color   := IterFarbe;
    Yu  := 30;
    Mx1 := 10;
    Mx2 := ImageMohr.Width - 10;
    Laenge := Mx2 - Mx1;
    Radius := Laenge div 2;;
    Xmitte := 10 + Radius;
    Ymitte := ImageMohr.Height - Yu;
    Mx1 := Xmitte - Radius;
    My1 := Ymitte - Radius;
    Mx2 := Xmitte + Radius;
    My2 := Ymitte + Radius;
    Mx3 := Mx2;
    My3 := Ymitte;
    Mx4 := Mx1;
    My4 := Ymitte;
    arc (Mx1,My1, Mx2,My2, Mx3,My3, Mx4,My4);  {Sigma1-Kreis}
    moveto (Mx4,My4);
    Pen.Width := 2;
    Lineto (Mx3,My3);
    Font.Name := 'Symbol';
    Textout (Mx4-5,My4+5,'s3');
    Pen.Width := 1;
    Radius := round(Laenge*R/2);
    Xmitte := 10+Radius;
    Mx1 := Xmitte - Radius;
    My1 := Ymitte - Radius;
    Mx2 := Xmitte + Radius;
    My2 := Ymitte + Radius;
    Mx3 := Mx2;
    My3 := Ymitte;
    Mx4 := Mx1;
    My4 := Ymitte;
    arc (Mx1,My1, Mx2,My2, Mx3,My3, Mx4,My4);   {rechter Kreis}
    moveto (Mx4,My4);
    Lineto (Mx3,My3);
    Textout (Mx3-5,My3+5,'s2');
    Radius := round((Laenge - 2*Radius)/2);
    Xmitte := 10 + Laenge - Radius;
    Mx1 := Xmitte - Radius;
    My1 := Ymitte - Radius;
    Mx2 := Xmitte + Radius;
    My2 := Ymitte + Radius;
    Mx3 := Mx2;
    My3 := Ymitte;
    Mx4 := Mx1;
    My4 := Ymitte;
    arc (Mx1,My1, Mx2,My2, Mx3,My3, Mx4,My4);   {linker Kreis}
    moveto (Mx4,My4);
    Lineto (Mx3,My3);
    Textout (Mx3-5,My3+5,'s1');
    Mx1 := round(10+Laenge/2);
    My1 := round(Ymitte-Laenge/2+2);
    Brush.Color := DiagrFarbe;
    floodfill (Mx1,My1, IterFarbe, FsBorder);
  end;
  Grafik.Enabled := true;
  for i := 1 to ZahlGlob do
  begin
    AziFeld[i]  := AziFeldAlt[i];
    FalFeld[i]  := FalFeldAlt[i];
    SAziFeld[i] := SAziFeldAlt[i];
    SFalFeld[i] := SFalFeldAlt[i];
  end;
  If DemoB then DemoText (ImageFlukt.Canvas,10,ImageFlukt.Height-40);
end;

procedure TForm99.orgDiederClick(Sender: TObject);
var
  i : word;
begin
  WeiterB[99] := true;
  for i := 1 to ZahlGlob do
  begin
    AziFeld[i]  := AziFeldAlt[i];
    FalFeld[i]  := FalFeldAlt[i];
    SAziFeld[i] := SAziFeldAlt[i];
    SFalFeld[i] := SFalFeldAlt[i];
  end;
  Application.CreateForm(TForm29, Form29);
  Form29.Show;
end;

procedure TForm99.SpeedorgDiederClick(Sender: TObject);
begin
  orgDiederClick(Sender);
end;

procedure TForm99.orgHoeppenerClick(Sender: TObject);
var
  i : word;
begin
  WeiterB[99] := true;
  for i := 1 to ZahlGlob do
  begin
    AziFeld[i]  := AziFeldAlt[i];
    FalFeld[i]  := FalFeldAlt[i];
    SAziFeld[i] := SAziFeldAlt[i];
    SFalFeld[i] := SFalFeldAlt[i];
  end;
  Application.CreateForm(TForm33, Form33);
  Form33.Show;
end;

procedure TForm99.SpeedorgHoeppenerClick(Sender: TObject);
begin
  orgHoeppenerClick(Sender);
end;

procedure TForm99.orgVersatzClick(Sender: TObject);
var
  i : word;
begin
  WeiterB[99] := true;
  for i := 1 to ZahlGlob do
  begin
    AziFeld[i]  := AziFeldAlt[i];
    FalFeld[i]  := FalFeldAlt[i];
    SAziFeld[i] := SAziFeldAlt[i];
    SFalFeld[i] := SFalFeldAlt[i];
  end;
  Application.CreateForm(TForm31, Form31);
  Form31.Show;
end;

procedure TForm99.SpeedorgVersatzClick(Sender: TObject);
begin
  orgVersatzClick(Sender);
end;

procedure TForm99.rotDiederClick(Sender: TObject);
var
  i : word;
begin
  rotDaten.Enabled := true;
  WeiterB[99] := true;
  for i := 1 to ZahlGlob do
  begin
    AziFeld[i]  := (180+AziFeldRot[i]) mod 360;
    FalFeld[i]  := 90 - FalFeldRot[i];
    SAziFeld[i] := SAziFeldRot[i];
    SFalFeld[i] := SFalFeldRot[i];
  end;
  Application.CreateForm(TForm29, Form29);
  Form29.Show;
end;

procedure TForm99.rotHoeppenerClick(Sender: TObject);
var
  i : word;
begin
  rotDaten.Enabled := true;
  WeiterB[99] := true;
  for i := 1 to ZahlGlob do
  begin
    AziFeld[i]  := (180+AziFeldRot[i]) mod 360;
    FalFeld[i]  := 90 - FalFeldRot[i];
    SAziFeld[i] := SAziFeldRot[i];
    SFalFeld[i] := SFalFeldRot[i];
  end;
  Application.CreateForm(TForm33, Form33);
  Form33.Show;
end;

procedure TForm99.rotVersatzClick(Sender: TObject);
var
  i : word;
begin
  rotDaten.Enabled := true;
  WeiterB[99] := true;
  for i := 1 to ZahlGlob do
  begin
    AziFeld[i]  := (180+AziFeldRot[i]) mod 360;
    FalFeld[i]  := 90-FalFeldRot[i];
    SAziFeld[i] := SAziFeldRot[i];
    SFalFeld[i] := SFalFeldRot[i];
  end;
  Application.CreateForm(TForm31, Form31);
  Form31.Show;
end;

procedure TForm99.FontClick(Sender: TObject);
begin
  WaehlFont(FontDialog1);
end;

procedure TForm99.SpeedFontClick(Sender: TObject);
begin
  FontClick(Sender);
end;

procedure TForm99.BIterationClick(Sender: TObject);
begin
  PanelGroesse.Visible := true;
  CheckBoxBild.State   := cbUnchecked;
  MaskEditBBreite.Text := IntTostr(BBreiteF);
  MaskEditBHoehe.Text  := IntToStr(BHoeheF);
  BildF := true;
  BildM := false;
end;

procedure TForm99.SpeedBGroesseFClick(Sender: TObject);
begin
  BIterationClick(Sender);
end;

procedure TForm99.MaskEditBBreiteKeyPress(Sender: TObject; var Key: Char);
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
      if BildF then
      begin
        BBreiteF := StrToInt (BBreiteS);
        BHoeheF  := round(BBreiteF/RatioF);
        KonfigZeileS[118] := 'Save Image Width (Stereo)  :,'+BBreiteS;
        MaskEditBHoehe.Text := IntToStr(BHoeheF);
      end;
      if BildM then
      begin
        BBreiteM := StrToInt(BBreiteS);
        BHoeheM  := round(BBreiteM/RatioM);
        KonfigZeileS[120] := 'Save Image Width (Mohr)    :,'+BBreiteS;
        MaskEditBHoehe.Text := IntToStr(BHoeheM);
      end;
      assignFile(Datei,FabricS+'\'+'Fabric.ini');
      rewrite (Datei);
      for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
      closefile (Datei);
    end;
  end;
end;

procedure TForm99.MaskEditBHoeheKeyPress(Sender: TObject; var Key: Char);
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
      if BildF then
      begin
        BHoeheF  := StrToInt (BHoeheS);
        BBreiteF := round(BHoeheF*RatioF);
        KonfigZeileS[118]    := 'Save Image Width (Stereo)  :,'+IntToStr(BBreiteF);
        MaskEditBBreite.Text := IntToStr(BBreiteF);
      end;
      if BildM then
      begin
        BHoeheM  := StrToInt(BHoeheS);
        BBreiteM := round(BHoeheM*RatioM);
        KonfigZeileS[120]    := 'Save Image Width (Mohr)    :,'+IntToStr(BBreiteD);
        MaskEditBBreite.Text := IntToStr(BBreiteD);
      end;
    end;
    assignFile(Datei,FabricS+'\'+'Fabric.ini');
    rewrite (Datei);
    for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
    closefile (Datei);
  end;
end;

procedure TForm99.CheckBoxBildClick(Sender: TObject);
begin
  PanelGroesse.Visible := false;
end;

procedure TForm99.BMohrClick(Sender: TObject);
begin
  PanelGroesse.Visible := true;
  CheckBoxBild.State   := cbUnchecked;
  MaskEditBBreite.Text := IntTostr(BBreiteM);
  MaskEditBHoehe.Text  := IntToStr(BHoeheM);
  BildM := true;
  BildF := false;
end;

procedure TForm99.SpeedBGroesseMClick(Sender: TObject);
begin
  BMohrClick(Sender);
end;

procedure TForm99.kIterationClick(Sender: TObject);
begin
  ClipBoard.Assign (ImageFlukt.Picture);
end;

procedure TForm99.SpeedKopierenRClick(Sender: TObject);
begin
  kIterationClick(Sender);
end;

procedure TForm99.kMohrClick(Sender: TObject);
begin
  ClipBoard.Assign (ImageMohr.Picture);
end;

procedure TForm99.SpeedKopierenMClick(Sender: TObject);
begin
  kMohrClick(Sender);
end;

procedure TForm99.ItSpeichernClick(Sender: TObject);
begin
  ListBoxItSpeichern.Visible := true;
end;

procedure TForm99.SpeedIspeichernClick(Sender: TObject);
begin
  ItSpeichernClick(Sender);
end;

procedure TForm99.ListBoxItSpeichernClick(Sender: TObject);
var
  i : byte;
begin
  BBreiteSt := BBreiteF;
  Ratio     := RatioF;
  for i := 0 to ListBoxItSpeichern.Items.Count-1 do
  begin
    if ListBoxItSpeichern.Selected[i] then
    begin
      if i < 7 then  GrafikSpeichern (ImageFlukt, ListBoxItSpeichern, Ratio,
                                      SavePictureDialog1, SaveDialog1);
      if i = 7 then ItSpeichernPLTClick(Sender);
      if i = 8 then ItSpeichernDXFClick(Sender);
    end;
  end;
end;

procedure TForm99.ItSpeichernPltClick(Sender: TObject);
var
  i      : byte;
  Datei  : Textfile;
begin
  PanelEingabe.Visible    := false;
  GroupBoxPlotten.Visible := true;
  GeraetS               := 'HPGL';
  KonfigZeileS[53]      := 'Paper Plot                 :,HPGL';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
end;

procedure TForm99.ItSpeichernDxfClick(Sender: TObject);
var
  i      : byte;
  Datei  : Textfile;
begin
  PanelEingabe.Visible    := false;
  GroupBoxPlotten.Visible := true;
  GeraetS            := 'DXF';
  KonfigZeileS[53]   := 'Paper Plot                 :,DXF';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
end;

procedure TForm99.PloterstellenClick(Sender: TObject);
var
  XKoordS   : string[4];
  YKoordS   : string[4];
  Co        : integer;
  Lmax      : real;
  LmaxS     : string[15];
  Xmax      : real;
  KanteS    : string[10];
  Datei     : TextFile;
  i         : byte;
  Seiteh    : real;
  Seitev    : real;
  XNull     : real;
  YNull     : real;
  XS, YS    : string;
  WS, HS    : string;
  Groesse   : word;
  X, Y      : word;
  DiagNameS : string;
  Typ       : TMsgDlgType;
  Xan, Yan  : real;
  Teils     : byte;
  XanNeu    : real;
  YanNeu    : real;
  Tick, L   : real;
  RichtungS : string;
  ZahlS     : string;
  XZahlS    : string;
  DistanzS  : string;
  Xt, Yt, H : real;
  Xd, Yd    : real;
  WinkelS   : string;
  Fa        : real;
  MinWinkel : real;
  Xa, Ya    : real;
  Xe, Ye    : real;
  XZahl     : word;
  Distanz   : word;
  Xanf,Yanf : word;
  Xend,Yend : word;
begin
  Bo := Pi/180;
  DecimalSeparator := '.';
  Fa := ImageFlukt.Height/ImageFlukt.Width;
  KanteS  := MaskEditKante.Text;
  XKoordS := MaskEditX.Text;
  YKoordS := MaskEditY.Text;
  KonfigZeileS[67] := 'Length of Coordinates [mm] :'+','+KanteS;
  KonfigZeileS[68] := 'X-Coordin. of Origine [mm] :'+','+XKoordS;
  KonfigZeileS[69] := 'Y-Coordin. of Origine [mm] :'+','+YKoordS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  Seiteh  := StrToFloat(KanteS)/10;
  Seitev  := Seiteh*Fa;
  XNull   := StrToFloat(XKoordS)/10;
  YNull   := StrToFloat(YKoordS)/10;
  LmaxS := '(max. 290mm)';
  Lmax  := 29.0;
  Xmax  := 29.2 - Seiteh;
  Typ   := mtError;
  if Seiteh > Lmax then
  begin
    if DlgMessage (Typ, Tx(37), Tx(387),3) = 4 then
    begin
      MaskEditKante.Clear;
      MaskEditKante.SetFocus;
      exit;
    end;
  end;
  if XNull > Xmax then
  begin
    if DlgMessage (Typ, Tx(37), Tx(309),3) = 4 then
    begin
      MaskEditX.Clear;
      MaskEditX.SetFocus;
      exit;
    end;
  end;
  {Beginn des Plottens}
  Kante := Seiteh;
  if not Calib then
    DiagNameS := InputBox(Tx(439),Tx(887),' '); {Diagramm-Beschriftung}
  Canvas.Brush.Color := clWhite;
  if GeraetS <> 'Plotter' then
  begin
    Plotter (Canvas, SaveDialog1);
    XS := IntToStr(round(XNull*400));
    YS := IntToStr(round((YNull-YNull/2)*400));
    Farben (Canvas, KoordinFarbe);
    if GeraetS = 'HPGL' then
      Plotte ('PU;PA'+XS+','+YS+'LB'+DiagNameS+Chr(3));
    XS := Inttostr(round((XNull+Seiteh/4) * 400));
    YS := IntToStr(round((YNull+Seitev/6) * 400));
    WS := FloatToStr(Seiteh/30);
    HS := FloatToStr(Seitev/20);
    Farben (Canvas, KoordinFarbe);
    Teils   := 10;
    XanNeu  := XNull + Seiteh;
    YanNeu  := YNull + Seitev;
    if GeraetS = 'DXF' then DXFPunkt(XNull,YNull);
    Hpstrich (Canvas, XNull,YNull,Seiteh,0);
    Hpstrich (Canvas, XanNeu,YNull,Seitev,90);
    Hpstrich (Canvas, XanNeu,YanNeu,Seiteh,180);
    Hpstrich (Canvas, XNull,YanNeu,Seitev,270);
    Tick      := Seiteh / 10;
    RichtungS := 'DI1,0';
    L := Seiteh;
    Xskallin (Canvas, 17,XNull,YNull,Seiteh,10,Tick);
    Xhpschrift (Canvas, 17,RichtungS,XNull,YNull,L,1,
                Teils);
    Tick := Seitev/10;
    Yskallin (Canvas, 17,XNull,YNull,Seitev,10,Tick);
    {YhpSchrift}
    for i := 1 to 10 do
    begin
      ZahlS := FloatToStrF(i*MaxWinkel/10,ffFixed,7,1);
      if GeraetS = 'HPGL' then
      begin
        str ((400*(XNull-Seiteh/10)):6:2,XzahlS);
        str ((400*(YNull+i*Seitev/10)):6:2,DistanzS);
        Plotte (RichtungS+';PA'+XzahlS+','+DistanzS+'LB'
                +ZahlS+chr(3));
      end;
      if GeraetS ='DXF' then
      begin
        Xd := XNull-Seiteh/10+0.4;
        Yd := YNull+i*Seitev/10;
        H := Seiteh / 5;
        WinkelS := '0.0';
        Dxftext (Xd,Yd,H,ZahlS,WinkelS);
      end;
    end;
    Farben (Canvas,IterFarbe);
    if GeraetS = 'HPGL' then
    begin
      XS := IntToStr(round(400*XNull));
      YS := IntToSTR(round(400*(YNull+FlWinkel[0]*Seitev/MaxWinkel)));
      Plotte ('PU;PA'+XS+','+YS+';');
      for i := 0 to Teile do
      begin
        XS := IntToStr(round(400*(XNull+i*Seiteh/Teile)));
        YS := IntToStr(round(400*(YNull+FlWinkel[i]*Seitev/MaxWinkel)));
        Plotte('PD;PA'+XS+','+YS+';');
      end;
      XS := IntToStr(round(400*(XNull+R*Seiteh)));
      MinWinkel := arcsin(FlMin)/Bo;
      YS := IntToStr(round(400*(YNull+MinWinkel*Seitev/MaxWinkel)));
      Plotte ('PU;PA'+XS+','+YS+';');
      YS := IntToStr(round(400*YNull));
      Plotte ('PD;PA'+XS+','+YS+';');
    end;
    if GeraetS = 'DXF' then
    begin
      DXFpunkt(XNull,YNull+FlWinkel[0]*Seitev/MaxWinkel);
      for i := 0 to Teile-1 do
      begin
        Xa := XNull+i*Seiteh/Teile;
        Ya := YNull+FlWinkel[i]*Seitev/MaxWinkel;
        Xe := XNull+(i+1)*Seiteh/Teile;
        Ye := YNull+FlWinkel[i+1]*Seitev/MaxWinkel;
        DXFlinie (Xa,Ya,Xe,Ye);
      end;
      Xa := XNull + R*Seiteh;
      MinWinkel := arcsin(FlMin)/Bo;
      Ya := YNull + MinWinkel*Seitev/MaxWinkel;
      DXFlinie(Xa,Ya,Xa,Ynull);
    end;
    Hpende (XS, Ys, WS, HS);
  end;
  if GeraetS = 'Plotter' then
  begin
    SetMapMode (Printer.Handle, MM_Himetric);
    Xanf := round(XNull*100*Faktor);
    Yanf := round((YNull+Seitev)*100*Faktor);
    Xend := round((XNull+Seiteh)*100*Faktor);
    Yend := round(YNull*100*Faktor);
    with Printer do
    begin
      BeginDoc;
      Canvas.Font.Size  := 10;
      Canvas.Pen.Color  := KoordinFarbe;
      Canvas.Font.Color := KoordinFarbe;
      Canvas.Font.Name  := 'Times New Roman';
      Canvas.Font.Size  := 8;
      Canvas.Rectangle (Xanf,Yanf,Xend,Yend);
      Teilh := Seiteh/100;
      Teilv := Seitev/100;
      for i := 1 to 20 do
      begin
        Canvas.moveto(Xanf+round(100*Faktor*Teilh*i*5), Yanf);
        Canvas.lineto (Xanf+round(100*Faktor*Teilh*i*5),
                       round(Yanf+100*Faktor*Seiteh/50));
      end;
      for i := 1 to 10 do
        Canvas.Textout (Xanf+round(100*Faktor*2*Teilh*i*5),
                 Yanf+round(100*Faktor*Seiteh/60),
                 FloatToStr(i/10));
      for i := 1 to 10 do
      begin
        Canvas.moveto (Xanf,Yanf-round(100*Faktor*i*Teilv*10));
        Canvas.lineto (Xanf-round(100*Faktor*Seiteh/50),
                Yanf-round(100*Faktor*i*Teilv*10));
      end;
      Canvas.Font.Color := KoordinFarbe;
      Canvas.Font.Name  := 'Symbol';
      Canvas.Font.Size  := 14;
      Canvas.textout (Xanf-round(100*Faktor*Seiteh/8),
               Yanf-round(100*Faktor*Seitev/2),'d°');
      Canvas.Font.Name  := 'Times New Roman';
      Canvas.textout (Xanf+round(100*Faktor*Seiteh/2),
                      Yanf + round(100*Faktor*Seitev/15),'R');
      Vteil := Seitev/10;
      Canvas.Font.Size := 8;
      for i := 1 to 10 do
      begin
        Canvas.Textout(Xanf-round(100*Faktor*Seiteh/15),
                       Yanf-round(100*Faktor*i*Vteil),
                       FloatToStrF(i*MaxWinkel/10,ffFixed,7,1)); //Vertikale Skala
      end;
      Teilh := (Seiteh)/Teile;
      Teilv := (Seitev)/MaxWinkel;
      Canvas.moveto(Xanf,Yanf-round(100*Faktor*FlWinkel[0]*Teilv));  //*Teilv
      Canvas.Pen.Color := IterFarbe;
      for i := 1 to Teile do
      begin
        Canvas.lineto(Xanf+round(100*Faktor*i*Teilh),
                      Yanf-round(100*Faktor*FlWinkel[i]*Teilv)); //*Teilv
      end;
      Canvas.moveto (Xanf+round(100*Faktor*100*R*Teilh),
                     Yanf-round(100*Faktor*arcsin(FlMin)*Teilv/Bo));
      Canvas.lineto (Xanf+round(100*Faktor*100*R*Teilh),Yanf);
      Canvas.Font.Name := 'Helvetica';
      Canvas.Font.Size := round(Seiteh);
      Canvas.TextOut (Xanf,round(Yanf+100*Faktor*Seitev/10), DiagNameS);
      if DemoB then
      begin
        Groesse := round(Seiteh);
        Canvas.Font.Size   := Groesse;
        Canvas.Font.Color  := clBlack;
        Canvas.Brush.Color := clWhite;
        Canvas.Font.Name   := 'Helvetica';
        X := Xend - 60*Groesse;
        Y := Yend + Groesse;
        Canvas.Textout (X, Y,'Demo-Version');
      end;
      EndDoc;
    end; //Printer
  end; //Plotter
  if not Calib then
    showmessage(Tx(435));  {Plot beendet}
  GroupBoxPlotten.Visible    := false;
  ListBoxItSpeichern.Visible := false;
  ListBoxMSpeichern.Visible  := false;
  PanelEingabe.Visible       := true;
end;  

procedure TForm99.MohrDiagrammClick(Sender: TObject);
begin
  ListBoxMSpeichern.Visible := true;
end;

procedure TForm99.SpeedMspeichernClick(Sender: TObject);
begin
  MohrDiagrammClick(Sender);
end;

procedure TForm99.ListBoxMSpeichernClick(Sender: TObject);
begin
  BBreiteSt := BBreiteM;
  Ratio     := RatioM;
  GrafikSpeichern (ImageMohr, ListBoxMSpeichern, Ratio,
                   SavePictureDialog1, SaveDialog1);
end;

procedure TForm99.EinrichtenClick(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TForm99.DruckenClick(Sender: TObject);
var
  i      : byte;
  Datei  : Textfile;
begin
  DiagrFarbe := clWhite;
  PrinterSetupDialog1.execute;
  GeraetS                  := 'Plotter';
  KonfigZeileS[53] := 'Paper Plot                 :,Plotter';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  PanelEingabe.Visible    := false;
  GroupBoxPlotten.Visible := true;
end;

procedure TForm99.SpeedPlotterClick(Sender: TObject);
begin
  DruckenClick(Sender);
end;

procedure TForm99.CalibrierenClick(Sender: TObject);
begin
  Calib                   := true;
  FaktorAlt               := Faktor;
  Faktor                  := 1;
  GeraetS                 := 'Plotter';
  PanelEingabe.Visible    := false;
  GroupBoxPlotten.Visible := true;
  PanelKaliber.Visible    := true;
  MaskEditBrE.Setfocus;
end;

procedure TForm99.ButtonCalibEndeClick(Sender: TObject);
begin
  Calib := false;
  Faktor := FaktorAlt;
  PanelKaliber.Visible := false;
end;

procedure TForm99.SpeedKaliberClick(Sender: TObject);
begin
  CalibrierenClick(Sender);
end;

procedure TForm99.MaskEditBrEKeyPress(Sender: TObject; var Key: Char);
var
  EbreiteS : string;
begin
  if key = chr(13) then
  begin
    EbreiteS := MaskEditBrE.Text;
    LeerLoeschen (EbreiteS);
    if EbreiteS = '' then exit
    else
    begin
      Ebreite := StrToInt(EbreiteS);
      MaskEditBrD.SetFocus;
    end;
  end;
end;

procedure TForm99.MaskEditBrDKeyPress(Sender: TObject; var Key: Char);
var
  FaktorS  : string;
  Datei    : TextFile;
  i        : word;
  DbreiteS : string;
  EbreiteS : string;
begin
  if key = chr(13) then
  begin
    DbreiteS := MaskEditBrD.Text;
    LeerLoeschen (DbreiteS);
    if DbreiteS = '' then exit
    else
    begin
      Dbreite := round(StrToInt(DbreiteS)/Faktor);
      Faktor  := Ebreite/Dbreite;
      FaktorS := FloatToStrF(Faktor,ffFixed,7,2);
      KonfigZeileS[85] := 'Calibration factor for plot:,'+FaktorS;
      assignFile(Datei,FabricS+'\'+'Fabric.ini');
      rewrite (Datei);
      for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
      closefile (Datei);
      PanelKaliber.Visible := false;
    end;
  end;
end;

procedure TForm99.FarbeKoordClick(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  Spring := true;
  Farbe := clWhite;
  if ColorDialog.Execute then Farbe := ColorDialog.Color;
  FarbeS           := ColorToString (Farbe);
  KoordinFarbe     := StringToColor(FarbeS);
  KonfigZeileS[28] := 'Colour of Coordinates      :,'+FarbeS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  CheckBoxOkClick(Sender);
end;

procedure TForm99.SpeedKoordinatenClick(Sender: TObject);
begin
  FarbeKoordClick(Sender);
end;

procedure TForm99.FarbeHinterClick(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  Spring := true;
  Farbe  := clWhite;
  if ColorDialog.Execute then Farbe := ColorDialog.Color;
  FarbeS           := ColorToString (Farbe);
  GrundFarbe       := StringToColor(FarbeS);
  KonfigZeileS[73] := 'Colour of Background       :,'+FarbeS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  CheckBoxOkClick(Sender);
end;

procedure TForm99.SpeedHintergrundClick(Sender: TObject);
begin
  FarbeHinterClick(Sender);
end;

procedure TForm99.FarbeDiagrammClick(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  Farbe := clWhite;
  if ColorDialog.Execute then Farbe := ColorDialog.Color;
  FarbeS           := ColorToString (Farbe);
  RGFarbe          := StringToColor(FarbeS);
  KonfigZeileS[27] := 'Background of Diagrams     :,'+FarbeS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick (Sender);
end;

procedure TForm99.SpeedDiagrammClick(Sender: TObject);
begin
  FarbeDiagrammClick(Sender); 
end;

procedure TForm99.FarbeKurveClick(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  Spring := true;
  Farbe  := clWhite;
  if ColorDialog.Execute then Farbe := ColorDialog.Color;
  FarbeS           := ColorToString (Farbe);
  IterFarbe        := StringToColor(FarbeS);       
  KonfigZeileS[131] := 'Colour of iteration curve  :,'+FarbeS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  CheckBoxOkClick(Sender);
end;

procedure TForm99.FarbeRahmenClick(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  Spring := true;
  Farbe  := clWhite;
  if ColorDialog.Execute then Farbe := ColorDialog.Color;
  FarbeS          := ColorToString (Farbe);
  RahmenFarbe     := StringToColor(FarbeS);
  KonfigZeileS[4] := '  Frame Colour             :,'+FarbeS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  CheckBoxOkClick(Sender);
end;

procedure TForm99.SpeedRahmenClick(Sender: TObject);
begin
  FarbeRahmenClick(Sender);
end;

procedure TForm99.DeinrichtenClick(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TForm99.SpeedEinrichtenClick(Sender: TObject);
begin
  DEinrichtenClick(Sender);
end;

procedure TForm99.DFormfaktorClick(Sender: TObject);
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

procedure TForm99.SpeedDruckenRClick(Sender: TObject);
begin
  DFormfaktorClick(Sender)
end;

procedure TForm99.MaskEditUnterschriftKeyPress(Sender: TObject;
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

procedure TForm99.RadioButtonLinksClick(Sender: TObject);
begin
  BuendigS := 'Links';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    ButtonDrucken.Enabled := true;
end;

procedure TForm99.RadioButtonZentriertClick(Sender: TObject);
begin
  BuendigS := 'Zentriert';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    ButtonDrucken.Enabled := true;
end;

procedure TForm99.RadioButtonRechtsClick(Sender: TObject);
begin
 BuendigS := 'Rechts';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    ButtonDrucken.Enabled := true;
end;

procedure TForm99.ButtonDruckenClick(Sender: TObject);
var
  XKoordS : string;
  YKoordS : string;
  RadiusS : string;
  Bitmap  : TBitmap;
  Fenster : TRect;
begin
  Paneldrucken.Visible         := false;
  RadiusS := MaskEditRdrucken.Text;
  XKoordS := MaskEditXdrucken.Text;
  YKoordS := MaskEditYdrucken.Text;
  Radius  := StrToInt(RadiusS) div 2;
  RadiusS := IntToStr(Radius);
  Bitmap:=TBitmap.Create;
  try
    if Druck = 1 then Bitmap.Assign(ImageFlukt.picture.graphic);
    if Druck = 2 then Bitmap.Assign(ImageMohr.picture.graphic);
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

procedure TForm99.ListBoxSchriftClick(Sender: TObject);
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

procedure TForm99.ButtonAbbrechenClick(Sender: TObject);
begin
  Paneldrucken.Visible := false;
end;

procedure TForm99.DMohrClick(Sender: TObject);
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

procedure TForm99.SpeedDruckenMClick(Sender: TObject);
begin
  DMohrClick(Sender);
end;

procedure TForm99.DiederClick(Sender: TObject);
var
  i : word;
begin
  WeiterB[99] := true;
  Application.CreateForm(TForm29, Form29);
  Form29.Show;
end;

procedure TForm99.VersatzClick(Sender: TObject);
begin
  WeiterB[99] := true;
  Application.CreateForm(TForm31, Form31);
  Form31.Show;
end;

procedure TForm99.HoeppenerClick(Sender: TObject);
begin
  WeiterB[99] := true;
  Application.CreateForm(TForm33, Form33);
  Form33.Show;
end;

procedure TForm99.EigenwerteClick(Sender: TObject);
begin
  WeiterB[99] := true;
  Application.CreateForm(TForm34, Form34);
  Form34.Show;
end;

procedure TForm99.DirektClick(Sender: TObject);
begin
  WeiterB[99] := true;
  Application.CreateForm(TForm100, Form100);
  Form100.Show;
end;

procedure TForm99.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Formfaktor.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'Shape-factor.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm99.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm99.HilfeClick(Sender: TObject);
var
  DateiS      : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\99Iteration.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\99Iteration.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm99.SpeedHilfeClick(Sender: TObject);
begin
  HilfeClick(Sender);
end;

procedure TForm99.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm99.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

procedure TForm99.DspeichernClick(Sender: TObject);
begin
   if CurrentFile <> '' then Stressein(CurrentFile, ZahlGlob,
      AziFeldAlt, SAziFeldAlt, FalFeldAlt, SFalFeldAlt)
   else DspeichernUClick(Sender);
end;

procedure TForm99.DspeichernUClick(Sender: TObject);
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

end.
