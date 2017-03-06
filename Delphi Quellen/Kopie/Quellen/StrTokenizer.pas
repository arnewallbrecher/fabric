{************************************************************************}

{       Windsway Geodesy Library}
{       Mapstuff.PAS Version 0.95}

{ The initial developer of the Delphi code is < Victor Fraenckel>}
{ (victorf@windreader.com).}
{
{ Portions created by < Victor Fraenckel> are}
{ Copyright © 2002, 2003 < Windsway Instrument Company>.}


{       Obtained through:}

{       Windsway Instrument Company}

{ You may download the latest version of this file at:}
{ www.windreader.com/geodesy}

{ The contents of this file are used with permission, subject to}
{ the Mozilla Public License Version 1.1 (the "License") you may}
{ not use this file except in compliance with the License. You may}
{ obtain a copy of the License at}
{ http:{www.mozilla.org/MPL/MPL-1.1.html}

{ Software distributed under the License is distributed on an}
{ "AS IS" basis, WITHOUT WARRANTY OF ANY KIND, either express or}
{ implied. See the License for the specific language governing}
{ rights and limitations under the License.}

{ If you modify this file or correct mistakes, I would appreciate}
{ you dropping me an e-mail to let me know what you think of it and}
{ let me know about your bug fixes and any additions you have made.}
{ Reach me at victorf@windreader.com}

{Vic Fraenckel 12/02/2003}

{************************************************************************}

unit StrTokenizer;

interface

uses
  SysUtils, classes;

type

  DelimCharSet = Set of Char;

function StringTokenizer(TokenString : String;
            var TokenList : TStringList;
            Delimiters : DelimCharSet;
            IncludeEmpty : Boolean) : Integer;

implementation

function StringTokenizer(TokenString : String;
            var TokenList : TStringList;
            Delimiters : DelimCharSet;
            IncludeEmpty : Boolean) : Integer;

{this function parses the string TokenString and returns the tokens found}
{in the TStringList TokenList. The function returns the count of the tokens}
{found. If the function returns 0 then NO tokens were found}
{if IncludeEmpty is True then null tokens are counted; i.e. 'aaa,,bbb,ccc'}
{would yield a token count of 4 if IncludeEmpty is True or 3 if it were False}

{NOTE:  the function clears TokenList before use and sets it's sorted property}
{       to false}
  var
    iPos : integer;
    cntToken : integer;
    posStart : integer;
    len : integer;

  begin   //function StringTokenizer
    cntToken := 0;                       //count the tokens
    posStart := 1;                       //first point in TokenString
    TokenList.Clear;                     //start with empty list
    TokenList.Sorted := False;           //don't want it sorted
    len := Length(TokenString);

    if (len = 0) then     //no tokens
      begin
        result := cntToken; //set token count
        exit;               //get out
      end;

    For iPos := 1 To len do //examine all characters
      begin
        // is char among delimiters?
        if TokenString[ipos] in Delimiters then  //found a delimiter
          begin
            if (iPos > posStart) or IncludeEmpty then
              begin
                //save this token in the list
                TokenList.Add(Copy(TokenString,posStart,ipos-posStart));
                inc(cntToken);    //count another token
              end;
            posStart := ipos + 1;      //move over to next char
          end;
      end;

    // anything left
    If (iPos > posStart) Or IncludeEmpty Then
      begin
        //save in the list
        TokenList.Add(Copy(TokenString,posStart,len-posStart+1));
        inc(cntToken);  //count the token
      end;

    //return the token count
    result := cntToken;

  end;  //function StringTokenizer

end.
