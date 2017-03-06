library Gefprog22;  //Fry-Methode

uses
  SysUtils, Globvar, Forms, Liesconf, Texte, Standard,
  Unit65 in 'Unit65.pas' {Form65, Fry-Methode},
  Unit66 in 'Unit66.pas' {Form66, Bild importieren},
  Unit67 in 'Unit67.pas' {Form67, Plot};

procedure GefProgramm22; export;
begin
{$R *.RES}
  Programm := 22;
  getDir(0,DirectS);
  FabIni;
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

 