library Gefprog16;       {Vollmer-Diagramm}

uses Globvar, Forms, LiesConf, Texte, Standard,
  Unit46 in 'Unit46.pas' {Form46, Vollmer, Hauptformular},
  Unit43 in 'Unit43.pas' {Form43, Woodcock, manuell},
  Unit44 in 'Unit44.pas' {Form44, Woodcock, Diskette},
  Unit47 in 'Unit47.pas' {Form47, Vollmer Plot};

procedure GefProgramm16; export;

begin
{$R *.RES}
  Programm := 16;
  getDir(0,DirectS);
  FabIni;
  LiesConfig;
  LiesLizenz;
  Application.Initialize;
  Application.CreateForm(TForm46, Form46);
  Application.CreateForm(TForm43, Form43);
  Application.CreateForm(TForm44, Form44);
  Application.CreateForm(TForm47, Form47);
  Application.Icon.LoadFromFile('Symbol1.ico');
  Application.Run;
end;

exports
  GefProgramm16 index 1;

begin
end.

