library Gefprog28;  //Mohrsche Kreise

uses
  Globvar,
  Forms,
  Liesconf,
  texte,
  SysUtils,
  Dialogs,
  Unit90 in 'Unit90.pas' {Form90},
  Unit91 in 'Unit91.pas' {Form91};

procedure GefProgramm28; export;
begin
{$R *.RES}
  Programm := 28;
  getDir(0,DirectS);
  if not fileexists (DirectS+'\'+'Lizenz.bin') then
    showmessage ('no licence')
  else
  begin
    LiesConfig;
    LiesLizenz;
    Application.Initialize;
    Application.CreateForm(TForm90, Form90);
    Application.CreateForm(TForm91, Form91);
    Application.Icon.LoadFromFile('Symbol1.ico');
    Application.Run;
  end;
end;

exports
  GefProgramm28 index 1;

begin
end.

