unit Unit101;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, Globvar, Texte, Menus, ehsHelpRouter, Shellapi,
  Buttons, Mask;

type
  TForm101 = class(TForm)
    PanelWellman: TPanel;
    Image1: TImage;
    LabelWellman: TLabel;
    StatusBar: TStatusBar;
    LabelDemo: TLabel;
    LabelStrain: TLabel;
    LabelVorzeichnung: TLabel;
    LabelAutor: TLabel;
    Buttonzurueck: TButton;
    Buttonbeenden: TButton;
    MainMenu1: TMainMenu;
    Hilfe: TMenuItem;
    Handbuch: TMenuItem;
    Literatur: TMenuItem;
    SpeedHilfe: TSpeedButton;
    SpeedHandbuch: TSpeedButton;
    SpeedLiteratur: TSpeedButton;
    ButtonWeiter: TButton;
    DatenEingabe: TMenuItem;
    ausBild: TMenuItem;
    ausDatei: TMenuItem;
    SpeedBild: TSpeedButton;
    Panel3: TPanel;
    LabelDateneingabe: TLabel;
    LabelBild: TLabel;
    LabelEinstellungen: TLabel;
    LabelMax: TLabel;
    MaskEditMax: TMaskEdit;
    SpeedTabelle: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure ShowHint(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ButtonzurueckClick(Sender: TObject);
    procedure ButtonbeendenClick(Sender: TObject);
    procedure HilfeClick(Sender: TObject);
    procedure HandbuchClick(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
    procedure SpeedHilfeClick(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure SpeedLiteraturClick(Sender: TObject);
    procedure ButtonWeiterClick(Sender: TObject);
    procedure ausBildClick(Sender: TObject);
    procedure ausDateiClick(Sender: TObject);
    procedure SpeedBildClick(Sender: TObject);
    procedure MaskEditMaxKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedTabelleClick(Sender: TObject);
  end;

var
  Form101: TForm101;

implementation
{$R *.DFM}
uses Unit102, Unit103;

procedure TForm101.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm101.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm101.FormActivate(Sender: TObject);
begin
  Left   := LeftDiag;
  Top    := TopDiag;
  Height := HeiForm;
  Width  := WidForm;
  Form101.Caption            := Tx(1739);
  LabelDemo.Visible          := false;
  if DemoB then LabelDemo.Visible := true;
  SpeedBild.Hint             := Hilf(342);
  SpeedTabelle.Hint          := Hilf(757);
  SpeedHilfe.Hint            := Hilf(210);
  SpeedHandbuch.Hint         := Hilf(274);
  SpeedLiteratur.Hint        := Hilf(462);
  Dateneingabe.Caption       := Tx(55);
  ausBild.Caption            := Tx(1064);
  ausDatei.Caption           := Tx(57);
  LabelWellman.Caption       := Tx(1735);
  LabelStrain.Caption        := Tx(1736);
  LabelVorzeichnung.Caption  := Tx(1737);
  LabelAutor.Caption         := Tx(1738);
  LabelEinstellungen.Caption := Tx(75);
  LabelDateneingabe.Caption  := Tx(77);
  ButtonWeiter.Caption       := Tx(76);
  ButtonZurueck.Caption      := Tx(30);
  Buttonbeenden.Caption      := Tx(53);
  Hilfe.Caption              := Tx(162);
  Handbuch.Caption           := Tx(1055);
  Literatur.Caption          := Tx(1183);
  LabelMax.Caption           := Tx(981);
  ButtonWeiter.Enabled       := false;
  LabelBild.Caption          := '';
  ExtenS                     := 'WEL';
end;

procedure TForm101.ausBildClick(Sender: TObject);
begin
  EingabeS             := 'Bild';
  LabelBild.Caption    := Tx(1064);
  ButtonWeiter.Enabled := true;
end;

procedure TForm101.SpeedBildClick(Sender: TObject);
begin
  ausBildClick(Sender);
end;

procedure TForm101.ausDateiClick(Sender: TObject);
begin
  EingabeS := 'Festplatte';
  LabelBild.Caption := Tx(57);
  ButtonWeiter.Enabled := true;
end;

procedure TForm101.SpeedTabelleClick(Sender: TObject);
begin
  ausDateiClick(Sender);
end;

procedure TForm101.ButtonWeiterClick(Sender: TObject);
begin
  if EingabeS = 'Bild' then Form102.Show;
  if EingabeS = 'Festplatte' then Form103.Show;
end;

procedure TForm101.ButtonzurueckClick(Sender: TObject);
begin
  Form101.Close;
end;

procedure TForm101.ButtonbeendenClick(Sender: TObject);
begin
  Form101.Close;
  SetCurrentDir(DirectS);
end;

procedure TForm101.MaskEditMaxKeyPress(Sender: TObject; var Key: Char);
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

procedure TForm101.HilfeClick(Sender: TObject);
var
  DateiS      : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\102Wellman.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\102Wellman.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm101.SpeedHilfeClick(Sender: TObject);
begin
  HilfeClick(Sender);
end;

procedure TForm101.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Wellman-Methode.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'Wellman_Method.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm101.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm101.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm101.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

end.
