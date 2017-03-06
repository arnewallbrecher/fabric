unit Paleostress;

interface
uses Globvar, Kalkulat, Graphics, SysUtils, Dialogs;

procedure FluktDiagramm (Canvas: TCanvas; W, H: word);
procedure SBott (Ahar, Fhar: word; Rfaktor: real; var Theta: integer);

implementation


procedure FluktDiagramm (Canvas: TCanvas; W, H: word);
var
  Teilh : real;
  Teilv : real;
  i     : byte;
begin
  DecimalSeparator := '.';
  with Canvas do
  begin
    Pen.Color   := RahmenFarbe;
    Brush.Color := GrundFarbe;
    Rectangle (0,0,W, H);
    Pen.Color   := KoordinFarbe;
    Brush.Color := DiagrFarbe;
    rectangle (65,10,W-15,H-65);
    Font.Color  := KoordinFarbe;
    Brush.Color := GrundFarbe;
    Font.Name   := 'Times New Roman';
    Font.Size   := 10;
    Teilh := (W-80)/100;
    Teilv := (H-75)/100;
    for i := 1 to 20 do
    begin
      moveto (round(65 + Teilh*i*5), H-65);
      lineto (round(65 + Teilh*i*5), H-55);
    end;
    for i := 1 to 10 do
      Textout (round(70+2*Teilh*i*5),H-60,FloatToStr(i/10));
    for i := 1 to 10 do
    begin
      moveto (65,H-65-round(i*Teilv*10));
      lineto (55,H-65-round(i*Teilv*10));
    end;
    Font.Color := KoordinFarbe;
    Font.Name  := 'Symbol';
    Font.Size  := 24;
    textout (10,180,'d°');
    Font.Name  := 'Times New Roman';
    textout (330,400,'R');
  end;
end;

procedure SBott (Ahar, Fhar: word; Rfaktor:real; var Theta: integer);
var
  Bo,Cc   : real;
  Aw,Fw   : real;
  L,M,N : real;
  Ml,T    : real;
  Ap      : word;
  Fp      : shortint;
begin
  Bo := Pi / 180;
  if Rfaktor = 0 then Rfaktor := 0.001;
  Ap := (180 + Ahar) mod 360;
  Fp := 90 - Fhar;
  Fw := Fp * Bo;
  Aw := Ap * Bo;
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
  if Theta > 180 then Theta := Theta - 180;
end;

end.
