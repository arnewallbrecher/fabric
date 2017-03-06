unit Unit4; {Berechnungen, manuelle Eingabe}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, Basic, Globvar, Texte, StdCtrls, ExtCtrls,
  Mask, Kalkulat, Standard, Menus, Einausga, Dateien, Drucken,
  Printers, ComCtrls, Buttons, Shellapi, ehsHelpRouter;

type
  TForm4 = class(TForm)
    Panel1        : TPanel;
    Label1Flaeche : TLabel;
    ListBoxDaten  : TListBox;

    Panel2        : TPanel;
    LabelDaten    : TLabel;

    Panel3           : TPanel;
    LabelMessungen   : TLabel;
    LabelFallwinkel  : TLabel;
    LabelEingabe     : TLabel;
    LabelAusgabe     : TLabel; {Start}

    PanelMaxDat : TPanel;
    LabelMaxDat : TLabel;
    LabelMenge  : TLabel;

    Buttonzurueck  : TButton;
    Buttonbeenden  : TButton;
    ButtonEbeenden : TButton;
    GroupBoxBEingabe: TGroupBox;
    Label1Messung   : TLabel;
    Label2Messung   : TLabel;
    MaskEditB2: TMaskEdit;
    MaskEditBFall1: TMaskEdit;
    MaskEditBFall2: TMaskEdit;

    MainMenu1: TMainMenu;

    Daten1      : TMenuItem;
    speichernD: TMenuItem;
    speichernUnter: TMenuItem;

    Ergebissespeichern1 : TMenuItem;
    speichernE: TMenuItem;
    speichernEUnter: TMenuItem;

    Drucker1           : TMenuItem;
    drucken1           : TMenuItem;
    Druckereinrichten1 : TMenuItem;

    PrintDialog1        : TPrintDialog;
    PrinterSetupDialog1 : TPrinterSetupDialog;
    ButtonStart         : TButton;
    Hilfe1              : TMenuItem;
    StatusBar           : TStatusBar;

    Panel4           : TPanel;
    SpeedDrucken     : TSpeedButton;
    SpeedDatenF      : TSpeedButton;
    SpeedHilfe: TSpeedButton;
    Handbuch: TMenuItem;
    SaveDialog1: TSaveDialog;
    LabelDemo: TLabel;
    SpeedErgebnisseF: TSpeedButton;
    SpeedHandbuch: TSpeedButton;
    Literatur: TMenuItem;
    SpeedLiteratur: TSpeedButton;
    WinWord: TMenuItem;
    SpeedWinWord: TSpeedButton;
    MaskEditNS1: TMaskEdit;
    MaskEditNS2: TMaskEdit;
    GroupBoxCEingabe: TGroupBox;
    LabelCMessung1: TLabel;
    LabelCMessung2: TLabel;
    MaskEditB1: TMaskEdit;
    MaskEditC1: TMaskEdit;
    MaskEditCFall1: TMaskEdit;
    MaskEditC2: TMaskEdit;
    MaskEditCFall2: TMaskEdit;
    SpeedEinrichten: TSpeedButton;
    Auswertung: TMenuItem;
    DatenPlotten: TMenuItem;
    GrosskreisePlotten: TMenuItem;
    Isolinien: TMenuItem;
    Statistik: TMenuItem;
    Submaxima: TMenuItem;
    SpeedDaten: TSpeedButton;
    SpeedGKreise: TSpeedButton;
    SpeedIso: TSpeedButton;
    SpeedStatistik: TSpeedButton;
    SpeedMaxima: TSpeedButton;
    RadioPitch: TRadioGroup;
    RadioUhrzeiger: TRadioButton;
    RadiogegenUhr: TRadioButton;
    PanelPitch: TPanel;
    MaskEditPitch: TMaskEdit;
    PanelStreichen: TPanel;
    MaskEditAzimut: TMaskEdit;
    LabelAzimut: TLabel;
    MaskEditFallen: TMaskEdit;
    LabelFallen: TLabel;
    PanelBrunton: TPanel;
    LabelStreichen: TLabel;
    Labeldip: TLabel;
    LabelRichtung: TLabel;
    MaskEditStreichen: TMaskEdit;
    MaskEditDip: TMaskEdit;
    MaskEditRichtung: TMaskEdit;
    LabelZahl: TLabel;

    procedure FormActivate(Sender: TObject);
    procedure ButtonzurueckClick(Sender: TObject);
    procedure ButtonEbeendenClick(Sender: TObject);
    procedure ButtonbeendenClick(Sender: TObject);
    procedure ButtonStartClick(Sender: TObject);

    procedure MaskEditB1KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditBFall2KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditNS1KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditNS2KeyPress(Sender: TObject; var Key: Char);

    {Daten speichern}
    procedure speichernDClick(Sender: TObject);
    procedure speichernUnterClick(Sender: TObject);

    {Ergebnisse speichern}
    procedure speichernEClick(Sender: TObject);
    procedure speichernEUnterClick(Sender: TObject);
    procedure SpeedErgebnisseFClick(Sender: TObject);

    {Drucker}
    procedure drucken1Click(Sender: TObject);
    procedure Druckereinrichten1Click(Sender: TObject);

    procedure Hilfe1Click(Sender: TObject);
    procedure ShowHint(Sender: TObject);
    procedure FormShow(Sender: TObject);

    procedure SpeedDruckenClick(Sender: TObject);
    procedure SpeedDatenFClick(Sender: TObject);
    procedure SpeedHilfeClick(Sender: TObject);
    procedure HandbuchClick(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
    procedure SpeedLiteraturClick(Sender: TObject);
    procedure WinWordClick(Sender: TObject);
    procedure SpeedWinWordClick(Sender: TObject);
    procedure MaskEditBFall1KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditB2KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditNS1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MaskEditNS2KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MaskEditC1KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditCFall1KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditC2KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditCFall2KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedEinrichtenClick(Sender: TObject);
    procedure DatenPlottenClick(Sender: TObject);
    procedure GrosskreisePlottenClick(Sender: TObject);
    procedure IsolinienClick(Sender: TObject);
    procedure StatistikClick(Sender: TObject);
    procedure SubmaximaClick(Sender: TObject);
    procedure SpeedDatenClick(Sender: TObject);
    procedure SpeedGKreiseClick(Sender: TObject);
    procedure SpeedIsoClick(Sender: TObject);
    procedure SpeedStatistikClick(Sender: TObject);
    procedure SpeedMaximaClick(Sender: TObject);
    procedure RadioUhrzeigerClick(Sender: TObject);
    procedure RadiogegenUhrClick(Sender: TObject);
    procedure MaskEditPitchKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditAzimutKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditFallenKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditStreichenKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditDipKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditRichtungKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditRichtungKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  end;

var
  Form4       : TForm4;
  Anzahl      : word;
  AziFeld1P   : array of word;
  AziFeld2P   : array of word;
  FalFeld1P   : array of word;
  FalFeld2P   : array of word;
  AziErgFeldP : array of word;
  FalErgFeldP : array of word;
  NameS       : string;
  StatusOk    : boolean;
  CurrentFile : string;
  Extens      : string;
  Azimut1S    : string;
  Azimut2S    : string;
  Fallen1S    : string;
  Fallen2S    : string;
  Azimut1     : word;
  Azimut2     : word;
  Fallen1     : shortint;
  Fallen2     : shortint;
  MaxAzi      : word;
  MaxFall     : shortint;
  Streichen   : word;
  StreichenS  : string;
  Fall        : shortint;
  NS          : array of shortstring;

implementation
uses Unit3, Unit12, Unit21, Unit23, Unit25, Unit85;
{$R *.DFM}

procedure TForm4.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm4.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm4.FormActivate(Sender: TObject);
begin
  Left   := 140;
  Top    := 80;
  Height := 620;
  Width  := 830;
  setlength (AziFeld1P,MaxDaten);
  setlength (AziFeld2P,MaxDaten);
  setlength (FalFeld1P,MaxDaten);
  setlength (FalFeld2P,MaxDaten);
  setlength (AziErgFeldP,MaxDaten);
  setlength (FalErgFeldP,MaxDaten);
  setlength (AziFeld, MaxDaten);
  setlength (FalFeld, MaxDaten);
  setlength (NS, Maxdaten);
  if (Berechnung >7) and (Berechnung < 12)
    then setlength (SpZeile, MaxDaten);
  WeiterB[4] := false;
  LabelDemo.Visible               := false;
  if DemoB then LabelDemo.Visible := true;
  LabelMaxDat.Caption          := Tx(981);
  LabelMenge.Caption           := Inttostr(MaxDaten);
  PanelMaxDat.Hint             := Hilf(268); {Max. Daten}
  Panel2.Hint                  := Hilf(20);  {Datenpanel}
  MaskEditB1.Hint              := Hilf(21);
  MaskEditC1.Hint              := Hilf(21);
  MaskEditBFall1.Hint          := Hilf(22);
  MaskEditCFall1.Hint          := Hilf(22);
  MaskEditB2.Hint              := Hilf(23);
  MaskEditC2.Hint              := Hilf(24);
  MaskEditBFall2.Hint          := Hilf(24);
  MaskEditCFall2.Hint          := Hilf(24);
  ButtonEbeenden.Hint          := Hilf(26);
  ButtonStart.Hint             := Hilf(27);
  Buttonzurueck.Hint           := Hilf(28);
  ListBoxDaten.Hint            := Hilf(29);
  Buttonbeenden.Hint           := Hilf(30);
  SpeedDrucken.Hint            := Hilf(203);
  SpeedDatenF.Hint             := Hilf(204);
  SpeedErgebnisseF.Hint        := Hilf(207);
  SpeedHilfe.Hint              := Hilf(210);
  SpeedHandbuch.Hint           := Hilf(274);
  SpeedEinrichten.Hint         := Hilf(505);
  SpeedGKreise.Hint            := Hilf(511);
  SpeedDaten.Hint              := Hilf(506);
  SpeedStatistik.Hint          := Hilf(509);
  SpeedIso.Hint                := Hilf(507);
  SpeedMaxima.Hint             := Hilf(508);
  Form4.Caption                := Tx(85);       {Fabric7: Berechnungen..}
  Daten1.Caption               := Tx(86);       {&Daten speichern}
  speichernD.Caption           := Tx(87);       {speichern}
  speichernUnter.Caption       := Tx(88);       {speichern unter}
  Ergebissespeichern1.Caption  := Tx(91);
  speichernE.Caption           := Tx(87);
  speichernEUnter.Caption      := Tx(88);
  Drucker1.Caption             := Tx(92);
  drucken1.Caption             := Tx(93);
  DruckerEinrichten1.Caption   := Tx(94);
  Hilfe1.Caption               := Tx(162)+' (F1)';
  LabelMessungen.Caption       := Tx(95);       {Messungen als Fallazimut}
  LabelEingabe.Caption         := Tx(97);       {Eingabe kann mit der Enter}
  LabelAusgabe.Caption         := Tx(825);      {Ausgabe in Altgrad}
  Label1Flaeche.Caption        := Tx(100);      {1.Fläche 2.Fläche...}
  LabelDaten.Caption           := Tx(101);      {Daten}
  Label1Messung.Caption        := Tx(103);
  Label2Messung.Caption        := Tx(104);
  LabelCMessung1.Caption       := Tx(103);
  LabelCMessung2.Caption       := Tx(104);
  ButtonEbeenden.Caption       := Tx(106);
  Buttonzurueck.Caption        := Tx(30);
  Buttonbeenden.Caption        := TX(53);
  Auswertung.Caption           := Tx(1341);
  Isolinien.Caption            := Tx(618);
  Statistik.Caption            := Tx(1342);
  Submaxima.Caption            := Tx(579);
  GrosskreisePlotten.Caption   := TX(1345);
  DatenPlotten.Caption         := Tx(1343);
  MaskEditC1.EditMask          := '999;0; ';
  MaskEditCFall1.EditMask      := '99;0; ';
  MaskEditC1.EditMask          := '999;0; ';
  MaskEditCFall2.EditMask      := '99;0; ';
  MaskEditB1.EditMask          := '999;0; ';
  MaskEditBFall1.EditMask      := '99;0; ';
  MaskEditB2.EditMask          := '999;0; ';
  MaskEditBFall2.EditMask      := '99;0; ';
  MaskEditPitch.EditMask       := '999;0; ';
  MaskEditAzimut.EditMask      := '999;0; ';
  MaskEditFallen.EditMask      := '99;0; ';
  MaskEditStreichen.EditMask   := '999;0; ';
  MaskEditDip.EditMask         := '99;0; ';
  MaskEditRichtung.EditMask    := 'L;0; ';
  GroupBoxCEingabe.Caption     := '';
  GroupBoxBEingabe.Caption     := '';
  LabelAzimut.Caption          := '';
  LabelFallen.Caption          := '';
  MaskEditAzimut.Visible       := false;
  MaskEditFallen.Visible       := false;
  Label1Messung.Enabled        := false;
  Label2Messung.Enabled        := false;
  LabelCMessung1.Enabled       := false;
  LabelCMessung2.Enabled       := false;
  LabelDaten.Enabled           := false;
  Label1Flaeche.Enabled        := false;
  Ergebissespeichern1.Enabled  := false;
  Drucker1.Enabled             := false;
  Daten1.Enabled               := false;
  SpeedDrucken.Enabled         := false;
  SpeedEinrichten.Enabled      := false;
  SpeedDatenF.Enabled          := false;
  SpeedErgebnisseF.Enabled     := false;
  StatusOk                     := false;
  Handbuch.Caption             := Tx(1055)+' (F2)';
  Literatur.Caption            := Tx(1183)+' (F5)';
  SpeedLiteratur.Hint          := Hilf(462);
  MaskEditC1.Enabled           := false;
  MaskEditCFall1.Enabled       := false;
  MaskEditC2.Enabled           := false;
  MaskEditCFall2.Enabled       := false;
  MaskEditB1.Enabled           := false;
  MaskEditB2.Enabled           := false;
  MaskEditBFall1.Enabled       := false;
  MaskEditBFall2.Enabled       := false;
  RadioPitch.Visible           := false;
  RadioUhrzeiger.Visible       := false;
  RadiogegenUhr.Visible        := false;
  PanelPitch.Visible           := false;
  PanelBrunton.Visible         := false;
  PanelStreichen.Visible       := false;
  RadioPitch.Caption           := Tx(1399);
  RadioUhrzeiger.Caption       := TX(1189);
  RadiogegenUhr.Caption        := Tx(1190);
  LabelStreichen.Caption       := '';
  LabelDip.Caption             := '';
  LabelRichtung.Caption        := '';
  MaskEditStreichen.Visible    := false;
  MaskEditDip.Visible          := false;
  MaskEditRichtung.Visible     := false;
  case Berechnung of
    1: begin
         Label1Flaeche.Caption  := Tx(108); {1.Fläche 2.Fläche Schnittkante}
         Label1Messung.Caption  := Tx(109); {1.Fläche}
         Label2Messung.Caption  := Tx(110); {2.Fläche}
         LabelCMessung1.Caption := Tx(109);
         LabelCMessung2.Caption := Tx(110);
       end;
    2: begin
         Label1Flaeche.Caption  := Tx(111); {1.Fläche 2.Fläche Winkel}
         Label1Messung.Caption  := Tx(109); {1.Fläche}
         Label2Messung.Caption  := Tx(110); {2.Fläche}
         LabelCMessung1.Caption := Tx(109);
         LabelCMessung2.Caption := Tx(110);
       end;
    3: begin
         Label1Flaeche.Caption  := Tx(112); {1.Linear 2.Linear Winkel}
         Label1Messung.Caption  := Tx(113); {1. Linear}
         Label2Messung.Caption  := Tx(114); {2. Linear}
         LabelCMessung1.Caption := Tx(113);
         LabelCMessung2.Caption := Tx(114);
       end;
    4: begin
         Label1Flaeche.Caption  := Tx(115); {1.Linear 2.Linear Fl„che}
         Label1Messung.Caption  := Tx(113); {1.Linear}
         Label2Messung.Caption  := Tx(114); {2.Linear}
         LabelCMessung1.Caption := Tx(113);
         LabelCMessung2.Caption := Tx(114);
       end;
    5: begin
         Label1Flaeche.Caption  := Tx(116); {1.Linear 2.Linear Normale}
         Label1Messung.Caption  := Tx(113); {1.Linear}
         Label2Messung.Caption  := Tx(114);
         LabelCMessung1.Caption := Tx(113);
         LabelCMessung2.Caption := Tx(114); {2.Linear}
       end;
    6: begin
         LabelCMessung1.Caption   := Tx(1217);
         LabelCMessung2.Caption   := Tx(1216);
         Label1Messung.Caption    := Tx(1217);
         Label2Messung.Caption    := Tx(1216);
         Label1Flaeche.Caption    := Tx(1406);
       end;
    7: begin
         PanelPitch.Visible     := true;
         LabelCMessung1.Caption := Tx(1217);
         LabelCMessung2.Caption := Tx(1399);
         Label1Messung.Caption  := Tx(1217);
         Label2Messung.Caption  := Tx(1399);
         Label1Flaeche.Caption  := TX(1408);
       end;
    8: begin
         RadioPitch.Visible     := false;
         PanelStreichen.Visible := true;
         Label1Flaeche.Caption  := Tx(1470);
       end;
    9: begin
         RadioPitch.Visible     := false;
         PanelStreichen.Visible := true;
         Label1Flaeche.Caption  := Tx(1470);
       end;
    10: begin
          RadioPitch.Visible     := false;
          PanelBrunton.Visible   := true;
          Label1Flaeche.Caption  := Tx(1479);
        end;
    11: begin
          RadioPitch.Visible     := false;
          PanelBrunton.Visible   := true;
          Label1Flaeche.Caption  := Tx(1479);
        end;
    12: begin
          RadioPitch.Visible     := false;
          Label1Flaeche.Caption  := Tx(111); {1.Fläche 2.Fläche Winkel}
          Label1Messung.Caption  := Tx(109); {1.Fläche}
          Label2Messung.Caption  := Tx(110); {2.Fläche}
          LabelCMessung1.Caption := Tx(109);
          LabelCMessung2.Caption := Tx(110);
          Label1Flaeche.Caption  := Tx(1632);
        end;
  end;
  WinWord.Caption      := Tx(1207);
  SpeedWinWord.Hint    := Hilf(470);
  SpeedWinword.Enabled := false;
  if KompassS = 'Clar' then
  begin
    GroupBoxCEingabe.Visible := true;
    GroupBoxBEingabe.Visible := false;
    LabelMessungen.Caption   := Tx(95);
    LabelFallwinkel.Caption  := Tx(96);
  end;
  if KompassS = 'Brunton' then
  begin
    GroupBoxCEingabe.Visible := false;
    GroupBoxBEingabe.Visible := true;
    LabelMessungen.Caption  := Tx(1242);
    LabelFallwinkel.Caption := Tx(1243);
  end;
  if Winkel = 1 then MaxAzi  := 360 else MaxAzi  := 400;
  if Winkel = 1 then MaxFall :=  90 else MaxFall := 100;;
  Auswertung.Enabled     := false;
  SpeedDaten.Enabled     := false;
  SpeedGKreise.Enabled   := false;
  SpeedIso.Enabled       := false;
  SpeedStatistik.Enabled := false;
  SpeedMaxima.Enabled    := false;
  if WeiterF then
    ButtonEBeendenClick(Sender);
  LabelZahl.Caption := '';  
end;

procedure TForm4.ButtonStartClick(Sender: TObject);  {Start}
begin
  if (Berechnung = 8) or (Berechnung = 9) then
  begin
    LabelAzimut.Caption    := Tx(1468);
    LabelFallen.Caption    := Tx(1469);
    MaskEditAzimut.Clear;
    MaskEditFallen.Clear;
    MaskEditAzimut.Visible := true;
    MaskEditFallen.Visible := true;
    MaskEditAzimut.Enabled := true;
    MaskEditFallen.Enabled := false;
    MaskEditAzimut.SetFocus;
  end;
  if (Berechnung > 9) and (Berechnung < 12) then
  begin
    LabelStreichen.Caption    := Tx(1471);
    LabelDip.Caption          := Tx(1472);
    LabelRichtung.Caption     := Tx(1473);
    MaskEditStreichen.Visible := true;
    MaskEditDip.Visible       := true;
    MaskEditRichtung.Visible  := true;
    MaskEditStreichen.Clear;
    MaskEditDip.Clear;
    MaskEditRichtung.Clear;
    MaskEditStreichen.SetFocus;
  end;
  ButtonEbeenden.Enabled := false;
  Anzahl                 := 0;
  MaskEditC1.Clear;
  MaskEditCFall1.Clear;
  MaskEditC2.Clear;
  MaskEditCFall2.Clear;
  MaskEditB1.Clear;
  MaskEditBFall1.Clear;
  MaskEditB2.Clear;
  MaskEditBFall2.Clear;
  MaskEditNS1.Clear;
  MaskEditNS2.Clear;
  LabelDaten.Enabled    := true;
  Label1Flaeche.Enabled := true;
  ListboxDaten.Clear;
  if (Berechnung < 6) or (Berechnung = 12) then
  begin
    GroupBoxCEingabe.Caption := Tx(102);      {Dateneingabe:}
    GroupBoxBEingabe.Caption := Tx(102);
    Label1Messung.Enabled    := true;
    Label2Messung.Enabled    := true;
    LabelCMessung1.Enabled   := true;
    LabelCMessung2.Enabled   := true;
    MaskEditC1.Enabled       := true;
    MaskEditCFall1.Enabled   := true;
    MaskEditC2.Enabled       := true;
    MaskEditCFall2.Enabled   := true;
    MaskEditB1.Enabled       := true;
    if KompassS = 'Clar'    then MaskEditC1.SetFocus;
    if KompassS = 'Brunton' then MaskEditB1.SetFocus;
  end
  else
  begin
    if Berechnung < 8 then
    begin
      RadioPitch.Visible     := true;
      RadioUhrzeiger.Visible := true;
      RadiogegenUhr.Visible  := true;
    end;
  end;
end;

procedure TForm4.ButtonzurueckClick(Sender: TObject);  {zurück}
begin
  ListBoxDaten.Clear;
  AziFeld1P := Nil;
  AziFeld2P := Nil;
  FalFeld1P := Nil;
  FalFeld2P := Nil;
  AziErgFeldP := Nil;   {zurück}
  FalErgFeldP := Nil;
  if (Berechnung >7) and (Berechnung <> 12) then SpZeile := NIL;
  if not WeiterF then
  begin
    AziFeld := Nil;
    FalFeld := NiL;
  end;
  Form4.Close;
end;

procedure TForm4.RadioUhrzeigerClick(Sender: TObject);
begin
  PitchSinnS := 'Uhrzeiger';
  GroupBoxCEingabe.Caption := Tx(102);      {Dateneingabe:}
  GroupBoxBEingabe.Caption := Tx(102);
  Label1Messung.Enabled    := true;
  Label2Messung.Enabled    := true;
  LabelCMessung1.Enabled   := true;
  LabelCMessung2.Enabled   := true;
  MaskEditC1.Enabled       := true;
  MaskEditCFall1.Enabled   := true;
  MaskEditC2.Enabled       := true;
  MaskEditCFall2.Enabled   := true;
  MaskEditB1.Enabled       := true;
  if KompassS = 'Clar'    then MaskEditC1.SetFocus;
  if KompassS = 'Brunton' then MaskEditB1.SetFocus;
end;

procedure TForm4.RadiogegenUhrClick(Sender: TObject);
begin
  PitchSinnS := 'gegenUhr';
  GroupBoxCEingabe.Caption := Tx(102);      {Dateneingabe:}
  GroupBoxBEingabe.Caption := Tx(102);
  Label1Messung.Enabled    := true;
  Label2Messung.Enabled    := true;
  LabelCMessung1.Enabled   := true;
  LabelCMessung2.Enabled   := true;
  MaskEditC1.Enabled       := true;
  MaskEditCFall1.Enabled   := true;
  MaskEditC2.Enabled       := true;
  MaskEditCFall2.Enabled   := true;
  MaskEditB1.Enabled       := true;
  if KompassS = 'Clar'    then MaskEditC1.SetFocus;
  if KompassS = 'Brunton' then MaskEditB1.SetFocus;
end;

procedure TForm4.ButtonEbeendenClick(Sender: TObject); {Eingabe beenden}
begin
  case Berechnung of
     1: Gefuegetyp := 1;
     4: Gefuegetyp := 2;
     5: Gefuegetyp := 1;
     7: Gefuegetyp := 1;
    10: Gefuegetyp := 2;
    11: Gefuegetyp := 1;
    12: Gefuegetyp := 2;
  end;
  Ergebissespeichern1.Enabled := true;
  Drucker1.Enabled            := true;
  Daten1.Enabled              := true;
  SpeedDrucken.Enabled        := true;
  SpeedEinrichten.Enabled     := true;
  SpeedDatenF.Enabled         := true;
  SpeedErgebnisseF.Enabled    := true;
  SpeedWinWord.Enabled        := true;
  {Daten können jetzt gespeichert werden.}
  if not WeiterF then ShowMessage (Tx(117));
  Auswertung.Enabled     := true;
  SpeedDaten.Enabled     := true;
  SpeedIso.Enabled       := true;
  SpeedStatistik.Enabled := true;
  SpeedMaxima.Enabled    := true;
  if Berechnung <> 4 then
  begin
    GrosskreisePlotten.Enabled  := false;
    SpeedGKreise.Enabled        := false;
  end
  else
  begin
    GrosskreisePlotten.Enabled  := true;
    SpeedGKreise.Enabled        := true;
  end;
  CurrentFile := '';
end;

procedure TForm4.ButtonbeendenClick(Sender: TObject);   {Button beenden}
begin
  AziFeld1P := Nil;
  AziFeld2P := Nil;
  FalFeld1P := Nil;
  FalFeld2P := Nil;
  AziErgFeldP := Nil;
  FalErgFeldP := Nil;
  if (Berechnung >7) and (Berechnung <> 12) then SpZeile := NIL;
  if WeiterB[4] = true then
  begin
    AziFeld := Nil;
    FalFeld := NiL;
  end;
  Form4.Close;
  Form3.Close;
  SetCurrentDir(DirectS);
end;

procedure TForm4.speichernDClick(Sender: TObject);
begin
  if CurrentFile <> '' then Schreib2(CurrentFile,Anzahl,
    AziFeld1P,AziFeld2P,FalFeld1P,FalFeld2P)
  else speichernUnterClick(Sender);
end;

procedure TForm4.speichernUnterClick(Sender: TObject); {Daten auf Diskette A:}
begin
  Erweiterung (ExtenS);
  SaveDialog1.DefaultExt := ExtenS;
  case Berechnung of
    1: SaveDialog1.Filter := 'Two Planes (*.pl2)|*.PL2';
    2: SaveDialog1.Filter := 'Two Planes (*.pl2)|*.PL2';
    3: SaveDialog1.Filter := 'Two Lineations (*.li2)|*.LI2';
    4: SaveDialog1.Filter := 'Two Lineations (*.li2)|*.LI2';
    5: SaveDialog1.Filter := 'Two Lineations (*.li2)|*.LI2';
    6: SaveDialog1.Filter := 'Planes & Lineations (*.pli)|*.PLI';
    7: SaveDialog1.Filter := 'Planes & Pitch (*.pch)|*.PCH';
    8: SaveDialog1.Filter := 'Planes (*.pla)|*.PLA';
    9: SaveDialog1.Filter := 'Lineations (*.lin|*.LIN';
   10: SaveDialog1.Filter := 'Planes (Brunton) (*.plb)|*.PLB';
   11: SaveDialog1.Filter := 'Lineations (Brunton) (*.lib)|*.LIB';
   12: SaveDialog1.Filter := 'Two Planes (*.pl2)|*.PL2';
  end;
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    if (Berechnung = 8) or (Berechnung = 9) then
    begin
      Speichern(CurrentFile,Anzahl,AziFeld,FalFeld);
      CurrentFile := '';
      exit;
    end;
    if (Berechnung < 6) or (Berechnung = 12) then
      Schreib2 (CurrentFile, Anzahl, AziFeld1P, AziFeld2P, FalFeld1P,
                FalFeld2P);
    if Berechnung = 7 then Schreib3(CurrentFile,Anzahl,AziFeld1P,FalFeld1P,AziFeld);
    if (Berechnung > 9) and (Berechnung < 12) then
      SpeichernS(CurrentFile,SpZeile,Anzahl);
  end;
  CurrentFile := '';
end;

procedure TForm4.speichernEClick(Sender: TObject);{Ergebnisse auf Festplatte}
begin
  if CurrentFile <> '' then
  begin
    if (Berechnung = 1) or (Berechnung = 4) or (Berechnung = 5)
    or (Berechnung = 12) then
      Speichern2 (CurrentFile, Anzahl, AziErgFeldP, FalErgFeldP)
    else
      Speichern3 (CurrentFile, Anzahl, AziErgFeldP);
    if (Berechnung = 8) or (Berechnung = 9) then SpeichernS(CurrentFile,SpZeile,Anzahl);
    if (Berechnung = 10) or (Berechnung = 11) then Speichern2(CurrentFile,Anzahl,AziFeld,FalFeld);
  end
  else speichernEUnterClick(Sender);
  CurrentFile := '';
end;

procedure TForm4.speichernEUnterClick(Sender: TObject);
begin
  case Berechnung of
    1: ExtenS := 'LIN';
    2: ExtenS := 'ANG';
    3: ExtenS := 'ANG';
    4: ExtenS := 'PLA';
    5: ExtenS := 'LIN';
    6: ExtenS := 'ANG';
    7: ExtenS := 'LIN';
    8: ExtenS := 'PLB';
    9: ExtenS := 'LIB';
   10: ExtenS := 'PLA';
   11: ExtenS := 'LIN';
   12: ExtenS := 'PLA';
  end;
  SaveDialog1.DefaultExt := ExtenS;
  if ExtenS = 'LIN' then SaveDialog1.Filter := 'Linears (*.lin)|*.LIN';
  if ExtenS = 'ANG' then SaveDialog1.Filter := 'Angles (*.ang)|*.ANG';
  if ExtenS = 'PLA' then SaveDialog1.Filter := 'Planes (*.pla)|*.PLA';
  if ExtenS = 'PCH' then SaveDialog1.Filter := 'Planes & Pitches (*.pch)|*.PCH';
  if ExtenS = 'PLI' then SaveDialog1.Filter := 'Planes & Linears (*.pli)|*.PLI';
  if ExtenS = 'PLB' then SaveDialog1.Filter := 'Planes (Brunton) (*.plb)|*.PLB';
  if ExtenS = 'LIB' then SaveDialog1.Filter := 'Linears (Brunton) (*.lib)|*.LIB';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    if (Berechnung = 1) or (Berechnung = 4) or (Berechnung = 5)
    or (Berechnung = 7) or (Berechnung = 12) then
      Speichern2 (CurrentFile, Anzahl, AziErgFeldP, FalErgFeldP)
    else
      Speichern3 (CurrentFile, Anzahl, AziErgFeldP);
    if (Berechnung = 8) or (Berechnung = 9) then SpeichernS(CurrentFile,SpZeile,Anzahl);
    if (Berechnung = 10) or (Berechnung = 11)
    then Speichern2 (CurrentFile, Anzahl,AziFeld, FalFeld);
  end;
end;

procedure TForm4.drucken1Click(Sender: TObject);
var
  DatName : array[0..1] of string;
begin
  case Berechnung of
    1:  ExtenS := 'PL2';
    2:  ExtenS := 'PL2';
    3:  ExtenS := 'LI2';
    4:  ExtenS := 'LI2';
    5:  ExtenS := 'LI2';
    6:  ExtenS := 'PLI';
    7:  ExtenS := 'PCH';
    8:  ExtenS := 'PLA';
    9:  ExtenS := 'LIN';
    10: ExtenS := 'PLB';
    11: ExtenS := 'LIB';
    12: ExtenS := 'PL2';
  end;
  If NameS = '' then Datnam (NameS, ExtenS);
  DatName[1] := NameS;
  if (Berechnung < 8) or (Berechnung = 12) then
  begin
    Titel (DatName, Berechnung, AziFeld1P, AziFeld2P,
           FalFeld1P, FalFeld2P, AziErgFeldP, FalErgFeldP,
           Anzahl, 1, NS);
  end;
  if (Berechnung = 8) or (Berechnung = 9) then
    StrDruck (Datname, Berechnung, AziFeld, FalFeld, SpZeile, Anzahl, 1);
  if (Berechnung = 10) or (Berechnung = 11) then
    AziDruck (Datname, Berechnung, SpZeile, AziFeld, FalFeld, Anzahl, 1);
  NameS := '';
end;

procedure TForm4.Druckereinrichten1Click(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TForm4.SpeedEinrichtenClick(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TForm4.MaskEditC1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(13) then
  begin
    Azimut1S := MaskEditC1.Text;
    LeerLoeschen (Azimut1S);
    if Azimut1S = '' then exit
    else
    begin
      Azimut1 := StrToInt (Azimut1S);
      if Azimut1 <= MaxAzi then
      begin
        MaskEditCFall1.Enabled := true;
        MaskEditCFall1.SetFocus;
        MaskEditC1.Enabled := false;
      end
      else
      begin
        MaskEditC1.Clear;
        MaskEditC1.SetFocus;
      end;
    end;
  end;
end;

procedure TForm4.MaskEditCFall1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(13) then
  begin
    Fallen1S := MaskEditCFall1.Text;
    LeerLoeschen (Fallen1S);
    if Fallen1S = '' then exit
    else
    begin
      Fallen1  := StrToInt (Fallen1S);
      if Fallen1 <= MaxFall then
      begin
        MaskEditCFall1.Enabled := false;
        if Berechnung <> 7 then
        begin
          MaskEditC2.Enabled := true;
          MaskEditC2.SetFocus;
        end
        else
        begin
          MaskEditPitch.Enabled := true;
          MaskEditPitch.SetFocus;
        end;
      end
      else
      begin
        MaskEditCFall1.Clear;
        MaskEditCFall1.SetFocus;
      end;
    end;
  end;
end;

procedure TForm4.MaskEditC2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(13) then
  begin
    Azimut2S := MaskEditC2.Text;
    LeerLoeschen (Azimut2S);
    if Azimut2S = '' then exit
    else
    begin
      Azimut2 := StrToInt (Azimut2S);
      if Azimut2 <= MaxAzi then
      begin
        MaskEditCFall2.Enabled := true;
        MaskEditCFall2.SetFocus;
        MaskEditC2.Enabled := false;
      end
      else
      begin
        MaskEditC2.Clear;
        MaskEditC2.SetFocus;
      end;
    end;
  end;
end;

procedure TForm4.MaskEditCFall2KeyPress(Sender: TObject; var Key: Char);
var
  ZeileS     : string;
  AnzahlS    : string;
  AErgebnis  : word;
  Theta      : integer;
  FErgebnis  : shortint;
  ThetaS     : string;
  AErgebnisS : string;
  FErgebnisS : string;
  AziStreich : integer;
  Rp,Xk,Gr,Ab: real;
  La, Lp     : integer;
begin
  if Key = chr(13) then
  begin
    Fallen2S := MaskEditCFall2.Text;
    LeerLoeschen (Fallen2S);
    if Fallen2S = '' then exit
    else
    begin
      Fallen2 := StrToInt (Fallen2S);
      if Fallen2 <= MaxFall then
      begin
        MaskEditCFall2.Enabled := false;
        MaskEditC1.Enabled := true;
        MaskEditC1.SetFocus;
      end
      else
      begin
        MaskEditCFall2.Clear;
        MaskEditCFall2.SetFocus;
        exit;
      end;
    end;
    if Winkel = 2 then
    begin
      Neugrad (Azimut1, Fallen1);
      Neugrad (Azimut2, Fallen2);
    end;
    inc(Anzahl);
    AziFeld1P[Anzahl] := Azimut1;
    FalFeld2P[Anzahl] := Fallen1;
    AziFeld2P[Anzahl] := Azimut2;
    FalFeld2P[Anzahl] := Fallen2;
    Azimut1S := IntToStr(Azimut1);
    Azimut2S := IntToStr(Azimut2);
    Fallen1S := IntToStr(Fallen1);
    Fallen2S := IntToStr(Fallen2);
    Azimut1S := RightS('000'+Azimut1S,3);
    Azimut2S := RightS('000'+Azimut2S,3);
    Fallen1S := RightS('00'+Fallen1S,2);
    Fallen2S := RightS('00'+Fallen2S,2);
    if Berechnung < 6 then
    begin
      if (Berechnung = 2) or (Berechnung = 3) then
      begin
        Rechnen (1,Berechnung,Fallen1,Fallen2,Azimut2,Azimut1,AErgebnis,Theta,
                 FErgebnis);
        str(Theta, ThetaS);
      end
      else
      begin
        Rechnen (1,Berechnung,Fallen1,Fallen2,Azimut1,Azimut2,AErgebnis,Theta,
                 FErgebnis);
      end;
    end;
    if Berechnung = 6 then
    begin
      AziStreich := 0;
      if PitchSinnS = 'Uhrzeiger' then
      begin
        AziStreich := Azimut1 - 90;
        if AziStreich <0 then AziStreich := AziStreich + 360;
      end;
      if PitchSinnS = 'gegenUhr'  then
        AziStreich := (Azimut1 + 90) mod 360;
      Rechnen (1,Berechnung,0,Fallen2,Azimut2,AziStreich,AErgebnis,Theta,
               FErgebnis);
      str(Theta, ThetaS);
    end;
    if Berechnung = 12 then
    begin
      AziFeld[1] := Azimut1;
      AziFeld[2] := Azimut2;
      FalFeld[1] := Fallen1;
      FalFeld[2] := Fallen2;
      Algorithmus(2,2,La,Lp,Rp,Xk,Gr,Ab,AziFeld,FalFeld);
      AErgebnisS := IntToStr (La);
      FErgebnisS := IntToStr (Lp);
      AErgebnisS := RightS('000'+AErgebnisS,3);
      FErgebnisS := RightS('00'+FErgebnisS,2);
      AziErgFeldP[Anzahl] := La;
      FalErgFeldP[Anzahl] := Lp;
      ZeileS := '   ' + Azimut1S + '/' + Fallen1S + '           ' +
                  Azimut2S + '/' + Fallen2S + '           ' + AErgebnisS + '/' +
                  FErgebnisS;
    end;
    if Berechnung <> 12 then
    begin
      if (Berechnung = 1) or (Berechnung = 4) or (Berechnung =5) then
      begin
        AErgebnisS := IntToStr (AErgebnis);
        FErgebnisS := IntToStr (FErgebnis);
        AErgebnisS := RightS('000'+AErgebnisS,3);
        FErgebnisS := RightS('00'+FErgebnisS,2);
        ZeileS := '   ' + Azimut1S + '/' + Fallen1S + '           ' +
                  Azimut2S + '/' + Fallen2S + '           ' + AErgebnisS + '/' +
                  FErgebnisS;
      end
      else
        ZeileS := '    ' + Azimut1S + '/' + Fallen1S + '           ' +
                  Azimut2S + '/' + Fallen2S + '            ' + ThetaS;
    end;
    ListBoxDaten.Items.Add (ZeileS);
    AnzahlS := IntToStr (Anzahl);
    AnzahlS := RightS ('     '+AnzahlS,5);
    LabelZahl.Caption := AnzahlS;       {Anzahl der Daten ausgeben}
    AziFeld1P[Anzahl] := Azimut1;       {Daten in Feld schreiben}
    AziFeld2P[Anzahl] := Azimut2;
    FalFeld1P[Anzahl] := Fallen1;
    FalFeld2P[Anzahl] := Fallen2;
    case Berechnung of
    1: begin
         AziErgFeldP[Anzahl] := AErgebnis;
         FalErgFeldP[Anzahl] := FErgebnis;
       end;
    2: AziErgFeldP[Anzahl] := Theta;
    3: AziErgFeldP[Anzahl] := Theta;
    4: begin
         AziErgFeldP[Anzahl] := AErgebnis;
         FalErgFeldP[Anzahl] := FErgebnis;
       end;
    5: begin
         AziErgFeldP[Anzahl] := AErgebnis;
         FalErgFeldP[Anzahl] := FErgebnis;
       end;
    6: AziErgFeldP[Anzahl] := Theta;
    7: begin
         AziErgFeldP[Anzahl] := AErgebnis;
         FalErgFeldP[Anzahl] := FErgebnis;
       end;
    end;
    MaskEditC1.Clear;         {Eingabefelder löschen}
    MaskEditCFall1.Clear;
    MaskEditC2.Clear;
    MaskEditCFall2.Clear;
    ButtonEbeenden.Enabled := true;
  end;
end;

procedure TForm4.MaskEditB1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(13) then
  begin
    Azimut1S := MaskEditB1.Text;
    LeerLoeschen (Azimut1S);
    if Azimut1S = '' then exit
    else
    begin
      Azimut1 := StrToInt (Azimut1S);
      if Azimut1 <= MaxAzi then
      begin
        MaskEditBFall1.Enabled := true;
        MaskEditBFall1.SetFocus;
        MaskEditB1.Enabled := false;
      end
      else
      begin
        MaskEditB1.Clear;
        MaskEditB1.SetFocus;
      end;
    end;
  end;
end;

procedure TForm4.MaskEditBFall1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(13) then
  begin
    Fallen1S := MaskEditBFall1.Text;
    LeerLoeschen (Fallen1S);
    if Fallen1S = '' then exit
    else
    begin
      Fallen1  := StrToInt (Fallen1S);
      if Fallen1 <= MaxFall then
      begin
        MaskEditNS1.Enabled := true;
        MaskEditNS1.SetFocus;
        MaskEditBFall1.Enabled := false;
      end
      else
      begin
        MaskEditBFall1.Clear;
        MaskEditBFall1.SetFocus;
      end;
    end;
  end;
end;

procedure TForm4.MaskEditB2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(13) then
  begin
    Azimut2S := MaskEditB2.Text;
    LeerLoeschen (Azimut2S);
    if Azimut2S = '' then exit
    else
    begin
      Azimut2 := StrToInt (Azimut2S);
      if Azimut2 <= MaxAzi then
      begin
        MaskEditBFall2.Enabled := true;
        MaskEditBFall2.SetFocus;
        MaskEditB2.Enabled := false;
      end
      else
      begin
        MaskEditB2.Clear;
        MaskEditB2.SetFocus;
      end;
    end;
  end;
end;

procedure TForm4.MaskEditBFall2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(13) then
  begin
    Fallen2S := MaskEditBFall2.Text;
    LeerLoeschen (Fallen2S);
    if Fallen2S = '' then exit
    else
    begin
      Fallen2 := StrToInt (Fallen2S);
      if Fallen2 <= MaxFall then
      begin
        MaskEditNS2.Enabled := true;
        MaskEditNS2.SetFocus;
        MaskEditBFall2.Enabled := false;
      end
      else
      begin
        MaskEditBFall2.Clear;
        MaskEditBFall2.SetFocus;
        exit;
      end;
    end;
  end;
end;

procedure TForm4.MaskEditNS1KeyPress(Sender: TObject; var Key: Char);
var
  NordSudS : string;
  Azi      : integer;
begin
  if key = chr(13) then
  begin
    NordSudS := UcaseS(MaskEditNS1.Text);
    inc (Anzahl);
    ListBoxDaten.Enabled := true;
    Azi := Azimut1;
    if NordSudS = '' then exit;
    if NordSudS = 'N' then
    begin
      if Azi > 180 then Azi := Azi -180;
      if (Gefuegetyp = 2) or (Berechnung = 6)
      or (Berechnung = 7) then
      begin
        Azi := Azi - 90;
        if Azi <0 then Azi := Azi + 360;
      end;
      if (Gefuegetyp = 1) and (Berechnung < 6) then
      if Azi >90 then Azi := Azi + 180;
    end;
    if NordSudS = 'S' then
    begin
      if (Gefuegetyp = 1) and (Berechnung < 6) then
      begin
        if Azi <90 then Azi  := Azi + 180;
        if Azi >270 then Azi := Azi - 180;
      end;
      if (Gefuegetyp = 2) or (Berechnung = 6)
      or (Berechnung = 7) then
      begin
        if Azi > 180 then Azi := Azi -180;
        Azi := Azi + 90;
        if Azi >360 then Azi := Azi - 360;
      end;
    end;
    Azimut1 := Azi;
    MaskEditBFall1.Enabled := false;
    MaskEditB2.Enabled     := true;
    MaskEditB2.SetFocus;
    MaskEditNS1.Enabled := false;
    if Berechnung = 7 then
    begin
      MaskEditPitch.Enabled := true;
      MaskEditPitch.SetFocus;
    end;  
  end;
end;

procedure TForm4.MaskEditNS1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  NS : string[1];
begin
  NS := UcaseS(MaskEditNS1.Text);
  if (NS <> 'N') and (NS <> 'S') then
  begin
    MaskEditNS1.Clear;
    MaskEditNS1.SetFocus;
  end;
end;

procedure TForm4.MaskEditNS2KeyPress(Sender: TObject; var Key: Char);
var
  NordSudS   : string;
  ZeileS     : string;
  AnzahlS    : string;
  Azi        : integer;
  AErgebnis  : word;
  Theta      : integer;
  FErgebnis  : shortint;
  ThetaS     : string;
  AErgebnisS : string;
  FErgebnisS : string;
  AziStreich : integer;
  La, Lp     : integer;
  Rp,Xk,Gr,Ab: real;
begin
  if key = chr(13) then
  begin
    NordSudS := UcaseS(MaskEditNS2.Text);
    Azi := Azimut2;
    if NordSudS = '' then exit;
    if Berechnung = 6 then Gefuegetyp := 1;
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
    Azimut2 := Azi;
    MaskEditB1.Clear;
    MaskEditBFall1.Clear;
    MaskEditNS1.Clear;
    MaskEditBFall2.Clear;
    MaskEditB1.Enabled := true;
    MaskEditB1.SetFocus;
    MaskEditNS2.Clear;
    if Winkel = 2 then
    begin
      Neugrad (Azimut1, Fallen1);
      Neugrad (Azimut2, Fallen2);
    end;
    AziFeld1P[Anzahl] := Azimut1;
    FalFeld1P[Anzahl] := Fallen1;
    AziFeld2P[Anzahl] := Azimut2;
    FalFeld2P[Anzahl] := Fallen2;
    Azimut1S := IntToStr(Azimut1);
    Azimut2S := IntToStr(Azimut2);
    Fallen1S := IntToStr(Fallen1);
    Fallen2S := IntToStr(Fallen2);
    Azimut1S := RightS('000'+Azimut1S,3);
    Azimut2S := RightS('000'+Azimut2S,3);
    Fallen1S := RightS('00'+Fallen1S,2);
    Fallen2S := RightS('00'+Fallen2S,2);
    if (Berechnung = 2) or (Berechnung = 3) then
    begin
      Rechnen (1,Berechnung,Fallen1,Fallen2,Azimut2,Azimut1,AErgebnis,Theta,
               FErgebnis);
      str(Theta, ThetaS);
    end
    else
    begin
      Rechnen (1,Berechnung,Fallen1,Fallen2,Azimut1,Azimut2,AErgebnis,Theta,
               FErgebnis);
    end;
    if Berechnung = 6 then
    begin
      AziStreich := 0;
      if PitchSinnS = 'Uhrzeiger' then
      begin
        AziStreich := Azimut1 - 90;
        if AziStreich <0 then AziStreich := AziStreich + 360;
      end;
      if PitchSinnS = 'gegenUhr'  then
        AziStreich := (Azimut1 + 90) mod 360;
      Fallen1 := 0;
      Rechnen (1,Berechnung,Fallen1,Fallen2,Azimut2,AziStreich,AErgebnis,Theta,
               FErgebnis);
      str(Theta, ThetaS);
    end;
    if (Berechnung = 1) or (Berechnung = 4) or (Berechnung =5) then
    begin
      AErgebnisS := IntToStr (AErgebnis);
      FErgebnisS := IntToStr (FErgebnis);
      AErgebnisS := RightS('000'+AErgebnisS,3);
      FErgebnisS := RightS('00'+FErgebnisS,2);
      ZeileS := '   ' + Azimut1S + '/' + Fallen1S + '           ' +
                Azimut2S + '/' + Fallen2S + '           ' + AErgebnisS + '/' +
                FErgebnisS;
    end
    else
      ZeileS := '    ' + Azimut1S + '/' + Fallen1S + '           ' +
                Azimut2S + '/' + Fallen2S + '            ' + ThetaS;
    if Berechnung = 12 then
    begin
      AziFeld[1] := Azimut1;
      AziFeld[2] := Azimut2;
      FalFeld[1] := Fallen1;
      FalFeld[2] := Fallen2;
      Algorithmus(2,2,La,Lp,Rp,Xk,Gr,Ab,AziFeld,FalFeld);
      AErgebnisS := IntToStr (La);
      FErgebnisS := IntToStr (Lp);
      AErgebnisS := RightS('000'+AErgebnisS,3);
      FErgebnisS := RightS('00'+FErgebnisS,2);
      AErgebnis  := La;
      FErgebnis  := Lp;
      ZeileS := '   ' + Azimut1S + '/' + Fallen1S + '           ' +
                  Azimut2S + '/' + Fallen2S + '           ' + AErgebnisS + '/' +
                  FErgebnisS;
    end;
    ListBoxDaten.Items.Add (ZeileS);
    AnzahlS := IntToStr (Anzahl);
    AnzahlS := RightS ('     '+AnzahlS,5);
    LabelZahl.Caption  := AnzahlS;       {Anzahl der Daten ausgeben}
    FalFeld2P[Anzahl]  := Fallen2;
    if (Berechnung = 2) or (Berechnung = 3) or (Berechnung = 6) then
    begin
      AziErgFeldP[Anzahl] := Theta;
    end
    else
    begin
      AziErgFeldP[Anzahl] := AErgebnis;
      FalErgFeldP[Anzahl] := FErgebnis;
    end;
    MaskEditB1.Clear;         {Eingabefelder löschen}
    MaskEditBFall1.Clear;
    MaskEditB2.Clear;
    MaskEditBFall2.Clear;
    MaskEditNS1.Clear;
    MaskEditNS2.Clear;
    ButtonEbeenden.Enabled := true;
  end;
end;

procedure TForm4.MaskEditNS2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  NS : string[1];
begin
  NS := UcaseS(MaskEditNS2.Text);
  if (NS <> 'N') and (NS <> 'S') then
  begin
    MaskEditNS2.Clear;
    MaskEditNS2.SetFocus;
  end;
end;

procedure TForm4.MaskEditPitchKeyPress(Sender: TObject; var Key: Char);
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
  Azimut1S : string[3];
  Fallen1S : string[2];
  Azimut2S : string[3];
  Fallen2S : string[2];
begin
  if key = chr(13) then
  begin
    inc(Anzahl);
    WPitchS := MaskEditPitch.Text;
    WPitch  := StrToInt(WPitchS);
    Sunrot  := 0;
    if PitchSinnS = 'gegenUhr' then
    begin
      WPitch := -WPitch;
      Sunrot := Azimut1 + 90;
    end;
    if PitchSinnS = 'Uhrzeiger' then Sunrot := Azimut1 - 90;
    RAzi    := (Azimut1 + 180) mod 360;
    RFall   := 90 - Fallen1;
    if Sunrot <0 then Sunrot := Sunrot + 360;
    Sunrot := Sunrot mod 360;
    Abc (WPitch,RAzi,RFall,RadAzi,RadFall,Aa,B,C,Z);
    Rotieren (Aa,B,C,1,Sunrot,0,Z,RadAzi,RadFall,Azimut2,Fallen2,Sign);
    if WPitch <0 then WPitch := 180 + WPitch;
    WPitchS := IntToStr(WPitch);
    AnzahlS              := IntToStr (Anzahl);
    AnzahlS              := RightS ('     '+AnzahlS,5);
    LabelZahl.Caption    := AnzahlS;
    AziFeld1P[Anzahl]    := Azimut1;
    FalFeld1P[Anzahl]    := Fallen1;
    AziErgFeldP[Anzahl]  := Azimut2;
    FalErgFeldP[Anzahl]  := Fallen2;
    AziFeld2P[Anzahl]    := WPitch;
    ListBoxDaten.Enabled := true;
    Azimut1S := RightS('000'+IntToStr(Azimut1),3);
    Fallen1S := RightS('00'+IntToStr(Fallen1),2);
    Azimut2S := RightS('000'+IntToStr(Azimut2),3);
    Fallen2S := RightS('00'+IntToStr(Fallen2),2);
    WpitchS  := RightS('000'+WPitchS,3);
    ZeileS   := '  '+Azimut1S+'/'+Fallen1S+'               '+WPitchS
               +'              '+Azimut2S+'/'+Fallen2S;
    ListBoxDaten.Items.Add (ZeileS);
    ButtonEbeenden.Enabled := true;
    MaskEditPitch.Text := '    ';
    if KompassS = 'Clar' then
    begin
      MaskEditC1.Text     := '   ';
      MaskEditCFall1.Text := '  ';
      MaskEditC1.Enabled  := true;
      MaskEditC1.SetFocus;
    end;
    if KompassS = 'Brunton' then
    begin
      MaskEditB1.Text     := '   ';
      MaskEditBFall1.Text := '   ';
      MaskEditNS1.Text    := ' ';
      MaskEditB1.Enabled  := true;
      MaskEditB1.SetFocus;
    end;
  end;
end;

procedure TForm4.MaskEditAzimutKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(13) then
  begin
    Azimut1S := MaskEditAzimut.Text;
    if Azimut1S = '' then exit;
    Azimut1  := StrToInt(Azimut1S);
    MaskEditFallen.Clear;
    MaskEditFallen.Enabled := true;
    MaskEditFallen.SetFocus;
  end;
end;

procedure TForm4.MaskEditFallenKeyPress(Sender: TObject; var Key: Char);
var
  ZeileS     : string;
  Streichen  : word;
  StreichenS : string;
  RichtungS  : string[1];
begin
  StreichenS := '';
  Streichen  := 0;
  if Key = chr(13) then
  begin
    Fallen1S := MaskEditFallen.Text;
    if Fallen1S = '' then exit;
    inc(Anzahl);
    LabelZahl.Caption := IntToStr(Anzahl);
    Fallen1  := StrToInt(Fallen1S);
    MaskEditAzimut.Clear;
    MaskEditAzimut.Enabled := true;
    MaskEditAzimut.SetFocus;
    MaskEditFallen.Enabled := false;
    if Azimut1 = 90 then Azimut1 := 89;
    if Azimut1 = 270 then Azimut1 := 269;
    if Berechnung = 8 then
    begin
      Streichen := (Azimut1 + 90) mod 180;
      if Azimut1 < 91 then RichtungS := 'N';
      if (Azimut1 >90) and (Azimut1 <270) then RichtungS := 'S';
      if Azimut1 >= 270 then RichtungS := 'N';
    end;
    if Berechnung = 9 then
    begin
      Streichen := Azimut1 mod 180;
      if Azimut1 < 90 then RichtungS := 'N';
      if (Azimut1 > 90) and (Azimut1 < 270) then RichtungS := 'S';
      if Azimut1 > 270 then RichtungS := 'N';
    end;
    Azimut1S   := RightS('000'+IntToStr(Azimut1),3);
    StreichenS := RightS('000'+IntToStr(Streichen),3);
    Fallen1S   := RightS('00'+Fallen1S,2);
    ZeileS := SpaceS(5) + Azimut1S+'/'+Fallen1S
              + SpaceS(25)+StreichenS
              +'/'+Fallen1S+' '+RichtungS;
    SpZeile[Anzahl] := StreichenS+','+ Fallen1S+','+RichtungS;
    ListBoxDaten.Items.Add (ZeileS);
    AziFeld[Anzahl] := Azimut1;
    FalFeld[Anzahl] := Fallen1;
    MaskEditFallen.Clear;
    ButtonEBeenden.Enabled := true;
  end;
end;

procedure TForm4.MaskEditStreichenKeyPress(Sender: TObject; var Key: Char);
var
  MaxStrei   : word;
begin
  if Winkel = 1 then MaxStrei := 360 else MaxStrei := 400;
  if Key = chr(13) then
  begin
    StreichenS := MaskEditStreichen.Text;
    LeerLoeschen (StreichenS);
    if StreichenS = '' then exit
    else
    begin
      Streichen := StrToInt (StreichenS);
      if Streichen <= MaxStrei then
      begin
        MaskEditDip.Enabled := true;
        MaskEditDip.SetFocus;
        MaskEditStreichen.Enabled := false;
      end
      else
      begin
        MaskEditStreichen.Clear;
        MaskEditStreichen.SetFocus;
      end;
    end;
  end;
end;

procedure TForm4.MaskEditDipKeyPress(Sender: TObject; var Key: Char);
var
  FallS   : string;
begin
  if key = chr(13) then
  begin
    FallS   := MaskEditDip.Text;
    LeerLoeschen(FallS);
    if FallS = '' then exit;
    Fall := StrToInt(FallS);
    MaxFall := 90;
    if Winkel = 2 then MaxFall := 100;
    if Fall <= MaxFall then
    begin
      inc (Anzahl);
      if Winkel = 2 then Neugrad (Streichen, Fall);
      MaskEditDip.Enabled := false;
      MaskEditRichtung.Enabled := true;
      MaskEditRichtung.SetFocus;
    end
    else
    begin
      MaskEditDip.Clear;
      MaskEditDip.SetFocus;
    end;
  end;
end;

procedure TForm4.MaskEditRichtungKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  NS : string[1];
begin
  NS := UcaseS(MaskEditRichtung.Text);
  if (NS <> 'N') and (NS <> 'S') then
  begin
    MaskEditRichtung.Clear;
    MaskEditRichtung.SetFocus;
  end;
end;

procedure TForm4.MaskEditRichtungKeyPress(Sender: TObject; var Key: Char);
var
  NordSudS : string;
  ZeileS   : string;
  AnzahlS  : string;
  FallS    : string;
  Azi      : integer;
  AzimutC  : word;
  AzimutS  : string;
begin
  if key = chr(13) then
  begin
    ListBoxDaten.Enabled := true;
    NordSudS := UcaseS(MaskEditRichtung.Text);
    Azi := Streichen mod 180;
    if NordSudS = '' then exit;
    if Berechnung = 10 then
    begin
      if NordSudS = 'N' then
      begin
        Azi := Azi - 90;
        if Azi < 0 then Azi := Azi + 360;
      end;
      if NordSudS = 'S' then
      begin
        Azi := Azi + 90;
        if Azi >360 then Azi := Azi - 360;
      end;
    end;
    if Berechnung = 11 then
    begin
      if NordSudS = 'N' then
        if Azi > 90 then Azi := Azi + 180;
      if NordSudS = 'S' then
        if Azi < 90 then Azi := Azi + 180;
    end;
    AzimutC    := Azi mod 360;
    AzimutS    := IntToStr(AzimutC);
    AzimutS    := RightS ('000' + AzimutS, 3);
    StreichenS := RightS ('000' + StreichenS,3);
    FallS   := IntToStr(Fall);
    FallS   := RightS ('00' + FallS, 2);
    ZeileS  := '          '+StreichenS+'/'+FallS+' '+NordSudS
               +'                       '+AzimutS+'/'+FallS;
    AnzahlS := IntToStr (Anzahl);
    AnzahlS := RightS ('     '+AnzahlS,5);
    LabelZahl.Caption := AnzahlS;
    ListBoxDaten.Items.Add (ZeileS);
    MaskEditStreichen.Text    := '   ';
    MaskEditDip.Text          := '  ';
    MaskEditRichtung.Text     := ' ';
    AziFeld[Anzahl]           := AzimutC;
    FalFeld[Anzahl]           := Fall;
    SpZeile[Anzahl] := StreichenS+','+ FallS+','+NordSudS;
    MaskEditDip.Enabled       := false;
    MaskEditStreichen.Enabled := true;
    MaskEditStreichen.SetFocus;
    MaskEditRichtung.Enabled  := false;
    ButtonEBeenden.Enabled    := true;
  end;
end;

procedure TForm4.Hilfe1Click(Sender: TObject);
var
  DateiS      : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\4Berechnungen-man.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\4Calculations-man.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm4.SpeedHilfeClick(Sender: TObject);
begin
  Hilfe1Click(Sender);
end;

procedure TForm4.SpeedDruckenClick(Sender: TObject);
begin
  drucken1Click(Sender);
end;

procedure TForm4.SpeedDatenFClick(Sender: TObject);
begin
  speichernUnterClick(Sender);
end;

procedure TForm4.SpeedErgebnisseFClick(Sender: TObject);
begin
  speichernEUnterClick(Sender);
end;

procedure TForm4.DatenPlottenClick(Sender: TObject);
var
  i : word;
begin
  ZahlGlob := Anzahl;
  if Berechnung < 8 then
  begin
    for i := 1 to ZahlGlob do
    begin
      AziFeld[i] := AziErgFeldP[i];
      FalFeld[i] := FalErgFeldP[i];
    end;
  end;
  WeiterB[4] := true;
  Application.CreateForm(TForm12, Form12);
  Form12.Show;
end;

procedure TForm4.SpeedDatenClick(Sender: TObject);
begin
  DatenPlottenClick(Sender);
end;

procedure TForm4.GrosskreisePlottenClick(Sender: TObject);
var
  i : word;
begin
  ZahlGlob := Anzahl;
  for i := 1 to ZahlGlob do
  begin
    AziFeld[i] := AziErgFeldP[i];
    FalFeld[i] := FalErgFeldP[i];
  end;
  Programm := 4;
  WeiterB[4] := true;
  Application.CreateForm(TForm85, Form85);
  Form85.Show;
end;

procedure TForm4.SpeedGKreiseClick(Sender: TObject);
begin
  GrosskreisePlottenClick(Sender);
end;

procedure TForm4.IsolinienClick(Sender: TObject);
var
  i : word;
begin
  ZahlGlob := Anzahl;
  for i := 1 to ZahlGlob do
  begin
    AziFeld[i] := AziErgFeldP[i];
    FalFeld[i] := FalErgFeldP[i];
  end;
  WeiterB[4] := true;
  Application.CreateForm(TForm23, Form23);
  Form23.Show;
end;

procedure TForm4.SpeedIsoClick(Sender: TObject);
begin
  IsolinienClick(Sender);
end;

procedure TForm4.StatistikClick(Sender: TObject);
var
  i : word;
begin
  ZahlGlob := Anzahl;
  for i := 1 to ZahlGlob do
  begin
    AziFeld[i] := AziErgFeldP[i];
    FalFeld[i] := FalErgFeldP[i];
  end;
  WeiterB[4] := true;
  Application.CreateForm(TForm21, Form21);
  Form21.Show;
end;

procedure TForm4.SpeedStatistikClick(Sender: TObject);
begin
  StatistikClick(Sender);
end;

procedure TForm4.SubmaximaClick(Sender: TObject);
var
  i : word;
begin
  ZahlGlob := Anzahl;
  for i := 1 to ZahlGlob do
  begin
    AziFeld[i] := AziErgFeldP[i];
    FalFeld[i] := FalErgFeldP[i];
  end;
  WeiterB[4] := true;
  Application.CreateForm(TForm25, Form25);
  Form25.Show;
end;

procedure TForm4.SpeedMaximaClick(Sender: TObject);
begin
  SubmaximaClick(Sender);
end;

procedure TForm4.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Berechnungen.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'Calculations.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm4.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm4.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm4.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

procedure TForm4.WinWordClick(Sender: TObject);
begin
  case Berechnung of
    1:  ExtenS := 'PL2';
    2:  ExtenS := 'PL2';
    3:  ExtenS := 'LI2';
    4:  ExtenS := 'LI2';
    5:  ExtenS := 'LI2';
    6:  ExtenS := 'PLI';
    7:  ExtenS := 'PCH';
    8:  ExtenS := 'PLB';
    9:  ExtenS := 'LIB';
    10: ExtenS := 'PLB';
    11: ExtenS := 'LIB';
    12: ExtenS := 'PL2';
  end;
  SaveDialog1.DefaultExt := 'rtf';
  SaveDialog1.Filter     := '(*.rtf)|*.RTF';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    if (Berechnung < 8) or (Berechnung = 12) then
      WinTitel (CurrentFile, CurrentFile, Berechnung, AziFeld1P, AziFeld2P,
                FalFeld1P, FalFeld2P, AziErgFeldP, FalErgFeldP,
                Anzahl, 0);
    if (Berechnung = 8) or (Berechnung = 9) then
      WinStr (CurrentFile, CurrentFile, Berechnung, AziFeld, FalFeld, SpZeile,
              Anzahl, 0);
    if (Berechnung = 10) or (Berechnung = 11) then
      WinAzi (CurrentFile, CurrentFile, Berechnung, SpZeile, AziFeld, FalFeld,
              Anzahl, 0);
  end;
end;

procedure TForm4.SpeedWinWordClick(Sender: TObject);
begin
  WinWordClick(Sender);
end;

end.


