unit Karte;

interface
uses Graphics, Globvar, SysUtils, Classes, Basic, Dialogs,
  Texte, stdctrls;
  procedure Pfeil (Canvas:TCanvas; X,Y,i:word);
  procedure Streichen (Canvas:TCanvas; X,Y,i:word);
  procedure GradMin (Winkel:real; i:word;
                     var GradS,MinS:string);
  procedure Grenzen (var Rand: TRand);
  procedure Liste (var ListBox : TListBox);
  Procedure PlotNummern (Canvas: TCanvas; X, Y, i : word);

implementation

procedure Pfeil (Canvas:TCanvas;X, Y, i:word);
var
  Bo       : real;
  Xi, Yi   : integer;
  Azimut   : real;
  Xp1, Xp2 : integer;
  Yp1, Yp2 : integer;
  XT, YT   : shortint;
begin
  Bo := Pi/180;
  Azimut := AziFeld[i]*Bo;
  Xi  := round(X - sin(Pi-Azimut)*SLaenge);
  Yi  := round(Y - cos(Pi-Azimut)*SLaenge);
  Xp1 := round(X - sin(Pi-Azimut+15*Bo)*SLaenge/5);
  Yp1 := round(Y - cos(Pi-Azimut+15*Bo)*SLaenge/5);
  Xp2 := round(X - sin(Pi-Azimut-15*Bo)*SLaenge/5);
  Yp2 := round(Y - cos(Pi-Azimut-15*Bo)*SLaenge/5);
  if Xi  < 0 then Xi  := 0;
  if Xp1 < 0 then Xp1 := 0;
  if Xp2 < 0 then Xp1 := 0;
  if Yi  < 0 then Yi  := 0;
  if Yp1 < 0 then Yp1 := 0;
  if Yp2 < 0 then Yp2 := 0;
  XT  := 0;
  YT  := 0;
  if Azimut < Pi then
  begin
    XT := 5;
    YT := -10;
  end
  else
  begin
    XT := -10;
    YT := 0;
  end;
  With Canvas do
  begin
    Brush.Color := DiagrFarbe;
    Pen.Color   := DatenFarbe;
    Pen.Width   := Strich;
    Font.Size   := 10;
    Font.Color  := DatenFarbe;
    Font.Name   := 'Times New Roman';
    moveto (Xi, Yi);
    lineto (X, Y);
    Brush.Color := DatenFarbe;
    Polygon([point(X,Y),point(Xp1,Yp1),point(Xp2,Yp2),point(X,Y)]);
    Brush.Color := clWhite;
    Textout(X+XT, Y+YT, IntToStr(FalFeld[i]));
  end;
end;

procedure Streichen (Canvas:TCanvas; X,Y,i:word);
var
  Bo     : real;
  Azimut : real;
  X1, Y1 : integer;
  X2, Y2 : integer;
  X3, Y3 : integer;
  XT, YT : shortint;
begin
  Bo := Pi/180;
  Azimut := (AziFeld[i]+90)*Bo;
  X1 := round(X - sin(Pi-Azimut)*SLaenge/2);
  Y1 := round(Y - cos(Pi-Azimut)*SLaenge/2);
  X2 := round(X - sin(2*Pi-Azimut)*SLaenge/2);
  Y2 := round(Y - cos(2*Pi-Azimut)*SLaenge/2);
  X3 := round(X - sin(Pi/2-Azimut)*SLaenge/5);
  Y3 := round(Y - cos(Pi/2-Azimut)*SLaenge/5);
  if X1 < 0 then X1 := 0;
  if X2 < 0 then X2 := 0;
  if X3 < 0 then X3 := 0;
  if Y1 < 0 then Y1 := 0;
  if Y2 < 0 then Y2 := 0;
  if Y3 < 0 then Y3 := 0;
  XT := 0;
  YT := 0;
  if AziFeld[i] <= 90 then
  begin
    XT := 5;
    YT := -10;
  end;
  if (AziFeld[i] > 90) and (AziFeld[i] <= 180) then
  begin
    XT := 5;
    YT := -0;
  end;
  if (AziFeld[i] > 180) and (AziFeld[i] <= 270) then
  begin
    XT := -10;
    YT := 0;
  end;
  if (AziFeld[i] >270) and (AziFeld[i] <= 360) then
  begin
    XT := -5;
    YT := -15;
  end;
  With Canvas do
  begin
    Brush.Color := DiagrFarbe;
    Pen.Color   := DatenFarbe;
    Pen.Width   := Strich;
    Font.Size   := 10;
    Font.Name   := 'Times New Roman';
    Font.Color  := DatenFarbe;
    moveto (X1, Y1);
    lineto (X, Y);
    lineto (X2, Y2);
    moveto (X, Y);
    lineto (X3, Y3);
    Textout(X3+XT, Y3+YT, IntToStr(FalFeld[i]));
  end;
end;

procedure PlotNummern (Canvas: TCanvas; X, Y, i: word);
begin
  With Canvas do
  begin
    Brush.Color := DiagrFarbe;
    Pen.Color   := DatenFarbe;
    Pen.Width   := Strich;
    Font.Size   := 10;
    Font.Name   := 'Times New Roman';
    Font.Color  := DatenFarbe;
    Ellipse(X+3,Y+3,X-3,Y-3);
    Textout(X+5, Y+5, IntToStr(i));
  end;
end;

procedure GradMin (Winkel:real; i: word;
                   var GradS,MinS:string);
var
  Komma : byte;
  DeziS : string;
  Min   : word;
begin
  DeziS := FloatToStrF(Winkel,ffFixed,7,3);
  Komma := Pos('.',DeziS);
  if Komma = 0 then Komma := length(DeziS)+1;
  delete (DeziS,1,Komma);
  if DeziS = '' then DeziS := '000';
  GradS := Copy(FloatToStr(Winkel),1,Komma-1);
  Min   := StrToInt(GradS) mod 60;
  if Min = 0 then MinS := '000' else
    MinS   := IntToStr(Min);
  GradS := IntToStr(StrToInt(GradS) div 60);
  GradS := RightS('000'+GradS,2);
  MinS  := MinS+'.'+DeziS;
  MinS  := Tabs(MinS,2,3);
end;

Procedure Grenzen (var Rand:TRand);
var
  MaxBreite  : real;
  MaxLaenge  : real;
  MinBreite  : real;
  MinLaenge  : real;
  i          : word;
begin
  MaxBreite := 0;
  MaxLaenge := 0;
  MinBreite := 100000000;
  MinLaenge := 100000000;
  for i := 1 to ZahlGlob do
  begin
    if BreiteFeld[i] > MaxBreite then
      MaxBreite := BreiteFeld[i];
    if BreiteFeld[i] < MinBreite then
      MinBreite := BreiteFeld[i];
    if LaengeFeld[i] > MaxLaenge then
      MaxLaenge := LaengeFeld[i];
    if LaengeFeld[i] < MinLaenge then
      MinLaenge := LaengeFeld[i];
  end;
  with Rand do
  begin
    if (KoordinatenS = 'DMM') or (KoordinatenS = 'DMS') then
    begin
      if NordSuedS = 'N' then
      begin
        Oben  := round(MaxBreite);
        Unten := trunc(MinBreite);
      end;
      if NordSuedS = 'S' then
      begin
        Oben  := trunc(MinBreite);
        Unten := round(MaxBreite);
      end;
      if OstWestS = 'W' then
      begin
        Links  := round(MaxLaenge);
        Rechts := trunc(MinLaenge);
      end;
      if OstWestS = 'E' then
      begin
        Links  := trunc(MinLaenge);
        Rechts := round(MaxLaenge);
      end;
    end;
    if (KoordinatenS = 'Gauss') or (KoordinatenS = 'UTM') then
    begin
      Oben   := round(MaxBreite);
      Unten  := trunc(MinBreite);
      Links  := trunc(MinLaenge);
      Rechts := round(MaxLaenge);
    end;
  end;
end;

procedure Liste (var ListBox : TListBox);
var
  i : byte;
begin
  ListBox.Clear;
  if (KoordinatenS = 'DMM') or (KoordinatenS = 'DMS') then
    for i := 0 to 60 do
      ListBox.Items.Add(IntTostr(i));
  if (KoordinatenS = 'Gauss') or (KoordinatenS = 'UTM') then
  begin
    for i := 0 to 9 do
      ListBox.Items.Add(IntTostr(i));
    for i := 1 to 100 do
      ListBox.Items.Add(IntTostr(i*10));
  end;
end;

end.
