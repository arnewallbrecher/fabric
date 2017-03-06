library GefProg29;   //Flinn-Diagramm

uses
  Globvar, Forms, Liesconf, texte, Standard,
  Unit95 in 'Unit95.pas' {Form95, Flinn-Haupt},
  Unit96 in 'Unit96.pas' {Form96, manuelle Eingabe},
  Unit97 in 'Unit97.pas' {Form97, Diskette},
  Unit98 in 'Unit98.pas' {Form98, Plot};

procedure GefProgramm29; export;
begin
{$R *.RES}
  Programm := 29;
  getDir(0,DirectS);
  FabIni;
  LiesConfig;
  LiesLizenz;
  Application.Initialize;
  Application.CreateForm(TForm95, Form95);
  Application.CreateForm(TForm96, Form96);
  Application.CreateForm(TForm97, Form97);
  Application.CreateForm(TForm98, Form98);
  Application.Icon.LoadFromFile('Symbol1.ico');
  Application.Run;
end;

exports
  GefProgramm29 index 1;

begin
end.
