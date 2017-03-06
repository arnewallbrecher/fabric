unit Unit48;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, ExtCtrls, StdCtrls, Menus, Globvar, Texte,
  ComCtrls, Buttons, Shellapi, Mask, ehsHelpRouter;

type
  TForm48 = class(TForm)
    Panel1         : TPanel;
    LabelFourier   : TLabel;
    Labelzur       : TLabel;
    LabelvonFalten : TLabel;

    Panel2             : TPanel;
    LabelDateneingabe  : TLabel;
    LabelvonFestplatte : TLabel;

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
    BildImportieren: TMenuItem;
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
    procedure BildImportierenClick(Sender: TObject);
    procedure SpeedBildClick(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
    procedure SpeedLiteraturClick(Sender: TObject);
    procedure MaskEditMaxKeyPress(Sender: TObject; var Key: Char);
  end;

var
  Form48    : TForm48;
  Gedrueckt : boolean;

implementation
uses Unit49, Unit50, Unit68;
{$R *.DFM}

procedure TForm48.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm48.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;


procedure TForm48.FormActivate(Sender: TObject);
begin
  Left   := 115;
  Top    := 80;
  Width  := 800;
  Height := 620;
  LabelDemo.Visible                := false;
  if DemoB then LabelDemo.Visible  := true;
  Form48.Caption             := Tx(752);    {Fabric7: Fourier-Analyse}
  Panel2.Hint                := Hilf(131);
  Buttonweiter.Hint          := Hilf(48);
  Buttonzurueck.Hint         := Hilf(18);
  Buttonbeenden.Hint         := Hilf(30);
  SpeedHandbuch.Hint         := Hilf(274);
  SpeedHilfe.Hint            := Hilf(210);
  SpeedManuell.Hint          := Hilf(327);
  SpeedDatei.Hint            := Hilf(328);
  SpeedBild.Hint             := Hilf(345);
  DatenEingabe1.Caption      := Tx(55);
  manuell1.Caption           := Tx(56);
  ausDatei.Caption           := Tx(57);
  Hilfe1.Caption             := Tx(162)+' (F1)';
  LabelFourier.Caption       := Tx(812);    {Fourier-Analyse}
  Labelzur.Caption           := Tx(753);    {zur quantitativen Beschreibung}
  LabelvonFalten.Caption     := Tx(754);    {von Faltenformen}
//  LabelAutor.Caption         := Tx(74);
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
  BildImportieren.Caption    := Tx(1064);
  LabelMax.Caption      := Tx(981);
  MaskEditMax.EditMask  := '99999;0; ';
  MaskEditMax.Text      := IntToStr(MaxDaten);
end;

procedure TForm48.ButtonweiterClick(Sender: TObject);
begin
  if EingabeS = 'manuell' then Form49.Show;
  if EingabeS = 'Festplatte' then Form50.Show;
  if EingabeS = 'Bild'    then Form68.Show;
end;

procedure TForm48.ButtonzurueckClick(Sender: TObject);
begin
  Form48.Close;
end;

procedure TForm48.ButtonbeendenClick(Sender: TObject);
begin
  Form48.Close;
  SetCurrentDir(DirectS);
end;

procedure TForm48.manuell1Click(Sender: TObject);
begin
  Buttonweiter.Enabled       := true;
  LabelDateneingabe.Enabled  := true;
  LabelvonFestplatte.Caption := Tx(167);                      {manuell}
  EingabeS                   := 'manuell';
end;

procedure TForm48.ausDateiClick(Sender: TObject);
begin
  EingabeS                   := 'Festplatte';
  LabelDateneingabe.Enabled  := true;
  Buttonweiter.Enabled       := true;
  LabelvonFestplatte.Caption := Tx(57); {aus einer Datei}
end;

procedure TForm48.BildImportierenClick(Sender: TObject);
begin
  ButtonWeiter.Enabled       := true;
  EingabeS                   := 'Bild';
  LabelDateneingabe.Enabled  := true;
  LabelVonFestplatte.Caption := Tx(1064);
end;

procedure TForm48.Hilfe1Click(Sender: TObject);
var
  DateiS      : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\Fourier-main.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\Fourier-main.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm48.SpeedHilfeClick(Sender: TObject);
begin
  Hilfe1Click(Sender);
end;

procedure TForm48.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Fourier-Analyse.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'Fourier_analysis.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm48.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm48.SpeedmanuellClick(Sender: TObject);
begin
  manuell1Click(Sender);
end;

procedure TForm48.SpeedDateiClick(Sender: TObject);
begin
  ausDateiClick(Sender);
end;

procedure TForm48.SpeedBildClick(Sender: TObject);
begin
  BildImportierenClick(Sender);
end;

procedure TForm48.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm48.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

procedure TForm48.MaskEditMaxKeyPress(Sender: TObject; var Key: Char);
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
