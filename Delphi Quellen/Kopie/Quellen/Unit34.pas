unit Unit34;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, ExtCtrls, StdCtrls, Mask, Menus, Globvar,
  ClipBrd, Plotten, Basic, Texte, FormFak, Kalkulat, HPPlot,
  ComCtrls, Buttons, Printers, Drucken, Shellapi, FileCtrl,
  Standard, GifImage, Bmp2Tiff, Jpeg, ExtDlgs, ehsHelpRouter;

type
  TForm34 = class(TForm)
    Image1: TImage;

    Panel1           : TPanel;
    Labelausgewaehlte: TLabel;
    ListBoxDateien   : TListBox;
    LabelZahlderDaten: TLabel;
    Label00000       : TLabel;

    GroupBoxSpannungen: TGroupBox;
    LabelSigma1       : TLabel;
    LabelSigma3       : TLabel;
    MaskEditASigma1: TMaskEdit;
    MaskEditASigma3: TMaskEdit;
    CheckBoxOK: TCheckBox;

    Panel2         : TPanel;
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
    FSpeichernUnter: TMenuItem;

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

    LabelGeraet : TLabel;
 
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
    SpeedPLT: TSpeedButton;
    SpeedDXF: TSpeedButton;
    SpeedKoordinaten: TSpeedButton;
    SpeedDiagramm: TSpeedButton;
    SpeedHintergrund: TSpeedButton;
    SpeedRahmen: TSpeedButton;
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
    FormSpeichernBMP: TMenuItem;
    FormSpeichernGIF: TMenuItem;
    FormSpeichernTIF: TMenuItem;
    FormSpeichernJPG: TMenuItem;
    FormSpeichernWMF: TMenuItem;
    FormSpeichernEMF: TMenuItem;
    FormSpeichernUBMP: TMenuItem;
    FormSpeichernUGIF: TMenuItem;
    FormSpeichernUTIF: TMenuItem;
    FormSpeichernUJPG: TMenuItem;
    FormSpeichernUWMF: TMenuItem;
    FormSpeichernUEMF: TMenuItem;
    MohrSpeichern: TMenuItem;
    MSpeichernUnter: TMenuItem;
    SavePictureDialog1: TSavePictureDialog;
    MohrSpeichernBMP: TMenuItem;
    MohrSpeichernGIF: TMenuItem;
    MohrSpeichernTIF: TMenuItem;
    MohrSpeichernJPG: TMenuItem;
    MohrSpeichernWMF: TMenuItem;
    MohrSpeichernEMF: TMenuItem;
    MohrSpeichernUBMP: TMenuItem;
    MohrSpeichernUGIF: TMenuItem;
    MohrSpeichernUTIF: TMenuItem;
    MohrSpeichernUJPG: TMenuItem;
    MohrSpeichernUWMF: TMenuItem;
    MohrSpeichernUEMF: TMenuItem;
    SpeedFormSpeichernBMP: TSpeedButton;
    SpeedFormSpeichernGIF: TSpeedButton;
    SpeedFormSpeichernTIF: TSpeedButton;
    SpeedFormSpeichernJPG: TSpeedButton;
    SpeedFormspeichernWMF: TSpeedButton;
    SpeedFormSpeichernEMF: TSpeedButton;
    SpeedMohrSpeichernBMP: TSpeedButton;
    SpeedMohrSpeichernGIF: TSpeedButton;
    SpeedMohrSpeichernTIF: TSpeedButton;
    SpeedMohrSpeichernJPG: TSpeedButton;
    SpeedMohrSpeichernWMF: TSpeedButton;
    SpeedMohrSpeichernEMF: TSpeedButton;
    speichernPLT: TMenuItem;
    speichernDXF: TMenuItem;
    Ploterstellen: TButton;
    ButtonDrucken: TButton;
    ButtonAbbrechen: TButton;

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
    procedure MaskEditFSigma1Change(Sender: TObject);
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
    procedure HPPlotter1Click(Sender: TObject);
    procedure SpeedPlotterClick(Sender: TObject);
    procedure SpeedPLTClick(Sender: TObject);
    procedure SpeedDXFClick(Sender: TObject);
    procedure SpeedKoordinatenClick(Sender: TObject);
    procedure SpeedDiagrammClick(Sender: TObject);
    procedure SpeedRahmenClick(Sender: TObject);
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
    procedure FormSpeichernBMPClick(Sender: TObject);
    procedure FormSpeichernGIFClick(Sender: TObject);
    procedure FormSpeichernTIFClick(Sender: TObject);
    procedure FormSpeichernJPGClick(Sender: TObject);
    procedure FormSpeichernWMFClick(Sender: TObject);
    procedure FormSpeichernEMFClick(Sender: TObject);
    procedure FormSpeichernUBMPClick(Sender: TObject);
    procedure FormSpeichernUGIFClick(Sender: TObject);
    procedure FormSpeichernUTIFClick(Sender: TObject);
    procedure FormSpeichernUJPGClick(Sender: TObject);
    procedure FormSpeichernUWMFClick(Sender: TObject);
    procedure FormSpeichernUEMFClick(Sender: TObject);
    procedure MohrSpeichernBMPClick(Sender: TObject);
    procedure MohrSpeichernGIFClick(Sender: TObject);
    procedure MohrSpeichernTIFClick(Sender: TObject);
    procedure MohrSpeichernJPGClick(Sender: TObject);
    procedure MohrSpeichernWMFClick(Sender: TObject);
    procedure MohrSpeichernEMFClick(Sender: TObject);
    procedure MohrSpeichernUBMPClick(Sender: TObject);
    procedure MohrSpeichernUGIFClick(Sender: TObject);
    procedure MohrSpeichernUTIFClick(Sender: TObject);
    procedure MohrSpeichernUJPGClick(Sender: TObject);
    procedure MohrSpeichernUWMFClick(Sender: TObject);
    procedure MohrSpeichernUEMFClick(Sender: TObject);
    procedure SpeedFormSpeichernBMPClick(Sender: TObject);
    procedure SpeedFormSpeichernGIFClick(Sender: TObject);
    procedure SpeedFormSpeichernTIFClick(Sender: TObject);
    procedure SpeedFormSpeichernJPGClick(Sender: TObject);
    procedure SpeedFormspeichernWMFClick(Sender: TObject);
    procedure SpeedFormSpeichernEMFClick(Sender: TObject);
    procedure SpeedMohrSpeichernBMPClick(Sender: TObject);
    procedure SpeedMohrSpeichernGIFClick(Sender: TObject);
    procedure SpeedMohrSpeichernTIFClick(Sender: TObject);
    procedure SpeedMohrSpeichernJPGClick(Sender: TObject);
    procedure SpeedMohrSpeichernWMFClick(Sender: TObject);
    procedure SpeedMohrSpeichernEMFClick(Sender: TObject);
    procedure speichernPLTClick(Sender: TObject);
    procedure speichernDXFClick(Sender: TObject);
    procedure PloterstellenClick(Sender: TObject);
    procedure ButtonDruckenClick(Sender: TObject);
    procedure ButtonAbbrechenClick(Sender: TObject);
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
  Druck           : byte;

implementation
uses Unit27, Unit28, Unit29, Unit31, Unit33, Unit35, Unit94;
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
  Left := 4;
  Top := 0;
  Width := 1040;
  Height := 750;
  setlength (AziFeld, MaxDaten);
  setlength (FalFeld, MaxDaten);
  setlength (SAziFeld, MaxDaten);
  setlength (SFalFeld, MaxDaten);
  WeiterB[34] := false;
  Form34.Caption                   := Tx(675);  {Fabric7: Bestimmung des..}
  Image1.Hint                      := Hilf(310);
  ListBoxDateien.Hint              := Hilf(82);
  Labelausgewaehlte.Hint           := Hilf(82);
  LabelZahlderDaten.Hint           := Hilf(36);
  Label00000.Hint                  := Hilf(36);
  GroupBoxSpannungen.Hint          := Hilf(158);
  MaskEditAsigma1.Hint             := Hilf(159);
  MaskEditFSigma1.Hint             := Hilf(160);
  MaskEditASigma3.Hint             := Hilf(161);
  MaskEditFSigma3.Hint             := Hilf(162);
  Panel2.Hint                      := Hilf(311);
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
  SpeedPLT.Hint                    := Hilf(438);
  SpeedDXF.Hint                    := Hilf(439);
  SpeedKoordinaten.Hint            := Hilf(444);
  SpeedDiagramm.Hint               := Hilf(441);
  SpeedRahmen.Hint                 := Hilf(442);
  SpeedHintergrund.Hint            := Hilf(443);
  SpeedEinrichten.Hint             := Hilf(505);
  SpeedDieder.Hint                 := Hilf(515);
  SpeedVersatz.Hint                := Hilf(512);
  SpeedHoeppener.Hint              := Hilf(514);
  SpeedBGroesseF.Hint              := Hilf(573);
  SpeedBGroesseM.Hint              := Hilf(574);
  SpeedKopierenR.Hint              := Hilf(575);
  SpeedKopierenM.Hint              := Hilf(576);
  SpeedFormSpeichernBMP.Hint       := Hilf(609);
  SpeedFormSpeichernGIF.Hint       := Hilf(610);
  SpeedFormSpeichernTIF.Hint       := Hilf(611);
  SpeedFormSpeichernJPG.Hint       := Hilf(612);
  SpeedFormSpeichernWMF.Hint       := Hilf(613);
  SpeedFormSpeichernEMF.Hint       := Hilf(614);
  SpeedMohrSpeichernBMP.Hint       := Hilf(615);
  SpeedMohrSpeichernGIF.Hint       := Hilf(616);
  SpeedMohrSpeichernTIF.Hint       := Hilf(617);
  SpeedMohrSpeichernJPG.Hint       := Hilf(618);
  SpeedMohrSpeichernWMF.Hint       := Hilf(619);
  SpeedMohrSpeichernEMF.Hint       := Hilf(620);
  SpeedDruckenR.Hint               := Hilf(581);
  SpeedDruckenM.Hint               := Hilf(582);
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
  GroupBoxSpannungen.Caption       := Tx(668);   {Haupt-Normalspannungen:}
  LabelSigma1.Caption              := Tx(669);
  LabelSigma3.Caption              := Tx(670);
  LabelEigenwerte.Caption          := Tx(681);   {Eigenwerte der Striemungen}
  theoretisch.Caption              := Tx(682);   {theoretisch:}
  GroupBoxgemessen.Caption         := Tx(683);   {gemessen:}
  GroupBoxPlotten.Caption          := Tx(297);
  Ploterstellen.Caption            := Tx(298);   {Plot-Eingabe ok?}
  LabelKante.Caption               := Tx(685);   {Kantenlänge [mm]:}
  LabelNull.Caption                := Tx(686);   {Nullpunkt [mm]:}
  LabelX.Caption                   := Tx(687);
  LabelY.Caption                   := Tx(688);
  Buttonzurueck.Caption            := Tx(30);
  Buttonbeenden.Caption            := Tx(53);
  Auswertung.Caption               := Tx(1341);
  Dieder.Caption                   := Tx(1349);
  Versatz.Caption                  := Tx(1346);
  Hoeppener.Caption                := Tx(1348);
  GroupBoxPlotten.Caption    := '';
  GroupBoxSpannungen.Caption := '';
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
  MaskEditASigma1.SetFocus;
  for i := 1 to ZahlGlob do           {Umwandlung der Flächen in Normale:}
  begin
    AziFeld[i] := (180 + AziFeld[i]) mod 360;
    FalFeld[i] := 90 - FalFeld[i];
  end;
  LabelGeraet.Caption     := '';
  Grafik1.Enabled         := false;
  LabelSigma1.Enabled     := false;
  LabelSigma3.Enabled     := false;
  MaskEditASigma1.Enabled := false;
  MaskEditFSigma1.Enabled := false;
  MaskEditASigma3.Enabled := false;
  MaskEditFSigma3.Enabled := false;
  Paneldrucken.Visible         := false;
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
  FormFaktor.Caption       := Tx(1449);
  Mohr.Caption             := Tx(1450);
  KopForm.Caption          := Tx(1449);
  KopMohr.Caption          := Tx(1450);
  FormSpeichern.Caption    := Tx(1458);
  MohrSpeichern.Caption    := Tx(1460);
  FSpeichernUnter.Caption  := Tx(1459);
  MSpeichernUnter.Caption  := Tx(1461);
  DFormFaktor.Caption      := Tx(1449);
  DMohr.Caption            := Tx(1450);
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
  AziRotZeiger  : array of word;
  FalRotZeiger  : array of shortint;
  AziStrZeiger  : array of word;
  FalStrZeiger  : array of shortint;
  GAziRotZeiger : array of word;
  GFalRotZeiger : array of shortint;
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
  Istring       : string[5];
  XLambda       : word;
  YLambda       : word;
  Xtra1, Ytra1  : word;
  Laenge        : word;
  ProS          : string[20];
  SDatei        : TextFile;
  SFallenS      : string;
  Azimut        : word;
  Fallen        : integer;
  AzimutRot     : word;
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
begin
  Bo := Pi/180;
  BHoeheF := round(BBreiteF/RatioF);
  BHoeheM := round(BBreiteM/RatioM);
  PanelSpeed.Visible := true;
  setlength (AziRotZeiger, MaxDaten);
  setlength (FalRotZeiger, MaxDaten);
  setlength (AziStrZeiger, MaxDaten);
  setlength (FalStrZeiger, MaxDaten);
  setlength (GAziRotZeiger, MaxDaten);
  setlength (GFalRotZeiger, MaxDaten);
  GroupBoxPlotten.Visible    := false;
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
  if not WeiterF then
  begin
    Auswertung.Enabled       := true;
    SpeedDieder.Enabled      := true;
    SpeedVersatz.Enabled     := true;
    SpeedHoeppener.Enabled   := true;
  end;
  GroupBoxPlotten.Caption    := 'Plot:';
  GroupBoxSpannungen.Caption := Tx(668);
  ProS                       := GeraetS;
  LabelGeraet.Caption  := Tx(850) + ' '+ProS;
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
  Image1.Enabled            := true;
  ListBoxDateien.Clear;
  for i := 0 to High(DateinameS) do
    ListboxDateien.Items.Add (DateiNameS[i]);
  {Diagramm plotten}
  Bo := Pi/180;
  Bitmap := Tbitmap.Create;
  Bitmap.Width  := Image1.Width;
  Bitmap.Height := Image1.Height;  {561}
  Image1.Picture.Graphic := Bitmap;
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
    AziRotZeiger[i] := 0;             {rotierte Flächen}
    FalRotZeiger[i] := 0;
    AziStrzeiger[i] := 0;             {Array für berechnete Striemungen:}
    Falstrzeiger[i] := 0;
    GAziRotZeiger[i] := 0;            {rotierte, gemessene Striemungen:}
    GFalRotZeiger[i] := 0;
  end;                                {Arrays fertig, Nullen eingesetzt}
  {Rotation von Sigma1 in Mittelpunkt und Sigma3 nach Süden}
  Sigrot (ASigma1,ASigma3,FSigma1,FSigma3,Anzahl,
          AziFeld, AziRotZeiger,FalFeld,FalRotZeiger,
          SAziFeld, GAziRotZeiger, SFalFeld,GFalRotZeiger);
  {Berechnung des Formfaktors mit der Bott-Formel}
  Rrechnen (FormFaktor, Anzahl, AziRotZeiger, GAziRotZeiger,
            FalRotZeiger, GFalRotZeiger);
  {Beginn der Schleife für berechnete Striemungen:}
  for i := 1 to ZahlGlob do
  begin
    Astr[i] := AziStrZeiger[i];
    Fstr[i] := FalStrZeiger[i];
  end;
  for i := 0 to 10 do
  begin
    Rfaktor := i / 10;
    {Berechnung der theoretischen Striemungen mit der Bottformel,
    Azistrzeiger un Falstrzeiger sind die Arrays für die berechneten
    Striemungen:}
    Maxscher (Anzahl, Rfaktor, AziRotZeiger, AziStrZeiger,
              FalRotZeiger, FalStrZeiger, 1);
    {Berechnung der Kreuzproduktmatix für die Eigenwerte:}
    for m := 1 to 3 do
      for n := 1 to 3 do Q[m,n] := 0;
    for j := 1 to Anzahl do
    begin
      Azimut := (AziFeld[j]+180) mod 360;
      Fallen := 90-FalFeld[j];
      AzimutRot := AziStrZeiger[j];
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
  with Image1.Canvas do
  begin
    Pen.Color  := TheorFarbe;
    Font.Size  := 8;
    Font.Name  := 'TimesNewRoman';
    Font.Color := TheorFarbe;
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
    end;
    Xe := Xlambda;
    Moveto (Xa,Ya);
    Panf := PenPos.x;
    Moveto (Xe,Ya);
    Pend   := PenPos.x;
    RLaenge := Pend - Panf;
    {Eintrag der Eigenwerte der gemessenen Striemungen}
    Pen.Color   := DatenFarbe;
    Brush.Color := DatenFarbe;
    Xlambda := Xtra1 + round(Laenge*Slambda2 + sin(30*Bo)*Slambda1*Laenge);
    Ylambda := Ytra1 - round(sin(60*Bo)*Laenge*Slambda1);
    Ellipse (Xlambda-5,Ylambda-5, Xlambda+5,Ylambda+5);
    moveto (Xlambda,YLambda);
    Xgemessen := PenPos.x;
    Ygemessen := PenPos.y;
    Pgemessen := PenPos.x;
    GemLaenge := Pgemessen - Panf;
    Rgem  := GemLaenge / RLaenge;
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
{    for i := 1 to Anzahl do
    begin
      Rechnen (17,3,FalFeld[i],FSigma1,AziFeld[i],Asigma1,A,Theta,F);
      Sn := round(Laenge*(1 + cos(2*Theta*Bo)/2));
      Ss := round((Laenge/2)*sin(2*Theta*Bo)/2);
      Mx1 := 10 + Sn;
      My1 := Image2.Height-Ymitte-Ss;
      ellipse (Mx1-2,My1-2,Mx1+2,My1+2);
    end;}
  end;
  if DemoB then
  begin
    with Image1.Canvas do
    begin
      Font.Name   := 'Times New Roman';
      Brush.Color := clWhite;
      Font.Color  := clGray;
      Font.Size   := 36;
      Textout(Width div 2-300,0,'Demo-Version');
    end;
  end;
  kopieren1.Enabled       := true;
  MohrSpeichern.Enabled   := true;
  FormSpeichern.Enabled   := true;
  FSpeichernUnter.Enabled := true;
  MSpeichernUnter.Enabled := true;
  HpPlotter1.Enabled      := true;
  SpeedDruckenR.Enabled   := true;
  SpeedDruckenM.Enabled   := true;
  AziRotZeiger  := Nil;
  FalRotZeiger  := Nil;
  AziStrZeiger  := Nil;
  FalStrZeiger  := Nil;
  GAziRotZeiger := Nil;
  GFalRotZeiger := Nil;
end;

procedure TForm34.ButtonzurueckClick(Sender: TObject);
var
  Flaeche : TRect;
  i       : word;
begin
  if not WeiterF then
  begin
    AziFeld := Nil;
    FalFeld := Nil;
    SAziFeld := Nil;
    SFalFeld := Nil;
  end
  else
  begin
    for i := 1 to ZahlGlob do
    begin
      AziFeld[i] := (AziFeld[i] + 180) mod 360;
      FalFeld[i] := 90 - FalFeld[i];
    end;
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

procedure TForm34.MaskEditFSigma1Change(Sender: TObject);
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
      assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
    assignFile(Datei,DirectS+'\'+'Fabric.ini');
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

procedure TForm34.FormSpeichernBMPClick(Sender: TObject);
var
  Rahmen : TRect;
begin
  Bitmap        := TBitmap.Create;
  Bitmap.Width  := BBreiteF;
  Bitmap.Height := BHoeheF;
  Rahmen        := Rect(0,0,Bitmap.Width,Bitmap.Height);
  Bitmap.Canvas.Stretchdraw(Rahmen,Image1.Picture.Graphic);
  try
    if (CurrentFile <> '') and (UCaseS(RightS(CurrentFile,3)) = 'BMP')
      then Bitmap.SaveToFile(CurrentFile)
    else FormSpeichernUBMPClick(Sender);
  finally
    Bitmap.Free;
    Bitmap   := nil;
  end;
end;

procedure TForm34.SpeedFormSpeichernBMPClick(Sender: TObject);
begin
  FormSpeichernBMPClick(Sender);
end;

procedure TForm34.FormSpeichernGIFClick(Sender: TObject);
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
  try
    GifBild.Assign(Bitmap);
    if (CurrentFile <> '') and (UCaseS(RightS(CurrentFile,3)) = 'GIF')
    then GifBild.SaveToFile(CurrentFile)
    else FormSpeichernUGIFClick(Sender);
  finally
    Bitmap.Free;
    GifBild.Free;
  end;
end;

procedure TForm34.SpeedFormSpeichernGIFClick(Sender: TObject);
begin
  FormSpeichernGIFClick(Sender);
end;

procedure TForm34.FormSpeichernTIFClick(Sender: TObject);
var
  Rahmen : TRect;
begin
  Bitmap        := TBitmap.Create;
  Bitmap.Width  := BBreiteF;
  Bitmap.Height := BHoeheF;
  Rahmen        := Rect(0,0,Bitmap.Width,Bitmap.Height);
  Bitmap.Canvas.Stretchdraw(Rahmen,Image1.Picture.Graphic);
  try
    if (CurrentFile <> '') and (UCaseS(RightS(CurrentFile,3)) = 'TIF')
    then WriteTiffToFile(CurrentFile,Bitmap)
    else FormSpeichernUTIFClick(Sender);
  finally
    Bitmap.Free;
    Bitmap := nil;
  end;
end;

procedure TForm34.SpeedFormSpeichernTIFClick(Sender: TObject);
begin
  FormSpeichernTIFClick(Sender);
end;

procedure TForm34.FormSpeichernJPGClick(Sender: TObject);
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
      else FormSpeichernUJPGClick(Sender);
    end;
  finally
    JpgDatei.Free;
    Bild.Free;
    Bild        := nil;
    JpgDatei    := nil;
    CurrentFile := '';
  end;
end;

procedure TForm34.SpeedFormSpeichernJPGClick(Sender: TObject);
begin
  FormSpeichernJPGClick(Sender);
end;

procedure TForm34.FormSpeichernWMFClick(Sender: TObject);
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
    if (CurrentFile <> '') and (RightS(CurrentFile,3) = 'WMF')
    then MetaFile.SaveToFile(CurrentFile)
    else FormSpeichernUWMFClick(Sender);
  finally
    Metafile.Free;
  end;
end;

procedure TForm34.SpeedFormspeichernWMFClick(Sender: TObject);
begin
  FormSpeichernWMFClick(Sender);
end;

procedure TForm34.FormSpeichernEMFClick(Sender: TObject);
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
    if (CurrentFile <> '') and (RightS(CurrentFile,3) = 'EMF')
    then MetaFile.SaveToFile(CurrentFile)
    else FormSpeichernUEMFClick(Sender);
  finally
    Metafile.Free;
  end;
end;

procedure TForm34.SpeedFormSpeichernEMFClick(Sender: TObject);
begin
  FormSpeichernEMFClick(Sender);
end;

procedure TForm34.speichernPLTClick(Sender: TObject);
var
  i      : byte;
  Datei  : Textfile;
begin
  GroupBoxPlotten.Visible := true;
  GeraetS               := 'HPGL';
  KonfigZeileS[53]      := 'Paper Plot                 :,HPGL';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  LabelGeraet.Caption := Tx(850)+' '+ GeraetS;
end;

procedure TForm34.speichernDXFClick(Sender: TObject);
var
  i      : byte;
  Datei  : Textfile;
begin
  GroupBoxPlotten.Visible := true;
  GeraetS            := 'DXF';
  KonfigZeileS[53]   := 'Paper Plot                 :,DXF';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  LabelGeraet.Caption    := Tx(850)+' '+ GeraetS;
end;

procedure TForm34.FormSpeichernUBMPClick(Sender: TObject);
begin
  SavePictureDialog1.DefaultExt := GraphicExtension(TBitmap);
  SavePictureDialog1.Filter     := GraphicFilter(TBitmap);
  if SavePictureDialog1.Execute then
  begin
    CurrentFile := SavePictureDialog1.Filename;
    FormSpeichernBMPClick(Sender);
  end;
end;

procedure TForm34.FormSpeichernUGIFClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := GraphicExtension(TGIFImage);
  SaveDialog1.Filter     := GraphicFilter(TGIFImage);
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    FormSpeichernGIFClick(Sender);
  end;
end;

procedure TForm34.FormSpeichernUTIFClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := 'Tagged image file format (*.tif)|*.tif';
  SaveDialog1.Filter     := 'Tagged image file format (*.tif)|*.tif';;
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    FormSpeichernTIFClick(Sender);
  end;
end;

procedure TForm34.FormSpeichernUJPGClick(Sender: TObject);
begin
  SavePictureDialog1.DefaultExt := GraphicExtension(TJpegImage);
  SavePictureDialog1.Filter     := GraphicFilter(TJpegImage);
  if SavePictureDialog1.Execute then
  begin
    CurrentFile := SavePictureDialog1.Filename;
    FormSpeichernJPGClick(Sender);
  end;
end;

procedure TForm34.FormSpeichernUWMFClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := GraphicExtension(TMetaFile);
  SaveDialog1.Filter     := GraphicFilter(TMetaFile);
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    FormSpeichernWMFClick(Sender);
  end;
end;

procedure TForm34.FormSpeichernUEMFClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := GraphicExtension(TMetaFile);
  SaveDialog1.Filter     := GraphicFilter(TMetaFile);
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    FormSpeichernEMFClick(Sender);
  end;
end;

procedure TForm34.MohrSpeichernBMPClick(Sender: TObject);
var
  Rahmen : TRect;
begin
  Bitmap        := TBitmap.Create;
  Bitmap.Width  := BBreiteM;
  Bitmap.Height := BHoeheM;
  Rahmen        := Rect(0,0,Bitmap.Width,Bitmap.Height);
  Bitmap.Canvas.Stretchdraw(Rahmen,Image2.Picture.Graphic);
  try
    if (CurrentFile <> '') and (UCaseS(RightS(CurrentFile,3)) = 'BMP')
    then Bitmap.SaveToFile(CurrentFile)
    else MohrSpeichernUBMPClick(Sender);
  finally
    Bitmap.Free;
    Bitmap   := nil;
  end;
end;

procedure TForm34.SpeedMohrSpeichernBMPClick(Sender: TObject);
begin
  MohrSpeichernBMPClick(Sender);
end;

procedure TForm34.MohrSpeichernGIFClick(Sender: TObject);
var
  Bitmap  : TBitmap;
  GifBild : TGifImage;
  Rahmen  : TRect;
begin
  Bitmap        := TBitmap.Create;
  GifBild       := TGIFImage.Create;
  Bitmap.Width  := BBreiteM;
  Bitmap.Height := BHoeheM;
  Rahmen        := Rect(0,0,Bitmap.Width,Bitmap.Height);
  Bitmap.Canvas.Stretchdraw(Rahmen,Image2.Picture.Graphic);
  try
    GifBild.Assign(Bitmap);
    if (CurrentFile <> '') and (UCaseS(RightS(CurrentFile,3)) = 'GIF')
    then GifBild.SaveToFile(CurrentFile)
    else MohrSpeichernUGIFClick(Sender);
  finally
    Bitmap.Free;
    GifBild.Free;
  end;
end;

procedure TForm34.SpeedMohrSpeichernGIFClick(Sender: TObject);
begin
  MohrSpeichernGIFClick(Sender);
end;

procedure TForm34.MohrSpeichernTIFClick(Sender: TObject);
var
  Rahmen : TRect;
begin
  Bitmap        := TBitmap.Create;
  Bitmap.Width  := BBreiteM;
  Bitmap.Height := BHoeheM;
  Rahmen        := Rect(0,0,Bitmap.Width,Bitmap.Height);
  Bitmap.Canvas.Stretchdraw(Rahmen,Image2.Picture.Graphic);
  try
    if (CurrentFile <> '') and (UCaseS(RightS(CurrentFile,3)) = 'TIF')
    then WriteTiffToFile(CurrentFile,Bitmap)
    else MohrSpeichernUTIFClick(Sender);
  finally
    Bitmap.Free;
    Bitmap := nil;
  end;
end;

procedure TForm34.SpeedMohrSpeichernTIFClick(Sender: TObject);
begin
  MohrSpeichernTIFClick(Sender);
end;

procedure TForm34.MohrSpeichernJPGClick(Sender: TObject);
var
  DateiJ   : string;
  Rahmen   : TRect;
  Bild     : TBitmap;
  JpgDatei : TjpegImage;
begin
  JpgDatei    := TJpegImage.Create;
  Bild        := TBitmap.Create;
  Bild.Width  := BBreiteM;
  Bild.Height := BHoeheM;
  Rahmen      := Rect(0,0,Bild.Width,Bild.Height);
  Bild.Canvas.Stretchdraw(Rahmen,Image2.Picture.Graphic);
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
      else MohrSpeichernUJPGClick(Sender);
    end;
  finally
    JpgDatei.Free;
    Bild.Free;
    Bild        := nil;
    JpgDatei    := nil;
    CurrentFile := '';
  end;
end;

procedure TForm34.SpeedMohrSpeichernJPGClick(Sender: TObject);
begin
  MohrSpeichernJPGClick(Sender);;
end;

procedure TForm34.MohrSpeichernWMFClick(Sender: TObject);
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
    Bitmap.Width  := BBreiteM;
    Bitmap.Height := BHoeheM;
    Rahmen        := Rect(0,0,Bitmap.Width,Bitmap.Height);
    Bitmap.Canvas.Stretchdraw(Rahmen,Image2.Picture.Graphic);
    try
      Bitmap.Assign(Image2.Picture);
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
    else MohrSpeichernUWMFClick(Sender);
  finally
    Metafile.Free;
  end;
end;

procedure TForm34.SpeedMohrSpeichernWMFClick(Sender: TObject);
begin
  MohrSpeichernWMFClick(Sender);
end;

procedure TForm34.MohrSpeichernEMFClick(Sender: TObject);
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
      Bitmap.Assign(Image2.Picture);
      Metafile.Height := BHoeheM;
      Metafile.Width  := BBreiteM;
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
    else MohrSpeichernUEMFClick(Sender);
  finally
    Metafile.Free;
  end;
end;

procedure TForm34.SpeedMohrSpeichernEMFClick(Sender: TObject);
begin
  MohrSpeichernEMFClick(Sender);
end;

procedure TForm34.MohrSpeichernUBMPClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := GraphicExtension(TBitmap);
  SaveDialog1.Filter     := GraphicFilter(TBitmap);
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    MohrSpeichernBMPClick(Sender);
  end;
end;

procedure TForm34.MohrSpeichernUGIFClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := GraphicExtension(TGIFImage);
  SaveDialog1.Filter     := GraphicFilter(TGIFImage);
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    MohrSpeichernGIFClick(Sender);
  end;
end;

procedure TForm34.MohrSpeichernUTIFClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := 'Tagged image file format (*.tif)|*.tif';
  SaveDialog1.Filter     := 'Tagged image file format (*.tif)|*.tif';;
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    MohrSpeichernTIFClick(Sender);
  end;
end;

procedure TForm34.MohrSpeichernUJPGClick(Sender: TObject);
begin
  SavePictureDialog1.DefaultExt := GraphicExtension(TJpegImage);
  SavePictureDialog1.Filter     := GraphicFilter(TJpegImage);
  if SavePictureDialog1.Execute then
  begin
    CurrentFile := SavePictureDialog1.Filename;
    MohrSpeichernJPGClick(Sender);
  end;
end;

procedure TForm34.MohrSpeichernUWMFClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := GraphicExtension(TMetaFile);
  SaveDialog1.Filter     := GraphicFilter(TMetaFile);
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    MohrSpeichernWMFClick(Sender);
  end;
end;

procedure TForm34.MohrSpeichernUEMFClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := GraphicExtension(TMetaFile);
  SaveDialog1.Filter     := GraphicFilter(TMetaFile);
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    MohrSpeichernEMFClick(Sender);
  end;
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
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  AusgewDateien := false;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS := ColorToString (Farbe);
  TheorFarbe       := StringToColor(FarbeS);
  KonfigZeileS[37] := 'Formfactor theoretical     :,'+FarbeS;
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick (Sender);
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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

procedure TForm34.HPPlotter1Click(Sender: TObject);
var
  i      : byte;
  Datei  : Textfile;
begin
  RGFarbe := clWhite;
  ButtonStartClick(Sender);
  PrinterSetupDialog1.execute;
  GeraetS               := 'Plotter';
  KonfigZeileS[53]      := 'Paper Plot                 :,Plotter';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  GroupBoxPlotten.Visible := true;
  LabelGeraet.Caption := Tx(850)+' '+ GeraetS;
end;

procedure TForm34.SpeedPlotterClick(Sender: TObject);
begin
  HpPlotter1Click(Sender);
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick (Sender);
end;

procedure TForm34.SpeedRahmenClick(Sender: TObject);
begin
  FarbeRahmenClick(Sender);
end;

procedure TForm34.PloterstellenClick(Sender: TObject);
var
  LaengeS   : string[4];
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
  {Beginn des Plottens}
  Kante := Seite;
  if GeraetS = 'Plotter' then
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
      Xan   := XNull; //*DFak;
      Yan   := YNull; //*DFak;
      Seite := StrToInt(KanteS)/10;     //*DFak
      Formdreieck (Canvas, Xan,Yan, Seite, Lambda1, Lambda2,
                   Slambda1, Slambda2, DiagNameS);
      if DemoB then
      begin
        Groesse := round(3*Seite/4);
        Canvas.Font.Size   := Groesse;
        Canvas.Font.Color  := clBlack;
        Canvas.Brush.Color := clWhite;
        Canvas.Font.Name   := 'Helvetica';
        Canvas.Font.Size   := Groesse;
        X := round((Xan+Seite/2)*100*Faktor-300);
        Y := round((Yan+Seite/6)*100*Faktor);
        Canvas.Textout (X, Y,'Demo-Version');
      end;
      EndDoc;
    end;
  end;
  showmessage(Tx(435));
  GroupBoxPlotten.Visible := false;
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
  Schrift  : byte;
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
  Schrift  : byte;
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
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\form9pki.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\Shapefactor-plot.htm');
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
var
  i : word;
begin
  for i := 1 to ZahlGlob do
  begin
    AziFeld[i] := (180 + AziFeld[i]) mod 360;
    FalFeld[i] := 90 - FalFeld[i];
  end;
  WeiterB[34] := true;
  Application.CreateForm(TForm31, Form31);
  Form31.Show;
end;

procedure TForm34.SpeedVersatzClick(Sender: TObject);
begin
  VersatzClick(Sender);
end;

procedure TForm34.DiederClick(Sender: TObject);
var
  i : word;
begin
  WeiterB[34] := true;
  for i := 1 to ZahlGlob do
  begin
    AziFeld[i] := (180 + AziFeld[i]) mod 360;
    FalFeld[i] := 90 - FalFeld[i];
  end;
  Application.CreateForm(TForm29, Form29);
  Form29.Show;
end;

procedure TForm34.SpeedDiederClick(Sender: TObject);
begin
  DiederClick(Sender);
end;

procedure TForm34.HoeppenerClick(Sender: TObject);
var
  i : word;
begin
  WeiterB[34] := true;
  for i := 1 to ZahlGlob do
  begin
    AziFeld[i] := (180 + AziFeld[i]) mod 360;
    FalFeld[i] := 90 - FalFeld[i];
  end;
  Application.CreateForm(TForm33, Form33);
  Form33.Show;
end;

procedure TForm34.SpeedHoeppenerClick(Sender: TObject);
begin
  HoeppenerClick(Sender);
end;

end.
