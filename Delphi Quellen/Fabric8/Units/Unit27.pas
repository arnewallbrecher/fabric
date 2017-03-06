unit Unit27;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, ExtCtrls, Mask, Menus, Basic,
  Globvar, Standard, Texte, Einausga, Drucken, ComCtrls,
  Buttons, Shellapi, Kalkulat, ehsHelprouter;

type
  TForm27 = class(TForm)
    PanelAzimut: TPanel;
    LabelHarnischflaeche     : TLabel;
    LabelFallazimut: TLabel;
    LabelStriemung           : TLabel;
    Labelpositiv             : TLabel;
    Labelnegativ             : TLabel;
    LabelAusgabe             : TLabel;

    Panel2         : TPanel;
    LabelDaten     : TLabel;
    LabelHarnisch  : TLabel;
    LabelStriemung2: TLabel;

    Panel3     : TPanel;
    LabelAnzahl: TLabel;
    Label00000 : TLabel;
    PanelClar: TPanel;
    LabelHarnischEingabe  : TLabel;
    LabelStriemungEingabe : TLabel;
    MaskEditHarnisch      : TMaskEdit;
    MaskEditStriemung     : TMaskEdit;
    MaskEditHFallen       : TMaskEdit;
    MaskEditSFallen       : TMaskEdit;

    Buttonzurueck       : TButton;
    Buttonbeenden       : TButton;
    ButtonStart         : TButton;
    ButtonEingabebeenden: TButton;
    Buttonplotten       : TButton;

    MainMenu1         : TMainMenu;
    Datenspeichern1   : TMenuItem;
    speichernD: TMenuItem;
    speichernDUnter: TMenuItem;

    Drucker1            : TMenuItem;
    Druckereinrichten1  : TMenuItem;
    drucken1            : TMenuItem;
    PrintDialog1        : TPrintDialog;
    PrinterSetupDialog1 : TPrinterSetupDialog;

    ListBoxDaten: TListBox;

    Panel5       : TPanel;
    SpeedDrucken : TSpeedButton;
    SpeedHilfe   : TSpeedButton;

    PanelMaxDat : TPanel;
    LabelMaxDat : TLabel;
    LabelMenge  : TLabel;

    StatusBar : TStatusBar;
    Hilfe1    : TMenuItem;
    Handbuch: TMenuItem;
    SaveDialog1: TSaveDialog;
    LabelDemo: TLabel;
    SpeedSpeichern: TSpeedButton;
    SpeedHandbuch: TSpeedButton;
    Literatur: TMenuItem;
    SpeedLiteratur: TSpeedButton;
    WinWord: TMenuItem;
    SpeedWinWord: TSpeedButton;
    LabelLoeschen: TLabel;
    SpeedEinrichten: TSpeedButton;
    PanelBrunton: TPanel;
    LabelBHarnisch: TLabel;
    LabelBStriemung: TLabel;
    MaskEditBEingabe: TMaskEdit;
    MaskEditBFallen: TMaskEdit;
    MaskEditNS: TMaskEdit;
    MaskEditBStriemung: TMaskEdit;
    MaskEditBSFallen: TMaskEdit;
    MaskEditBNS: TMaskEdit;
    PanelStreichen: TPanel;
    LabelBFault: TLabel;
    LabelBStriation: TLabel;
    LabelBpositiv: TLabel;
    LabelBnegativ: TLabel;
    LabelBAusgabe: TLabel;
    PanelPitch: TPanel;
    LabelPitch: TLabel;
    MaskEditPitch: TMaskEdit;
    PanelTPitch: TPanel;
    LabelTPitch: TLabel;

    procedure ShowHint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ButtonStartClick(Sender: TObject);
    procedure ButtonEingabebeendenClick(Sender: TObject);
    procedure ButtonzurueckClick(Sender: TObject);
    procedure ButtonbeendenClick(Sender: TObject);
    procedure ButtonplottenClick(Sender: TObject);

    {Daten speichern}
    procedure speichernDClick(Sender: TObject);
    procedure speichernDUnterClick(Sender: TObject);
//    procedure DisketteB1Click(Sender: TObject);

    {Drucker}
    procedure Druckereinrichten1Click(Sender: TObject);
    procedure drucken1Click(Sender: TObject);
    procedure MaskEditHarnischKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditStriemungKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditHFallenKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditSFallenKeyPress(Sender: TObject; var Key: Char);
    procedure Hilfe1Click(Sender: TObject);
    procedure SpeedDruckenClick(Sender: TObject);
    procedure SpeedHilfeClick(Sender: TObject);
    procedure HandbuchClick(Sender: TObject);
    procedure SpeedSpeichernClick(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
    procedure SpeedLiteraturClick(Sender: TObject);
    procedure WinWordClick(Sender: TObject);
    procedure SpeedWinWordClick(Sender: TObject);
    procedure ListBoxDatenClick(Sender: TObject);
    procedure SpeedEinrichtenClick(Sender: TObject);
    procedure MaskEditBEingabeKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditBFallenKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditNSKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditNSKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MaskEditBStriemungKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditBSFallenKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditBNSKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditBNSKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MaskEditPitchKeyPress(Sender: TObject; var Key: Char);
  end;

var
  Form27     : TForm27;
  Anzahl     : word;
  ExtensionS : string;
  HAzimutS   : string;
  HFallS     : string;
  SAzimutS   : string;
  SFallS     : string;
  HAzimut    : word;
  SAzimut    : word;
  HFall      : shortint;
  SFall      : shortint;

implementation
uses Unit26, Unit29, Unit30, Unit31, Unit32, Unit33, Unit34,
     Unit35, Unit99, Unit100;
{$R *.DFM}

procedure TForm27.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm27.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm27.FormActivate(Sender: TObject);
begin
  Left   := 140;
  Top    := 80;
  Width  := 800;
  Height := 620;
  setlength (AziFeld, MaxDaten);
  setlength (FalFeld, MaxDaten);
  setlength (SAziFeld, MaxDaten);
  setlength (SFalFeld, MaxDaten);
  LabelDemo.Visible                := false;
  if DemoB then LabelDemo.Visible  := true;
  LabelMaxDat.Caption          := Tx(981);
  LabelMenge.Caption           := Inttostr(MaxDaten);
  PanelMaxDat.Hint             := Hilf(268);
  if Programm = 11 then Form27.Caption := Tx(1505);
  if Programm = 15 then Form27.Caption := Tx(375);
  {Fabric7: Harnische und Striemungslineare, manuelle Eingabe}
  if Programm = 14 then Form27.Caption := Tx(376);
  {Fabric7: Hoeppener-Diagramm, manuelle Eingabe}
  if Programm = 17 then Form27.Caption := Tx(1511);
  Panel3.Hint                  := Hilf(20);
  Panel2.Hint                  := Hilf(53);
  PanelClar.Hint               := Hilf(49);
  MaskEditHarnisch.Hint        := Hilf(120);
  MaskEditHFallen.Hint         := Hilf(121);
  MaskEditStriemung.Hint       := Hilf(122);
  MaskEditSFallen.Hint         := Hilf(123);
  ButtonStart.Hint             := Hilf(50);
  ButtonEingabebeenden.Hint    := Hilf(26);
  Buttonplotten.Hint           := Hilf(51);
  Buttonzurueck.Hint           := Hilf(18);
  Buttonbeenden.Hint           := Hilf(30);
  ListBoxDaten.Hint            := Hilf(53);
  Panel2.Hint                  := Hilf(53);
  SpeedDrucken.Hint            := Hilf(203);
  SpeedHilfe.Hint              := Hilf(210);
  SpeedSpeichern.Hint          := Hilf(204);
  SpeedHandbuch.Hint           := Hilf(274);
  SpeedEinrichten.Hint         := Hilf(505);
  Datenspeichern1.Caption      := Tx(86);
  speichernD.Caption           := Tx(87);
  speichernDUnter.Caption      := Tx(88);
  Drucker1.Caption             := Tx(92);
  drucken1.Caption             := Tx(93);
  Druckereinrichten1.Caption   := Tx(94);
  Hilfe1.Caption               := Tx(162)+' (F1)';
  LabelHarnischflaeche.Caption := Tx(607);   {Harnischfläche:}
  LabelBHarnisch.Caption       := Tx(615);
  LabelHarnisch.Caption        := Tx(607);
  LabelPitch.Caption           := TX(1399);
  LabelFallazimut.Caption      := Tx(608);   {Fallazimut / Fallwinkel}
  LabelStriemung.Caption       := Tx(609);   {Striemung: Fallazimut ± Fall..}
  LabelBStriemung.Caption      := Tx(616);
  Labelpositiv.Caption         := Tx(610);   {positiv: Aufschiebungen}
  Labelnegativ.Caption         := Tx(611);   {negativ: Abschiebungen}
  LabelAusgabe.Caption         := Tx(612);   {Ausgabe: korrigierte Striemungen}
  LabelAnzahl.Caption          := Tx(138);
  LabelDaten.Caption           := Tx(183);
  LabelHarnisch.Caption        := Tx(613);
  LabelStriemung2.Caption      := Tx(614);
  LabelHarnischEingabe.Caption := Tx(615);
  LabelStriemungEingabe.Caption:= Tx(616);
  ButtonEingabebeenden.Caption := Tx(182);  {Dateneingabe beenden}
  Buttonplotten.Caption        := Tx(241);
  Buttonzurueck.Caption        := Tx(30);
  Buttonbeenden.Caption        := Tx(53);
  ExtenS                       := 'SLI';
  LabelDaten.Enabled           := false;
  LabelHarnisch.Enabled        := false;
  LabelStriemung2.Enabled      := false;
  LabelAnzahl.Enabled          := false;
  Label00000.Caption           := '';
  LabelHarnischEingabe.Enabled := false;
  LabelStriemungEingabe.Enabled:= false;
  ButtonEingabeBeenden.Enabled := false;
  Buttonplotten.Enabled        := false;
  MaskEditHarnisch.EditMask    := '999;0; ';
  MaskEditHFallen.EditMask     := '99;0; ';
  MaskEditStriemung.EditMask   := '999;0; ';
  MaskEditSFallen.EditMask     := '#99;0; ';
  MaskEditBEingabe.EditMask    := '999;0; ';
  MaskEditBFallen.EditMask     := '99;0; ';
  MaskEditBStriemung.EditMask  := '999;0; ';
  MaskEditBSFallen.EditMask    := '#99;0; ';
  MaskEditNS.EditMask          := 'L;0; ';
  MaskEditBNS.EditMask         := 'L;0; ';
  MaskEditPitch.EditMask       := '#999;0; ';
  MaskEditHarnisch.Enabled     := false;
  MaskEditStriemung.Enabled    := false;
  MaskEditHFallen.Enabled      := false;
  MaskEditSFallen.Enabled      := false;
  MaskEditBEingabe.Enabled     := false;
  MaskEditBFallen.Enabled      := false;
  LabelBHarnisch.Enabled       := false;
  LabelBStriemung.Enabled      := false;
  Buttonzurueck.Enabled        := false;
  Buttonbeenden.Enabled        := false;
  ListBoxDaten.Enabled         := false;
  Datenspeichern1.Enabled      := false;
  Drucker1.Enabled             := false;
  SpeedDrucken.Enabled         := false;
  SpeedSpeichern.Enabled       := false;
  Handbuch.Caption             := Tx(1055)+' (F2)';
  Literatur.Caption            := Tx(1183)+' (F5)';
  SpeedLiteratur.Hint          := Hilf(462);
  WinWord.Caption              := TX(1207);
  SpeedWinWord.Hint            := Hilf(470);
  SpeedWinWord.Enabled         := false;
  LabelLoeschen.Caption        := Tx(1257);
  LabelLoeschen.Visible        := false;
  SpeedEinrichten.Enabled      := false;
  LabelBFault.Caption          := Tx(1397);
  LabelBStriation.Caption      := Tx(1398);
  LabelBpositiv.Caption        := Tx(610);
  LabelBnegativ.Caption        := Tx(611);
  LabelBAusgabe.Caption        := Tx(612);
  LabelPitch.Caption           := Tx(1399);
  LabelPitch.Enabled           := false;
  if PitchS = 'Ja'   then PanelTPitch.Visible := true;
  if PitchS = 'nein' then PanelTPitch.Visible := false;
  if PitchSinnS = 'Uhrzeiger' then
    LabelTPitch.Caption := Tx(1400);
  if PitchSinnS = 'gegenUhr'  then
    LabelTPitch.Caption := Tx(1401);
  If KompassS = 'Clar' then
  begin
    PanelClar.Visible      := true;
    PanelAzimut.Visible    := true;
    PanelBrunton.Visible   := false;
    PanelStreichen.Visible := false;
  end;
  if KompassS = 'Brunton' then
  begin
    PanelAzimut.Visible    := false;
    PanelStreichen.Visible := true;
    PanelClar.Visible      := false;
    PanelBrunton.Visible   := true;
  end;
  if PitchS = 'Ja'   then PanelPitch.Visible := true;
  if PitchS = 'nein' then PanelPitch.Visible := false;
end;

procedure TForm27.ButtonStartClick(Sender: TObject);         {Start}
begin
  ListBoxDaten.Clear;
  Anzahl                        := 0;
  LabelPitch.Enabled            := true;
  LabelBHarnisch.Enabled        := true;
  Buttonzurueck.Enabled         := true;
  Buttonbeenden.Enabled         := true;
  LabelDaten.Enabled            := true;
  LabelAnzahl.Enabled           := true;
  LabelHarnisch.Enabled         := true;
  LabelStriemung2.Enabled       := true;
  if KompassS = 'Clar' then
  begin
    LabelHarnischEingabe.Enabled  := true;
    LabelStriemungEingabe.Enabled := true;
    MaskEditHarnisch.Enabled      := true;
    MaskEditHarnisch.Setfocus;
  end;
  if KompassS = 'Brunton' then
  begin
    LabelBHarnisch.Enabled   := true;
    LabelBStriemung.Enabled  := true;
    MaskEditBEingabe.Enabled := true;
    MaskEditBEingabe.SetFocus;
  end;
  LabelLoeschen.Visible         := true;
end;

procedure TForm27.MaskEditHarnischKeyPress(Sender: TObject; var Key: Char);
var
  MaxAzi : word;
begin
  MaxAzi := 360;
  if Winkel = 2 then MaxAzi := 400;
  if Key = chr(13) then
  begin
    HAzimutS := MaskEditHarnisch.Text;
    LeerLoeschen (HAzimutS);
    if HAzimutS = '' then exit;
    HAzimut := StrToInt(HAzimutS);
    if HAzimut <= MaxAzi then
    begin
      MaskEditHFallen.Enabled := true;
      MaskEditHFallen.SetFocus;
      MaskEditHarnisch.Enabled := false;
    end
    else
    begin
      MaskEditHarnisch.Clear;
      MaskEditHarnisch.SetFocus;
    end;
  end;
end;

procedure TForm27.MaskEditHFallenKeyPress(Sender: TObject; var Key: Char);
var
  MaxFall : shortint;
begin
  MaxFall := 90;
  if Winkel = 2 then MaxFall := 100;
  if Key = chr(13) then
  begin
    HFallS := MaskEditHFallen.Text;
    LeerLoeschen (HFalls);
    if HFallS = '' then exit;
    HFall := StrToInt(HFallS);
    if HFall<= MaxFall then
    begin
      if PitchS = 'Ja' then
      begin
        MaskEditPitch.Enabled := true;
        MaskEditPitch.SetFocus;
      end
      else
      begin
        MaskEditStriemung.Enabled := true;
        MaskEditStriemung.SetFocus;
      end;
      MaskEditHFallen.Enabled := false;
    end
    else
    begin
      MaskEditHFallen.Clear;
      MaskEditHFallen.SetFocus;
    end;
  end;
end;

procedure TForm27.MaskEditBEingabeKeyPress(Sender: TObject; var Key: Char);
var
  MaxAzi : word;
begin
  if Winkel = 1 then MaxAzi := 360 else MaxAzi := 400;
  if Key = chr(13) then
  begin
    HAzimutS := MaskEditBEingabe.Text;
    LeerLoeschen (HAzimutS);
    if HAzimutS = '' then exit
    else
    begin
      HAzimut := StrToInt (HAzimutS);
      if HAzimut <= MaxAzi then
      begin
        MaskEditBFallen.Enabled := true;
        MaskEditBFallen.SetFocus;
        MaskEditBEingabe.Enabled := false;
      end
      else
      begin
        MaskEditBEingabe.Clear;
        MaskEditBEingabe.SetFocus;
      end;
    end;
  end;
end;

procedure TForm27.MaskEditBFallenKeyPress(Sender: TObject; var Key: Char);
var
  MaxFall : shortint;
begin
  if key = chr(13) then
  begin
    HFallS   := MaskEditBFallen.Text;
    LeerLoeschen(HFallS);
    if HFallS = '' then exit;
    HFall := StrToInt(HFallS);
    MaxFall := 90;
    if Winkel = 2 then MaxFall := 100;
    if HFall <= MaxFall then
    begin
      if Winkel = 2 then Neugrad (HAzimut, HFall);
      MaskEditBFallen.Enabled := false;
      MaskEditNS.Enabled := true;
      MaskEditNS.SetFocus;
    end
    else
    begin
      MaskEditBFallen.Clear;
      MaskEditBFallen.SetFocus;
    end;
  end;
end;

procedure TForm27.MaskEditNSKeyPress(Sender: TObject; var Key: Char);
var
  NordSudS : string;
  Azi      : integer;
begin
  if key = chr(13) then
  begin
    ListBoxDaten.Enabled := true;
    NordSudS := UcaseS(MaskEditNS.Text);
    Azi := HAzimut;
    if NordSudS = '' then exit;
    if PitchS = 'nein' then inc(Anzahl);
    if NordSudS = 'N' then
    begin
      if Azi > 180 then Azi := Azi -180;
      Azi := Azi - 90;
      if Azi <0 then Azi := Azi + 360;
    end;
    if NordSudS = 'S' then
    begin
      if Azi > 180 then Azi := Azi -180;
      Azi := Azi + 90;
      if Azi >360 then Azi := Azi - 360;
    end;
    HAzimut  := Azi;
    AziFeld[Anzahl]            := HAzimut;
    FalFeld[Anzahl]            := HFall;
    MaskEditBStriemung.Enabled := true;
    if PitchS = 'nein' then
    begin
      MaskEditBEingabe.Text := '   ';
      MaskEditBFallen.Text  := '  ';
      MaskEditNS.Text       := ' ';
      MaskEditBStriemung.SetFocus;
    end;
    if PitchS = 'Ja'   Then MaskEditPitch.SetFocus;
    MaskEditNS.Enabled := false;
    ButtonEingabeBeenden.Enabled := true;
  end;
end;

procedure TForm27.MaskEditNSKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  NS : string[1];
begin
  NS := UcaseS(MaskEditNS.Text);
  if (NS <> 'N') and (NS <> 'S') then
  begin
    MaskEditNS.Clear;
    MaskEditNS.SetFocus;
  end;
end;

procedure TForm27.MaskEditPitchKeyPress(Sender: TObject; var Key: Char);
var
  WPitchS  : string;
  WPitch   : integer;
  RAzi     : word;
  RFall    : shortint;
  Sunrot   : integer;
  RadAzi   : extended;
  RadFall  : extended;
  Aa, B, C : array [0..2] of extended;
  Z        : byte;
  Sign     : shortint;
  ZeileS   : string;
  AnzahlS  : string;
begin
  if key = chr(13) then
  begin
    WPitchS := MaskEditPitch.Text;
    WPitch  := abs(StrToInt(WPitchS));
    Sunrot  := 0;
    if PitchSinnS = 'gegenUhr' then
    begin
      WPitch := -WPitch;
      Sunrot := HAzimut + 90;
    end;
    if PitchSinnS = 'Uhrzeiger' then Sunrot := HAzimut - 90;
    RAzi    := (HAzimut + 180) mod 360;
    RFall   := 90 - HFall;
    if Sunrot <0 then Sunrot := Sunrot + 360;
    Sunrot := Sunrot mod 360;
    Abc (WPitch,RAzi,RFall,RadAzi,RadFall,Aa,B,C,Z);
    Rotieren (Aa,B,C,1,Sunrot,0,Z,RadAzi,RadFall,SAzimut,SFall,Sign);
    if copy(WPitchS,1,1) = '-' then SFall := -SFall;
    inc(Anzahl);
    HFallS   := IntToStr(HFall);
    SAzimutS := IntToStr(SAzimut);
    SFallS   := IntToStr(SFall);
    HAzimutS               := RightS ('000' + HAzimutS,3);
    HFallS                 := RightS ('00' + HFallS, 2);
    SAzimutS               := RightS ('000' + SAzimutS,3);
    SFallS                 := RightS ('00' + SFallS,3);
    AziFeld[Anzahl]        := HAzimut;
    FalFeld[Anzahl]        := HFall;
    SAziFeld[Anzahl]       := SAzimut;
    SFalFeld[Anzahl]       := SFall;
    ListBoxDaten.Enabled   := true;
    ZeileS    := '  '+HAzimutS+'/'+HFallS+'    '+SazimutS+'/'+SFallS;
    AnzahlS   := IntToStr (Anzahl);
    AnzahlS   := RightS ('     '+AnzahlS,5);
    Label00000.Caption := AnzahlS;       {Anzahl der Daten ausgeben}
    ListBoxDaten.Items.Add (ZeileS);
    ButtonEingabebeenden.Enabled := true;
    MaskEditPitch.Text := '    ';
    if KompassS = 'Clar' then
    begin
      MaskEditHarnisch.Text  := '   ';
      MaskEditHFallen.Text   := '  ';
      MaskEditHarnisch.Enabled := true;
      MaskEditHarnisch.SetFocus;
    end;
    if KompassS = 'Brunton' then
    begin
      MaskEditBEingabe.Text    := '   ';
      MaskEditBFallen.Text     := '   ';
      MaskEditNS.Text          := ' ';
      MaskEditBEingabe.Enabled := true;
      MaskEditBEingabe.SetFocus;
    end;
  end;
end;

procedure TForm27.MaskEditStriemungKeyPress(Sender: TObject;
  var Key: Char);
var
  MaxAzi : word;
begin
  MaxAzi := 360;
  if Winkel = 2 then MaxAzi := 400;
  if Key = chr(13) then
  begin
    SAzimutS := MaskEditStriemung.Text;
    LeerLoeschen (SAzimutS);
    if SAzimutS = '' then exit;
    SAzimut := StrToInt(SAzimutS);
    if SAzimut <= MaxAzi then
    begin
      MaskEditSFallen.Enabled := true;
      MaskEditSFallen.SetFocus;
      MaskEditStriemung.Enabled := false;
    end
    else
    begin
      MaskEditStriemung.Clear;
      MaskEditStriemung.SetFocus;
    end;
  end;
end;

procedure TForm27.MaskEditBStriemungKeyPress(Sender: TObject;
  var Key: Char);
var
  MaxAzi : word;
begin
  if Winkel = 1 then MaxAzi := 360 else MaxAzi := 400;
  if Key = chr(13) then
  begin
    SAzimutS := MaskEditBStriemung.Text;
    LeerLoeschen (SAzimutS);
    if SAzimutS = '' then exit
    else
    begin
      SAzimut := StrToInt (SAzimutS);
      if SAzimut <= MaxAzi then
      begin
        MaskEditBSFallen.Enabled := true;
        MaskEditBSFallen.SetFocus;
        MaskEditBStriemung.Enabled := false;
      end
      else
      begin
        MaskEditBStriemung.Clear;
        MaskEditBStriemung.SetFocus;
      end;
    end;
  end;
end;

procedure TForm27.MaskEditSFallenKeyPress(Sender: TObject; var Key: Char);
var
  AnzahlS  : string[6];
  ZeileS   : string[40];
  MaxFall  : shortint;
begin
  MaxFall := 90;
  if Winkel = 2 then MaxFall := 100;
  if key = chr(13) then
  begin
    ListBoxDaten.Enabled := true;
    SFallS   := MaskEditSFallen.Text;
    LeerLoeschen (SFallS);
    if SFallS = '' then exit;
    SFall := StrToInt(SFallS);
    if abs(SFall) > MaxFall then
    begin
      MaskEditSFallen.Clear;
      MaskEditSFallen.SetFocus;
      exit;
    end;
    MaskEditHarnisch.Enabled := true;
    MaskEditHarnisch.SetFocus;
    MaskEditSFallen.Enabled := false;
    if Winkel = 2 then
    begin
      Neugrad (HAzimut, HFall);
      Neugrad (SAzimut, SFall);
    end;
    inc(Anzahl);
    HAzimutS := IntToStr(HAzimut);
    HFallS   := IntToStr(HFall);
    SAzimutS := IntToStr(SAzimut);
    SFallS   := IntToStr(SFall);
    HAzimutS               := RightS ('000' + HAzimutS,3);
    HFallS                 := RightS ('00' + HFallS, 2);
    SAzimutS               := RightS ('000' + SAzimutS,3);
    SFallS                 := RightS ('00' + SFallS,3);
    MaskEditHarnisch.Text  := '   ';
    MaskEditHFallen.Text   := '  ';
    MaskEditStriemung.Text := '   ';
    MaskEditSFallen.Text   := '   ';
    AziFeld[Anzahl]        := HAzimut;
    FalFeld[Anzahl]        := HFall;
    SAziFeld[Anzahl]       := SAzimut;
    SFalFeld[Anzahl]       := SFall;
    ZeileS    := '  '+HAzimutS+'/'+HFallS+'    '+SazimutS+'/'+SFallS;
    AnzahlS   := IntToStr (Anzahl);
    AnzahlS   := RightS ('     '+AnzahlS,5);
    Label00000.Caption := AnzahlS;       {Anzahl der Daten ausgeben}
    ListBoxDaten.Items.Add (ZeileS);
    ButtonEingabebeenden.Enabled := true;
  end;
end;

procedure TForm27.MaskEditBSFallenKeyPress(Sender: TObject; var Key: Char);
var
  MaxFall : shortint;
begin
  if key = chr(13) then
  begin
    SFallS   := MaskEditBSFallen.Text;
    LeerLoeschen(SFallS);
    if SFallS = '' then exit;
    SFall := StrToInt(SFallS);
    MaxFall := 90;
    if Winkel = 2 then MaxFall := 100;
    if abs(SFall) <= MaxFall then
    begin
      if Winkel = 2 then Neugrad (SAzimut, SFall);
      MaskEditBSFallen.Enabled := false;
      MaskEditBNS.Enabled := true;
      MaskEditBNS.SetFocus;
    end
    else
    begin
      MaskEditBSFallen.Clear;
      MaskEditBSFallen.SetFocus;
    end;
  end;
end;

procedure TForm27.MaskEditBNSKeyPress(Sender: TObject; var Key: Char);
var
  NordSudS : string;
  ZeileS   : string;
  AnzahlS  : string;
  Azi      : integer;
begin
  if key = chr(13) then
  begin
    ListBoxDaten.Enabled := true;
    NordSudS := UcaseS(MaskEditBNS.Text);
    Azi := SAzimut;
    if NordSudS = '' then exit;
    if NordSudS = 'N' then
    begin
      if Azi > 180 then Azi := Azi -180;
      if Azi >90 then Azi := Azi + 180;
    end;
    if NordSudS = 'S' then
    begin
      if Azi <90 then Azi  := Azi + 180;
      if Azi >270 then Azi := Azi - 180;
    end;
    SAzimut  := Azi;
    AnzahlS := IntToStr (Anzahl);
    AnzahlS := RightS ('     '+AnzahlS,5);
    Label00000.Caption := AnzahlS;
    MaskEditBStriemung.Text  := '   ';
    MaskEditBSFallen.Text    := '  ';
    MaskEditBNS.Text         := ' ';
    AziFeld[Anzahl]          := HAzimut;
    FalFeld[Anzahl]          := HFall;
    SAziFeld[Anzahl]         := SAzimut;
    SFalFeld[Anzahl]         := SFall;          
    HAzimutS := IntToStr(HAzimut);
    HFallS   := IntToStr(HFall);
    SAzimutS := IntToStr(SAzimut);
    SFallS   := IntToStr(SFall);
    HAzimutS := RightS ('000' + HAzimutS,3);
    HFallS   := RightS ('00' + HFallS, 2);
    SAzimutS := RightS ('000' + SAzimutS,3);
    SFallS   := RightS ('00' + SFallS,3);
    ZeileS    := '  '+HAzimutS+'/'+HFallS+'    '+SazimutS+'/'+SFallS;
    AnzahlS   := IntToStr (Anzahl);
    AnzahlS   := RightS ('     '+AnzahlS,5);
    Label00000.Caption := AnzahlS;       {Anzahl der Daten ausgeben}
    ListBoxDaten.Items.Add (ZeileS);
    MaskEditBEingabe.Enabled := true;
    MaskEditBEingabe.SetFocus;
    MaskEditBNS.Enabled      := false;
    ButtonEingabeBeenden.Enabled := true;
  end;
end;

procedure TForm27.MaskEditBNSKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  NS : string[1];
begin
  NS := UcaseS(MaskEditBNS.Text);
  if (NS <> 'N') and (NS <> 'S') then
  begin
    MaskEditBNS.Clear;
    MaskEditBNS.SetFocus;
  end;
end;

procedure TForm27.ListBoxDatenClick(Sender: TObject);
var
  i        : word;
  Geloscht : word;
  AziNeu   : array of word;
  FalNeu   : array of shortint;
  SAziNeu  : array of word;
  SFalNeu  : array of shortint;
begin
  Setlength (AziNeu,Anzahl+1);
  Setlength (FalNeu, Anzahl+1);
  Setlength (SAziNeu, Anzahl+1);
  Setlength (SFalNeu, Anzahl+1);
  Geloscht := 0;
  for i := 1 to Anzahl do
  begin
    AziNeu[i]  := AziFeld[i];
    FalNeu[i]  := FalFeld[i];
    SAziNeu[i] := SAziFeld[i];
    SFalNeu[i] := SFalFeld[i];
  end;
  for i := 0 to ListBoxDaten.Items.Count-1 do
  begin
    if ListBoxDaten.Selected[i] then
    begin
      Geloscht := i+1;
      ListBoxDaten.Items.Delete(i);
      break;
    end;
  end;
  for i := 1 to Geloscht-1 do
  begin
    AziFeld[i]  := AziNeu[i];
    FalFeld[i]  := FalNeu[i];
    SAziFeld[i] := SAziNeu[i];
    SFalFeld[i] := SFalNeu[i];
  end;
  for i:= Geloscht to Anzahl-1 do
  begin
    AziFeld[i]  := AziNeu[i+1];
    FalFeld[i]  := FalNeu[i+1];
    SAziFeld[i] := SAziNeu[i+1];
    SFalFeld[i] := SFalNeu[i+1];
  end;
  Anzahl := Anzahl - 1;
  Label00000.Caption := IntToStr(Anzahl);
  MaskEditHarnisch.SetFocus;
  AziNeu  := nil;
  FalNeu  := nil;
  SAziNeu := nil;
  SFalNeu := nil;
end;

procedure TForm27.ButtonzurueckClick(Sender: TObject);
begin
  AziFeld  := NIL;
  FalFeld  := NIL;
  SAziFeld := NIL;
  SFalFeld := NIL;
  Form27.Close;
end;

procedure TForm27.ButtonbeendenClick(Sender: TObject);
begin
  AziFeld  := NIL;
  FalFeld  := NIL;
  SAziFeld := NIL;
  SFalFeld := NIL;
  Form27.Close;
  if Programm = 11 then Form26.Close;
  if Programm = 14 then Form32.Close;
  if Programm = 15 then Form30.Close;
  if Programm = 17 then Form35.Close;
  SetCurrentDir(DirectS);
end;

procedure TForm27.ButtonEingabebeendenClick(Sender: TObject);
var
  i    : word;
  HAzi : word;
  HFal : word;
  SAzi : word;
  SFal : shortint;
begin
  Buttonplotten.Enabled      := true;
  Datenspeichern1.Enabled    := true;
  Druckereinrichten1.Enabled := true;
  Buttonplotten.Enabled      := true;
  Drucker1.Enabled           := true;
  SpeedDrucken.Enabled       := true;
  SpeedSpeichern.Enabled     := true;
  SpeedWinWord.Enabled       := true;
  SpeedEinrichten.Enabled    := true;
  for i := 1 to Anzahl do
  begin
    HAzi := AziFeld[i];
    HFal := FalFeld[i];
    SAzi := SAziFeld[i];
    SFal := SFalfeld[i];
    Korrdaten (15,HAzi,SAzi,HFal,SFal);
    SAziFeld[i] := SAzi;
    SFalFeld[i] := SFal;
  end;
end;

procedure TForm27.speichernDClick(Sender: TObject);
begin
   if CurrentFile <> '' then Stressein(CurrentFile, Anzahl,
      AziFeld, SAziFeld, FalFeld, SFalFeld)
   else speichernDUnterClick(Sender);
end;

procedure TForm27.speichernDUnterClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := ExtenS;
  SaveDialog1.Filter     := 'Displacement Data (*.sli)|*.SLI';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    Stressein(CurrentFile, Anzahl, AziFeld, SAziFeld, FalFeld,
              SFalFeld);
  end;
end;

procedure TForm27.Druckereinrichten1Click(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TForm27.SpeedEinrichtenClick(Sender: TObject);
begin
  DruckerEinrichten1Click(Sender);
end;

procedure TForm27.drucken1Click(Sender: TObject);
begin
  Datnam (DateiNameS[0], ExtensionS);
  DruckPalaeo ('11', 0, DateiNameS, AziFeld, FalFeld,
               SAziFeld, SFalFeld, Anzahl);
end;

procedure TForm27.ButtonplottenClick(Sender: TObject);
begin
  ZahlGlob := Anzahl;
  if (Programm = 11) then Form29.Show;
  if Programm = 14 then Form33.Show;
  if Programm = 15 then Form31.Show;
  if Programm = 17 then
  begin
    if MethodeS = 'Eigenwerte' then Form34.Show;
    if MethodeS = 'Iteration'  then Form99.Show;
    if MethodeS = 'Direkt'     then Form100.Show;
  end;
end;

procedure TForm27.Hilfe1Click(Sender: TObject);
var
  DateiS      : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\27Palaeospannung-man.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\27PaleoStress-man.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm27.SpeedSpeichernClick(Sender: TObject);
begin
  speichernDUnterClick(Sender);
end;

procedure TForm27.SpeedDruckenClick(Sender: TObject);
begin
  drucken1Click(Sender);
end;

procedure TForm27.SpeedHilfeClick(Sender: TObject);
begin
  Hilfe1Click(Sender);
end;

procedure TForm27.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if Programm = 11 then
  begin
    if SpracheS = 'DEUTSCH' then HilfeS := 'Palaeo-Spannung.doc';
    if SpracheS = 'ENGLISH' then HilfeS := 'Palaeo-Stress.doc';
    ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
                 nil,nil,sw_normal);
  end;
  if Programm = 14 then
  begin
    if SpracheS = 'DEUTSCH' then HilfeS := 'Hoeppener.doc';
    if SpracheS = 'ENGLISH' then HilfeS := 'Hoeppener-E.doc';
    ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
                 nil,nil,sw_normal);
  end;
  if Programm = 15 then
  begin
    if SpracheS = 'DEUTSCH' then HilfeS := 'Harnischflaechen.doc';
    if SpracheS = 'ENGLISH' then HilfeS := 'Slickensides.doc';
    ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
                 nil,nil,sw_normal);
  end;
  if Programm = 17 then
  begin
    if SpracheS = 'DEUTSCH' then HilfeS := 'Formfaktor.doc';
    if SpracheS = 'ENGLISH' then HilfeS := 'Shape-factor.doc';
    ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
                 nil,nil,sw_normal);
  end;
end;

procedure TForm27.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm27.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm27.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

procedure TForm27.WinWordClick(Sender: TObject);
begin
  Datnam (DateiNameS[0], Extens);
  SaveDialog1.DefaultExt := 'rtf';
  SaveDialog1.Filter     := 'rtf';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    WinDruckPalaeo (CurrentFile,'11', 0, DateiNameS, AziFeld, FalFeld,
               SAziFeld, SFalFeld, Anzahl);
  end;
end;

procedure TForm27.SpeedWinWordClick(Sender: TObject);
begin
  WinWordClick(Sender);
end;

end.
