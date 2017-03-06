Library Clodat7;         {CLODAT}

uses
  Globvar, Forms, LiesConf, ActiveX, Texte,
  Unit24 in 'Unit24.pas' {Form24, CLODAT, Hauptformular},
  Unit10 in 'Unit10.pas' {Form10, Dateneingabe manuell},
  Unit11 in 'Unit11.pas' {Form11, Dateneingabe Diskette},
  Unit25 in 'Unit25.pas' {Form25, Clodat, Plot},
  Unit64 in 'Unit64.pas' {Form64, Excel};

procedure Clodat; export;

begin
{$R *.RES}
  Programm := 23;
  getDir(0,DirectS);
  LiesConfig;
  LiesLizenz;
  Application.Initialize;
  Application.CreateForm(TForm24, Form24);
  Application.CreateForm(TForm10, Form10);
  Application.CreateForm(TForm11, Form11);
  Application.CreateForm(TForm25, Form25);
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
  Clodat index 1;

begin
end.


