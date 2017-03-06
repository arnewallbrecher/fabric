unit Unit73;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, ExtCtrls, Menus, StdCtrls, Globvar, Texte,
  ComCtrls, Buttons, Shellapi, ehsHelpRouter;

type
  TForm73 = class(TForm)
    StatusBar: TStatusBar;
    ButtonZurueck: TButton;
    ButtonBeenden: TButton;
    PanelText: TPanel;
    LabelIsogonen: TLabel;
    ButtonWeiter: TButton;
    Image1: TImage;
    LabelDemo: TLabel;
    MainMenu1: TMainMenu;
    Hilfe: TMenuItem;
    Handbuch: TMenuItem;
    SpeedHilfe: TSpeedButton;
    SpeedHandbuch: TSpeedButton;
    Literatur: TMenuItem;
    SpeedLiteratur: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure ShowHint(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ButtonZurueckClick(Sender: TObject);
    procedure ButtonBeendenClick(Sender: TObject);
    procedure ButtonWeiterClick(Sender: TObject);
    procedure HilfeClick(Sender: TObject);
    procedure HandbuchClick(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure SpeedHilfeClick(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
    procedure SpeedLiteraturClick(Sender: TObject);
  end;

var
  Form73: TForm73;

implementation
uses Unit74;
{$R *.DFM}

procedure TForm73.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm73.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm73.FormActivate(Sender: TObject);
begin
  Left   := 140;
  Top    := 80;
  Width  := 800;
  Height := 620;
  Form73.Caption                  := 'Fabric8: '+Tx(1165);
  LabelDemo.Visible               := false;
  if DemoB then LabelDemo.Visible := true;
  Buttonweiter.Hint               := Hilf(48);
  ButtonZurueck.Hint              := Hilf(18);
  ButtonBeenden.Hint              := Hilf(19);
  Buttonweiter.Caption            := Tx(76);
  ButtonZurueck.Caption           := Tx(30);
  ButtonBeenden.Caption           := Tx(53);
  LabelIsogonen.Caption           := Tx (1599);
//  LabelAutor.Caption              := Tx(74);
  Hilfe.Caption                   := Tx(162)+' (F1)';
  Handbuch.Caption                := Tx(1055)+' (F2)';
  Literatur.Caption               := Tx(1183)+' (F5)';
  SpeedLiteratur.Hint             := Hilf(462);
  SpeedHilfe.Hint                 := Hilf(210);
  SpeedHandbuch.Hint              := Hilf(274);
end;

procedure TForm73.ButtonZurueckClick(Sender: TObject);
begin
  Form73.Close;
end;

procedure TForm73.ButtonBeendenClick(Sender: TObject);
begin
  Form73.Close;
  SetCurrentDir(DirectS);
end;

procedure TForm73.ButtonWeiterClick(Sender: TObject);
begin
  Form74.Show;
end;

procedure TForm73.HilfeClick(Sender: TObject);
var
  DateiS      : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\73Isogonen.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\73Isogons.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm73.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Isogonen.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'Isogons.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm73.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm73.SpeedHilfeClick(Sender: TObject);
begin
  HilfeClick(Sender);
end;

procedure TForm73.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm73.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

end.
