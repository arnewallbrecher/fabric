unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, FileCtrl, Mask, Globvar, Texte;

type
  TForm2 = class(TForm)
    GroupBoxGefuege: TGroupBox;
    MaskEditDaten: TMaskEdit;
    LabelDatei: TLabel;
    RadioGroupVista: TRadioGroup;
    RadioButtonja: TRadioButton;
    RadioButtonnein: TRadioButton;
    RadioGroupSprache: TRadioGroup;
    RadioButtonDeutsch: TRadioButton;
    RadioButtonEnglish: TRadioButton;
    Buttoneintragen: TButton;
    Buttonzurueck: TButton;
    Buttonbeenden: TButton;
    LabelMenge: TLabel;
    MaskEditMenge: TMaskEdit;
    procedure FormActivate(Sender: TObject);
    procedure MaskEditDatenKeyPress(Sender: TObject; var Key: Char);
    procedure RadioButtonjaClick(Sender: TObject);
    procedure RadioButtonneinClick(Sender: TObject);
    procedure RadioButtonDeutschClick(Sender: TObject);
    procedure RadioButtonEnglishClick(Sender: TObject);
    procedure ButtoneintragenClick(Sender: TObject);
    procedure ButtonzurueckClick(Sender: TObject);
    procedure ButtonbeendenClick(Sender: TObject);
    procedure MaskEditMengeKeyPress(Sender: TObject; var Key: Char);
  end;

var
  Form2       : TForm2;
  PfadDatenS  : string[250];
  Gedruckt    : array[0..6] of Boolean;
  MaxDatenS   : string[5];
  SystemS     : string;

implementation
uses Unit1;
{$R *.DFM}

procedure TForm2.FormActivate(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
  FnameS: string;
begin
  MaskEditDaten.Enabled      := true;
  MaskEditDaten.SetFocus;
  Buttoneintragen.Enabled    := false;
  MaskEditMenge.Enabled      := false;
  for i := 1 to 4 do Gedruckt[i] := false;
  assignFile(Datei,DirectS+'\'+'Fabric7.ini');
  reset (Datei);
  for i := 1 to ConfigEnde do
    readln (Datei, KonfigZeileS[i]);
  closeFile (Datei);
end;

procedure TForm2.MaskEditDatenKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(13) then
  begin
    PfadDatenS             := MaskEditDaten.Text;
    Gedruckt[1]            := true;
    if Gedruckt[1] and Gedruckt[2] and Gedruckt[3] and Gedruckt[4] then
        Buttoneintragen.Enabled := true;
  end;
end;

procedure TForm2.MaskEditMengeKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(13) then
  begin
    Gedruckt[3] := true;
    if Gedruckt[1] and Gedruckt[2] and Gedruckt[3]
    and Gedruckt[4] then
      Buttoneintragen.Enabled := true;
    MaxDatenS := MaskEditMenge.Text;
  end;
end;

procedure TForm2.RadioButtonjaClick(Sender: TObject);
begin
  SystemS      := 'Vista';
  Gedruckt[4] := true;
  if Gedruckt[1] and Gedruckt[2] and Gedruckt[3]
  and Gedruckt[4] then
    Buttoneintragen.Enabled := true;
end;

procedure TForm2.RadioButtonneinClick(Sender: TObject);
begin
  SystemS     := 'XP';
  Gedruckt[4] := true;
  if Gedruckt[1] and Gedruckt[2] and Gedruckt[3]
  and Gedruckt[4] then
    Buttoneintragen.Enabled := true;
end;

procedure TForm2.RadioButtonDeutschClick(Sender: TObject);
begin
  SpracheS := 'Deutsch';
  Gedruckt[5] := true;
  if Gedruckt[1] and Gedruckt[2] and Gedruckt[3]
  and Gedruckt[4] then
    Buttoneintragen.Enabled := true;
end;

procedure TForm2.RadioButtonEnglishClick(Sender: TObject);
begin
  SpracheS := 'English';
  Gedruckt[5] := true;
  if Gedruckt[1] and Gedruckt[2] and Gedruckt[3]
  and Gedruckt[4] then
    Buttoneintragen.Enabled := true;
end;

procedure TForm2.ButtoneintragenClick(Sender: TObject);
var
  Datei     : TextFile;
  i         : byte;
  Errichten : boolean;
begin
  KonfigZeileS[14]  := PfadDatenS;
  KonfigZeileS[18]  := 'Language                   :,'+SpracheS;
  KonfigZeileS[84]  := 'Maximum number of data     :,'+MaxDatenS;
  KonfigZeileS[129] := 'Windows <= Xp or Vista     :,'+SystemS;
  assignFile(Datei,DirectS+'\'+'Fabric7.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  showmessage(Tx(876));
end;

procedure TForm2.ButtonzurueckClick(Sender: TObject);
begin
  MaskEditDaten.Text     := '';
  MaskEditDaten.Enabled  := false;
  Form2.Close;
end;

procedure TForm2.ButtonbeendenClick(Sender: TObject);
begin
  MaskEditDaten.Text     := '';
  MaskEditDaten.Enabled  := false;
  Form2.Close;
  Form1.Close;
end;

end.
