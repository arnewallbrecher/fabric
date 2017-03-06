unit Conturen;

interface
uses Globvar, SysUtils, Basic, Dialogs, Windows, Graphics, Classes;

procedure Kreis (X,Y: word; var Xrand,Yrand: word);
procedure Koordin (LinieS:string; var X1,Y1,X2,Y2:word);
procedure Zeile (X1,Y1,X2,Y2:word; var LinieS:string);
function Distanz (X1,Y1,X2,Y2:word): real;
procedure Winkel (X1,Y1,X2,Y2,Xr,Yr:word;var Alpha1,Alpha2:integer);
procedure Zeichne (Canvas: TCanvas; Punkt: array of TPoint; z: integer;
                   Farb: TColor; Linie: TPenStyle; Muster: TBrushStyle);
implementation
function Distanz (X1,Y1,X2,Y2:word): real;
begin
  distanz := sqrt(sqr(X1-X2)+sqr(Y1-Y2));
end;

procedure Kreis (X,Y: word; var Xrand,Yrand: word);
var
  Alpha : real;
begin
  if X = XMitte then Alpha := 0 else
  Alpha := arctan((YMitte-Y)/(X-XMitte));
  if Alpha < 0 then Alpha  := Pi+Alpha;
  if Y > YMitte then Alpha := Pi+Alpha;
  Xrand := round(cos(Alpha)*Radius + XMitte);
  Yrand := round(YMitte - sin(Alpha)*Radius);
end;

procedure Koordin (LinieS:string; var X1,Y1,X2,Y2:word);
begin
  X1 := StrToInt(copy(LinieS,1,3));
  Y1 := StrToInt(Copy(LinieS,4,3));
  X2 := StrToInt(copy(LinieS,7,3));
  Y2 := StrToInt(copy(LinieS,10,3));
end;

procedure Zeile (X1,Y1,X2,Y2:word; var LinieS:string);
var
  X1S,Y1S : string[3];
  X2S,Y2S : string[3];
begin
  X1S := IntToStr(X1);
  X1S := RightS('000'+X1S,3);
  Y1S := IntToStr(Y1);
  Y1S := RightS('000'+Y1S,3);
  X2S := Inttostr(X2);
  X2S := RightS('000'+X2S,3);
  Y2S := IntToStr(Y2);
  Y2S := RightS('000'+Y2S,3);
  LinieS := X1S+Y1S+X2S+Y2S;
end;

procedure Winkel (X1,Y1,X2,Y2,Xr,Yr:word; var Alpha1,Alpha2:integer);
var
  Winkel1 : real;
  Winkel2 : real;
  Bo      : real;
begin
  Bo := Pi/180;
  if X1 <> X2 then
    Winkel1 := arctan((Y1-Y2)/(X1-X2))
  else
    if Y2 >= Y1 then Winkel1 := Pi/2
    else Winkel1 := -Pi/2;
  if X1 <= X2 then Winkel1 := Winkel1+Pi/2
  else Winkel1 := 3*Pi/2+Winkel1;
  if X1 <> Xr then
    Winkel2 := arctan((Y1-Yr)/(X1-Xr))
  else
    if Yr >= Y1 then Winkel2 := Pi/2
    else Winkel2 := -Pi/2;
  if X1 <= Xr then Winkel2 := Winkel2+Pi/2
  else Winkel2 := 3*Pi/2+Winkel2;
  if Winkel1 > Winkel2 then
  begin
    Alpha2 := round(Winkel1/Bo);
    Alpha1 := round(Winkel2/Bo);
  end
  else
  begin
    Alpha1 := round(Winkel1/Bo);
    Alpha2 := round(Winkel2/Bo);
  end;
end;

procedure Zeichne (Canvas: TCanvas; Punkt: array of TPoint; z: integer;
                   Farb: TColor; Linie: TPenStyle; Muster: TBrushStyle);
var
i, X, Y : word;
begin
  if z >= MPunkte then
  begin
  for i := 0 to z-1 do
    if distanz (Punkt[i].x,Punkt[i].y,Punkt[i+1].x,Punkt[i+1].y) > PKante then
      Punkt[i+1] := Punkt[i];
    X := round((Punkt[z-1].x+Punkt[z].x+Punkt[0].x+Punkt[1].x+Punkt[2].x)/5);
    Y := round((Punkt[z-1].y+Punkt[z].y+Punkt[0].y+Punkt[1].y+Punkt[2].y)/5);
    Punkt[0] := point(X,Y);
    X := round((Punkt[z].x+Punkt[0].x+Punkt[1].x+Punkt[2].x+Punkt[3].x)/5);
    Y := round((Punkt[z].y+Punkt[0].y+Punkt[1].y+Punkt[2].y+Punkt[3].y)/5);
    Punkt[1] := point(X,Y);
    for i := 2 to z-2 do
    begin
      X := round((Punkt[i-2].x+Punkt[i-1].x+Punkt[i].x+Punkt[i+1].x+Punkt[i+2].x)/5);
      Y := round((Punkt[i-2].y+Punkt[i-1].y+Punkt[i].y+Punkt[i+1].y+Punkt[i+2].y)/5);
      Punkt[i] := point(X, Y);
    end;
    X := round((Punkt[z-2].x+Punkt[z-1].x+Punkt[z].x+Punkt[0].x+Punkt[1].x)/5);
    Y := round((Punkt[z-2].y+Punkt[z-1].y+Punkt[z].y+Punkt[0].y+Punkt[1].y)/5);
    Punkt[z-1]   := point(X,Y);
    X := round((Punkt[z-1].x+Punkt[z].x+Punkt[0].x+Punkt[1].x+Punkt[2].x)/5);
    Y := round((Punkt[z-1].y+Punkt[z].y+Punkt[0].y+Punkt[1].y+Punkt[2].y)/5);
    Punkt[z] := point(X,Y);
  end;
  with Canvas do
  begin
    Pen.Color   := Farb;
    if PFuellen then Brush.Color := Farb
    else Brush.Color := DiagrFarbe;
    Pen.Style   := Linie;
    Brush.Style := Muster;
    Polygon(Slice(Punkt,z));
//moveto(Punkt[0].x,Punkt[0].y);
//for i := 1 to z do
//begin
//lineto(Punkt[i].x,Punkt[i].y);
//showmessage(inttostr(i));
//end;
  end;
end;
end.
