Unit Netzproj;

interface

uses Graphics, Globvar, Basic, Dialogs, SysUtils;

procedure Projektionen (NetzS: string; Canvas: TCanvas);
procedure Linie (NetzS: string; It: byte; Tl, Sl: word; var Zm, Fabe: TColor;
                 var X,Y,Z,Rp,Rd,Rot,Co,Ox,Oy,Oz:real; Canvas:TCanvas);
procedure Drehen (Rot:real; var Xr,Zr:real);
procedure Netz (NetzS:string; var Xn,Yn,Zn:real);
procedure Kreis (Ro:integer; Canvas: TCanvas);
procedure Refine (It:byte;NetzS:string;Tl:word; Rp,Rd,Rot,Co:real;
                  var Zm:TColor; var X,Y,Z,Ox,Oy,Oz:real);

implementation

procedure Projektionen (NetzS:string; Canvas: TCanvas);
var
  Tl,Sl       : word;
  Co, Bo      : real;
  Rot         : real;
  Ii          : byte;
  Zm, Fabe    : TColor;
  Ij,It       : byte;
  i,Xp,Yp     : integer;
  Ink         : byte;
  Te,Id       : byte;
  Rd,Re,Rp    : real;
  X,Y,Z       : real;
  Ox,Oy,Oz    : real;
  Ir,PL       : integer;
  Sb,Se,Di    : integer;
  Inn,Aus     : byte;
  Ic, Sp, Ro  : integer;
  m           : word;
  Xa, Ya      : integer;
  NStrich     : byte;
label
  Ro90;
begin
  NStrich := Strich;
  Sl := 0;
  Bo   := Pi / 180;
  Ic := Abstand;
  Sp := NetzInkrement;
  Ro := Kippwinkel;
  Tl   := abs(Ro);
  Co   := abs(Sp) * Bo / 20;
  Sp   := -abs(Sp);
  Fabe := NetzFarbe;
  with Canvas do
  begin
    Pen.Width := Strich;
    Moveto (Xmitte, Ymitte);
    Rot := -Tl * Bo;
    Zm  := DiagrFarbe;
    Ii  := 1;
    if Tl = 0 then Ii := Ic + 1;
    Ij  := 181 -Ic;
    It  := 1;
    Ink := 0;
    i   := Ii - Ic;
    repeat
      m := 0;
      i := i + Ic;
      Te := 0;
      Id := i - 1;
      Rd := -Id * Bo;
      Ox := cos(Rot);
      Oy :=0;
      Oz := sin(Rot);
      Ir := round(Id / 10);
      Re := Id / 10;
      Ir := round(Re - Ir) * 1000;
      if Ir <> 0 then
      begin
        Sb := -20;
        Se := -160;
      end
      else
      begin
        Ir := round(Id / 90);
        Re := Id / 90;
        Ir := round(Re - Ir) * 1000;
        if Ir = 0 then
        begin
	  Sb := 0 - Ic;
          Se := Ic - 180;
        end
        else
        begin
	  Sb := 0;
          Se := -180;
        end;
      end;
      if Sb >-10 then Sb := -10;
      if Se <-170 then Se := -170;
      repeat
        inc(m);
        if Ic < 10 then
        begin
          if ((i-1) mod 10) = 0 then Strich := NStrich+1
          else Strich := NStrich;
          Pen.Width := Strich;
        end;
        Pl := Sb;
        if Pl <= Se then
        begin
          Pl := Se;
          Te := 1;
        end;
        Rp := Pl * Bo;
        {Großkreise zeichnen}
        Linie (NetzS,It,Tl,Sl,Zm, Fabe,X,Y,Z,Rp,Rd,Rot,Co,Ox,Oy,Oz,
               Canvas);
        if (Pl <= -10) or (Pl >= -170) then
        begin
	  Xp := Xmitte - round(Y);
          Yp := Ymitte - round(X);
          if m = 1 then
          begin
            Xa := Xp;
            Ya := Yp;
          end;
          Pen.Color := Zm;;
          Lineto (Xp,Yp);
          Zm := Fabe;
        end;
        Ox := X;
        Oy := Y;
        Oz := Z;
        Sb := Sb + Sp;
      until Te <> 0;
      moveto(Xa,Ya);
    until i >= Ij;
    Zm := DiagrFarbe;
    Inn := 180 - Ic;
    It  := 2;
    Aus := 90;
    if Ro = 90 then Aus := 180;
    Ink := 0;
    i := 0;
    repeat
      i := i + ic;
      if Ic < 10 then
      begin
        if (i mod 10) = 0 then Strich := NStrich+1
        else Strich := NStrich;
        Pen.Width := Strich;
      end;
      if (Ro = 90) and (i = 90) then goto Ro90;
      if i = 90 then      {Äquator}
      begin
      Fabe := AequatorFarbe;
      end
      else
      begin
        Fabe := NetzFarbe;
      end;
      Te := 0;
      if (Tl = 90) and (i = Aus) then break;
      Rp := -i * Bo;
      Ox := cos(Rp);
      Oy := sin(Rp);
      Oz := 0;
      if Tl <> 0 then Drehen (Rot, Ox, Oz);
      Netz (NetzS, Ox, Oy, Oz);
      Sb := 0;
      Se := -180;
      repeat
        Di := Sb;
        if Di <= Se then
        begin
          Di := Se;
          Te := 1;
        end;
        Rd := Di * Bo;
        Linie (NetzS,It,Tl,Sl,Zm,Fabe,X,Y,Z,Rp,Rd,Rot,Co,Ox,Oy,Oz,
               Canvas);
        if abs(Z) >= 1 then X := 0;
        if (Z > 0) and (Di = - 180) then Y := abs(Y);
        Xp := Xmitte - round(Y);
        Yp := Ymitte - round(X);
        if Zm = DiagrFarbe then Moveto (Xp,Yp);
        if Zm = Fabe then
        Pen.Color := Zm;
        Lineto(Xp,Yp);
        Zm := Fabe;
        Ox := X;
        Oy := Y;
        Oz := Z;
        Sb := Sb + Sp;
      until Te = 1;
      Zm := DiagrFarbe;
    Ro90:
    until i >= Inn;
    Kreis (Ro, Canvas);
  end; {Canvas}
end;

procedure Linie (NetzS:string;It:byte;Tl,Sl:word; var Zm, Fabe: TColor;
                 var X,Y,Z,Rp,Rd,Rot,Co,Ox,Oy,Oz:real; Canvas: TCanvas);

var
  K     : real;
  Xo,Yo : integer;
label
  Ruecksprung;
begin
  K := 0.001;
  X := cos(Rp);
  Y := -sin(Rp) * cos(Rd);
  Z := -sin(Rp) * sin(Rd);
  if Tl <> 0 then Drehen (Rot,X,Z);
  Netz (NetzS,X,Y,Z);
  if (Z <= 0) and (Oz <= 0) then exit;
  if (Z > 0) and (Oz > 0) then
  begin
    Ruecksprung:
    if Tl <> 90 then
    begin
      Y := -Y;
      X := -X;
      exit
    end;
    if (X = 0) and (Z >= 0) then exit;
    X := -X;
    Y := -Y;
    exit;
  end;
  Zm := DiagrFarbe;
  {PudS := 'PU;';}
  Refine (It,NetzS,Tl,Rp,Rd,Rot,Co,Zm,X,Y,Z,Ox,Oy,Oz);
  {PudS := 'PD;';}
  Xo := Xmitte - round(Oy);
  Yo := Ymitte - round(Ox);
  Canvas.Lineto (Xo,Yo);
  Ox := -Ox;
  Oy := -Oy;
  Xo := Xmitte - round(Oy);
  Yo := Ymitte - round(Ox);
  Canvas.Moveto (Xo,Yo);
  Zm   := Fabe;
  {PudS := 'PD;';}
  goto Ruecksprung;
end;

procedure Drehen (Rot:real; var Xr,Zr:real);

var
  K,El  : real;
  Xx,Am : real;
  Da    : real;

begin
  K  := 0.00001;
  El := sqrt(sqr(Xr) + sqr(Zr));
  if Xr >= 0 then
  begin
    Xx := Xr;
    if Xr = 0 then Xx := K;
    Am := arctan(Zr / Xx);
  end
  else Am := arctan(Zr / Xr) - Pi;
  Da := Am + Rot;
  Xr := El * cos(Da);
  Zr := El * sin(Da);
end;

procedure Netz (NetzS:string; var Xn,Yn,Zn:real);
var
  Wu,K  : real;
  Radi  : word;
  Xx,El : real;
  Ph,Rh : real;
  XS,YS : string[10];
label
  Schluss;

begin
  Wu := sqrt(2);
  K  := 0.00001;
  Radi := Radius;
  if NetzS <> 'ortho' then
  begin
    if Xn <= 0 then
    begin
      Xx := Xn;
      if Xn = 0 then Xx := -K;
      Ph := arctan(Yn /Xx) - Pi;
    end
    else Ph := arctan(Yn / Xn);
    Rh := abs(arctan(Zn / sqrt(1 - sqr(Zn) + K)));
    if NetzS <> 'Wulff' then
    begin
      if NetzS <> 'Schmidt' then
      begin
        El := Radi * (Pi - 2 * Rh) / Pi;
        goto Schluss;
      end;
      El := Radi * Wu * sin(Pi / 4 - Rh / 2);
      goto Schluss;
    end;
    El := Radi * Tan(PI / 4 - Rh / 2);
    Schluss:
    Yn := El * sin(Ph);
    Xn := El * cos(Ph);
    exit;
  end;
  Xn := Radi * Xn;
  Yn := Radi * Yn;
end;

procedure Kreis (Ro:integer; Canvas: TCanvas);
var
  RoS   : string[10];
  XS,YS : string[10];
  X,Y,R : real;
  DiS   : string[8];
  WiS   : string[5];
  TextS : string[30];
  Co    : integer;
  H     : real;
begin
  Canvas.Pen.Color   := UmfangFarbe;
  Canvas.Brush.Color := UmfangFarbe;
  Canvas.Ellipse (Xmitte-4,Ymitte-4, Xmitte+4,YMitte+4);
end;

procedure Refine (It:byte;NetzS:string;Tl:word; Rp,Rd,Rot,Co:real;
                  var Zm:TColor; var X,Y,Z,Ox,Oy,Oz:real);

var
  Rn,Ri : real;
label
  Ruecks,
  Rein;
begin
  if It <> 2 then
  begin
    Rn := Rp;
    repeat
      Ox := cos(Rn);
      Oy := -sin(Rn) * cos(Rd);
      Oz := -sin(Rn) * sin(Rd);
      if Rot <> 0 then Drehen (Rot,Ox,Oz);
      if Oz <= 0 then break;
      Rn := Rn + Co;
    until Oz = 100;
    Netz (NetzS,Ox,Oy,Oz);
    Zm := DiagrFarbe;
    exit;
  end;
  Ri := Rd;
  Ruecks:
  Ox := cos(Rp);
  Oy := -sin(Rp) * cos(Ri);
  Oz := -sin(Rp) * sin(Ri);
  if Tl <> 0 then Drehen (Rot,Ox,Oz);
  if Z > 0 then
  begin
    if Oz <= 0 then
    begin
      Netz (NetzS,Ox,Oy,Oz);
      Zm := DiagrFarbe;
      exit;
    end;
    Rein:
    Ri := Ri + Co;
    goto Ruecks
  end;
  if Oz < 0 then goto Rein;
  Ox := -Ox;
  Oy := -Oy;
  X  := -X;
  Y  := -Y;
  Netz (NetzS,Ox,Oy,Oz);
  Zm := DiagrFarbe;
end;
end.