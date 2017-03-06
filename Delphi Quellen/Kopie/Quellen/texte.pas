Unit texte;
interface
uses Forms;
  function  Tx(Zeilennummer:integer):string;
  function  Hilf(Zeilennummer:integer):string;
  procedure Kasten;
  procedure Rausschmiss;
  procedure Lieslizenz;
  procedure Konfig;

implementation
uses Dialogs, Basic, Globvar, SysUtils, Classes;

function Tx(Zeilennummer:integer):string;
{Liest eine Textzeile aus der datei}
  var
    Datnam : string;
    Text   : TStrings;
    Zeile  : string;
  begin
    SpracheS := UcaseS(SpracheS);
    if SpracheS = 'DEUTSCH' then Datnam := 'DEUTSCH.txt';
    if SpracheS = 'ENGLISH' then Datnam := 'ENGLISH.txt';
    Text := TStringList.create;
    try
      Text.LoadfromFile (DirectS+'\'+Datnam);
      Zeile := Text[Zeilennummer-1];
      delete (Zeile,1,pos('§',Zeile));
      Tx := Zeile;
    finally
      Text.Clear;
      Text.free;
    end;
  end;

function Hilf(Zeilennummer:integer):string;
  {Liest eine Textzeile aus der Hilfe-Datei}
  var
    Datnam : string;
    Text   : TStrings;
    Zeile  : string;
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
  filemode := 0;
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
  if Schluessel = 2086138754 then DemoB := false
                             else DemoB := true;
end;

procedure Konfig;
  var
    Datei : Textfile;
    i     : byte;
  begin
    assignFile(Datei,DirectS+'\'+'Fabric.ini');
    reset (Datei);
    for i := 1 to ConfigEnde do
      readln (Datei, KonfigZeileS[i]);
    closefile (Datei);
  end;
end.
