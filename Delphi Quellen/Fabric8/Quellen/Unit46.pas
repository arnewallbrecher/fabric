unit Unit46;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, ExtCtrls, Menus, Globvar,
  Texte, ComCtrls, Buttons, Shellapi, Mask, ehsHelpRouter;

type
  TForm46 = class(TForm)
    Panel1       : TPanel;
    LabelPlot    : TLabel;
    LabelVollmer : TLabel;

    Buttonbeenden : TButton;
    Buttonzurueck : TButton;
    Buttonweiter  : TButton;

    MainMenu1: TMainMenu;

    Dateneingabe1     : TMenuItem;
    manuell1          : TMenuItem;
    ausDatei: TMenuItem;

    Hilfe1: TMenuItem;
    Panel2: TPanel;
    LabelDateneingabe: TLabel;
    LabelvonFestplatte: TLabel;
    Image1: TImage;
    StatusBar: TStatusBar;
    SpeedHilfe: TSpeedButton;
    Handbuch: TMenuItem;
    LabelDemo: TLabel;
    SpeedHandbuch: TSpeedButton;
    Speedmanuell: TSpeedButton;
    SpeedDatei: TSpeedButton;
    Literatur: TMenuItem;
    SpeedLiteratur: TSpeedButton;
    LabelMax: TLabel;
    MaskEditMax: TMaskEdit;

    procedure FormActivate(Sender: TObject);

    procedure ButtonweiterClick(Sender: TObject);
    procedure ButtonzurueckClick(Sender: TObject);
    procedure ButtonbeendenClick(Sender: TObject);

    {Dateneingabe}
    procedure manuell1Click(Sender: TObject);
    procedure ausDateiClick(Sender: TObject);
    
    procedure Hilfe1Click(Sender: TObject);
    procedure ShowHint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedHilfeClick(Sender: TObject);
    procedure HandbuchClick(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure SpeedmanuellClick(Sender: TObject);
    procedure SpeedDateiClick(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
    procedure SpeedLiteraturClick(Sender: TObject);
    procedure MaskEditMaxKeyPress(Sender: TObject; var Key: Char);
  end;

var
  Form46    : TForm46;
  Gedrueckt : boolean;

implementation
uses Unit43, Unit44, Unit1;
{$R *.DFM}

procedure TForm46.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm46.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm46.FormActivate(Sender: TObject);
begin
  Left   := LeftDiag;
  Top    := TopDiag;
  Width  := WidForm;
  Height := HeiForm;
  LabelDemo.Visible                := false;
  if DemoB then LabelDemo.Visible  := true;
  Form46.Caption             := Tx(749);    {Fabric7: Plot eines Vollmer-Dia}
  Panel2.Hint                := Hilf(131);
  Buttonweiter.Hint          := Hilf(48);
  Buttonzurueck.Hint         := Hilf(18);
  Buttonbeenden.Hint         := Hilf(30);
  SpeedHilfe.Hint            := Hilf(210);
  SpeedHandbuch.Hint         := Hilf(274);
  SpeedManuell.Hint          := Hilf(327);
  SpeedDatei.Hint            := Hilf(328);
  DatenEingabe1.Caption      := Tx(55);
  manuell1.Caption           := Tx(56);
  ausDatei.Caption           := Tx(57);
  Hilfe1.Caption             := Tx(162)+' (F1)';
  LabelPlot.Caption          := Tx(736);    {Plotten}
  LabelVollmer.Caption       := Tx(750);    {Vollmer-Diagramms}
  Buttonweiter.Caption       := Tx(76);
  Buttonzurueck.Caption      := Tx(30);
  Buttonbeenden.Caption      := Tx(53);
  LabelDatenEingabe.Caption  := Tx(77);
  Buttonweiter.Enabled       := false;
  LabelvonFestplatte.Caption := '';
  LabelDateneingabe.Enabled  := false;
  Handbuch.Caption           := Tx(1055)+' (F2)';
  Literatur.Caption          := Tx(1183)+' (F5)';
  SpeedLiteratur.Hint        := Hilf(462);
  LabelMax.Caption      := Tx(981);
  MaskEditMax.EditMask  := '99999;0; ';
  MaskEditMax.Text      := IntToStr(MaxDaten);
end;

procedure TForm46.ButtonweiterClick(Sender: TObject);
begin
  ExtenS := 'WOO';
  if EingabeS = 'manuell' then Form43.Show
  else Form44.Show;
end;

procedure TForm46.ButtonzurueckClick(Sender: TObject);
begin
  Form46.Close;
end;

procedure TForm46.ButtonbeendenClick(Sender: TObject);
begin
  Form46.Close;
  SetCurrentDir(DirectS);
end;

procedure TForm46.manuell1Click(Sender: TObject);
begin
  Buttonweiter.Enabled       := true;
  LabelDateneingabe.Enabled  := true;
  LabelvonFestplatte.Caption := Tx(167);                     {manuell}
  EingabeS                   := 'manuell';
end;

procedure TForm46.ausDateiClick(Sender: TObject);
begin
  EingabeS                   := 'Festplatte';
  LabelDateneingabe.Enabled  := true;
  Buttonweiter.Enabled       := true;
  LabelvonFestplatte.Caption := Tx(57); {aus einer datei}
end;

procedure TForm46.Hilfe1Click(Sender: TObject);
var
  DateiS      : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\46Vollmer.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\46Vollmer.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm46.SpeedHilfeClick(Sender: TObject);
begin
  Hilfe1Click(Sender);
end;

procedure TForm46.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Vollmer-Diagramm.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'Vollmer-Diagram-E.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm46.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm46.SpeedmanuellClick(Sender: TObject);
begin
  manuell1Click(Sender);
end;

procedure TForm46.SpeedDateiClick(Sender: TObject);
begin
  ausDateiClick(Sender);
end;

procedure TForm46.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm46.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

procedure TForm46.MaskEditMaxKeyPress(Sender: TObject; var Key: Char);
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