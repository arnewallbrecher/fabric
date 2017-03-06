library Gefprog23;     // Panozzo Methode

uses
  Liesconf, Globvar, Texte, Forms, Standard,
  Unit70 in 'Unit70.pas' {Form70},   //Hauptformular
  Unit71 in 'Unit71.pas' {Form71},   //Polygone eingeben
  Unit72 in 'Unit72.pas' {Form72};   //Graphik

procedure GefProgramm23; export;
{$R *.RES}

begin
  Programm := 23;
  getDir(0,DirectS);
  FabIni;
  LiesConfig;
  LiesLizenz;
  Application.Initialize;
  Application.CreateForm(TForm70, Form70);
  Application.CreateForm(TForm71, Form71);
  Application.CreateForm(TForm72, Form72);
  Application.Icon.LoadFromFile('Symbol1.ico');
  Application.Run;
end;

exports
  GefProgramm23 index 1;
begin
end.

 