library Gefprog26; //  Eintragen in eine Karte
uses
  Globvar, Forms, LiesConf, Texte, ActiveX, Standard,
  Unit79 in 'Unit79.pas' {Form79, Karte, Hauptformular},
  Unit80 in 'Unit80.pas' {Form80, Karte, manuelle Eingabe},
  Unit81 in 'Unit81.pas' {Form81, Karte, Grafik},
  Unit82 in 'Unit82.pas' {Form82, Karte, Eingabe von Diskette},
  Unit83 in 'Unit83.pas' {Form83, Karte, Eingabe von Karte},
  Unit84 in 'Unit84.pas' {Form84, Karte, Eingabe von Excel};

procedure GefProgramm26; export;
begin
{$R *.RES}
  Programm := 26;
  getDir(0,DirectS);
  FabIni;
  LiesConfig;
  LiesLizenz;
  Application.Initialize;
  Application.CreateForm(TForm79, Form79);
  Application.CreateForm(TForm80, Form80);
  Application.CreateForm(TForm81, Form81);
  Application.CreateForm(TForm82, Form82);
  Application.CreateForm(TForm83, Form83);
  Application.CreateForm(TForm84, Form84);
  Application.Icon.LoadFromFile('Symbol1.ico');
  CoInitialize (nil);
  try 
    Application.Run;
  finally
    CoUninitialize;
  end;
end;

exports
  GefProgramm26 index 1;
begin
end.
 