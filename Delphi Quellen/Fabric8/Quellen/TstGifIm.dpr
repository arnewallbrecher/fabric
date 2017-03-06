program TstGifIm;
{$ifdef ver80}
{$M 32768, 8192}   { default stacksize of 16k is not sufficient }
{$endif ver80}

uses
  Forms,
  FmGifImg in 'FmGifImg.pas' {Form1};

{$R *.RES}

begin
{$ifndef ver80}
  Application.Initialize;
{$endif ver80}
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
