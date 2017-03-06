library GefProg1;

uses Globvar, Forms, Liesconf, texte, SysUtils, Dialogs,
  Unit3 in 'Unit3.pas' {Form3, Berechnungen},
  Unit4 in 'Unit4.pas' {Form4, Berechnungen, manuell},
  Unit5 in 'Unit5.pas' {Form5, Berechnungen, Diskette};

procedure GefProgramm1; export;
begin
{$R *.RES}
  Programm := 1;
  getDir(0,DirectS);
  if not fileexists (DirectS+'\'+'Lizenz.bin') then
    showmessage ('no licence')
  else
  begin
    LiesConfig;
    LiesLizenz;
    Application.Initialize;
    Application.CreateForm(TForm3, Form3);
    Application.CreateForm(TForm4, Form4);
    Application.CreateForm(TForm5, Form5);
    Application.Icon.LoadFromFile('Symbol1.ico');
    Application.Run;
  end;
end;

exports
  GefProgramm1 index 1;

begin
end.
