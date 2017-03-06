unit uhdmain;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, Menus, Richedit, ExtCtrls, Buttons, Spin;

type
  TFrmMain = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Edit1: TEdit;
    Memo1: TMemo;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Exit1: TMenuItem;
    Edit2: TMenuItem;
    Tableofcontents1: TMenuItem;
    Search1: TMenuItem;
    Helponhelp1: TMenuItem;
    RichEdit1: TRichEdit;
    Fulltextsearch1: TMenuItem;
    N1: TMenuItem;
    About1: TMenuItem;
    Button1: TButton;
    Label1: TLabel;
    N2: TMenuItem;
    MainMnuWhatsthis: TMenuItem;
    WhatsThisPopupmenu: TPopupMenu;
    Popupwhatsthis: TMenuItem;
    PnlToolbar: TPanel;
    BtnContexthelp: TSpeedButton;
    Bevel1: TBevel;
    Bevel2: TBevel;
    StatusBar: TStatusBar;
    BtnNew: TSpeedButton;
    BtnOpen: TSpeedButton;
    BtnSave: TSpeedButton;
    BtnCut: TSpeedButton;
    BtnCopy: TSpeedButton;
    BtnPaste: TSpeedButton;
    BtnUndo: TSpeedButton;
    BtnHelpTOC: TSpeedButton;
    N3: TMenuItem;
    New1: TMenuItem;
    Open1: TMenuItem;
    Save1: TMenuItem;
    Edit3: TMenuItem;
    Cut1: TMenuItem;
    Copy1: TMenuItem;
    Paste1: TMenuItem;
    Undo1: TMenuItem;
    Label2: TLabel;
    Label3: TLabel;
    Shape1: TShape;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Image1: TImage;
    ComboBox1: TComboBox;
    SpeedButton1: TSpeedButton;
    ListBox1: TListBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Button2: TButton;
    PopupMenu1: TPopupMenu;
    MenuItem1: TMenuItem;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    GbCommands: TGroupBox;
    Btndisptoc: TButton;
    BtnDispFind: TButton;
    BtnDispFTS: TButton;
    BtnCloseHelp: TButton;
    BtnDisplayPopup: TButton;
    BtnHelponHelp: TButton;
    GbMacros: TGroupBox;
    BtnMoveHelp: TButton;
    BtnAbout: TButton;
    GroupBox1: TGroupBox;
    StaticText1: TStaticText;
    CheckBox1: TCheckBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Panel1: TPanel;
    BtnResetRichedit: TButton;

    procedure AppMessage(var Msg: TMsg; var Handled: Boolean);
    function  HandleMouseMsg(CtlHandle: THandle; Button: TMouseButton; Shift: TShiftState; X, Y: Integer): boolean;
    procedure BtnContexthelpClick(Sender: TObject);

    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure Tableofcontents1Click(Sender: TObject);
    procedure Helponhelp1Click(Sender: TObject);
    procedure DisplayHelpOnKeyword(keyword: string);
    procedure DummyClick(Sender: TObject);
    procedure PopupwhatsthisClick(Sender: TObject);
    procedure BtnNewClick(Sender: TObject);
    procedure BtnOpenClick(Sender: TObject);
    procedure BtnSaveClick(Sender: TObject);
    procedure BtnCutClick(Sender: TObject);
    procedure BtnCopyClick(Sender: TObject);
    procedure BtnPasteClick(Sender: TObject);
    procedure Search1Click(Sender: TObject);
    procedure Fulltextsearch1Click(Sender: TObject);
    procedure BtnCloseHelpClick(Sender: TObject);
    procedure BtnDisplayPopupClick(Sender: TObject);
    procedure BtnMoveHelpClick(Sender: TObject);
    procedure BtnAboutClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnResetRicheditClick(Sender: TObject);
    procedure RichEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
  public
    OldCursor: TCursor;
    Richedit1Default: TStringlist;
  end;

var
  FrmMain: TFrmMain;


implementation

{$R *.DFM}

procedure TFrmMain.Exit1Click(Sender: TObject);
begin
     close;
end;

function TFrmMain.HandleMouseMsg(CtlHandle: THandle; Button: TMouseButton; Shift: TShiftState; X, Y: Integer): boolean;
var
   FocusCtl: TWinControl;
   ClickCtl: TControl;
   ContextID: integer;
   Pt: TSmallPoint;

   function FindFocusControl(Ctl: TWinControl): TWinControl;
   var
      i: integer;
   begin
{ The simple function FindControl(Handle: HWnd) fails on combos,
  because a TCustomCombobox has 3 window handles. }

        result := nil;
        if Ctl.handle = CtlHandle then result := Ctl
        else if (Ctl is TCustomCombobox) and (ChildWindowfromPoint(Ctl.handle, point(x,y)) = CtlHandle) then result := Ctl
        else begin
             for i := 0 to Ctl.controlcount-1 do
             begin
               if (Ctl.controls[i] is TWinControl) then result := FindFocusControl(TWinControl(ctl.controls[i]));
               if result <> nil then break;
             end;
        end;
   end;

   function FindContextID(Ctl: TControl): integer;
   begin
        result := 0;
{ If our control is a TWinControl, it has a HelpContext property by sure, if not, we use
  the Tag property to retrieve a help context for TGraphicControls and TSpeedButtons. }

        if (Ctl is TWinControl) then result := TWinControl(Ctl).helpcontext
        else if (Ctl is TGraphicControl) then result := Ctl.tag;

        if (Ctl is TLabel) and (TLabel(Ctl).FocusControl <> nil) then result := TLabel(Ctl).FocusControl.helpcontext;

{ If no help context number has been found, inherit the help context from the parent. }

        if (result = 0) and (Ctl.parent <> nil) then result := FindContextID(Ctl.parent);
   end;

begin
     result := false;
     FocusCtl := FindFocusControl(self);
     if FocusCtl = nil then FocusCtl := self;
     ClickCtl := FocusCtl.controlatpos(point(x,y), true);
     if (ClickCtl = nil) then ClickCtl := FocusCtl;

{ ClickCtl is now definitely the control beneath the mouse cursor. This could be any
  control, even disabled controls are valid. FocusCtl, on the other hand, is that control
  which has received the mouse message. FocusCtl is a TWinControl and has a HelpContext property
  while ClickCtl may not have a HelpContext property - e.g. a TGraphicControl or TSpeedButton. }

     ContextID := FindContextID(ClickCtl);
     if ContextID = 0 then ContextID := 1000;

     case Button of
     mbLeft:  if (ClickCtl <> BtnContextHelp) then
              begin
                   Statusbar.simpletext := 'Focus: '+FocusCtl.name + ' Clicked: '+ClickCtl.name + ' at '+inttostr(x)+'/'+inttostr(y)+' Help context: '+inttostr(ContextID);
                   Pt := PointToSmallPoint(FocusCtl.Clienttoscreen( point(x,y) ));

{ When a help context number is a minus value, we display the help topic in the
  main window. If it is a plus value - the default -  we display it in a popup window.
  This is not a standard function of Winhelp but very useful. }

                   if ContextID < 0 then Application.HelpCommand(HELP_CONTEXT, abs(ContextID))
                   else begin
                        Application.HelpCommand(HELP_SETPOPUP_POS, Longint(Pt));
                        Application.HelpCommand(HELP_CONTEXTPOPUP, ContextID);
                   end;
                   result := true;
              end;
     mbRight: begin
                   result := (not (ClickCtl is TCustomEdit)) and (not (ClickCtl is TCustomComboBox));
                   if result then
                   begin
                        PopupWhatsthis.tag := ContextID;
                        Pt := PointToSmallPoint(FocusCtl.Clienttoscreen( point(x,y) ));
                        if TLabel(ClickCtl).PopupMenu = nil then WhatsThisPopupmenu.popup(Pt.x, Pt.y)
                        else TLabel(ClickCtl).PopupMenu.popup(Pt.x, Pt.y);
                   end;
              end;
     end;
end;

procedure TFrmMain.AppMessage(var Msg: TMsg; var Handled: Boolean);
begin
{ If we ARE in help mode, trap every LEFT click,
  display help and don't process this message any further.
  If we are NOT in help mode, trap every RIGHT click to
  display a What's this popup menu or the default menu of the control.}

  Handled := false;

  if Screen.activeform = self then
  case Msg.message of
  WM_LBUTTONDOWN:
     if BtnContexthelp.down then
        Handled := HandleMouseMsg(Msg.hwnd, mbLeft, KeysToShiftState(Msg.wParam), Loword(Msg.lParam), Hiword(Msg.lParam));
  WM_RBUTTONUP:
        Handled := HandleMouseMsg(Msg.hwnd, mbRight, KeysToShiftState(Msg.wParam), Loword(Msg.lParam), Hiword(Msg.lParam));
  end;
end;

procedure TFrmMain.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if (key = VK_ESCAPE) and BtnContextHelp.down then BtnContextHelpClick(self);
end;

procedure TFrmMain.Tableofcontents1Click(Sender: TObject);
begin
  application.helpcommand(HELP_FINDER, 0);
end;

procedure TFrmMain.Helponhelp1Click(Sender: TObject);
begin
     Application.HelpCommand(HELP_HELPONHELP, 0);
end;

procedure TFrmMain.FormCreate(Sender: TObject);
begin
     application.helpfile := changefileext(application.exename, '.hlp');
     application.onMessage := AppMessage;
     Richedit1Default := TStringlist.create;
end;

procedure TFrmMain.DisplayHelpOnKeyword(keyword: string);
var
  Command: array[0..255] of Char;
begin
  StrLcopy(Command, pchar(keyword), SizeOf(Command) - 1);
  Application.helpcommand(HELP_KEY, Longint(@Command));
end;

procedure TFrmMain.BtnContexthelpClick(Sender: TObject);
begin
     MainMnuWhatsthis.checked := not MainMnuWhatsthis.checked;
     BtnContexthelp.down := MainMnuWhatsthis.checked;

     if BtnContexthelp.down then  //in help mode now
     begin
          OldCursor := Screen.Cursor;
          Screen.Cursor := crHelp;
     end
     else Screen.Cursor := OldCursor;
end;

procedure TFrmMain.DummyClick(Sender: TObject);
begin
     showmessage('This item is a dummy');
end;

procedure TFrmMain.PopupwhatsthisClick(Sender: TObject);
begin
     if TMenuItem(sender).tag < 0
       then Application.HelpCommand(HELP_CONTEXT, abs(TMenuItem(sender).tag)) //display in main window
       else Application.HelpCommand(HELP_CONTEXTPOPUP, TMenuItem(sender).tag);
end;

procedure TFrmMain.BtnNewClick(Sender: TObject);
begin
     PageControl1.ActivePage := TabSheet3;
     Richedit1.lines.clear;
end;

procedure TFrmMain.BtnOpenClick(Sender: TObject);
begin
     PageControl1.ActivePage := TabSheet3;
     with TOpenDialog.create(self) do
     try
       Filter := 'Richtext files (*.rtf)|*.rtf|Text files (*.txt)|*.txt|All files (*.*)|*.*';
       if execute then Richedit1.lines.loadfromfile(filename);
     finally
       free;
     end;
end;

procedure TFrmMain.BtnSaveClick(Sender: TObject);
begin
     PageControl1.ActivePage := TabSheet3;
     with TSaveDialog.create(self) do
     try
       Filter := 'Richtext files (*.rtf)|*.rtf';
       if execute then Richedit1.lines.savetofile(filename);
     finally
       free;
     end;
end;

procedure TFrmMain.BtnCutClick(Sender: TObject);
begin
     PageControl1.ActivePage := TabSheet3;
     Richedit1.cuttoclipboard;
end;

procedure TFrmMain.BtnCopyClick(Sender: TObject);
begin
     PageControl1.ActivePage := TabSheet3;
     Richedit1.copytoclipboard;
end;

procedure TFrmMain.BtnPasteClick(Sender: TObject);
begin
     PageControl1.ActivePage := TabSheet3;
     Richedit1.pastefromclipboard;
end;

procedure TFrmMain.Search1Click(Sender: TObject);
var
  command: array[0..255] of Char;
begin
  command := 'Search()';
  application.helpcommand(HELP_FORCEFILE, 0);
  application.helpcommand(HELP_COMMAND, Longint(@command));
end;

procedure TFrmMain.Fulltextsearch1Click(Sender: TObject);
var
  command: array[0..255] of Char;
begin
  command := 'Find()';
  application.helpcommand(HELP_FORCEFILE, 0);
  application.helpcommand(HELP_COMMAND, Longint(@command));
end;


procedure TFrmMain.BtnCloseHelpClick(Sender: TObject);
begin
     Application.HelpCommand(HELP_QUIT, 0);
end;

procedure TFrmMain.BtnDisplayPopupClick(Sender: TObject);
begin
     Application.HelpCommand(HELP_CONTEXTPOPUP, TButton(Sender).helpcontext);
end;

procedure TFrmMain.BtnMoveHelpClick(Sender: TObject);
var
  command: array[0..255] of Char;
begin
  command := 'PW(0, 0, 512, 512, 1, "main")';
  Application.HelpCommand(HELP_FORCEFILE, 0);
  Application.HelpCommand(HELP_COMMAND, Longint(@command));
end;

procedure TFrmMain.BtnAboutClick(Sender: TObject);
var
  command: array[0..255] of Char;
begin
  command := 'About()';
  Application.HelpCommand(HELP_FORCEFILE, 0);
  Application.HelpCommand(HELP_COMMAND, Longint(@command));
end;

procedure TFrmMain.FormDestroy(Sender: TObject);
begin
     Richedit1Default.free;
end;

procedure TFrmMain.FormShow(Sender: TObject);
var
   p: tpoint;
begin
     Richedit1Default.assign(Richedit1.lines);

{Adjust initial window coordinates for small/large fonts}
     with richedit1 do p := clienttoscreen(point(width,height));
     setbounds(left, top, p.x + (richedit1.left*2) - left, p.y + (richedit1.left*2) + statusbar.height - top);
     PageControl1.ActivePage := TabSheet1;
end;

procedure TFrmMain.BtnResetRicheditClick(Sender: TObject);
begin
     Richedit1.lines.assign(Richedit1Default);
end;

procedure TFrmMain.RichEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
   wStart, wLen: integer;
begin
     if key = VK_F1 then
     begin
          key := 0; //don't process application help

          wStart := richedit1.perform(EM_FINDWORDBREAK, WB_MOVEWORDLEFT, richedit1.selstart);
          wLen   := richedit1.perform(EM_FINDWORDBREAK, WB_MOVEWORDRIGHT, richedit1.selstart) - wStart;
          Richedit1.selstart := wStart;
          Richedit1.sellength := wLen;

          DisplayHelpOnKeyword( trim(richedit1.seltext) );
     end;
end;

end.
