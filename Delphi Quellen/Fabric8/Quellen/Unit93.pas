unit Unit93;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, ExtCtrls, ComCtrls, Globvar, Texte, Standard, Einausga,
  Menus, Buttons, Kalkulat, Basic, Drucken, ehsHelpRouter, Shellapi;

type
  TForm93 = class(TForm)
    PanelRot: TPanel;
    LabelRAchse: TLabel;
    LabelRAzimut: TLabel;
    LabelFallen: TLabel;
    LabelRWinkel: TLabel;
    MaskEditAzimut: TMaskEdit;
    MaskEditFallen: TMaskEdit;
    MaskEditRWinkel: TMaskEdit;
    CheckBoxRotOK: TCheckBox;
    ListBoxDaten: TListBox;
    LabelDaten: TLabel;
    ListBoxRot: TListBox;
    LabelRot: TLabel;
    LabelDemo: TLabel;
    StatusBar: TStatusBar;
    MaskEditPfad: TMaskEdit;
    LabelPfad: TLabel;
    Panel6: TPanel;
    Buttonzuruck: TButton;
    Buttonbeenden: TButton;
    MainMenu1: TMainMenu;
    Dspeichern: TMenuItem;
    DatSpeichern: TMenuItem;
    speichernU: TMenuItem;
    RotSpeichern: TMenuItem;
    Rspeichern: TMenuItem;
    RspeichernU: TMenuItem;
    Drucker: TMenuItem;
    einrichten: TMenuItem;
    drucken: TMenuItem;
    Auswertung: TMenuItem;
    Dplotten: TMenuItem;
    Gplotten: TMenuItem;
    Statistik: TMenuItem;
    Isolinien: TMenuItem;
    Submaxima: TMenuItem;
    Hilfe: TMenuItem;
    Handbuch: TMenuItem;
    Literatur: TMenuItem;
    PanelSpeed: TPanel;
    SpeedRspeichern: TSpeedButton;
    SpeedDrucken: TSpeedButton;
    SpeedHilfe: TSpeedButton;
    SpeedHandbuch: TSpeedButton;
    SpeedLiteratur: TSpeedButton;
    SpeedWinWord: TSpeedButton;
    SpeedEinrichten: TSpeedButton;
    SpeedGKreise: TSpeedButton;
    SpeedIso: TSpeedButton;
    SpeedStatistik: TSpeedButton;
    SpeedMaxima: TSpeedButton;
    SpeedDaten: TSpeedButton;
    SpeedLiteratur1: TSpeedButton;
    Dword: TMenuItem;
    SpeedSpeichern: TSpeedButton;
    PrintDialog1: TPrintDialog;
    PrinterSetupDialog1: TPrinterSetupDialog;
    SaveDialog1: TSaveDialog;
    LabelZahl: TLabel;
    Label0000: TLabel;
    ButtonStart: TButton;
    LabelTyp: TLabel;
    LabelLineare: TLabel;

    procedure FormShow(Sender: TObject);
    procedure ShowHint(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure MaskEditAzimutKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditFallenKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditRWinkelKeyPress(Sender: TObject; var Key: Char);
    procedure CheckBoxRotOKClick(Sender: TObject);
    procedure ButtonzuruckClick(Sender: TObject);
    procedure ButtonbeendenClick(Sender: TObject);
    procedure DatSpeichernClick(Sender: TObject);
    procedure speichernUClick(Sender: TObject);
    procedure RspeichernClick(Sender: TObject);
    procedure RspeichernUClick(Sender: TObject);
    procedure DplottenClick(Sender: TObject);
    procedure GplottenClick(Sender: TObject);
    procedure StatistikClick(Sender: TObject);
    procedure IsolinienClick(Sender: TObject);
    procedure SubmaximaClick(Sender: TObject);
    procedure HilfeClick(Sender: TObject);
    procedure HandbuchClick(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
    procedure druckenClick(Sender: TObject);
    procedure DwordClick(Sender: TObject);
    procedure einrichtenClick(Sender: TObject);
    procedure SpeedRspeichernClick(Sender: TObject);
    procedure SpeedSpeichernClick(Sender: TObject);
    procedure SpeedDruckenClick(Sender: TObject);
    procedure SpeedEinrichtenClick(Sender: TObject);
    procedure SpeedWinWordClick(Sender: TObject);
    procedure SpeedDatenClick(Sender: TObject);
    procedure SpeedGKreiseClick(Sender: TObject);
    procedure SpeedIsoClick(Sender: TObject);
    procedure SpeedStatistikClick(Sender: TObject);
    procedure SpeedMaximaClick(Sender: TObject);
    procedure ButtonStartClick(Sender: TObject);
    procedure SpeedHilfeClick(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure SpeedLiteratur1Click(Sender: TObject);
  end;

var
  Form93      : TForm93;
  AchseAzimut : word;
  AchseFall   : shortint;
  DiscS, DatS : string;
  AchseWinkel : integer;
  AziRotFeld  : array of word;
  FalRotFeld  : array of word;
  CurrentFile : string;

implementation
uses Unit6, Unit12, Unit21, Unit23, Unit25, Unit64, Unit85;
{$R *.DFM}

procedure TForm93.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm93.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm93.FormActivate(Sender: TObject);
begin
  Left   := LeftDiag + 2*ULap;
  Top    := TopDiag + 2*Ulap;
  Height := HeiForm;
  Width  := WidForm;
  LabelDemo.Visible    := false;
  if DemoB then
    LabelDemo.Visible  := true;
  setlength (AziRotFeld, MaxDaten);
  setlength (FalRotFeld, MaxDaten);
  SpeedSpeichern.Hint     := Hilf(204);
  SpeedRspeichern.Hint    := Hilf(207);
  SpeedEinrichten.Hint    := Hilf(505);
  SpeedDrucken.Hint       := Hilf(203);
  SpeedWinWord.Hint       := Hilf(470);
  SpeedDaten.Hint         := Hilf(506);
  SpeedGKreise.Hint       := Hilf(511);
  SpeedIso.Hint           := Hilf(507);
  SpeedStatistik.Hint     := Hilf(509);
  SpeedMaxima.Hint        := Hilf(508);
  SpeedHilfe.Hint         := Hilf(210);
  SpeedHandbuch.Hint      := Hilf(274);
  SpeedLiteratur1.Hint    := Hilf(462);
  Form93.Caption          := 'Fabrib8, Rotation';
  LabelDaten.Caption      := Tx(101);
  LabelRot.Caption        := Tx(184);
  LabelRAchse.Caption     := Tx(179);
  LabelRAzimut.Caption    := Tx(219);
  LabelFallen.Caption     := Tx(220);
  LabelRWinkel.Caption    := Tx(221);
  LabelPfad.Caption       := Tx(419);
  LabelZahl.Caption       := Tx(181);
  Dspeichern.Caption      := Tx(86);
  DatSpeichern.Caption    := Tx(87);
  speichernU.Caption      := Tx(88);
  Rotspeichern.Caption    := Tx(808);
  Rspeichern.Caption      := Tx(87);
  RspeichernU.Caption     := Tx(88);
  Drucker.Caption         := Tx(92);
  einrichten.Caption      := Tx(94);
  drucken.Caption         := Tx(93);
  Dword.Caption           := Tx(1207);
  Auswertung.Caption      := Tx(1341);
  Dplotten.Caption        := Tx(1343);
  Gplotten.Caption        := Tx(1345);
  Statistik.Caption       := Tx(1342);
  Isolinien.Caption       := Tx(618);
  Submaxima.Caption       := Tx(579);
  Hilfe.Caption           := Tx(162)+' F1';
  Handbuch.Caption        := Tx(1055)+' F2';
  Literatur.Caption       := Tx(1183)+' F5';
  Buttonzuruck.Caption    := Tx(30);
  Buttonbeenden.Caption   := Tx(53);
  LabelTyp.Caption        := Tx(212);
  if Gefuegetyp = 1 then
    LabelLineare.Caption  := Tx(158);
  if Gefuegetyp = 2 then
    LabelLineare.Caption  := Tx(159);
  MaskEditAzimut.EditMask := '999;0; ';
  MaskEditFallen.EditMask := '99;0; ';
  MaskEditRWinkel.EditMask:= '#999;0; ';
  PanelRot.Visible        := false;
  PanelSpeed.Visible      := false;
  LabelPfad.Visible       := false;
  MaskEditPfad.Visible    := false;
  LabelZahl.Visible       := false;
  Label0000.Visible       := false;
  LabelTyp.Visible        := false;
  LabelLineare.Visible    := false;
  SpeedSpeichern.Enabled  := false;
  SpeedRspeichern.Enabled := false;
  SpeedEinrichten.Enabled := false;
  SpeedDrucken.Enabled    := false;
  SpeedWinWord.Enabled    := false;
  SpeedDaten.Enabled      := false;
  SpeedGkreise.Enabled    := false;
  SpeedIso.Enabled        := false;
  SpeedStatistik.Enabled  := false;
  SpeedMaxima.Enabled     := false;
  Dspeichern.Enabled      := false;
  Rotspeichern.Enabled    := false;
  Drucker.Enabled         := false;
  Auswertung.Enabled      := false;
end;

procedure TForm93.ButtonStartClick(Sender: TObject);
var
  i      : word;
  ZeileS : string;
begin
  ListBoxDaten.Clear;
  ListBoxRot.Clear;
  PanelRot.Visible     := true;
  PanelSpeed.Visible   := true;
  MaskEditAzimut.Clear;
  MaskEditFallen.Clear;
  MaskEditRWinkel.Clear;
  CheckBoxRotOk.State  := cbUnchecked;
  LabelPfad.Visible    := true;
  MaskEditPfad.Visible := true;
  LabelZahl.Visible    := true;
  Label0000.Visible    := true;
  LabelTyp.Visible     := true;
  LabelLineare.Visible := true;
  MaskEditPfad.Text    := PfadS;
  for i := 1 to ZahlGlob do
  begin
    ZeileS := '            '+IntToStr(AziFeld[i])+'/'+IntToStr(FalFeld[i]);
    ListboxDaten.Items.Add(ZeileS);
  end;
  Label0000.Caption := IntToStr(ZahlGlob);
  MaskEditAzimut.SetFocus;
end;

procedure TForm93.MaskEditAzimutKeyPress(Sender: TObject; var Key: Char);
const MaxAzi = 360;
var
  AchseAzimutS : string;
begin
  if Key = chr(13) then
  begin
    AchseAzimutS := MaskEditAzimut.Text;
    LeerLoeschen (AchseAzimutS);
    if AchseAzimutS = '' then exit;
    AchseAzimut := StrToInt (AchseAzimutS);
    if AchseAzimut <= MaxAzi then
    begin
      LabelFallen.Enabled    := true;
      MaskEditFallen.Enabled := true;
      MaskEditFallen.SetFocus;
    end
    else
    begin
      MaskEditAzimut.Clear;
      MaskEditAzimut.SetFocus;
    end;
  end;
end;

procedure TForm93.MaskEditFallenKeyPress(Sender: TObject; var Key: Char);
const MaxFall = 90;
var
  AchseFallS : string;
begin
  if Key = chr(13) then
  begin
    AchseFallS := MaskEditFallen.Text;
    if AchseFallS = '' then exit;
    AchseFall := StrToInt (AchseFallS);
    if AchseFall <= MaxFall then
    begin
      MaskEditRWinkel.Enabled := true;
      LabelRWinkel.Enabled    := true;
      MaskEditRWinkel.SetFocus;
    end
    else
    begin
      MaskEditFallen.Clear;
      MaskEditFallen.SetFocus;
    end;
  end;
end;

procedure TForm93.MaskEditRWinkelKeyPress(Sender: TObject; var Key: Char);
begin
  CheckBoxRotOK.State     := cbUnchecked;
  CheckBoxRotOK.Enabled   := true;
end;

procedure TForm93.CheckBoxRotOKClick(Sender: TObject);
var
  i, Azi        : word;
  Ffall         : shortint;
  RotAzimut     : word;
  RotFall, Sign : shortint;
  RotDatAzimutS : string[3];
  RotDatFallS   : string[2];
  ZeileS        : string[50];
  RadAchseAzimut: extended;
  RadAchseFall  : extended;
  Aa, B, C      : array[0..3] of extended;
  Z             : byte;
begin
  if CheckBoxRotOK.State = cbUnchecked then exit;
  Laufwerk(DatS,EingabeS, DiscS);
  LabelPfad.Caption       := DiscS;
  LabelPfad.Enabled       := true;
  DSpeichern.Enabled      := true;
  Rotspeichern.Enabled    := true;
  Drucker.Enabled         := true; 
  Auswertung.Enabled      := true;
  SpeedSpeichern.Enabled  := true;
  SpeedRspeichern.Enabled := true;
  SpeedEinrichten.Enabled := true;
  SpeedDrucken.Enabled    := true;
  SpeedWinWord.Enabled    := true;
  SpeedDaten.Enabled      := true;
  SpeedGKreise.Enabled    := true;
  SpeedIso.Enabled        := true;
  SpeedStatistik.Enabled  := true;
  SpeedMaxima.Enabled     := true;
  LabelDaten.Enabled      := true;
  AchseWinkel             := StrToInt (MaskEditRWinkel.Text);
  Abc (AchseWinkel,AchseAzimut,AchseFall,RadAchseAzimut,
       RadAchseFall,Aa,B,C,Z);
  for i := 1 to ZahlGlob do
  begin
    Azi   := AziFeld[i];
    Ffall := FalFeld[i];
    if Gefuegetyp = 2 then
    begin
      Azi   := (Azi + 180) mod 360;
      Ffall := 90 - Ffall;
    end;
    Rotieren (Aa, B, C, Gefuegetyp, Azi, Ffall, Z, RadAchseAzimut,
              RadAchseFall, RotAzimut, RotFall, Sign);
    AziRotFeld[i] := RotAzimut;
    FalRotFeld[i] := RotFall;
    RotDatAzimutS := IntToStr (RotAzimut);
    RotDatAzimutS := RightS ('000' + RotDatAzimutS, 3);
    RotDatFallS   := IntToStr (RotFall);
    RotDatFallS   := RightS ('00' + RotDatFallS, 2);
    ZeileS        := '            '+RotDatAzimutS+'/'+RotDatFallS;
    ListBoxRot.Items.Add (ZeileS); {Daten und Ergebnis in Listbox schreiben}
  end;
  if (Gefuegetyp = 2) then
  begin
    Gplotten.Enabled  := true;
    ExtenS            := 'PLA';
  end;
  if Gefuegetyp = 1 then
  begin
    Gplotten.Enabled := false;
    ExtenS           := 'LIN';
  end;  
end;

procedure TForm93.DatSpeichernClick(Sender: TObject);
begin
  if CurrentFile <> '' then Speichern(CurrentFile,ZahlGlob,
    AziFeld,FalFeld)
  else speichernUClick(Sender);
end;

procedure TForm93.SpeedSpeichernClick(Sender: TObject);
begin
  DatSpeichernClick(Sender);
end;

procedure TForm93.speichernUClick(Sender: TObject);
begin
  Erweiterung (ExtenS);
  SaveDialog1.DefaultExt := ExtenS;
  if ExtenS = 'LIN' then SaveDialog1.Filter := 'Linears (*.lin)|*.LIN';
  if ExtenS = 'PLA' then SaveDialog1.Filter := 'Planes (*.pla)|*.PLA';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    Speichern (CurrentFile, ZahlGlob, AziFeld, FalFeld);
  end;
end;

procedure TForm93.RspeichernClick(Sender: TObject);
begin
  if CurrentFile <> '' then Speichern (CurrentFile, ZahlGlob,
    AziRotFeld, FalRotFeld)
  else RspeichernUClick(Sender);
end;

procedure TForm93.SpeedRspeichernClick(Sender: TObject);
begin
  RspeichernClick(Sender);
end;

procedure TForm93.RspeichernUClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := ExtenS;
  SaveDialog1.Filter     := ExtenS;
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    Speichern (CurrentFile, ZahlGlob, AziRotFeld, FalRotFeld)
  end;
end;

procedure TForm93.einrichtenClick(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TForm93.SpeedEinrichtenClick(Sender: TObject);
begin
  einrichtenClick(Sender);
end;

procedure TForm93.druckenClick(Sender: TObject);
begin
  Titel2 (DateiZahl,DateiNameS,GefuegeTyp, AchseAzimut,
          AchseFall, AchseWinkel, AziFeld, FalFeld,
          AziRotFeld,FalRotFeld,ZahlGlob);
end;

procedure TForm93.SpeedDruckenClick(Sender: TObject);
begin
  druckenClick(Sender);
end;

procedure TForm93.DwordClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := 'rtf';
  SaveDialog1.Filter     := 'rtf';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    WinTitel2 (CurrentFile,DateiZahl,DateiNameS,GefuegeTyp,
              AchseAzimut, AchseFall, AchseWinkel, AziFeld,
              FalFeld, AziRotFeld,FalRotFeld,ZahlGlob);
  end;
end;

procedure TForm93.SpeedWinWordClick(Sender: TObject);
begin
  DwordClick(Sender);
end;

procedure TForm93.DplottenClick(Sender: TObject);
var
  i : word;
begin
  for i := 1 to ZahlGlob do
  begin
    AziFeld[i] := AziRotFeld[i];
    FalFeld[i] := FalRotFeld[i];
  end;
  WeiterB[8] := true;
  Application.CreateForm(TForm12, Form12);
  Form12.Show;
end;

procedure TForm93.SpeedDatenClick(Sender: TObject);
begin
  DplottenClick(Sender);
end;

procedure TForm93.GplottenClick(Sender: TObject);
var
  i : word;
begin
  for i := 1 to ZahlGlob do
  begin
    AziFeld[i] := AziRotFeld[i];
    FalFeld[i] := FalRotFeld[i];
  end;
  WeiterB[8] := true;
  Application.CreateForm(TForm85, Form85);
  Form85.Show;
end;

procedure TForm93.SpeedGKreiseClick(Sender: TObject);
begin
  GplottenClick(Sender);
end;

procedure TForm93.StatistikClick(Sender: TObject);
var
  i : word;
begin
  for i := 1 to ZahlGlob do
  begin
    AziFeld[i] := AziRotFeld[i];
    FalFeld[i] := FalRotFeld[i];
  end;
  ZahlGlob := ZahlGlob;
  WeiterB[8] := true;
  Application.CreateForm(TForm21, Form21);
  Form21.Show;
end;

procedure TForm93.SpeedStatistikClick(Sender: TObject);
begin
  StatistikClick(Sender);
end;

procedure TForm93.IsolinienClick(Sender: TObject);
var
  i : word;
begin
  for i := 1 to ZahlGlob do
  begin
    AziFeld[i] := AziRotFeld[i];
    FalFeld[i] := FalRotFeld[i];
  end;
  WeiterB[8] := true;
  Application.CreateForm(TForm23, Form23);
  Form23.Show;
end;

procedure TForm93.SpeedIsoClick(Sender: TObject);
begin
  IsolinienClick(Sender);
end;

procedure TForm93.SubmaximaClick(Sender: TObject);
var
  i : word;
begin
  for i := 1 to ZahlGlob do
  begin
    AziFeld[i] := AziRotFeld[i];
    FalFeld[i] := FalRotFeld[i];
  end;
  WeiterB[8] := true;
  Application.CreateForm(TForm25, Form25);
  Form25.Show;
end;

procedure TForm93.SpeedMaximaClick(Sender: TObject);
begin
  SubmaximaClick(Sender);
end;

procedure TForm93.ButtonzuruckClick(Sender: TObject);
begin
  if not WeiterF then
  begin
    AziFeld    := Nil;
    FalFeld    := Nil;
  end;
  AziRotFeld := Nil;
  FalRotFeld := Nil;
  Label0000.Caption       := '';
  MaskEditAzimut.Text     := '   ';
  MaskEditFallen.Text     := '  ';
  MaskEditRWinkel.Text    := '    ';
  MaskEditAzimut.Enabled  := false;
  MaskEditFallen.Enabled  := false;
  MaskEditRWinkel.Enabled := false;
  ListboxDaten.Clear;
  Form64.Close;
  Form93.Close;
end;

procedure TForm93.ButtonbeendenClick(Sender: TObject);
begin
  AziFeld    := Nil;
  FalFeld    := Nil;
  AziRotFeld := Nil;
  FalRotFeld := Nil;
  Form93.Close;
  Form64.Close;
  Form6.Close;
  SetCurrentDir(DirectS);
end;

procedure TForm93.HilfeClick(Sender: TObject);
const
  Anfang = 108;
var
  DateiS      : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\93Rotation-Excel.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\Rotation-Excel.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm93.SpeedHilfeClick(Sender: TObject);
begin
  HilfeClick(Sender);
end;

procedure TForm93.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Rotation.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'Rotation-E.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm93.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm93.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm93.SpeedLiteratur1Click(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

end.
