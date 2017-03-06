library Gefprog3;        {Plotten von Daten}

uses
  dialogs,
  Globvar,
  Forms,
  LiesConf,
  ActiveX,
  Texte,
  Unit9 in 'Unit9.pas' {Form9,  Daten, Hauptformular},
  Unit10 in 'Unit10.pas' {Form10, Daten manuell},
  Unit11 in 'Unit11.pas' {Form11, Daten Datenträger},
  Unit12 in 'Unit12.pas' {Form12, Daten, Grafik},
  Unit64 in 'Unit64.pas' {Form64, Excel};

procedure GefProgramm3; export;
begin
{$R *.RES}
  Programm := 3;
  getDir(0,DirectS);
  LiesConfig;
  LiesLizenz;
  Application.Initialize;
  Application.CreateForm(TForm9, Form9);
  Application.CreateForm(TForm10, Form10);
  Application.CreateForm(TForm11, Form11);
  Application.CreateForm(TForm12, Form12);
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
  GefProgramm3 index 1;

begin
end.

