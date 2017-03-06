unit Unit42;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, ExtCtrls, StdCtrls, Menus, Globvar, Texte,
  ComCtrls, Buttons, Shellapi, Mask, ehsHelpRouter;

type
  TForm42 = class(TForm)
    Panel1        : TPanel;
    LabelPlot     : TLabel;
    Labeleines    : TLabel;
    LabelWoodcock : TLabel;

    Panel2            : TPanel;
    LabelDateneingabe : TLabel;
    LabelvonFestplatte: TLabel;

    MainMenu1: TMainMenu;

    Dateneingabe1     : TMenuItem;
    manuell1          : TMenuItem;
    ausDatei: TMenuItem;

    Hilfe1: TMenuItem;
    Buttonweiter: TButton;
    Buttonzurueck: TButton;
    Buttonbeenden: TButton;
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
  Form42    : TForm42;
  Gedrueckt : boolean;

implementation
uses Unit43, Unit44;
{$R *.DFM}

procedure TForm42.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm42.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm42.FormActivate(Sender: TObject);
begin
  Left   := 115;
  Top    := 80;
  Width  := 800;
  Height := 620;
  LabelDemo.Visible                := false;
  if DemoB then LabelDemo.Visible  := true;
  Form42.Caption            := Tx(735);   {Fabric7: Woodcock-Diagramm}
  Panel2.Hint               := Hilf(131);
  Buttonweiter.Hint         := Hilf(48);
  Buttonzurueck.Hint        := Hilf(18);
  Buttonbeenden.Hint        := Hilf(30);
  SpeedHilfe.Hint           := Hilf(210);
  SpeedHandbuch.Hint        := Hilf(274);
  SpeedManuell.Hint         := Hilf(327);
  SpeedDatei.Hint           := Hilf(328);
  DatenEingabe1.Caption     := Tx(55);
  manuell1.Caption          := Tx(56);
  ausDatei.Caption          := Tx(57);
  Hilfe1.Caption            := Tx(162)+' (F1)';
  LabelPlot.Caption         := Tx(736);   {Plotten}
  Labeleines.Caption        := Tx(737);   {eines}
  LabelWoodcock.Caption     := Tx(738);   {Woodcock-Diagramms}
//  LabelAutor.Caption        := Tx(74);
  Buttonweiter.Caption      := Tx(76);
  Buttonzurueck.Caption     := Tx(30);
  Buttonbeenden.Caption     := Tx(53);
  LabelDatenEingabe.Caption := Tx(77);
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

procedure TForm42.ButtonweiterClick(Sender: TObject);
begin
  if EingabeS = 'manuell' then Form43.Show
  else Form44.Show;
end;

procedure TForm42.ButtonzurueckClick(Sender: TObject);
begin
  Form42.Close;
end;

procedure TForm42.ButtonbeendenClick(Sender: TObject);
begin
  Form42.Close;
  SetCurrentDir(DirectS);
end;


procedure TForm42.manuell1Click(Sender: TObject);
begin
  Buttonweiter.Enabled       := true;
  LabelDateneingabe.Enabled  := true;
  LabelvonFestplatte.Caption := Tx(167);                       {manuell}
  EingabeS                   := 'manuell';
end;

procedure TForm42.ausDateiClick(Sender: TObject);
begin
  EingabeS                   := 'Festplatte';
  LabelDateneingabe.Enabled  := true;
  Buttonweiter.Enabled       := true;
  LabelvonFestplatte.Caption := Tx(57); {aus einer datei}
end;

procedure TForm42.Hilfe1Click(Sender: TObject);
var
  DateiS      : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\wood6p4b.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\Woodcock-main.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm42.SpeedHilfeClick(Sender: TObject);
begin
  Hilfe1Click(Sender);                         {Hilfe noch nicht installiert}
end;

procedure TForm42.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Woodcock-Diagramm.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'Woodcock-Diagram-E.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm42.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm42.SpeedmanuellClick(Sender: TObject);
begin
  manuell1Click(Sender);
end;

procedure TForm42.SpeedDateiClick(Sender: TObject);
begin
  ausDateiClick(Sender);
end;

procedure TForm42.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm42.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

procedure TForm42.MaskEditMaxKeyPress(Sender: TObject; var Key: Char);
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
