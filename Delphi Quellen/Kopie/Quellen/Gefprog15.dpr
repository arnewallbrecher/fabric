library Gefprog15;       {Harnische und Striemungen als Groﬂkreise}

uses Globvar, Forms, LiesConf, Texte,
  Unit30 in 'Unit30.pas' {Form30, Harnische und Striemungen, Hauptformular},
  Unit27 in 'Unit27.pas' {Form27, Pal‰ospannung, Manuelle Eingabe},
  Unit28 in 'Unit28.pas' {Form28, Pal‰ospannung, Eingabe von Diskette},
  Unit31 in 'Unit31.pas' {Form31, Harnische und Striemungen, Plot},
  Unit94 in 'Unit94.pas' {Form94, Excel};
procedure GefProgramm15; export;

begin
{$R *.RES}
  Programm := 15;
  getDir(0,DirectS);
  LiesConfig;
  LiesLizenz;
  Application.Initialize;
  Application.CreateForm(TForm30, Form30);
  Application.CreateForm(TForm27, Form27);
  Application.CreateForm(TForm28, Form28);
  Application.CreateForm(TForm31, Form31);
  Application.CreateForm(TForm94, Form94);
  Application.Icon.LoadFromFile('Symbol1.ico');
  Application.Run;
end;

exports
  GefProgramm15 index 1;

begin
end.

