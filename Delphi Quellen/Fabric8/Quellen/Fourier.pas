Unit Fourier;

Interface
uses Printers, Drucken, Graphics, Texte, Basic, Globvar, Einausga, Dialogs,
     Dateien, SysUtils, Classes, HPPlot, Standard;

function Determinante :real;
Procedure FBerechnen (N: word; X1,X2,X3,Y1,Y2,Y3: array of integer;
                      Ver: array of Shortint; var B1,B3,B5: array of real);
procedure Fdiagramm (Canvas: TCanvas);
procedure Flinie (Canvas: TCanvas;Xh,Yh,Lang,Hoch,Fak1,Fak2:real;N:string);
procedure Fdrucken (N:word; Vw: array of shortint;
                    X1,Y1,X2,Y2,X3,Y3: array of integer;
                    B1,B3,B5: array of real);
procedure WinFdrucken (SDatei: string;N:word;
                       Vw: array of shortint;
                       X1,Y1,X2,Y2,X3,Y3: array of integer;
                       B1,B3,B5: array of real);
procedure Flies (DiscS:string; var DaS:string; var N:word;
                 var Vw: array of Shortint;
                 var X1, X2, X3, Y1, Y2,Y3: array of integer);
procedure Fschreiben (DateiS: string; N: word; Vw: array of Shortint;
                      X1, X2, X3, Y1, Y2, Y3: array of integer);
procedure PlfouRahmen (Canvas: TCanvas; X1, Y1, Laenge:real);
procedure Plfoulinien (Canvas: TCanvas; X1, Y1, Laenge:real);
procedure Plfouplot (Canvas: TCanvas; B3,B1: array of real; X1,Y1,Laenge:real);

Implementation

function Determinante :real;
var
  T1,T2,T3,T4,T5,T6 : real;
begin
  T1 :=  Matrix[1,1] * Matrix[2,2] * Matrix[3,3];
  T2 :=  Matrix[1,2] * Matrix[2,3] * Matrix[3,1];
  T3 :=  Matrix[1,3] * Matrix[2,1] * Matrix[3,2];
  T4 := -Matrix[1,3] * Matrix[2,2] * Matrix[3,1];
  T5 := -Matrix[1,1] * Matrix[2,3] * Matrix[3,2];
  T6 := -Matrix[1,2] * Matrix[2,1] * Matrix[3,3];
  Determinante := T1+T2+T3+T4+T5+T6;
end;

Procedure FBerechnen (N: word; X1,X2,X3,Y1,Y2,Y3: array of integer;
                      Ver: array of Shortint; var B1,B3,B5: array of real);
Var
  i          : word;
  X1a, Y1a   : real;
  X2a, Y2a   : real;
  X3a, Y3a   : real;
  Fak, Ta, D3: real;
  D0, D1, D2 : real;
begin
  Bo := Pi/180;
  for i := 1 to N do
  begin
    Ta  := -Tan (Vergenz[i] * Bo);
    X1a := X1[i] - Ta * Y1[i];
    X2a := X2[i] - Ta * Y2[i];
    X3a := X3[i] - Ta * Y3[i];
    Fak := Pi / (2*X3a);
    X1a := X1a * Fak;
    X2a := X2a * Fak;
    X3a := X3a * Fak;
    Y1a := Y1[i]*Fak;
    Y2a := Y2[i]*Fak;
    Y3a := Y3[i]*Fak;
    Matrix[1,1] := sin (X1a);
    Matrix[1,2] := sin (3*X1a);
    Matrix[1,3] := sin (5*X1a);
    Matrix[2,1] := sin (X2a);
    Matrix[2,2] := sin (3*X2a);
    Matrix[2,3] := sin (5*X2a);
    Matrix[3,1] := sin (X3a);
    Matrix[3,2] := sin (3*X3a);
    Matrix[3,3] := sin (5*X3a);
    D0 := Determinante;
    Matrix[1,1] := Y1a;
    Matrix[1,2] := sin(3*X1a);
    Matrix[1,3] := sin(5*X1a);
    Matrix[2,1] := Y2a;
    Matrix[2,2] := sin(3*X2a);
    Matrix[2,3] := sin(5*X2a);
    Matrix[3,1] := Y3a;
    Matrix[3,2] := sin(3*X3a);
    Matrix[3,3] := sin(5*X3a);
    D1 := Determinante;
    Matrix[1,1] := sin(X1a);
    Matrix[1,2] := Y1a;
    Matrix[1,3] := sin(5*X1a);
    Matrix[2,1] := sin(X2a);
    Matrix[2,2] := Y2a;
    Matrix[2,3] := sin(5*X2a);
    Matrix[3,1] := sin(X3a);
    Matrix[3,2] := Y3a;
    Matrix[3,3] := sin(5*X3a);
    D2 := Determinante;
    Matrix[1,1] := sin(X1a);
    Matrix[1,2] := sin(3*X1a);
    Matrix[1,3] := Y1a;
    Matrix[2,1] := sin(X2a);
    Matrix[2,2] := sin(3*X2a);
    Matrix[2,3] := Y2a;
    Matrix[3,1] := sin(X3a);
    Matrix[3,2] := sin(3*X3a);
    Matrix[3,3] := Y3a;
    D3 := Determinante;
    IF D0 = 0 then D0 := 0.001;
    B1[i] := abs(D1/D0);
    B3[i] := D2/D0;
    B5[i] := D3/D0;
  end;
end;

procedure Fdiagramm (Canvas: TCanvas);
var
  Xp1, Yp1 : word;
  Xp2, Yp2 : word;
  Xp3, Yp3 : word;
  Xp4, Yp4 : word;
  Xp5, Yp5 : word;
  Xt1, Yt1 : word;
  Xt2, Yt2 : word;
  Xh, Yh   : real;
  Tick, i  : word;
  Lang     : real;
  Hoch     : real;
begin
  with Canvas do
  begin
    Pen.Color := RahmenFarbe;
    Pen.Style := psSolid;
    Pen.Width := 2;
    Brush.Color := HintFarbe;
    if HTransparent then
    begin
      Brush.Color := clWhite;
      HintFarbe   := clWhite;
    end
    else Rectangle (0, 0, Breite, Hoehe);
    Xh    := XMitte/10;
    Yh    := YMitte/10;
    Lang  := 2*XMitte - 2*Xh;
    Hoch  := 2*YMitte - 2*Yh;
    Xp1 := round (Xh);
    Yp1 := round (2*YMitte - Yh);
    Xp2 := round (Xh);
    Yp2 := round(Yh+8*Hoch/15);
    Xp3 := XMitte;
    Yp3 := round(Yh);
    Xp4 := 2*XMitte - round(Xh);
    Yp4 := round (Yh+4*Hoch/15);
    Xp5 := 2*XMitte - round(Xh);
    Yp5 := round (2*YMitte - Yh);
    Pen.Color := Koordinfarbe;
    Pen.Width := 1;
    Brush.Color := GrundFarbe;
    rectangle (round(Xh),round(Yh),2*Xmitte-round(Xh)+1,round(2*Ymitte-Yh));
    Brush.Color := RGFarbe;
    Polygon ([Point(Xp1,Yp1), Point(Xp2,Yp2), Point(Xp3,Yp3),
             Point(Xp4,Yp4), Point(Xp5,Yp5)]);
    Tick := round (Lang/22);        {Zeichnen der Hudlestone-Linien}
    Xt1 := XMitte;
    Yt1 := round(Yh);
    Xt2 := XMitte-5*TicK;
    Yt2 := round(2*YMitte-Yh);
    Moveto (Xt1, Yt1);
    Lineto (Xt2,Yt2);               {E-Linie}
    Xt2 := round(XMitte+5*Tick);
    Moveto (Xt1, Yt1);
    Lineto (Xt2, Yt2);              {D-Linie}
    Moveto (Xt1, Yt1);
    Lineto (Xt1,Yt2);               {Sinus-Linie}
    Xt2 := round(2*XMitte-Xh);
    Yt2 := YMitte;
    Moveto (Xt1, Yt1);
    Lineto (Xt2,Yt2);               {C-Linie}
    Yt2 := round(Yh+2*Hoch/5);
    Moveto (Xt1,Yt1);
    Lineto (Xt2,Yt2);               {A-Linie}
    Yt1 := round(Yh);               {Um Nullpunkt Sektor löschen}
    Brush.Color := RgFarbe;
    Pen.Color := RgFarbe;
    Pen.Color := KoordinFarbe;
    Moveto (Xt1,Yt1);
    Lineto (Xp2,Yp2);
    Moveto (Xt1, Yt1);
    Lineto (Xp4,Yp4);
    Moveto (Xp1,Yp3);
    Lineto (Xp5,Yp3);
    Tick := round (Lang/22);        {b3-Skala}
    Xt1 := round(Xh);
    Yt1 := round(Yh);
    Yt2 := round(Yh) + 10;
    for i := 1 to 21 do
    begin
      Moveto (Xt1+i*Tick,Yt1);
      Lineto (Xt1+i*Tick,Yt2);
    end;
    Font.Color  := KoordinFarbe;
    Brush.Color := GrundFarbe;
    Font.Size := 10;
    Textout (Xt1+Tick-3,Yt1+10,'-1.0');   {Beschriftung der b3-Skala}
    Textout (Xt1+6*Tick-3,Yt1+10,'-0.5');
    Textout (Xt1+11*Tick-3,Yt1+10,'0.0');
    Textout (Xt1+16*Tick-3,Yt1+10,'+0.5');
    Textout (Xt1+21*Tick-3,Yt1+10,'+1.0');
    Tick := round((2*YMitte - 2*Yh)/15);      {b1-Skala}
    Xt2  := round(Xh) + 10;
    for i := 1 to 14 do
    begin
      Moveto (Xt1,Yt1+i*Tick);
      Lineto (Xt2,Yt1+i*Tick);
    end;
    Textout (Xt1+15,5*Tick+10,'5.0');   {Beschriftung der B1-Skala}
    Brush.Color := RGFarbe;
    Textout (Xt1+15,10*Tick+10,'10.0');
    Textout (Xt1+15,15*Tick+5,'15.0');
    Font.Size := 14;                    {Beschriftung B3 und b1}
    Brush.Color := HintFarbe;
    if HTransparent then
    begin
      Brush.Style := bsClear;
      Brush.Color := clWhite;
    end;
    Textout (XMitte - 15,0,'b3');
    Textout (5,YMitte - 15,'b1');
    Xt1 := round (Xh);                   {Horizontale Hudlestone-Linien}
    Yt1 := round (Yh+2*Hoch/3)+3;
    Xt2 := round (Xh+7*Lang/22);
    Yt2 := round (Yh+12*Hoch/15);
    Moveto (Xt1,Yt1);
    Lineto (Xt2,Yt2);                    {5}
    Xt1 := Xt2;
    Yt1 := Yt2;
    Xt2 := XMitte;
    Yt2 := round (Yh+13*Hoch/15);
    Moveto (Xt1,Yt1);
    Lineto (Xt2,Yt2);                    {5}
    Xt1 := Xt2;
    Yt1 := Yt2;
    Xt2 := round (Xh+15.5*Lang/22);
    Yt2 := round (Yh+13.5*Hoch/15);
    Moveto (Xt1,Yt1);
    Lineto (Xt2,Yt2);                    {5}
    Xt1 := Xt2;
    Yt1 := Yt2;
    Xt2 := round (2*XMitte-Xh);
    Yt2 := round (Yh+14*Hoch/15);
    Moveto (Xt1,Yt1);
    Lineto (Xt2,Yt2);                    {5}
    Xt1 := round (Xh+4.7*Lang/22);
    Yt1 := round (Yh+4.6*Hoch/15);
    Xt2 := round (Xh+9.1*Lang/22);
    Yt2 := round (Yh+5.7*Hoch/15);
    Moveto (Xt1,Yt1);
    Lineto (Xt2,Yt2);                    {4}
    Xt1 := Xt2;
    Yt1 := Yt2;
    Xt2 := XMitte;
    Yt2 := round (Yh+6*Hoch/15);
    Moveto (Xt1,Yt1);
    Lineto (Xt2,Yt2);                     {4}
    Xt1 := Xt2;
    Yt1 := Yt2;
    Xt2 := round (Xh+13*Lang/22);
    Yt2 := round (Yh+6.3*Hoch/15);
    Moveto (Xt1,Yt1);
    Lineto (Xt2,Yt2);                     {4}
    Xt1 := Xt2;
    Yt1 := Yt2;
    Xt2 := round (2*XMitte-Xh);
    Yt2 := round (Yh+7*Hoch/15);
    Moveto (Xt1,Yt1);
    Lineto (Xt2,Yt2);                     {4}
    Xt1 := round (Xh+7.7*Lang/22);
    Yt1 := round (Yh+2.5*Hoch/15);
    Xt2 := round (Xh+12*Lang/22);
    Yt2 := round (Yh+3*Hoch/15);
    Moveto (Xt1,Yt1);
    Lineto (Xt2,Yt2);                     {3}
    Xt1 := Xt2;
    Yt1 := Yt2;
    Xt2 := round (2*XMitte-Xh);
    Yt2 := round (Yh+4*(2*YMitte-Yh)/15);
    Moveto (Xt1,Yt1);
    Lineto (Xt2,Yt2);                     {3}
    Xt1 := round (Xh+9*Lang/22);
    Yt1 := round (Yh+1.5*Hoch/15);
    Xt2 := round (Xh+16.5*Lang/22);
    Yt2 := round (Yh+2*Hoch/15);
    Moveto (Xt1,Yt1);
    Lineto (Xt2,Yt2);                     {2}
    Brush.Color := DiagrFarbe;
    Flinie (Canvas, Xh,Yh,Lang,Hoch,19,13.8,'5');{Beschriftung mit Zahlen}
    Flinie (Canvas, Xh,Yh,Lang,Hoch,16.5,6.6,'4');
    Flinie (Canvas, Xh,Yh,Lang,Hoch,14,3.2,'3');
    Flinie (Canvas, Xh,Yh,Lang,Hoch,12.5,1.7,'2');
    Flinie (Canvas, Xh,Yh,Lang,Hoch,2.7,6.1,'F');{Beschriftung mit Buchstaben}
    Flinie (Canvas, Xh,Yh,Lang,Hoch,7.7,10,'E');
    Flinie (Canvas, Xh,Yh,Lang,Hoch,14.3,10,'D');
    Flinie (Canvas, Xh,Yh,Lang,Hoch,19.8,6,'C');
    Flinie (Canvas, Xh,Yh,Lang,Hoch,20,4.9,'B');
    Flinie (Canvas, Xh,Yh,Lang,Hoch,20,3.3,'A');
  end;
end;

procedure Flinie (Canvas: TCanvas; Xh,Yh,Lang,Hoch,Fak1,Fak2:real;N:string);
var
  Xt1, Yt1 : word;
begin
 {schreibt Nummern und Buchstaben (Hudleston, 1973)}
  Xt1 := round (Xh+Fak1*Lang/22);
  Yt1 := round (Yh+Fak2*Hoch/15);
  with Canvas do
  begin
    Ellipse (Xt1-13, Yt1-13, Xt1+13, Yt1+13);
    Font.Size := 11;
    Textout (Xt1-4,Yt1-9,N);
  end;
end;

procedure Fdrucken (N:word; Vw: array of shortint;
                    X1,Y1,X2,Y2,X3,Y3: array of integer;
                    B1,B3,B5: array of real);
var
  DruckText : TextFile;
  i         : word;
  JahrS     : string;
  MonS      : string;
  TagS      : string;
  WtagS     : string;
  ZeitS     : string;
  X1S, Y1S  : string[4];
  X2S, Y2S  : string[4];
  X3S, Y3S  : string[4];
  B1S, B3S  : string[6];
  B5S, VwS  : string[6];
begin
  AssignPrn (Drucktext);
  rewrite (Drucktext);
  Uhr(JahrS, MonS, TagS, WtagS, ZeitS);
  try
    with Printer.Canvas.Font do
    begin
      Name  := 'TimesNewRoman';
      Size  := 24;
      Style := Style + [fsbold];
      writeln (Drucktext);
      writeln (Drucktext, SpaceS (15), Tx(426));       {Fourier-Analyse}
      writeln (Drucktext);
      Size  := 10;
      Style := Style - [fsbold];
      writeln (Drucktext, SpaceS(80), Tx(190));         {Tag der Bearbeitung}
      writeln (Drucktext, SpaceS(80), WTagS,',  ', TagS,'.  ', MonS,'  ', JahrS,
      SpaceS(20), Tx(210), ZeitS);
      writeln (DruckText);
      for i := 0 to DateiZahl do
      writeln(DruckText, SpaceS(50), Tx(256),'  ',DateiNameS[i]); {Dateiname}
      writeln (Drucktext);
      writeln (DruckText);
      writeln (DruckText,SpaceS(50),N, Tx(420));                   {Falten}
      writeln (DruckText);
      writeln (DruckText);
      writeln (Drucktext,SpaceS(30),Tx(427) + Tx(428) + Tx(429));
      writeln (Drucktext,SpaceS(30),'_______          ______               '
                      +'______              _______            ____       '
                      +'____       '+'____');
      writeln (DruckText);
      for i := 1 to N do
      begin
        VwS := RightS('+00'+IntToStr(Vw[i]),3);
        X1S := RightS('0000'+IntToStr(X1[i]),4);
        Y1S := RightS('0000'+IntToStr(Y1[i]),4);
        X2S := RightS('0000'+IntToStr(X2[i]),4);
        Y2S := RightS('0000'+IntToStr(Y2[i]),4);
        X3S := RightS('0000'+IntToStr(X3[i]),4);
        Y3S := RightS('0000'+IntToStr(Y3[i]),4);
        str(B1[i]:6:2, B1S);
        str(B3[i]:6:2, B3S);
        str(B5[i]:6:2, B5S);
        B1S := RightS('      '+B1S,6);
        B3S := RightS('      '+B3S,6);
        B5S := RightS('      '+B5S,6);
        writeln (Drucktext,SpaceS(35)+VwS+'          '+X1S+', '+Y1S+
                 '         '+X2S+', '+Y2S+'          '+X3S+', '+Y3S+
                 '       '+B1S+'       '+B3S+'      '+B5S);
      end;
    end;
  finally
    CloseFile(Drucktext);
  end;
end;

procedure WinFdrucken (SDatei: string;N:word;
                       Vw: array of shortint;
                       X1,Y1,X2,Y2,X3,Y3: array of integer;
                       B1,B3,B5: array of real);
var
  Datei     : TextFile;
  i         : word;
  JahrS     : string;
  MonS      : string;
  TagS      : string;
  WtagS     : string;
  ZeitS     : string;
  X1S, Y1S  : string[4];
  X2S, Y2S  : string[4];
  X3S, Y3S  : string[4];
  B1S, B3S  : string[6];
  B5S, VwS  : string[6];
begin
  Assign (Datei, SDatei);
  rewrite (Datei);
  Uhr(JahrS, MonS, TagS, WtagS, ZeitS);
  writeln (Datei, Tx(426));       {Fourier-Analyse}
  writeln (Datei, Tx(190),' ',WTagS,', ',TagS,'. ',MonS,' ',
           JahrS,' ',ZeitS);
  for i := 0 to DateiZahl do
    writeln(Datei,Tx(256),' ',DateiNameS[i]); {Dateiname}
  writeln (Datei,N,' ', Tx(420));                   {Falten}
  writeln (Datei,Tx(1208));
  for i := 1 to N do
  begin
    VwS := RightS('+00'+IntToStr(Vw[i]),3);
    X1S := RightS('0000'+IntToStr(X1[i]),4);
    Y1S := RightS('0000'+IntToStr(Y1[i]),4);
    X2S := RightS('0000'+IntToStr(X2[i]),4);
    Y2S := RightS('0000'+IntToStr(Y2[i]),4);
    X3S := RightS('0000'+IntToStr(X3[i]),4);
    Y3S := RightS('0000'+IntToStr(Y3[i]),4);
    str(B1[i]:6:2, B1S);
    str(B3[i]:6:2, B3S);
    str(B5[i]:6:2, B5S);
    B1S := RightS('      '+B1S,6);
    B3S := RightS('      '+B3S,6);
    B5S := RightS('      '+B5S,6);
    writeln (Datei,'  ',VwS+'     '+X1S+','+Y1S+ ' '+X2S+','+Y2S+' '+X3S+','+Y3S+
                 '  '+B1S+' '+B3S+' '+B5S);
  end;
  CloseFile(Datei);
end;

procedure Fschreiben (DateiS: string; N: word; Vw: array of Shortint;
                      X1, X2, X3, Y1, Y2, Y3: array of integer);
var
  i     :word;
  Datei :text;
begin
  assign(Datei,DateiS);
  rewrite(Datei);
  try
    writeln(Datei, DateiS);
    if n >= 1 then
    for i := 1 tO N do Writeln(Datei, Vw[i],',',X1[i],',',Y1[i],',',X2[i],',',
                               Y2[i],',',X3[i],',',Y3[i]);
    Beep;
  finally
    CloseFile (Datei);
  end;
end;

procedure Flies (DiscS:string; var DaS:string; var N:word;
                 var Vw: array of shortint;
                 var X1, X2, X3, Y1, Y2,Y3: array of integer);

var
  FS        : string;
  Datei     : text;
  TextS     : string[80];
  Co        : integer;
  ES        : string[5];
  Vwe       : shortint;
  Yy1, Yy2  : word;
  Xx1, Yy3  : word;
  Xx3, Xx2  : word;

begin
  FS := DiscS + UcaseS (DaS);
  assign (Datei,FS);
  reset (Datei);
  readln (Datei,TextS);
  try
    while not eof(Datei) do
    begin
      inc(n);
      readln (Datei,TextS);
      ES := LeftS (TextS,pos(',',TextS)-1);
      val (ES,Vwe,Co);                          {Vergenz}
      delete (TextS,1,pos(',',TextS));          {Vergenz löschen}
      ES := LeftS (TextS,pos(',',TextS)-1);
      val (Es,Xx1,Co);                          {Xx1}
      delete (TextS,1,pos(',',TextS));          {Xx1 löschen}
      ES := LeftS (TextS,pos(',',TextS)-1);
      val (ES,Yy1,Co);                          {Yy1}
      delete (TextS,1,pos(',',TextS));          {Yy1 löschen}
      ES := LeftS (TextS,pos(',',TextS)-1);
      val (ES,Xx2,Co);                          {Xx2}
      delete (TextS,1,pos(',',TextS));          {Xx2 löschen}
      Es := LeftS (TextS,pos(',',TextS)-1);
      val (ES,Yy2,Co);                          {Yy2}
      delete (TextS,1,pos(',',TextS));          {Yy2 löschen}
      ES := LeftS (TextS,pos(',',TextS)-1);
      val (ES,Xx3,Co);                          {Xx3}
      delete (TextS,1,pos(',',TextS));          {Xx3 löschen}
      val (TextS,Yy3,Co);                       {Rest Yy3}
      Vw[n] := Vwe;
      X1[n] := Xx1;
      Y1[n] := Yy1;
      X2[n] := Xx2;
      Y2[n] := Yy2;
      X3[n] := Xx3;
      Y3[n] := Yy3;
    end;
  finally
    CloseFile (Datei);
  end;
end;

procedure PlFouRahmen (Canvas:TCanvas; X1, Y1, Laenge:real);
var
  i         : byte;
  X2, Y2    : real;
  X3, Y3    : real;
  X4, Y4    : real;
  X1w, X2w  : word;
  X3w, X4w  : word;
  Y1w, Y2w  : word;
  Y3w, Y4w  : word;
  Hoehe, Yt : real;
  Ytw, Xtw  : word;
  Tick, Xt  : real;
  X1S, Y1S  : string[10];
  X2S, Y2S  : string[10];
  X3S, Y3S  : string[10];
  X4S, Y4S  : string[10];
  XtS, YtS  : string[10];
  WdS, HdS  : string[10];
  B3        : real;
  B3S, B1S  : string[10];
  B1        : byte;
begin
  DecimalSeparator := '.';
  Hoehe := Laenge * 39 / 53;
  X2 := (X1 + Laenge);
  Y2 := Y1;
  X3 := X2;
  Y3 := Y2 + Hoehe;
  X4 := X1;
  Y4 := Y3;
  if GeraetS = 'HPGL' then
  begin
    str (round(X1*400), X1S);
    str (round(Y1*400), Y1S);
    str (round(X2*400), X2S);
    str (round(Y2*400), Y2S);
    str (round(X3*400), X3S);
    str (round(Y3*400), Y3S);
    str (round(X4*400), X4S);
    str (round(Y4*400), Y4S);
    Plotte ('Pu;');                  {Plotten des Rahmens}
    Plotte ('Pa'+X1S+','+Y1S+';');
    Plotte ('Pd;');
    Plotte ('Pa'+X2S+','+Y2S+';');
    Plotte ('Pa'+X3S+','+Y3S+';');
    Plotte ('Pa'+X4S+','+Y4S+';');
    Plotte ('Pa'+X1S+','+Y1S+';');
    Plotte ('Pu;');
  end;
  if GeraetS = 'DXF' then
  begin
    Dxflinie (X1,Y1,X2,Y2);
    Dxflinie (X2,Y2,X3,Y3);
    Dxflinie (X3,Y3,X4,Y4);
    Dxflinie (X4,Y4,X1,Y1);
  end;
  if GeraetS <> 'Plotter' then
  begin
    Tick := Laenge / 22;             {Skalierung der Abszisse}
    Yt   := Y3 - Hoehe / 30;
    str(round(Yt*400), YtS);
    for i := 1 to 21 do
    begin
      if GeraetS = 'HPGL' then
      begin
        str(round((X1+i*Tick)*400), XtS);
        Plotte ('Pu;');
        Plotte ('Pa'+XtS+','+Y3S+';');
        Plotte ('Pd;');
        Plotte ('Pa'+XtS+','+YtS+';');
      end;
      if GeraetS = 'DXF' then
        Dxflinie (X1+i*Tick,Y3,X1+i*Tick,Yt);
    end;
    Tick := Hoehe / 15;              {Skalierung der Ordinate}
    Xt := X1 + Hoehe /30;
    str(round(Xt*400), XtS);
    for i := 1 to 15 do
    begin
      if GeraetS = 'HPGL' then
      begin
        YtS := IntToStr(round((Y1+i*Tick)*400));
        Plotte ('Pu;');
        Plotte ('Pa'+X1S+','+YtS+';');
        Plotte ('Pd;');
        Plotte ('Pa'+XtS+','+YtS+';');
      end;
      if GeraetS = 'DXF' then
        Dxflinie (X1,Y1+i*Tick,Xt,Y1+i*Tick);
    end;
    if GeraetS = 'HPGL' then
    begin
      str((Laenge/30):5:3, WdS);   {Schriftgröße für Achsenbezeichnung}
      str((Hoehe/25):5:3, HdS);
      Plotte ('Si'+WdS+','+HdS+';');
    end;
    Xt := X1 + Laenge/2 - Laenge/44;{Beschriftung der Abszisse 'b3'}
    Yt := Y3 + Hoehe/15;
    if GeraetS = 'HPGL' then
    begin
      str (round(Xt*400),XtS);
      str (round(Yt*400),YtS);
      Plotte ('Pu;');
      Plotte ('Pa'+XtS+','+YtS+';');
      Plotte ('Lb'+'b3'+chr(3));
    end;
    if GeraetS = 'DXF' then
      Dxftext (Xt,Yt,Laenge/5,'b3','0.00');
    Xt := X1 - Laenge/8;            {Beschriftung der Ordinate 'b1'}
    Yt := Y1 + Hoehe/2 - Hoehe/30;
    if GeraetS = 'HPGL' then
    begin
      str (round((Xt-0.05)*400), XtS);
      str (round(Yt*400), YtS);
      Plotte ('Pu;');
      Plotte ('Pa'+XtS+','+YtS+';');
      Plotte ('Lb'+'b1'+chr(3));
    end;
    if GeraetS = 'DXF' then
      Dxftext (Xt,Yt,Laenge/5,'b1','0.00');
    if GeraetS = 'HPGL' then
    begin
      str((Laenge/40):5:3, WdS);   {Schriftgröße für B3 und B1}
      str((Hoehe/40):5:3, HdS);
      Plotte ('Si'+WdS+','+HdS+';');
    end;
    Xt := X1 + Laenge/22;           {Beschriftung der b3-Skala}
    Yt := Y3 + Hoehe/50;
    str (round(Yt*400),Yts);
    B3 := -1.1;
    for i := 1 to 21 do
    begin
      B3 := B3 + 0.1;
      str (B3:3:1, B3S);
      Tick := Laenge/22;
      if GeraetS = 'HPGL' then
      begin
        str (round((X1+i*1.1*Tick-1.5*Tick)*400), XtS);
        Plotte ('Pu;');
        Plotte ('Pa'+XtS+','+YtS+';');
        Plotte ('Si'+FloatToStr(Laenge/150)+','+HdS+';');
        Plotte ('Lb'+B3S+chr(3));
      end;
      if GeraetS = 'DXF' then
        Dxftext (X1+i*Tick,Yt,Laenge/10,B3S,'0.00');
    end;
    Xt := X1 - Laenge/40;           {Beschriftung der b1- Skala} {/30}
    str (round(Xt*400),XtS);
    B1 := 0;
    for i := 1 to 15 do
    begin
      B1 := B1 + 1;
      str (B1, B1S);
      B1S := RightS (('0'+B1S),2);
      Tick := Hoehe/15;
      if GeraetS = 'HPGL' then
      begin
        str (round((Y1+15*Tick-i*Tick)*400),YtS);
        Plotte ('Pu;');
        Plotte ('Pa'+XtS+','+YtS+';');
        Plotte ('Lb'+B1S+chr(3));
      end;
      if GeraetS = 'DXF' then
        Dxftext (Xt,Y1+15*Tick-i*Tick,Laenge/10,B1S,'0.00');
    end;
  end;
  if GeraetS = 'Plotter' then
  begin
    with Printer.Canvas do
    begin
      X1w := round(100*Faktor*X1*DFak);
      Y1w := round(100*Faktor*Y1*DFak);
      X2w := round(100*Faktor*X2*DFak);
      Y2w := round(100*Faktor*Y2*DFak);
      X3w := round(100*Faktor*X3*DFak);
      Y3w := round(100*Faktor*Y3*Dfak);
      X4w := round(100*Faktor*X4*DFak);
      Y4w := round(100*Faktor*Y4*Dfak);
      moveto (X1w, Y1w);                        {Plotten des Rahmens}
      lineto (X2w, Y2w);
      lineto (X3w, Y3w);
      lineto (X4w, Y4w);
      lineto (X1w, Y1w);
      Tick := Laenge / 22;                      {Skalierung der Abszisse}
      Yt   := Y3 - Hoehe / 30;
      Ytw  := round(100*Faktor*DFak*Yt);
      for i := 1 to 21 do
      begin
        Xtw := round(100*Faktor*DFak*(X1+i*Tick));
        moveto (Xtw, Y3w);
        lineto (Xtw, Ytw)
      end;
      Tick := Hoehe / 15;                       {Skalierung der Ordinate}
      Xt := X1 + Hoehe /30;
      Xtw := round(100*Faktor*DFak*Xt);
      for i := 1 to 15 do
      begin
        Ytw := round(100*Faktor*DFak*(Y1+i*Tick));
        moveto (X1w, Ytw);
        lineto (Xtw, Ytw);
      end;
      Font.Size  := 10;                         {Schriftgröße für Achsenbezeichnung}
      Font.Color := KoordinFarbe;
      Xtw := round(100*Faktor*DFak*(X1 + Laenge/2 - Laenge/44)); {Beschriftung der Abszisse b3'}
      Ytw := round(100*Faktor*DFak*(Y3 + Hoehe/15));
      textout (Xtw, Ytw, 'b3');
      Xtw := round(100*Faktor*DFak*(X1 - Laenge/8));            {Beschriftung der Ordinate 'b1'}
      Ytw := round(100*Faktor*DFak*(Y1 + Hoehe/2 - Hoehe/30));
      textout (Xtw, Ytw, 'b1');
      Font.Size := round(Laenge);
      Xtw := round(100*Faktor*DFak*(X1 + Laenge/22));           {Beschriftung der b3-Skala}
      Ytw := round(100*Faktor*DFak*(Y3 + Hoehe/50));
      B3 := -1.1;
      for i := 1 to 10 do
      begin
        B3   := round(B3*10 + 2)/10;
        B3S  := Floattostr(B3);
        Tick := Laenge/22;
        Xtw  := round(100*Faktor*DFak*(X1+i*2*Tick));
        textout (Xtw, Ytw-5, B3S);
      end;
      Xtw := round(100*Faktor*DFak*(X1 - Laenge/15));           {Beschriftung der b1- Skala} {/30}
      B1 := 0;
      for i := 1 to 3 do
      begin
        B1  := B1 + 5;
        B1S := Floattostr(B1);
        B1S := RightS (('0'+B1S),2);
        Tick := Hoehe/15;
        Ytw := round(100*Faktor*DFak*(Y1+i*5*Tick));
        textout (Xtw+15, Ytw-20, B1S);
      end;
    end;
  end;
end;

procedure PlFoulinien (Canvas: TCanvas; X1, Y1, Laenge:real);
var
  Hoehe, Y3   : real;
  Xl1S, Yl1S  : string[10];
  Xl2S, Yl2S  : string[10];
  Xl3S, Yl3S  : string[10];
  Tick, Ticky : real;
  WdS, HdS    : string[10];
  X11w, Y11w  : word;
  X12w, Y12w  : word;
  X13w, Y13w  : word;
  Breite      : word;
  Groesse     : word;
  LinieS      : string[2];

begin
  if GeraetS <> 'Plotter' then
  begin
    Hoehe := Laenge * 39 / 53;
    Tick  := Laenge / 22;
    Ticky := Hoehe / 15;
    Y3    := Y1 + Hoehe;
    if GeraetS = 'HPGL' then
    begin
      str (round(X1*400), Xl1S);                {Plotten der F-Linie}
      str (round((Y1+7*Ticky)*400), Yl1S);
      str (round((X1+Laenge/2)*400), Xl2S);
      str (round(Y3*400), Yl2S);
      Plotte ('Pu;');
      Plotte ('Pa'+Xl1S+','+Yl1S+';');
      Plotte ('Pd;');
      Plotte ('Pa'+Xl2S+','+Yl2S+';');
    end;
    if GeraetS = 'DXF' then
      Dxflinie (X1,Y1+7*Ticky,X1+Laenge/2,Y3);
    Tick := Laenge/22;
    if GeraetS = 'HPGL' then
    begin
      str (round((X1+6*Tick)*400), Xl1S);       {Plotten der E-Linie}
      str (round(Y1*400), Yl1S);
      Plotte ('Pu;');
      Plotte ('Pa'+Xl1S+','+Yl1S+';');
      Plotte ('Pd;');
      Plotte ('Pa'+Xl2S+','+Yl2S);
    end;
    if GeraetS = 'DXF' then
      Dxflinie (X1+6*Tick,Y1,X1+Laenge/2,Y3);
    if GeraetS = 'HPGL' then
    begin
      str (round((X1+Laenge/2)*400), Xl1S);     {Plotten der Sinus-Linie}
      Plotte ('Pu;');
      Plotte ('Pa'+Xl1S+','+Yl1S+';');
      Plotte ('Pd;');
      Plotte ('Pa'+Xl2S+','+Yl2S+';');
    end;
    if GeraetS = 'DXF' then
      Dxflinie (X1+Laenge/2,Y1,X1+Laenge/2,Y3);
    if GeraetS = 'HPGL' then
    begin
      str (round((X1+16*Tick)*400), Xl1S);      {Plotten der D-Linie}
      Plotte ('Pu;');
      Plotte ('Pa'+Xl1S+','+Yl1S+';');
      Plotte ('Pd;');
      Plotte ('Pa'+Xl2S+','+Yl2S+';');
    end;
    if GeraetS = 'DXF' then
      Dxflinie (X1+16*Tick,Y1,X1+laenge/2,Y3);
    end;
    Tick := Hoehe/15;
    if GeraetS = 'HPGL' then
    begin
      str (round((X1+Laenge)*400), Xl1S);       {Plotten der C-Linie}
      str (round((Y1+7.5*Tick)*400), Yl1S);
      Plotte ('Pu;');
      Plotte ('Pa'+Xl1S+','+Yl1S+';');
      Plotte ('Pd;');
      Plotte ('Pd'+Xl2S+','+Yl2S+';');
    end;
    if Geraets = 'DXF' then
      Dxflinie (X1+Laenge,Y1+7.5*Tick,X1+Laenge/2,Y3);
    if GeraetS = 'HPGL' then
    begin
      str (round((Y1+9.2*Tick)*400), Yl1S);     {Plotten der B-Linie}
      Plotte ('Pu;');
      Plotte ('Pa'+Xl1S+','+Yl1S+';');
      Plotte ('Pd;');
      Plotte ('Pd'+Xl2S+','+Yl2S+';');
    end;
    if GeraetS = 'DXF' then
      Dxflinie (X1+Laenge,Y1+9.2*Tick,X1+Laenge/2,Y3);
    if GeraetS = 'HPGL' then
    begin
      str (round((Y1+11*Tick)*400), Yl1S);      {Plotten der A-Linie}
      Plotte ('Pu;');
      Plotte ('Pa'+Xl1S+','+Yl1S+';');
      Plotte ('Pd;');
      Plotte ('Pd'+Xl2S+','+Yl2S+';');
    end;
    if GeraetS = 'DXF' then
      Dxflinie (X1+Laenge,Y1+11*Tick,X1+Laenge/2,Y3);
    Tick  := Laenge/22;
    Ticky := Hoehe/15;
    if GeraetS = 'HPGL' then
    begin
      str (round((X1+9*Tick)*400), Xl1S);     {Plotten der 2-Linie}
      str (round((Y1+13.5*Ticky)*400), Yl1S);
      str (round((X1+16.5*Tick)*400), Xl2S);
      str (round((Y1+13*Ticky)*400), Yl2S);
      Plotte ('Pu;');
      Plotte ('Pa'+Xl1S+','+Yl1S+';');
      Plotte ('Pd;');
      Plotte ('Pd'+Xl2S+','+Yl2S+';');
    end;
    if GeraetS = 'DXF' then
      Dxflinie (X1+9*Tick,Y1+13.5*Ticky,X1+16.5*Tick,Y1+13*Ticky);
    if GeraetS = 'HPGL' then
    begin
      str (round((X1+7.7*Tick)*400), Xl1S);     {Plotten der 3-Linie}
      str (round((Y1+12.6*Ticky)*400), Yl1S);
      str (round((X1+Laenge)*400), Xl2S);
      str (round((Y1+10.8*Ticky)*400), Yl2S);
      Plotte ('Pu;');
      Plotte ('Pa'+Xl1S+','+Yl1S+';');
      Plotte ('Pd;');
      Plotte ('Pd'+Xl2S+','+Yl2S+';');
    end;
    if GeraetS = 'DXF' then
      Dxflinie (X1+7.7*Tick,Y1+12.6*Ticky,X1+Laenge,Y1+10.8*Ticky);
    if GeraetS = 'HPGL' then
    begin
      str (round((X1+4.7*Tick)*400), Xl1S);     {Plotten der 4-Linie}
      str (round((Y1+10.4*Ticky)*400), Yl1S);
      str (round((X1+13*Tick)*400), Xl2S);
      str (round((Y1+8.8*Ticky)*400), Yl2S);
      str (round((X1+Laenge)*400), Xl3S);
      str (round((Y1+8.3*Ticky)*400), Yl3S);
      Plotte ('Pu;');
      Plotte ('Pa'+Xl1S+','+Yl1S+';');
      Plotte ('Pd;');
      Plotte ('Pd'+Xl2S+','+Yl2S+';');
      Plotte ('Pd'+Xl3S+','+Yl3S+';');
    end;
    if GeraetS = 'DXF' then
    begin
      Dxflinie (X1+4.7*Tick,Y1+10.4*Ticky,X1+13*Tick,Y1+8.8*Ticky);
      Dxflinie (X1+13*Tick,Y1+8.8*Ticky,X1+Laenge,Y1+8.3*Ticky);
    end;
    if GeraetS = 'HPGL' then
    begin
      str (round(X1*400), Xl1S);                {Plotten der 5-Linie}
      str (round((Y1+Hoehe/3)*400), Yl1S);
      str (round((X1+Laenge/2)*400), Xl2S);
      str (round((Y1+2*Ticky)*400), Yl2S);
      str (round((X1+Laenge)*400), Xl3S);
      str (round((Y1+Ticky)*400), Yl3S);
      Plotte ('Pu;');
      Plotte ('Pa'+Xl1S+','+Yl1S+';');
      Plotte ('Pd;');
      Plotte ('Pd'+Xl2S+','+Yl2S+';');
      Plotte ('Pd'+Xl3S+','+Yl3S+';');
    end;
    if GeraetS = 'DXF' then
    begin
      Dxflinie (X1,Y1+Hoehe/3,X1+Laenge/2,Y1+2*Ticky);
      Dxflinie (X1+Laenge/2,Y1+2*Ticky,X1+Laenge,Y1+Ticky);
    end;
    if GeraetS = 'HPGL' then
    begin
      str((Laenge/60):5:3, WdS);   {Beschriftung der Linien, Schriftgröße}
      str((Hoehe/40):5:3, HdS);
      Plotte ('Si'+WdS+','+HdS+';');
    end;
    if GeraetS = 'HPGL' then
    begin
      str (round((X1+2.5*Tick)*400), Xl1S);    {Beschriftung 'F'}
      str (round((Y1+9.1*Ticky)*400), Yl1S);
      Plotte ('Pu;');
      Plotte ('Pa'+Xl1S+','+Yl1S+';');
      Plotte ('Lb'+'F'+chr(3));
    end;
    if GeraetS = 'DXF' then
      Dxftext (X1+2.5*Tick,Y1+9.1*Ticky,Laenge/7,'F','0.00');
    if GeraetS = 'HPGL' then
    begin
      str(round((X1+7.7*Tick)*400), Xl1S);     {Beschriftung 'E'}
      str(round((Y1+6.4*Ticky)*400), Yl1S);
      Plotte ('Pu;');
      Plotte ('Pa'+Xl1S+','+Yl1S+';');
      Plotte ('Lb'+'E'+chr(3));
    end;
    if GeraetS = 'DXF' then
      Dxftext (X1+7.7*Tick,Y1+6.4*Ticky,Laenge/7,'E','0.00');
    if GeraetS = 'HPGL' then
    begin
      str(round((X1+10.5*Tick)*400), Xl1S);     {Beschriftung 'S'}
      str(round((Y1+6.4*Ticky)*400), Yl1S);
      Plotte ('Pu;');
      Plotte ('Pa'+Xl1S+','+Yl1S+';');
      Plotte ('Lb'+'S'+chr(3));
    end;
    if GeraetS = 'DXF' then
      Dxftext (X1+10.5*Tick,Y1+6.4*Ticky,Laenge/7,'S','0.00');
    if GeraetS = 'HPGL' then
    begin
      str(round((X1+13.3*Tick)*400), Xl1S);     {Beschriftung 'D'}
      str(round((Y1+6.4*Ticky)*400), Yl1S);
      Plotte ('Pu;');
      Plotte ('Pa'+Xl1S+','+Yl1S+';');
      Plotte ('Lb'+'D'+chr(3));
    end;
    if GeraetS = 'DXF' then
      Dxftext (X1+13.3*Tick,Y1+6.4*Ticky,Laenge/7,'D','0.00');
    if GeraetS = 'HPGL' then
    begin
      str(round((X1+17.6*Tick)*400), Xl1S);     {Beschriftung 'C'}
      str(round((Y1+9.7*Ticky)*400), Yl1S);
      Plotte ('Pu;');
      Plotte ('Pa'+Xl1S+','+Yl1S+';');
      Plotte ('Lb'+'C'+chr(3));
    end;
    if GeraetS = 'DXF' then
      Dxftext (X1+17.6*Tick,Y1+9.7*Ticky,Laenge/7,'C','0.00');
    if GeraetS = 'HPGL' then
    begin
      str(round((X1+19.8*Tick)*400), Xl1S);     {Beschriftung 'B'}
      str(round((Y1+9.7*Ticky)*400), Yl1S);
      Plotte ('Pu;');
      Plotte ('Pa'+Xl1S+','+Yl1S+';');
      Plotte ('Lb'+'B'+chr(3));
    end;
    if GeraetS = 'DXF' then
      Dxftext (X1+19.8*Tick,Y1+9.7*Ticky,Laenge/7,'B','0.00');
    if GeraetS = 'HPGL' then
    begin
      str(round((X1+18.5*Tick)*400), Xl1S);       {Beschriftung 'A'}
      str(round((Y1+12.5*Ticky)*400), Yl1S);
      Plotte ('Pu;');
      Plotte ('Pa'+Xl1S+','+Yl1S+';');
      Plotte ('Lb'+'A'+chr(3));
    end;
    if GeraetS = 'DXF' then
      Dxftext (X1+18.5*Tick,Y1+12.5*Ticky,Laenge/7,'A','0.00');
    if GeraetS = 'HPGL' then
    begin
      str(round((X1+12.1*Tick)*400), Xl1S);     {Beschriftung '2'}
      str(round((Y1+13.4*Ticky)*400), Yl1S);
      Plotte ('Pu;');
      Plotte ('Pa'+Xl1S+','+Yl1S+';');
      Plotte ('Lb'+'2'+chr(3));
    end;
    if GeraetS = 'DXF' then
      Dxftext (X1+12.1*Tick,Y1+13.4*Ticky,Laenge/7,'2','0.00');
    if GeraetS = 'HPGL' then
    begin
      str(round((X1+13*Tick)*400), Xl1S);       {Beschriftung '3'}
      str(round((Y1+12.1*Ticky)*400), Yl1S);
      Plotte ('Pu;');
      Plotte ('Pa'+Xl1S+','+Yl1S+';');
      Plotte ('Lb'+'3'+chr(3));
    end;
    if GeraetS = 'DXF' then
      Dxftext (X1+13*Tick,Y1+12.1*Ticky,Laenge/7,'3','0.00');
    if GeraetS = 'HPGL' then
    begin
      str(round((X1+15.2*Tick)*400), Xl1S);     {Beschriftung '4'}
      str(round((Y1+8.8*Ticky)*400), Yl1S);
      Plotte ('Pu;');
      Plotte ('Pa'+Xl1S+','+Yl1S+';');
      Plotte ('Lb'+'4'+chr(3));
    end;
    if GeraetS = 'DXF' then
      Dxftext (X1+15.2*Tick,Y1+8.8*Ticky,Laenge/7,'4','0.00');
    if GeraetS = 'HPGL' then
    begin
      str(round((X1+20.2*Tick)*400), Xl1S);     {Beschriftung '5'}
      str(round((Y1+1.3*Ticky)*400), Yl1S);
      Plotte ('Pu;');
      Plotte ('Pa'+Xl1S+','+Yl1S+';');
      Plotte ('Lb'+'5'+chr(3));
    end;
    if GeraetS = 'DXF' then
      Dxftext (X1+20.2*Tick,Y1+1.3*Ticky,Laenge/7,'5','0.00');
  if GeraetS = 'Plotter' then
  begin
    with Printer.Canvas do
    begin
      Hoehe := Laenge * 39 / 53;
      Tick  := Laenge / 22;
      Ticky := Hoehe / 15;
      Y3    := Y1 + Hoehe;
      X11w  := round(100*Faktor*X1*DFak);               {Plotten der F-Linie}
      Y11w  := round(100*Faktor*DFak*(Y3-7*Ticky));
      X12w  := round(100*Faktor*DFak*(X1+Laenge/2));
      Y12w  := round(100*Faktor*DFak*Y1);
      moveto (X11w, Y11w);
      lineto (X12w, Y12w);
      Tick := Laenge/22;
      X11w := round(100*Faktor*DFak*(X1+6*Tick));       {Plotten der E-Linie}
      Y11w := round(100*Faktor*DFak*Y3);
      moveto (X11w, Y11w);
      lineto (X12w, Y12w);
      X11w := round(100*Faktor*DFak*(X1+Laenge/2));     {Plotten der Sinus-Linie}
      moveto (X11w, Y11w);
      lineto (X12w, Y12w);
      X11w := round(100*Faktor*DFak*(X1+16*Tick));      {Plotten der D-Linie}
      moveto (X11w, Y11w);
      lineto (X12w, Y12w);
      Tick := Hoehe/15;
      X11w := round(100*Faktor*DFak*(X1+Laenge));       {Plotten der C-Linie}
      Y11w := round(100*Faktor*DFak*(Y3-7.5*Tick));
      moveto (X11w, Y11w);
      lineto (X12w, Y12w);
      Y11w := round(100*Faktor*DFak*(Y3-9.2*Tick));     {Plotten der B-Linie}
      moveto (X11w, Y11w);
      lineto (X12w, Y12w);
      Y11w := round(100*Faktor*DFak*(Y3-11*Tick));      {Plotten der A-Linie}
      moveto (X11w, Y11w);
      lineto (X12w, Y12w);
      Tick  := Laenge/22;
      Ticky := Hoehe/15;
      X11w := round(100*Faktor*DFak*(X1+9*Tick));       {Plotten der 2-Linie}
      Y11w := round(100*Faktor*DFak*(Y3-13.5*Ticky));
      X12w := round(100*Faktor*DFak*(X1+16.5*Tick));
      Y12w := round(100*Faktor*DFak*(Y3-13*Ticky));
      moveto (X11w, Y11w);
      lineto (X12w, Y12w);
      X11w := round(100*Faktor*DFak*(X1+7.7*Tick));     {Plotten der 3-Linie}
      Y11w := round(100*Faktor*DFak*(Y3-12.6*Ticky));
      X12w := round(100*Faktor*DFak*(X1+Laenge));
      Y12w := round(100*Faktor*DFak*(Y3-10.8*Ticky));
      moveto (X11w, Y11w);
      lineto (X12w, Y12w);
      X11w := round(100*Faktor*DFak*(X1+4.7*Tick));     {Plotten der 4-Linie}
      Y11w := round(100*Faktor*DFak*(Y3-10.4*Ticky));
      X12w := round(100*Faktor*DFak*(X1+13*Tick));
      Y12w := round(100*Faktor*DFak*(Y3-8.8*Ticky));
      X13w := round(100*Faktor*DFak*(X1+Laenge));
      Y13w := round(100*Faktor*DFak*(Y3-8.3*Ticky));
      moveto (X11w, Y11w);
      lineto (X12w, Y12w);
      lineto (x13w, Y13w);
      X11w := round(100*Faktor*DFak*X1);                {Plotten der 5-Linie}
      Y11w := round(100*Faktor*DFak*(Y3-Hoehe/3));
      X12w := round(100*Faktor*DFak*(X1+Laenge/2));
      Y12w := round(100*Faktor*DFak*(Y3-2*Ticky));
      X13w := round(100*Faktor*DFak*(X1+Laenge));
      Y13W := round(100*Faktor*DFak*(Y3-Ticky));
      moveto (X11w, Y11w);
      lineto (X12w, Y12w);
      lineto (X13w, Y13w);
      X11w := round(100*Faktor*DFak*(X1+2.5*Tick));     {Beschriftung 'F'}
      Y11w := round(100*Faktor*DFak*(Y1+6.2*Ticky));
      ellipse (X11w-35, Y11w-35, X11w+35, Y11w+35);
      Font.Size := 10;
      LinieS := 'F';
      Breite := Textwidth(LinieS) div 2;
      Groesse := TextHeight(LinieS) div 2;
      textout (X11w-Breite, Y11w-Groesse, LinieS);
      LinieS := 'E';
      Breite := Textwidth(LinieS) div 2;
      Groesse := TextHeight(LinieS) div 2;
      X11w := round(100*Faktor*DFak*(X1+7.7*Tick));     {Beschriftung 'E'}
      Y11w := round(100*Faktor*DFak*(Y1+10.0*Ticky));
      ellipse (X11w-35, Y11w-35, X11w+35, Y11w+35);
      textout (X11w-Breite, Y11w-Groesse, LinieS);
      LinieS := 'S';
      Breite := Textwidth(LinieS) div 2;
      Groesse := TextHeight(LinieS) div 2;
      X11w := round(100*Faktor*DFak*(X1+11*Tick));      {Beschriftung 'S'}
      Y11w := round(100*Faktor*DFak*(Y1+10*Ticky));
      ellipse (X11w-35, Y11w-35, X11w+35, Y11w+35);
      textout (X11w-Breite, Y11w-Groesse, LinieS);
      LinieS := 'D';
      Breite := Textwidth(LinieS) div 2;
      Groesse := TextHeight(LinieS) div 2;
      X11w := round(100*Faktor*DFak*(X1+14.4*Tick));    {Beschriftung 'D'}
      Y11w := round(100*Faktor*DFak*(Y1+10*Ticky));
      ellipse (X11w-35, Y11w-35, X11w+35, Y11w+35);
      textout (X11w-Breite, Y11w-Groesse, LinieS);
      LinieS := 'C';
      Breite := Textwidth(LinieS) div 2;
      Groesse := TextHeight(LinieS) div 2;
      X11w := round(100*Faktor*DFak*(X1+18.5*Tick));    {Beschriftung 'C'}
      Y11w := round(100*Faktor*DFak*(Y1+5.2*Ticky));
      ellipse (X11w-35, Y11w-35, X11w+35, Y11w+35);
      textout (X11w-Breite, Y11w-Groesse, LinieS);
      LinieS := 'B';
      Breite := Textwidth(LinieS) div 2;
      Groesse := TextHeight(LinieS) div 2;
      X11w := round(100*Faktor*DFak*(X1+20*Tick));      {Beschriftung 'B'}
      Y11w := round(100*Faktor*DFak*(Y1+4.7*Ticky));
      ellipse (X11w-35, Y11w-35, X11w+35, Y11w+35);
      textout (X11w-Breite, Y11w-Groesse, LinieS);
      LinieS := 'A';
      Breite := Textwidth(LinieS) div 2;
      Groesse := TextHeight(LinieS) div 2;
      X11w := round(100*Faktor*DFak*(X1+20*Tick));      {Beschriftung 'A'}
      Y11w := round(100*Faktor*DFak*(Y1+3.2*Ticky));
      ellipse (X11w-35, Y11w-35, X11w+35, Y11w+35);
      textout (X11w-Breite, Y11w-Groesse, LinieS);
      LinieS := '2';
      Breite := Textwidth(LinieS) div 2;
      Groesse := TextHeight(LinieS) div 2;
      X11w := round(100*Faktor*DFak*(X1+12.5*Tick));      {Beschriftung '2'}
      Y11w := round(100*Faktor*DFak*(Y1+1.7*Ticky));
      ellipse (X11w-35, Y11w-35, X11w+35, Y11w+35);
      textout (X11w-Breite, Y11w-Groesse, LinieS);
      LinieS := '3';
      Breite := Textwidth(LinieS) div 2;
      Groesse := TextHeight(LinieS) div 2;
      X11w := round(100*Faktor*DFak*(X1+14*Tick));      {Beschriftung '3'}
      Y11w := round(100*Faktor*DFak*(Y1+3.2*Ticky));
      ellipse (X11w-35, Y11w-35, X11w+35, Y11w+35);
      textout (X11w-Breite, Y11w-Groesse, LinieS);
      LinieS := '4';
      Breite := Textwidth(LinieS) div 2;
      Groesse := TextHeight(LinieS) div 2;
      X11w := round(100*Faktor*DFak*(X1+15*Tick));      {Beschriftung '4'}
      Y11w := round(100*Faktor*DFak*(Y1+6.4*Ticky));
      ellipse (X11w-35, Y11w-35, X11w+35, Y11w+35);
      textout (X11w-Breite, Y11w-Groesse, LinieS);
      LinieS := '5';
      Breite := Textwidth(LinieS) div 2;
      Groesse := TextHeight(LinieS) div 2;
      X11w := round(100*Faktor*DFak*(X1+20*Tick));      {Beschriftung '5'}
      Y11w := round(100*Faktor*DFak*(Y1+13.8*Ticky));
      ellipse (X11w-35, Y11w-35, X11w+35, Y11w+35);
      textout (X11w-Breite, Y11w-Groesse, LinieS);
    end;
  end;
end;

procedure PlFouplot (Canvas: TCanvas; B3,B1: array of real; X1,Y1,Laenge:real);
var
  Xp, Yp   : real;
  XpS, YpS : string[10];
  i        : word;
  iiS      : string[10];
  Tickx    : real;
  Ticky    : real;
  Hoehe    : real;
  WdS, HdS : string[10];
  Xpw, Ypw : word;
  Breite   : word;
  Groesse  : word;
begin
  Hoehe := Laenge * 39 / 53;
  Tickx := Laenge / 22;
  Ticky := Hoehe / 15;
  if GeraetS <> 'Plotter' then
  begin
    str (Laenge/100:5:3, WdS);
    str (Hoehe/100:5:3, HdS);
    if GeraetS = 'HPGL' then Plotte ('Si'+WdS+','+HdS+';');
    for i := 1 to ZahlGlob do              {Plotten der Daten}
    begin
      if (abs (B3[i]) <= 1.1) and (B1[i] <= 15) and (B1[i] >=0) then
      begin
        Xp := X1+11*Tickx + 10*Tickx*B3[i];
        Yp := Y1+Hoehe - Ticky*B1[i];
        str (i,iiS);
        if GeraetS = 'HPGL' then
        begin
          str (round((Xp-0.09)*400), XpS);
          str (round(Yp*400), YpS);
          Zeichkreis (round(Xp*400),round(Yp*400),round(Laenge*5),36);
          Plotte ('Pu;');
          Plotte ('Pa'+XpS+','+YpS+';');
          Plotte ('Lb'+iiS+chr(3));
        end;
        if GeraetS = 'DXF' then
        begin
          Dxfkreis (Xp,Yp,Laenge/50);
          DXFText (Xp-Laenge/80,Yp-Laenge/80, Laenge/5, iiS,'0.00')
        end;
      end;
    end;
  end;
  if GeraetS = 'Plotter' then
  begin
    with Printer.Canvas do
    begin
      Pen.Color   := DatenFarbe;
      Font.Color  := DatenFarbe;
      Brush.Color := clWhite;
      for i := 1 to ZahlGlob do              {Plotten der Daten}
      begin
        if (abs (B3[i]) <= 1.1) and (B1[i] <= 15) and (B1[i] >=0) then
        begin
          Xp := X1+11*Tickx + 10*Tickx*B3[i];
          Yp := Y1 + Ticky*B1[i];
          iiS := IntToStr(i);
          iiS := RightS (('0'+iiS),2);
          Xpw := round(100*Faktor*DFak*Xp);
          Ypw := round(100*Faktor*DFak*Yp);
          Canvas.Font.Size := round(Laenge);
          Breite := Textwidth(iiS) div 2;
          Groesse := TextHeight(iiS) div 2;
          Ellipse (Xpw-2*Breite, Ypw-2*Groesse, Xpw+2*Breite, Ypw+2*Groesse);
          textout (Xpw-Breite, Ypw-Groesse, iiS);
        end;
      end;
    end;
  end;
end;

end.

