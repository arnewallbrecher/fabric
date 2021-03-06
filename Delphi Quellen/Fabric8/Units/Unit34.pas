unit Unit34;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, ExtCtrls, StdCtrls, Mask, Menus, Globvar,
  ClipBrd, Plotten, Basic, Texte, FormFak, Kalkulat, HPPlot,
  ComCtrls, Buttons, Printers, Drucken, Shellapi, FileCtrl,
  Standard, GifImage, Bmp2Tiff, Jpeg, ExtDlgs, ehsHelpRouter,
  PngImage, Grafik, Einausga;

type
  TForm34 = class(TForm)
    Image1: TImage;
    PanelDateien: TPanel;
    Labelausgewaehlte: TLabel;
    ListBoxDateien   : TListBox;
    GroupBoxSigma: TGroupBox;
    LabelSigma1       : TLabel;
    LabelSigma3       : TLabel;
    MaskEditASigma1: TMaskEdit;
    MaskEditASigma3: TMaskEdit;
    CheckBoxOK: TCheckBox;
    PanelEigen: TPanel;
    LabelEigenwerte: TLabel;
    LabelR         : TLabel;
    LabelLambda1   : TLabel;
    LabelLambda2   : TLabel;
    LabelLambda3   : TLabel;

    theoretisch       : TGroupBox;
    ListBoxtheoretisch: TListBox;

    GroupBoxgemessen: TGroupBox;
    Labelgemessen: TLabel;

    ButtonStart  : TButton;
    Buttonzurueck: TButton;
    Buttonbeenden: TButton;

    MainMenu1: TMainMenu;

    Farbe1             : TMenuItem;
    theoretischePunkte1: TMenuItem;

    gemessenePunkte1: TMenuItem;

    kopieren1                 : TMenuItem;
    FormSpeichern: TMenuItem;

    Hilfe1      : TMenuItem;
    OpenDialog1 : TOpenDialog;
    SaveDialog1 : TSaveDialog;

    MaskEditFSigma1 : TMaskEdit;
    MaskEditFSigma3 : TMaskEdit;

    GroupBoxplotten : TGroupBox;
    Panel4          : TPanel;
    LabelKante      : TLabel;
    MaskEditKante   : TMaskEdit;
    Panel5          : TPanel;
    LabelNull       : TLabel;
    LabelX          : TLabel;
    MaskEditX       : TMaskEdit;
    LabelY          : TLabel;
    MaskEditY       : TMaskEdit;

    Grafik1: TMenuItem;

    HPPlotter1 : TMenuItem;

    FarbeKoordin1 : TMenuItem;

    FarbeHintergrund1 : TMenuItem;

    FarbeDiagramm1: TMenuItem;

    FarbeRahmen   : TMenuItem;

    StatusBar: TStatusBar;
    PanelSpeed: TPanel;
    SpeedDruckenR: TSpeedButton;
    SpeedHilfe   : TSpeedButton;
 
    PanelDrucken         : TPanel;
    GroupBoxDrucken      : TGroupBox;
    Panel6               : TPanel;
    LabelRdrucken        : TLabel;
    MaskEditRdrucken     : TMaskEdit;
    Panel8               : TPanel;
    LabelMitte           : TLabel;
    LabelXdrucken        : TLabel;
    MaskEditXdrucken     : TMaskEdit;
    LabelYdrucken        : TLabel;
    MaskEditYdrucken     : TMaskEdit;
    Panel9               : TPanel;
    LabelUnterschrift    : TLabel;
    MaskEditUnterschrift : TMaskEdit;
    LabelSchrift         : TLabel;
    ListBoxSchrift       : TListBox;
    RadioGroup           : TRadioGroup;
    RadioButtonRechts    : TRadioButton;
    RadioButtonZentriert : TRadioButton;
    RadioButtonLinks     : TRadioButton;

    Drucker1            : TMenuItem;
    Druckereinrichten1  : TMenuItem;
    drucken1            : TMenuItem;
    PrinterSetupDialog1 : TPrinterSetupDialog;
    PrintDialog1        : TPrintDialog;
    Handbuch: TMenuItem;
    ColorDialog1: TColorDialog;
    SpeedHandbuch: TSpeedButton;
    SpeedFarbeTheor: TSpeedButton;
    SpeedKopierenR: TSpeedButton;
    SpeedFarbeGemessen: TSpeedButton;
    SpeedPlotter: TSpeedButton;
    SpeedKoordinaten: TSpeedButton;
    SpeedDiagramm: TSpeedButton;
    SpeedHintergrund: TSpeedButton;
    Image2: TImage;
    Literatur: TMenuItem;
    SpeedLiteratur: TSpeedButton;
    SpeedEinrichten: TSpeedButton;
    Auswertung: TMenuItem;
    Versatz: TMenuItem;
    Dieder: TMenuItem;
    Hoeppener: TMenuItem;
    SpeedDieder: TSpeedButton;
    SpeedVersatz: TSpeedButton;
    SpeedHoeppener: TSpeedButton;
    Bgroesse: TMenuItem;
    Formfaktor: TMenuItem;
    Mohr: TMenuItem;
    PanelGroesse: TPanel;
    LabelBHoehe: TLabel;
    LabelBBreite: TLabel;
    MaskEditBBreite: TMaskEdit;
    MaskEditBHoehe: TMaskEdit;
    CheckBoxBild: TCheckBox;
    KopForm: TMenuItem;
    KopMohr: TMenuItem;
    SpeedBGroesseF: TSpeedButton;
    SpeedBGroesseM: TSpeedButton;
    SpeedKopierenM: TSpeedButton;
    SpeedDruckenM: TSpeedButton;
    DFormFaktor: TMenuItem;
    DMohr: TMenuItem;
    MohrSpeichern: TMenuItem;
    SavePictureDialog1: TSavePictureDialog;
    Ploterstellen: TButton;
    ButtonDrucken: TButton;
    ButtonAbbrechen: TButton;
    SpeedIter: TSpeedButton;
    Iteration: TMenuItem;
    SpeedFRahmen: TSpeedButton;
    PanelDaten: TPanel;
    ListBoxDaten: TListBox;
    LabelDaten: TLabel;
    LabelZahlderDaten: TLabel;
    Label00000: TLabel;
    ListBoxFSpeichern: TListBox;
    ListBoxMSpeichern: TListBox;
    SpeedFSpeichern: TSpeedButton;
    SpeedMSpeichern: TSpeedButton;
    Font1: TMenuItem;
    FontDialog1: TFontDialog;
    SpeedFont: TSpeedButton;
    DatenSpeichern: TMenuItem;
    DSpeichern: TMenuItem;
    DSpeichernUnter: TMenuItem;
    Direkt: TMenuItem;
    SpeedDirekt: TSpeedButton;
    DEinrichten: TMenuItem;
    Calibrieren: TMenuItem;
    Drucken: TMenuItem;
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
    SpeedCalib: TSpeedButton;

    procedure FormActivate(Sender: TObject);
    procedure ButtonzurueckClick(Sender: TObject);
    procedure ButtonbeendenClick(Sender: TObject);
    procedure ButtonStartClick(Sender: TObject);

    {Spannungen}
    procedure CheckBoxOKClick(Sender: TObject);

    {Grafik}
    procedure KopFormClick(Sender: TObject);
    procedure KopMohrClick(Sender: TObject);
    procedure ausZwischenablageholen1Click(Sender: TObject);
    procedure ausDateiholen1Click(Sender: TObject);

    {Farben der theoretischen Punkte}
    procedure theoretischePunkte1Click(Sender: TObject);
    {Farbe des gemessenen Punktes}
    procedure gemessenePunkte1Click(Sender: TObject);

    procedure Hilfe1Click(Sender: TObject);
    procedure ShowHint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedHilfeClick(Sender: TObject);
    procedure MaskEditASigma1Change(Sender: TObject);
    procedure MaskEditASigma3Change(Sender: TObject);
    procedure MaskEditFSigma3Change(Sender: TObject);
    procedure Druckereinrichten1Click(Sender: TObject);
    procedure SpeedDruckenRClick(Sender: TObject);
    procedure MaskEditUnterschriftKeyPress(Sender: TObject; var Key: Char);
    procedure RadioButtonRechtsClick(Sender: TObject);
    procedure RadioButtonZentriertClick(Sender: TObject);
    procedure RadioButtonLinksClick(Sender: TObject);
    procedure ListBoxSchriftClick(Sender: TObject);
    procedure HandbuchClick(Sender: TObject);
    procedure FarbeKoordin1Click(Sender: TObject);
    procedure FarbeHintergrund1Click(Sender: TObject);
    procedure FarbeDiagramm1Click(Sender: TObject);
    procedure FarbeRahmenClick(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure SpeedFarbeTheorClick(Sender: TObject);
    procedure SpeedZwischenablageClick(Sender: TObject);
    procedure SpeedFarbeGemessenClick(Sender: TObject);
    procedure SpeedausDateiClick(Sender: TObject);
    procedure SpeedPlotterClick(Sender: TObject);
    procedure SpeedPLTClick(Sender: TObject);
    procedure SpeedDXFClick(Sender: TObject);
    procedure SpeedKoordinatenClick(Sender: TObject);
    procedure SpeedDiagrammClick(Sender: TObject);
    procedure SpeedHintergrundClick(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
    procedure SpeedLiteraturClick(Sender: TObject);
    procedure SpeedEinrichtenClick(Sender: TObject);
    procedure VersatzClick(Sender: TObject);
    procedure DiederClick(Sender: TObject);
    procedure HoeppenerClick(Sender: TObject);
    procedure SpeedHoeppenerClick(Sender: TObject);
    procedure SpeedDiederClick(Sender: TObject);
    procedure SpeedVersatzClick(Sender: TObject);
    procedure FormfaktorClick(Sender: TObject);
    procedure MohrClick(Sender: TObject);
    procedure MaskEditBBreiteKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditBHoeheKeyPress(Sender: TObject; var Key: Char);
    procedure CheckBoxBildClick(Sender: TObject);
    procedure SpeedBGroesseFClick(Sender: TObject);
    procedure SpeedBGroesseMClick(Sender: TObject);
    procedure SpeedKopierenRClick(Sender: TObject);
    procedure SpeedKopierenMClick(Sender: TObject);
    procedure DFormFaktorClick(Sender: TObject);
    procedure DMohrClick(Sender: TObject);
    procedure SpeedDruckenMClick(Sender: TObject);
    procedure speichernPLTClick(Sender: TObject);
    procedure speichernDXFClick(Sender: TObject);
    procedure PloterstellenClick(Sender: TObject);
    procedure ButtonDruckenClick(Sender: TObject);
    procedure ButtonAbbrechenClick(Sender: TObject);
    procedure IterationClick(Sender: TObject);
    procedure SpeedIterClick(Sender: TObject);
    procedure SpeedFRahmenClick(Sender: TObject);
    procedure FormSpeichernClick(Sender: TObject);
    procedure ListBoxFSpeichernClick(Sender: TObject);
    procedure MohrSpeichernClick(Sender: TObject);
    procedure ListBoxMSpeichernClick(Sender: TObject);
    procedure SpeedFSpeichernClick(Sender: TObject);
    procedure SpeedMSpeichernClick(Sender: TObject);
    procedure Font1Click(Sender: TObject);
    procedure SpeedFontClick(Sender: TObject);
    procedure DSpeichernClick(Sender: TObject);
    procedure DSpeichernUnterClick(Sender: TObject);
    procedure DirektClick(Sender: TObject);
    procedure SpeedDirektClick(Sender: TObject);
    procedure DEinrichtenClick(Sender: TObject);
    procedure CalibrierenClick(Sender: TObject);
    procedure DruckenClick(Sender: TObject);
    procedure ButtonCalibEndeClick(Sender: TObject);
    procedure MaskEditBrEKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditBrDKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedCalibClick(Sender: TObject);
  end;

var
  Form34          : TForm34;
  Bitmap          : TBitmap;
  HolZwischen     : boolean;
  HolDatei        : boolean;
  CurrentFile     : string;
  PeriFarbe       : TColor;
  ASigma1S        : string[3];
  FSigma1S        : string[2];
  ASigma3S        : string[3];
  FSigma3S        : string[2];
  Anzahl          : word;
  PlotDateiS      : string;
  Lambda1         : array[0..10] of real;
  Lambda2         : array[0..10] of real;
  Lambda3         : array[0..10] of real;
  SLambda1        : real;
  SLambda2        : real;
  SLambda3        : real;
  Schrift         : byte;
  BuendigS        : string;
  Gedrueckt       : array [1..3] of boolean;
  TextS           : string;
  Xgemessen       : word;
  Ygemessen       : word;
  BildF, BildM    : boolean;
  RatioF, RatioM  : real;
  BHoeheF,BHoeheM : word;
  AziRotZeiger    : array of word;
  FalRotZeiger    : array of word;
  GAziRotZeiger   : array of word;
  GFalRotZeiger   : array of shortint;
  AziFeldAlt      : array of word;
  FalFeldAlt      : array of word;
  SAziFeldAlt     : array of word;
  SFalFeldAlt     : array of shortint;
  Bild            : TBitmap;
  AziStrZeiger    : array of word;
  FalStrZeiger    : array of shortint;
  Istring         : string[5];
  Xtra1, Ytra1    : word;
  GLaenge         : word;
  Ebreite,Dbreite : word;
  FaktorAlt       : real; 

implementation
uses Unit27, Unit28, Unit29, Unit31, Unit33, Unit35, Unit94,
     Unit99, Unit100;
{$R *.DFM}

procedure TForm34.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm34.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm34.FormActivate(Sender: TObject);
var
  i : word;
begin
  Left   := 70;
  Top    := 10;
  Width  := 1050;
  Height := 750;
  WeiterB[34] := false;
  setlength (AziFeld, MaxDaten);
  setlength (FalFeld, MaxDaten);
  setlength (SAziFeld, MaxDaten);
  setlength (SFalFeld, MaxDaten);
  setlength (AziRotZeiger, MaxDaten);
  setlength (FalRotZeiger, MaxDaten);
  setlength (GAziRotZeiger, MaxDaten);
  setlength (GFalRotZeiger, MaxDaten);
  setlength (AziFeldAlt, MaxDaten);
  setlength (FalFeldAlt, MaxDaten);
  setlength (SAziFeldAlt, MaxDaten);
  setlength (SFalFeldAlt, MaxDaten);
  setlength (AziStrZeiger, MaxDaten);
  setlength (FalStrZeiger, MaxDaten);
  For i := 1 to ZahlGlob do
  begin
    AziFeldAlt[i]  := AziFeld[i];
    FalFeldAlt[i]  := FalFeld[i];
    SAziFeldAlt[i] := SAziFeld[i];
    SFalFeldAlt[i] := SFalFeld[i];
  end;
  Form34.Caption                   := Tx(675);  {Fabric7: Bestimmung des..}
  Image1.Hint                      := Hilf(310);
  ListBoxDateien.Hint              := Hilf(82);
  Labelausgewaehlte.Hint           := Hilf(82);
  LabelZahlderDaten.Hint           := Hilf(36);
  Label00000.Hint                  := Hilf(36);
  GroupBoxSigma.Hint               := Hilf(158);
  MaskEditAsigma1.Hint             := Hilf(159);
  MaskEditFSigma1.Hint             := Hilf(160);
  MaskEditASigma3.Hint             := Hilf(161);
  MaskEditFSigma3.Hint             := Hilf(162);
  PanelEigen.Hint                  := Hilf(311);
  theoretisch.Hint                 := Hilf(168);
  ListBoxtheoretisch.Hint          := Hilf(168);
  GroupBoxgemessen.Hint            := Hilf(169);
  GroupBoxPlotten.Hint             := Hilf(58) + Hilf(59);
  ButtonStart.Hint                 := Hilf(37);
  Buttonzurueck.Hint               := Hilf(52);
  Buttonbeenden.Hint               := Hilf(30);
  Ploterstellen.Hint               := Hilf(65);
  Panel4.Hint                      := Hilf(143);
  MaskEditKante.Hint               := Hilf(144);
  Panel5.Hint                      := Hilf(145);
  MaskEditX.Hint                   := Hilf(63);
  MaskEditY.Hint                   := Hilf(64);
  SpeedHilfe.Hint                  := Hilf(210);
  SpeedHandbuch.Hint               := Hilf(274);
  SpeedFarbeTheor.Hint             := Hilf(419);
  SpeedFarbeGemessen.Hint          := Hilf(420);
  SpeedPlotter.Hint                := Hilf(437);
  SpeedKoordinaten.Hint            := Hilf(444);
  SpeedDiagramm.Hint               := Hilf(441);
  SpeedFRahmen.Hint                := Hilf(442);
  SpeedHintergrund.Hint            := Hilf(443);
  SpeedEinrichten.Hint             := Hilf(505);
  SpeedDieder.Hint                 := Hilf(515);
  SpeedVersatz.Hint                := Hilf(512);
  SpeedHoeppener.Hint              := Hilf(514);
  SpeedBGroesseF.Hint              := Hilf(573);
  SpeedBGroesseM.Hint              := Hilf(574);
  SpeedKopierenR.Hint              := Hilf(575);
  SpeedKopierenM.Hint              := Hilf(576);
  SpeedDruckenR.Hint               := Hilf(581);
  SpeedDruckenM.Hint               := Hilf(582);
  SpeedIter.Hint                   := Hilf(646);
  SpeedFSpeichern.Hint             := Hilf(680);
  SpeedMSpeichern.Hint             := Hilf(681);
  SpeedFont.Hint                   := Hilf(686);
  SpeedDirekt.Hint                 := Hilf(692);
  SpeedCalib.Hint                  := Hilf(717);
  Farbe1.Caption                   := Tx(642);  {&Farbe}
  theoretischePunkte1.Caption      := Tx(676);  {theoretische Punkte}
  gemessenePunkte1.Caption         := Tx(677);
  Grafik1.Caption                  := Tx(281);
  kopieren1.Caption                := Tx(282);
  HPPlotter1.Caption               := Tx(288);
  FarbeKoordin1.Caption            := Tx(862);
  FarbeDiagramm1.Caption           := Tx(860);
  FarbeHintergrund1.Caption        := Tx(856);
  Hilfe1.Caption                   := Tx(162)+' (F1)';
  Labelausgewaehlte.Caption        := Tx(136);
  LabelZahlderDaten.Caption        := Tx(646);   {Zahl der Daten:}
  GroupBoxSigma.Caption            := Tx(668);   {Haupt-Normalspannungen:}
  LabelSigma1.Caption              := Tx(669);
  LabelSigma3.Caption              := Tx(670);
  LabelEigenwerte.Caption          := Tx(681);   {Eigenwerte der Striemungen}
  theoretisch.Caption              := Tx(682);   {theoretisch:}
  GroupBoxgemessen.Caption         := Tx(683);   {gemessen:}
  GroupBoxPlotten.Caption          := Tx(297);
  Ploterstellen.Caption            := Tx(298);   {Plot-Eingabe ok?}
  LabelKante.Caption               := Tx(685);   {Kantenl�nge [mm]:}
  LabelNull.Caption                := Tx(686);   {Nullpunkt [mm]:}
  LabelX.Caption                   := Tx(687);
  LabelY.Caption                   := Tx(688);
  Buttonzurueck.Caption            := Tx(30);
  Buttonbeenden.Caption            := Tx(53);
  Auswertung.Caption               := Tx(1341);
  Dieder.Caption                   := Tx(17);
  Versatz.Caption                  := Tx(18);
  Hoeppener.Caption                := Tx(19);
  Iteration.Caption                := Tx(20)+', '+Tx(1585);
  Direkt.Caption                   := Tx(20)+', '+Tx(1648);
  Font1.Caption                    := Tx(1621);
  DatenSpeichern.Caption           := Tx(86);
  DSpeichern.Caption               := Tx(87);
  DSpeichernUnter.Caption          := Tx(88);
  DEinrichten.Caption              := Tx(94);
  Calibrieren.Caption              := Tx(1581);
  Drucken.Caption                  := Tx(93);
  LabelCalib.Caption               := Tx(1676);
  LabelCalib2.Caption              := Tx(1677);
  LabelCalib3.Caption              := Tx(1670);
  LabelCalib4.Caption              := Tx(1671);
  LabelCalib5.Caption              := Tx(1678);
  LabelCalib6.Caption              := Tx(1679);
  LabelBrE.Caption                 := Tx(1680);
  LabelBrD.Caption                 := Tx(1681);
  ButtonCalibEnde.Caption          := Tx(1682);
  GroupBoxPlotten.Caption    := '';
  GroupBoxSigma.Caption      := '';
  theoretisch.Caption        := '';
  GroupBoxgemessen.Caption   := '';
  Image1.Enabled             := false;
  ListBoxDateien.Enabled     := false;
  Labelausgewaehlte.Enabled  := false;
  LabelZahlderDaten.Enabled  := false;
  Label00000.Caption         := '';
  MaskEditASigma1.EditMask   := '999;0; ';
  MaskEditFSigma1.EditMask   := '99;0; ';
  MaskEditASigma3.EditMask   := '999;0; ';
  MaskEditFSigma3.EditMask   := '99;0; ';
  MaskEditASigma1.Text       := InttoStr (ASigma1);
  MaskEditFSigma1.Text       := InttoStr (FSigma1);
  MaskEditASigma3.Text       := InttoStr (ASigma3);
  MaskEditFSigma3.Text       := InttoStr (FSigma3);
  CheckBoxOk.State           := cbUnchecked;
  CheckBoxOk.Enabled         := false;
  LabelEigenwerte.Enabled    := false;
  LabelR.Caption             := '';
  LabelLambda1.Caption       := '';
  LabelLambda2.Caption       := '';
  LabelLambda3.Caption       := '';
  Labelgemessen.Caption      := '';
  kopieren1.Enabled          := false;
  LabelKante.Enabled         := false;
  LabelNull.Enabled          := false;
  LabelX.Enabled             := false;
  LabelY.Enabled             := false;
  MaskEditKante.EditMask     := '999;0; ';
  MaskEditX.EditMask         := '999;0; ';
  MaskEditY.EditMask         := '999;0; ';
  MaskEditKante.Text         := InttoStr (round(Kante));
  MaskEditX.Text             := InttoStr (round(XAnfang));
  MaskEditY.Text             := InttoStr (round(YAnfang));
  MaskEditKante.Enabled      := false;
  MaskEditX.Enabled          := false;
  MaskEditY.Enabled          := false;
  Farbe1.Enabled             := false;
  AusgewDateien              := true;
  MaskEditASigma1.Enabled    := true;
  MaskEditASigma1.SetFocus;
  Grafik1.Enabled         := false;
  LabelSigma1.Enabled     := false;
  LabelSigma3.Enabled     := false;
  MaskEditASigma1.Enabled := false;
  MaskEditFSigma1.Enabled := false;
  MaskEditASigma3.Enabled := false;
  MaskEditFSigma3.Enabled := false;
  Paneldrucken.Visible    := false;
  PanelKaliber.Visible    := false;
  Calib                   := false;
  Drucker1.Caption             := Tx(92);
  Druckereinrichten1.Caption   := Tx(94);
  drucken1.Caption             := Tx(93);
  FarbeRahmen.Caption          := Tx(892);
  SpeedDruckenR.Enabled        := false;
  SpeedDruckenM.Enabled        := false;
  for i := 1 to 3 do Gedrueckt[i] := false;
  GroupBoxPlotten.Visible := false;
  Handbuch.Caption        := Tx(1055)+' (F2)';
  Literatur.Caption       := Tx(1183)+' (F5)';
  SpeedLiteratur.Hint     := Hilf(462);  
  PanelSpeed.Visible      := false;
  SpeedDieder.Enabled    := false;
  SpeedVersatz.Enabled   := false;
  SpeedHoeppener.Enabled := false;
  Auswertung.Enabled     := false;
  BildF                  := false;
  BildM                  := false;
  RatioF                 := Image1.Width/Image1.Height;
  RatioM                 := Image2.Width/Image2.Height;
  MaskEditBBreite.EditMask := '99999;0; ';
  MaskEditBHoehe.EditMask  := '99999;0; ';
  LabelBBreite.Caption     := Tx(1440);
  LabelBHoehe.Caption      := Tx(1441);
  BGroesse.Caption         := Tx(1439);
  PanelGroesse.Visible     := false;
  Druck                    := 0;
  Mohr.Caption             := Tx(1450);
  KopForm.Caption          := Tx(1449);
  KopMohr.Caption          := Tx(1450);
  FormSpeichern.Caption    := Tx(1458);
  MohrSpeichern.Caption    := Tx(1460);
  DFormFaktor.Caption      := Tx(1449);
  DMohr.Caption            := Tx(1450);
  LabelDaten.Caption       := Tx(914);
  PanelEigen.Visible       := false;
  Theoretisch.Visible      := false;
  GroupBoxGemessen.Visible := false;
  PanelDateien.Visible     := false;
  GroupBoxSigma.Visible    := false;
  PanelDaten.Visible       := false;
  Font1.Enabled            := false;
  DatenSpeichern.Enabled   := false;
  for i := 1 to 9 do
    ListBoxFspeichern.Items.Add (Tx(1611+i));
  ListBoxFSpeichern.Visible := false;
  for I := 1 to 7 do
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
end;

procedure TForm34.ButtonStartClick(Sender: TObject);
var
  i, j          : word;
  FormFaktor    : real;
  RFaktor       : real;
  L1S, GL1S     : string[10];
  L2S, GL2S     : string[10];
  L3S, GL3S     : string[10];
  Sa, Ca, Ph    : real;
  X, Y, Zz      : real;
  V             : array[0..6] of real;
  Aq            : array[0..6] of word;
  Fq            : array[0..6] of shortint;
  SV            : real;
  G6, ZirkOeff  : byte;
  Gk            : byte;
  RS            : string[5];
  Tausch        : real;
  ProS          : string[20];
  SDatei        : TextFile;
  SFallenS      : string;
  Azimut        : word;
  FallenRot     : integer;
  VorzS         : string;
  m, n, k       : byte;
  AziSchwerp    : integer;
  FalSchwerp    : integer;
  Reg, Kon, Ver : real;
  Oeff          : real;
  AErg          : word;
  FErg, F       : shortint;
  Winkel        : integer;
  Astr, Fstr    : array[0..1000] of word;
  Xa,Xe, Ya     : word;
  Panf, Pend    : word;
  RLaenge       : word;
  Pgemessen     : word;
  GemLaenge     : word;
  Rgem          : real;
  RgemS         : string[15];
  Mx1, My1      : word;
  Mx2, My2      : word;
  Mx3, My3      : word;
  Mx4, My4      : word;
  Sig2, Yu      : word;
  Radius, A     : word;
  Theta         : integer;
  Sn, Ss        : word;
  SFal          : word;
  R, XR, Xn     : word;
  Xg            : real;
  ZeileS        : string;
  FallenS       : string;
  Xlambda       : word;
  YLambda       : word;
  Laenge        : word;
  S2, S3        : real;
  Nazi, Nfal    : word;
  l1,l2,l3      : real;
  p1,p2,p3      : real;
  Pwert         : real;
  Phi, Alpha    : real;
  Snorm,Sscher  : real;
  AEr, xnr, ynr : word;
  FEr           : shortint;
begin
  GroupBoxPlotten.Visible := false;
  BHoeheF := round(BBreiteF/RatioF);
  BHoeheM := round(BBreiteM/RatioM);
  PanelSpeed.Visible    := true;
  PanelDaten.Visible    := true;
  PanelDateien.Visible  := true;
  PanelEigen.Visible    := true;
  GroupBoxSigma.Visible := true;
  Theoretisch.Visible      := true;
  GroupBoxGemessen.Visible := true;
  Grafik1.Enabled            := true;
  LabelSigma1.Enabled        := true;
  LabelSigma3.Enabled        := true;
  MaskEditASigma1.Enabled    := true;
  MaskEditFSigma1.Enabled    := true;
  MaskEditASigma3.Enabled    := true;
  MaskEditFSigma3.Enabled    := true;
  CheckBoxOk.Enabled         := true;
  LabelKante.Enabled         := true;
  MaskEditKante.Enabled      := true;
  LabelNull.Enabled          := true;
  LabelX.Enabled             := true;
  LabelY.Enabled             := true;
  MaskEditX.Enabled          := true;
  MaskEditY.Enabled          := true;
  Font1.Enabled              := true;
  DatenSpeichern.Enabled     := true;
  if not WeiterF then
  begin
    Auswertung.Enabled       := true;
    SpeedDieder.Enabled      := true;
    SpeedVersatz.Enabled     := true;
    SpeedHoeppener.Enabled   := true;
  end;
  for i := 1 to ZahlGlob do
  begin
    ZeileS := '     '+RightS('000'+IntToStr(Azifeld[i]),3)+'/'
              +RightS('00'+IntToStr(FalFeld[i]),2)
              +'    '+RightS('000'+IntToStr(SAziFeld[i]),3);
    if SfalFeld[i] >= 0 then
      Fallens :='/ '+RightS('00'+IntToStr(SFalFeld[i]),2)
    else
      FallenS := '/-'+RightS('00'+IntToStr(abs(SfalFeld[i])),2);
    ListBoxDaten.Items.Add(ZeileS+FallenS);
  end;
  for i := 1 to ZahlGlob do           {Umwandlung der Fl�chen in Normale:}
  begin
    AziFeld[i] := (180 + AziFeld[i]) mod 360;
    FalFeld[i] := 90 - FalFeld[i];
  end;
  Image1.Enabled            := true;
  ListBoxDateien.Clear;
  for i := 0 to High(DateinameS) do
    ListboxDateien.Items.Add (DateiNameS[i]);
  GroupBoxPlotten.Caption   := 'Plot:';
  GroupBoxSigma.Caption     := Tx(668);
  ProS                      := GeraetS;
  Farbe1.Enabled            := true;
  Anzahl                    := ZahlGlob;
  theoretisch.Caption       := Tx(385);
  GroupBoxgemessen.Caption  := Tx(386);
  Labelausgewaehlte.Enabled := true;
  ListBoxDateien.Enabled    := true;
  LabelZahlderDaten.Enabled := true;
  Label00000.Caption        := IntToStr(ZahlGlob);
  LabelEigenwerte.Enabled   := true;
  LabelR.Caption            := 'R';
  Font.Name                 := 'Symbol';
  LabelLambda1.Caption      := 'l1';
  LabelLambda2.Caption      := 'l2';
  LabelLambda3.Caption      := 'l3';
  {Diagramm plotten}
  Bo := Pi/180;
  with Image1 do
  begin
    Xmitte := ClientWidth div 2;
    Ymitte := ClientHeight div 2;
    Radius := ClientWidth div 2 - 20;
    Breite := Image1.Width;
    Hoehe  := Image1.Height;
  end;
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
        showMessage(Tx(307));                       {Datei nicht gefunden}
      end;
    end;
  end; {if HolDatei}
  PlotDreieck (Image1.Canvas, Xtra1, Ytra1, Laenge);
  {Begin der Berechnung}
  for i := 1 to ZahlGlob+1 do         {Array, Nullen einsetzen:}
  begin
    AziRotZeiger[i] := 0;             {rotierte Fl�chen}
    FalRotZeiger[i] := 0;
    AziStrzeiger[i] := 0;             {Array f�r berechnete Striemungen:}
    Falstrzeiger[i] := 0;
    GAziRotZeiger[i] := 0;            {rotierte, gemessene Striemungen:}
    GFalRotZeiger[i] := 0;
  end;                                {Arrays fertig, Nullen eingesetzt}
  {Rotation von Sigma1 in Mittelpunkt und Sigma3 nach S�den}
  Sigrot (Anzahl, AziFeld, AziRotZeiger,FalFeld,FalRotZeiger,
          SAziFeld, GAziRotZeiger, SFalFeld,GFalRotZeiger);
  {Berechnung des Formfaktors mit der Bott-Formel}
  Rrechnen (FormFaktor, Anzahl, AziRotZeiger, GAziRotZeiger,
            FalRotZeiger, GFalRotZeiger);
  {Beginn der Schleife f�r berechnete Striemungen:}
  for i := 1 to ZahlGlob do
  begin
    Astr[i] := AziStrZeiger[i];
    Fstr[i] := FalStrZeiger[i];
  end;
  for i := 0 to 10 do
  begin
    Rfaktor := i / 10;
    {Berechnung der theoretischen Striemungen mit der Bottformel,
    Azistrzeiger un Falstrzeiger sind die Arrays f�r die berechneten
    Striemungen:}
    Maxscher (Anzahl, Rfaktor, AziRotZeiger, AziStrZeiger,
              FalRotZeiger, FalStrZeiger, 1);
    {Berechnung der Kreuzproduktmatix f�r die Eigenwerte:}
    for m := 1 to 3 do
      for n := 1 to 3 do Q[m,n] := 0;
    for j := 1 to Anzahl do
    begin
      Azimut := (AziFeld[j]+180) mod 360;
      if FalStrZeiger[j] <0 then VorzS := '-';
      FallenRot := abs(FalStrZeiger[j]);
      SFallenS := VorzS+inttostr(FallenRot);
      Sa := sin(AziStrZeiger[j] * Bo);
      Ca := cos(AziStrZeiger[j] * Bo);
      Ph := cos(abs(FalStrZeiger[j]) * Bo);
      X  := Sa * Ph;
      Y  := Ca * Ph;
      Ph := sin(FalStrZeiger[j] * Bo);
      Zz := -Ph;
      Q[1,1] := Q[1,1] +sqr(X);        {x11}
      Q[1,2] := Q[1,2] + X * Y;        {x12}
      Q[1,3] := Q[1,3] + X * Zz;       {x13}
      Q[2,1] := Q[1,2];                {x21}
      Q[2,2] := Q[2,2] + sqr(Y);       {x22}
      Q[2,3] := Q[2,3] + Y * Zz;       {x23}
      Q[3,1] := Q[1,3];                {x31}
      Q[3,2] := Q[2,3];                {x32}
      Q[3,3] := Q[3,3] + sqr(Zz);      {x33}
    end;
    Eigenwerte (Aq, Fq, V, Anzahl, Sv, G6, Zirkoeff,Gk);
    Lambda1[i] := V[1];
    Lambda2[i] := V[2];
    Lambda3[i] := V[3];
  end;
  {Gemessene Striemungen:}
  for m := 1 to 3 do
    for n := 1 to 3 do Q[m,n] := 0;
  for j := 1 to Anzahl do
  begin
    SFal := abs(SFalFeld[j]);
    Sa := sin(SAziFeld[j] * Bo);
    Ca := cos(SAziFeld[j] * Bo);
    Ph := cos(SFal * Bo);
    X  := Sa * Ph;
    Y  := Ca * Ph;
    Ph := sin(SFal * Bo);
    Zz := -Ph;
    Q[1,1] := Q[1,1] +sqr(X);        {x11}
    Q[1,2] := Q[1,2] + X * Y;        {x12}
    Q[1,3] := Q[1,3] + X * Zz;       {x13}
    Q[2,1] := Q[1,2];                {x21}
    Q[2,2] := Q[2,2] + sqr(Y);       {x22}
    Q[2,3] := Q[2,3] + Y * Zz;       {x23}
    Q[3,1] := Q[1,3];                {x31}
    Q[3,2] := Q[2,3];                {x32}
    Q[3,3] := Q[3,3] + sqr(Zz);      {x33}
  end;
  Eigenwerte (Aq, Fq, V, Anzahl, Sv, G6, Zirkoeff,Gk);
  Slambda1 := V[1];
  Slambda2 := V[2];
  Slambda3 := V[3];
  if FormFaktor  >= 0.5 then
  begin
    Slambda2 := V[3];
    Slambda3 := V[2];
  end;
  ListBoxTheoretisch.Clear;
  for i := 0 to 10 do
  begin
    Rfaktor := i/10;
    str(RFaktor:3:1, RS);
    str(Lambda1[i]:5:3, L1S);
    str(Lambda2[i]:5:3, L2S);
    str(Lambda3[i]:5:3, L3S);
    ListBoxtheoretisch.Items.Add (RS+'   '+L1S+'    '+L2S+'    '+L3S);
  end;
  str(SLambda1:5:3, GL1S);
  str(SLambda2:5:3, GL2S);
  str(SLambda3:5:3, GL3S);
  Labelgemessen.Caption := '     '+GL1S+'     '+Gl2S+'     '+GL3S;
  for i := 1 to 10 do
  begin
    if Lambda2[i-1] > Lambda2[i] then
    begin
      Tausch := Lambda2[i];
      Lambda2[i] := Lambda3[i];
      Lambda3[i] := Tausch;
    end;
  end;
  {Eintragen der errechneten Striemungen}
  R := 0;
  with Image1.Canvas do
  begin
    Pen.Color  := TheorFarbe;
    Font.Size  := 8;
    Font.Name  := 'TimesNewRoman';
    Font.Color := TheorFarbe;
    GLaenge    := Laenge;
    for i := 0 to 10 do
    begin
      str(i,Istring);
      Xlambda := Xtra1+round(Laenge*Lambda2[i]+sin(30*Bo)*Lambda1[i]*Laenge);
      Ylambda := Ytra1 - round(sin(60*Bo)*Laenge*Lambda1[i]);
      Brush.Color := TheorFarbe;
      Ellipse (Xlambda-5,Ylambda-5, Xlambda+5,Ylambda+5);
      Brush.Color := RgFarbe;
      TextOut (Xlambda,Ylambda+10, Istring);
      if i = 0 then
      begin
        Xa := Xlambda;
        Ya := YLambda;
      end;
      if Slambda2 > Lambda2[i] then
      begin
        R  := i;
        XR := XLambda;
      end;
      XN := Xtra1+round(Laenge*Lambda2[R+1]+sin(30*Bo)*Lambda1[R+1]*Laenge);
    end;
    {Eintrag der Eigenwerte der gemessenen Striemungen}
    Pen.Color   := DatenFarbe;
    Brush.Color := DatenFarbe;
    Xlambda := Xtra1 + round(Laenge*Slambda2 + sin(30*Bo)*Slambda1*Laenge);
    Ylambda := Ytra1 - round(sin(60*Bo)*Laenge*Slambda1);
    Xgemessen := XLambda;
    Ygemessen := YLambda;
    Ellipse (Xlambda-5,Ylambda-5, Xlambda+5,Ylambda+5);
    Xg   := XLambda - XR;
    Xg   := Xg/(XN - XR);
    Rgem := (R + Xg)/10;
    if Rgem > 1 then Rgem := 1; 
    str (Rgem :4:2, RgemS);
    RgemS := 'R = '+ RgemS;
    Brush.Color := GrundFarbe;
    Pen.Color   := KoordinFarbe;
    Font.Name   := 'Times New Roman';
    Font.Size   := 16;
    Textout (Image1.Width-100,40,RgemS);
  end;
  With Image2.Canvas do
  begin
    Brush.Color := GrundFarbe;
    Pen.Color   := RahmenFarbe;
    Pen.Width   := 1;
    Mx2 := Image2.Width;
    My2 := Image2.Height;
    Rectangle (0,0,Mx2,My2);
    Brush.Color := RGFarbe;
    Pen.Color   := KoordinFarbe;
    Yu  := 30;
    Mx1 := 10;
    Mx2 := Image2.Width - 10;
    Laenge := Mx2 - Mx1;
    Radius := Laenge div 2;;
    Xmitte := 10 + Radius;
    Ymitte := Image2.Height - Yu;
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
    Brush.Color := GrundFarbe;
    Font.Color  := Koordinfarbe;
    Font.Name := 'Symbol';
    Textout (Mx4-5,My4+5,'s3');
    Pen.Width := 1;
    Radius := round(Laenge*Rgem/2);
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
    Brush.Color := RGFarbe;
    floodfill (Mx1,My1, KoordinFarbe, FsBorder);
  end;
  HintFarbe := GrundFarbe;
  if DemoB then DemoText (Image1.Canvas,Image1.Width div 2 -70,5);
  kopieren1.Enabled       := true;
  MohrSpeichern.Enabled   := true;
  FormSpeichern.Enabled   := true;
  HpPlotter1.Enabled      := true;
  SpeedDruckenR.Enabled   := true;
  SpeedDruckenM.Enabled   := true;
  for i := 1 to ZahlGlob do  {Umwandlung der Normalen in Fl�chen}
  begin
    AziFeld[i] := (180 + AziFeld[i]) mod 360;
    FalFeld[i] := 90 - FalFeld[i];
  end;
end;

procedure TForm34.ButtonzurueckClick(Sender: TObject);
var
  Flaeche : TRect;
  i       : word;
begin
  if not WeiterF then
  begin
    AziFeld       := Nil;
    FalFeld       := Nil;
    SAziFeld      := Nil;
    SFalFeld      := Nil;
    AziRotZeiger  := Nil;
    FalRotZeiger  := Nil;
    GAziRotZeiger := Nil;
    GFalRotZeiger := Nil;
    AziFeldAlt    := Nil;
    FalFeldAlt    := Nil;
    SAziFeldAlt   := Nil;
    SFalFeldAlt   := Nil;
    AziStrZeiger  := Nil;
    FalStrZeiger  := Nil;
  end;
  ListBoxDateien.Clear;
  ListBoxtheoretisch.Clear;
  CheckBoxOK.State := cbUnchecked;
  MaskEditASigma1.Text := '   ';
  MaskEditFSigma1.Text := '  ';
  MaskEditASigma3.Text := '   ';
  MaskEditFSigma3.Text := '  ';
  ListBoxDateien.Clear;
  Flaeche := Rect(0,0,Clientwidth,ClientHeight);
  Loeschen (Image1.Canvas, Flaeche);
  Loeschen (Image2.Canvas, Flaeche);
  if EingabeS = 'ExcelD' then Form94.Close;
  Form34.Close;
end;

procedure TForm34.ButtonbeendenClick(Sender: TObject);
begin
  AziFeld := Nil;
  FalFeld := Nil;
  SAziFeld := Nil;
  SFalFeld := Nil;
  AziRotZeiger  := Nil;
  FalRotZeiger  := Nil;
  GAziRotZeiger := Nil;
  GFalRotZeiger := Nil;
  AziFeldAlt    := Nil;
  FalFeldAlt    := Nil;
  SAziFeldAlt   := Nil;
  SFalFeldAlt   := Nil;
  AziStrZeiger  := Nil;
  FalStrZeiger  := Nil;
  with Image1.Canvas do
  begin
    Pen.Color := clSilver;
    Brush.Color := clSilver;
    Rectangle (0,0,Image1.Width,Image1.Height);
  end;
  ListBoxDateien.Clear;
  if EingabeS = 'ExcelD' then form94.Close;
  Form34.Close;
  Form28.Close;
  Form27.Close;
  Form35.Close;
  SetCurrentDir(DirectS);
end;

procedure TForm34.MaskEditASigma1Change(Sender: TObject);
begin
  CheckBoxOk.State := cbUnchecked;
end;

procedure TForm34.MaskEditASigma3Change(Sender: TObject);
begin
  CheckBoxOk.State := cbUnchecked;
end;

procedure TForm34.MaskEditFSigma3Change(Sender: TObject);
begin
  CheckBoxOk.State := cbUnchecked;
end;

procedure TForm34.CheckBoxOKClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
  Typ   : TMsgDlgType;
begin
  if CheckBoxOk.State = cbUnchecked then exit;
  Typ := mtError;
  try
    ASigma1S := MaskEditASigma1.Text;
    FSigma1S := MaskEditFSigma1.Text;
    ASigma1  := StrToInt(ASigma1S);
    FSigma1  := StrToInt(FSigma1S);
    ASigma3S := MaskEditASigma3.Text;
    FSigma3S := MaskEditFSigma3.Text;
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
  ButtonStartClick(Sender);
end;

procedure TForm34.FormfaktorClick(Sender: TObject);
begin
  PanelGroesse.Visible := true;
  CheckBoxBild.State   := cbUnchecked;
  MaskEditBBreite.Text := IntTostr(BBreiteF);
  MaskEditBHoehe.Text  := IntToStr(BHoeheF);
  BildF := true;
  BildM := false;
end;

procedure TForm34.SpeedBGroesseFClick(Sender: TObject);
begin
  FormFaktorClick(Sender);
end;

procedure TForm34.MohrClick(Sender: TObject);
begin
  PanelGroesse.Visible := true;
  CheckBoxBild.State   := cbUnchecked;
  MaskEditBBreite.Text := IntTostr(BBreiteM);
  MaskEditBHoehe.Text  := IntToStr(BHoeheM);
  BildM := true;
  BildF := false;
end;

procedure TForm34.SpeedBGroesseMClick(Sender: TObject);
begin
  MohrClick(Sender);
end;

procedure TForm34.MaskEditBBreiteKeyPress(Sender: TObject; var Key: Char);
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

procedure TForm34.MaskEditBHoeheKeyPress(Sender: TObject; var Key: Char);
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

procedure TForm34.CheckBoxBildClick(Sender: TObject);
begin
  PanelGroesse.Visible := false;
end;

procedure TForm34.KopFormClick(Sender: TObject);
begin
  ClipBoard.Assign (Image1.Picture);
end;

procedure TForm34.SpeedKopierenRClick(Sender: TObject);
begin
  KopFormClick(Sender);
end;

procedure TForm34.KopMohrClick(Sender: TObject);
begin
  ClipBoard.Assign (Image2.Picture);
end;

procedure TForm34.SpeedKopierenMClick(Sender: TObject);
begin
  KopMohrClick(Sender);
end;

procedure TForm34.FormSpeichernClick(Sender: TObject);
begin
  ListBoxFSpeichern.Visible := true;
end;

procedure TForm34.SpeedFSpeichernClick(Sender: TObject);
begin
  FormSpeichernClick(Sender);
end;

procedure TForm34.ListBoxFSpeichernClick(Sender: TObject);
var
  i : byte;
begin
  BBreiteSt := BBreiteF;
  Ratio     := RatioF;
  for i := 0 to ListBoxFSpeichern.Items.Count-1 do
  begin
    if ListBoxFSpeichern.Selected[i] then
    begin
      if i < 7 then  GrafikSpeichern (Image1, ListBoxFSpeichern, Ratio,
                                      SavePictureDialog1, SaveDialog1);
      if i = 7 then speichernPLTClick(Sender);
      if i = 8 then speichernDXFClick(Sender);
    end;
  end;
end;

procedure TForm34.speichernPLTClick(Sender: TObject);
var
  i      : byte;
  Datei  : Textfile;
begin
  GroupBoxPlotten.Visible := true;
  GeraetS               := 'HPGL';
  KonfigZeileS[53]      := 'Paper Plot                 :,HPGL';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
end;

procedure TForm34.speichernDXFClick(Sender: TObject);
var
  i      : byte;
  Datei  : Textfile;
begin
  GroupBoxPlotten.Visible := true;
  GeraetS            := 'DXF';
  KonfigZeileS[53]   := 'Paper Plot                 :,DXF';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
end;

procedure TForm34.MohrSpeichernClick(Sender: TObject);
begin
  ListBoxMSpeichern.Visible := true;
end;

procedure TForm34.SpeedMSpeichernClick(Sender: TObject);
begin
  MohrspeichernClick(Sender);
end;

procedure TForm34.ListBoxMSpeichernClick(Sender: TObject);
var
  i : byte;
begin
  BBreiteSt := BBreiteM;
  Ratio     := RatioM;
  GrafikSpeichern (Image1, ListBoxMSpeichern, Ratio,
                   SavePictureDialog1, SaveDialog1);
end;

procedure TForm34.DEinrichtenClick(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TForm34.CalibrierenClick(Sender: TObject);
begin
  Calib                   := true;
  FaktorAlt               := Faktor;
  Faktor                  := 1;
  GeraetS                 := 'Plotter';
  GroupBoxPlotten.Visible := true;
  PanelKaliber.Visible    := true;
  MaskEditBrE.Setfocus;
end;

procedure TForm34.SpeedCalibClick(Sender: TObject);
begin
  CalibrierenClick(Sender);
end;

procedure TForm34.ButtonCalibEndeClick(Sender: TObject);
begin
  Calib := false;
  Faktor := FaktorAlt;
  PanelKaliber.Visible := false;
end;

procedure TForm34.MaskEditBrEKeyPress(Sender: TObject; var Key: Char);
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

procedure TForm34.MaskEditBrDKeyPress(Sender: TObject; var Key: Char);
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

procedure TForm34.DruckenClick(Sender: TObject);
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
  GroupBoxPlotten.Visible := true;
end;

procedure TForm34.ausZwischenablageholen1Click(Sender: TObject);
begin
  FarbeKoordin1.Enabled     := false;
  FarbeDiagramm1.Enabled    := false;
  FarbeHintergrund1.Enabled := false;
  HolZwischen               := true;
  ButtonStartClick(Sender);
end;

procedure TForm34.ausDateiholen1Click(Sender: TObject);
begin
  FarbeKoordin1.Enabled     := false;
  FarbeDiagramm1.Enabled    := false;
  FarbeHintergrund1.Enabled := false;
  if OpenDialog1.Execute then CurrentFile := OpenDialog1.FileName;
  HolDatei := true;
  ButtonStartClick(Sender);
end;

procedure TForm34.SpeedausDateiClick(Sender: TObject);
begin
  ausDateiHolen1Click(Sender);
end;

procedure TForm34.theoretischePunkte1Click(Sender: TObject);
var
  Datei   : TextFile;
  i, R    : word;
  Farbe   : TColor;
  FarbeS  : string;
  Xlambda : word;
  YLambda : word;
  Xa, Ya  : word;
  XR, XN  : word;
begin
  AusgewDateien := false;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS := ColorToString (Farbe);
  TheorFarbe       := StringToColor(FarbeS);
  KonfigZeileS[37] := 'Formfactor theoretical     :,'+FarbeS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  With Image1.Canvas do
  begin
    Pen.Color  := TheorFarbe;
    Font.Size  := 8;
    Font.Name  := 'TimesNewRoman';
    Font.Color := TheorFarbe;
    for i := 0 to 10 do
    begin
      str(i,Istring);
      Xlambda := Xtra1+round(GLaenge*Lambda2[i]+sin(30*Bo)*Lambda1[i]*GLaenge);
      Ylambda := Ytra1 - round(sin(60*Bo)*GLaenge*Lambda1[i]);
      Brush.Color := TheorFarbe;
      Ellipse (Xlambda-5,Ylambda-5, Xlambda+5,Ylambda+5);
      Brush.Color := RgFarbe;
      TextOut (Xlambda,Ylambda+10, Istring);
      if i = 0 then
      begin
        Xa := Xlambda;
        Ya := YLambda;
      end;
      if Slambda2 > Lambda2[i] then
      begin
        R  := i;
        XR := XLambda;
      end;
      XN := Xtra1+round(GLaenge*Lambda2[R+1]+sin(30*Bo)*Lambda1[R+1]*GLaenge);
    end;
  end;
end;

procedure TForm34.gemessenePunkte1Click(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  AusgewDateien := false;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS := ColorToString (Farbe);
  DatenFarbe      := StringToColor(FarbeS);
  KonfigZeileS[7] := '  Colour of Data Points    :,'+FarbeS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  with image1.Canvas do
  begin
    Pen.Color   := DatenFarbe;
    Brush.Color := DatenFarbe;
    Ellipse (Xgemessen-5, Ygemessen-5, Xgemessen+5,Ygemessen+5);
  end;  
end;

procedure TForm34.SpeedFarbeGemessenClick(Sender: TObject);
begin
  gemessenePunkte1Click(Sender);
end;

procedure TForm34.Font1Click(Sender: TObject);
begin
  WaehlFont (FontDialog1);
end;

procedure TForm34.SpeedFontClick(Sender: TObject);
begin
  Font1Click(Sender);
end;

procedure TForm34.SpeedPlotterClick(Sender: TObject);
begin
  DruckenClick(Sender);
end;

procedure TForm34.SpeedPLTClick(Sender: TObject);
begin
  speichernPLTClick(Sender);
end;

procedure TForm34.SpeedDXFClick(Sender: TObject);
begin
  speichernDXFClick(Sender);
end;

procedure TForm34.FarbeKoordin1Click(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS           := ColorToString (Farbe);
  KoordinFarbe     := StringToColor(FarbeS);
  KonfigZeileS[28] := 'Colour of Coordinates      :,'+FarbeS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick (Sender);
end;

procedure TForm34.SpeedKoordinatenClick(Sender: TObject);
begin
  FarbeKoordin1Click(Sender);
end;

procedure TForm34.FarbeHintergrund1Click(Sender: TObject);
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
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick (Sender);
end;

procedure TForm34.SpeedHintergrundClick(Sender: TObject);
begin
  FarbeHintergrund1Click(Sender);
end;

procedure TForm34.FarbeDiagramm1Click(Sender: TObject);
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
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick (Sender);
end;

procedure TForm34.SpeedDiagrammClick(Sender: TObject);
begin
  FarbeDiagramm1Click(Sender);
end;

procedure TForm34.FarbeRahmenClick(Sender: TObject);
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
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick (Sender);
end;

procedure TForm34.SpeedFRahmenClick(Sender: TObject);
begin
  FarbeRahmenClick(Sender);
end;

procedure TForm34.PloterstellenClick(Sender: TObject);
var
  XKoordS   : string[4];
  YKoordS   : string[4];
  Co        : integer;
  Lmax      : real;
  LmaxS     : string[15];
  Xmax      : real;
  Ymax      : real;
  KanteS    : string[10];
  Datei     : TextFile;
  i         : byte;
  Seite     : real;
  XNull     : real;
  YNull     : real;
  XS, YS    : string;
  WS, HS    : string;
  Groesse   : word;
  X, Y      : word;
  DiagNameS : string;
  Typ       : TMsgDlgType;
  Xan, Yan  : real;
begin
  Bo := Pi/180;
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
  Seite   := StrtoInt(KanteS)/10;
  XNull   := StrtoInt(XKoordS)/10;
  YNull   := StrtoInt(YKoordS)/10;
  LmaxS := '(max. 290mm)';
  Lmax  := 29.0;
  Xmax  := 29.2 - Seite;
  Typ   := mtError;
  if Seite > Lmax then
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
  if Ynull < 0.4*Seite then
    if DlgMessage (Typ, Tx(37), Tx(1684),3) = 4 then
    begin
      MaskEditY.Clear;
      MaskEditY.SetFocus;
      exit;
    end;
  {Beginn des Plottens}
  Kante := Seite;
  if not Calib then
    DiagNameS := InputBox(Tx(439),Tx(887),' '); {Diagramm-Beschriftung}
  Canvas.Brush.Color := clWhite;
  if GeraetS <> 'Plotter' then
  begin
    Plotter (Canvas, SaveDialog1);
    Formdreieck (Canvas, XNull,YNull, 0, Lambda1, Lambda2,
                 Slambda1, Slambda2, DiagNameS);
    XS := Inttostr(round((XNull+Seite/4) * 400));
    YS := IntToStr(round((YNull+Seite/6) * 400));
    DecimalSeparator := '.';
    WS := FloatToStr(Seite/30);
    HS := FloatToStr(Seite/20);
    Farben (Canvas, clBlack);
    Hpende (XS, Ys, WS, HS);
  end;
  if GeraetS = 'Plotter' then
  begin
    SetMapMode (Printer.Handle, MM_Himetric);
    with Printer do
    begin
      BeginDoc;
      Farben (Canvas, KoordinFarbe);
      Plotter (Canvas, SaveDialog1);
      Xan   := XNull;
      Yan   := YNull;
      Seite := StrToInt(KanteS)/10;
      Formdreieck (Canvas, Xan,Yan, Seite, Lambda1, Lambda2,
                   Slambda1, Slambda2, DiagNameS);
      if DemoB then
      begin
        Canvas.Font.Size   := Groesse;
        Canvas.Font.Color  := clBlack;
        Canvas.Brush.Color := clWhite;
        Canvas.Font.Name   := 'Helvetica';
        Canvas.Font.Size   := round(Seite);
        X := round((Xan+Seite/4)*100*Faktor);
        Y := round((Yan-Seite/3)*100*Faktor);
        Canvas.Textout (X, Y,'Demo-Version');
      end;
      EndDoc;
    end;
  end;
  if not Calib then
    showmessage(Tx(435));  {Plot beendet}
  GroupBoxPlotten.Visible   := false;
  ListBoxFSpeichern.Visible := false;
  Calib                     := false;
end;

procedure TForm34.Druckereinrichten1Click(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TForm34.SpeedEinrichtenClick(Sender: TObject);
begin
  DruckerEinrichten1Click(Sender);
end;

procedure TForm34.DFormFaktorClick(Sender: TObject);
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

procedure TForm34.SpeedDruckenRClick(Sender: TObject);
begin
  DFormFaktorClick(Sender);
end;

procedure TForm34.DMohrClick(Sender: TObject);
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

procedure TForm34.SpeedDruckenMClick(Sender: TObject);
begin
  DMohrClick(Sender);
end;

procedure TForm34.MaskEditUnterschriftKeyPress(Sender: TObject;
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

procedure TForm34.RadioButtonRechtsClick(Sender: TObject);
begin
 BuendigS := 'Rechts';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    ButtonDrucken.Enabled := true;
end;

procedure TForm34.RadioButtonZentriertClick(Sender: TObject);
begin
  BuendigS := 'Zentriert';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    ButtonDrucken.Enabled := true;
end;

procedure TForm34.RadioButtonLinksClick(Sender: TObject);
begin
  BuendigS := 'Links';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    ButtonDrucken.Enabled := true;
end;

procedure TForm34.ButtonDruckenClick(Sender: TObject);
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
  try
    Bitmap:=TBitmap.Create;
    if Druck = 1 then Bitmap.Assign(Image1.picture.graphic);
    if Druck = 2 then Bitmap.Assign(Image2.picture.graphic);
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

procedure TForm34.ButtonAbbrechenClick(Sender: TObject);
begin
  Paneldrucken.Visible         := false;
end;

procedure TForm34.ListBoxSchriftClick(Sender: TObject);
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

procedure TForm34.DSpeichernClick(Sender: TObject);
begin
   if CurrentFile <> '' then Stressein(CurrentFile, ZahlGlob,
      AziFeld, SAziFeld, FalFeld, SFalFeld)
   else DspeichernUnterClick(Sender);
end;

procedure TForm34.DSpeichernUnterClick(Sender: TObject);
var
i:word;
begin
  SaveDialog1.DefaultExt := ExtenS;
  SaveDialog1.Filter     := 'Displacement Data (*.sli)|*.SLI';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    Stressein(CurrentFile, ZahlGlob, AziFeld, SAziFeld, FalFeld,
              SFalFeld);
  end;
end;

procedure TForm34.Hilfe1Click(Sender: TObject);
var
  DateiS      : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\34Formfaktor-plot.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\34ShapeFactor-plot.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm34.SpeedHilfeClick(Sender: TObject);
begin
  Hilfe1Click(Sender);
end;

procedure TForm34.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Formfaktor.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'Shape-factor.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm34.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm34.SpeedFarbeTheorClick(Sender: TObject);
begin
  theoretischePunkte1Click(Sender);
end;

procedure TForm34.SpeedZwischenablageClick(Sender: TObject);
begin
  AusZwischenablageHolen1Click(Sender);
end;

procedure TForm34.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm34.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

procedure TForm34.VersatzClick(Sender: TObject);
begin
  WeiterB[34] := true;
  Application.CreateForm(TForm31, Form31);
  Form31.Show;
end;

procedure TForm34.SpeedVersatzClick(Sender: TObject);
begin
  VersatzClick(Sender);
end;

procedure TForm34.DiederClick(Sender: TObject);
begin
  WeiterB[34] := true;
  Application.CreateForm(TForm29, Form29);
  Form29.Show;
end;

procedure TForm34.SpeedDiederClick(Sender: TObject);
begin
  DiederClick(Sender);
end;

procedure TForm34.HoeppenerClick(Sender: TObject);
begin
  WeiterB[34] := true;
  Application.CreateForm(TForm33, Form33);
  Form33.Show;
end;

procedure TForm34.SpeedHoeppenerClick(Sender: TObject);
begin
  HoeppenerClick(Sender);
end;

procedure TForm34.IterationClick(Sender: TObject);
var
  i : word;
begin
  WeiterB[34] := true;
  for i := 1 to ZahlGlob do
  begin
    AziFeld[i] := AziFeldAlt[i];
    FalFeld[i] := FalFeldAlt[i];
    SAziFeld[i] := SAziFeldAlt[i];
    SFalFeld[i] := SFalFeldAlt[i];
  end;
  Application.CreateForm(TForm99, Form99);
  Form99.Show;
end;

procedure TForm34.SpeedIterClick(Sender: TObject);
begin
  IterationClick(Sender);
end;

procedure TForm34.DirektClick(Sender: TObject);
begin
  WeiterB[34] := true;
  Application.CreateForm(TForm100, Form100);
  Form100.Show;
end;

procedure TForm34.SpeedDirektClick(Sender: TObject);
begin
  DirektClick(Sender);
end;

end.
