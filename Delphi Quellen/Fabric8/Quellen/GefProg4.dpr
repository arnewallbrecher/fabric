library GefProg4;

uses
  Globvar, Forms, LiesConf, ActiveX, Texte, Standard,
  Unit9 in 'Unit9.pas' {Form9,  Plotten, Hauptformular},
  Unit10 in 'Unit10.pas' {Form10, Plotten manuell},
  Unit11 in 'Unit11.pas' {Form11, Plotten Datenträger},
  Unit85 in 'Unit85.pas' {Form85, Grafik},
  Unit64 in 'Unit64.pas' {Form64, Excel};

procedure GefProgramm4; export;
begin
{$R *.RES}
  Programm := 4;
  getDir(0,DirectS);
  FabIni;
  LiesConfig;
  LiesLizenz;
  Application.Initialize;
  Application.CreateForm(TForm9, Form9);
  Application.CreateForm(TForm10, Form10);
  Application.CreateForm(TForm11, Form11);
  Application.CreateForm(TForm85, Form85);
  Application.CreateForm(TForm64, Form64);
  Application.Icon.LoadFromFile('Symbol1.ico');
  CoInitialize (nil);
  try
    Application.Run;
  finally
    CoUninitialize;
  end;
end;

exports
  GefProgramm4 index 1;

begin
end.


