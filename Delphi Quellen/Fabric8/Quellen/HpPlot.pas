Unit HpPlot;

Interface
uses Texte, Drucken, Globvar, Dialogs, Einausga, Basic,
Windows, SysUtils, NetzProj, Graphics, Iso, Comctrls,
Printers, Classes, Standard, extctrls;

procedure Plotte (PlotstringS: string);
procedure Plotter (Canvas: TCanvas; SaveDialog1: TSaveDialog);
procedure Hpende (XS, YS, WS, HS: string);
procedure Hpperiph (Canvas: TCanvas; Kreuz: boolean);
procedure Hpformate (Canvas: TCanvas; H:real; WS,HS,AaS,WdS,
                     HdS:string);
procedure Dxfformate (Canvas: TCanvas; AaS:string);
procedure Zeichkreis (Xm,Ym,Rad:word; S:shortint);
procedure Farben (Canvas: TCanvas; Farb: TColor);
procedure Dxfkreis (X,Y,R:real);
procedure Dxflinie (Xa,Ya,Xe,Ye:real);
procedure Dxftext (Xa,Ya,H:real; TextS,WinkelS:string);
procedure Plot1 (Canvas: TCanvas);
procedure Hpkoordin (Az, Fa:real; var X,Y:real);
procedure Hppunkt (Canvas: TCanvas; X, Y:real; ZS:string);
procedure Hpgrosskreis (Canvas: TCanvas; Aa,Ff:real);
procedure Hpline (Canvas: TCanvas; X,Y:real);
procedure Hprotation (Canvas: TCanvas; Az,F:real; Da,Df:real;
                      An,Wi,S,M:integer; var X,Y:real);
procedure Dxfvertex;
procedure Dxfpunkt (X,Y:real);
procedure Hpkleinkreis (Canvas: TCanvas; Aa, Ff, Ow: real);
procedure Hpmaximum (Canvas: TCanvas; Np:real);
procedure Hpverbindungslinie (Canvas: TCanvas;
                              Xneu,Yneu:real);
procedure Hpteilkreis (Canvas: TCanvas; Aq:array of word;
                       Fq:array of shortint; Cr:byte;
                       R:shortint; Prog:byte;
                       var Xkreis,Ykreis:real);
procedure Legende (Canvas: TCanvas; IsolinS:string;
                   IsoZeil:word);
procedure Hpmaxmin (Cmax,Cmin:word);
procedure Hpstrich (Canvas: TCanvas; XNull, YNull,Laenge:real; LWinkel:word);
procedure Xskallin (Canvas: TCanvas; Programm:byte;
                    Xanfang,Yanfang,Laenge:real;
                    Teile:byte; Tick:real);
procedure Yskallin (Canvas: TCanvas; Programm:byte;
                    Xanfang,Yanfang, Laenge:real;
                    Teile:byte; Tick:real);
procedure Xhpschrift (Canvas: TCanvas; Programm:byte;
                      RichtungS:string;
                      XNull,YNull,Laenge:real;
                      Ende,Teile:word);
procedure Yhpschrift (Canvas: TCanvas; Programm:byte; RichtungS:string;
                      XNull,YNull,Laenge:real; Ende,Teile:word);
procedure Hpsymbol (Canvas: TCanvas; Xanfang,Yanfang,
                    Xsymbol,Ysymbol,Laenge:real; Nsymbol:byte);
procedure Dreieck (Canvas: TCanvas; X,Y,Laenge:real);
procedure Formdreieck (Canvas: TCanvas; X, Y:real; Seite: real;
                       Lambda1, Lambda2: array of real;
                       Slambda1, Slambda2: real; NameS: string);
procedure HPProjektionen (Canvas: TCanvas; NetzS:string;
                          Ic, Sp:integer; Ro:integer);
procedure HpNetz (NetzS:string; var Xn,Yn,Zn:real);
procedure HPLinie (Canvas: TCanvas; NetzS: string;It: byte;
                   Tl: word; var X,Y,Z,Rp,Rd,Rot,Co,
                   Ox, Oy, Oz:real);
procedure HpRefine (It:byte;NetzS:string;Tl:word; Rp,Rd,Rot,Co:real;
                  var Zm:TColor; var X,Y,Z,Ox,Oy,Oz:real);
procedure HPIsol (Canvas: TCanvas; var LaMax, LbMax: word;
                  var WMax: real; var Pis: array of real;
                  Fortschritt: TProgressBar);
procedure HPPlisli(Canvas: TCanvas; P:real;
                   var Zi,Zl:array of real; Ba1zeiger,
                   Ba2zeiger,
                   Be1zeiger,Be2zeiger: array of real;
                   Wwzeiger : Tww);
procedure HPIso2(Canvas: TCanvas; nz: word; Ba1zeiger,
                 Ba2zeiger,Be1zeiger,
                 Be2zeiger: array of real);
procedure DXFPolygon(Xpoly, Ypoly: array of double);
procedure HpKonturen (Canvas: TCanvas; Punkt1,Punkt2,Punkt3,Punkt4,Punkt5: TPu;
                      var Zcluster: array of byte; var Pix: Tpi);
Procedure HpStressKonturen (Canvas: TCanvas; Punkt1,Punkt2,Punkt3,Punkt4,Punkt5: TPu;
                      var Zcluster: array of byte; var Pix: Tpi);
Implementation

procedure Plotte (PlotstringS: string);
begin
  if GeraetS = 'Plotter' then
  begin
    assignPrn (Plotzeile);
    rewrite (PlotZeile);
    writeln(PlotZeile, PlotStringS);
    CloseFile(PlotZeile);
  end
  else writeln (Pdatei, PlotstringS);
end;

procedure Plotter (Canvas: TCanvas; SaveDialog1: TSaveDialog);
begin
  if GeraetS <> 'Plotter' then
  begin
    if GeraetS = 'HPGL' then
    begin
     SaveDialog1.DefaultExt := 'HPGL file (*.plt)|*.plt';
     SaveDialog1.Filter := 'HPGL file (*.plt)|*.plt';
    end;
    if GeraetS = 'DXF'  then
    begin
      SaveDialog1.DefaultExt := 'Drawing Interchange Format (*.dxf)|*.dxf';
      SaveDialog1.Filter := 'Drawing Interchange Format (*.dxf)|*.dxf';
    end;
    if SaveDialog1.Execute then
    begin
      assignFile(PDatei,SaveDialog1.Filename);
      rewrite(PDatei);
    end;
    if GeraetS = 'DXF' then
    begin
      writeln (Pdatei, 0);
      writeln (Pdatei, 'SECTION');
      writeln (Pdatei, 2);
      writeln (Pdatei, 'ENTITIES');
      writeln (Pdatei, 0);
    end;
    if GeraetS = 'HPGL' then Plotte ('In;');
  end;
end;

procedure Hpende (Xs, YS, WS, HS: string);
var
  Xa, Ya, H : real;
  W         : word;
begin
  try
    if (GeraetS = 'HPGL') then
    begin
      if DemoB then
      begin
        Plotte('SI'+WS+','+HS);
        Plotte('PU;Pa'+XS+','+YS+';LB'+'Demo-Version'+chr(3));
      end;
      Plotte ('SP0;IN;');
    end;
    if GeraetS = 'DXF' then
    begin
      if DemoB then
      begin
        DecimalSeparator := '.';
        Xa := StrToFloat (XS)/400;
        Ya := StrToFloat (YS)/400;
        H  := HPRadius*1.5;
        Dxftext (Xa,Ya,H,'Demo-Version','0.0');
      end;
      writeln (Pdatei,'ENDSEC');
      writeln (Pdatei,0);
      writeln (Pdatei,'EOF');
    end;
  finally
    if (GeraetS = 'HPGL') or (GeraetS = 'DXF')
    then CloseFile (PDatei);
    ChDir (DirectS);
  end;
end;

procedure Hpperiph (Canvas: TCanvas; Kreuz: boolean);
var
  DiagNameS  : string[80];
  W, H       : real;
  WS, HS     : string[6];
  XPMitte    : word;
  YPMitte    : word;
  Rint       : word;
  E          : byte;
  X0S,Y0S    : string[10];
  X1S,Y2S    : string[10];
  YoS        : string[10];
  XMitteS    : string[10];
  X1, X2     : real;
  Y1, Y2     : real;
  WdS, HdS   : string[6];
  X, Y, R    : word;
  AltXmitte  : word;
  AltYmitte  : word;

begin
  AltXmitte := Xmitte;
  AltYmitte := Ymitte;
  if GeraetS = 'Plotter' then
{Diagramm-Beschriftung eingeben}
  XpMitte := 0;
  YpMitte := 0;
  H       := 0;
  if not Calib then
    DiagNameS := InputBox(Tx(439),Tx(887),' ');
  if (GeraetS = 'HPGL') or (GeraetS = 'DXF') then
  begin
    if DiagnameS <>'' then E := length (DiagnameS) else E := 16;
    W := 4.05 * HpRadius / (3 * E);
    H := 3.5 * W / 2;
    str (W:5:1,WS);
    str (H:5:1,HS);
    str ((HpRadius/20):5:3,WdS);
    str ((3*HpRadius/40):5:3,HdS);
    XPMitte := round(Xkoord * 400);
    YPMitte := round(YKoord * 400);
    Rint    := round(HpRadius * 400);
    if GeraetS <> 'DXF' then Plotte ('Sp1');
    if GeraetS <> 'DXF' then Zeichkreis (XPmitte, YPmitte,
                                         Rint,5)
    else
    begin
      Dxfp := 7;
      Dxfkreis (XKoord, YKoord, HpRadius);
    end;
  end;
  if GeraetS = 'Plotter' then
  begin
    X := round(Xkoord*100*Faktor);
    Y := round(Ykoord*100*Faktor);
    R := round(HpRadius*100*Faktor);
    with Canvas do
    begin
      Pen.Color   := Farbe;
      Brush.Style := bsClear;
      Ellipse (X-R, Y-R, X+R, Y+R);
      Pen.Color   := Farbe;
      Brush.Style := bsClear;
      if Kreuz then
      begin
        moveto (round(X-R/10), round(Y));
        lineto (round(X+R/10), round(Y));
        moveto (round(X), round(Y-R/10));
        lineto (round(X), round(Y+R/10));
      end;
    end;
  end;
  if Kreuz then
  begin
    if GeraetS = 'HPGL' then
    begin
      str (YPMitte:5,Y0S);
      str (XPMitte-round(40*HpRadius):6,X0S);
      str (XPMitte+round(40*HpRadius):6,X1S);
      str (YPMitte+round(40*HpRadius):6,YoS);
      str (XPMitte:5,XmitteS);
      str (YPMitte-round(40*HpRadius):6,Y2S);
      Plotte ('PU;PA'+X0S+','+Y0S+';');
      Plotte ('PD;PA'+X1S+','+Y0S+';PU;');
      Plotte ('PA'+XmitteS+','+YoS+';PD;');
      Plotte ('PA'+XmitteS+','+Y2S+';PU;');
    end;
    if GeraetS = 'DXF' then
    begin
      X1 := XKoord - HpRadius / 10;
      X2 := XKoord + HpRadius / 10;
      Y1 := YKoord - HpRadius / 10;
      Y2 := YKoord + HpRadius / 10;
      Dxflinie (X1,YKoord,X2,YKoord);
      Dxflinie (XKoord,Y1,XKoord,Y2);
    end;
  end;
  if GeraetS <> 'DXF' then HPFormate (Canvas, H,WS,HS,
                                      DiagnameS,WdS, HdS)
  else DXFFormate (Canvas, DiagnameS);
  Xmitte := AltXmitte;
  Ymitte := AltYmitte;
end;

procedure Zeichkreis (Xm, Ym, Rad:word; S:shortint);
var
  Bo        :real;
  XmitteS   : string[10];
  YmitteS   : string[10];
  XplusS    : string[10];
  YplusS    : string[10];
  R,Xan     : real;
  Yan       : real;
  An        : byte;
  i         : integer;
  YmplusrdS :string[10];
  PUDS      : string[4];
  Alpha     : real;
  X,Y       : integer;
  Xf,Yf     : real;

begin
  Bo := Pi / 180;
  R   := 0;
  Xan := 0;
  Yan := 0;
  if GeraetS = 'HPGL' then
  begin
    str (Xm,XmitteS);
    str (Ym,YmitteS);
    str (Ym+Rad,YmplusrdS);
    Plotte ('PU;PA'+XmitteS+','+YmplusrdS+';');
  end;
  if GeraetS = 'DXF' then
  begin
    R   := Rad / 600;
    Xan := Xm / 400;
    Yan := Ym / 400 + R;
  end;
  An := 0;
  if S =  90 then An := 45;
  if S = -90 then
  begin
    An := 90;
    S  := 90;
  end;
  i := An - S;
  repeat
    i := i + S;
    Alpha := i * Bo;
    X := round (Rad * sin (Alpha));
    Y := round (Rad * cos (Alpha));
    if (GeraetS = 'HPGL') or (GeraetS = 'Plotter') then
    begin
      str (X+Xm,XplusS);
      str (Y+Ym,YplusS);
      PUDS := 'PD;';
      if (i = An) and (S = 90) then PUDS := 'PU;';
      Plotte (PUDS+'PA'+XplusS+','+YplusS+';');
    end;
    if GeraetS = 'DXF' then
    begin
      Xf := R * sin (Alpha) + Xm / 400;
      Yf := R * cos (Alpha) + Ym / 400;
      if (i = An) and (S = 90) then
      begin
        Xan := Xf;
        Yan := Yf;
      end;
      Dxflinie (Xan, Yan, Xf, Yf);
      Xan := Xf;
      Yan := Yf;
    end;
  until i >= 360+An;
  if GeraetS = 'PLT' then Plotte ('PU;');
end;

procedure Farben (Canvas: TCanvas; Farb: TColor);
var
  FarbS    : string[1];
  SpS      : string[5];
  FarbeS   : string;
begin
  FarbeS := ColorToString(Farb);
  case Farb of
    $008080FF : FarbeS := 'clYellow';
    $0080FFFF : FarbeS := 'clYellow';
    $004080FF : FarbeS := 'clYellow';
    $0080FF80 : FarbeS := 'clGreen';
    $0080FF00 : FarbeS := 'clGreen';
    $0040FF00 : FarbeS := 'clGreen';
    $0000FF80 : FarbeS := 'clGreen';
    $00C08000 : FarbeS := 'clGreen';
    $00408000 : FarbeS := 'clGreen';
    $00004000 : FarbeS := 'clGreen';
    $00408080 : FarbeS := 'clGreen';
    $00400000 : FarbeS := 'clGreen';
    $000080FF : FarbeS := 'ClGreen';
    $00FFFF80 : FarbeS := 'clBlue';
    $00804000 : FarbeS := 'clBlue';
    $00FF8080 : FarbeS := 'clBlue;';
    $00A00000 : FarbeS := 'clBlue';
    $00FF0080 : FarbeS := 'clBlue';
    $00400040 : FarbeS := 'clBlue';
    $00808040 : FarbeS := 'clBlue';
    $00C080FF : FarbeS := 'clFuchsia';
    $00FF80FF : FarbeS := 'clFuchsia';
    $00400080 : FarbeS := 'clFuchsia';
    $008000FF : FarbeS := 'clFuchsia';
    $00404080 : FarbeS := 'clBlue';
    $00000040 : FarbeS := 'clBlue';
    $00004080 : FarbeS := 'clBlue';
    $00FF8000 : FarbeS := 'clBlack';
    $00C08080 : FarbeS := 'clBlack';
    $00404000 : FarbeS := 'clBlack';
    $00800040 : FarbeS := 'clBlack';
  end;
  if FarbeS = 'clLime' then FarbeS := 'clGreen';
  if FarbeS = 'clWhite' then FarbeS := 'clBlack';
  if (FarbeS <> 'clBlue') and (FarbeS<>'clRed')
     and (FarbeS<>'clGreen') and (FarbeS<>'clFuchsia')
     and (FarbeS<>'clYellow') then FarbeS := 'clBlack';
  if GeraetS = 'HPGL' then
  begin
    if FarbeS = 'clBlack'   then FarbS := '1';  {Schwarz}
    if FarbeS = 'clBlue'    then FarbS := '2';  {blau}
    if FarbeS = 'clRed'     then FarbS := '3';  {Rot}
    if FarbeS = 'clGreen'   then FarbS := '4';  {Grün}
    if FarbeS = 'clFuchsia' then FarbS := '5';  {violett}
    if FarbeS = 'clYellow'  then FarbS := '6';  {gelb}
    SpS := 'SP'+FarbS+';';
    Plotte (SpS);
  end;
  if GeraetS = 'DXF' then
  begin
    if FarbeS = 'clYellow'  then Dxfp :=  2;
    if FarbeS = 'clBlack'   then Dxfp :=  7;   {Schwarz}
    if FarbeS = 'clBlue'    then Dxfp :=  5;   {blau}
    if FarbeS = 'clRed'     then Dxfp :=  1;   {Rot}
    if FarbeS = 'clGreen'   then Dxfp :=  3;   {Grün}
    if FarbeS = 'clFuchsia' then Dxfp :=  6;   {Magenta}
    if FarbeS = 'clLime'    then Dxfp :=  3;   {Grün}
  end;
  if GeraetS = 'Plotter' then Farbe := Farb;
end;

procedure Dxfkreis (X,Y,R:real);
var
  DxfpS    :string[10];
  Rk,Xk,Yk : real;
begin
  str (Dxfp,DxfpS);
  DxfpS := '    ' + DxfpS;
  Rk := R * 10;
  Xk := X * 10;
  Yk := Y * 10;
  writeln (Pdatei, 'CIRCLE');
  writeln (Pdatei, 8);
  writeln (Pdatei, 0);
  writeln (Pdatei, 62);
  writeln (Pdatei, DxfpS);
  writeln (Pdatei, 10);
  writeln (Pdatei, Xk:6:2);
  writeln (Pdatei, 20);
  writeln (Pdatei, Yk:6:2);
  writeln (Pdatei, 30);
  writeln (Pdatei, 0);
  writeln (Pdatei, 40);
  writeln (Pdatei, Rk:6:2);
  writeln (Pdatei, 0);
end;

procedure Dxflinie (Xa,Ya,Xe,Ye:real);
var
  Xal,Yal : real;
  Xel,Yel : real;
  DxfpS   : string[10];
begin
  str (Dxfp,DxfpS);
  DxfpS :='    '+DxfpS;
  Xal := Xa * 10;
  Yal := Ya * 10;
  Xel := Xe * 10;
  Yel := Ye * 10;
  writeln (Pdatei, 'LINE');
  writeln (Pdatei, 8);
  writeln (Pdatei, 0);
  writeln (Pdatei, 62);
  writeln (Pdatei, DxfpS);
  writeln (Pdatei, 10);
  writeln (Pdatei, Xal:6:2);
  writeln (Pdatei, 20);
  writeln (Pdatei, Yal:6:2);
  writeln (Pdatei, 30);
  writeln (Pdatei, 0);
  writeln (Pdatei, 11);
  writeln (Pdatei, Xel:6:2);
  writeln (Pdatei, 21);
  writeln (Pdatei, Yel:6:2);
  writeln (Pdatei, 31);
  writeln (Pdatei, 0);
  writeln (Pdatei, 0);
end;

procedure Hpformate (Canvas: TCanvas;H:real; WS,HS,AaS,WdS,
                     HdS:string);
var
  X0,Y0   : word;
  XS,YS   : string[10];
  X0S,Y0S : string[10];
  TtS     : string[20];
  Y1S,X1S : string[10];
  XaS,YaS : string[10];
  ZahlS   : string[5];
  XPMitte : word;
  YPMitte : word;
  Rint    : word;
  Nord    :byte;
  NordS   : string[1];
  Breite  : word;
  TextS   : string[20];
begin
  TtS := Tx(440);                           {Daten}
  ZahlS := IntToStr(ZahlGlob);
  if GeraetS = 'HPGL' then
  begin
    XPMitte := round(Xkoord * 400);
    YPMitte := round(YKoord * 400);
    Rint    := round(HpRadius * 400);
    X0 := XPmitte;
    Y0 := YPMitte + Rint;
    str (X0,XS);
    str (Y0,YS);
    Plotte('Sp1');
    Plotte ('PU;PA'+XS+','+YS+';');    {oberster Punkt des Kreises}
    str (round(Y0+80*HpRadius),Y0S);
    str (X0,X0S);                      {oberster Punkt des Pfeiles}
    Plotte ('PD;PA'+X0S+','+Y0S+';PU;');
    str (round(X0-20*HpRadius),XS);
    str (round(Y0+60*HpRadius),YS);    {linker Punkt des Pfeiles}
    Plotte ('PA'+XS+','+YS+';PD;');
    Plotte ('PA'+X0S+','+Y0S+';');
    str (round(X0+20*HpRadius),XS);
    Plotte ('PA'+XS+','+YS+';PU;');
    str (round(X0-20*HpRadius),XS);
    str (round(Y0+20*HpRadius),YS);
    Plotte ('PA'+XS+','+YS+';PD;');
    str (round(Y0+50*HpRadius),YS);
    str (round(Y0+20*HpRadius),Y1S);
    str (round(X0+20*HpRadius),X1S);
    Plotte ('PA'+XS+','+YS+','+X1S+','+Y1S+','+X1S+','+YS+';PU;');
    str (XPMitte-Rint,XaS);
    str (round(YPMitte-Rint-2000*H/3),YaS);
    Plotte ('PA'+XAS+','+YAS+';');
    Plotte ('SI'+WS+','+HS+';');
    Plotte ('LB'+AaS+chr(3));
    if ZahlGlob <> 0 then
    begin
      str (XPMitte-Rint,XaS);
      str (YPMitte+Rint+40,YaS);
      DecimalSeparator := '.';
      Plotte ('SI'+WdS+','+HdS+';');
      str (ZahlGlob,ZahlS);
      Plotte ('PA'+XaS+','+YaS+';LB'+ZahlS+TtS+chr(3));
    end;
  end;
  if GeraetS = 'Plotter' then
  begin
    X0 := round(Xkoord*100*Faktor);
    Y0 := round((Ykoord)*100*Faktor);
    with Canvas do
    begin
      Nord        := round(HpRadius*3*Faktor/2);
      Font.Size   := Nord;
      Font.Color  := Farbe;
      Pen.Color   := Farbe;
      Brush.Style := BsClear;
      NordS  := 'N';
      Breite := TextWidth (NordS) div 2;
      Hoehe  := TextHeight(NordS);
      moveto (X0, round(Y0-HpRadius*100*Faktor));
      lineto (X0, round(Y0-HpRadius*100*Faktor-1.5*Hoehe));
      lineto (X0-Breite,round(Y0-HpRadius*100*Faktor-Hoehe));
      moveto (X0, round(Y0-HpRadius*100*Faktor-1.5*Hoehe));
      lineto (X0+Breite,round(Y0-HpRadius*100*Faktor-Hoehe));
      Textout (X0-Breite, round(Y0-HpRadius*100*Faktor-Hoehe), NordS);
      TextS := ZahlS + ' ' + TtS;
      Font.Size := round(2*HpRadius);
      if ZahlGlob <> 0 then
        Textout (round(X0-HpRadius*100*Faktor),
                 round(Y0-HpRadius*100*Faktor-10), TextS);
      Breite := TextWidth (AaS) div 2;
      Textout (X0-Breite, round(Y0-HpRadius*100*Faktor+2*HpRadius*100*Faktor
               +HpRadius*5), AaS);
      if Programm = 9 then PudS := 'PU;';
    end;
  end;
end;

procedure Dxfformate (Canvas: TCanvas; AaS:string);
var
  Y0,Y1,X2,Y2 : real;
  X3,Y4,Y5,H  : real;
  Xa,Ya,Xm,Ym : real;
  ZahlS,TextS : string[10];
begin
  Dxfp := 7;
  Xm   := XKoord;
  Ym   := YKoord;
  Farben (Canvas, PeriFarbe);
  Y0 := Ym + HpRadius;
  Y1 := Y0 + HpRadius / 5;
  Dxflinie (Xm,Y0,Xm,Y1);
  X2 := Xm - HpRadius / 20;
  Y2 := Y0 + 3 * HpRadius / 20;
  Dxflinie (X2,Y2,Xm,Y1);
  X3 := Xm + HpRadius / 20;
  Dxflinie (Xm,Y1,X3,Y2);
  Y4 := Y0 + HpRadius / 20;
  Y5 := Y0 + HpRadius / 8;
  Dxflinie (X2,Y4,X2,Y5);
  Dxflinie (X2,Y5,X3,Y4);
  Dxflinie (X3,Y4,X3,Y5);
  H  := 2 * HpRadius / 3;
  Xa := Xm - HpRadius;
  Ya := Ym - HpRadius - HpRadius / 8;
  Dxftext (Xa,Ya,H,AaS,'0.0');
  if ZahlGlob <> 0 then
  begin
    Ya := Ym + HpRadius +1 / 10;
    H  := HpRadius / 2;
    str (ZahlGlob,ZahlS);
    TextS := ZahlS + ' ' + Tx(441);                {Daten}
    Dxftext (Xa,Ya,H,TextS,'0.0');
  end;
end;

procedure Dxftext (Xa,Ya,H:real; TextS,WinkelS:string);
var
  DxfpS  : string[10];
  Xat,Yat : real;
begin
  str (Dxfp,DxfpS);
  DxfpS :=  '    ' + DxfpS;
  Xat := Xa * 10;
  Yat := Ya * 10;
  writeln (Pdatei, 'TEXT');
  writeln (Pdatei, 8);
  writeln (Pdatei, 0);
  writeln (Pdatei, 62);
  writeln (Pdatei, DxfpS);
  writeln (Pdatei, 10);
  writeln (Pdatei, Xat:6:2);
  writeln (Pdatei, 20);
  writeln (Pdatei, Yat:6:2);
  writeln (Pdatei, 30);
  writeln (Pdatei, 0.0:3:1);
  writeln (Pdatei, 40);
  writeln (Pdatei, H:6:2);
  writeln (Pdatei, 1);
  writeln (Pdatei, TextS);
  writeln (Pdatei, 50);
  writeln (Pdatei, WinkelS);
  writeln (Pdatei, 0);
end;

procedure Plot1 (Canvas: TCanvas);
var
  Bo      : real;
  i       : word;
  Az,Fa   : real;
  X,Y, Xa : real;
  Xpunkt  : word;
  Ypunkt  : word;
  Radius1 : word;
  Radius2 : word;
  Radius3 : word;
begin
  Bo := Pi / 180;
  for i := 1 to ZahlGlob do
  begin
    Az := AziFeld[i] * Bo;
    Fa := FalFeld[i] * Bo;
    if Gefuegetyp <> 1 then
    begin
      Az := Az + Pi;
      Fa := Pi / 2 - Fa;
    end;
    Hpkoordin (Az, Fa, X, Y);
    Xpunkt  := 0;
    Ypunkt  := 0;
    Radius1 := 0;
    Radius2 := 0;
    Radius3 := 0;
    if GeraetS <> 'Plotter' then
    begin
      Xpunkt  := round(400 * (Xkoord + X*HpRadius));
      Ypunkt  := round(400 * (YKoord + Y*HpRadius));
      Radius1 := round(400 * HpRadius / 100);
      Radius2 := round(400 * HpRadius / 150);
      Radius3 := round(400 * HpRadius / 300);
    end;
    if GeraetS = 'Plotter' then
    begin
      Xpunkt  := round (100*Faktor*(Xkoord+X*HpRadius));
      Ypunkt  := round (100*Faktor*(YKoord-Y*HpRadius));
      Radius1 := round (100*Faktor*HpRadius / 100);
    end;
    if Programm = 21 then
    begin
      if Talbot[i] then
      begin
        Datensymbol := SymbolKompression;
        DatenFarbe  := KompressionFarbe;
      end;
      if not Talbot[i] then
      begin
        DatenFarbe  := DehnungFarbe;
        Datensymbol := SymbolDehnung;
      end;
      Farben(Canvas, DatenFarbe);
    end;
    if GeraetS <> 'Plotter' then
    begin
      if DatenSymbol = 'OpenCircle' then Zeichkreis (Xpunkt,
                                         YPunkt,Radius1,36);
      if DatenSymbol = 'FilledCircle' then
      begin
        Zeichkreis (Xpunkt,Ypunkt,Radius1,36);
        Zeichkreis (Xpunkt,Ypunkt,Radius2,36);
        Zeichkreis (Xpunkt,Ypunkt,Radius3,36);
      end;
      if DatenSymbol = 'OpenSquare' then Zeichkreis (Xpunkt,
                                           Ypunkt,Radius1,90);
      if DatenSymbol = 'FilledSquare' then
      begin
        Zeichkreis (Xpunkt,Ypunkt,Radius1,90);  {Quadrat}
        Zeichkreis (Xpunkt,Ypunkt,Radius2,90);  {Quadrat}
        Zeichkreis (Xpunkt,Ypunkt,Radius3,90);
      end;
      if DatenSymbol = 'OpenTriangle' then Zeichkreis (Xpunkt,
                                         Ypunkt,Radius1,120);
      if DatenSymbol = 'FilledTriangle' then
      begin
        Zeichkreis (Xpunkt,Ypunkt,Radius1,120); {Dreieck}
        Zeichkreis (Xpunkt,Ypunkt,Radius2,120); {Dreieck}
        Zeichkreis (Xpunkt,Ypunkt,Radius3,120);
      end;
      if DatenSymbol = 'OpenDiamond' then Zeichkreis (Xpunkt,
                                         Ypunkt,Radius1,-90);
      if DatenSymbol = 'FilledDiamond' then
      begin
        Zeichkreis (Xpunkt,Ypunkt,Radius1,-90); {Raute}
        Zeichkreis (Xpunkt,Ypunkt,Radius2,-90); {Raute}
        Zeichkreis (Xpunkt,Ypunkt,Radius3,-90);
      end;
    end;
    if GeraetS = 'Plotter' then
    begin
      with Canvas do
      begin
        Pen.Color := Farbe;
        if DatenSymbol = 'OpenCircle' then
        begin
          Brush.Style := bsClear;
          ellipse (Xpunkt-Radius1,Ypunkt-Radius1,
                   Xpunkt+Radius1,Ypunkt+Radius1);
        end;
        if Datensymbol = 'FilledCircle' then
        begin
          Brush.Color := DatenFarbe;
          ellipse (Xpunkt-Radius1,Ypunkt-Radius1,
                   Xpunkt+Radius1,Ypunkt+Radius1);
        end;
        if DatenSymbol = 'OpenSquare' then
        begin
          Brush.Style := bsClear;
          Rectangle (Xpunkt-Radius1,Ypunkt-Radius1,
                     Xpunkt+Radius1,Ypunkt+Radius1);
        end;
        if DatenSymbol = 'FilledSquare' then
        begin
          Brush.Color := DatenFarbe;
          Rectangle (Xpunkt-Radius1,Ypunkt-Radius1,
                     Xpunkt+Radius1,Ypunkt+Radius1);
        end;
        if Datensymbol = 'OpenTriangle' then
        begin
          Brush.Style := bsClear;
          Polygon([Point(Xpunkt,Ypunkt-Radius1),
                   Point(Xpunkt-Radius1,Ypunkt+Radius1),
                   Point(Xpunkt+Radius1,Ypunkt+Radius1)]);
        end;
        if Datensymbol = 'FilledTriangle' then
        begin
          Brush.Color := DatenFarbe;
          Polygon([Point(Xpunkt,Ypunkt-Radius1),
                   Point(Xpunkt-Radius1,Ypunkt+Radius1),
                   Point(Xpunkt+Radius1,Ypunkt+Radius1)]);
        end;
        if DatenSymbol = 'OpenDiamond' then
        begin
          Brush.Style := bsClear;
          Polygon ([Point(Xpunkt,Ypunkt-Radius1),
                    Point(Xpunkt+Radius1,Ypunkt),
                    Point(Xpunkt,Ypunkt+Radius1),
                    Point(Xpunkt-Radius1,Ypunkt)]);
        end;
        if DatenSymbol = 'FilledDiamond' then
        begin
          Brush.Color := DatenFarbe;
          Polygon ([Point(Xpunkt,Ypunkt-Radius1),
                    Point(Xpunkt+Radius1,Ypunkt),
                    Point(Xpunkt,Ypunkt+Radius1),
                    Point(Xpunkt-Radius1,Ypunkt)]);
        end;
      end;
    end;
  end;
  Farben (Canvas, DatenFarbe);
end;

procedure Hpkoordin (Az, Fa: real; var X, Y: real);
var
  Wu,Ri : real;
  Ou    : shortint;
begin
  Ri := 0;
  Wu := sqrt(2);
  OU := 0;
  if ObenUntenS = 'LOWER' then OU :=  1;
  if ObenUntenS = 'UPPER' then OU := -1;
  if ProjektionS = 'stereographic' then Ri := Tan ((Pi / 2 - Fa) / 2);
  if ProjektionS = 'Lambert' then Ri := Wu * sin((Pi / 2 - Fa) / 2);
  if ProjektionS = 'orthographic' then Ri := cos(Fa);
  if ProjektionS = 'Kavraiskii' then Ri := (Pi - 2* Fa)/Pi;
  Y := Ri * cos(Az)*Ou;
  X := Ri * sin(Az)*Ou;
end;

procedure Hppunkt (Canvas: TCanvas; X, Y: real; ZS: string);
var
  Xp, Yp, H : real;
  Xpunkt    : word;
  YPunkt    : word;
  Radius    : word;
  RichtungS : string[6];
  XS, YS    : string[10];
  WinkelS   : string;
  XPMitte   : word;
  YPMitte   : word;
  Rint      : word;
  Breite    : word;
  Hoehe, ZG : word;
begin
  if GeraetS <> 'Plotter' then
  begin
    XPMitte := round(XKoord*400);
    YPMitte := round(YKoord*400);
    Rint    := round(HpRadius*400);
    Xp := X;
    Yp := Y;
    RichtungS := 'DI1,0';
    WinkelS := '0.0';
    if GeraetS = 'HPGL' then
    begin
      str (round(Xp*Rint+XPMitte),XS);   {+50}
      str (round(Yp*Rint+YPMitte),YS);   {+45}
      Plotte ('PU;'+RichtungS+'SM'+ZS+';PA'+XS+','+YS+';SM;');
    end;
    if GeraetS = 'DXF' then
    begin
      H := Rint / 400;
      if ZS = '.' then
      begin
        Xp :=(Xp*Rint+XPMitte)/400;
        Yp :=(Yp*Rint+YPMitte)/400;
        Dxfkreis (Xp,Yp,H/100);        {original H!/200}
      end
      else
      begin
        Xp := (Xp*Rint+XPMitte)/400-H/60;
        Yp := (YP*Rint+YPMitte)/400-H/40;
        Dxftext (Xp,Yp,H/2,ZS,WinkelS);
      end;
    end;
  end;
  if GeraetS = 'Plotter' then
  begin
    XPMitte := round(XKoord*100*Faktor);
    YPMitte := round(YKoord*100*Faktor);
    Rint    := round(HpRadius*100*Faktor);
    Radius  := round (Faktor*HpRadius);
    XPunkt  := XPMitte + round(Rint*X);
    YPunkt  := YPMitte - round(Rint*y);
    with Canvas do
    begin
      Pen.Color := Farbe;
      Breite := TextWidth (ZS);
      Hoehe  := TextHeight (ZS);
      ZG     := round(Rint/80);
      Font.size := ZG;
      Textout (Xpunkt-Breite div 2, Ypunkt-Hoehe div 2, ZS);
    end;
  end;
end;

procedure Hpgrosskreis (Canvas: TCanvas; Aa,Ff:real);
var
  Az, Xende   : real;
  Yende, X, Y : real;
begin
  setlength (Xver1Feld, 5000);
  setlength (Xver2Feld, 5000);
  setlength (Yver1Feld, 5000);
  setlength (Yver2Feld, 5000);
  Zaehler := 0;
  Az := Aa + Pi / 2;
  Hpkoordin (Az, 0, X, Y);
  PudS := ';PU;';
  Hpline (Canvas, X,Y);
  Hprotation (Canvas, Az,0,Aa,Ff,0,180,5,1,Xende,Yende);
  Aa := Az + Pi;
  Hpkoordin (Aa, 0, X, Y);
  Hpline (Canvas, X,Y);
  if GeraetS = 'DXF' then Dxfvertex;
  Xver1Feld := Nil;
  Xver2Feld := Nil;
  Yver1Feld := Nil;
  Yver2Feld := Nil;
end;

procedure Hpline (Canvas: TCanvas; X,Y:real);
var
  Xp,Yp   : real;
  XS,YS   : string[10];
  XPMitte : word;
  YPMitte : word;
  Rint    : word;
begin
  if GeraetS <> 'Plotter' then
  begin
    XPMitte := round(XKoord*400);
    YPMitte := round(YKoord*400);
    Rint    := round(HpRadius*400);
  end;
  if GeraetS = 'Plotter' then
  begin
    XPMitte := round(XKoord*100*Faktor);
    YPMitte := round(YKoord*100*Faktor);
    Rint    := round(HpRadius*100*Faktor);
  end;
  inc (Zaehler);
  Xp := X;
  Yp := Y;
  if GeraetS <> 'Plotter' then
  begin
    if abs(Xp) < 0.0001 then Xp := 0;
    if abs(Yp) < 0.0001 then Yp := 0;
    if GeraetS = 'HPGL' then
    begin
      str (round(Xp*Rint+XPMitte),XS);
      str (round(Yp*Rint+YPMitte),YS);
      Plotte ( PudS+'PA'+XS+','+YS+';');
    end;
  end;
  if GeraetS = 'DXF' then
  begin
    if RightS (PudS,3) = 'PU;' then Dxfpud := 0 else Dxfpud := 1;
    Xver1Feld[Zaehler] := (Xp*Rint+XPMitte)/400;
    Yver1Feld[Zaehler] := (Yp*Rint+YPMitte)/400;
    Xver2Feld[Zaehler] := Dxfpud;
    Yver2Feld[Zaehler] := Dxfp;
  end;
  if GeraetS = 'Plotter' then
  begin
    with Canvas do
    begin
      Pen.Color := Farbe;
      if RightS (PudS,3) = 'PU;' then
        Moveto (XpMitte+round(X*Rint),YpMitte-round(Y*Rint));
      if RightS (PudS,3) = 'PD;' then
        Lineto (XpMitte+round(X*Rint),YpMitte-round(Y*Rint));
    end;
  end;
end;

procedure Hprotation (Canvas: TCanvas; Az,F:real; Da,Df:real;
                      An,Wi,S,M:integer; var X,Y:real);
var
  Yy       : array[0..3] of real;
  Bo,X4,X5 : real;
  X6,A1,B1 : real;
  E1,E2,E3 : real;
  G,C1,Ta  : real;
  D        : array[0..3, 0..3] of real;
  j        : integer;
  i        : byte;
  Fi,Xl,Yl : real;
  Aa,Ff    : real;
begin
  Ta := 0;
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
  repeat
    j      := j + S;
    G      := j * Bo;
    A1     := cos(G);
    B1     := 1 - A1;
    C1     := sin(G);
    D[1,1] := A1 + B1 * sqr(E1);
    D[1,2] := B1 * E1 * E2 - C1 * E3;
    D[1,3] := B1 * E1 * E3 + C1 * E2;
    D[2,1] := B1 * E1 * E2 + C1 * E3;
    D[2,2] := A1 + B1 * sqr(E2);
    D[2,3] := B1 * E2 * E3 - C1 * E1;
    D[3,1] := B1 * E1 * E3 - C1 * E2;
    D[3,2] := B1 * E2 * E3 + C1 * E1;
    D[3,3] := A1 + B1 * sqr(E3);
    for i := 1 to 3 do Yy[i] :=D[i,1] * X4 + D[i,2] * X5 + D[i,3] * X6;
    if Yy[1] = 0 then
    begin
      Ta := Pi/2;
      if Yy[2] < 0 then Ta := Ta * 3;
    end;
    if Yy[3] < 0 then
    begin
      Yy[1] := -Yy[1];
      Yy[2] := -Yy[2];
      Yy[3] := -Yy[3];
    end;
    if Yy[1] <> 0 then Ta := arctan (Yy[2]/Yy[1]);
    if Yy[1] <= 0 then Ta := Ta + Pi;
    if Yy[3] > 0.99999 then Fi := 0
    else Fi := Pi / 2 - arctan(Yy[3] / sqrt(1 - sqr(Yy[3])));
    Aa := Ta;
    Ff := Pi/2 - Fi;
    Hpkoordin (Aa,Ff,X,Y);
    if (j = An) or (j = Wi) then PudS := ';PU;' else PudS := ';PD;';
    if Wi <> 180 then
    begin
      if sqr(Y - Yl) + sqr(X - Xl) > 1 then PudS := ';PU;';
      Hpline (Canvas, X,Y);
    end
    else if sqr(X - Xl) + sqr(Y - Yl) < 0.99 then
      Hpline (Canvas, X,Y);
    Xl := X;
    Yl := Y;
  until abs(j) >= abs(Wi-S);
  if GeraetS = 'HPGL' then Plotte ('PU;');
end;

procedure Dxfvertex;
var
  Xa,Ya  : real;
  i      : word;
  Xe,Ye  : real;
  DxffpS : string[10];
begin
  for i := 1 to Zaehler  do   //Zaehler-1
  begin
    Xa := Xver1Feld[i] * 10;
    Ya := Yver1Feld[i] * 10;
    Xe := Xver1Feld[i+1] * 10;
    Ye := Yver1Feld[i+1] * 10;
    str (Yver2Feld[i],DxffpS);
    DxffpS := '    '+ DxffpS;
    if Xver2Feld[i+1] = 0 then Dxfpunkt (Xe,Ye)
    else
    begin
      writeln (Pdatei, 'LINE');
      writeln (Pdatei, 8);
      writeln (Pdatei, '0');
      writeln (Pdatei, 62);
      writeln (Pdatei, DxffpS);
      writeln (Pdatei, 10);
      writeln (Pdatei, Xa:6:2);
      writeln (Pdatei, 20);
      writeln (Pdatei, Ya:6:2);
      writeln (Pdatei, 30);
      writeln (Pdatei, 0.0:3:1);
      writeln (Pdatei, 11);
      writeln (Pdatei, Xe:6:2);
      writeln (Pdatei, 21);
      writeln (Pdatei, Ye:6:2);
      writeln (Pdatei, 31);
      writeln (Pdatei, 0.0:3:1);
      writeln (Pdatei, 0);
    end;
  end;
end;

procedure Dxfpunkt (X,Y:real);
begin
  writeln (Pdatei, 'POINT');
  writeln (Pdatei, 8);
  writeln (Pdatei, '0');
  writeln (Pdatei, 10);
  writeln (Pdatei, X:6:2);
  writeln (Pdatei, 20);
  writeln (Pdatei, Y:6:2);
  writeln (Pdatei, 30);
  writeln (Pdatei, 0.0:3:1);
  writeln (Pdatei, 0);
end;

procedure Hpkleinkreis (Canvas: TCanvas; Aa, Ff, Ow: real);
var
  A,F,Da,Df   : real;
  X,Y         : real;
  Xende,Yende : real;
begin
  setlength (Xver1Feld, 5000);
  setlength (Xver2Feld, 5000);
  setlength (Yver1Feld, 5000);
  setlength (Yver2Feld, 5000);
  Zaehler := 0;
  A  := Aa;
  Da := A;
  Df := Ff;
  F  := Ff + Ow;
  if F > Pi / 2 then
  begin
    F := Pi - F;
    A := A  + Pi;
  end;
  Hprotation (Canvas, A,F,Da,Df,0,360,5,1,Xende,Yende);
  Hpkoordin (A,F,X,Y);
  Hpline (Canvas, X,Y);
  if GeraetS = 'DXF' then Dxfvertex;
  Xver1Feld := Nil;
  Xver2Feld := Nil;
  Yver1Feld := Nil;
  Yver2Feld := Nil;
end;

procedure Hpmaximum (Canvas: TCanvas; Np:real);
var
  NpS     : string[10];
  MaxiS   : string[20];
  XS,YS   : string[10];
  RichS   : string[6];
  WS      : string[6];
  X,Y,H   : real;
  Co      : integer;
  XPMitte : word;
  YPMitte : word;
  Rint    : word;
  Breite  : word;
  AnfangX : word;
  AnfangY : word;
begin
  str (Np:5:1,NpS);
  MaxiS := 'Max:'+ NpS;
  if GeraetS <> 'Plotter' then
  begin
    XPMitte := round(Xkoord*400);
    YPMitte := round(YKoord*400);
    Rint    := round(HpRadius*400);
    str (round(XPMitte+Rint/4),XS);
    str (round(YPMitte+Rint+Rint/60),YS);
    RichS := 'DI1,0';
    WS := '0.0';
    if GeraetS = 'HPGL' then
      Plotte ('PU;PA'+XS+','+YS+';LB'+MaxiS+chr(3));
    if GeraetS = 'DXF' then
    begin
      val (XS,X,Co);
      X := X/400;
      val (YS,Y,Co);
      Y := Y/400;
      H := Rint/800;
      Dxftext (X,Y,H,MaxiS,WS);
    end;
  end;
  if GeraetS = 'Plotter' then
  begin
    XPMitte := round(Xkoord*100*Faktor);
    YPMitte := round(YKoord*100*Faktor);
    Rint    := round(HpRadius*100*Faktor);
    with Canvas do
    begin
      Font.Size   := round(HpRadius*Faktor);
      Brush.Color := clWhite;
      Font.Color  := clBlack;
      Breite      := TextWidth (MaxiS);
      AnfangX     := XpMitte+Rint-Breite;
      AnfangY     := YpMitte-Rint+10;
      Textout (AnfangX, AnfangY, MaxiS);
    end;
  end;
end;

procedure HPVerbindungslinie (Canvas: Tcanvas;
                              Xneu,Yneu:real);
var
  Xp,Yp   : real;
  X2S,Y2S : string[10];
  XPMitte : word;
  YPMitte : word;
  Rint    : word;
  X, Y    : word;
begin
  Xp := Xneu;
  Yp := Yneu;
  if GeraetS <> 'Plotter' then
  begin
    XPMitte := round(XKoord*400);
    YPMitte := round(YKoord*400);
    Rint    := round(HpRadius*400);
    str (round(Xp*Rint+XPMitte),X2S);
    str (round(Yp*Rint+YPMitte),Y2S);
    if GeraetS = 'HPGL' then
      Plotte (PudS+'PA'+X2S+','+Y2S+';');
    if GeraetS = 'DXF' then Hpline (Canvas, Xneu,Yneu);
  end;
  if GeraetS = 'Plotter' then
  begin
    with Canvas do
    begin
      XPMitte := round(XKoord*100*Faktor);
      YPMitte := round(YKoord*100*Faktor);
      Rint    := round(HpRadius*100*Faktor);
      X       := round(Xp*Rint+XpMitte);
      Y       := round(YpMitte-Yp*Rint);
      if PudS = 'PU;' then moveto (X, Y);
      if PudS = 'PD;' then lineto (X, Y);
    end;
  end;
end;

procedure Hpteilkreis (Canvas: TCanvas; Aq:array of word;
                       Fq:array of shortint; Cr:byte;
                       R:shortint; Prog:byte;
                       var Xkreis,Ykreis:real);
var
  Bo,X,Y      : real;
  A,F,Da,Df   : real;
  Wi,S,An     : integer;
  m,Zz        : byte;
  L1,L2,X1,Y1 : real;
  Xende,Yende : real;
  X2,Y2       : real;
  Pr          : string[15];
begin
  setlength (Xver1Feld, 5000);
  setlength (Xver2Feld, 5000);
  setlength (Yver1Feld, 5000);
  setlength (Yver2Feld, 5000);
  Zaehler := 0;
  Bo := Pi / 180;
  A  := Aq[3] * Bo;
  F  := Fq[3] * Bo;
  DA := Aq[1] * Bo;
  Df := Fq[1] * Bo;
  S  := 4;
  Wi := S + Cr div 2;
  An := 4;
  Zz := 1;
  if Prog = 14 then
  begin
    S  := 1;
    An := 2;
  end;
  Pr := ProjektionS;
  ProjektionS := 'Lambert';
  Hpkoordin (A,F,X,Y);
  ProjektionS := Pr;
  for m := 1 to 2 do
  begin
    if m = 2 then
    begin
      S  := -S;
      Wi := -Wi;
      An := -An;
    end;
    Xende := 0;
    Yende := 0;
    Pr := ProjektionS;
    ProjektionS := 'Lambert';
    Hprotation (Canvas,A,F,Da,Df,An,Wi,S,M,Xende,Yende);
    ProjektionS := Pr;
    if Prog = 14 then
    begin
      if m = 1 then
      begin
        X1 := Xende;
        Y1 := Yende;
      end;
      if m = 2 then
      begin
        X2 := Xende;
        Y2 := Yende;
      end;
    end;
  end;
  m := 1;
  if Prog = 14 then
  begin
    L1 := sqrt(X1*X1 + Y1*Y1);
    L2 := sqrt(X2*X2 + Y2*Y2);
    if L1 < L2 then begin
      if R < 0 then
      begin
	Xkreis := X1;
        Ykreis := Y1;
      end
      else
      begin
	Xkreis := X2;
        Ykreis := Y2;
      end;
    end
    else
    begin
      if R < 0 then
      begin
	Xkreis := X2;
        Ykreis := Y2;
      end
      else
      begin
	Xkreis := X1;
        Ykreis := Y1;
      end;
    end;
  end;
  if GeraetS ='DXF' then Dxfvertex;
  Xver1Feld := Nil;
  Xver2Feld := Nil;
  Yver1Feld := Nil;
  Yver2Feld := Nil;
end;

procedure Legende (Canvas: TCanvas; IsolinS:string;
                   IsoZeil:word);

var
  Dist   : shortint;
  Co     : integer;
  Isolin : real;
  XS,YS  : string[10];
  RichS  : string[6];
  X,Y,H  : real;
  WiS    : string[5];
  AaS    : string[3];
  TextS  : string;
  Rint   : word;
  Xx, Yy : integer;
  AltX   : word;
  AltY   : word;
begin
  AltX := Xmitte;
  AltY := Ymitte;
  if GeraetS <>'Plotter' then
  begin
    XMitte := round(XKoord*400);
    YMitte := round(YKoord*400);
    Rint   := round(HpRadius*400);
  end;
  if GeraetS ='Plotter' then
  begin
    XMitte := round(XKoord*100*Faktor);
    YMitte := round(YKoord*100*Faktor);
    Rint   := round(HpRadius*100*Faktor);
  end;
  Dist := 100;
  val (IsolinS,Isolin,Co);
  if Isolin >9.99 then Dist :=  0
  else Dist := -50;
  if GeraetS <> 'Plotter' then
  begin
    str (round(Xmitte+Rint+Dist),XS);
    X := (Xmitte+Rint+Dist)/400;
    str (round(Ymitte-2.5*Rint/4-Isozeil),YS);
    RichS := 'DI1,0';
    Y := (Ymitte-Rint/2-Isozeil)/400;
    WiS := '0.0';
    if GeraetS = 'HPGL' then
      Plotte ('PU;PA'+XS+','+YS+';'+RichS+'SI0.3,0.5;'+'LB'
              +IsolinS+chr(3));
    if GeraetS = 'DXF' then
    begin
      H := Rint/800;
      if length (IsolinS) = 3 then AaS := '' else AaS := ' ';
      TextS := AaS + IsolinS;
      Dxftext (X,Y,H,IsolinS,WiS);
    end;
  end;
  if GeraetS = 'Plotter' then
  begin
    with Canvas do
    begin
      Font.Size  := round(HPRadius*Faktor);
      Breite := TextWidth(IsolinS);
      Xx := round(Xmitte+Rint-Breite);
      Yy := round(Ymitte+Rint-(Isozeil/200)*TextHeight(IsolinS));
      Font.Color := Farbe;
      Textout (Xx, Yy, IsolinS);
    end;
  end;
  Xmitte := AltX;
  Ymitte := AltY;
end;

procedure Hpmaxmin (Cmax,Cmin:word);
var
  CmaxS,CminS : string[10];
  MaximS      : string[20];
  MinimS      : string[20];
  XS,YS,X2S   : string[10];
  Y2S,RichS   : string[10];
  WiS         : string[6];
  X,Y,H       : real;
  Co          : integer;
  Rint, Y2    : word;
  Xx, Yy, X2  : word;
  AltX, AltY  : word;
begin
  AltX := Xmitte;
  AltY := Ymitte;
  str (Cmax,CmaxS);
  str (Cmin,CminS);
  MaximS := 'Max.: '+ CmaxS;
  MinimS := 'Min.: '+ CminS;
  if GeraetS ='Plotter' then
  begin
    XMitte := round(XKoord*100*Faktor);
    YMitte := round(YKoord*100*Faktor);
    Rint   := round(HpRadius*100*Faktor);
  end;
  if GeraetS <> 'Plotter' then
  begin
    XMitte := round(XKoord*400);
    YMitte := round(YKoord*400);
    Rint   := round(HpRadius*400);
    str (round(Xmitte+Rint/2),XS);
    str (round(Ymitte+Rint+Rint/60),YS);
    RichS := 'DI1,0;';
    str (round(Ymitte+Rint+Rint/60-200),Y2S);
    X2S := XS;
    WiS := '0.0';
    if GeraetS = 'HPGL' then
    begin
      Plotte ('PU;PA'+XS+','+YS+';'+RichS+'SI;'
              +'LB'+MaximS+chr(3));
      Plotte ('PU;PA'+X2S+','+Y2S+';'+RichS+'SI;'
              +'LB'+MinimS+chr(3));
    end;
    If GeraetS = 'DXF' then
    begin
      val (XS,X,Co);
      val (YS,Y,Co);
      X := X / 400;
      Y := Y / 400;
      H := Rint / 800;
      Dxftext (X,Y,H,MaximS,WiS);
      val (X2S,X,Co);
      val (Y2S,Y,Co);
      X := X / 400;
      Y := Y / 400;
      Dxftext (X,Y,H,MINIMS,WIS);
    end;
  end;
  if GeraetS = 'Plotter' then
  begin
    with Printer.Canvas do
    begin
      Font.Size := round(HpRadius*Faktor);
      Xx := round(Xmitte+2*Rint/3);
      Yy := round(Ymitte-Rint);
      Y2 := round(Ymitte-Rint+Rint/10);
      X2 := Xx;
      Textout  (Xx, Yy, MaximS);
      Textout  (X2, Y2, MinimS);
    end;
  end;
  Xmitte := AltX;
  Ymitte := AltY;
end;

procedure Xskallin (Canvas: TCanvas; Programm:byte;
                    Xanfang,Yanfang,Laenge:real;
                    Teile:byte; Tick:real);
var
  XanS,YanS  : string;
  Abstand    : real;
  Minus      : byte;
  XtickS     : string[10];
  Xtick1S    : string[10];
  i          : word;
  Ticks      : string[10];
  Xende      : real;
  Xan, Yan   : real;
  Yende      : real;
  Xa, Ya     : word;
  XTick      : word;
  Tick0      : word;
  XTick1     : word;
begin
  Abstand := Laenge / Teile;
  if (Programm = 10) or (Programm = 18) then Minus := 1;
  if (Programm = 13) or (MethodeS = 'Iteration') then Minus := 0;
  if GeraetS <> 'Plotter' then
  begin
    str ((Xanfang*400):6:2,XanS);
    str ((Yanfang*400):6:2,YanS);
    for i := 1 to Teile - Minus do
    begin
      str ((400*(Xanfang+i*Abstand)):6:2,XtickS);
      str ((Yanfang*400+200*Tick):6:2,TickS);
      Xtick1S := XtickS;
      Yende := Yanfang + Laenge / 40;
      Xan := Xanfang + i * Abstand;
      Xende := Xan;
      Yan := Yanfang;
      if GeraetS = 'HPGL' then
        Plotte ('PU;PA'+XtickS+','+YanS+';PD'+Xtick1S+','
                +TickS+';PU;');
      if GeraetS = 'DXF' then Dxflinie (Xan,Yan,Xende,Yende);
    end;
  end;
  if GeraetS = 'Plotter' then
  begin
    with Canvas do
    begin
      Pen.Color := Farbe;
      Xa := round(Xanfang*100*Faktor);
      Ya := round((Yanfang+Laenge)*100*Faktor);
      for i := 1 to Teile - Minus do
      begin
        XTick  := round(100*Faktor*(Xanfang+i*Abstand));
        Tick0  := round(Ya-50*Faktor*Tick);
        XTick1 := XTick;
        moveto (XTick, Ya);
        lineto (Xtick1, Tick0);
      end;
    end;
  end;
end;

procedure Yskallin (Canvas: TCanvas; Programm:byte;
                    Xanfang,Yanfang, Laenge:real;
                    Teile:byte; Tick:real);
var
  XanS,YanS  : string;
  Abstand    : real;
  Minus      : byte;
  XenS,YenS  : string[10];
  YtickS     : string[10];
  TickS      : string[10];
  i          : word;
  Xende,Xan  : real;
  Yende,Yan  : real;
  TickY      : word;
  YTick      : word;
  Xanf       : word;
  Xanw, Xenw : word;
  Yanw, Yenw : word;
begin
  Abstand := Laenge / Teile;
  if Programm <> 18 then
  begin
    str ((Xanfang*400):6:2,XanS);
    str ((Yanfang*400):6:2,YanS);
    if Programm = 10 then Minus := 1;
    if Programm = 13 then Minus := 0;
    if MethodeS = 'Iteration' then Minus := 0;
    if GeraetS <> 'Plotter' then
    begin
      str ((Xanfang*400+200*Tick):6:2,TickS);
      for i := 1 to Teile - Minus do
      begin
        str ((400*(Yanfang+i*Abstand)):6:2,YtickS);
        if GeraetS = 'HPGL' then
          Plotte ('PU;PA'+XanS+','+YtickS+';PD;PA'+TickS+','
                  +YtickS+';PU;');
        if GeraetS = 'DXF' then
        begin
          Xende := Xanfang + Laenge / 40;
          Yan   := Yanfang + i * Abstand;
          Dxflinie (Xanfang,Yan,Xende,Yan);
        end;
      end;
    end;
    if GeraetS = 'Plotter' then
    begin
      TickY := round (Faktor*(Xanfang*100+50*Tick));
      Xanf  := round(100*Faktor*XAnfang);               
      with Printer.Canvas do
      begin
        Pen.Color := Farbe;
        for i := 1 to Teile - Minus do
        begin
          YTick := round(Faktor*100*(Yanfang+i*Abstand));
          moveto (Xanf,YTick);
          lineto (TickY,YTick);
        end;
      end;
    end;
  end;
  if Programm = 18 then
  begin
    if GeraetS <> 'Plotter' then
    begin
      Xan := Xanfang;
      Xende := Xanfang + Laenge / (4*Laenge);
      str ((400*Xanfang):6:2,XanS);
      str ((400*(Xanfang + Tick/2)):6:2,XenS);
      for i := 1 to Teile - 1 do
      begin
        str ((400*(Yanfang+i*Abstand)):6:2,YanS);
        YenS := YanS;
        Yan := Yanfang + i*Abstand;
        Yende := Yan;
        if GeraetS = 'HPGL' then
          Plotte ('PU;PA'+XanS+','+YanS+';PD;PA'+XenS+','
                  +YenS+';PU;');
        if GeraetS = 'DXF' then
          Dxflinie (Xan, Yan, Xende, Yende);
      end;
    end;
    if GeraetS = 'Plotter' then
    begin
      Xan   := Xanfang;
      Xende := Xan + Laenge / (4*Laenge);
      Xanw  := round(100*Faktor*Xanfang);
      Xenw  := round(100*Faktor*(Xanfang + Tick/2));
      Canvas.Pen.Color := Farbe;
      for i := 1 to Teile - 1 do
      begin
        Yanw := round(100*Faktor*(Yanfang+i*Abstand));
        Yenw := Yanw;
        Yan := Yanfang + i*Abstand;
        Yende := Yan;
        Canvas.Moveto (Xanw, Yanw);
        Canvas.Lineto (Xenw, Yenw);
      end;
    end;
  end;
end;

procedure Xhpschrift (Canvas: TCanvas; Programm:byte;
                      RichtungS:string;
                      XNull,YNull,Laenge:real;
                      Ende,Teile:word);
var
  Einheit   : real;
  Wschrift  : real;
  Hschrift  : real;
  WschriftS : string[10];
  HschriftS : string[10];
  Minus     : byte;
  FaktorX   : real;
  X,Y,H     : real;
  YzahlS,YS : string[10];
  i         : word;
  ZahlS,XS  : string[10];
  DistanzS  : string[10];
  Co        : integer;
  WinkelS   : string[6];
  RgS       : string;
  Abstand   : real;
  SymbolS   : string[10];
  Zahl, XW  : word;
  Distanz   : word;
  XPlotter  : word;
  YPlotter  : word;
  YZahlW    : word;
  YAbstand  : real;
  Distanzw  : word;
  SFaktor   : real;
begin
  Einheit  := Laenge / Teile;
  Wschrift := Laenge / 50;
  Hschrift := Laenge / 40;
  str (Wschrift:6:2,WschriftS);
  str (Hschrift:6:2,HschriftS);
  if Programm = 10 then
  begin
    Minus   := 1;
    FaktorX := Ende / Teile;
  end;
  if Programm = 13 then
  begin
    Minus   := 0;
    FaktorX := 1;
  end;
  if MethodeS = 'Iteration' then
  begin
    Minus := 1;
    FaktorX := 1/10;
  end;
  if Programm <> 18 then
  begin
    if GeraetS <> 'Plotter' then
    begin
      str ((400*(YNull-0.05*Laenge)):6:2,YzahlS);
      if GeraetS = 'HPGL' then Plotte (RichtungS+';SI'
                               +WschriftS+','+HschriftS+';');
      for i := 1 to Teile - Minus do
      begin
        str (round(i*FaktorX),ZahlS);
        if Programm = 17 then ZahlS := FloatToStrF(i/10,ffFixed,7,1);
        str ((400*(XNull+i*Einheit)):6:2,DistanzS);
        str ((400*(YNull-Laenge/20)):6:2,YzahlS);
        if GeraetS = 'HPGL' then
          Plotte ('PA'+DistanzS+','+YzahlS+
                  'LB'+ZahlS+chr(3));
        if GeraetS = 'DXF' then
        begin
          val (DistanzS,X,Co);
          X := X / 400;
          val (YzahlS,Y,Co);
          Y := Y / 400;
          H := Laenge / 5;
          WinkelS := '0.0';
          Dxftext (X,Y,H,ZahlS,WinkelS);
        end;
      end; {for}
    end; {if GeraetS <> Plotter}
    if GeraetS = 'Plotter' then
    begin
      if Programm = 10 then YAbstand := Laenge/40;
      if Programm = 13 then YAbstand := Laenge/60;
      if Programm = 18 then YAbstand := Laenge/15;
      YZahlW := round(100*Faktor*(YNull+YAbstand));
      Canvas.Font.Color := Farbe;
      Canvas.Font.Size  := round(Laenge);
//      Canvas.Font.Size  := round(Laenge);
      for i := 1 to Teile - Minus do
      begin
        Zahl    := round(i*FaktorX);
        Distanz := round(100*Faktor*(XNull+i*Einheit));
        Zahls := IntToStr (Zahl);
        Printer.Canvas.Textout (Distanz, YZahlW+5,ZahlS);
      end; {for}
    end; {if GeraetS = Plotter}
  end;
  if Programm = 10 then
  begin
    if GeraetS <> 'Plotter' then
    begin
      if GeraetS = 'HPGL' then
      begin
        str ((400*(XNull+Laenge)):6:2,XS);
        Plotte ('PA'+XS+','+YzahlS+'LB'+'G%'+chr(3));
      end;
      if GeraetS = 'DXF' then
      begin
        X := XNull + Laenge;
        val (YzahlS,Y,Co);
        Y := Y / 400;
        H := Laenge / 5;
        Dxftext (X,Y,H,'G%',WinkelS);
      end;
    end;
    if GeraetS = 'Plotter' then
    begin
      XPlotter := round(100*Faktor*(XNull+Laenge));
      YPlotter := round(100*Faktor*(YNull+Laenge/20));
      Canvas.Font.Size := round(Laenge);
      Printer.Canvas.Textout(XPlotter, YPlotter,'G%');
    end;
  end;
  if Programm = 13 then
  begin
    Abstand := Laenge / 10;
    str ((400*(XNull+Laenge+Abstand)):6:2,XS);
    YS := YzahlS;
    if GeraetS = 'HPGL' then
      Plotte ('PA'+XS+','+YS+'LB'+'ln(E2/E1)'+chr(3));
    if GeraetS = 'DXF' then
    begin
      val (Xs,X,Co);
      X := X / 400;
      val (Ys,Y,Co);
      Y := Y / 400;
      H := Laenge / 5;
      SymbolS := 'ln(E2/E1)';
      Dxftext (X,Y,H,SymbolS,'0.0');
    end;
    if GeraetS = 'Plotter' then
    begin
      Abstand := Laenge / 10;
      XW := round(100*Faktor*(XNull+Laenge+Abstand));
      Printer.Canvas.Textout (XW, YZahlW, 'ln(E2/E1)');
    end;
  end;
  if MethodeS = 'Iteration' then
  begin
    Abstand := Laenge /50;
    str ((400*(XNull+Laenge+Abstand)):6:2,XS);
    YS := YzahlS;
    if GeraetS = 'HPGL' then
      Plotte ('PA'+XS+','+YS+'LB'+'R'+chr(3));
    if GeraetS = 'DXF' then
    begin
      val (Xs,X,Co);
      X := X / 400;
      val (Ys,Y,Co);
      Y := Y / 400;
      H := Laenge / 5;
      SymbolS := 'R';
      Dxftext (X,Y,H,SymbolS,'0.0');
    end;
  end;
  if Programm = 18 then
  begin
    if GeraetS <> 'Plotter' then
    begin
      Wschrift := Laenge / 25;
      Hschrift := Laenge / 20;
      str (Wschrift:6:2,WschriftS);
      str (Hschrift:6:2,HschriftS);
      if GeraetS = 'HPGL' then Plotte ('SI'+WschriftS+','
                                       +HschriftS+';');
      Minus   := 1;
      SFaktor := Ende / Teile;
      RgS     := 'Alpha';
      if GeraetS = 'HPGL' then
      begin
        str ((400*(YNull-0.1*Laenge)):6:2,YzahlS);
        Plotte (RichtungS+';SI'+WschriftS+','+HschriftS+';');
        for i := 1 to Teile - Minus do
        begin
          str (round(i*SFaktor),ZahlS);
          str ((400*(XNull+i*Einheit)):6:2,DistanzS);
          Plotte ('PA'+DistanzS+','+YzahlS+'LB'+ZahlS+chr(3));
        end;
        str ((400*(XNull+Laenge)):6:2,XS);
        Plotte ('PA'+XS+','+YzahlS+'LB'+RgS+chr(3));
      end;
      if GeraetS = 'DXF' then
      begin
        H := Laenge / 2.5;
        WinkelS := '0.0';
        Y := YNull - Laenge/15;
        for i := 1 to 9 do
        begin
          ZahlS := IntToStr(i*10);
          X := XNull + i*Einheit;
          Dxftext (X,Y,H,ZahlS,WinkelS);
        end;
        RgS := 'Alpha';
        X := X + Einheit;
        Dxftext (X, Y, H, RgS, WinkelS);
      end;
    end;
    if GeraetS = 'Plotter' then
    begin
      Minus   := 1;
      SFaktor := Ende / Teile;
      RgS     := 'a';
      YZahlw  := round(100*Faktor*(YNull+2*Laenge+0.05*Laenge));
      for i := 1 to Teile - Minus do
      begin
        str (round(i*SFaktor),ZahlS);
        Distanzw := round(100*Faktor*(XNull+i*Einheit));
        Canvas.Textout (Distanzw, Yzahlw, ZahlS);
      end;
      Xw := round(100*Faktor*(XNull+Laenge));
      Canvas.Font.Name := 'Symbol';
      Canvas.Textout (Xw, Yzahlw, RgS);
      Canvas.Font.Name := 'Helvetica';
    end;
  end;
end;

procedure Yhpschrift (Canvas: TCanvas; Programm:byte; RichtungS:string;
                      XNull,YNull,Laenge:real; Ende,Teile:word);
var
  Einheit   : real;
  Minus     : byte;
  FaktorY   : real;
  X,Y,H     : real;
  Co        : integer;
  i         : word;
  ZahlS     : string[10];
  XzahlS    : string[10];
  YzahlS    : string[10];
  DistanzS  : string[10];
  WinkelS   : string[6];
  RgS       : string[5];
  YS,XS     : string[10];
  Abstand   : real;
  SymbolS   : string[10];
  Add       : real;
  XZahl     : word;
  Distanz   : word;
  Yy, XW, YW: word;
  Xzahlw    : word;
  Yzahlw    : word;
begin
  Einheit := Laenge / Teile;
  if Programm = 10 then
  begin
    Minus   := 1;
    FaktorY := Ende / Teile;
  end;
  if programm <> 18 then
  begin
    if Programm = 13 then
    begin
      Minus   := 0;
      FaktorY := 1;
    end;
    Add := 0;
    if GeraetS <> 'Plotter' then
    begin
      for i := 1 to Teile - Minus do
      begin
        str (round(i*FaktorY),ZahlS);
        str ((400*(XNull-0.9*Laenge/10)):6:2,XzahlS);
        str ((400*(YNull+i*Einheit+Add)):6:2,DistanzS);
        if GeraetS = 'HPGL' then
          Plotte (RichtungS+';PA'+XzahlS+','+DistanzS+'LB'
                  +ZahlS+chr(3));
        if GeraetS ='DXF' then
        begin
          val (XzahlS,X,Co);
          X := X / 400;
          val (DistanzS,Y,Co);
          Y := Y / 400;
          H := Laenge / 5;
          WinkelS := '0.0';
          Dxftext (X,Y,H,ZahlS,WinkelS);
        end;
      end;
    end;
    if GeraetS = 'Plotter' then
    begin
      for i := 1 to Teile - Minus do
      begin
        ZahlS   := IntToStr(round(i*FaktorY));
        XZahl   := round(100*Faktor*(XNull-Laenge/20));
        Distanz := round(100*Faktor*(YNull+Laenge-i*Einheit-Add)-50);
        Printer.Canvas.Font.Size := round(Laenge);
        Printer.Canvas.Textout (XZahl, Distanz, ZahlS);
      end;
    end;
    if Programm = 10 then
    begin
      RgS := 'R%';
      if GeraetS <> 'Plotter' then
      begin
        if GeraetS = 'HPGL' then
        begin
          str ((400*(YNull+Laenge)):6:2,YS);
          Plotte ('PA'+XzahlS+','+YS+'LB'+RgS+chr(3));
        end;
        if GeraetS = 'DXF' then
        begin
          val (XzahlS,X,Co);
          X := X / 400;
          Y := YNull+Laenge;
          H := Laenge / 5;
          Dxftext (X,Y,H,RgS,WinkelS);
        end;
      end;
      if GeraetS = 'Plotter' then
      begin
        Yy := round(100*Faktor*YNull);
        Printer.Canvas.Textout (round(XZahl
                                -100*Faktor*Laenge/30),Yy,'R%');
      end;
    end;
    if Programm = 13 then
    begin
      Abstand := Laenge / 10;
      str ((400*(XNull-0.5*Abstand)):6:2,XS);
      str ((400*(YNull+Laenge+0.8*Abstand)):6:2,YS);
      if GeraetS = 'HPGL' then Plotte ('DI0,0;');
      if GeraetS = 'DXF' then WinkelS := '00.0';
      if GeraetS = 'HPGL' then
        Plotte ('PA'+XS+','+YS+'LB'+'ln(E3/E2)'+chr(3));
      if GeraetS = 'DXF' then
      begin
        val (XS,X,Co);
        X := X / 400;
        val (Ys,Y,Co);
        Y := Y / 400;
        H := Laenge / 5;
        SymbolS := 'ln(E3/E2)';
        Dxftext (X,Y,H,SymbolS,WinkelS);
      end;
      if GeraetS = 'Plotter' then
      begin
        XW := round((XNull-0.5*Abstand)*100*Faktor);
        YW := round((YNull-0.8*Abstand)*100*Faktor);
        Printer.Canvas.Textout(XW, YW, 'ln(E3/E2)');
      end;
    end;
  end;
  if Programm = 18 then
  begin
    if GeraetS <> 'Plotter' then
    begin
      H := Laenge/5;
      str ((400*(Xnull-Laenge/15)):6:2,XzahlS);
      X := Xnull - Laenge/20;
      WinkelS := '0.0';
      for i := 1 to Teile do
      begin
        str ((i/10):3:1,ZahlS);
        str ((400*(Ynull + i*Einheit)):6:2,YzahlS);
        Y := Ynull + i*Einheit;
        if GeraetS <> 'DXF' then
          Plotte (RichtungS+';PA'+XzahlS+','+YzahlS+'LB'+ZahlS+chr(3))
        else Dxftext (X, Y, H, ZahlS, WinkelS);
      end;
      RgS := 'T/T0';
      str ((400*(Ynull + Laenge + Laenge/20)):6:2,YS);
      str ((400*(Xnull - Laenge/10)):6:2,XzahlS);
      X := Xnull - Laenge/12;
      Y := Ynull + Laenge + Laenge/20;
      if GeraetS <> 'DXF' then Plotte ('PA'+XzahlS+','+YS+'LB'+RgS+chr(3))
      else Dxftext (X, Y, H, RgS, WinkelS);
    end;
    if GeraetS = 'Plotter' then
    begin
      H := Laenge/5;
      Xzahlw := round(100*Faktor*(Xnull-Laenge/15));
      X := Xnull - Laenge/20;
      for i := 1 to Teile do
      begin
        str ((i/10):3:1,ZahlS);
        Yzahlw := round(100*Faktor*(Ynull + Laenge - i*Einheit));
        Y := Ynull + i*Einheit;
        Canvas.Textout (Xzahlw, Yzahlw, ZahlS);
      end;
      RgS := 'T/T0';
      Yw := round (100*Faktor*(Ynull)-100);
      Xzahlw := round(100*Faktor*(Xnull - Laenge/15));
      X := Xnull - Laenge/12;
      Y := Ynull + Laenge + 0.5;
      Canvas.Textout (Xzahlw, Yw, RgS);
    end;
  end;
end;

procedure Hpstrich (Canvas: TCanvas; XNull,YNull,Laenge:real; LWinkel:word);
var
  Bo          : real;
  XanS,YanS   : string[10];
  XenS,YenS   : string[10];
  Xende,Yende : real;
  Xan, Xen    : integer;
  Yan, Yen    : integer;
begin
  Bo := Pi / 180;
  if GeraetS <> 'Plotter' then
  begin
    str ((400*XNull):6:2,XanS);
    str ((400*YNull):6:2,YanS);
    str ((400*(XNull+Laenge*cos(LWinkel*Bo))):6:2,XenS);
    str ((400*(YNull+Laenge*sin(LWinkel*Bo))):6:2,YenS);
    if GeraetS = 'HPGL' then
    begin
      Plotte ('PU;PA'+XanS+','+YanS+';');
      Plotte ('PD;PA'+XenS+','+YenS+';PU;');
    end;
    if GeraetS = 'DXF' then
    begin
      Xende := XNull + Laenge * cos (LWinkel * Bo);
      Yende := YNull + Laenge * sin (LWinkel * Bo);
      Dxflinie (XNull,YNull,Xende,Yende);
    end;
  end;
  if GeraetS = 'Plotter' then
  begin
    with Printer.Canvas do
    begin
      Pen.Color := Farbe;
      Xan := round(XNull*100*Faktor);
      Xen := round((XNull+Laenge*cos(LWinkel*Bo))
                   *100*Faktor);
      Yan := round(YNull*100*Faktor);
      Yen := round((YNull+Laenge*sin(LWinkel*Bo))
                   *100*Faktor);
      moveto (Xan,Yan);
      lineto (Xen, Yen);
    end;
  end;
end;

procedure Hpsymbol (Canvas: TCanvas;
                    Xanfang,Yanfang,Xsymbol,Ysymbol,
                    Laenge:real; Nsymbol:byte);

var
  Xpunkt   : word;
  Ypunkt   : word;
  Radius   : word;
  Radius2  : word;
  Radius3  : word;
  XS,YS    : string[10];
  X,Y,H    : real;
  Fuellung : TColor;
begin
  if GeraetS <> 'Plotter' then
  begin
    Xpunkt  := round(400 * (Xanfang + Xsymbol));
    Ypunkt  := round(400 * (Yanfang + Ysymbol));
    Radius  := round(400 * Laenge / 100);
    Radius2 := round(400 * Laenge / 150);
    Radius3 := round(400 * Laenge / 300);
  end;
  if GeraetS = 'Plotter' then
  begin
    Xpunkt  := round(100 * Faktor * (Xanfang+Xsymbol));
    Ypunkt  := round(100 * Faktor * (Yanfang+Laenge-Ysymbol));
    if Programm = 16 then
      Ypunkt := round(100*Faktor*(YAnfang+Laenge*sin(60*Bo)
                -YSymbol));
    Radius  := round(100 * Faktor * Laenge / 100);
  end;
  if GeraetS <> 'Plotter' then
  begin
    case Nsymbol of
      1: Zeichkreis (Xpunkt,Ypunkt,Radius,36);  {Kreis}
      2: begin
           Zeichkreis (Xpunkt,Ypunkt,Radius,36);
           Zeichkreis (Xpunkt,Ypunkt,Radius2,36);
           Zeichkreis (Xpunkt,Ypunkt,Radius3,36);
         end;
      3: Zeichkreis (Xpunkt,Ypunkt,Radius,90);  {Quadrat}
      4: begin
           Zeichkreis (Xpunkt,Ypunkt,Radius,90);  {Quadrat}
           Zeichkreis (Xpunkt,Ypunkt,Radius2,90);  {Quadrat}
           Zeichkreis (Xpunkt,Ypunkt,Radius3,90);
         end;
      5: Zeichkreis (Xpunkt,Ypunkt,Radius,120); {Dreieck}
      6: begin
           Zeichkreis (Xpunkt,Ypunkt,Radius,120); {Dreieck}
           Zeichkreis (Xpunkt,Ypunkt,Radius2,120); {Dreieck}
           Zeichkreis (Xpunkt,Ypunkt,Radius3,120);
         end;
      7: Zeichkreis (Xpunkt,Ypunkt,Radius,-90); {Raute}
      8: begin
           Zeichkreis (Xpunkt,Ypunkt,Radius,-90); {Raute}
           Zeichkreis (Xpunkt,Ypunkt,Radius2,-90); {Raute}
           Zeichkreis (Xpunkt,Ypunkt,Radius3,-90);
         end;
      9: begin
           if GeraetS = 'HPGL' then
           begin
             str (Xpunkt,XS);
             str (Ypunkt,YS);
             Plotte ('SM+;PA'+XS+','+YS+';SM;');
           end;
           if GeraetS = 'DXF' then
           begin
             X := Xpunkt / 400;
             Y := Ypunkt / 400;
	     H := Laenge / 5;
           Dxftext (X,Y,H,'+','0.0');
           end;
         end;
     10: begin
           if GeraetS = 'HPGL' then
           begin
             str (Xpunkt,XS);
             str (Ypunkt,YS);
             Plotte ('SMx;PA'+XS+','+YS+';SM;');
           end;
           if GeraetS = 'DXF' then
           begin
             X := Xpunkt / 400;
             Y := Ypunkt / 400;
             H := Laenge / 5;
             Dxftext (X,Y,H,'x','0.0');
           end;
      end;
    end;
  end;
  if GeraetS = 'Plotter' then
  begin
    with Printer.Canvas do
    begin
      Pen.Color   := Farbe;
      Fuellung    := clWhite;
      Brush.Color := Fuellung;
      case Nsymbol of
        1: Ellipse (Xpunkt-Radius, Ypunkt-Radius,
                    Xpunkt+Radius, Ypunkt +Radius); {Kreis}
        2: begin
             Brush.Color := DatenFarbe;
             Ellipse (Xpunkt-Radius, Ypunkt-Radius,
                      Xpunkt+Radius, Ypunkt +Radius); {Kreis}
           end;
        3: begin
             Brush.Color := Fuellung;;
             Rectangle (Xpunkt-Radius, Ypunkt-Radius,
                        Xpunkt+Radius, Ypunkt +Radius) {Quadrat}
           end;
        4: begin
             Brush.Color := DatenFarbe;
             Rectangle (Xpunkt-Radius, Ypunkt-Radius,
                        Xpunkt+Radius, Ypunkt +Radius) {Quadrat}
           end;
        5: begin
             Brush.Color := Fuellung;
             Polygon([Point(Xpunkt,Ypunkt-Radius),
                      Point(Xpunkt-Radius,Ypunkt+Radius),
                      Point(Xpunkt+Radius,Ypunkt+Radius)]);
           end;
        6: begin
             Brush.Color := DatenFarbe;
             Polygon([Point(Xpunkt,Ypunkt-Radius),
                      Point(Xpunkt-Radius,Ypunkt+Radius),
                      Point(Xpunkt+Radius,Ypunkt+Radius)]);
           end;
        7: begin
             Brush.Color := Fuellung;
             Polygon ([Point(Xpunkt,Ypunkt-Radius),
                       Point(Xpunkt+Radius,Ypunkt),
                       Point(Xpunkt,Ypunkt+Radius),
                       Point(Xpunkt-Radius,Ypunkt)]);
           end;
        8: begin
             Brush.Color := DatenFarbe;
             Polygon ([Point(Xpunkt,Ypunkt-Radius),
                       Point(Xpunkt+Radius,Ypunkt),
                       Point(Xpunkt,Ypunkt+Radius),
                       Point(Xpunkt-Radius,Ypunkt)]);
           end;
        9: begin
             Font.Color := DatenFarbe;
             Textout (Xpunkt,Ypunkt,'+');
           end;
        10: begin
              Font.Color := Farbe;
              Textout (Xpunkt, Ypunkt,'x');
            end;
      end;
    end; {with Printer.Canvas}
  end; {if GeraetS = 'plotter'}
end;

procedure Dreieck (Canvas: TCanvas; X,Y,Laenge:real);
var
  X1,X2,X3  : word;
  Y1,Y2,Y3  : word;
  X1S, Y1S  : string[10];
  X2S, Y2S  : string[10];
  X3S, Y3S  : string[10];
  Xps, YeS  : string[10];
  Bo, L, Wd : real;
  Xp,Yp, Hd : real;
  Xt1S,Yt1S : string[10];
  Xt2S,Yt2S : string[10];
  Xt3S,Yt3S : string[10];
  WdS, HdS  : string[10];
  i         : byte;
  Xt1, Xt2  : word;
  Xt3, Yt1  : word;
  Yt2, Yt3  : word;
  Hoehe     : word;
  X1d, Y1d  : real;
  X2d, Y2d  : real;
  X3d, Y3d  : real;
  H, Y0d    : real;
  YpS, XgS  : string[10];
  XzS, YzS  : string[10];
  YzeS      : string[10];
  Xpw, Yew  : word;
  Xgw, Xzw  : word;
  Yzw, Yzew : word;
  Ypw, X1w  : word;
  Y1w, X2w  : word;
  Y2w, X3w  : word;
  Y3w, Yt1w : word;
  Xt1w, Xt2w: word;
  Yt2w, Xt3w: word;
  Yt3w      : word;
  XLambdaw  : word;
  YLambdaw  : word;

begin
  Bo := Pi/180;
  if GeraetS <> 'Plotter' then
  begin
    X1  := round (X*400);
    Y1  := round (400*Y + 400*Laenge*Tan(60*Bo)/2);
    X2  := round (X1 + 400*Laenge);
    Y2  := Y1;
    X3  := round (X1 + 200*Laenge);
    Y3  := round (Y*400);
    L   := Laenge*3/4;
    X1d := X;
    Y1d := Y+Laenge*sin(60*Bo);
    X2d := X + Laenge;
    Y2d := Y1d;
    X3d := X + Laenge/2;
    Y3d := Y;
    Y0d := Y + Laenge*Tan(60*Bo)/2;
    str (X1,X1S);
    str (X2,X2S);
    str (X3,X3S);
    str (Y1,Y1S);
    str (Y2,Y2S);
    str (Y3,Y3S);
    Xp := X1;
    Wd  := Laenge/50;
    Hd  := Laenge/35;
    str ((Y1+1000*Hd):5:3,YpS);
    str ((Y1+ 300*Hd):5:3,YeS);
    str (X1:5,XpS);
    str ((X2-4000*Wd):5:3,XgS);
    str ((X3+1500*Wd):5:3,XzS);
    str ((Y3-300+1000*Hd):5:3,YzS);
    str ((Y3-300+400*Hd):5:3,YzeS);
    str (Wd:5:3,WdS);
    str (Hd:5:3,HdS);
    if GeraetS = 'HPGL' then
    begin
      Plotte ('SI'+WdS+','+HdS+';');
      Plotte ('PU;PA'+X1S+','+Y1S+','+';PD;');
      Plotte ('PA'+X2S+','+Y2S+';');
      Plotte ('PA'+X3S+','+Y3S+';');
      Plotte ('PA'+X1S+','+Y1S+';PU;');                 {Dreieck fertig}
      Plotte ('PA'+XpS+','+YpS+';LB'+Tx(835)+chr(3));   {Punkte}
      Plotte ('PA'+XpS+','+YeS+';LB'+'E3-E2'+chr(3));
      Plotte ('PA'+Xgs+','+YpS+';Lb'+Tx(836)+chr(3));   {Gürtel}
      Plotte ('PA'+XgS+','+YeS+';LB'+'2(E2-E1)'+chr(3));
      Plotte ('PA'+XzS+','+YzS+';LB'+Tx(837)+chr(3));   {Zufall}
      Plotte ('PA'+XzS+','+YzeS+';LB'+'3E1'+chr(3));
      Plotte ('PU;');
    end;
    if GeraetS = 'DXF' then
    begin
      H := Laenge/4;
      Dxflinie (X1d,Y1d,X2d,Y2d);
      Dxflinie (X2d,Y2d,X3d,Y3d);
      Dxflinie (X3d,Y3d,X1d,Y1d);
      Dxftext (X1d-Laenge/6,Y1d,H,Tx(818),'0.00');
      Dxftext (X1d-Laenge/6,Y1d-H/6,H,'E3-E2','0.00');
      Dxftext (X2d+Laenge/40,Y2d,H,Tx(819),'0.00');
      Dxftext (X2d+Laenge/40,Y2d-H/6,H,'2(E2-E1)','0.00');
      Dxftext (X3d+Laenge/20,Y3d+H/6,H,Tx(820),'0.00');
      Dxftext (X3d+Laenge/20,Y3d,H,'3E1','0.00');
    end;
    Hoehe := round (20*L*Tan(60*Bo)/2);
    Yt1   := Y1-Hoehe;
    str(Y1,Y1S);
    str(Yt1,Yt1S);
    Y2d := Y1d - Hoehe/400;
    for i := 1 to 9 do
    begin
      if GeraetS = 'HPGL' then
      begin
        Xt1 := round(X1+40*i*Laenge);
        str(Xt1,Xt1S);
        Xt2 := round(Xt1-20*L*Tan(30*Bo));
        str(Xt2,Xt2S);
        Xt3 := round(Xt1+20*L*Tan(30*Bo));
        str(Xt3,Xt3S);
        Plotte ('PU;PA'+Xt1S+', '+Y1S+'PD;');
        Plotte ('PA'+Xt2S+', '+Yt1S+';');
        Plotte ('PU;PA'+Xt1S+','+Y1S+';PD;');
        Plotte ('PA'+Xt3S+','+Yt1S+';');
      end;
      if GeraetS = 'DXF' then
      begin
        X1d := X + i*Laenge/10;
        X2d := X1d - Hoehe*Tan(30*Bo)/400;
        X3d := X1d + Hoehe*Tan(30*Bo)/400;
        Dxflinie (X1d,Y1d,X2d,Y2d);
        Dxflinie (X1d,Y1d,X3d,Y2d);
      end;
    end;
    for i := 1 to 9 do
    begin
      if GeraetS = 'HPGL' then
      begin
        Xt1 := round (X1+20*i*Laenge);
        Yt1 := round (Y1 - i * (Y1-Y3) / 10);
        Xt2 := round (Xt1 + Hoehe/cos(30*Bo));
        Xt3 := round (Xt1 + (Xt2-Xt1)/2);
        str (Xt1,Xt1S);
        str (Xt2,Xt2S);
        str (Xt3,Xt3S);
        str (Yt1,Yt1S);
        Yt2S := Yt1S;
        str(round (Yt1 + Hoehe),Yt3S);
        Plotte ('PU;PA'+Xt1S+', '+Yt1S+'PD;');
        Plotte ('PA'+Xt2S+', '+Yt2S+';');
        Plotte ('PU;PA'+Xt1S+','+Yt1S+';PD;');
        Plotte ('PA'+Xt3S+','+Yt3S+';');
      end;
      if GeraetS = 'DXF' then
      begin
        X1d := X + i*Laenge/20;
        X2d := X1d + Hoehe/cos(30*Bo)/400;
        X3d := X1d + (X2d-X1d)/2;
        Y1d := Y0d - i*(Y0d-Y)/10;
        Y2d := Y1d;
        Y3d := Y1d + Hoehe/400;
        Dxflinie (X1d,Y1d,X2d,Y2d);
        Dxflinie (X1d,Y1d,X3d,Y3d);
      end;
    end;
    for i := 1 to 9 do
    begin
      if GeraetS = 'HPGL' then
      begin
        Xt1 := round (X2 - 20*i*Laenge);
        Xt2 := round (Xt1 - Hoehe/cos(30*Bo));
        Xt3 := round (Xt1 - (Xt1-Xt2)/2);
        Yt1 := round (Y1 - i * (Y1-Y3) / 10);
        Yt2 := Yt1;
        Yt3 := round (Yt1 + Hoehe);
        str(Xt1,Xt1S);
        str(Xt2,Xt2S);
        str(Xt3,Xt3S);
        str(Yt1,Yt1S);
        str(Yt2,Yt2S);
        str(Yt3,Yt3S);
        Plotte ('PU;PA'+Xt1S+', '+Yt1S+'PD;');
        Plotte ('PA'+Xt2S+', '+Yt2S+';');
        Plotte ('PU;PA'+Xt1S+','+Yt1S+';PD;');
        Plotte ('PA'+Xt3S+','+Yt3S+';');
      end;
      if GeraetS = 'DXF' then
      begin
        X1d := X + Laenge - i*Laenge/20;
        X2d := X1d - Hoehe*cos(30*Bo)/400;
        X3d := X1d - (X1d-X2d)/2;
        Y1d := Y0d - i*(Y0d-Y)/10;
        Y2d := Y1d;
        Y3d := Y1d + Hoehe/400;
        Dxflinie (X1d,Y1d,X2d,Y2d);
        Dxflinie (X1d,Y1d,X3d,Y3d);
      end;
    end;
  end;
  if GeraetS = 'Plotter' then
  begin
    Canvas.Font.Size  := round(Laenge);
    Canvas.Font.Color := KoordinFarbe;
    X1  := round (X*100*Faktor);
    Y1  := round (100*Faktor*Y);
    X2  := round (X1 + 100*Faktor*Laenge);
    Y2  := Y1;
    X3  := round (X1 + 50*Faktor*Laenge);
    Y3  := round (100*Faktor*(Y+Laenge*Tan(60*Bo)/2));
    L   := Laenge*3/4;
    Xp  := X1;
    Wd  := Laenge/50;
    Hd  := Laenge/70;
    Ypw := round(Y1 - 400*Faktor * Hd);
    Yew := round(Y1 - 280*Faktor*3*Hd/4);
    Xpw := X1;
    Xgw := round(X2-1200*Faktor*Wd);
    Xzw := round(X3+3.75*100*Faktor*Wd);
    Yzw := round(Y3-250*Faktor*Hd);
    Yzew:= round(Y3+100-100*Faktor*Hd);
    X1w := X1;
    Y1w := Y1;
    X2w := X2;
    Y2w := Y2;
    X3w := X3;
    Y3w := Y3;
    Canvas.Pen.Color := Farbe;
    Canvas.Moveto (X1w, Y1w);
    Canvas.Lineto (X2w, Y2w);
    Canvas.Lineto (X3w, Y3w);
    Canvas.Lineto (X1w, Y1w);
    Canvas.Textout (Xpw, Ypw, Tx(835)+' '+'E3-E2');    {Punkte}
    Canvas.Textout (Xgw, Ypw, Tx(836)+' '+'2(E2-E1)');    {Gürtel}
    Canvas.Textout (Xzw, Yzw, Tx(837)+' '+'3E1');    {Zufall}
    Hoehe := round (5*L*Tan(60*Bo)/2);
    Y1w  := Y1;
    Yt1w := Y1+Hoehe;
    for i := 1 to 9 do
    begin
      Xt1w := round(X1+10*Faktor*i*Laenge);
      Xt2w := round(Xt1w-5*Faktor*L*Tan(30*Bo));
      Xt3w := round(Xt1w+5*Faktor*L*Tan(30*Bo));
      Canvas.Moveto (Xt1w, Y1w);
      Canvas.Lineto (Xt2w, Yt1w);
      Canvas.Moveto (Xt1w, Y1w);
      Canvas.Lineto (Xt3w, Yt1w);
    end;
    for i := 1 to 9 do
    begin
      Xt1w := round (X1+5*Faktor*i*Laenge);
      Yt1w := round (Y1 - i * (Y1-Y3) / 10);
      Xt2w := round (Xt1w + Hoehe/cos(30*Bo));
      Xt3w := round (Xt1w + (Xt2w-Xt1w)/2);
      Yt2w := Yt1w;
      Yt3w := round (Yt1w - Hoehe);
      Canvas.Moveto (Xt1w, Yt1w);
      Canvas.Lineto (Xt2w, Yt2w);
      Canvas.Moveto (Xt1w, Yt1w);
      Canvas.Lineto (Xt3w, Yt3w);
    end;
    for i := 1 to 9 do
    begin
      Xt1w := round (X2 - 5*Faktor*i*Laenge);
      Xt2w := round (Xt1w - Hoehe/cos(30*Bo));
      Xt3w := round (Xt1w - (Xt1w-Xt2w)/2);
      Yt1w := round (Y1 - i * (Y1-Y3) / 10);
      Yt2w := Yt1w;
      Yt3w := round (Yt1w - Hoehe);
      Canvas.Moveto (Xt1w, Yt1w);
      Canvas.Lineto (Xt2w, Yt2w);
      Canvas.Moveto (Xt1w, Yt1w);
      Canvas.Lineto (Xt3w, Yt3w);
    end;
  end;
end;

procedure Formdreieck (Canvas: TCanvas; X, Y: real; Seite: real;
                       Lambda1, Lambda2:array of real;
                       Slambda1, Slambda2:real; NameS:string);
var
  Bo       : real;
  Xtra1    : word;
  Xtra2    : word;
  Xtra3    : word;
  Xtra4    : word;
  Ytra1    : word;
  Ytra2    : word;
  Ytra3    : word;
  Ytra4    : word;
  Xtra1S   : string[10];
  Xtra2S   : string[10];
  Xtra3S   : string[10];
  Xtra4S   : string[10];
  Ytra1S   : string[10];
  Ytra2S   : string[10];
  Ytra3S   : string[10];
  Ytra4S   : string[10];
  Xtra1d   : real;
  Xtra2d   : real;
  Xtra3d   : real;
  Xtra4d   : real;
  Ytra1d   : real;
  Ytra2d   : real;
  Ytra3d   : real;
  Ytra4d   : real;
  i        : byte;
  X1d, X2d : real;
  Y1d, Y2d : real;
  X1S, X2S : string[10];
  Y1S, Y2S : string[10];
  Xlambdad : real;
  Ylambdad : real;
  Istring  : string[4];
  XlambdaS : string[10];
  YlambdaS : string[10];
  WdS, HdS : string[10];
  Xtra1w   : word;
  Xtra2w   : word;
  Xtra3w   : word;
  Xtra4w   : word;
  Ytra1w   : word;
  Ytra2w   : word;
  Ytra3w   : word;
  Ytra4w   : word;
  X1w, X2w : word;
  Y1w, Y2w : word;
  XLambdaw : word;
  YLambdaw : word;
  Xw, Yw   : word;
  Rw       : word;
  XS, YS   : string;
begin
  Bo := Pi / 180;
  {Zeichnen des Trapezes}
  if GeraetS <> 'Plotter' then
  begin
    Xtra1d := X;
    Xtra2d := X + Kante;
    Xtra3d := Xtra2d - Kante/5;
    Xtra4d := X + Kante/5;
    Ytra1d := Y;
    Ytra2d := Y;
    Ytra3d := Y + Tan(60*Bo) * Kante/5;
    Ytra4d := Ytra3d;
    Xtra1  := round (Xtra1d*400);
    Xtra2  := round (Xtra2d*400);
    Xtra3  := round (Xtra3d*400);
    Xtra4  := round (Xtra4d*400);
    Ytra1  := round (Ytra1d*400);
    Ytra2  := round (Ytra2d*400);;
    Ytra3  := round (Ytra3d*400);
    Ytra4  := round (Ytra4d*400);
    str (Xtra1, Xtra1S);
    str (Xtra2, Xtra2S);
    str (Xtra3, Xtra3S);
    str (Xtra4, Xtra4S);
    str (Ytra1, Ytra1S);
    str (Ytra2, Ytra2S);
    str (Ytra3, Ytra3S);
    str (Ytra4, Ytra4S);
    Farben (Canvas, KoordinFarbe);
    {Plotten des Trapezes:}
    if GeraetS = 'HPGL' then
    begin
      Plotte ('Pu;Pa'+Xtra1S+','+Ytra1S+'Pd;');
      Plotte ('Pa'+Xtra2S+','+Ytra2S+';');
      Plotte ('Pa'+Xtra3S+','+Ytra3S+';');
      Plotte ('Pa'+Xtra4S+','+Ytra4S+';');
      Plotte ('Pa'+Xtra1S+','+Ytra1S+'Pu;');
    end;
    if GeraetS = 'DXF' then
    begin
      Dxflinie (Xtra1d,Ytra1d,Xtra2d,Ytra2d);
      Dxflinie (Xtra2d,Ytra2d,Xtra3d,Ytra3d);
      Dxflinie (Xtra3d,Ytra3d,Xtra4d,Ytra4d);
      Dxflinie (Xtra4d,Ytra4d,Xtra1d,Ytra1d);
    end;
    {Skalierung:}
    for i := 1 to 9 do
    begin
      X1d := Xtra1d + i * Kante/10;
      X2d := X1d + cos(60*Bo)*Kante/50;
      Y1d := Y;
      Y2d := Y + sin(60*Bo)*Kante/50;
      str (round(X1d*400), X1S);
      str (round(X2d*400), X2S);
      str (round(Y1d*400), Y1S);
      str (round(Y2d*400), Y2S);
      if GeraetS = 'HPGL' then
      begin
        Plotte ('Pu;Pa'+X1S+','+Y1S+';');
        Plotte ('Pd;Pa'+X2S+','+Y2S+'Pu;');
      end;
      if GeraetS = 'DXF' then
        Dxflinie (X1d,Y1d,X2d,Y2d);
      X2d := X1d - cos(60*Bo)*Kante/50;
      str (round(X2d*400), X2S);
      if GeraetS = 'HPGL' then
      begin
        Plotte ('Pu;Pa'+X1S+','+Y1S+';');
        Plotte ('Pd;Pa'+','+X2S+','+Y2S+'Pu;');
      end;
      if GeraetS = 'DXF' then
        Dxflinie (X1d,Y1d,X2d,Y2d);
    end;
    for i := 1 to 3 do
    begin
      X1d := Xtra1d + i*sin(30*Bo)*Kante/10;
      X2d := X1d + Kante/50;
      Y1d := Ytra1d + i*sin(60*Bo)*Kante/10;
      Y2d := Y1d;
      str (round(X1d*400), X1S);
      str (round(X2d*400), X2S);
      str (round(Y1d*400), Y1S);
      str (round(Y2d*400), Y2S);
      if GeraetS = 'HPGL' then
      begin
        Plotte ('Pu;Pa'+X1S+','+Y1S+';');
        Plotte ('Pd;Pa'+X2S+','+Y2S+'Pu;');
      end;
      if GeraetS = 'DXF' then
        Dxflinie (X1d,Y1d,X2d,Y2d);
      X2d := X1d + sin(30*Bo)*Kante/50;
      Y2d := Y1d - cos(30*Bo)*Kante/50;
      str (round(X2d*400), X2S);
      str (round(Y2d*400), Y2S);
      if GeraetS = 'HPGL' then
      begin
        Plotte ('Pu;Pa'+X1S+','+Y1S+';');
        Plotte ('Pd'+','+X2S+','+Y2S+'Pd;');
      end;
      if GeraetS = 'DXF' then
        Dxflinie (X1d,Y1d,X2d,Y2d);
      X1d := Xtra2d - i*sin(30*Bo)*Kante/10;
      X2d := X1d - Kante/50;
      str (round(X1d*400), X1S);
      str (round(X2d*400), X2S);
      if GeraetS = 'HPGL' then
      begin
        Plotte ('Pu;Pa'+X1S+','+Y1S+';');
        Plotte ('Pd'+X2S+','+Y1S+'Pu;');
      end;
      if GeraetS = 'DXF' then
        Dxflinie (X1d,Y1d,X2d,Y1d);
      X2d := X1d - sin(30*Bo)*Kante/50;
      str (round(X2d*400), X2S);
      if GeraetS = 'HPGL' then
      begin
        Plotte ('Pu;Pa'+X1S+','+Y1S+';');
        Plotte ('Pd'+X2S+','+Y2S+'Pu;');
      end;
      if GeraetS = 'DXF' then
        Dxflinie (X1d,Y1d,X2d,Y2d);
    end;
    str ((Kante/30):5:3, WdS);
    str ((Kante/30):5:3, HdS);
    str (round(Ytra1d*400-300), YlambdaS);
    str (round(Xtra2d*400-500), XlambdaS);
    Xtra1 := Xtra1 - 400;
    if GeraetS = 'HPGL' then
    begin
      Plotte ('Si'+WdS+','+HdS+';');
      Plotte ('Pu;Pa'+Xtra1S+','+YlambdaS+';Lb'+'L3'+chr(3));
      Plotte ('Pu;Pa'+XlambdaS+','+YlambdaS+';Lb'+'L2'+chr(3));
      XS := IntToStr(round(X*400));
      YS := IntToStr(round((Y-2)*400));
      Plotte ('Pu;Pa'+XS+','+YS+';Lb'+NameS+chr(3));
    end;
    if GeraetS = 'DXF' then
    begin
      Dxftext (Xtra1d, Ytra1d-1,Kante/4,'L3','0.00');
      Dxftext (Xtra2d-0.05*Kante, Ytra1d-1,Kante/4,'L2','0.00');
      Dxftext (Xtra1d, Ytra1d-2,Kante/3,NameS,'0.00');
    end;
    Farben (Canvas, TheorFarbe);
    {Plotten der Eigenwerte der theoretischen Striemungen}
    str ((Kante/50):5:3, WdS);
    str ((Kante/50):5:3, HdS);
    if GeraetS = 'HPGL' then Plotte('Si'+WdS+','+HdS+';');
    for i := 0 to 10 do
    begin
      str(i,Istring);
      Xlambdad := Xtra1d+(Kante*Lambda2[i]+sin(30*Bo)*Lambda1[i]*Kante);
      Ylambdad := Ytra1d + sin(60*Bo)*Kante*Lambda1[i];
      Zeichkreis (round(Xlambdad*400),
                  round(Ylambdad*400),40, 36);
      str (round(Xlambdad*400-50), XlambdaS);
      str (round(Ylambdad*400-150), YlambdaS);
      if GeraetS = 'HPGL' then
        Plotte ('Pu;Pa'+XlambdaS+','+YlambdaS+';Lb'+Istring
                +chr(3));
      if GeraetS = 'DXF' then
      begin
        Xlambdad := Xlambdad - 1/10;
        Ylambdad := Ylambdad - 1/3;
        Dxftext (Xlambdad, Ylambdad,Kante/14, Istring, '0.00');
      end;
    end;
    Farben (Canvas, DatenFarbe);
    {Plotten der Eigenwerte der gemessenen Striemungen:}
    Xlambdad := Xtra1d + Kante*Slambda2+sin(30*Bo)
                              *Slambda1*Kante;
    Ylambdad := Ytra1d + sin(60*Bo)*Kante*Slambda1;
    Zeichkreis (round(Xlambdad*400),
                round(Ylambdad*400),60, 36);
    Zeichkreis (round(Xlambdad*400),
                round(Ylambdad*400),50, 36);
    Zeichkreis (round(Xlambdad*400),
                round(Ylambdad*400),40, 36);
  end;
  if GeraetS = 'Plotter' then
  begin
    Xtra1d := X;
    Xtra2d := X + Seite;
    Xtra3d := Xtra2d - Seite/5;
    Xtra4d := X + Seite/5;
    Ytra1d := Y;
    Ytra2d := Y;
    Ytra3d := Y-tan(60*Bo)*Seite/5;
    Ytra4d := Ytra3d;
    Xtra1w  := round (Xtra1d*100*Faktor);
    Xtra2w  := round (Xtra2d*100*Faktor);
    Xtra3w  := round (Xtra3d*100*Faktor);
    Xtra4w  := round (Xtra4d*100*Faktor);
    Ytra1w  := round (Ytra1d*100*Faktor);
    Ytra2w  := round (Ytra2d*100*Faktor);;
    Ytra3w  := round (Ytra3d*100*Faktor);
    Ytra4w  := round (Ytra4d*100*Faktor);
    Farben (Canvas, KoordinFarbe);
    {Plotten des Trapezes:}
    with Canvas do
    begin
      Pen.Color := Farbe;
      Moveto (Xtra1w, Ytra1w);
      Lineto (Xtra2w, Ytra2w);
      Lineto (Xtra3w, Ytra3w);
      Lineto (Xtra4w, Ytra4w);
      Lineto (Xtra1w, Ytra1w);    {Trapez fertig}
    {Skalierung:}
      for i := 1 to 9 do
      begin
        X1d := Xtra1d + i * Seite/10;
        X2d := X1d + cos(60*Bo)*Seite/50;
        Y1d := Ytra1d;
        Y2d := Ytra1d - sin(60*Bo)*Seite/50;
        X1w := round(X1d*100*Faktor);
        X2w := round(X2d*100*Faktor);
        Y1w := round(Y1d*100*Faktor);
        Y2w := round(Y2d*100*Faktor);
        Moveto (X1w, Y1w);
        Lineto (X2w, Y2w);
        X2d := X1d - cos(60*Bo)*Seite/50;
        X2w := round(X2d*100*Faktor);
        Moveto (X1w, Y1w);
        Lineto (X2w, Y2w);
      end;
      for i := 1 to 3 do
      begin
        X1d := Xtra1d + i*sin(30*Bo)*Seite/10;
        X2d := X1d + Kante/50;
        Y1d := Ytra1d - i*sin(60*Bo)*Seite/10;
        Y2d := Y1d;
        X1w := round(X1d*100*Faktor);
        X2w := round(X2d*100*Faktor);
        Y1w := round(Y1d*100*Faktor);
        Y2w := round(Y2d*100*Faktor);
        Moveto (X1w, Y1w);
        Lineto (X2w, Y2w);
        X2d := X1d + sin(30*Bo)*Seite/50;
        Y2d := Y1d + cos(30*Bo)*Seite/50;
        X2w := round(X2d*100*Faktor);
        Y2w := round(Y2d*100*Faktor);
        Moveto (X1w, Y1w);
        Lineto (X2w, Y2w);
        X1d := Xtra2d - i*sin(30*Bo)*Seite/10;
        X2d := X1d - Seite/50;
        X1w := round(X1d*100*Faktor);
        X2w := round(X2d*100*Faktor);
        Moveto (X1w, Y1w);
        Lineto (X2w, Y2w);
        X2d := X1d - Seite/50;
        X2w := round(X2d*100*Faktor);
        Moveto (X1w, Y1w);
        Lineto (X2w, Y1w);
      end;
      Font.Name  := 'Symbol';
      Font.Color := KoordinFarbe;
      Font.Size  := 12;
      Brush.Style := bsClear;
      Ylambdaw := round(Ytra1d*100*Faktor+100*Faktor*Seite/50);
      Xlambdaw := round(Xtra2d*100*Faktor-50*Faktor*Seite/35);
      Textout (Xtra1w, YLambdaw, 'l3');
      Textout (XLambdaw, YLambdaw, 'l2');                  {Beschriftung}
      Font.Name := DSchrift;
      TextOut (Xtra1w,YLambdaw+120, NameS);
    end;
    Farben (Canvas, TheorFarbe);
    {Plotten der Eigenwerte der theoretischen Striemungen}
    Canvas.Pen.Color   := TheorFarbe;
    Canvas.Font.Size   := 8;
    Canvas.Font.Color  := TheorFarbe;
    for i := 0 to 10 do
    begin
      Canvas.Brush.Color := TheorFarbe;
      Canvas.Brush.Style := bsSolid;
      str(i,Istring);
      Xlambdad := Xtra1d+Kante*Lambda2[i]
                  +sin(30*Bo)*Lambda1[i]*Kante;
      Ylambdad := Ytra1d - sin(60*Bo)*Kante*Lambda1[i];
      Xw := round(Xlambdad*100*Faktor);
      Yw := round(Ylambdad*100*Faktor);
      Rw := round(Seite);
      Canvas.Ellipse (Xw-Rw, Yw-Rw, Xw+Rw, Yw+Rw);
      Xlambdaw := round(Xlambdad*100*Faktor)-Rw;
      YLambdaw := round(Ylambdad*100*Faktor+Seite*3/2);
      Canvas.Brush.Style := bsClear;
      Canvas.Textout (XLambdaw, YLambdaw, Istring);
    end;
    Farben (Canvas, DatenFarbe);
    {Plotten der Eigenwerte der gemessenen Striemungen:}
    Xlambdad := Xtra1d + Seite*Slambda2
                +sin(30*Bo)*Slambda1*Seite;
    Ylambdad := Ytra1d - sin(60*Bo)*Seite*Slambda1;
    Xw := round(Xlambdad*100*Faktor);
    Yw := round(Ylambdad*100*Faktor);
    Canvas.Brush.Style := bsSolid;
    Canvas.Pen.Color   := DatenFarbe;
    Canvas.Brush.Color := DatenFarbe;
    Canvas.Ellipse (Xw-Rw, Yw-Rw, Xw+Rw, Yw+Rw);
  end;
end;

procedure HPProjektionen (Canvas: TCanvas; NetzS:string;
          Ic, Sp:integer; Ro:integer);
var
  Tl         : word;
  Co, Bo, K  : real;
  Rot        : real;
  Ii, Ij, It : byte;
  i          : integer;
  Te,Id      : byte;
  Rd,Re,Rp   : real;
  Ox,Oy,Oz   : real;
  Ir,PL      : integer;
  Sb,Se,Di   : integer;
  X, Y, Z    : real;
  Inn, Aus   : byte;
label
  Ro90;
begin
  setlength (Xver1Feld, 20000);
  setlength (Xver2Feld, 20000);
  setlength (Yver1Feld, 20000);
  setlength (Yver2Feld, 20000);
  Farben (Canvas, NetzFarbe);
  Bo  := Pi / 180;
  K   := 0.00001;
  Tl  := abs(Ro);
  Co  := abs(Sp) * Bo / 20;
  Sp  := -abs(Sp);
  Rot := -Tl * Bo;
  Ii  := 1;
  if Tl = 0 then Ii := Ic + 1;
  Ij := 181 -Ic;
  It := 1;
  Inkrement := 0;
  i := Ii - Ic;
  repeat
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
    repeat
      Pl := Sb;
      if Pl <= Se then
      begin
        Pl := Se;
        Te := 1;
      end;
      Rp := Pl * Bo;
      HPLinie (Canvas,NetzS,It,Tl,X,Y,Z,Rp,Rd,Rot,
               Co,Ox,Oy,Oz);
      if (Pl <= -10) or (Pl >= -170) then
      begin
        Hpline (Canvas, Y/HpRadius, X/HpRadius);
        PudS := 'PD;';
      end;
      Ox := X;
      Oy := Y;
      Oz := Z;
      Sb := Sb + Sp;
    until Te <> 0;
    PudS := 'PU;';
  until i >= Ij;
  if GeraetS = 'DXF' then Dxfvertex;
  Inn := 180 - Ic;
  It  := 2;
  Aus := 90;
  if Ro = 90 then Aus := 180;
  Inkrement := 0;
  i := 0;
  repeat
    i := i + ic;
    if (Ro = 90) and (i = 90) then goto Ro90;
    if i = 90 then Farben (Canvas, AequatorFarbe)
    else Farben (Canvas, NetzFarbe);
    Te := 0;
    if (Tl = 90) and (i = Aus) then break;
    Rp := -i * Bo;
    Ox := cos(Rp);
    Oy := sin(Rp);
    Oz := 0;
    if Tl <> 0 then Drehen (Rot, Ox, Oz);
    HpNetz (NetzS, Ox, Oy, Oz);
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
      HPLinie (Canvas,NetzS,It,Tl,X,Y,Z,Rp,Rd,Rot,
               Co,Ox,Oy,Oz);
      if abs(Z) >= 1 then X := 0;
      if (Z > 0) and (Di = - 180) then Y := abs(Y);
      Hpline (Canvas, Y/HpRadius, X/HpRadius);
      PudS := 'PD;';
      Ox := X;
      Oy := Y;
      Oz := Z;
      Sb := Sb + Sp;
    until Te = 1;
    PudS := 'PU;';
    Ro90:
  until i >= Inn;
  if GeraetS = 'DXF' then Dxfvertex;
  Xver1Feld := Nil;
  Yver1Feld := Nil;
  Xver2Feld := Nil;
  Yver2Feld := Nil;
end;

procedure HpNetz (NetzS:string; var Xn,Yn,Zn:real);
var
  Wu,K  : real;
  Radi  : real;
  Xx,El : real;
  Ph,Rh : real;
label
  Schluss;
begin
  Wu := sqrt(2);
  K  := 0.00001;
  Radi := HpRadius;
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

procedure HPLinie (Canvas: TCanvas; NetzS: string;It: byte;
                   Tl: word; var X,Y,Z,Rp,Rd,Rot,Co,
                   Ox, Oy, Oz:real);
var
  K     : real;
  Zm    : TColor;
label
  Ruecksprung;
begin
  K := 0.00001;
  X := cos(Rp);
  Y := -sin(Rp) * cos(Rd);
  Z := -sin(Rp) * sin(Rd);
  if Tl <> 0 then Drehen (Rot,X,Z);
  HpNetz (NetzS,X,Y,Z);
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
  PudS := 'PU;';
  HpRefine (It,NetzS,Tl,Rp,Rd,Rot,Co,Zm,X,Y,Z,Ox,Oy,Oz);
  PudS := 'PD;';
  Hpline (Canvas, Oy/HpRadius, Ox/HpRadius);
  Ox := -Ox;
  Oy := -Oy;
  PudS := 'PU;';
  Hpline (Canvas, Oy/HpRadius,Ox/HpRadius);
  PudS := 'PD;';
  goto Ruecksprung;
end;

procedure HpRefine (It:byte;NetzS:string;Tl:word; Rp,Rd,Rot,Co:real;
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
    HpNetz (NetzS,Ox,Oy,Oz);
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
      HpNetz (NetzS,Ox,Oy,Oz);
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
  HpNetz (NetzS,Ox,Oy,Oz);
  Zm := DiagrFarbe;
end;

procedure HPIsol (Canvas: TCanvas; var LaMax, LbMax: word;
                  var WMax: real; var Pis: array of real;
                  Fortschritt: TProgressBar);
type
  Ba    = array of real;
  Count = array of word;
var
  Wwzeiger    : Tww;
  CountZeiger : Count;
  Ba1Zeiger   : Ba;
  Ba2Zeiger   : Ba;
  Be1Zeiger   : Ba;
  Be2Zeiger   : Ba;
  i           : word;
  j           : byte;
  Zl,Zi       : array[0..10] of real;
  P,Pp, Kal   : real;
  Piso        : real;
begin
  setlength (Wwzeiger, 122);
  for i:= 0 to 121 do setlength(Wwzeiger[i], 32);
  setlength (CountZeiger, ZahlGlob+1);
  setlength (Ba1zeiger, 3000);
  setlength (Ba2zeiger, 3000);
  setlength (Be1zeiger, 3000);
  setlength (Be2zeiger, 3000);
  setlength (XVer1Feld, 5000);
  setlength (XVer2Feld, 5000);
  setlength (YVer1Feld, 5000);
  setlength (YVer2Feld, 5000);
  Kal := Kalotte/10;
  if VielfacheS = 'MULTIPLES' then
  begin
    if ZahlGlob < 100 then Kal := 100 / ZahlGlob else Kal := 1;
  end;
  for i := 1 to ZahlGlob do
  begin
    Countzeiger[i] := 1;
  end;
  Countp (Kal, Countzeiger, AziFeld, FalFeld, Zi, Zl,
          Fortschritt, Wwzeiger);
  Wmax := 0;
  for i := 1 to 120 do
  begin
    for j:= 1 to 30 do
    begin
      if Wwzeiger[i,j] >= Wmax then
      begin
        Wmax  := Wwzeiger[i,j];
        Lamax := i*3;
        Lbmax := j*3;
      end; {end if}
    end; {next j}
  end; {next i}
  if Gefuegetyp = 2 then
  begin
    Lamax := (Lamax + 180) mod 360;
    Lbmax := 90 - Lbmax;
  end;
  if ZahlGlob >= 100 then Wmax := Wmax * 100 / ZahlGlob;
  if VielfacheS = 'MULTIPLES' then
  begin
    for i := 1 to 5 do Pis[i-1] := exp(((ln(Wmax-0.2*Wmax))/4)*(i-1));
  end;
  for i := 0 to 4 do
  begin
    Farben (Canvas, Isolinie[i+1]);
    P  := Pis[i];
    Pp := 0;
    if i > 0 then Pp := Pis[i-1];
    if Pis[i] > Pp then
    begin
      Printer.Canvas.Pen.Width := StrichI[i];
      Piso := P*ZahlGlob/100;
      HPPlisli(Canvas, Piso, Zi, Zl, Ba1zeiger, Ba2zeiger,
               Be1zeiger, Be2zeiger, Wwzeiger);
    end;
  end;
  for i:=0 to high(Wwzeiger) do
  setlength(Wwzeiger[i],0);
  setlength(wwzeiger,0);
  Countzeiger := Nil;
  Ba1zeiger   := Nil;
  Ba2zeiger   := Nil;
  Be1zeiger   := Nil;
  Be2zeiger   := Nil;
  XVer1Feld   := Nil;
  XVer2Feld   := Nil;
  YVer1Feld   := Nil;
  YVer2Feld   := Nil;
end;

procedure HPPlisli(Canvas: TCanvas; P:real;
                   var Zi, Zl: array of real;
                   Ba1zeiger,Ba2zeiger,
                   Be1zeiger,Be2zeiger: array of real;
                   Wwzeiger : Tww);
var
  l, i : integer;
  nz   : word;
begin
  nz := 0;
  for i := 1 to 31 do Wwzeiger[121,i] := Wwzeiger[1,i];
  i := 17;
  l := 0;
  repeat
    l := l + 2;
    Wwzeiger[l,i] := (Wwzeiger[l-1,i] + Wwzeiger[l+1,i]) / 2;
  until l >= 120;
  i := 25;
  l := -1;
  repeat
    l := l + 4;
    Wwzeiger[l,i] := (Wwzeiger[l-2,i] + Wwzeiger[l+2,i]) / 2;
  until l >= 119;
  i := 29;
  l := -3;
  repeat
    l := l + 8;
    Wwzeiger[l,i] := (Wwzeiger[l-4,i] + Wwzeiger[l+4,i]) / 2;
  until l >= 117;
  i := 31;
  l := -7;
  repeat
    l := l + 8;
    Wwzeiger[l,i] := Wwzeiger[1,31];
  until l >= 121;
  nz := 0;
  for l := 1 to 120 do for i := 1 to 16 do
    Samm (l,i,3,nz,P,Zi,Zl,Ba1zeiger,Ba2zeiger,Be1zeiger,
          Be2zeiger, Wwzeiger);
  l := -1;
  repeat
    l := l + 2;
    for i := 17 to 24 do
      Samm (l,i,6,nz,P,Zi,Zl,Ba1zeiger,Ba2zeiger,Be1zeiger,
            Be2zeiger, Wwzeiger);
  until l >= 120;
  l := -3;
  repeat
    l := l + 4;
    for i := 25 to 28 do
      Samm (l,i,12,nz,P,Zi,Zl,Ba1zeiger,Ba2zeiger,Be1zeiger,
            Be2zeiger, Wwzeiger);
  until l >= 120;
  l := -7;
  repeat
    l := l + 8;
    for i := 29 to 30 do
      Samm(l,i,24,nz,P,Zi,Zl,Ba1zeiger,Ba2zeiger,Be1zeiger,
           Be2zeiger, Wwzeiger);
  until l >= 120;
  HPIso2 (Canvas, nz, Ba1zeiger, Ba2zeiger, Be1zeiger,
          Be2zeiger);
  if GeraetS = 'DXF' then Dxfvertex;
end;

procedure HPIso2(Canvas: TCanvas; nz: word; Ba1zeiger,
                 Ba2zeiger,Be1zeiger,
                 Be2zeiger: array of real);
var
  Ll : byte;
  m  : integer;
  T  : real;
  Xa, Xe  : real;
  Ya, Ye  : real;
  X , Y   : real;
  n, i    : word;
label
  Iso20;
begin
  Ll := 1;
  m  := nz;
  T  := 0.001;
  if m <= 0 then exit;  {if m <= 0 }
  for i := 1 to m do
  begin
    if Ba1zeiger[i] > 360 then Ba1zeiger[i] := 360;
    if Be1zeiger[i] > 360 then Be1zeiger[i] := 360;
  end;
  Xa := Ba1zeiger[1];
  Ya := Ba2zeiger[1];
  Xe := Be1zeiger[1];
  Ye := Be2zeiger[1];
  Tra(Xa,Ya,X,Y);
  PudS := 'PU;';
  Hpline (Canvas, X,Y);
Iso20:
  if Xe <= 360 then
  begin
    Tra(Xe,Ye,X,Y);
    PudS := 'PD;';
    Hpline (Canvas, X,Y);
  end;
  if abs(Xe-Xa) + abs(Ye-Ya) > 0.5 then
  begin
    if abs(Ye) <= 0.1 then
    begin
      Xe := Xa;
      Ye := Ya;
      Tra(Xa,Ya,X,Y);
      PudS := 'PU;';
      Hpline (Canvas, X,Y);
    end;
  end;
  if m < 2 then exit;
  for n := 2 to m do
  begin
    if Max(abs(Xe-Ba1zeiger[n]),abs(Ye-Ba2zeiger[n])) <= T then
    begin
      Xe := Be1zeiger[n];
      Ye := Be2zeiger[n];
      Ba1zeiger[n] := Ba1Zeiger[m];
      Ba2zeiger[n] := Ba2Zeiger[m];
      Be1zeiger[n] := Be1Zeiger[m];
      Be2zeiger[n] := Be2Zeiger[m];
      m:=m-1;
      goto Iso20
    end;
    if Max(abs(Xe-Be1zeiger[n]),abs(Ye-Be2zeiger[n])) <= T then
    begin
      Xe := Ba1zeiger[n];
      Ye := Ba2zeiger[n];
      Ba1zeiger[n] := Ba1Zeiger[m];
      Ba2zeiger[n] := Ba2Zeiger[m];
      Be1zeiger[n] := Be1Zeiger[m];
      Be2zeiger[n] := Be2Zeiger[m];
      m := m - 1;
      goto Iso20;
    end;
  end; {NEXT N}
  if m < 2 then exit;      {m <=2 }
  Xa := Ba1zeiger[m];
  Ya := Ba2zeiger[m];
  Xe := Be1zeiger[m];
  Ye := Be2zeiger[m];
  m := m - 1;
  Tra(Xa,Ya,X,Y);
  PudS := 'PU;';
  Hpline (Canvas, X,Y);
  goto Iso20;
end;

procedure DXFPolygon(Xpoly, Ypoly:array of double);
var
  i      : word;
begin
  writeln(Pdatei,'LWPOLYLINE');
  writeln(Pdatei,5);
  writeln(Pdatei,'4c');
  writeln(Pdatei,100);
  writeln(Pdatei,'AcDbEntity');
  writeln(Pdatei,6);
  writeln(Pdatei,'Continuous');
  writeln(Pdatei,100);
  writeln(Pdatei,'AcDbPolyline');
  writeln(Pdatei,90);
  writeln(Pdatei,Zaehler);
  writeln(Pdatei,70);
  writeln(Pdatei,1);
  writeln(Pdatei,62);
  writeln(Pdatei,Dxfp);
  for i := 1 to Zaehler do
  begin
    writeln(Pdatei,10);
    writeln(Pdatei,Xpoly[i]:10:6);
    writeln(Pdatei,20);
    writeln(Pdatei,Ypoly[i]:10:6);
  end;
  writeln(Pdatei,0);
end;

Procedure HpKonturen (Canvas: TCanvas; Punkt1,Punkt2,Punkt3,Punkt4,Punkt5: TPu;
                      var Zcluster: array of byte; var Pix: Tpi);
var
  m, j, i  : word;
  XS,YS    : string;
  XSA,YSA  : string;
  Xm, Ym   : word;
  x1,x2,x3 : double;
  y1,y2,y3 : double;
  xmittel  : double;
  ymittel  : double;
  Fak      : double;
  Xa, Ya   : double;
  Ypa, Xpa : double;
  k        : word;
  Xpoly    : array of double;
  Ypoly    : array of double;
  P        : byte;
begin
  if GeraetS ='HPGL' then
  begin
    Xm  := round(400*XKoord+HpRadius/100);
    Ym  := round(400*YKoord);
    Fak := 400*HpRadius/Radius+HpRadius/90;
  end;
  if GeraetS = 'DXF' then
  begin
    Xm  := round(XKoord);
    Ym  := round(YKoord);
    Fak := 1.005*HpRadius/Radius;
  end;
  if GeraetS = 'Plotter' then
  begin
    Xm  := round(Xkoord*100*Faktor);
    Ym  := round(Ykoord*100*Faktor);
    Fak := 1.01*Faktor*100*HpRadius/Radius;
  end;
  for m := 0 to 4 do
  begin
    if GeraetS <> 'Plotter' then Farben(Canvas,Isolinie[m+1])
    else Canvas.Pen.Color   := Isolinie[m+1];
    Canvas.Pen.Width := StrichI[m];
    for j := 1 to ZCluster[m] do
    begin
      if Pix[m,j] > 7 then     //7
      begin
        if GeraetS = 'DXF' then
        begin
          setlength (XPoly,5000);
          setlength (YPoly,5000);
        end;
        case m of
          0: begin
               Xa  := Xm+(Punkt1[j,1].x-Xmitte)*Fak;
               Ya  := Ym+(YMitte-Punkt1[j,1].y)*Fak;
               XSA := IntToStr(round(Xa));
               YSA := IntToStr(round(Ya));
               Xpa := Xm+(Punkt1[j,1].x-Xmitte)*Fak;
               Ypa := Ym-(YMitte-Punkt1[j,1].y)*Fak;
             end;
          1: begin
               Xa  := Xm+(Punkt2[j,1].x-Xmitte)*Fak;
               Ya  := Ym+(YMitte-Punkt2[j,1].y)*Fak;
               XSA := IntToStr(round(Xa));
               YSA := IntToStr(round(Ya));
               Xpa := Xm+(Punkt2[j,1].x-Xmitte)*Fak;
               Ypa := Ym-(YMitte-Punkt2[j,1].y)*Fak;
             end;
          2: begin
               Xa  := Xm+(Punkt3[j,1].x-Xmitte)*Fak;
               Ya  := Ym+(YMitte-Punkt3[j,1].y)*Fak;
               XSA := IntToStr(round(Xa));
               YSA := IntToStr(round(Ya));
               Xpa := Xm+(Punkt3[j,1].x-Xmitte)*Fak;
               Ypa := Ym-(YMitte-Punkt3[j,1].y)*Fak;
             end;
          3: begin
               Xa  := Xm+(Punkt4[j,1].x-Xmitte)*Fak;
               Ya  := Ym+(YMitte-Punkt4[j,1].y)*Fak;
               XSA := IntToStr(round(Xa));
               YSA := IntToStr(round(Ya));
               Xpa := Xm+(Punkt4[j,1].x-Xmitte)*Fak;
               Ypa := Ym-(YMitte-Punkt4[j,1].y)*Fak;
             end;
          4: begin
               Xa  := Xm+(Punkt5[j,1].x-Xmitte)*Fak;
               Ya  := Ym+(YMitte-Punkt5[j,1].y)*Fak;
               XSA := IntToStr(round(Xa));
               YSA := IntToStr(round(Ya));
               Xpa := Xm+(Punkt5[j,1].x-Xmitte)*Fak;
               Ypa := Ym-(YMitte-Punkt5[j,1].y)*Fak;
             end;
        end;
        if GeraetS = 'HPGL' then
        begin
          Plotte ('Pu;Pa'+XSA+','+YSA+';');
          Plotte ('Pd;Pa'+XSA+','+YSA+';');   //
        end;
        if GeraetS = 'Plotter' then
          Canvas.moveto(round(Xpa), round(Ypa));
        k := 1;
        for i := 2 to Pix[m,j]-1 do
        begin
          if i mod 3 = 0 then
          begin
            case m of
              0: begin
                   x1 := Punkt1[j,i-1].x;
                   x2 := Punkt1[j,i].x;
                   x3 := Punkt1[j,i+1].x;
                   y1 := Punkt1[j,i-1].y;
                   y2 := Punkt1[j,i].y;
                   y3 := Punkt1[j,i+1].y;
                 end;
              1: begin
                   x1 := Punkt2[j,i-1].x;
                   x2 := Punkt2[j,i].x;
                   x3 := Punkt2[j,i+1].x;
                   y1 := Punkt2[j,i-1].y;
                   y2 := Punkt2[j,i].y;
                   y3 := Punkt2[j,i+1].y;
                 end;
              2: begin
                   x1 := Punkt3[j,i-1].x;
                   x2 := Punkt3[j,i].x;
                   x3 := Punkt3[j,i+1].x;
                   y1 := Punkt3[j,i-1].y;
                   y2 := Punkt3[j,i].y;
                   y3 := Punkt3[j,i+1].y;
                 end;
              3: begin
                   x1 := Punkt4[j,i-1].x;
                   x2 := Punkt4[j,i].x;
                   x3 := Punkt4[j,i+1].x;
                   y1 := Punkt4[j,i-1].y;
                   y2 := Punkt4[j,i].y;
                   y3 := Punkt4[j,i+1].y;
                 end;
              4: begin
                   x1 := Punkt5[j,i-1].x;
                   x2 := Punkt5[j,i].x;
                   x3 := Punkt5[j,i+1].x;
                   y1 := Punkt5[j,i-1].y;
                   y2 := Punkt5[j,i].y;
                   y3 := Punkt5[j,i+1].y;
                 end;
            end;    //case of
            xmittel := (x1+x2+x3)/3-XMitte;
            ymittel := YMitte-(y1+y2+y3)/3;
            if GeraetS = 'HPGL' then
            begin
              case m of
                0: begin
                     XS := IntToStr(round(Xm+xmittel*Fak));
                     YS := IntToStr(round(Ym+ymittel*Fak));
                     Plotte ('Pd;Pa'+XS+','+YS+';');
                   end;
                1: begin
                     XS := IntToStr(round(Xm+xmittel*Fak));
                     YS := IntToStr(round(Ym+ymittel*Fak));
                     Plotte ('Pd;Pa'+XS+','+YS+';');
                   end;
                2: begin
                     XS := IntToStr(round(Xm+xmittel*Fak));
                     YS := IntToStr(round(Ym+ymittel*Fak));
                     Plotte ('Pd;Pa'+XS+','+YS+';');
                   end;
                3: begin
                     XS := IntToStr(round(Xm+xmittel*Fak));
                     YS := IntToStr(round(Ym+ymittel*Fak));
                     Plotte ('Pd;Pa'+XS+','+YS+';');
                   end;
                4: begin
                     XS := IntToStr(round(Xm+xmittel*Fak));
                     YS := IntToStr(round(Ym+ymittel*Fak));
                     Plotte ('Pd;Pa'+XS+','+YS+';');
                   end;
              end;
            end;
            if GeraetS = 'DXF' then
            begin
              inc(k);
              if k > 5000 then
              begin
                showmessage('k>5000');
                exit;
              end;
              Xpoly[k] := (Xm+xmittel*Fak)*10;
              Ypoly[k] := (Ym+ymittel*Fak)*10;
            end;
            if GeraetS = 'Plotter' then
            begin
              Canvas.Pen.Width := StrichI[m];
              Canvas.lineto (round(Xm+xmittel*Fak),
                             round(Ym-Ymittel*Fak));
            end;
          end; // mod
        end; // i
        if GeraetS = 'DXF' then
        begin
          Zaehler        := k+1;
          XPoly[1]       := Xa*10;
          Ypoly[1]       := Ya*10;
          Xpoly[Zaehler] := Xpoly[1];
          Ypoly[Zaehler] := Ypoly[1];
          DXFPolygon (Xpoly, Ypoly);
          Xpoly := nil;
          Ypoly := nil;
        end;
        if GeraetS = 'Plotter' then
        begin
          Canvas.Pen.Width := 2*StrichI[m];
          Canvas.lineto (round(Xpa), round(Ypa));
        end;
        if GeraetS = 'HPGL' then
        begin
          Plotte ('Pd;Pa'+XSA+','+YSA+';');
          Plotte ('Pu;');
        end;
      end;
    end;
  end;
  if GeraetS = 'DXF' then Dxfp := 7;
  if GeraetS = 'HPGL' then Plotte ('Sp1');
end;

Procedure HpStressKonturen (Canvas: TCanvas; Punkt1,Punkt2,Punkt3,Punkt4,Punkt5: TPu;
                      var Zcluster: array of byte; var Pix: Tpi);
var
  m, j, i  : word;
  XS,YS    : string;
  XSA,YSA  : string;
  Xm, Ym   : word;
  x1,x2,x3 : double;
  y1,y2,y3 : double;
  xmittel  : double;
  ymittel  : double;
  Fak      : double;
  Xa, Ya   : double;
  Ypa, Xpa : double;
  k, z     : word;
  Xpoly    : array of double;
  Ypoly    : array of double;
  P        : byte;
  StiftS   : string[2];
begin
  if GeraetS ='HPGL' then
  begin
    Xm  := round(400*XKoord+HpRadius/100);
    Ym  := round(400*YKoord);
    Fak := 400*HpRadius/Radius+HpRadius/90;
  end;
  if GeraetS = 'DXF' then
  begin
    Xm  := round(XKoord);
    Ym  := round(YKoord);
    Fak := 1.005*HpRadius/Radius;
  end;
  if GeraetS = 'Plotter' then
  begin
    Xm  := round(Xkoord*100*Faktor);
    Ym  := round(Ykoord*100*Faktor);
    Fak := 1.01*Faktor*100*HpRadius/Radius;
  end;
  for m := 0 to 4 do
  begin
    if GeraetS <> 'Plotter' then Farben(Canvas,Isolinie[m+1])
    else Canvas.Pen.Color   := Isolinie[m+1];
    Canvas.Pen.Width := StrichI[m];
    for j := 1 to ZCluster[m] do
    begin
      if Pix[m,j] > 8 then     //7
      begin
        if GeraetS = 'DXF' then
        begin
          setlength (XPoly,5000);
          setlength (YPoly,5000);
        end;
        case m of
          0: begin
               Xa  := Xm+(abs(Punkt1[j,1].x)-Xmitte)*Fak;
               Ya  := Ym+(YMitte-Punkt1[j,1].y)*Fak;
               XSA := IntToStr(round(Xa));
               YSA := IntToStr(round(Ya));
               Xpa := Xm+(abs(Punkt1[j,1].x)-Xmitte)*Fak;
               Ypa := Ym-(YMitte-Punkt1[j,1].y)*Fak;
               if Punkt1[j,1].x > 0 then StiftS := 'Pd'
               else StiftS := 'Pu';
             end;
          1: begin
               Xa  := Xm+(abs(Punkt2[j,1].x)-Xmitte)*Fak;
               Ya  := Ym+(YMitte-Punkt2[j,1].y)*Fak;
               XSA := IntToStr(round(Xa));
               YSA := IntToStr(round(Ya));
               Xpa := Xm+(abs(Punkt2[j,1].x)-Xmitte)*Fak;
               Ypa := Ym-(YMitte-Punkt2[j,1].y)*Fak;
               if Punkt2[j,1].x > 0 then StiftS := 'Pd'
               else StiftS := 'Pu';
             end;
          2: begin
               Xa  := Xm+(abs(Punkt3[j,1].x)-Xmitte)*Fak;
               Ya  := Ym+(YMitte-Punkt3[j,1].y)*Fak;
               XSA := IntToStr(round(Xa));
               YSA := IntToStr(round(Ya));
               Xpa := Xm+(abs(Punkt3[j,1].x)-Xmitte)*Fak;
               Ypa := Ym-(YMitte-Punkt3[j,1].y)*Fak;
               if Punkt3[j,1].x > 0 then StiftS := 'Pd'
               else StiftS := 'Pu';
             end;
          3: begin
               Xa  := Xm+(abs(Punkt4[j,1].x)-Xmitte)*Fak;
               Ya  := Ym+(YMitte-Punkt4[j,1].y)*Fak;
               XSA := IntToStr(round(Xa));
               YSA := IntToStr(round(Ya));
               Xpa := Xm+(abs(Punkt4[j,1].x)-Xmitte)*Fak;
               Ypa := Ym-(YMitte-Punkt4[j,1].y)*Fak;
               if Punkt4[j,1].x > 0 then StiftS := 'Pd'
               else StiftS := 'Pu';
             end;
          4: begin
               Xa  := Xm+(abs(Punkt5[j,1].x)-Xmitte)*Fak;
               Ya  := Ym+(YMitte-Punkt5[j,1].y)*Fak;
               XSA := IntToStr(round(Xa));
               YSA := IntToStr(round(Ya));
               Xpa := Xm+(abs(Punkt5[j,1].x)-Xmitte)*Fak;
               Ypa := Ym-(YMitte-Punkt5[j,1].y)*Fak;
               if Punkt5[j,1].x > 0 then StiftS := 'Pd'
               else StiftS := 'Pu';
             end;
        end;
        if GeraetS = 'HPGL' then
          Plotte ('Pu;Pa'+XSA+','+YSA+';');
        if GeraetS = 'Plotter' then
          Canvas.moveto(round(Xpa), round(Ypa));
        k := 1;
        for i := 2 to Pix[m,j]-1 do
        begin
          case m of
            0: begin
                if Punkt1[j,i].x > 0 then StiftS := 'Pd'
                else StiftS := 'Pu';
               end;
            1: begin
                 if Punkt2[j,i].x > 0 then StiftS := 'Pd'
                 else StiftS := 'Pu';
               end;
            2: begin
                 if Punkt3[j,i].x > 0 then StiftS := 'Pd'
                 else StiftS := 'Pu';
               end;
            3: begin
                 if Punkt4[j,i].x > 0 then StiftS := 'Pd'
                 else StiftS := 'Pu';
               end;
            4: begin
                 if Punkt5[j,i].x > 0 then StiftS := 'Pd'
                 else StiftS := 'Pu';
               end;
          end;
          if i mod 3 = 0 then
          begin
            case m of
              0: begin
                   x1 := abs(Punkt1[j,i-1].x);
                   x2 := abs(Punkt1[j,i].x);
                   x3 := abs(Punkt1[j,i+1].x);
                   y1 := Punkt1[j,i-1].y;
                   y2 := Punkt1[j,i].y;
                   y3 := Punkt1[j,i+1].y;
                 end;
              1: begin
                   x1 := abs(Punkt2[j,i-1].x);
                   x2 := abs(Punkt2[j,i].x);
                   x3 := abs(Punkt2[j,i+1].x);
                   y1 := Punkt2[j,i-1].y;
                   y2 := Punkt2[j,i].y;
                   y3 := Punkt2[j,i+1].y;
                 end;
              2: begin
                   x1 := abs(Punkt3[j,i-1].x);
                   x2 := abs(Punkt3[j,i].x);
                   x3 := abs(Punkt3[j,i+1].x);
                   y1 := Punkt3[j,i-1].y;
                   y2 := Punkt3[j,i].y;
                   y3 := Punkt3[j,i+1].y;
                 end;
              3: begin
                   x1 := abs(Punkt4[j,i-1].x);
                   x2 := abs(Punkt4[j,i].x);
                   x3 := abs(Punkt4[j,i+1].x);
                   y1 := Punkt4[j,i-1].y;
                   y2 := Punkt4[j,i].y;
                   y3 := Punkt4[j,i+1].y;
                 end;
              4: begin
                   x1 := abs(Punkt5[j,i-1].x);
                   x2 := abs(Punkt5[j,i].x);
                   x3 := abs(Punkt5[j,i+1].x);
                   y1 := Punkt5[j,i-1].y;
                   y2 := Punkt5[j,i].y;
                   y3 := Punkt5[j,i+1].y;
                 end;
            end;    //case of
            xmittel := (x1+x2+x3)/3-XMitte;
            ymittel := YMitte-(y1+y2+y3)/3;
            if GeraetS = 'HPGL' then
            begin
              case m of
                0: begin
                     XS := IntToStr(round(Xm+xmittel*Fak));
                     YS := IntToStr(round(Ym+ymittel*Fak));
                     Plotte (StiftS+';Pa'+XS+','+YS+';');
                   end;
                1: begin
                     XS := IntToStr(round(Xm+xmittel*Fak));
                     YS := IntToStr(round(Ym+ymittel*Fak));
                     Plotte (StiftS+';Pa'+XS+','+YS+';');
                   end;
                2: begin
                     XS := IntToStr(round(Xm+xmittel*Fak));
                     YS := IntToStr(round(Ym+ymittel*Fak));
                     Plotte (StiftS+';Pa'+XS+','+YS+';');
                   end;
                3: begin
                     XS := IntToStr(round(Xm+xmittel*Fak));
                     YS := IntToStr(round(Ym+ymittel*Fak));
                     Plotte (StiftS+';Pa'+XS+','+YS+';');
                   end;
                4: begin
                     XS := IntToStr(round(Xm+xmittel*Fak));
                     YS := IntToStr(round(Ym+ymittel*Fak));
                     Plotte (StiftS+';Pa'+XS+','+YS+';');
                   end;
              end;
            end;
            if GeraetS = 'DXF' then
            begin
              inc(k);
              if k > 5000 then
              begin
                showmessage('k>5000');
                exit;
              end;
              Xpoly[k] := (Xm+xmittel*Fak)*10;
              Ypoly[k] := (Ym+ymittel*Fak)*10;
            end;
            if GeraetS = 'Plotter' then
            begin
              Canvas.Pen.Width := StrichI[m];
              Canvas.lineto (round(Xm+xmittel*Fak),
                             round(Ym-Ymittel*Fak));
            end;
          end; // mod
        end; // i
        if GeraetS = 'DXF' then
        begin
          Zaehler        := k+1;
          XPoly[1]       := Xa*10;
          Ypoly[1]       := Ya*10;
          Xpoly[Zaehler] := Xpoly[1];
          Ypoly[Zaehler] := Ypoly[1];
          DXFPolygon (Xpoly, Ypoly);
          Xpoly := nil;
          Ypoly := nil;
        end;
        if GeraetS = 'Plotter' then
        begin
          Canvas.Pen.Width := 2*StrichI[m];
          Canvas.lineto (round(Xpa), round(Ypa));
        end;
        if GeraetS = 'HPGL' then
        begin
          z := Pix[m,j];
          case m of
            0: begin
                if Punkt1[j,z].x > 0 then StiftS := 'Pd'
                else StiftS := 'Pu';
               end;
            1: begin
                 if Punkt2[j,z].x > 0 then StiftS := 'Pd'
                 else StiftS := 'Pu';
               end;
            2: begin
                 if Punkt3[j,z].x > 0 then StiftS := 'Pd'
                 else StiftS := 'Pu';
               end;
            3: begin
                 if Punkt4[j,z].x > 0 then StiftS := 'Pd'
                 else StiftS := 'Pu';
               end;
            4: begin
                 if Punkt5[j,z].x > 0 then StiftS := 'Pd'
                 else StiftS := 'Pu';
               end;
          end;
          Plotte ('Pd;Pa'+XSA+','+YSA+';Pu;');
        end;
      end;
    end;
  end;
  if GeraetS = 'DXF' then Dxfp := 7;
  if GeraetS = 'HPGL' then Plotte ('Sp1');
end;

end.