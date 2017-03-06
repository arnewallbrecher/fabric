unit Panozzo;

interface
uses Globvar, Basic, Graphics, SysUtils, Dialogs;
  procedure Polygone (Canvas:TCanvas);
  procedure Kurve (Canvas:TCanvas; ZahlPoly, Hoehe,Breite:word;
                   var Laenge: array of real;
                   var MaxLaenge, MinLaenge:real; var Theta: word);
  procedure PolyDatei (OpenDialog1:TOpenDialog);
  procedure XSkala (Canvas:TCanvas; Breite: word);
  procedure Kreis (Canvas: TCanvas; Laenge: array of real;
                   Maxlaenge: real);
  procedure Rellipse (Canvas:TCanvas;Breite,Hoehe:word; MaxL,MinL:real;
                      Th:word);
  procedure PolyCenter (Zahl: word; Px, Py: array of word;
                        var Cx, Cy: integer);

implementation

procedure PolyDatei (OpenDialog1:TOpenDialog);
var
  Datei   : TextFile;
  i       : word;
  Punkt   : byte;
  ZahlS   : string;
  SDir    : string;
  SLaenge : word;
begin
  i := 0;
  if not WeiterB[72] then
  begin
    if SpracheS = 'DEUTSCH' then
      OpenDialog1.Filter := 'Polygon-Dateien (*.pol)|*.pol';
    if SpracheS = 'ENGLISH' then
      OpenDialog1.Filter := 'Polygon Files (*.pol)|*.pol';
    if OpenDialog1.Execute then
    begin
      DateiZahl := 1;
      AssignFile(Datei, OpenDialog1.FileName);
      Reset(Datei);
      Readln (Datei, ZahlS);
      while not eof (Datei) do
      begin
        inc(i);
        Readln(Datei, ZeilePolygonS[i]);
        PolygonZeileS[i] := ZeilePolygonS[i];
      end;
      CloseFile (Datei);
    end
    else exit;
  end
  else
  begin
    DateiZahl := 1;
    AssignFile(Datei, DateinameS[1]);
    Reset(Datei);
    Readln (Datei, ZahlS);
    while not eof (Datei) do
    begin
      inc(i);
      Readln(Datei, ZeilePolygonS[i]);
      PolygonZeileS[i] := ZeilePolygonS[i];
    end;
    CloseFile (Datei);
  end;
  ZahlGlob := i;
  Punkt := pos (' ',ZahlS);
  ZahlPoly := StrtoInt(LeftS(ZahlS,Punkt-1));
  PolyNr := ZahlPoly;
end;

procedure Polygone (Canvas:TCanvas);
var
  Xa, Ya : word;
  X, Y   : word;
  i, j, k: word;
  Punkt  : byte;
  ZahlS  : string;
  Zahl   : word;
  Xm, Ym : word;
  Xmax   : word;
  Ymax   : word;
  Xmin   : word;
  Ymin   : word;
begin
  if Polygon then
    for i := 1 to ZahlGlob do ZeilePolygonS[i] := PolygonZeileS[i];
  k := 1;
  for j := 1 to ZahlPoly do
  begin
    Xmax := 0;
    Ymax := 0;
    Xmin := 60000;
    Ymin := 60000;
    delete (ZeilePolygonS[k],length(ZeilePolygonS[k]),1);
    Punkt := pos('(',ZeilePolygonS[k]);
    ZahlS := RightS(ZeilePolygonS[k],length(ZeilePolygonS[k])-Punkt);
    Zahl  := StrtoInt(ZahlS);
    Xa := StrtoInt(LeftS(ZeilePolygonS[k+1],3)) div 2;
    Ya := StrtoInt(RightS(ZeilePolygonS[k+1],3)) div 2;
    Canvas.moveto (Xa, Ya);
    for i := k+1 to Zahl+k do
    begin
      X := StrtoInt(LeftS(ZeilePolygonS[i],3)) div 2;
      Y := StrtoInt(RightS(ZeilePolygonS[i],3)) div 2;
      Canvas.lineto (X, Y);
      if X > Xmax then Xmax := X;
      if Y > Ymax then Ymax := Y;
      if X < Xmin then Xmin := X;
      if Y < Ymin then Ymin := Y;
    end;
    Xm := (Xmax + Xmin) div 2;
    Ym := (Ymax + Ymin) div 2;
    Canvas.lineto (Xa, Ya);
    Canvas.Brush.Color := FuellFarbe;
    Canvas.FloodFill (Xm, Ym, DatenFarbe, fsBorder);
    k := k + Zahl + 1;
  end;
end;

procedure Kurve (Canvas:TCanvas; ZahlPoly,Hoehe,Breite:word;
                 var Laenge: array of real;
                 var MaxLaenge, MinLaenge:real; var Theta: word);
var
  Xp        : array of real;
  X, Y      : word;
  Proj, Bo  : real;
  i,j,k,l   : word;
  Punkt     : byte;
  ZahlS     : string;
  Zahl      : word;
  Faktor    : real;
  Yl        : word;
begin
  setlength (Xp,MaxDaten);
  Bo := Pi/180;
  MinLaenge := 60000;
  MaxLaenge := 0;
  for l := 0 to 179 do
  begin
    k    := 1;
    Proj := 0;
    for j := 1 to ZahlPoly do
    begin
      Punkt := pos('(',ZeilePolygonS[k]);
      ZahlS := RightS(ZeilePolygonS[k],length(ZeilePolygonS[k])-Punkt);
      Zahl  := StrtoInt(ZahlS);
      for i := k+1 to Zahl+k do
      begin
        X     := StrtoInt(LeftS(ZeilePolygonS[i],3));
        Y     := StrtoInt(RightS(ZeilePolygonS[i],3));
        Xp[i] := X*cos(l*Bo) + Y*sin(l*Bo);
      end;
      for i := k+1 to Zahl+k-1 do
      begin
        Proj := Proj + abs(Xp[i+1]-Xp[i]);
      end;
      Proj := Proj + abs(Xp[Zahl+k]-Xp[k+1]);
      k := k + Zahl + 1;
    end;
    Laenge[l] := 0.5*Proj/ZahlPoly;
    if Laenge[l] < MinLaenge then MinLaenge := Laenge[l];
    if Laenge[l] >= MaxLaenge then
    begin
      MaxLaenge := Laenge[l];
      Theta     := 180-l;
    end;
  end;
  with Canvas do
  begin
    moveto (Breite,Round(Laenge[0]));
    for i := 0 to 179 do
    begin
      Yl := round(Laenge[i]-MinLaenge);
      lineto (round((180-i)*Breite/180),Hoehe-Yl-10);
    end;
    Yl := round(MaxLaenge-MinLaenge);
    moveto (round(Theta*Breite/180),Hoehe);
    lineto (round(Theta*Breite/180),Hoehe-Yl-10);
  end;
  Xp     := NIL;
end;

procedure XSkala (Canvas:TCanvas; Breite: word);
var
  i : word;
  x : word;
begin
  with Canvas do
  begin
    for i := 0 to 18 do
    begin
      x := round(10*i*Breite/180);
      moveto (x, 0);
      lineto (x, 5);
      textout (x,8,InttoStr(i*10));
    end;
  end;
end;

procedure Kreis (Canvas: TCanvas; Laenge:array of real;
                 MaxLaenge: real);
var
  Xm, Ym, i : word;
  X, Y      : word;
  Bo        : real;
  Faktor    : real;
  Winkel    : integer;
begin
  Bo := Pi/180;
  with Canvas do
  begin
    ellipse (round(0.2*Radius),round(0.2*Radius),
             round(1.8*Radius),round(1.8*Radius));
    Xm := Radius;
    Ym := Radius;
    brush.Color := HintFarbe;
    floodfill (Xm,Ym,DatenFarbe, fsBorder);
    Faktor := 1.6*Radius/MaxLaenge;
    X := round(Xm-Faktor*Laenge[0]/2);
    Y := Ym;
    moveto (X,Y);
    for i:= 1 to 179 do
    begin
      X := round(Xm + Faktor*sin((-90-i)*Bo)*Laenge[i]/2);
      Y := 2*Radius-round(Ym - Faktor*cos((-90-i)*Bo)*Laenge[i]/2);
      lineto (X, Y);
    end;
    for i := 0 to 179 do
    begin
      X := round(Xm - Faktor*sin((-90-i)*Bo)*Laenge[i]/2);
      Y := 2*Radius-round(Ym + Faktor*cos((-90-i)*Bo)*Laenge[i]/2);
      lineto (X,Y);
    end;
    X := round(Xm-Faktor*Laenge[0]/2);
    Y := Ym;
    lineto (X,Y);
    brush.Color := FuellFarbe;
    floodfill (Xm,Ym, DatenFarbe,fsBorder);
    Pen.Color := clBlack;
    for i := 0 to 11 do
    begin
      moveto (round(Xm+sin(i*30*Bo)*Radius*0.8),
              round(Ym-cos(i*30*Bo)*Radius*0.8));
      X := round(Xm+sin(i*30*Bo)*(Radius+10)*0.8);
      y := round(Ym-cos(i*30*Bo)*(Radius+10)*0.8);
      lineto (X,Y);
      brush.Color := clWhite;
      Winkel := (9-i)*30-180;
      if Winkel < 0 then Winkel := Winkel+360;
      if Winkel<= 90 then
        Textout (X+4,Y-10,InttoStr(Winkel));
      if (Winkel > 90) and (Winkel<=180) then
        Textout(X-20,Y-10,InttoStr(Winkel));
      if (Winkel >180) and (Winkel<=270) then
        Textout(X-20,Y,InttoStr(Winkel));
      if Winkel > 270 then
        Textout(X+5,Y,InttoStr(Winkel));
    end;
  end;
end;

procedure Rellipse (Canvas:TCanvas;Breite,Hoehe:word;MaxL,MinL:real;
                    Th:word);
var
  Bo, Fa : real;
  X, Y   : real;
  i      : word;
  Xp, Yp : word;
  Xm, Ym : word;
  Te     : integer;
  Xk, Yk : word;
  Winkel : integer;
  X0, Y0 : word;
begin
  Bo := Pi/180;
  with Canvas do
  begin
    Xm     := Breite div 2;
    Ym     := Xm;
    Radius := Xm;
    ellipse (round(0.2*Radius),round(0.2*Radius),
             round(1.8*Radius),round(1.8*Radius));
    brush.Color := HintFarbe;
    floodfill (Xm,Ym,DatenFarbe, fsBorder);
    Fa := 1.6*Radius/MaxL;
    X  := cos(-90*Bo)*MinL/2;
    Y  := sin(-90*Bo)*MaxL/2;
    Te := -90-Th;
    X0 := (Breite div 2) + round(Fa*(X*cos(Te*Bo)+Y*sin(Te*Bo)));
    Y0 := (Hoehe div 2) - round(Fa*(-X*sin(Te*Bo)+Y*cos(Te*Bo)));
    moveTo (X0, Y0);
    for i := 1 to 359 do
    begin
      X  := cos((-90-i)*Bo)*MinL/2;
      Y  := sin((-90-i)*Bo)*MaxL/2;
      Xp := (Breite div 2) + round(Fa*(X*cos(Te*Bo)+Y*sin(Te*Bo)));
      Yp := (Hoehe div 2) - round(Fa*(-X*sin(Te*Bo)+Y*cos(Te*Bo)));
      lineto (Xp, Yp);
    end;
    X  := cos(-90*Bo)*MinL/2;
    Y  := sin(-90*Bo)*MaxL/2;
    Xp := (Breite div 2) + round(Fa*(X*cos(Te*Bo)+Y*sin(Te*Bo)));
    Yp := (Hoehe div 2) - round(Fa*(-X*sin(Te*Bo)+Y*cos(Te*Bo)));
    lineto (X0, Y0);
    brush.Color := FuellFarbe;
    floodfill (Xm,Ym, DatenFarbe,fsBorder);
    Pen.Color := clBlack;
    for i := 0 to 11 do
    begin
      moveto (round((Breite div 2)+sin(i*30*Bo)*Radius*0.8),
              round((Hoehe div 2)-cos(i*30*Bo)*Radius*0.8));
      Xk := round((Breite div 2)+sin(i*30*Bo)*(Radius+10)*0.8);
      Yk := round((Hoehe div 2)-cos(i*30*Bo)*(Radius+10)*0.8);
      lineto (Xk, Yk);
      brush.Color := clWhite;
      Winkel := (9-i)*30-180;
      if Winkel < 0 then Winkel := Winkel+360;
      if Winkel<= 90 then
        Textout (Xk+4,Yk-10,InttoStr(Winkel));
      if (Winkel > 90) and (Winkel<=180) then
        Textout(Xk-20,Yk-10,InttoStr(Winkel));
      if (Winkel >180) and (Winkel<=270) then
        Textout(Xk-20,Yk,InttoStr(Winkel));
      if Winkel > 270 then
        Textout(Xk+5,Yk,InttoStr(Winkel));
    end;
  end;
end;

procedure PolyCenter (Zahl: word; Px, Py: array of word;
                      var Cx, Cy: integer);
var
  Flaeche  : real;
  i        : word;
  Ccx, Ccy : real;
begin
  Flaeche := 0;
  for i := 1 to Zahl-1 do
    Flaeche := Flaeche + Px[i]*Py[i+1]-Px[i+1]*Py[i];
  Flaeche := Flaeche + Px[Zahl]*Py[1]-Px[1]*Py[Zahl];
  Flaeche := Flaeche / 2;
  Ccx := 0;
  Ccy := 0;
  for i := 1 to Zahl-1 do
  begin
    Ccx := Ccx + (Px[i]+Px[i+1])*(Px[i]*Py[i+1]-Px[i+1]*Py[i]);
    Ccy := Ccy + (Py[i]+Py[i+1])*(Px[i]*Py[i+1]-Px[i+1]*Py[i]);
  end;
  Ccx := Ccx + (Px[Zahl]+Px[1])*(Px[Zahl]*Py[1]-Px[1]*Py[Zahl]);
  Ccy := Ccy + (Py[Zahl]+Py[1])*(Px[Zahl]*Py[1]-Px[1]*Py[Zahl]);
  Cx := round(Ccx/(6*Flaeche));
  Cy := round(Ccy/(6*Flaeche));
end;
end.
