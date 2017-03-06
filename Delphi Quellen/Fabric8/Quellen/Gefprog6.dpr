library Gefprog6;

uses
  Globvar, Forms, LiesConf, Texte, Standard, ActiveX,
  Unit15 in 'Unit15.pas' {Form15,  zirkulare Verteilungen, Hauptformular},
  Unit16 in 'Unit16.pas' {Form16, zirkulare Verteilungen, manuell},
  Unit17 in 'Unit17.pas' {Form17, zirkulare Verteilungen, Ergebnisse},
  Unit18 in 'Unit18.pas' {Form18, zirkulare Verteilungen, Datenträger},
  Unit78 in 'Unit78.pas' {Form78, zirkulare Verteilungen, Luftbild},
  Unit92 in 'Unit92.pas' {Form92, Excel-Tabelle};

procedure GefProgramm6; export;

begin
{$R *.RES}
  Programm := 6;
  getDir(0,DirectS);
  FabIni;
  LiesConfig;
  LiesLizenz;
  Application.Initialize;
  Application.CreateForm(TForm15, Form15);
  Application.CreateForm(TForm16, Form16);
  Application.CreateForm(TForm17, Form17);
  Application.CreateForm(TForm18, Form18);
  Application.CreateForm(TForm78, Form78);
  Application.CreateForm(TForm92, Form92);
  Application.Icon.LoadFromFile('Symbol1.ico');
  CoInitialize (nil);
  try 
    Application.Run;
  finally
    CoUninitialize;
  end;  
end;

exports
  GefProgramm6 index 1;
end.

