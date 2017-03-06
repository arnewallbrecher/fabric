unit Unit65;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Texte, ComCtrls, StdCtrls, Menus, Globvar,
  Shellapi, Buttons, Panozzo, Mask, ehsHelpRouter;

type
  TForm65 = class(TForm)
    PanelFry   : TPanel;
    Image1     : TImage;
    LabelStrain: TLabel;

    Buttonweiter : TButton;
    Buttonzurueck: TButton;
    Buttonbeenden: TButton;

    StatusBar: TStatusBar;
    MainMenu1: TMainMenu;
    Eingabe: TMenuItem;
    AusBild: TMenuItem;
    ausKoorDatei: TMenuItem;
    Hilfe: TMenuItem;
    Handbuch: TMenuItem;
    LabelDemo: TLabel;
    SpeedHilfe: TSpeedButton;
    SpeedHandbuch: TSpeedButton;
    SpeedBild: TSpeedButton;
    SpeedTabelle: TSpeedButton;
    Polygon: TMenuItem;
    SpeedPolygon: TSpeedButton;
    Literatur: TMenuItem;
    SpeedLiteratur: TSpeedButton;
    OpenDialog1: TOpenDialog;
    LabelMax: TLabel;
    MaskEditMax: TMaskEdit;
    Methode: TMenuItem;
    Konventionell: TMenuItem;
    Norm: TMenuItem;
    LabelEinstellungen: TLabel;
    LabelEingabe: TLabel;
    LabelMethode: TLabel;
    LabelNorm: TLabel;
    LabelausBild: TLabel;
    SpeedKonv: TSpeedButton;
    SpeedNorm: TSpeedButton;

    procedure FormShow(Sender: TObject);
    procedure ShowHint(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ButtonweiterClick(Sender: TObject);
    procedure ButtonzurueckClick(Sender: TObject);
    procedure ButtonbeendenClick(Sender: TObject);
    procedure AusBildClick(Sender: TObject);
    procedure ausKoorDateiClick(Sender: TObject);
    procedure HilfeClick(Sender: TObject);
    procedure HandbuchClick(Sender: TObject);
    procedure SpeedHilfeClick(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure SpeedBildClick(Sender: TObject);
    procedure SpeedTabelleClick(Sender: TObject);
    procedure PolygonClick(Sender: TObject);
    procedure SpeedPolygonClick(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
    procedure SpeedLiteraturClick(Sender: TObject);
    procedure MaskEditMaxKeyPress(Sender: TObject; var Key: Char);
    procedure KonventionellClick(Sender: TObject);
    procedure NormClick(Sender: TObject);
    procedure SpeedKonvClick(Sender: TObject);
    procedure SpeedNormClick(Sender: TObject);
  end;

var
  Form65     : TForm65;
  ABild      : boolean;
  PausDatei  : boolean;
  ausPolygon : boolean;
  Gedrueckt  : array[0..2] of boolean;

implementation
uses Unit66, Unit67;

{$R *.DFM}

procedure TForm65.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm65.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm65.FormActivate(Sender: TObject);
begin
  Left   := LeftDiag;
  Top    := TopDiag;
  Width  := WidForm;
  Height := HeiForm;
  LabelDemo.Visible                := false;
  if DemoB then LabelDemo.Visible  := true;
  setlength (ZeilePolygonS, Maxdaten);
  setlength (PolygonZeileS, Maxdaten);
  ButtonWeiter.Enabled  := false;
  ABild                 := false;
  PausDatei             := false;
  ausPolygon            := false;
  SpeedHilfe.Hint       := Hilf(210);
  SpeedHandbuch.Hint    := Hilf(274);
  SpeedBild.Hint        := Hilf(342);
  SpeedTabelle.Hint     := Hilf(343);
  Form65.Caption        := 'Fabric8: '+Tx(1063);
  LabelStrain.Caption   := Tx(1063);
  ButtonWeiter.Caption  := Tx(76);
  ButtonZurueck.Caption := Tx(30);
  ButtonBeenden.Caption := Tx(53);
  Eingabe.Caption       := Tx(55);
  AusBild.Caption       := Tx(1064);
  AusKoorDatei.Caption  := Tx(1065);
  Hilfe.Caption         := Tx(162)+' (F1)';
  Plot                  := false;
  Handbuch.Caption      := Tx(1055)+' (F2)';
  ButtonWeiter.Hint     := Hilf(324);
  ButtonZurueck.Hint    := Hilf(18);
  ButtonBeenden.Hint    := Hilf(19);
  Polygon.Caption       := Tx(1164);
  SpeedPolygon.Hint     := Hilf(453);
  Literatur.Caption     := Tx(1183)+' (F5)';
  SpeedLiteratur.Hint   := Hilf(462);
  SpeedKonv.Hint        := Hilf(554);
  SpeedNorm.Hint        := Hilf(555);
  LabelMax.Caption      := Tx(981);
  MaskEditMax.EditMask  := '99999;0; ';
  MaskEditMax.Text      := IntToStr(MaxDaten);
  LabelEinstellungen.Caption := Tx(75);
  Methode.Caption       := Tx(1434);
  Konventionell.Caption := Tx(1435);
  Norm.Caption          := Tx(1436);
  LabelEingabe.Caption  := Tx(77);
  LabelMethode.Caption  := Tx(1434)+':';
  LabelausBild.Caption  := '';
  LabelNorm.Caption     := '';
end;

procedure TForm65.ButtonweiterClick(Sender: TObject);
begin
  if PausDatei then ausDatei  := 'Punkt';
  if ausPolygon then ausDatei := 'Polygon';
  if ABild then Form66.Show;
  if PausDatei then Form67.Show;
  if ausPolygon then Form67.Show;
end;

procedure TForm65.ButtonzurueckClick(Sender: TObject);
begin
  ZeilePolygonS := Nil;
  PolygonZeileS := Nil;
  Form65.close;
end;

procedure TForm65.ButtonbeendenClick(Sender: TObject);
begin
  ZeilePolygonS := Nil;
  PolygonZeileS := Nil;
  Form65.Close;
  SetCurrentDir(DirectS);
end;

procedure TForm65.AusBildClick(Sender: TObject);
begin
  ABild                 := true;
  LabelausBild.Caption  := Tx(1064);
  Konventionell.Enabled := true;
  SpeedKonv.Enabled     := true;
  SpeedNorm.Enabled     := true;
  Gedrueckt[1]          := true;
  if Gedrueckt[1] and Gedrueckt[2] then ButtonWeiter.Enabled := true;
end;

procedure TForm65.ausKoorDateiClick(Sender: TObject);
begin
  ExtenS                := 'FRN';
  PausDatei             := true;
  LabelausBild.Caption  := Tx(1065);
  Konventionell.Enabled := true;
  SpeedKonv.Enabled     := true;
  SpeedNorm.Enabled     := true;
  Gedrueckt[1]          := true;
  if Gedrueckt[1] and Gedrueckt[2] then ButtonWeiter.Enabled := true;
end;

procedure TForm65.PolygonClick(Sender: TObject);
begin
  ausPolygon            := true;
  LabelausBild.Caption  := Tx(1164);
  Methode.Enabled       := false;
  SpeedKonv.Enabled     := false;
  SpeedNorm.Enabled     := false;
  FryMethodeS           := 'normiert';
  LabelNorm.Caption     := Tx(1436);
  ButtonWeiter.Enabled  := true;
end;

procedure TForm65.SpeedPolygonClick(Sender: TObject);
begin
  PolygonClick(Sender);
end;

procedure TForm65.KonventionellClick(Sender: TObject);
begin
  ExtenS      := 'FRY';
  FryMethodeS := 'konventionell';
  LabelNorm.Caption := Tx(1435);
  Gedrueckt[2]      := true;
  if Gedrueckt[1] and Gedrueckt[2] then ButtonWeiter.Enabled := true;
end;

procedure TForm65.SpeedKonvClick(Sender: TObject);
begin
  KonventionellClick(Sender);
end;

procedure TForm65.NormClick(Sender: TObject);
begin
  ExtenS      := 'FRN';
  FryMethodeS := 'normiert';
  LabelNorm.Caption := Tx(1436);
  Gedrueckt[2]      := true;
  if Gedrueckt[1] and Gedrueckt[2] then ButtonWeiter.Enabled := true;
end;

procedure TForm65.SpeedNormClick(Sender: TObject);
begin
  NormClick(Sender);
end;

procedure TForm65.HilfeClick(Sender: TObject);
var
  DateiS      : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\65Fry.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\65Fry.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm65.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Fry-Methode.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'Fry-Method(english).doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm65.SpeedHilfeClick(Sender: TObject);
begin
  HilfeClick(Sender);
end;

procedure TForm65.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm65.SpeedBildClick(Sender: TObject);
begin
  AusBildClick(Sender);
end;

procedure TForm65.SpeedTabelleClick(Sender: TObject);
begin
  AusKoorDateiClick(Sender);
end;

procedure TForm65.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm65.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

procedure TForm65.MaskEditMaxKeyPress(Sender: TObject; var Key: Char);
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
