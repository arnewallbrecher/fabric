Unit RGprog;

interface
uses Dateien, Basic, SysUtils, Dialogs, Drucken, Printers, Texte, Globvar,
     Graphics, Classes, Standard;

procedure Liesrg (DiscS:string; var DaS:string; var N:word;
                  var Reg , Zyl, Sym: array of byte);
procedure Schreiben (DateiS:string; N:word; Reg,Zyl,Sym:array of byte);
procedure Druck (N: word; A,F,Ra: array of byte);
procedure WinDruck (SDatei: string;N: word;
                    A,F,Ra: array of byte);
procedure Bildschirm (Canvas: TCanvas; var X0, Y0, Laenge:word);

implementation

procedure Schreiben (DateiS:string; N:word; Reg, Zyl, Sym: array of byte);
var
  Datei : Text;
  i     : word;
begin
  assign (Datei,DateiS);
  rewrite (Datei);
  try
    writeln (Datei,DateiS);
    for i := 1 to N do Writeln (Datei, Reg[i], ',', Zyl[i], ',', Sym[i]);
    Beep;
  finally
    CloseFile (Datei);
  end;
end;

procedure Druck (N:word; A,F,Ra:array of byte);
var
  DruckText     : TextFile;
  JahrS         : string;
  MonS          : string;
  TagS          : string;
  WtagS         : string;
  ZeitS         : string;
  i             : word;
  SymbolS       : array[0..10] of string[20];
begin
  SymbolS[1]  := Tx(392);                   {Kreis, offen    }
  SymbolS[2]  := Tx(393);                   {Kreis, gefüllt  }
  SymbolS[3]  := Tx(394);                   {Quadrat, offen  }
  SymbolS[4]  := Tx(395);                   {Quadrat, gefüllt}
  SymbolS[5]  := Tx(396);                   {Dreieck, offen  }
  SymbolS[6]  := Tx(397);                   {Dreieck, gefüllt}
  SymbolS[7]  := Tx(398);                   {Raute, offen    }
  SymbolS[8]  := Tx(399);                   {Raute, gefüllt  }
  SymbolS[9]  := '       +        ';
  SymbolS[10] := '       x        ';
  Uhr (JahrS, MonS, TagS, WtagS, ZeitS);
  AssignPrn (Drucktext);
  rewrite (Drucktext);
  try
    with Printer.Canvas.Font do
    begin
      Name  := 'TimesNewRoman';
      Size  := 24;
      Style := Style + [fsbold];
      writeln (Drucktext);
      writeln (Drucktext, SpaceS(24), Tx(448));    {R%-G%-Diagramm}
      writeln (Drucktext);
      Size  := 10;
      Style := Style - [fsbold];
      writeln (Drucktext, SpaceS(75), Tx(190));         {Tag der Bearbeitung}
      writeln (Drucktext, SpaceS(75), WTagS,',  ', TagS,'.  ', MonS,'  ', JahrS,
      SpaceS(20), Tx(210), ZeitS);
      writeln (DruckText);
      for i := 0 to DateiZahl do
        writeln(DruckText, SpaceS(50), Tx(256),'  ',DateiNameS[i]); {Dateiname}
        writeln (Drucktext);
      writeln (DruckText);
      writeln (DruckText, SpaceS(50), N, Tx(449));                {Diagramme}
      writeln (DruckText);
      write (DruckText, SpaceS(50));
      Style := Style + [fsUnderline];
      Writeln(Drucktext,Tx(842), SpaceS(10), Tx(843), SpaceS(10), 'Symbol');
      Style := Style - [fsUnderline];
      writeln (DruckText);
      for i := 1 to N do
      begin
        writeln (DruckText, SpaceS(62), A[i]:3, SpaceS(26), F[i]:3,
                 SpaceS(13), SymbolS[Ra[i]]);
      end;
    end;
  finally
    CloseFile (DruckText);
  end;
end;

procedure WinDruck (SDatei: string;N: word;
                    A,F,Ra: array of byte);
var
  Datei   : TextFile;
  JahrS   : string;
  MonS    : string;
  TagS    : string;
  WtagS   : string;
  ZeitS   : string;
  i       : word;
  SymbolS : array[0..10] of string[20];
begin
  SymbolS[1]  := Tx(392);                   {Kreis, offen    }
  SymbolS[2]  := Tx(393);                   {Kreis, gefüllt  }
  SymbolS[3]  := Tx(394);                   {Quadrat, offen  }
  SymbolS[4]  := Tx(395);                   {Quadrat, gefüllt}
  SymbolS[5]  := Tx(396);                   {Dreieck, offen  }
  SymbolS[6]  := Tx(397);                   {Dreieck, gefüllt}
  SymbolS[7]  := Tx(398);                   {Raute, offen    }
  SymbolS[8]  := Tx(399);                   {Raute, gefüllt  }
  SymbolS[9]  := '       +        ';
  SymbolS[10] := '       x        ';
  Uhr (JahrS, MonS, TagS, WtagS, ZeitS);
  Assign (Datei, SDatei);
  rewrite (Datei);
  writeln (Datei, Tx(448));    {R%-G%-Diagramm}
  writeln (Datei,Tx(190),' ', WTagS,', ', TagS,'. ', MonS,' ', JahrS,
           ' ', ZeitS);
  for i := 0 to DateiZahl do
  writeln(Datei, Tx(256),' ',DateiNameS[i]); {Dateiname}
  writeln (Datei, N,' ', Tx(449));                {Diagramme}
  Writeln(Datei,Tx(842), '  ', Tx(843), '  ', 'Symbol');
  for i := 1 to N do
    writeln (Datei, SpaceS(6),A[i]:3, SpaceS(14), F[i]:3,
             SpaceS(8), SymbolS[Ra[i]]);
  CloseFile (Datei);
end;

procedure Liesrg (DiscS: string; var DaS: string; var N: word;
                  var Reg, Zyl, Sym: array of byte);
var
  FS        : string;
  Datei     : Text;
  TextS     : string[80];
  Aas       : string[3];
  Co        : integer;
  AReg,AZyl : byte;
  ASym      : byte;
  Komma     : byte;
begin
  FS := DiscS + UcaseS (DaS);
  assign (Datei,FS);
  reset (Datei);
  readln (Datei,TextS);
  try
    while not eof(Datei) do
    begin
      inc(n);
      readln (Datei, TextS);
      Komma := Pos(',',TextS);
      AaS := LeftS(TextS,Komma-1);
      val (AaS, AReg, Co);
      Reg[n] := AReg;
      Delete(TextS,1,Komma);
      Komma := Pos(',',TextS);
      AaS := LeftS(TextS,Komma-1);
      val (Aas, AZyl, Co);
      Zyl[n] := AZyl;
      Delete(TextS,1,Komma);
      AaS := TextS;
      val (AaS, ASym, Co);
      Sym[n] := ASym;
    end;
  finally
    CloseFile (Datei);
  end;
end;

procedure Bildschirm (Canvas: TCanvas; var X0, Y0, Laenge: word);
var
  Xlinkso  : word;
  Ylinkso  : word;
  i        : byte;
  ProzentS : string[4];
begin
  with Canvas do
  begin
    Pen.Color := RahmenFarbe;
    Pen.Style := psSolid;
    Brush.Color := HintFarbe;
    if HTransparent then
    begin
      Brush.Color := clWhite;
      HintFarbe   := clWhite;
    end
    else Rectangle (0, 0, Breite, Hoehe);
    Pen.Color := KoordinFarbe;
    Pen.Width := 2;
    Laenge  := 17 * round (Hoehe / 20);
    Xlinkso := XMitte - Laenge div 2 + 15;
    Ylinkso := round (Hoehe / 20) - 10;
    X0      := Xlinkso;
    Y0      := Ylinkso + Laenge;
    Brush.Color := DiagrFarbe {RGFarbe};
    Rectangle (XLinksO, YLinksO, X0+Laenge, Y0);
    for i := 1 to 9 do
    begin
      Moveto (X0+round(i*Laenge/10),Y0);
      Lineto (X0+round(i*Laenge/10),Y0-round(Laenge/40));
      Moveto (X0,Y0-round(i*Laenge/10));
      Lineto (X0+round(Laenge/40),Y0-round(i*Laenge/10));
    end;
    Font.Size   := 14;
    Font.Name   := 'Times New Roman';
    Font.Color  := KoordinFarbe;
    Brush.Color := HintFarbe;
    for i := 1 to 9 do
    begin
      str (i*10, ProzentS);
      TextOut (X0+round(i*Laenge/10),Y0+10,ProzentS);
      TextOut (X0-30, Y0-20-round(i*Laenge/10),ProzentS);
    end;
    Font.Size := 18;
    TextOut (X0+Laenge-15, Y0+10, 'G%');
    TextOut (X0-45, YLinksO, 'R%');
  end;
end;
end.
