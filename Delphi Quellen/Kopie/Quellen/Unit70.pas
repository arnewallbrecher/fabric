unit Unit70;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics,
  Controls, Forms, Dialogs,  ExtCtrls, ComCtrls,
  StdCtrls, Globvar, Menus, Texte, Buttons, Shellapi, Panozzo, Mask,
  ehsHelpRouter;

type
  TForm70 = class(TForm)
    Panel70: TPanel;
    Image1: TImage;
    StatusBar: TStatusBar;
    ButtonZurueck: TButton;
    ButtonEnde: TButton;
    LabelStrain: TLabel;
    LabelPanozzo: TLabel;
    Buttonweiter: TButton;
    MainMenu1: TMainMenu;
    Dateneingabe: TMenuItem;
    Hilfe: TMenuItem;
    Handbuch: TMenuItem;
    ausBild: TMenuItem;
    ausPolygon: TMenuItem;
    LabelDemo: TLabel;
    SpeedTabelle: TSpeedButton;
    SpeedHilfe: TSpeedButton;
    SpeedHandbuch: TSpeedButton;
    SpeedBild: TSpeedButton;
    Literatur: TMenuItem;
    SpeedLiteratur: TSpeedButton;
    LabelMax: TLabel;
    MaskEditMax: TMaskEdit;
    procedure FormShow(Sender: TObject);
    procedure ShowHint (Sender: TObject);
    procedure ButtonEndeClick(Sender: TObject);
    procedure ButtonZurueckClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ButtonweiterClick(Sender: TObject);
    procedure ausBildClick(Sender: TObject);
    procedure ausPolygonClick(Sender: TObject);
    procedure SpeedBildClick(Sender: TObject);
    procedure SpeedTabelleClick(Sender: TObject);
    procedure SpeedHilfeClick(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure HilfeClick(Sender: TObject);
    procedure HandbuchClick(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
    procedure SpeedLiteraturClick(Sender: TObject);
    procedure MaskEditMaxKeyPress(Sender: TObject; var Key: Char);
  end;
var
  Form70  : TForm70;
  Bild    : boolean;

implementation

uses Unit71, Unit72;
{$R *.DFM}

procedure TForm70.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm70.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm70.FormActivate(Sender: TObject);
begin
  Left   := 115;
  Top    := 80;
  Width  := 800;
  Height := 620;
  LabelDemo.Visible               := false;
  if DemoB then LabelDemo.Visible := true;
  setlength (ZeilePolygonS,Maxdaten);
  setlength (PolygonZeileS, Maxdaten);
  Form70.Caption        := 'Fabric8: '+Tx(1145);
  ButtonWeiter.Enabled  := false;
  Bild                  := false;
  Polygon               := false;
  SpeedHilfe.Hint       := Hilf(210);
  SpeedHandbuch.Hint    := Hilf(274);
  SpeedBild.Hint        := Hilf(342);
  SpeedTabelle.Hint     := Hilf(453);
  ButtonWeiter.Hint     := Hilf(324);
  ButtonZurueck.Hint    := Hilf(18);
  ButtonEnde.Hint       := Hilf(19);
  ButtonWeiter.Caption  := Tx(76);
  ButtonZurueck.Caption := Tx(30);
  ButtonEnde.Caption    := Tx(53);
  LabelStrain.Caption   := Tx(1146);
  LabelPanozzo.Caption  := Tx(1147);
//  LabelAutor.Caption    := Tx(74);
  DatenEingabe.Caption  := Tx(55);
  ausBild.Caption       := Tx(1064);
  ausPolygon.Caption    := Tx(1065);
  Hilfe.Caption         := Tx(162)+' (F1)';
  Plot                  := false;
  Handbuch.Caption      := Tx(1055)+' (F2)';
  Literatur.Caption     := Tx(1183)+' (F5)';
  SpeedLiteratur.Hint   := Hilf(462);
  LabelMax.Caption      := Tx(981);
  MaskEditMax.EditMask  := '99999;0; ';
  MaskEditMax.Text      := IntToStr(MaxDaten);
end;

procedure TForm70.ButtonweiterClick(Sender: TObject);
begin
  Form71.Show;
end;

procedure TForm70.ButtonEndeClick(Sender: TObject);
begin
  ZeilePolygonS := Nil;
  PolygonZeileS := Nil;
  Form70.close;
  SetCurrentDir(DirectS);
end;

procedure TForm70.ButtonZurueckClick(Sender: TObject);
begin
  ZeilePolygonS := Nil;
  PolygonZeileS := Nil;
  Form70.close;
end;

procedure TForm70.ausBildClick(Sender: TObject);
begin
  EingabeS := 'aus Bild';
  Bild     := true;
  ButtonWeiter.Enabled := true;
end;

procedure TForm70.ausPolygonClick(Sender: TObject);
begin
  EingabeS := 'ausPolygon';
  Polygon  := true;
  ButtonWeiter.Enabled := true;
end;

procedure TForm70.SpeedBildClick(Sender: TObject);
begin
  ausBildClick(Sender);
end;

procedure TForm70.SpeedTabelleClick(Sender: TObject);
begin
  ausPolygonClick(Sender);
end;

procedure TForm70.HilfeClick(Sender: TObject);
var
  DateiS : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\proj5e1x.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\Panozzo-main.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm70.SpeedHilfeClick(Sender: TObject);
begin
  HilfeClick(Sender);
end;

procedure TForm70.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Projektionsmethode.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'Projection_Method.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm70.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm70.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm70.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

procedure TForm70.MaskEditMaxKeyPress(Sender: TObject; var Key: Char);
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

end.
