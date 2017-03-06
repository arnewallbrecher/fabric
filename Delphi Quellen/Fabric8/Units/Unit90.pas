unit Unit90;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Globvar, Texte, Menus, ShellApi, ComCtrls, Buttons,
  ehsHelpRouter;

type
  TForm90 = class(TForm)
    Panel1: TPanel;
    ImageLogo: TImage;
    LabelDemo: TLabel;
    LabelMohr: TLabel;
    LabelMohr2: TLabel;
    MainMenu1: TMainMenu;
    Kreis: TMenuItem;
    Spannung: TMenuItem;
    Deformation: TMenuItem;
    Hilfe: TMenuItem;
    Handbuch: TMenuItem;
    Literatur: TMenuItem;
    PanelEinstellung: TPanel;
    LabelEinst: TLabel;
    LabelSpannung: TLabel;
    ButtonWeiter: TButton;
    ButtonZuruck: TButton;
    ButtonEnde: TButton;
    StatusBar: TStatusBar;
    PanelSpeed: TPanel;
    SpeedSpannung: TSpeedButton;
    SpeedDeformation: TSpeedButton;
    SpeedHilfe: TSpeedButton;
    SpeedHandbuch: TSpeedButton;
    SpeedLiteratur: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure ShowHint (Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure HilfeClick(Sender: TObject);
    procedure HandbuchClick(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
    procedure SpannungClick(Sender: TObject);
    procedure DeformationClick(Sender: TObject);
    procedure ButtonZuruckClick(Sender: TObject);
    procedure ButtonEndeClick(Sender: TObject);
    procedure ButtonWeiterClick(Sender: TObject);
    procedure SpeedSpannungClick(Sender: TObject);
    procedure SpeedDeformationClick(Sender: TObject);
    procedure SpeedHilfeClick(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure SpeedLiteraturClick(Sender: TObject);
   end;

var
  Form90: TForm90;

implementation
uses Unit91;
{$R *.DFM}

procedure TForm90.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm90.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm90.FormActivate(Sender: TObject);
begin
  Left   := 140;
  Top    := 80;
  Height := 620;
  Width  := 800;
  LabelDemo.Visible               := false;
  if DemoB then LabelDemo.Visible := true;
  ButtonWeiter.Hint               := Hilf(48);
  ButtonZuruck.Hint               := Hilf(18);
  ButtonEnde.Hint                 := Hilf(19);
  SpeedSpannung.Hint              := Hilf(632);
  SpeedDeformation.Hint           := Hilf(633);
  SpeedHilfe.Hint                 := Hilf(210);
  SpeedHandbuch.Hint              := Hilf(274);
  SpeedLiteratur.Hint             := Hilf(462);
  Form90.Caption                  := 'Fabric8: '+Tx(1493);
  LabelMohr.Caption               := Tx(1491);
  LabelMohr2.Caption              := Tx(1492);
  Kreis.Caption                   := Tx(1493);
  Spannung.Caption                := Tx(1494);
  Deformation.Caption             := Tx(1495);
  Hilfe.Caption                   := Tx(162)+' (F1)';
  Handbuch.Caption                := Tx(1055)+' (F2)';
  Literatur.Caption               := Tx(1183)+' (F5)';
  ButtonWeiter.Caption            := Tx(76);
  ButtonZuruck.Caption            := Tx(30);
  ButtonEnde.Caption              := Tx(53);
  LabelEinst.Caption              := '';
  LabelSpannung.Caption           := '';
  ButtonWeiter.Enabled            := false;
  MohrKreisS                      := '';
end;

procedure TForm90.SpannungClick(Sender: TObject);
begin
  MohrKreisS            := 'Spannung';
  LabelEinst.Caption    := Tx(1493);
  LabelSpannung.Caption := Tx(1496);
  ButtonWeiter.Enabled  := true;
end;

procedure TForm90.SpeedSpannungClick(Sender: TObject);
begin
  SpannungClick(Sender);
end;

procedure TForm90.DeformationClick(Sender: TObject);
begin
  MohrKreisS            := 'Deformation';
  LabelEinst.Caption    := Tx(1493);
  LabelSpannung.Caption := Tx(1497);
  ButtonWeiter.enabled  := true;
end;

procedure TForm90.SpeedDeformationClick(Sender: TObject);
begin
  DeformationClick(Sender);
end;

procedure TForm90.ButtonWeiterClick(Sender: TObject);
begin
  Form91.Show;
end;

procedure TForm90.ButtonZuruckClick(Sender: TObject);
begin
  Form90.Close;
end;

procedure TForm90.ButtonEndeClick(Sender: TObject);
begin
  Form90.Close;
end;

procedure TForm90.HilfeClick(Sender: TObject);
var
  DateiS : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\90Mohr.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\90Mohr.htm');
  end;
  HelpRouter1.free;
end;  

procedure TForm90.SpeedHilfeClick(Sender: TObject);
begin
  HilfeClick(Sender);
end;

procedure TForm90.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  begin
    if SpracheS = 'DEUTSCH' then HilfeS := 'Mohrscher_Kreis.doc';
    if SpracheS = 'ENGLISH' then HilfeS := 'Mohr´s_circle.doc';
    ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
                 nil,nil,sw_normal);
  end;
end;

procedure TForm90.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm90.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm90.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender)
end;

end.
