library Gefprog19;  {Rekonstruktion von Daten}

uses
  Globvar, Forms, LiesConf, Texte, Standard,
  Unit56 in 'Unit56.pas' {Form56, Einlesen, Hauptformular},
  Unit57 in 'Unit57.pas' {Form57, Plot};

procedure GefProgramm19; export;

begin
{$R *.RES}
  Programm := 19;
  getDir(0,DirectS);
  FabIni;
  LiesConfig;
  LiesLizenz;
  Application.Initialize;
  Application.CreateForm(TForm56, Form56);
  Application.CreateForm(TForm57, Form57);
  Application.Icon.LoadFromFile('Symbol1.ico');
  Application.Run;
end;

exports
  GefProgramm19 index 1;

begin
end.
 