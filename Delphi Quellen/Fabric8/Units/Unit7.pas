unit Unit7; {Rotation, manuelle Eingabe}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Mask, Menus, Basic, Globvar, Texte, Kalkulat, Standard,
  EinAusGa, Drucken, ComCtrls, Buttons, Shellapi, ehsHelpRouter;

type
  TForm7 = class(TForm)
    Panel1        : TPanel;
    LabelDaten    : TLabel;
    Labelrotierte : TLabel;
    ListBoxDaten  : TListBox;
    PanelCDaten: TPanel;

    Panel3       : TPanel;
    LabelRAchse  : TLabel;
    LabelRWinkel : TLabel;

    Panel4       : TPanel;
    LabelDAnzahl : TLabel;

    Panel5                  : TPanel;
    LabelRotationsachse     : TLabel;
    LabelRotationswinkel    : TLabel;
    LabelDatenals           : TLabel;
    LabelFallwinkel         : TLabel;
    LabelKippwinkel         : TLabel;

    
    PanelMaxDat : TPanel;
    LabelMaxDat : TLabel;
    LabelMenge  : TLabel;

    Buttonbeenden  : TButton;
    Buttonzuruck   : TButton;
    ButtonStart    : TButton;
    ButtonDbeenden : TButton;

    MainMenu1: TMainMenu;

    Datenspeichern1: TMenuItem;
    speichernD: TMenuItem;
    speichernDUnter: TMenuItem;

    rotierteDatenspeichern1 : TMenuItem;
    speichernR: TMenuItem;
    speichernRUnter: TMenuItem;

    Drucker1    : TMenuItem;
    einrichten1 : TMenuItem;
    drucken1    : TMenuItem;
    MaskEditDatenCAzimut: TMaskEdit;
    MaskEditDatenCFall: TMaskEdit;

    PrintDialog1        : TPrintDialog;
    PrinterSetupDialog1 : TPrinterSetupDialog;

    Label00000 : TLabel;

    MaskEditAchse     : TMaskEdit;
    MaskEditRotFall   : TMaskEdit;
    MaskEditRotWinkel : TMaskEdit;
    Hilfe1            : TMenuItem;
    StatusBar         : TStatusBar;

    Panel6: TPanel;
    SpeedDatenF      : TSpeedButton;
    SpeedDrucken     : TSpeedButton;
    SpeedHilfe       : TSpeedButton;
    Handbuch: TMenuItem;
    SaveDialog1: TSaveDialog;
    LabelDemo: TLabel;
    SpeedErgebnisseF: TSpeedButton;
    SpeedHandbuch: TSpeedButton;
    GroupBoxUTisch: TGroupBox;
    RadioButtonLeitz: TRadioButton;
    RadioButtonZeiss: TRadioButton;
    Literatur: TMenuItem;
    SpeedLiteratur: TSpeedButton;
    WinWord: TMenuItem;
    SpeedWinWord: TSpeedButton;
    PanelBDaten: TPanel;
    LabelCDEingabe: TLabel;
    LabelBDEingabe: TLabel;
    MaskEditBAzimut: TMaskEdit;
    MaskEditBFall: TMaskEdit;
    MaskEditNS: TMaskEdit;
    SpeedEinrichten: TSpeedButton;
    SpeedDaten: TSpeedButton;
    SpeedGKreise: TSpeedButton;
    SpeedIso: TSpeedButton;
    SpeedStatistik: TSpeedButton;
    SpeedMaxima: TSpeedButton;
    Auswertung: TMenuItem;
    DatenPlotten: TMenuItem;
    GKreisePlotten: TMenuItem;
    Isolinien: TMenuItem;
    Statistik: TMenuItem;
    Submaxima: TMenuItem;

    procedure FormActivate(Sender: TObject);

    procedure ButtonbeendenClick(Sender: TObject);
    procedure ButtonzuruckClick(Sender: TObject);
    procedure ButtonStartClick(Sender: TObject);
    procedure ButtonDbeendenClick(Sender: TObject);

   {Drucker}
    procedure einrichten1Click(Sender: TObject);
    procedure drucken1Click(Sender: TObject);

   {speichern}
    procedure speichernDClick(Sender: TObject);
    procedure speichernDUnterClick(Sender: TObject);
    procedure speichernRClick(Sender: TObject);
    procedure speichernRUnterClick(Sender: TObject);
    procedure MaskEditAchseKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditRotFallKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditDatenCAzimutKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditRotWinkelKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditDatenCFallKeyPress(Sender: TObject; var Key: Char);

    procedure ShowHint(Sender: TObject);
    procedure FormShow(Sender: TObject);

    procedure SpeedDatenFClick(Sender: TObject);
    procedure SpeedErgebnisseFClick(Sender: TObject);
    procedure SpeedDruckenClick(Sender: TObject);
    procedure SpeedHilfeClick(Sender: TObject);
    procedure Hilfe1Click(Sender: TObject);
    procedure HandbuchClick(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure RadioButtonLeitzClick(Sender: TObject);
    procedure RadioButtonZeissClick(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
    procedure SpeedLiteraturClick(Sender: TObject);
    procedure WinWordClick(Sender: TObject);
    procedure SpeedWinWordClick(Sender: TObject);
    procedure MaskEditBAzimutKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditBFallKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditNSKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditNSKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedEinrichtenClick(Sender: TObject);
    procedure DatenPlottenClick(Sender: TObject);
    procedure GKreisePlottenClick(Sender: TObject);
    procedure IsolinienClick(Sender: TObject);
    procedure StatistikClick(Sender: TObject);
    procedure SubmaximaClick(Sender: TObject);
    procedure SpeedDatenClick(Sender: TObject);
    procedure SpeedGKreiseClick(Sender: TObject);
    procedure SpeedIsoClick(Sender: TObject);
    procedure SpeedStatistikClick(Sender: TObject);
    procedure SpeedMaximaClick(Sender: TObject);
  end;

var
  Form7: TForm7;
  AchseAzimut    : word;
  AchseFall      : shortint;
  AchseWinkel    : integer;
  RadAchseAzimut : extended;
  RadAchseFall   : extended;
  RotDatAzimutP  : array of word;
  RotDatFallP    : array of word;
  Aa, B, C       : array[0..3] of extended;
  Z              : byte;
  Anzahl         : word;
  NameS          : string;
  DateiZahL      : byte;
  CurrentFile    : string;
  RAziS          : string;
  RFallS         : string;
  RWinkelS       : string;
  AzimutS        : string;
  FallenS        : string;
  Azimut         : word;
  Fall           : shortint;
  MaxAzi         : word;
  MaxFall        : shortint;

implementation
uses Unit6, Unit12, Unit21, Unit23, Unit25, Unit85;
{$R *.DFM}

procedure TForm7.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm7.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm7.FormActivate(Sender: TObject);
begin
  Left   := 140;
  Top    := 80;
  Height := 640;
  Width  := 830;
  setlength (AziFeld, MaxDaten);
  setlength (FalFeld, MaxDaten);
  setlength (RotDatAzimutP, MaxDaten);
  setlength (RotDatFallP, MaxDaten);
  LabelDemo.Visible               := false;
  if DemoB then LabelDemo.Visible := true;
  PanelMaxDat.Hint                := Hilf(268);
  LabelMaxDat.Caption             := Tx(981);
  LabelMenge.Caption              := InttoStr(MaxDaten);
  MaskEditAchse.Hint              := Hilf(39);
  MaskEditRotFall.Hint            := Hilf(40);
  MaskEditRotWinkel.Hint          := Hilf(41);
  MaskEditDatenCAzimut.Hint       := Hilf(43);
  MaskEditDatenCFall.Hint         := Hilf(44);
  ButtonStart.Hint                := Hilf(27);
  ButtonDbeenden.Hint             := Hilf(26);
  Buttonzuruck.Hint               := Hilf(46);
  Buttonbeenden.Hint              := Hilf(30);
  ListBoxDaten.Hint               := Hilf(47);
  Panel1.Hint                     := Hilf(47);
  SpeedDrucken.Hint               := Hilf(203);
  SpeedDatenF.Hint                := Hilf(204);
  SpeedErgebnisseF.Hint           := Hilf(207);
  SpeedHilfe.Hint                 := Hilf(210);
  SpeedHandbuch.Hint              := Hilf(274);
  SpeedEinrichten.Hint            := Hilf(505);
  SpeedDaten.Hint                 := Hilf(506);
  SpeedGKreise.Hint               := Hilf(511);
  SpeedIso.Hint                   := Hilf(507);
  SpeedStatistik.Hint             := Hilf(509);
  SpeedMaxima.Hint                := Hilf(508);
  Form7.Caption                   := Tx(173);  {Fabric7: Rotationen (manuell}
  Datenspeichern1.Caption         := Tx(86);
  speichernD.Caption              := Tx(87);
  speichernDUnter.Caption         := Tx(88);
  speichernR.Caption              := Tx(87);
  speichernRUnter.Caption         := Tx(88);
  Drucker1.Caption                := Tx(92);
  drucken1.Caption                := Tx(93);
  Einrichten1.Caption             := Tx(94);
  Hilfe1.Caption                  := Tx(162)+' (F1)';
  LabelRotationsachse.Caption     := Tx(175); {Rotationsachse als Fallazimut/}
  LabelFallwinkel.Caption         := Tx(176); {Fallwinkel eingeben.}
  LabelRotationswinkel.Caption    := Tx(177); {Rotationswinkel im Uhrzeiger..}
  LabelDatenals.Caption           := Tx(453); {Daten als Fallazimut / ...}
  LabelKippwinkel.Caption         := Tx(178);
  LabelRAchse.Caption             := Tx(179);
  LabelRWinkel.Caption            := Tx(180);
  LabelDAnzahl.Caption            := Tx(181);
  LabelCDEingabe.Caption          := Tx(102);
  LabelBDEingabe.Caption          := Tx(102);
  ButtonDbeenden.Caption          := Tx(182);
  LabelDaten.Caption              := Tx(183);
  Labelrotierte.Caption           := Tx(184);
  Buttonzuruck.Caption            := Tx(30);
  Buttonbeenden.Caption           := Tx(53);
  Auswertung.Caption              := Tx(1341);
  Isolinien.Caption               := Tx(618);
  Statistik.Caption               := Tx(1342);
  Submaxima.Caption               := Tx(579);
  GKreisePlotten.Caption          := TX(1345);
  DatenPlotten.Caption            := Tx(1343);
  GroupBoxUTisch.Caption          := Tx(1125);
  if Gefuegetyp < 3 then
    LabelKippwinkel.Caption       := '';
  MaskEditAchse.EditMask          := '999;0; ';
  MaskEditRotFall.EditMask        := '99;0; ';
  MaskEditRotWinkel.EditMask      := '#999;0; ';
  MaskEditDatenCAzimut.EditMask   := '999;0; ';
  MaskEditDatenCFall.EditMask     := '99;0; ';
  MaskEditBAzimut.EditMask        := '999;0; ';
  MaskEditBFall.EditMask          := '99;0; ';
  MaskEditNS.EditMask             := 'L;0; ';
  if Gefuegetyp > 2 then
    MaskEditDatenCFall.EditMask   := '#99;0; ';
  Datenspeichern1.Enabled         := false;
  rotierteDatenspeichern1.Caption := TX(174);
  rotierteDatenspeichern1.Enabled := false;
  Drucker1.Enabled                := false;
  LabelDAnzahl.Enabled            := false;
  Label00000.Caption              := '';
  MaskEditDatenCAzimut.Enabled    := false;
  MaskEditDatenCFall.Enabled      := false;
  SpeedDrucken.Enabled            := false;
  SpeedDatenF.Enabled             := false;
  SpeedErgebnisseF.Enabled        := false;
  SpeedEinrichten.Enabled         := false;           
  Handbuch.Caption                := Tx(1055)+' (F2)';
  Literatur.Caption               := Tx(1183)+' (F5)';
  SpeedLiteratur.Hint             := Hilf(462);
  if (GefuegeTyp = 3) or (Gefuegetyp = 4) then
    LabelKippwinkel.Caption := Tx(178);
  DateiZahl                    := 0;
  GroupBoxUTisch.Visible       := false;
  MaskEditDatenCAzimut.Enabled := false;
  MaskEditDatenCFall.Enabled   := false;
  MaskEditAchse.Enabled        := false;
  MaskEditRotFall.Enabled      := false;
  MaskEditRotWinkel.Enabled    := false;
  WinWord.Caption              := Tx(1207);
  SpeedWinWord.Hint            := Hilf(470);
  SpeedWinWord.Enabled         := false;
  if KompassS = 'Brunton' then
  begin
    PanelBDaten.Visible   := true;
    LabelDatenals.Caption := Tx(1209);
  end;
  if KompassS = 'Clar' then
  begin
    PanelCDaten.Visible    := true;
    PanelBDaten.Visible    := false;
    LabelDatenals.Caption  := Tx(239);
  end;
  LabelBDEingabe.Enabled  := false;
  MaskEditBAzimut.Enabled := false;
  MaskEditBFall.Enabled   := false;
  MaskEditNS.Enabled      := false;
  if Winkel = 1 then MaxAzi := 360 else MaxAzi := 400;
  if Winkel = 1 then MaxFall := 90 else MaxFall := 100;;
  Auswertung.Enabled     := false;
  SpeedDaten.Enabled     := false;
  SpeedGKreise.Enabled   := false;
  SpeedIso.Enabled       := false;
  SpeedStatistik.Enabled := false;
  SpeedMaxima.Enabled    := false;
end;

procedure TForm7.ButtonbeendenClick(Sender: TObject);
begin
  AziFeld       := Nil;
  FalFeld       := Nil;
  RotDatAzimutP := Nil;
  RotDatFallP   := Nil;
  if WeiterB[7] then
  begin
    AziFeld := Nil;
    FalFeld := Nil;
  end;
  Form7.Close;
  Form6.Close;
  SetCurrentDir(DirectS);
end;

procedure TForm7.ButtonzuruckClick(Sender: TObject);
begin
  AziFeld       := Nil;
  FalFeld       := Nil;
  RotDatAzimutP := Nil;
  RotDatFallP   := Nil;
  if WeiterB[7] then
  begin
    AziFeld := Nil;
    FalFeld := Nil;
  end;
  Form7.Close;
end;

procedure TForm7.ButtonStartClick(Sender: TObject);
begin
  Buttonzuruck.Enabled      := true;
  Buttonbeenden.Enabled     := true;
  MaskEditAchse.Enabled     := true;
  LabelRAchse.Enabled       := true;
  LabelRWinkel.Enabled      := true;
  MaskEditAchse.Text        := '   ';
  MaskEditRotFall.Text      := '  ';
  MaskEditRotWinkel.Text    := '    ';
  ListBoxDaten.Clear;
  Label00000.Caption        := '';
  LabelCDEingabe.Enabled    := false;
  LabelBDEingabe.Enabled    := false;
  LabelDAnzahl.Enabled      := false;
  Label00000.Caption        := '';
  ButtonDbeenden.Enabled    := false;
  MaskEditAchse.SetFocus;
  MaskEditBAzimut.Clear;
  MaskEditBFall.Clear;
  MaskEditNS.Clear;
end;

procedure TForm7.MaskEditAchseKeyPress(Sender: TObject; var Key: Char);
const MaxAzi = 360;
begin
  if Key = chr(13) then
  begin
    RaziS := MaskEditAchse.Text;
    LeerLoeschen (RaziS);
    if RaziS = '' then exit;
    AchseAzimut := StrToInt (RaziS);
    if AchseAzimut <= MaxAzi then
    begin
      MaskEditRotFall.Enabled := true;
      MaskEditRotFall.SetFocus;
    end
    else
    begin
      MaskEditAchse.Clear;
      MaskEditAchse.SetFocus;
    end;
  end;
end;

procedure TForm7.MaskEditRotFallKeyPress(Sender: TObject; var Key: Char);
const MaxFall = 90;
begin
  if Key = chr(13) then
  begin
    RfallS := MaskEditRotFall.Text;
    LeerLoeschen (RfallS);
    if RfallS = '' then exit;
    AchseFall := StrToInt (RFallS);
    if AchseFall <= MaxFall then
    begin
      MaskEditRotWinkel.Enabled := true;
      MaskEditRotWinkel.SetFocus;
    end
    else
    begin
      MaskEditRotFall.Clear;
      MaskEditRotFall.SetFocus;
    end;
  end;
end;

procedure TForm7.MaskEditRotWinkelKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(13) then
  begin
    RWinkelS := MaskEditRotWinkel.Text;
    LeerLoeschen (RWinkelS);
    if RWinkelS = '' then exit;
    AchseWinkel := StrToInt(RWinkelS);
    if Gefuegetyp > 2 then GroupBoxUTisch.Visible := true;
    if Gefuegetyp < 3 then
    begin
      MaskEditDatenCAzimut.Enabled := true;
      MaskEditBAzimut.Enabled      := true;
      LabelCDEingabe.Enabled       := true;
      LabelBDEingabe.Enabled       := true;
      LabelDaten.Enabled           := true;
      Labelrotierte.Enabled        := true;
    end;
    MaskEditAchse.Enabled     := false;
    MaskEditRotFall.Enabled   := false;
    MaskEditRotWinkel.Enabled := false;
    if KompassS = 'Clar' then
    begin
      MaskEditDatenCAzimut.Text    := '   ';
      MaskEditDatenCFall.Text      := '  ';
      MaskEditDatenCAzimut.Enabled := true;
      MaskEditDatenCAzimut.SetFocus;
    end;
    if KompassS = 'Brunton' then
    begin
      MaskEditBAzimut.Text    := '   ';
      MaskEditBFall.Text      := '  ';
      MaskEditNS.Text         := ' ';
      MaskEditBAzimut.Enabled := true;
      MaskEditBAzimut.SetFocus;
    end;
    Abc (AchseWinkel,AchseAzimut,AchseFall,RadAchseAzimut,
         RadAchseFall, Aa,B,C,Z);
    Anzahl := 0;
    LabelDAnzahl.Enabled  := true;
  end;
end;

procedure TForm7.MaskEditDatenCAzimutKeyPress(Sender: TObject; var Key: Char);
var
  MaxAzi : word;
begin
  if Key = chr(13) then
  begin
    MaxAzi := 360;
    if Winkel = 2 then MaxAzi := 400;
    AzimutS := MaskEditDatenCAzimut.Text;
    LeerLoeschen (AzimutS);
    if AzimutS = '' then exit;
    Azimut := StrToInt (AzimutS);
    if Azimut <= MaxAzi then
    begin
      MaskEditDatenCFall.Enabled := true;
      MaskEditDatenCFall.SetFocus;
      MaskEditDatenCAzimut.Enabled := false;
    end
    else
    begin
      MaskEditDatenCAzimut.Clear;
      MaskEditDatenCAzimut.SetFocus;
    end;
  end;
end;

procedure TForm7.MaskEditDatenCFallKeyPress(Sender: TObject; var Key: Char);
var
  Sign          : shortint;
  DatAzimutS    : string;
  DatFallS      : string;
  RotDatAzimutS : string;
  RotDatFallS   : string;
  ZeileS        : string[60];
  AnzahlS       : string[5];
  RotAzimut     : word;
  RotFall       : shortint;
  Azi           : word;
  Ffall         : shortint;
  MaxFall       : shortint;
begin
  if key = chr(13) then
  begin
    MaxFall := 90;
    if Winkel = 2 then MaxFall := 100;
    ListBoxDaten.Enabled := true;
    FallenS  := MaskEditDatenCFall.Text;
    LeerLoeschen(FallenS);
    if FallenS = '' then exit;
    Fall := StrToInt (Fallens);
    if Fall <= MaxFall then
    begin
      ButtonDBeenden.Enabled := true;
      MaskEditDatenCAzimut.Enabled := true;
      MaskEditDatenCAzimut.SetFocus;
    end
    else
    begin
      MaskEditDatenCFall.Clear;
      MaskEditDatenCFall.SetFocus;
      exit;
    end;
    inc (Anzahl);
    if Winkel = 2 then
    begin
      Neugrad (Azimut, Fall);
    end;
    if Gefuegetyp > 2 then UTisch (Azimut, Fall);
    Azi   := Azimut;
    Ffall := Fall;
    if Gefuegetyp = 2 then
    begin
      Azi   := (Azi + 180) mod 360;
      Ffall := 90 - Ffall;
    end;
    Rotieren (Aa, B, C, Gefuegetyp, Azi, Ffall, Z, RadAchseAzimut,
              RadAchseFall, RotAzimut, RotFall, Sign);
    DatAzimutS := IntToStr (Azimut);
    DatAzimutS := RightS ('000' + DatAzimutS, 3);
    DatFallS   := IntToStr (Fall);
    DatFallS   := RightS ('00' + DatFallS, 2);
    RotDatAzimutS := IntToStr (RotAzimut);
    RotDatAzimutS := RightS ('000' + RotDatAzimutS, 3);
    RotDatFallS   := IntToStr (RotFall);
    RotDatFallS   := RightS ('00' + RotDatFallS, 2);
    ZeileS := '   '+DatAzimutS+'/'+DatFallS+'                    '+
              RotDatAzimutS+'/'+RotDatFallS;
    AnzahlS := IntToStr (Anzahl);
    AnzahlS := RightS ('     '+AnzahlS,5);
    Label00000.Caption := AnzahlS;
    ListBoxDaten.Items.Add (ZeileS);
    AziFeld[Anzahl]       := Azimut;
    FalFeld[Anzahl]       := Fall;
    RotDatAzimutp[Anzahl] := RotAzimut;
    RotDatFallP[Anzahl]   := RotFall;
    if MengeDaten = 'mehr' then
    begin
      MaskEditDatenCAzimut.Text  := '   ';
      MaskEditDatenCFall.Text    := '   ';
      MaskEditDatenCFall.Enabled := false;
    end;
    if MengeDaten = 'einzel' then
    begin
      MaskEditAchse.Text     := '   ';
      MaskEditRotFall.Text   := '  ';
      MaskEditRotWinkel.Text := '    ';
      MaskEditAchse.Enabled  := true;
      MaskEditAchse.SetFocus;
    end;
  end;
end;

procedure TForm7.MaskEditBAzimutKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(13) then
  begin
    AzimutS := MaskEditBAzimut.Text;
    LeerLoeschen (AzimutS);
    if AzimutS = '' then exit
    else
    begin
      Azimut := StrToInt (AzimutS);
      if Azimut <= MaxAzi then
      begin
        MaskEditBFall.Enabled := true;
        MaskEditBFall.SetFocus;
        MaskEditBAzimut.Enabled := false;
      end
      else
      begin
        MaskEditBAzimut.Clear;
        MaskEditBAzimut.SetFocus;
      end;
    end;
  end;
end;

procedure TForm7.MaskEditBFallKeyPress(Sender: TObject; var Key: Char);
var
  FallS : string;
begin
  if key = chr(13) then
  begin
    FallS   := MaskEditBFall.Text;
    LeerLoeschen(FallS);
    if FallS = '' then exit
    else
    begin
      Fall := StrToInt (FallS);
      if Fall <= MaxFall then
      begin
        ButtonDbeenden.Enabled := true;
        MaskEditNS.Enabled := true;
        MaskEditNS.SetFocus;
        MaskEditBFall.Enabled := false;
      end
      else
      begin
        MaskEditBFall.Clear;
        MaskEditBFall.SetFocus;
        exit;
      end;
    end;
  end;
end;

procedure TForm7.MaskEditNSKeyPress(Sender: TObject; var Key: Char);
var
  NordSudS      : string;
  ZeileS        : string;
  AnzahlS       : string;
  Azi           : integer;
  RotDatAzimutS : string;
  RotAzimut     : word;
  RotFall       : shortint;
  Sign          : shortint;
  DatAzimutS    : string;
  DatFallS      : string;
  RotDatFallS   : string;
  Ffall         : shortint;
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
    inc (Anzahl);
    Azimut := Azi;
    Ffall  := Fall;
    if Winkel = 2 then
    begin
      Neugrad (Azimut, Ffall);
    end;
    if Gefuegetyp = 2 then
    begin
      Azi  := (Azi + 180) mod 360;
      Fall := 90 - Fall;
    end;
    Rotieren (Aa, B, C, Gefuegetyp, Azi, Fall, Z, RadAchseAzimut,
              RadAchseFall, RotAzimut, RotFall, Sign);
    DatAzimutS := IntToStr (Azimut);
    DatAzimutS := RightS ('000' + DatAzimutS, 3);
    DatFallS   := IntToStr (Ffall);
    DatFallS   := RightS ('00' + DatFallS, 2);
    RotDatAzimutS := IntToStr (RotAzimut);
    RotDatAzimutS := RightS ('000' + RotDatAzimutS, 3);
    RotDatFallS   := IntToStr (RotFall);
    RotDatFallS   := RightS ('00' + RotDatFallS, 2);
    ZeileS := '   '+DatAzimutS+'/'+DatFallS+'                    '+
              RotDatAzimutS+'/'+RotDatFallS;
    AnzahlS := IntToStr (Anzahl);
    AnzahlS := RightS ('     '+AnzahlS,5);
    Label00000.Caption := AnzahlS;
    ListBoxDaten.Items.Add (ZeileS);
    AziFeld[Anzahl]       := Azimut;
    FalFeld[Anzahl]       := Ffall;
    RotDatAzimutp[Anzahl] := RotAzimut;
    RotDatFallP[Anzahl]   := RotFall;
    if MengeDaten = 'mehr' then
    begin
      MaskEditBAzimut.Enabled := true;
      MaskEditBAzimut.Clear;
      MaskEditBFall.Clear;
      MaskEditNS.Clear;
      MaskEditBAzimut.SetFocus;
    end;
    if MengeDaten = 'einzel' then
    begin
      MaskEditAchse.Text     := '   ';
      MaskEditRotFall.Text   := '  ';
      MaskEditRotWinkel.Text := '    ';
      MaskEditAchse.Enabled  := true;
      MaskEditAchse.SetFocus;
    end;
  end;
end;

procedure TForm7.MaskEditNSKeyUp(Sender: TObject; var Key: Word;
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

procedure TForm7.ButtonDbeendenClick(Sender: TObject);   {Dateneingabe beenden}
begin
  MaskEditDatenCAzimut.Enabled    := false;
  MaskEditDatenCFall.Enabled      := false;
  Datenspeichern1.Enabled         := true;
  rotierteDatenspeichern1.Enabled := true;
  Drucker1.Enabled                := true;
  SpeedDrucken.Enabled            := true;
  SpeedDatenF.Enabled             := true;
  SpeedErgebnisseF.Enabled        := true;
  SpeedWinWord.Enabled            := true;
  SpeedEinrichten.Enabled         := true;
  ShowMessage (Tx(117));
  Auswertung.Enabled              := true;
  SpeedDaten.Enabled              := true;
  SpeedIso.Enabled                := true;
  SpeedStatistik.Enabled          := true;
  SpeedMaxima.Enabled             := true;
  if (Gefuegetyp = 2) or (Gefuegetyp = 4) then
  begin
    GKreisePlotten.Enabled := true;
    SpeedGkreise.Enabled   := true;
  end
  else
  begin
    GKreisePlotten.Enabled := false;
    SpeedGKreise.Enabled   := false;
  end;
end;

procedure TForm7.einrichten1Click(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TForm7.SpeedEinrichtenClick(Sender: TObject);
begin
  einrichten1Click(Sender);
end;

procedure TForm7.drucken1Click(Sender: TObject);
var
  DatName : array[0..1] of string;
begin
  If NameS = '' then Datnam (NameS, ExtenS);
  DatName[0] := NameS;
  Titel2 (DateiZahl, DatName, GefuegeTyp, AchseAzimut, AchseFall,
          AchseWinkel, AziFeld, FalFeld, RotDatAzimutP,
          RotDatFallP, Anzahl);
end;

procedure TForm7.WinWordClick(Sender: TObject);
var
  DatName : array[0..1] of string;
begin
  If NameS = '' then Datnam (NameS, ExtenS);
  SaveDialog1.DefaultExt := 'rtf';
  SaveDialog1.Filter     := 'rtf';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    DatName[0] := NameS;
    WinTitel2 (CurrentFile,0, DatName, GefuegeTyp, AchseAzimut,
               AchseFall, AchseWinkel, AziFeld, FalFeld,
               RotDatAzimutP, RotDatFallP, Anzahl);
  end;
end;

procedure TForm7.SpeedWinWordClick(Sender: TObject);
begin
  WinWordClick(Sender);
end;

procedure TForm7.DatenPlottenClick(Sender: TObject);
var
  i : word;
begin
  ZahlGlob := Anzahl;
  for i := 1 to ZahlGlob do
  begin
    AziFeld[i] := RotDatAzimutP[i];
    FalFeld[i] := RotDatFallP[i];
  end;
  WeiterB[7] := true;
  Application.CreateForm(TForm12, Form12);
  Form12.Show;
end;

procedure TForm7.SpeedDatenClick(Sender: TObject);
begin
  DatenPlottenClick(Sender);
end;

procedure TForm7.GKreisePlottenClick(Sender: TObject);
var
  i : word;
begin
  ZahlGlob := Anzahl;
  for i := 1 to ZahlGlob do
  begin
    AziFeld[i] := RotDatAzimutP[i];
    FalFeld[i] := RotDatFallP[i];
  end;
  WeiterB[7] := true;
  Application.CreateForm(TForm85, Form85);
  Form85.Show;
end;

procedure TForm7.SpeedGKreiseClick(Sender: TObject);
begin
  GKreisePlottenClick(Sender);
end;

procedure TForm7.IsolinienClick(Sender: TObject);
var
  i : word;
begin
  ZahlGlob := Anzahl;
  for i := 1 to ZahlGlob do
  begin
    AziFeld[i] := RotDatAzimutP[i];
    FalFeld[i] := RotDatFallP[i];
  end;
  WeiterB[7] := true;
  Application.CreateForm(TForm23, Form23);
  Form23.Show;
end;

procedure TForm7.SpeedIsoClick(Sender: TObject);
begin
  IsolinienClick(SEnder);
end;

procedure TForm7.StatistikClick(Sender: TObject);
var
  i : word;
begin
  ZahlGlob := Anzahl;
  for i := 1 to ZahlGlob do
  begin
    AziFeld[i] := RotDatAzimutP[i];
    FalFeld[i] := RotDatFallP[i];
  end;
  WeiterB[7] := true;
  Application.CreateForm(TForm21, Form21);
  Form21.Show;
end;

procedure TForm7.SpeedStatistikClick(Sender: TObject);
begin
  StatistikClick(Sender);
end;

procedure TForm7.SubmaximaClick(Sender: TObject);
var
  i : word;
begin
  ZahlGlob := Anzahl;
  for i := 1 to ZahlGlob do
  begin
    AziFeld[i] := RotDatAzimutP[i];
    FalFeld[i] := RotDatFallP[i];
  end;
  WeiterB[7] := true;
  Application.CreateForm(TForm25, Form25);
  Form25.Show;
end;

procedure TForm7.SpeedMaximaClick(Sender: TObject);
begin
  SubmaximaClick(Sender);
end;

procedure TForm7.speichernDClick(Sender: TObject);
begin
   if CurrentFile <> '' then Speichern(CurrentFile,Anzahl,
     AziFeld,FalFeld)
   else speichernDUnterClick(Sender);
end;

procedure TForm7.speichernDUnterClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := ExtenS;
  SaveDialog1.Filter     := ExtenS;
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    Speichern (CurrentFile, Anzahl, AziFeld, FalFeld);
  end;
end;

procedure TForm7.speichernRClick(Sender: TObject);
begin
   if CurrentFile <> '' then Speichern(CurrentFile,Anzahl,
     RotDatAzimutP, RotDatFallP)
   else speichernRUnterClick(Sender);
end;

procedure TForm7.speichernRUnterClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := ExtenS;
  if ExtenS = 'LIN' then SaveDialog1.Filter := 'Linears (*.lin)|*.LIN';
  if ExtenS = 'PLA' then SaveDialog1.Filter := 'Planes (*.pla)|*.PLA';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    Speichern (CurrentFile, Anzahl, RotDatAzimutP, RotDatFallP);
  end;
end;

procedure TForm7.SpeedDatenFClick(Sender: TObject);
begin
  speichernDUnterClick(Sender);
end;

procedure TForm7.SpeedErgebnisseFClick(Sender: TObject);
begin
  speichernRUnterClick(Sender);
end;

procedure TForm7.SpeedDruckenClick(Sender: TObject);
begin
  drucken1Click(Sender);
end;

procedure TForm7.SpeedHilfeClick(Sender: TObject);
begin
  Hilfe1Click(Sender);
end;

procedure TForm7.Hilfe1Click(Sender: TObject);
var
  DateiS : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\7Rotation-man.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\7Rotation-man.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm7.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Rotation.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'Rotation-E.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm7.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm7.RadioButtonLeitzClick(Sender: TObject);
begin
  UTischS := 'Leitz';
  MaskEditDatenCAzimut.Enabled := true;
  MaskEDitDatenCFall.Enabled   := true;
  LabelCDEingabe.Enabled       := true;
  LabelDaten.Enabled           := true;
  Labelrotierte.Enabled        := true;
  MaskEditDatenCAzimut.Enabled := true;
  MaskEditDatenCFall.Enabled   := true;
  MaskEditDatenCAzimut.SetFocus;
end;

procedure TForm7.RadioButtonZeissClick(Sender: TObject);
begin
  UTischS             := 'Zeiss';
  PanelCDaten.Enabled := true;
  MaskEditDatenCAzimut.Setfocus;
end;

procedure TForm7.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm7.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

end.
