unit ShowExt;
{ Exports procedure ShowExtension which shows the content of
a GIF extension. See units GifUnit and GifDecl for the data structures
and FmAPPE, FmGCE and Fmmemo for the forms/dialogs.

Reinier Sterkenburg, Delft, The Netherlands.

 5 Apr 97: - created
}

interface

uses
  GifDecl;         { Imports TExtension }

procedure ShowExtension(Caption: String; Extension: TExtension);

implementation

uses
  Classes,         { Imports TStringList }
  Controls,        { Imports mrOK }
  FmAPPE,          { Imports TAPPEDialog }
  FmGCE,           { Imports TGCEDialog }
  FmMemo,          { Imports TMemoForm }
  SysUtils;        { Imports IntToStr }

procedure ShowGCE(Caption: String; var GCE: TGraphicControlExtension);
var GCEDialog: TGCEDialog;
begin { ShowGCE }
  GCEDialog := TGCEDialog.Create(GCE);
  GCEDialog.Caption := Caption;
  GCEDialog.Show;
  {if GCEDialog.ModalResult = mrOK
  then GCE := GCEDialog.GetGCE;
  GCEDialog.Free;}
end;  { ShowGCE }

procedure ShowCE(Caption: String; var Comment: TStringlist);
var MemoForm: TMemoForm;
begin { ShowCE }
  MemoForm := TMemoForm.Create(nil);
  MemoForm.Caption := Caption;
  MemoForm.Memo.Lines.Assign(Comment);
  MemoForm.Show;
end;  { ShowCE }

procedure ShowAPPE(Caption: String; var APPE: TApplicationExtension);
var APPEDialog: TAPPEDialog;
begin { ShowAPPE }
  APPEDialog := TAPPEDialog.Create(APPE);
  APPEDialog.Caption := Caption;
  APPEDialog.Show;
  {if APPEDialog.ModalResult = mrOK
  then APPE := APPEDialog.GetAPPE;
  APPEDialog.Free;}
end;  { ShowAPPE }

procedure ShowPTE(Caption: String; var PTE: TPlainTextExtension);
var MemoForm: TMemoForm;
begin { ShowPTE }
  MemoForm := TMemoForm.Create(nil);
  MemoForm.Caption := Caption;
  MemoForm.Memo.Lines.Add('Left   = ' + IntToStr(PTE.Left));
  MemoForm.Memo.Lines.Add('Top    = ' + IntToStr(PTE.Top));
  MemoForm.Memo.Lines.Add('Width  = ' + IntToStr(PTE.Width));
  MemoForm.Memo.Lines.Add('Height = ' + IntToStr(PTE.Height));
  MemoForm.Memo.Lines.Add('CellWidth  = ' + IntToStr(PTE.CellWidth));
  MemoForm.Memo.Lines.Add('CellHeight = ' + IntToStr(PTE.CellHeight));
  MemoForm.Memo.Lines.Add('FGColorIndex = ' + IntToStr(PTE.TextFGColorIndex));
  MemoForm.Memo.Lines.Add('BGCOlorIndex = ' + IntToStr(PTE.TextBGCOlorIndex));
  MemoForm.Memo.Lines.Add('PlainText Data:');
  MemoForm.Memo.Lines.AddStrings(PTE.PlainTextData);
  MemoForm.Show;
end;  { ShowPTE }

procedure ShowExtension(Caption: String; Extension: TExtension);
begin { TExtension.Edit }
  with Extension.ExtRec do
  case ExtensionType of
    etGCE:  ShowGCE(Caption, GCE);
    etCE:   ShowCE(Caption, Comment);
    etAPPE: ShowAPPE(Caption, APPE);
    etPTE:  ShowPTE(Caption, PTE);
    else raise Exception.Create('Unknown Extension type');
  end;
end;  { TExtension.Edit }

end.
 