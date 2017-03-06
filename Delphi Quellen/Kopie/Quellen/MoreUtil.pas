unit MoreUtil;
{
Exports some general purpose routines:
CanSave, FindCommonStrings, FreeObject,
OpenIniFile, RunDOSCommand, RunProgram, ShowMessage

C.A. van Beest, R.P. Sterkenburg, TNO-PML, Rijswijk, The Netherlands

22 Aug 95: - added ChooseString
 4 Sep 95: - added ChooseStrings
28 Aug 96: - added OpenIniFile
10 Sep 96: - added RunDosCommand
13 Nov 96: - deleted ChooseString, ChooseStrings and EnterInteger;
             they weren't used (it's too easy to make a nicer one
             when needed)
           - added FindCommonStrings
30 Dec 96: - added ShowMessage
 6 Feb 97: - added FreeObject
12 Feb 97: - made compilable under Delphi 2 too
           - renamed from MoreUtils to MoreUtil
13 Feb 97: - replaced FreeObject with the original version of the code
             that came with The Delphi Magazine, issue 18
           - improved comments and layout a little bit
18 Feb 97: - added ErStop procedure
           - improved FreeObject to aceept one single passed parameter
28 Feb 97: - Added procedures FatalError and WarningMessage
           - Added some string constants and functions
           - Procedure ErStop removed from Interface
03 Mar 97: - Added functions Two- and ThreeDigitstr
05 Mar 97: - Added Sleep, GetIniPath, ForceBackslash, SplitStringAt
06 Mar 97: - Added ChangePath
13 Mar 97: - Added ClearDir, FileNameSplit, SpaceStr
14 Mar 97: - Added StartTime, StopTime, Elapsed
           - Added Trim (SysUtils' Trim has a bug)
19 Mar 97: - LeftStr and RightStr in stead of leftstr and rightstr
           - indentation; comments
24 Mar 97: - Added ExtractFileDir/Path for Delphi 1
04 Apr 97: - FatalError and WarningMessage changed; they now use
             a global (not exported) variable WarningForm
           - Initialization and Finalization added
 9 Apr 97: - 'uncommented' ChooseString again (used by program Analysis)
             and added usage of unit StrFunc again (temporarily)
           - StrFunc only used in Delphi 1
16 Apr 97: - added function WithoutBackslash
18 Apr 97: - added procedure GetIniString
21 Apr 97: - Added function VersionStr
23 Apr 97: - Added functions LeftAlign and RightAlign
           - Proc. warningMessage changed
24 Apr 97: - deleted ChooseString and ChooseStrings. They weren't used
             anywhere anymore.
           - added StrToDateTime because SysUtils' version
             doesn't work well with Delphi1
09 May 97: - Added function ExtendedVersionStr
15 May 97: - Added function BooleanToYN
           - WarningForm now exported
           - Old commented out FreeObject deleted
20 May 97: - added CountLines
27 May 97: - added FindString and type TFindOption and TFindOptions
29 May 97: - Simplified procedure RunProgram
10 Jun 97: - Added function BatchRun
           - Proc. Fatalerror checks for batch runs
25 Jun 97: - Merged changes 09 May - 10 Jun
22 Jul 97: - merged all changes of May-Jun 97
           - added procedures CopyFile and CopyFileOverwrite
   Aug 97: - added function CanSave (using FmCanSaveDlg)
15 Sep 97: - renamed FmCanSaveDlg to FmCanSav
12 Dec 97: - added StrToFloat
23 Dec 97: - made CountLines work for non-existing files as well
           - added CountChar
29 Dec 97: - added ReplaceChars;
           - S not passed as const anymore StrToDateTime
           - StrToDateTime modified; probably/hopefully it is now right in all
             cases
11 Jan 98: - added FreeList
}

(*************************) interface (*************************)

uses
  Classes,         { Imports TStringlist }
  FmWarErr,        { Imports TWarningForm }
  IniFiles;        { Imports TIniFile }

const
  CR    = #13;     { carriage return character }
  LF    = #10;     { linefeed character }
  Space = #32;     { space character }
  Tab   = #9;      { Tab character }
  CRLF  = CR + LF;

type
  string2  = string[2];
  string4  = string[4];
  string8  = string[8];
  string12 = string[12];

  TFindOption = (foCaseSensitive, foWholeWord);
  TFindOptions = set of TFindOption;


var
{ For function Elapsed }
  StartTime, StopTime: TDateTime;
{ For accumulation of warnings }
  WarningForm: TWarningForm;


function BatchRun: boolean;
{ Returns true if running progran started with 'B' or 'b' on the command line }

function BooleanToYN(Check: boolean): string;
{ Converts boolean variable to string 'Yes' or 'No' }

function CanSave(var Filename: String): Boolean;
{ Returns true when
- the file does not (yet) exist
- the file exists but the user accepts that it is
  going to be overwritten
- the user has changed the filename (var!) and has ok'd it }

procedure ChangePath(oldfilespec: string; newpath: string;
                     var newfilespec: string);
{ changes the path of a filespecification into 'newpath' }

procedure ClearDir(Dir: string);
{ Deletes the files in an existing directory }

procedure CopyFile(srcfilename, destfilename: String);
{ Copies file 'srcfilename' to 'destfilename' }

procedure CopyFileOverwrite(srcfilename, destfilename: String);
{ Copies file 'srcfilename' to 'destfilename'.
Gives no warning if destfilename already exists }

procedure CountChar(s: String; ch: Char; var N: Integer);
{ Counts the number of times a character occurs in a string }

procedure CountLines(fname: String; var Nlines: Longint);
{ Counts the number of lines in a text file }

function DirectoryExists(dir: String): Boolean;
{ Checks whether or not a directory exists.
The current directory remains current }

function Elapsed: string;
{ Returns runtime in seconds }

function ExtendedVersionStr: String;
{ Returns a string containing the name and the date of creation of the
  running program }

{$ifdef ver80}
function ExtractFileDir( Spec: string): string;

function ExtractFilePath( Spec: string): string;
{$endif ver80}

procedure FatalError(MessageStr: string);
{ Produces window with Str as message.
  Stops calling program. }

procedure FileNameSplit(Spec: string; var path, name, ext:string);
{ Returns separate parts of a file specification }

procedure FindCommonStrings(List1, List2: TStringlist;
                            var CommonStrings: TStringlist);
{ Returns in CommonStrings the stings that are present in
both List1 and List2 }

function FindString(substr, s: String; options: TFindOptions): Integer;
{ Finds substring in a string; options e.g.: whole word; case-sensitive }

procedure FreeList(var List: TList);
{ Frees list List the objects it contains }

procedure FreeObject(var o);
{ Frees the object that's pointed to by o AND sets o to nil, so
that it can't be Destroyed a second time (which would cause a GPF) }

function ForceBackslash(const DirName: String): String;
{ Adds a default backslash to a directory name if not already present }

procedure GetIniPath(section, varname: String; var dir: String);
{ Finds path in .INI file.
See GetIniString, but the found string must be a path. }

procedure GetIniString(section, varname: String; var result: String);
{ Finds string value in .INI file }

function LeftAlign(s: String; count: Integer): String;
{ Returns a string with length Count, with s at the left and
padded with spaces to the right }

function LeftStr(s: String; count: Integer): String;
{ Returns a string with the first 'count' characters of s }

procedure OpenIniFile(var Inifile: TIniFile);
{ Opens the ini file of the 'current application'.
It is assumed to be at the same location as the executable }

procedure ReplaceChars(var S: String; FromCh, ToCh: Char);
{ Replaces characters in string that are equal to FromCh with
characters ToCh }

function RightAlign(s: String; count: Integer): String;
{ Returns a string with length Count, with s at the right and
padded with spaces to the left }

function RightStr(s: String; count: Integer): String;
{ Returns a string with the last 'count' characters of s }

procedure RunDosCommand(CmdLine: String);
{ Runs Dos command as if it were started from the command line,
explicitly calling command.com }

procedure RunProgram(CmdLine: String);
{ Runs program as if it were started from the command line }

procedure ShowMessage(message: String);
{ Same as Dialogs' ShowMessage, but sets the cursor to crDefault
before displaying the dialog and sets it back to what it was
afterwards }

{$ifdef ver80}
procedure Sleep(msec: Longint);
{$endif ver80}

function SpaceStr(n: longint): string;
{ returns string containing n spaces (#32) }

procedure SplitStringAt(str: String; splitchar: Char;
                        var firstpart, secondpart: String);
{ Splits string at first splitchar;
  if splitchar is not found, firstpart:=str; secondpart:='' }

function StrToDateTime(S: string): TDateTime;
{ Same as SysUtils.StrToDateTime, but this one also
works under Delphi 1 for date of format YY/MM/DD. }

function StrToFloat(const S: string): Extended;
{ See Help on StrToFloat for specification.
This wrapper is needed because for unknown reasons,
on some (Win95) systems StrToFloat gives exceptions
where it shouldn't }

function ThreeDigitStr(n: Integer): String;
{ Makes a string of three digits representing the number 'n';
the number ought to lie in the interval [0, 999] }

procedure Trim(var s: String);
{ Eliminates leading and trailing spaces from a string }

function TwoDigitStr(n: Integer): String;
{ Makes a string of two digits representing the number 'n';
the number ought to lie in the interval [0, 99] }

function VersionStr: String;
{ Returns a string that represents the date of creation of the
  executable file of the program that's being executed }

procedure WarningMessage(Str: string);
{ Produces window with Str as message.
  Calling program keeps running. }

function WithoutBackslash(const DirName: String): String;
{ Makes sure that a directory is not followed by a backslash,
with one exception: drive letter + ':\' is left unchanged }

(*************************) implementation (*************************)

uses
  Controls,        { Imports TCursor }
  Dialogs,         { Imports ShowMessage }
  FmCanSav,        { Imports CanSaveDialog }
  Forms,           { Imports Application }
  SysUtils,        { Imports ChangeFileExt }
  WinProcs,        { Imports WinExec }
  WinTypes;        { Imports sw_restore }


function BatchRun: Boolean;
{ Returns true if running program started with 'B' or 'b' on the command line }
var
  j: longint;
begin { BatchRun }
  Result := false;
  for j := 1 to paramcount do begin
    if Uppercase( paramstr(j)) = 'B'
    then Result := true;
  end;
end; { BatchRun }

function BooleanToYN(Check: Boolean): string;
{ Converts boolean variable to string 'Yes' or 'No' }
begin { BooleanToYN }
  if Check = true
  then Result := 'Yes'
  else Result := 'No';
end;  { BooleanToYN }

function CanSave(var Filename: String): Boolean;
{ Returns true when
- the file does not (yet) exist
- the file exists but the user accepts that it is
  going to be overwritten
- the user has changed the filename (var!) and has ok'd it }
begin { CanSave }
  Result := True;
  if FileExists(Filename)
  then begin
    Result := CanSaveDialog.Execute(Filename);
    if Result = True
    then Filename := CanSaveDialog.Filename
  end;
end;  { CanSave }

procedure ChangePath(OldfileSpec: string; Newpath: string;
                     var NewfileSpec: string);
{ changes the path of a filespecification into 'newpath' }
var
  Name: string;
begin { ChangePath }
  Name := ExtractFileName(OldfileSpec);
  NewfileSpec := ForceBackslash(Newpath) + Name;
end;  { ChangePath }

procedure ClearDir(Dir: string);
{ Deletes the files in an existing directory }
var
  CurrentDir: string;
  sr: TSearchRec;
  Result: longint;
begin { ClearDir }
  Getdir(0, CurrentDir);
  Chdir(Dir);
  Result := FindFirst(Dir + '\*.*', faAnyFile, sr);
  while Result = 0 do begin
    SysUtils.DeleteFile(sr.name);
    Result := FindNext(sr);
  end;
  SysUtils.FindClose(sr);
  Chdir(CurrentDir);
end; { ClearDir }

procedure CopyFile(srcfilename, destfilename: String);
{ Copies file 'srcfilename'  to 'destfilename' }
var
   CanProceed: Boolean;
   Msg: String;
begin { CopyFile }
  CanProceed := True;
  if not FileExists(srcfilename)
  then begin
    ShowMessage('Copy: Source file not found: ' + srcfilename);
    CanProceed := False;
  end;
  if FileExists(destfilename)
  then begin
    Msg := 'Copy: destination file already exists:' + destfilename
           + CRLF + 'Overwrite (y/n)?';
    CanProceed := MessageDlg(Msg, mtConfirmation,
                             [mbYes, mbNo], 0) = mrYes;
  end;
  if CanProceed
  then CopyFileOverwrite(srcfilename, destfilename);
end;  { CopyFile }

procedure CopyFileOverwrite(srcfilename, destfilename: String);
{ Copies file 'srcfilename' to 'destfilename'.
Gives no warning if destfilename already exists }
const
  BlockSize = 4096;
var
  srcfile, destfile: file;
  time: Longint;
  Buffer: array[1..BlockSize] of Byte;
  NRead, Handle: Integer;
begin { CopyFileOverwrite }
  try
    Screen.Cursor := crHourGlass;
    if not FileExists(srcfilename)
    then raise Exception.Create('Source file (to copy) not found:' + CRLF +
                                srcfilename);
    Assign(srcfile, srcfilename);
    Reset(srcfile, 1);
    Handle := FileOpen(srcfilename, fmOpenRead);
    time := FileGetDate(Handle);
    Assign(destfile, destfilename);
    Rewrite(destfile, 1);
    while not Eof(srcfile)
    do begin
      BlockRead(srcfile, Buffer, BlockSize, NRead);
      BlockWrite(destfile, Buffer, NRead);
    end;
    CloseFile(srcfile);
    CloseFile(destfile);
    Handle := FileOpen(destfilename, fmOpenRead);
    FileSetDate(Handle, time);
    FileClose(Handle);
  finally
    Screen.Cursor := crDefault;
  end;
end;  { CopyFileOverwrite }

procedure CountChar(s: String; ch: Char; var N: Integer);
{ Counts the number of times a character occurs in a string }
var p: Integer;  { position in string }
begin { CountChar }
  N := 0;
  for p := 1 to Length(s)
  do if s[p] = ch
     then Inc(N)
end;  { CountChar }

procedure CountLines(fname: String; var Nlines: Longint);
{ Counts the number of lines in a text file; returns
  zero if file doesn't exist }
var
  infile: Text;
begin { CountLines }
  if not FileExists(fname)
  then Nlines := 0
  else begin
    AssignFile(infile, fname);
    Reset(infile);
    Nlines := 0;
    while not Eof(infile)
    do begin
      Readln(infile);
      Inc(Nlines);
    end;
    Close(infile);
  end;
end;  { CountLines }

function DirectoryExists(dir: String): Boolean;
{ Checks whether or not a directory exists.
The current directory remains current }
var
  currentdir: String;
begin { DirectoryExists }
  GetDir( 0, currentdir);
  {$I-}
  ChDir( dir);
  {$I+}
  if IOresult = 0
  then DirectoryExists := True
  else DirectoryExists := False;
  ChDir(currentdir);
end; { DirectoryExists }

function Elapsed: string;
{ Returns runtime in seconds }
var
  Period: double;
begin { Elapsed }
  Period := 86400 * (StopTime - StartTime);
  Elapsed := IntToStr(Round(Period));
end;  { Elapsed }

function ExtendedVersionStr: String;
{ Returns a string containing the name and the date of creation of the
  running program }
var
  Date, Name, Path, Ext: string;
begin { ExtendedVersionStr }
  FileNameSplit( paramstr( 0), Path, Name, Ext);
  Date := Versionstr;
  Result := 'Program ' + Name + ' - Version ' + Versionstr;
end; { ExtendedVersionStr }

{$ifdef ver80}
function ExtractFileDir( Spec: string): string;
begin
  result := SysUtils.ExtractFilePath( Spec);
end;

function ExtractFilePath( Spec: string): string;
begin
  result := ForceBackSlash(SysUtils.ExtractFilePath( Spec));
end;
{$endif ver80}

procedure FatalError(MessageStr: string);
{ Shows window with Str as message.
  Stops calling program. }
var
  ErrorForm: TWarningForm;
begin { FatalError }
  if BatchRun
  then Application.Terminate;
  ErrorForm := TWarningForm.Create(nil);
  ErrorForm.Error(MessageStr);
  ErrorForm.Free;
end;  { FatalError }

procedure FileNameSplit(Spec: string; var path, name, ext:string);
{ Returns separate parts of a file specification }
var
  len: longint;
  FullName: string;
begin { FileNameSplit }
  path := ExtractFilePath(Spec);
  ext := ExtractFileExt(Spec);
  FullName := ExtractFileName(Spec);
  len := length(FullName) - length(ext);
  name := copy(FullName, 1, len);
end; { FileNameSplit }

procedure FindCommonStrings(List1, List2: TStringlist;
                            var CommonStrings: TStringlist);
{ Returns in CommonStrings the stings that are present in
both List1 and List2 }
var Value: String;
    i: Integer;
begin { FindCommonStrings }
  CommonStrings := TStringlist.Create;
  for i := 1 to List1.Count
  do begin
    Value := List1[i-1];
    if List2.IndexOf(Value) <> -1
    then if CommonStrings.IndexOf(Value) = -1
    then CommonStrings.Add(Value);
  end;
  for i := 1 to List2.Count
  do begin
    Value := List2[i-1];
    if List1.IndexOf(Value) <> -1
    then if CommonStrings.IndexOf(Value) = -1
    then CommonStrings.Add(Value);
  end;
end;  { FindCommonStrings }

function FindString(substr, s: String; options: TFindOptions): Integer;
{ Finds substring in a string; options e.g.: whole word; case-sensitive }
const
  WordChars = ['a'..'z', 'A'..'Z', #128..#168];
var
  p, l: Integer;
  Found: Boolean;
begin { FindString }
  if not (foCaseSensitive in options)
  then begin
    substr := UpperCase(substr);
    s := UpperCase(s);
  end;
  if not (foWholeWord in options)
  then FindString := Pos(substr, s)
  else begin
    repeat
      Found := False;
      l := length(substr);
      p := Pos(substr, s);
      if p <> 0
      then begin
        Found := True;
        if p > 1
        then if s[p-1] in WordChars
             then Found := False;
        if p+l <= Length(s)
        then if s[p+l] in WordChars
             then Found := False;
        if not Found
        then s[p] := Chr(Ord(s[p])+1); { this trick makes Pos find the next
                                        occurrence when called next time }
      end
    until Found or (p=0);
    FindString := p;
  end;
end;  { FindString }

procedure FreeList(var List: TList);
{ Frees list List the objects it contains }
var
  ItemNo: Integer;
  Item: TObject;
begin { FreeList }
  for ItemNo := 1 to List.Count
  do begin
    Item := List[ItemNo-1];
    FreeObject(Item);
  end;
  FreeObject(List);
end;  { FreeList }

procedure FreeObject(var o);
{ Frees object p AND sets it to nil }
var p: TObject absolute o;
begin { FreeObject }
  p.Free;
  p := nil;
end;  { FreeObject }

function ForceBackslash(const DirName: String): String;
{ Adds a default backslash to a directory name if not already present }
begin { ForceBackslash }
  if (DirName = '') or not (DirName[Length(DirName)] in ['\', ':'])
  then ForceBackSlash := DirName + '\'
  else ForceBackslash := Dirname
end;  { ForceBackslash }

procedure GetIniPath(section, varname: String; var dir: String);
{ Finds path in .INI file }
var
  IniFile: TIniFile;
begin { GetIniPath }
  OpenIniFile(IniFile);
  dir := IniFile.ReadString(section, varname, '');
  dir := ForceBackSlash(dir);
  IniFile.Free;
end;  { GetIniPath }

procedure GetIniString(section, varname: String; var result: String);
{ Finds string value in .INI file }
var
  IniFile: TIniFile;
begin { GetIniPath }
  OpenIniFile(IniFile);
  Result := IniFile.ReadString(section, varname, '');
  IniFile.Free;
end;  { GetIniPath }

function LeftAlign(s: String; count: Integer): String;
{ Returns a string with length Count, with s at the left and
padded with spaces to the right }
begin { LeftAlign }
  if Length(s) > count
  then LeftAlign := Copy(s, 1, count)
  else LeftAlign := s + SpaceStr(count - Length(s))
end;  { LeftAlign }

function LeftStr(s: String; count: Integer): String;
begin
  LeftStr := Copy(s, 1, count)
end;  { LeftStr }


procedure OpenIniFile(var Inifile: TIniFile);
{ Opens the ini file of the 'current application'.
It is assumed to be at the same location as the executable }
var IniFilename: String;
begin { OpenIniFile }
  IniFilename := Application.Exename;
  IniFilename := ChangeFileExt(Inifilename, '.ini');
  IniFile := TIniFile.Create(IniFilename);
end;  { OpenIniFile }

procedure ReplaceChars(var S: String; FromCh, ToCh: Char);
{ Replaces characters in string that are equal to FromCh with
characters ToCh }
var p: Integer;
begin { ReplaceChars }
  for p := 1 to Length(S)
  do if S[p] = FromCh
     then S[p] := ToCh;
end;  { ReplaceChars }

function RightAlign(s: String; count: Integer): String;
{ Returns a string with length Count, with s at the right and
padded with spaces to the left }
begin { RightAlign }
  if Length(s) > count
  then RightAlign := Copy(s, count, Length(s)-count)
  else RightAlign := SpaceStr(count - Length(s)) + s
end;  { RightAlign }

function RightStr(s: String; count: Integer): String;
begin
  RightStr := Copy(s, Length(s)-count+1, count)
end;  { RightStr }

procedure RunDosCommand(CmdLine: String);
{ Runs Dos command as if it were started from the command line,
explicitly calling command.com }
var Result: Integer;
begin { RunDosCommand }
  CmdLine := 'command.com' + ' /C ' + Cmdline + Chr(0);
  Result := WinExec(@CmdLine[1], sw_minimize);
  if Result < 32
  then ShowMessage('Execution of command line' + CRLF +
                   LeftStr(CmdLine, Length(CmdLine)-1) + CRLF +
                   'failed. Error code:' + IntToStr(result));
end;  { RunDosCommand }

(*
procedure RunProgram(CmdLine: String);
{ Runs program as if it were started from the command line }
var
  ExecResult: Integer;
  Filename: array[0..100] of Char;
  p, H: Integer;
begin { RunProgram }
  CmdLine := Cmdline + Chr(0);
  ExecResult := WinExec(@CmdLine[1], sw_restore);
  if ExecResult < 32
  then ShowMessage('Execution of command line' + CRLF +
                   LeftStr(CmdLine, Length(CmdLine)-1) + CRLF +
                   'failed. Error code:' + IntToStr(ExecResult));
  {p := Pos(' ', CmdLine);
  CmdLine := LeftStr(CmdLine, p-1) + Chr(0);}
  Application.ProcessMessages;
  H := GetModuleHandle(@CmdLine[1]);
end;  { RunProgram }
*)

procedure RunProgram( CmdLine: String);
{ Runs program as if it were started from the command line }
begin
  CmdLine := Cmdline + Chr(0);
  if WinExec( @CmdLine[1], sw_ShowNormal) < 32
  then MessageDlg( 'Failed to execute ' + CmdLine, mtError, [mbOK], 0);
end;  { RunProgram }

procedure ShowMessage(message: String);
{ Same as Dialogs' ShowMessage, but sets the cursor to crDefault
before displaying the dialog and sets it back to what it was
afterwards }
var oldCursor: TCursor;
begin { ShowMessage }
  OldCursor := Screen.Cursor;
  Screen.Cursor := crDefault;
  Dialogs.ShowMessage(message);
  Screen.Cursor := OldCursor;
end;  { ShowMessage }

function SpaceStr(n: longint): string;
{ returns string containing n spaces (#32) }
var
  j: longint;
begin { SpaceStr }
  Result := '';
  for j := 1 to n do Result := Result + Space;
end; { SpaceStr }

procedure SplitStringAt(str: String; splitchar: Char;
                       var firstpart, secondpart: String);
{ Splits string at first splitchar;
 if splitchar is not found, firstpart:=str; secondpart:='' }
var p: Integer;
begin { SplitStringAt }
  p := Pos(splitchar, str);
  if p <> 0
  then begin
    firstpart := LeftStr(str, p-1);
    secondpart := RightStr(str, length(str)-p)
  end
  else begin
    firstpart := str;
    secondpart := ''
  end
end;  { SplitStringAt }

function StrToDateTime(S: string): TDateTime;
{ Same as SysUtils.StrToDateTime, but this one also permits
the use of the '/' (slash) date separator even if the
DateSeparator variable on this machine is not a slash }
var p: Integer;
    YStr, RestStr: String;
begin { StrToDateTime }
  if (DateSeparator <> '/') and (Pos(DateSeparator, S) = 0)
  then ReplaceChars(S, '/', DateSeparator);
  Result := SysUtils.StrToDateTime(S);
end;  { StrToDateTime }


function StrToFloat(const S: string): Extended;
{ See Help on StrToFloat for specification.
This wrapper is needed because for unknown reasons,
on some (Win95) systems StrToFloat gives exceptions
where it shouldn't }
var
  p: Integer;
  WorkS: String;
begin { StrToFloat }
  try
    Result := SysUtils.StrToFloat(S);
  except
    on EConvertError
    do begin
      WarningMessage('StrToFloat EConvertError; S='+S+CRLF
                     +'DecimalSeparator='+DecimalSeparator);
      WorkS := S;
      p := Pos(',', S);
      WorkS[p] := '.';
      p := Pos(',', S);
      if p = 0
      then Result := SysUtils.StrToFloat(WorkS);
    end;
  end
end;  { StrToFloat }


function ThreeDigitStr(n: Integer): String;
{ Makes a string of three digits representing the number 'n';
the number ought to lie in the interval [0, 999] }
var s: String;
begin { threedigitstr }
  Str(n, s);
  while Length(s) < 3
  do s := '0' + s;
  threedigitstr := s
end;  { threedigitstr }

procedure Trim(var s: String);
{ Eliminates leading and trailing spaces from a string }
begin { Trim }
  while Pos(' ', s) = 1
  do system.Delete(s, 1, 1);
  while (s <> '') and (s[Length(s)] = ' ')
  do system.Delete(s, Length(s), 1);
end;  { Trim }

function TwoDigitStr(n: Integer): String;
{ Makes a string of two digits representing the number 'n';
the number ought to lie in the interval [0, 99] }
var s: String;
begin { Twodigitstr }
  Str(n, s);
  if n < 10
  then TwoDigitStr := '0' + s
  else TwoDigitStr := s
end;  { Twodigitstr }

{$ifdef ver80}
procedure Sleep(msec: Longint);
const
  msecperday = 86400000; { = 24 * 3600 * 1000 }
var
  Start: TDateTime;
begin { Sleep }
  Start := Now;
  repeat Application.ProcessMessages
  until Now-Start > msec/msecperday
end;  { Sleep }
{$endif ver80}

function VersionStr: String;
{ Returns a string that represents the date of creation of the
  executable file of the program that's being executed }
const
  Month: array[1..12] of string =
    ('January', 'February', 'March', 'April', 'May', 'June', 'July',
     'August', 'September', 'October', 'November', 'December');
var
  DateTime: TDateTime;
  Filehandle, Filedate: longint;
  yy, mm, dd: word;
begin { VersionStr }
  Filehandle := FileOpen( ParamStr( 0), fmShareDenyNone);
  Filedate := FileGetDate( Filehandle);
  FileClose( Filehandle);
  DateTime := FileDateToDateTime( FileDate);
  DecodeDate( DateTime, yy, mm, dd);
  Result := IntToStr( dd) + ' ' + Month[mm] + ' ' + IntToStr( yy);
end;  { VersionStr }

procedure WarningMessage( Str: string);
{ Shows window with Str as message during 1 second.
  Calling program keeps running. }
begin { WarningMessage }
  if WarningForm = nil
  then WarningForm := TWarningForm.Create( nil);
  WarningForm.Warning( 1, Str);
end;  { WarningMessage }

function WithoutBackslash(const DirName: String): String;
{ Makes sure that a directory is not followed by a backslash,
with one exception: drive letter + ':\' is left unchanged }
begin { WithoutBackslash }
  if (Length(Dirname) = 0)
     or ((Length(Dirname) = 3) and (DirName[2]=':'))
     or (DirName[Length(Dirname)] <> '\')
  then Result := Dirname
  else Result := Copy(Dirname, 1, Length(Dirname)-1)
end;  { WithoutBackslash }

initialization
  WarningForm := nil;
{$ifndef ver80}
finalization
  WarningForm.Free;
{$endif ver80}
end.  { Unit MoreUtil }
