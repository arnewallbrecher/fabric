library GefProg29;

uses
  Globvar,
  Forms,
  Liesconf,
  texte,
  SysUtils,
  Dialogs,
  Unit95 in 'Unit95.pas' {Form95, Flinn-Haupt},
  Unit96 in 'Unit96.pas' {Form96},
  Unit97 in 'Unit97.pas' {Form97};

procedure GefProgramm29; export;
begin
{$R *.RES}
  Programm := 29;
  getDir(0,DirectS);
  if not fileexists (DirectS+'\'+'Lizenz.bin') then
    showmessage ('no licence')
  else
  begin
    LiesConfig;
    LiesLizenz;
    Application.Initialize;
    Application.CreateForm(TForm95, Form95);
    Application.CreateForm(TForm96, Form96);
    Application.CreateForm(TForm97, Form97);
    Application.Icon.LoadFromFile('Symbol1.ico');
    Application.CreateForm(TForm95, Form95);
    Application.Run;
  end;
end;

exports
  GefProgramm29 index 1;

begin
end.
