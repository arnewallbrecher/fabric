unit Unit58;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, ExtCtrls, Menus, StdCtrls, Buttons,
  ComCtrls, Texte, Globvar, Shellapi, ehsHelpRouter;

type
  TForm58 = class(TForm)
    Panel1: TPanel;
      LabelScherkasten : TLabel;
      LabelSimulation  : TLabel;

    ButtonWeiter  : TButton;
    ButtonZurueck : TButton;
    ButtonBeenden : TButton;

    MainMenu1 : TMainMenu;
      Hilfe1  : TMenuItem;

    SpeedHilfe : TSpeedButton;

    StatusBar : TStatusBar;

    Image1 : TImage;
    Handbuch: TMenuItem;
    LabelDemo: TLabel;
    SpeedHandbuch: TSpeedButton;
    Literatur: TMenuItem;
    SpeedLiteratur: TSpeedButton;

    procedure FormShow(Sender: TObject);
    procedure ShowHint (Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ButtonWeiterClick(Sender: TObject);
    procedure ButtonZurueckClick(Sender: TObject);
    procedure ButtonBeendenClick(Sender: TObject);
    procedure Hilfe1Click(Sender: TObject);
    procedure SpeedHilfeClick(Sender: TObject);
    procedure HandbuchClick(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
    procedure SpeedLiteraturClick(Sender: TObject);
  end;

var
  Form58: TForm58;

implementation

uses Unit59;
{$R *.DFM}
procedure TForm58.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm58.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm58.FormActivate(Sender: TObject);
var
  FreiS : string[6];
begin
  Left   := LeftDiag;
  Top    := TopDiag;
  Width  := WidForm;
  Height := HeiForm;
  LabelDemo.Visible                := false;
  if DemoB then LabelDemo.Visible  := true;
  Form58.Caption           := Tx(942);   {Scherkasten}
  Panel1.Hint              := Hilf(238);
  ButtonWeiter.Hint        := Hilf(239);
  ButtonZurueck.Hint       := Hilf(18);
  ButtonBeenden.Hint       := Hilf(19);
  SpeedHilfe.Hint          := Hilf(210);
  SpeedHandbuch.Hint       := Hilf(274);
  FreiS := '';
  if SpracheS = 'ENGLISH' then FreiS := '     ';
  LabelScherkasten.Caption := Tx(942);   {Scherkasten}
  LabelSimulation.Caption  := FreiS+Tx(943); {Simulation ebener Verformung}
//  LabelAutor.Caption       := Tx(74);
  ButtonWeiter.Caption     := Tx(76);    {&weiter}
  ButtonZurueck.Caption    := Tx(30);    {&zurück}
  ButtonBeenden.Caption    := Tx(53);    {&beenden}
  Hilfe1.Caption           := Tx(162)+' (F1)';   {&Hilfe}
  Handbuch.Caption         := Tx(1055)+' (F2)';
  Literatur.Caption        := Tx(1183)+' (F5)';
  SpeedLiteratur.Hint      := Hilf(462);
end;

procedure TForm58.ButtonWeiterClick(Sender: TObject);
begin
  Form59.Show;
end;

procedure TForm58.ButtonZurueckClick(Sender: TObject);
begin
  Form58.Close;
end;

procedure TForm58.ButtonBeendenClick(Sender: TObject);
begin
  Form58.Close;
  SetCurrentDir(DirectS);
end;

procedure TForm58.Hilfe1Click(Sender: TObject);
var
  DateiS      : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\58Scherkasten.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\58Shearbox.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm58.SpeedHilfeClick(Sender: TObject);
begin
  Hilfe1Click(Sender);
end;

procedure TForm58.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Scherkasten.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'Shear_box.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm58.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm58.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm58.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

end.
