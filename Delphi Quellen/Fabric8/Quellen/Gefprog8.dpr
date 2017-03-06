library Gefprog8;
  uses
  Globvar, Forms, LiesConf, ActiveX, Texte, Standard,
  Unit20 in 'Unit20.pas' {Form20, GEFUEGE Hauptformular},
  Unit10 in 'Unit10.pas' {Form10, Dateneingabe manuell},
  Unit11 in 'Unit11.pas' {Form11, Dateneingabe von diskette},
  Unit21 in 'Unit21.pas' {Form21, Gefuege Grafik},
  Unit64 in 'Unit64.pas' {Form64, Excel};

procedure GefProgramm8; export;
begin
{$R *.RES}
  Programm := 8;
  getDir(0,DirectS);
  FabIni;
  LiesConfig;
  LiesLizenz;
  Application.Initialize;
  Application.CreateForm(TForm20, Form20);
  Application.CreateForm(TForm10, Form10);
  Application.CreateForm(TForm11, Form11);
  Application.CreateForm(TForm21, Form21);
  Application.CreateForm(TForm64, Form64);
  Application.Icon.LoadFromFile('Symbol1.ico');
  CoInitialize (nil);
  try 
    Application.Run;
  finally
    CoUninitialize;
  end;
end;

exports
  GefProgramm8 index 1;

begin
end.

