Unit Clounit1;

interface
uses Graphics, Comctrls, Dialogs, Texte;

Procedure BeginnCluster (var Gruppen: byte; var Trennung: boolean;
                         Fortschritt: TProgressBar);
procedure Carcor (Irho,Iphi:word; var Xc,Yc,Zc:real);
procedure Isort(Laenge:word; var Sort: array of word);
procedure Summe (Iii:word;var Xx,Yy,Zz:real; var Sumx,Sumy,Sumz:real);
function Flazi(X,Y,Z:real):word;
function Flpol (X,Y,Z:real):word;

implementation

uses Globvar, Basic, CloVar, CloUnit2, CloUnit4, SysUtils;

procedure BeginnCluster (var Gruppen: byte; var Trennung: boolean;
                         Fortschritt: TProgressBar);
type
  TMerke   = array[0..1000] of word;
  TSortier = array[0..1000] of word;
  Txx      = array[0..1000] of real;
  TY       = array[0..1000] of real;
  TZ       = array[0..1000] of real;
  TDatTyp  = word;
var
  MerkeZeiger   : ^TMerke;
  SortierZeiger : ^TSortier;
  XZeiger       : ^Txx;
  YZeiger       : ^TY;
  ZZeiger       : ^TZ;
  Vertrauen     : real;
  Numgru        : word;
  ZirkOeff, iss : byte;
  i             : word;
  Xc, Yc, Zc, P : real;
  DateiM        : file of TDatTyp;
  DateiF        : file of TDatTyp;
  DateiV        : file of TDatTyp;
  Dir           : string;
begin
  {Dateien zum Auslagern der Zwischenergebnisse}
  getdir (0, DirectS);
  Dir := DirectS;
  assignfile (DateiV,DirectS + '\' + 'VEKTOR.TMP');
  assignfile (DateiM,DirectS + '\' + 'MZAEHLER.TMP');
  assignfile (DateiF,DirectS + '\' + 'MFELD.TMP');
  rewrite (DateiM);
  rewrite (DateiF);
  rewrite (DateiV);
  CloseFile (DateiM);
  CloseFile (DateiF);
  CloseFile (DateiV);
  MerkeZeiger   := NIL;
  SortierZeiger := NIL;
  XZeiger       := NIL;
  YZeiger       := NIL;
  ZZeiger       := NIL;
  Getmem (MerkeZeiger, sizeof(TMerke));
  Getmem (SortierZeiger, sizeof(TSortier));
  Getmem (XZeiger, sizeof(Txx));
  Getmem (YZeiger, sizeof(TY));
  Getmem (ZZeiger, sizeof(TZ));
  try
    Test := 1. - 1. / (ZahlGlob*Vielfach);
    Vertrauen := (100 - Konfidenz) / 100;
    {Umwandlung der Daten in kartesische Koordinaten}
    for i := 1 to ZahlGlob do
    begin
      Carcor (AziFeld[i], FalFeld[i], Xc, Yc, Zc);
      XZeiger^[i] := Xc;
      YZeiger^[i] := Yc;
      ZZeiger^[i] := Zc;
    end;
    Vecsum (ZahlGlob, XZeiger^, YZeiger^, ZZeiger^);
    Pool   := 0;
    Anzahl := 0;
    iss    := 0;
    lz     := 0;
    Test   := 1. -1./(ZahlGlob*Vielfach);
    Test   := ArcTan(sqrt(1-sqr(Test))/Test)*360/pi;
    P      := (100 - Konfidenz)/100;
    Cluster (P, ZahlGlob, MerkeZeiger^, SortierZeiger^, XZeiger^,
             YZeiger^, ZZeiger^, Numgru, Zirkoeff, Gruppen, Fortschritt);
    if Iclus = 0 then Showmessage (Tx(1185));
    if (lz > 1) and (Pool = 0) then
      Signif (P,ZahlGlob, MerkeZeiger^, SortierZeiger^, XZeiger^, YZeiger^,
              ZZeiger^, Numgru, Trennung);
    str(Test:4:1, TestS);
    AnzahlS := IntToStr(Anzahl);
  finally
    Freemem (XZeiger);
    Freemem (YZeiger);
    Freemem (ZZeiger);
    Freemem (Merkezeiger);
    Freemem (SortierZeiger);
    erase (DateiV);
    erase (DateiM);
    erase (DateiF);
  end;
  DirectS := Dir;
end;

procedure Carcor (Irho,Iphi:word; var Xc,Yc,Zc:real);
var
  Bo  : real;
  Rho : real;
  Phi : real;
begin
  Bo := Pi / 180;
  if Gefuegetyp <> 1 then
  begin
    Irho := (Irho + 180) mod 360;
    Iphi := 90 - Iphi;
  end;
  Rho := Irho * Bo;
  Phi := Iphi * Bo;
  Xc  := sin(Rho) * cos(Phi);
  Yc  := cos(Rho) * cos(Phi);
  Zc  := - sin(Phi);
end;

procedure Isort(Laenge:word; var Sort: array of word);
var
  i,m,j,n : word;
  Kount   : word;
  K       : word;
begin
  i := Laenge - 1;
  for m := 1 to i do
  begin
    j := m + 1;
    Kount := 0;
    for n := j to Laenge do
    begin
      if Sort[n] < Sort[m] then
      begin
	K := Sort[m];
        Sort[m] := Sort[n];
        Sort[n] := K;
       	Kount := Kount + 1;
      end;
    end;
  end;
end;

procedure Summe (Iii:word;var Xx,Yy,Zz:real; var Sumx,Sumy,Sumz:real);
var
  W  : real;
  Xs : real;
  Ys : real;
  Zs : real;
  F  : real;
begin
  if Iii >= 2 then
  begin
    W  := sqrt(sqr(Sumx) + sqr(Sumy) + sqr(Sumz));
    If W = 0 then W := 0.000001;
    Xs := Sumx / W;
    Ys := Sumy / W;
    Zs := Sumz / W;
    F  := sqrt(sqr(Xs+Xx) + sqr(Ys+Yy) + sqr(Zs+Zz));
    if F < sqrt(2) then
    begin
      Xx := -Xx;
      Yy := -Yy;
      Zz := -Zz;
    end;
  end;
  Sumx := Sumx + Xx;
  Sumy := Sumy + Yy;
  Sumz := Sumz + Zz;
  Q[1,1] := Q[1,1] + sqr(Xx);
  Q[2,2] := Q[2,2] + sqr(Yy);
  Q[3,3] := Q[3,3] + sqr(Zz);
  Q[1,2] := Q[1,2] + Xx * Yy;
  Q[1,3] := Q[1,3] + Xx * Zz;
  Q[2,1] := Q[1,2];
  Q[3,1] := Q[1,3];
  Q[2,3] := Q[2,3] +Yy * Zz;
  Q[3,2] := Q[2,3];
end;

function Flazi(X,Y,Z:real):word;
var
  Bo   : real;
  Lazi : integer;
label
  Sprung3,
  Sprung8;
begin
  Bo := Pi / 180;
  if Z > 0 then
  begin
    X := -X;
    Y := -Y;
    Z := -Z;
  end;
  if Y <> 0 then
  begin
    Lazi := round(arctan(X/Y)/Bo);
    if Lazi = 0 then Lazi := abs(Lazi);
    if Lazi < 0 then Lazi := Lazi + 180;
    goto Sprung3
  end;
  Lazi := 90;
  if X < 0 then Lazi := 270;
  goto Sprung8;
  Sprung3:
  if (Lazi = 0) and (Y < 0) then Lazi := 180;
  if (Lazi = 0) and (Y > 0) then Lazi := 0;
  if (Lazi <> 0) and (Lazi <> 180) then if X < 0 then Lazi := Lazi + 180;
  Sprung8:
  if Lazi >=360 then Lazi := Lazi - 360;
  if Gefuegetyp <> 1 then Lazi := (Lazi + 180) mod 360;
  Flazi := Lazi;
end;

function Flpol (X,Y,Z:real):word;
var
  Bo   : real;
  Lpol : word;
begin
  Bo := Pi / 180;
  Z  := abs(Z);
  if Z < 1 then Lpol := round(arctan(Z/sqrt(1-sqr(Z)))/Bo)
  else Lpol := 90;
  if Gefuegetyp <> 1 then Lpol := 90 - Lpol;
  Flpol := Lpol;
end;

end.