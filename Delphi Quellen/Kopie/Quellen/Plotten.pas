Unit Plotten;

interface
uses Graphics, Globvar, Basic, Classes, SysUtils, Dialogs,
     Texte, ComCtrls, Windows, extctrls, Controls, HpPlot,
     Printers;

procedure Diagramm (Canvas: TCanvas);
procedure Zahlloeschen (Canvas: TCanvas);
procedure Grosskreis(Canvas: TCanvas; Aa, Ff: real; Gfarbe: TColor);
procedure Kleinkreis (Canvas: TCanvas; Aa, Ff, Ow: real; Kfarbe: TColor);
procedure Koordinaten(Aa, Ff: real; var X, Y: real; var Xp, Yp: word);
procedure PlotAF(Canvas: TCanvas; Azi:word; Fal: shortint);
procedure PlotT(Canvas: TCanvas; Azi:word; Fal: shortint;
                var XPix,YPix:word);
procedure PlotTL(Canvas : TCanvas; AZi:word; Fal:shortint);
procedure Rotation(Canvas: TCanvas; Az, F, Da, Df: real; An, Wi,
                   S: integer; Kegel: TColor);
procedure Teilkreis (Canvas: TCanvas; Aq: array of word; Fq:array of shortint;
                     Zirkoeff: byte; FarbeOeffnung: TColor);
procedure TeilkreisT (Canvas: TCanvas; Aq: array of word;
                      Fq: array of shortint);
procedure Eigenplot (Canvas: TCanvas; Aq:array of word; Fq:array of shortint;
                     La,Lp:integer; Eigenfarbe: TColor);
procedure AchsenPlot (Canvas: TCanvas; Aq:array of word;
                      Fq:array of shortint);
procedure Striemung (Gl: byte; Aq:array of word; Fq:array of shortint;
                     R:shortint;Farbe: TColor; Canvas: TCanvas);
procedure PlotDreieck (Canvas: TCanvas; var Xtra1, Ytra1, Laenge: word);
procedure TSchirm (Canvas: TCanvas; var XAnfang,YAnfang,XEnde,YEnde,
                   YLaenge, Laengex, Laengey: word);
procedure PlotFlinn (Canvas: TCanvas; Zoom:word);
procedure PixelCalotte (Canvas : TCanvas; Pis: array of real;
                       Kal: real; Grauskala: boolean;
                       HLSMin, HLSMax : single;
                       var Iso: array of real;
                       var DichteMax: real;
                       Fortschritt: TProgressBar);
procedure CosPoWI (Canvas: TCanvas; Omega: byte; HLSmin,HLSmax:single;
                   var Iso: array of real; GrauSkala : Boolean;
                   var Pis: array of real;
                   var MaxDichte : real;
                   var XMax : integer;
                   var YMax : integer;
                   Fortschritt: TProgressBar);
procedure AzimutFallen (XMax : integer; YMax : integer;
                        var Azims : string; var PhiS : string);
procedure HLSzuRGB (H, L, S: single; var Rot, Gruen, Blau: integer);
Procedure UntereH (Canvas: TCanvas; R: TRect);
Procedure ObereH (Canvas: TCanvas; R: TRect);
Procedure Loeschen (Canvas: TCanvas; R: TRect);
procedure RotEllipse(Lang, Kurz: real; Phi: integer; Breite, Hoehe: word;
                     var Punkt: array of TPoint);
procedure Pplotten (Canvas:TCanvas; Xp,Yp : word; n: byte);
procedure Konturen (Canvas1: TCanvas; FuellenS: string;
                    Fortschritt: TProgressbar);

implementation

procedure Diagramm (Canvas: TCanvas);
var
  Rekt : TRect;
begin
  with Canvas do
  begin
    Pen.Color   := RahmenFarbe;
    Brush.Color := HintFarbe;
    Pen.Style   := psSolid;
    if HTransparent then
    begin
      Rekt := Rect(0,0,Breite+1,Hoehe+1);
      Loeschen(Canvas,Rekt);
      Brush.Color := clWhite;
      HintFarbe   := clWhite;
    end
    else Rectangle (0, 0, Breite, Hoehe+2);
    Pen.Color  := UmfangFarbe;
    Font.Color := UMfangFarbe;
    if Programm <> 9 then
    begin
      Font.Size  := 28;
      Font.Name  := 'Times New Roman';
      Textout (Xmitte - Radius, YMitte - Radius,
               IntToStr(ZahlGlob));
      Textout (Xmitte-Radius, YMitte-Radius+40, Tx(441));
    end;
    Pen.Width := 1;
    Brush.Color := DiagrFarbe;
    Brush.Style := bsSolid;
    Ellipse (Xmitte-Radius,Ymitte-Radius,Xmitte+Radius, Ymitte+Radius);
    if Programm <> 9 then
    begin
      Moveto (Xmitte-20, Ymitte);
      Lineto (Xmitte+20, Ymitte);
      Moveto (Xmitte, Ymitte-20);
      Lineto (Xmitte, Ymitte+20);
    end;
  end;
end;

procedure Zahlloeschen (Canvas: TCanvas);
begin
  With Canvas do
  begin
    Pen.Color   := clBlack;
    Brush.Style := bsClear;
    Rectangle(0,0,Breite,Hoehe);
    Ellipse(Xmitte-Radius,YMitte-Radius,Xmitte+Radius,YMitte+Radius);
    Brush.Color := HintFarbe;
    FloodFill(3,3,clBlack,fsBorder);
    Pen.Color := RahmenFarbe;
    Brush.Style := bsClear;
    Rectangle(0,0,Breite, Hoehe);
    Pen.Color := UmfangFarbe;
    Ellipse(Xmitte-Radius,YMitte-Radius,Xmitte+Radius,YMitte+Radius);
    Brush.Color := HintFarbe;
    Pen.Color   := HintFarbe;
    Rectangle(10,10,120,120);
    Rectangle(10,Hoehe-90,120,Hoehe-10);
    if Programm <> 9 then
    begin
      Font.Color := UmfangFarbe;
      Font.Size  := 30;
      Font.Name  := 'Times New Roman';
      Textout (Xmitte - Radius-10, YMitte - Radius,
               IntToStr(ZahlGlob));
      Textout (Xmitte-Radius-10, YMitte-Radius+40, Tx(440));
    end;
  end;
end;

procedure Koordinaten(Aa, Ff: real; var X, Y: real; var Xp, Yp: word);
var
  Rr : real;
  OU : shortint;
begin
  Rr := 0;
  OU := 0;
  if ObenUntenS = 'LOWER' then OU :=  1;
  if ObenUntenS = 'UPPER' then OU := -1;
  if ProjektionS = 'Lambert' then Rr := sqrt(1 - cos(Pi / 2 - Ff));
  if ProjektionS = 'stereographic' then Rr := Tan((Pi / 2 - Ff) / 2);
  if ProjektionS = 'orthographic' then Rr := cos(Ff);
  if ProjektionS = 'Kavraiskii' then Rr := (Pi - 2* Ff)/Pi;
  X  := sin(Aa) * Rr;
  Y  := cos(Aa) * Rr;
  Xp := Xmitte + round(X * Radius)* OU;
  Yp := Ymitte - round(Y * Radius)* OU;
end;

procedure Grosskreis(Canvas: TCanvas; Aa, Ff: real; Gfarbe: TColor);
var
  Az    : real;
  Xp,Yp : word;
  X,Y   : real;
begin
  with Canvas do
  begin
    Pen.Color := Gfarbe;
    Az :=Aa + Pi / 2;
    Koordinaten(Az, 0, X, Y, Xp, Yp);
    moveto(Xp, Yp);
    Rotation (Canvas, Az, 0, Aa, Ff, 0, 180, 5, Gfarbe);
    Aa := Az +Pi;
    Koordinaten(Aa, 0, X, Y, Xp, Yp);
    lineto(Xp, Yp);
  end;
end;

procedure Rotation(Canvas: TCanvas; Az, F, Da, Df: real;
                   An, Wi, S: integer; Kegel: TColor);
var
  YS,YlS,XS,XlS:string;
  Bo       :real;
  X4,X5,X6 : real;
  E1,E2,E3 : real;
  G        : real;
  A1,B1,C1 : real;
  D11,D12,D13,
  D21,D22,D23,
  D31,D32,D33 : real;
  Y1,Y2,Y3    : real;
  Ta,Fi,Aa,Ff : real;
  j           : integer;
  X,Y         : real;
  Xp,Yp       : word;
  Zm          : TColor;
  Xl,Yl       : real;

begin
  Bo := Pi / 180;
  X4 := cos(Az) * cos(F);
  X5 := sin(Az) * cos(F);
  X6 := sin(F);
  E1 := cos(Da) * cos(Df);
  E2 := sin(Da) * cos(Df);
  E3 := sin(Df);
  Xl := 0;
  Yl := 0;
  j  := An - S;
  Ta := 0;
  with Canvas do
  begin
    Zm := DiagrFarbe;
    repeat
      j := j + S;
      G   := j * Bo;
      A1  := cos(G);
      B1  := 1 - A1;
      C1  := sin(G);
      D11 := A1 + B1 * sqr(E1);
      D12 := B1 * E1 * E2 - C1 * E3;
      D13 := B1 * E1 * E3 + C1 * E2;
      D21 := B1 * E1 * E2 + C1 * E3;
      D22 := A1 + B1 * sqr(E2);
      D23 := B1 * E2 * E3 -C1 * E1;
      D31 := B1 * E1 * E3 -C1 * E2;
      D32 := B1 * E2 * E3 +C1 * E1;
      D33 := A1 + B1 * sqr(E3);
      Y1 := D11* X4+ D12 * X5 + D13 *X6;
      Y2 := D21* X4+ D22 * X5 + D23 *X6;
      Y3 := D31* X4+ D32 * X5 + D33 *X6;
      IF Y1 = 0 then
      begin
        Ta := Pi / 2;
        if Y2 < 0 then Ta := Ta * 3;
      end;
      IF Y3 < 0 then
      begin
       Y1 := -Y1;
       Y2 := -Y2;
       Y3 := -Y3;
      end;
      if Y1 <> 0 then Ta := arctan(Y2 / Y1);
      if Y1 <= 0 then Ta := Ta + Pi;
      if Y3 > 0.99999 then Fi := 0 else Fi := Pi/2-arctan(Y3/sqrt(1-sqr(Y3)));
      Aa := Ta;
      Ff := abs(Pi / 2 - Fi);
      Koordinaten(Aa, Ff, X, Y, Xp, Yp);
      if Wi <> 180 then
      begin
        if Kegel <> DiagrFarbe then
        begin
	  Zm := Kegel;
	  if sqr(Y - Yl) + sqr(X - Xl) >= 1 then Zm := DiagrFarbe;
	  if j = An then Zm := DiagrFarbe;
	  if Zm = DiagrFarbe then moveto(Xp,Yp)
          else
          begin
            Pen.Color := Zm;
            lineto(Xp,Yp);
	  end;
        end
        else
        begin
          Pen.Color := Kegel;
          lineto(Xp,Yp);
        end;
      end
      else
      begin
        if sqr(Y - Yl) + sqr(X - Xl) < 0.99 then
        begin
          Pen.Color := Kegel;
          lineto(Xp,Yp);
        end;
      end;
      Xl := X;
      Yl := Y;
    until abs(j) >= abs(Wi);
  end;
end;

procedure Kleinkreis (Canvas: TCanvas; Aa, Ff, Ow: real; Kfarbe: TColor);
var
  A,Da,Df,F,X,Y : real;
  Xp,Yp : word;
begin
  A  := Aa;
  Da := A;
  Df := Ff;
  F  := Ff + Ow;
  if F > Pi / 2 then
  begin
    F := Pi - F;
    A := A + Pi;
  end;
  Koordinaten(A,F,X,Y,Xp,Yp);
  with Canvas do
  begin
    Pen.Color := Kfarbe;
    moveto(Xp,Yp);
    Rotation(Canvas, A, F, Da, Df, 0, 360, 5, Kfarbe);
//    lineto(Xp,Yp);
  end;
end;

procedure PlotAF(Canvas : TCanvas; AZi:word; Fal:shortint);
var
  X, Y   : real;
  Xp, Yp : word;
  A, F   : real;
  n      : byte;
begin
  n := 4;
  A := Azi * Bo;
  F := Fal * Bo;
  Koordinaten (A, F, X, Y, Xp, Yp);
  with Canvas do
  begin
    if RightS(DatenSymbol,6) = 'Circle' then Ellipse (Xp-n,Yp-n,Xp+n,Yp+n);
    if RightS(DatenSymbol,6) = 'Square' then Rectangle (Xp-n,Yp-n,Xp+n,Yp+n);
    if RightS(Datensymbol,8) = 'Triangle' then Polygon([Point(Xp,Yp-n),
                                                Point(Xp-n,Yp+n),
                                                Point(Xp+n,Yp+n)]);
    if RightS(DatenSymbol,7) = 'Diamond' then Polygon ([Point(Xp,Yp-n),
                                                 Point(Xp+n,Yp),
                                                 Point(Xp,Yp+n),
                                                 Point(Xp-n,Yp)]);
  end;
end;

procedure PlotT(Canvas : TCanvas; AZi:word; Fal:shortint;
                var Xpix,Ypix:word);
var
  X, Y   : real;
  Xp, Yp : word;
  A, F   : real;
begin
  A := Azi * Bo;
  F := Fal * Bo;
  Koordinaten (A, F, X, Y, Xp, Yp);
  Canvas.Pixels[Xp,Yp] := KompressionFarbe;
  Xpix := Xp;
  Ypix := Yp;
end;

procedure PlotTL(Canvas : TCanvas; AZi:word; Fal:shortint);
var
  X, Y   : real;
  Xp, Yp : word;
  A, F   : real;
begin
  A := Azi * Bo;
  F := Fal * Bo;
  Koordinaten (A, F, X, Y, Xp, Yp);
  Canvas.Lineto (Xp,Yp);
end;

procedure Teilkreis (Canvas: TCanvas; Aq: array of word;
                     Fq:array of shortint;
                     Zirkoeff: byte; FarbeOeffnung: TColor);
var
  Bo    : real;
  A,F   : real;
  Da,Df : real;
  Wi    : integer;
  m     : byte;
  An    : integer;
  X,Y   : real;
  Xp,Yp : word;
  S     : integer;
  Pr    : string[15];
begin
  Bo := Pi / 180;
  A  := Aq[3] * Bo;
  F  := Fq[3] * Bo;
  Da := Aq[1]* Bo;
  Df := Fq[1] * Bo;
  Wi := Zirkoeff div 2;
  S  := 4;
  An := 4;
  Pr := ProjektionS;
  ProjektionS := 'Lambert';
  Koordinaten (A, F, X, Y, Xp, Yp);
  ProjektionS := Pr;
  with Canvas do
  begin
    Pen.Color := OeffnungFarbe;
    moveto(Xp,Yp);
    for m := 1 to 2 do
    begin
      if m = 2 then
      begin
        S  := -S;
        Wi := -Wi;
        An := -An;
      end;
      Pr := ProjektionS;
      ProjektionS := 'Lambert';
      Rotation (Canvas, A, F, Da, Df, An, Wi, S, FarbeOeffnung);
      ProjektionS := Pr;
    end;
  end;
end;

procedure TeilkreisT (Canvas: TCanvas; Aq: array of word;
                     Fq:array of shortint);
var
  Bo      : real;
  A,F     : arrAY[0..3] of real;
  Da,Df   : array[0..3] of real;
  X,Y     : real;
  Xp,Yp   : word;
  i       : byte;
  Schritt : shortint;
  ARot2   : integer;
begin
  Bo := Pi / 180;
  A[1]  := Aq[3] * Bo;
  F[1]  := Fq[3] * Bo;
  Da[1] := Aq[1] * Bo;
  Df[1] := Fq[1] * Bo;
  A[2]  := Aq[2] * Bo;
  F[2]  := Fq[2] * Bo;
  Da[2] := Aq[3] * Bo;
  Df[2] := Fq[3] * Bo;
  A[3]  := Aq[1] * Bo;
  F[3]  := Fq[1] * Bo;
  Da[3] := Aq[2] * Bo;
  Df[3] := Fq[2] * Bo;
  Arot2 := Aq[2] - Aq[3];
  if ARot2 <0 then ARot2 := 360 + ARot2;
  if ARot2 <= 180 then Schritt := 4 else Schritt := -4;
  for i := 1 to 3 do
  begin
    Koordinaten (A[i], F[i], X, Y, Xp, Yp);
    with Canvas do
    begin
      moveto(Xp,Yp);
      Rotation (Canvas, A[i], F[i], Da[i], Df[i], 2, 90,
                Schritt, EigenFarbe);
    end;
  end;
end;

procedure Eigenplot (Canvas: TCanvas; Aq:array of word; Fq:array of shortint;
                     La,Lp:integer; EigenFarbe: TColor);
var
  Bo    : real;
  k     : byte;
  Aa,Ff : real;
  X,Y   : real;
  Xp,Yp : word;
  Pr    : string[15];
begin
  Bo := Pi / 180;
  with Canvas do
  begin
    Pen.Color   := Eigenfarbe;
    Brush.Color := EigenFarbe; {Style := bsClear;}
    Font.Color  := clWhite;
    Font.Size := 14;
    for k := 1 to 3 do
    begin
      Aa := Aq[k] * Bo;
      Ff := Fq[K] * Bo;
      Koordinaten (Aa, Ff, X, Y, Xp, Yp);
      moveto(Xp,Yp);
      Ellipse (Xp-12, Yp-12, Xp+12, Yp+12);
      TextOut (Xp-5, Yp-11, intToStr(k));
    end;
    if Programm <> 21 then
    begin
      Aa := La * Bo;
      Ff := Lp * Bo;
      if Gefuegetyp = 2 then
      begin
        Aa := Aa + Pi;
        Ff := Pi / 2 - Ff;
      end;
      Pr := ProjektionS;
      Koordinaten (Aa, Ff, X, Y, Xp, Yp);
      ProjektionS := Pr;
      moveto(Xp,Yp);
      Ellipse (Xp-12, Yp-12, Xp+12, Yp+12);
      TextOut (Xp-5, Yp-11, 'S');
    end;
  end;
end;

procedure AchsenPlot (Canvas: TCanvas; Aq:array of word;
                      Fq:array of shortint);
var
  Bo    : real;
  k     : byte;
  Aa,Ff : real;
  X,Y   : real;
  Xp,Yp : word;
begin
  Bo := Pi / 180;
  with Canvas do
  begin
    Brush.Color := clWhite;
    Pen.Color   := clWhite;
    Font.Style  := [fsBold];
    Font.Color  := EigenFarbe;
    Font.Size   := 14;
    for k := 1 to 3 do
    begin
      Aa := Aq[k] * Bo;
      Ff := Fq[K] * Bo;
      Koordinaten (Aa, Ff, X, Y, Xp, Yp);
      moveto(Xp,Yp);
      Ellipse (Xp-15, Yp-15, Xp+15, Yp+15);
      TextOut (Xp-5, Yp-13, chr(91 - k));
    end;
    Font.Style := [];
  end;
end;

procedure Striemung (Gl: byte; Aq:array of word; Fq:array of shortint;
                     R:shortint; Farbe:TColor; Canvas: TCanvas);

var
  Bo,A,F,Da,Df : real;
  Wi,S,An      : shortint;
  L1,L2        : real;
  X1,Y1,X2,Y2  : integer;
  m            : byte;

begin
  X1 := 0;
  X2 := 0;
  Y1 := 0;
  Y2 := 0;
  Bo := Pi / 180;
  A  := Aq[6] * Bo;
  F  := Fq[6] * Bo;
  Da := Aq[4] * Bo;
  Df := Fq[4] * Bo;
  Wi := 5;  {L‰nge des halben Teilgroﬂkreises}
  S  := 2;
  if Gl = 1 then
  begin
    An := 0;
    Wi := 3;
  end
  else An := 2;
  for m := 1 to 2 do
  begin
    if m = 2 then
    begin
      S  := -S;
      Wi := -Wi;
      An := -An;
    end;
    Rotation (Canvas, A,F,Da,Df,An,Wi,S,Farbe);
    with Canvas do
    begin
      if Gl <> 1 then
      begin
        if m = 1 then
        begin
          X1 := PenPos.X;
          Y1 := PenPos.Y;
        end;
        if m = 2 then
        begin
          X2 := PenPos.X;
          Y2 := PenPos.Y;
        end;
      end; {if Gl}
    end; {Canvas}
  end; {m-Schleife}
  if Gl<>1 then
    begin
    with Canvas do
    begin
      L1 := sqrt(sqr(X1-Xmitte) + sqr(Ymitte-Y1));
      L2 := sqrt(sqr(X2-Xmitte) + sqr(Ymitte-Y2));
      if L1 < L2 then
      begin
        if R < 0 then Ellipse (X1-3,Y1-3,X1+3,Y1+3) else
                      Ellipse (X2-3,Y2-3,X2+3,Y2+3);
      end
      else
      begin
        if R < 0 then Ellipse (X2-3,Y2-3,X2+3,Y2+3) else
                      Ellipse (X1-3,Y1-3,X1+3,Y1+3);
      end;
    end; {Canvas}
  end; {if Gl <> 1}
end;

procedure PlotDreieck (Canvas: TCanvas; var Xtra1, Ytra1, Laenge: word);
var
  i            : byte;
  Bo           : real;
  Xtra2, Ytra2 : word;
  Xtra3, Ytra3 : word;
  Xtra4, Ytra4 : word;
  X1, X2       : word;
  Y1, Y2       : word;
begin
  Bo := Pi/180;
  Laenge := 2*Xmitte - round(Xmitte/10);
  Xtra1 := round (Xmitte/20);
  Xtra2 := Xtra1 + Laenge;
  Xtra3 := Xtra2 - round(Laenge/5);
  Xtra4 := Xtra1 + round(Laenge/5);
  Ytra1 := Ymitte + round(0.7*Ymitte);
  Ytra2 := Ytra1;
  Ytra3 := Ytra1 - round(0.4*sin(60*Bo) * Laenge);
  Ytra4 := Ytra3;
  with Canvas do
  begin
    Pen.Color   := RahmenFarbe;
    Pen.Style   := psSolid;
    Brush.Color := GrundFarbe;
    Rectangle (0, 0, Breite, Hoehe);
    Pen.Color   := KoordinFarbe;
    Pen.Width   := 2;
    Brush.Color := RGFarbe;
    Polygon ([Point(Xtra1,Ytra1), Point(Xtra2,Ytra2),
             Point(Xtra3,Ytra3), Point(Xtra4,Ytra4)]);
    Font.Size   := 20;
    Font.Color  := KoordinFarbe;
    Font.Name   := 'Symbol';
    Brush.Color := GrundFarbe;
    Textout (Xtra1, Ytra1+10, 'l3');
    Textout (Xtra2-30,Ytra2+10, 'l2');
    Pen.Width := 1;
    for i := 1 to 9 do
    begin
      X1 := Xtra1 + round(i * Laenge/10);
      X2 := X1 + round(cos(60*Bo)*Laenge/50);
      Y1 := Ytra1;
      Y2 := Ytra1 - round(sin(60*Bo)*Laenge/50);
      moveto (X1, Y1);
      lineto (X2, Y2);
      X2 := X1 - round(cos(60*Bo)*Laenge/50);
      moveto (X1, Y1);
      lineto (X2, Y2);
    end;
    for i := 1 to 3 do
    begin
      X1 := Xtra1 + round(i*sin(30*Bo)*Laenge/10);
      X2 := X1 + round(Laenge/50);
      Y1 := Ytra1 - round(i*sin(60*Bo)*Laenge/10);
      Y2 := Y1;
      moveto (X1, Y1);
      lineto (X2, Y2);
      X2 := X1 + round(sin(30*Bo)*Laenge/50);
      Y2 := Y1 + round(cos(30*Bo)*Laenge/50);
      moveto (X1, Y1);
      lineto (X2, Y2);
      X1 := Xtra2 - round(i*sin(30*Bo)*Laenge/10);
      X2 := X1 - round(Laenge/50);
      moveto (X1,Y1);
      lineto (X2, Y1);
      X2 := X1 - round(sin(30*Bo)*Laenge/50);
      moveto (X1, Y1);
      lineto (X2, Y2);
    end;
  end; {Canvas}
end;

procedure TSchirm (Canvas: TCanvas; var XAnfang,YAnfang,XEnde,YEnde,
                   YLaenge, Laengex, Laengey: word);
var
  Y1b      : word;
  LTick, i : word;
  YTick    : word;
  XTick    : word;
  Tai      : real;
  TaiS     : string[3];
  Winkel   : real;
  isS      : string[3];
begin
  Bo := Pi/180;
  with Canvas do
  begin
    Pen.Color   := RahmenFarbe;
    Brush.Color := GrundFarbe;
    Rectangle (0,0,Breite,Hoehe);
    Pen.Color   := RGFarbe;
    Pen.Style   := psSolid;
    Laengex := round(2*XMitte - 2*XMitte/8);
    Laengey := 2*YMitte - round(2*YMitte/10);
    Xanfang := round(XMitte/6);
    Yanfang := round(YMitte/20);
    Xende := Xanfang + Laengex;
    Yende := 2*Yanfang + Laengey;
    Brush.Color := RGFarbe;
    Pen.Color   := KoordinFarbe;
    Pen.Width   := 1;
    rectangle (Xanfang, Yanfang, Xende, Yende);
    Y1b := Yende - round(2*(Yende-Yanfang)/3);
    Moveto (XAnfang, Y1b);
    Lineto (Xende, Y1b);
    Ltick := round(XMitte/40);
    for i := 1 to 14 do
    begin
      Ytick := Yanfang+round(i*(Yende-Yanfang)/15);
      Moveto (XAnfang, YTick);
      Lineto (Xanfang+Ltick, Ytick);
    end;
    for i := 1 to 8 do
    begin
      Xtick := round(i*Laengex/9);
      Moveto (XAnfang+XTick,YEnde);
      Lineto (Xanfang+Xtick, Yende-Ltick);
    end;
    Font.Color  := KoordinFarbe;
    Brush.Color := GrundFarbe;
    Font.Size := 12;
    for i := 3 downto 0 do
    begin
      Tai := 5*(3-i)/10;
      str (Tai:1:1, isS);
      Ytick := Yanfang+round(i*(Yende-Yanfang)/3);
      Textout (Xanfang-25, Ytick-10, isS);
    end;
    for i := 1 to 9 do
    begin
      str ((i*10):2, TaiS);
      Xtick := round(i*Laengex/9);
      Textout (Xanfang+Xtick-10, Yende, TaiS);
    end;
    Ylaenge := round(2*(Yende-Yanfang)/3);
    Moveto (Xanfang, Yende-Ylaenge);
    for i := 0 to 90 do
    begin
      Winkel := i*Bo;
      Xtick := Xanfang+round(i*Laengex/90);
      Ytick := Yende-round(cos(winkel)*Ylaenge);
      Lineto (Xtick, Ytick);
    end;
  end;
end;

procedure PlotFlinn (Canvas: TCanvas; Zoom:word);
var
  Xnull, Ynull : word;
  Laenge, i    : word;
  Tick         : word;
begin
  with Canvas do
  begin
    Xnull  := round(2*Xmitte/8);
    Ynull  := round(2*Ymitte-2*Ymitte/8);
    Laenge := round(2*Xmitte-2*Xmitte/5);
    Pen.Color   := RahmenFarbe;
    Brush.Color := HintFarbe;
    Rectangle (0,0,2*Xmitte,2*Ymitte);
    Brush.Color := DiagrFarbe;
    Pen.Color   := DiagrFarbe;
    Rectangle (Xnull,Ynull-Laenge-2,Xnull+Laenge+2,Ynull);
    Pen.Color := PeriFarbe;
    moveto (Xnull,Ynull-Laenge);
    lineto (Xnull,Ynull);
    lineto (Xnull+Laenge, Ynull);
    moveto (Xnull,Ynull);
    lineto (Xnull+Laenge,Ynull-Laenge);
    Tick := round(Laenge/Zoom);
    moveto (Xnull, Ynull);
    for i := 0 to Zoom do
    begin
      moveto (Xnull + Tick*i,Ynull);
      lineto (Xnull + Tick*i, Ynull+ 10);
    end;
    for i := 0 to Zoom do
    begin
      moveto (Xnull, Ynull - Tick*i);
      lineto (Xnull-10,Ynull - Tick*i);
    end;
    Brush.Color := HintFarbe;
    Font.Color  := PeriFarbe;
    if Zoom <=20 then Font.Size := 10;
    if zoom > 20 then font.Size := 6;
    for i := 0 to Zoom do
      Textout (Xnull+Tick*i+3, Ynull+4,Inttostr(i+1));
    for i := 0 to Zoom do
      Textout (Xnull-20, Ynull-Tick*i-12,Inttostr(i+1));
    Font.Size := 16;
    Textout (Xnull-70,Ynull-Laenge div 2-20,'X/Y');
    Textout (Xnull+Laenge div 2 - 10, Ynull + 30,'Y/Z');
  end;
end;

procedure PixelCalotte (Canvas : TCanvas; Pis: array of real;
                       Kal: real; GrauSkala: boolean;
                       HLSMin, HLSMax : single;
                       var Iso: array of real;
                       var DichteMax : real;
                       Fortschritt: TProgressBar);
var
  Azimut       : array of word;
  Fallen       : array of word;
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
  AziPixel     : real;
  FalPixel     : real;
  VektorX      : real;
  VektorY      : real;
  VektorZ      : real;
  Grenzwinkel  : real;
  GrenzVektor  : real;
  XDat, YDat   : real;
  ZDat, VekSum : real;
  Zaehl, j     : word;
  P            : array[0..5] of word;
  m, H         : single;
  Rot, Gruen   : integer;
  Blau         : integer;
begin
  Fortschritt.Visible := true;
  Fortschritt.Max  := YPixelEnde;
  Fortschritt.Step := 50;
  setlength (Azimut, ZahlGlob+1);
  setlength (Fallen, ZahlGlob+1);
  Bo := Pi/180;
  for i := 1 to ZahlGlob do
  begin
    Azimut[i] := AziFeld[i];
    Fallen[i] := FalFeld[i];
    if Gefuegetyp = 2 then
    begin
      Azimut[i] := Azimut[i] + 180 mod 360;
      Fallen[i] := 90 - Fallen[i];
    end;
  end;
  XPixelanfang := Xmitte - Radius;
  XPixelEnde   := Xmitte + Radius;
  YPixelAnfang := YMitte - Radius;
  YPixelEnde   := Ymitte + Radius;
  Grenzwinkel  := arccos(1-Kal/100);
  GrenzVektor  := 2*cos(Grenzwinkel/2);
  for i := 0 to 4 do P[i] := round(ZahlGlob * Pis[i] / 100);
  for Y := YPixelAnfang to YPixelEnde do
  begin
    for X := XPixelAnfang to XPixelEnde do
    begin
      if sqr(X-XMitte) + sqr(YMitte-Y) <= sqr(Radius-2) then
      begin
        KoordX := X-XMitte;
        KoordY := YMitte-Y;
        Rho := sqrt(sqr(KoordX/Radius) + sqr(KoordY/Radius));
        if KoordY = 0 then KoordY := 1;
        AziPixel := arctan(KoordX/KoordY);
        if KoordY <0 then AziPixel := AziPixel + Pi;
        if Rho < 0.999 then
          FalPixel := Pi/2 - arccos(1-sqr(Rho))
        else FalPixel := Pi/2;
        VektorX := Cos(AziPixel)*Cos(FalPixel);
        VektorY := Sin(AziPixel)*Cos(FalPixel);
        VektorZ := Sin(FalPixel);
        Zaehl := 0;
        for i := 1 to ZahlGlob do
        begin
          CosA   := cos(Azimut[i]*Bo);
          SinA   := sin(Azimut[i]*Bo);
          CosPhi := cos(Fallen[i]*Bo);
          XDat   := CosA * CosPhi;
          YDat   := SinA * CosPhi;
          ZDat   := sin(Fallen[i]*Bo);
          VekSum := sqrt(sqr(VektorX + XDat)+sqr(VektorY + YDat)
                    +sqr(ZDat+VektorZ));
          if Veksum < sqrt(2) then
          begin
            XDat := -XDat;
            YDat := -YDat;
            ZDat := -ZDat;
            VekSum := sqrt(sqr(VektorX + XDat)+sqr(VektorY + YDat)
                    +sqr(ZDat+VektorZ));
          end;
          if VekSum > GrenzVektor then Zaehl := Zaehl + 1;
        end;
        if Zaehl > DichteMax then DichteMax := Zaehl;
        Canvas.Pixels[x,y] := Diagrfarbe;
        if DarstellungS = 'Pixel' then
        begin
          with Canvas do
          begin
            if Zaehl >= P[0] then PixelS[x,y] := Isolinie[1];
            if Zaehl >= P[1] then PixelS[x,y] := Isolinie[2];
            if Zaehl >= P[2] then PixelS[x,y] := Isolinie[3];
            if Zaehl >= P[3] then PixelS[x,y] := Isolinie[4];
            if Zaehl >= P[4] then PixelS[x,y] := Isolinie[5];
          end;
        end;
        if DarstellungS = 'Pixelfl' then
        begin
          if Zaehl >= P[0] then
          begin
            if not Grauskala then
            begin
              H := HLSmin + (HLSmax - HLSmin)*Zaehl/DichteMax;
              HLSzuRGB(H, 0.5, 1.0, Rot, Gruen, Blau);
            end
            else
            begin
              Rot   := round(255-255*Zaehl/DichteMax);
              if Rot < 0 then Rot := 0;
              Gruen := Rot;
              Blau  := Rot;
            end;
            Canvas.Pixels[x,y] := RGB(Rot, Gruen, Blau);
          end;
        end; {if Pixelfl}
      end; {Kreis}
    end; {x-Schleife}
    Fortschritt.StepIt;
  end; {Y-Schleife}
  Azimut := NIL;
  Fallen := NIL;
  Fortschritt.Visible := false;
end;

procedure CosPoWI (Canvas : TCanvas; Omega: byte; HLSmin,HLSmax:single;
                   var Iso: array of real; GrauSkala : Boolean;
                   var Pis: array of real;
                   var MaxDichte:real;
                   var XMax : integer;
                   var YMax : integer;
                   Fortschritt: TProgressBar);
type
  Wword = array of word;
  Wreal = array of array of real;
var
  Azimut       : Wword;
  Fallen       : Wword;
  DichtePix    : Wreal;
  XPixelAnfang : word;
  YPixelAnfang : word;
  XPixelEnde   : word;
  YPixelEnde   : word;
  x, y, i      : word;
  KoordX       : integer;
  KoordY       : integer;
  CosA, Phi    : double;
  CosPhi       : double;
  SinA         : double;
  Rho          : double;
  VektorX      : double;
  VektorY      : double;
  VektorZ      : double;
  XDat, YDat   : double;
  ZDat, VekSum : double;
  Dichte       : double;
  DichteMax    : double;
  MittelDichte : double;
  CosTau       : double;
  j            : word;
  DichteSumme  : double;
  PixelZahl    : longword;
  FarbeW       : word;
  TestFarbe    : word;
  Rot, Gruen   : integer;
  Blau         : integer;
  H, m         : single;
begin
  Bo := Pi/180;
  //Fortschrittsbalken
  Fortschritt.Visible := true;
  Fortschritt.Max  := YPixelEnde;
  Fortschritt.Step := 50;
  //stringfelder definieren
  setlength (Azimut, ZahlGlob+1);
  setlength (Fallen, ZahlGlob+1);
  XPixelanfang := Xmitte - Radius;   //Radius
  XPixelEnde   := Xmitte + Radius;
  YPixelAnfang := YMitte - Radius;
  YPixelEnde   := Ymitte + Radius;
  setlength (DichtePix, XPixelEnde, YPixelEnde);
  //Daten in die stringfelder lesen
  for i := 1 to ZahlGlob do
  begin
    Azimut[i] := AziFeld[i];
    Fallen[i] := FalFeld[i];
    if Gefuegetyp = 2 then
    begin
      Azimut[i] := Azimut[i] + 180 mod 360;
      Fallen[i] := 90 - Fallen[i];
    end;
  end;
  DichteMax   := 0; {maximale Dichte/Pixel}
  DichteSumme := 0; {gesamte Dichte/Diagramm}
  PixelZahl   := 0; {Zahl der Pixel innerhalb des Kreises}
  for y := YPixelAnfang to YPixelEnde do
  begin
    for x := XPixelAnfang to XPixelEnde do
    begin
      if sqr(x-XMitte) + sqr(YMitte-y) <= sqr(Radius-2) then   //Radius-2
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
        Dichte := 0;               {Dichte/Pixel}
        for i := 1 to ZahlGlob do
        begin
          CosA := cos(Azimut[i]*Bo);
          SinA := sin(Azimut[i]*Bo);
          CosPhi := cos(Fallen[i]*Bo);
          XDat := CosA * CosPhi;   {Vektoren der Daten}
          YDat := SinA * CosPhi;
          ZDat := sin(Fallen[i]*Bo);
          CosTau := (VektorX*XDat + VektorY*YDat
                    + VektorZ*ZDat);
          for j := 1 to Omega do CosTau := sqr(CosTau);
          Dichte := Dichte + CosTau;
          if Dichte > DichteMax then
          begin
            DichteMax := Dichte;
            XMax := x;
            YMax := y;
          end;
        end; {Zahlglob-Schleife}
        DichtePix[x,y] := Dichte;
        DichteSumme := DichteSumme + Dichte;
        PixelZahl   := PixelZahl + 1;
      end;
    end;
    Fortschritt.StepIt;
  end;
  Mitteldichte := DichteSumme/PixelZahl; {mittlere Dichte}
  MaxDichte := DichteMax/MittelDichte;
  //Berechnung der Isolinien
  if VielfacheS = 'MULTIPLES' then
    for i := 1 to 5 do Iso[i]   := Pis[i-1]*MittelDichte;
  if VielfacheS = 'MANUAL' then for i := 1 to 5 do Iso[i] := Pis[i-1];
  {Beginn der Zeichnung}
  for y := YPixelAnfang to YPixelEnde do
  begin
    for x := XPixelAnfang to XPixelEnde do
    begin
      if sqr(x-XMitte) + sqr(YMitte-y) <= sqr(Radius-2) then  //Radius-2
      begin
        with Canvas do
        begin
          PixelS[x,y] := DiagrFarbe;
          if DarstellungS = 'floating' then
          begin
            m := 0;
            for i := 1 to round(MaxDichte-1) do   //round
            begin
              for j := 1 to 10 do
              begin
                m := i+j/10;
                if DichtePix[x,y] > m*MittelDichte then
                begin
                  if not GrauSkala then
                  begin;
                    H := HLSmin + HLSmax - m*HLSmin/MaxDichte;
                    HLSzuRGB(H, 0.5, 1.0, Rot, Gruen, Blau);
                  end
                  else
                  begin
                    Rot   := round(255-255*m/MaxDichte);
                    if Rot < 0 then Rot := 0;
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
            if DichtePix[x,y] > Iso[1] then
              PixelS[x,y] := Isolinie[1];
            if DichtePix[x,y] > Iso[2] then
              PixelS[x,y] := Isolinie[2];
            if DichtePix[x,y] > Iso[3] then
              PixelS[x,y] := Isolinie[3];
            if DichtePix[x,y] > Iso[4] then
              PixelS[x,y] := Isolinie[4];
            if DichtePix[x,y] > Iso[5] then
              PixelS[x,y] := Isolinie[5];
          end;
        end;
      end;
    end;
    Fortschritt.StepIt;
  end;
  Azimut    := NIL;
  Fallen    := NIL;
  for i:=0 to high(DichtePix) do setlength(DichtePix[i],0);
  setlength(DichtePix,0);
  Fortschritt.Visible := false;
end;

procedure AzimutFallen (XMax : integer; YMax : integer;
                        var Azims : string; var PhiS : string);
const
  Pi = 3.14159;
var
  Rho, Phi : real;
  SRho     : real;
  Azim     : integer;
  Bo       : real;
begin
  Bo := Pi/180;
  XMax := XMax - XMitte;
  YMax := YMitte - YMax;
  Rho  := sqrt(sqr(XMax)+sqr(YMax))/Radius;
  SRho := Rho/sqrt(2);
  if SRho > 1 then SRho := 0.999;
  if SRho < -1 then SRho := -0.999;
  Phi  := (Pi/2 - 2*arcsin(SRho))/Bo;
  Azim  := round((arctan(XMax/YMax))/Bo);
  if Azim < 0 then Azim := (Azim + 180);
  if XMax < 0 then Azim := (Azim +180) mod 360;
  if Gefuegetyp = 2 then Azim := (Azim + 180) mod 360;
  if Gefuegetyp = 2 then Phi := 90 - Phi;
  PhiS  := inttostr(round(Phi));
  AzimS := inttostr(Azim);
end;

procedure HLSzuRGB (H, L, S: single; var Rot, Gruen, Blau: integer);
var
  min, max, mmm, hue, col : single;
begin
  while H > 360.0 do H := H - 360.0;
  while H < 0.0   do H := H + 360.0;
  if S < 0 then S := 0 else if S > 1 then S := 1;;
  if L < 0 then L := 0 else if L > 1 then L := 1;
  if L <= 0.5 then max := L * (1.0 + S)else max := L + S - L * S;
  min := 2 * L - max;
  mmm := (max - min)/60;
  hue := H + 120.0;
  if hue > 360.0 then hue := hue - 360.0;
  if hue < 60.0  then col := min + mmm*hue
  else if hue  < 180.0 then col := max
    else if hue < 240.0 then col := min + mmm*(240.0 - hue)
  else  col := min;
  Rot := round(255.0*col);
  hue := H;
  if hue < 60.0 then col := min + mmm*hue
  else if hue < 180.0 then col := max
  else if hue < 240.0 then col := min + mmm*(240.0 - hue)
  else col := min;
  Gruen := round (255.0*col);
  hue := H - 120.0;
  if hue < 0.0 then hue := hue + 360;
  if hue < 60.0 then col := min + mmm*hue
  else if hue < 180.0 then col := max
  else if hue < 240.0 then col := min + mmm*(240.0 - hue)
  else col := min;
  Blau := round(255.0*col);
end;

Procedure UntereH (Canvas: TCanvas; R: TRect);
begin
  with Canvas do
  begin
    Pen.Color   := HintFarbe;
    Brush.Color := HintFarbe;
    Rectangle (R);
    Pen.Color := UmfangFarbe;
    arc (R.Left, R.Top, R.Right, R.Bottom-1,
         R.Left, R.Bottom div 2, R.Right, R.Bottom div 2);
    moveto (R.Left,R.Bottom div 2);
    lineto (R.Right, R.Bottom div 2);
    Brush.Color := DiagrFarbe;
    FloodFill (R.Right div 2, 3*R.Bottom div 4, UmfangFarbe,fsBorder);
  end;
end;

Procedure ObereH (Canvas: TCanvas; R: TRect);
begin
  with Canvas do
  begin
    Pen.Color   := HintFarbe;
    Brush.Color := HintFarbe;
    Rectangle (R);
    Pen.Color := UmfangFarbe;
    arc (R.Left, R.Top, R.Right, R.Bottom-1,
         R.Right, R.Bottom div 2, R.Left, R.Bottom div 2);
    moveto (R.Left,R.Bottom div 2);
    lineto (R.Right, R.Bottom div 2);
    Brush.Color := DiagrFarbe;
    FloodFill (R.Right div 2, R.Bottom div 4, UmfangFarbe,fsBorder);
  end;
end;

Procedure Loeschen (Canvas: TCanvas; R: TRect);
begin
  with Canvas do
  begin
    Pen.Color := clWhite;
    Brush.Color := clWhite;
    FillRect (R);
  end;
end;

procedure RotEllipse(Lang, Kurz: real; Phi: integer; Breite, Hoehe: word;
                     var Punkt: array of TPoint);
var
  i      : word;
  Xr, Yr : integer;
  Xp, Yp : real;
  Alpha  : real;
  Bo     : real;
  Winkel : real;
begin
  Bo := Pi/180;
  Winkel := Phi*Bo;
  for i := 1 to 360 do
  begin
    Alpha := i * Bo;
    xp  :=Lang*cos(Alpha)/2;
    yp  :=Kurz*sin(Alpha)/2;
    xr := round(xp*cos(Winkel) + yp*sin(Winkel));
    yr := round(-xp*sin(Winkel) + yp*cos(Winkel));
    Punkt[i] := Point(xr+Breite,yr+Hoehe);
  end;
  Punkt[0] := Punkt[360];
end;

procedure Pplotten (Canvas:TCanvas; Xp,Yp : word; n: byte);
begin
  n := n div 2;
  with Canvas do
  begin
    if RightS(DatenSymbol,6) = 'Circle' then Ellipse (Xp-n,Yp-n,Xp+n,Yp+n);
    if RightS(DatenSymbol,6) = 'Square' then Rectangle (Xp-n,Yp-n,Xp+n,Yp+n);
    if RightS(Datensymbol,8) = 'Triangle' then Polygon([Point(Xp,Yp-n),
                                                Point(Xp-n,Yp+n),
                                                Point(Xp+n,Yp+n)]);
    if RightS(DatenSymbol,7) = 'Diamond' then Polygon ([Point(Xp,Yp-n),
                                                 Point(Xp+n,Yp),
                                                 Point(Xp,Yp+n),
                                                 Point(Xp-n,Yp)]);
  end;
end;

procedure Konturen (Canvas1: TCanvas; FuellenS: string;
                    Fortschritt: TProgressbar);
label weiter;
var
  x, y       : word;
  Xa, Xe     : word;
  Ya, Ye     : word;
  m, j, i    : word;
  Xan, Yan   : integer;
  Ende       : boolean;
  XAnfang    : word;
  YAnfang    : word;
  a, b       : word;
  k, l       : byte;
  Xalt, Yalt : word;
  Zahl, R    : word;
  Xm, Ym     : word;
  Fak        : real;
  Kreuz      : boolean;
  Poly       : array of TPoint;
  x3, y3     : real;
  Xpoly,Ypoly: array of double;
  Punkt      : array[0..5000] of TPoint;
begin
  Fortschritt.Visible := true;
  Fortschritt.Max  := 1000;
  Fortschritt.Step := 50;
  Xa   := Xmitte - Radius;
  Xe   := Xmitte + Radius;
  Ye   := Ymitte + Radius;
  XAnfang := 0;
  YAnfang := 0;
  if GeraetS = 'DXF' then
  begin
    Xm  := round(XKoord)*10;
    Ym  := round(YKoord)*10;
    Fak := 1.005*HpRadius/Radius;
  end;
  if GeraetS = 'Plotter' then
  begin
    Xm  := round(Xkoord*100*Faktor*DFak);
    Ym  := round(Ykoord*100*Faktor*DFak);
    Fak := 1.01*Faktor*100*HpRadius/Radius;
  end;
  with Canvas1 do
  begin
    Isolinie[0] := DiagrFarbe;
    // ersten Punkt suchen (Xan, Yan) und schwarz f‰rben
    j := 0;
    for m := 0 to 4 do  // Isolinien
    begin
      if GeraetS <> 'Plotter' then Farben(Canvas1,Isolinie[m+1])
      else
      begin
        Printer.Canvas.Pen.Color := Isolinie[m+1];
        Printer.Canvas.Pen.Width := 2*StrichI[m];
      end;
      Brush.Style := bsClear;
      Pen.Color   := HintFarbe;
      Pen.Width   := 1;
      ellipse(Xmitte-Radius+1,YMitte-Radius+1,XMitte+Radius-1,YMitte+Radius-1);
      ellipse(Xmitte-Radius,YMitte-Radius,XMitte+Radius,YMitte+Radius);
      Pen.Color := UmfangFarbe;
      ellipse(Xmitte-Radius+2,YMitte-Radius+2,XMitte+Radius-2,YMitte+Radius-2);
      Pen.Color := clBlack;
      Ya := YMitte - Radius;
      k  := 5 - m;
      XAnfang := 0;
      repeat
        Ende := false;
        for y := Ya to Ye do
        begin
          for x := Xa to Xe do
          begin
            if sqr(x-XMitte) + sqr(YMitte-Y) <= sqr(Radius-2) then
            begin
              if ((pixels[x,y]=Isolinie[m]) and (pixels[x,y+1]= Isolinie[m+1]))
              or ((pixels[x,y]=Isolinie[m+1]) and (pixels[x,y+1]= Isolinie[m]))
              or ((pixels[x,y]=Isolinie[m]) and (pixels[x+1,y]= Isolinie[m+1]))
              or ((pixels[x,y]=Isolinie[m+1]) and (pixels[x+1,y]= Isolinie[m])) then
              begin
                XAn := x+1;
                YAn := y+1;
                XAnfang := Xan;
                YAnfang := Yan;
                Pixels[x,y] := clBlack;
                Ende := true;
                break;
              end;
            end; //Kreis
          end;
          if Ende then break;
        end; //y
        if XAnfang = 0 then
        begin
          Ende := true;
          break;
        end;
        moveto (XAnfang,YAnfang);
        setlength(Poly,5000);
        Poly[0].x := XAnfang;
        Poly[0].y := YAnfang;
        Pen.Color := UmfangFarbe;
        ellipse(Xmitte-Radius+2,YMitte-Radius+2,XMitte+Radius-2,YMitte+Radius-2);
        Pen.Color := clBlack;
        i := 0;
        repeat
          a := x-1;
          b := y-1;
          if ((pixels[a,b]=Isolinie[m]) and (pixels[a+1,b]=Isolinie[m+1]))
          or ((pixels[a,b]=Isolinie[m+1])and(pixels[a+1,b]=Isolinie[m]))
          or ((pixels[a,b]=Isolinie[m])and(pixels[a,b+1]=Isolinie[m+1]))
          or ((pixels[a,b]=Isolinie[m+1])and(pixels[a,b+1]=Isolinie[m]))
          or ((pixels[a,b]=Isolinie[m])and(pixels[a-1,b]=Isolinie[m+1]))
          or ((pixels[a,b]=Isolinie[m+1])and(pixels[a-1,b]=Isolinie[m]))
          or ((pixels[a,b]=Isolinie[m])and(pixels[a,b-1]=Isolinie[m+1]))
          or ((pixels[a,b]=Isolinie[m+1])and(pixels[a,b-1]=Isolinie[m])) then
          begin
            Xan := a;
            Yan := b;
            goto weiter;
          end;
          a := x;
          b := y-1;
          if ((pixels[a,b]=Isolinie[m]) and (pixels[a+1,b]=Isolinie[m+1]))
          or ((pixels[a,b]=Isolinie[m+1])and(pixels[a+1,b]=Isolinie[m]))
          or ((pixels[a,b]=Isolinie[m])and(pixels[a-1,b]=Isolinie[m+1]))
          or ((pixels[a,b]=Isolinie[m+1])and(pixels[a-1,b]=Isolinie[m]))
          or ((pixels[a,b]=Isolinie[m])and(pixels[a,b-1]=Isolinie[m+1]))
          or ((pixels[a,b]=Isolinie[m+1])and(pixels[a,b-1]=Isolinie[m])) then
          begin
            Xan := a;
            Yan := b;
            goto weiter;
          end;
          a := x+1;
          b := y-1;
          if ((pixels[a,b]=Isolinie[m]) and (pixels[a+1,b]=Isolinie[m+1]))
          or ((pixels[a,b]=Isolinie[m+1])and(pixels[a+1,b]=Isolinie[m]))
          or ((pixels[a,b]=Isolinie[m])and(pixels[a,b+1]=Isolinie[m+1]))
          or ((pixels[a,b]=Isolinie[m+1])and(pixels[a,b+1]=Isolinie[m]))
          or ((pixels[a,b]=Isolinie[m])and(pixels[a-1,b]=Isolinie[m+1]))
          or ((pixels[a,b]=Isolinie[m+1])and(pixels[a-1,b]=Isolinie[m]))
          or ((pixels[a,b]=Isolinie[m])and(pixels[a,b-1]=Isolinie[m+1]))
          or ((pixels[a,b]=Isolinie[m+1])and(pixels[a,b-1]=Isolinie[m])) then
          begin
            Xan := a;
            Yan := b;
            goto weiter;
          end;
          a := x+1;
          b := y;
          if ((pixels[a,b]=Isolinie[m]) and (pixels[a+1,b]=Isolinie[m+1]))
          or ((pixels[a,b]=Isolinie[m+1])and(pixels[a+1,b]=Isolinie[m]))
          or ((pixels[a,b]=Isolinie[m])and(pixels[a,b+1]=Isolinie[m+1]))
          or ((pixels[a,b]=Isolinie[m+1])and(pixels[a,b+1]=Isolinie[m]))
          or ((pixels[a,b]=Isolinie[m])and(pixels[a,b-1]=Isolinie[m+1]))
          or ((pixels[a,b]=Isolinie[m+1])and(pixels[a,b-1]=Isolinie[m])) then
          begin
            Xan := a;
            Yan := b;
            goto weiter;
          end;
          a := x+1;
          b := y+1;
          if ((pixels[a,b]=Isolinie[m]) and (pixels[a+1,b]=Isolinie[m+1]))
          or ((pixels[a,b]=Isolinie[m+1])and(pixels[a+1,b]=Isolinie[m]))
          or ((pixels[a,b]=Isolinie[m])and(pixels[a,b+1]=Isolinie[m+1]))
          or ((pixels[a,b]=Isolinie[m+1])and(pixels[a,b+1]=Isolinie[m]))
          or ((pixels[a,b]=Isolinie[m])and(pixels[a-1,b]=Isolinie[m+1]))
          or ((pixels[a,b]=Isolinie[m+1])and(pixels[a-1,b]=Isolinie[m]))
          or ((pixels[a,b]=Isolinie[m])and(pixels[a,b-1]=Isolinie[m+1]))
          or ((pixels[a,b]=Isolinie[m+1])and(pixels[a,b-1]=Isolinie[m])) then
          begin
            Xan := a;
            Yan := b;
            goto weiter;
          end;
          a := x;
          b := y+1;
          if ((pixels[a,b]=Isolinie[m]) and (pixels[a+1,b]=Isolinie[m+1]))
          or ((pixels[a,b]=Isolinie[m+1])and(pixels[a+1,b]=Isolinie[m]))
          or ((pixels[a,b]=Isolinie[m])and(pixels[a,b+1]=Isolinie[m+1]))
          or ((pixels[a,b]=Isolinie[m+1])and(pixels[a,b+1]=Isolinie[m]))
          or ((pixels[a,b]=Isolinie[m])and(pixels[a-1,b]=Isolinie[m+1]))
          or ((pixels[a,b]=Isolinie[m+1])and(pixels[a-1,b]=Isolinie[m])) then
          begin
            Xan := a;
            Yan := b;
            goto weiter;
          end;
          a := x-1;
          b := y+1;
          if ((pixels[a,b]=Isolinie[m]) and (pixels[a+1,b]=Isolinie[m+1]))
          or ((pixels[a,b]=Isolinie[m+1])and(pixels[a+1,b]=Isolinie[m]))
          or ((pixels[a,b]=Isolinie[m])and(pixels[a,b+1]=Isolinie[m+1]))
          or ((pixels[a,b]=Isolinie[m+1])and(pixels[a,b+1]=Isolinie[m]))
          or ((pixels[a,b]=Isolinie[m])and(pixels[a-1,b]=Isolinie[m+1]))
          or ((pixels[a,b]=Isolinie[m+1])and(pixels[a-1,b]=Isolinie[m]))
          or ((pixels[a,b]=Isolinie[m])and(pixels[a,b-1]=Isolinie[m+1]))
          or ((pixels[a,b]=Isolinie[m+1])and(pixels[a,b-1]=Isolinie[m])) then
          begin
            Xan := a;
            Yan := b;
            goto weiter;
          end;
          a := x-1;
          b := y;
          if ((pixels[a,b]=Isolinie[m])and(pixels[a,b+1]=Isolinie[m+1]))
          or ((pixels[a,b]=Isolinie[m+1])and(pixels[a,b+1]=Isolinie[m]))
          or ((pixels[a,b]=Isolinie[m])and(pixels[a-1,b]=Isolinie[m+1]))
          or ((pixels[a,b]=Isolinie[m+1])and(pixels[a-1,b]=Isolinie[m]))
          or ((pixels[a,b]=Isolinie[m])and(pixels[a,b-1]=Isolinie[m+1]))
          or ((pixels[a,b]=Isolinie[m+1])and(pixels[a,b-1]=Isolinie[m])) then
          begin
            Xan := a;
            Yan := b;
            goto weiter;
          end;
          //Rand
          a := x-1;
          b := y-1;
          for l := 1 to k do
          begin
            if (pixels[a,b]=UmfangFarbe)
            and ((pixels[a+1,b]=Isolinie[m+l])
            or (pixels[a-1,b]=Isolinie[m+l])
            or (pixels[a,b+1]=Isolinie[m+l])
            or (pixels[a,b-1]=Isolinie[m+l])) then
            begin
              Xan := a;
              Yan := b;
              goto weiter;
            end;
          end;
          a := x;
          b := y-1;
          for l := 1 to k do
          begin
            if (pixels[a,b]=UmfangFarbe)
            and ((pixels[a+1,b]=Isolinie[m+l])
            or (pixels[a-1,b]=Isolinie[m+l])
            or (pixels[a,b+1]=Isolinie[m+l])
            or (pixels[a,b-1]=Isolinie[m+l])) then
            begin
              Xan := a;
              Yan := b;
              goto weiter;
            end;
          end;
          a := x+1;
          b := y-1;
          for l := 1 to k do
          begin
            if (pixels[a,b]=UmfangFarbe)
            and ((pixels[a+1,b]=Isolinie[m+l])
            or (pixels[a-1,b]=Isolinie[m+l])
            or (pixels[a,b+1]=Isolinie[m+l])
            or (pixels[a,b-1]=Isolinie[m+l])) then
            begin
              Xan := a;
              Yan := b;
              goto weiter;
            end;
          end;
          a := x+1;
          b := y;
          for l := 1 to k do
          begin
            if (pixels[a,b]=UmfangFarbe)
            and ((pixels[a+1,b]=Isolinie[m+l])
            or (pixels[a-1,b]=Isolinie[m+l])
            or (pixels[a,b+1]=Isolinie[m+l])
            or (pixels[a,b-1]=Isolinie[m+l])) then
            begin
              Xan := a;
              Yan := b;
              goto weiter;
            end;
          end;
          a := x+1;
          b := y+1;
          for l := 1 to k do
          begin
            if (pixels[a,b]=UmfangFarbe)
            and ((pixels[a+1,b]=Isolinie[m+l])
            or (pixels[a-1,b]=Isolinie[m+l])
            or (pixels[a,b+1]=Isolinie[m+l])
            or (pixels[a,b-1]=Isolinie[m+l])) then
            begin
              Xan := a;
              Yan := b;
              goto weiter;
            end;
          end;
          a := x;
          b := y+1;
          for l := 1 to k do
          begin
            if (pixels[a,b]=UmfangFarbe)
            and ((pixels[a+1,b]=Isolinie[m+l])
            or (pixels[a-1,b]=Isolinie[m+l])
            or (pixels[a,b+1]=Isolinie[m+l])
            or (pixels[a,b-1]=Isolinie[m+l])) then
            begin
              Xan := a;
              Yan := b;
              goto weiter;
            end;
          end;
          a := x-1;
          b := y+1;
          for l := 1 to k do
          begin
            if (pixels[a,b]=UmfangFarbe)
            and ((pixels[a+1,b]=Isolinie[m+l])
            or (pixels[a-1,b]=Isolinie[m+l])
            or (pixels[a,b+1]=Isolinie[m+l])
            or (pixels[a,b-1]=Isolinie[m+l])) then
            begin
              Xan := a;
              Yan := b;
              goto weiter;
            end;
          end;
          a := x-1;
          b := y;
          for l := 1 to k do
          begin
            if (pixels[a,b]=UmfangFarbe)
            and ((pixels[a+1,b]=Isolinie[m+l])
            or (pixels[a-1,b]=Isolinie[m+l])
            or (pixels[a,b+1]=Isolinie[m+l])
            or (pixels[a,b-1]=Isolinie[m+l])) then
            begin
              Xan := a;
              Yan := b;
              goto weiter;
            end;
          end;
          weiter:
          if (Xalt <> Xan) and (Yalt <> Yan) then inc(i);
          if (Xalt = Xan) and (Yalt = Yan) then
          begin
            Poly[i].x := Xalt;
            Poly[i].y := Yalt;
            if ((i > 6) and (sqrt(sqr(XAnfang-Xan) + sqr(YAnfang-Yan)) <= 10)) then
            begin
              lineto (Xalt,Yalt);
              break;
            end
            else
            begin
              moveto (Xalt,Yalt);
              break;
            end;
          end;
          if i >= 5000 then
          begin
            showmessage (Tx(1529) + chr(10)+Tx(1528));
            Fortschritt.Visible := false;
            exit;
          end;
          x := Xan;
          y := Yan;
          Fortschritt.StepIt;
          lineto (x,y);
          Poly[i].x := x;
          Poly[i].y := y;
          Xalt := Xan;
          Yalt := Yan;
        until ((i > 6) and (sqrt(sqr(XAnfang-Xan) + sqr(YAnfang-Yan)) <= 2));
        Zahl := i+1;
        Poly[Zahl].x := XAnfang;
        Poly[Zahl].y := YAnfang;
        lineto(XAnfang,YAnfang);
        if Zahl > 15 then
        begin
          if GeraetS = 'DXF' then
          begin
            setlength (Xpoly,5000);
            setlength (Ypoly,5000);
            x3 := (Poly[Zahl-1].x+Poly[Zahl].x+Poly[0].x+Poly[1].x+Poly[2].x)/5;
            y3 := (Poly[Zahl-1].y+Poly[Zahl].y+Poly[0].y+Poly[1].y+Poly[2].y)/5;
            Xpoly[0] := Xm+(x3-Xmitte)*Fak*10;
            Ypoly[0] := Ym+(Ymitte-y3)*Fak*10;
            x3 := (Poly[Zahl].x+Poly[0].x+Poly[1].x+Poly[2].x+Poly[3].x)/5;
            y3 := (Poly[Zahl].y+Poly[0].y+Poly[1].y+Poly[2].y+Poly[3].y)/5;
            Xpoly[1] := Xm+(x3-Xmitte)*Fak*10;
            Ypoly[1] := Ym+(Ymitte-y3)*Fak*10;
            for i := 2 to Zahl-2 do
            begin
              x3 := (Poly[i-2].x+Poly[i-1].x+Poly[i].x+Poly[i+1].x+Poly[i+2].x)/5;
              y3 := (Poly[i-2].y+Poly[i-1].y+Poly[i].y+Poly[i+1].y+Poly[i+2].y)/5;
              Xpoly[i] := Xm+(x3-Xmitte)*Fak*10;
              Ypoly[i] := Ym+(Ymitte-y3)*Fak*10;
            end;
            x3 := (Poly[Zahl-2].x+Poly[Zahl-1].x+Poly[Zahl].x+Poly[0].x+Poly[1].x)/5;
            y3 := (Poly[Zahl-2].y+Poly[Zahl-1].y+Poly[Zahl].y+Poly[0].y+Poly[1].y)/5;
            Xpoly[Zahl-1] := Xm+(x3-Xmitte)*Fak*10;
            Ypoly[Zahl-1] := Ym+(Ymitte-y3)*Fak*10;
            x3 := (Poly[Zahl-1].x+Poly[Zahl].x+Poly[0].x+Poly[1].x+Poly[2].x)/5;
            y3 := (Poly[Zahl-1].y+Poly[Zahl].y+Poly[0].y+Poly[1].y+Poly[2].y)/5;
            Xpoly[Zahl] := Xm+(x3-Xmitte)*Fak*10;
            Ypoly[Zahl] := Ym+(Ymitte-y3)*Fak*10;
            Zaehler := Zahl;
            DXFPolygon(Xpoly,Ypoly);
            Xpoly := nil;
            Ypoly := nil;
          end;
          if GeraetS = 'Plotter' then
          begin
            if Programm = 11 then
            begin
              if FuellenS = 'Ja' then
              begin
                if XAnfang <> 0 then
                begin
                  if j = 0 then
                  begin
                    R  := round(HpRadius*Faktor*100*DFak);
                    Printer.Canvas.Brush.Color := Isolinie[m];
                    Printer.Canvas.Brush.Style := bsSolid;
                    Printer.Canvas.Ellipse(xm-R,ym-R,xm+R,ym+R);
                    j := j +1;
                  end;
                end;
              end;
            end;
            x3 := (Poly[Zahl-1].x+Poly[Zahl].x+Poly[0].x+Poly[1].x+Poly[2].x)/5;
            y3 := (Poly[Zahl-1].y+Poly[Zahl].y+Poly[0].y+Poly[1].y+Poly[2].y)/5;
            Punkt[0].x := Xm+round((x3-Xmitte)*Fak*DFak);
            Punkt[0].y := Ym+round((y3-Ymitte)*Fak*DFak);
            x3 := (Poly[Zahl].x+Poly[0].x+Poly[1].x+Poly[2].x+Poly[3].x)/5;
            y3 := (Poly[Zahl].y+Poly[0].y+Poly[1].y+Poly[2].y+Poly[3].y)/5;
            Punkt[1].x := Xm+round((x3-Xmitte)*Fak*DFak);
            Punkt[1].y := Ym+round((y3-Ymitte)*Fak*DFak);
            for i := 2 to Zahl-2 do
            begin
              x3 := (Poly[i-2].x+Poly[i-1].x+Poly[i].x+Poly[i+1].x+Poly[i+2].x)/5;
              y3 := (Poly[i-2].y+Poly[i-1].y+Poly[i].y+Poly[i+1].y+Poly[i+2].y)/5;
              Punkt[i].x := Xm+round((x3-Xmitte)*Fak*DFak);
              Punkt[i].y := Ym+round((y3-Ymitte)*Fak*DFak);
            end;
            x3 := (Poly[Zahl-2].x+Poly[Zahl-1].x+Poly[Zahl].x+Poly[0].x+Poly[1].x)/5;
            y3 := (Poly[Zahl-2].y+Poly[Zahl-1].y+Poly[Zahl].y+Poly[0].y+Poly[1].y)/5;
            Punkt[Zahl-1].x := Xm+round((x3-Xmitte)*Fak*DFak);
            Punkt[Zahl-1].y := Ym+round((y3-Ymitte)*Fak*DFak);
            x3 := (Poly[Zahl-1].x+Poly[Zahl].x+Poly[0].x+Poly[1].x+Poly[2].x)/5;
            y3 := (Poly[Zahl-1].y+Poly[Zahl].y+Poly[0].y+Poly[1].y+Poly[2].y)/5;
            Punkt[Zahl].x := Xm+round((x3-Xmitte)*Fak*DFak);
            Punkt[Zahl].y := Ym+round((y3-Ymitte)*Fak*DFak);
            if FuellenS = 'Ja' then
            begin
              Printer.Canvas.Brush.Color := Isolinie[m+1];
              Printer.Canvas.Brush.Style := bsSolid;
            end;
            if FuellenS = 'Nein' then Printer.Canvas.Brush.Style := bsClear;
            Printer.Canvas.Polygon(slice(Punkt,Zahl));
          end;
        end;
        if Programm = 24 then Ya := YAnfang;
        Poly := nil;
      until Ende = false;
    end; // Isolinien
    Pen.Width := 8;
    Pen.Color := HintFarbe;
    arc(Xmitte-Radius-3,Ymitte-Radius-3,Xmitte+Radius+3,Ymitte+Radius+3,
        Xmitte-15,Ymitte-Radius-15,Xmitte+15,Ymitte-Radius-15);
  end; //Canvas
  Fortschritt.Visible := false;
end;

end.
