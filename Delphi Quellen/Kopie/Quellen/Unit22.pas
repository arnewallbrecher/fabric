Unit Unit22;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, ExtCtrls, StdCtrls, Menus, Globvar, Texte,
  ComCtrls, Buttons, Shellapi, Mask, ehsHelpRouter;

type
  TForm22 = class(TForm)
    Panel1: TPanel;
    LabelDarstellung: TLabel;
    LabelinVielfachen: TLabel;
    Labelundlog: TLabel;
    Labeloderfrei: TLabel;        {Autoren}

    Panel3: TPanel;
    LabelDateneingabe: TLabel;        {Dateneingabe}
    Label8: TLabel;
    LabelGefuegetyp: TLabel;        {Gefügetyp}
    Label10: TLabel;
    LabelWinkel: TLabel;
    LabelAltgrad: TLabel;
    Buttonweiter: TButton;      {weiter}

    MainMenu1: TMainMenu;

    DatenEingabe1     : TMenuItem;
    manuell1          : TMenuItem;
    ausDatei: TMenuItem;
    Gefuegetyp1: TMenuItem;
    Lineare1      : TMenuItem;
    Flaechen1: TMenuItem;
    UTischAchsen1 : TMenuItem;
    UTischPole1   : TMenuItem;

    Winkel1  : TMenuItem;
    Altgrad1 : TMenuItem;
    Neugrad1 : TMenuItem;

    Hilfe1        : TMenuItem;
    Buttonbeenden : TButton;
    Buttonzurueck: TButton;
    Image1: TImage;
    StatusBar: TStatusBar;
    SpeedHilfe: TSpeedButton;
    AusExcel: TMenuItem;
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
    Kompass: TMenuItem;
    Clar: TMenuItem;
    Brunton: TMenuItem;
    LabelKompass: TLabel;
    LabelBrunton: TLabel;
    SpeedClar: TSpeedButton;
    SpeedBrunton: TSpeedButton;
    LabelEinstellungen: TLabel;
    LabelMax: TLabel;
    MaskEditMax: TMaskEdit;

    procedure FormActivate(Sender: TObject);
    procedure manuell1Click(Sender: TObject);
    procedure ausDateiClick(Sender: TObject);
    procedure Lineare1Click(Sender: TObject);
    procedure Flaechen1Click(Sender: TObject);
    procedure UTischAchsen1Click(Sender: TObject);
    procedure UTischPole1Click(Sender: TObject);
    procedure Altgrad1Click(Sender: TObject);
    procedure Neugrad1Click(Sender: TObject);
    procedure ButtonweiterClick(Sender: TObject);
    procedure ButtonbeendenClick(Sender: TObject);
    procedure ButtonzurueckClick(Sender: TObject);
    procedure Hilfe1Click(Sender: TObject);
    procedure ShowHint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedHilfeClick(Sender: TObject);
    procedure AusExcelClick(Sender: TObject);
    procedure HandbuchClick(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure SpeedmanuellClick(Sender: TObject);
    procedure SpeedDateiClick(Sender: TObject);
    procedure SpeedLineareClick(Sender: TObject);
    procedure SpeedFlaechenClick(Sender: TObject);
    procedure SpeedNeugradClick(Sender: TObject);
    procedure SpeedAltgradClick(Sender: TObject);
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
  Form22    : TForm22;
  Gedrueckt : array[0..4] of boolean;

implementation
uses Unit10, Unit11, Unit64;
{$R *.DFM}

procedure TForm22.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm22.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm22.FormActivate(Sender: TObject);
var
  i : byte;
begin
  Left   := 115;
  Top    := 80;
  Width  := 800;
  Height := 620;
  LabelDemo.Visible                := false;
  if DemoB then LabelDemo.Visible  := true;
  Form22.Caption                := Tx(544);  {Fabric8: Darstellung von Richt}
  Panel3.Hint                   := Hilf(15) + Hilf(206);
  SpeedHilfe.Hint               := Hilf(210);
  Buttonweiter.Hint             := Hilf(48);
  Buttonzurueck.Hint            := Hilf(18);
  Buttonbeenden.Hint            := Hilf(30);
  SpeedHandbuch.Hint            := Hilf(274);
  SpeedManuell.Hint             := Hilf(327);
  SpeedDatei.Hint               := Hilf(328);
  SpeedAltgrad.Hint             := Hilf(334);
  SpeedNeugrad.Hint             := Hilf(335);
  SpeedLineare.Hint             := Hilf(336);
  SpeedFlaechen.Hint            := Hilf(337);
  SpeedExcel.Hint               := Hilf(344);
  SpeedUTischA.Hint             := Hilf(369);
  SpeedUTischP.Hint             := Hilf(370);
  DatenEingabe1.Caption         := Tx(504);     {&Daten-Eingabe}
  manuell1.Caption              := Tx(56);
  ausDatei.Caption              := Tx(57);
  AusExcel.Caption              := Tx(1007);
  Gefuegetyp1.Caption           := Tx(157);
  Lineare1.Caption              := Tx(158);
  Flaechen1.Caption             := Tx(159);
  UTischAchsen1.Caption         := Tx(160);
  UTischPole1.Caption           := Tx(161);
  Winkel1.Caption               := Tx(67);
  Altgrad1.Caption              := Tx(68);
  Neugrad1.Caption              := Tx(69);
  Hilfe1.Caption                := Tx(162)+' (F1)';
  LabelDarstellung.Caption      := Tx(545);  {Darstellung von Richtungsdaten}
  LabelinVielfachen.Caption     := Tx(546);  {in Vielfachen der Gleichvertei.}
  Labelundlog.Caption           := Tx(547);  {und logarithmischer Abstufung}
  Labeloderfrei.Caption         := Tx(548);  {oder in freigewählten Abständen}
  LabelEinstellungen.Caption    := Tx(75);   {folgende Einstellungen...}
  Buttonweiter.Caption          := Tx(76);
  Buttonzurueck.Caption         := Tx(30);
  Buttonbeenden.Caption         := Tx(53);
  LabelDatenEingabe.Caption     := Tx(77);
  LabelGefuegetyp.Caption       := Tx(165);
  LabelWinkel.Caption           := Tx(81);
  for i := 1 to 3 do Gedrueckt[i] := false;
  Label8.Caption  := '                 ';              {von der Festplatte}
  Label10.Caption := '                 ';              {Lineare}
  LabelAltgrad.Caption := '';                        {Altgrad}
  Buttonweiter.Enabled := false;
  Handbuch.Caption     := Tx(1055)+' (F2)';
  Literatur.Caption    := Tx(1183)+' (F5)';
  SpeedLiteratur.Hint  := Hilf(462);
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

procedure TForm22.ButtonweiterClick(Sender: TObject);      {weiter}
begin
  if EingabeS = 'ExcelD' then
    showMessage(Tx(1040)+Chr(13)+Tx(1041)+Chr(13)+Tx(1042)
               +Chr(13)+Tx(1043)+Chr(13)+Tx(1044));
  if EingabeS = 'manuell'    then Form10.Show;
  if EingabeS = 'Festplatte' then Form11.Show;
  if EingabeS = 'DisketteA'  then Form11.Show;
  if EingabeS =  Laufw2S     then Form11.Show;
  if EingabeS = 'ExcelD'     then Form64.Show;
end;

procedure TForm22.ButtonzurueckClick(Sender: TObject);
begin
  Form22.Close;
end;

procedure TForm22.ButtonbeendenClick(Sender: TObject);
begin
  Form22.Close;
  SetCurrentDir(DirectS);
end;

procedure TForm22.manuell1Click(Sender: TObject);
begin
  Gefuegetyp1.Enabled   := true;
  SpeedLineare.Enabled  := true;
  SpeedFlaechen.Enabled := true;
  UTischAchsen1.Enabled := true;
  UTischPole1.Enabled   := true;
  SpeedUTischA.Enabled  := true;
  SpeedUTischP.Enabled  := true;
  Winkel1.Enabled       := true;
  Kompass.Enabled       := true;
  SpeedClar.Enabled     := true;
  SpeedBrunton.Enabled  := true;
  Gedrueckt[1] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
    and Gedrueckt[4] then Buttonweiter.Enabled := true;
  Label8.Caption := Tx(167);                          {Label8  = Dateneingabe}
  EingabeS := 'manuell';
end;

procedure TForm22.ausDateiClick(Sender: TObject);
begin
  UTischAchsen1.Enabled := false;
  UTischPole1.Enabled   := false;
  SpeedUTischA.Enabled  := false;
  SpeedUTischP.Enabled  := false;
  Altgrad1Click(Sender);
  Gefuegetyp1.Enabled   := true;
  Winkel1.Enabled       := false;
  SpeedAltgrad.Enabled  := false;
  SpeedNeugrad.Enabled  := false;
  SpeedLineare.Enabled  := true;
  SpeedFlaechen.Enabled := true;
  LabelBrunton.Caption  := 'Clar';
  Gedrueckt[1]          := true;
  Gedrueckt[4]          := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
    and Gedrueckt[4] then Buttonweiter.Enabled := true;
  Label8.Caption := TX(57); {aus einer Datei}
  EingabeS := 'Festplatte';
  Kompass.Enabled       := false;
  SpeedClar.Enabled     := false;
  SpeedBrunton.Enabled  := false;
end;

procedure TForm22.Lineare1Click(Sender: TObject);
begin
  Gefuegetyp := 1;
  Gedrueckt[2] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
  and Gedrueckt[4] then Buttonweiter.Enabled := true;
  Label10.Caption := Tx(359);
end;

procedure TForm22.Flaechen1Click(Sender: TObject);
begin
  Gefuegetyp := 2;
  Gedrueckt[2] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
  and Gedrueckt[4] then Buttonweiter.Enabled := true;
  Label10.Caption := Tx(360);                    {Flächen}
end;

procedure TForm22.UTischAchsen1Click(Sender: TObject);
begin
  Altgrad1Click(Sender);
  Winkel1.Enabled := false;
  SpeedAltgrad.Enabled := false;
  SpeedNeugrad.Enabled := false;
  Gefuegetyp := 3;
  Gedrueckt[2] := true;
  Gedrueckt[4] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
  and Gedrueckt[4] then Buttonweiter.Enabled := true;
  Label10.Caption := Tx(361);
  Kompass.Enabled       := false;
  SpeedClar.Enabled     := false;
  SpeedBrunton.Enabled  := false;                   {U-Tisch-Achsen}
end;

procedure TForm22.UTischPole1Click(Sender: TObject);
begin
  Altgrad1Click(Sender);
  Winkel1.Enabled := false;
  SpeedAltgrad.Enabled := false;
  SpeedNeugrad.Enabled := false;
  Gefuegetyp := 4;
  Gedrueckt[2] := true;
  Gedrueckt[4] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
  and Gedrueckt[4] then Buttonweiter.Enabled := true;
  Label10.Caption := Tx(362);
  Kompass.Enabled       := false;
  SpeedClar.Enabled     := false;
  SpeedBrunton.Enabled  := false;                     {U-Tisch-Pole}
end;

procedure TForm22.SpeedUTischAClick(Sender: TObject);
begin
  UTischAchsen1Click(Sender);
end;

procedure TForm22.SpeedUTischPClick(Sender: TObject);
begin
  UTischPole1Click(Sender);
end;

procedure TForm22.Altgrad1Click(Sender: TObject);
begin
  Winkel := 1;
  Gedrueckt[3] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
    and Gedrueckt[4] then Buttonweiter.Enabled := true;
  LabelAltgrad.Caption := Tx(363);                         {Altgrad}
end;

procedure TForm22.Neugrad1Click(Sender: TObject);
begin
  Winkel := 2;
  Gedrueckt[3] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
    and Gedrueckt[4] then Buttonweiter.Enabled := true;
  LabelAltgrad.Caption := Tx(364);                         {Neugrad}
end;

procedure TForm22.ClarClick(Sender: TObject);
begin
  KompassS := 'Clar';
  Gedrueckt[4] := true;
  LabelBrunton.Caption := 'Clar';
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
    and Gedrueckt[4] then Buttonweiter.Enabled := true;
end;

procedure TForm22.BruntonClick(Sender: TObject);
begin
  KompassS := 'Brunton';
  LabelBrunton.Caption := 'Brunton';
  Gedrueckt[4] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
    and Gedrueckt[4] then Buttonweiter.Enabled := true;
end;

procedure TForm22.SpeedClarClick(Sender: TObject);
begin
  ClarClick(Sender);
end;

procedure TForm22.SpeedBruntonClick(Sender: TObject);
begin
  BruntonClick(Sender);
end;

procedure TForm22.Hilfe1Click(Sender: TObject);
var
  DateiS : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\isol1twv.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\Contours-main.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm22.SpeedHilfeClick(Sender: TObject);
begin
  Hilfe1Click(Sender);
end;

procedure TForm22.AusExcelClick(Sender: TObject);
begin
  Kompass.Enabled       := true;
  SpeedClar.Enabled     := true;
  SpeedBrunton.Enabled  := true;
  Winkel1.Enabled       := true;
  SpeedLineare.Enabled  := true;
  SpeedFlaechen.Enabled := true;
  SpeedAltgrad.Enabled  := true;
  SpeedNeugrad.Enabled  := true;
  UTischAchsen1.Enabled := false;
  UTischPole1.Enabled   := false;
  SpeedUTischA.Enabled  := false;
  SpeedUTischP.Enabled  := false;
  Neugrad1.Enabled      := true;
  Gedrueckt[1] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
    and Gedrueckt[4] then Buttonweiter.Enabled := true;                {Button1 = weiter}
  Label8.Caption        := 'Excel';                   {manuell}
  EingabeS              := 'ExcelD';
  Label10.Caption       := '';
  Gefuegetyp1.Enabled   := true;
end;

procedure TForm22.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Isolinien.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'Contour_lines.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;
procedure TForm22.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm22.SpeedmanuellClick(Sender: TObject);
begin
  manuell1Click(Sender);
  SpeedAltgrad.Enabled  := true;
  SpeedNeugrad.Enabled  := true;
  Gefuegetyp1.Enabled   := true;
  SpeedLineare.Enabled  := true;
  SpeedFlaechen.Enabled := true;
end;

procedure TForm22.SpeedDateiClick(Sender: TObject);
begin
  ausDateiClick(Sender);
  SpeedAltgrad.Enabled  := false;
  SpeedNeugrad.Enabled  := false;
  SpeedLineare.Enabled  := true;
  SpeedFlaechen.Enabled := true;
end;

procedure TForm22.SpeedLineareClick(Sender: TObject);
begin
  Lineare1Click(Sender);
end;

procedure TForm22.SpeedFlaechenClick(Sender: TObject);
begin
  Flaechen1Click(Sender);
end;

procedure TForm22.SpeedNeugradClick(Sender: TObject);
begin
  Neugrad1Click(Sender);
end;

procedure TForm22.SpeedAltgradClick(Sender: TObject);
begin
  Altgrad1Click(Sender);
end;

procedure TForm22.SpeedExcelClick(Sender: TObject);
begin
  AusExcelClick(Sender);
end;

procedure TForm22.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm22.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

procedure TForm22.MaskEditMaxKeyPress(Sender: TObject; var Key: Char);
var
  Datei : TextFile;
  i     : byte;
begin
  if Key = chr(13) then
  begin
    MaxDaten := StrToInt(MaskEditMax.Text);
    KonfigZeileS[84] := 'Maximum number of data     :,'+MaskEditMax.Text;
    assignFile(Datei,DirectS+'\'+'Fabric.ini');
    rewrite (Datei);
    for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
    closefile (Datei);
  end;
end;

end.
