library Gefprog30;

uses
  Globvar,
  Forms,
  LiesConf,
  ActiveX,
  Texte,
  Standard,
  Dialogs,
  Unit101 in 'Unit101.pas' {Form101, Wellman, Hauptformular},
  Unit102 in 'Unit102.pas' {Form102},
  Unit103 in 'Unit103.pas' {Form103};

procedure GefProgramm30; export;
begin
{$R *.RES}
  Programm := 30;
  getDir(0,DirectS);
  FabIni;
  LiesConfig;
  LiesLizenz;
  Application.Initialize;
  Application.CreateForm(TForm101, Form101);
  Application.CreateForm(TForm102, Form102);
  Application.CreateForm(TForm103, Form103);
  Application.Icon.LoadFromFile('Symbol1.ico');
  CoInitialize (nil);
  try
    Application.Run;
  finally
    CoUninitialize;
  end;
end;

exports
  GefProgramm30 index 1;

begin
end.

 