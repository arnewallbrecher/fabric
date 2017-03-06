library Gefprog28;  //Mohrsche Kreise

uses
  Globvar, Forms, Liesconf, texte, Standard,
  Unit90 in 'Unit90.pas' {Form90},
  Unit91 in 'Unit91.pas' {Form91};

procedure GefProgramm28; export;
begin
{$R *.RES}
  Programm := 28;
  getDir(0,DirectS);
  FabIni;
  LiesConfig;
  LiesLizenz;
  Application.Initialize;
  Application.CreateForm(TForm90, Form90);
  Application.CreateForm(TForm91, Form91);
  Application.Icon.LoadFromFile('Symbol1.ico');
  Application.Run;
end;

exports
  GefProgramm28 index 1;

begin
end.

