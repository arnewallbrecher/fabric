unit Unit6; {Rotation, Hauptformular}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, ExtCtrls, StdCtrls, Menus, Globvar, Texte,
  ComCtrls, Buttons, Shellapi, Mask, ehsHelpRouter;

type
  TForm6 = class(TForm)
    Panel1        : TPanel;
    LabelRotation : TLabel;
    LabelumAchse  : TLabel;

    Panel2            : TPanel;
    LabelDateneingabe : TLabel;
    Labelmanuell      : TLabel;
    LabelWinkel       : TLabel;
    LabelAltgrad      : TLabel;
    LabelGefuegetyp   : TLabel;
    LabelLineare      : TLabel;


    MainMenu1     : TMainMenu;
    Buttonzurueck : TButton;
    Buttonweiter  : TButton;
    Buttonbeenden : TButton;

    {Dateneingabe}
    Datei1         : TMenuItem;
    manuell1       : TMenuItem;
    ausDatei: TMenuItem;

    {Gefuegetyp}
    Lineare1      : TMenuItem;
    Flaechen1     : TMenuItem;
    UTischAchsen1 : TMenuItem;

    {Winkel}
    Winkel1       : TMenuItem;
    Altgrad1      : TMenuItem;
    Neugrad1      : TMenuItem;

    Hilfe1        : TMenuItem;

    Image1      : TImage;
    Gefuegetyp1 : TMenuItem;
    StatusBar   : TStatusBar;
    SpeedHilfe  : TSpeedButton;
    Handbuch: TMenuItem;
    LabelDemo: TLabel;
    SpeedHandbuch: TSpeedButton;
    SpeedManuell: TSpeedButton;
    SpeedDatei: TSpeedButton;
    SpeedAltgrad: TSpeedButton;
    SpeedNeugrad: TSpeedButton;
    SpeedFlaechen: TSpeedButton;
    SpeedLineare: TSpeedButton;
    UTischPole1: TMenuItem;
    SpeedUTischA: TSpeedButton;
    SpeedUTischP: TSpeedButton;
    Literatur: TMenuItem;
    SpeedLiteratur: TSpeedButton;
    SpeedBrunton: TSpeedButton;
    SpeedClar: TSpeedButton;
    Kompass: TMenuItem;
    Clar: TMenuItem;
    Brunton: TMenuItem;
    LabelEinstellungen: TLabel;
    LabelKompass: TLabel;
    LabelBrunton: TLabel;
    LabelMax: TLabel;
    MaskEditMax: TMaskEdit;
    Datenmenge: TMenuItem;
    EinzelDaten: TMenuItem;
    mehrDaten: TMenuItem;
    SpeedEinzel: TSpeedButton;
    Speedmehr: TSpeedButton;
    LabelMenge: TLabel;
    LabelEinzel: TLabel;
    SpeedExcel: TSpeedButton;
    ausExcel: TMenuItem;

    procedure ButtonzurueckClick(Sender: TObject);             {zurück}
    procedure ButtonweiterClick(Sender: TObject);             {weiter}
    procedure FormActivate(Sender: TObject);
    procedure ButtonbeendenClick(Sender: TObject);

    {Dateneingabe}
    procedure manuell1Click(Sender: TObject);
    procedure ausDateiClick(Sender: TObject);

    {Gefuegetyp}
    procedure Lineare1Click(Sender: TObject);
    procedure Flaechen1Click(Sender: TObject);
    procedure UTischPole1Click(Sender: TObject);

    {Winkel}
    procedure Altgrad1Click(Sender: TObject);
    procedure Neugrad1Click(Sender: TObject);
    procedure Hilfe1Click(Sender: TObject);

    procedure ShowHint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedHilfeClick(Sender: TObject);
    procedure HandbuchClick(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure SpeedManuellClick(Sender: TObject);
    procedure SpeedDateiClick(Sender: TObject);
    procedure SpeedAltgradClick(Sender: TObject);
    procedure SpeedNeugradClick(Sender: TObject);
    procedure SpeedFlaechenClick(Sender: TObject);
    procedure SpeedLineareClick(Sender: TObject);
    procedure UTischAchsen1Click(Sender: TObject);
    procedure SpeedUTischAClick(Sender: TObject);
    procedure SpeedUTischPClick(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
    procedure SpeedLiteraturClick(Sender: TObject);
    procedure ClarClick(Sender: TObject);
    procedure BruntonClick(Sender: TObject);
    procedure SpeedClarClick(Sender: TObject);
    procedure SpeedBruntonClick(Sender: TObject);
    procedure MaskEditMaxKeyPress(Sender: TObject; var Key: Char);
    procedure EinzelDatenClick(Sender: TObject);
    procedure mehrDatenClick(Sender: TObject);
    procedure SpeedEinzelClick(Sender: TObject);
    procedure SpeedmehrClick(Sender: TObject);
    procedure ausExcelClick(Sender: TObject);
    procedure SpeedExcelClick(Sender: TObject);
  end;

var
  Form6: TForm6;
  Gedrueckt : array[0..5] of boolean;

implementation
uses Unit2, Unit7, Unit8, Unit64;
{$R *.DFM}

procedure TForm6.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm6.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm6.FormActivate(Sender: TObject);
var
  i : byte;
begin
  Left   := LeftDiag;
  Top    := TopDiag;
  Height := HeiForm;
  Width  := WidForm;
  LabelDemo.Visible               := false;
  if DemoB then LabelDemo.Visible := true;
  Panel2.Hint                := Hilf(15) + Hilf(206);
  Buttonweiter.Hint          := Hilf(16);
  Buttonzurueck.Hint         := Hilf(18);
  Buttonbeenden.Hint         := Hilf(30);
  SpeedHilfe.Hint            := Hilf(210);
  SpeedHandbuch.Hint         := Hilf(274);
  SpeedManuell.Hint          := Hilf(327);
  SpeedDatei.Hint            := Hilf(328);
  SpeedAltgrad.Hint          := Hilf(334);
  SpeedNeugrad.Hint          := Hilf(335);
  SpeedLineare.Hint          := Hilf(336);
  SpeedFlaechen.Hint         := Hilf(337);
  SpeedUTischA.Hint          := Hilf(369);
  SpeedUTischP.Hint          := Hilf(370);
  SpeedEinzel.Hint           := Hilf(549);
  Speedmehr.Hint             := Hilf(550);
  SpeedExcel.Hint            := Hilf(344);
  Form6.Caption              := Tx(156);             {Fabric7: Rotationen; }
  Datei1.Caption             := Tx(55);              {&Dateneingabe}
  manuell1.Caption           := Tx(56);
  ausDatei.Caption           := Tx(57);
  ausExcel.Caption           := Tx(1007); 
  Gefuegetyp1.Caption        := Tx(157);
  Lineare1.Caption           := Tx(158);
  Flaechen1.Caption          := Tx(159);
  UTischAchsen1.Caption      := Tx(160);
  UTischPole1.Caption        := Tx(161);
  Winkel1.Caption            := Tx(67);
  Altgrad1.Caption           := Tx(68);
  Neugrad1.Caption           := Tx(69);
  Hilfe1.Caption             := Tx(162)+' (F1)';
  LabelRotation.Caption      := Tx(163);
  LabelumAchse.Caption       := Tx(164);
  LabelEinstellungen.Caption := Tx(75);  {folgende Einstellungen sind gültig:}
  Buttonweiter.Caption       := Tx(76);
  Buttonzurueck.Caption      := Tx(30);
  Buttonbeenden.Caption      := Tx(53);
  LabelDatenEingabe.Caption  := Tx(77);
  LabelGefuegetyp.Caption    := Tx(165);
  LabelWinkel.Caption        := Tx(81);
  Buttonweiter.Enabled       := false;                             {weiter}
  for i := 1 to 5 do
    Gedrueckt[i]             := false;
  LabelLineare.Caption       := '';
  Labelmanuell.Caption       := '';
  LabelAltgrad.Caption       := '';
  Handbuch.Caption           := Tx(1055)+' (F2)';
  Literatur.Caption          := Tx(1183)+' (F5)';
  SpeedLiteratur.Hint        := Hilf(462);
  Kompass.Caption            := Tx(1210);
  Clar.Caption               := Tx(1212);
  Brunton.Caption            := Tx(1211);
  SpeedClar.Hint             := Hilf(471);
  SpeedBrunton.Hint          := Hilf(472);
  LabelKompass.Caption       := Tx(1210)+':';
  LabelBrunton.Caption       := '';
  LabelMax.Caption      := Tx(981);
  MaskEditMax.EditMask  := '99999;0; ';
  MaskEditMax.Text      := IntToStr(MaxDaten);
  Datenmenge.Caption    := Tx(1402);
  EinzelDaten.Caption   := Tx(1403);
  mehrDaten.Caption     := Tx(1404);
  LabelMenge.Caption    := Tx(1402)+':';
  LabelEinzel.Caption   := '';
end;

procedure TForm6.ButtonzurueckClick(Sender: TObject);       {zurück}
begin
  Form6.Close;
end;

procedure TForm6.ButtonbeendenClick(Sender: TObject);
begin
  Form6.Close;
  SetCurrentDir(DirectS);
end;

procedure TForm6.ButtonweiterClick(Sender: TObject);       {weiter}
begin
  if EingabeS = 'ExcelD' then
  showMessage(Tx(1040)+Chr(13)+Tx(1041)+Chr(13)+Tx(1042)+Chr(13)
              +Tx(1043)+Chr(13)+Tx(1044));
  if EingabeS = 'manuell'    then Form7.Show;
  if EingabeS = 'Festplatte' then Form8.Show;
  if EingabeS = 'ExcelD'     then Form64.Show;
end;

{Dateneingabe}
procedure TForm6.manuell1Click(Sender: TObject);
begin
  Winkel1.Enabled := true;
  LabelAltgrad.Caption   := '';
  UTischAchsen1.Enabled := true;
  UTischPole1.Enabled   := true;
  SpeedUTischA.Enabled  := true;
  SpeedUTischP.Enabled  := true;
  Neugrad1.Enabled      := true;
  Kompass.Enabled       := true;
  SpeedClar.Enabled     := true;
  SpeedBrunton.Enabled  := true;
  Datenmenge.Enabled    := true;
  SpeedEinzel.Enabled   := true;
  Speedmehr.Enabled     := true;
  Gedrueckt[1]          := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3] and Gedrueckt[4]
  and Gedrueckt[5] then Buttonweiter.Enabled := true;
  Labelmanuell.Caption := Tx(167);                          {manuell}
  EingabeS             := 'manuell';
end;

procedure TForm6.ausDateiClick(Sender: TObject);
begin
  Altgrad1Click(Sender);
  UTischAchsen1.Enabled := false;
  UTischPole1.Enabled   := false;
  SpeedUTischA.Enabled  := false;
  SpeedUTischP.Enabled  := false;
  Winkel1.Enabled       := false;
  Kompass.Enabled       := false;
  SpeedClar.Enabled     := false;
  SpeedBrunton.Enabled  := false;
  KompassS              := 'Clar';
  Datenmenge.Enabled    := false;
  SpeedEinzel.Enabled   := false;
  Speedmehr.Enabled     := false;
  LabelEinzel.Caption   := Tx(1404);
  Gedrueckt[1] := true;
  Gedrueckt[4] := true;
  Gedrueckt[5] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3] and Gedrueckt[4]
  and Gedrueckt[5] then Buttonweiter.Enabled := true;                {Button2 = weiter}
  Labelmanuell.Caption := Tx(57); {aus einer Datei}
  EingabeS := 'Festplatte';
end;

procedure TForm6.ausExcelClick(Sender: TObject);
begin
  Kompass.Enabled       := true;
  SpeedClar.Enabled     := true;
  SpeedBrunton.Enabled  := true;
  LabelBrunton.Caption  := '';
  LabelAltgrad.Caption  := '';
  Winkel1.Enabled       := true;
  UTischAchsen1.Enabled := false;
  UTischPole1.Enabled   := false;
  Neugrad1.Enabled      := true;
  Datenmenge.Enabled    := false;
  SpeedEinzel.Enabled   := false;
  Speedmehr.Enabled     := false;
  SpeedLineare.Enabled  := true;
  SpeedFlaechen.Enabled := true;
  SpeedAltgrad.Enabled  := true;
  SpeedNeugrad.Enabled  := true;
  SpeedUTischA.Enabled  := false;
  SpeedUTischP.Enabled  := false;
  Gedrueckt[1]          := true;
  Gedrueckt[5]          := true;
  MengeDaten            := 'mehr';
  LabelEinzel.Caption   := Tx(1404);
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
  and Gedrueckt[4] and Gedrueckt[5] then Buttonweiter.Enabled := true;                {Button1 = weiter}
  LabelManuell.Caption := 'Excel';       
  EingabeS             := 'ExcelD';
end;

procedure TForm6.SpeedExcelClick(Sender: TObject);
begin
  ausExcelClick(Sender);
end;

{Gefügetyp}
procedure TForm6.Lineare1Click(Sender: TObject);
begin
  Gefuegetyp           := 1;
  if EingabeS = 'manuell' then
  begin
    SpeedAltgrad.Enabled := true;
    SpeedNeugrad.Enabled := true;
    SpeedClar.Enabled    := true;
    SpeedBrunton.Enabled := true;
    Winkel1.Enabled      := true;
    Kompass.Enabled      := true;
  end;
  ExtenS := 'LIN';
  Gedrueckt[2] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3] and Gedrueckt[4]
  and Gedrueckt[5] then Buttonweiter.Enabled := true;
  LabelLineare.Caption := Tx(169);                 {Lineare}
end;

procedure TForm6.Flaechen1Click(Sender: TObject);
begin
  Gefuegetyp           := 2;
  if EingabeS = 'manuell' then
  begin
    Winkel1.Enabled      := true;
    Kompass.Enabled      := true;
    SpeedAltgrad.Enabled := true;
    SpeedNeugrad.Enabled := true;
    SpeedClar.Enabled    := true;
    SpeedBrunton.Enabled := true;
  end;
  Extens := 'PLA';
  Gedrueckt[2]         := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3] and Gedrueckt[4]
  and Gedrueckt[5] then Buttonweiter.Enabled := true;
  LabelLineare.Caption := Tx(170);                   {Flächen}
end;

procedure TForm6.UTischAchsen1Click(Sender: TObject);
begin
  Altgrad1Click(Sender);
  Winkel1.Enabled      := false;
  SpeedAltgrad.Enabled := false;
  SpeedNeugrad.Enabled := false;
  Kompass.Enabled      := false;
  SpeedClar.Enabled    := false;
  SpeedBrunton.Enabled := false;
  KompassS             := 'Clar';
  Gefuegetyp           := 3;
  ExtenS               := 'LIN';
  Gedrueckt[2]         := true;
  Gedrueckt[3]         := true;
  Gedrueckt[4]         := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3] and Gedrueckt[4]
  and Gedrueckt[5] then Buttonweiter.Enabled := true;
  LabelLineare.Caption := Tx(171);
end;

procedure TForm6.UTischPole1Click(Sender: TObject);
begin
  Altgrad1Click(Sender);
  Winkel1.Enabled := false;
  SpeedAltgrad.Enabled := false;
  SpeedNeugrad.Enabled := false;
  Kompass.Enabled      := false;
  SpeedClar.Enabled    := false;
  SpeedBrunton.Enabled := false;
  KompassS             := 'Clar';
  ExtenS               := 'PLA';
  Gefuegetyp := 4;
  Gedrueckt[2] := true;
  Gedrueckt[3] := true;
  Gedrueckt[4] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3] and Gedrueckt[4]
  and Gedrueckt[5] then Buttonweiter.Enabled := true;
  LabelLineare.Caption := Tx(172);
end;

procedure TForm6.SpeedUTischAClick(Sender: TObject);
begin
  UTischAchsen1Click(Sender);
end;

procedure TForm6.SpeedUTischPClick(Sender: TObject);
begin
  UTischPole1Click(Sender);
end;

procedure TForm6.Altgrad1Click(Sender: TObject);
begin
  Winkel := 1;
  Gedrueckt[3] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3] and Gedrueckt[4]
  and Gedrueckt[5] then Buttonweiter.Enabled := true;
  LabelAltgrad.Caption := Tx(82);                              {Altgrad}
end;

procedure TForm6.Neugrad1Click(Sender: TObject);
begin
  Winkel := 2;
  Gedrueckt[3] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3] and Gedrueckt[4]
  and Gedrueckt[5] then Buttonweiter.Enabled := true;
  LabelAltgrad.Caption := Tx(84);                          {Neugrad}
end;

procedure TForm6.ClarClick(Sender: TObject);
begin
  KompassS := 'Clar';
  Gedrueckt[4] := true;
  LabelBrunton.Caption := 'Clar';
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3] and Gedrueckt[4]
  and Gedrueckt[5] then Buttonweiter.Enabled := true;
end;

procedure TForm6.SpeedClarClick(Sender: TObject);
begin
  ClarClick(Sender);
end;

procedure TForm6.BruntonClick(Sender: TObject);
begin
  KompassS := 'Brunton';
  LabelBrunton.Caption := 'Brunton';
  Gedrueckt[4] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3] and Gedrueckt[4]
    and Gedrueckt[5] then Buttonweiter.Enabled := true;
end;

procedure TForm6.EinzelDatenClick(Sender: TObject);
begin
  MengeDaten := 'einzel';
  LabelEinzel.Caption := Tx(1403);
  Gedrueckt[5] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3] and Gedrueckt[4]
  and Gedrueckt[5] then Buttonweiter.Enabled := true;
end;

procedure TForm6.SpeedEinzelClick(Sender: TObject);
begin
  EinzelDatenClick(Sender);
end;

procedure TForm6.mehrDatenClick(Sender: TObject);
begin
  MengeDaten := 'mehr';
  LabelEinzel.Caption := Tx(1404);
  Gedrueckt[5] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3] and Gedrueckt[4]
  and Gedrueckt[5] then Buttonweiter.Enabled := true;
end;

procedure TForm6.SpeedmehrClick(Sender: TObject);
begin
  mehrDatenClick(Sender);
end;

procedure TForm6.SpeedBruntonClick(Sender: TObject);
begin
  BruntonClick(Sender);
end;

procedure TForm6.Hilfe1Click(Sender: TObject);
var
  DateiS      : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\6Rotation.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\6Rotation.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm6.SpeedHilfeClick(Sender: TObject);
begin
  Hilfe1Click(Sender);
end;

procedure TForm6.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Rotation.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'Rotation-E.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm6.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm6.SpeedManuellClick(Sender: TObject);
begin
  manuell1Click(Sender);
  SpeedAltgrad.Enabled := true;
  SpeedNeugrad.Enabled := true;
end;

procedure TForm6.SpeedDateiClick(Sender: TObject);
begin
  ausDateiClick(Sender);
  SpeedAltgrad.Enabled := false;
  SpeedNeugrad.Enabled := false;
end;

procedure TForm6.SpeedAltgradClick(Sender: TObject);
begin
  Altgrad1Click(Sender);
end;

procedure TForm6.SpeedNeugradClick(Sender: TObject);
begin
  Neugrad1Click(Sender);
end;

procedure TForm6.SpeedFlaechenClick(Sender: TObject);
begin
  Flaechen1Click(Sender);
end;

procedure TForm6.SpeedLineareClick(Sender: TObject);
begin
  Lineare1Click(Sender);
end;

procedure TForm6.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm6.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

procedure TForm6.MaskEditMaxKeyPress(Sender: TObject; var Key: Char);
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
