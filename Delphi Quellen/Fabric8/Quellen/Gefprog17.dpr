library Gefprog17;       {Formfaktor}

uses
  Globvar, Forms, LiesConf, Texte, Standard, ActiveX,
  Unit35 in 'Unit35.pas' {Form35, Hauptformular},
  Unit27 in 'Unit27.pas' {Form27, Paläospannung, Manuelle Eingabe},
  Unit28 in 'Unit28.pas' {Form28, Paläospannung, Eingabe von Diskette},
  Unit34 in 'Unit34.pas' {Form34, Plot},
  Unit94 in 'Unit94.pas' {Form94, Excel},
  Unit99 in 'Unit99.pas' {Form99. Iteration},
  Unit100 in 'Unit100.pas' {Form100, Inversion},
  Grafik in 'Grafik.pas';

procedure GefProgramm17; export;

begin
{$R *.RES}
  Programm := 17;
  getDir(0,DirectS);
  FabIni;
  LiesConfig;
  LiesLizenz;
  Application.Initialize;
  Application.CreateForm(TForm35, Form35);
  Application.CreateForm(TForm27, Form27);
  Application.CreateForm(TForm28, Form28);
  Application.CreateForm(TForm34, Form34);
  Application.CreateForm(TForm94, Form94);
  Application.CreateForm(TForm99, Form99);
  Application.CreateForm(TForm100, Form100);
  Application.Icon.LoadFromFile('Symbol1.ico');
  CoInitialize (nil);
  try 
    Application.Run;
  finally
    CoUninitialize;
  end;
end;

exports
  GefProgramm17 index 1;

begin
end.

