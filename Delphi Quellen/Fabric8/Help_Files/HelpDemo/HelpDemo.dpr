program HelpDemo;

uses
  Forms,
  uhdmain in 'uhdmain.pas' {FrmMain};

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := 'All about help files in Delphi - sample application';
  Application.CreateForm(TFrmMain, FrmMain);
  Application.Run;
end.
