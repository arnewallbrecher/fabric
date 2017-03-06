library Gefprog18;       {Talpha-Methode}

uses
  Globvar,
  Forms,
  LiesConf,
  Texte,
  Unit52 in 'Unit52.pas' {Form52, Talpha, Hauptformular},
  Unit53 in 'Unit53.pas' {Form53, Talpha, manuell},
  Unit54 in 'Unit54.pas' {Form54, Talpha, Diskette},
  Unit55 in 'Unit55.pas' {Form55, Talpha, Plot},
  Unit69 in 'Unit69.pas' {Form69, Talpha, Daten aus Bild};

procedure GefProgramm18; export;

begin
{$R *.RES}
  Programm := 18;
  getDir(0,DirectS);
  LiesConfig;
  LiesLizenz;
  Application.Initialize;
  Application.CreateForm(TForm52, Form52);
  Application.CreateForm(TForm53, Form53);
  Application.CreateForm(TForm54, Form54);
  Application.CreateForm(TForm55, Form55);
  Application.CreateForm(TForm69, Form69);
  Application.Icon.LoadFromFile('Symbol1.ico');
  Application.Run;
end;

exports
  GefProgramm18 index 1;

begin
end.

