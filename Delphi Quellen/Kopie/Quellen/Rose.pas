Unit Rose;

interface
uses Graphics, Globvar, HPPlot, Dialogs, SysUtils;

procedure Kordin (Canvas: TCanvas; Plott: byte; BereichS: string; V, Rr, A: byte; R,
                  Nm, Xi, Yi: real; N,W: array of real; var X, Y: real; var Xmax, Ymax,
                  Rmax: integer);
procedure Klassen(BereichS, BetraegeS: string; V: byte; var D,Rr,A,C:byte;
                  var Nm, Np: real; var N, W: array of real);
procedure Verbindungslinie(Canvas: TCanvas; var X0, Y0: real; X, Y: real; Zm: TColor;
                           var Xmax, Ymax, Rmax: integer);
procedure GrenzenOmitten(Canvas: TCanvas; Plott, V: byte; BereichS: string;
                         Cc, Rr: byte; R, Nm, Xi, Yi: real; var X, Y: real;
                         N: array of real; var Xmax, Ymax, Rmax: integer);
procedure Anfangende(C, Cc: word; R: real; var Xi, Yi: real; N: array of real);

implementation

procedure Kordin (Canvas: TCanvas; Plott: byte;
                  BereichS: string; V, Rr, A: byte; R,
                  Nm, Xi, Yi: real; N,W: array of real;
                  var X, Y: real; var Xmax, Ymax,
                  Rmax: integer);
var
  Bo,J   : real;
  B,C,i  : word;
  Cc     : word;
  k      : byte;
  X0,Y0  : real;
  Zm     : TColor;
begin
  Bo := Pi / 180;
  B  := V div 2;
  C  := 180 + B + Rr;
  i := B;
  while i <= C do
  begin
    N[i] := W[i]/Nm;
    inc(i,A);
  end;
  Y := cos(B*Bo) * N[B] * R;
  X := sin(B*Bo) * N[B] * R;
  if Plott = 0 then
  begin
    Zm := DiagrFarbe;
    Verbindungslinie(Canvas, X0, Y0, X, Y, Zm, Xmax, Ymax, Rmax);
    Zm := RoseFarbe;
  end
  else
  begin
    PudS := 'PU;';
    Hpverbindungslinie (Canvas, X/Radius, Y/Radius);
    PudS := 'PD;';
  end;
  for k := 1 to 2 do
  begin
    i := B;
    while i <= C do
    begin
      j := i * Bo;
      if k = 2 then j := (i + 180) * Bo;
      Y := cos(j) * N[i] * R;
      X := sin(j) * N[i] * R;
      if Plott = 0 then	Verbindungslinie (Canvas, X0, Y0, X, Y, Zm, Xmax,
                                          Ymax, Rmax)
      else Hpverbindungslinie (Canvas, X/Radius, Y/Radius);
      inc(i,A);
    end;
    if BereichS = '1..360°' then break;
  end;
  if BereichS <> '1..360°' then exit;
  Cc := B;
  C:=180+B+Rr;
  Anfangende(C,Cc,R,Xi,Yi,N);
  if Plott = 0 then Verbindungslinie(Canvas, X0, Y0, Xi, Yi, Zm, Xmax, Ymax, Rmax)
  else Hpverbindungslinie (Canvas, Xi/Radius, Yi/Radius);
end;

procedure Klassen(BereichS, BetraegeS: string; V: byte; var D,Rr,A,C:byte;
                  var Nm, Np: real; var N, W: array of real);
var
  i,l,x    : word;
  Xl,Z, Xx : longword;
  F,j,k    : word;
  M,Ma     : real;
begin
  Nm := 0;
  Rr := 0;
  if BereichS = '1..360°' then Rr := 180
  else
  begin
    for l := 1 to ZahlGlob do if AziFeld[l] > 179 then
    AziFeld[l] := AziFeld[l] - 180;
  end;
  Xl := 0;
  Z  := 1;
  F  := 179 + Rr;
  if RoseS = 'floating' then
  begin
    A := D;
    C := V div 2;
    F := 180 + C + Rr;
  end;
  if RichtungenS = 'Betraege' then for i := 1 to ZahlGlob do
                    Xl := Xl + FalFeld[i];
  j := 0;
  while j <= 179+Rr do
  begin
    for k := 1 to ZahlGlob do
    begin
      if RichtungenS = 'Betraege' then Z := FalFeld[k];
      if (AziFeld[k] >= j) and (AziFeld[k] < j+A) then N[j] := N[j] + z;
    end;
    inc(j,A);
  end;
  if RoseS <> 'Block' then
  begin
    if Rr = 0 then
    begin
      x := 0;
      while x <= V do
      begin
        N[x+180] := N[x];
        inc(x,A);
      end;
    end;
    i := V div 2;
    while i <= 180 + Rr + V div 2 do
    begin
      M := 0;
      j := i -C;
      while j <= i + V div 2 do
      begin
	M := M + N[j];
        inc(j,A);
      end;
      W[i] := M;;
      inc(i,A);
    end;
  end;
  for i := C to F do
  begin
    if N[i] < 0.1 then N[i] := 0.1;
    if W[i] < 0.1 then W[i] := 0.1;
    Ma := N[i];
    if RoseS = 'floating' then Ma := W[i];
    if Ma > Nm then Nm := Ma;
  end;
  Xx := ZahlGlob;
  if RichtungenS = 'Betraege' then Xx := Xl;
  Np :=100 * Nm/Xx;
end;

procedure Verbindungslinie(Canvas: TCanvas; var X0, Y0: real;
                           X, Y: real; Zm: TColor;
                           var Xmax, Ymax, Rmax: integer);
var
  X1,Y1,X2,Y2 : integer;
  Rver        : real;
begin
  X1 := round(X0);
  Y1 := round(Y0);
  X2 := round(X);
  Y2 := round(Y);
  if X2 = 0 then X2 := 5;
  if Y2 = 0 then Y2 := 5;
  if X1 = 0 then X1 := 5;
  if Y1 = 0 then Y1 := 5; 
  with Canvas do
  begin
    Pen.Color := Zm;
    moveto (X1+Xmitte, Ymitte-Y1);
    lineto (X2+Xmitte,Ymitte-Y2);
  end;
  X0 := X;
  Y0 := Y;
end;

procedure GrenzenOmitten(Canvas: TCanvas; Plott, V: byte;
                         BereichS: string; Cc, Rr: byte;
                         R,Nm,Xi,Yi:real; var X, Y: real;
                         N: array of real;
                         var Xmax, Ymax, Rmax: integer);
var
  Bo,F        : real;
  Schritt,j   : real;
  D,k         : byte;
  A,B,p       : word;
  C,i,l       : word;
  X0,Y0       : real;
  Zm          : TColor;
begin
  if R < 100 then R := 100;
  Bo := Pi / 180;
  A  := 0;
  B  := V;
  R  := R / Nm;
  C  := 0;
  X0 := 0;
  Y0 := 0;
  if RoseS = 'Star' then C := V div 2;
  if Plott = 0 then
  begin
    Anfangende(C,Cc,R,Xi,Yi,N);
    Zm := DiagrFarbe;
    Verbindungslinie(Canvas, X0, Y0, Xi, Yi, Zm, Xmax, Ymax, Rmax);
    Zm := Rosefarbe;
  end
  else
  begin
    Anfangende(C,Cc,Radius,Xi,Yi,N);
    PudS := 'PU;';
    Xi := Xi/(Radius*Nm);
    Yi := Yi/(Radius*Nm);
    Hpverbindungslinie (Canvas, Xi,Yi);
    PudS := 'PD;';
  end;
  D := 1;
  if BereichS = '1..180°' then D := 2;
  for k := 1 to D do
  begin
    i := 0;
    while i <= 179 + Rr do
    begin
      if RoseS <> 'Star' then
      begin
        for p := A to B do
        begin
          if Plott = 0 then
          begin
            Y := R * cos (p*Bo) * N[i];
            X := R * sin (p*Bo) * N[i];
	    Verbindungslinie(Canvas, X0, Y0, X, Y, Zm, Xmax, Ymax, Rmax);
          end
	  else
          begin
	    Y := cos(p*Bo) * N[i] / Nm;
            X := sin(p*Bo) * N[i] / Nm;
	    Hpverbindungslinie(Canvas, X,Y);
	  end; {plot = 0}
	end; {for p}
	A := B;
        B := A + V;
      end
      else
      begin
	j := (i + C) * Bo;
        if k = 2 then  j := (i + C + 180) * Bo;
	if Plott = 0 then
        begin
	  Y := R * cos(j) * N[i];
          X := R * sin(j) * N[i];
	  Verbindungslinie(Canvas, X0, Y0, X, Y, Zm, Xmax, Ymax, Rmax);
        end
	else
        begin
	  Y := cos(j) * N[i] / Nm;
          X := sin(j) * N[i] / Nm;
	  Hpverbindungslinie(Canvas, X,Y);
	end;
      end; {if RoseS}
      inc(i,V);
    end; {while}
    if (K = 2) and (RoseS = 'Star') then
    begin
     A := 180;
     B := A + V;
    end;
  end; {for k}
  if Plott = 0 then Verbindungslinie(Canvas, X0, Y0, Xi, Yi, Zm, Xmax, Ymax, Rmax)
  else
  begin
    Hpverbindungslinie(Canvas, Xi,Yi);
  end;
end;

procedure Anfangende(C, Cc: word; R: real; var Xi, Yi: real; N:array of real);
var
  Bo :real;
begin
  Bo := Pi / 180;
  Xi := R * sin(C*Bo) * N[Cc];
  Yi := R * cos(C*Bo) * N[Cc];
end;
end.