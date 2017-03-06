program TestGif;
{$ifdef ver80}
{$M 32768, 8192}   { default stacksize of 16k is not sufficient }
{$endif ver80}

uses
  Forms,
  FmTstGIF in 'FMTSTGIF.PAS' {TestGifForm},
  FmAbout in 'FMABOUT.PAS' {AboutBox},
  FmGCE in 'FMGCE.PAS' {GCEDialog},
  FmImInfo in 'FMIMINFO.PAS' {GifImageInfoDialog},
  FmSubImg in 'FMSUBIMG.PAS' {SubImageDialog},
  FmAppe in 'FmAppe.pas' {APPEDialog},
  ShowExt in 'ShowExt.pas';

{$R *.RES}

begin
{$ifndef ver80}
  Application.Initialize;
{$endif ver80}
  Application.CreateForm(TTestGifForm, TestGifForm);
  Application.CreateForm(TAboutBox, AboutBox);
  Application.CreateForm(TGCEDialog, GCEDialog);
  Application.CreateForm(TGifImageInfoDialog, GifImageInfoDialog);
  Application.CreateForm(TSubImageDialog, SubImageDialog);
  Application.CreateForm(TAPPEDialog, APPEDialog);
  Application.Run;
end.
