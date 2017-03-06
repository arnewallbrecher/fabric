library Gefprog5;
uses
  Globvar, Forms, LiesConf, Texte, Standard,
  Unit13 in 'Unit13.pas' {Form13,  Kleinkreise, Hauptformular},
  Unit14 in 'Unit14.pas' {Form14, Kleinkreise, Daten},
  Unit12 in 'Unit12.pas' {Form12, Grafik},
  Unit89 in 'Unit89.pas' {Form89, aus Datei};

procedure GefProgramm5; export;

begin
{$R *.RES}
  Programm := 5;
  getDir(0,DirectS);
  FabIni;
  LiesConfig;
  LiesLizenz;
  Application.Initialize;
  Application.CreateForm(TForm13, Form13);
  Application.CreateForm(TForm14, Form14);
  Application.CreateForm(TForm12, Form12);
  Application.CreateForm(TForm89, Form89);
  Application.Icon.LoadFromFile('Symbol1.ico');
  Application.Run;
end;

exports
  GefProgramm5 index 1;
end.
