library Gefprog9;   //Lagekugeln

uses
  Globvar, Forms, LiesConf, Texte, Dialogs, SysUtils, Standard,
  Unit36 in 'Unit36.pas' {Form36},
  Unit37 in 'Unit37.pas' {Form37, Projektionen, Plot},
  Unit75 in 'Unit75.pas' {Form75, Zählkalotten};

procedure GefProgramm9; export;

begin
{$R *.RES}
  Programm := 9;
  getDir(0,DirectS);
  FabIni;
  LiesConfig;
  LiesLizenz;
  Application.Initialize;
  Application.CreateForm(TForm36, Form36);
  Application.CreateForm(TForm37, Form37);
  Application.CreateForm(TForm75, Form75);
  Application.Icon.LoadFromFile('Symbol1.ico');
  Application.Run;
end;

exports
  GefProgramm9 index 1;

begin
end.

