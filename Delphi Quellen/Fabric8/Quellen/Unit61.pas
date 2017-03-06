unit Unit61;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, Menus, StdCtrls, Mask, ExtCtrls, ComCtrls,
  Buttons, Texte, Globvar, Standard, Basic, Einausga, Drucken,
  Shellapi, ehsHelpRouter;

type
  TForm61 = class(TForm)
    ButtonStart   : TButton;
    ButtonEingabe : TButton;
    ButtonPlotten : TButton;
    ButtonZurueck : TButton;
    ButtonBeenden : TButton;

    PanelDaten  : TPanel;
    LabelDaten  : TLabel;
    ListBoxDaten: TListBox;

    PanelFallazimut: TPanel;
    LabelFallazimut: TLabel;
    LabelVorzeichen: TLabel;
    LabelKompression: TLabel;

    PanelAnzahl : TPanel;
    LabelAnzahl : TLabel;
    LabelZahl   : TLabel;

    PanelDateneingabe : TPanel;
    LabelEingabe      : TLabel;

    MaskEditAzimut    : TMaskEdit;
    MaskEditFallen    : TMaskEdit;

    MainMenu1      : TMainMenu;
    DatenSpeichern : TMenuItem;
    speichernD: TMenuItem;
    speichernDUnter: TMenuItem;

    Drucker1       : TMenuItem;
    einrichten     : TMenuItem;
    drucken        : TMenuItem;

    Hilfe: TMenuItem;

    PanelSpeed     : TPanel;
    SpeedFestplatte: TSpeedButton;
    SpeedDrucken   : TSpeedButton;
    SpeedHilfe     : TSpeedButton;

    StatusBar1         : TStatusBar;
    PrinterSetupDialog1: TPrinterSetupDialog;
    PrintDialog1       : TPrintDialog;
    Handbuch: TMenuItem;
    SaveDialog1: TSaveDialog;
    LabelDemo: TLabel;
    SpeedHandbuch: TSpeedButton;
    Literatur: TMenuItem;
    SpeedLiteratur: TSpeedButton;
    WinWord: TMenuItem;
    SpeedWinWord: TSpeedButton;
    LabelLoeschen: TLabel;
    SpeedEinrichten: TSpeedButton;
    PanelBrunton: TPanel;
    LabelBEingabe: TLabel;
    MaskEditBEingabe: TMaskEdit;
    MaskEditBFallen: TMaskEdit;
    MaskEditNS: TMaskEdit;
    PanelStreichen: TPanel;
    LabelStreichen: TLabel;
    LabelNS: TLabel;
    LabelDehnung: TLabel;
    LabelKompr: TLabel;

    procedure FormShow(Sender: TObject);
    procedure ShowHint(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ButtonStartClick(Sender: TObject);
    procedure MaskEditAzimutKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditFallenKeyPress(Sender: TObject; var Key: Char);
    procedure ButtonEingabeClick(Sender: TObject);
    procedure ButtonZurueckClick(Sender: TObject);
    procedure ButtonBeendenClick(Sender: TObject);
    procedure speichernDClick(Sender: TObject);
    procedure speichernDUnterClick(Sender: TObject);
    procedure einrichtenClick(Sender: TObject);
    procedure druckenClick(Sender: TObject);
    procedure ButtonPlottenClick(Sender: TObject);
    procedure HilfeClick(Sender: TObject);
    procedure SpeedHilfeClick(Sender: TObject);
    procedure HandbuchClick(Sender: TObject);
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
  end;

var
  Form61     : TForm61;
  Anzahl     : word;
  ExtensionS : string;
  AzimutS    : string;
  FallenS    : string;
  TAzimut    : integer;
  Fall       : shortint;
  Azimut     : word;

implementation
uses Unit63, Unit60;

{$R *.DFM}
procedure TForm61.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm61.ShowHint (Sender: TObject);
begin
  StatusBar1.SimpleText := Application.Hint;
end;

procedure TForm61.FormActivate(Sender: TObject);
begin
  Left   := LeftDiag + ULap;
  Top    := TopDiag + ULap;
  Width  := WidForm;
  Height := HeiForm;
  LabelDemo.Visible                := false;
  if DemoB then LabelDemo.Visible  := true;
  PanelAnzahl.Hint        := Hilf(20);
  MaskEditAzimut.Hint     := Hilf(43);
  MaskEditFallen.Hint     := Hilf(44);
  PanelDatenEingabe.Hint  := Hilf(49);
  ButtonStart.Hint        := Hilf(50);
  ButtonEingabe.Hint      := Hilf(26);
  ButtonPlotten.Hint      := Hilf(51);
  ButtonZurueck.Hint      := Hilf(52);
  ButtonBeenden.Hint      := Hilf(30);
  ListBoxDaten.Hint       := Hilf(53);
  PanelDaten.Hint         := Hilf(53);
  SpeedDrucken.Hint       := Hilf(203);
  SpeedFestplatte.Hint    := Hilf(204);
  SpeedHilfe.Hint         := Hilf(210);
  SpeedHandbuch.Hint      := Hilf(274);
  SpeedEinrichten.Hint    := Hilf(505);
  Form61.Caption          := Tx(1445);
  Datenspeichern.Caption  := Tx(86);
  speichernD.Caption      := Tx(87);
  speichernDUnter.Caption := Tx(88);
  Drucker1.Caption        := Tx(92);
  drucken.Caption         := Tx(93);
  einrichten.Caption      := Tx(94);
  Hilfe.Caption           := Tx(162)+' (F1)';
  LabelFallazimut.Caption := Tx(239);  {Daten als Fallazimut / Fallw..}
  LabelVorzeichen.Caption := Tx(970);  {Dehnung positives Azimut}
  LabelKompression.Caption:= Tx(971);
  LabelDehnung.Caption    := Tx(970);
  LabelKompr.Caption      := Tx(971);
  LabelStreichen.Caption  := Tx(1732);
  LabelNS.Caption         := Tx(1733);
  LabelAnzahl.Caption     := Tx(222);  {Anzahl:}
  LabelEingabe.Caption    := Tx(77);   {Dateneingabe:}
  ButtonEingabe.Caption   := Tx(182);  {Dateneingabe beenden}
  Buttonplotten.Caption   := Tx(241);
  Buttonzurueck.Caption   := Tx(30);
  Buttonbeenden.Caption   := Tx(53);
  LabelBEingabe.Caption   := Tx(55)+':';
  LabelZahl.Caption       := '';
  MaskEditAzimut.EditMask := '#999;0; ';
  MaskEditFallen.EditMask := '99;0; ';
  LabelDaten.Enabled      := false;
  LabelAnzahl.Enabled     := false;
   LabelEingabe.Enabled   := false;
  Buttonplotten.Enabled   := false;
  Buttonzurueck.Enabled   := false;
  Buttonbeenden.Enabled   := false;
  ButtonEingabe.Enabled   := false;
  MaskEditAzimut.Enabled  := false;
  MaskEditFallen.Enabled  := false;
  ListBoxDaten.Enabled    := false;
  Datenspeichern.Enabled  := false;
  Drucker1.Enabled        := false;
  SpeedDrucken.Enabled    := false;
  SpeedFestplatte.Enabled := false;
  ExtensionS              := 'TLI';
  Handbuch.Caption    := Tx(1055)+' (F2)';
  Literatur.Caption   := Tx(1183)+' (F5)';
  SpeedLiteratur.Hint := Hilf(462);
  MaskEditAzimut.Enabled  := false;
  MaskEditFallen.Enabled  := false;
  WinWord.Caption         := Tx(1207);
  SpeedWinWord.Hint       := Hilf(470);
  SpeedWinWord.Enabled    := false;
  LabelLoeschen.Caption   := Tx(1257);
  LabelLoeschen.Visible   := false;
  SpeedEinrichten.Enabled := false;
  if KompassS = 'Brunton' then
  begin
    PanelFallazimut.Visible   := false;
    PanelBrunton.Visible      := true;
  end;
  if KompassS = 'Clar' then
  begin
    PanelBrunton.Visible      := false;
    PanelFallazimut.Visible   := true;
  end;
end;

procedure TForm61.ButtonStartClick(Sender: TObject);
begin
  setlength (AziFeld, MaxDaten);
  setlength (FalFeld, MaxDaten);
  setlength (Talbot, MaxDaten);
  Buttonzurueck.Enabled   := true;
  Buttonbeenden.Enabled   := true;
  MaskEditAzimut.Enabled  := true;
  LabelDaten.Enabled      := true;
  LabelAnzahl.Enabled     := true;
  LabelEingabe.Enabled    := true;
  ListBoxDaten.Clear;
  if KompassS = 'Clar' then MaskEditAzimut.Setfocus;
  if KompassS = 'Brunton' then MaskEditBEingabe.SetFocus;
  LabelLoeschen.Visible := true;
  ListBoxDaten.Enabled := true;
end;

procedure TForm61.MaskEditAzimutKeyPress(Sender: TObject; var Key: Char);
var
  MaxAzi : word;
begin
  MaxAzi := 360;
  if Winkel = 2 then MaxAzi := 400;
  if Key = chr(13) then
  begin
    AzimutS := MaskEditAzimut.Text;
    LeerLoeschen (AzimutS);
    if AzimutS = '' then exit;
    TAzimut := StrToInt(AzimutS);
    if abs(TAzimut) <= MaxAzi then
    begin
      MaskEditFallen.Enabled := true;
      MaskEditFallen.SetFocus;
      MaskEditAzimut.enabled := false;
    end
    else
    begin
      MaskEditAzimut.Clear;
      MaskEditAzimut.SetFocus;
    end;
  end;
end;

procedure TForm61.MaskEditFallenKeyPress(Sender: TObject; var Key: Char);
var
  ZeileS  : string[60];
  AnzahlS : string[5];
  Azimut  : word;
  MaxFall : shortint;
begin
  MaxFall := 90;
  if Winkel = 2 then MaxFall := 100;
  if key = chr(13) then
  begin
    FallenS := MaskEditFallen.Text;
    LeerLoeschen (FallenS);
    if FallenS = '' then exit;
    Fall := StrToInt(FallenS);
    if Fall > MaxFall then
    begin
      MaskEditFallen.Clear;
      MaskEditFallen.SetFocus;
      exit;
    end;
    MaskEditAzimut.Enabled := true;
    MaskEditAzimut.SetFocus;
    MaskEditFallen.Enabled := false;
    ListBoxDaten.Enabled := true;
    if Winkel = 2 then
    begin
      Azimut := abs(TAzimut);
      Neugrad (Azimut, Fall);
      if TAzimut < 0 then TAzimut := Azimut*-1;
    end;
    inc (Anzahl);
    AzimutS := IntToStr(TAzimut);
    FallenS := IntToStr(Fall);
    AzimutS := RightS ('    ' + AzimutS, 4);
    FallenS := RightS ('00' + FallenS, 2);
    ZeileS  := '           '+AzimutS+'/'+FallenS;
    AnzahlS := IntToStr (Anzahl);
    AnzahlS := RightS ('     '+AnzahlS,5);
    LabelZahl.Caption     := AnzahlS;
    ListBoxDaten.Items.Add (ZeileS);
    MaskEditAzimut.Text   := '   ';
    MaskEditFallen.Text   := '   ';
    AziFeld[Anzahl]       := abs(TAzimut);
    if TAzimut > 0 then Talbot[Anzahl] := true
    else Talbot[Anzahl] := false;
    FalFeld[Anzahl]       := Fall;
    ButtonEingabe.Enabled := true;
    MaskEditAzimut.SetFocus;
  end;
end;

procedure TForm61.MaskEditBEingabeKeyPress(Sender: TObject; var Key: Char);
var
  MaxAzi : word;
begin
  if Winkel = 1 then MaxAzi := 360 else MaxAzi := 400;
  if Key = chr(13) then
  begin
    AzimutS := MaskEditBEingabe.Text;
    LeerLoeschen (AzimutS);
    if AzimutS = '' then exit;
    TAzimut := StrToInt(AzimutS);
    if abs(TAzimut) <= MaxAzi then
    begin
      MaskEditBFallen.Enabled := true;
      MaskEditBFallen.SetFocus;
    end
    else
    begin
      MaskEditBEingabe.Clear;
      MaskEditBEingabe.SetFocus;
    end;
  end;
end;

procedure TForm61.MaskEditBFallenKeyPress(Sender: TObject; var Key: Char);
var
  MaxFall : shortint;
begin
  if key = chr(13) then
  begin
    FallenS := MaskEditBFallen.Text;
    LeerLoeschen(FallenS);
    if FallenS = '' then exit;
    Fall := StrToInt(FallenS);
    MaxFall := 90;
    if Winkel = 2 then MaxFall := 100;
    if Fall <= MaxFall then
    begin
      Azimut := abs(TAzimut);
      if Winkel = 2 then Neugrad (Azimut, Fall);
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

procedure TForm61.MaskEditNSKeyPress(Sender: TObject; var Key: Char);
var
  NordSudS : string;
  ZeileS   : string;
  AnzahlS  : string;
  FallS    : string;
  Azi      : integer;
  Sign     : shortint;
begin
  if key = chr(13) then
  begin
    NordSudS := UcaseS(MaskEditNS.Text);
    if NordSudS = '' then exit;
    if (NordSudS <> 'N') and (NordSudS <> 'S') then
    begin
      MaskEditNS.Clear;
      MaskEditNS.SetFocus;
      exit;
    end;
    Azi := abs(TAzimut);
    if TAzimut >= 0 then sign := 1 else sign := -1;
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
    inc (Anzahl);
    AzimutS := IntToStr(Azi*Sign);
    FallenS := IntToStr(Fall);
    AzimutS := RightS ('    ' + AzimutS, 4);
    FallenS := RightS ('00' + FallenS, 2);
    ZeileS  := '           '+AzimutS+'/'+FallenS;
    AnzahlS := IntToStr (Anzahl);
    AnzahlS := RightS ('     '+AnzahlS,5);
    LabelZahl.Caption     := AnzahlS;
    ListBoxDaten.Items.Add (ZeileS);
    MaskEditAzimut.Text   := '   ';
    MaskEditFallen.Text   := '   ';
    AziFeld[Anzahl]       := abs(TAzimut);
    if TAzimut > 0 then Talbot[Anzahl] := true
    else Talbot[Anzahl] := false;
    FalFeld[Anzahl]       := Fall;
    ButtonEingabe.Enabled := true;
    MaskEditBEingabe.Clear;
    MaskEditBFallen.Clear;
    MaskEditNS.Clear;
    MaskEditBEingabe.SetFocus;
  end;
end;

procedure TForm61.ListBoxDatenClick(Sender: TObject);
var
  i        : word;
  Geloscht : word;
  AziNeu   : array of word;
  FalNeu   : array of shortint;
  TalNeu   : array of boolean;
begin
  Setlength (AziNeu,Anzahl+1);
  Setlength (FalNeu, Anzahl+1);
  Setlength (TalNeu, Anzahl+1);
  Geloscht := 0;
  for i := 1 to Anzahl do
  begin
    AziNeu[i] := AziFeld[i];
    FalNeu[i] := FalFeld[i];
    TalNeu[i] := Talbot[i];
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
    AziFeld[i] := AziNeu[i];
    FalFeld[i] := FalNeu[i];
    Talbot[i]  := TalNeu[i];
  end;
  for i:= Geloscht to Anzahl-1 do
  begin
    AziFeld[i] := AziNeu[i+1];
    FalFeld[i] := FalNeu[i+1];
    Talbot[i]  := TalNeu[i+1];
  end;
  Anzahl := Anzahl - 1;
  LabelZahl.Caption := IntToStr(Anzahl);
  if KompassS = 'Clar' then MaskEditAzimut.SetFocus;
  if KompassS = 'Brunton' then MaskEditBEingabe.SetFocus;
  AziNeu := nil;
  FalNeu := nil;
  TalNeu := nil;
end;


procedure TForm61.ButtonEingabeClick(Sender: TObject);
begin
  LabelDaten.Enabled      := false;
  LabelEingabe.Enabled    := false;
  MaskEditAzimut.Enabled  := false;
  ListBoxDaten.Enabled    := false;
  DatenSpeichern.Enabled  := true;
  Drucker1.Enabled        := true;
  ButtonPlotten.Enabled   := true;
  SpeedDrucken.Enabled    := true;
  SpeedFestplatte.Enabled := true;
  SpeedWinWord.Enabled    := true;
  SpeedEinrichten.Enabled := true;
end;

procedure TForm61.ButtonZurueckClick(Sender: TObject);
begin
  AziFeld := NIL;
  FalFeld := NIL;
  Talbot  := NIL;
  MaskEditAzimut.Text := '    ';
  MaskEditFallen.Text := '  ';
  Form61.Close;
end;

procedure TForm61.ButtonBeendenClick(Sender: TObject);
begin
  AziFeld := NIL;
  FalFeld := NIL;
  Talbot  := NIL;
  Form61.Close;
  Form60.Close;
  SetCurrentDir(DirectS);
end;

procedure TForm61.speichernDClick(Sender: TObject);
begin
  if CurrentFile <> '' then SpeichernT (CurrentFile, Anzahl, AziFeld,
     FalFeld, Talbot)
  else speichernDUnterClick(Sender);
end;

procedure TForm61.speichernDUnterClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := ExtenS;
  if ExtenS = 'TLI' then SaveDialog1.Filter := 'Talbot mrthod, linears (*.tli)|*.TLI';
  if ExtenS = 'PLA' then SaveDialog1.Filter := 'Talbot method, planes (*.tpl)|*.TPL';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    SpeichernT (CurrentFile, Anzahl, AziFeld,
                FalFeld, Talbot);
  end;
end;

procedure TForm61.einrichtenClick(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TForm61.SpeedEinrichtenClick(Sender: TObject);
begin
  einrichtenClick(Sender);
end;

procedure TForm61.druckenClick(Sender: TObject);
begin
  Datnam (DateiNameS[0], ExtensionS);
  DruckenT (0, DateiNameS, AziFeld, FalFeld,
            Anzahl, Talbot);
end;

procedure TForm61.ButtonPlottenClick(Sender: TObject);
begin
  ZahlGlob := Anzahl;
  ListBoxDaten.Clear;
  Form63.Show;
end;

procedure TForm61.HilfeClick(Sender: TObject);
const
  Anfang = 161;
var
  DateiS : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\61Talbot-man.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\61Talbot-man.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm61.SpeedHilfeClick(Sender: TObject);
begin
  HilfeClick(Sender);
end;

procedure TForm61.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Talbot-Methode.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'Talbot_Method.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm61.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm61.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm61.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

procedure TForm61.WinWordClick(Sender: TObject);
begin
  Datnam (DateiNameS[0], 'TLI');
  SaveDialog1.DefaultExt := 'rtf';
  SaveDialog1.Filter     := 'rtf';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    WinDruckenT (CurrentFile, 0, DateiNameS, AziFeld, FalFeld,
                 Anzahl);
  end;
end;

procedure TForm61.SpeedWinWordClick(Sender: TObject);
begin
  WinWordClick(Sender);
end;

end.
