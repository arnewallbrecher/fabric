Unit Basic;

interface

uses Dialogs, Standard, Globvar, Texte, SysUtils, Graphics;

   function  Arccos (Argument:real):real;
   function  Arcsin (Argument:real):real;
   function  Azimut (X, Y:real):word;
   procedure CLFarben (FarbeS:string; var FarbeTc : TColor);
   function  Fallen (Z:real):shortint;
   procedure Findedll (Dhandle:integer; Name:string);
   function  Hoch(Basis,Exponent:real):real;
   function  LeftS(Gestext:string;Teil:integer):string; {linker Stringrest}
   function  Max(a:double; b:double):double;
   function  MidS(Text:string;Start,Laenge:byte):string;
   function  Nachkomma(var ZeileS:string):string;
   procedure PsLinien (LinienTypS:string; var LinienTyp :TPenStyle);
   function  RightS(Gestext:string;Teil:integer):string;{rechter String}
   function  SpaceS(Laenge:byte):string;         {Leerstring}
   function  Tan(Argument:real):real;
   procedure Texttest (TextS:string; Zeile:byte);
   function  UcaseS(Text:string):string;

implementation

  function Arccos (Argument:real):real;
  begin
    Arccos := arctan (sqrt(1-sqr(Argument))/Argument);
  end;

  function Arcsin (Argument:real):real;
  begin
    Arcsin := Arctan (Argument / sqrt(1 - sqr(Argument)));
  end;

  function  Azimut (X, Y:real):word;
  const
    Bo = Pi/180;
  var
    Lazi : integer;
  begin
    if X <> 0 then
    begin
      Lazi := round(arctan(Y/X)/Bo);
      if Lazi = 0 then Lazi := abs(Lazi);
      if Lazi < 0 then Lazi := Lazi + 180;
    end
    else
    begin
      Lazi := 90;
      if Y < 0 then Lazi := 270;
    end;
    if (Lazi = 0) and (X < 0) then Lazi := 180;
    if (Lazi = 0) and (X > 0) then Lazi := 0;
    if (Lazi <> 0) and (Lazi <> 180) then
      if Y < 0 then Lazi := Lazi + 180;
    if Lazi >=360 then Lazi := Lazi - 360;
    Azimut := Lazi;
  end;

  procedure CLFarben (FarbeS:string; var FarbeTc : TColor);
  begin
    FarbeS := UcaseS (FarbeS);
    if FarbeS = 'BLACK'   then FarbeTc := clBlack;
    if FarbeS = 'MAROON'  then FarbeTc := clMaroon;
    if FarbeS = 'GREEN'   then FarbeTc := clGreen;
    if FarbeS = 'OLIVE'   then FarbeTc := clOlive;
    if FarbeS = 'NAVY'    then FarbeTc := clNavy;
    if FarbeS = 'PURPLE'  then FarbeTc := clPurple;
    if FarbeS = 'TEAL'    then FarbeTc := clTeal;
    if FarbeS = 'GRAY'    then FarbeTc := clGray;
    if FarbeS = 'SILVER'  then FarbeTc := clSilver;
    if FarbeS = 'RED'     then FarbeTc := clRed;
    if FarbeS = 'LIME'    then FarbeTc := clLime;
    if FarbeS = 'YELLOW'  then FarbeTc := clYellow;
    if FarbeS = 'BLUE'    then FarbeTc := clBlue;
    if FarbeS = 'FUCHSIA' then FarbeTc := clFuchsia;
    if FarbeS = 'AQUA'    then FarbeTc := clAqua;
    if FarbeS = 'WHITE'   then FarbeTc := clWhite;
  end;

  function Fallen (Z:real):shortint;
  const
    Bo = Pi/180;
  begin
    Z  := abs(Z);
    if Z < 1 then Fallen := round(arctan(Z/sqrt(1-sqr(Z)))/Bo)
    else Fallen := 90;
  end;

  procedure Findedll (Dhandle:integer; Name:string);
  begin
    Ausb := false;
    if Dhandle = 0 then
    begin
      KomS[1] := ' ';
      KomS[2] := '  ' + Name + '  ';
      KomS[3] := '  ' + Tx(29) + '  '; {nicht gefunden}
      ReihenB := 3;
      Kasten;
      Messagedlg (ZeilenS, MtError, [mbCancel], 0);
      Ausb := true;
    end;
  end;

  function Hoch(Basis:real;Exponent:real):real;
  var
    X : real;
  begin
    X := ln(Basis) * Exponent;
    Hoch := exp(X);
  end;

  function LeftS(Gestext:string;Teil:integer):string;
  begin
    LeftS := copy(Gestext,1,Teil);
  end;

  function  Max(a:double; b:double):double;
  begin
    Result := 0.0;
    if a > b then Result := a;
    if b > a then Result := b;
    If a = b then Result := a;
  end;

  function  MidS(Text:string;Start,Laenge:byte):string;
  begin
    MidS := copy(Text,Start,Laenge);
  end;

  function Nachkomma (var ZeileS:string):string;
  var
    i,j,k :byte;
    x     :string;
  begin
    k := pos(',',ZeileS);
    j := pos(':',ZeileS);
    i := length(ZeileS)-k;
    x := (RightS(ZeileS,i));
    if k = 0 then Nachkomma := '' else
    begin
      Kompress (x);
      Nachkomma := x;
    end;
    ZeileS := LeftS(ZeileS,j-1);
    Kompress(ZeileS);
    repeat
      if LeftS(ZeileS,1) = ' ' then delete (ZeileS,1,1);
    until LeftS(ZeileS,1) <> ' ';
  end;

  procedure PsLinien (LinienTypS:string; var LinienTyp :TPenStyle);
  begin
    LinienTypS := UcaseS (LinienTypS);
    if LinientypS = 'SOLID'   then LinienTyp := psSolid;
    if LinientypS = 'DASH'    then LinienTyp := psDash;
    if LinientypS = 'DOT'     then LinienTyp := psDot;
    if LinientypS = 'DASHDOT' then LinienTyp := psDashDot;
  end;

  function RightS(Gestext:string;Teil:integer):string;
  begin
    RightS := copy(Gestext,length(Gestext)-Teil+1,Teil);
  end;

  function SpaceS(Laenge:byte):string;
  var
    X:string;
    i:byte;
  begin
    X :='';
    for i := 1 to Laenge do X := X+' ';
    SpaceS := X;
  end;

  function Tan(Argument:real):real;
  begin
    Tan := sin(Argument) / cos(Argument);
  end;

  procedure Texttest (TextS:string; Zeile:byte);

  type
    Dattyp = record
    Zeile :string[80];
    Ende  :char;
  end;
  var
    Datei        : file of Dattyp;
    Datein       : Dattyp;
    Datnam       : string;
    Restzeile    : word;
    TxS, ZS      : string[80];
  begin
    Datnam := 'Testconfig.bin';
    assignFile (Datei,DirectS+'\'+Datnam);
    reset (Datei);
    seek (Datei,Zeile-1);                      {Zeiger auf Zeilennummer}
    read (Datei,Datein);                       {Zeile lesen}
    datein.zeile:=datein.zeile[0]+datein.zeile;{ZeilenlÑnge unterdrÅcken}
    delete (datein.zeile,1,1);                 {1. Zeichen (O) abschneiden}
    Restzeile := length(datein.zeile)-pos('@',datein.zeile);
    delete(datein.zeile,pos('@',datein.zeile),Restzeile+1);
    TxS := datein.zeile;                     {Ausgabe der Zeile}
    closeFile (Datei);
    if TextS <> TxS then
    begin
      str (Zeile,ZS);
      KomS[1] := Tx(412) + ZS;       {Fehler in der Datei Gefuege7.ini, Zeile }
      KomS[2] := ' ';
      KomS[3] := '"'+TextS+' " ';
      KomS[4] := ' ';
      KomS[5] := Tx(413)+' "'+TxS+'" ';
      KomS[6] := ' ';
      ReihenB := 6;
      Kasten;
      if MessageDlg (ZeilenS, mtError, [mbCancel], 0) = 2 then
      begin
        MessageDlg (Tx(414) + ZS + ' in Gefuege7.ini',
                    mtInformation, [mbOK], 0);
        Ausb := true;
      end;
    end;
  end;

  function UcaseS(Text:string):string;
  var
    i :byte;
  begin
    for i := 1 to length(Text) do Text[i] := upcase(Text[i]);
    UcaseS := Text;
  end;
end.






