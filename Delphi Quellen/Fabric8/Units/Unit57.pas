unit Unit57;

interface
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, ExtCtrls, Menus, StdCtrls, Globvar, Plotten,
  Clipbrd, Texte, Basic, Mask, Einausga, Drucken, Buttons,
  Comctrls, Shellapi, Printers, Kalkulat, Jpeg, ExtDlgs, Math,
  Standard, GifImage, Bmp2Tiff, ReadTiff, ehsHelpRouter, PngImage,
  Grafik;

type
  TForm57 = class(TForm)
    Image1    : TImage;
    MainMenu1 : TMainMenu;

    Projektion     : TMenuItem;
    stereografisch : TMenuItem;
    Lambert        : TMenuItem;
    orthografisch1 : TMenuItem;
    Kavraiskii1: TMenuItem;

    ButtonStart   : TButton;
    ButtonZurueck : TButton;
    ButtonBeenden : TButton;

    Gefuegetyp1 : TMenuItem;
    Lineare1    : TMenuItem;
    Flaechen1   : TMenuItem;
    PanelTyp: TPanel;
    LabelProjektion    : TLabel;
    LabelGefuegetyp    : TLabel;
    LabelLineare       : TLabel;
    Labelorthografisch : TLabel;
    ListBoxDaten: TListBox;

    LabelDaten   : TLabel;
    Label1       : TLabel;
    LabelAnzahl  : TLabel;

    ButtonPunkte : TButton;

    speichern1        : TMenuItem;
    speichernD: TMenuItem;
    speichernDUnter: TMenuItem;

    Drucker1            : TMenuItem;
    einrichten1         : TMenuItem;
    drucken1            : TMenuItem;
    PrinterSetupDialog1 : TPrinterSetupDialog;
    PrintDialog1        : TPrintDialog;

    Hilfe1 : TMenuItem;
    PanelSpeed: TPanel;
    SpeedHilfe      : TSpeedButton;
    SpeedDrucken    : TSpeedButton;

    StatusBar1 : TStatusBar;

    Farbe1   : TMenuItem;
    Handbuch: TMenuItem;
    ColorDialog1: TColorDialog;
    SaveDialog1: TSaveDialog;
    Image2: TImage;
    SpeedHandbuch: TSpeedButton;
    SpeedFarbe: TSpeedButton;
    SpeedKopieren: TSpeedButton;
    Grafik1: TMenuItem;
    kopieren1: TMenuItem;
    speichern2: TMenuItem;
    SpeedLambert: TSpeedButton;
    SpeedStereografisch: TSpeedButton;
    SpeedOrthografisch: TSpeedButton;
    SpeedKavraiskii: TSpeedButton;
    SpeedLineare: TSpeedButton;
    SpeedFlaechen: TSpeedButton;
    SpeedDatenSpeichern: TSpeedButton;
    SpeedDatenDrucken: TSpeedButton;
    GrafikDrucken: TMenuItem;
    DruckerEinrichten: TMenuItem;
    Gdrucken: TMenuItem;
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
    Panel10: TPanel;
    CheckBoxAbbruch: TCheckBox;
    Panel11: TPanel;
    LabelUnterschrift: TLabel;
    LabelSchrift: TLabel;
    MaskEditUnterschrift: TMaskEdit;
    ListBoxSchrift: TListBox;
    RadioGroup: TRadioGroup;
    RadioButtonlinks: TRadioButton;
    RadioButtonzentriert: TRadioButton;
    RadioButtonrechts: TRadioButton;
    PanelFormfaktor: TPanel;
    LabelFormfaktor: TLabel;
    ListBoxForm: TListBox;
    MaskEditFSigma1: TMaskEdit;
    LabelSigma1: TLabel;
    MaskEditASigma3: TMaskEdit;
    MaskEditFSigma3: TMaskEdit;
    LabelSigma3: TLabel;
    CheckBoxOK: TCheckBox;
    MaskEditASigma1: TMaskEdit;
    Literatur: TMenuItem;
    SpeedLiteratur: TSpeedButton;
    WinWord: TMenuItem;
    SpeedWinWord: TSpeedButton;
    SpeedEinrichten: TSpeedButton;
    PanelRekonstruktion: TPanel;
    LabelImport: TLabel;
    Importieren: TMenuItem;
    Zwischenablage: TMenuItem;
    Datei: TMenuItem;
    SpeedEinfuegen: TSpeedButton;
    OpenPictureDialog1: TOpenPictureDialog;
    PanelProjektion: TPanel;
    PanelKlicken: TPanel;
    Image3: TImage;
    PanelPro: TPanel;
    PanelStress: TPanel;
    PanelGroesse: TPanel;
    LabelBHoehe: TLabel;
    LabelBBreite: TLabel;
    MaskEditBBreite: TMaskEdit;
    MaskEditBHoehe: TMaskEdit;
    CheckBoxBild: TCheckBox;
    BGroesse: TMenuItem;
    SpeedBGroesse: TSpeedButton;
    SavePictureDialog1: TSavePictureDialog;
    OpenDialog1: TOpenDialog;
    ButtonAusschneiden: TButton;
    ButtonDrucken: TButton;
    ButtonAbbrechen: TButton;
    ListBoxSpeichern: TListBox;
    ListBoxOeffnen: TListBox;
    SpeedOeffnen: TSpeedButton;
    SpeedSpeichern: TSpeedButton;
    SpeedFont: TSpeedButton;
    Font: TMenuItem;
    FontDialog1: TFontDialog;
    PanelDaten: TPanel;

    procedure stereografischClick(Sender: TObject);
    procedure LambertClick(Sender: TObject);
    procedure orthografisch1Click(Sender: TObject);
    procedure Kavraiskii1Click(Sender: TObject);
    procedure ButtonStartClick(Sender: TObject);
    procedure ButtonZurueckClick(Sender: TObject);
    procedure ButtonBeendenClick(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Lineare1Click(Sender: TObject);
    procedure Flaechen1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ButtonPunkteClick(Sender: TObject);
    procedure speichernDClick(Sender: TObject);
    procedure speichernDUnterClick(Sender: TObject);
    procedure einrichten1Click(Sender: TObject);
    procedure drucken1Click(Sender: TObject);
    procedure SpeedHilfeClick(Sender: TObject);
    procedure Hilfe1Click(Sender: TObject);
    procedure SpeedDruckenClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ShowHint(Sender: TObject);
    procedure HandbuchClick(Sender: TObject);
    procedure Farbe1Click(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure SpeedFarbeClick(Sender: TObject);
    procedure SpeedKopierenClick(Sender: TObject);
    procedure kopieren1Click(Sender: TObject);
    procedure SpeedLambertClick(Sender: TObject);
    procedure SpeedStereografischClick(Sender: TObject);
    procedure SpeedOrthografischClick(Sender: TObject);
    procedure SpeedKavraiskiiClick(Sender: TObject);
    procedure SpeedLineareClick(Sender: TObject);
    procedure SpeedFlaechenClick(Sender: TObject);
    procedure SpeedDatenSpeichernClick(Sender: TObject);
    procedure SpeedDatenDruckenClick(Sender: TObject);
    procedure DruckerEinrichtenClick(Sender: TObject);
    procedure GdruckenClick(Sender: TObject);
    procedure RadioButtonlinksClick(Sender: TObject);
    procedure RadioButtonrechtsClick(Sender: TObject);
    procedure RadioButtonzentriertClick(Sender: TObject);
    procedure MaskEditUnterschriftKeyPress(Sender: TObject; var Key: Char);
    procedure ListBoxSchriftClick(Sender: TObject);
    procedure ListBoxFormClick(Sender: TObject);
    procedure MaskEditFSigma1Change(Sender: TObject);
    procedure MaskEditASigma3Change(Sender: TObject);
    procedure MaskEditFSigma3Change(Sender: TObject);
    procedure MaskEditASigma1Change(Sender: TObject);
    procedure CheckBoxOKClick(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
    procedure SpeedLiteraturClick(Sender: TObject);
    procedure WinWordClick(Sender: TObject);
    procedure SpeedWinWordClick(Sender: TObject);
    procedure SpeedEinrichtenClick(Sender: TObject);
    procedure ZwischenablageClick(Sender: TObject);
    procedure SpeedEinfuegenClick(Sender: TObject);
    procedure BGroesseClick(Sender: TObject);
    procedure MaskEditBBreiteKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditBHoeheKeyPress(Sender: TObject; var Key: Char);
    procedure CheckBoxBildClick(Sender: TObject);
    procedure SpeedBGroesseClick(Sender: TObject);
    procedure GDemo;
    procedure ButtonAusschneidenClick(Sender: TObject);
    procedure ButtonDruckenClick(Sender: TObject);
    procedure ButtonAbbrechenClick(Sender: TObject);
    procedure speichern2Click(Sender: TObject);
    procedure ListBoxSpeichernClick(Sender: TObject);
    procedure DateiClick(Sender: TObject);
    procedure ListBoxOeffnenClick(Sender: TObject);
    procedure SpeedOeffnenClick(Sender: TObject);
    procedure SpeedSpeichernClick(Sender: TObject);
    procedure FontClick(Sender: TObject);
    procedure SpeedFontClick(Sender: TObject);
  end;

var
  Form57        : TForm57;
  Anzahl, i     : word;
  Fenster       : TRect;
  CurrentFile   : string;
  HolZwischen   : boolean;
  BuendigS      : string;
  Gedrueckt     : array [1..3] of boolean;
  TextS         : string;
  FFaktor       : real;
  Bitmap        : TBitmap;
  Weiter        : array[0..2] of boolean;
  KlickenS      : string[5];
  Punkt         : byte;
  Links, Rechts : word;
  Oben, Unten   : word;
  Ratio         : real;
  BHoeheF       : word;
  Klick         : boolean;
  DnameS        : string;
  Bild          : TBitmap;
  BildI         : TBitmap;

implementation
uses Unit56;
{$R *.DFM}

procedure TForm57.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm57.ShowHint (Sender: TObject);
begin
  StatusBar1.SimpleText := Application.Hint;
end;

procedure TForm57.FormActivate(Sender: TObject);
var
  i  : byte;
  R  : real;
  Rs : string[5];
begin
  Left   := 70;
  Top    := 10;
  Width  := 1050;
  Height := 750;
  setlength (X1Fou, MaxDaten);
  setlength (Y1Fou, MaxDaten);
  setlength (AziFeld, MaxDaten);
  setlength (FalFeld, MaxDaten);
  setlength (SAziFeld, MaxDaten);
  setlength (SFalFeld, MaxDaten);
  DecimalSeparator           := '.';
  Image1.Hint                := Hilf(223);;
  ButtonStart.Hint           := Hilf(225);
  Buttonzurueck.Hint         := Hilf(224);
  Buttonbeenden.Hint         := Hilf(30);
  ButtonPunkte.Hint          := Hilf(226);
  ListBoxDaten.Hint          := Hilf(228);
  LabelGefuegetyp.Hint       := Hilf(229);
  LabelLineare.Hint          := Hilf(229);
  Labelorthografisch.Hint    := Hilf(230);
  LabelProjektion.Hint       := Hilf(230);
  SpeedDrucken.Hint          := Hilf(234);
  SpeedHilfe.Hint            := Hilf(235);
  SpeedHandbuch.Hint         := Hilf(274);
  SpeedFarbe.Hint            := Hilf(365);
  SpeedKopieren.Hint         := Hilf(262);
  SpeedLambert.Hint          := Hilf(387);
  SpeedStereografisch.Hint   := Hilf(388);
  SpeedOrthografisch.Hint    := Hilf(389);
  SpeedKavraiskii.Hint       := Hilf(390);
  SpeedLineare.Hint          := Hilf(336);
  SpeedFlaechen.Hint         := Hilf(337);
  SpeedDatenSpeichern.Hint   := Hilf(204);
  SpeedDatenDrucken.Hint     := Hilf(309);
  SpeedEinrichten.Hint       := Hilf(505);
  SpeedEinfuegen.Hint        := Hilf(246);
  SpeedBGroesse.Hint         := Hilf(583);
  SpeedOeffnen.Hint          := Hilf(368);
  SpeedSpeichern.Hint        := Hilf(264);
  SpeedFont.Hint             := Hilf(686);
  Form57.Caption             := Tx(1443);
  Buttonzurueck.Caption      := Tx(30);
  Buttonbeenden.Caption      := Tx(53);
  LabelDaten.Enabled         := false;
  LabelProjektion.Enabled    := false;
  LabelGefuegetyp.Enabled    := false;
  Labelorthografisch.Caption := '';
  LabelLineare.Caption       := '';
  speichern1.Enabled         := false;
  if RekSimS = 'Rek' then
    ButtonPunkte.Caption     := Tx(912); {Rekonstruktion beenden}
  if RekSimS = 'Sim' then
    ButtonPunkte.Caption     := Tx(941); {Simulation beenden}
  if RekSimS = 'MRSS' then
    ButtonPunkte.Caption     := Tx(941);
  LabelDaten.Caption         := Tx(914); {Datenliste}
  LabelGefuegetyp.Caption    := Tx(915); {Gefuegetyp}
  LabelProjektion.Caption    := Tx(916); {Projektion}
  Projektion.Caption         := Tx(917); {Projektion}
  stereografisch.Caption     := Tx(918);
  orthografisch1.Caption     := Tx(919);
  Gefuegetyp1.Caption        := Tx(920);
  Lineare1.Caption           := Tx(921);
  Flaechen1.Caption          := Tx(922);
  Farbe1.Caption             := Tx(923);
  kopieren1.Caption          := Tx(282);
  speichern1.Caption         := Tx(86);
  speichern2.Caption         := Tx(87);
  speichernD.Caption         := Tx(87);
  speichernDUnter.Caption    := Tx(88);
  Drucker1.Caption           := Tx(934);
  einrichten1.Caption        := Tx(935);
  drucken1.Caption           := Tx(936);
  Hilfe1.Caption             := Tx(937)+' (F1)';
  Projektion.Caption         := Tx(258);
  stereografisch.Caption     := Tx(260);
  Lambert.Caption            := Tx(259);
  Grafik1.Caption            := Tx(281);
  speichern1.Caption         := Tx(284);
  GrafikDrucken.Caption      := Tx(1080);
  DruckerEinrichten.Caption  := Tx(93);
  Gdrucken.Caption           := Tx(94);
  Font.Caption               := Tx(1621);
  LabelAnzahl.Caption        := Tx(913);
  Labelorthografisch.Caption := '';
  LabelLineare.CAption       := '';
  Gefuegetyp                 := 1;
  MaskEditASigma1.EditMask   := '999;0; ';
  MaskEditFSigma1.EditMask   := '99;0; ';
  MaskEditASigma3.EditMask   := '999;0; ';
  MaskEditFSigma3.EditMask   := '99;0; ';
  MaskEditASigma1.Text       := InttoStr(ASigma1);
  MaskEditFSigma1.Text       := InttoStr(FSigma1);
  MaskEditASigma3.Text       := InttoStr(ASigma3);
  MaskEditFSigma3.Text       := InttoStr(FSigma3);
  speichern1.Enabled         := false;
  Drucker1.Enabled           := false;
  SpeedDatenSpeichern.Enabled:= false;
  SpeedDatenDrucken.Enabled  := false;
  ButtonPunkte.Visible       := false;
  Farbe1.Enabled             := false;
  Handbuch.Caption           := Tx(1055)+' (F2)';
  Literatur.Caption          := Tx(1183)+' (F5)';
  SpeedLiteratur.Hint        := Hilf(462);
  PanelSpeed.Visible         := false;
  Grafik1.Enabled            := false;
  LabelFormfaktor.Caption    := TX(1136);
  GrafikDrucken.Caption      := Tx(1080);
  DruckerEinrichten.Caption  := TX(94);
  Gdrucken.Caption           := Tx(93);
  if RekSimS = 'MRSS' then
  begin
    for i := 0 to 10 do
    begin
      R  := i/10;
      RS := FloatToStr(R);
      ListBoxForm.Items.Add (RS);
    end;
    Gefuegetyp1.Enabled     := false;
  end  
  else
  begin
    ButtonStart.Enabled     := true;
    Gefuegetyp1.Enabled     := true;
  end;
  WinWord.Caption        := Tx(1207);
  SpeedWinWord.Hint      := Hilf(470);
  SpeedWinWord.Enabled   := false;
  LabelImport.Caption    := Tx(1158);
  Importieren.Caption    := Tx(1068);
  Zwischenablage.Caption := Tx(1069);
  Datei.Caption          := Tx(57);
  PanelRekonstruktion.Visible := false;
  Importieren.Enabled     := false;
  Projektion.Enabled      := false;
  Gefuegetyp1.Enabled     := false;
  Farbe1.Enabled          := false;
  PanelProjektion.Visible := false;
  PanelProjektion.Caption := Tx(1388);
  Weiter[1]               := false;
  Weiter[2]               := false;
  ButtonAusschneiden.Caption  := Tx(283);
  PanelKlicken.Caption        := Tx(1389);
  PanelKlicken.Visible        := false;
  ButtonAusschneiden.Visible  := false;
  SpeedEinfuegen.Enabled      := false;
  SpeedLambert.Enabled        := false;
  SpeedStereografisch.Enabled := false;
  SpeedOrthografisch.Enabled  := false;
  SpeedKavraiskii.Enabled     := false;
  SpeedLineare.Enabled        := false;
  SpeedFlaechen.Enabled       := false;
  SpeedBGroesse.Enabled       := false;
  SpeedSpeichern.Enabled      := false;
  SpeedEinrichten.Enabled     := false;
  SpeedEinfuegen.Enabled      := false;
  PanelTyp.Visible            := false;
  PanelDaten.Visible          := false;
  PanelFormfaktor.Visible     := false;
  Font.Enabled                := false;
  if RekSimS = 'MRSS' then
  begin
    Gefuegetyp1.Enabled    := false;
    SpeedLineare.Enabled   := false;
    SpeedFlaechen.Enabled  := false;
  end;
  PanelPro.Caption         := Tx(1391);
  PanelStress.Caption      := Tx(1392);
  PanelPro.Visible         := false;
  PanelStress.Visible      := false;
  MaskEditBBreite.EditMask := '99999;0; ';
  MaskEditBHoehe.EditMask  := '99999;0; ';
  LabelBBreite.Caption     := Tx(1440);
  LabelBHoehe.Caption      := Tx(1441);
  BGroesse.Caption         := Tx(1439);
  PanelGroesse.Visible     := false;
  Ratio := Image1.Width/Image1.Height;
  Zwischenablage.Enabled   := false;
  for i := 1 to 7 do
    ListBoxOeffnen.Items.Add (Tx(1611+i));
  ListBoxOeffnen.Visible := false;  
  for i := 1 to 7 do
    ListBoxSpeichern.Items.Add (Tx(1611+i));
  ListBoxSpeichern.Visible := false;  
end;

procedure TForm57.ButtonStartClick(Sender: TObject);
var
  ProS    : string[20];
begin
  if ClipBoard.HasFormat(CF_Bitmap) then
  begin
    Zwischenablage.Enabled := true;
    SpeedEinfuegen.Enabled := true;
  end;
  BHoeheF := round(BBreiteF/Ratio);
  PanelSpeed.Visible  := true;
  if RekSimS = 'Rek' then
  begin
    image2.Visible              := false;
    Importieren.Enabled         := true;
    SpeedEinfuegen.Enabled      := true;
    SpeedOeffnen.Enabled        := true;
    PanelRekonstruktion.Visible := true;
  end;
  if RekSimS = 'Sim' then
  begin
    Projektion.Enabled          := true;
    Gefuegetyp1.Enabled         := true;
    SpeedLambert.Enabled        := true;
    SpeedStereografisch.Enabled := true;
    SpeedOrthografisch.Enabled  := true;
    SpeedKavraiskii.Enabled     := true;
    SpeedLineare.Enabled        := true;
    SpeedFlaechen.Enabled       := true;
    PanelProjektion.Visible     := true;
    Font.Enabled                := true;
    SpeedOeffnen.Enabled        := false;
  end;
  If RekSimS = 'MRSS' then
  begin
    Projektion.Enabled          := true;
    SpeedLambert.Enabled        := true;
    SpeedStereografisch.Enabled := true;
    SpeedOrthografisch.Enabled  := true;
    SpeedKavraiskii.Enabled     := true;
    PanelPro.Visible            := true;
    SpeedOeffnen.Enabled        := false;
  end;
  SpeedFarbe.Enabled          := false;
  Grafik1.Enabled             := false;
  speichern1.Enabled          := false;
  SpeedKopieren.Enabled       := false;
  SpeedDrucken.Enabled        := false;
  SpeedDatenSpeichern.Enabled := false;
  SpeedDatenDrucken.Enabled   := false;
  Drucker1.Enabled        := false;
  LabelDaten.Enabled      := true;
  LabelProjektion.Enabled := true;
  LabelGefuegetyp.Enabled := true;
  Anzahl := 0;
  i      := 0;
  ListboxDaten.Clear;
  if ProjektionS = 'Lambert' then ProS  := Tx(259);
  if ProjektionS = 'stereographic' then ProS := Tx(260);
  if ProjektionS = 'orthographic' then ProS := Tx(849);
  if ProjektionS = 'Kavraiskii' then ProS := 'Kavraiskii';
  Labelorthografisch.Caption := ProS;
  if Gefuegetyp = 1 then LabelLineare.Caption := Tx(169);
  if Gefuegetyp = 2 then LabelLineare.Caption := Tx(170);
  if RekSimS = 'MRSS' then LabelLineare.Caption := Tx(170);
  Xmitte := Image1.Width div 2;
  YMitte := Image1.Height div 2;
  if RekSimS = 'MRSS' then Gefuegetyp := 2;
  if (RekSimS = 'Sim') or (RekSimS = 'MRSS') then
  begin
    Fenster := Rect(0,0,2*Xmitte,2*Ymitte);
    with Image1.Canvas do
    begin
      Brush.Color := clSilver;
      FillRect (Fenster);
      Pen.Color   := Datenfarbe;
      Brush.Color := clWhite;
      Ellipse (Fenster);
      moveto (0, Ymitte);
      lineto (2 * Xmitte, Ymitte);
      moveto (Xmitte, 0);
      lineto (Xmitte, 2 * Ymitte);
    end;
  end;
end;

procedure TForm57.ButtonZurueckClick(Sender: TObject);
var
  Flaeche : TRect;
begin
  AziFeld  := Nil;
  FalFeld  := Nil;
  X1Fou    := Nil;
  Y1Fou    := Nil;
  SAziFeld := NIL;
  SFalFeld := NIL;
  Projektion.Enabled  := true;
  Gefuegetyp1.Enabled := true;
  SpeedLambert.Enabled        := true;
  SpeedStereografisch.Enabled := true;
  SpeedOrthografisch.Enabled  := true;
  SpeedKavraiskii.Enabled     := true;
  SpeedLineare.Enabled        := true;
  SpeedFlaechen.Enabled       := true;
  ListBoxDaten.Clear;
  Flaeche := Rect(0,0,Clientwidth,ClientHeight);
  Loeschen (Image1.Canvas, Flaeche);
  Loeschen (Image2.Canvas, Flaeche);
  Loeschen (Image3.Canvas, Flaeche);
  Form57.Close;
end;

procedure TForm57.ButtonBeendenClick(Sender: TObject);
var
  Flaeche : TRect;
begin
  AziFeld := Nil;
  FalFeld := Nil;
  X1Fou   := Nil;
  Y1Fou   := Nil;
  SAziFeld := NIL;
  SFalFeld := NIL;
  Projektion.Enabled  := true;
  Gefuegetyp1.Enabled := true;
  SpeedLambert.Enabled        := true;
  SpeedStereografisch.Enabled := true;
  SpeedOrthografisch.Enabled  := true;
  SpeedKavraiskii.Enabled     := true;
  SpeedLineare.Enabled        := true;
  SpeedFlaechen.Enabled       := true;
  Loeschen (Image1.Canvas, Flaeche);
  Loeschen (Image2.Canvas, Flaeche);
  Loeschen (Image3.Canvas, Flaeche);
  ListBoxDaten.Clear;
  Form57.Close;
  Form56.Close;
  SetCurrentDir(DirectS);
end;

procedure TForm57.ZwischenablageClick(Sender: TObject);
var
  Rahmen  : TRect;
  Ratio   : real;
  BBreite : word;
  BHoehe  : word;
begin
  Image1.Canvas.CopyMode := cmSrcCopy;
  if ClipBoard.HasFormat(CF_Bitmap) then
  begin
    Bitmap := TBitmap.Create;
    try
      Bitmap.Assign(ClipBoard);
      Ratio := Bitmap.Height/Bitmap.Width;
      if Bitmap.Width > Bitmap.Height then
      begin
        BBreite := Image1.Width;
        BHoehe  := round(Image1.Width*Ratio);
      end
      else
      begin
        BHoehe  := Image1.Height;
        BBreite := round(Image1.Height/Ratio);
      end;
      Rahmen := Rect(0,0,BBreite, BHoehe);
      Image1.Canvas.StretchDraw (Rahmen, Bitmap);
    finally
      Bitmap.free;
    end;
  end
  else MessageDlg(Tx(306), mtInformation,[mbOK],0);  
  Klick := true;
//  GDemo (Image3.Canvas);
end;

procedure TForm57.SpeedEinfuegenClick(Sender: TObject);
begin
  ZwischenablageClick(Sender);
end;

procedure TForm57.DateiClick(Sender: TObject);
begin
  ListBoxOeffnen.Visible := true;
end;

procedure TForm57.SpeedOeffnenClick(Sender: TObject);
begin
  DateiClick(Sender);
end;

procedure TForm57.ListBoxOeffnenClick(Sender: TObject);
var
  i       : byte;
  IWidth  : word;
  IHeight : word;
begin
  BildI         := Graphics.TBitmap.create;
  Image1.Width  := 660;
  Image1.Height := 660;
  IWidth        := Image1.Width;
  IHeight       := Image1.Height;
  try
    for i := 0 to ListboxOeffnen.Items.Count-1 do
    begin
      if ListboxOeffnen.Selected[i] then
      begin
        if i = 0 then OeffnenBMP (OpenPictureDialog1, BildI,
                                  IWidth, IHeight, Image1.Canvas);
        if i = 1 then OeffnenGIF (OpenPictureDialog1, BildI,
                                  IWidth, IHeight, Image1.Canvas);
        if i = 2 then OeffnenTIF (OpenDialog1, BildI,IWidth,
                                  IHeight, Image1.Canvas);
        if i = 3 then OeffnenJPG (OpenDialog1, BildI,IWidth,
                                  IHeight, Image1.Canvas);
        if i = 4 then OeffnenWMF (OpenDialog1, IWidth,
                                  IHeight, Image1.Canvas);
        if i = 5 then OeffnenEMF (OpenDialog1, IWidth,
                                  IHeight, Image1.Canvas);
        if i = 6 then OeffnenPNG (OpenDialog1, BildI, IWidth,
                                  IHeight, Image1.Canvas);
      end;
    end;
  finally
    BildI.Free;
  end;
  Klick := true;
  GDemo;
  ListBoxOeffnen.Visible := false;
end;

procedure TForm57.GDemo;
begin
  PanelRekonstruktion.Visible := false;
  PanelProjektion.Visible := true;
  Projektion.Enabled   := true;
  if RekSimS <> 'MRSS' then
    Gefuegetyp1.Enabled := true;
  SpeedLambert.Enabled         := true;
  SpeedStereografisch.Enabled  := true;
  SpeedOrthografisch.Enabled   := true;
  SpeedKavraiskii.Enabled      := true;
  SpeedLineare.Enabled         := true;
  SpeedFlaechen.Enabled        := true;
  SpeedBGroesse.Enabled        := true;
end;

procedure TForm57.stereografischClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
  ProS  : string[20];
begin
  Weiter[1] := true;
  if Weiter[1] and Weiter[2] then
  begin
    PanelTyp.Visible := true;
    if RekSimS = 'Rek' then
    begin
      PanelKlicken.Visible    := true;
      KlickenS                := 'Durch';
      Punkt                   := 0;
    end
    else
    begin
      KlickenS           := 'Dat';
      Farbe1.Enabled     := true;
      SpeedFarbe.Enabled := true;
    end;
  end;
  if RekSimS = 'Sim' then PanelDaten.Visible := true;
  if RekSimS = 'MRSS' then
  begin
    PanelFormfaktor.Visible := true;
    PanelDaten.Visible      := true;
    PanelTyp.Visible        := true;
    PanelPro.Visible        := false;
    PanelStress.Visible     := true;
  end;
  ProjektionS   := 'stereographic';
  KonfigZeileS[24] := '  Projection               :,stereographic';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ProS := Tx(260);
  LabelOrthografisch.Caption := ProS;
end;

procedure TForm57.LambertClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  Weiter[1] := true;
  if Weiter[1] and Weiter[2] then
  begin
    PanelProjektion.Visible := false;
    PanelTyp.Visible        := true;
    PanelDaten.Visible      := true;
    if RekSimS = 'Sim' then PanelDaten.Visible := true;
    If RekSimS = 'Rek' then
    begin
      PanelKlicken.Visible    := true;
      KlickenS                := 'Durch';
      Punkt                   := 0;
    end
    else
    begin
      KlickenS := 'Dat';
      Farbe1.Enabled     := true;
      SpeedFarbe.Enabled := true;
    end;
  end;
  if RekSimS = 'MRSS' then
  begin
    PanelDaten.Visible      := true;
    PanelTyp.Visible        := true;
    PanelPro.Visible        := false;
    PanelFormfaktor.Visible := true;
    PanelStress.Visible     := true;
  end;
  ProjektionS   := 'Lambert';
  KonfigZeileS[24] := '  Projection               :,Lambert';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  Labelorthografisch.Caption := Tx(259);
end;

procedure TForm57.orthografisch1Click(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  Weiter[1] := true;
  if Weiter[1] and Weiter[2] then
  begin
    PanelProjektion.Visible := false;
    PanelTyp.Visible        := true;
    PanelDaten.Visible      := true;
    if RekSimS = 'Sim' then PanelDaten.Visible := true;
    PanelProjektion.Visible := false;
    If RekSimS = 'Rek' then
    begin
      PanelKlicken.Visible    := true;
      KlickenS                := 'Durch';
      Punkt                   := 0;
    end
    else
    begin
      KlickenS := 'Dat';
      Farbe1.Enabled     := true;
      SpeedFarbe.Enabled := true;
    end;
  end;
  if RekSimS = 'MRSS' then
  begin
    PanelDaten.Visible      := true;
    PanelTyp.Visible        := true;
    PanelPro.Visible        := false;
    PanelFormfaktor.Visible := true;
    PanelStress.Visible     := true;
  end;
  ProjektionS   := 'orthographic';
  KonfigZeileS[24] := '  Projection               :,orthographic';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  LabelOrthografisch.Caption := Tx(849);
end;

procedure TForm57.Kavraiskii1Click(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  Weiter[1]  := true;
  if Weiter[1] and Weiter[2] then
  begin
    PanelProjektion.Visible := false;
    PanelTyp.Visible        := true;
    PanelDaten.Visible      := true;
    if RekSimS = 'Sim' then PanelDaten.Visible := true;
    PanelProjektion.Visible := false;
    If RekSimS = 'Rek' then
    begin
      PanelKlicken.Visible    := true;
      KlickenS                := 'Durch';
      Punkt                   := 0;
    end
    else
    begin
      KlickenS := 'Dat';
      Farbe1.Enabled     := true;
      SpeedFarbe.Enabled := true;
    end;
  end;
  if RekSimS = 'MRSS' then
  begin
    PanelDaten.Visible      := true;
    PanelTyp.Visible        := true;
    PanelPro.Visible        := false;
    PanelFormfaktor.Visible := true;
    PanelStress.Visible     := true;
  end;
  ProjektionS   := 'Kavaraiskii';
  KonfigZeileS[24] := '  Projection               :,Kavraiskii';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  Labelorthografisch.Caption := 'Kavaraiskii';
end;

procedure TForm57.SpeedLambertClick(Sender: TObject);
begin
  LambertClick(Sender);
end;

procedure TForm57.SpeedStereografischClick(Sender: TObject);
begin
  stereografischClick(Sender);
end;

procedure TForm57.SpeedOrthografischClick(Sender: TObject);
begin
  orthografisch1Click(Sender);
end;

procedure TForm57.SpeedKavraiskiiClick(Sender: TObject);
begin
  Kavraiskii1Click(Sender);
end;

procedure TForm57.Lineare1Click(Sender: TObject);
begin
  speichern1.Enabled := true;
  ExtenS             := 'LIN';
  Weiter[2]          := true;
  if Weiter[1] and Weiter[2] then
  begin
    PanelProjektion.Visible := false;
    PanelTyp.Visible        := true;
    PanelDaten.Visible      := true;
    if RekSimS = 'Sim' then PanelDaten.Visible := true;
    PanelProjektion.Visible := false;
    If RekSimS = 'Rek' then
    begin
      PanelKlicken.Visible    := true;
      KlickenS                := 'Durch';
      Punkt                   := 0;
    end;
    If RekSimS = 'Sim' then
    begin
      KlickenS := 'Dat';
      Farbe1.Enabled     := true;
      SpeedFarbe.Enabled := true;
    end;
  end;
  Gefuegetyp   := 1;
  LabelLineare.Caption := Tx(169);
end;

procedure TForm57.Flaechen1Click(Sender: TObject);
begin
  speichern1.Enabled := true;
  ExtenS             := 'PLA';
  Weiter[2]          := true;
  if Weiter[1] and Weiter[2] then
  begin
    PanelProjektion.Visible := false;
    PanelTyp.Visible        := true;
    PanelDaten.Visible      := true;
    if RekSimS = 'Sim' then PanelDaten.Visible := true;
    PanelProjektion.Visible := false;
    If RekSimS = 'Rek' then
    begin
      PanelKlicken.Visible    := true;
      KlickenS                := 'Durch';
      Punkt                   := 0;
    end;
    If RekSimS = 'Sim' then
    begin
      KlickenS := 'Dat';
      Farbe1.Enabled     := true;
      SpeedFarbe.Enabled := true;
    end;
  end;
  Gefuegetyp   := 2;
  LabelLineare.Caption := Tx(170);
end;

procedure TForm57.SpeedLineareClick(Sender: TObject);
begin
  Lineare1Click(Sender);
end;

procedure TForm57.SpeedFlaechenClick(Sender: TObject);
begin
  Flaechen1Click(Sender);
end;

procedure TForm57.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);

var
  NullX     : word;
  NullY     : word;
  KoordX    : integer;
  KoordY    : integer;
  Azimut    : integer;
  AzimutS   : string[4];
  DatenS    : string[8];
  Rho       : real;
  Fallen    : shortint;
  FallenS   : string[3];

begin
  if (not Weiter[1]) or (not Weiter[2]) then exit;
  ButtonPunkte.Visible        := true;
  Projektion.Enabled          := false;
  Gefuegetyp1.Enabled         := false;
  SpeedLambert.Enabled        := false;
  SpeedStereografisch.Enabled := false;
  SpeedOrthografisch.Enabled  := false;
  SpeedKavraiskii.Enabled     := false;
  SpeedLineare.Enabled        := false;
  SpeedFlaechen.Enabled       := false;
  Grafik1.Enabled             := false;
  SpeedKopieren.Enabled       := false;
  Bo := Pi / 180;
  if ssLeft in Shift then
  begin
    if ssDouble in Shift then exit;
    Image1.Canvas.Pen.Color   := Datenfarbe;
    Image1.Canvas.Brush.Color := Datenfarbe;
    Image1.Canvas.Ellipse (X-3,Y-3,X+3,Y+3);
    if KlickenS = 'Durch' then
    begin
      inc(Punkt);
      if Punkt = 1 then Links := x;
      if Punkt = 2 then
      begin
        Rechts := x;
        YMitte := y;
        PanelKlicken.Visible := false;
        ButtonAusschneiden.Visible := true;
        Punkt := 0;
      end;
    end;
    if KlickenS = 'Dat' then
    begin
      NullX := Image1.Width div 2;
      NullY := Image1.Height div 2;
      KoordX := X - NullX;
      KoordY := NullY - Y;
      Rho := sqrt(sqr(KoordX) + sqr(KoordY))/ NullX;
      Fallen := 0;
      if Rho <= 1 then
      begin
        inc (i);
        X1Fou[i] := X;
        Y1Fou[i] := Y;
        Image1.Canvas.Ellipse (X-3,Y-3,X+3,Y+3);
        if KoordY = 0 then KoordY := 1;
        Azimut := round(arctan(KoordX/KoordY)/Bo);
        if KoordY < 0 then Azimut := Azimut + 180;
        if Azimut < 0 then Azimut := 360 + Azimut;
        if (Azimut = 0) and (KoordY < 0) then Azimut := 180;
        if (Azimut = 0) and (KoordY > 0) then Azimut := 0;
        if Gefuegetyp = 2 then
          Azimut := (Azimut + 180) mod 360;
        if ProjektionS = 'Lambert' then
          Fallen := 90 - round(arccos(1- sqr(Rho))/Bo);
        if ProjektionS = 'stereographic' then
          Fallen := 90 - round(2*(arctan(Rho))/Bo);
        if ProjektionS = 'orthographic' then
          Fallen := round(arccos(Rho)/Bo);
        if ProjektionS = 'Kavraiskii' then
          Fallen := round((Pi-Rho*Pi)/(2*Bo));
        if Gefuegetyp = 2 then Fallen := 90 - Fallen;
        AzimutS := IntToStr (Azimut);
        FallenS := IntToStr (Fallen);
        FallenS := RightS(('00'+FallenS),2);
        DatenS  := RightS(('000'+AzimutS),3);
        ListboxDaten.Items.Add ('         '+DatenS+'/'+FallenS);
        AziFeld[i] := Azimut;
        FalFeld[i] := Fallen;
        LabelAnzahl.Caption := Tx(913) + ':  '+ IntToStr(i);
      end;
    end;
  end;
  Anzahl := i;
end;

procedure TForm57.ButtonPunkteClick(Sender: TObject);
var
  i       : word;
  HAzimutS : string;
  HFallenS : string;
  HDatenS  : string;
  SAzimutS : string;
  SFallenS : string;
  SDatenS  : string;
  Theta    : integer;
begin
  speichern1.Enabled := true;
  Drucker1.Enabled   := true;
  SpeedDatenSpeichern.Enabled := true;
  SpeedDatenDrucken.Enabled   := true;
  SpeedBGroesse.Enabled       := true; 
  Grafik1.Enabled             := true;
  SpeedSpeichern.Enabled      := true;
  SpeedKopieren.Enabled       := true;
  SpeedDrucken.Enabled        := true;
  SpeedDatenSpeichern.Enabled := true;
  SpeedDatenDrucken.Enabled   := true;
  SpeedWinWord.Enabled        := true;
  if RekSimS = 'MRSS' then
  begin
    MethodeS := 'Eigenwerte';
    for i := 1 to Anzahl do
    begin
      AziFeld[i] := (AziFeld[i]+180) mod 360;;
      FalFeld[i] := 90-FalFeld[i];
    end;
    Bott (Anzahl,AziFeld,SAziFeld,FalFeld,SFalFeld,FFaktor,Theta);
    for i := 1 to Anzahl do
    begin
      AziFeld[i] := (AziFeld[i]+180) mod 360;
      FalFeld[i] := 90-FalFeld[i];
    end;
    ListBoxDaten.Clear;
    ListBoxDaten.Items.Add (Tx(613)+'  '+Tx(614));
    for i := 1 to Anzahl do
    begin
      HAzimutS := IntToStr (AziFeld[i]);
      HFallenS := IntToStr (FalFeld[i]);
      HFallenS := RightS(('00'+HFallenS),2);
      HDatenS  := RightS(('000'+HAzimutS),3);
      SAzimutS := InttoStr(SAziFeld[i]);
      SFallenS := InttoStr(SFalFeld[i]);
      SFallenS := RightS(('00'+SFallenS),2);
      SDatenS  := RightS (('000'+SAzimutS),3);
      ListboxDaten.Items.Add ('  '+HDatenS+'/'+HFallenS+'       '
                              +SDatens+'/'+SFallenS);
    end;
  end;
end;

procedure TForm57.speichernDClick(Sender: TObject);
begin
   if CurrentFile <> '' then
   begin
     if RekSimS <> 'MRSS' then Speichern(CurrentFile,Anzahl,AziFeld,FalFeld)
     else Stressein(CurrentFile, Anzahl, AziFeld, SAziFeld, FalFeld,SFalFeld);
   end
   else speichernDUnterClick(Sender);
end;

procedure TForm57.speichernDUnterClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := ExtenS;
  if ExtenS = 'LIN' then SaveDialog1.Filter := 'Linears (*.lin)|*.LIN';
  if ExtenS = 'PLA' then SaveDialog1.Filter := 'Planes (*.pla)|*.PLA';
  if ExtenS = 'SLI' then SaveDialog1.Filter := 'Displacement data (*.sli)|*.SLI';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    if RekSimS <> 'MRSS' then Speichern(CurrentFile,Anzahl,AziFeld,FalFeld)
    else Stressein(CurrentFile, Anzahl, AziFeld, SAziFeld, FalFeld,SFalFeld);
  end;
end;

procedure TForm57.SpeedDatenSpeichernClick(Sender: TObject);
begin
  speichernDClick(Sender);
end;

procedure TForm57.einrichten1Click(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TForm57.drucken1Click(Sender: TObject);
begin
  case Gefuegetyp of
    1 : ExtenS := 'LIN';
    2 : ExtenS := 'PLA';
  end;
  Datnam (DateiNameS[0], ExtenS);
  Titel8 ('19', 0, DateiNameS, AziFeld, FalFeld, Anzahl);
end;

procedure TForm57.SpeedDatenDruckenClick(Sender: TObject);
begin
  drucken1Click(Sender);
end;

procedure TForm57.SpeedHilfeClick(Sender: TObject);
begin
  Hilfe1Click(Sender);
end;

procedure TForm57.Farbe1Click(Sender: TObject);
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
end;

procedure TForm57.Hilfe1Click(Sender: TObject);
var
  DateiS      : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    if RekSimS = 'Rek' then
      HelpRouter1.HelpJump(DateiS,'html\Deutsch\19Rekonstruktion.htm');
    if RekSimS = 'Sim' then
      HelpRouter1.HelpJump(DateiS,'html\Deutsch\57Simulation.htm');
    if RekSimS = 'MRSS' then
      HelpRouter1.HelpJump(DateiS,'html\Deutsch\19BerechnungMRSS.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    if RekSimS = 'Rek' then
      HelpRouter1.HelpJump(DateiS,'html\English\19Reconstruction.htm');
    if RekSimS = 'Sim' then
      HelpRouter1.HelpJump(DateiS,'html\English\57Simulation.htm');
    if RekSimS = 'MRSS' then
      HelpRouter1.HelpJump(DateiS,'html\English\19CalculationMRSS.htm');      
  end;
  HelpRouter1.free;
end;

procedure TForm57.SpeedDruckenClick(Sender: TObject);
begin
  drucken1Click(Sender);
end;

procedure TForm57.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Rekonstruktion.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'Reconstruction.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm57.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm57.SpeedFarbeClick(Sender: TObject);
begin
  Farbe1Click(Sender);
end;

procedure TForm57.SpeedKopierenClick(Sender: TObject);
begin
  kopieren1Click(Sender);
end;

procedure TForm57.FontClick(Sender: TObject);
begin
  WaehlFont(FontDialog1);
end;

procedure TForm57.SpeedFontClick(Sender: TObject);
begin
  FontClick(Sender);
end;

procedure TForm57.BGroesseClick(Sender: TObject);
begin
  PanelGroesse.Visible    := true;
  CheckBoxBild.State      := cbUnchecked;
  MaskEditBBreite.Text    := IntTostr(BBreiteF);
  MaskEditBHoehe.Text     := IntToStr(BHoeheF);
end;

procedure TForm57.SpeedBGroesseClick(Sender: TObject);
begin
  BGroesseClick(Sender);
end;

procedure TForm57.MaskEditBBreiteKeyPress(Sender: TObject; var Key: Char);
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

procedure TForm57.MaskEditBHoeheKeyPress(Sender: TObject; var Key: Char);
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

procedure TForm57.CheckBoxBildClick(Sender: TObject);
begin
  PanelGroesse.Visible := false;
end;

procedure TForm57.kopieren1Click(Sender: TObject);
begin
  ClipBoard.Assign (Image1.Picture);
end;

procedure TForm57.speichern2Click(Sender: TObject);
begin
  ListBoxSpeichern.Visible := true;
end;

procedure TForm57.SpeedSpeichernClick(Sender: TObject);
begin
  speichern2Click(Sender);
end;

procedure TForm57.ListBoxSpeichernClick(Sender: TObject);
begin
  BBreiteSt := BBreiteF;
  GrafikSpeichern (Image1, ListBoxSpeichern, Ratio,
                   SavePictureDialog1, SaveDialog1);
  GDemo;
  Klick := true;
end;

procedure TForm57.DruckerEinrichtenClick(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TForm57.SpeedEinrichtenClick(Sender: TObject);
begin
  DruckerEinrichtenClick(Sender);
end;

procedure TForm57.GdruckenClick(Sender: TObject);
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

procedure TForm57.RadioButtonlinksClick(Sender: TObject);
begin
  BuendigS := 'Links';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    ButtonDrucken.Enabled := true;
end;

procedure TForm57.RadioButtonrechtsClick(Sender: TObject);
begin
  BuendigS := 'Rechts';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    ButtonDrucken.Enabled := true;
end;

procedure TForm57.RadioButtonzentriertClick(Sender: TObject);
begin
  BuendigS := 'Zentriert';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    ButtonDrucken.Enabled := true;
end;

procedure TForm57.ButtonDruckenClick(Sender: TObject);
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
  Bitmap.Assign(Image1.picture.graphic);
  with Printer do
  begin
    BeginDoc;
    DruckBitmap (Printer.Canvas, Fenster, RadiusS,
                 XKoordS, YKoordS, TextS, Schrift,
                 BuendigS, Bitmap);
    EndDoc;
  end;
  Bitmap.free;
end;

procedure TForm57.ButtonAbbrechenClick(Sender: TObject);
begin
  Paneldrucken.Visible         := false;
  RadioButtonlinks.Visible     := false;
  RadioButtonzentriert.Visible := false;
  RadioButtonrechts.Visible    := false;
  RadioGroup.Visible           := false;
end;

procedure TForm57.MaskEditUnterschriftKeyPress(Sender: TObject;
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

procedure TForm57.ListBoxSchriftClick(Sender: TObject);
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

procedure TForm57.ListBoxFormClick(Sender: TObject);
var
  i      : byte;
begin
  for i := 1 to ListBoxForm.Items.Count-1 do
  begin
    if ListBoxForm.Selected[i] then
      FFaktor := StrToFloat(ListBoxForm.Items.Strings[i]);
  end;
  CheckBoxOk.State := cbUnchecked;
end;

procedure TForm57.MaskEditFSigma1Change(Sender: TObject);
begin
  CheckBoxOk.State := cbUnchecked;
end;

procedure TForm57.MaskEditASigma3Change(Sender: TObject);
begin
  CheckBoxOk.State := cbUnchecked;
end;

procedure TForm57.MaskEditFSigma3Change(Sender: TObject);
begin
  CheckBoxOk.State := cbUnchecked;
end;

procedure TForm57.MaskEditASigma1Change(Sender: TObject);
begin
  CheckBoxOk.State := cbUnchecked;
end;

procedure TForm57.CheckBoxOKClick(Sender: TObject);
var
  Datei    : TextFile;
  i        : byte;
  ASigma1S : string;
  FSigma1S : string;
  ASigma3S : string;
  FSigma3S : string;
begin
  if CheckBoxOk.State = cbUnchecked then exit;
  PanelStress.Visible := false;
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
    MessageDlg (Tx(243), mtError, [mbRetry],0);    {Kein Wert eingegeben}
    exit;
  end;
  if (ASigma1 > 360) or (FSigma1 > 90) or (ASigma1 < 0)
  or (FSigma1 < 0) then
  begin
    MessageDlg (Tx(71), mtError, [mbRetry],0); {Eingabe fehlerhaft}
    exit;
  end;
  if (ASigma3 > 360) or (FSigma3 > 90) or (ASigma3 < 0)
  or (FSigma3 < 0) then
  begin
    MessageDlg (Tx(71), mtError, [mbRetry],0); {Eingabe fehlerhaft}
    exit;
  end;
  KonfigZeileS[63] := 'Paleo-Stress Azimut Sigma1 :,'+ASigma1S;
  KonfigZeileS[64] := 'Paleo-Stress Dip Sigma1    :,'+FSigma1S;
  KonfigZeileS[65] := 'Paleo-Stress Azimut Sigma3 :,'+ASigma3S;
  KonfigZeileS[66] := 'Paleo-Stress Dip Sigma3    :,'+FSigma3S;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  KlickenS  := 'Dat';
  Weiter[1] := true;
  Weiter[2] := true;
  if DemoB then DemoText (Image1.Canvas,10,Image1.Height-40);
end;

procedure TForm57.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm57.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

procedure TForm57.WinWordClick(Sender: TObject);
begin
  case Gefuegetyp of
    1 : ExtenS := 'LIN';
    2 : ExtenS := 'PLA';
  end;
  if RekSimS = 'MRSS' then ExtenS := 'SLI';
  Datnam (DateiNameS[0], ExtenS);
  SaveDialog1.DefaultExt := 'rtf';
  SaveDialog1.Filter     := 'rtf';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    if RekSimS = 'MRSS' then
      WinDruckPalaeo (CurrentFile,'11', DateiZahl,
                      DateiNameS, AziFeld, FalFeld,
                      SAziFeld, SFalFeld,  Anzahl)
    else
      WinDatei ('19', 0, CurrentFile, DateiNameS, AziFeld,
                FalFeld, Anzahl);
  end;
end;

procedure TForm57.SpeedWinWordClick(Sender: TObject);
begin
  WinWordClick(Sender);
end;

procedure TForm57.ButtonAusschneidenClick(Sender: TObject);
var
  ARect      : TRect;
  Bild       : array of array of TColor;
  i, j, k, l : word;
  Bitmap     : TBitmap;
  Breite     : word;
  Hoehe      : word;
  D1, D2     : word;
begin
  Image3.Width   := 660;
  Image3.Height  := 660;
  Image3.Visible := false;
  setlength(Bild,Image1.Height+1);
  for i:= 0 to Image1.Height do setlength(Bild[i],Image1.Width+1);
  ARect  := Rect(0,0,Image3.Width,Image3.Height);
  D1     := min (Links, Rechts);
  D2     := max (Links, Rechts);
  Radius := (D2 - D1) div 2;
  Oben  := YMitte - Radius;
  Unten := YMitte + Radius;
  k := 0;
  for i := Oben to Unten do
  begin
    l := 0;
    for j := D1 to D2 do
    begin
      Bild[k,l] := Image1.Canvas.pixels[j,i];
      inc(l);
    end;
    inc(k);
  end;
  Breite := D2 - D1;
  Hoehe  := Unten - Oben;
  Image3.Height := Hoehe;
  Image3.Width  := Breite;
  for i := 0 to Hoehe do
  begin
    for j := 0 to Breite do
      Image3.Canvas.Pixels[j,i] := Bild[i,j]
  end;
  Bitmap := TBitmap.Create;
  try
    Bitmap.Assign(Image3.Picture);
    Image1.Canvas.StretchDraw(ARect,Bitmap);
  finally
    Bitmap.free;
  end;
  for i := 1 to Image1.Height do setlength(Bild[i],0);
  Bild := NIL;
  KlickenS := 'Dat';
  ButtonAusschneiden.Visible := false;
  Farbe1.Enabled             := true;
  PanelDaten.Visible         := true;
  if DemoB then DemoText (Image1.Canvas,10,Image1.Height-40);
end;

end.
