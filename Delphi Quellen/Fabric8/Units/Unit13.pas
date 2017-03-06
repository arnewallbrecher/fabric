unit Unit13; {Kleinkreise, Hauptformular}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, ExtCtrls, StdCtrls, Unit14, Menus, Globvar,
  Texte, ComCtrls, Buttons, Shellapi, ehsHelpRouter;

type
  TForm13 = class(TForm)
    Panel1        : TPanel;
    LabelPlot     : TLabel;
    Labelinverschiedenen: TLabel;

    Panel3      : TPanel;
    LabelWinkel : TLabel;
    LabelAltgrad: TLabel;

    Buttonzurueck : TButton;
    Buttonweiter  : TButton;
    Buttonbeenden : TButton;

    MainMenu1: TMainMenu;

    Winkel1  : TMenuItem;
    Altgrad1 : TMenuItem;
    Neugrad1 : TMenuItem;

    Image1 : TImage;

    Hilfe1 : TMenuItem;
    StatusBar: TStatusBar;
    Panel4: TPanel;
    Handbuch: TMenuItem;
    LabelDemo: TLabel;
    SpeedHilfe: TSpeedButton;
    SpeedHandbuch: TSpeedButton;
    SpeedAltgrad: TSpeedButton;
    SpeedNeugrad: TSpeedButton;
    Literatur: TMenuItem;
    SpeedLiteratur: TSpeedButton;
    LabelEinstellungen: TLabel;
    DEingabe: TMenuItem;
    manuell: TMenuItem;
    ausDatei: TMenuItem;
    LabelEingabe: TLabel;
    Labelmanuell: TLabel;
    SpeedausDatei: TSpeedButton;
    SpeedManuell: TSpeedButton;
    SpeedClar: TSpeedButton;
    SpeedBrunton: TSpeedButton;
    Kompass: TMenuItem;
    ClarKompass: TMenuItem;
    Brunton: TMenuItem;
    LabelKompass: TLabel;
    LabelBrunton: TLabel;

    procedure FormActivate(Sender: TObject);
    procedure ButtonzurueckClick(Sender: TObject);     {zurück}
    procedure ButtonweiterClick(Sender: TObject);
    procedure ButtonbeendenClick(Sender: TObject);

    procedure Altgrad1Click(Sender: TObject);
    procedure Neugrad1Click(Sender: TObject);
    procedure Hilfe1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ShowHint(Sender: TObject);
    procedure SpeedHilfeClick(Sender: TObject);
    procedure HandbuchClick(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure SpeedAltgradClick(Sender: TObject);
    procedure SpeedNeugradClick(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
    procedure SpeedLiteraturClick(Sender: TObject);
    procedure manuellClick(Sender: TObject);
    procedure ausDateiClick(Sender: TObject);
    procedure SpeedausDateiClick(Sender: TObject);
    procedure SpeedManuellClick(Sender: TObject);
    procedure ClarKompassClick(Sender: TObject);
    procedure BruntonClick(Sender: TObject);
    procedure SpeedClarClick(Sender: TObject);
    procedure SpeedBruntonClick(Sender: TObject);
  end;

var
  Form13    : TForm13;
  Gedrueckt : array[0..3] of boolean;

implementation

uses Unit89;
{$R *.DFM}

procedure TForm13.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm13.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm13.FormActivate(Sender: TObject);
begin
  Left   := 140;
  Top    := 80;
  Width  := 800;
  Height := 620;
  LabelDemo.Visible                := false;
  if DemoB then LabelDemo.Visible  := true;
  Panel3.Hint                  := Hilf(66);
  Buttonweiter.Hint            := Hilf(67);
  Buttonzurueck.Hint           := Hilf(18);
  Buttonbeenden.Hint           := Hilf(30);
  SpeedManuell.Hint            := Hilf(327);
  SpeedausDatei.Hint           := Hilf(328);
  SpeedHilfe.Hint              := Hilf(210);
  SpeedHandbuch.Hint           := Hilf(274);
  SpeedAltgrad.Hint            := Hilf(334);
  SpeedNeugrad.Hint            := Hilf(335);
  SpeedClar.Hint               := Hilf(471);
  SpeedBrunton.Hint            := Hilf(472);
  SpeedLiteratur.Hint          := Hilf(462);
  Form13.Caption               := Tx(313);    {Fabric7: Kleinkreise}
  LabelPlot.Caption            := Tx(314);    {Plot von Kleinkreisen}
  Labelinverschiedenen.Caption := Tx(229);  {in verschiedenen Projektionen}
  Winkel1.Caption              := Tx(67);
  Altgrad1.Caption             := Tx(68);
  Neugrad1.Caption             := Tx(69);
  Kompass.Caption              := Tx(1210);
  LabelKompass.Caption         := Tx(1210)+':';
  LabelBrunton.Caption         := '';
  Hilfe1.Caption               := Tx(162)+' (F1)';
  LabelEinstellungen.Caption   := Tx(75);          {folgende Einstellungen..}
  Buttonweiter.Caption         := Tx(76);
  Buttonzurueck.Caption        := Tx(30);
  Buttonbeenden.Caption        := Tx(53);
  LabelWinkel.Caption          := Tx(81);
  Labelmanuell.Caption         := '          ';
  LabelAltgrad.Caption         := '          ';
  Buttonweiter.Enabled         := false;
  Handbuch.Caption             := Tx(1055)+' (F2)';
  Literatur.Caption            := Tx(1183)+' (F5)';
  DEingabe.Caption             := Tx(55);
  manuell.Caption              := Tx(56);
  ausDatei.Caption             := Tx(57);
  LabelEingabe.Caption         := Tx(55);
  ExtenS                       := 'SCI';
end;

procedure TForm13.ButtonweiterClick(Sender: TObject);     {weiter}
begin
  if EingabeS = 'manuell' then Form14.Show;
  if EingabeS = 'Festplatte' then form89.Show;
end;

procedure TForm13.ButtonzurueckClick(Sender: TObject);
begin
  Form13.Close;
end;

procedure TForm13.ButtonbeendenClick(Sender: TObject);
begin
  Form13.Close;
  SetCurrentDir(DirectS);
end;

procedure TForm13.manuellClick(Sender: TObject);
begin
  ButtonWeiter.Enabled  := false;
  Winkel1.Enabled       := true;
  Kompass.Enabled       := true;
  SpeedClar.Enabled     := true;
  SpeedBrunton.Enabled  := true;
  SpeedAltgrad.Enabled  := true;
  SpeedNeugrad.Enabled  := true;
  Gedrueckt[1] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3] then
     Buttonweiter.Enabled := true;
  Labelmanuell.Caption := Tx(167);
  EingabeS := 'manuell';
end;

procedure TForm13.SpeedManuellClick(Sender: TObject);
begin
  manuellClick(Sender);
end;

procedure TForm13.ausDateiClick(Sender: TObject);
begin
  LabelAltgrad.Caption := Tx(82);
  Winkel               := 1;
  Winkel1.Enabled      := false;
  Kompass.Enabled      := false;
  SpeedAltgrad.Enabled := false;
  SpeedNeugrad.Enabled := false;
  SpeedClar.Enabled    := false;
  SpeedBrunton.Enabled := false;
  KompassS             := 'Clar';
  LabelBrunton.Caption := 'Clar';
  Gedrueckt[1]         := true;
  Gedrueckt[2]         := true;
  Gedrueckt[3]         := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3] then
    Buttonweiter.Enabled := true;
  Labelmanuell.Caption := Tx(57);
  EingabeS             := 'Festplatte';
end;

procedure TForm13.SpeedausDateiClick(Sender: TObject);
begin
  ausDateiClick(Sender);
end;

procedure TForm13.Altgrad1Click(Sender: TObject);
begin
  Winkel := 1;
  LabelAltgrad.Caption := Tx(82);
  Gedrueckt[2] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3] then
    Buttonweiter.Enabled := true;
end;

procedure TForm13.SpeedAltgradClick(Sender: TObject);
begin
  Altgrad1Click(Sender);
end;

procedure TForm13.Neugrad1Click(Sender: TObject);
begin
  Winkel               := 2;
  LabelAltgrad.Caption := Tx(84);
  Gedrueckt[2]         := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3] then
    Buttonweiter.Enabled := true;
end;

procedure TForm13.SpeedNeugradClick(Sender: TObject);
begin
  Neugrad1Click(Sender);
end;

procedure TForm13.ClarKompassClick(Sender: TObject);
begin
  KompassS := 'Clar';
  Gedrueckt[3] := true;
  LabelBrunton.Caption := 'Clar';
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3] then
    Buttonweiter.Enabled := true;
end;

procedure TForm13.SpeedClarClick(Sender: TObject);
begin
  ClarKompassClick(Sender);
end;

procedure TForm13.BruntonClick(Sender: TObject);
begin
  KompassS := 'Brunton';
  LabelBrunton.Caption := 'Brunton';
  Gedrueckt[3] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3] then
    Buttonweiter.Enabled := true;
end;

procedure TForm13.SpeedBruntonClick(Sender: TObject);
begin
  BruntonClick(Sender);
end;

procedure TForm13.Hilfe1Click(Sender: TObject);
var
  DateiS : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\13Kleinkreise.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\13SmallCircles.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm13.SpeedHilfeClick(Sender: TObject);
begin
  Hilfe1Click(Sender);
end;

procedure TForm13.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Kleinkreise.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'Small_Circles.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm13.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm13.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm13.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

end.
