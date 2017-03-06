unit Unit86;

interface

uses
  Windows, Forms, Globvar, ComCtrls, Controls, StdCtrls,
  Classes, ExtCtrls, Graphics, Texte, Menus, Buttons, Dialogs,
  Basic, SysUtils, Standard, Mask, ShellApi, ehsHelpRouter;

type
  TForm86 = class(TForm)
    PanelRFPhi: TPanel;
    StatusBar: TStatusBar;
    LabelRF  : TLabel;
    LabelStrain : TLabel;
    LabelEllipse: TLabel;
    ButtonWeiter: TButton;
    ButtonZurueck: TButton;
    MainMenu1: TMainMenu;
    Eingabe: TMenuItem;
    manuell: TMenuItem;
    ausAchsen: TMenuItem;
    ButtonBeenden: TButton;
    LabelDemo: TLabel;
    Image1: TImage;
    PanelEinstellungen: TPanel;
    LabelEingabe: TLabel;
    LabelManuell: TLabel;
    SpeedManuell: TSpeedButton;
    SpeedAchsen: TSpeedButton;
    LabelMax: TLabel;
    MaskEditMax: TMaskEdit;
    Hilfe: TMenuItem;
    Handbuch: TMenuItem;
    Literatur: TMenuItem;
    SpeedHilfe: TSpeedButton;
    SpeedHandbuch: TSpeedButton;
    SpeedLiteratur: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure ShowHint(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ButtonWeiterClick(Sender: TObject);
    procedure ButtonZurueckClick(Sender: TObject);
    procedure manuellClick(Sender: TObject);
    procedure ausAchsenClick(Sender: TObject);
    procedure ButtonBeendenClick(Sender: TObject);
    procedure SpeedManuellClick(Sender: TObject);
    procedure SpeedAchsenClick(Sender: TObject);
    procedure MaskEditMaxKeyPress(Sender: TObject; var Key: Char);
    procedure HandbuchClick(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
    procedure HilfeClick(Sender: TObject);
    procedure SpeedHilfeClick(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure SpeedLiteraturClick(Sender: TObject);
  end;

var
  Form86: TForm86;

implementation
{$R *.DFM}
uses Unit87, Unit88;

procedure TForm86.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm86.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm86.FormActivate(Sender: TObject);
begin
  Left   := 115;
  Top    := 80;
  Height := 620;
  Width  := 800;
  LabelDemo.Visible                := false;
  if DemoB then LabelDemo.Visible  := true;
  setlength (Rf, MaxDaten);
  setlength (RPhi, MaxDaten);
  Form86.Caption              := 'Fabric8: '+Tx(1358);
  LabelRF.Caption             := Tx(1358);
  LabelStrain.Caption         := Tx(1359);
  LabelEllipse.Caption        := Tx(1360);
  ButtonWeiter.Caption        := Tx(76);
  ButtonZurueck.Caption       := Tx(30);
  ButtonBeenden.Caption       := Tx(53);
  LabelEingabe.Caption        := Tx(77);
  manuell.Caption             := Tx(1064);
  ausAchsen.Caption           := Tx(1362);
  SpeedManuell.Hint           := Hilf(342);
  SpeedAchsen.Hint            := Hilf(553);
  SpeedHilfe.Hint             := Hilf(210);
  SpeedHandbuch.Hint         := Hilf(274);
  SpeedLiteratur.Hint         := Hilf(462);
  LabelManuell.Caption        := '';
  ButtonWeiter.Enabled        := false;
  Eingabe.Caption             := Tx(55);
  LabelMax.Caption      := Tx(981);
  MaskEditMax.EditMask  := '99999;0; ';
  MaskEditMax.Text      := IntToStr(MaxDaten);
  Hilfe.Caption         := Tx(162)+' (F1)';
  Handbuch.Caption      := Tx(1055)+' (F2)';
  Literatur.Caption     := Tx(1183)+' (F5)';
end;

procedure TForm86.ButtonWeiterClick(Sender: TObject);
begin
  if EingabeS = 'manuell' then Form87.Show;
  if EingabeS = 'Achsen'  then Form88.Show;
end;

procedure TForm86.ButtonZurueckClick(Sender: TObject);
begin
  Rf   := Nil;
  RPhi := Nil;
  Form86.Close;
  SetCurrentDir(DirectS);
end;

procedure TForm86.ButtonBeendenClick(Sender: TObject);
begin
  Rf   := Nil;
  RPhi := Nil;
  Form86.Close;
  SetCurrentDir(DirectS);
end;

procedure TForm86.manuellClick(Sender: TObject);
begin
  EingabeS             := 'manuell';
  LabelManuell.Caption := Tx(56);
  ButtonWeiter.Enabled := true;
end;

procedure TForm86.SpeedManuellClick(Sender: TObject);
begin
  manuellClick(Sender);
end;

procedure TForm86.ausAchsenClick(Sender: TObject);
begin
  EingabeS             := 'Achsen';
  LabelManuell.Caption := Tx(1362);
  ButtonWeiter.Enabled := true;
end;

procedure TForm86.SpeedAchsenClick(Sender: TObject);
begin
  ausAchsenClick(Sender);
end;

procedure TForm86.MaskEditMaxKeyPress(Sender: TObject; var Key: Char);
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

procedure TForm86.HilfeClick(Sender: TObject);
var
  DateiS      : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\rf-p8yqx.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\Rf-phi-main.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm86.SpeedHilfeClick(Sender: TObject);
begin
  HilfeClick(Sender);
end;


procedure TForm86.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Rf-Phi-Methode.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'Rf-Phi-Method(engl).doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm86.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm86.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm86.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

end.
