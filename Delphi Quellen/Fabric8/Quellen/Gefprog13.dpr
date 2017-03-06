library Gefprog13;       {Woodcock-Diagramm}

uses Globvar, Forms, LiesConf, Texte, Standard,
  Unit42 in 'Unit42.pas' {Form42, Woodcock-Diagramm Hauptformular},
  Unit43 in 'Unit43.pas' {Form43, Woodcock-Diagramm manuell},
  Unit44 in 'Unit44.pas' {Form44, Woodcock-Diagramm Diskette},
  Unit45 in 'Unit45.pas' {Form45, Plot};

procedure GefProgramm13; export;

begin
{$R *.RES}
  Programm := 13;
  getDir(0,DirectS);
  FabIni;
  LiesConfig;
  LiesLizenz;
  Application.Initialize;
  Application.CreateForm(TForm42, Form42);
  Application.CreateForm(TForm43, Form43);
  Application.CreateForm(TForm44, Form44);
  Application.CreateForm(TForm45, Form45);
  Application.Icon.LoadFromFile('Symbol1.ico');
  Application.Run;
end;

exports
  GefProgramm13 index 1;

begin
end.

