library Gefprog7;

uses
  Globvar, Forms, LiesConf, Texte, Standard, ActiveX,
  Unit15 in 'Unit15.pas' {Form15,  zirk. Daten, Hauptformular},
  Unit16 in 'Unit16.pas' {Form16, zirk.Daten manuell},
  Unit18 in 'Unit18.pas' {Form18, zirk. Daten Eingabe von Diskette},
  Unit19 in 'Unit19.pas' {Form19, plotten},
  Unit78 in 'Unit78.pas' {Form78, von einem Bild},
  Unit92 in 'Unit92.pas' {Form92, Excel};

procedure GefProgramm7; export;
begin
{$R *.RES}
  Programm := 7;
  getDir(0,DirectS);
  FabIni;
  LiesConfig;
  LiesLizenz;
  Application.Initialize;
  Application.CreateForm(TForm15, Form15);
  Application.CreateForm(TForm16, Form16);
  Application.CreateForm(TForm18, Form18);
  Application.CreateForm(TForm19, Form19);
  Application.CreateForm(TForm78, Form78);
  Application.CreateForm(TForm92, Form92);
  Application.Icon.LoadFromFile('Symbol1.ico');
  CoInitialize (nil);
  try 
    Application.Run;
  finally
    CoUninitialize;
  end;
end;

exports
  GefProgramm7 index 1;

begin
end.

