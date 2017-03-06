Unit Formfak;

Interface
uses Kalkulat, Globvar, Basic, Dialogs, SysUtils, Graphics;
     {Kalkulation, Texte, graph, Plotten; }

procedure Sigrot (Zahl:word; Na: array of word; var Narot: array of word;
                  Nf: array of word; var Nfrot: array of word;
                  Ra: array of word; var Rarot: array of word;
                  Rf: array of shortint; var Rfrot: array of shortint);

procedure Maxscher (Zahl:word; Rfaktor:real; Na: array of word;
                    var Nastr: array of word; Nf: array of word;
                    var Nfstr: array of shortint; Fs:byte);

procedure Rrechnen (var R:real; Zahl:word; Na, Ra: array of word;
                    Nf: array of word; Rf: array of shortint);
procedure FluktDiagramm (Canvas: TCanvas; Width, Height: word);

Implementation

procedure Sigrot (Zahl:word; Na: array of word; var Narot: array of word;
                  Nf: array of word; var Nfrot: array of word;
                  Ra: array of word; var Rarot: array of word;
                  Rf: array of shortint; var Rfrot: array of shortint);
var
  Azdreh     : word;
  Drehw      : integer;
  Falldreh   : shortint;
  Ad, Fd     : extended;
  Aa, B, C   : array[0..3] of extended;
  Z          : byte;
  ASigma3Rot : word;
  FSigma3Rot : shortint;
  Sign       : shortint;
  i, W       : word;
  Azrot      : word;
  Farot      : shortint;

begin
  Bo := Pi / 180;
  {Rotieren von sigma1 ins Zentrum und Mitrotation von Sigma3:}
  Azdreh := (Asigma1 +270) mod 360;  {Azimut der Drehachse}
  Drehw := 90 - Fsigma1;    {Drehwinkel}
  Falldreh := 0;            {Fallwinkel der Drehachse}
  Abc (Drehw, Azdreh, Falldreh, Ad, Fd, Aa, B, C, Z);
  {Aa,B,C,D = Drehtensor, Fs=Flächen od.Lin.,A,F=Striemungen;}
  Rotieren (Aa, B, C, 1, ASigma3, FSigma3, Z, Ad, Fd, ASigma3Rot,
            FSigma3Rot, Sign);
  {Rotation der Flächennormalen:}
  Asigma3rot := (540 - Asigma3rot) mod 360;  //540
  for i := 1 to Zahl do
  begin
    Rotieren (Aa, B, C, Z, Na[i], Nf[i], Z, Ad, Fd, Azrot, Farot, Sign);
    Azrot := (Azrot + Asigma3rot) mod 360;
    Narot[i] := Azrot;
    Nfrot[i] := Farot;
    Rotieren (Aa, B, C, Z, Ra[i], Rf[i], Z, Ad, Fd, Azrot, Farot, Sign);
    Azrot := (Azrot + Asigma3rot) mod 360;
    Rarot[i] := Azrot;
    Rfrot[i] := abs(Farot*(-1));
//    if Rf[i] + Drehw > 90 then Rfrot[i] := -Rfrot[i];
  end;
end;

procedure Maxscher (Zahl:word; Rfaktor:real; Na: array of word;
                    var Nastr: array of word; Nf: array of word;
                    var Nfstr: array of shortint; Fs:byte);

var
  Bo        : real;
  j         : word;
  L, M      : real;
  N, Ml, T  : real;
  Streichen : integer;
  Ad, Fd    : extended;
  Aa, B, C  : array[0..3] of extended;
  Z         : byte;
  Sign      : shortint;
  Theta     : integer;
  Aw, Fw, Cc: real;
begin
  Bo := Pi / 180;
  if Rfaktor = 0 then Rfaktor := 0.01;
  for j := 1 to Zahl do
  begin
    Aw := Na[j] * Bo;
    Fw := Nf[j] * Bo;
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
    Streichen := (Na[j]+180) mod 360;
    Streichen := Streichen - 90;
    if Streichen < 0 then Streichen := Streichen + 360;
    Abc (Theta, Na[j], Nf[j], Ad, Fd, Aa, B, C, Z);
    Rotieren (Aa, B, C, 1, Streichen, 0, Z, Ad, Fd, Nastr[j], Nfstr[j], Sign);
    if Nastr[j] = 360 then Nastr[j] := 359;
  end;
end;

procedure Rrechnen (var R:real; Zahl:word; Na, Ra: array of word;
                    Nf: array of word; Rf: array of shortint);

var
  Bo, Cc    : real;
  i, Az, A  : word;
  L, M, N   : real;
  Streichen : word;
  F, Fz     : shortint;
  Theta     : integer;
  Ttheta    : real;
  Bruch1    : real;
  Bruch2    : real;
  Rsumme    : single;
  Rzahl     : word;
  Aw, Fw    : real;
  Zaehler   : real;
  Nenner    : real;

begin
  Bo := Pi / 180;
  Rsumme := 0.0;
  Rzahl := 0;
  for i := 1 to Zahl do
  begin
    Fw := Nf[i] * Bo;
    Aw := Na[i] * Bo;
    Cc := cos(Fw);
    L  := -cos(Aw) * Cc;
    M  := -sin(Aw) * Cc;
    N  := -sin(Fw);
    if N = 0 then N := -0.0001;
    Streichen := Na[i] + 90;
    Az := Ra[i];
    Fz := Rf[i];
    Rechnen (17,3, 0, Fz, Streichen, Az, A, Theta, F);
    if Streichen > Az then Theta := 180 - Theta;
    if Theta <0 then Theta := 180 + Theta;
    if Theta > 180 then Theta := Theta - 180;
    Ttheta := tan(Theta*Bo);
    Zaehler := 1 - sqr(N);
    Nenner  := sqr(M) - (Ttheta*L*M)/N;
    if Nenner = 0 then Nenner := 0.0001;
    R := Zaehler/Nenner;
    if (R <= 1.0) and (R > 0.0) then
    begin
      Rsumme := Rsumme + R;
      Rzahl  := Rzahl + 1;
    end;
  end;
  R := Rsumme / Rzahl;
end;

procedure FluktDiagramm (Canvas: TCanvas; Width, Height: word);
var
  Teilh : real;
  Teilv : real;
  i     : byte;
begin
  with Canvas do
  begin
    Pen.Color   := DiagrFarbe;
    Brush.Color := DiagrFarbe;
    Rectangle (0,0,Width, Height);
    Pen.Color  := KoordinFarbe;
    Font.Color := KoordinFarbe;
    moveto (25,10);
    lineto (25,Height-25);
    lineto (Width-15,Height-25);
    Teilh := (Width-50)/90;
    Teilv := (Height-35)/90;
    for i := 1 to 18 do
    begin
      moveto (round(25 + Teilh*i*5), Height-25);
      lineto (round(25 + Teilh*i*5), Height-15);
    end;
    for i := 1 to 9 do
      Textout (round(30+2*Teilh*i*5),Height-20,IntToStr(i*10)+'°');
    for i := 1 to 9 do
    begin
      moveto (25,Height-25-round(i*Teilv*10));
      lineto (15,Height-25-round(i*Teilv*10));
      Textout(5,Height-22-round(i*Teilv*10),IntTostr(i*10));
    end;
  end;
end;


end.



