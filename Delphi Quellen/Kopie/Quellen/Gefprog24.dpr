library Gefprog24; // Isogonen

uses
  Globvar, Forms, Liesconf, texte, SysUtils, Dialogs,
  Unit73 in 'Unit73.pas' {Form73},
  Unit74 in 'Unit74.pas' {Form74};

procedure GefProgramm24; export;
begin
{$R *.RES}
  Programm := 24;
  getDir(0,DirectS);
  if not fileexists (DirectS+'\'+'Lizenz.bin') then
    showmessage ('no licence')
  else
  begin
    LiesConfig;
    LiesLizenz;
    Application.Initialize;
    Application.CreateForm(TForm73, Form73);
    Application.CreateForm(TForm74, Form74);
    Application.Icon.LoadFromFile('Symbol1.ico');
    Application.Run;
  end;
end;

exports
  GefProgramm24 index 1;
begin
end.











