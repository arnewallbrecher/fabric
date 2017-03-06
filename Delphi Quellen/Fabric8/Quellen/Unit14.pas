unit Unit14; {Kleinkreise, manuelle Eingabe}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Drucken,
  Forms, Dialogs, ExtCtrls, StdCtrls, Mask, Globvar, Basic, Einausga,
  Standard, Texte, Menus, ComCtrls, Buttons, Shellapi, ehsHelpRouter;

type
  TForm14 = class(TForm)
    Panel1       : TPanel;
    LabelDaten   : TLabel;
    ListBoxDaten : TListBox;

    Panel2        : TPanel;
    LabelAchseals : TLabel;
    Labeleingeben : TLabel;

    Panel3      : TPanel;
    LabelAnzahl : TLabel;
    Label00000  : TLabel;

    Panel4         : TPanel;
    LabelAchse     : TLabel;
    MaskEditAzimut: TMaskEdit;
    MaskEditFallen : TMaskEdit;
    LabelOeffnung  : TLabel;
    MaskEditWinkel : TMaskEdit;

    Buttonzuruck   : TButton;
    Buttonbeenden  : TButton;
    ButtonStart    : TButton;
    ButtonDbeenden : TButton;
    Buttonplotten  : TButton;
    MainMenu1: TMainMenu;
    Hilfe1: TMenuItem;
    StatusBar: TStatusBar;
    Panel5: TPanel;
    SpeedHilfe: TSpeedButton;
    PanelMaxDat: TPanel;
    LabelMaxDat: TLabel;
    LabelMenge: TLabel;
    Handbuch: TMenuItem;
    LabelDemo: TLabel;
    SpeedHandbuch: TSpeedButton;
    Literatur: TMenuItem;
    SpeedLiteratur: TSpeedButton;
    LabelLoeschen: TLabel;
    DSpeichern: TMenuItem;
    speichern: TMenuItem;
    speichernU: TMenuItem;
    SaveDialog1: TSaveDialog;
    SpeedSpeichern: TSpeedButton;
    Drucker: TMenuItem;
    Deinrichten: TMenuItem;
    drucken: TMenuItem;
    RtfDatei: TMenuItem;
    PrinterSetupDialog1: TPrinterSetupDialog;
    SpeedEinrichten: TSpeedButton;
    SpeedDrucken: TSpeedButton;
    SpeedWinWord: TSpeedButton;
    PanelBAchse: TPanel;
    MaskEditBStrike: TMaskEdit;
    MaskEditBFallen: TMaskEdit;
    MaskEditNS: TMaskEdit;

    procedure FormActivate(Sender: TObject);
    procedure ButtonStartClick(Sender: TObject);
    procedure ButtonDbeendenClick(Sender: TObject);
    procedure ButtonplottenClick(Sender: TObject);
    procedure ButtonzuruckClick(Sender: TObject);
    procedure ButtonbeendenClick(Sender: TObject);
    procedure MaskEditAzimutKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditFallenKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditWinkelKeyPress(Sender: TObject; var Key: Char);
    procedure Hilfe1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ShowHint(Sender: TObject);
    procedure SpeedHilfeClick(Sender: TObject);
    procedure HandbuchClick(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
    procedure SpeedLiteraturClick(Sender: TObject);
    procedure ListBoxDatenClick(Sender: TObject);
    procedure speichernClick(Sender: TObject);
    procedure speichernUClick(Sender: TObject);
    procedure SpeedSpeichernClick(Sender: TObject);
    procedure DeinrichtenClick(Sender: TObject);
    procedure druckenClick(Sender: TObject);
    procedure RtfDateiClick(Sender: TObject);
    procedure SpeedEinrichtenClick(Sender: TObject);
    procedure SpeedDruckenClick(Sender: TObject);
    procedure SpeedWinWordClick(Sender: TObject);
    procedure MaskEditBStrikeKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditBFallenKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditNSKeyPress(Sender: TObject; var Key: Char);
  end;

var
  Form14    : TForm14;
  Anzahl    : word;
  AzimutS   : string;
  FallenS   : string;
  OeffnungS : string;
  Azimut    : word;
  Fall      : shortint;

implementation
uses Unit12, Unit13;
{$R *.DFM}

procedure TForm14.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;


procedure TForm14.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm14.FormActivate(Sender: TObject);
begin
  Left   := LeftDiag + Ulap;
  Top    := TopDiag + ULap;
  Width  := WidForm;
  Height := HeiForm;
  setlength (AziFeld, MaxDaten);
  setlength (FalFeld, MaxDaten);
  setlength (WinkelFeld, MaxDaten);
  LabelDemo.Visible                := false;
  if DemoB then LabelDemo.Visible  := true;
  LabelMaxDat.Caption           := Tx(981);
  LabelMenge.Caption            := Inttostr(MaxDaten);
  PanelMaxDat.Hint              := Hilf(268);
  Panel3.Hint                   := Hilf(20);
  Panel4.Hint                   := Hilf(68);
  MaskEditAzimut.Hint           := Hilf(69);
  MaskEditFallen.Hint           := Hilf(70);
  MaskEditWinkel.Hint           := Hilf(71);
  ButtonStart.Hint              := Hilf(50);
  ButtonDbeenden.Hint           := Hilf(73);
  Buttonplotten.Hint            := Hilf(51);
  Buttonzuruck.Hint             := Hilf(80);
  Buttonbeenden.Hint            := Hilf(30);
  ListBoxDaten.Hint             := Hilf(54);
  Panel1.Hint                   := Hilf(54);
  Speedspeichern.Hint           := Hilf(204);
  SpeedEinrichten.Hint          := Hilf(505);
  SpeedDrucken.Hint             := Hilf(203);
  SpeedWinWord.Hint             := Hilf(470);
  SpeedHilfe.Hint               := Hilf(210);
  SpeedHandbuch.Hint            := Hilf(274);
  Form14.Caption                := Tx(456); {Fabric7: Kleinkreise, manuell}
  Hilfe1.Caption                := Tx(162)+' (F1)';
  LabelAchseals.Caption         := Tx(316); {Achse als Fallazimut/Fallwinkel}
  Labeleingeben.Caption         := Tx(317); {eingeben.}
  LabelDaten.Caption            := Tx(318); {Achse:   Öffnungswinkel:}
  LabelAnzahl.Caption           := Tx(222);
  LabelAchse.Caption            := Tx(319);
  LabelOeffnung.Caption         := Tx(320);
  ButtonDbeenden.Caption        := Tx(182);  {&Dateneingabe beenden}
  Buttonplotten.Caption         := Tx(241);
  Buttonzuruck.Caption          := Tx(30);
  Buttonbeenden.Caption         := Tx(53);
  Dspeichern.Caption            := Tx(86);
  speichern.Caption             := Tx(87);
  speichernU.Caption            := Tx(88);
  Drucker.Caption               := Tx(92);
  Deinrichten.Caption           := Tx(94);
  drucken.Caption               := Tx(93);
  RtfDatei.Caption              := Tx(1207);
  Label00000.Caption       := '';
  MaskEditAzimut.EditMask  := '999;0; ';
  MaskEditFallen.EditMask  := '99;0; ';
  MaskEditWinkel.EditMask  := '999;0; ';
  MaskEditBStrike.EditMask := '999;0; ';
  MaskEditAzimut.Enabled   := false;
  MaskEditFallen.Enabled   := false;
  MaskEditBFallen.EditMask := '99;0; ';
  MaskEditNS.EditMask      := 'L;0; ';
  MaskEditWinkel.Enabled   := false;
  MaskEditBStrike.Enabled  := false;
  MaskEditBFallen.Enabled  := false;
  MaskEditNS.Enabled       := false;
  LabelDaten.Enabled       := false;
  Label00000.Enabled       := false;
  LabelAchse.Enabled       := false;
  LabelOeffnung.Enabled    := false;
  ButtonDbeenden.Enabled   := false;
  Buttonplotten.Enabled    := false;
  ListBoxDaten.Enabled     := false;
  Buttonzuruck.Enabled     := false;
  Buttonbeenden.Enabled    := false;
  SpeedSpeichern.Enabled   := false;
  Handbuch.Caption         := Tx(1055)+' (F2)';
  Literatur.Caption        := Tx(1183)+' (F5)';
  SpeedLiteratur.Hint      := Hilf(462);
  MaskEditAzimut.Enabled   := false;
  MaskEditFallen.Enabled   := false;
  MaskEditWinkel.Enabled   := false;
  LabelLoeschen.Caption    := Tx(1257);
  LabelLoeschen.Visible    := false;
  Dspeichern.Enabled       := false;
  Drucker.Enabled          := false;
  if KompassS = 'Clar' then PanelBAchse.Visible := false;
  if KompassS = 'Brunton' then PanelBAchse.Visible := true; 
end;

procedure TForm14.ButtonzuruckClick(Sender: TObject);
begin
  AziFeld    := Nil;
  FalFeld    := Nil;
  WinkelFeld := Nil;
  Form14.Close;
end;

procedure TForm14.ButtonbeendenClick(Sender: TObject);
begin
  AziFeld    := Nil;
  FalFeld    := Nil;
  WinkelFeld := Nil;
  Form14.Close;
  Form13.Close;
  SetCurrentDir(DirectS);
end;

procedure TForm14.ButtonStartClick(Sender: TObject);
begin
//  ButtonStart.Enabled := false;
  Anzahl                 := 0;
  Buttonzuruck.Enabled   := true;
  Buttonbeenden.Enabled  := true;
  if KompassS = 'Clar' then MaskEditAzimut.Enabled := true;
  if KompassS = 'Brunton' then MaskEditBStrike.Enabled := true;
  LabelDaten.Enabled     := true;
  LabelAnzahl.Enabled    := true;
  Label00000.Enabled     := true;
  LabelAchse.Enabled     := true;
  LabelOeffnung.Enabled  := true;
  Label00000.Caption     := '';
  ButtonDbeenden.Enabled := false;
  ListBoxDaten.Clear;
  if KompassS = 'Clar' then MaskEditAzimut.SetFocus;
  if KompassS = 'Brunton' then MaskEditBStrike.setFocus;
  LabelLoeschen.Visible := true;
end;

procedure TForm14.MaskEditAzimutKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(13) then
  begin
    AzimutS := MaskEditAzimut.Text;
    LeerLoeschen (AzimutS);
    if AzimutS = '' then exit;
    Azimut := StrToInt (AzimutS);
    if Azimut <= 360 then
    begin
      MaskEditFallen.Enabled := true;
      MaskEditFallen.SetFocus;
      MaskEditAzimut.Enabled := false;
    end
    else
    begin
      MaskEditAzimut.Clear;
      MaskEditAzimut.SetFocus;
    end;
  end;
end;

procedure TForm14.MaskEditBStrikeKeyPress(Sender: TObject; var Key: Char);
var
  MaxAzi : word;
begin
  MaxAzi := 0;
  if Winkel = 1 then MaxAzi := 360;
  if Winkel = 2 then MaxAzi := 400;
  if Key = chr(13) then
  begin
    AzimutS := MaskEditBStrike.Text;
    LeerLoeschen (AzimutS);
    if AzimutS = '' then exit
    else
    begin
      Azimut := StrToInt (AzimutS);
      if Azimut <= MaxAzi then
      begin
        MaskEditBFallen.Enabled := true;
        MaskEditBFallen.SetFocus;
        MaskEditBStrike.Enabled := false;
      end
      else
      begin
        MaskEditBStrike.Clear;
        MaskEditBStrike.SetFocus;
      end;
    end;
  end;
end;

procedure TForm14.MaskEditFallenKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(13) then
  begin
    FallenS := MaskEditFallen.Text;
    LeerLoeschen (FallenS);
    if FallenS = '' then exit;
    Fall := StrToInt (FallenS);
    if Fall <= 90 then
    begin
      MaskEditWinkel.Enabled := true;
      MaskEditWinkel.SetFocus;
      MaskEditFallen.Enabled := false;
    end
    else
    begin
      MaskEditFallen.Clear;
      MaskEditFallen.SetFocus;
    end;
  end;
end;

procedure TForm14.MaskEditBFallenKeyPress(Sender: TObject; var Key: Char);
var
  MaxFall : byte;
begin
  MaxFall := 0;
  if Winkel = 1 then MaxFall := 90;
  if Winkel = 2 then MaxFall := 100;
  if key = chr(13) then
  begin
    FallenS := MaskEditBFallen.Text;
    LeerLoeschen(FallenS);
    if FallenS = '' then exit
    else
    begin
      Fall := StrToInt (FallenS);
      if abs(Fall) <= MaxFall then
      begin
        MaskEditNS.Enabled := true;
        MaskEditNS.SetFocus;
        MaskEditBFallen.Enabled := false;
      end
      else
      begin
        MaskEditBFallen.Clear;
        MaskEditBFallen.SetFocus;
        exit;
      end;
    end;
  end;
end;

procedure TForm14.MaskEditNSKeyPress(Sender: TObject; var Key: Char);
var
  NordSudS : string;
begin
  if key = chr(13) then
  begin
    ListBoxDaten.Enabled := true;
    NordSudS := UcaseS(MaskEditNS.Text);
    if NordSudS = '' then exit;
    if Azimut > 180 then Azimut := Azimut -180;
    if NordSudS = 'N' then
      if Azimut >90 then Azimut := Azimut + 180;
    if NordSudS = 'S' then
      if Azimut <90 then Azimut := Azimut + 180;
    AzimutS := IntToStr(Azimut);
    MaskEditWinkel.Enabled := true;
    MaskEditWinkel.SetFocus;
  end;
end;

procedure TForm14.MaskEditWinkelKeyPress(Sender: TObject; var Key: Char);
var
  ZeileS    : string[40];
  AnzahlS   : string[6];
  Oeffnung  : word;
begin
  if key = chr(13) then
  begin
    ListBoxDaten.Enabled   := true;
    ButtonDbeenden.Enabled := true;
    OeffnungS              := MaskEditWinkel.Text;
    LeerLoeschen (OeffnungS);
    if OeffnungS = '' then exit;
    if KompassS = 'Clar' then
    begin
      MaskEditAzimut.Enabled := true;
      MaskEditAzimut.SetFocus;
      MaskEditAzimut.Clear;
      MaskEditFallen.Clear;
      MaskEditWinkel.Clear;
    end;
    if KompassS = 'Brunton' then
    begin
      MaskEditBStrike.Enabled := true;
      MaskEditBStrike.SetFocus;
      MaskEditBStrike.Clear;
      MaskEditBFallen.Clear;
      MaskEditNS.Clear;
      MaskEditWinkel.Clear;
    end;
    inc(Anzahl);
    Oeffnung := StrToInt (OeffnungS);
    if Winkel = 2 then
    begin
      Neugrad (Azimut, Fall);
    end;
    AzimutS   := RightS ('000' + AzimutS, 3);
    FallenS   := RightS ('00' + FallenS, 2);
    OeffnungS := RightS('000' + OeffnungS,3);
    ZeileS    := '  ' + AzimutS + '/' + FallenS + '             ' + OeffnungS;
    AnzahlS   := IntToStr (Anzahl);
    AnzahlS   := RightS ('     '+AnzahlS,5);
    Label00000.Caption := AnzahlS;
    ListBoxDaten.Items.Add (ZeileS);
    MaskEditAzimut.Text := '   ';
    MaskEditFallen.Text := '  ';
    MaskEditWinkel.Text := '   ';
    AziFeld[Anzahl]  := Azimut;
    FalFeld[Anzahl]  := Fall;
    WinkelFeld[Anzahl] := Oeffnung;
    MaskEditWinkel.Enabled := false;
  end;
end;

procedure TForm14.ListBoxDatenClick(Sender: TObject);
var
  i         : word;
  Geloscht  : word;
  AziNeu    : array of word;
  FalNeu    : array of shortint;
  WinkelNeu : array of word;
begin
  Setlength (AziNeu, Anzahl+1);
  Setlength (FalNeu, Anzahl+1);
  Setlength (WinkelNeu, Anzahl+1);
  Geloscht := 0;
  for i := 1 to Anzahl do
  begin
    AziNeu[i]    := AziFeld[i];
    FalNeu[i]    := FalFeld[i];
    WinkelNeu[i] := WinkelFeld[i];
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
    AziFeld[i]    := AziNeu[i];
    FalFeld[i]    := FalNeu[i];
    WinkelFeld[i] := WinkelNeu[i];
  end;
  for i:= Geloscht to Anzahl-1 do
  begin
    AziFeld[i]    := AziNeu[i+1];
    FalFeld[i]    := FalNeu[i+1];
    WinkelFeld[i] := WinkelNeu[i+1];
  end;
  Anzahl := Anzahl - 1;
  Label00000.Caption := IntToStr(Anzahl);
  MaskEditAzimut.SetFocus;
  AziNeu    := nil;
  FalNeu    := nil;
  WinkelNeu := nil;
end;

procedure TForm14.ButtonDbeendenClick(Sender: TObject);
begin
  Buttonplotten.Enabled  := true;
  LabelDaten.Enabled     := false;
  LabelAnzahl.Enabled    := false;
  Label00000.Enabled     := false;
  LabelAchse.Enabled     := false;
  LabelOeffnung.Enabled  := false;
  MaskEditAzimut.Enabled := false;
  MaskEditFallen.Enabled := false;
  MaskEditWinkel.Enabled := false;
  ZahlGlob               := Anzahl;
  Dspeichern.Enabled     := true;
  SpeedSpeichern.Enabled := true;
  Drucker.enabled        := true;
end;

procedure TForm14.ButtonplottenClick(Sender: TObject);
begin
  ButtonStart.Enabled := true;
  ListBoxDaten.Clear;
  Form12.Show;
end;

procedure TForm14.speichernClick(Sender: TObject);
begin
   if CurrentFile <> '' then SchreibKreis(CurrentFile,Anzahl, AziFeld,FalFeld,
   WinkelFeld)
   else speichernUClick(Sender);
end;

procedure TForm14.SpeedSpeichernClick(Sender: TObject);
begin
  speichernClick(Sender);
end;

procedure TForm14.speichernUClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := ExtenS;
  SaveDialog1.Filter := 'Small circles (*.sci)|*.SCI';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    SchreibKreis (CurrentFile, Anzahl, AziFeld, FalFeld, WinkelFeld);
  end;
end;

procedure TForm14.DeinrichtenClick(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TForm14.SpeedEinrichtenClick(Sender: TObject);
begin
  DeinrichtenClick(Sender);
end;

procedure TForm14.druckenClick(Sender: TObject);
begin
  Datnam (DateiNameS[0], ExtenS);
  DruckKreise (0, DateiNameS, AziFeld, FalFeld, WinkelFeld, Anzahl);
end;

procedure TForm14.SpeedDruckenClick(Sender: TObject);
begin
  druckenClick(Sender);
end;

procedure TForm14.RtfDateiClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := 'rtf';
  SaveDialog1.Filter     := 'rtf';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    DateinameS[0] := CurrentFile;
    WinKreise (0, CurrentFile, DateinameS, AziFeld, FalFeld,
               WinkelFeld, Anzahl)
  end;
end;

procedure TForm14.SpeedWinWordClick(Sender: TObject);
begin
  RtfdateiClick(Sender);
end;

procedure TForm14.Hilfe1Click(Sender: TObject);
var
  DateiS      : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\14Kleinkreise-man.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\14SmallCircles-man.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm14.SpeedHilfeClick(Sender: TObject);
begin
  Hilfe1Click(Sender);
end;

procedure TForm14.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Kleinkreise.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'Small_Circles.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm14.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm14.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm14.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

end.
