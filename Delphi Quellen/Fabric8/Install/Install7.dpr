program Install7;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1, Install},
  Unit2 in 'Unit2.pas' {Form2};
{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Icon.LoadFromFile('Symbol1.ico');
  Application.Run;
end.
