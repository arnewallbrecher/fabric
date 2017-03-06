library Gefprog12;       {Fourier-Analyse}

uses Globvar, Forms, LiesConf, Texte, Dialogs,
  Unit48 in 'Unit48.pas' {Form48, Fourier, Hauptformular},
  Unit49 in 'Unit49.pas' {Form49, Fourier, manuell},
  Unit50 in 'Unit50.pas' {Form50, Fourier, Diskette},
  Unit51 in 'Unit51.pas' {Form51, Fourier, Plot},
  Unit68 in 'Unit68.pas' {Bild};

procedure GefProgramm12; export;

begin
{$R *.RES}
  Programm := 12;
  getDir(0,DirectS);
  LiesConfig;
  LiesLizenz;
  Application.Initialize;
  Application.CreateForm(TForm48, Form48);
  Application.CreateForm(TForm49, Form49);
  Application.CreateForm(TForm50, Form50);
  Application.CreateForm(TForm51, Form51);
  Application.CreateForm(TForm68, Form68);
  Application.Icon.LoadFromFile('Symbol1.ico');
  Application.Run;
end;

exports
  GefProgramm12 index 1;

begin
end.

