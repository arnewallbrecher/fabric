unit Unit10; {Plot von Daten, manuelle Eingabe}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, ExtCtrls, Menus, Mask, Globvar,
  Basic, Standard, Texte, Einausga, Drucken, ComCtrls,
  Buttons, Shellapi, ehsHelpRouter;

type
  TForm10 = class(TForm)
    Panel1          : TPanel;
    LabelDatenals   : TLabel;
    LabelKippwinkel : TLabel;

    Panel2       : TPanel;
    LabelDaten   : TLabel;
    ListBoxDaten : TListBox;

    Panel3      : TPanel;
    LabelAnzahl : TLabel;
    Label00000  : TLabel;
    PanelDaten: TPanel;
    LabelEingabe    : TLabel;
    MaskEditEingabe : TMaskEdit;
    MaskEditFallen  : TMaskEdit;

    PanelMaxDat : TPanel;
    LabelMaxDat : TLabel;
    LabelMenge  : TLabel;

    ButtonStart         : TButton;
    Buttonplotten       : TButton;
    Buttonzuruck        : TButton;
    Buttonbeenden       : TButton;
    ButtonDeingabeBeenden: TButton;

    MainMenu1: TMainMenu;

    Datenspeichern1 : TMenuItem;
    speichernD: TMenuItem;

    Drucker1    : TMenuItem;
    einrichten1 : TMenuItem;
    drucken1    : TMenuItem;

    Hilfe1: TMenuItem;

    PrintDialog1        : TPrintDialog;
    PrinterSetupDialog1 : TPrinterSetupDialog;

    StatusBar : TStatusBar;

    Panel5       : TPanel;
    SpeedDatenF  : TSpeedButton;
    SpeedDrucken : TSpeedButton;
    SpeedHilfe   : TSpeedButton;
    Handbuch: TMenuItem;
    SaveDialog1: TSaveDialog;
    speichernUnter: TMenuItem;
    LabelDemo: TLabel;
    SpeedHandbuch: TSpeedButton;
    GroupBoxUTisch: TGroupBox;
    RadioButtonLeitz: TRadioButton;
    RadioButtonZeiss: TRadioButton;
    Literatur: TMenuItem;
    SpeedLiteratur: TSpeedButton;
    PanelBrunton: TPanel;
    LabelBEingabe: TLabel;
    MaskEditBEingabe: TMaskEdit;
    MaskEditBFallen: TMaskEdit;
    MaskEditNS: TMaskEdit;
    LabelLoeschen: TLabel;
    SpeedEinrichten: TSpeedButton;
    WinWord: TMenuItem;
    SpeedWinWord: TSpeedButton;

    procedure FormActivate(Sender: TObject);
    procedure ButtonStartClick(Sender: TObject);
    procedure ButtonzuruckClick(Sender: TObject);
    procedure ButtonbeendenClick(Sender: TObject);
    procedure ButtonplottenClick(Sender: TObject);

    procedure ButtonDeingabeBeendenClick(Sender: TObject);

    {Speichern}
    procedure speichernDClick(Sender: TObject);

    {Drucker}
    procedure einrichten1Click(Sender: TObject);
    procedure drucken1Click(Sender: TObject);
    procedure MaskEditEingabeKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditFallenKeyPress(Sender: TObject; var Key: Char);
    procedure Hilfe1Click(Sender: TObject);

    procedure FormShow(Sender: TObject);
    procedure ShowHint(Sender: TObject);

    procedure SpeedDatenFClick(Sender: TObject);
    procedure SpeedDruckenClick(Sender: TObject);
    procedure SpeedHilfeClick(Sender: TObject);
    procedure HandbuchClick(Sender: TObject);
    procedure speichernUnterClick(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure RadioButtonLeitzClick(Sender: TObject);
    procedure RadioButtonZeissClick(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
    procedure SpeedLiteraturClick(Sender: TObject);
    procedure MaskEditBEingabeKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditBFallenKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditNSKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditNSKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ListBoxDatenClick(Sender: TObject);
    procedure SpeedEinrichtenClick(Sender: TObject);
    procedure WinWordClick(Sender: TObject);
    procedure SpeedWinWordClick(Sender: TObject);
  end;

var
  Form10     : TForm10;
  Anzahl     : word;
  WertFeld   : array of word;
  AzimutS    : string;
  FallS      : string;
  Azimut     : word;
  Fall       : shortint;

implementation
uses Unit9, Unit12, Unit20, Unit21, Unit22, Unit23,
Unit24, Unit25, Unit60, Unit85;
{$R *.DFM}

procedure TForm10.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm10.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm10.FormActivate(Sender: TObject);
begin
  Left   := LeftDiag + ULap;
  Top    := TopDiag + ULap;
  Width  := WidForm;
  Height := HeiForm;
  setlength (AziFeld, MaxDaten);
  setlength (FalFeld, MaxDaten);
  LabelDemo.Visible               := false;
  if DemoB then LabelDemo.Visible := true;
  LabelMaxDat.Caption           := Tx(981);
  LabelMenge.Caption            := Inttostr(MaxDaten);
  PanelMaxDat.Hint              := Hilf(268);
  Panel3.Hint                   := Hilf(20);
  MaskEditEingabe.Hint          := Hilf(43);
  MaskEditFallen.Hint           := Hilf(44);
  PanelDaten.Hint               := Hilf(49);
  ButtonStart.Hint              := Hilf(50);
  ButtonDeingabebeenden.Hint    := Hilf(26);
  Buttonplotten.Hint            := Hilf(51);
  Buttonzuruck.Hint             := Hilf(52);
  Buttonbeenden.Hint            := Hilf(30);
  ListBoxDaten.Hint             := Hilf(53);
  Panel2.Hint                   := Hilf(53);
  SpeedDrucken.Hint             := Hilf(203);
  SpeedDatenF.Hint              := Hilf(204);
  SpeedHilfe.Hint               := Hilf(210);
  SpeedHandbuch.Hint            := Hilf(274);
  SpeedEinrichten.Hint          := Hilf(505);
  SpeedWinWord.Hint             := Hilf(470);
  case Programm of
    3 : Form10.Caption          := Tx(235);  {Plot von Linearen (manuell)}
    4 : Form10.Caption          := Tx(236);  {Plot von Groﬂkreisen (Manuell}
    8 : Form10.Caption          := Tx(237);  {statistische Maﬂzahlen(manuell}
   24 : Form10.Caption          := Tx(238);  {Isolinien (manuell}
   23 : Form10.Caption          := Tx(240);  {Cluster (manuell}
  end;
  Datenspeichern1.Caption       := Tx(86);
  speichernD.Caption            := Tx(87);
  speichernUnter.Caption        := Tx(88);
  Drucker1.Caption              := Tx(92);
  drucken1.Caption              := Tx(93);
  Einrichten1.Caption           := Tx(94);
  Hilfe1.Caption                := Tx(162)+' (F1)';
  LabelDaten.Caption            := Tx(183);  {Daten:}
  LabelKippwinkel.Caption       := Tx(178);  {Kippwinkel nach W negativ}
  LabelAnzahl.Caption           := Tx(222);  {Anzahl:}
  LabelEingabe.Caption          := Tx(77);   {Dateneingabe:}
  ButtonDeingabebeenden.Caption := Tx(182);  {Dateneingabe beenden}
  Buttonplotten.Caption         := Tx(241);
  Buttonzuruck.Caption          := Tx(30);
  Buttonbeenden.Caption         := Tx(53);
  GroupBoxUTisch.Caption        := Tx(1125);
  if Gefuegetyp < 3 then LabelKippwinkel.Caption := '';
  Label00000.Caption            := '';
  MaskEditEingabe.EditMask      := '999;0; ';
  MaskEditFallen.EditMask       := '99;0; ';
  MaskEditBEingabe.EditMask     := '999;0; ';
  MaskEditBFallen.EditMask      := '99;0; ';
  MaskEditNS.EditMask           := 'L;0; ';
  if Gefuegetyp > 2 then
    MaskEditFallen.EditMask     := '#99;0; ';
  LabelDaten.Enabled            := false;
  LabelAnzahl.Enabled           := false;
  LabelEingabe.Enabled          := false;
  Buttonplotten.Enabled         := false;
  Buttonzuruck.Enabled          := false;
  Buttonbeenden.Enabled         := false;
  ButtonDeingabeBeenden.Enabled := false;
  MaskEditEingabe.Enabled       := false;
  MaskEditFallen.Enabled        := false;
  ListBoxDaten.Enabled          := false;
  Datenspeichern1.Enabled       := false;
  Drucker1.Enabled              := false;
  SpeedDrucken.Enabled          := false;
  SpeedDatenF.Enabled           := false;
  PanelDaten.Enabled            := false;
  if Gefuegetyp < 3 then
  begin
    GroupBoxUTisch.Visible      := false;
    UTischS := '';
  end;
  GroupBoxUTisch.Enabled        := false;
  Anzahl                        := 0;
  Handbuch.Caption           := Tx(1055)+' (F2)';
  Literatur.Caption          := Tx(1183)+' (F5)';
  SpeedLiteratur.Hint        := Hilf(462);
  if KompassS = 'Brunton' then
  begin
    PanelBrunton.Visible := true;
    LabelDatenals.Caption := Tx(1209);
  end;
  if KompassS = 'Clar' then
  begin
    PanelBrunton.Visible   := false;
    LabelDatenals.Caption  := Tx(239);
  end;
  MaskEditFallen.Enabled   := false;
  LabelBEingabe.Caption    := Tx(55)+':';
  LabelBEingabe.Enabled    := false;
  MaskEditBEingabe.Enabled := false;
  MaskEditBFallen.Enabled  := false;
  MaskEditNS.Enabled       := false;
  LabelLoeschen.Caption    := Tx(1257);
  LabelLoeschen.Visible    := false;
  SpeedEinrichten.Enabled  := false;
  WinWord.Caption          := Tx(1207);
  SpeedWinWord.Enabled     := false;
end;

procedure TForm10.ButtonStartClick(Sender: TObject);
begin
  Buttonzuruck.Enabled     := true;
  Buttonbeenden.Enabled    := true;
  MaskEditEingabe.Enabled  := true;
  LabelDaten.Enabled       := true;
  LabelAnzahl.Enabled      := true;
  MaskEditBEingabe.Enabled := true;
  Label00000.Caption       := '';
  LabelEingabe.Enabled     := true;
  LabelBEingabe.Enabled    := true;
  Buttonplotten.Enabled    := false;
  ListBoxDaten.Clear;
  if Gefuegetyp > 2 then
    GroupBoxUTisch.Enabled  := true
  else
  begin
    PanelDaten.Enabled := true;
    if KompassS = 'Clar' then MaskEditEingabe.SetFocus;
    if KompassS = 'Brunton' then MaskEditBEingabe.SetFocus;
  end;
  LabelLoeschen.Visible    := true;
end;

procedure TForm10.MaskEditEingabeKeyPress(Sender: TObject; var Key: Char);
var
  MaxAzi : word;
begin
  if Key = chr(13) then
  begin
    MaxAzi := 360;
    if Winkel = 2 then MaxAzi := 400;
    AzimutS := MaskEditEingabe.Text;
    if AzimutS = '' then exit;
    LeerLoeschen (AzimutS);
    if AzimutS = '' then exit
    else
    begin
      Azimut := StrToInt (AzimutS);
      if Azimut <= MaxAzi then
      begin
        MaskEditFallen.Enabled := true;
        MaskEditFallen.SetFocus;
        MaskEditEingabe.Enabled := false;
      end
      else
      begin
        MaskEditEingabe.Clear;
        MaskEditEingabe.SetFocus;
      end;
    end;
  end;
end;

procedure TForm10.MaskEditBEingabeKeyPress(Sender: TObject; var Key: Char);
var
  MaxAzi : word;
begin
  if Winkel = 1 then MaxAzi := 360 else MaxAzi := 400;
  if Key = chr(13) then
  begin
    AzimutS := MaskEditBEingabe.Text;
    LeerLoeschen (AzimutS);
    if AzimutS = '' then exit
    else
    begin
      Azimut := StrToInt (AzimutS);
      if Azimut <= MaxAzi then
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

procedure TForm10.MaskEditFallenKeyPress(Sender: TObject; var Key: Char);
var
  ZeileS     : string[60];
  AnzahlS    : string[5];
  MaxFall    : shortint;
begin
  if key = chr(13) then
  begin
    ListBoxDaten.Enabled := true;
    MaxFall := 90;
    if Winkel = 2 then MaxFall := 100;
    FallS   := MaskEditFallen.Text;
    LeerLoeschen(FallS);
    if FallS = '' then exit
    else
    begin
      Fall := StrToInt (FallS);
      if Fall <= MaxFall then
      begin
        ButtonDeingabeBeenden.Enabled := true;
        MaskEditEingabe.Enabled := true;
        MaskEditEingabe.SetFocus;
      end
      else
      begin
        MaskEditFallen.Clear;
        MaskEditFallen.SetFocus;
        exit;
      end;
    end;
    inc (Anzahl);
    if Winkel = 2 then Neugrad (Azimut, Fall);
    if Gefuegetyp > 2 then UTisch(Azimut,Fall);
    AzimutS := IntToStr(Azimut);
    FallS   := IntToStr(Fall);
    AzimutS := RightS ('000' + AzimutS, 3);
    FallS   := RightS ('00' + FallS, 2);
    ZeileS  := '       '+AzimutS+'/'+FallS;
    AnzahlS := IntToStr (Anzahl);
    AnzahlS := RightS ('     '+AnzahlS,5);
    Label00000.Caption                := AnzahlS;
    MaskEditEingabe.Text              := '   ';
    MaskEditFallen.Text               := '   ';
    AziFeld[Anzahl]                   := Azimut;
    FalFeld[Anzahl]                   := Fall;
    ListBoxDaten.Items.Add (ZeileS);
    MaskEditFallen.Enabled            := false;
  end;
end;

procedure TForm10.MaskEditBFallenKeyPress(Sender: TObject; var Key: Char);
var
  MaxFall : shortint;
begin
  if key = chr(13) then
  begin
    FallS   := MaskEditBFallen.Text;
    LeerLoeschen(FallS);
    if FallS = '' then exit;
    Fall := StrToInt(FallS);
    MaxFall := 90;
    if Winkel = 2 then MaxFall := 100;
    if Fall <= MaxFall then
    begin
      inc (Anzahl);
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

procedure TForm10.MaskEditNSKeyUp(Sender: TObject; var Key: Word;
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

procedure TForm10.MaskEditNSKeyPress(Sender: TObject; var Key: Char);
var
  NordSudS : string;
  ZeileS   : string;
  AnzahlS  : string;
  FallS    : string;
  Azi      : integer;
begin
  if key = chr(13) then
  begin
    ListBoxDaten.Enabled := true;
    NordSudS := UcaseS(MaskEditNS.Text);
    Azi := Azimut;
    if NordSudS = '' then exit;
    if NordSudS = 'N' then
    begin
      if Azi > 180 then Azi := Azi -180;
      if Gefuegetyp = 2 then
      begin
        Azi := Azi - 90;
        if Azi <0 then Azi := Azi + 360;
      end;
      if Gefuegetyp = 1 then
      if Azi >90 then Azi := Azi + 180;
    end;
    if NordSudS = 'S' then
    begin
      if Gefuegetyp = 1 then
      begin
        if Azi <90 then Azi  := Azi + 180;
        if Azi >270 then Azi := Azi - 180;
      end;
      if Gefuegetyp = 2 then
      begin
        if Azi > 180 then Azi := Azi -180;
        Azi := Azi + 90;
        if Azi >360 then Azi := Azi - 360;
      end;
    end;
    Azimut  := Azi;
    AzimutS := IntToStr(Azimut);
    AzimutS := RightS ('000' + AzimutS, 3);
    FallS   := IntToStr(Fall);
    FallS   := RightS ('00' + FallS, 2);
    ZeileS  := '       '+AzimutS+'/'+FallS;
    AnzahlS := IntToStr (Anzahl);
    AnzahlS := RightS ('     '+AnzahlS,5);
    Label00000.Caption := AnzahlS;
    ListBoxDaten.Items.Add (ZeileS);
    MaskEditBEingabe.Text    := '   ';
    MaskEditBFallen.Text     := '  ';
    MaskEditNS.Text          := ' ';
    AziFeld[Anzahl]          := Azimut;
    FalFeld[Anzahl]          := Fall;
    MaskEditBFallen.Enabled  := false;
    MaskEditBEingabe.Enabled := true;
    MaskEditBEingabe.SetFocus;
    MaskEditNS.Enabled := false;
    ButtonDeingabeBeenden.Enabled := true;
  end;
end;

procedure TForm10.ListBoxDatenClick(Sender: TObject);
var
  i        : word;
  Geloscht : word;
  AziNeu   : array of word;
  FalNeu   : array of shortint;
begin
  Setlength (AziNeu,Anzahl+1);
  Setlength (FalNeu, Anzahl+1);
  Geloscht := 0;
  for i := 1 to Anzahl do
  begin
    AziNeu[i] := AziFeld[i];
    FalNeu[i] := FalFeld[i];
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
  end;
  for i:= Geloscht to Anzahl-1 do
  begin
    AziFeld[i] := AziNeu[i+1];
    FalFeld[i] := FalNeu[i+1];
  end;
  Anzahl := Anzahl - 1;
  Label00000.Caption := IntToStr(Anzahl);
  If KompassS = 'Brunton' then MaskEditBEingabe.SetFocus;
  if KompassS = 'Clar' then MaskEditEingabe.SetFocus;
  AziNeu := nil;
  FalNeu := nil;
end;

procedure TForm10.ButtonDeingabeBeendenClick(Sender: TObject);
begin
  LabelDaten.Enabled      := false;
  LabelEingabe.Enabled    := false;
  MaskEditEingabe.Enabled := false;
  ListBoxDaten.Enabled    := false;
  DatenSpeichern1.Enabled := true;
  Drucker1.Enabled        := true;
  Buttonplotten.Enabled   := true;
  SpeedDrucken.Enabled    := true;
  SpeedDatenF.Enabled     := true;
  SpeedEinrichten.Enabled := true;
  SpeedWinWord.Enabled    := true;
end;

procedure TForm10.ButtonzuruckClick(Sender: TObject);
begin
  AziFeld  := Nil;
  FalFeld  := Nil;
  MaskEditEingabe.Text := '   ';
  MaskEditFallen.Text  := '   ';
  Form10.Close;
end;

procedure TForm10.ButtonbeendenClick(Sender: TObject);
begin
  AziFeld  := Nil;
  FalFeld  := Nil;
  Form10.Close;
  if Programm =  3 then Form9.Close;
  if Programm =  4 then Form9.Close;
  if Programm =  8 then Form20.Close;
  if Programm = 20 then Form22.Close;
  if Programm = 21 then Form60.Close;
  if Programm = 24 then Form22.Close;
  if Programm = 23 then Form24.Close;
  SetCurrentDir(DirectS);
end;

procedure TForm10.RadioButtonLeitzClick(Sender: TObject);
begin
  UTischS := 'Leitz';
  PanelDaten.Enabled := true;
  MaskEditEingabe.setfocus;
end;

procedure TForm10.RadioButtonZeissClick(Sender: TObject);
begin
  UTischS := 'Zeiss';
  PanelDaten.Enabled := true;
  MaskEditEingabe.setfocus;
end;

procedure TForm10.speichernUnterClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := ExtenS;
  SaveDialog1.Filter := 'Planes (*.pla)|*.PLA';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    Speichern (CurrentFile, Anzahl, AziFeld, FalFeld);
  end;
end;

procedure TForm10.speichernDClick(Sender: TObject);
begin
   if CurrentFile <> '' then Speichern(CurrentFile,Anzahl,
     AziFeld,FalFeld)
   else speichernUnterClick(Sender);
end;

procedure TForm10.einrichten1Click(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TForm10.SpeedEinrichtenClick(Sender: TObject);
begin
  einrichten1Click(Sender);
end;

procedure TForm10.drucken1Click(Sender: TObject);
begin
  Datnam (DateiNameS[0], ExtenS);
  Titel8 ('3', 0, DateiNameS, AziFeld, FalFeld, Anzahl);
end;

procedure TForm10.WinWordClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := 'rtf';
  SaveDialog1.Filter     := 'rtf';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    WinDatei('3', 0, CurrentFile, CurrentFile,
             AziFeld, FalFeld, Anzahl);
  end;           
end;

procedure TForm10.SpeedWinWordClick(Sender: TObject);
begin
  WinWordClick(Sender);
end;

procedure TForm10.ButtonplottenClick(Sender: TObject);        {plotten}
begin
  ZahlGlob := Anzahl;
  ListBoxDaten.Clear;
  if (Programm = 3) or (Programm = 5) then Form12.Show;
  if Programm =  4 then Form85.Show;
  if Programm =  8 then Form21.Show;
  if Programm = 24 then Form23.Show;
  if Programm = 23 then Form25.Show;
end;

procedure TForm10.Hilfe1Click(Sender: TObject);
var
  DateiS : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\10PlotPunkte-man.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\10PlotPoints-man.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm10.SpeedDatenFClick(Sender: TObject);
begin
  speichernUnterClick(Sender);
end;

procedure TForm10.SpeedDruckenClick(Sender: TObject);
begin
  drucken1Click(Sender);
end;

procedure TForm10.SpeedHilfeClick(Sender: TObject);
begin
  Hilfe1Click(Sender);
end;

procedure TForm10.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if Programm = 3 then
  begin
    if SpracheS = 'DEUTSCH' then HilfeS := 'Daten_plotten.doc';
    if SpracheS = 'ENGLISH' then HilfeS := 'Plot_data.doc';
    ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
                 nil,nil,sw_normal);
  end;
  if Programm = 4 then
  begin
    if SpracheS = 'DEUTSCH' then HilfeS := 'Grosskreise.doc';
    if SpracheS = 'ENGLISH' then HilfeS := 'Great_circles.doc';
    ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
                 nil,nil,sw_normal);
  end;
  if Programm = 8 then
  begin
    if SpracheS = 'DEUTSCH' then HilfeS := 'Gefuege_Statistik.doc';
    if SpracheS = 'ENGLISH' then HilfeS := 'Fabric_Statistics.doc';
    ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
                 nil,nil,sw_normal);
  end;
  if Programm = 24 then
  begin
    if SpracheS = 'DEUTSCH' then HilfeS := 'Isolinien.doc';
    if SpracheS = 'ENGLISH' then HilfeS := 'Contour_lines.doc';
    ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
                 nil,nil,sw_normal);
  end;
  if Programm = 23 then
  begin
    if SpracheS = 'DEUTSCH' then HilfeS := 'Clodat.doc';
    if SpracheS = 'ENGLISH' then HilfeS := 'Clodat-E.doc';
    ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
                 nil,nil,sw_normal);
  end;
end;

procedure TForm10.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm10.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm10.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

end.
