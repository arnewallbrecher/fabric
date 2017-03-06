unit Unit24;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, ExtCtrls, Menus, StdCtrls, Globvar, Texte,
  ComCtrls, Buttons, Shellapi, Mask, ehsHelpRouter;

type
  TForm24 = class(TForm)
    Panel1: TPanel;
    LabelEinProgramm: TLabel;
    LabelTrennung: TLabel;
    LabelVerteilungen: TLabel;

    Panel3: TPanel;
    LabelDateneingabe: TLabel;
    LabelVonDerFestplatte: TLabel;
    LabelGefuegetyp: TLabel;
    LabelLineare: TLabel;
    LabelWinkel: TLabel;
    LabelAltgrad: TLabel;

    ButtonWeiter: TButton;
    ButtonZurueck: TButton;

    MainMenu1: TMainMenu;

    Dateneingabe1: TMenuItem;
    manuell1: TMenuItem;
    ausDatei: TMenuItem;
    Gefuegetyp1: TMenuItem;
    Lineare1: TMenuItem;
    Flaechen1: TMenuItem;
    UTischAchsen1: TMenuItem;
    UTischpole1: TMenuItem;

    Winkel1: TMenuItem;
    Altgrad1: TMenuItem;
    Neugrad1: TMenuItem;

    Hilfe1: TMenuItem;
    Buttonbeenden: TButton;
    Image1: TImage;
    StatusBar: TStatusBar;
    Panel2: TPanel;
    SpeedHilfe: TSpeedButton;
    ausExcel: TMenuItem;
    Handbuch: TMenuItem;
    LabelDemo: TLabel;
    SpeedHandbuch: TSpeedButton;
    Speedmanuell: TSpeedButton;
    SpeedDatei: TSpeedButton;
    SpeedLineare: TSpeedButton;
    SpeedFlaechen: TSpeedButton;
    SpeedAltgrad: TSpeedButton;
    SpeedNeugrad: TSpeedButton;
    SpeedExcel: TSpeedButton;
    SpeedUTischA: TSpeedButton;
    SpeedUTischP: TSpeedButton;
    Literatur: TMenuItem;
    SpeedLiteratur: TSpeedButton;
    LabelKompass: TLabel;
    LabelBrunton: TLabel;
    Kompass: TMenuItem;
    Clar: TMenuItem;
    Brunton: TMenuItem;
    SpeedClar: TSpeedButton;
    SpeedBrunton: TSpeedButton;
    LabelEinstellungen: TLabel;
    LabelMax: TLabel;
    MaskEditMax: TMaskEdit;
    Label5000: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure manuell1Click(Sender: TObject);
    procedure ausDateiClick(Sender: TObject);
    procedure ausExcelClick(Sender: TObject);
    procedure Lineare1Click(Sender: TObject);
    procedure Flaechen1Click(Sender: TObject);
    procedure UTischAchsen1Click(Sender: TObject);
    procedure UTischpole1Click(Sender: TObject);
    procedure Altgrad1Click(Sender: TObject);
    procedure Neugrad1Click(Sender: TObject);
    procedure Hilfe1Click(Sender: TObject);
    procedure ButtonWeiterClick(Sender: TObject);
    procedure ButtonZurueckClick(Sender: TObject);
    procedure ButtonbeendenClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ShowHint(Sender: TObject);
    procedure SpeedHilfeClick(Sender: TObject);
    procedure HandbuchClick(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure SpeedmanuellClick(Sender: TObject);
    procedure SpeedDateiClick(Sender: TObject);
    procedure SpeedLineareClick(Sender: TObject);
    procedure SpeedFlaechenClick(Sender: TObject);
    procedure SpeedAltgradClick(Sender: TObject);
    procedure SpeedNeugradClick(Sender: TObject);
    procedure SpeedExcelClick(Sender: TObject);
    procedure SpeedUTischAClick(Sender: TObject);
    procedure SpeedUTischPClick(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
    procedure SpeedLiteraturClick(Sender: TObject);
    procedure ClarClick(Sender: TObject);
    procedure BruntonClick(Sender: TObject);
    procedure SpeedClarClick(Sender: TObject);
    procedure SpeedBruntonClick(Sender: TObject);
    procedure MaskEditMaxKeyPress(Sender: TObject; var Key: Char);
  end;

var
  Form24    : TForm24;
  Gedrueckt : array[0..4] of boolean;

implementation
uses Unit10, Unit11, Unit64;
{$R *.DFM}

procedure TForm24.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;


procedure TForm24.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm24.FormActivate(Sender: TObject);
begin
  left   := LeftDiag;
  Top    := TopDiag;
  Height := HeiForm;
  Width  := WidForm;
  LabelDemo.Visible                := false;
  if DemoB then LabelDemo.Visible  := true;
  Form24.Caption             := Tx(576);  {Fabric7: Cluster von Richtungsdat}
  Panel3.Hint                := Hilf(15) + Hilf(206);
  Buttonweiter.Hint          := Hilf(48);
  Buttonzurueck.Hint         := Hilf(18);
  Buttonbeenden.Hint         := Hilf(30);
  SpeedHandbuch.Hint         := Hilf(274);
  SpeedManuell.Hint          := Hilf(327);
  SpeedDatei.Hint            := Hilf(328);
  SpeedAltgrad.Hint          := Hilf(334);
  SpeedNeugrad.Hint          := Hilf(335);
  SpeedLineare.Hint          := Hilf(336);
  SpeedFlaechen.Hint         := Hilf(337);
  SpeedHilfe.Hint            := Hilf(210);
  SpeedExcel.Hint            := Hilf(344);
  SpeedUTischA.Hint          := Hilf(369);
  SpeedUTischP.Hint          := Hilf(370);
  DatenEingabe1.Caption      := Tx(55);
  manuell1.Caption           := Tx(56);
  ausDatei.Caption           := Tx(57);
  Gefuegetyp1.Caption        := Tx(157);
  Lineare1.Caption           := Tx(158);
  Flaechen1.Caption          := Tx(159);
  UTischAchsen1.Caption      := Tx(160);
  UTischPole1.Caption        := Tx(161);
  Winkel1.Caption            := Tx(67);
  Altgrad1.Caption           := Tx(68);
  Neugrad1.Caption           := Tx(69);
  Hilfe1.Caption             := Tx(162)+' (F1)';
//  LabelClodat7.Caption       := Tx(577);  {CLODAT7}
  LabelEinProgramm.Caption   := Tx(578);  {Ein Programm zur signifikanten}
  LabelTrennung.Caption      := Tx(579);  {Trennung von Submaxima}
  LabelVerteilungen.Caption  := Tx(580);  {in Verteilungen von Richtungsdaten}
  LabelEinstellungen.Caption := Tx(75);   {folgende Einstellungen...}
  Buttonweiter.Caption       := Tx(76);
  Buttonzurueck.Caption      := Tx(30);
  Buttonbeenden.Caption      := Tx(53);
  LabelDatenEingabe.Caption  := Tx(77);
  LabelGefuegetyp.Caption    := Tx(165);
  LabelWinkel.Caption        := Tx(81);
  Literatur.Caption          := Tx(1183)+' (F5)';
  SpeedLiteratur.Hint        := Hilf(462);
  LabelVonDerFestplatte.Caption := '        ';
  LabelLineare.Caption          := '        ';
  LabelAltgrad.Caption          := '        ';
  ButtonWeiter.Enabled          := false;
  ausExcel.Caption              := Tx(1007);
  UTischAchsen1.Enabled := false;
  UTischAchsen1.Enabled := false;
  Neugrad1.Enabled := false;
  Gedrueckt[1] := false;
  Gedrueckt[2] := false;
  Gedrueckt[3] := false;
  Handbuch.Caption := Tx(1055)+' (F2)';
  Kompass.Caption       := Tx(1210);
  Clar.Caption          := Tx(1212);
  Brunton.Caption       := Tx(1211);
  SpeedClar.Hint        := Hilf(471);
  SpeedBrunton.Hint     := Hilf(472);
  LabelKompass.Caption  := Tx(1210)+':';
  LabelBrunton.Caption  := '';
  LabelMax.Caption      := Tx(981);
  MaskEditMax.EditMask  := '99999;0; ';
  MaskEditMax.Text      := IntToStr(MaxDaten);
end;

procedure TForm24.ButtonWeiterClick(Sender: TObject);
begin
  if EingabeS = 'ExcelD' then
  showMessage(Tx(1040)+Chr(13)+Tx(1041)+Chr(13)+Tx(1042)+Chr(13)
              +Tx(1043)+Chr(13)+Tx(1044));
  if EingabeS = 'manuell'    then Form10.Show;
  if EingabeS = 'Festplatte' then Form11.Show;
  if EingabeS = 'DisketteA'  then Form11.Show;
  if EingabeS = 'ExcelD'     then Form64.Show;
end;

procedure TForm24.ButtonZurueckClick(Sender: TObject);
begin
  Form24.Close;
end;

procedure TForm24.ButtonbeendenClick(Sender: TObject);
begin
  Form24.Close;
  SetCurrentDir(DirectS);
end;

procedure TForm24.manuell1Click(Sender: TObject);
begin
  SpeedAltgrad.Enabled  := true;
  SpeedNeugrad.Enabled  := true;
  SpeedLineare.Enabled  := true;
  SpeedFlaechen.Enabled := true;
  Gefuegetyp1.Enabled   := true;
  Winkel1.Enabled := true;
  UTischPole1.Enabled   := true;
  UTischAchsen1.Enabled := true;
  SpeedUTischA.Enabled  := true;
  SpeedUTischP.Enabled  := true;
  Neugrad1.Enabled      := true;
  Kompass.Enabled       := true;
  SpeedClar.Enabled     := true;
  SpeedBrunton.Enabled  := true;
  Gedrueckt[1] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
    and Gedrueckt[4] then ButtonWeiter.Enabled := true;
  LabelVonderFestplatte.Caption := Tx(167);                {manuell}
  EingabeS := 'manuell';
end;

procedure TForm24.ausDateiClick(Sender: TObject);
begin
  Altgrad1Click(Sender);
  Winkel1.Enabled := false;
  SpeedAltgrad.Enabled  := false;
  SpeedNeugrad.Enabled  := false;
  SpeedLineare.Enabled  := true;
  SpeedFlaechen.Enabled := true;
  Gefuegetyp1.Enabled   := true;
  UTischAchsen1.Enabled := false;
  UTischPole1.Enabled   := false;
  SpeedUTischA.Enabled  := false;
  SpeedUTischP.Enabled  := false;
  LabelBrunton.Caption  := 'Clar';
  Gedrueckt[1] := true;
  Gedrueckt[4] := true;
  Kompass.Enabled       := false;
  SpeedClar.Enabled     := false;
  SpeedBrunton.Enabled  := false;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
    and Gedrueckt[4] then ButtonWeiter.Enabled := true;
  LabelVonderFestplatte.Caption  := Tx(57); {aus einer datei}
  EingabeS := 'Festplatte';
end;

procedure TForm24.ausExcelClick(Sender: TObject);
begin
  Kompass.Enabled       := true;
  SpeedClar.Enabled     := true;
  SpeedBrunton.Enabled  := true;
  Winkel1.Enabled       := true;
  SpeedLineare.Enabled  := true;
  SpeedFlaechen.Enabled := true;
  SpeedAltgrad.Enabled  := true;
  SpeedNeugrad.Enabled  := true;
  Gefuegetyp1.Enabled   := true;
  UTischAchsen1.Enabled := false;
  UTischPole1.Enabled   := false;
  SpeedUTischA.Enabled  := false;
  SpeedUTischP.Enabled  := false;
  Neugrad1.Enabled      := true;
  Gedrueckt[1]          := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
    and Gedrueckt[4] then Buttonweiter.Enabled := true;                {Button1 = weiter}
  LabelVonderFestplatte.Caption := 'Excel';                          {manuell}
  EingabeS := 'ExcelD';
  LabelLineare.Caption := '';
  LabelBrunton.Caption := 'Clar';
end;

procedure TForm24.Lineare1Click(Sender: TObject);
begin
  Gefuegetyp           := 1;
  Gedrueckt[2]         := true;
  ExtenS               := 'LIN';
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
    and Gedrueckt[4] then ButtonWeiter.Enabled := true;
  LabelLineare.Caption := Tx(169);                          {Lineare}
end;

procedure TForm24.Flaechen1Click(Sender: TObject);
begin
  Gefuegetyp           := 2;
  Gedrueckt[2]         := true;
  ExtenS               := 'PLA';
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
    and Gedrueckt[4] then ButtonWeiter.Enabled := true;
  LabelLineare.Caption := Tx(170);                          {Flächen};
end;

procedure TForm24.UTischAchsen1Click(Sender: TObject);
begin
  Altgrad1Click(Sender);
  Winkel1.Enabled := false;
  Gefuegetyp := 3;
  Gedrueckt[2] := true;
  KompassS             := 'Clar';
  Gedrueckt[4]         := true;
  Kompass.Enabled      := false;
  SpeedClar.Enabled    := false;
  SpeedBrunton.Enabled := false;
  Winkel1.Enabled      := false;
  SpeedAltgrad.Enabled := false;
  SpeedNeugrad.Enabled := false;
  LabelBrunton.Caption := '****';
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
    and Gedrueckt[4] then ButtonWeiter.Enabled := true;
  LabelLineare.Caption := Tx(171);                         {U-Tisch-Achsen}
end;

procedure TForm24.UTischpole1Click(Sender: TObject);
begin
  Altgrad1Click(Sender);
  Winkel1.Enabled := false;
  Gefuegetyp := 4;
  Gedrueckt[2] := true;
  KompassS             := 'Clar';
  Gedrueckt[4]         := true;
  Kompass.Enabled      := false;
  SpeedClar.Enabled    := false;
  SpeedBrunton.Enabled := false;
  Winkel1.Enabled      := false;
  SpeedAltgrad.Enabled := false;
  SpeedNeugrad.Enabled := false;
  LabelBrunton.Caption := '****';
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
    then ButtonWeiter.Enabled := true;
  LabelLineare.Caption := Tx(172);                         {U-Tisch-Pole}
end;

procedure TForm24.SpeedUTischAClick(Sender: TObject);
begin
  UTischAchsen1Click(Sender);
end;

procedure TForm24.SpeedUTischPClick(Sender: TObject);
begin
  UTischPole1Click(Sender);
end;

procedure TForm24.Altgrad1Click(Sender: TObject);
begin
  Winkel := 1;
  Gedrueckt[3] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
    and Gedrueckt[4] then ButtonWeiter.Enabled := true;
  LabelAltgrad.Caption := Tx(339)                          {Altgrad}
end;

procedure TForm24.Neugrad1Click(Sender: TObject);
begin
  Winkel := 2;
  Gedrueckt[3] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
    and Gedrueckt[4] then ButtonWeiter.Enabled := true;
  LabelAltgrad.Caption := Tx(340)                         {Neugrad}
end;

procedure TForm24.ClarClick(Sender: TObject);
begin
  KompassS := 'Clar';
  Gedrueckt[4] := true;
  LabelBrunton.Caption := 'Clar';
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
    and Gedrueckt[4] then Buttonweiter.Enabled := true;
end;

procedure TForm24.BruntonClick(Sender: TObject);
begin
  KompassS := 'Brunton';
  LabelBrunton.Caption := 'Brunton';
  Gedrueckt[4] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
    and Gedrueckt[4] then Buttonweiter.Enabled := true;
end;

procedure TForm24.SpeedClarClick(Sender: TObject);
begin
  ClarClick(Sender);
end;

procedure TForm24.SpeedBruntonClick(Sender: TObject);
begin
  BruntonClick(Sender);
end;

procedure TForm24.Hilfe1Click(Sender: TObject);
var
  DateiS : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\24Clodat.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\24Clodat.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm24.SpeedHilfeClick(Sender: TObject);
begin
  Hilfe1Click(Sender);
end;

procedure TForm24.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Clodat.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'Clodat-E.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm24.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm24.SpeedmanuellClick(Sender: TObject);
begin
  manuell1Click(Sender);
  SpeedAltgrad.Enabled := true;
  SpeedNeugrad.Enabled := true;
end;

procedure TForm24.SpeedDateiClick(Sender: TObject);
begin
  ausDateiClick(Sender);
  SpeedAltgrad.Enabled := false;
  SpeedNeugrad.Enabled := false;
end;

procedure TForm24.SpeedLineareClick(Sender: TObject);
begin
  Lineare1Click(Sender);
end;

procedure TForm24.SpeedFlaechenClick(Sender: TObject);
begin
  Flaechen1Click(Sender);
end;

procedure TForm24.SpeedAltgradClick(Sender: TObject);
begin
  Altgrad1Click(Sender);
end;

procedure TForm24.SpeedNeugradClick(Sender: TObject);
begin
  Neugrad1Click(Sender);
end;

procedure TForm24.SpeedExcelClick(Sender: TObject);
begin
  AusExcelClick(Sender);
end;

procedure TForm24.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm24.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

procedure TForm24.MaskEditMaxKeyPress(Sender: TObject; var Key: Char);
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

end.

