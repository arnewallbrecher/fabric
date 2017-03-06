unit Unit2;  {Liste}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs,  StdCtrls, Menus, ExtCtrls, ComCtrls,
  Haupt, Globvar, Texte, Buttons, LiesConf, shellapi, Basic,
  ehsHelpRouter;

type
  TForm2 = class(TForm)
    Panel1          : TPanel;
    LabelWaehlenSie : TLabel;
    Panel2          : TPanel;
    Buttonbeenden   : TButton;
    ListBox1        : TListBox;
    Buttonzuruck    : TButton;
    MainMenu1       : TMainMenu;
    Hilfe1          : TMenuItem;
    StatusBar       : TStatusBar;
    SpeedHilfe      : TSpeedButton;
    Handbuch: TMenuItem;
    LabelDemo: TLabel;
    SpeedHandbuch: TSpeedButton;
    Literatur: TMenuItem;
    SpeedLiteratur: TSpeedButton;

    procedure ButtonbeendenClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure ButtonzuruckClick(Sender: TObject);
    procedure Hilfe1Click(Sender: TObject);
    procedure ListBox1KeyPress(Sender: TObject; var Key: Char);
    procedure ListBox1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ShowHint (Sender: TObject);
    procedure SpeedHilfeClick(Sender: TObject);
    procedure HandbuchClick(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
    procedure SpeedLiteraturClick(Sender: TObject);
  end;

var
  Form2: TForm2;
  Wahl : byte;
  Zahl : byte;

implementation
{$R *.DFM}

procedure TForm2.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

Procedure TForm2.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm2.ButtonbeendenClick(Sender: TObject);
begin
  Form2.Close;
  SetCurrentDir(DirectS);
end;

procedure TForm2.FormActivate(Sender: TObject);
var
  i : byte;
begin
  Left   := LeftDiag;
  Top    := TopDiag;
  Height := 620;
  Width  := 820; 
  for i := 1 to 100 do WeiterB[i] := false;
  ListGefprog;
  LabelDemo.Visible       := false;
  if DemoB then LabelDemo.Visible := true;
  Panel1.Hint             := Hilf(8) + Hilf(9);
  Buttonzuruck.Hint       := Hilf(10);
  Buttonbeenden.Hint      := Hilf(11);
  SpeedHilfe.Hint         := Hilf(210);
  SpeedHandbuch.Hint      := Hilf(274);
  ListBox1.Hint           := Hilf(8) + Hilf(9);
  Hilfe1.Hint             := Hilf(273);
  Form2.Caption           := Tx(52);      {Fabric7: Unterprogramm auswählen}
  LabelWaehlenSie.Caption := Tx(452);     {Wählen Sie die Anwendung mit der}
  Buttonzuruck.Caption    := Tx(30);      {zurück}
  Buttonbeenden.Caption   := Tx(53);      {beenden}
  Hilfe1.Caption          := Tx(162)+' (F1)';
  Handbuch.Caption        := Tx(1055)+' (F2)';
  Literatur.Caption       := Tx(1183)+' (F5)';
  SpeedLiteratur.Hint     := Hilf(462);
  ListBox1.Clear;
  for i := 1 to 39 do
    ListBox1.Items.Add (Ts[i]);
end;

procedure TForm2.ListBox1Click(Sender: TObject);
var
  i : byte;
begin
  Zahl := ListBox1.Items.Count;
  for i := 0 to Zahl - 1 do if Listbox1.Selected [i] then Wahl := i+1;
end;

procedure TForm2.ListBox1KeyPress(Sender: TObject; var Key: Char);
var
  InfoS : string;
  Typ   : TMsgDlgType;
begin

  InfoS := Tx(1225);
  Typ   := mtInformation;
  if (Wahl = 1) or (Wahl = 14) or (Wahl = 20) or (Wahl = 25)
  or (Wahl = 29) or (Wahl = 36) or (Wahl = 38) then exit;
  if key = chr(13) then
    if DlgMessage (Typ, InfoS, Ts[Wahl],2) = 1 then
    WaehlGefProg (Wahl);
end;

procedure TForm2.ListBox1DblClick(Sender: TObject);
var
  InfoS : string;
  Typ   : TMsgDlgType;
begin
  InfoS := Tx(1225);
  Typ := mtInformation;
  if (Wahl = 1) or (Wahl = 14) or (Wahl = 20) or (Wahl = 25)
  or (Wahl = 29) or (Wahl = 35) or (Wahl = 38) then exit;
  if DlgMessage (Typ, InfoS, Ts[Wahl],2) = 1 then
  WaehlGefProg (Wahl);
end;

procedure TForm2.ButtonzuruckClick(Sender: TObject);
begin
  Form2.Close;
end;

procedure TForm2.Hilfe1Click(Sender: TObject);
var
  DateiS : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\2Liste.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\2Programlist.htm');
  end;
//  HelpRouter1.free;
end;

procedure TForm2.SpeedHilfeClick(Sender: TObject);
begin
  Hilfe1Click(Sender);
end;

procedure TForm2.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Allgemeines.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'Introduction.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm2.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender)
end;

procedure TForm2.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm2.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

end.


