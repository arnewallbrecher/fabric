library Gefprog14;       {Hoeppener-Diagramm}

uses
  Globvar, Forms, LiesConf, Texte, Standard, ActiveX,
  Unit32 in 'Unit32.pas' {Form32},
  Unit27 in 'Unit27.pas' {Form27, Paläospannung, Manuelle Eingabe},
  Unit28 in 'Unit28.pas' {Form28, Paläospannung, Eingabe von Diskette},
  Unit33 in 'Unit33.pas' {Form33, Harnische & Hoeppener, Plot},
  Unit94 in 'Unit94.pas' {Form94, Excel};

procedure GefProgramm14; export;

begin
{$R *.RES}
  Programm := 14;
  getDir(0,DirectS);
  FabIni;
  LiesConfig;
  LiesLizenz;
  Application.Initialize;
  Application.CreateForm(TForm32, Form32);
  Application.CreateForm(TForm27, Form27);
  Application.CreateForm(TForm28, Form28);
  Application.CreateForm(TForm33, Form33);
  Application.CreateForm(TForm94, Form94);
  Application.Icon.LoadFromFile('Symbol1.ico');
  CoInitialize (nil);
  try 
    Application.Run;
  finally
    CoUninitialize;
  end;
end;

exports
  GefProgramm14 index 1;

begin
end.

