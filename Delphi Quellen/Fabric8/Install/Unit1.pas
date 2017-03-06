unit unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Menus, Basic, Globvar, LiesConf;

type
  TForm1 = class(TForm)

    Panel1           : TPanel;
    LabelInstall     : TLabel;
    LabelProgrammzur : TLabel;

    ButtonStart   : TButton;
    Buttonzurueck : TButton;
    Image1: TImage;

    procedure ButtonStartClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ButtonzurueckClick(Sender: TObject);
  end;

var
  Form1    : TForm1;

implementation

uses Unit2;
{$R *.DFM}

procedure TForm1.FormShow(Sender: TObject);
begin
  getDir(0,DirectS);
  Image1.Picture.LoadfromFile (DirectS+'\'+'GeolSoft.wmf');
  Image1.Stretch := true;
end;

procedure TForm1.ButtonStartClick(Sender: TObject);
begin
  Form2.Show;
end;

procedure TForm1.ButtonzurueckClick(Sender: TObject);
begin
  if MessageDlg ('zurück zu Windows', mtInformation, mbOKCancel,0)
  <> 2 then Form1.Close else exit;
end;

end.
