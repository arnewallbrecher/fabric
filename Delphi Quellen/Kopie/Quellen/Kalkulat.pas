unit Kalkulat;
{$N+}

interface
uses Dialogs, Basic, Globvar, Texte, Graphics, SysUtils, Math;

procedure Rotieren(Aa,B,C:array of extended;Fs:byte;A:word;F:shortint;Z:byte;
                   Ad,Fd:extended;var Roa:word;var Rof,Sign:shortint);
procedure Rechnen (Prog,Fs:byte;Fe,Fz:shortint;Ae,Az:word;var A:word;
                   var Theta:integer;var F:shortint);
procedure Abc (Th,Ar:integer;Fr:shortint;var Arot,Frot:extended;
               var Aa,B,C:array of extended;var Z:byte);
procedure Algorithmus(Geftyp:byte ;Zahl:word;var La,Lp:integer;
                      var Rp,Xk,Gr,Ab:real;Ap:array of word;
                      Fp:array of word);
procedure AlgorithmusT(SAzi: array of word;
                       SFal: array of shortint;
                       var La,Lp: word; Zahl: word);
procedure Eigenwerte(var Aq:array of word; var Fq:array of shortint;
                     var V:array of real; Zahl:word;var Sv:real;
                     var Gr6,Zirkoeff,Gk:byte);
procedure Glvert (Prog:byte; var Ahar,Astr:array of word;
                  var Fhar,Fstr:array of shortint; Rfaktor:real);
procedure Bott (Anzahl:word; var Ahar, Astr, Fhar: array of word;
                var Fstr: array of shortint; Rfaktor:real);
procedure Korrdaten (Prog:byte;Ae:word; var Az:word; Fe:word; var Fz:shortint);
procedure GleichRaster(Canvas:TCanvas); { (var Azigleich: array of word;
                        var FalGleich: array of shortint);}
procedure WinkelausKoord (KoordX, KoordY: word;
                          var A: word; var F: shortint);
procedure Flinn_Diagramm (var aa, bb: real;
                          Winkel1, Winkel2: word);

implementation
uses Einausga;

procedure Rotieren(Aa,B,C:array of extended;Fs:byte;A:word;
                   F:shortint;Z:byte; Ad,Fd:extended;var Roa:word;
                   var Rof,Sign:shortint);
var
  X,Y      : array[1..3] of real;
  D        : array[1..3,1..3] of real;
  Bo       : real;
  Am,Fm    : real;
  Ta,Fi    : real;
  E1,E2,E3 : real;
  j,i      : byte;
begin
 Ta := 0;
  Fi := 0;
  Bo := Pi / 180;
  Am := A*Bo;
  Fm := F*Bo;
  Sign := 1;
  for j := 1 to Z do
  begin
    if J = 2 then
    begin
      Am := Ta;
      Fm := Fi;
    end;
    E1 := cos(Ad) * cos(Fd);
    E2 := sin(Ad) * cos(Fd);
    E3 := sin(Fd);
    D[1,1] := Aa[j] + B[j] * E1 * E1;
    D[1,2] := B[j] *E1 * E2 - C[j] * E3;
    D[1,3] := B[j] * E1 * E3 + C[j] * E2;
    D[2,1] := B[j] * E1 *E2 + C[j] * E3;
    D[2,2] := Aa[j] + B[j] * E2 * E2;
    D[2,3] := B[j] * E2 * E3 - C[j] * E1;
    D[3,1] := B[j] * E1 * E3 - C[j] * E2;
    D[3,2] := B[j] * E2 * E3 + C[j] *E1;
    D[3,3] := Aa[j] + B[j] * E3 * E3;
    X[1] := cos(Am) * cos(Fm);
    X[2] := cos(Fm) * sin(Am);
    X[3] := sin(Fm);
    for i :=1 to 3 do
    begin
      Y[i] := D[i,1] * X[1] + D[i,2] * X[2] + D[i,3] * X[3];
    end;
    if (Y[1] = 0) and (Y[2] < 0) then Ta :=3 *Pi / 2;
    if (Y[1] = 0) and (Y[2] > 0) then Ta :=Pi / 2;
    if Y[3] <= 0 then
    begin
      Y[1] := -Y[1];
      Y[2] := -Y[2];
      Y[3] := -Y[3];
      Sign := -1;
    end;
    if Y[1] <> 0 then Ta := arctan(Y[2] / Y[1]);
    if Y[1] <= 0 then Ta := Ta + Pi;
    if (Y[1] > 0) and (Y[2] < 0) then Ta := Ta + Pi * 2;
    if (Y[1] = 0) and (Y[2] > 0) then Ta := Pi / 2;
    if Y[3] > 0.999 then Fi:=Pi/2 else Fi := arctan(Y[3]/sqrt(1-Y[3]*Y[3]));
  end;
  Roa := round(Ta / Bo);
  Rof := round(Fi / Bo);
  if Roa > 360 then Roa := Roa - 360;
  if (Fs = 2) or (Fs = 4) or (Fs = 6) then
  begin
    Roa := Roa + 180;
    if Roa > 360 then Roa := Roa - 360;
    Rof := 90 - Rof;
  end;
end;

procedure Abc (Th,Ar:integer;Fr:shortint;var Arot,Frot:extended;
               var Aa,B,C:array of extended;var Z:byte);

var
  Bo,Te : real;

begin
  Bo   := Pi / 180;
  Te   := Th * Bo;
  if (Th=90) or (Th=180) or (Th=270) or (Th=360) then
    Te := Te - 0.0001;
  if (Th=0) or (Th=-90) or (Th=-180) or (Th=-270) or (Th=-360)
  then Te := Te + 0.0001;
  if Th <= 180 then
  begin
    Aa[1] := cos(Te);
    B [1] := 1 - Aa[1];
    C [1] := sin(Te);
    Z     := 1
  end
  else
  begin
    Aa[2] := cos(Te - Pi);
    B [2] := 1 - Aa[2];
    C [2] := sin(Te - Pi);
    Z     := 2;
    Aa[1] := -1;
    B [1] := 2;
    C [1] := 0;
  end;
  Arot := Ar * Bo;
  Frot := Fr * Bo;
end;

procedure Eigenwerte(var Aq:array of word; var Fq:array of shortint;
                     var V:array of real;  Zahl:word; var Sv:real;
                     var Gr6,Zirkoeff,Gk:byte);
 {Nach einer FORTRAN-Version von SCHUENEMEYER et al. (1972)}
var
  Bo,E,Bz  : real;
  Iss,Js   : array[0..100] of word;
  Ss,Cs    : array[0..100] of real;
  R        : array[0..3, 0..3] of real;
  i,Ma,g   : byte;
  It,p,l   : byte;
  t,k,Li   : byte;
  Bi,Fr    : real;
  Am,U,Om  : real;
  Sn,Cx,Rj : real;
  Ba,Bp    : integer;
  j,Ko,n,a : byte;
  Ri,Ci,Cj : real;
  K1,G3    : real;
  K2,K3    : word;
  Wz,Wn,Wv : real;
  Gn,G6    : real;
label
  Aus8,Weiter8;
begin
  Bo       := Pi / 180;
  for i := 1 to 100 do
  begin
    Iss[i] := 0;
    Js[i] := 0;
    Ss[i] := 0;
    Cs[i] := 0;
  end;
  E  := 0.00001;
  Ma := 100;
  It := 0;
  i := 0;
  J := 0;
  for p:= 1 to 3 do for t := 1 to 3 do R[p,t] := Q[p,t];
  repeat
    Bi := E;
    for k := 1 to 2 do
    begin
      Li := k+1;
      for l := Li to 3 do
      begin
	Fr := abs(Q[k,l]);
	if Bi < Fr then
        begin
          Bi := Fr;
          i  := k;
          j  := l;
        end;
      end;
    end;  {for k = 1 to 2}
    if E >= Bi then break;
    if Ma <= It then
    begin
      writeln(Tx(446),MA:5,Tx(447));
                                       {Kein Ergebnis nach .. Iterationen}
      goto Aus8;
    end;
    It := It + 1;
    Am := -Q[i,j];
    U  := 0.5 * (Q[i,i] - Q[j,j]);
    Om := Am / sqrt(sqr(Am) + sqr(U));
    if U < 0 then Om := -Om;
    Sn := Om / sqrt(2 * (1 + sqrt(1 - sqr(Om))));
    Cx := sqrt(1 - sqr(Sn));
    Iss[It] := i;
    Js[It] := J;
    Ss[It] := Sn;
    Cs[It] := Cx;
    for k := 1 to 3 do
    begin
      Ri := Q[i,k];
      Rj := Q[j,k];
      Q[i,k] := Cx * Ri - Sn * Rj;
      Q[j,k] :=Sn * Ri + Cx * Rj;
    end;
    for k := 1 to 3 do
    begin
      Ci     := Q[k,i];
      Cj     := Q[k,j];
      Q[k,i] := Cx * Ci - Sn * Cj;
      Q[k,j] := Sn * Ci + Cx * Cj;
    end;
  until E >= Bi;
  for i := 1 to 3 do
  begin
    V[i] := Q[i,i];
    for j := 1 to 3 do Q[i,j] := 0;
    Q[i,i] := 1;
  end;
  if It > 0 then
  begin
    for l := 1 to it do
    begin
      i  := Iss[l];
      j  := Js[l];
      Sn := Ss[l];
      Cx := Cs[l];
      for k := 1 to 3 do
      begin
	Ri := Q[i,k];
        Rj := Q[j,k];
        Q[i,k] := Cx * Ri - Sn * Rj;
	Q[j,k] := Sn * Ri + Cx * Rj;
      end;{k}
    end;{l}
  end;{if}
  Aus8:
  for i := 1 to 3 do
  begin
    for j := 1 to i do
    begin
      Fr := 0;
      for k := 1 to 3 do Fr := Q[k,i] * Q[k,j] * V[k] + Fr;
    end;
  end;
  for g := 1 to 3 do
  begin
    if Q[g,3] > 0 then
    begin
      Q[g,1] := -Q[g,1];
      Q[g,2] := -Q[g,2];
      Q[g,3] := -Q[g,3];
    end;
    if Q[g,2] = 0 then Bz := Pi / 2 else Bz := arctan(Q[g,1] / Q[g,2]);
    Ba := round(Bz/Bo);
    if abs(Q[g,3]) > 0.99 then Ba := 0;
    if Ba < 0 then Ba := 180 + Ba;
    if Q[g,1] < 0 then Ba := Ba + 180;
    if Q[g,1] = 0 then if Q[g,2] < 0 then Ba := 180 else Ba := 0;
    if Q[g,2] = 0 then if Q[g,1] < 0 then Ba := 270 else Ba := 90;
    if Ba >= 360 then Ba := Ba - 360;
    if Q[g,3] < 0 then Q[g,3] := -Q[g,3];
    if Q[g,3] <1 then Bp := round(arctan(Q[g,3]/sqrt(1-sqr(Q[g,3])))/Bo)
    else Bp := 90;
    Aq[g] := Ba;
    Fq[g] := Bp;
  end;
  SV := 0;
  for i := 1 to 3 do
  begin
    V[i] := V[i] / Zahl;
    Sv   := Sv +V[i];
  end;
  begin
    for i := 1 to 2 do
    begin
      j  := i + 1;
      Ko := 0;
      for n := j to 3 do
      begin
        if V[n] >= V[i] then goto Weiter8;
        K1    := V[i];
        K2    := Aq[i];
        K3    := Fq[i];
        V[i]  := V[n];
        Aq[i] := Aq[n];
        Fq[i] := Fq[n];
        V[n]  := K1;
        Aq[n] := K2;
        Fq[n] := K3;
        Ko    := Ko + 1;
        Weiter8:
      end;
    end;
    for a := 1 to 3 do if V[a] < 0.00001 then V[a] := 0.00001;
    Wz := ln(V[2] / V[1]);
    Wn := ln(V[3] / V[2]);
    if Wn = 0 then Wn := 0.000001;
    G3 := (arctan(Wz / Wn))/Bo;
    Gn := G3 * 11.111 / 100;
    G6 := G3 + Gn;
    Gr6 := round(G6);
    Wv := sqrt(2 * V[2]);
    if Wv <=1 then Zirkoeff := round(2*(arctan(Wv/sqrt(1-sqr(Wv))))/Bo) else Zirkoeff:=0;
    Gk := round(100*V[1] / V[2]);
  end;
end;

procedure Algorithmus(Geftyp:byte;Zahl:word;var La,Lp:integer;
                      var Rp,Xk,Gr,Ab:real;Ap:array of word;
                      Fp:array of word);
var
  Bo,A,F   : real;
  Sx,Sy,Sz : real;
  i        : word;
  Sa,Ca,Ph : real;
  X,Y,Z,W  : real;
  Xq,Yq,Zq : real;
  Fk,H,P   : real;
  Xh,Yh,Zh : real;
  Sf,D,Ex  : real;
  E,Ct,Az  : real;
  Sh       : real;
begin
  Bo := Pi / 180;
  Sx := 0;
  Sy := 0;
  Sz := 0;
  Zq := 0;
  for i := 1 to Zahl do
  begin
    A := Ap[i] * Bo;
    F := Fp[i] * Bo;
    if Geftyp = 2 then
    begin
      A := A + Pi;
      F := Pi/2 - F;
      if A > 2*Pi then A := A - 2*Pi;
    end;
    Sa := sin(A);
    Ca := cos(A);
    Ph := cos(F);
    X  := Sa * Ph;
    Y  := Ca * Ph;
    Ph := sin(F);
    Z  := -Ph;
    Q[1,1] := Q[1,1] +sqr(X);
    Q[1,2] := Q[1,2] + X * Y;
    Q[1,3] := Q[1,3] + X * Z;
    Q[2,1] := Q[1,2];
    Q[2,2] := Q[2,2] + sqr(Y);
    Q[2,3] := Q[2,3] + Y * Z;
    Q[3,1] := Q[1,3];
    Q[3,2] := Q[2,3];
    Q[3,3] := Q[3,3] + sqr(Z);
    if i >= 2 then
    begin
      W  := sqrt(sqr(Sx) + sqr(Sy) + sqr(Sz));
      Xq := Sx / W;
      Yq := Sy / W;
      Zq := Sz / W;
      Fk := sqrt(sqr(Xq+X) + sqr(Yq+Y) +sqr(Zq+Z));
      if Fk <= 1.14148 then
      begin
        X := -X;
        Y := -Y;
        Z := -Z;
      end;
    end;
    Sx := Sx + X;
    Sy := Sy + Y;
    Sz := Sz + Z;
  end;
  H  := sqrt(sqr(Sx) + sqr(Sy) + sqr(Sz));
  Xh := Sx / H;
  Yh := Sy / H;
  Zh := Sz / H;
  Rp := abs((2 * H - Zahl) * 100 / Zahl);
  if Zahl - H <> 0 then
    Xk := abs((Zahl -1) / (Zahl - H))
  else Xk := 9999.9;
  P  := (100 - Konfidenz) / 100;
  Sf := sqrt(2 * (1 - 1 / Zahl) / Xk);
  if Sf < 1 then Ab := arctan(Sf / sqrt(1 - sqr(Sf))) / Bo else Ab := 90;
  D  := (Zahl -H) / H;
  Ex := 1 / (Zahl -1);
  E  := Hoch((1 /P),Ex)-1;
  Ct := 1 - D * E;
  if abs(Ct) <= 1 then Gr := arctan(sqrt(1 - sqr(Ct)) / Ct) / Bo;
  if Xk < 4 then
  begin
    Gr := 0;
    Ab := 0;
  end;
  if abs(Ct) > 1 then Gr := 0;
  if Zq > 0 then
  begin
    Xh := -Xh;
    Yh := -Yh;
    Zh := -Zh;
  end;
  if Yh = 0 then Az := Pi / 2 else Az := arctan(Xh / Yh);
  La := round(Az/Bo);
  if abs(Zh) > 0.99 then La := 0;
  if La < 0 then La := 180 + La;
  if Xh < 0 then La := La + 180;
  if Xh = 0 then if Yh < 0 then La := 180 else La := 0;
  if Yh = 0 then if Xh < 0 then La := 270 else La := 90;
  if La >= 360 then La := La - 360;
  if Zh < 0 then Zh := -Zh;
  if abs(Zh) <> 1 then Sh := Zh;
  if Zh = 1 then Lp := 90 else Lp := round(arctan(Sh/sqrt(1-sqr(Sh)))/Bo);
  if Geftyp = 2 then
  begin
    La := La + 180;
    Lp := 90 - Lp;
    if La > 360 then La := La - 360;
  end;
end;

procedure AlgorithmusT(SAzi: array of word;
                       SFal: array of shortint;
                       var La,Lp: word; Zahl: word);
var
  Bo,A,F   : real;
  Sx,Sy,Sz : real;
  i        : word;
  Sa,Ca,Ph : real;
  X,Y,Z,W  : real;
  Xq,Yq,Zq : real;
  Fk,H,P   : real;
  Xh,Yh,Zh : real;
  Sf,D,Ex  : real;
  E,Ct,Az  : real;
  Sh       : real;
begin
  Bo := Pi / 180;
  Sx := 0;
  Sy := 0;
  Sz := 0;
  Zq := 0;
  Sh := 0;
  for i := 1 to Zahl do
  begin
    A := SAzi[i] * Bo;
    F := SFal[i] * Bo;
    Sa := sin(A);
    Ca := cos(A);
    Ph := cos(F);
    X  := Sa * Ph;
    Y  := Ca * Ph;
    Ph := sin(F);
    Z  := -Ph;
    Q[1,1] := Q[1,1] +sqr(X);
    Q[1,2] := Q[1,2] + X * Y;
    Q[1,3] := Q[1,3] + X * Z;
    Q[2,1] := Q[1,2];
    Q[2,2] := Q[2,2] + sqr(Y);
    Q[2,3] := Q[2,3] + Y * Z;
    Q[3,1] := Q[1,3];
    Q[3,2] := Q[2,3];
    Q[3,3] := Q[3,3] + sqr(Z);
    if i >= 2 then
    begin
      W  := sqrt(sqr(Sx) + sqr(Sy) + sqr(Sz));
      Xq := Sx / W;
      Yq := Sy / W;
      Zq := Sz / W;
      Fk := sqrt(sqr(Xq+X) + sqr(Yq+Y) +sqr(Zq+Z));
      if Fk <= 1.14148 then
      begin
        X := -X;
        Y := -Y;
        Z := -Z;
      end;
    end;
    Sx := Sx + X;
    Sy := Sy + Y;
    Sz := Sz + Z;
  end;
  H  := sqrt(sqr(Sx) + sqr(Sy) + sqr(Sz));
  Xh := Sx / H;
  Yh := Sy / H;
  Zh := Sz / H;
  if Zq > 0 then
  begin
    Xh := -Xh;
    Yh := -Yh;
    Zh := -Zh;
  end;
  if Yh = 0 then Az := Pi / 2 else Az := arctan(Xh / Yh);
  if Az <0 then Az := Pi + Az;
  La := round(Az/Bo);
  if abs(Zh) > 0.99 then La := 0;
  if Xh < 0 then La := La + 180;
  if Xh = 0 then if Yh < 0 then La := 180 else La := 0;
  if Yh = 0 then if Xh < 0 then La := 270 else La := 90;
  if La >= 360 then La := La - 360;
  if Zh < 0 then Zh := -Zh;
  if abs(Zh) <> 1 then Sh := Zh;
  if Zh = 1 then Lp := 90 else Lp := round(arctan(Sh/sqrt(1-sqr(Sh)))/Bo);
end;

procedure Rechnen (Prog,Fs:byte;Fe,Fz:shortint;Ae,Az:word;var A:word;
                   var Theta:integer;var F:shortint);
var
  A1,A2,F1,F2 :double;
  S1,S2,S3,S4 :double;
  C1,C2,C3,C4 :double;
  Px,Py,Pz    :double;
  P,Pp,Ff     :double;
  Aa          :double;
  Vx1,Vy1,Vz1 :double;
  Vx2,Vy2,Vz2 :double;
  Res,Bo      :double;
  T           :integer;
  Azw         :integer;
  AzwS        :string[3];
begin
  Azw:= 0;
  Aa := 0;
  Bo := Pi / 180;
  A1 := Ae * Bo;
  A2 := Az * Bo;
  F1 := Fe * Bo;
  F2 := Fz * Bo;
  if (Fs = 1) or (Fs = 4) or (Fs = 5) then
  begin
    if Fs = 1 then
    begin
      A1 := A1 + Pi;
      A2 := A2 + Pi;
      F1 := Pi/2 - F1;
      F2 := Pi/2 - F2;
    end;
    S1 := sin(A1);
    S2 := sin(A2);
    S3 := sin(F1);
    S4 := sin(F2);
    C1 := cos(A1);
    C2 := cos(A2);
    C3 := cos(F1);
    C4 := cos(F2);
    Px := S1 * C3 * S4 - S3 * S2 * C4;
    Py := S3 * C2 * C4 - C1 * C3 * S4;
    Pz := C1 * C3 * S2 * C4 -S1 * C3 * C2 * C4;
    if Pz < 0 then
    begin
      Px := -Px;
      Py := -Py;
      Pz := -Pz;
    end;
    P := sqrt(sqr(Px) + sqr(Py) + sqr(Pz));
    if P = 0 then P := 0.000001;
    Pp := Pz / P;
    if Pp >= 1 then Ff := Pi / 2 else Ff := arctan(Pp / sqrt(1 - sqr(Pp)));
    if Px = 0 then
    begin
      if Py > 0 then Aa := Pi / 2;
      if Py < 0 then Aa := 3 * Pi / 2;
    end
    else
    begin
      Aa  := arctan(Py / Px);
      F   := round(Ff / Bo);
      Azw := round(Aa / Bo);
      str(Azw,AzwS);
    end;
    F   := round(Ff / Bo);
    Azw := round(Aa / Bo);
    if Px < 0 then Azw := Azw + 180;
    if (Px > 0) and (Py < 0) then Azw := Azw + 360;
    if Azw > 360 then Azw := Azw - 360;
    if Fs = 4 then
    begin
      Azw := Azw + 180;
      F := 90 - F;
    end;
    if Azw > 360 then Azw := Azw - 360;
    if Azw < 0 then Azw := 360 + Azw;
  end
  else
  begin
    if Fs = 2 then
    begin
      A1 := A1 + Pi;
      A2 := A2 + Pi;
      F1 := Pi / 2 - F1;
      F2 := Pi / 2 - F2;
    end;
    Vx1 := sin(A1) * cos(F1);
    Vx2 := sin(A2) * cos(F2);
    Vy1 := cos(A1) * cos(F1);
    Vy2 := cos(A2) * cos(F2);
    Vz1 := sin(F1);
    Vz2 := sin(F2);
    Res := sqrt(sqr(Vx1 + Vx2) + sqr(Vy1 + Vy2) + sqr(Vz1 + Vz2));
    if Res = 0 then Theta := 0
    else Theta := 2 * round((arctan((sqrt(1-sqr(Res/2)))/(Res/2)))/Bo);
    if Prog = 1 then
      if Berechnung <> 6 then if Theta > 90 then Theta := 180 - Theta
    else
    begin
      S1 := sin(A1);
      S2 := sin(A2);
      C1 := cos(A1);
      C2 := cos(A2);
      C3 := cos(F1);
      C4 := cos(F2);
      Pz := C1 * C3 * S2 * C4 - S1 * C3 * C2 * C4;
      if Pz < 0 then Theta := -Theta;
    end;
  end;
  if Prog = 1 then Theta := abs(Theta);
  A     := abs(Azw);
  F     := abs(F);
end;

procedure Glvert (Prog:byte; var Ahar,Astr:array of word;
                  var Fhar,Fstr:array of shortint; Rfaktor:real);
var
  Aa,C,B  : array[0..3] of extended;
  Bo,Cc   : real;
  Dreh,Z  : byte;
  Fr,Fs3  : shortint;
  Ar      : integer;
  i,A     : word;
  Ad,Fd   : extended;
  As3,j   : word;
  Sign,F  : shortint;
  Winkel  : integer;
  Aw,Fw   : real;
  L,P,M,N : real;
  Ml,T    : real;
  Theta   : integer;
  Att     : integer;
  Az,Ap   : word;
  Fz,Fp   : shortint;

begin
  DecimalSeparator := '.';
  Bo := Pi / 180;
  Dreh := 90 - Fsigma1;
  Fr   := 0;
  Ar   := Asigma1 + 90;
  Abc (Dreh, Ar, Fr, Ad, Fd, Aa, B, C, Z);
  Rotieren (Aa, B, C, 1, 180, 0, Z, Ad, Fd, As3, Fs3, Sign);
  Rechnen (14, 3, Fsigma3, Fs3, Asigma3, As3, A, Winkel, F);
  if Rfaktor = 0. then Rfaktor := 0.01;
  for j := 1 to 316 do
  begin
    Aw := Ahar[j] * Bo;
    Fw := Fhar[j] * Bo;
    Cc := cos(Fw);
    L  := -cos(Aw) * Cc;
    M  := -sin(Aw) * Cc;
    N  := -sin(Fw);
    Ml := M * L;
    if Ml = 0 then Ml := 0.0001;
    T := (N/Ml) * (sqr(M)-((1-sqr(N))/Rfaktor));
    T := arctan(T);
    Theta := round (T/Bo);
    if Theta < 0 then Theta := 180 + Theta;
    Att := (Ahar[j]+180) mod 360;
    Att := Att - 90;
    if Att < 0 then Att := Att + 360;
    Abc (Theta, Ahar[j], Fhar[j], Ad, Fd, Aa, B, C, Z);
    Rotieren (Aa, B, C, 1, Att, 0, Z, Ad, Fd, Astr[j], Fstr[j], Sign);
    Az := Astr[j];
    Fz := Fstr[j];
    Ap := Ahar[j];
    Fp := Fhar[j];
    Abc (Dreh, Ar, Fr, Ad, Fd, Aa, B, C, Z);
    Rotieren (Aa, B, C, 1, Az, Fz, Z, Ad, Fd, Astr[j], Fstr[j], Sign);
    Rotieren (Aa, B, C, 1, Ap, Fp, Z, Ad, Fd, Ahar[j], Fhar[j], Sign);
    Az := Astr[j];
    Fz := Fstr[j];
    Ap := Ahar[j];
    Fp := Fhar[j];
    Abc (-Winkel, Asigma1, Fsigma1, Ad, Fd, Aa, B, C, Z);
    Rotieren (Aa, B, C, 1, Az, Fz, Z, Ad, Fd, Astr[j], Fstr[j], Sign);
    Rotieren (Aa, B, C, 1, Ap, Fp, Z, Ad, Fd, Ahar[j], Fhar[j], Sign);
  end;
end;

procedure Bott (Anzahl:word; var Ahar, Astr, Fhar: array of word;
                var Fstr: array of shortint; Rfaktor:real);
var
  Aa,C,B  : array[0..3] of extended;
  Bo,Cc   : real;
  Dreh    : integer;
  Z       : byte;
  Fr      : integer;
  Ar      : integer;
  i,A     : word;
  Ad,Fd   : extended;
  Ae, Fe  : extended;
  Af, Ff  : extended;
  As3,j   : word;
  Sign,F  : shortint;
  Vor1    : shortint;
  Vor2    : shortint;
  Vor3    : shortint;
  Aw,Fw   : real;
  L,P,M,N : real;
  Ml,T    : real;
  Theta   : integer;
  Att     : integer;
  Az,Ap   : word;
  Fz,Fp   : shortint;
  Beta    : integer;
  Azi     : word;
  Fal     : shortint;
  Fs3     : shortint;
  ApRot   : word;
  FpRot   : shortint;
  Ag, Ah  : extended;
  Fg, Fh  : extended;
begin
  Bo := Pi / 180;
  Dreh := 90 - Fsigma1;
  Fr   := 0;
  Ar   := Asigma1 - 90;
  Abc (Dreh, Ar, Fr, Ad, Fd, Aa, B, C, Z);
  Rotieren (Aa, B, C, 1, Asigma3, Fsigma3, Z, Ad, Fd, As3, Fs3, Sign);
  Beta := As3 -180;
  if Rfaktor = 0 then Rfaktor := 0.01;
  for j := 1 to Anzahl do
  begin
    Ap := Ahar[j];
    Fp := Fhar[j];
    Abc (Dreh, Ar, Fr, Ad, Fd, Aa, B, C, Z);
    Rotieren (Aa, B, C, 1, Ap, Fp, Z, Ad, Fd, ApRot, FpRot, Sign);
    Ap := ApRot;
    Fp := FpRot;
    Abc (-Beta, 0, 90, Ae, Fe, Aa, B, C, Z);
    Rotieren (Aa, B, C, 1, Ap, Fp, Z, Ae, Fe, ApRot, FpRot, Sign);
    Fw := FpRot * Bo;
    Aw := ApRot * Bo;
    Cc := cos(Fw);
    L  := -cos(Aw) * Cc;
    M  := -sin(Aw) * Cc;
    N  := -sin(Fw);
    Ml := M * L;
    if Ml = 0 then Ml := 0.0001;
    T := (N/Ml) * (sqr(M)-((1-sqr(N))/Rfaktor));
    T := arctan(T);
    Theta := round (T/Bo);
    if Theta < 0 then Theta := 180 + Theta;
    Att := ApRot + 90;
    Abc (Theta, ApRot, FpRot, Af, Ff, Aa, B, C, Z);
    Rotieren (Aa, B, C, 1, Att, 0, Z, Af, Ff, Astr[j], Fstr[j], Vor1);
    {Rückrotation}
    Az := Astr[j];
    Fz := Fstr[j];
    Abc (Beta, 0, 90, Ag, Fg, Aa, B, C, Z);
    Rotieren (Aa, B, C, 1, Az, Fz, Z, Ag, Fg, Astr[j], Fstr[j], Vor2);
    Az := Astr[j];
    Fz := Fstr[j];
    Abc (-Dreh, Ar, Fr, Ah, Fh, Aa, B, C, Z);
    Rotieren (Aa, B, C, 1, Az, Fz, Z, Ah, Fh, Astr[j], Fstr[j], Vor3);
    Fstr[j] := -Fstr[j] * Vor1 * Vor2 * Vor3;
    Rechnen (19,3,Fsigma1,Fhar[j],Asigma1,Ahar[j],A,Theta,F);
    if Theta >= 90 then Fstr[j] := -Fstr[j];
  end;
end;

procedure Korrdaten (Prog:byte;Ae:word; var Az:word; Fe:word; var Fz:shortint);
var
  Normaz : word;
  Normfa : word;
  Aa,A   : word;
  Ff,F   : shortint;
  Theta  : integer;

begin
  Normaz := Ae + 180;
  Normfa := 90-Fe;
  Theta  := 0;
  Rechnen (Prog,4,Normfa,abs(Fz),Normaz,Az,Aa,Theta,Ff);
  Rechnen (Prog,1,Fe,Ff,Ae,Aa,A,Theta,F);
  if Fz < 0 then F := 0 - F;
  Az := A;
  Fz := F;
end;

procedure GleichRaster(Canvas:Tcanvas);{ (var Azigleich: array of word;
                        var Fallgleich: array of shortint);}
var
  i      : shortint;
  j      : shortint;
  Alpha  : integer;
  Rho    : real;
  n      : word;
  Bo     : real;
  Zahl   : word;
  Fallen : shortint;
  AziGleich : array[0..3000] of word;
  FalGleich : array[0..3000] of word;
begin
  Bo := Pi / 180;
  n := 0;
  for i := 25 downto -25 do
  begin
    for j := -25 to 25 do
    begin
      Rho   := sqrt(sqr(i) + sqr(j));
      if Rho < 35.3553 then
      begin
        inc(n);
        Rho := Rho/25;
        if i <> 0 then Alpha := round(arctan(j/i)/Bo)
        else Alpha := 0;
        if Alpha < 0 then Alpha := Alpha + 180;
        if (Alpha = 0) and (i < 0) then Alpha := 180;
        if (Alpha = 0) and (i > 0) then Alpha := 0;
        if (Alpha <> 0) and (Alpha <> 180) then
          if j < 0 then Alpha := Alpha + 180;
        Fallen := 0;
        if ProjektionS = 'Lambert' then
          Fallen := 90 - round(arccos(1- sqr(Rho))/Bo);
        if ProjektionS = 'stereographic' then
          Fallen := 90 - round(2*(arctan(Rho))/Bo);
        if ProjektionS = 'orthographic' then
          Fallen := round(arccos(Rho)/Bo);
        if ProjektionS = 'Kavraiskii' then
          Fallen := round((Pi-Rho*Pi)/(2*Bo));
        AziGleich[n] := Alpha;
        FalGleich[n] := Fallen;
      end;
    end;
  end;
  Zahl := n;
  Speichern (PfadS, Zahl, AziGleich, FalGleich);
end;

procedure WinkelausKoord (KoordX,KoordY: word;
                          var A: word; var F: shortint);
var
  Bo     : real;
  Rho    : real;
  X, Y   : real;
  Azimut : real;
  Fa     : real;
begin
  Bo := Pi/180;
  X  := KoordX - Xmitte;
  Y  := Ymitte - KoordY;
  Rho := sqrt(sqr(X) + sqr(Y))/ Radius;
  if Rho > 1.0 then Rho := 1;
  if Y = 0 then Y := 0.00001;
  Azimut := arctan(X/Y);
  if Azimut  < 0 then Azimut:= Azimut+ Pi;
  if (Azimut = 0) and (Y < 0) then Azimut:= Pi;
  if (Azimut = 0) and (Y > 0) then Azimut:= 0;
  if (Azimut <> 0) and (Azimut <> Pi) then
    if X < 0 then Azimut:= (Azimut + Pi);
  if Azimut > 2*Pi then Azimut := Azimut - 2*Pi;
  if Gefuegetyp <> 1 then
  begin
    Azimut:= Azimut + Pi;
    if Azimut > 2*Pi then Azimut := Azimut - 2*Pi;
  end;
  Fa := 0;
  if ProjektionS = 'Lambert' then
    Fa := Pi/2 - arccos(1- sqr(Rho));
  if ProjektionS = 'stereographic' then
    Fa := Pi/2 - 2*(arctan(Rho));
  if ProjektionS = 'orthographic' then
    Fa := arccos(Rho);
  if ProjektionS = 'Kavraiskii' then
    Fa := (Pi-Rho*Pi)/2;
  if Gefuegetyp <> 1 then Fa := Pi/2 - Fa;
  A := round(Azimut/Bo);
  F := round(Fa/Bo);
end;

procedure Flinn_Diagramm (var aa, bb: real;
                          Winkel1, Winkel2: word);
var
  t1, t2   : real;
  a1, a2   : real;
  a3, a0   : real;
  Zaehler  : real;
  Nenner   : real;
  Alambda1 : real;
  Alambda2 : real;
  Alambda3 : real;
  lamb     : array[0..3] of real;
  i, j     : byte;
  XAchse   : real;
  YAchse   : real;
  ZAchse   : real;
  alamb    : array[0..2] of real;

begin
  Bo := Pi/180;
  Alambda3 := 0;
  Alambda1 := 0;
  Alambda2 := 0;
  a1       := 0;
  a2       := 0;
  a3       := 0;
  a0       := 0;  
  if Winkel1 = 90 then Winkel1 := 89;
  if Winkel2 = 90 then Winkel2 := 89;
  t1 := sqr(tan(Winkel1*Bo));  {Winkel1 > Winkel2}
  t2 := sqr(tan(Winkel2*Bo));
  if EllipsoidS = 'prolat' then
  begin
    a3 := t1 * t2;
    a2 := -(1 + t1)*(1+t2);
    a1 := t1 + t2 + 2;
    a0 := -1;
  end;
  if EllipsoidS = 'oblat' then                                                                                                                                                                                                                                                     if EllipsoidS = 'oblat' then
  begin
    a3 := 1;
    a2 := -(t2+1) * (t1+1);
    a1 := (t2+1)*t1+(t1+1)*t2;
    a0 := -t1*t2;
  end;
  KubischeGl (a3,a2,a1,a0,lamb[1],lamb[2],lamb[3]);
  if EllipsoidS = 'prolat' then
  begin
    for i := 1 to 3 do
      if (lamb[i] >= 1.0001) then Alambda1 := lamb[i];
    Alambda2 := t1*Alambda1/(Alambda1+t1*Alambda1-1);
    Zaehler := t2*Alambda1;
    Nenner  := t2*Alambda1+Alambda1-1;
    if Nenner < 0.0001 then Nenner := 0.0001;
    Alambda3 := Zaehler/Nenner;
  end;
  if EllipsoidS = 'oblat' then
  begin
    j := 0;
    for i := 1 to 3 do
    begin
      if (lamb[i] < 0.9999) or (lamb[i] > 1.0001) then
      begin
        j := j + 1;
        alamb[j] := lamb[i];
      end;
    end;
    Alambda3 := min (alamb[1], alamb[2]);
    Nenner   := t2*Alambda3+Alambda3-t2;  {t2}
    Alambda2 := Alambda3/Nenner;
    Nenner   := t1*Alambda3+Alambda3-t1;
    Alambda1 := Alambda3/Nenner;
    if (Alambda1<0) or (Alambda2<0)or (Alambda3<0) then
    begin
      Alambda3 := max (alamb[1], alamb[2]);
      Nenner   := t2-t2*Alambda3-Alambda3;
      Alambda2 := -Alambda3/Nenner;
      Nenner   := t1-t1*Alambda3-Alambda3;
      Alambda1 := -Alambda3/Nenner;
    end;
  end;
  XAchse := sqrt(abs(Alambda1));
  YAchse := sqrt(abs(Alambda2));
  ZAchse := sqrt(abs(Alambda3));
  aa := XAchse/YAchse;
  bb := YAchse/ZAchse;
end;
end.
