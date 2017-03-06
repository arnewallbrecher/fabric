unit RfPhi;

interface
uses
  SysUtils, Graphics, Globvar, Dialogs, Basic, Classes;
  procedure PolyCenter (Zahl: word; Px, Py: array of word;
                        var Cx, Cy: integer);
  procedure RfKoordinaten (Canvas:TCanvas; RfMax,RfMin: real;
                           var Dist: real);
  procedure RfHarmonisch (Canvas: TCanvas; var Hmittel: real;
                          Dist: real);
  procedure RfVektorMittel (Canvas:Tcanvas; Dist: real;
                            var Vm: integer);
  procedure PlotPunkte(Canvas: TCanvas; Xp,Yp: word);
  procedure Zaehlen(Canvas: TCanvas; Hmittel: real;
                    var Isym,Index: real; Dist: real);
  procedure ChiQuadrat (Vm: word; Hmittel: real;
                        var ChiSum, ChiRS: array of real;
                        var n: word; var RsMin: real;
                        var Ndf: byte);
  procedure Gralin (Canvas: TCanvas; ChiSum, ChiRS: array of real;
                    n: word; Hmittel: real);

implementation

const
  e = 2.71828;

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

procedure RfKoordinaten (Canvas:TCanvas; RfMax,RfMin: real;
                         var Dist: real);
var
  i      : word;
  MaxRf  : word;
  MinRf  : word;
  Xr, Yr : word;     
begin
  with Canvas do
  begin
    Pen.Color   := KoordinFarbe;
    Brush.Color := DiagrFarbe;
    Font.Color  := KoordinFarbe;
    Font.Size   := 10;
    Font.Name   := 'TimesNewRoman';
    Rectangle (30, 20, Breite+30, Hoehe+20);
    Brush.Color := HintFarbe;
    for i := 1 to 17 do
    begin
      moveto (30, round(20 + Hoehe*i/18));
      lineto (20, round(20 + Hoehe*i/18));
      Textout(0, round(13 + 0.1*i+Hoehe*i/18),IntTostr(90-i*10)+'°');
    end;
    MaxRf := trunc(RfMax) + 2;
    MinRf := trunc(RfMin);
    Dist  := Breite/ln(MaxRf-MinRf+1);
    Brush.Color := DiagrFarbe;
    for i := MinRf to MaxRf-2 do
    begin
      Xr := 30+round(ln(i*e)*Dist-Dist);
      Yr := Hoehe+19;
      moveto (Xr, Yr);
      lineto (Xr, Yr-10);
      if i mod 2 = 0 then
        Textout(Xr-4, Yr-25, IntToStr(i));
      Yr := 20;
      moveto (Xr, Yr);
      lineto (Xr, Yr+10);
      if i mod 2 = 0 then
        Textout(Xr-4, Yr+12, IntToStr(i));
    end;
    Font.Name   := 'Symbol';
    Font.Size   := 16;
    Font.Color  := KoordinFarbe;
    Brush.Color := HintFarbe;
    Textout (0,0,'F');
    Font.Name := 'TimesNewRoman';
    Textout (Breite+28,0,'Rf');
    Pen.Color := DatenFarbe;
    if LeftS(Datensymbol,4) = 'Open' then
      Brush.Color := DiagrFarbe
    else Brush.Color := DatenFarbe;
    for i := 1 to ZahlGlob do
    begin
      Xr := 30 + round(ln(Rf[i]*e)* Dist-Dist);
      Yr := round(20+Hoehe/2-RPhi[i]*Hoehe/180);
      PlotPunkte (Canvas, Xr, Yr);
    end;
  end;
end;

procedure RfHarmonisch (Canvas: TCanvas; var Hmittel: real;
                        Dist: real);
var
  Nenner  : real;
  i, n    : word;
begin
  Nenner := 0;
  n      := 0;
  for i := 1 to ZahlGlob do
  begin
    Nenner := Nenner + 1/Rf[i];
    n      := n + 1;
  end;
  Hmittel := n/Nenner;
  Xmitte  := 30+round(ln(Hmittel*e)*Dist-Dist);
end;

procedure RfVektorMittel (Canvas: TCanvas; Dist: real;
                          var Vm: integer);
var
  i        : word;
  Rsinus   : real;
  Rcosinus : real;
  Bo       : real;
  Vmittel  : real;
  XLO, YLO : word;
  XRU, YRU : word;
begin
  Bo       := Pi/180;
  Rsinus   := 0;
  Rcosinus := 0;
  for i := 1 to ZahlGlob do
  begin
    Rsinus   := Rsinus + sin(2*RPhi[i]*Bo);
    Rcosinus := Rcosinus + cos(2*Rphi[i]*Bo);
  end;
  Vmittel := 0.5*arctan(Rsinus/Rcosinus)/Bo;
  if (Rsinus < 0) and (Rcosinus < 0) then Vmittel := -Vmittel;
  Ymitte := 20 + round(Hoehe/2-Vmittel*Hoehe/180);
  Vm     := round(Vmittel);
  if RCosinus < 0 then Vm := Vm+90;
  if Vm < 0 then Vm := 180 + Vm;
  XLO := Xmitte-200;
  if XLO <= 40 then XLO := 40;
  YLO := Ymitte-200;
  if YLO <= 30 then YLO := 30;
  XRU := Xmitte+200;
  if XRU >= Breite+20 then XRU := Breite+20;
  YRU := Ymitte+200;
  if YRU >= Hoehe+10 then YRU := Hoehe+10;
  with Canvas do
  begin
    Pen.Color := VekFarbe;
    moveto (XLO, Ymitte);
    lineto (XRU, Ymitte);
    Pen.Color := HarmFarbe;
    moveto (Xmitte, YLO);
    lineto (Xmitte, YRU);
  end;
end;

procedure PlotPunkte(Canvas: TCanvas; Xp,Yp: word);
var
  n      : byte;
begin
  n := 4;
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

procedure Zaehlen(Canvas: TCanvas; Hmittel: real;
                  var Isym,Index: real; Dist: real);
const
  Rs155  : array[1..5] of real = (0.3, 0.51, 0.60, 0.74, 0.82);
  Rs1510 : array[1..5] of real = (0.4, 0.63, 0.67, 0.78, 0.85);
  Rs205  : array[1..5] of real = (0.5, 0.63, 0.73, 0.80, 0.86);
  Rs2010 : array[1..5] of real = (0.5, 0.63, 0.77, 0.82, 0.88);
  Rs305  : array[1..5] of real = (0.5, 0.63, 0.73, 0.80, 0.87);
  Rs3010 : array[1..5] of real = (0.6, 0.63, 0.77, 0.82, 0.88);
  Rs505  : array[1..5] of real = (0.5, 0.63, 0.73, 0.82, 0.87);
  Rs5010 : array[1..5] of real = (0.6, 0.63, 0.77, 0.82, 0.88);
  Rs1005 : array[1..5] of real = (0.6, 0.63, 0.73, 0.82, 0.87);
  Rs10010: array[1..5] of real = (0.6, 0.63, 0.77, 0.84, 0.89);
var
  PZahl   : array[0..4] of word;
  i       : word;
  l, k    : byte;
  R       : array[1..5] of array[1..5] of real;
  Xr, Yr  : word;
  XLO,YLO : word;
  XRU,YRU : word;
begin
  l := 0;
  k := 0;
  for i := 1 to 4 do PZahl[i] := 0;
  for i := 1 to ZahlGlob do
  begin
    Xr := 30 + round(ln(Rf[i]*e)* Dist-Dist);
    Yr := round(20+Hoehe/2-RPhi[i]*Hoehe/180);
    if (Xr>=30) and (Xr<Xmitte) and (Yr>=20) and (Yr<Ymitte) then
      Pzahl[1] := Pzahl[1] + 1;
    if (Xr>=Xmitte) and (Xr<Breite+30) and (Yr>=20) and (Yr<Ymitte) then
      Pzahl[2] := Pzahl[2] + 1;
    if (Xr>=30) and (Xr<Xmitte) and (Yr>=Ymitte) and (Yr<Hoehe+20) then
      Pzahl[3] := Pzahl[3] + 1;
    if (Xr>=Xmitte) and (Xr<Breite+30) and (Yr>=Ymitte) and (Yr<Hoehe+20) then
      Pzahl[4] := Pzahl[4] + 1;
  end;
  XLO := Xmitte-200;
  if XLO <= 40 then XLO := 40;
  YLO := Ymitte-200;
  if YLO <= 30 then YLO := 30;
  XRU := Xmitte+200;
  if XRU >= Breite+20 then XRU := Breite+20;
  YRU := Ymitte+200;
  if YRU >= Hoehe+10 then YRU := Hoehe+10;
  with Canvas do
  begin
    Font.Size   := 14;
    Font.Name   := 'TimesNewRoman';
    Font.Color  := clBlack;
    Brush.Color := DiagrFarbe;
    Textout (XLO, YLO, IntToStr(PZahl[1]));
    Textout (XRU-20, YLO, IntToStr(PZahl[2]));
    Textout (XLO, YRU-20, IntToStr(PZahl[3]));
    Textout (XRU-20, YRU-20, IntToStr(PZahl[4]));
  end;
  Isym := 1 - (abs(PZahl[2]-PZahl[4])
          + abs(PZahl[1]-PZahl[3]))/ ZahlGlob;
  if ZahlGlob < 28 then                        l := 1;
  if (ZahlGlob > 29) and (ZahlGlob < 47) then  l := 2;
  if (ZahlGlob > 47) and (ZahlGlob < 80) then  l := 3;
  if (ZahlGlob > 80) and (ZahlGlob < 150) then l := 4;
  if ZahlGlob > 150 then                       l := 5;
  if Hmittel < 2.0 then                        k := 1;
  if (Hmittel > 2.0) and (Hmittel < 3.0) then  k := 2;
  if (Hmittel > 3.0) and (Hmittel < 4.0) then  k := 3;
  if (Hmittel > 4.0) and (Hmittel < 5.0) then  k := 4;
  if Hmittel > 5.0                       then  k := 5;
  if Prozent = 5 then
  begin
    for i := 1 to 5 do R[1,i] := Rs155[i];
    for i := 1 to 5 do R[2,i] := Rs205[i];
    for i := 1 to 5 do R[3,i] := Rs305[i];
    for i := 1 to 5 do R[4,i] := Rs505[i];
    for i := 1 to 5 do R[5,i] := Rs1005[i];
  end;
  if Prozent = 10 then
  begin
    for i := 1 to 5 do R[1,i] := Rs1510[i];
    for i := 1 to 5 do R[2,i] := Rs2010[i];
    for i := 1 to 5 do R[3,i] := Rs3010[i];
    for i := 1 to 5 do R[4,i] := Rs5010[i];
    for i := 1 to 5 do R[5,i] := Rs10010[i];
  end;
  Index := R[k,l];
end;

procedure ChiQuadrat (Vm: word; Hmittel: real;
                      var ChiSum, ChiRS: array of real;
                      var n: word; var RsMin: real;
                      var Ndf: byte);
var
  i      : word;
  Jsign  : array of integer;
  Hoek   : array of integer;
  count  : array[0..100] of integer;
  Theta  : array of integer;
  ThetaB : real;
  Dir    : integer;
  Now    : byte;
  SuMin  : real;
  RS, H  : real;
  ReqXi  : real;
  ReqYi  : real;
  ReqXs  : real;
  ReqYs  : real;
  ReqA   : real;
  ReqB   : real;
  Gam    : real;
  Bin1   : real;
  Bin2   : real;
  ReqXf  : real;
  ReqYf  : real;
  P, Q   : real;
  Angle  : integer;
  NC     : word;
  Sum    : real;
  Expect : real;
  j, k   : byte;
  Test   : real;
  Bo     : real;
  S      : real;
begin
  setlength (Jsign, MaxDaten);
  setlength (Hoek, MaxDaten);
  Setlength (Theta, MaxDaten);
  Bo := Pi/180;
  Now   := 0;
  SuMin := 1000000;
  if Vm >90 then Dir := Vm-90;
  if Vm <= 90 then Dir := Vm+90;
  for i := 1 to ZahlGlob do
  begin
    Jsign[i] := 2;
    Hoek[i] := RPhi[i]-Dir;
    if Hoek[i] > 90 then Hoek[i] := Hoek[i]-180;
    if Hoek[i] <= -90 then Hoek[i] := Hoek[i]+180;
    if Hoek[i] < 0 then Jsign[i] := 1;
    if Hoek[i] < 0 then Hoek[i] := -Hoek[i];
    if Hoek[i] = 90 then Hoek[i] := 89;
    if Hoek[i] = -90 then Hoek[i] := -89;
  end;
  Rs := Hmittel+1;
  n := 0;
  repeat
    if Now = 1 then Rs := Rsmin;
    for i := 1 to 100 do count[i] := 0;
    for i := 1 to ZahlGlob do
    begin
      ReqXi := 1/Rf[i];
      ReqYi := Rf[i];
      if RS = 0 then RS := 0.0001;
      ReqXs := 1/Rs;
      ReqYs := Rs;
      H     := Hoek[i]*Bo;
      ReqA  := ReqXi*sqr(cos(H)) + ReqYi*sqr(sin(H));
      ReqB  := ReqXi*sqr(sin(H)) + ReqYi*sqr(cos(H));
      Gam   := (ReqYi-ReqXi)*sin(H)*cos(H);
      Bin1  := ReqA*ReqXs + ReqB*ReqYs;
      Bin2  := ReqA*ReqXs*ReqB*ReqYs - sqr(Gam)*ReqXs*ReqYs;
      ReqXf := (Bin1 - sqrt(sqr(Bin1) - 4*Bin2))/2;
      ReqYf := (Bin1+sqrt(sqr(Bin1) - 4*Bin2))/2;
      if ReqXf = 0 then ReqXf := 0.0001;
      P     := ReqA*ReqXs-ReqXf;
      if P < 0 then P := 0;
      Q := ReqYf - ReqXf;
      if Q >= 0.00001 then
      begin
        S := sqrt(P/Q);
        if (S>1) and (S<1.001) then S := 1;
        ThetaB := arcsin(S);
      end
      else ThetaB := 0;
      Theta[i] := round(ThetaB/Bo);
      if Jsign[i] = 1 then Theta[i] := -Theta[i];
      Angle := Theta[i]+90;
      if ZahlGlob >= 50 then
      begin
        NC := round(Angle/18+1);
        Count[NC] := Count[NC]+1;
      end
      else
      begin
        NC := round(Angle/45+1);
        Count[NC] := Count[NC] +1;
      end;
    end;
    Sum := 0;
    if ZahlGlob >= 50 then
    begin
      Ndf := 8;
      Expect := ZahlGlob/10;
      for j := 1 to 10 do
        Sum := sqr(Count[j]-Expect)/Expect+Sum;
    end
    else
    begin
      Expect := ZahlGlob/4;
      Ndf := 2;
      for k := 1 to 4 do
        Sum := sqr(Count[k]- Expect)/Expect+Sum;
    end;
    if Sum <= SuMin then
    begin
      SuMin := Sum;
      RsMin := Rs;
    end;
    if Now <> 1 then
      if Sum <= 60 then
      begin
        inc(n);
        ChiSum[n] := Sum;
        ChiRS[n]  := RS;
      end;
    if Now <> 0 then
    begin
      for i := 1 to ZahlGlob do
      begin
        Theta[i] := Theta[i] + 90;
        if Theta[i] >90 then Theta[i] := Theta[i] - 180;
      end;
    end
    else
    begin
      RS := RS-0.1;
      Test := Hmittel-RS;
      if (Test >= 2) or (Rs <= 1) then Now := 1;
    end;
  until Now <> 0;
  Jsign := Nil;
  Hoek  := Nil;
  Theta := Nil;
end;

procedure Gralin (Canvas: TCanvas; ChiSum, ChiRs: array of real;
                  n: word; Hmittel: real);
var
  i    : word;
  Ab   : real;
  X,y  : word;
  RSS  : string;
  Rmod : word;
  Skal : real;
begin
  Ab := 30/abs(ChiRS[1] - ChiRS[n]);
  with Canvas do
  begin
    Pen.Color   := ChiKoorFarbe;
    Brush.Color := ChiHintFarbe;
    Brush.Style := bsSolid;
    Rectangle(0,0,Breite,Hoehe);
    Pen.Color   := ChiKoorFarbe;
    Font.Color  := ChiKoorFarbe;
    for i := 1 to 6 do
    begin
      moveto (i*60,0);
      lineto (i*60,10);
      Textout(i*60+2,5,IntToStr(i*10));
    end;
    Font.Name := 'Symbol';
    Font.Size := 14;
    Textout (335,5,'c2');
    Font.Size := 12;
    for i := 0 to 8*round(Ab) do
    begin
      moveto (0,300-round(i*Ab));
      lineto (10,300-round(i*Ab));
      Skal := ChiRS[n]+i/10;
      str(Skal:4:1,RSS);
      Rmod := round(10*Skal);
      if Rmod mod 5 = 0 then
      Textout(12,293-round(i*Ab),RSS);
    end;
    Font.Size := 14;
    Font.Name := 'TimesNewRoman';
    Textout (40,140,'Rs');
    Font.Size := 12;
    Pen.Color := ChiGraphFarbe;
    moveto(round(ChiSum[1]*6),0);
    for i := 1 to n do
    begin
      x := round(ChiSum[i]*6);
      y := 300 - round(10*Ab*(ChiRS[i]-ChiRS[n]));
      lineto(x,y);
    end;
  end;
end;
end.
