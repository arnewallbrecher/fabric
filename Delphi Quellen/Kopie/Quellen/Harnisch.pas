Unit Harnisch;

interface
uses Basic, Dialogs, SysUtils, Globvar, Graphics, ComCtrls,
     Windows, Plotten;

procedure Al2 (Rf: array of shortint; Fgitter, Nf,Na,Ra, Agitter: array of word;
               var Cmax,Cmin:word; var Zaehlen: array of word);
procedure Parameter (Th:integer; Ar:word; var Z:byte; var E1,E2:real;
                     var A,B,C:array of real);
procedure Drehe (Th:integer;Ar:word;Z:byte; var Ta:real; Am,Fm,E1,E2:real;
                   A,B,C:array of real);
procedure DichteCos (Canvas : TCanvas; Ag: array of word;
                     Fg: array of word; Laenge: array of real;
                     Cmax, Cmin: word; HLSmin, HLSmax : single;
                     var IsoX: array of real;
                     GrauSkala: boolean;
                     Fortschritt: TProgressBar);

implementation

procedure Al2 (Rf: array of shortint; FGitter, Nf,Na,Ra,
               Agitter: array of word; var Cmax,Cmin:word;
               var Zaehlen: array of word);
               // Zaehlen[0..311} = Besetzungsdichte pro Gitterpunkt
var
  A,B,C  : array[0..3] of real;
  k      : word;
  Am,Bo  : real;
  Fm,Ta  : real;
  Ar     : word;
  Th     : integer;
  E1,E2  : real;
  Z      : byte;
  Xr,Yr  : real;
  Xx,Yy  : real;
  Ss,Wu  : real;
  q,i    : word;
  S      : real;

begin
  Bo := Pi/180;
  Wu := sqrt(2);
  for k := 1 to ZahlGlob do
  begin
    Am := (Na[k] + 180) * Bo;  {Azimut}
    Fm := (90  - Nf[k]) * Bo;  {Fallen}
    if Am > 2 * Pi then Am := Am - 2 * Pi;
    Ar := Ra[k] + 90;
    Th := -(90 - abs(Rf[k]));
    Parameter (Th,Ar,Z,E1,E2,A,B,C);
    Drehe (Th,Ar,Z,Ta,Am,Fm,E1,E2,A,B,C);
    Xr := cos(Ta);
    Yr := sin(Ta);
    Xx := cos((Na[k] + 180) * Bo);
    Yy := sin((Na[k] + 180) * Bo);
    Ss := sqrt(sqr(Xr+Xx) + sqr(Yr+Yy));
    if Ss <= Wu then
    begin
      Xr := -Xr;
      Yr := -Yr;
    end;
    for q := 1 to 311 do
    begin
      Am := Agitter[q] * Bo;
      Fm := Fgitter[q] * Bo;
      Drehe (Th,Ar,Z,Ta,Am,Fm,E1,E2,A,B,C);
      S := sqrt(sqr(Xr + cos(Ta)) + sqr(Yr + sin(Ta)));
      if Rf[k] < 0 then
      begin
        if S >= Wu then Zaehlen[q] := Zaehlen[q] + 1;
      end
      else
      begin
        if S < Wu then Zaehlen[q] := Zaehlen[q] + 1;
      end;
    end;
  end;
  Cmax := 0;
  Cmin := ZahlGlob;
  for i := 1 to 311 do
  begin
    if Zaehlen[i] > Cmax then Cmax := Zaehlen[i];
    if Zaehlen[i] < Cmin then Cmin := Zaehlen[i];
  end;
end;

procedure Parameter (Th:integer; Ar:word; var Z:byte; var E1,E2:real;
                     var A,B,C:array of real);

var
  Bo,Te : real;
  Ad    :real;

begin
  Bo := Pi / 180;
  if Th < 0 then Th := 360 +Th;
  Te := Th * Bo;
  Ad := Ar * Bo;
  if Th <= 180 then
  begin
    A[1] := cos(Te);
    B[1] := 1-A[1];
    C[1] := sin(Te);
    Z := 1;
  end
  else
  begin
    A[2] := cos(Te - Pi);
    B[2] := 1 - A[2];
    C[2] := sin(Te - Pi);
    Z := 2;
    A[1] := -1;
    B[1] := 2;
    C[1] := 0;
  end;
  E1 := cos(Ad);
  E2 := sin(Ad);
end;

procedure Drehe (Th:integer;Ar:word;Z:byte; var Ta:real; Am,Fm,E1,E2:real;
                   A,B,C:array of real);
var
  D   : array[0..3, 0..3] of real;
  X,y : array[0..3] of real;
  j,i : byte;
  Fi  : real;

begin
  for j := 1 to Z do
  begin
    if j = 2 then
    begin
      Am := Ta;
      Fm := Fi;
    end;
    D[1,1] := A[j] + B[j] * E1 * E1;
    D[1,2] := B[j] * E1 * E2;
    D[1,3] := C[j] * E2;
    D[2,1] := B[j] * E1 * E2;
    D[2,2] := A[j] + B[j] * E2 * E2;
    D[2,3] := -C[j] * E1;
    D[3,1] := -C[j] * E2;
    D[3,2] := C[j] * E1;
    D[3,3] := A[j];
    X[1] := cos(Am) * cos(Fm);
    X[2] := cos(Fm) * sin(Am);
    X[3] := sin(Fm);
    for i := 1 to 3 do Y[i] := D[i,1] * X[1] + D[i,2] * X[2] + D[i,3] * X[3];
    if Y[1] = 1 then
    begin
      if Y[2] < 0 then Ta := 3 * Pi / 2 else Ta := Pi / 2;
    end;
    if Y[3] < 0 then
    begin
      Y[1] := -Y[1];
      Y[2] := -Y[2];
      Y[3] := -Y[3];
    end;
    if Y[1] <> 0 then Ta := arctan(Y[2] / Y[1]);
    if Y[1] <= 0 then Ta := Ta + Pi;
    if (Y[1] > 0) and (Y[2] < 0) then Ta := Ta +Pi * 2;
    if (Y[1] = 0) and (Y[2] > 0) then Ta := Pi / 2;
    if Y[3] > 0.999 then Fi := Pi/2 else Fi := arctan(Y[3]/sqrt(1-sqr(Y[3])));
  end;
end;

procedure DichteCos (Canvas : TCanvas; Ag: array of word;
                     Fg: array of word; Laenge: array of real;
                     Cmax, Cmin: word; HLSmin, HLSmax: single;
                     var IsoX: array of real;
                     GrauSkala: boolean;
                     Fortschritt: TProgressBar);
type
  Wreal = array of array of real;
var
  DichteMax    : real;
  DichtePix    : Wreal;
  XPixelAnfang : word;
  YPixelAnfang : word;
  XPixelEnde   : word;
  YPixelEnde   : word;
  x, y, i      : word;
  KoordX       : integer;
  KoordY       : integer;
  CosA, Phi    : real;
  CosPhi       : real;
  SinA         : real;
  Rho          : real;
  VektorX      : real;
  VektorY      : real;
  VektorZ      : real;
  XDat, YDat   : real;
  ZDat, VekSum : real;
  Dichte       : real;
  CosTau       : real;
  j            : word;
  Farb         : word;
  IsoMax       : real;
  TestFarbe    : word;
  H, m         : single;
  Rot, Gruen   : integer;
  Blau         : integer;
begin
  Bo := Pi/180;
  //Fortschrittsbalken
  Fortschritt.Visible := true;
  Fortschritt.Max  := YPixelEnde;
  Fortschritt.Step := 100;
  XPixelanfang := Xmitte - Radius;
  XPixelEnde   := Xmitte + Radius;
  YPixelAnfang := YMitte - Radius;
  YPixelEnde   := Ymitte + Radius;
  setlength (DichtePix, XPixelEnde, YPixelEnde);
  DichteMax   := 0;   {max Dichte/Pixel}
  for y := YPixelAnfang to YPixelEnde do
  begin
    for x := XPixelAnfang to XPixelEnde do
    begin
      if sqr(x-XMitte) + sqr(YMitte-y) <= sqr(Radius-2) then
      begin
        KoordX := x - XMitte;
        KoordY := YMitte - y;
        Rho    := sqrt(sqr(KoordX) + sqr(KoordY));
        if Rho = 0 then Rho := 0.000001;
        SinA   := KoordX/Rho;
        CosA   := KoordY/Rho;
        Phi := Pi/2 - arccos(1-sqr(Rho/Radius));
        CosPhi := cos(Phi);
        VektorX := CosA*CosPhi;    {Vektor des Pixels}
        VektorY := SinA * CosPhi;
        VektorZ := sin(Phi);
        Dichte := 0;
        for i := 1 to 311 do
        begin
          CosA := cos(Ag[i]*Bo);
          SinA := sin(Ag[i]*Bo);
          CosPhi := cos(Fg[i]*Bo)*Laenge[i];
          XDat := CosA * CosPhi;   {Vektoren der Gitterpunkte}
          YDat := SinA * CosPhi;
          ZDat := sin(Fg[i]*Bo)*Laenge[i];
          CosTau := VektorX*XDat + VektorY*YDat + VektorZ*ZDat;
          CosTau := sqr(CosTau);
          Dichte := Dichte + CosTau;
          if Dichte > DichteMax then DichteMax := Dichte;
        end; {Zahlglob-Schleife}
        DichtePix[x,y] := Dichte;
      end;
    end;
    Fortschritt.StepIt;
  end;
  {Beginn der Zeichnung}
  for i := 1 to 4 do IsoX[i] := DichteMax*20*i/100;
  IsoX[5] := DichteMax*95/100;
  for y := YPixelAnfang to YPixelEnde do
  begin
    for x := XPixelAnfang to XPixelEnde do
    begin
      if sqr(x-XMitte) + sqr(YMitte-y) <= sqr(Radius-2) then
      begin
        with Canvas do
        begin
          PixelS[x,y] := DiagrFarbe;
          if DarstellungS = 'floating' then
          begin
            m := 0;
            for i := 1 to round(DichteMax) do
            begin
              for j := 1 to 10 do
              begin
                m := i+j/10;
                if DichtePix[x,y] > m then
                begin
                  if not GrauSkala then
                  begin;
                    H := HLSmin + HLSmax - m*HLSmin/DichteMax;
                    HLSzuRGB(H, 0.5, 1.0, Rot, Gruen, Blau);
                  end
                  else
                  begin
                    Rot   := round(255-255*m/DichteMax);
                    Gruen := Rot;
                    Blau  := Rot;
                  end;
                  Pixels[x,y] := RGB(Rot, Gruen, Blau);
                end;
              end;
            end; {Ende for}
          end;
          if DarstellungS = 'Steps' then
          begin
            if DichtePix[x,y] > IsoX[1] then
              PixelS[x,y] := Isolinie[1];
            if DichtePix[x,y] > IsoX[2] then
              PixelS[x,y] := Isolinie[2];
            if DichtePix[x,y] > IsoX[3] then
              PixelS[x,y] := Isolinie[3];
            if DichtePix[x,y] > IsoX[4] then
              PixelS[x,y] := Isolinie[4];
            if DichtePix[x,y] > IsoX[5] then
              PixelS[x,y] := Isolinie[5];
          end;
        end;
      end;
    end;
    Fortschritt.StepIt;
  end;
  for i:=0 to high(DichtePix) do
    setlength(DichtePix[i],0);
  setlength(DichtePix,0);
  Fortschritt.Visible := false;
end;

end.