library GefProg20;         {Scherung}

uses
  Globvar, Forms, LiesConf, Texte,
  Unit58 in 'Unit58.pas' {Form58, Scherkasten, Hauptformular},
  Unit59 in 'Unit59.pas' {Form59, Scherkasten};

procedure GefProgramm20; export;
begin
{$R *.RES}
  Programm := 20;
  getDir(0,DirectS);
  LiesConfig;
  LiesLizenz;
  Application.Initialize;
  Application.CreateForm(TForm58, Form58);
  Application.CreateForm(TForm59, Form59);
  Application.Icon.LoadFromFile('Symbol1.ico');
  Application.Run;
end;

exports
  Gefprogramm20 index 1;
    
begin
end.
