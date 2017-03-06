unit Unit60;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, ExtCtrls, Menus, StdCtrls, Buttons,
  ComCtrls, Liesconf, Texte, Globvar, Shellapi, Mask,
  ehsHelpRouter;

type
  TForm60 = class(TForm)
    MainMenu1: TMainMenu;

    Hilfe: TMenuItem;

    Panel: TPanel;
      LabelStrainAnalyse: TLabel;
      LabelTalbot       : TLabel;

    ButtonWeiter  : TButton;
    ButtonZurueck : TButton;
    ButtonBeenden : TButton;

    StatusBar  : TStatusBar;
    SpeedHilfe : TSpeedButton;

    Image: TImage;
      PanelDateneingabe  : TPanel;
      LabelDateneingabe  : TLabel;
      Labelmanuell       : TLabel;
      LabelWinkel        : TLabel;
      LabelAltgrad       : TLabel;

    Dateneingabe       : TMenuItem;
      manuell          : TMenuItem;
    ausDatei: TMenuItem;

    Winkel1   : TMenuItem;
      Altgrad : TMenuItem;
      Neugrad : TMenuItem;
    Handbuch: TMenuItem;
    LabelDemo: TLabel;
    SpeedHandbuch: TSpeedButton;
    Speedmanuell: TSpeedButton;
    SpeedDatei: TSpeedButton;
    SpeedAltgrad: TSpeedButton;
    SpeedNeugrad: TSpeedButton;
    Literatur: TMenuItem;
    SpeedLiteratur: TSpeedButton;
    LabelEinstellungen: TLabel;
    LabelMax: TLabel;
    MaskEditMax: TMaskEdit;
    Kompass: TMenuItem;
    Clar: TMenuItem;
    Brunton: TMenuItem;
    SpeedClar: TSpeedButton;
    SpeedBrunton: TSpeedButton;
    LabelKompass: TLabel;
    LabelBrunton: TLabel;

    procedure FormShow(Sender: TObject);
    procedure ShowHint (Sender: TObject);
    procedure HilfeClick(Sender: TObject);
    procedure ButtonWeiterClick(Sender: TObject);
    procedure ButtonZurueckClick(Sender: TObject);
    procedure ButtonBeendenClick(Sender: TObject);
    procedure SpeedHilfeClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure manuellClick(Sender: TObject);
    procedure ausDateiClick(Sender: TObject);
    procedure AltgradClick(Sender: TObject);
    procedure NeugradClick(Sender: TObject);
    procedure HandbuchClick(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure SpeedmanuellClick(Sender: TObject);
    procedure SpeedDateiClick(Sender: TObject);
    procedure SpeedAltgradClick(Sender: TObject);
    procedure SpeedNeugradClick(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
    procedure SpeedLiteraturClick(Sender: TObject);
    procedure MaskEditMaxKeyPress(Sender: TObject; var Key: Char);
    procedure ClarClick(Sender: TObject);
    procedure BruntonClick(Sender: TObject);
    procedure SpeedClarClick(Sender: TObject);
    procedure SpeedBruntonClick(Sender: TObject);
  end;

var
  Form60: TForm60;
  Gedrueckt : array[0..4] of boolean;

implementation

uses Unit61, Unit62;
{$R *.DFM}
procedure TForm60.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm60.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm60.FormActivate(Sender: TObject);
begin
  Left   := LeftDiag;
  Top    := TopDiag;
  Width  := WidForm;
  Height := HeiForm;
  LabelDemo.Visible                := false;
  if DemoB then LabelDemo.Visible  := true;
  Form60.Caption             := 'Fabric8: '+Tx(966);   {Talbot-Methode}
  Panel.Hint                 := Hilf(266);
  PanelDateneingabe.Hint     := Hilf(15);
  SpeedHandbuch.Hint         := Hilf(274);
  SpeedManuell.Hint          := Hilf(327);
  SpeedDatei.Hint            := Hilf(328);
  SpeedAltgrad.Hint          := Hilf(334);
  SpeedNeugrad.Hint          := Hilf(335);
  SpeedClar.Hint             := Hilf(471);
  SpeedBrunton.Hint          := Hilf(472);
  SpeedHilfe.Hint            := Hilf(210);
  LabelDatenEingabe.Caption  := Tx(55);
  LabelManuell.Caption       := '         ';
  LabelWinkel.Caption        := Tx(81);
  LabelAltgrad.Caption       := '         ';
  LabelBrunton.Caption       := '         ';
  ButtonWeiter.Hint          := Hilf(267);
  ButtonZurueck.Hint         := Hilf(18);
  ButtonBeenden.Hint         := Hilf(19);
  DatenEingabe.Caption       := Tx(55);
  manuell.Caption            := Tx(56);
  ausDatei.Caption           := Tx(57);
  Winkel1.Caption            := Tx(67);
  Altgrad.Caption            := Tx(68);
  Neugrad.Caption            := Tx(69);
  SpeedHilfe.Hint            := Hilf(210);
  LabelStrainanalyse.Caption := Tx(967);   {Strainanalyse}
  LabelTalbot.Caption        := Tx(968); {mit der Talbot-Methode}
  ButtonWeiter.Caption       := Tx(76);    {&weiter}
  ButtonZurueck.Caption      := Tx(30);    {&zur�ck}
  ButtonBeenden.Caption      := Tx(53);    {&beenden}
  LabelEinstellungen.Caption := Tx(75);   {folgende Einstellungen...}
  Hilfe.Caption              := Tx(162)+' (F1)';   {&Hilfe}
  LabelKompass.Caption       := Tx(1210);
  Buttonweiter.Enabled  := false;
  Gedrueckt[1]          := false;
  Gedrueckt[3]          := false;
  Handbuch.Caption      := Tx(1055)+' (F2)';
  Literatur.Caption     := Tx(1183)+' (F5)';
  SpeedLiteratur.Hint   := Hilf(462);
  LabelMax.Caption      := Tx(981);
  MaskEditMax.EditMask  := '99999;0; ';
  MaskEditMax.Text      := IntToStr(MaxDaten);
  Gefuegetyp            := 1;
  Gedrueckt[2]          := true;
end;

procedure TForm60.ButtonWeiterClick(Sender: TObject);
begin
  case Gefuegetyp of
    1 : ExtenS := 'TLI';
    2 : ExtenS := 'TPL';
  end;
  if EingabeS = 'manuell'    then Form61.Show;
  if EingabeS = 'Festplatte' then Form62.Show;
  if EingabeS = 'DisketteA'  then Form62.Show;
end;

procedure TForm60.ButtonZurueckClick(Sender: TObject);
begin
  Form60.Close;
end;

procedure TForm60.ButtonBeendenClick(Sender: TObject);
begin
  Form60.Close;
  SetCurrentDir(DirectS);
end;

procedure TForm60.manuellClick(Sender: TObject);
begin
  Winkel1.Enabled      := true;
  Neugrad.Enabled      := true;
  Kompass.Enabled      := true;
  SpeedAltgrad.Enabled := true;
  SpeedNeugrad.Enabled := true;
  SpeedClar.Enabled    := true;
  SpeedBrunton.Enabled := true;
  Gedrueckt[1]         := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
  and Gedrueckt[4]
    then ButtonWeiter.Enabled := true;
  LabelManuell.Caption := Tx(167);       {manuell}
  EingabeS             := 'manuell';
  LabelAltgrad.Caption := '';
end;

procedure TForm60.ausDateiClick(Sender: TObject);
begin
  AltgradClick(Sender);
  Neugrad.Enabled := false;
  Kompass.Enabled := false;
  SpeedAltgrad.Enabled := false;
  SpeedNeugrad.Enabled := false;
  Gedrueckt[1]    := true;
  Gedrueckt[4]    := true;
  SpeedClar.Enabled    := falsE;
  SpeedBrunton.Enabled := false;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
  and Gedrueckt[4]
    then Buttonweiter.Enabled := true;
  LabelManuell.Caption := Tx(57); {aus einer Datei}
  EingabeS             := 'Festplatte';
  Winkel1.Enabled      := false;
end;

procedure TForm60.HilfeClick(Sender: TObject);
const
  Anfang = 160;
var
  DateiS      : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\60Talbot.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\60Talbot.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm60.AltgradClick(Sender: TObject);
begin
  Winkel       := 1;
  Gedrueckt[3] := true;
  If Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
  and Gedrueckt[4]
    then Buttonweiter.Enabled := true;
  LabelAltgrad.Caption        := Tx(82);                  {Altgrad}
end;

procedure TForm60.NeugradClick(Sender: TObject);
begin
  Winkel := 2;
  Gedrueckt[3] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
  and Gedrueckt[4]
    then Buttonweiter.Enabled := true;
  LabelAltgrad.Caption        := Tx(84);                  {Altgrad}
end;

procedure TForm60.ClarClick(Sender: TObject);
begin
  KompassS := 'Clar';
  LabelBrunton.Caption := 'Clar';
  Gedrueckt[4] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
  and Gedrueckt[4] then Buttonweiter.Enabled := true;
end;

procedure TForm60.SpeedClarClick(Sender: TObject);
begin
  ClarClick(Sender);
end;

procedure TForm60.BruntonClick(Sender: TObject);
begin
  KompassS := 'Brunton';
  LabelBrunton.Caption := 'Brunton';
  Gedrueckt[4] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
  and Gedrueckt[4] then Buttonweiter.Enabled := true;
end;

procedure TForm60.SpeedBruntonClick(Sender: TObject);
begin
  BruntonClick(Sender);
end;

procedure TForm60.SpeedHilfeClick(Sender: TObject);
begin
  HilfeClick(Sender);
end;

procedure TForm60.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Talbot-Methode.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'Talbot_Method.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm60.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm60.SpeedmanuellClick(Sender: TObject);
begin
  manuellClick(Sender);
  SpeedAltgrad.Enabled := true;
  SpeedNeugrad.Enabled := true;
end;

procedure TForm60.SpeedDateiClick(Sender: TObject);
begin
  ausDateiClick(Sender);
end;

procedure TForm60.SpeedAltgradClick(Sender: TObject);
begin
  AltgradClick(Sender);
end;

procedure TForm60.SpeedNeugradClick(Sender: TObject);
begin
  NeugradClick(Sender);
end;

procedure TForm60.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm60.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

procedure TForm60.MaskEditMaxKeyPress(Sender: TObject; var Key: Char);
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
