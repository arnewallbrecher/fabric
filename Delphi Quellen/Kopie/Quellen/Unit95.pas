unit Unit95;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, ComCtrls, StdCtrls, ExtCtrls, Texte,
  Globvar, Menus;

type
  TForm95 = class(TForm)
    StatusBar: TStatusBar;
    PanelHaupt: TPanel;
    Image1: TImage;
    StaticText1: TStaticText;
    LabelFlinn: TLabel;
    LabelAchsen: TLabel;
    LabelDemo: TLabel;
    ButtonWeiter: TButton;
    ButtonZurueck: TButton;
    ButtonBeenden: TButton;
    MainMenu1: TMainMenu;
    DEingabe: TMenuItem;
    manuell: TMenuItem;
    Datei: TMenuItem;
    Panel3: TPanel;
    LabelEinstellung: TLabel;
    LabelEingabe: TLabel;
    Labelmanuell: TLabel;
    Skalierung: TMenuItem;
    linear: TMenuItem;
    Logarithmisch: TMenuItem;
    LabelSkala: TLabel;
    LabelLinear: TLabel;
    procedure FormShow(Sender: TObject);
    procedure ShowHint(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ButtonWeiterClick(Sender: TObject);
    procedure ButtonZurueckClick(Sender: TObject);
    procedure ButtonBeendenClick(Sender: TObject);
    procedure manuellClick(Sender: TObject);
    procedure DateiClick(Sender: TObject);
    procedure linearClick(Sender: TObject);
    procedure LogarithmischClick(Sender: TObject);
  end;

var
  Form95: TForm95;
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
begin
  Left   := 115;
  Top    := 80;
  Width  := 800;
  Height := 620;
  Form95.Caption := Tx(1534);
  LabelDemo.Visible               := false;
  if DemoB then LabelDemo.Visible := true;
  for i := 1 to 2 do Gedrueckt[i] := false;
  ButtonWeiter.Enabled := false;
  Buttonweiter.Hint    := Hilf(67);
  Buttonzurueck.Hint   := Hilf(18);
  Buttonbeenden.Hint   := Hilf(30);
  LabelFlinn.Caption   := Tx(1535);
  LabelAchsen.Caption  := Tx(1536);
  DEingabe.Caption     := Tx(55);
  manuell.Caption      := Tx(56);
  Datei.Caption        := Tx(57);
  LabelEinstellung.Caption := Tx(75);
  LabelEingabe.Caption     := Tx(55);
  LabelManuell.Caption     := '';
  Skalierung.Caption       := Tx(1537);
  linear.Caption           := Tx(1538);
  logarithmisch.Caption    := Tx(1539);
  LabelSkala.Caption       := Tx(1537);
  LabelLinear.Caption      := '';
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
  ButtonWeiter.Enabled  := false;
  Gedrueckt[1] := true;
  if Gedrueckt[1] and Gedrueckt[2] then Buttonweiter.Enabled := true;                {Button1 = weiter}
  Labelmanuell.Caption := Tx(167);                          {manuell}
  EingabeS := 'manuell';
end;

procedure TForm95.DateiClick(Sender: TObject);
begin
  Gedrueckt[1]         := true;
  if Gedrueckt[1] and Gedrueckt[2] then
    Buttonweiter.Enabled := true;
  Labelmanuell.Caption := Tx(57); {aus einer Datei}
  EingabeS             := 'Festplatte';
end;

procedure TForm95.linearClick(Sender: TObject);
begin
  SkalaS       := 'linear';
  Gedrueckt[2] := true;
  if Gedrueckt[1] and Gedrueckt[2] then
    Buttonweiter.Enabled := true;
  LabelLinear.Caption    := Tx(1538);
end;

procedure TForm95.LogarithmischClick(Sender: TObject);
begin
  SkalaS       := 'logarithmisch';
  Gedrueckt[2] := true;
  if Gedrueckt[1] and Gedrueckt[2] then
    Buttonweiter.Enabled := true;
  LabelLinear.Caption    := Tx(1538);
end;

end.
