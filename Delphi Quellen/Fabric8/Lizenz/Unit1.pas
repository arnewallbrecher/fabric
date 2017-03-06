unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, ExtCtrls, Globvar, Mask;

type
  TForm1 = class(TForm)
    Panel1        : TPanel;
    Lizenz        : TLabel;
    Programm      : TLabel;
    Image1        : TImage;
    ButtonStart   : TButton;
    ButtonBeenden : TButton;
    GroupBox      : TGroupBox;
    MaskEditName  : TMaskEdit;
    MaskEditTag   : TMaskEdit;
    LabelTag      : TLabel;
    LabelMonat    : TLabel;
    MaskEditMonat : TMaskEdit;
    MaskEditJahr  : TMaskEdit;
    LabelJahr     : TLabel;
    CheckBoxLizenz: TCheckBox;
    Buttonzuweisen: TButton;

    procedure FormShow(Sender: TObject);
    procedure ButtonStartClick(Sender: TObject);
    procedure ButtonBeendenClick(Sender: TObject);
    procedure ButtonzuweisenClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure MaskEditNameKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditTagKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditJahrKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditMonatKeyPress(Sender: TObject; var Key: Char);
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.FormShow(Sender: TObject);
begin
  getDir(0,DirectS);
  Image1.Picture.LoadfromFile (DirectS+'\'+'GeolSoft.wmf');
  Image1.Stretch := true;
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
  MaskEditName.Enabled     := false;
  MaskEditTag.Enabled      := false;
  MaskEditMonat.Enabled    := false;
  MaskEditJahr.Enabled     := false;
  CheckboxLizenz.Enabled   := false;
  MaskEditName.Text := 'Demo-Version, valid 60 days since';
end;

procedure TForm1.ButtonStartClick(Sender: TObject);
begin
  MaskEditName.Enabled     := true;
  MaskEditName.SetFocus;
end;

procedure TForm1.MaskEditNameKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(13) then
  begin
    MaskEditTag.Enabled := true;
    MaskEditTag.SetFocus;
  end;
end;

procedure TForm1.MaskEditTagKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(13) then
  begin
    if StrtoInt(MaskEditTag.Text) > 31 then
    begin
      Showmessage('Tag falsch eingegeben');
      MaskEditTag.Text :='  ';
    end;
    MaskEditMonat.Enabled := true;
    MaskEditMonat.SetFocus;
  end;
end;

procedure TForm1.MaskEditMonatKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(13) then
  begin
    if StrtoInt(MaskEditMonat.Text) > 12 then
    begin
      Showmessage('Monat falsch eingegeben');
      MaskEditMonat.Text :='  ';
    end;
    MaskEditJahr.Enabled := true;
    MaskEditJahr.SetFocus;
  end;
end;

procedure TForm1.MaskEditJahrKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(13) then
    CheckBoxLizenz.Enabled := true;
end;

procedure TForm1.ButtonzuweisenClick(Sender: TObject);
type
  tLizenz =  packed record
               LizName     : string[80];
               AnfangJahr  : word;
               AnfangMonat : word;
               AnfangTag   : word;
               DemoJaNein  : integer;
               Passwort    : string[6];
             end;
  DateiTyp = file of tLizenz;
var
  Datei : Dateityp;
  Zeile : tLizenz;
begin
  assignFile (Datei, DirectS+'\'+'Lizenz.bin');
  rewrite (Datei);
  Zeile.LizName     := MaskEditName.Text;
  Zeile.AnfangJahr  := StrtoInt(MaskEditJahr.Text);
  Zeile.AnfangMonat := StrtoInt(MaskEditMonat.Text);
  Zeile.AnfangTag   := StrtoInt(MaskEditTag.Text);
  if CheckBoxLizenz.State = cbChecked then
    Zeile.DemoJaNein      := 2086138754
    else Zeile.DemoJaNein := 0;
//  Zeile.Passwort    := MaskEditPasswort.Text;;
  write  (Datei, Zeile);
  CloseFile(Datei);
  showmessage ('Lizenz.bin wurde erzeugt');
end;

procedure TForm1.ButtonBeendenClick(Sender: TObject);
begin
  Form1.Close;
end;

end.


