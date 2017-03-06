library Iso1;            {Isolinien}

uses
  Globvar,
  Forms,
  LiesConf,
  Windows,
  ActiveX,
  Texte,
  Unit22 in 'Unit22.pas' {Form22, Isolinien, Hauptformular},
  Unit10 in 'Unit10.pas' {Form10, Dateneingabe manuell},
  Unit11 in 'Unit11.pas' {Form11, Dateneingabe von Diskette},
  Unit23 in 'Unit23.pas' {Form23, Isolinien, Plot},
  Unit64 in 'Unit64.pas' {Form64, Excel};

procedure Isol; export;

begin
{$R *.RES}
  Programm := 24;
  getDir(0,DirectS);
  LiesConfig;
  LiesLizenz;
  Application.Initialize;
  Application.CreateForm(TForm22, Form22);
  Application.CreateForm(TForm10, Form10);
  Application.CreateForm(TForm11, Form11);
  Application.CreateForm(TForm23, Form23);
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
  Isol index 1;

begin
end.

