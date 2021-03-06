
Unit Iso;
{$N+}

Interface

uses Globvar, Texte, Basic, Dialogs, Graphics, SysUtils, Comctrls, Classes,
     Windows, Conturen, Math;

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
                 Linie: TPenstyle; Muster: TBrushStyle;
                 Wwzeiger : Tww; var IsoZahl: byte);
procedure Iso2(Canvas: TCanvas; nz: word; Ba1zeiger,Ba2zeiger,Be1zeiger,
               Be2zeiger: array of real; Farb: TColor; Linie: TPenstyle);

procedure NeuIso2(Canvas: TCanvas; nz: word; Ba1zeiger,Ba2zeiger,Be1zeiger,
               Be2zeiger: array of real; Farb: TColor; Linie: TPenstyle;
               Muster: TBrushStyle; var IsoZahl: byte);

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
                 Farb: TColor; Linie: TPenstyle; Muster: TBrushStyle;
                 Wwzeiger : Tww; var IsoZahl: byte);
var
  l, i : integer;
  nz   : word;

begin
  IsoPoly := false;
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
  if not IsoPoly then
    Iso2 (Canvas, nz, Ba1zeiger, Ba2zeiger, Be1zeiger, Be2zeiger, Farb, Linie)
  else NeuIso2 (Canvas, nz, Ba1zeiger, Ba2zeiger, Be1zeiger, Be2zeiger,
                Farb, Linie, Muster, IsoZahl);
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
  n, i      : word;
  XAnfang   : word;
  YAnfang   : word;
  PixelX    : array[0..1000] of word;
  PixelY    : array[0..1000] of word;
  PolyX     : array[0..1000] of word;
  PolyY     : array[0..1000] of word;
  PixelZahl : word;
  Punkt     : array[0..1000] of TPoint;
label
  Iso20, Ende;
begin
  Ll := 1;
  m  := nz;
  T  := 0.001;
  if m <= 0 then exit;  {if m <= 0 }
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
  with Canvas do
  begin
    Pen.Color := Farb;
    XAnfang := round(X*Radius+XMitte);
    YAnfang := round(YMitte-Y*Radius);
    moveto(XAnfang, YAnfang);
  end;
Iso20:
  if Xe <= 360 then
  begin
    Tra(Xe,Ye,X,Y);
    with Canvas do
    begin
      Pen.Color := Farb;
      Pen.Style := Linie;
      Brush.Color := DiagrFarbe;
      lineto (round(Xmitte+X*Radius),round(Ymitte-Y*Radius))
    end;
  end;
  if abs(Xe-Xa) + abs(Ye-Ya) > 0.5 then
  begin
    if abs(Ye) <= 0.1 then
    begin
      Xe := Xa;
      Ye := Ya;
      Tra(Xa,Ya,X,Y);
      with Canvas do
      begin
        Pen.Color := Farbe;
        moveto(round(Xmitte+X*Radius),round(Ymitte-Y*Radius));
      end;
    end;
  end;
  if m < 2 then goto Ende;
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
  if m <= 2 then goto Ende;      {m <=2 }
  Xa := Ba1zeiger[m];
  Ya := Ba2zeiger[m];
  Xe := Be1zeiger[m];
  Ye := Be2zeiger[m];
  m := m - 1;
  Tra(Xa,Ya,X,Y);
  with Canvas do
  begin
    Pen.Color := Farbe;
    moveto(round(Xmitte+X*Radius),round(Ymitte-Y*Radius));
  end;
  goto Iso20;
Ende:
  with Canvas do
  begin
    Pen.Color := DiagrFarbe;
    Moveto (Xmitte, Ymitte-Radius-1);
    Lineto (Xmitte, Ymitte-20);
  end;
end;

procedure NeuIso2(Canvas: TCanvas; nz: word; Ba1zeiger,Ba2zeiger,Be1zeiger,
               Be2zeiger: array of real; Farb: TColor; Linie: TPenstyle;
               Muster: TBrushStyle; var IsoZahl: byte);
var
  Ll        : byte;
  m         : integer;
  T, l, s   : real;
  Xa, Xe    : real;
  Ya, Ye    : real;
  X , Y     : real;
  n, i, j   : word;
  Xp, Yp    : word;
  Pol, Rand : TStringList;
  Rest      : TstringList;
  LinieS    : string;
  X0, X1, Y1: word;
  Y0, X2, Y2: word;
  XAnfang   : word;
  YAnfang   : word;
  Nah       : word;
  dmin      : real;
  Xl1,Yl1   : array[0..1000] of word;
  Xl2,Yl2   : array[0..1000] of word;
  RandS     : string;
  Punkt     : array[0..2000] of TPoint;
  RPunkt    : array[0..2000] of TPoint;
  Xr, Yr    : word;
  Alpha1    : integer;
  Alpha2    : integer;
  Alpha0    : integer;
  zi, k     : word;
  Bo        : real;
  Paar      : boolean;
  Peri      : boolean;
  z         : integer;
label Iso20;

begin
  Bo := Pi/180;
  Ll := 1;
  m  := nz;
  T  := 0.001;
  inc(IsoZahl);
  if m <= 0 then exit;
  for i := 1 to m do
  begin
    if Ba1zeiger[i] > 360 then Ba1zeiger[i] := 360;
    if Be1zeiger[i] > 360 then Be1zeiger[i] := 360;
  end;
  Pol   := TstringList.create;
  Rand  := TstringList.Create;
  Rest  := Tstringlist.Create;
 try
    Pol.Clear;
    Rand.Clear;
    Rest.Clear;
    Xa  := Ba1zeiger[1];
    Ya  := Ba2zeiger[1];
    Xe  := Be1zeiger[1];
    Ye  := Be2zeiger[1];
    Tra(Xa,Ya,X,Y);
    Xp := round(X*Radius+XMitte);
    Yp := round(YMitte-Y*Radius);
Iso20:
    if Xe <= 360 then
    begin
      Tra(Xe,Ye,X,Y);
      X1  := Xp;
      Y1  := Yp;
      Xp  := round(Xmitte+X*Radius);
      Yp  := round(Ymitte-Y*Radius);
      X2  := Xp;
      Y2  := Yp;
      Zeile (X1,Y1,X2,Y2,LinieS);
      Pol.Add (LinieS);
    end;
    if abs(Xe-Xa) + abs(Ye-Ya) > 0.5 then
    begin
      if abs(Ye) <= 0.1 then
      begin
        Xe := Xa;
        Ye := Ya;
        Tra(Xa,Ya,X,Y);
        Xp := round(Xmitte+X*Radius);
        Yp := round(Ymitte-Y*Radius);
        Zeile (Xp,Yp,Xp,Yp,LinieS);
        Pol.Add (LinieS);
      end;
    end;
    if m >= 2 then     //>=
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
      Xa := Ba1zeiger[m];
      Ya := Ba2zeiger[m];
      Xe := Be1zeiger[m];
      Ye := Be2zeiger[m];
      m := m - 1;
      Tra(Xa,Ya,X,Y);
      Xp := round(Xmitte+X*Radius);
      Yp := round(Ymitte-Y*Radius);
      Zeile (Xp,Yp,Xp,Yp,LinieS);
      Pol.Add (LinieS);
      goto Iso20;
    end;
    Peri := false;
    for i := 0 to Pol.Count-1 do
    begin
      Koordin(Pol[i],X1,Y1,X2,Y2);
      l:= abs(distanz(X2,Y2,XMitte,YMitte) - Radius);
      if l <= 1 then
      begin
        Koordin (Pol[i],X1,Y1,X2,Y2);
        Kreis (X2,Y2,Xr,Yr);
        Zeile (Xr,Yr,Xr,Yr,RandS);
        Pol[i] := RandS;   //[i]
        Rand.Add(RandS);
        Peri := true;
      end;
    end;
    if Peri then
    begin
      for i := 0 to Rand.Count-1 do
      begin
        Koordin(Rand[i],X1,Y1,X2,Y2);
        for j := 0 to Rand.Count-1 do
        begin
          if i = j then continue;
          Koordin(Rand[j],X0,Y0,Xr,Yr);
          if (abs(X2-Xr)<2) and (abs(Y2-Yr)<2) then Rand[j] :='000000000000';
        end;
      end;
      i := 0;
      Rand.Add('990990990990');
      while not (Rand[i] = '990990990990') do
      begin
        if Rand[i] = '000000000000' then Rand.Delete(i)
        else inc(i);
      end;    //Doppelte eliminiert
      for i := 1 to Rand.Count-1 do
      begin
        Paar := false;
        Koordin(Rand[i-1],X1,Y1,X2,Y2);
        for j := 1 to Rand.Count-1 do
        begin
          if i = j then continue;
          Koordin(Rand[j-1],X0,Y0,Xr,Yr);
          if (abs((XMitte-Xr)-(X2-XMitte))<2)
          and (abs((YMitte-Y2)-(Yr-YMitte))<2) then
            Paar := true;
        end;
        if not Paar then
        begin
          X1 := 0;
          Y1 := 0;
          Zeile(X1,Y1,X2,Y2,LinieS);
          Rand[i-1] := LinieS;
        end;
      end;
      i := 0;
      while not (Rand[i] = '990990990990') do
      begin
        Koordin(Rand[i],X1,Y1,X2,Y2);
        if X1 = 0 then Rand.Delete(i)
        else inc(i);
      end;  //Einzelne Daten am Rand eliminiert
      i := 0;
      while not (Rand[i] = '990990990990') do
      begin
        Paar := false;
        Koordin(Rand[i],X1,Y1,X2,Y2);
        j := 0;
        while not (Rand[j] = '990990990990') do
        begin
          Koordin(Rand[j],X0,X0,Xr,Yr);
          if (abs((XMitte-Xr)-(X2-XMitte))<2)
          and (abs((YMitte-Y2)-(Yr-YMitte))<2) then
            Paar := true;
            inc(j);
          end;
        if Paar then Rand.Delete(i)
        else inc(i);
      end;  //Gegenüberliegende Daten eliminiert
      Rand.Delete(Rand.Count-1);
      if odd(Rand.Count) then Rand.Add(Rand[Rand.Count-1]);
      for i := 1 to Rand.Count do
      begin
        dmin := 1000;
        for j := i to Rand.Count do
        begin
          Koordin(Rand[j-1],X1,Y1,X2,Y2);
          winkel(XMitte,YMitte,XMitte,YMitte-Radius,X2,Y2,Alpha1,Alpha2);
          if Alpha2 < dmin then
          begin
            dmin := Alpha2;
            Zeile(X1,Y1,X2,Y2,LinieS);
            z := j;
          end;
        end;
        Rand.Delete(z-1);
        Rand.Insert(i-1,Linies);
      end;
      for i := 2 to Rand.Count do
      begin
        if (i mod 2) = 0 then
        begin
          Koordin(Rand[i-2],X1,Y1,X2,Y2);
          Koordin(Rand[i-1],X0,Y0,Xr,Yr);
          winkel (XMitte,YMitte,X2,Y2,Xr,Yr,Alpha1,Alpha2);
          if Alpha2-Alpha1 > 180 - Alpha2 + Alpha1 then
          begin
            Xr := 2*XMitte-X2;
            Yr := 2*YMitte-Y2;
            Zeile(Xr,Yr,Xr,Yr,Linies);
            Rand[i-2] := LinieS;
          end;
        end;
      end;
      repeat
        if Rand.Count >=2 then
        begin
          Koordin(Rand[0],X1,Y1,X2,Y2);
          Koordin(Rand[1],X0,Y0,Xr,Yr);
          winkel (XMitte,YMitte,X2,Y2,Xr,YR,Alpha1,Alpha2);
          if (360-Alpha2+Alpha1) <= (Alpha2-Alpha1) then
          begin
            Alpha0 := Alpha2;
            Alpha2 := 360+Alpha1;
            Alpha1 := Alpha0;
          end;
          repeat
            X1 := round(cos((Alpha1-90)*Bo)* Radius + XMitte);
            Y1 := round(YMitte+sin((Alpha1-90)*Bo)* Radius);
            Alpha1 := Alpha1 +1;
            X2 := round(cos((Alpha1-90)*Bo)* Radius + XMitte);
            Y2 := round(YMitte+sin((Alpha1-90)*Bo)*Radius);
            Zeile(X1,Y1,X2,Y2,LinieS);
            Pol.Add(LinieS);
            X1 := 2*XMitte-X1;
            Y1 := 2*YMitte-Y1;
            X2 := 2*XMitte-X2;
            Y2 := 2*YMitte-Y2;
            Zeile(X1,Y1,X2,Y2,LinieS);
            Pol.Add (LinieS);
          until Alpha1 >= Alpha2;
        end;
        if Rand.Count >= 2 then
        begin
          Rand.Delete(0);
          Rand.Delete(0);
        end;
      until Rand.Count < 2;  //2
    end;  //Peri = true;
    repeat  // Beginn der Zeichnung
      Koordin (Pol[0],X0,Y0,X2,Y2);
      XAnfang := X0;
      YAnfang := Y0;
      z := 0;
      repeat
        dmin := 1000;
        if Pol.Count <=0 then break;
        begin
          for i := 0 to Pol.Count-1 do
          begin
            Koordin (Pol[i],X1,Y1,X2,Y2);
            l := min(distanz(X0,Y0,X1,Y1),distanz(X0,Y0,X2,Y2));
            if l < dmin then
            begin
              dmin := l;
              Nah := i;
            end;
          end;
        end;
        Koordin (Pol[Nah],X1,Y1,X2,Y2);
        X0 := X2; //X2
        Y0 := Y2;
        inc(z);
        Xl1[z] := X1;
        Yl1[z] := Y1;
        Xl2[z] := X2;
        Yl2[z] := Y2;
        if Pol.Count <=0 then break;
        Pol.Delete(Nah);
        l := distanz(X2,Y2,XAnfang,YAnfang);
      until l <= Grenze;;
      if Pol.Count >0 then
      begin
        if z >= MPunkte then
        begin
          XAnfang := X0;   //l2[2];
          YAnfang := Y0;   //l2[2];
          Punkt[0] := point(XAnfang,YAnfang);
          for i := 1 to z do
            Punkt[i] := Point(Xl2[i],Yl2[i]);
          Zeichne(Canvas, Punkt, z, Farb, Linie, Muster);
        end;
      end
      else
      begin
        Zeile(Xl1[2],Yl1[2],Xl2[2],Yl2[2],LinieS);
        Rest.Add(LinieS);
        for i := 2 to z-1 do
        begin
          Zeile(Xl1[i],Yl1[i],Xl2[i],Yl2[i],LinieS);
          Rest.Add(LinieS);
        end;
        m := 0;
        repeat
          inc(m);
          if m > 100 then break;
          zi := 0;
          if Rest.Count <2 then break;     //2
          if z >= MPunkte then
          begin
            Koordin(Rest[0],X0,Y0,Xr,Yr);
            Koordin(Rest[1],X1,Y1,X2,Y2);
            if distanz(X0,Y0,X1,Y1) > 20 then Rest.Delete(0);   //20
            for i := 1 to Rest.Count-1 do
            begin
              Koordin(Rest[i],X1,Y1,X2,Y2);
              Punkt[zi] := point(X2,Y2);
              inc(zi);
              l := distanz (X0,Y0,X2,Y2);
              if l <= Schliess then
              begin
                Zeichne(Canvas, Punkt, zi-1, Farb, Linie, Muster);
                if i > 0 then for j := 0 to i do Rest.Delete(0);
                break;
              end;
            end;
          end;
        until Rest.Count <= 0;
      end;
    until Pol.Count <= 0;
    if IsoZahl >= FehltIso then
    begin
      j := 0;
      if z >0 then
      begin
        for i := 0 to z do
        begin
          if (Punkt[i].x>0) and (Punkt[i].y>0) then
          begin
            RPunkt[j] := Punkt[i];
            inc(j);
          end;
        end;
       if j > MPunkte then Zeichne (Canvas, Rpunkt, j-1, Farb, Linie, Muster);
     end;
    end; //IsoZahl
  finally
    Pol.free;
    Rand.free;
    Rest.free;
  end;
end;


end.