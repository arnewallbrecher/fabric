library Gefprog17;       {Formfaktor}

uses Globvar, Forms, LiesConf, Texte,
  Unit35 in 'Unit35.pas' {Form35, Hauptformular},
  Unit27 in 'Unit27.pas' {Form27, Paläospannung, Manuelle Eingabe},
  Unit28 in 'Unit28.pas' {Form28, Paläospannung, Eingabe von Diskette},
  Unit34 in 'Unit34.pas' {Form34, Plot},
  Unit94 in 'Unit94.pas' {Form94, Excel};

procedure GefProgramm17; export;

begin
{$R *.RES}
  Programm := 17;
  getDir(0,DirectS);
  LiesConfig;
  LiesLizenz;
  Application.Initialize;
  Application.CreateForm(TForm35, Form35);
  Application.CreateForm(TForm27, Form27);
  Application.CreateForm(TForm28, Form28);
  Application.CreateForm(TForm34, Form34);
  Application.CreateForm(TForm94, Form94);
  Application.Icon.LoadFromFile('Symbol1.ico');
  Application.Run;
end;

exports
  GefProgramm17 index 1;

begin
end.

