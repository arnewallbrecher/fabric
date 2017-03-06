unit Unit9; {Plotten von Daten, Hauptformular}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, ExtCtrls, Menus, StdCtrls, Globvar, Texte,
  ComCtrls, Buttons, Shellapi, Mask, ehsHelpRouter;

type
  TForm9 = class(TForm)
    Panel1        : TPanel;
    LabelPlot     : TLabel;
    Labelinverschiedenen: TLabel;

    Panel3            : TPanel;
    LabelDateneingabe : TLabel;
    Label7            : TLabel;
    LabelGefuegetyp   : TLabel;
    Label9            : TLabel;
    LabelWinkel       : TLabel;
    LabelAltgrad: TLabel;

    Buttonweiter  : TButton;
    Buttonzurueck : TButton;
    Buttonbeenden : TButton;

    MainMenu1: TMainMenu;

    {Dateneingabe}
    DatenEingabe1    : TMenuItem;
    manuell1         : TMenuItem;

    {Gefuegetyp}
    Gefuegetyp1   : TMenuItem;
    Lineare1      : TMenuItem;
    Flaechen1     : TMenuItem;
    UTischAchsen1 : TMenuItem;

    {Winkel}
    Winkel1 : TMenuItem;
    Altgrad1: TMenuItem;
    Neugrad1: TMenuItem;

    Hilfe1: TMenuItem;
    Image1: TImage;

    StatusBar  : TStatusBar;
    SpeedHilfe : TSpeedButton;
    AusExcelDatei: TMenuItem;
    Handbuch: TMenuItem;
    ausDatei: TMenuItem;
    LabelDemo: TLabel;
    SpeedHandbuch: TSpeedButton;
    SpeedManuell: TSpeedButton;
    SpeedDatei: TSpeedButton;
    SpeedFlaechen: TSpeedButton;
    SpeedLineare: TSpeedButton;
    SpeedExcel: TSpeedButton;
    UTischPole1: TMenuItem;
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
    SpeedAltgrad: TSpeedButton;
    SpeedNeugrad: TSpeedButton;
    MaskEditMax: TMaskEdit;
    LabelMax: TLabel;
    Tectronic: TMenuItem;

    procedure FormActivate(Sender: TObject);
    procedure ButtonweiterClick(Sender: TObject);
    procedure ButtonzurueckClick(Sender: TObject);
    procedure ButtonbeendenClick(Sender: TObject);

    {Dateneingabe}
    procedure manuell1Click(Sender: TObject);
    procedure ausDateiClick(Sender: TObject);
    procedure AusExcelDateiClick(Sender: TObject);

    {Gefügetyp}
    procedure Lineare1Click(Sender: TObject);
    procedure Flaechen1Click(Sender: TObject);
    procedure UTischAchsen1Click(Sender: TObject);
    procedure UTischPole1Click(Sender: TObject);

    {Winkel}
    procedure Altgrad1Click(Sender: TObject);

    procedure Hilfe1Click(Sender: TObject);
    procedure ShowHint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    
    procedure SpeedHilfeClick(Sender: TObject);
    procedure Neugrad1Click(Sender: TObject);
    procedure HandbuchClick(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure SpeedManuellClick(Sender: TObject);
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
    procedure TectronicClick(Sender: TObject);
  end;

var
  Form9: TForm9;
  Gedrueckt : array[0..4] of boolean;

implementation
uses Unit10, Unit11, Unit64;
{$R *.DFM}

procedure TForm9.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm9.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm9.FormActivate(Sender: TObject);
begin
  Left   := 115;
  Top    := 80;
  Height := 620;
  Width  := 800;
  LabelDemo.Visible               := false;
  if DemoB then LabelDemo.Visible := true;
  Panel3.Hint                  := Hilf(15) + Hilf(206);
  Buttonweiter.Hint            := Hilf(48);
  Buttonzurueck.Hint           := Hilf(18);
  Buttonbeenden.Hint           := Hilf(19);
  SpeedHilfe.Hint              := Hilf(210);
  SpeedHandbuch.Hint           := Hilf(274);
  SpeedManuell.Hint            := Hilf(327);
  SpeedDatei.Hint              := Hilf(328);
  SpeedAltgrad.Hint            := Hilf(334);
  SpeedNeugrad.Hint            := Hilf(335);
  SpeedLineare.Hint            := Hilf(336);
  SpeedFlaechen.Hint           := Hilf(337);
  SpeedExcel.Hint              := Hilf(344);
  SpeedUTischA.Hint            := Hilf(369);
  SpeedUTischP.Hint            := Hilf(370);
  Form9.Caption                := Tx(454); {Fabric7: Plotten von Daten in ein}          {Fabric7: Rotationen}
  LabelPlot.Caption            := Tx(228); {Plot von Linearen oder Flächenpolen}
  Labelinverschiedenen.Caption := Tx(229); {in verschiedenen Projektionen}
  DatenEingabe1.Caption      := Tx(55);
  manuell1.Caption           := Tx(56);
  ausDatei.Caption           := Tx(57);
  AusExcelDatei.Caption      := Tx(1007);
  Gefuegetyp1.Caption        := Tx(157);
  Lineare1.Caption           := Tx(158);
  Flaechen1.Caption          := Tx(159);
  UTischAchsen1.Caption      := Tx(160);
  UTischPole1.Caption        := Tx(161);
  Winkel1.Caption            := Tx(67);
  Altgrad1.Caption           := Tx(68);
  Neugrad1.Caption           := Tx(69);
  Hilfe1.Caption             := Tx(162)+' (F1)';
  LabelEinstellungen.Caption := Tx(75);   {folgende Einstellungen...}
  Buttonweiter.Caption       := Tx(76);
  Buttonzurueck.Caption      := Tx(30);
  Buttonbeenden.Caption      := Tx(53);
  LabelDatenEingabe.Caption  := Tx(77);
  LabelGefuegetyp.Caption    := Tx(165);
  LabelWinkel.Caption        := Tx(81);
  if Programm = 4 then
  begin
    Form9.Caption         := Tx(231);
    LabelPlot.Caption     := Tx(232);
    Lineare1.Enabled      := false;
    UTischAchsen1.Enabled := false;
    SpeedLineare.Enabled  := false;
  end;
  Buttonweiter.Enabled  := false;
  Gedrueckt[1]          := false;
  Gedrueckt[2]          := false;
  Gedrueckt[3]          := false;
  Gedrueckt[4]          := false;
  Label7.Caption        := '         ';
  Label9.Caption        := '         ';
  LabelAltgrad.Caption  := '         ';
  Handbuch.Caption      := Tx(1055)+' (F2)';
  Literatur.Caption     := Tx(1183)+' (F5)';
  SpeedLiteratur.Hint   := Hilf(462);
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

procedure TForm9.ButtonweiterClick(Sender: TObject);                 {weiter}
begin
  if EingabeS = 'ExcelD' then
    showMessage(Tx(1040)+Chr(13)+Tx(1041)+Chr(13)+Tx(1042)+Chr(13)
                +Tx(1043)+Chr(13)+Tx(1044));
  if EingabeS = 'manuell'    then Form10.Show;
  if EingabeS = 'Festplatte' then Form11.Show;
  if EingabeS = 'ExcelD'     then Form64.Show;
end;

procedure TForm9.ButtonzurueckClick(Sender: TObject);                 {zurück}
begin
  Form9.Close;
end;

procedure TForm9.ButtonbeendenClick(Sender: TObject);
begin
  Form9.Close;
  SetCurrentDir(DirectS);
end;

procedure TForm9.manuell1Click(Sender: TObject);
begin
  Winkel1.Enabled       := true;
  SpeedAltgrad.Enabled  := true;
  SpeedNeugrad.Enabled  := true;
  SpeedUTischA.Enabled  := true;
  SpeedUtischP.Enabled  := true;
  if Programm = 3 then SpeedLineare.Enabled := true;
  if Programm = 4 then SpeedLineare.Enabled := false;
  SpeedFlaechen.Enabled := true;
  Gefuegetyp1.Enabled   := true;
  if Programm <> 4 then UTischAchsen1.Enabled := true;
  UTischPole1.Enabled   := true;
  Neugrad1.Enabled      := true;
  Gedrueckt[1] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
    and Gedrueckt[4] then Buttonweiter.Enabled := true;                {Button1 = weiter}
  Label7.Caption := Tx(167);                          {manuell}
  EingabeS := 'manuell';
  LabelAltgrad.Caption := '';
  Kompass.Enabled      := true;
  SpeedClar.Enabled    := true;
  SpeedBrunton.Enabled := true;
end;

procedure TForm9.ausDateiClick(Sender: TObject);
begin
  LabelAltgrad.Caption  := Tx(82);
  Winkel := 1;
  UTischAchsen1.Enabled := false;
  UTischPole1.Enabled   := false;
  Neugrad1.Enabled      := false;
  SpeedAltgrad.Enabled  := false;
  SpeedNeugrad.Enabled  := false;
  SpeedUTischA.Enabled  := false;
  SpeedUTischP.Enabled  := false;
  if Programm = 4 then
  begin
    Gefuegetyp := 2;
    SpeedLineare.Enabled  := false;
    SpeedFlaechen.Enabled := false;
    Gedrueckt[2]          := true;
  end;
  if Programm = 3 then SpeedLineare.Enabled := true;
  Gefuegetyp1.Enabled   := true;
  LabelBrunton.Caption  := 'Clar';
  Gedrueckt[1]          := true;
  Gedrueckt[3]          := true;
  Gedrueckt[4]          := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
    and Gedrueckt[4] then Buttonweiter.Enabled := true;
  Label7.Caption := Tx(57); {aus einer Datei}
  EingabeS             := 'Festplatte';
  Winkel1.Enabled      := false;
  Kompass.Enabled      := false;
  SpeedClar.Enabled    := false;
  SpeedBrunton.Enabled := false;
end;

procedure TForm9.AusExcelDateiClick(Sender: TObject);
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
  if Programm = 4 then
  begin
    SpeedLineare.Enabled := false;
    Lineare1.Enabled     := false;
  end
  else
  begin
    SpeedLineare.Enabled := true;
    Lineare1.Enabled     := true;
  end;
  SpeedFlaechen.Enabled := true;
  SpeedAltgrad.Enabled  := true;
  SpeedNeugrad.Enabled  := true;
  SpeedUTischA.Enabled  := false;
  SpeedUTischP.Enabled  := false;
  Gedrueckt[1] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
    and Gedrueckt[4] then Buttonweiter.Enabled := true;                {Button1 = weiter}
  Label7.Caption       := 'Excel';                          {manuell}
  EingabeS             := 'ExcelD';
end;

procedure TForm9.Lineare1Click(Sender: TObject);
begin
  Gefuegetyp := 1;
  Gedrueckt[2] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
    and Gedrueckt[4] then Buttonweiter.Enabled := true;
  Label9.Caption := Tx(169);
end;

procedure TForm9.Flaechen1Click(Sender: TObject);
begin
  Gefuegetyp := 2;
  Gedrueckt[2] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
    and Gedrueckt[4] then Buttonweiter.Enabled := true;
  Label9.Caption := Tx(170);
end;

procedure TForm9.UTischAchsen1Click(Sender: TObject);
begin
  Altgrad1Click(Sender);
  Winkel1.Enabled := false;
  Gefuegetyp := 3;
  Gedrueckt[2] := true;
  KompassS             := 'Clar';
  Gedrueckt[4]         := true;
  Kompass.Enabled      := false;
  SpeedAltgrad.Enabled := false;
  SpeedNeugrad.Enabled := false;
  SpeedClar.Enabled    := false;
  SpeedBrunton.Enabled := false;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
    and Gedrueckt[4] then Buttonweiter.Enabled := true;
  Label9.Caption := Tx(171);                                 {U-Tisch-Achsen}
end;

procedure TForm9.SpeedUTischAClick(Sender: TObject);
begin
  UTischAchsen1Click(Sender);
end;

procedure TForm9.UTischPole1Click(Sender: TObject);
begin
  Altgrad1Click(Sender);
  Winkel1.Enabled := false;
  Gefuegetyp := 4;
  Gedrueckt[2] := true;
  KompassS             := 'Clar';
  Gedrueckt[4]         := true;
  Kompass.Enabled      := false;
  SpeedClar.Enabled    := false;
  SpeedBrunton.Enabled := false;   KompassS             := 'Clar';
  Gedrueckt[4]         := true;
  Kompass.Enabled      := false;
  SpeedClar.Enabled    := false;
  SpeedBrunton.Enabled := false;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
    and Gedrueckt[4] then Buttonweiter.Enabled := true;
  Label9.Caption := Tx(172);                                 {U-Tisch-Pole}
end;

procedure TForm9.SpeedUTischPClick(Sender: TObject);
begin
  UTischPole1Click(Sender);
end;

procedure TForm9.Altgrad1Click(Sender: TObject);
begin
  Winkel := 1;
  Gedrueckt[3] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
    and Gedrueckt[4] then Buttonweiter.Enabled := true;
  LabelAltgrad.Caption := Tx(82);                                 {Altgrad}
end;

procedure TForm9.ClarClick(Sender: TObject);
begin
  KompassS := 'Clar';
  Gedrueckt[4] := true;
  LabelBrunton.Caption := 'Clar';
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
    and Gedrueckt[4] then Buttonweiter.Enabled := true;
end;

procedure TForm9.BruntonClick(Sender: TObject);
begin
  KompassS := 'Brunton';
  LabelBrunton.Caption := 'Brunton';
  Gedrueckt[4] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
    and Gedrueckt[4] then Buttonweiter.Enabled := true;
end;

procedure TForm9.Hilfe1Click(Sender: TObject);
var
  DateiS      : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    if Programm = 3 then HelpRouter1.HelpJump(DateiS,'html\Deutsch\plot9f04.htm');
    if Programm = 4 then HelpRouter1.HelpJump(DateiS,'html\Deutsch\plot10kz.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    if Programm = 3 then HelpRouter1.HelpJump(DateiS,'html\English\Plot-Daten-Haupt.htm');
    if Programm = 4 then HelpRouter1.HelpJump(DateiS,'html\English\Grosskreise-Haupt.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm9.SpeedHilfeClick(Sender: TObject);
begin
  Hilfe1Click(Sender);
end;

procedure TForm9.Neugrad1Click(Sender: TObject);
begin
  Winkel := 2;
  Gedrueckt[3] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
    and Gedrueckt[4] then Buttonweiter.Enabled := true;
  LabelAltgrad.Caption := Tx(84);                                 {Altgrad}
end;

procedure TForm9.HandbuchClick(Sender: TObject);
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
end;

procedure TForm9.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm9.SpeedManuellClick(Sender: TObject);
begin
  manuell1Click(Sender);
end;

procedure TForm9.SpeedDateiClick(Sender: TObject);
begin
  ausDateiClick(Sender);
end;

procedure TForm9.SpeedLineareClick(Sender: TObject);
begin
  Lineare1Click(Sender);
end;

procedure TForm9.SpeedFlaechenClick(Sender: TObject);
begin
  Flaechen1Click(Sender);
end;

procedure TForm9.SpeedAltgradClick(Sender: TObject);
begin
  Altgrad1Click(Sender);
end;

procedure TForm9.SpeedNeugradClick(Sender: TObject);
begin
  Neugrad1Click(Sender);
end;

procedure TForm9.SpeedExcelClick(Sender: TObject);
begin
  SpeedLineare.Enabled  := false;
  SpeedFlaechen.Enabled := false;
  Label9.Caption        := '';
  AusExcelDateiClick(Sender);
end;

procedure TForm9.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm9.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

procedure TForm9.SpeedClarClick(Sender: TObject);
begin
  ClarClick(Sender);
end;

procedure TForm9.SpeedBruntonClick(Sender: TObject);
begin
  BruntonClick(Sender);
end;

procedure TForm9.MaskEditMaxKeyPress(Sender: TObject; var Key: Char);
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

procedure TForm9.TectronicClick(Sender: TObject);
begin
  showmessage(Tx(1532));
end;

end.

