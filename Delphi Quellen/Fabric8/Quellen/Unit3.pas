Unit Unit3; {Berechnungen, Hauptformular}

interface

uses
  Windows, Messages, SysUtils, Classes, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Menus, Texte, Globvar,
  ComCtrls, Buttons, Graphics, Shellapi, ehsHelpRouter,
  Mask;

type
  TForm3 = class(TForm)
    Panel1               : TPanel;
    LabelBerechnung1     : TLabel;
    Labeloder            : TLabel;
    LabelzweierFlaechen  : TLabel;
    LabeloderderNormalen : TLabel;

    Panel2              : TPanel;
    LabelDateneingabe   : TLabel;
    LabelBerechnung     : TLabel;
    LabelWinkel         : TLabel;
    LabelvonFestplatte  : TLabel;
    LabelWinkelzwischen : TLabel;
    LabelinAltgrad      : TLabel;

    Buttonweiter  : TButton;
    Buttonzurueck : TButton;
    Buttonbeenden : TButton;

    MainMenu1: TMainMenu;

    Dateneingabe1     : TMenuItem;
    manuell1          : TMenuItem;
    ausDatei: TMenuItem;

    Berechnung1             : TMenuItem;
    Schnittkantevon2Flchen1 : TMenuItem;
    Winkelzwischen2Flchen1  : TMenuItem;
    Winkelzwischen2Linearen1: TMenuItem;
    Flcheaus2Linearen1      : TMenuItem;
    Normaleauf2Lineare1     : TMenuItem;

    Winkel1    : TMenuItem;
    inAltgrad1 : TMenuItem;
    inNeugrad1 : TMenuItem;

    Hilfe1    : TMenuItem;
    Image1    : TImage;
    StatusBar : TStatusBar;
    SpeedHilfe: TSpeedButton;
    Handbuch: TMenuItem;
    LabelDemo: TLabel;
    SpeedHandbuch: TSpeedButton;
    SpeedDatei: TSpeedButton;
    Speedmanuell: TSpeedButton;
    SpeedSchnittkante: TSpeedButton;
    SpeedWinkelFlaechen: TSpeedButton;
    SpeedWinkelLineare: TSpeedButton;
    SpeedFlaecheAusLinearen: TSpeedButton;
    SpeedNormale: TSpeedButton;
    SpeedAltgrad: TSpeedButton;
    SpeedNeugrad: TSpeedButton;
    Literatur: TMenuItem;
    SpeedLiteratur: TSpeedButton;
    LabelKompass: TLabel;
    LabelBrunton: TLabel;
    LabelEinstellungen: TLabel;
    Kompass: TMenuItem;
    Clar: TMenuItem;
    Brunton: TMenuItem;
    SpeedClar: TSpeedButton;
    SpeedBrunton: TSpeedButton;
    LabelMax: TLabel;
    MaskEditMax: TMaskEdit;
    Pitch: TMenuItem;
    SpeedPitch: TSpeedButton;
    LinearausPitch: TMenuItem;
    SpeedLPitch: TSpeedButton;
    Streichen: TMenuItem;
    Azimut: TMenuItem;
    SpeedStreichen: TSpeedButton;
    SpeedAzimut: TSpeedButton;
    LStreichen: TMenuItem;
    LAzimut: TMenuItem;
    SpeedLStreichen: TSpeedButton;
    SpeedLAzimut: TSpeedButton;
    SpeedSymmetrie: TSpeedButton;
    Symmetrie: TMenuItem;

    procedure FormActivate(Sender: TObject);
    procedure ButtonzurueckClick(Sender: TObject);
    procedure ButtonweiterClick(Sender: TObject);
    procedure ButtonbeendenClick(Sender: TObject);

    {Dateneingabe}
    procedure manuell1Click(Sender: TObject);
    procedure ausDateiClick(Sender: TObject);

    {Berechnungen}
    procedure Schnittkantevon2Flchen1Click(Sender: TObject);
    procedure Winkelzwischen2Flchen1Click(Sender: TObject);
    procedure Winkelzwischen2Linearen1Click(Sender: TObject);
    procedure Flcheaus2Linearen1Click(Sender: TObject);
    procedure Normaleauf2Lineare1Click(Sender: TObject);

    {Winkel}
    procedure inAltgrad1Click(Sender: TObject);
    procedure inNeugrad1Click(Sender: TObject);

    procedure Hilfe1Click(Sender: TObject);
    procedure ShowHint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedHilfeClick(Sender: TObject);
    procedure HandbuchClick(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure SpeedDateiClick(Sender: TObject);
    procedure SpeedmanuellClick(Sender: TObject);
    procedure SpeedSchnittkanteClick(Sender: TObject);
    procedure SpeedWinkelFlaechenClick(Sender: TObject);
    procedure SpeedWinkelLineareClick(Sender: TObject);
    procedure SpeedFlaecheAusLinearenClick(Sender: TObject);
    procedure SpeedNormaleClick(Sender: TObject);
    procedure SpeedAltgradClick(Sender: TObject);
    procedure SpeedNeugradClick(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
    procedure SpeedLiteraturClick(Sender: TObject);
    procedure ClarClick(Sender: TObject);
    procedure BruntonClick(Sender: TObject);
    procedure SpeedClarClick(Sender: TObject);
    procedure SpeedBruntonClick(Sender: TObject);
    procedure MaskEditMaxKeyPress(Sender: TObject; var Key: Char);
    procedure PitchClick(Sender: TObject);
    procedure SpeedPitchClick(Sender: TObject);
    procedure LinearausPitchClick(Sender: TObject);
    procedure SpeedLPitchClick(Sender: TObject);
    procedure StreichenClick(Sender: TObject);
    procedure AzimutClick(Sender: TObject);
    procedure SpeedStreichenClick(Sender: TObject);
    procedure SpeedAzimutClick(Sender: TObject);
    procedure LStreichenClick(Sender: TObject);
    procedure LAzimutClick(Sender: TObject);
    procedure SpeedLStreichenClick(Sender: TObject);
    procedure SpeedLAzimutClick(Sender: TObject);
    procedure SymmetrieClick(Sender: TObject);
    procedure SpeedSymmetrieClick(Sender: TObject);
  end;

var
  Form3     : TForm3;
  Gedrueckt : Array[0..4] of boolean;

implementation
uses Unit4, Unit5;
{$R *.DFM}

procedure TForm3.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm3.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm3.FormActivate(Sender: TObject);
var
  i : byte;
begin
  Left   := LeftDiag;
  Top    := TopDiag;
  Height := HeiForm;
  Width  := WidForm;
  LabelDemo.Visible                := false;
  if DemoB then LabelDemo.Visible  := true;
  Panel2.Hint                      := Hilf(15);
  Buttonweiter.Hint                := Hilf(16);
  Buttonzurueck.Hint               := Hilf(18);
  Buttonbeenden.Hint               := Hilf(30);
  MaskEditMax.Hint                 := Hilf(17);
  SpeedHilfe.Hint                  := Hilf(210);
  SpeedHandbuch.Hint               := Hilf(274);
  SpeedManuell.Hint                := Hilf(327);
  SpeedDatei.Hint                  := Hilf(328);
  SpeedSchnittkante.Hint           := Hilf(329);
  SpeedWinkelFlaechen.Hint         := Hilf(330);
  SpeedWinkelLineare.Hint          := Hilf(331);
  SpeedFlaecheausLinearen.Hint     := Hilf(332);
  SpeedNormale.Hint                := Hilf(333);
  SpeedAltgrad.Hint                := Hilf(334);
  SpeedNeugrad.Hint                := Hilf(335);
  SpeedClar.Hint                   := Hilf(471);
  SpeedBrunton.Hint                := Hilf(472);
  SpeedPitch.Hint                  := Hilf(551);
  SpeedLPitch.Hint                 := Hilf(552);
  SpeedStreichen.Hint              := Hilf(628);
  SpeedAzimut.Hint                 := Hilf(629);
  SpeedLStreichen.Hint             := Hilf(630);
  SpeedLAzimut.Hint                := Hilf(631);
  SpeedSymmetrie.Hint              := Hilf(691);
  Form3.Caption                    := Tx(54);       {Fabric7:..}
  DatenEingabe1.Caption            := Tx(55);       {Dateneingabe}
  manuell1.Caption                 := Tx(56);       {manuell}
  ausDatei.Caption                 := Tx(57);       {aus einer Datei}
  Berechnung1.Caption              := Tx(1705);
  Schnittkantevon2Flchen1.Caption  := Tx(62);
  Winkelzwischen2Flchen1.Caption   := Tx(63);
  Winkelzwischen2Linearen1.Caption := Tx(64);
  Flcheaus2Linearen1.Caption       := Tx(65);
  Normaleauf2Lineare1.Caption      := Tx(66);
  Winkel1.Caption                  := Tx(67);
  inAltgrad1.Caption               := Tx(68);
  inNeugrad1.Caption               := Tx(69);
  Streichen.Caption                := Tx(1475);
  LStreichen.Caption               := Tx(1476);
  Azimut.Caption                   := Tx(1477);
  LAzimut.Caption                  := Tx(1478);
  Symmetrie.Caption                := Tx(1631);
  Hilfe1.Caption                   := Tx(162)+' (F1)';
  LabelBerechnung1.Caption         := Tx(70);
  Labeloder.Caption                := Tx(71);
  LabelzweierFlaechen.Caption      := Tx(72);
  LabeloderderNormalen.Caption     := Tx(73);
  LabelEinstellungen.Caption       := Tx(75);       {folgende Einstellungen..}
  Buttonweiter.Caption             := Tx(76);
  Buttonzurueck.Caption            := Tx(30);
  Buttonbeenden.Caption            := Tx(53);
  LabelDateneingabe.Caption        := Tx(77);       {Dateneingabe:}
  LabelvonFestplatte.Caption       := Tx(78);
  LabelBerechnung.Caption          := Tx(79);
  LabelWinkelzwischen.Caption      := Tx(80);
  LabelWinkel.Caption              := Tx(81);
  LabelinAltgrad.Caption           := Tx(82);
  Handbuch.Caption                 := Tx(1055)+' (F2)';
  Literatur.Caption                := Tx(1183)+' (F5)';
  SpeedLiteratur.Hint              := Hilf(462);
  for i := 1 to 4 do Gedrueckt[i] := false;
  Buttonweiter.Enabled         := false;
  LabelvonFestplatte.Caption   := '';
  LabelWinkelzwischen.Caption  := '';
  LabelinAltgrad.Caption       := '';
  EingabeS                     := '';
  Berechnung                   := 0;
  Winkel                       := 0;
  Kompass.Caption        := Tx(1210);
  Clar.Caption           := Tx(1212);
  Brunton.Caption        := Tx(1211);
  LabelKompass.Caption   := Tx(1210)+':';
  LabelBrunton.Caption   := '';
  LabelMax.Caption       := Tx(981);
  MaskEditMax.EditMask   := '99999;0; ';
  MaskEditMax.Text       := IntToStr(MaxDaten);
  Pitch.Caption          := Tx(1405);
  LinearausPitch.Caption := Tx(1407);
end;

procedure TForm3.MaskEditMaxKeyPress(Sender: TObject; var Key: Char);
var
  Datei : TextFile;
  i     : byte;
begin
  if Key = chr(13) then
  begin
    MaxDaten := StrToInt(MaskEditMax.Text);
    KonfigZeileS[84] := 'Maximum number of data     :,'+MaskEditMax.Text;
    assignFile(Datei,FabricS+'\'+'Fabric.ini');
    rewrite (Datei);
    for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
    closefile (Datei);
  end;
end;

procedure TForm3.ButtonzurueckClick(Sender: TObject);  {zurück}
begin
  Gedrueckt[1] := false;
  Gedrueckt[2] := false;
  Form3.close;
end;

procedure TForm3.ButtonweiterClick(Sender: TObject);  {weiter}
begin
  Gedrueckt[1] := false;
  Gedrueckt[2] := false;
  Gedrueckt[3] := false;
  if EingabeS = 'manuell'    then Form4.Show;
  if EingabeS = 'Festplatte' then Form5.Show;
end;

procedure TForm3.ButtonbeendenClick(Sender: TObject);
begin
  Form3.Close;
  SetCurrentDir(DirectS);
end;

procedure TForm3.manuell1Click(Sender: TObject);  {Dateineingabe manuell}
begin
  if Berechnung < 8 then
  begin
    Kompass.Enabled      := true;
    SpeedClar.Enabled    := true;
    SpeedBrunton.Enabled := true;
    Winkel1.Enabled := true;
  end;
  EingabeS     := 'manuell';
  SpeedAltgrad.Enabled := true;
  SpeedNeugrad.Enabled := true;
  Gedrueckt[1] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
     and Gedrueckt[4] then Buttonweiter.Enabled := true;
  if Gedrueckt[1] then LabelvonFestplatte.Caption := Tx(167);      {manuell}
end;

procedure TForm3.SpeedmanuellClick(Sender: TObject);
begin
  manuell1Click(Sender);
end;

procedure TForm3.ausDateiClick(Sender: TObject);
begin
  Kompass.Enabled      := false;
  SpeedClar.Enabled    := false;
  SpeedBrunton.Enabled := false;
  LabelBrunton.Caption := 'Clar';
  KompassS             := 'Clar';
  LabelBrunton.Caption := 'Clar';
  inAltgrad1Click(Sender);
  SpeedAltgrad.Enabled := false;
  SpeedNeugrad.Enabled := false;
  EingabeS     := 'Festplatte';
  Gedrueckt[1] := true;
  Gedrueckt[4] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
  and Gedrueckt[4] then Buttonweiter.Enabled := true;
  LabelvonFestplatte.Caption := Tx(57); {aus einer Datei}
  Winkel1.Enabled := false;
end;

procedure TForm3.SpeedDateiClick(Sender: TObject);
begin
  ausDateiClick(Sender);
end;

procedure TForm3.Schnittkantevon2Flchen1Click(Sender: TObject);
begin
  Berechnung   := 1;
  Gedrueckt[2] := true;
  Gefuegetyp   := 2;
  ExtenS       := 'PL2';
  if EingabeS = 'manuell' then
  begin
    Kompass.Enabled      := true;
    SpeedClar.Enabled    := true;
    SpeedBrunton.Enabled := true;
  end;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
  and Gedrueckt[4] then Buttonweiter.Enabled := true;
  LabelWinkelzwischen.Caption := Tx(821);         {Schnittkante von 2 Flächen}
end;

procedure TForm3.SpeedSchnittkanteClick(Sender: TObject);
begin
  SchnittkanteVon2Flchen1Click(Sender);
end;

procedure TForm3.Winkelzwischen2Flchen1Click(Sender: TObject);
begin
  Berechnung   := 2;
  Gefuegetyp   := 2;
  Gedrueckt[2] := true;
  ExtenS       := 'PL2';
  if EingabeS = 'manuell' then
  begin
    Kompass.Enabled      := true;
    SpeedClar.Enabled    := true;
    SpeedBrunton.Enabled := true;
  end;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
  and Gedrueckt[4]then Buttonweiter.Enabled := true;
  LabelWinkelzwischen.Caption := Tx(827);        {Winkel zwischen 2 Flächen}
end;

procedure TForm3.SpeedWinkelFlaechenClick(Sender: TObject);
begin
  WinkelZwischen2Flchen1Click(Sender);
end;

procedure TForm3.Winkelzwischen2Linearen1Click(Sender: TObject);
begin
  Berechnung   := 3;
  Gefuegetyp   := 1;
  Gedrueckt[2] := true;
  ExtenS       := 'LI2';
  if EingabeS = 'manuell' then
  begin
    Kompass.Enabled      := true;
    SpeedClar.Enabled    := true;
    SpeedBrunton.Enabled := true;
  end;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
  and Gedrueckt[4]then Buttonweiter.Enabled := true;
  LabelWinkelzwischen.Caption := Tx(822);        {Winkel zwischen 2 Linearen}
end;

procedure TForm3.SpeedWinkelLineareClick(Sender: TObject);
begin
  WinkelZwischen2Linearen1Click(Sender);
end;

procedure TForm3.Flcheaus2Linearen1Click(Sender: TObject);
begin
  Berechnung   := 4;
  Gedrueckt[2] := true;
  Gefuegetyp   := 1;
  ExtenS       := 'LI2';
  if EingabeS = 'manuell' then
  begin
    Kompass.Enabled      := true;
    SpeedClar.Enabled    := true;
    SpeedBrunton.Enabled := true;
  end;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
  and Gedrueckt[4]then Buttonweiter.Enabled := true;
  LabelWinkelzwischen.Caption := Tx(823);         {Fläche aus 2 Linearen}
end;

procedure TForm3.SpeedFlaecheAusLinearenClick(Sender: TObject);
begin
  FlcheAus2Linearen1Click(Sender);
end;

procedure TForm3.Normaleauf2Lineare1Click(Sender: TObject);
begin
  Berechnung   := 5;
  Gefuegetyp   := 1;
  Gedrueckt[2] := true;
  ExtenS       := 'LI2';
  if EingabeS = 'manuell' then
  begin
    Kompass.Enabled      := true;
    SpeedClar.Enabled    := true;
    SpeedBrunton.Enabled := true;
  end;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
  and Gedrueckt[4]then Buttonweiter.Enabled := true;
  LabelWinkelzwischen.Caption := Tx(824);  {Symmetrie-Ebene}
end;

procedure TForm3.SpeedNormaleClick(Sender: TObject);
begin
  NormaleAuf2Lineare1Click(Sender);
end;

procedure TForm3.SymmetrieClick(Sender: TObject);
begin
  Berechnung   := 12;
  Gefuegetyp   := 2;
  Gedrueckt[2] := true;
  ExtenS       := 'PL2';
  if (EingabeS = 'manuell') or (EingabeS = '') then
  begin
    Kompass.Enabled      := true;
    SpeedClar.Enabled    := true;
    SpeedBrunton.Enabled := true;
  end;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
  and Gedrueckt[4]then Buttonweiter.Enabled := true;
  LabelWinkelzwischen.Caption := Tx(1631); //Symmetrie-Ebene
end;

procedure TForm3.SpeedSymmetrieClick(Sender: TObject);
begin
  SymmetrieClick(Sender);
end;

procedure TForm3.PitchClick(Sender: TObject);
begin  Berechnung  := 6;
  Gefuegetyp  := 1;
  Gedrueckt[2] := true;
  if EingabeS = 'manuell' then
  begin
    Kompass.Enabled      := true;
    SpeedClar.Enabled    := true;
    SpeedBrunton.Enabled := true;
  end;
  LabelWinkelzwischen.Caption := TX(1405);
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
  and Gedrueckt[4]then Buttonweiter.Enabled := true;
end;

procedure TForm3.SpeedPitchClick(Sender: TObject);
begin
  PitchClick(Sender);
end;

procedure TForm3.LinearausPitchClick(Sender: TObject);
begin
  Berechnung   := 7;
  Gefuegetyp   := 1;
  Gedrueckt[2] := true;
  if EingabeS = 'manuell' then
  begin
    Kompass.Enabled      := true;
    SpeedClar.Enabled    := true;
    SpeedBrunton.Enabled := true;
  end;
  LabelWinkelzwischen.Caption := Tx(1407);
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
  and Gedrueckt[4]then Buttonweiter.Enabled := true;
end;

procedure TForm3.SpeedLPitchClick(Sender: TObject);
begin
  LinearausPitchClick(Sender);
end;

procedure TForm3.StreichenClick(Sender: TObject);
begin
  Berechnung           := 8;
  Gefuegetyp           := 2;
  KompassS             := 'Clar';
  Kompass.Enabled      := false;
  SpeedBrunton.Enabled := false;
  SpeedClar.Enabled    := false;
  LabelWinkelzwischen.Caption := Tx(1467);
  LabelBrunton.Caption        := 'Clar';
  Gedrueckt[2] := true;
  Gedrueckt[4] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
  and Gedrueckt[4]then Buttonweiter.Enabled := true;
end;

procedure TForm3.SpeedStreichenClick(Sender: TObject);
begin
  StreichenClick(Sender);
end;

procedure TForm3.LStreichenClick(Sender: TObject);
begin
  Berechnung           := 9;
  Gefuegetyp           := 1;
  KompassS             := 'Clar';
  Kompass.Enabled      := false;
  SpeedBrunton.Enabled := false;
  SpeedClar.Enabled    := false;
  LabelWinkelzwischen.Caption := Tx(1467);
  LabelBrunton.Caption        := 'Clar';
  Gedrueckt[2] := true;
  Gedrueckt[4] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
  and Gedrueckt[4]then Buttonweiter.Enabled := true;
end;

procedure TForm3.SpeedLStreichenClick(Sender: TObject);
begin
  LStreichenClick(Sender);
end;

procedure TForm3.AzimutClick(Sender: TObject);
begin
  Berechnung           := 10;
  Gefuegetyp           := 2;
  KompassS             := 'Brunton';
  Kompass.Enabled      := false;
  SpeedClar.Enabled    := false;
  SpeedBrunton.Enabled := false;
  Gedrueckt[2]         := true;
  Gedrueckt[4]         := true;
  LabelWinkelzwischen.Caption := Tx(1474);
  LabelBrunton.Caption        := 'Brunton';
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
  and Gedrueckt[4]then ButtonWeiter.Enabled := true;
end;

procedure TForm3.SpeedAzimutClick(Sender: TObject);
begin
  AzimutClick(Sender);
end;

procedure TForm3.LAzimutClick(Sender: TObject);
begin
  Berechnung           := 11;
  Gefuegetyp           := 1;
  KompassS             := 'Brunton';
  Kompass.Enabled      := false;
  SpeedClar.Enabled    := false;
  SpeedBrunton.Enabled := false;
  Gedrueckt[2]         := true;
  Gedrueckt[4]         := true;
  LabelWinkelzwischen.Caption := Tx(1467);
  LabelBrunton.Caption        := 'Brunton';
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
  and Gedrueckt[4]then ButtonWeiter.Enabled := true;
end;

procedure TForm3.SpeedLAzimutClick(Sender: TObject);
begin
  LAzimutClick(Sender);
end;

procedure TForm3.inAltgrad1Click(Sender: TObject);
begin
  Winkel       := 1;
  Gedrueckt[3] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
  and Gedrueckt[4] then Buttonweiter.Enabled := true;
  LabelInAltgrad.Caption := Tx(82);              {in Altgrad}
end;

procedure TForm3.SpeedAltgradClick(Sender: TObject);
begin
  inAltgrad1Click(Sender);
end;

procedure TForm3.inNeugrad1Click(Sender: TObject);
begin
  Winkel       := 2;
  Gedrueckt[3] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
  and Gedrueckt[4] then Buttonweiter.Enabled := true;
  LabelinAltgrad.Caption := Tx(84);              {in Neugrad}
end;

procedure TForm3.SpeedNeugradClick(Sender: TObject);
begin
  inNeugrad1Click(Sender);
end;

procedure TForm3.ClarClick(Sender: TObject);
begin
  KompassS := 'Clar';
  Gedrueckt[4] := true;
  LabelBrunton.Caption := 'Clar';
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
  and Gedrueckt[4] then Buttonweiter.Enabled := true;
end;

procedure TForm3.SpeedClarClick(Sender: TObject);
begin
  ClarClick(Sender);
end;

procedure TForm3.BruntonClick(Sender: TObject);
begin
  KompassS := 'Brunton';
  LabelBrunton.Caption := 'Brunton';
  Gedrueckt[4] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
  and Gedrueckt[4] then Buttonweiter.Enabled := true;
end;

procedure TForm3.SpeedBruntonClick(Sender: TObject);
begin
  BruntonClick(Sender);
end;

procedure TForm3.Hilfe1Click(Sender: TObject);
var
  DateiS : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\3Berechnungen.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\3Calculations.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm3.SpeedHilfeClick(Sender: TObject);
begin
  Hilfe1Click(Sender);
end;

procedure TForm3.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Berechnungen.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'Calculations.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm3.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm3.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm3.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

end.
