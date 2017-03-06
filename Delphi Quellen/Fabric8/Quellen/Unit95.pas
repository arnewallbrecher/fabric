unit Unit95;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, ComCtrls, StdCtrls, ExtCtrls, Texte,
  Globvar, Menus, Mask, Shellapi, Buttons, ehsHelpRouter;

type
  TForm95 = class(TForm)
    StatusBar: TStatusBar;
    PanelHaupt: TPanel;
    Image1: TImage;
    StaticText1: TStaticText;
    LabelFlinn: TLabel;
    LabelEllipsoid: TLabel;
    LabelDemo: TLabel;
    ButtonWeiter: TButton;
    ButtonZurueck: TButton;
    ButtonBeenden: TButton;
    MainMenu1: TMainMenu;
    DEingabe: TMenuItem;
    manuell: TMenuItem;
    Datei: TMenuItem;
    Panel3: TPanel;
    LabelEingabe: TLabel;
    Labelmanuell: TLabel;
    LabelMax: TLabel;
    MaskEditMax: TMaskEdit;
    Hilfe: TMenuItem;
    Handbuch: TMenuItem;
    Literatur: TMenuItem;
    Dtyp: TMenuItem;
    Achsen: TMenuItem;
    Elongation: TMenuItem;
    LabelTyp: TLabel;
    LabelElon: TLabel;
    PanelSpeed: TPanel;
    SpeedManuell: TSpeedButton;
    SpeedDatei: TSpeedButton;
    SpeedAchsen: TSpeedButton;
    SpeedElon: TSpeedButton;
    SpeedHilfe: TSpeedButton;
    SpeedHandbuch: TSpeedButton;
    SpeedLiteratur: TSpeedButton;
    LabelAchsenver: TLabel;
    procedure FormShow(Sender: TObject);
    procedure ShowHint(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ButtonWeiterClick(Sender: TObject);
    procedure ButtonZurueckClick(Sender: TObject);
    procedure ButtonBeendenClick(Sender: TObject);
    procedure manuellClick(Sender: TObject);
    procedure DateiClick(Sender: TObject);
    procedure MaskEditMaxKeyPress(Sender: TObject; var Key: Char);
    procedure HilfeClick(Sender: TObject);
    procedure HandbuchClick(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
    procedure AchsenClick(Sender: TObject);
    procedure ElongationClick(Sender: TObject);
    procedure SpeedManuellClick(Sender: TObject);
    procedure SpeedDateiClick(Sender: TObject);
    procedure SpeedAchsenClick(Sender: TObject);
    procedure SpeedHilfeClick(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure SpeedLiteraturClick(Sender: TObject);
    procedure SpeedElonClick(Sender: TObject);
  end;

var
  Form95    : TForm95;
  Gedrueckt : array[0..2] of boolean;

implementation

uses Unit96, Unit97;

{$R *.DFM}

procedure TForm95.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm95.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm95.FormActivate(Sender: TObject);
var
  i : byte;
  cw : real;
begin
  Left   := LeftDiag;
  Top    := TopDiag;
  Width  := WidForm;
  Height := HeiForm;
  Form95.Caption := Tx(1534);
  LabelDemo.Visible               := false;
  if DemoB then LabelDemo.Visible := true;
  ButtonWeiter.Enabled   := false;
  Buttonweiter.Hint      := Hilf(67);
  Buttonzurueck.Hint     := Hilf(18);
  Buttonbeenden.Hint     := Hilf(30);
  SpeedManuell.Hint      := Hilf(327);
  SpeedDatei.Hint        := Hilf(328);
  SpeedAchsen.Hint       := Hilf(640);
  SpeedElon.Hint         := Hilf(641);
  SpeedHilfe.Hint        := Hilf(210);
  SpeedHandbuch.Hint     := Hilf(274);
  SpeedLiteratur.Hint    := Hilf(462);
  ButtonWeiter.Caption   := Tx(76);
  ButtonZurueck.Caption  := Tx(30);
  ButtonBeenden.Caption  := Tx(53);
  LabelFlinn.Caption     := Tx(1535);
  LabelAchsenver.Caption := Tx(1536);
  LabelEllipsoid.Caption := Tx(1600);
  DEingabe.Caption       := Tx(55);
  manuell.Caption        := Tx(56);
  Datei.Caption          := Tx(57);
  LabelTyp.Caption       := Tx(1549)+':';
  LabelElon.Caption      := Tx(1550);
  Hilfe.Caption          := Tx(162)+' (F1)';
  Handbuch.Caption       := Tx(1055)+' (F2)';
  Literatur.Caption      := Tx(1183)+' (F5)';
  Dtyp.Caption           := Tx(1549);
  Achsen.Caption         := Tx(1502);
  Elongation.Caption     := Tx(1550);
  LabelEingabe.Caption   := Tx(55);
  LabelManuell.Caption   := '';
  LabelMax.Caption       := Tx(981);
  MaskEditMax.EditMask   := '99999;0; ';
  MaskEditMax.Text       := IntToStr(MaxDaten);
  for i := 1 to 2 do  Gedrueckt[i] := false;
  LabelManuell.Caption   := '';
  LabelElon.Caption      := '';
end;

procedure TForm95.ButtonWeiterClick(Sender: TObject);
begin
  if EingabeS = 'manuell' then Form96.Show;
  if EingabeS = 'Festplatte' then Form97.Show;
end;

procedure TForm95.ButtonZurueckClick(Sender: TObject);
begin
  Form95.Close;
end;

procedure TForm95.ButtonBeendenClick(Sender: TObject);
begin
  Form95.Close;
  SetCurrentDir(DirectS);
end;

procedure TForm95.manuellClick(Sender: TObject);
begin
  Labelmanuell.Caption := Tx(167);                          {manuell}
  LabelElon.Caption    := '';
  EingabeS             := 'manuell';
  Dtyp.Enabled         := true;
  SpeedAchsen.Enabled  := true;
  SpeedElon.Enabled    := true;
  Gedrueckt[1]         := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true) then
    ButtonWeiter.Enabled := true;
end;

procedure TForm95.SpeedManuellClick(Sender: TObject);
begin
  ManuellClick(Sender);
end;

procedure TForm95.DateiClick(Sender: TObject);
begin
  Labelmanuell.Caption := Tx(57); {aus einer Datei}
  EingabeS             := 'Festplatte';
  Dtyp.Enabled         := false;
  SpeedAchsen.Enabled  := false;
  SpeedElon.Enabled    := false;
  Gedrueckt[1]         := true;
  ButtonWeiter.Enabled := true;
  LabelElon.Caption    := Tx(1502);
end;

procedure TForm95.SpeedDateiClick(Sender: TObject);
begin
  DateiClick(Sender);
end;

procedure TForm95.AchsenClick(Sender: TObject);
begin
  FlinnDatenS       := 'Achsen';
  Gedrueckt[2]      := true;
  LabelElon.Caption := Tx(1502);
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true) then
    ButtonWeiter.Enabled := true;
end;

procedure TForm95.SpeedAchsenClick(Sender: TObject);
begin
  AchsenClick(Sender);
end;

procedure TForm95.ElongationClick(Sender: TObject);
begin
  FlinnDatenS  := 'Elongation';
  Gedrueckt[2] := true;
  LabelElon.Caption := Tx(1550);
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true) then
    ButtonWeiter.Enabled := true;
end;

procedure TForm95.SpeedElonClick(Sender: TObject);
begin
  ElongationClick(Sender);
end;

procedure TForm95.MaskEditMaxKeyPress(Sender: TObject; var Key: Char);
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

procedure TForm95.HilfeClick(Sender: TObject);
var
  DateiS      : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\95Flinn.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\95Flinn.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm95.SpeedHilfeClick(Sender: TObject);
begin
  HilfeClick(Sender);
end;

procedure TForm95.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Flinn-Hsu.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'Flinn-Hsu-E.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm95.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm95.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm95.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

end.
