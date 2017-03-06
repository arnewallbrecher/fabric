unit Unit5; {Berechnungen, Eingabe von Datenträger}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Einausga, Globvar, Texte, Dateien, Basic, Kalkulat,
  Menus, Printers, Drucken, ComCtrls, Buttons, Shellapi,
  FileCtrl, Standard, Mask, ehsHelpRouter;

type
  TForm5 = class(TForm)
    Panel1         : TPanel;
    ListBoxDateien : TListBox;
    LabelDateien   : TLabel;

    Panel2         : TPanel;
    LabelExtension : TLabel;

    LabelAnzahl : TLabel;
    Label00000  : TLabel;

    Panel3        : TPanel;
    Buttonzuruck  : TButton;
    Buttonbeenden : TButton;

    Panel4             : TPanel;
    Labelausgewaehlt   : TLabel;
    ListBoxausgewaehlt : TListBox;

    Panel6            : TPanel;
    ListBoxErgebnisse : TListBox;
    Label1Flaeche     : TLabel;
    Panel7          : TPanel;
    Buttonberechnen : TButton;
    ButtonStart     : TButton;

    MainMenu1: TMainMenu;

    Ergebnissespeichern1 : TMenuItem;
    speichernD: TMenuItem;
    speichernDUnter: TMenuItem;

    Drucker1           : TMenuItem;
    drucken1           : TMenuItem;
    Druckereinrichten1 : TMenuItem;

    PrintDialog1        : TPrintDialog;
    PrinterSetupDialog1 : TPrinterSetupDialog;
    Hilfe1              : TMenuItem;
    StatusBar           : TStatusBar;

    Panel5           : TPanel;
    SpeedErgebnisseF : TSpeedButton;
    SpeedDrucker     : TSpeedButton;
    SpeedHilfe       : TSpeedButton;
    PanelPfad: TPanel;
    LabelPfad: TLabel;
    Label1: TLabel;
    LabelDirectory: TLabel;
    ButtonPfad: TButton;
    Handbuch: TMenuItem;
    SaveDialog1: TSaveDialog;
    LabelDemo: TLabel;
    SpeedHandbuch: TSpeedButton;
    Literatur: TMenuItem;
    SpeedLiteratur: TSpeedButton;
    WinWord: TMenuItem;
    SpeedWinWord: TSpeedButton;
    DatenSpeichern: TMenuItem;
    Dspeichern: TMenuItem;
    DspeichernUnter: TMenuItem;
    MaskEditDatenPfad: TMaskEdit;
    SpeedEinrichten: TSpeedButton;
    Auswertung: TMenuItem;
    DatenPlotten: TMenuItem;
    Grosskreise: TMenuItem;
    Isolinien: TMenuItem;
    Statistik: TMenuItem;
    Submaxima: TMenuItem;
    SpeedDaten: TSpeedButton;
    SpeedGKreise: TSpeedButton;
    SpeedIso: TSpeedButton;
    SpeedStatistik: TSpeedButton;
    SpeedMaxima: TSpeedButton;
    SpeedDspeichern: TSpeedButton;

    procedure FormActivate(Sender: TObject);

    procedure ButtonzuruckClick(Sender: TObject);   {zurück}
    procedure ButtonbeendenClick(Sender: TObject);   {Programm beenden}
    procedure ListBoxDateienClick(Sender: TObject);  {Dateien auswählen}
    procedure ListBoxausgewaehltClick(Sender: TObject);  {Ausgewählte Dateien}
    procedure ButtonberechnenClick(Sender: TObject);   {Berechnen}

    procedure Druckereinrichten1Click(Sender: TObject);
    procedure speichernDClick(Sender: TObject);
    procedure speichernDUnterClick(Sender: TObject);
    procedure drucken1Click(Sender: TObject);
    procedure ButtonStartClick(Sender: TObject);
    procedure Hilfe1Click(Sender: TObject);

    procedure ShowHint(Sender: TObject);
    procedure FormShow(Sender: TObject);

    procedure SpeedErgebnisseFClick(Sender: TObject);
    procedure SpeedDruckerClick(Sender: TObject);
    procedure SpeedHilfeClick(Sender: TObject);
    procedure ButtonPfadClick(Sender: TObject);
    procedure HandbuchClick(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
    procedure SpeedLiteraturClick(Sender: TObject);
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
    procedure SpeedDatenClick(Sender: TObject);
    procedure SpeedGKreiseClick(Sender: TObject);
    procedure SpeedIsoClick(Sender: TObject);
    procedure SpeedStatistikClick(Sender: TObject);
    procedure SpeedMaximaClick(Sender: TObject);
    procedure SpeedDspeichernClick(Sender: TObject);
  end;

var
  Form5       : TForm5;
  DiscS       : string;
  DatS        : string;
  Datname     : array of string;
  Dateiname   : array of string;
  Dzahl       : word;
  AziFeld1P   : array of word;
  AziFeld2P   : array of word;
  FalFeld1P   : array of word;
  FalFeld2P   : array of word;
  AziErgFeldP : array of word;
  FalErgFeldP : array of word;
  Zahl        : word;
  DateiZahl   : byte;
  ListBoxLoeschen : Boolean;
  CurrentFile : string;

implementation
uses Unit3, Unit12, Unit21, Unit23, Unit25, Unit85;
{$R *.DFM}

procedure TForm5.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm5.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm5.FormActivate(Sender: TObject);
begin
  Left   := 100;
  Top    := 80;
  Height := 620;
  Width  := 830;
  setlength (AziFeld, MaxDaten);
  setlength (FalFeld, MaxDaten);
  setlength (AziFeld1P, MaxDaten);
  setlength (AziFeld2P, MaxDaten);
  setlength (FalFeld1P, MaxDaten);
  setlength (FalFeld2P, MaxDaten);
  setlength (AziErgFeldP, MaxDaten);
  setlength (FalErgFeldP, MaxDaten);
  setlength (Datname, 1000);
  setlength (Dateiname, 100);
  LabelDemo.Visible               := false;
  if DemoB then LabelDemo.Visible := true;
  ListBoxErgebnisse.Hint       := Hilf(31);
  Panel6.Hint                  := Hilf(31);
  Panel4.Hint                  := Hilf(32);
  Labelausgewaehlt.Hint        := Hilf(32);
  ListBoxDateien.Hint          := Hilf(33);
  Panel1.Hint                  := Hilf(33);
  LabelPfad.Hint               := Hilf(34);
  LabelExtension.Hint          := Hilf(35);
  LabelAnzahl.Hint             := Hilf(36);
  ButtonStart.Hint             := Hilf(296);
  Buttonberechnen.Hint         := Hilf(38);
  Buttonzuruck.Hint            := Hilf(18);
  Buttonbeenden.Hint           := Hilf(30);
  SpeedDrucker.Hint            := Hilf(203);
  SpeedErgebnisseF.Hint        := Hilf(207);
  SpeedHilfe.Hint              := Hilf(210);
  ButtonPfad.Hint              := Hilf(275);
  SpeedHandbuch.Hint           := Hilf(274);
  SpeedEinrichten.Hint         := Hilf(505);
  SpeedGKreise.Hint            := Hilf(511);
  SpeedDaten.Hint              := Hilf(506);
  SpeedStatistik.Hint          := Hilf(509);
  SpeedIso.Hint                := Hilf(507);
  SpeedMaxima.Hint             := Hilf(508);
  SpeedDspeichern.Hint         := Hilf(204);
  Form5.Caption                := Tx(107); {Fabric7: Berechnungen (Diskette)}
  Ergebnissespeichern1.Caption := Tx(91);
  speichernD.Caption           := Tx(87);
  speichernDUnter.Caption      := Tx(88);
  Drucker1.Caption             := Tx(92);
  drucken1.Caption             := Tx(93);
  Druckereinrichten1.Caption   := Tx(94);
  Hilfe1.Caption               := Tx(162)+' (F1)';
  Label1Flaeche.Caption        := Tx(100);  {1.Fläche 2.Fläche Schnittkante}
  Labelausgewaehlt.Caption     := Tx(136);  {ausgewählte Dateien}
  LabelDateien.Caption         := Tx(137);  {Dateien auswählen}
  LabelAnzahl.Caption          := Tx(138);  {Anzahl:}
  Buttonberechnen.Caption      := Tx(139);  {&berechnen}
  Buttonzuruck.Caption         := Tx(30);
  Buttonbeenden.Caption        := Tx(53);
  DatenSpeichern.Caption       := Tx(86);       {&Daten speichern}
  Dspeichern.Caption           := Tx(87);       {speichern}
  DspeichernUnter.Caption      := Tx(88);       {speichern unter}
  ButtonStart.Enabled          := true;
  Buttonzuruck.Enabled         := false;
  Buttonbeenden.Enabled        := false;
  Buttonberechnen.Enabled      := false;
  LabelDateien.Enabled         := false;
  Labelausgewaehlt.Enabled     := false;
  Label1Flaeche.Enabled        := false;
  LabelAnzahl.Enabled          := false;
  LabelExtension.Enabled       := false;
  Label00000.Caption           := '';
  ListBoxDateien.Enabled       := false;
  ListBoxausgewaehlt.Enabled   := false;
  ListboxErgebnisse.Enabled    := false;
  Ergebnissespeichern1.Enabled := false;
  Drucker1.Enabled             := false;
  SpeedDrucker.Enabled         := false;
  SpeedErgebnisseF.Enabled     := false;
  LabelPfad.Caption            := Tx(1003);
  LabelPfad.Enabled            := false;
  ButtonPfad.Caption           := Tx(1004);
  ButtonPfad.Enabled           := false;
  SpeedEinrichten.Enabled      := false;
  Handbuch.Caption             := Tx(1055)+' (F2)';
  Literatur.Caption            := Tx(1183)+' (F5)';
  SpeedLiteratur.Hint          := Hilf(462);
  Auswertung.Caption           := Tx(1341);
  Isolinien.Caption            := Tx(618);
  Statistik.Caption            := Tx(1342);
  Submaxima.Caption            := Tx(579);
  Grosskreise.Caption          := TX(1345);
  DatenPlotten.Caption         := Tx(1343);
  case Berechnung of
    1: ExtenS := 'PL2';
    2: ExtenS := 'PL2';
    3: ExtenS := 'LI2';
    4: ExtenS := 'LI2';
    5: ExtenS := 'LI2';
    6: ExtenS := 'PLI';
    7: ExtenS := 'PCH';
  end;
  case Berechnung of
    1: Label1Flaeche.Caption := Tx(108);  {1.Fläche 2.Fläche Schnittkante}
    2: Label1Flaeche.Caption := Tx(111);  {1.Fläche 2.Fläche Winkel}
    3: Label1Flaeche.Caption := Tx(112);  {1.Linear 2.Linear Winkel}
    4: Label1Flaeche.Caption := Tx(115);  {1.Linear 2.Linear Fl„che}
    5: Label1Flaeche.Caption := Tx(116);  {1.Linear 2.Linear Normale}
    6: Label1Flaeche.Caption := Tx(1409); {Fläche Linear Pitchwinkel}
    7: Label1Flaeche.Caption := Tx(1410); {Fläche Pitchwinkel Linear}
  end;
  if (Berechnung = 1) or (Berechnung = 5) Then Gefuegetyp := 1;
  if Berechnung = 4 then Gefuegetyp := 2;
  WinWord.Caption        := Tx(1207);
  SpeedWinWord.Hint      := Hilf(470);
  SpeedWinWord.Enabled   := false;
  Auswertung.Enabled     := false;
  SpeedDaten.Enabled     := false;
  SpeedGKreise.Enabled   := false;
  SpeedIso.Enabled       := false;
  SpeedStatistik.Enabled := false;
  SpeedMaxima.Enabled    := false;
  DatenSpeichern.Enabled := false;
end;

procedure TForm5.ButtonStartClick(Sender: TObject);  {Start}
var
  i : word;
begin
  Ergebnissespeichern1.Enabled := false;
  Drucker1.Enabled := false;
  Zahl := 0;
  Label00000.Caption := '';
  ListboxDateien.Clear;
  Listboxausgewaehlt.Clear;
  ListboxErgebnisse.Clear;
  Label1Flaeche.Enabled := true;
  Buttonberechnen.Enabled    := false;
  Buttonzuruck.Enabled       := true;
  Buttonbeenden.Enabled      := true;
  LabelDateien.Enabled       := true;
  Labelausgewaehlt.Enabled   := true;
  ListBoxDateien.Enabled     := true;
  ListBoxausgewaehlt.Enabled := true;
  ListboxErgebnisse.Enabled  := true;
  LabelExtension.Enabled     := true;
  LabelAnzahl.Enabled        := true;
  Laufwerk(DatS,EingabeS, DiscS);
  LabelPfad.Enabled          := true;
  MaskEditDatenPfad.Text     := DiscS;
  LabelExtension.Caption     := 'Extension .' + ExtenS;
  ButtonPfad.Enabled         := true;
  ListBoxLoeschen := false;
  Datsuch (Dzahl, DiscS, ExtenS, DatName, ListBoxLoeschen);
  if not ListBoxLoeschen then
    for i := 1 to Dzahl do ListboxDateien.Items.Add (DatName[i]);
end;

procedure TForm5.ListBoxDateienClick(Sender: TObject);     {Dateien auswählen}
var
  i : word;
begin
  for i := 0 to ListboxDateien.Items.Count-1 do
  begin
    if ListboxDateien.Selected[i] then
    begin
      Listboxausgewaehlt.Items.Add (ListboxDateien.Items.Strings[i]);
                                             {Dateien in 2. Listbox schreiben}
      ListboxDateien.Items.Delete(i);
      break;
    end;
  end;
  Buttonberechnen.Enabled := true;
end;

procedure TForm5.ButtonzuruckClick(Sender: TObject);  {zurück}
begin
  Listboxausgewaehlt.Clear;
  ListboxDateien.Clear;
  ListboxErgebnisse.Clear;
  Label00000.Caption := '';
  AziFeld1P   := Nil;
  AziFeld2P   := Nil;
  FalFeld1P   := Nil;
  FalFeld2P   := Nil;
  AziErgFeldP := Nil;   {zurück}
  FalErgFeldP := Nil;
  Datname     := Nil;
  Dateiname   := Nil;
  if WeiterF then
  begin
    AziFeld := Nil;
    FalFeld := Nil;
  end;
  Form5.Close;
end;

procedure TForm5.ButtonbeendenClick(Sender: TObject);  {Programm beenden}
begin
  AziFeld1P   := Nil;
  AziFeld2P   := Nil;
  FalFeld1P   := Nil;
  FalFeld2P   := Nil;
  AziErgFeldP := Nil;   {zurück}
  FalErgFeldP := Nil;
  Datname     := Nil;
  Dateiname   := Nil;
  Form5.Close;
  Form3.Close;
  SetCurrentDir(DirectS);
end;

procedure TForm5.ListBoxausgewaehltClick(Sender: TObject); {Ausgewählte Dateien}
var
  i    : word;
begin
  for i := 0 to Listboxausgewaehlt.Items.Count-1 do
  begin
    if Listboxausgewaehlt.Selected[i] then
    begin
      ListboxDateien.Items.Add (Listboxausgewaehlt.Items.Strings[i]);
      Listboxausgewaehlt.Items.Delete(i);
      break;
    end;
  end;
end;

procedure TForm5.ButtonberechnenClick(Sender: TObject);  {Berechnung}
var
  NameS      : string;
  j, i       : word;
  ZeileS     : string[50];
  Az1S, Az2S : string[3];
  Fa1S, Fa2S : string[2];
  Az1, Az2   : word;
  Fa1, Fa2   : shortint;
  AErgebnis  : word;
  FErgebnis  : shortint;
  Theta      : integer;
  ThetaS     : string[3];
  AErgebnisS : string[3];
  FErgebnisS : string[2];
  AziStreich : integer;
  Sunrot     : integer;
  RAzi, RFall: word;
  Pit        : word;
  RadAzi     : extended;
  RadFall    : extended;
  Aa, B, C   : array [0..2] of extended;
  Z          : byte;
  Sign       : shortint;
  PitS       : string[3];

begin
  ListboxDateien.Enabled       := false;
  Listboxausgewaehlt.Enabled   := false;
  Ergebnissespeichern1.Enabled := true;
  DatenSpeichern.Enabled       := true;
  Drucker1.Enabled             := true;
  SpeedDrucker.Enabled         := true;
  SpeedErgebnisseF.Enabled     := true;
  SpeedWinWord.Enabled         := true;
  SpeedEinrichten.Enabled      := true;
  ListboxDateien.Enabled       := false;
  DateiZahl := ListBoxausgewaehlt.Items.Count-1;
  for j := 0 to DateiZahl do
  begin
    NameS := Listboxausgewaehlt.Items.Strings[j];
    AusB := false;
    Testpfad (DiscS);
    if Berechnung <> 7 then
      Liesber (j, NameS, DiscS, Zahl, AziFeld1P, AziFeld2P,
               FalFeld1P, FalFeld2P)
    else LiesPitch (j, NameS, DiscS, Zahl, AziFeld1P,
                    FalFeld1P,AziFeld);
    if AusB then       {zurück}
    begin
      ListBoxDateien.Clear;
      ListBoxausgewaehlt.Clear;
      ListBoxErgebnisse.Clear;
      Label00000.Caption := '';
      Form5.Close;
    end;
    Dateiname[j] := NameS;
  end;
  Label00000.Caption := IntToStr(Zahl);
  for i := 1 to Zahl do
  begin
    Az1 := AziFeld1P[i];
    Az2 := AziFeld2P[i];
    Fa1 := FalFeld1P[i];
    Fa2 := FalFeld2P[i];
    Pit := AziFeld[i];
    Az1S := RightS('000'+IntToStr(Az1),3);
    Az2S := RightS('000'+IntToStr(Az2),3);
    Fa1S := RightS('00' +IntToStr(Fa1),2);
    Fa2S := RightS('00' +IntToStr(Fa2),2);
    if (Berechnung = 2) or (Berechnung = 3) then
    begin
      Rechnen (1, Berechnung, Fa1, Fa2, Az2, Az1, AErgebnis, Theta, FErgebnis);
      str(Theta, ThetaS);
    end
    else
    begin
      Rechnen (1, Berechnung, Fa1, Fa2, Az1, Az2, AErgebnis, Theta, FErgebnis);
    end;
    if Berechnung = 6 then
    begin
      AziStreich := Az1 - 90;
      if AziStreich <0 then AziStreich := AziStreich + 360;
      Rechnen (1,Berechnung,0,Fa2,Az2,AziStreich,AErgebnis,Theta,
               FErgebnis);
      str(Theta, ThetaS);
      AziErgFeldP[i] := Theta;
    end;
    if Berechnung = 7 then
    begin
      Sunrot := Az1 - 90;
      RAzi    := (Az1 + 180) mod 360;
      RFall   := 90 - Fa1;
      if Sunrot <0 then Sunrot := Sunrot + 360;
      Sunrot := Sunrot mod 360;
      Abc (Pit,RAzi,RFall,RadAzi,RadFall,Aa,B,C,Z);
      Rotieren (Aa,B,C,1,Sunrot,0,Z,RadAzi,RadFall,Az2,Fa2,Sign);
      AErgebnisS := IntToStr (Az2);
      FErgebnisS := IntToStr (Fa2);
      PitS       := IntToStr(Pit);
      AErgebnisS := RightS(('000'+AErgebnisS),3);
      FErgebnisS := RightS(('00'+FErgebnisS),2);
      PitS       := RightS(('000'+PitS),3);
      ZeileS := '  ' + Az1S + '/' + Fa1S + '           ' +
                PitS + '          ' + AErgebnisS + '/' +
                FErgebnisS;
    end;
    if (Berechnung = 1) or (Berechnung = 4) or (Berechnung =5) then
    begin
      AErgebnisS := IntToStr (AErgebnis);
      FErgebnisS := IntToStr (FErgebnis);
      AErgebnisS := RightS(('000'+AErgebnisS),3);
      FErgebnisS := RightS(('00'+FErgebnisS),2);
      ZeileS := '  ' + Az1S + '/' + Fa1S + '           ' +
                Az2S + '/' + Fa2S + '          ' + AErgebnisS + '/' +
                FErgebnisS;
    end
    else
      if Berechnung <> 7 then
        ZeileS := '  ' + Az1S + '/' + Fa1S + '           ' +
                  Az2S + '/' + Fa2S + '           ' + ThetaS;
    if (Berechnung = 2) or (Berechnung = 3) then
    begin
    end
    else
    begin
      if Berechnung <> 6 then
      begin
        AziErgFeldP[i] := AErgebnis;
        FalErgFeldP[i] := FErgebnis;
      end;
    end;
    ListBoxErgebnisse.Items.Add (ZeileS);
  end;
  SpeedDaten.Enabled     := true;
  SpeedIso.Enabled       := true;
  SpeedStatistik.Enabled := true;
  SpeedMaxima.Enabled    := true;
  if Berechnung <> 4 then
  begin
    Grosskreise.Enabled  := false;
    SpeedGKreise.Enabled := false;
  end
  else
  begin
    Grosskreise.Enabled  := true;
    SpeedGKreise.Enabled := true;
  end;
  if (Berechnung =1) or (Berechnung = 4)
  or (Berechnung = 5) then
    Auswertung.Enabled := true;
  if (Berechnung = 1) or (Berechnung = 5) then
    Gefuegetyp := 1;
  if Berechnung = 4 then Gefuegetyp := 2;    
end;

procedure TForm5.Druckereinrichten1Click(Sender: TObject);{Drucker einrichten}
begin
  PrinterSetupDialog1.Execute;
end;

procedure TForm5.SpeedEinrichtenClick(Sender: TObject);
begin
  DruckerEinrichten1Click(Sender);
end;

procedure TForm5.speichernDClick(Sender: TObject);
begin
  if CurrentFile <> '' then
  begin
    if (Berechnung = 1) or (Berechnung = 4) or (Berechnung = 5) then
      Speichern2 (CurrentFile, Zahl, AziErgFeldP, FalErgFeldP)
  else
    Speichern3 (CurrentFile, Zahl, AziErgFeldP);
  end
  else speichernDUnterClick(Sender);
end;

procedure TForm5.speichernDUnterClick(Sender: TObject);
begin
  if (Berechnung = 1) or (Berechnung = 5) or (Berechnung = 7)
  then ExtenS := 'LIN';
  if (Berechnung = 2) or (Berechnung = 3) or (Berechnung = 6)
  then ExtenS := 'ANG';
  if Berechnung = 4 then ExtenS := 'PLA';
  SaveDialog1.DefaultExt := ExtenS;
  SaveDialog1.Filter     := ExtenS;
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    if (Berechnung = 1) or (Berechnung = 4) or (Berechnung = 5)
    or (Berechnung = 7) then Speichern2 (CurrentFile, Zahl,
                                         AziErgFeldP, FalErgFeldP)
    else Speichern3 (CurrentFile, Zahl, AziErgFeldP);
  end;
end;

procedure TForm5.drucken1Click(Sender: TObject);
begin
   case Berechnung of
    1: ExtenS := 'PL2';
    2: ExtenS := 'PL2';
    3: ExtenS := 'LI2';
    4: ExtenS := 'LI2';
    5: ExtenS := 'LI2';
  end;
  Titel (DateiName, Berechnung, AziFeld1P, AziFeld2P,
         FalFeld1P, FalFeld2P, AziErgFeldP, FalErgFeldP,
         Zahl, DateiZahl);
end;

procedure TForm5.Hilfe1Click(Sender: TObject);
var
  DateiS : string;
  Helprouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\bere94bt.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\calc94bt.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm5.SpeedHilfeClick(Sender: TObject);
begin
  Hilfe1Click(Sender);
end;

procedure TForm5.SpeedErgebnisseFClick(Sender: TObject);
begin
  speichernDUnterClick(Sender);
end;

procedure TForm5.SpeedDruckerClick(Sender: TObject);
begin
  drucken1Click(Sender);
end;

procedure TForm5.ButtonPfadClick(Sender: TObject);
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm5.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Berechnungen.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'Calculations.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm5.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm5.LiteraturClick(Sender: TObject);
  var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm5.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

procedure TForm5.WinWordClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := 'rtf';
  SaveDialog1.Filter     := 'rtf';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    WinTitel (CurrentFile, DateiName, Berechnung, AziFeld1P, AziFeld2P,
         FalFeld1P, FalFeld2P, AziErgFeldP, FalErgFeldP,
         Zahl, DateiZahl);
  end;
end;

procedure TForm5.SpeedWinWordClick(Sender: TObject);
begin
  WinWordClick(Sender);
end;

procedure TForm5.DspeichernClick(Sender: TObject);
begin
  if CurrentFile <> '' then Schreib2(CurrentFile,Zahl,
    AziFeld1P,AziFeld2P,FalFeld1P,FalFeld2P)
  else DspeichernUnterClick(Sender);
end;

procedure TForm5.DspeichernUnterClick(Sender: TObject);
begin
  Erweiterung (ExtenS);
  SaveDialog1.DefaultExt := ExtenS;
  SaveDialog1.Filter     := ExtenS;
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    if Berechnung <> 7 then
      Schreib2 (CurrentFile, Zahl, AziFeld1P, AziFeld2P, FalFeld1P,
                FalFeld2P)
    else Schreib3(CurrentFile,Zahl,AziFeld1P,FalFeld1P,AziFeld);
  end;
end;

procedure TForm5.SpeedDspeichernClick(Sender: TObject);
begin
  DspeichernUnterClick(Sender);
end;

procedure TForm5.DatenPlottenClick(Sender: TObject);
var
  i : word;
begin
  ZahlGlob := Zahl;
  for i := 1 to ZahlGlob do
  begin
    AziFeld[i] := AziErgFeldP[i];
    FalFeld[i] := FalErgFeldP[i];
  end;
  WeiterB[5] := true;
  Application.CreateForm(TForm12, Form12);
  Form12.Show;
end;

procedure TForm5.SpeedDatenClick(Sender: TObject);
begin
  DatenPlottenClick(Sender);
end;

procedure TForm5.GrosskreiseClick(Sender: TObject);
var
  i : word;
begin
  ZahlGlob := Zahl;
  for i := 1 to ZahlGlob do
  begin
    AziFeld[i] := AziErgFeldP[i];
    FalFeld[i] := FalErgFeldP[i];
  end;
  Programm := 4;
  WeiterB[5] := true;
  Application.CreateForm(TForm85, Form85);
  Form85.Show;
end;

procedure TForm5.SpeedGKreiseClick(Sender: TObject);
begin
  GrosskreiseClick(Sender);
end;

procedure TForm5.IsolinienClick(Sender: TObject);
var
  i : word;
begin
  ZahlGlob := Zahl;
  for i := 1 to ZahlGlob do
  begin
    AziFeld[i] := AziErgFeldP[i];
    FalFeld[i] := FalErgFeldP[i];
  end;
  WeiterB[5] := true;
  Application.CreateForm(TForm23, Form23);
  Form23.Show;
end;

procedure TForm5.SpeedIsoClick(Sender: TObject);
begin
  IsolinienClick(Sender);
end;

procedure TForm5.StatistikClick(Sender: TObject);
var
  i : word;
begin
  ZahlGlob := Zahl;
  for i := 1 to ZahlGlob do
  begin
    AziFeld[i] := AziErgFeldP[i];
    FalFeld[i] := FalErgFeldP[i];
  end;
  WeiterB[5] := true;
  Application.CreateForm(TForm21, Form21);
  Form21.Show;
end;

procedure TForm5.SpeedStatistikClick(Sender: TObject);
begin
  StatistikClick(Sender);
end;

procedure TForm5.SubmaximaClick(Sender: TObject);
var
  i : word;
begin
  ZahlGlob := Zahl;
  for i := 1 to ZahlGlob do
  begin
    AziFeld[i] := AziErgFeldP[i];
    FalFeld[i] := FalErgFeldP[i];
  end;
  WeiterB[5] := true;
  Application.CreateForm(TForm25, Form25);
  Form25.Show;
end;

procedure TForm5.SpeedMaximaClick(Sender: TObject);
begin
  SubmaximaClick(Sender);
end;

end.
