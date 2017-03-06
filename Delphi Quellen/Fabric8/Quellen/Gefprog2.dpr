library Gefprog2;

uses
  Globvar, Forms, LiesConf, Texte, Standard, SysUtils,
  Unit6 in 'Unit6.pas' {Form6,  Rotation, Hauptformular},
  Unit7 in 'Unit7.pas' {Form7,  Rotation, manuell},
  Unit8 in 'Unit8.pas' {Form8,  Rotation, Festplatte},
  Unit64 in 'Unit64.pas' {Form64, Excel},
  Unit93 in 'Unit93.pas' {Form93};

procedure GefProgramm2; export;
begin
{$R *.RES}
  Programm := 2;
  getDir(0,DirectS);
  FabIni;
  LiesConfig;
  LiesLizenz;
  Application.Initialize;
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TForm8, Form8);
  Application.CreateForm(TForm64, Form64);
  Application.CreateForm(TForm93, Form93);
  Application.Icon.LoadFromFile('Symbol1.ico');
  Application.Run;
end;

exports
  GefProgramm2 index 1;

begin
end.
