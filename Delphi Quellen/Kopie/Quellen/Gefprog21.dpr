library Gefprog21;   //Talbot-Methode

uses
  Globvar,
  Forms,
  LiesConf,
  Texte,
  Unit60 in 'Unit60.pas' {Form60, Talbot, Hauptformular},
  Unit61 in 'Unit61.pas' {Form61, Manuelle Eingabe},
  Unit62 in 'Unit62.pas' {Form62, Eingabe von Diskette},
  Unit63 in 'Unit63.pas' {Form63, Plotten},
  ehsHapi in 'ehsHapi.pas';

procedure GefProgramm21; export;
begin
{$R *.RES}
  Programm := 21;
  getDir(0,DirectS);
  LiesConfig;
  LiesLizenz;
  Application.Initialize;
  Application.CreateForm(TForm60, Form60);
  Application.CreateForm(TForm61, Form61);
  Application.CreateForm(TForm62, Form62);
  Application.CreateForm(TForm63, Form63);
  Application.Icon.LoadFromFile('Symbol1.ico');
  Application.Run;
end;

exports
  Gefprogramm21 index 1;

begin
end.
 