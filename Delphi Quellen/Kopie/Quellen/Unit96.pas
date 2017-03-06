unit Unit96;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, Globvar, ExtCtrls;

type
  TForm96 = class(TForm)
    StatusBar: TStatusBar;
    ButtonZurueck: TButton;
    ButtonBeenden: TButton;
    LabelDemo: TLabel;
    ListBox1: TListBox;
    PanelDaten: TPanel;
    LabelDaten: TLabel;
    PanelAchsen: TPanel;
    LabelAchsen: TLabel;
    LabelAchse2: TLabel;
    LabelEingabe: TLabel;
    LabelLange: TLabel;
    Panelmax: TPanel;
    LabelMax: TLabel;
    LabelZahl: TLabel;
    procedure FormShow(Sender: TObject);
    procedure ShowHint(Sender: TObject);
    procedure ButtonZurueckClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ButtonBeendenClick(Sender: TObject);
  end;

var
  Form96: TForm96;

implementation

uses Unit95;

{$R *.DFM}
procedure TForm96.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm96.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm96.FormActivate(Sender: TObject);
begin
  Left   := 115;
  Top    := 80;
  Width  := 800;
  Height := 620;
  LabelDemo.Visible     := false;
  if DemoB then LabelDemo.Visible  := true;
  Form96.Caption        := Tx(1540);
  Buttonzurueck.Hint    := Hilf(18);
  Buttonbeenden.Hint    := Hilf(30);
  ButtonZurueck.Caption := Tx(30);
  ButtonBeenden.Caption := Tx(53);
  LabelDaten.Caption    := Tx(183);  {Daten:}
  LabelAchsen.Caption   := Tx(1541);
  LabelAchsen2.Caption  := Tx(1542);
  LabelEingabe.Caption  := Tx(1543); 
end;

procedure TForm96.ButtonZurueckClick(Sender: TObject);
begin
  Form96.close;
end;

procedure TForm96.ButtonBeendenClick(Sender: TObject);
begin
  Form96.Close;
  Form95.Close;
  SetCurrentDir(DirectS);
end;

end.
 