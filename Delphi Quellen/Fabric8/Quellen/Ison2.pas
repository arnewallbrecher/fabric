
Unit Ison2;
{$N+}

Interface

uses Globvar, Texte, Basic, Dialogs, Graphics, SysUtils, Comctrls;

procedure Countp(Kal: real; Count,Ap, Fp: array of word;
                 Zi,Zl:array of real;
                 Fortschritt: TProgressBar;
                 var Wwzeiger: Tww);
procedure Funktion (var Lp,Le:word; Ip,Ie:word; var Func:double; Kal:real;
                    Co,Si:array of real);
procedure Brkr(Count: array of word; n, Ip, Ie, Lpp, j: word; var Le:word;
               var Ka: byte; var Func: double; Kal: real; Co,Si:array of real;
               var Wwzeiger : Tww);
procedure Tra(Rn,Wn:real; var X,Y:real);
procedure Samm(L,ik,j:integer; var nz:word; P:real; var Zi,Zl:array of real;
               var Ba1zeiger,Ba2zeiger,Be1zeiger,Be2zeiger: array of real;
               var Wwzeiger : Tww);
procedure Plisli(P:real; var Zi,Zl:array of real; Ba1zeiger,Ba2zeiger,Be1zeiger,
                 Be2zeiger: array of real; Canvas: TCanvas; Farb: TColor;
                 Linie: TPenstyle; Wwzeiger : Tww);
procedure Iso2(Canvas: TCanvas; nz: word; Ba1zeiger,Ba2zeiger,Be1zeiger,
               Be2zeiger: array of real; Farb: TColor; Linie: TPenstyle);

implementation

procedure Countp(Kal:real; Count,Ap, Fp:array of word;
                 Zi, Zl: array of real;
                 Fortschritt: TProgressBar;
                 var Wwzeiger : Tww);
var
  CoZeiger    : array [0..361] of real;
  SiZeiger    : array [0..361] of real;
  Js1         : array[0..8] of byte;
  Js2         : array[0..8] of byte;
  Bo, Fi      : real;
  i,j,n       : word;
  Lpp, Ipp    : word;
  Lpm, ji, Ip : word;
  Jj, Ka      : byte;
  Ie, Le      : word;
  Func        : double;

label
  Countp19,
  Ausc1;

begin
  Fortschritt.Max  := ZahlGlob;
  Fortschritt.Step := 100;
  if Gefuegetyp = 2 then
  begin
    for i := 1 to Zahlglob do
    begin
      Ap[i] := (Ap[i] + 180) mod 360;
      Fp[i] := 90 - Fp[i];
    end;
  end;
  Bo := Pi / 180;
  for i:= 1 to 360 do
  begin
    Fi    := (i - 1) * Bo;
    Sizeiger[i] := sin(Fi);
    Cozeiger[i] := cos(Fi);
  end;
  for i := 1 to 120 do
  begin
    for j := 1 to 30 do WwZeiger[i,j] := 0;
  end;
  for n := 1 to ZahlGlob do
  begin
    if Fp[n] >84 then
    begin
      j := 24;
      Js1[8] := 84;
      Js2[8] := 90;
    end;
    if Fp[n] <= 84 then
    begin
      j := 12;
      Js1[4] := 72;
      Js2[4] := 84;
    end;
    if Fp[n] <= 72 then
    begin
      j := 6;
      Js1[2] :=48;
      Js2[2] :=72;
    end;
    if Fp[n] <= 48 then
    begin
      j := 3;
      Js1[1] := 0;
      Js2[1] := 48;
    end;
    Lpp := Ap[n] div j * j;
    Ipp := Fp[n] div 3 * 3;
    Lpm := Lpp;
    jj  := j;
    Ip  := Ipp;
    Ka  := 0;
    if Lpp >= 360 then Lpp := 0;
    Ie := Fp[n];
    Le := Ap[n];
   repeat
      Brkr(Count, n,Ip, Ie, Lpp, j, Le, Ka, Func, Kal,
           Cozeiger, Sizeiger, Wwzeiger);
      if Ip = 0 then break;
      ji := j div 3;
      if Ip = Js1[ji] then j := j div 2;
      Ip := Ip - 3;
      Ka := 0;
    until Ip = 1000;
    Lpp := (180 + Lpp) mod 360;
    if j = 0 then j := 1;
    repeat
      ji := j div 3;
      if Ip = Js2[ji] then
      begin
        j := j * 2;
        Lpp :=(Lpp div j) * j;
      end;
      Ka := 0;
      Brkr(Count, n, Ip, Ie, Lpp, j, Le, Ka, Func, Kal,
           Cozeiger, Sizeiger, Wwzeiger);
      if Ip >= 90 then goto Ausc1;
      Ip := Ip + 3;
    until Ka = 0;
    Lpp := Lpm;
    Countp19:
    Ip := Ipp;
    j  := jj;
    if Ip < 90 then
    begin
      repeat
	ji := j div 3;
	if Ip = Js2[ji] then
        begin
          j := j * 2;
          Lpp := (Lpp div j) * j;
        end;
	Ip := Ip + 3;
        Ka := 0;
        Brkr(Count, n, Ip, Ie, Lpp, j, Le, Ka, Func, Kal,
             Cozeiger, Sizeiger, Wwzeiger);
	if Ip >= 90 then goto Ausc1;
	if Ka = 0 then goto Ausc1;
      until Ka = 0;
    end;
    Ausc1:
    Fortschritt.StepIt;
  end; {next n}
end;

procedure Funktion (var Lp,Le:word; Ip,Ie:word;
                    var Func:double; Kal:real;
                    Co,Si:array of real);
var
  E1 : real;
  E2 : real;

begin
  if Le = 360 then Le := 0;
  if Lp = 360 then Lp := 0;
  E1 := Si[Ie+1] * Si[Ip+1];
  E2 := Co[Ip+1]*Co[Ie+1]*(Co[Lp+1]*Co[Le+1]+Si[Lp+1]*Si[Le+1]);
  Func := -abs(E1+E2) + abs((100-Kal)/100);
end;

procedure Brkr(Count: array of word; n,  Ip, Ie, Lpp, j: word;
               var Le: word; var Ka: byte; var Func: double;
               Kal: real; Co, Si: array of real;
               var Wwzeiger : Tww);
var
  Lb : word;
  Lp : word;
  La : word;

begin
  Lb := (Ip+3) div 3;
  Lp := LPP;
  repeat
    Funktion(Lp,Le,Ip,Ie,Func,Kal,Co,Si);
    if Func >= 0 then
    begin
      Lp := Lpp;
      repeat
        Lp := Lp + j;
        if Lp >= 360 then Lp := 0;
        Funktion(Lp,Le,Ip,Ie,Func,Kal,Co,Si);
        if Func >= 0 then exit;
        La := (Lp + 3) div 3;
        Wwzeiger[La,Lb] := Wwzeiger[La,Lb] + Count[n];
        Ka := 1;
      until func = 1111;
    end;
    La := (Lp + 3) div 3;
    Wwzeiger[La,Lb] := Wwzeiger[La,Lb] + Count[n];
    Ka := 1;
    if Lp = 0 then Lp := 360;
    Lp := Lp - j;
  until Lp = Lpp;
end;

procedure Tra(Rn, Wn: real; var X, Y: real);

var
  Bo     : real;
  Ph     : real;
  Sr     : real;
  Rr     : real;
  Winkel : real;
  Si     : real;

begin
  Bo := Pi / 180;
  Ph := Pi / 2;
  Sr := sqrt(2);
  Rr := Bo * Rn;
  Winkel := Bo * Wn;
  Si := Sr * sin((Ph - Winkel) / 2);
  X  := Si * sin(Rr);
  Y  := Si * cos(Rr);
end;

procedure Samm(l,ik,j:integer; var nz:word; P:real; var Zi,Zl:array of real;
               var Ba1zeiger,Ba2zeiger,Be1zeiger,Be2zeiger: array of real;
               var Wwzeiger : Tww);
var
  jj  : integer;
  iz  : word;
  Gl  : double;
  Gi  : double;
  Il  : word;
  i   : integer;
  inn : word;
  A   : double;
  B   : double;
  La  : word;
  ll  : integer;

label
  Sa3,
  Sa10,
  Sa12,
  Sa13,
  Sa20,
  Sa31,
  Sa99;

begin
  jj := j div 3;
  Iz := 0;
  Gl := (l - 1) * 3;
  Il := Ik + 1;
  for i := Ik to Il do
  begin
    Gi  := (i - 1) * 3;
    inn := l + jj;
    if inn > 121 then break;
    A := abs(Wwzeiger[inn,i] - Wwzeiger[l,i]);
    if Wwzeiger[l,i] <= P then
    begin
      if Wwzeiger[inn,i] > P then goto Sa3 else goto Sa10;
    end
    else
    begin
      if Wwzeiger[inn,i] > P then goto Sa10;
    end;
    Sa3:
    B := abs(Wwzeiger[l,i] - P);
    iz := iz + 1;
    Zl[iz] := j / A * B + Gl;
    Zi[iz] := Gi;
    Sa10:
  end;
  Gi := (Ik - 1) * 3;
  La := l + jj;
  ll := L - jj;
  repeat
    ll := ll + jj;
    Gl := (ll - 1) * 3;
    if ll > 121 then exit;
    A := abs(Wwzeiger[ll,ik] - Wwzeiger[ll,ik+1]);
    if A = 0 then A := 0.0001;
    if Wwzeiger[ll,ik] > P then goto Sa12;
    if Wwzeiger[ll,ik+1] <= P then goto Sa20 else goto Sa13;
    Sa12:
    if Wwzeiger[ll,ik+1] > P then goto Sa20;
    Sa13:
    B := abs(Wwzeiger[ll,ik] - P);
    iz := iz + 1;
    Zi[iz] := (3 / A) * B + Gi;
    Zl[iz] := Gl;
    Sa20:
  until ll >= La;
  if iz < 2 then exit;
  if iz > 2 then goto Sa31;
  if nz >= 999 then goto Sa99;
  nz := nz + 1;
  Ba1zeiger[nz] := zl[1];
  Ba2zeiger[nz] := zi[1];
  Be1zeiger[nz] := zl[2];
  Be2zeiger[nz] := zi[2];
  exit;
  Sa31:
  if nz >= 999 then goto Sa99;
  for i := 1 to 2 do
  begin
    nz := nz + 1;
    Ba1zeiger[nz] := zl[i];
    Ba2zeiger[nz] := zi[i];
    Be1zeiger[nz] := zl[i+2];
    Be2zeiger[nz] := zi[i+2];
  end;
  exit;
  Sa99:
  showmessage (Tx(445));                 {Die Zahl der Isolinien ist zu groß}
  exit;
end;

procedure Plisli(P:real; var Zi, Zl: array of real; Ba1zeiger,Ba2zeiger,
                 Be1zeiger,Be2zeiger: array of real; Canvas: TCanvas;
                 Farb: TColor; Linie: TPenstyle;
                 Wwzeiger : Tww);
var
  l, i        : integer;
  nz          : word;
begin
  for i := 1 to 31 do Wwzeiger[121,i] := Wwzeiger[1,i];
  i := 17;
  l := 0;
  repeat
    l := l + 2;
    Wwzeiger[l,i] := (Wwzeiger[l-1,i] + Wwzeiger[l+1,i]) / 2;
  until l >= 120;
  i := 25;
  l := -1;
  repeat
    l := l + 4;
    Wwzeiger[l,i] := (Wwzeiger[l-2,i] + Wwzeiger[l+2,i]) / 2;
  until l >= 119;
  i := 29;
  l := -3;
  repeat
    l := l + 8;
    Wwzeiger[l,i] := (Wwzeiger[l-4,i] + Wwzeiger[l+4,i]) / 2;
  until l >= 117;
  i := 31;
  l := -7;
  repeat
    l := l + 8;
    Wwzeiger[l,i] := Wwzeiger[1,31];
  until l >= 121;
  nz := 0;
  for l := 1 to 120 do for i := 1 to 16 do
    Samm (l,i,3,nz,P,Zi,Zl,Ba1zeiger,Ba2zeiger,Be1zeiger,
          Be2zeiger, Wwzeiger);
  l := -1;
  repeat
    l := l + 2;
    for i := 17 to 24 do
      Samm (l,i,6,nz,P,Zi,Zl,Ba1zeiger,Ba2zeiger,Be1zeiger,
      Be2zeiger, WwZeiger);
  until l >= 120;
  l := -3;
  repeat
    l := l + 4;
    for i := 25 to 28 do
      Samm (l,i,12,nz,P,Zi,Zl,Ba1zeiger,Ba2zeiger,Be1zeiger,
            Be2zeiger, Wwzeiger);
  until l >= 120;
  l := -7;
  repeat
    l := l + 8;
    for i := 29 to 30 do
      Samm(l,i,24,nz,P,Zi,Zl,Ba1zeiger,Ba2zeiger,Be1zeiger,
           Be2zeiger, Wwzeiger);
  until l >= 120;
  Iso2 (Canvas, nz, Ba1zeiger, Ba2zeiger, Be1zeiger, Be2zeiger, Farb, Linie);
end;

procedure Iso2(Canvas: TCanvas; nz: word; Ba1zeiger,Ba2zeiger,Be1zeiger,
               Be2zeiger: array of real; Farb: TColor; Linie: TPenstyle);
var
  Ll        : byte;
  m         : integer;
  T         : real;
  Xa, Xe    : real;
  Ya, Ye    : real;
  X , Y     : real;
  n,i,p,j   : word;
  X1, X2    : array[0..1500] of word;
  Y1, Y2    : array[0..1500] of word;
  Xsort1    : array[0..1500] of word;
  Xsort2    : array[0..1500] of word;
  Ysort1    : array[0..1500] of word;
  Ysort2    : array[0..1500] of word;
  Xp, Yp    : integer;
  ZahlLin   : word;
  Zaehl     : word;
  l1, l2    : real;
label
  Iso20;
begin
  Ll := 1;
  m  := nz;
  T  := 0.001;
  if m <= 0 then exit;  {if m <= 0 }
  p := 0;
  for i := 1 to m do
  begin
    if Ba1zeiger[i] > 360 then Ba1zeiger[i] := 360;
    if Be1zeiger[i] > 360 then Be1zeiger[i] := 360;
  end;
  Xa := Ba1zeiger[1];
  Ya := Ba2zeiger[1];
  Xe := Be1zeiger[1];
  Ye := Be2zeiger[1];
  Tra(Xa,Ya,X,Y);
  Xp := round(X*Radius+XMitte);
  Yp := round(YMitte-Y*Radius);
Iso20:
  if Xe <= 360 then
  begin
    Tra(Xe,Ye,X,Y);
    p := p + 1;
    X1[p] := Xp;
    Y1[p] := Yp;
    Xp  := round(Xmitte+X*Radius);
    Yp  := round(Ymitte-Y*Radius);
    X2[p] := Xp;
    Y2[p] := Yp;
  end;
  if abs(Xe-Xa) + abs(Ye-Ya) > 0.5 then
  begin
    if abs(Ye) <= 0.1 then
    begin
      p := p + 1;
      Xe := Xa;
      Ye := Ya;
      Tra(Xa,Ya,X,Y);
      X1[p] := Xp;
      Y1[p] := Yp;
      X2[p] := Xp;
      Y2[p] := Yp;
      Xp := round(Xmitte+X*Radius);
      Yp := round(Ymitte-Y*Radius);
    end;
  end;
  if m >= 2 then
  begin
    for n := 2 to m do
    begin
      if Max(abs(Xe-Ba1zeiger[n]),abs(Ye-Ba2zeiger[n])) <= T then
      begin
        Xe := Be1zeiger[n];
        Ye := Be2zeiger[n];
        Ba1zeiger[n] := Ba1Zeiger[m];
        Ba2zeiger[n] := Ba2Zeiger[m];
        Be1zeiger[n] := Be1Zeiger[m];
        Be2zeiger[n] := Be2Zeiger[m];
        m:=m-1;
        goto Iso20
      end;
      if Max(abs(Xe-Be1zeiger[n]),abs(Ye-Be2zeiger[n])) <= T then
      begin
        Xe := Ba1zeiger[n];
        Ye := Ba2zeiger[n];
        Ba1zeiger[n] := Ba1Zeiger[m];
        Ba2zeiger[n] := Ba2Zeiger[m];
        Be1zeiger[n] := Be1Zeiger[m];
        Be2zeiger[n] := Be2Zeiger[m];
        m := m - 1;
        goto Iso20;
      end;
    end; {NEXT N}
    if m > 2 then      {m <=2 }
    begin
      Xa := Ba1zeiger[m];
      Ya := Ba2zeiger[m];
      Xe := Be1zeiger[m];
      Ye := Be2zeiger[m];
      m := m - 1;
      Tra(Xa,Ya,X,Y);
      Xp := round(Xmitte+X*Radius);
      Yp := round(Ymitte-Y*Radius);
      goto Iso20;
    end;
  end;
  with Canvas do
  begin
    Pen.Color := Farb;
    Pen.Style := Linie;
    ZahlLin := p;
    Zaehl   := 0;
    X1[ZahlLin+1] := X1[1];
    X2[ZahlLin+1] := X2[1];
    Y1[ZahlLin+1] := Y1[1];
    Y2[ZahlLin+1] := Y2[1];
    for i := 1 to ZahlLin+1 do
    begin
      for j := 1 to ZahlLin+1 do
      begin
        l1 := sqrt(sqr(X1[j]-X2[i])+sqr(Y1[j]-Y2[i]));
        l2 := sqrt(sqr(X1[i]-X2[j])+sqr(Y1[i]-Y2[j]));
        if (l1<1) or (l2<1) then
        begin
          inc (Zaehl);
          Xsort1[Zaehl] := X1[i];
          Xsort2[Zaehl] := X2[i];
          Ysort1[Zaehl] := Y1[i];
          Ysort2[Zaehl] := Y2[i];
          break;
        end; // if
      end;   // j
    end;     // i
    for i := 1 to Zaehl+1 do
    begin
      moveto(Xsort1[i],Ysort1[i]);
      lineto (Xsort2[i],Ysort2[i]);
    end;
  end;       // Canvas
  with Canvas do
  begin
    Pen.Color := DiagrFarbe;
    Moveto (Xmitte, 20);
    Lineto (Xmitte, Ymitte-20);
  end;
end;

end.