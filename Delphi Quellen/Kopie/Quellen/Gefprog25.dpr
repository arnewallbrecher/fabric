library Gefprog25; //Signifikanz
uses
  Globvar, Forms, LiesConf, Texte, SysUtils, Classes,
  Unit76 in 'Unit76.pas' {Form76},
  Unit43 in 'Unit43.pas' {Form43},
  Unit44 in 'Unit44.pas' {Form44},
  Unit77 in 'Unit77.pas' {Form77}; // Graphik

procedure GefProgramm25; export;
begin
  {$R *.RES}
  Programm := 25;
  getDir(0,DirectS);
  LiesConfig;
  LiesLizenz;
  Application.Initialize;
  Application.CreateForm(TForm76, Form76);
  Application.CreateForm(TForm43, Form43);
  Application.CreateForm(TForm44, Form44);
  Application.CreateForm(TForm77, Form77);
  Application.Icon.LoadFromFile('Symbol1.ico');
  Application.Run;
end;

exports
  GefProgramm25 index 1;

begin
end.

 