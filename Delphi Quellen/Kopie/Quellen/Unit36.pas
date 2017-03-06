unit unit36;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, ExtCtrls, Menus, Globvar, Texte,
  ComCtrls, Buttons, Shellapi, ehsHelpRouter;

type
  TForm36 = class(TForm)
    Panel1               : TPanel;
    LabelPlotten         : TLabel;
    Labelvonverschiedenen: TLabel;
    LabelLagenkugel      : TLabel;

    Buttonweiter  : TButton;
    Buttonzurueck : TButton;
    Buttonbeenden : TButton;

    Image1    : TImage;
    MainMenu1 : TMainMenu;
    Hilfe1    : TMenuItem;
    StatusBar : TStatusBar;

    Panel2     : TPanel;
    SpeedHilfe : TSpeedButton;
    Handbuch: TMenuItem;
    LabelDemo: TLabel;
    SpeedHandbuch: TSpeedButton;
    Literatur: TMenuItem;
    SpeedLiteratur: TSpeedButton;
    NetzZaehl: TMenuItem;
    Projektionen: TMenuItem;
    Zaehlkreise: TMenuItem;
    SpeedNetze: TSpeedButton;
    SpeedZaehl: TSpeedButton;

    procedure ButtonweiterClick(Sender: TObject);
    procedure ButtonzurueckClick(Sender: TObject);
    procedure ButtonbeendenClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Hilfe1Click(Sender: TObject);

    procedure FormShow(Sender: TObject);
    procedure ShowHint(Sender: TObject);

    procedure SpeedHilfeClick(Sender: TObject);
    procedure HandbuchClick(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
    procedure SpeedLiteraturClick(Sender: TObject);
    procedure ProjektionenClick(Sender: TObject);
    procedure ZaehlkreiseClick(Sender: TObject);
    procedure SpeedNetzeClick(Sender: TObject);
    procedure SpeedZaehlClick(Sender: TObject);
  end;

var
  Form36: TForm36;

implementation
uses Unit37, Unit75;
{$R *.DFM}

procedure TForm36.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm36.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm36.FormActivate(Sender: TObject);
begin
  Left   := 115;
  Top    := 80;
  Height := 620;
  Width  := 800;
  LabelDemo.Visible                := false;
  if DemoB then LabelDemo.Visible  := true;
  Form36.Caption                := Tx(695);   {Fabric7: Projektionen der}
  Buttonweiter.Hint             := Hilf(98);
  Buttonzurueck.Hint            := Hilf(18);
  Buttonbeenden.Hint            := Hilf(30);
  SpeedHilfe.Hint               := Hilf(210);
  SpeedHandbuch.Hint            := Hilf(274);
  SpeedNetze.Hint               := Hilf(465);
  SpeedZaehl.Hint               := Hilf(466);
  NetzZaehl.Caption             := TX(1199);
  Projektionen.Caption          := Tx(1200);
  Zaehlkreise.Caption           := Tx(1201);
  Hilfe1.Caption                := Tx(162)+' (F1)';
  LabelPlotten.Caption          := Tx(696);   {Plotten}
  Labelvonverschiedenen.Caption := Tx(697);   {von verschiedenen}
  LabelLagenkugel.Caption       := Tx(698);   {Lagenkugel-Projektionen}
//  LabelAutor.Caption            := Tx(74);
  Buttonweiter.Caption          := Tx(76);
  Buttonzurueck.Caption         := Tx(30);
  Buttonbeenden.Caption         := Tx(53);
  Handbuch.Caption              := Tx(1055)+' (F2)';
  Literatur.Caption             := Tx(1183)+' (F5)';
  SpeedLiteratur.Hint           := Hilf(462);
  NetzS                         := '';
  ButtonWeiter.Enabled          := false;
end;

procedure TForm36.ButtonweiterClick(Sender: TObject);
begin
  if NetzS = 'Projektionen' then Form37.Show;
  if NetzS = 'zaehlen'       then Form75.Show;
end;

procedure TForm36.ButtonzurueckClick(Sender: TObject);
begin
  Form36.Close;
end;

procedure TForm36.ButtonbeendenClick(Sender: TObject);
begin
  Form36.Close;
  SetCurrentDir(DirectS);
end;

procedure TForm36.Hilfe1Click(Sender: TObject);
var
  DateiS : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\lage3h2k.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\Nets-main.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm36.SpeedHilfeClick(Sender: TObject);
begin
  Hilfe1Click(Sender);
end;

procedure TForm36.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Lagenkugel.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'Projections.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm36.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm36.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm36.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

procedure TForm36.ProjektionenClick(Sender: TObject);
begin
  NetzS                := 'Projektionen';
  ButtonWeiter.Enabled := true;
end;

procedure TForm36.ZaehlkreiseClick(Sender: TObject);
begin
  NetzS                := 'zaehlen';
  ButtonWeiter.Enabled := true;
end;

procedure TForm36.SpeedNetzeClick(Sender: TObject);
begin
  ProjektionenClick(Sender);
end;

procedure TForm36.SpeedZaehlClick(Sender: TObject);
begin
  ZaehlkreiseClick(Sender);
end;

end.
