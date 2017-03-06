Unit texte;

interface
  function  Tx(Zeilennummer:integer):string;
  function  Hilf(Zeilennummer:integer):string;
  procedure Kasten;
  procedure Rausschmiss;
  procedure Lieslizenz;
  procedure Konfig;

implementation
uses Dialogs, Basic, Globvar, SysUtils, Classes;

function Tx(Zeilennummer:integer):string;
{Liest eine Textzeile aus der Binärdatei}
  var
    Datnam : string;
    Text   : TStrings;
    Zeile  : string[80];

  begin
    SpracheS := UcaseS(SpracheS);
    if SpracheS = 'DEUTSCH' then Datnam := 'DEUTSCH7.txt';
    if SpracheS = 'ENGLISH' then Datnam := 'ENGLISH7.txt';
    Text := TStringList.create;
    Text.LoadfromFile (DirectS+'\'+Datnam);
    Zeile := Text[Zeilennummer-1];
    delete (Zeile,1,pos('§',Zeile));
    Tx := Zeile;
    Text.free;
  end;

function Hilf(Zeilennummer:integer):string;
  {Liest eine Textzeile aus der Hilfe-Datei}
  var
    Datnam : string;
    Text   : TStrings;
    Zeile  : string[120];
  begin
    SpracheS := UcaseS(SpracheS);
    if SpracheS = 'DEUTSCH' then Datnam := 'Hilfdeut.txt';
    if SpracheS = 'ENGLISH' then Datnam := 'Helpengl.txt';
    Text := TStringList.create;
    Text.LoadfromFile (DirectS+'\'+Datnam);
    Zeile := Text[Zeilennummer-1];
    delete (Zeile,1,pos('§',Zeile));
    Hilf := Zeile;
    Text.free;
  end;

  procedure Kasten;
  var i : byte;
  begin
    ZeilenS := '';
    for i := 1 to ReihenB do ZeilenS := ZeilenS + KomS[i] + chr(13)+chr(10);
  end;

  procedure Rausschmiss;
  begin
    KomS[1] := Tx(42);
    KomS[2] := Tx(43);
    KomS[3] := Tx(44);
    KomS[4] := Tx(45);
    KomS[5] := Tx(46);
    KomS[6] := Tx(47);
    KomS[7] := Tx(48);
    ReihenB := 7;
    Kasten;
    if MessageDlg (ZeilenS, mterror, [mbCancel],0) = 2 then
    begin
      MessageDlg (Tx(49), mtInformation, [mbOK], 0);
      halt;
    end;
  end;

  Procedure Lieslizenz;
type
  tLizenz = packed record
              LizName     : string[80];
              AnfangJahr  : word;
              AnfangMonat : word;
              AnfangTag   : word;
              DemoJaNein  : integer;
              Passwort    : string[6];
  end;
  DateiTyp = file of tLizenz;
var
  Datei : Dateityp;
  Zeile : tLizenz;
begin
  assignFile (Datei, DirectS+'\'+'Lizenz.bin');
  reset (Datei);
  read  (Datei, Zeile);
  NameLiz:= Zeile.LizName;
  AJahr  := Zeile.AnfangJahr;
  AMonat := Zeile.AnfangMonat;
  ATag   := Zeile.AnfangTag;
  {ja = 2086138754}
  {nein = 0}
  Schluessel := Zeile.DemoJaNein;
  PwS        := Zeile.Passwort;
  CloseFile(Datei);
end;

procedure Konfig;
  var
    Datei : Textfile;
    i     : byte;
  begin
    assignFile(Datei,DirectS+'\'+'Gefuege7.ini');
    reset (Datei);
    i := 0;
    while not Eof (Datei) do
    begin
      inc(i);
      readln (Datei, KonfigZeileS[i]);
    end;
    closefile (Datei);
  end;
end.