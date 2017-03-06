library Gefprog10;       {R% - G% - Diagramm}

uses Globvar, Forms, LiesConf, Texte,
  Unit38 in 'Unit38.pas' {Form38-Hauptformular},
  Unit39 in 'Unit39.pas' {Form39-manuell},
  Unit40 in 'Unit40.pas' {Form40-Diskette},
  Unit41 in 'Unit41.pas' {Form41-Plot};

procedure GefProgramm10; export;

begin
{$R *.RES}
  Programm := 10;
  getDir(0,DirectS);
  LiesConfig;
  LiesLizenz;
  Application.Initialize;
  Application.CreateForm(TForm38, Form38);
  Application.CreateForm(TForm39, Form39);
  Application.CreateForm(TForm40, Form40);
  Application.CreateForm(TForm41, Form41);
  Application.Icon.LoadFromFile('Symbol1.ico');
  Application.Run;
end;

exports
  GefProgramm10 index 1;

begin
end.

