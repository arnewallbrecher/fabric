unit Unit8; {Rotation, Eingabe von Datenträger}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, ExtCtrls, Menus, Globvar,
  Einausga, Dateien, Texte, Basic, Mask, Kalkulat, Drucken,
  ComCtrls, Buttons, Shellapi, FileCtrl, Standard, ehsHelpRouter;

type
  TForm8 = class(TForm)
    Panel1       : TPanel;
    LabelDaten   : TLabel;
    ListBoxDaten : TListBox;

    Panel2              : TPanel;
    Labelausgewaehlte   : TLabel;
    ListBoxausgewaehlte : TListBox;

    Panel3         : TPanel;
    LabelDateien   : TLabel;
    ListBoxDateien : TListBox;

    Panel4           : TPanel;
    LabelExtension   : TLabel;
    LabelAnzahl      : TLabel;
    LabelLIN         : TLabel;
    Label00000       : TLabel;

    Panel5          : TPanel;
    ButtonStart     : TButton;
    Buttonberechnen : TButton;

    Panel6        : TPanel;
    Buttonzuruck  : TButton;
    Buttonbeenden : TButton;

    Panel7       : TPanel;
    LabelRAchse  : TLabel;
    LabelRAzimut : TLabel;
    LabelFallen  : TLabel;
    LabelRWinkel : TLabel;

    MaskEditAzimut  : TMaskEdit;
    MaskEditFallen  : TMaskEdit;
    MaskEditRWinkel : TMaskEdit;
    CheckBoxRotOK   : TCheckBox;

    MainMenu1 : TMainMenu;

    Datenspeichern1 : TMenuItem;
    speichernD: TMenuItem;
    SpeichernDUnter: TMenuItem;

    Drucker1    : TMenuItem;
    einrichten1 : TMenuItem;
    drucken1    : TMenuItem;

    Hilfe1: TMenuItem;

    PrintDialog1        : TPrintDialog;
    PrinterSetupDialog1 : TPrinterSetupDialog;
    StatusBar           : TStatusBar;

    Panel8           : TPanel;
    SpeedErgebnisseF : TSpeedButton;
    SpeedDrucken     : TSpeedButton;
    SpeedHilfe       : TSpeedButton;
    PanelPfad: TPanel;
    LabelPfad: TLabel;
    ButtonPfad: TButton;
    Handbuch: TMenuItem;
    SaveDialog1: TSaveDialog;
    LabelDemo: TLabel;
    SpeedHandbuch: TSpeedButton;
    Literatur: TMenuItem;
    WinWord: TMenuItem;
    SpeedWinWord: TSpeedButton;
    DatenSpeichern: TMenuItem;
    Dspeichern: TMenuItem;
    DspeichernUnter: TMenuItem;
    MaskEditPfad: TMaskEdit;
    SpeedEinrichten: TSpeedButton;
    Auswertung: TMenuItem;
    DatenPlotten: TMenuItem;
    Grosskreise: TMenuItem;
    Isolinien: TMenuItem;
    Submaxima: TMenuItem;
    Statistik: TMenuItem;
    SpeedGKreise: TSpeedButton;
    SpeedIso: TSpeedButton;
    SpeedStatistik: TSpeedButton;
    SpeedMaxima: TSpeedButton;
    SpeedDaten: TSpeedButton;
    SpeedDspeichern: TSpeedButton;
    SpeedLiteratur1: TSpeedButton;
    Dloeschen: TMenuItem;
    loeschen: TMenuItem;
    SpeedLoeschen: TSpeedButton;

    procedure FormActivate(Sender: TObject);
    procedure ButtonzuruckClick(Sender: TObject);
    procedure ButtonbeendenClick(Sender: TObject);
    procedure ButtonStartClick(Sender: TObject);
    procedure ButtonberechnenClick(Sender: TObject);

    procedure ListBoxDateienClick(Sender: TObject);
    procedure ListBoxausgewaehlteClick(Sender: TObject);

    procedure CheckBoxRotOKClick(Sender: TObject);

    {Drucker}
    procedure einrichten1Click(Sender: TObject);
    procedure drucken1Click(Sender: TObject);

    {rotierte Daten speichern}
    procedure SpeichernDUnterClick(Sender: TObject);
    procedure speichernDClick(Sender: TObject);
    procedure MaskEditAzimutKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditFallenKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditRWinkelKeyPress(Sender: TObject; var Key: Char);
    procedure Hilfe1Click(Sender: TObject);

    procedure FormShow(Sender: TObject);
    procedure ShowHint(Sender: TObject);

    procedure SpeedErgebnisseFClick(Sender: TObject);
    procedure SpeedDruckenClick(Sender: TObject);
    procedure SpeedHilfeClick(Sender: TObject);
    procedure ButtonPfadClick(Sender: TObject);
    procedure HandbuchClick(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
    procedure WinWordClick(Sender: TObject);
    procedure SpeedWinWordClick(Sender: TObject);
    procedure DspeichernClick(Sender: TObject);
    procedure DspeichernUnterClick(Sender: TObject);
    procedure SpeedEinrichtenClick(Sender: TObject);
    procedure DatenPlottenClick(Sender: TObject);
    procedure GrosskreiseClick(Sender: TObject);
    procedure IsolinienClick(Sender: TObject);
    procedure StatistikClick(Sender: TObject);
    procedure SubmaximaClick(Sender: TObject);
    procedure SpeedGKreiseClick(Sender: TObject);
    procedure SpeedDatenClick(Sender: TObject);
    procedure SpeedIsoClick(Sender: TObject);
    procedure SpeedStatistikClick(Sender: TObject);
    procedure SpeedMaximaClick(Sender: TObject);
    procedure SpeedLiteratur1Click(Sender: TObject);
    procedure loeschenClick(Sender: TObject);
    procedure SpeedLoeschenClick(Sender: TObject);
  end;

var
  Form8       : TForm8;
  DiscS, DatS : string;
//  ExtenS      : string;
  Dzahl       : word;
  DatnameS    : array of string;
  DateiNameS  : array of string;
  AziRotFeld  : array of word;
  FalRotFeld  : array of word;
  AchseAzimut : word;
  AchseFall   : shortint;
  AchseWinkel : integer;
  Zahl        : word;
  DateiZahl   : byte;
  ListBoxLoeschen : Boolean;
  DatName     : array of string;
  Loesch      : boolean;

implementation
uses Unit6, Unit7, Unit12, Unit23, Unit21, Unit25, Unit85;
{$R *.DFM}

procedure TForm8.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm8.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm8.FormActivate(Sender: TObject);
begin
  Left   := 140;
  Top    := 80;
  Width  := 830;
  Height := 620;
  setlength (AziFeld, MaxDaten);
  setlength (FalFeld, MaxDaten);
  setlength (AziRotFeld, MaxDaten);
  setlength (FalRotFeld, MaxDaten);
  setlength (DatnameS, 1000);
  setlength (DateiNameS, 100);
  WeiterB[8] := false;
  LabelDemo.Visible               := false;
  if DemoB then LabelDemo.Visible := true;
  ListBoxDaten.Hint               := Hilf(31);
  Panel1.Hint                     := Hilf(31);
  ListBoxausgewaehlte.Hint        := Hilf(32);
  Panel2.Hint                     := Hilf(32);
  ListBoxDateien.Hint             := Hilf(33);
  Panel3.Hint                     := Hilf(33);
  MaskEditAzimut.Hint             := Hilf(39);
  MaskEditFallen.Hint             := Hilf(40);
  MaskEditRWinkel.Hint            := Hilf(41);
  CheckBoxRotOk.Hint              := Hilf(42);
  LabelPfad.Hint                  := Hilf(34);
  LabelExtension.Hint             := Hilf(35);
  LabelAnzahl.Hint                := Hilf(36);
  ButtonStart.Hint                := Hilf(296);
  Buttonberechnen.Hint            := Hilf(38);
  Buttonzuruck.Hint               := Hilf(46);
  Buttonbeenden.Hint              := Hilf(30);
  SpeedDrucken.Hint               := Hilf(203);
  SpeedErgebnisseF.Hint           := Hilf(207);
  SpeedHilfe.Hint                 := Hilf(210);
  ButtonPfad.Hint                 := Hilf(275);
  SpeedEinrichten.Hint            := Hilf(505);
  SpeedDaten.Hint                 := Hilf(506);
  SpeedGKreise.Hint               := Hilf(511);
  SpeedIso.Hint                   := Hilf(507);
  SpeedStatistik.Hint             := Hilf(509);
  SpeedMaxima.Hint                := Hilf(508);
  SpeedDspeichern.Hint            := Hilf(204);
  SpeedHandbuch.Hint              := Hilf(274);
  SpeedLoeschen.Hint              := Hilf(713);
  Form8.Caption                   := Tx(217);  {Fabric7: Rotationen (Daten..}
  Datenspeichern1.Caption         := Tx(808);  {&rotierte Daten speichern}
  speichernD.Caption              := Tx(87);
  speichernDUnter.Caption         := Tx(88);
  Drucker1.Caption                := Tx(92);
  drucken1.Caption                := Tx(93);
  Einrichten1.Caption             := Tx(94);
  Hilfe1.Caption                  := Tx(162)+' (F1)';
  LabelDaten.Caption              := Tx(218);  {Daten:}
  Labelausgewaehlte.Caption       := Tx(136);  {ausgewählte Dateien:}
  LabelDateien.Caption            := Tx(137);  {Dateien auswählen:}
  LabelRAchse.Caption             := Tx(179);  {Rotationsachse:}
  LabelRAzimut.Caption            := Tx(219);  {Azimut}
  LabelFallen.Caption             := Tx(220);  {Einfallen}
  LabelRWinkel.Caption            := Tx(221);  {Rotationswinkel}
  LabelAnzahl.Caption             := Tx(222);
  Buttonberechnen.Caption         := Tx(139);  {berechnen}
  Buttonzuruck.Caption            := Tx(30);
  Buttonbeenden.Caption           := Tx(53);
  Datenspeichern.Caption          := Tx(86);
  Dspeichern.Caption              := Tx(87);
  DspeichernUnter.Caption         := Tx(88);
  Buttonberechnen.Enabled         := false;
  LabelDaten.Enabled              := false;
  Labelausgewaehlte.Enabled       := false;
  LabelPfad.Enabled               := false;
  LabelDateien.Enabled            := false;
  LabelExtension.Enabled          := false;
  LabelAnzahl.Visible             := false;
  LabelRAchse.Enabled             := false;
  LabelRWinkel.Enabled            := false;
  Buttonzuruck.Enabled            := false;
  Buttonbeenden.Enabled           := false;
  CheckBoxRotOK.Enabled           := false;
  LabelLIN.Caption                := '';
  Label00000.Caption              := '';
  LabelPfad.Caption               := '';
  LabelRAzimut.Enabled            := false;
  LabelFallen.Enabled             := false;
  ButtonStart.Enabled             := true;
  Datenspeichern1.Enabled         := false;
  Drucker1.Enabled                := false;
  ListboxDaten.Enabled            := false;
  Listboxausgewaehlte.Enabled     := false;
  ListboxDateien.Enabled          := false;
  MaskEditAzimut.Enabled          := false;
  MaskEditFallen.Enabled          := false;
  MaskEditRWinkel.Enabled         := false;
  SpeedDrucken.Enabled            := false;
  SpeedErgebnisseF.Enabled        := false;
  SpeedEinrichten.Enabled         := false;
  MaskEditAzimut.EditMask         := '999;0; ';
  MaskEditFallen.EditMask         := '99;0; ';
  MaskEditRWinkel.EditMask        := '#999;0; ';
  LabelPfad.Caption      := Tx(1003);
  LabelPfad.Enabled      := false;
  ButtonPfad.Caption     := Tx(1004);
  ButtonPfad.Enabled     := false;
  LabelExtension.Caption := 'Extension:';
  Handbuch.Caption       := Tx(1055)+' (F2)';
  Literatur.Caption      := Tx(1183)+' (F5)';
  SpeedLiteratur1.Hint   := Hilf(462);
  WinWord.Caption        := Tx(1207);
  SpeedWinWord.Hint      := Hilf(470);
  SpeedWinWord.Enabled   := false;
  Auswertung.Caption     := Tx(1341);
  Isolinien.Caption      := Tx(15);
  Statistik.Caption      := Tx(14);
  Submaxima.Caption      := Tx(16);
  Grosskreise.Caption    := TX(10);
  DatenPlotten.Caption   := Tx(9);
  DatenSpeichern.Enabled := false;
  Auswertung.Enabled     := false;
  SpeedDaten.Enabled     := false;
  SpeedGKreise.Enabled   := false;
  SpeedIso.Enabled       := false;
  SpeedStatistik.Enabled := false;
  SpeedMaxima.Enabled    := false;
  Loesch                 := false;
  DLoeschen.Caption      := Tx(1659);
  Loeschen.Caption       := Tx(1660);
  Dloeschen.Enabled      := false;
  SpeedLoeschen.Enabled  := false;
end;

procedure TForm8.ButtonStartClick(Sender: TObject);
var
  i      : word;
  DNameS : string[80];
begin
  Loesch := false;
  ButtonBerechnen.Enabled     := false;
  Dloeschen.Enabled           := true;
  SpeedLoeschen.Enabled       := true;
  LabelDateien.Enabled        := true;
  Labelausgewaehlte.Enabled   := true;
  ListBoxDateien.Enabled      := true;
  ListBoxausgewaehlte.Enabled := true;
  ListBoxDaten.Enabled        := true;
  Buttonzuruck.Enabled        := true;
  Buttonbeenden.Enabled       := true;
  LabelAnzahl.Visible         := false;
  Label00000.Caption          := '';
  ListBoxDateien.Clear;
  ListBoxausgewaehlte.Clear;
  ListBoxDaten.Clear;
  ListBoxDateien.Enabled      := true;
  ListBoxausgewaehlte.Enabled := true;
  LabelExtension.Enabled      := true;
  LabelAnzahl.Visible         := true;
  Laufwerk(DatS,EingabeS, DiscS);
  LabelPfad.Enabled           := true;
  ButtonPfad.Enabled          := true;
  Laufwerk(DatS,EingabeS, DiscS);
  ListBoxLoeschen := false;
  Datsuch (Dzahl, DiscS, ExtenS, DatNameS, ListBoxLoeschen);
  MaskEditPfad.Text := PfadS;
  LabelLIN.Caption  := ExtenS;
  if not ListBoxLoeschen then
  begin
    for i := 1 to Dzahl do
    begin
      DNameS := LeftS (DatNameS[i], length(DatNameS[i])- 4);
      ListboxDateien.Items.Add (DNameS);
    end;
  end;
  LabelRAchse.Enabled  := false;
  LabelRAzimut.Enabled := false;
  LabelFallen.Enabled  := false;
  LabelRWinkel.Enabled := false;
  MaskEditAzimut.Clear;
  MaskEditFallen.Clear;
  MaskEditRWinkel.Clear;
  CheckBoxRotOK.State  := cbUnchecked;
end;

procedure TForm8.MaskEditAzimutKeyPress(Sender: TObject; var Key: Char);
const MaxAzi = 360;
var
  AchseAzimutS : string;
begin
  if Key = chr(13) then
  begin
    AchseAzimutS := MaskEditAzimut.Text;
    AchseAzimut := StrToInt (AchseAzimutS);
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

procedure TForm8.MaskEditFallenKeyPress(Sender: TObject; var Key: Char);
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

procedure TForm8.MaskEditRWinkelKeyPress(Sender: TObject; var Key: Char);
begin
  CheckBoxRotOK.State     := cbUnchecked;
  CheckBoxRotOK.Enabled   := true;
end;

procedure TForm8.CheckBoxRotOKClick(Sender: TObject);
var
  i, Azi        : word;
  Ffall         : shortint;
  RotAzimut     : word;
  RotFall, Sign : shortint;
  DatAzimutS    : string[3];
  DatFallS      : string[2];
  RotDatAzimutS : string[3];
  RotDatFallS   : string[2];
  ZeileS        : string[50];
begin
  if CheckBoxRotOK.State = cbUnchecked then exit;
  Laufwerk(DatS,EingabeS, DiscS);
  LabelPfad.Caption           := DiscS;
  LabelPfad.Enabled           := true;
  LabelExtension.Enabled      := true;
  LabelLIN.Caption            := ExtenS;
  DatenSpeichern.Enabled      := true;
  Auswertung.Enabled          := true;
  SpeedDaten.Enabled          := true;
  SpeedGKreise.Enabled        := true;
  SpeedIso.Enabled            := true;
  SpeedStatistik.Enabled      := true;
  SpeedMaxima.Enabled         := true;
  SpeedEinrichten.Enabled     := true;
  ListBoxDateien.Enabled      := true;
  ListBoxausgewaehlte.Enabled := true;
  LabelDaten.Enabled          := true;
  Labelausgewaehlte.Enabled   := true;
  LabelDateien.Enabled        := true;
  AchseWinkel                 := StrToInt (MaskEditRWinkel.Text);
  MaskEditAzimut.Enabled  := false;
  MaskEditFallen.Enabled  := false;
  MaskEditRWinkel.Enabled := false;
  CheckBoxRotOK.Enabled := false;
  Abc (AchseWinkel,AchseAzimut,AchseFall,RadAchseAzimut,
       RadAchseFall,Aa,B,C,Z);
  for i := 1 to Zahl do
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
    DatAzimutS    := IntToStr (AziFeld[i]);
    DatAzimutS    := RightS ('000' + DatAzimutS, 3);
    DatFallS      := IntToStr (FalFeld[i]);
    DatFallS      := RightS ('00' + DatFallS, 2);
    RotDatAzimutS := IntToStr (RotAzimut);
    RotDatAzimutS := RightS ('000' + RotDatAzimutS, 3);
    RotDatFallS   := IntToStr (RotFall);
    RotDatFallS   := RightS ('00' + RotDatFallS, 2);
    ZeileS        := '     '+DatAzimutS+'/'+DatFallS+'                '+
                     RotDatAzimutS+'/'+RotDatFallS;
    ListBoxDaten.Items.Add (ZeileS); {Daten und Ergebnis in Listbox schreiben}
  end;
  DatenSpeichern1.Enabled  := true;
  Drucker1.Enabled         := true;
  ShowMessage (Tx(117));
  SpeedDrucken.Enabled     := true;
  SpeedErgebnisseF.Enabled := true;
  SpeedWinWord.Enabled     := true;
  if (Gefuegetyp = 2) or (Gefuegetyp = 4) then
    Grosskreise.Enabled    := true
  else Grosskreise.Enabled := false;
end;

procedure TForm8.ButtonberechnenClick(Sender: TObject);
var
  j              : word;
  NameS          : string[80];
begin
  MaskEditAzimut.Enabled      := true;
  MaskEditAzimut.SetFocus;
  LabelRAchse.Enabled         := true;
  LabelRAzimut.Enabled        := true;
  LabelAnzahl.Visible         := true;
  ListboxDateien.Enabled      := false;
  Listboxausgewaehlte.Enabled := false;
  ListBoxDaten.Enabled        := true;
  DateiZahl := ListBoxausgewaehlte.Items.Count-1;
  for j := 0 to DateiZahl do
  begin
    NameS := Listboxausgewaehlte.Items.Strings[j]+ '.' + ExtenS;
    AusB := false;
    Testpfad (DiscS);
    LiesDaten (j, NameS, DiscS, Zahl, AziFeld, FalFeld);
    if AusB then       {zurück}
    begin
      ListBoxDaten.Clear;
      ListBoxausgewaehlte.Clear;
      ListBoxDateien.Clear;
      LabelLIN.Caption := '';
      Form8.Close;
    end;
    DateinameS[j] := NameS;
  end;
  Label00000.Caption := RightS('     '+IntToStr(Zahl),5);
  Buttonberechnen.Enabled := false;
end;

procedure TForm8.ButtonzuruckClick(Sender: TObject);
begin
  if not WeiterF then
  begin
    AziFeld    := Nil;
    FalFeld    := Nil;
  end;
  AziRotFeld := Nil;
  FalRotFeld := Nil;
  DatNameS   := Nil;
  DateinameS := Nil;
  Label00000.Caption      := '';
  MaskEditAzimut.Text     := '   ';
  MaskEditFallen.Text     := '  ';
  MaskEditRWinkel.Text    := '    ';
  MaskEditAzimut.Enabled  := false;
  MaskEditFallen.Enabled  := false;
  MaskEditRWinkel.Enabled := false;
  ListboxDaten.Clear;
  Listboxausgewaehlte.Clear;
  ListboxDateien.Clear;
  Form8.Close;
end;

procedure TForm8.ButtonbeendenClick(Sender: TObject);          {beenden}
begin
  AziFeld    := Nil;
  FalFeld    := Nil;
  AziRotFeld := Nil;
  FalRotFeld := Nil;
  DatNameS   := Nil;
  DateinameS := Nil;
  Form8.Close;
  Form7.Close;
  Form6.Close;
  SetCurrentDir(DirectS);
end;

procedure TForm8.ListBoxausgewaehlteClick(Sender: TObject);
var
  i : word;
begin
  for i := 0 to Listboxausgewaehlte.Items.Count-1 do
  begin
    if Listboxausgewaehlte.Selected[i] then
    begin
      ListboxDateien.Items.Add (Listboxausgewaehlte.Items.Strings[i]);
      Listboxausgewaehlte.Items.Delete(i);
      break;
    end;
  end;
end;

procedure TForm8.ListBoxDateienClick(Sender: TObject);
var
  i       : word;
  Datei   : TextFile;
  Typ     : TMsgDlgType;
  InfoS   : string;
  LoeschS : string;
begin
  Buttonberechnen.Enabled := true;
  if not Loesch then
  begin
    for i := 0 to ListboxDateien.Items.Count-1 do
    begin
      ButtonBerechnen.Enabled := true;
      if ListboxDateien.Selected[i] then
      begin
        Listboxausgewaehlte.Items.Add (ListboxDateien.Items.Strings[i]);
                                             {Dateien in 2. Listbox schreiben}
        ListboxDateien.Items.Delete(i);
        break;
      end;
    end;
  end
  else
  begin
    for i := 0 to ListboxDateien.Items.Count-1 do
    begin
      if ListboxDateien.Selected[i] then
      begin
        LoeschS := ListBoxDateien.Items.Strings[i];
        LoeschS := DiscS+LoeschS+'.'+ExtenS;
        ListboxDateien.Items.Delete(i);
        break;
      end;
    end;
    Typ    := mtInformation;
    InfoS  := Tx(1226);
    if Dlgmessage(Typ, InfoS, Tx(1656)+'  '+LoeschS+'  '+Tx(1657),1) = 6 then
    begin
      assignFile (Datei,LoeschS);
      reset(Datei);
      CloseFile(Datei);
      Erase(Datei);
      Showmessage(LoeschS+' '+Tx(1658));
    end;
  end;
  Loesch := false;    
end;

procedure TForm8.einrichten1Click(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TForm8.SpeedEinrichtenClick(Sender: TObject);
begin
  einrichten1Click(Sender);
end;


procedure TForm8.drucken1Click(Sender: TObject);
begin
  Titel2 (DateiZahl,DateiNameS,GefuegeTyp, AchseAzimut,
          AchseFall, AchseWinkel, AziFeld, FalFeld,
          AziRotFeld,FalRotFeld,Zahl);
end;

procedure TForm8.SpeichernDUnterClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := ExtenS;
  SaveDialog1.Filter     := ExtenS;
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    Speichern (CurrentFile, Zahl, AziRotFeld, FalRotFeld)
  end;
end;

procedure TForm8.speichernDClick(Sender: TObject);
begin
  if CurrentFile <> '' then Speichern (CurrentFile, Zahl,
    AziRotFeld, FalRotFeld)
  else speichernDUnterClick(Sender);
end;

procedure TForm8.loeschenClick(Sender: TObject);
begin
  Loesch := true;
end;

procedure TForm8.SpeedLoeschenClick(Sender: TObject);
begin
  LoeschenClick(Sender);
end;

procedure TForm8.Hilfe1Click(Sender: TObject);
var
  DateiS      : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\8Rotation-dis.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\8Rotation-dis.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm8.SpeedErgebnisseFClick(Sender: TObject);
begin
  speichernDUnterClick(Sender);
end;

procedure TForm8.SpeedDruckenClick(Sender: TObject);
begin
  drucken1Click(Sender);
end;

procedure TForm8.SpeedHilfeClick(Sender: TObject);
begin
  Hilfe1Click(Sender);     {Hilfe noch nicht installiert}
end;

procedure TForm8.ButtonPfadClick(Sender: TObject);
const
  Verz = 1000;
var
  NeuerPfadS : string;
  Datei      : TextFile;
  i          : integer;
begin
  NeuerPfadS := Tx(1002);
  if not DirectoryExists (PfadS) then PfadS := DirectS;
  if SelectDirectory (PfadS, [sdAllowCreate, sdPerformCreate,
          sdPrompt], Verz)
          then MessageDlg(NeuerPfadS+' '+PfadS, mtInformation,
            [mbOK], 0);
  Kompress (PfadS);
  if (RightS (PfadS, 1) <> ':') and (RightS(PfadS, 1) <> '\')
     then PfadS := PfadS + '\';
  if SetCurrentDir (DirectS) then getDir (0, DirectS);
  KonfigZeileS[14] := PfadS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm8.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Rotation.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'Rotation-E.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm8.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm8.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm8.SpeedLiteratur1Click(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

procedure TForm8.WinWordClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := 'rtf';
  SaveDialog1.Filter     := 'rtf';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    WinTitel2 (CurrentFile,DateiZahl,DateiNameS,GefuegeTyp,
              AchseAzimut, AchseFall, AchseWinkel, AziFeld,
              FalFeld, AziRotFeld,FalRotFeld,Zahl);
  end;
end;

procedure TForm8.SpeedWinWordClick(Sender: TObject);
begin
  WinWordClick(Sender);
end;

procedure TForm8.DspeichernClick(Sender: TObject);
begin
  if CurrentFile <> '' then Speichern(CurrentFile,Anzahl,
    AziFeld,FalFeld)
  else speichernDUnterClick(Sender);
end;

procedure TForm8.DspeichernUnterClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := ExtenS;
  if UCaseS(ExtenS) = 'LIN' then SaveDialog1.Filter := 'Linears (*.lin)|*.LIN';
  if UCaseS(ExtenS) = 'PLA' then SaveDialog1.Filter := 'Planes (*.pla)|*.PLA';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    Speichern (CurrentFile, Anzahl, AziFeld, FalFeld);
  end;
end;

procedure TForm8.DatenPlottenClick(Sender: TObject);
var
  i : word;
begin
  for i := 1 to Zahl do
  begin
    AziFeld[i] := AziRotFeld[i];
    FalFeld[i] := FalRotFeld[i];
  end;
  ZahlGlob := Zahl;
  WeiterB[8] := true;
  Application.CreateForm(TForm12, Form12);
  Form12.Show;
end;

procedure TForm8.SpeedDatenClick(Sender: TObject);
begin
  DatenPlottenClick(Sender);
end;

procedure TForm8.GrosskreiseClick(Sender: TObject);
var
  i : word;
begin
  for i := 1 to Zahl do
  begin
    AziFeld[i] := AziRotFeld[i];
    FalFeld[i] := FalRotFeld[i];
  end;
  ZahlGlob := Zahl;
  WeiterB[8] := true;
  Application.CreateForm(TForm85, Form85);
  Form85.Show;
end;

procedure TForm8.SpeedGKreiseClick(Sender: TObject);
begin
  GrosskreiseClick(Sender);
end;

procedure TForm8.IsolinienClick(Sender: TObject);
var
  i : word;
begin
  for i := 1 to Zahl do
  begin
    AziFeld[i] := AziRotFeld[i];
    FalFeld[i] := FalRotFeld[i];
  end;
  ZahlGlob := Zahl;
  WeiterB[8] := true;
  Application.CreateForm(TForm23, Form23);
  Form23.Show;
end;

procedure TForm8.SpeedIsoClick(Sender: TObject);
begin
  IsolinienClick(Sender);
end;

procedure TForm8.StatistikClick(Sender: TObject);
var
  i : word;
begin
  for i := 1 to Zahl do
  begin
    AziFeld[i] := AziRotFeld[i];
    FalFeld[i] := FalRotFeld[i];
  end;
  ZahlGlob := Zahl;
  WeiterB[8] := true;
  Application.CreateForm(TForm21, Form21);
  Form21.Show;
end;

procedure TForm8.SpeedStatistikClick(Sender: TObject);
begin
  StatistikClick(Sender);
end;

procedure TForm8.SubmaximaClick(Sender: TObject);
var
  i : word;
begin
  for i := 1 to Zahl do
  begin
    AziFeld[i] := AziRotFeld[i];
    FalFeld[i] := FalRotFeld[i];
  end;
  ZahlGlob := Zahl;
  WeiterB[8] := true;
  Application.CreateForm(TForm25, Form25);
  Form25.Show;
end;

procedure TForm8.SpeedMaximaClick(Sender: TObject);
begin
  SubmaximaClick(Sender);
end;

end.
