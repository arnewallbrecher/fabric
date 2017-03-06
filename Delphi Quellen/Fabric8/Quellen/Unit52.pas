unit Unit52;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, ExtCtrls, StdCtrls, Menus, Globvar, Texte,
  ComCtrls, Buttons, Shellapi, Mask, ehsHelpRouter;

type
  TForm52 = class(TForm)
    Panel1               : TPanel;
    LabelKlassifizierung : TLabel;
    LabelmitHilfe        : TLabel;
    LabelTAlpha          : TLabel;
    Labelgefalteter      : TLabel;

    Panel2: TPanel;
    LabelDaten: TLabel;
    LabelvonFestplatte: TLabel;

    Buttonweiter  : TButton;
    Buttonzurueck : TButton;
    Buttonbeenden : TButton;

    MainMenu1: TMainMenu;

    Dateneingabe1     : TMenuItem;
    manuell1          : TMenuItem;
    ausDatei: TMenuItem;

    Hilfe1: TMenuItem;
    Image1: TImage;
    StatusBar: TStatusBar;
    SpeedHilfe: TSpeedButton;
    Handbuch: TMenuItem;
    LabelDemo: TLabel;
    SpeedHandbuch: TSpeedButton;
    Speedmanuell: TSpeedButton;
    SpeedDatei: TSpeedButton;
    ausBild: TMenuItem;
    SpeedBild: TSpeedButton;
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
    procedure ausBildClick(Sender: TObject);
    procedure SpeedBildClick(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
    procedure SpeedLiteraturClick(Sender: TObject);
    procedure MaskEditMaxKeyPress(Sender: TObject; var Key: Char);
  end;

var
  Form52    : TForm52;
  Gedrueckt : boolean;

implementation
uses Unit53, Unit54, Unit69;
{$R *.DFM}

procedure TForm52.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm52.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm52.FormActivate(Sender: TObject);
begin
  Left   := LeftDiag;
  Top    := TopDiag;
  Width  := WidForm;
  Height := HeiForm;
  LabelDemo.Visible                := false;
  if DemoB then LabelDemo.Visible  := true;
  Form52.Caption               := Tx(777);   {Fabric7: T'alpha/Alpha-Methode}
  Panel2.Hint                  := Hilf(131);
  Buttonweiter.Hint            := Hilf(48);
  Buttonzurueck.Hint           := Hilf(18);
  Buttonbeenden.Hint           := Hilf(30);
  SpeedHilfe.Hint              := Hilf(210);
  SpeedHandbuch.Hint           := Hilf(274);
  SpeedManuell.Hint            := Hilf(327);
  SpeedDatei.Hint              := Hilf(328);
  SpeedBild.Hint               := Hilf(345);
  DatenEingabe1.Caption        := Tx(55);
  manuell1.Caption             := Tx(56);
  ausDatei.Caption             := Tx(57);
  Hilfe1.Caption               := Tx(162)+' (F1)';
  LabelKlassifizierung.Caption := Tx(778);   {Klassifizierung von Falten}
  LabelmitHilfe.Caption        := Tx(779);   {mit Hilfe der Mächtigkeit}
  Labelgefalteter.Caption      := Tx(780);   {gefalteter Lagen}
  LabelTalpha.Caption          := Tx(781);   {T'alpha/Alpha-Methode (RAMSEY,}
//  LabelAutor.Caption           := Tx(74);
  Buttonweiter.Caption         := Tx(76);
  Buttonzurueck.Caption        := Tx(30);
  Buttonbeenden.Caption        := Tx(53);
  LabelDaten.Caption           := Tx(77);
  Buttonweiter.Enabled         := false;
  LabelvonFestplatte.Caption   := '';
  LabelDaten.Enabled           := false;
  Handbuch.Caption             :=Tx(1055)+' (F2)';
  Literatur.Caption            := Tx(1183)+' (F5)';
  SpeedLiteratur.Hint          := Hilf(462);
  ausBild.Caption              := Tx(1064);
  LabelMax.Caption      := Tx(981);
  MaskEditMax.EditMask  := '99999;0; ';
  MaskEditMax.Text      := IntToStr(MaxDaten);
  ExtenS := 'TAL';
end;

procedure TForm52.ButtonweiterClick(Sender: TObject);
begin
  if EingabeS = 'manuell' then Form53.Show;
  if EingabeS = 'Festplatte' then Form54.Show;
  if EingabeS = 'Bild' then Form69.Show;
end;

procedure TForm52.ButtonzurueckClick(Sender: TObject);
begin
  Form52.Close;
end;

procedure TForm52.ButtonbeendenClick(Sender: TObject);
begin
  Form52.Close;
  SetCurrentDir(DirectS);
end;

procedure TForm52.manuell1Click(Sender: TObject);
begin
  Buttonweiter.Enabled       := true;
  LabelDaten.Enabled         := true;
  LabelvonFestplatte.Caption := Tx(167);                       {manuell}
  EingabeS                   := 'manuell';
end;

procedure TForm52.ausDateiClick(Sender: TObject);
begin
  EingabeS                   := 'Festplatte';
  LabelDaten.Enabled         := true;
  Buttonweiter.Enabled       := true;
  LabelvonFestplatte.Caption := Tx(57); {aus einer Datei}
end;

procedure TForm52.ausBildClick(Sender: TObject);
begin
  ButtonWeiter.Enabled       := true;
  EingabeS                   := 'Bild';
  LabelDaten.Enabled         := true;
  LabelVonFestplatte.Caption := Tx(1064);
end;

procedure TForm52.Hilfe1Click(Sender: TObject);
var
  DateiS : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\52Talpha.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\52Talpha.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm52.SpeedHilfeClick(Sender: TObject);
begin
  Hilfe1Click(Sender);
end;

procedure TForm52.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Talpha.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'Talpha-E.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm52.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm52.SpeedmanuellClick(Sender: TObject);
begin
  manuell1Click(Sender);
end;

procedure TForm52.SpeedDateiClick(Sender: TObject);
begin
  ausDateiClick(Sender);
end;

procedure TForm52.SpeedBildClick(Sender: TObject);
begin
  ausBildClick(Sender);
end;

procedure TForm52.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm52.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

procedure TForm52.MaskEditMaxKeyPress(Sender: TObject; var Key: Char);
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
