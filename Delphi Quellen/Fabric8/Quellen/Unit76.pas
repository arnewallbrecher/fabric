unit Unit76;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, Texte, ExtCtrls, StdCtrls, Globvar,
  Buttons, Menus, Shellapi, ComCtrls, Mask, ehsHelpRouter;

type
  TForm76 = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    LabelDemo: TLabel;
    LabelSignifikanz: TLabel;
    Labelnach: TLabel;
    ButtonWeiter: TButton;
    ButtonZuruck: TButton;
    ButtonBeenden: TButton;
    MainMenu1: TMainMenu;
    DEingabe: TMenuItem;
    Dmanuell: TMenuItem;
    ausDatei: TMenuItem;
    PanelDateneingabe: TPanel;
    LabelDaten: TLabel;
    LabelEingabe: TLabel;
    SpeedManuell: TSpeedButton;
    SpeedAusDatei: TSpeedButton;
    Hilfe: TMenuItem;
    SpeedHilfe: TSpeedButton;
    Handbuch: TMenuItem;
    SpeedHandbuch: TSpeedButton;
    Literatur: TMenuItem;
    SpeedLiteratur: TSpeedButton;
    StatusBar: TStatusBar;
    LabelMax: TLabel;
    MaskEditMax: TMaskEdit;
    procedure FormActivate(Sender: TObject);
    procedure ButtonWeiterClick(Sender: TObject);
    procedure ButtonZuruckClick(Sender: TObject);
    procedure ButtonBeendenClick(Sender: TObject);
    procedure DmanuellClick(Sender: TObject);
    procedure ausDateiClick(Sender: TObject);
    procedure SpeedManuellClick(Sender: TObject);
    procedure HilfeClick(Sender: TObject);
    procedure SpeedHilfeClick(Sender: TObject);
    procedure SpeedAusDateiClick(Sender: TObject);
    procedure HandbuchClick(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
    procedure SpeedLiteraturClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ShowHint (Sender: TObject);
    procedure MaskEditMaxKeyPress(Sender: TObject; var Key: Char);
  end;

var
  Form76: TForm76;

implementation
uses Unit43, Unit44;
{$R *.DFM}

procedure TForm76.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm76.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm76.FormActivate(Sender: TObject);
begin
  Left   := LeftDiag;
  Top    := TopDiag;
  Width  := WidForm;
  Height := HeiForm;
  Form76.Caption           := 'Fabric8: '+Tx(1218);
  LabelDemo.Visible        := false;
  if DemoB then
    LabelDemo.Visible      := true;
  LabelSignifikanz.Caption := Tx(1219);
  LabelNach.Caption        := Tx(1220);
  Buttonweiter.Caption     := Tx(76);
  Buttonzuruck.Caption     := Tx(30);
  Buttonbeenden.Caption    := Tx(53);
  ButtonWeiter.Enabled     := false;
  ButtonWeiter.Hint        := Hilf(48);
  ButtonZuruck.Hint        := Hilf(18);
  ButtonBeenden.Hint       := Hilf(30);
  SpeedHilfe.Hint          := Hilf(210);
  SpeedHandbuch.Hint       := Hilf(274);
  SpeedManuell.Hint        := Hilf(327);
  SpeedausDatei.Hint       := Hilf(328);
  SpeedLiteratur.Hint      := Hilf(462);
  DEingabe.Caption         := Tx(55);
  Dmanuell.Caption         := Tx(56);
  ausDatei.Caption         := Tx(57);
  Hilfe.Caption            := Tx(162)+' (F1)';
  LabelDaten.Caption       := Tx(77);
  LabelEingabe.Caption     := '';
  LabelDaten.Enabled       := false;
  Handbuch.Caption         := Tx(1055)+' (F2)';
  Literatur.Caption        := Tx(1183)+' (F5)';
  LabelMax.Caption      := Tx(981);
  MaskEditMax.EditMask  := '99999;0; ';
  MaskEditMax.Text      := IntToStr(MaxDaten);
end;

procedure TForm76.ButtonWeiterClick(Sender: TObject);
begin
  if EingabeS = 'manuell' then Form43.Show
  else Form44.Show;
end;

procedure TForm76.ButtonZuruckClick(Sender: TObject);
begin
  Form76.Close;
end;

procedure TForm76.ButtonBeendenClick(Sender: TObject);
begin
  Form76.Close;
  SetCurrentDir(DirectS);
end;

procedure TForm76.DmanuellClick(Sender: TObject);
begin
  Buttonweiter.Enabled := true;
  LabelDaten.Enabled   := true;
  LabelEingabe.Caption := Tx(167);   {manuell}
  EingabeS             := 'manuell';
end;

procedure TForm76.ausDateiClick(Sender: TObject);
begin
  EingabeS             := 'Festplatte';
  LabelDaten.Enabled   := true;
  Buttonweiter.Enabled := true;
  LabelEingabe.Caption := Tx(57); {aus einer datei}
end;

procedure TForm76.SpeedAusDateiClick(Sender: TObject);
begin
  ausDateiClick(Sender);
end;

procedure TForm76.SpeedManuellClick(Sender: TObject);
begin
  DmanuellClick(Sender);
end;

procedure TForm76.HilfeClick(Sender: TObject);
const
  Anfang = 250;
var
  DateiS      : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\76Signifikanz.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\76Significance.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm76.SpeedHilfeClick(Sender: TObject);
begin
  HilfeClick(Sender);
end;

procedure TForm76.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Signifikanztest.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'Test_of_Significance.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm76.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm76.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm76.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

procedure TForm76.MaskEditMaxKeyPress(Sender: TObject; var Key: Char);
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



