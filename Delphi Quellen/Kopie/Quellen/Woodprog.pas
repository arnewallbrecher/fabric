Unit Woodprog;

interface
uses Printers, Dateien, Basic, Texte, Drucken, Classes,
     Graphics, Globvar, Dialogs, SysUtils, Standard;

procedure Wschirm (Canvas: TCanvas; CEnde: word; var X0,Y0, Laenge: word);
procedure Wschreiben (DateiS:string; N:word; L1, L2, L3:array of word;
                      Zahl : array of word);
procedure Wdrucken (Prog:byte; DaS:string; N:word;
                    L1,L2,L3: array of word);
procedure WinWdrucken (SDatei: string; Prog:byte; DaS:string;
                       N:word; L1,L2,L3: array of word);
procedure Vschirm (Canvas: TCanvas; var X1d,X2d,X3d,Y1d,Y2d,Y3d: word);

implementation

procedure Wschirm (Canvas: TCanvas; CEnde: word; var X0,Y0, Laenge: word);
var
  Xlinkso    : word;
  Ylinkso    : word;
  i          : byte;
  Xe,Ye      : word;
  X1d, Y1d   : word;
  X2d, Y2d   : word;
  X3d, Y3d   : word;
  RWinkel    : real;
  Xw, Yw     : word;
  MS, SkalaS : string[4];
  CSkala     : word;
begin
  Bo := Pi/180;
  with Canvas do
  begin
    Pen.Color := RahmenFarbe;
    Pen.Style := psSolid;
    Pen.Width := 2;
    Brush.Color := HintFarbe;
    Brush.Style := bsSolid;
    if HTransparent then
    begin
      Brush.Color := clWhite;
      HintFarbe   := clWhite;
    end
    else Rectangle (0, 0, Breite, Hoehe);
    Laenge  := 17 * round (Hoehe / 20);
    Xlinkso := XMitte - Laenge div 2 + 10;
    Ylinkso := round (Hoehe / 20) - 10;
    X0      := Xlinkso;
    Y0      := Ylinkso + Laenge;
    Xe      := X0 + Laenge;
    Ye      := Ylinkso;
    X1d := X0;
    Y1d := Y0;
    X2d := Xe;
    Y2d := Y0;
    X3d := X0;
    Y3d := Ye;
    Pen.Color   := KoordinFarbe;
    Pen.Width   := 1;
    Brush.Color := RGFarbe;
    Brush.Style := bsSolid;
    Polygon ([Point(X1d,Y1d), Point(X2d,Y2d), Point(X3d,Y3d)]); {Dreieck}
    Brush.Color := HintFarbe;
    Font.Color  := KoordinFarbe;
    Font.Size   := 10;
    Brush.Style := bsClear;
    for i := 1 to 5 do
    begin
      RWinkel := i * 15 * Bo;
      Xw     := X0 + round (Laenge * cos (RWinkel));
      Yw     := Y0 - round (Laenge * sin (RWinkel));
      Moveto (X0, Y0);
      Lineto ( Xw, Yw);
      str (Tan(RWinkel):3:1,MS);
      TextOut (Xw+5,Yw,'m='+Ms);
      if i = 2 then
      begin
        Pen.Width := 2;
      end
      else
      begin
        Pen.Width := 1;
        Pen.Color := KoordinFarbe;
      end;
    end;
    for i := 1 to 6 do
    begin
      CSkala := round (i * Laenge / 6);
      Moveto (X0 + CSkala, Y0);
      Lineto (X0,Y0 - Cskala);
      str ((i*CEnde/6):3:1,SkalaS);
      TextOut (X0+Cskala+5,Y0+5,SkalaS);
      TextOut (X0-25,Y0-Cskala-10,SkalaS);
    end;
    Font.Color := KoordinFarbe;
    Font.Size := 15;
    TextOut (Xe-55,Y0+25,'ln(e2/e1)');
    TextOut (115,Ye-10,'ln(e3/e2)');
    Font.Color   := KoordinFarbe;
    Font.Size   := 15;
    TextOut (Breite-230,8,Tx(406));       {Woodcok-Diagramm}
    Font.Size  := 20;
    TextOut (XMitte - 50, 30, Tx(815));   {Cluster-Feld}
    TextOut (500, 340, Tx(816));          {Gürtel-Feld}
  end;
end;

procedure Wschreiben (DateiS:string; N:word; L1,L2,
                      L3:array of word; Zahl:array of word);
var
  Datei   : text;
  i       : word;
begin
  assign (Datei, DateiS);
  rewrite (Datei);
  try
    writeln (Datei,DateiS);
    for i := 1 to N do writeln (Datei,L1[i],',',L2[i],',',L3[i],',',
                                Zahl[i]);
  finally
    CloseFile (Datei);
  end;
end;

procedure Wdrucken (Prog:byte; DaS:string; N:word; L1,L2,L3:array of word);
var
  DruckText : TextFile;
  i         : word;
  E1,E2,E3  : real;
  Cw        : real;
  JahrS     : string;
  MonS      : string;
  TagS      : string;
  WtagS     : string;
  ZeitS     : string;
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
      if Prog = 13 then writeln (DruckText, SpaceS(22),Tx(406));{Woodcock-Diagramm}
      if Prog = 16 then writeln (Drucktext, SpaceS(22),Tx(407));{VOLLMER-Diagramm}
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
      writeln (DruckText,SpaceS(50),N,Tx(408));                    {Diagramme}
      writeln (DruckText);
      writeln (DruckText);
      write (DruckText,SpaceS(50));
      Style := Style + [fsUnderline];
      writeln (DruckText, Tx(409));    {Eigenwert 1  Eigenwert 2   Eigenwert 3   c-Wert}
      Style := Style - [fsUnderline];
      for i := 1 to N do
      begin
        E1 := L1[i] / 1000;
        E2 := L2[i] / 1000;
        E3 := L3[i] / 1000;
        Cw := ln(E3/E1);
        writeln (DruckText,SpaceS(56),E1:6:4,SpaceS(12),E2:6:4,SpaceS(12),E3:6:4,
                 SpaceS(8),Cw:7:2);
      end;
    end;
  finally
    CloseFile(Drucktext);
  end;
end;

procedure WinWdrucken (SDatei: string; Prog:byte; DaS:string;
                       N:word; L1,L2,L3: array of word);
var
  Datei     : TextFile;
  i         : word;
  E1,E2,E3  : real;
  Cw        : real;
  JahrS     : string;
  MonS      : string;
  TagS      : string;
  WtagS     : string;
  ZeitS     : string;
begin
  Assign (Datei, SDatei);
  rewrite (Datei);
  Uhr(JahrS, MonS, TagS, WtagS, ZeitS);
  if Prog = 13 then writeln (Datei, Tx(406));{Woodcock-Diagramm}
  if Prog = 16 then writeln (Datei, Tx(407));{VOLLMER-Diagramm}
  writeln (Datei, Tx(190),' ', WTagS,', ', TagS,'. ',
           MonS,' ', JahrS,' ',ZeitS);
  for i := 0 to DateiZahl do
  writeln(Datei, Tx(256),' ',DateiNameS[i]); {Dateiname}
  writeln (Datei,N,Tx(408));                    {Diagramme}
  writeln (Datei, Tx(409));    {Eigenwert 1  Eigenwert 2   Eigenwert 3   c-Wert}
  for i := 1 to N do
  begin
    E1 := L1[i] / 1000;
    E2 := L2[i] / 1000;
    E3 := L3[i] / 1000;
    Cw := ln(E3/E1);
    writeln (Datei,SpaceS(6),E1:6:4,SpaceS(11),E2:6:4,
             SpaceS(11),E3:6:4, SpaceS(7),Cw:7:2);
  end;
  CloseFile(Datei);
end;

procedure Vschirm (Canvas: TCanvas; var X1d,X2d,X3d,Y1d,Y2d,Y3d: word);
var
  Xt1, Xt2 : word;
  Xt3, i   : word;
  Yt1, Yt2 : word;
  Yt3      : word;
  L        : real;
begin
  Bo := Pi/180;
  with Canvas do
  begin
    Pen.Color   := RahmenFarbe;
    Pen.Style   := psSolid;
    Pen.Width   := 2;
    Brush.Color := HintFarbe;
    if HTransparent then
    begin
      Brush.Color := clWhite;
      HintFarbe   := clWhite;
    end
    else Rectangle (0, 0, Breite, Hoehe);
    X1d := round (Breite/20);
    Y1d := round (Hoehe/8);
    X2d := round (Breite - Breite/20);
    Y2d := Y1d;
    X3d := XMitte;
    Y3d := Y1d + round ((X2d - X1d)/2 * Tan (60*Bo));
    Pen.Color   := KoordinFarbe;
    Pen.Width   := 1;
    Brush.Color := RGFarbe;
    Brush.Style := bsSolid;
    Polygon ([Point(X1d,Y1d), Point(X2d,Y2d), Point(X3d,Y3d)]); {Dreieck}
    Font.Color := KoordinFarbe;
    Brush.Color := HintFarbe;
    Font.Size := 15;
    Textout (X1d,Y1d-70, Tx(818));       {Punkte}
    Textout (X1d,Y1d-40,'E3-E2');
    Textout (X2d-80,Y1d-70,Tx(819));     {Gürtel}
    Textout (X2d-80,Y1d-40,'2(E2-E1)');
    Textout (X3d+50,Y3d-50,Tx(820));     {Zufall}
    Textout (X3d+50,Y3d-20,'3E1');
    for i := 1 to 9 do
    begin
      Xt1 := round (X1d + i * (X2d - X1d)/10);
      Xt2 := round (Xt1 - 10 * Tan (30 * Bo));
      Xt3 := round (Xt1 + 10 * Tan (30 * Bo));
      Moveto (Xt1,Y1d);
      Lineto (Xt2,Y1d+10);
      Moveto (Xt1,Y1d);
      Lineto (Xt3,Y1d+10);
    end;
    L := 10 / sin (60 * Bo);
    for i := 1 to 9 do
    begin
      Xt1 := round (X1d + i * (Y3d - Y1d) * Tan (30 * Bo)/10);
      Xt2 := round (Xt1 + L);
      Xt3 := round (Xt1 + L/2);
      Yt1 := round (Y1d + i * (Y3d - Y1d) / 10);
      Yt2 := Yt1;
      Yt3 := round (Yt1 - L * Tan (60 * Bo) / 2);
      Moveto (Xt1,Yt1);
      Lineto (Xt2,Yt2);
      Moveto (Xt1,Yt1);
      Lineto (Xt3,Yt3);
    end;
    for i := 1 to 9 do
    begin
      Xt1 := round (X2d - i * (Y3d - Y1d) * Tan (30 * Bo) / 10);
      Xt2 := round (Xt1 - L);
      Xt3 := round (Xt1 - L/2);
      Yt1 := round (Y1d + i * (Y3d - Y1d) / 10);
      Yt2 := Yt1;
      Yt3 := round (Yt1 - L * Tan (60 * Bo) / 2);
      Moveto (Xt1, Yt1);
      Lineto (Xt2,Yt2);
      Moveto (Xt1,Yt1);
      Lineto (Xt3,Yt3);
    end;
  end;{Canvas}
end;

end.