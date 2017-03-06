unit Unit45;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, ExtCtrls, Menus, Globvar, Basic,
  ClipBrd, WoodProg, Mask, HPPlot, Texte, ComCtrls, Buttons,
  Printers, Drucken, Shellapi, Standard, GifImage, Bmp2Tiff,
  Jpeg, ExtDlgs, ehsHelpRouter, PngImage, Grafik, Plotten;

type
  TForm45 = class(TForm)
    Image1: TImage;
    PanelDateien: TPanel;
    ListBoxDateien : TListBox;
    Labelausgewaehlte: TLabel;
    PanelCWert: TPanel;
    ListBoxTabelle : TListBox;
    LabelTabelle   : TLabel;

    MainMenu1 : TMainMenu;

    Farbe1   : TMenuItem;

    Grafik1                    : TMenuItem;
    kopieren1                  : TMenuItem;
    speichern: TMenuItem;

    Hilfe1: TMenuItem;

    ButtonStart   : TButton;
    Buttonzurueck : TButton;
    Buttonbeenden : TButton;

    SaveDialog1: TSaveDialog;
    OpenDialog1: TOpenDialog;

    Symbol1        : TMenuItem;
    Kreisoffen1    : TMenuItem;
    Kreisgefuellt1: TMenuItem;
    Quadratoffen1  : TMenuItem;
    Quadratgefuellt1: TMenuItem;
    Dreieckoffen1  : TMenuItem;
    Dreieckgefuellt1: TMenuItem;
    Rauteoffen1    : TMenuItem;
    Rautegefuellt1: TMenuItem;

    GroupBoxplotten: TGroupBox;

      Panel4         : TPanel;
      LabelLaenge    : TLabel;
      MaskEditLaenge : TMaskEdit;

      Panel5         : TPanel;
      LabelNullpunkt : TLabel;
      LabelX         : TLabel;
      MaskEditX      : TMaskEdit;
      LabelY         : TLabel;
      MaskEditY      : TMaskEdit;

    HPPlotter1 : TMenuItem;

    FarbeKoord1  : TMenuItem;
    Hintergrund: TMenuItem;

    FarbeDiagramm1 : TMenuItem;

    FarbeRahmen   : TMenuItem;
    PanelSpeed: TPanel;
    SpeedHilfe: TSpeedButton;
    SpeedDrucken: TSpeedButton;

    PanelDrucken         : TPanel;
    GroupBoxDrucken      : TGroupBox;
    Panel8               : TPanel;
    LabelRdrucken        : TLabel;
    MaskEditRdrucken     : TMaskEdit;
    Panel9               : TPanel;
    LabelMitte           : TLabel;
    LabelXdrucken        : TLabel;
    MaskEditXdrucken     : TMaskEdit;
    LabelYdrucken        : TLabel;
    MaskEditYdrucken     : TMaskEdit;
    Panel10              : TPanel;
    LabelUnterschrift    : TLabel;
    MaskEditUnterschrift : TMaskEdit;
    LabelSchrift         : TLabel;
    ListBoxSchrift       : TListBox;
    RadioGroup           : TRadioGroup;
    RadioButtonLinks     : TRadioButton;
    RadioButtonZentriert : TRadioButton;
    RadioButtonRechts    : TRadioButton;

    Drucker1            : TMenuItem;
    Druckereinrichten1  : TMenuItem;
    drucken1            : TMenuItem;
    PrinterSetupDialog1 : TPrinterSetupDialog;
    PrintDialog1        : TPrintDialog;

    StatusBar: TStatusBar;
    Handbuch: TMenuItem;
    ColorDialog1: TColorDialog;
    SpeedHandbuch: TSpeedButton;
    SpeedFarbe: TSpeedButton;
    SpeedKopieren: TSpeedButton;
    SpeedKreisO: TSpeedButton;
    SpeedKreisG: TSpeedButton;
    SpeedDreieckO: TSpeedButton;
    SpeedDreieckG: TSpeedButton;
    SpeedQuadratO: TSpeedButton;
    SpeedQuadratG: TSpeedButton;
    SpeedRauteO: TSpeedButton;
    SpeedRauteG: TSpeedButton;
    SpeedKoordinaten: TSpeedButton;
    SpeedDiagramm: TSpeedButton;
    SpeedRahmen: TSpeedButton;
    Literatur: TMenuItem;
    SpeedLiteratur: TSpeedButton;
    SpeedEinrichten: TSpeedButton;
    Auswertung: TMenuItem;
    Vollmer: TMenuItem;
    SpeedVollmer: TSpeedButton;
    Signifikanz: TMenuItem;
    SpeedSignifikanz: TSpeedButton;
    Numerierung: TMenuItem;
    NumJa: TMenuItem;
    NumNein: TMenuItem;
    ListBoxNum: TListBox;
    LabelNum: TLabel;
    PanelGroesse: TPanel;
    LabelBHoehe: TLabel;
    LabelBBreite: TLabel;
    MaskEditBBreite: TMaskEdit;
    MaskEditBHoehe: TMaskEdit;
    CheckBoxBild: TCheckBox;
    BGroesse: TMenuItem;
    transparent: TMenuItem;
    HFarbe: TMenuItem;
    SavePictureDialog1: TSavePictureDialog;
    SpeedBGroesse: TSpeedButton;
    SpeedTransparent: TSpeedButton;
    SpeedHFarbe: TSpeedButton;
    SpeedPlotter: TSpeedButton;
    SpeedNumerierung: TSpeedButton;
    SpeedNumNein: TSpeedButton;
    Ploterstellen: TButton;
    ButtonDrucken: TButton;
    ButtonAbbrechen: TButton;
    ListBoxSpeichern: TListBox;
    SpeedSpeichern: TSpeedButton;
    FontDialog1: TFontDialog;
    Font: TMenuItem;
    SpeedFont: TSpeedButton;
    DatenSpeichern: TMenuItem;
    Dspeichern: TMenuItem;
    DspeichernUnter: TMenuItem;
    PanelDaten: TPanel;
    ListBoxDaten: TListBox;
    LabelDaten: TLabel;
    LabelAnzahl: TLabel;
    Label00000: TLabel;
    LabelL: TLabel;
    Label100: TLabel;
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

    procedure FormActivate(Sender: TObject);
    procedure ButtonStartClick(Sender: TObject);
    procedure ButtonzurueckClick(Sender: TObject);
    procedure ButtonbeendenClick(Sender: TObject);

    {Farben}
    procedure Farbe1Click(Sender: TObject);

    {Grafik}
    procedure kopieren1Click(Sender: TObject);

    procedure Hilfe1Click(Sender: TObject);

    {Symbol}
    procedure Kreisoffen1Click(Sender: TObject);
    procedure Kreisgefuellt1Click(Sender: TObject);
    procedure Quadratoffen1Click(Sender: TObject);
    procedure Quadratgefuellt1Click(Sender: TObject);
    procedure Dreieckoffen1Click(Sender: TObject);
    procedure Dreieckgefuellt1Click(Sender: TObject);
    procedure Rauteoffen1Click(Sender: TObject);
    procedure Rautegefuellt1Click(Sender: TObject);
    procedure ShowHint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedHilfeClick(Sender: TObject);
    procedure Druckereinrichten1Click(Sender: TObject);
    procedure drucken1Click(Sender: TObject);
    procedure MaskEditUnterschriftKeyPress(Sender: TObject; var Key: Char);
    procedure RadioButtonLinksClick(Sender: TObject);
    procedure RadioButtonZentriertClick(Sender: TObject);
    procedure RadioButtonRechtsClick(Sender: TObject);
    procedure ListBoxSchriftClick(Sender: TObject);
    procedure SpeedDruckenClick(Sender: TObject);
    procedure HandbuchClick(Sender: TObject);
    procedure FarbeKoord1Click(Sender: TObject);
    procedure FarbeDiagramm1Click(Sender: TObject);
    procedure FarbeRahmenClick(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure SpeedFarbeClick(Sender: TObject);
    procedure SpeedKopierenClick(Sender: TObject);
    procedure SpeedKreisOClick(Sender: TObject);
    procedure SpeedKreisGClick(Sender: TObject);
    procedure SpeedDreieckOClick(Sender: TObject);
    procedure SpeedDreieckGClick(Sender: TObject);
    procedure SpeedQuadratOClick(Sender: TObject);
    procedure SpeedQuadratGClick(Sender: TObject);
    procedure SpeedRauteOClick(Sender: TObject);
    procedure SpeedRauteGClick(Sender: TObject);
    procedure SpeedPlotterClick(Sender: TObject);
    procedure SpeedKoordinatenClick(Sender: TObject);
    procedure SpeedDiagrammClick(Sender: TObject);
    procedure SpeedRahmenClick(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
    procedure SpeedLiteraturClick(Sender: TObject);
    procedure SpeedEinrichtenClick(Sender: TObject);
    procedure VollmerClick(Sender: TObject);
    procedure SpeedVollmerClick(Sender: TObject);
    procedure SignifikanzClick(Sender: TObject);
    procedure SpeedSignifikanzClick(Sender: TObject);
    procedure NumJaClick(Sender: TObject);
    procedure NumNeinClick(Sender: TObject);
    procedure ListBoxNumClick(Sender: TObject);
    procedure BGroesseClick(Sender: TObject);
    procedure MaskEditBBreiteKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditBHoeheKeyPress(Sender: TObject; var Key: Char);
    procedure CheckBoxBildClick(Sender: TObject);
    procedure transparentClick(Sender: TObject);
    procedure HFarbeClick(Sender: TObject);
    procedure SpeedNumerierungClick(Sender: TObject);
    procedure SpeedNumNeinClick(Sender: TObject);
    procedure speichernPLTClick(Sender: TObject);
    procedure speichernDXFClick(Sender: TObject);
    procedure PloterstellenClick(Sender: TObject);
    procedure ButtonDruckenClick(Sender: TObject);
    procedure ButtonAbbrechenClick(Sender: TObject);
    procedure speichernClick(Sender: TObject);
    procedure ListBoxSpeichernClick(Sender: TObject);
    procedure SpeedSpeichernClick(Sender: TObject);
    procedure FontClick(Sender: TObject);
    procedure SpeedFontClick(Sender: TObject);
    procedure DspeichernClick(Sender: TObject);
    procedure DspeichernUnterClick(Sender: TObject);
    procedure DEinrichtenClick(Sender: TObject);
    procedure CalibrierenClick(Sender: TObject);
    procedure DruckenClick(Sender: TObject);
    procedure ButtonCalibEndeClick(Sender: TObject);
    procedure MaskEditBrEKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditBrDKeyPress(Sender: TObject; var Key: Char);
  end;

var
  Form45        : TForm45;
  ExtensionS    : string;
  Farbe         : TColor;
  Bitmap        : TBitmap;
  HolDatei      : boolean;
  HolZwischen   : boolean;
  CurrentFile   : string;
  PlotDateiS    : string;
  CEnde         : word;
  Schrift       : byte;
  BuendigS      : string;
  Gedrueckt     : array [1..3] of boolean;
  TextS         : string;
  Num           : boolean;
  NumSchrift    : byte;
  Ratio         : real;
  BHoeheF       : word;
  DNameS        : string;
  Bild          : TBitmap;
  Ebreite       : word;
  Dbreite       : word;
  FaktorAlt     : real;

implementation
uses Unit42, Unit43, Unit44, Unit47, Unit77;
{$R *.DFM}

procedure TForm45.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm45.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm45.FormActivate(Sender: TObject);
var
  i : byte;
begin
  Left   := 70;
  Top    := 10;
  Width  := 1050;
  Height := 750;
  setlength (Symbol, MaxDaten);
  setlength (Lambda1, MaxDaten);
  setlength (Lambda2, MaxDaten);
  setlength (Lambda3, MaxDaten);
  WeiterB[45] := false;
  Image1.Hint                      := Hilf(313);
  ListBoxDateien.Hint              := Hilf(82);
  Labelausgewaehlte.Hint           := Hilf(82);
  LabelAnzahl.Hint                 := Hilf(36);
  Label00000.Hint                  := Hilf(36);
  PanelCWert.Hint                  := Hilf(143);
  ListBoxTabelle.Hint              := Hilf(143);
  GroupBoxplotten.Hint             := Hilf(58) + Hilf(59);
  Ploterstellen.Hint               := Hilf(60);
  Panel4.Hint                      := Hilf(154);
  MaskEditLaenge.Hint              := Hilf(154);
  Panel5.Hint                      := Hilf(145);
  LabelX.Hint                      := Hilf(117);
  MaskEditX.Hint                   := Hilf(117);
  LabelY.Hint                      := Hilf(118);
  MaskEditY.Hint                   := Hilf(118);
  ButtonStart.Hint                 := Hilf(312);
  Buttonzurueck.Hint               := Hilf(85);
  Buttonbeenden.Hint               := Hilf(30);
  Ploterstellen.Hint               := Hilf(65);
  ListBoxTabelle.Hint              := Hilf(314);
  SpeedHandbuch.Hint               := Hilf(274);
  SpeedFarbe.Hint                  := Hilf(365);
  SpeedKopieren.Hint               := Hilf(262);
  SpeedKreisO.Hint                 := Hilf(371);
  SpeedKreisG.Hint                 := Hilf(372);
  SpeedDreieckO.Hint               := Hilf(373);
  SpeedDreieckG.Hint               := Hilf(374);
  SpeedQuadratO.Hint               := Hilf(375);
  SpeedQuadratG.Hint               := Hilf(376);
  SpeedRauteO.Hint                 := Hilf(377);
  SpeedRauteG.Hint                 := Hilf(378);
  SpeedPlotter.Hint                := Hilf(437);
  SpeedKoordinaten.Hint            := Hilf(444);
  SpeedDiagramm.Hint               := Hilf(441);
  SpeedRahmen.Hint                 := Hilf(442);
  SpeedEinrichten.Hint             := Hilf(505);
  SpeedVollmer.Hint                := Hilf(516);
  SpeedSignifikanz.Hint            := Hilf(518);
  SpeedNumerierung.Hint            := Hilf(592);
  SpeedNumNein.Hint                := Hilf(593);
  SpeedBGroesse.Hint               := Hilf(583);
  SpeedTransparent.Hint            := Hilf(584);
  SpeedHFarbe.Hint                 := Hilf(585);
  SpeedSpeichern.Hint              := Hilf(264);
  SpeedFont.Hint                   := Hilf(686);
  Form45.Caption                   := Tx(744);   {Fabric7: Woodcock-Diagramm, Plot}
  Farbe1.Caption                   := Tx(642);   {&Farbe}
  Symbol1.Caption                  := Tx(745);   {&Symbol}
  Kreisoffen1.Caption              := Tx(517);   {&Kreis, offen}
  Kreisgefuellt1.Caption           := Tx(518);   {Kreis, &gefüllt}
  Quadratoffen1.Caption            := TX(519);   {&Quadrat, offen}
  Quadratgefuellt1.Caption         := Tx(520);   {Q&uadrat, gefüllt}
  Dreieckoffen1.Caption            := Tx(521);   {&Dreieck, offen}
  Dreieckgefuellt1.Caption         := Tx(522);   {D&reieck, gefüllt}
  Rauteoffen1.Caption              := Tx(523);   {&Raute, offen}
  Rautegefuellt1.Caption           := Tx(524);   {R&aute, gefüllt}
  Numerierung.Caption              := Tx(1387);
  Grafik1.Caption                  := Tx(281);
  kopieren1.Caption                := Tx(282);
  speichern.Caption                := Tx(284);
  HPPlotter1.Caption               := Tx(288);
  FarbeKoord1.Caption              := Tx(729);
  Hintergrund.Caption              := Tx(1453);
  HFarbe.Caption                   := Tx(275);
  FarbeDiagramm1.Caption           := Tx(860);
  Hilfe1.Caption                   := Tx(162)+' (F1)';
  Labelausgewaehlte.Caption        := Tx(136);
  LabelAnzahl.Caption              := Tx(181);
  LabelTabelle.Caption             := Tx(748);   {Tabelle der c-Werte}
  GroupBoxPlotten.Caption          := Tx(297);
  LabelLaenge.Caption              := Tx(814);   {Länge [cm]:}
  LabelNullpunkt.Caption           := Tx(732);   {Nullpunkt}
  LabelX.Caption                   := Tx(687);   {X-Koordinate [cm]:}
  LabelY.Caption                   := Tx(688);   {Y-Koordinate [cm]:}
  Ploterstellen.Caption            := Tx(298);   {Plotdatei erstellen?}
  Buttonzurueck.Caption            := Tx(30);
  Buttonbeenden.Caption            := Tx(53);
  Auswertung.Caption               := TX(1341);
  Vollmer.Caption                  := Tx(24);
  Signifikanz.Caption              := Tx(1218);
  Font.Caption                     := Tx(1621);
  DatenSpeichern.Caption           := Tx(86);
  Dspeichern.Caption               := Tx(87);
  DspeichernUnter.Caption          := Tx(88); 
  LabelDaten.Caption               := Tx(914);
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
  Labelausgewaehlte.Enabled := false;
  LabelAnzahl.Enabled       := false;
  Label00000.Caption        := '';
  LabelTabelle.Enabled      := false;
  Image1.Enabled            := true;
  LabelLaenge.Enabled       := false;
  LabelNullpunkt.Enabled    := false;
  LabelX.Enabled            := false;
  LabelY.Enabled            := false;
  PanelDateien.Visible      := false;
  PanelDaten.Visible        := false;
  PanelCWert.Visible        := false;
  GroupBoxPlotten.Visible   := false;
  Font.Enabled              := false;
  DatenSpeichern.Enabled    := false;
  PanelKaliber.Visible      := false;
  Calib                     := false;
  DecimalSeparator          := '.';
  MaskEditLaenge.EditMask   := '999;0; ';
  MaskEditX.EditMask        := '999;0; ';
  MaskEditY.EditMask        := '999;0; ';
  MaskEditLaenge.Text       := FloatToStr(Kante);
  MaskEditX.Text            := FloatToStr(XAnfang);
  MaskEditY.Text            := FloatToStr(YAnfang);
  MaskEditLaenge.Enabled    := false;
  LabelNullpunkt.Enabled    := false;
  LabelX.Enabled            := false;
  MaskEditX.Enabled         := false;
  LabelY.Enabled            := false;
  MaskEditY.Enabled         := false;
  Farbe1.Enabled            := false;
  Symbol1.Enabled           := false;
  Farbe1.Enabled            := false;
  Grafik1.Enabled           := false;
  Paneldrucken.Visible         := false;
  Drucker1.Caption             := Tx(92);
  Druckereinrichten1.Caption   := Tx(94);
  drucken1.Caption             := Tx(93);
  FarbeRahmen.Caption          := Tx(892);
  SpeedDrucken.Enabled         := false;
  SpeedDrucken.Hint            := Hilf(309);
  GroupBoxPlotten.Caption      := '';
  for i := 1 to 3 do Gedrueckt[i] := false;
  GroupBoxPlotten.Visible  := false;
  Handbuch.Caption         := Tx(1055)+' (F2)';
  Literatur.Caption        := Tx(1183)+' (F5)';
  SpeedLiteratur.Hint      := Hilf(462);
  PanelSpeed.Visible       := false;
  HolDatei                 := false;
  Holzwischen              := false;
  Auswertung.Enabled       := false;
  SpeedVollmer.Enabled     := false;
  SpeedSignifikanz.Enabled := false;
  Numerierung.Enabled := false;
  Num := false;
  for i := 4 to 20 do ListboxNum.Items.Add(IntToStr(i));
  ListBoxNum.Visible := false;
  LabelNum.Visible   := false;
  NumJa.Caption      := Tx(655);
  NumNein.Caption    := Tx(654);
  LabelNum.Caption   := Tx(888);
  Ratio              := Image1.Width/Image1.Height;
  MaskEditBBreite.EditMask := '99999;0; ';
  MaskEditBHoehe.EditMask  := '99999;0; ';
  LabelBBreite.Caption     := Tx(1440);
  LabelBHoehe.Caption      := Tx(1441);
  BGroesse.Caption         := Tx(1439);
  PanelGroesse.Visible     := false;
  HTransparent             := false;
  for i := 1 to 9 do
    ListBoxSpeichern.Items.Add (Tx(1611+i));
  ListBoxSpeichern.Visible := false;  
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

procedure TForm45.ButtonStartClick(Sender: TObject);
var
  Cw           : real;
  CwS          : string[5];
  E1, E2, E3   : real;
  X0, Y0, X, Y : word;
  Laenge, i    : word;
  ProS         : string[20];
  ZeileS       : string;

begin
  PanelDateien.Visible    := true;
  PanelDaten.Visible      := true;
  PanelCWert.Visible      := true;
  Font.Enabled            := true;
  DatenSpeichern.Enabled  := true;
  BHoeheF := round(BBreiteF/Ratio);
  PanelSpeed.Visible := true;
  ListBoxTabelle.Clear;
  ListBoxDateien.Clear;
  ListBoxDaten.Clear;
  for i := 0 to DateiZahl do
    ListboxDateien.Items.Add (DateiNameS[i]);
  For i := 1 to ZahlGlob do
  begin
    ZeileS := '    '+RightS('000'+IntToStr(Lambda1[i]),3)+'   '
                    +RightS('000'+IntToStr(Lambda2[i]),3)+'   '
                    +RightS('000'+IntToStr(Lambda3[i]),3);
    ListBoxDaten.Items.Add(ZeileS);
  end;
  ProS                    := GeraetS;
  Farbe1.Enabled          := true;
  Grafik1.Enabled         := true;
  LabelLaenge.Enabled     := true;
  LabelNullpunkt.Enabled  := true;
  LabelX.Enabled          := true;
  LabelY.Enabled          := true;
  MaskEditLaenge.Enabled  := true;
  MaskEditX.Enabled       := true;
  MaskEditY.Enabled       := true;
  Symbol1.Enabled         := true;
  GroupBoxPlotten.Caption := 'Plot:';
  Bo := Pi/180;
  ExtensionS := RightS(DateinameS[1],3);
  Labelausgewaehlte.Enabled := true;
  LabelAnzahl.Enabled       := true;
  LabelTabelle.Enabled      := true;
  Label00000.Caption        := IntToStr (ZahlGlob);
  Grafik1.Enabled           := true;
  if not WeiterF then
  begin
    Auswertung.Enabled       := true;
    SpeedVollmer.Enabled     := true;
    SpeedSignifikanz.Enabled := true;
  end;
  for i := 1 to ZahlGlob do
  begin
    Cw := ln(Lambda3[i]/Lambda1[i]);
    str(Cw:4:2, CwS);
    ListBoxTabelle.Items.Add ('            '+CwS);
  end;
  Bitmap                := Tbitmap.Create;
  Bitmap.Width          := Image1.Width;
  Bitmap.Height         := Image1.Height;
  Image1.Picture.Graphic:= Bitmap;
  Bitmap.free;
  with Image1 do
  begin
    Xmitte := ClientWidth div 2;
    Ymitte := ClientHeight div 2;
    Radius := ClientWidth div 2 - 20;
    Breite := Image1.Width;
    Hoehe  := Image1.Height;
  end;
  CEnde := 0;
  for i := 1 to ZahlGlob do if round (100*ln(Lambda3[i]/Lambda1[i])) > Cende
    then CEnde := round(100*(ln(Lambda3[i]/Lambda1[i])));
  Cende := 1 + trunc (CEnde / 100);
  Wschirm (Image1.Canvas, CEnde, X0, Y0, Laenge);
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
  end;
  if HolDatei then
  begin
    try
      Image1.Picture.LoadFromFile(CurrentFile);
    except
      on Exception do
      begin
        Beep;
        showMessage(TX(307));                      {Datei nicht gefunden}
      end;
    end;
  end; {if HolDatei}
  if ZahlGlob > 0 then
  begin
    with Image1.Canvas do
    begin
      Pen.Color := DatenFarbe;
      for i := 1 to ZahlGlob do
      begin
        E1 := Lambda1[i] / 1000;
        E2 := Lambda2[i] / 1000;
        E3 := Lambda3[i] / 1000;
        if E1 = 0 then E1 := 0.00000001;
        if E2 = 0 then E2 := 0.00000001;
        X := X0 + round (Laenge * ln(E2/E1) / Cende);
        Y := Y0 - round (Laenge * ln(E3/E2) / Cende);
        Pen.Color := DatenFarbe;
        if DatenSymbol = 'OpenCircle' then
        begin
          Brush.Color := RGFarbe;
          Ellipse (X-5,Y-5, X+5,Y+5);
          Symbol[i] := 1;
        end;
        if DatenSymbol =  'FilledCircle' then
        begin
          Brush.Color := DatenFarbe;
          Ellipse (X-5,Y-5, X+5,Y+5);
          Symbol[i] := 2;
        end;
        if DatenSymbol = 'OpenSquare' then
        begin
          Brush.Color := RGFarbe;
          Rectangle (X-5,Y-5, X+5,Y+5);
          Symbol[i] := 3;
        end;
        if DatenSymbol = 'FilledSquare' then
        begin
          Brush.Color := DatenFarbe;
          Rectangle (X-5,Y-5, X+5,Y+5);
          Symbol[i] := 4;
        end;
        if DatenSymbol = 'OpenTriangle' then
        begin
          Brush.Color := RGFarbe;
          Polygon ([Point(X,Y-5), Point(X+5,Y+5), Point(X-5,Y+5)]);
          Symbol[i] := 5;
        end;
        if DatenSymbol = 'FilledTriangle' then
        begin
          Brush.Color := DatenFarbe;
          Polygon ([Point(X,Y-5), Point(X+5,Y+5), Point(X-5,Y+5)]);
          Symbol[i] := 6;
        end;
        if DatenSymbol = 'OpenDiamond' then
        begin
          Brush.Color := RGFarbe;
          Polygon ([Point(X,Y-5), Point(X+5,Y), Point(X,Y+5), Point(X-5,Y)]);
          Symbol[i] := 7;
        end;
        if DatenSymbol = 'FilledDiamond' then
        begin
          Brush.Color := DatenFarbe;
          Polygon ([Point(X,Y-5), Point(X+5,Y), Point(X,Y+5), Point(X-5,Y)]);
          Symbol[i] := 8;
        end;
        Numerierung.Enabled := true;
        if Num then
        begin
          Pen.Color   := clBlack;
          Font.Name   := 'TimesNewRoman';
          Font.Size   := NumSchrift;
          Brush.Color := RGFarbe;
          Textout(X+6,Y-5,IntToStr(i));
          Pen.Color := DatenFarbe;
        end;
      end; {For i := 1 to N}
    end; {if N >0}
  end;
  if DemoB then DemoText (Image1.Canvas, 10, Image1.Height-40);
  SpeedDrucken.Enabled := true;
end;

procedure TForm45.ButtonzurueckClick(Sender: TObject);
begin
  with Image1.Canvas do
  begin
    Pen.Color := clSilver;
    Brush.Color := clSilver;
    Rectangle (0,0,Image1.Width,Image1.Height);
  end;
  if not WeiterF then
  begin
    Lambda1 := Nil;
    Lambda2 := Nil;
    Lambda3 := Nil;
    Symbol  := Nil;
  end;  
  Form45.Close;
end;

procedure TForm45.ButtonbeendenClick(Sender: TObject);
begin
  with Image1.Canvas do
  begin
    Pen.Color := clSilver;
    Brush.Color := clSilver;
    Rectangle (0,0,Image1.Width,Image1.Height);
  end;
  ListboxDateien.Clear;
  Lambda1 := Nil;
  Lambda2 := Nil;
  Lambda3 := Nil;
  Symbol  := Nil;
  Form45.Close;
  Form44.Close;
  Form43.Close;
  Form42.Close;
  SetCurrentDir(DirectS);
end;

procedure TForm45.Farbe1Click(Sender: TObject);
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

procedure TForm45.BGroesseClick(Sender: TObject);
begin
  PanelGroesse.Visible    := true;
  CheckBoxBild.State      := cbUnchecked;
  MaskEditBBreite.Text    := IntTostr(BBreiteF);
  MaskEditBHoehe.Text     := IntToStr(BHoeheF);
end;

procedure TForm45.MaskEditBBreiteKeyPress(Sender: TObject; var Key: Char);
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
      assignFile(Datei,FabricS+'\'+'Fabric.ini');
      rewrite (Datei);
      for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
      closefile (Datei);
    end;
  end;
end;

procedure TForm45.MaskEditBHoeheKeyPress(Sender: TObject; var Key: Char);
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
    assignFile(Datei,FabricS+'\'+'Fabric.ini');
    rewrite (Datei);
    for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
    closefile (Datei);
  end;
end;

procedure TForm45.CheckBoxBildClick(Sender: TObject);
begin
  PanelGroesse.Visible := false;
end;

procedure TForm45.kopieren1Click(Sender: TObject);
begin
  ClipBoard.Assign (Image1.Picture);
end;

procedure TForm45.transparentClick(Sender: TObject);
begin
  Farbe                 := clWhite;
  HTransparent          := true;
  ListBoxSpeichern.Clear;
  ListBoxSpeichern.Items.Add (Tx(1613));
  ButtonStartClick(Sender);
end;

procedure TForm45.HFarbeClick(Sender: TObject);
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
  ListBoxSpeichern.Clear;
  for i := 1 to 9 do
    ListBoxSpeichern.Items.Add (Tx(1611+i));
  ButtonStartClick (Sender);
end;

procedure TForm45.speichernClick(Sender: TObject);
begin
  ListBoxSpeichern.Visible := true;
end;

procedure TForm45.SpeedSpeichernClick(Sender: TObject);
begin
  speichernClick(Sender);
end;

procedure TForm45.ListBoxSpeichernClick(Sender: TObject);
var
  i : byte;
begin
  BBreiteSt := BBreiteF;
  for i := 0 to ListBoxSpeichern.Items.Count-1 do
  begin
    if ListBoxSpeichern.Selected[i] then
    begin
      if i < 7 then  GrafikSpeichern (Image1, ListBoxSpeichern, Ratio,
                                      SavePictureDialog1, SaveDialog1);
      if i = 7 then speichernPLTClick(Sender);
      if i = 8 then speichernDXFClick(Sender);
    end;
  end;
end;

procedure TForm45.speichernPLTClick(Sender: TObject);
var
  i      : byte;
  Datei  : Textfile;
begin
  PanelCWert.Visible      := false;
  GroupBoxPlotten.Visible := true;
  GeraetS                 := 'HPGL';
  KonfigZeileS[53] := 'Paper Plot                 :,HPGL';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
end;

procedure TForm45.speichernDXFClick(Sender: TObject);
var
  i      : byte;
  Datei  : Textfile;
begin
  PanelCWert.Visible      := false;
  GroupBoxPlotten.Visible := true;
  GeraetS                 := 'DXF';
  KonfigZeileS[53] := 'Paper Plot                 :,DXF';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
end;

procedure TForm45.DEinrichtenClick(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TForm45.CalibrierenClick(Sender: TObject);
begin
  Calib                   := true;
  FaktorAlt               := Faktor;
  Faktor                  := 1;
  GeraetS                 := 'Plotter';
  PanelCWert.Visible      := false;
  GroupBoxPlotten.Visible := true;
  PanelKaliber.Visible    := true;
  MaskEditBrE.Setfocus;
end;

procedure TForm45.ButtonCalibEndeClick(Sender: TObject);
begin
  Calib := false;
  Faktor := FaktorAlt;
  PanelKaliber.Visible := false;
end;

procedure TForm45.MaskEditBrEKeyPress(Sender: TObject; var Key: Char);
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

procedure TForm45.MaskEditBrDKeyPress(Sender: TObject; var Key: Char);
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

procedure TForm45.DruckenClick(Sender: TObject);
var
  i      : byte;
  Datei  : Textfile;
begin
  DiagrFarbe := clWhite;
  PanelCWert.Visible := false;
  PrinterSetupDialog1.execute;
  GeraetS                  := 'Plotter';
  KonfigZeileS[53] := 'Paper Plot                 :,Plotter';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  GroupBoxPlotten.Visible := true;
end;

procedure TForm45.Kreisoffen1Click(Sender: TObject);
var
Datei : TextFile;
i     : byte;
begin
  DatenSymbol := 'OpenCircle';
  KonfigZeileS[9] := '  Data Symbol              :,OpenCircle';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm45.Kreisgefuellt1Click(Sender: TObject);
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

procedure TForm45.Quadratoffen1Click(Sender: TObject);
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

procedure TForm45.Quadratgefuellt1Click(Sender: TObject);
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

procedure TForm45.Dreieckoffen1Click(Sender: TObject);
var
Datei : TextFile;
i     : byte;
begin
  DatenSymbol := 'OpenTriangle';
  KonfigZeileS[9] := '  Data Symbol              :,OpenTriangle';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm45.Dreieckgefuellt1Click(Sender: TObject);
var
Datei : TextFile;
i     : byte;
begin
  DatenSymbol := 'FilledTriangle';
  KonfigZeileS[9] := '  Data Symbol              :,FilledTriangle';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm45.Rauteoffen1Click(Sender: TObject);
var
Datei : TextFile;
i     : byte;
begin
  DatenSymbol := 'OpenDiamond';
  KonfigZeileS[9] := '  Data Symbol              :,OpenDiamond';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm45.Rautegefuellt1Click(Sender: TObject);
var
Datei : TextFile;
i     : byte;
begin
  DatenSymbol := 'FilledDiamond';
  KonfigZeileS[9] := '  Data Symbol              :,FilledDiamond';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm45.SpeedKreisOClick(Sender: TObject);
begin
  KreisOffen1Click(Sender);
end;

procedure TForm45.SpeedKreisGClick(Sender: TObject);
begin
  KreisGefuellt1Click(Sender);
end;

procedure TForm45.SpeedQuadratOClick(Sender: TObject);
begin
  QuadratOffen1Click(Sender);
end;

procedure TForm45.SpeedQuadratGClick(Sender: TObject);
begin
  QuadratGefuellt1Click(Sender);
end;

procedure TForm45.SpeedDreieckOClick(Sender: TObject);
begin
  DreieckOffen1Click(Sender);
end;

procedure TForm45.SpeedDreieckGClick(Sender: TObject);
begin
  DreieckGefuellt1Click(Sender);
end;

procedure TForm45.SpeedRauteOClick(Sender: TObject);
begin
  RauteOffen1Click(Sender);
end;

procedure TForm45.SpeedRauteGClick(Sender: TObject);
begin
  RauteGefuellt1Click(Sender);
end;

procedure TForm45.SpeedPlotterClick(Sender: TObject);
begin
  DruckenClick(Sender);
end;

procedure TForm45.FarbeKoord1Click(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  Farbe := clWhite;
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

procedure TForm45.FarbeDiagramm1Click(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  Farbe := clWhite;
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

procedure TForm45.FarbeRahmenClick(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  Farbe := clWhite;
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

procedure TForm45.SpeedKoordinatenClick(Sender: TObject);
begin
  FarbeKoord1Click(Sender);
end;

procedure TForm45.SpeedDiagrammClick(Sender: TObject);
begin
  FarbeDiagramm1Click(Sender);
end;

procedure TForm45.SpeedRahmenClick(Sender: TObject);
begin
  FarbeRahmenClick(Sender);
end;

procedure TForm45.PloterstellenClick(Sender: TObject);
var
  LaengeS   : string[4];
  XKoordS   : string[4];
  YKoordS   : string[4];
  Xnull     : real;
  YNull     : real;
  Lmax      : real;
  LmaxS     : string[15];
  Xmax      : real;
  Ymax      : real;
  i         : word;
  XBeginn   : real;
  YBeginn   : real;
  XRichtung : word;
  YRichtung : word;
  RichtungS : string[6];
  CWinkel   : word;
  XStart    : real;
  CLinie    : real;
  HAnfang   : word;
  HEnde     : word;
  HPlus     : word;
  SteigungS : string;
  H, X, Y   : real;
  iiS       : string[10];
  XWert     : real;
  YWert     : real;
  Datei     : TextFile;
  Seite     : real;
  Xm, Ym    : word;
  XS, YS    : string;
  WS, HS    : string;
  XD, YD    : word;
  Groesse   : word;
  DiagNameS : string;
  Typ       : TMsgDlgType;     
begin
  Bo := Pi/180;
  LaengeS  := MaskEditLaenge.Text;
  XKoordS := MaskEditX.Text;
  YKoordS := MaskEditY.Text;
  KonfigZeileS[67] := 'Length of Coordinates [mm] :'+','+LaengeS;
  KonfigZeileS[68] := 'X-Coordin. of Origine [mm] :'+','+XKoordS;
  KonfigZeileS[69] := 'Y-Coordin. of Origine [mm] :'+','+YKoordS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  DecimalSeparator := '.';
  Seite := StrToFloat(LaengeS)/10;
  XNull := StrToFloat(XKoordS)/10;
  YNull := StrToFloat(YKoordS)/10;
  LmaxS := '(max. 290mm)';
  Lmax  := 29.0;
  Xmax  := 29.2 - Seite;
  Ymax  := 21.0 - Seite;
  Typ   := mtError;
  if Seite > Lmax then
  begin
    if DlgMessage (Typ, Tx(37), Tx(387),3) = 4 then
    begin
      MaskEditLaenge.Clear;
      MaskEditLaenge.SetFocus;
      exit;
    end;
  end;
  {Beginn des Plottens}
  if not Calib then
    DiagNameS := InputBox(Tx(439),Tx(887),' ');
  if GeraetS <> 'Plotter' then
  begin
    Plotter (Canvas, SaveDialog1);
    Farben (Canvas, KoordinFarbe);
    Xbeginn   := XNull;
    Ybeginn   := YNull;
    Xrichtung := 0;
    Yrichtung := 90;
    RichtungS := 'DI1,0';
    Farben (Canvas, KoordinFarbe);
    Hpstrich (Canvas, Xbeginn,Ybeginn,Seite,Xrichtung);
    Hpstrich (Canvas, Xbeginn,Ybeginn,Seite,Yrichtung);
    Xhpschrift (Canvas, 13,RichtungS,Xbeginn,Ybeginn,Seite,100, CEnde);
    Yhpschrift (Canvas, 13,RichtungS,Xbeginn,Ybeginn,Seite,100, CEnde);
    Cwinkel := 135;
    for i := 1 to CEnde do
    begin
      Xstart := Xbeginn + i * Seite / CEnde;
      Clinie := sqrt (2 * sqr(i * Seite / CEnde));
      Hpstrich (Canvas, Xstart,Ybeginn,Clinie,Cwinkel);
    end;
    Hanfang := 15;
    Hende   := 75;
    Hplus   := 0;
    i := Hanfang - 15;
    repeat
      i := i + 15;
      Hpstrich (Canvas, Xbeginn,Ybeginn,Seite,i);
      str (round(10 * TAN((i + Hplus) * Bo))/10:3:1,SteigungS);
      SteigungS := 'm='+ SteigungS;
      if GeraetS <> 'DXF' then
        Plotte (RichtungS+';'+'LB'+SteigungS+chr(3))
      else
      begin
        H := Seite / 5;
        X := Xbeginn + Seite * cos(i * Bo);
        Y := Ybeginn + Seite * sin(i * Bo);
        str (i,iiS);
        Dxftext (X,Y,H,SteigungS,iiS);
      end;
    until i >= Hende;
    Farben (Canvas, DatenFarbe);
    for i := 1 to ZahlGlob do
    begin
      Xwert := ln(Lambda2[i] / Lambda1[i]) * Seite / CEnde;
      Ywert := ln(Lambda3[i] / Lambda2[i]) * Seite / CEnde;
      Hpsymbol (Canvas, Xbeginn,Ybeginn,Xwert,Ywert,Seite,Symbol[i]);
    end;
    Farben(Canvas, KoordinFarbe);
    if GeraetS = 'HPGL' then
    begin
      XS := IntToStr(round(Xbeginn*400));
      YS := IntToStr(round((Ybeginn-Seite/10)*400));
      WS := FloatToStr(Seite/15);
      HS := FloatToStr(Seite/12);
      Farben (Canvas, KoordinFarbe);
      Plotte ('Si'+Ws+','+HS);
      Plotte ('PU;PA'+XS+','+YS+'LB'+DiagNameS+Chr(3));
    end;
    if GeraetS = 'DXF' then
      Dxftext (Xbeginn,Ybeginn-Seite/10,Seite/3,DiagNameS,'0.00');
    DecimalSeparator := '.';
    XS := Inttostr(round((Xnull+Seite/4) * 400));
    YS := IntToStr(round((Ynull+seite/2) * 400));
    WS := FloatToStr(Seite/30);
    HS := FloatToStr(Seite/20);
    Hpende (XS, Ys, WS, HS);
  end;
  if GeraetS = 'Plotter' then
  begin
    SetMapMode (Printer.Handle, MM_Himetric);
    with Printer do
    begin
      Canvas.Pen.Color  := KoordinFarbe;
      Canvas.Font.Color := KoordinFarbe;
      Canvas.Font.Size  := 10;
      BeginDoc;
      Plotter (Canvas, SaveDialog1);
      Farben (Canvas, KoordinFarbe);
      Xbeginn   := XNull;
      Ybeginn   := YNull+Seite;
      Xrichtung := 0;
      Yrichtung := 270;
      Farben (Canvas, KoordinFarbe);
      Hpstrich (Canvas, Xbeginn,Ybeginn,Seite,Xrichtung);
      Hpstrich (Canvas, Xbeginn,Ybeginn,Seite,Yrichtung);
      Xhpschrift (Canvas, 13,RichtungS,Xbeginn,Ybeginn,Seite,100, CEnde);
      Yhpschrift (Canvas, 13,RichtungS,Xbeginn,Ybeginn-Seite,Seite,100, CEnde);
      Cwinkel := 225;
      for i := 1 to CEnde do
      begin
        Xstart := Xbeginn + i * Seite / CEnde;
        Clinie := sqrt (2 * sqr(i * Seite / CEnde));
        Hpstrich (Canvas, Xstart,Ybeginn,Clinie,Cwinkel);
      end;
      Hanfang := 285;
      Hende   := 345;
      Hplus   := 0;
      i := Hanfang - 15;
      repeat
        i := i + 15;
        Hpstrich (Canvas, Xbeginn,Ybeginn,Seite,i);
        str (round(10 * TAN((i + Hplus) * Bo))/10:3:1,SteigungS);
        SteigungS := 'm='+ SteigungS;
        Xm := round((XBeginn+Seite*cos(i*Bo))*100*Faktor);
        Ym := round((YBeginn+Seite*sin(i*Bo))*100*Faktor);
        Canvas.Textout (Xm, Ym, SteigungS);
      until i >= Hende;
      Farben (Canvas, DatenFarbe);
      for i := 1 to ZahlGlob do
      begin
        Xwert := ln(Lambda2[i] / Lambda1[i]) * Seite / CEnde;
        Ywert := ln(Lambda3[i] / Lambda2[i]) * Seite / CEnde;
        Hpsymbol (Canvas, XNull,YNull,Xwert,Ywert,Seite,Symbol[i]);
      end;
      Canvas.Brush.Color := clWhite;
      Canvas.Font.Size := round(Seite);
      Canvas.TextOut (round(Xbeginn*100*Faktor),
                      round((Ybeginn+Seite/10)*100*Faktor), DiagNameS);
      if DemoB then
      begin
        XD := round((Xbeginn+Seite+Seite/20)*100*Faktor);
        YD := round((Ybeginn-Seite)*100*Faktor);
        Groesse := round(Seite);
        Canvas.Font.Size   := Groesse;
        Canvas.Brush.Color := clWhite;
        Canvas.Font.Color  := clBlack;
        Canvas.Font.Size   := round(Seite);
        Canvas.Textout (XD, YD,'Demo-Version');
      end;
      EndDoc;
    end;
  end;
  if not Calib then showmessage(Tx(435));
  GroupBoxPlotten.Visible  := false;
  ListBoxSpeichern.Visible := false;
  PanelCWert.Visible       := true;
  Calib                    := false;
end;

procedure TForm45.Druckereinrichten1Click(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TForm45.SpeedEinrichtenClick(Sender: TObject);
begin
  DruckerEinrichten1Click(Sender);
end;

procedure TForm45.drucken1Click(Sender: TObject);
var
  SchriftS : string[5];
  i        : byte;
begin
  Paneldrucken.Visible      := true;
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

procedure TForm45.MaskEditUnterschriftKeyPress(Sender: TObject;
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

procedure TForm45.RadioButtonLinksClick(Sender: TObject);
begin
  BuendigS := 'Links';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    ButtonDrucken.Enabled := true;
end;

procedure TForm45.RadioButtonZentriertClick(Sender: TObject);
begin
  BuendigS := 'Zentriert';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    ButtonDrucken.Enabled := true;
end;

procedure TForm45.RadioButtonRechtsClick(Sender: TObject);
begin
  BuendigS := 'Rechts';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    ButtonDrucken.Enabled := true;
end;

procedure TForm45.ListBoxSchriftClick(Sender: TObject);
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

procedure TForm45.ButtonDruckenClick(Sender: TObject);
var
  XKoordS : string;
  YKoordS : string;
  RadiusS : string;
  Bitmap  : TBitmap;
  Fenster : TRect;
  Radius  : word;
begin
  Paneldrucken.Visible         := false;
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

procedure TForm45.ButtonAbbrechenClick(Sender: TObject);
begin
  Paneldrucken.Visible         := false;
end;

procedure TForm45.SpeedDruckenClick(Sender: TObject);
begin
  drucken1Click(Sender);
end;

procedure TForm45.Hilfe1Click(Sender: TObject);
var
  DateiS : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\45Woodcock-plot.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\45Woodcock-plot.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm45.SpeedHilfeClick(Sender: TObject);
begin
  Hilfe1Click(Sender);
end;

procedure TForm45.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Woodcock-Diagramm.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'Woodcock-Diagram-E.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm45.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm45.SpeedFarbeClick(Sender: TObject);
begin
  Farbe1Click(Sender);
end;

procedure TForm45.SpeedKopierenClick(Sender: TObject);
begin
  kopieren1Click(Sender);
end;

procedure TForm45.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm45.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

procedure TForm45.VollmerClick(Sender: TObject);
begin
  WeiterB[45] := true;
  Application.CreateForm(TForm47, Form47);
  Form47.Show;
end;

procedure TForm45.SpeedVollmerClick(Sender: TObject);
begin
  VollmerClick(Sender);
end;

procedure TForm45.SignifikanzClick(Sender: TObject);
begin
  WeiterB[45] := true;
  Application.CreateForm(TForm77, Form77);
  Form77.Show;
end;

procedure TForm45.SpeedSignifikanzClick(Sender: TObject);
begin
  SignifikanzClick(Sender);
end;

procedure TForm45.DspeichernClick(Sender: TObject);
begin
  if CurrentFile <> '' then WSchreiben (CurrentFile, Anzahl,
     Lambda1, Lambda2, Lambda3, ZahlEinzel)
  else DspeichernUnterClick(Sender);
end;

procedure TForm45.DspeichernUnterClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := ExtenS;
  SaveDialog1.Filter     := 'Eigenvalues (*.woo)|*.WOO';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    WSchreiben (CurrentFile, Anzahl, Lambda1, Lambda2,
                Lambda3, ZahlEinzel);
  end;
end;

procedure TForm45.NumJaClick(Sender: TObject);
begin
  Num := true;
  ListBoxNum.Visible := true;
  LabelNum.Visible   := true;
end;

procedure TForm45.SpeedNumerierungClick(Sender: TObject);
begin
  NumJaClick(Sender);
end;

procedure TForm45.NumNeinClick(Sender: TObject);
begin
  Num := false;
  ButtonStartClick(Sender);
end;

procedure TForm45.SpeedNumNeinClick(Sender: TObject);
begin
  NumNeinClick(Sender);
end;

procedure TForm45.ListBoxNumClick(Sender: TObject);
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

procedure TForm45.FontClick(Sender: TObject);
begin
  WaehlFont(FontDialog1);
end;

procedure TForm45.SpeedFontClick(Sender: TObject);
begin
  FontClick(Sender);
end;

end.
