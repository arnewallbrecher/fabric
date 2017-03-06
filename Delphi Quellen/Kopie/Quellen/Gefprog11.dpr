library Gefprog11;       {Angelier-Methode}

uses
  Globvar,
  Forms,
  LiesConf,
  Texte,
  Dialogs,
  Graphics,
  Unit26 in 'Unit26.pas' {Form26, Pal�ospannung, Hauptformular},
  Unit27 in 'Unit27.pas' {Form27, Pal�ospannung, Manuelle Eingabe},
  Unit28 in 'Unit28.pas' {Form28, Pal�ospannung, Eingabe von Diskette},
  Unit29 in 'Unit29.pas' {Form29, Pal�ospannung, Plot},
  Unit94 in 'Unit94.pas' {Form94};

procedure GefProgramm11; export;

begin
{$R *.RES}
  Programm := 11;
  getDir(0,DirectS);
  LiesConfig;
  LiesLizenz;
  Application.Initialize;
  Application.CreateForm(TForm26, Form26);
  Application.CreateForm(TForm27, Form27);
  Application.CreateForm(TForm28, Form28);
  Application.CreateForm(TForm29, Form29);
  Application.CreateForm(TForm94, Form94);
  Application.Icon.LoadFromFile('Symbol1.ico');
  Application.Run;
end;

exports
  GefProgramm11 index 1;

begin
end.

