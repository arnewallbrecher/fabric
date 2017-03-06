library Gefprog27;  //Rf/Phi-Methode
uses
  Globvar, Liesconf, texte, Forms, Standard,
  Unit86 in 'Unit86.pas' {Form86, Hauptformular},
  Unit87 in 'Unit87.pas' {Form87, BildImportieren},
  Unit88 in 'Unit88.pas' {Form88, Graphik},
  Rfphi  in 'Rfphi.pas';

procedure GefProgramm27; export;
begin
{$R *.RES}
  Programm := 27;
  getDir(0,DirectS);
  FabIni;
  LiesConfig;
  LiesLizenz;
  Application.Initialize;
  Application.CreateForm(TForm86, Form86);
  Application.CreateForm(TForm87, Form87);
  Application.CreateForm(TForm88, Form88);
  Application.Icon.LoadFromFile('Symbol1.ico');
  Application.Run;
end;

exports
  GefProgramm27 index 1;

begin
end.
