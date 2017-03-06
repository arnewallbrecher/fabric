library Gefprog22;  //Fry-Methode

uses
  SysUtils, Globvar, Forms, Liesconf, Texte,
  Unit65 in 'Unit65.pas' {Form65, Fry-Methode},
  Unit66 in 'Unit66.pas' {Form66},
  Unit67 in 'Unit67.pas' {Form67};

procedure GefProgramm22; export;
begin
{$R *.RES}
  Programm := 22;
  DirectS:=ExtractFilePath(ParamStr(0));
  SetCurrentDir(DirectS);
  LiesConfig;
  LiesLizenz;
  Application.Initialize;
  Application.CreateForm(TForm65, Form65);
  Application.CreateForm(TForm66, Form66);
  Application.CreateForm(TForm67, Form67);
  Application.Icon.LoadFromFile('Symbol1.ico');
  Application.Run;
end;

exports
  GefProgramm22 index 22;

begin
end.

 