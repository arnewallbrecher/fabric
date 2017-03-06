unit Unit20;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, ExtCtrls, StdCtrls, Menus, Globvar,
  Unit10, Unit11, Unit64, Texte, ComCtrls, Buttons, Shellapi, Mask,
  ehsHelpRouter;

type
  TForm20 = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    LabelBerechnung: TLabel;
    Labelderstatistischen: TLabel;
    Labelvon: TLabel;
    LabelDateneingabe: TLabel;               {Daten-Eingabe}
    Label7: TLabel;
    LabelGefuegetyp: TLabel;
    LabelWinkel: TLabel;
    LabelAltgrad: TLabel;
    LabelUTisch: TLabel;
    Buttonweiter: TButton;
    Buttonzurueck: TButton;             {zurück}
    Buttonbeenden : TButton;

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

    Hilfe1: TMenuItem;
    Image1: TImage;
    StatusBar: TStatusBar;
    Panel4: TPanel;
    SpeedHilfe: TSpeedButton;
    ausExcelDatei: TMenuItem;
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
    SpeedClar: TSpeedButton;
    SpeedBrunton: TSpeedButton;
    LabelKompass: TLabel;
    LabelBrunton: TLabel;
    LabelEinstellungen: TLabel;
    LabelMax: TLabel;
    MaskEditMax: TMaskEdit;

    procedure FormActivate(Sender: TObject);
    procedure ButtonzurueckClick(Sender: TObject);
    procedure ButtonweiterClick(Sender: TObject);
    procedure ButtonbeendenClick(Sender: TObject);

    procedure manuell1Click(Sender: TObject);
    procedure ausDateiClick(Sender: TObject);
    procedure ausExcelDateiClick(Sender: TObject);

    procedure Lineare1Click(Sender: TObject);
    procedure Flaechen1Click(Sender: TObject);
    procedure UTischAchsen1Click(Sender: TObject);
    procedure UTischPole1Click(Sender: TObject);

    procedure Altgrad1Click(Sender: TObject);
    procedure Neugrad1Click(Sender: TObject);

    procedure Hilfe1Click(Sender: TObject);
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
  Form20: TForm20;
  Gedrueckt : array[0..4] of boolean;

implementation
{$R *.DFM}

procedure TForm20.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm20.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm20.FormActivate(Sender: TObject);
begin
  Left   := LeftDiag;
  Top    := TopDiag;
  Width  := WidForm;
  Height := HeiForm;
  LabelDemo.Visible                := false;
  if DemoB then LabelDemo.Visible  := true;
  Form20.Caption                := Tx(503); {Fabric7: statistische Maßzahlen}
  Panel3.Hint                   := Hilf(15);
  Buttonweiter.Hint             := Hilf(75);
  Buttonzurueck.Hint            := Hilf(18);
  Buttonbeenden.Hint            := Hilf(30);
  SpeedHilfe.Hint               := Hilf(210);
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
  Gefuegetyp1.Caption           := Tx(157);
  Lineare1.Caption              := Tx(158);
  Flaechen1.Caption             := Tx(159);
  UTischAchsen1.Caption         := Tx(160);
  UTischPole1.Caption           := Tx(161);
  Winkel1.Caption               := Tx(67);
  Altgrad1.Caption              := Tx(68);
  Neugrad1.Caption              := Tx(69);
  Hilfe1.Caption                := Tx(162)+' (F1)';
  LabelBerechnung.Caption       := Tx(505);   {Berechnung und Plot}
  Labelderstatistischen.Caption := Tx(810);   {der statistischen Parameter}
  Labelvon.Caption              := Tx(506);   {von Richtungsdaten}
//  LabelAutor.Caption            := Tx(74);
  LabelEinstellungen.Caption    := Tx(75);   {folgende Einstellungen...}
  Buttonweiter.Caption          := Tx(76);
  Buttonzurueck.Caption         := Tx(30);
  Buttonbeenden.Caption         := Tx(53);
  LabelDatenEingabe.Caption     := Tx(77);
  LabelGefuegetyp.Caption       := Tx(165);
  LabelWinkel.Caption           := Tx(81);
  Label7.Caption                := '';
  LabelAltgrad.Caption          := '';
  LabelUTisch.Caption           := '';
  Buttonweiter.Enabled          := false;            {weiter}
  Gedrueckt[1] := false;
  Gedrueckt[2] := false;
  Gedrueckt[3] := false;
  manuell      := false;
  Handbuch.Caption      := Tx(1055)+' (F2)';
  Literatur.Caption     := Tx(1183)+' (F5)';
  SpeedLiteratur.Hint   := Hilf(462);
  ausExcelDatei.Caption := Tx(1007);
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

procedure TForm20.ButtonzurueckClick(Sender: TObject);     {zurück}
begin
  Form20.Close;
end;

procedure TForm20.ButtonweiterClick(Sender: TObject);       {weiter}
begin
  if EingabeS = 'ExcelD' then
  showMessage(Tx(1040)+Chr(13)+Tx(1041)+Chr(13)+Tx(1042)+Chr(13)
              +Tx(1043)+Chr(13)+Tx(1044));
  if EingabeS = 'manuell'    then Form10.Show;
  if EingabeS = 'Festplatte' then Form11.Show;
  if EingabeS = 'DisketteA'  then Form11.Show;
  if EingabeS = 'ExcelD'     then Form64.Show;
end;

procedure TForm20.ButtonbeendenClick(Sender: TObject);
begin
  Form20.Close;
  SetCurrentDir(DirectS);
end;

procedure TForm20.manuell1Click(Sender: TObject);
begin
  manuell               := true;
  SpeedAltgrad.Enabled  := true;
  SpeedNeugrad.Enabled  := true;
  SpeedLineare.Enabled  := true;
  SpeedFlaechen.Enabled := true;
  Gefuegetyp1.Enabled   := true;
  Winkel1.Enabled       := true;
  LabelAltgrad.Caption  := '';
  UTischPole1.Enabled   := true;
  UTischAchsen1.Enabled := true;
  SpeedUTischA.Enabled  := true;
  SpeedUTischP.Enabled  := true;
  Kompass.Enabled       := true;
  SpeedClar.Enabled     := true;
  SpeedBrunton.Enabled  := true;
  Gedrueckt[1] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
    and Gedrueckt[4] then Buttonweiter.Enabled := true;
  Label7.Caption := Tx(167);                        {Label7  = Dateneingabe}
  EingabeS := 'manuell';
end;

procedure TForm20.ausDateiClick(Sender: TObject);
begin
  Altgrad1Click(Sender);
  UTischAchsen1.Enabled := false;
  UTischPole1.Enabled   := false;
  SpeedUTischA.Enabled  := false;
  SpeedUTischP.Enabled  := false;
  Winkel1.Enabled       := false;
  Neugrad1.Enabled      := false;
  SpeedAltgrad.Enabled  := false;
  SpeedNeugrad.Enabled  := false;
  SpeedLineare.Enabled  := true;
  SpeedFlaechen.Enabled := true;
  Gefuegetyp1.Enabled   := true;
  Gedrueckt[1] := true;
  Gedrueckt[4] := true;
  LabelBrunton.Caption := 'Clar';
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
    and Gedrueckt[4] then Buttonweiter.Enabled := true;
  Label7.Caption := Tx(57);{aus einer Datei}
  EingabeS             := 'Festplatte';
  Kompass.Enabled      := false;
  SpeedClar.Enabled    := false;
  SpeedBrunton.Enabled := false;
end;

procedure TForm20.ausExcelDateiClick(Sender: TObject);
begin
  Kompass.Enabled       := true;
  SpeedClar.Enabled     := true;
  SpeedBrunton.Enabled  := true;
  Winkel1.Enabled       := true;
  UTischAchsen1.Enabled := false;
  UTischPole1.Enabled   := false;
  SpeedUTischA.Enabled  := false;
  SpeedUTischP.Enabled  := false;
  Neugrad1.Enabled      := true;
  SpeedLineare.Enabled  := true;
  SpeedFlaechen.Enabled := true;
  SpeedAltgrad.Enabled  := true;
  SpeedNeugrad.Enabled  := true;
  Gedrueckt[1]          := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
    and Gedrueckt[4] then Buttonweiter.Enabled := true;                {Button1 = weiter}
  Label7.Caption := 'Excel';                          {manuell}
  EingabeS := 'ExcelD';
  LabelAltgrad.Caption := '';
  Label7.Caption := 'Excel';
  LabelUtisch.Caption := '';                          {manuell}
  EingabeS             := 'ExcelD';
  Gefuegetyp1.Enabled  := true;
end;

procedure TForm20.Lineare1Click(Sender: TObject);
begin
  ExtenS               := 'LIN';
  Gefuegetyp           := 1;
  Gedrueckt[2]         := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
    and Gedrueckt[4] then Buttonweiter.Enabled := true;
  LabelUTisch.Caption := Tx(169);
end;

procedure TForm20.Flaechen1Click(Sender: TObject);
begin
  ExtenS               := 'PLA';
  Gefuegetyp := 2;
  Gedrueckt[2] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
    and Gedrueckt[4] then Buttonweiter.Enabled := true;
  LabelUTisch.Caption := Tx(170);
end;

procedure TForm20.UTischAchsen1Click(Sender: TObject);
begin
  ExtenS := 'LIN';
  Altgrad1Click(Sender);
  Winkel1.Enabled      := false;
  Gefuegetyp           := 3;
  Gedrueckt[2]         := true;
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
    and Gedrueckt[4] then Buttonweiter.Enabled := true;
  LabelUTisch.Caption := Tx(171);
end;

procedure TForm20.SpeedUTischAClick(Sender: TObject);
begin
  UTischAchsen1Click(Sender);
end;

procedure TForm20.UTischPole1Click(Sender: TObject);
begin
  ExtenS := 'PLA';
  Altgrad1Click(Sender);
  Winkel1.Enabled      := false;
  Gefuegetyp           := 4;
  Gedrueckt[2]         := true;
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
    and Gedrueckt[4] then Buttonweiter.Enabled := true;
  LabelUTisch.Caption := Tx(172);
end;

procedure TForm20.SpeedUTischPClick(Sender: TObject);
begin
  UTischPole1Click(Sender);
end;

procedure TForm20.Altgrad1Click(Sender: TObject);
begin
  Winkel := 1;
  Gedrueckt[3] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
    and Gedrueckt[4] then Buttonweiter.Enabled := true;
  LabelAltgrad.Caption := Tx(339);
end;

procedure TForm20.Neugrad1Click(Sender: TObject);
begin
  Winkel := 2;
  Gedrueckt[3] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
    and Gedrueckt[4] then Buttonweiter.Enabled := true;
  LabelAltgrad.Caption := Tx(340);                         {Neugrad}
end;

procedure TForm20.ClarClick(Sender: TObject);
begin
  KompassS := 'Clar';
  Gedrueckt[4] := true;
  LabelBrunton.Caption := 'Clar';
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
    and Gedrueckt[4] then Buttonweiter.Enabled := true;
end;

procedure TForm20.BruntonClick(Sender: TObject);
begin
  KompassS := 'Brunton';
  LabelBrunton.Caption := 'Brunton';
  Gedrueckt[4] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
    and Gedrueckt[4] then Buttonweiter.Enabled := true;
end;

procedure TForm20.SpeedClarClick(Sender: TObject);
begin
  ClarClick(Sender);
end;

procedure TForm20.SpeedBruntonClick(Sender: TObject);
begin
  BruntonClick(Sender);
end;

procedure TForm20.Hilfe1Click(Sender: TObject);
var
  DateiS : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\20Statistik.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\20Statistics.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm20.SpeedHilfeClick(Sender: TObject);
begin
  Hilfe1Click(Sender);
end;

procedure TForm20.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Gefuege_Statistik.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'Fabric_Statistics.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm20.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm20.SpeedmanuellClick(Sender: TObject);
begin
  manuell1Click(Sender);
  SpeedAltgrad.Enabled := true;
  SpeedNeugrad.Enabled := true;
end;

procedure TForm20.SpeedDateiClick(Sender: TObject);
begin
  ausDateiClick(Sender);
  SpeedAltgrad.Enabled := false;
  SpeedNeugrad.Enabled := false;
end;

procedure TForm20.SpeedLineareClick(Sender: TObject);
begin
  Lineare1Click(Sender);
end;

procedure TForm20.SpeedFlaechenClick(Sender: TObject);
begin
  Flaechen1Click(Sender);
end;

procedure TForm20.SpeedAltgradClick(Sender: TObject);
begin
  Altgrad1Click(Sender);
end;

procedure TForm20.SpeedNeugradClick(Sender: TObject);
begin
  Neugrad1Click(Sender);
end;

procedure TForm20.SpeedExcelClick(Sender: TObject);
begin
  ausExcelDateiClick(Sender);
end;

procedure TForm20.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm20.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;
procedure TForm20.MaskEditMaxKeyPress(Sender: TObject; var Key: Char);
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
