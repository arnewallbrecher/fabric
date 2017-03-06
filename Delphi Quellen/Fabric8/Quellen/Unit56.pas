unit Unit56;

interface

uses
  Windows, ComCtrls, Buttons, Menus, Controls, StdCtrls,
  Classes, ExtCtrls, Messages, SysUtils, Forms, Dialogs,
  Texte, Graphics, Globvar, Shellapi, Mask, ehsHelpRouter;

type
  TForm56 = class(TForm)
    MainMenu1 : TMainMenu;

    Panel1              : TPanel;
    LabelRekonstruktion : TLabel;
    LabelFallazimut     : TLabel;
    LabelLagenkugel     : TLabel;

    Hilfe1     : TMenuItem;
    StatusBar  : TStatusBar;

    Image1 : TImage;

    Buttonzurueck        : TButton;
    ButtonBeenden        : TButton;
    LabelSimulation : TLabel;
    Handbuch: TMenuItem;
    LabelDemo: TLabel;
    Literatur: TMenuItem;
    LabelMax: TLabel;
    MaskEditMax: TMaskEdit;
    Methode: TMenuItem;
    Rekonstruktion : TMenuItem;
    Simulation     : TMenuItem;
    MRSS           : TMenuItem;
    ButtonWeiter: TButton;
    LabelMethode: TLabel;
    LabelRek: TLabel;
    PanelSpeed: TPanel;
    SpeedLiteratur: TSpeedButton;
    SpeedHandbuch: TSpeedButton;
    SpeedHilfe: TSpeedButton;
    SpeedRekon: TSpeedButton;
    SpeedSim: TSpeedButton;
    SpeedMrss: TSpeedButton;

    procedure ShowHint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Hilfe1Click(Sender: TObject);
    procedure SpeedHilfeClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ButtonzurueckClick(Sender: TObject);
    procedure ButtonBeendenClick(Sender: TObject);
    procedure HandbuchClick(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
    procedure SpeedLiteraturClick(Sender: TObject);
    procedure MaskEditMaxKeyPress(Sender: TObject; var Key: Char);
    procedure RekonstruktionClick(Sender: TObject);
    procedure SimulationClick(Sender: TObject);
    procedure MRSSClick(Sender: TObject);
    procedure ButtonWeiterClick(Sender: TObject);
    procedure SpeedRekonClick(Sender: TObject);
    procedure SpeedSimClick(Sender: TObject);
    procedure SpeedMrssClick(Sender: TObject);
  end;

var
  Form56: TForm56;

implementation
uses Unit57;
{$R *.DFM}

procedure TForm56.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm56.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm56.FormActivate(Sender: TObject);
begin
  Left   := LeftDiag;
  Top    := TopDiag;
  Width  := WidForm;
  Height := HeiForm;
  LabelDemo.Visible                := false;
  if DemoB then LabelDemo.Visible  := true;
  Panel1.Hint                 := Hilf(221);
  Buttonzurueck.Hint          := Hilf(220);
  Buttonbeenden.Hint          := Hilf(30);
  SpeedHilfe.Hint             := Hilf(210);
  SpeedRekon.Hint             := Hilf(670);
  SpeedSim.Hint               := Hilf(671);
  SpeedHandbuch.Hint          := Hilf(274);
  SpeedMrss.Hint              := Hilf(672);
  Form56.Caption              := Tx(1442);
  LabelRekonstruktion.Caption := Tx(905);
  LabelFallazimut.Caption     := Tx(906);
  LabelLagenkugel.Caption     := Tx(907);
  LabelMethode.Caption        := Tx(1434)+':';
  Methode.Caption             := Tx(1434);
  Rekonstruktion.Caption      := Tx(938);
  Simulation.Caption          := Tx(939);
  MRSS.Caption                := Tx(1135);
//  LabelAutor.Caption        := Tx(908);
  LabelSimulation.Caption     := Tx(908);
  ButtonWeiter.Caption        := Tx(76);
  Buttonzurueck.Caption       := Tx(30);
  Buttonbeenden.Caption       := Tx(53);
  ButtonWeiter.Enabled        := false;
  Handbuch.Caption            := Tx(1055)+' (F2)';
  Hilfe1.Caption              := Tx(162)+' (F1)';
  Literatur.Caption           := Tx(1183)+' (F5)';
  SpeedLiteratur.Hint         := Hilf(462);
  LabelMax.Caption            := Tx(981);
  MaskEditMax.EditMask        := '99999;0; ';
  MaskEditMax.Text            := IntToStr(MaxDaten);
  LabelRek.Caption            := '';
end;

procedure TForm56.MaskEditMaxKeyPress(Sender: TObject; var Key: Char);
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

procedure TForm56.RekonstruktionClick(Sender: TObject);
begin
  RekSimS              := 'Rek';
  ButtonWeiter.Enabled := true;
  LabelRek.Caption     := Tx(938);
end;

procedure TForm56.SpeedRekonClick(Sender: TObject);
begin
  RekonstruktionClick(Sender);
end;

procedure TForm56.SimulationClick(Sender: TObject);
begin
  RekSimS := 'Sim';
  ButtonWeiter.Enabled := true;
  LabelRek.Caption     := Tx(939);
end;

procedure TForm56.SpeedSimClick(Sender: TObject);
begin
  SimulationClick(Sender);
end;

procedure TForm56.MRSSClick(Sender: TObject);
begin
  ExtenS  := 'SLI';
  RekSimS := 'MRSS';
  ButtonWeiter.Enabled := true;
  LabelRek.Caption     := Tx(1135);
end;

procedure TForm56.SpeedMrssClick(Sender: TObject);
begin
  MRSSClick(Sender);
end;

procedure TForm56.ButtonWeiterClick(Sender: TObject);
begin
  Form57.Show;
end;


procedure TForm56.ButtonzurueckClick(Sender: TObject);
begin
  Form56.Close;
end;

procedure TForm56.ButtonBeendenClick(Sender: TObject);
begin
  Form56.Close;
  SetCurrentDir(DirectS);
end;

procedure TForm56.Hilfe1Click(Sender: TObject);
var
  DateiS : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\56Rekonstruktion.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\56Reconstruction.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm56.SpeedHilfeClick(Sender: TObject);
begin
  Hilfe1Click(Sender);
end;

procedure TForm56.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Rekonstruktion.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'Reconstruction.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm56.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm56.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm56.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

end.
