Unit Drucken;

interface

uses Printers, Globvar, Texte, Dialogs, SysUtils, Basic,
     Graphics, Standard, Windows;

procedure Titel (TitelS: array of string; Fs:byte;
                 Az1, Az2, Fa1, Fa2, AzErg, FaErg: array of word;
                 Anzahl:word; DateiZahl:byte);
procedure StrDruck (TitelS: array of string; Fs: byte; AFeld: array of word;
                    FFeld: array of word; ZeileS: array of string;
                    Anzahl: word; DateiZahl: byte);
procedure AziDruck (TitelS: array of string; Fs: byte; ZeileS: array of string;
                    AFeld, FFeld: array of word; Anzahl: word; DateiZahl: byte);
procedure WinTitel (SDatei:string; TitelS: array of string;
                    Fs:byte; Az1, Az2, Fa1, Fa2, AzErg,
                    FaErg: array of word;
                    Anzahl:word; DateiZahl:byte);
procedure WinStr (SDatei: string; TitelS: array of string; Fs: byte;
                  AFeld, FFeld: array of word; ZeileS: array of string;
                  Anzahl: word; DateiZahl: byte);
procedure WinAzi (SDatei: string; TitelS: array of string; Fs: byte;
                  ZeileS: array of string; AFeld, FFeld: array of word;
                  Anzahl: word; DateiZahl: byte);
procedure Uhr (var JahrS, MonS, TagS, WtagS, ZeitS: string);
procedure Drucken6 (DZahl: byte; VektorsummeS, NormSumVektorS, SchiefeS,
                    KurtosisS, RegelungS, VekMittelS: string);
procedure Drucken7 (DZahl: byte);
procedure WinDrucken7 (SDatei: string; DZahl: byte);
procedure DruckenT (Dateizahl: byte; TitelS: array of string;
                    DatAz, DatFall: array of word; Zahl:word;
                    Talbot: array of boolean);
procedure WinDruckenT (SDatei: string; Dateizahl: byte;
                       TitelS: array of string;
                       DatAz, DatFall: array of word; Zahl:word);
procedure Titel8 (KopfS:string;DateiZahl:byte; TitelS:array of string;
                  DatAz, DatFall:array of word; Zahl:word);
procedure TitelKarte (DateiZahl:byte; TitelS:array of string);
procedure Windatei (KopfS:string;DateiZahl:byte; SDatei: string;
                  TitelS:array of string;
                  DatAz, DatFall: array of word; Zahl:word);
procedure WinKarte (DateiZahl:byte; SDatei:string;
                    TitelS:array of string);
procedure Titel2 (DateiZahl:byte;NameS:array of string;Geftyp:byte;Ar:word;
                  Fr:shortint;Th:integer; DatAz, DatFall: array of word;
                  Rotaz, RotFall:Array of word; Zahl:word);
procedure WinTitel2 (SDatei: string; DateiZahl:byte;
                    NameS:array of string;Geftyp:byte;
                    Ar:word; Fr:shortint;Th:integer; DatAz,
                    DatFall: array of word; Rotaz,
                    RotFall:Array of word; Zahl:word);
procedure Tdrucken (DZahl:word; DNameS: array of string;
                    N:word; T0:array of word;
                    T1,T2,T3,T4,T5,T6,T7,T8,T9: array of real);
procedure WinTdrucken (SDatei: string; DZahl:word;
                       DNameS: array of string;
                       N:word; T0:array of word;
                       T1,T2,T3,T4,T5,T6,T7,T8,
                       T9: array of real);
procedure DruckPalaeo (KopfS: string; DateiZahl: byte;
                       TitelS: array of string;
                       HDatAz, HDatFall, SDatAz: array of word;
                       SDatFall: array of shortint; Zahl:word);
procedure WinDruckPalaeo (SDatei,KopfS: string; DateiZahl: byte;
                       TitelS: array of string;
                       HDatAz, HDatFall, SDatAz: array of word;
                       SDatFall: array of shortint; Zahl:word);
procedure DruckBitmap (Canvas: TCanvas; var Fenster: TRect;
                       RadiusS, XKoordS,
                       YKoordS, TextS: string; Schrift: byte;
                       BuendigS: string;
                       Bitmap: Graphics.TBitmap);
procedure DruckKreise (DateiZahl:byte; TitelS:array of string;
                       DatAz, DatFall, DatKreis:array of word; Zahl:word);
procedure WinKreise    (DateiZahl:byte; SDatei: string;
                        TitelS: array of string;
                        DatAz, DatFall, datKreis: array of word; Zahl:word);

implementation

uses Unit11;

procedure Drucken6 (DZahl: byte; VektorsummeS, NormSumVektorS, SchiefeS,
                    KurtosisS, RegelungS, VekMittelS: string);
const
  LS = '               ';
var
  DruckText     : TextFile;
  JahrS         : string;
  MonS          : string;
  TagS          : string;
  WtagS         : string;
  ZeitS         : string;
  i             : word;
  AzS, WertS    : string[5];
  Leer          : array[0..7] of byte;
begin
  Uhr (JahrS, MonS, TagS, WtagS, ZeitS);
  AssignPrn (Drucktext);
  rewrite (Drucktext);
  try
    with Printer.Canvas.Font do
    begin
      Name  := 'TimesNewRoman';
      Size  := 22;
      Style := Style + [fsbold];
      writeln (Drucktext);
      writeln (Drucktext, Tx(351)); {Statistische Maﬂzahlen zirkular...}
      writeln (Drucktext);
      Size  := 10;
      Style := Style - [fsbold];
      writeln(DruckText);
      writeln(DruckText);
      writeln(Drucktext, SpaceS(70), Tx(190));         {Tag der Bearbeitung}
      writeln(Drucktext, SpaceS(70), WTagS,',  ', TagS,'.  ', MonS,'  ', JahrS,
      SpaceS(20), Tx(210), ZeitS);                     {Zeit:}
      writeln(DruckText);
      writeln(DruckText);
      for i := 0 to DZahl do
        writeln(DruckText, SpaceS(40), Tx(256),'  ',DateiNameS[i]); {Dateiname}
      writeln (Drucktext);
      writeln (Drucktext);
      writeln (Drucktext, '   '+Tx(183));       {Daten:}
      for i := 1 to ZahlGlob do               {Drucken der Daten}
      begin
        str(AziFeld[i], AzS);
        str(FalFeld[i], WertS);
        AzS    := RightS('000'+AzS,3);
        if RichtungenS = 'Betraege' then
        begin
          WertS   := RightS('0000'+WertS,4);
          Write (Drucktext, '     ',AzS,',',WertS,'  ');
          if (i mod 8) = 0 then writeln(Drucktext);
        end;
        if RichtungenS = 'Richtungen' then
        begin
          Write (Drucktext, '       ',AzS,'    ');
          if (i mod 10) = 0 then writeln (Drucktext);
        end;
      end;
      writeln (Drucktext);
      writeln (Drucktext);
      Name  := 'Aerial';
      Size  := 14;
      Style := Style - [fsbold];
      pitch := fpFixed;
      for i := 1 to 7 do Leer[i] := 22 - length(Tx(351+i));
      writeln (Drucktext, LS,Tx(352), SpaceS(Leer[1]),' =',ZahlGlob:5);         {Anzahl}
      writeln (DruckText, LS,Tx(353), SpaceS(Leer[2]),' =',VektorSummeS);      {Vektorsumme}
      writeln (DruckText, LS,Tx(354), SpaceS(Leer[3]),' =',NormSumVektorS);    {norm.Summenvektor}
      writeln (DruckText, LS,Tx(355), SpaceS(Leer[4]),' =',RegelungS + ' %');  {Regelung}
      writeln (Drucktext, LS,Tx(356), SpaceS(Leer[5]),' =',VekMittelS + ' ∞'); {Vektormittel}
      writeln (Drucktext, LS,Tx(357), SpaceS(Leer[6]),' =',SchiefeS);          {Schiefe}
      writeln (Drucktext, LS,Tx(358), SpaceS(Leer[7]),' =',KurtosisS);         {Kurtosis};
    end;    {with Printer}
  finally
    CloseFile (Drucktext);
  end; {try}
end;

procedure Drucken7 (DZahl: byte);
var
  DruckText     : TextFile;
  JahrS         : string;
  MonS          : string;
  TagS          : string;
  WtagS         : string;
  ZeitS         : string;
  i             : word;
  AzS, WertS    : string[5];
begin
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
      writeln (Drucktext,SpaceS(14), Tx(839)); {Plot einer richtungsrose}
      writeln (Drucktext);
      Size  := 10;
      Style := Style - [fsbold];
      writeln(DruckText);
      writeln(DruckText);
      writeln(Drucktext, SpaceS(70), Tx(190));         {Tag der Bearbeitung}
      writeln(Drucktext, SpaceS(70), WTagS,',  ', TagS,'.  ', MonS,'  ', JahrS,
      SpaceS(20), Tx(210), ZeitS);                     {Zeit:}
      writeln(DruckText);
      writeln(DruckText);
      for i := 0 to DZahl do
        writeln(DruckText, SpaceS(40), Tx(256),'  ',DateiNameS[i]); {Dateiname}
      Writeln(Drucktext, SpaceS(40),Tx(138),' ',InttoStr(ZahlGlob));{Anzahl}
      writeln (Drucktext);
      writeln (Drucktext);
      writeln (Drucktext, ' '+Tx(183));       {Daten:}
      for i := 1 to ZahlGlob do               {Drucken der Daten}
      begin
        str(AziFeld[i], AzS);
        str(FalFeld[i], WertS);
        AzS    := RightS('000'+AzS,3);
        if RichtungenS = 'Betraege' then
        begin
          WertS   := RightS('0000'+WertS,4);
          Write (Drucktext, '     ',AzS,',',WertS,'  ');
          if (i mod 8) = 0 then writeln(Drucktext);
        end;
        if RichtungenS = 'Richtungen' then
        begin
          Write (Drucktext, '       ',AzS,'    ');
          if (i mod 10) = 0 then writeln (Drucktext);
        end;
      end;
    end;    {with Printer}
  finally
    CloseFile (Drucktext);
  end; {try}
end;

procedure WinDrucken7 (SDatei: string; DZahl: byte);
var
  Datei         : TextFile;
  JahrS         : string;
  MonS          : string;
  TagS          : string;
  WtagS         : string;
  ZeitS         : string;
  i             : word;
  AzS, WertS    : string[5];
begin
  Uhr (JahrS, MonS, TagS, WtagS, ZeitS);
  Assign (Datei, SDatei);
  rewrite (Datei);
  writeln (Datei);
  writeln (Datei, Tx(839)); {Plot einer richtungsrose}
  writeln(Datei, Tx(190), WTagS,', ', TagS,'. ', MonS,' ',
          JahrS, Tx(210), ZeitS);                     {Zeit:}
  for i := 0 to DZahl do
    writeln(Datei, Tx(256),'  ',DateiNameS[i]); {Dateiname}
  Writeln(Datei,Tx(138),' ',InttoStr(ZahlGlob));{Anzahl}
  writeln (Datei, Tx(183));       {Daten:}
  for i := 1 to ZahlGlob do               {Drucken der Daten}
  begin
    str(AziFeld[i], AzS);
    str(FalFeld[i], WertS);
    AzS    := RightS('000'+AzS,3);
    if RichtungenS = 'Betraege' then
    begin
      WertS   := RightS('0000'+WertS,4);
      Write (Datei, AzS,',',WertS,' ');
      if (i mod 7) = 0 then writeln(Datei);
    end;
    if RichtungenS = 'Richtungen' then
    begin
      Write (Datei, AzS,' ');
      if (i mod 15) = 0 then writeln (Datei);
    end;
  end;
  CloseFile (Datei);
end;

procedure DruckenT (Dateizahl: byte; TitelS: array of string;
                    DatAz, DatFall: array of word; Zahl:word;
                    Talbot: array of boolean);
var
  Drucktext     : TextFile;
  JahrS         : string;
  MonS          : string;
  TagS          : string;
  WtagS         : string;
  ZeitS         : string;
  i             : word;
  AzS, FalS     : string[4];
begin
  Uhr (JahrS, MonS, TagS, WtagS, ZeitS);
  AssignPrn (Drucktext);
  rewrite (Drucktext);
  try
    with Printer.Canvas.Font do
    begin
      Name := 'TimesNewRoman';
      Size  := 24;
      Style := Style + [fsbold];
      writeln(Drucktext);
      writeln(Drucktext,'           ',Tx(972)); {Talbot-Methode}
      Size  := 10;
      Style := Style - [fsbold];
      writeln(DruckText);
      writeln(DruckText);
      writeln(Drucktext, SpaceS(70), Tx(190));         {Tag der Bearbeitung}
      writeln(Drucktext, SpaceS(70), WTagS,',  ', TagS,'.  ', MonS,'  ', JahrS,
      SpaceS(20), Tx(210), ZeitS);                     {Zeit:}
      writeln(DruckText);
      writeln(DruckText);
      for i := 0 to DateiZahl do
        writeln(DruckText, SpaceS(40), Tx(256),'  ',TitelS[i]); {Dateiname}
      writeln (Drucktext);
      writeln (Drucktext);
      writeln (Drucktext, '   ',Zahl,Tx(974),':');
      Writeln(Drucktext);
      Writeln(Drucktext,'    ',Tx(975));
      Writeln(Drucktext);
      for i := 1 to Zahl do               {Drucken der Daten}
      begin
        if Talbot[i] then
        begin
          str(DatAz[i], AzS);
          str(DatFall[i], FalS);
          AzS    := RightS('000'+AzS,3);
          FaLS   := RightS('00'+FaLS,2);
          Write (Drucktext, '    ',AzS,'/',FalS);
          if i mod 11 = 0 then writeln(Drucktext);
        end;
      end;
      Writeln(Drucktext);
      Writeln (Drucktext);
      Writeln (Drucktext,'    ',Tx(976)); {Dehnung}
      Writeln (Drucktext);
      for i := 1 to Zahl do               {Drucken der Daten}
      begin
        if not Talbot[i] then
        begin
          str(DatAz[i], AzS);
          str(DatFall[i], FalS);
          AzS    := RightS('000'+AzS,3);
          FaLS   := RightS('00'+FaLS,2);
          Write (Drucktext, '    ',AzS,'/',FalS);
          if i mod 11 = 0 then writeln(Drucktext);
        end;
      end;
    end;
  finally
    CloseFile (Drucktext);
  end;
end;

procedure WinDruckenT (SDatei: string; Dateizahl: byte;
                       TitelS: array of string;
                       DatAz, DatFall: array of word; Zahl:word);
var
  Datei         : TextFile;
  JahrS         : string;
  MonS          : string;
  TagS          : string;
  WtagS         : string;
  ZeitS         : string;
  i, m          : word;
  AzS, FalS     : string[4];
begin
  Uhr (JahrS, MonS, TagS, WtagS, ZeitS);
  Assign (Datei, SDatei);
  rewrite (Datei);
  writeln(Datei,Tx(972)); {Talbot-Methode}
  writeln(Datei, Tx(190),' ',WTagS,', ',TagS,'. ',MonS,' ',
          JahrS,' ', ZeitS);                     {Zeit:}
  for i := 0 to DateiZahl do
    writeln(Datei,Tx(256),'  ',TitelS[i]); {Dateiname}
  writeln (Datei, Zahl,' ',Tx(974),':');
  Writeln(Datei,Tx(975));
  m := 0;
  for i := 1 to Zahl do               {Drucken der Daten}
  begin
    if Talbot[i] then
    begin
      inc(m);
      str(DatAz[i], AzS);
      str(DatFall[i], FalS);
      AzS    := RightS('000'+AzS,3);
      FaLS   := RightS('00'+FaLS,2);
      Write (Datei,AzS,'/',FalS,' ');
    end;
    if (m<>0) and ((m mod 10) = 0) then writeln(Datei);
  end;
  Writeln(Datei);
  Writeln (Datei,Tx(976)); {Dehnung}
  m := 0;
  for i := 1 to Zahl do               {Drucken der Daten}
  begin
    if not Talbot[i] then
    begin
      inc(m);
      str(DatAz[i], AzS);
      str(DatFall[i], FalS);
      AzS    := RightS('000'+AzS,3);
      FaLS   := RightS('00'+FaLS,2);
      Write (Datei,AzS,'/',FalS,' ');
    end;
    if (m<>0) and ((m mod 10) = 0) then writeln(Datei);
  end;
  CloseFile (Datei);
end;

procedure Titel8 (KopfS:string;DateiZahl:byte;
                  TitelS:array of string;
                  DatAz, DatFall: array of word; Zahl:word);
var
  Drucktext     : TextFile;
  JahrS         : string;
  MonS          : string;
  TagS          : string;
  WtagS         : string;
  ZeitS         : string;
  GeftypS       : string[14];
  i             : word;
  AzS, FalS     : string[4];
begin
  case Gefuegetyp of
    1: GeftypS := Tx(169);                  {Lineare}
    2: GeftypS := Tx(170);                  {Fl‰chen}
    3: GeftypS := Tx(171);                  {U-Tisch-Achsen}
    4: GeftypS := Tx(172);                  {U-Tisch-Pole}
  end;
  Uhr (JahrS, MonS, TagS, WtagS, ZeitS);
  AssignPrn (Drucktext);
  rewrite (Drucktext);
    try
    with Printer.Canvas.Font do
    begin
      Name := 'TimesNewRoman';
      Size  := 24;
      Style := Style + [fsbold];
      writeln(Drucktext);
      if KopfS = '8' then
      begin
        writeln(Drucktext,SpaceS(8), Tx(249));  {Berechnung der statistischen Maﬂzahlen}
        writeln(Drucktext);
        writeln(Drucktext,SpaceS(10), Tx(250));  {von Richtungsdaten}
      end;
      if KopfS = '3' then writeln(Drucktext, '                 ', Tx(251));
                                               {Plot von tektonischen Daten}
      if KopfS = '4' then writeln(Drucktext,'          ',Tx(252));
                                               {Plot von Groﬂkreisen.}
      if KopfS = 'C' then writeln(Drucktext,' ',Tx(253));
                                                {Cluster von Richtungsdaten}
      if KopfS = 'I' then writeln(Drucktext, Tx(254)); {Plotten von Isolinien}
      if KopfS = '11' then
      begin
        size := 20;
        writeln(Drucktext, '  '+Tx(255));{Richtungen d. Hauptnormalspannungen}
      end;
      if KopfS = '19' then writeln(Drucktext, '          ',Tx(904));
                                   {Rekonstruktion}
      Size  := 10;
      Style := Style - [fsbold];
      writeln(DruckText);
      writeln(DruckText);
      writeln(Drucktext, SpaceS(70), Tx(190));         {Tag der Bearbeitung}
      writeln(Drucktext, SpaceS(70), WTagS,',  ', TagS,'.  ', MonS,'  ', JahrS,
      SpaceS(20), Tx(210), ZeitS);                     {Zeit:}
      writeln(DruckText);
      writeln(DruckText);
      for i := 0 to DateiZahl do
        writeln(DruckText, SpaceS(40), Tx(256),'  ',TitelS[i]); {Dateiname}
      writeln (Drucktext);
      writeln (Drucktext);
      writeln (Drucktext, ' ',Zahl,' ',Tx(101),'  (',GeftypS,')');
      Writeln(Drucktext);
      for i := 1 to Zahl do               {Drucken der Daten}
      begin
        str(DatAz[i], AzS);
        str(DatFall[i], FalS);
        AzS    := RightS('000'+AzS,3);
        FaLS   := RightS('00'+FaLS,2);
        Write (Drucktext, '    ',AzS,'/',FalS);
        if i mod 10 = 0 then writeln(Drucktext);
      end;
    end;
  finally
    CloseFile (Drucktext);
  end;
end;

procedure TitelKarte (DateiZahl:byte; TitelS:array of string);
var
  Drucktext     : TextFile;
  JahrS         : string;
  MonS          : string;
  TagS          : string;
  WtagS         : string;
  ZeitS         : string;
  i             : word;
  BGradS, BMinS : string;
  LGradS, LMinS : string;
  BGrad, LGrad  : word;
  BMin, LMin    : word;
  LPS, AzS,FalS : string;
  BrS, LaS      : string;
  RestS         : string;
begin
  Uhr (JahrS, MonS, TagS, WtagS, ZeitS);
  AssignPrn (Drucktext);
  rewrite (Drucktext);
  try
    with Printer.Canvas.Font do
    begin
      Name := 'TimesNewRoman';
      Size  := 24;
      Style := Style + [fsbold];
      writeln(Drucktext);
      writeln(Drucktext,SpaceS(8), Tx(1283));  {Eintrage nin eine Karte}
        writeln(Drucktext);
      Name := 'TimesNewRoman';
      Size  := 10;
      Style := Style - [fsbold];
      writeln(DruckText);
      writeln(DruckText);
      writeln(Drucktext, SpaceS(70), Tx(190));         {Tag der Bearbeitung}
      writeln(Drucktext, SpaceS(70), WTagS,',  ', TagS,'.  ', MonS,'  ', JahrS,
      SpaceS(20), Tx(210), ZeitS);                     {Zeit:}
      writeln(DruckText);
      writeln(DruckText);
      for i := 0 to DateiZahl do
        writeln(DruckText, SpaceS(40), Tx(256),'  ',TitelS[i]); {Dateiname}
      writeln (Drucktext);
      writeln (Drucktext);
      writeln (Drucktext, ' ',ZahlGlob,' ',Tx(101));
      Writeln(Drucktext);
      for i := 1 to ZahlGlob do               {Drucken der Daten}
      begin
        Bgrad  := trunc(BreiteFeld[i]);
        Bmin   := BGrad mod 60;
        BGrad  := BGrad div 60;
        LGrad  := trunc(LaengeFeld[i]);
        LMin   := LGrad mod 60;
        LGrad  := LGrad div 60;
        BGradS := IntToStr(BGrad);
        BMinS  := IntToStr(BMin);
        LGradS := IntToStr(LGrad);
        LMinS  := IntTostr(LMin);
        BGradS := RightS('00'+BGrads,2);
        BMinS  := RightS('00'+BMinS,2);
        LGrads := RightS('00'+LGradS,2);
        LMinS  := RightS('00'+LMinS,2);
        BrS    := FloatToStrF(BreiteFeld[i],ffFixed,4,4);
        LaS    := FloatTostrF (LaengeFeld[i],ffFixed,4,4);
        RestS  := copy(BrS,Pos('.',BRS),length(BrS)-Pos('.',BrS));
        BMinS  := BMinS + RestS;
        RestS  := copy(LaS,Pos('.',LaS),length(LaS)-Pos('.',LaS));
        LMinS  := LMinS + RestS;
        if LPFeld[i] then LPS := 'L' else LPS := 'P';
        AzS  := IntToStr(AziFeld[i]);
        FalS := IntToStr(FalFeld[i]);
        AzS    := RightS('000'+AzS,3);
        FaLS   := RightS('00'+FaLS,2);
        Write (Drucktext, '    ',BGradS,'∞',BMinS,'¥ ',';',
               LGradS,'∞',LMin,'¥ ','  ',LPS,AzS,'/',FalS);
        if i mod 4 = 0 then writeln(Drucktext);
      end;
    end;
  finally
    CloseFile (Drucktext);
  end;
end;

procedure Windatei (KopfS:string;DateiZahl:byte; SDatei:string;
                  TitelS:array of string;
                  DatAz, DatFall: array of word; Zahl:word);
var
  Datei   : TextFile;
  JahrS   : string;
  MonS    : string;
  TagS    : string;
  WtagS   : string;
  ZeitS   : string;
  GeftypS : string[14];
  i       : word;
  AzS     : string[4];
  FalS    : string[4];
begin
  case Gefuegetyp of
    1: GeftypS := Tx(169);                  {Lineare}
    2: GeftypS := Tx(170);                  {Fl‰chen}
    3: GeftypS := Tx(171);                  {U-Tisch-Achsen}
    4: GeftypS := Tx(172);                  {U-Tisch-Pole}
  end;
  Uhr (JahrS, MonS, TagS, WtagS, ZeitS);
  Assign (Datei,SDatei);
  rewrite (Datei);
  if KopfS = '8' then
  begin
    writeln(Datei,SpaceS(8), Tx(249));  {Berechnung der statistischen Maﬂzahlen}
    writeln(Datei,SpaceS(10), Tx(250));  {von Richtungsdaten}
  end;
  if KopfS = '3' then writeln(Datei, Tx(251)); {Plot von tektonischen Daten}
  if KopfS = '4' then writeln(Datei,'          ',Tx(252)); {Plot von Groﬂkreisen.}
  if KopfS = 'C' then writeln(Datei,' ',Tx(253)); {Cluster von Richtungsdaten}
  if KopfS = 'I' then writeln(Datei, Tx(254)); {Plotten von Isolinien}
  if KopfS = '11' then writeln(Datei, '  '+Tx(255));{Richtungen d. Hauptnormalspannungen}
  if KopfS = '19' then writeln(Datei, Tx(904)); {Rekonstruktion}
  writeln(Datei, Tx(190),' ', WTagS,', ', TagS,'. ', MonS,' ', JahrS, ' ', ZeitS);                     {Zeit:}
  for i := 0 to DateiZahl do
    writeln(Datei,Tx(256),'  ',TitelS[i]); {Dateiname}
  writeln (Datei, Zahl,'  ',Tx(101),'   (',GeftypS,')');
  for i := 1 to Zahl do               {Drucken der Daten}
  begin
    str(DatAz[i], AzS);
    str(DatFall[i], FalS);
    AzS    := RightS('000'+AzS,3);
    FaLS   := RightS('00'+FaLS,2);
    Write (Datei, AzS,'/',FalS, ' ');
    if (i mod 10) = 0 then writeln(Datei,chr(13));
  end;
  CloseFile (Datei);
end;

procedure WinKarte (DateiZahl:byte; SDatei:string;
                    TitelS:array of string);
var
  Datei   : TextFile;
  JahrS   : string;
  MonS    : string;
  TagS    : string;
  WtagS   : string;
  ZeitS   : string;
  i       : word;
  BGradS, BMinS : string;
  LGradS, LMinS : string;
  BGrad, LGrad  : word;
  BMin, LMin    : word;
  LPS, AzS,FalS : string;
  BrS, LaS      : string;
  RestS         : string;
begin
  Uhr (JahrS, MonS, TagS, WtagS, ZeitS);
  Assign (Datei,SDatei);
  rewrite (Datei);
  writeln(Datei,Tx(1283));  {Messwerte eintragen}
  writeln(Datei, Tx(190),' ', WTagS,', ', TagS,'. ', MonS,' ', JahrS, ' ', ZeitS);                     {Zeit:}
  for i := 0 to DateiZahl do
    writeln(Datei,Tx(256),'  ',TitelS[i]); {Dateiname}
  writeln (Datei, ZahlGlob,'  ',Tx(101));
  for i := 1 to ZahlGlob do               {Drucken der Daten}
  begin
    Bgrad  := trunc(BreiteFeld[i]);
    Bmin   := BGrad mod 60;
    BGrad  := BGrad div 60;
    LGrad  := trunc(LaengeFeld[i]);
    LMin   := LGrad mod 60;
    LGrad  := LGrad div 60;
    BGradS := IntToStr(BGrad);
    BMinS  := IntToStr(BMin);
    LGradS := IntToStr(LGrad);
    LMinS  := IntTostr(LMin);
    BGradS := RightS('00'+BGrads,2);
    BMinS  := RightS('00'+BMinS,2);
    LGrads := RightS('00'+LGradS,2);
    LMinS  := RightS('00'+LMinS,2);
    BrS    := FloatToStrF(BreiteFeld[i],ffFixed,4,4);
    LaS    := FloatTostrF (LaengeFeld[i],ffFixed,4,4);
    RestS  := copy(BrS,Pos('.',BRS),length(BrS)-Pos('.',BrS));
    BMinS  := BMinS + RestS;
    RestS  := copy(LaS,Pos('.',LaS),length(LaS)-Pos('.',LaS));
    LMinS  := LMinS + RestS;
    if LPFeld[i] then LPS := 'L' else LPS := 'P';
    AzS  := IntToStr(AziFeld[i]);
    FalS := IntToStr(FalFeld[i]);
    AzS    := RightS('000'+AzS,3);
    FaLS   := RightS('00'+FaLS,2);
    Write (Datei, ' ',BGradS,'∞',BMinS,'¥',';',LGradS,'∞',
           LMin,'¥',' ',LPS,AzS,'/',FalS);
    if i mod 3 = 0 then writeln(Datei);
  end;
  CloseFile (Datei);
end;

procedure Uhr (var JahrS, MonS, TagS, WtagS, ZeitS: string);
var
  Monat     : word;
  Wochentag : byte;
  Tag       : word;
  Jetzt     : TDateTime;
  Jahr      : word;
  Stunde    : word;
  Minute    : word;
  Sekunde   : word;
  MSekunde  : word;
begin
  Jetzt := Now;
  DecodeDate (Jetzt, Jahr, Monat, Tag);
  JahrS := IntToStr (Jahr);
  MonS  := IntToStr (Monat);
  TagS  := IntToStr (Tag);
  DecodeTime (Jetzt, Stunde, Minute, Sekunde, MSekunde);
  ZeitS := IntToStr(Stunde)+'.'+ IntToStr (Minute)+' h';
  Wochentag := DayOfWeek(Jetzt);
  case Monat of
    1: MonS := Tx(191);             {Jan.}
    2: MonS := Tx(192);
    3: MonS := Tx(193);
    4: MonS := Tx(194);
    5: MonS := Tx(195);
    6: MonS := Tx(196);
    7: MonS := Tx(197);
    8: MonS := Tx(198);
    9: MonS := Tx(199);
    10: MonS := Tx(200);
    11: MonS := Tx(201);
    12: MonS := Tx(202);            {Dez.}
  end;
  case Wochentag of
    1: WtagS := Tx(209);            {Sonntag}
    2: WtagS := Tx(203);            {Montag}
    3: WtagS := Tx(204);
    4: WtagS := Tx(205);
    5: WtagS := Tx(206);
    6: WtagS := Tx(207);
    7: WtagS := Tx(208);            {Sonnabend}
  end;
end;

procedure Titel (TitelS: array of string; Fs:byte;
                 Az1, Az2, Fa1, Fa2, AzErg, FaErg: array of word;
                 Anzahl:word; DateiZahl:byte);

var
  DruckText     : TextFile;
  JahrS         : string;
  MonS          : string;
  TagS          : string;
  WtagS         : string;
  ZeitS         : string;
  UeberschriftS : string[100];
  SpaltenS      : string[150];
  Az1S, Az2S    : string[3];
  Fa1S, Fa2S    : string[2];
  AzErgS        : string[3];
  FaErgS        : string[2];
  i             : word;

begin
  Uhr (JahrS, MonS, TagS, WtagS, ZeitS);
  case Fs of
  1: begin
       UeberschriftS := SpaceS(18) + Tx(141); {Schnittkante von zwei Fl‰chen}
       SpaltenS      := Tx(142); {Fl‰chen  Schnittkanten}
     end;
  2: begin
       UeberschriftS := SpaceS(18) + Tx(144);  {Winkel zwischen 2 Fl‰chen}
       SpaltenS      := Tx(145);  {Fl‰chen    Winkel}
     end;
  3: begin
       UeberschriftS := SpaceS(18) + Tx(147);  {Winkel zwischen 2 Linearen}
       SpaltenS      := Tx(148);  {Lineare  Winkel}
     end;
  4: begin
       UeberschriftS := SpaceS(20) + Tx(150);  {Fl‰che aus zwei Linearen}
       SpaltenS      := Tx(151);  {Lineare Fl‰chen}
     end;
  5: begin
       UeberschriftS := SpaceS(18) + Tx(153);   {Normale auf zwei Linearen}
       SpaltenS      := Tx(154);   {Lineare   Normale}
     end;
  6: begin
       UeberschriftS := SpaceS(10)+Tx(1405);  {Pitchwinkel aus Fl‰che und Linear}
       SpaltenS      := Tx(1411);  {Fl‰che Linear Pitchwinkel}
     end;
  7: begin
       UeberschriftS := Tx(1407); {Linear aus Fl‰che und Pitchwinkel}
       SpaltenS      := Tx(1408);
     end;  

  end;
  AssignPrn (Drucktext);
  rewrite (Drucktext);
  try
    with Printer.Canvas.Font do
    begin
      Size := 24;
      Style := Style + [fsbold];
      writeln(Drucktext);
      writeln(Drucktext);
      writeln(Drucktext, UeberschriftS);
      Size  := 10;
      Style := Style - [fsbold];
      writeln(DruckText);
      writeln(DruckText);
      writeln(Drucktext, SpaceS(60), Tx(190));         {Tag der Bearbeitung}
      writeln(Drucktext, SpaceS(60), WTagS,',  ', TagS,'.  ', MonS,'  ', JahrS,
      SpaceS(20), Tx(210), ZeitS);
      writeln(Drucktext);
      writeln(Drucktext);
      for i := 1 to DateiZahl do
        writeln(DruckText, SpaceS(50), Tx(256),' ',TitelS[i]); {Dateiname}
      writeln(Drucktext,SpaceS(52),Tx(222),' ',
              InttoStr(Anzahl));
      writeln(DruckText);
      writeln(DruckText);
      write(Drucktext, SpaceS(58));
      Style := Style + [fsunderline];
      writeln(DruckText,SpaltenS);
      Style := Style - [fsunderline];
      for i := 1 to Anzahl do               {Drucken der Daten}
      begin
        str(Az1[i], Az1S);
        str(Az2[i], Az2S);
        str(Fa1[i], Fa1S);
        str(Fa2[i], Fa2S);
        Az1S   := RightS('000'+Az1S,3);
        Az2S   := RightS('000'+Az2S,3);
        Fa1S   := RightS('00'+Fa1S,2);
        Fa2S   := RightS('00'+Fa2S,2);
        if (Fs = 1) or (Fs = 4) or (Fs = 5) then
        begin
          str(AzErg[i], AzErgS);
          str(FaErg[i], FaErgS);
          AzErgS := RightS('000'+AzErgS,3);
          FaErgS := RightS('00'+FaErgS,2);
          Writeln(Drucktext, SpaceS(62), Az1S,'/',Fa1S,SpaceS(14), Az2S,'/',
                  Fa2S,SpaceS(17),AzErgS,'/',FaErgS);
        end
        else
        begin
          str(AzErg[i], AzErgS);
          AzErgS := RightS('   '+AzErgS,3);
          Writeln(Drucktext, SpaceS(62), Az1S,'/',Fa1S,SpaceS(14), Az2S,'/',
                  Fa2S,SpaceS(19),AzErgS);
        end;
      end;
    end;
  finally
    CloseFile (Drucktext);
  end;
end;

procedure StrDruck (TitelS: array of string; Fs: byte; AFeld: array of word;
                    FFeld: array of word; ZeileS: array of string; Anzahl: word; DateiZahl: byte);
var
  DruckText     : TextFile;
  JahrS         : string;
  MonS          : string;
  TagS          : string;
  WtagS         : string;
  ZeitS         : string;
  UeberschriftS : string[100];
  SpaltenS      : string[150];
  Az1S          : string[3];
  Fa1S          : string[2];
  i             : word;

begin
  Uhr (JahrS, MonS, TagS, WtagS, ZeitS);
  case Fs of
    8: UeberschriftS := '  '+Tx(1480); {Fl‰chen:Azimut/Fallen in Streichen/Fallen Richtung}
    9: UeberschriftS := '  '+ Tx(1482); {Lineare:Azimut/Fallen in Streichen/Fallen Richtung}
  end;
  SpaltenS      := Tx(1481); {Azimut/Fallen  Streichen/Fallen Richtung}
  AssignPrn (Drucktext);
  rewrite (Drucktext);
  try
    with Printer.Canvas.Font do
    begin
      Size := 24;
      Style := Style + [fsbold];
      writeln(Drucktext);
      writeln(Drucktext);
      writeln(Drucktext, UeberschriftS);
      Size  := 10;
      Style := Style - [fsbold];
      writeln(DruckText);
      writeln(DruckText);
      writeln(Drucktext, SpaceS(60), Tx(190));         {Tag der Bearbeitung}
      writeln(Drucktext, SpaceS(60), WTagS,',  ', TagS,'.  ', MonS,'  ', JahrS,
      SpaceS(20), Tx(210), ZeitS);
      writeln(Drucktext);
      writeln(Drucktext);
      for i := 1 to DateiZahl do
        writeln(DruckText, SpaceS(50), Tx(256),' ',TitelS[i]); {Dateiname}
      writeln(Drucktext,SpaceS(51),Tx(222),' ',
              InttoStr(Anzahl));
      writeln(DruckText);
      writeln(DruckText);
      write(Drucktext, SpaceS(58));
      Style := Style + [fsunderline];
      writeln(DruckText,SpaltenS);
      Style := Style - [fsunderline];
      for i := 1 to Anzahl do               {Drucken der Daten}
      begin
        str(AFeld[i], Az1S);
        str(FFeld[i], Fa1S);
        Az1S := RightS('000'+Az1S,3);
        Fa1S := RightS('00'+Fa1S,2);
        delete (ZeileS[i],4,1);
        insert ('/',ZeileS[i],4);
        delete (ZeileS[i],7,1);
        insert (' ',ZeileS[i],7);
        Writeln(Drucktext, SpaceS(62), Az1S,'/',Fa1S,SpaceS(27), ZeileS[i]);
      end;
    end;
  finally
    CloseFile (Drucktext);
  end;
end;

procedure AziDruck (TitelS: array of string; Fs: byte; ZeileS: array of string;
                    AFeld, FFeld: array of word; Anzahl: word; DateiZahl: byte);
var
  DruckText     : TextFile;
  JahrS         : string;
  MonS          : string;
  TagS          : string;
  WtagS         : string;
  ZeitS         : string;
  UeberschriftS : string[100];
  SpaltenS      : string[150];
  Az1S          : string[3];
  Fa1S          : string[2];
  i             : word;
begin
  Uhr (JahrS, MonS, TagS, WtagS, ZeitS);
  case Fs of
    10: UeberschriftS := '  '+Tx(1483); {Fl‰chen:Streichen/Fallen Richtung in Azimut/Fallen}
    11: UeberschriftS := '  '+ Tx(1485); {Lineare:Streichen/Fallen Richtung in Azimut/Fallen}
  end;
  SpaltenS      := Tx(1484); {Streichen/Fallen Richtung   Azimut/Fallen}
  AssignPrn (Drucktext);
  rewrite (Drucktext);
  try
    with Printer.Canvas.Font do
    begin
      Size := 24;
      Style := Style + [fsbold];
      writeln(Drucktext);
      writeln(Drucktext);
      writeln(Drucktext, UeberschriftS);
      Size  := 10;
      Style := Style - [fsbold];
      writeln(DruckText);
      writeln(DruckText);
      writeln(Drucktext, SpaceS(60), Tx(190));         {Tag der Bearbeitung}
      writeln(Drucktext, SpaceS(60), WTagS,',  ', TagS,'.  ', MonS,'  ', JahrS,
      SpaceS(20), Tx(210), ZeitS);
      writeln(Drucktext);
      writeln(Drucktext);
      for i := 1 to DateiZahl do
        writeln(DruckText, SpaceS(50), Tx(256),' ',TitelS[i]); {Dateiname}
      writeln(Drucktext,SpaceS(51),Tx(222),' ',
              InttoStr(Anzahl));
      writeln(DruckText);
      writeln(DruckText);
      write(Drucktext, SpaceS(58));
      Style := Style + [fsunderline];
      writeln(DruckText,SpaltenS);
      Style := Style - [fsunderline];
      for i := 1 to Anzahl do               {Drucken der Daten}
      begin
        str(AFeld[i], Az1S);
        str(FFeld[i], Fa1S);
        Az1S := RightS('000'+Az1S,3);
        Fa1S := RightS('00'+Fa1S,2);
        delete (ZeileS[i],4,1);
        insert ('/',ZeileS[i],4);
        delete (ZeileS[i],7,1);
        insert (' ',ZeileS[i],7);
        Writeln(Drucktext, SpaceS(65),ZeileS[i],SpaceS(20),Az1S,'/',Fa1S);
      end;
    end;
  finally
    CloseFile (Drucktext);
  end;
end;

procedure WinTitel (SDatei:string; TitelS: array of string;
                    Fs:byte; Az1, Az2, Fa1, Fa2, AzErg,
                    FaErg: array of word;
                    Anzahl:word; DateiZahl:byte);
var
  Datei         : TextFile;
  JahrS         : string;
  MonS          : string;
  TagS          : string;
  WtagS         : string;
  ZeitS         : string;
  UeberschriftS : string[100];
  SpaltenS      : string[150];
  Az1S, Az2S    : string[3];
  Fa1S, Fa2S    : string[2];
  AzErgS        : string[3];
  FaErgS        : string[2];
  i             : word;
begin
  Uhr (JahrS, MonS, TagS, WtagS, ZeitS);
  case Fs of
  1: begin
       UeberschriftS := Tx(141); {Schnittkante von zwei Fl‰chen}
       SpaltenS      := Tx(142); {Fl‰chen  Schnittkanten}
     end;
  2: begin
       UeberschriftS := Tx(144);  {Winkel zwischen 2 Fl‰chen}
       SpaltenS      := Tx(145);  {Fl‰chen    Winkel}
     end;
  3: begin
       UeberschriftS := Tx(147);  {Winkel zwischen 2 Linearen}
       SpaltenS      := Tx(148);  {Lineare  Winkel}
     end;
  4: begin
       UeberschriftS := Tx(150);  {Fl‰che aus zwei Linearen}
       SpaltenS      := Tx(151);  {Lineare Fl‰chen}
     end;
  5: begin
       UeberschriftS := Tx(153);   {Normale auf zwei Linearen}
       SpaltenS      := Tx(154);   {Lineare   Normale}
     end;
  6: begin
       UeberschriftS := Tx(1405);  {Pitchwinkel aus Fl‰che und Linear}
       SpaltenS      := Tx(1412);  {Fl‰che Linear Pitchwinkel}
     end;
  7: begin
       UeberschriftS := Tx(1407); {Linear aus Fl‰che und Pitchwinkel}
       SpaltenS      := Tx(1408);
     end;
  end;
  Assign (Datei, SDatei);
  rewrite (Datei);
  writeln(Datei);
  writeln(Datei, UeberschriftS);
  writeln(Datei, Tx(190), WTagS,', ', TagS,'.', MonS,' ',
                 JahrS, ' ', ZeitS);
  for i := 0 to DateiZahl do
    writeln(Datei, Tx(256),' ',TitelS[i]); {Dateiname}
  writeln(Datei,InttoStr(Anzahl),' ',Tx(101));
  writeln(Datei,SpaltenS);
  for i := 1 to Anzahl do               {Drucken der Daten}
  begin
    str(Az1[i], Az1S);
    str(Az2[i], Az2S);
    str(Fa1[i], Fa1S);
    str(Fa2[i], Fa2S);
    Az1S   := RightS('000'+Az1S,3);
    Az2S   := RightS('000'+Az2S,3);
    Fa1S   := RightS('00'+Fa1S,2);
    Fa2S   := RightS('00'+Fa2S,2);
    if (Fs = 1) or (Fs = 4) or (Fs = 5) then
    begin
      str(AzErg[i], AzErgS);
      str(FaErg[i], FaErgS);
      AzErgS := RightS('000'+AzErgS,3);
      FaErgS := RightS('00'+FaErgS,2);
      Writeln(Datei, '  ',Az1S,'/',Fa1S,SpaceS(14), Az2S,'/',
              Fa2S,SpaceS(15),AzErgS,'/',FaErgS);
    end
    else
    begin
      str(AzErg[i], AzErgS);
      AzErgS := RightS('   '+AzErgS,3);
      Writeln(Datei, '  ',Az1S,'/',Fa1S,SpaceS(14), Az2S,'/',
              Fa2S,SpaceS(17),AzErgS);
    end;
  end;
  CloseFile (Datei);
end;

procedure WinStr (SDatei: string; TitelS: array of string; Fs: byte;
                  AFeld, FFeld: array of word; ZeileS: array of string;
                  Anzahl: word; DateiZahl: byte);
var
  Datei         : TextFile;
  JahrS         : string;
  MonS          : string;
  TagS          : string;
  WtagS         : string;
  ZeitS         : string;
  UeberschriftS : string[100];
  SpaltenS      : string[150];
  Az1S          : string[3];
  Fa1S          : string[2];
  i             : word;
begin
  Uhr (JahrS, MonS, TagS, WtagS, ZeitS);
  case Fs of
    8: UeberschriftS := Tx(1480); {Fl‰chen:Azimut/Fallen in Streichen/Fallen Richtung}
    9: UeberschriftS := Tx(1482); {Lineare:Azimut/Fallen in Streichen/Fallen Richtung}
  end;
  SpaltenS      := Tx(1481); {Azimut/Fallen  Streichen/Fallen Richtung}
  Assign (Datei, SDatei);
  rewrite (Datei);
  writeln(Datei);
  writeln(Datei, UeberschriftS);
  writeln(Datei, Tx(190), WTagS,', ', TagS,'.', MonS,' ',
                 JahrS, ' ', ZeitS);
  for i := 0 to DateiZahl do
    writeln(Datei, Tx(256),' ',TitelS[i]); {Dateiname}
  writeln(Datei,InttoStr(Anzahl),' ',Tx(101));
  writeln(Datei,SpaltenS);
  for i := 1 to Anzahl do               {Drucken der Daten}
  begin
    str(AFeld[i], Az1S);
    str(FFeld[i], Fa1S);
    Az1S := RightS('000'+Az1S,3);
    Fa1S := RightS('00'+Fa1S,2);
    delete (ZeileS[i],4,1);
    insert ('/',ZeileS[i],4);
    delete (ZeileS[i],7,1);
    insert (' ',ZeileS[i],7);
    Writeln(Datei,'  ', Az1S,'/',Fa1S,SpaceS(24), ZeileS[i]);
  end;
  CloseFile (Datei);
end;

procedure WinAzi (SDatei: string; TitelS: array of string; Fs: byte;
                  ZeileS: array of string; AFeld, FFeld: array of word;
                  Anzahl: word; DateiZahl: byte);
var
  Datei         : TextFile;
  JahrS         : string;
  MonS          : string;
  TagS          : string;
  WtagS         : string;
  ZeitS         : string;
  UeberschriftS : string[100];
  SpaltenS      : string[150];
  Az1S          : string[3];
  Fa1S          : string[2];
  i             : word;
begin
  Uhr (JahrS, MonS, TagS, WtagS, ZeitS);
  case Fs of
    10: UeberschriftS := Tx(1483); {Fl‰chen:Streichen/Fallen Richtung in Azimut/Fallen}
    11: UeberschriftS := Tx(1485); {Lineare:Streichen/Fallen Richtung in Azimut/Fallen}
  end;
  SpaltenS      := Tx(1484); {Streichen/Fallen Richtung  Azimut/Fallen}
  Assign (Datei, SDatei);
  rewrite (Datei);
  writeln(Datei);
  writeln(Datei, UeberschriftS);
  writeln(Datei, Tx(190), WTagS,', ', TagS,'.', MonS,' ',
                 JahrS, ' ', ZeitS);
  for i := 0 to DateiZahl do
    writeln(Datei, Tx(256),' ',TitelS[i]); {Dateiname}
  writeln(Datei,InttoStr(Anzahl),' ',Tx(101));
  writeln(Datei,SpaltenS);
  for i := 1 to Anzahl do               {Drucken der Daten}
  begin
    str(AFeld[i], Az1S);
    str(FFeld[i], Fa1S);
    Az1S := RightS('000'+Az1S,3);
    Fa1S := RightS('00'+Fa1S,2);
    delete (ZeileS[i],4,1);
    insert ('/',ZeileS[i],4);
    delete (ZeileS[i],7,1);
    insert (' ',ZeileS[i],7);
    Writeln(Datei,'      ', ZeileS[i],SpaceS(16),Az1S,'/',Fa1S);
  end;
  CloseFile (Datei);
end;

procedure Titel2 (DateiZahl:byte; NameS:array of string;Geftyp:byte;
                  Ar:word; Fr:shortint;Th:integer; DatAz,
                  DatFall: array of word; Rotaz,
                  RotFall: Array of word; Zahl:word);
var
  Drucktext     : TextFile;
  UeberschriftS : string[60];
  JahrS         : string;
  MonS          : string;
  TagS          : string;
  WtagS         : string;
  ZeitS         : string;
  GeftypS       : string[14];
  i             : word;
  DazimutS      : string[3];
  DfallS        : string[2];
  RazimutS      : string[3];
  RfallS        : string[2];

begin
  case Geftyp of
    1: GeftypS := Tx(185);               {Lineare}
    2: GeftypS := Tx(186);               {Fl‰chen}
    3: GeftypS := Tx(187);               {U-Tisch-Achsen}
    4: GeftypS := Tx(188);               {U-Tisch-Pole}
  end;
  Uhr (JahrS, MonS, TagS, WtagS, ZeitS);
  UeberschriftS := Tx(189);               {Rotation von Richtungsdaten}
  with Printer.Canvas.Font do
  begin
    Size  := 24;
    Style := Style + [fsbold];
    AssignPrn (Drucktext);
    rewrite (Drucktext);
    writeln(Drucktext);
    writeln(Drucktext, SpaceS(20)+UeberschriftS);  {‹berschrift}
    Size  := 10;
    Style := Style - [fsbold];
    writeln(DruckText);
    writeln(DruckText);
    writeln(Drucktext, SpaceS(70), Tx(190));         {Tag der Bearbeitung}
    writeln(Drucktext, SpaceS(70), WTagS,',  ', TagS,'.  ', MonS,'  ', JahrS,
    SpaceS(20), Tx(210), ZeitS);
    writeln(DruckText);
    writeln(DruckText);
    for i := 0 to DateiZahl do
    begin
      Kompress(NameS[i]);
      writeln(DruckText,SpaceS(10)+Tx(211) + NameS[i]);
    end;
    writeln(DruckText,SpaceS(10)+Tx(212) + GeftypS);        {Daten sind}
    writeln(DruckText,SpaceS(10)+Tx(213)+IntToStr(Ar)+'/'+IntToStr(Fr));
    writeln(DruckText,SpaceS(10) + Tx(214) + IntToStr(Th) + '∞');
    writeln(DruckText,SpaceS(10),'Anzahl = ',Zahl);
    writeln(DruckText);
    write(DruckText,SpaceS(50));
    Size  := 14;
    write(Drucktext,SpaceS(12));
    Style := Style + [fsUnderline];
    write(Drucktext,Tx(183));                                {Daten:}
    style := Style - [fsUnderline];
    write(Drucktext,SpaceS(20));
    Style := Style + [fsUnderline];
    writeln(Drucktext,Tx(417));                             {Rotierte Daten}
    Style := Style - [fsUnderline];
    Size := 10;
  end;
  for i := 1 to Zahl do
  begin
    DazimutS := RightS ('000' + IntToStr(DatAz[i]),3);
    DfallS   := RightS ('00'  + IntToStr(DatFall[i]),2);
    RazimutS := RightS ('000' + IntToStr(RotAz[i]),3);
    RfallS   := RightS ('00'  + IntToStr(RotFall[i]),2);
    writeln(Drucktext,SpaceS(68),DazimutS,'/',DfallS,SpaceS(40),
            RazimutS,'/',RfallS);
  end;
  CloseFile (Drucktext);
end;

procedure WinTitel2 (SDatei: string;DateiZahl:byte;
                     NameS:array of string;Geftyp:byte;
                     Ar:word; Fr:shortint;Th:integer; DatAz,
                     DatFall: array of word; Rotaz,
                     RotFall: Array of word; Zahl:word);
var
  Datei         : TextFile;
  UeberschriftS : string[60];
  JahrS         : string;
  MonS          : string;
  TagS          : string;
  WtagS         : string;
  ZeitS         : string;
  GeftypS       : string[14];
  i             : word;
  DazimutS      : string[3];
  DfallS        : string[2];
  RazimutS      : string[3];
  RfallS        : string[2];
  ZahlS         : string;

begin
  case Geftyp of
    1: GeftypS := Tx(185);               {Lineare}
    2: GeftypS := Tx(186);               {Fl‰chen}
    3: GeftypS := Tx(187);               {U-Tisch-Achsen}
    4: GeftypS := Tx(188);               {U-Tisch-Pole}
  end;
  Uhr (JahrS, MonS, TagS, WtagS, ZeitS);
  UeberschriftS := Tx(189);               {Rotation von Richtungsdaten}
  Assign (Datei, SDatei);
  rewrite (Datei);
  writeln(Datei, UeberschriftS);  {‹berschrift}
  writeln(Datei, Tx(190)+WTagS+', '+TagS+'. '+MonS+' '
          +JahrS+' '+ZeitS);
  for i := 0 to DateiZahl do
  begin
    Kompress(NameS[i]);
    writeln(Datei,Tx(211),NameS[i]);
  end;
  ZahlS := IntToStr(Zahl);
  writeln(Datei,Tx(212)+' '+GeftypS);        {Daten sind}
  writeln(Datei,Tx(213)+IntToStr(Ar)+'/'+IntToStr(Fr));
  writeln(Datei,Tx(214) + IntToStr(Th) + '∞');
  writeln(Datei,'Anzahl = '+ZahlS);
  writeln(Datei,Tx(183)+' '+Tx(417)+'    '+Tx(183)+' '+Tx(417)+'    '
          +Tx(183)+' '+Tx(417)+'    '+Tx(183)+' '+Tx(417));  {Daten  Rotierte Daten}
  for i := 1 to Zahl do
  begin
    DazimutS := RightS ('000' + IntToStr(DatAz[i]),3);
    DfallS   := RightS ('00'  + IntToStr(DatFall[i]),2);
    RazimutS := RightS ('000' + IntToStr(RotAz[i]),3);
    RfallS   := RightS ('00'  + IntToStr(RotFall[i]),2);
    write(Datei,DazimutS+'/'+DfallS+' '+RazimutS+'/'+RfallS
                +SpaceS(3));
    if (i mod 4) = 0 then writeln(Datei);
  end;
  CloseFile (Datei);
end;

procedure Tdrucken (DZahl:word; DNameS: array of string; N:word;
                    T0:array of word; T1,T2,T3,T4,T5,T6,T7,T8,
                    T9: array of real);
var
  Drucktext : TextFile;
  JahrS     : string;
  MonS      : string;
  TagS      : string;
  WtagS     : string;
  ZeitS     : string;
  Ia1, Ia2  : word;
  Ia3, Ia4  : word;
  Ia5, Ia6  : word;
  Ia7, Ia8  : word;
  Ia9, i    : word;

begin
  AssignPrn (Drucktext);
  rewrite (Drucktext);
  Uhr (JahrS, MonS, TagS, WtagS, ZeitS);
  try
    with Printer.Canvas.Font do
    begin
      Size := 24;
      Style := Style + [fsbold];
      writeln(Drucktext);
      writeln (DruckText,SpaceS(7),Tx(418));       {T'Alpha/Alpha-Methode}
      Size  := 10;
      Style := Style - [fsbold];
      writeln(DruckText);
      writeln(DruckText);
      writeln(Drucktext, SpaceS(70), Tx(190));         {Tag der Bearbeitung}
      writeln(Drucktext, SpaceS(70), WTagS,',  ', TagS,'.  ', MonS,'  ', JahrS,
      SpaceS(20), Tx(210), ZeitS);
      writeln(DruckText);
      writeln(DruckText);
      for i := 0 to DZahl do writeln(DruckText,SpaceS(50)+Tx(419)   {Datei:}
                             + DNameS[i]);
      writeln (DruckText);
      writeln (DruckText,SpaceS(50),N,' ',Tx(420));      {Falten}
      writeln (DruckText);
      writeln (DruckText);
      for i := 1 to N do
      begin
        Ia1 := round(T1[i]*T0[i]);
        Ia2 := round(T2[i]*T0[i]);
        Ia3 := round(T3[i]*T0[i]);
        Ia4 := round(T4[i]*T0[i]);
        Ia5 := round(T5[i]*T0[i]);
        Ia6 := round(T6[i]*T0[i]);
        Ia7 := round(T7[i]*T0[i]);
        Ia8 := round(T8[i]*T0[i]);
        Ia9 := round(T9[i]*T0[i]);
        writeln (Drucktext);
        writeln (DruckText,SpaceS(50),i,'. ',Tx(421),'    ',Tx(422),' ',
                 T0[i]);  {Falte       Scheitelabstand:}
        writeln (DruckText,SpaceS(70),Tx(423));
        writeln (DruckText,SpaceS(73),'10',SpaceS(19),Ia1:4,SpaceS(18),T1[i]:4:2);
        writeln (DruckText,SpaceS(73),'20',SpaceS(19),Ia2:4,SpaceS(18),T2[i]:4:2);
        writeln (DruckText,SpaceS(73),'30',SpaceS(19),Ia3:4,SpaceS(18),T3[i]:4:2);
        writeln (DruckText,SpaceS(73),'40',SpaceS(19),Ia4:4,SpaceS(18),T4[i]:4:2);
        writeln (DruckText,SpaceS(73),'50',SpaceS(19),Ia5:4,SpaceS(18),T5[i]:4:2);
        writeln (DruckText,SpaceS(73),'60',SpaceS(19),Ia6:4,SpaceS(18),T6[i]:4:2);
        writeln (DruckText,SpaceS(73),'70',SpaceS(19),Ia7:4,SpaceS(18),T7[i]:4:2);
        writeln (DruckText,SpaceS(73),'80',SpaceS(19),Ia8:4,SpaceS(18),T8[i]:4:2);
        writeln (DruckText,SpaceS(73),'90',SpaceS(19),Ia9:4,SpaceS(18),T9[i]:4:2);
      end;
    end;
  finally
    CloseFile (Drucktext);
  end;
end;

procedure WinTdrucken (SDatei: string;DZahl:word;
                       DNameS: array of string;
                       N:word; T0:array of word;
                       T1,T2,T3,T4,T5,T6,T7,T8,
                       T9: array of real);
var
  Datei     : TextFile;
  JahrS     : string;
  MonS      : string;
  TagS      : string;
  WtagS     : string;
  ZeitS     : string;
  Ia1, Ia2  : word;
  Ia3, Ia4  : word;
  Ia5, Ia6  : word;
  Ia7, Ia8  : word;
  Ia9, i    : word;

begin
  Assign (Datei, SDatei);
  rewrite (Datei);
  Uhr (JahrS, MonS, TagS, WtagS, ZeitS);
  writeln (Datei,Tx(418));       {T'Alpha/Alpha-Methode}
  writeln(Datei,Tx(190),' ',WTagS,', ', TagS,'. ',MonS,'  ', JahrS,
          ' ',ZeitS);
  for i := 0 to DZahl do writeln(Datei,Tx(419),DNameS[i]);
  writeln (Datei,N,' ',Tx(420));      {Falten}
  for i := 1 to N do
  begin
    Ia1 := round(T1[i]*T0[i]);
    Ia2 := round(T2[i]*T0[i]);
    Ia3 := round(T3[i]*T0[i]);
    Ia4 := round(T4[i]*T0[i]);
    Ia5 := round(T5[i]*T0[i]);
    Ia6 := round(T6[i]*T0[i]);
    Ia7 := round(T7[i]*T0[i]);
    Ia8 := round(T8[i]*T0[i]);
    Ia9 := round(T9[i]*T0[i]);
    writeln (Datei,i,'. ',Tx(421),'    ',Tx(422),' ', T0[i]);  {Falte       Scheitelabstand:}
    writeln (Datei,Tx(423));
    writeln (Datei,'  10',SpaceS(12),Ia1:4,SpaceS(12),T1[i]:4:2);
    writeln (Datei,'  20',SpaceS(12),Ia2:4,SpaceS(12),T2[i]:4:2);
    writeln (Datei,'  30',SpaceS(12),Ia3:4,SpaceS(12),T3[i]:4:2);
    writeln (Datei,'  40',SpaceS(12),Ia4:4,SpaceS(12),T4[i]:4:2);
    writeln (Datei,'  50',SpaceS(12),Ia5:4,SpaceS(12),T5[i]:4:2);
    writeln (Datei,'  60',SpaceS(12),Ia6:4,SpaceS(12),T6[i]:4:2);
    writeln (Datei,'  70',SpaceS(12),Ia7:4,SpaceS(12),T7[i]:4:2);
    writeln (Datei,'  80',SpaceS(12),Ia8:4,SpaceS(12),T8[i]:4:2);
    writeln (Datei,'  90',SpaceS(12),Ia9:4,SpaceS(12),T9[i]:4:2);
    writeln(Datei);
  end;
  CloseFile (Datei);
end;

procedure DruckPalaeo (KopfS: string; DateiZahl: byte; TitelS: array of string;
                       HDatAz, HDatFall, SDatAz: array of word;
                       SDatFall: array of shortint; Zahl: word);
var
  Drucktext   : TextFile;
  JahrS       : string;
  MonS        : string;
  TagS        : string;
  WtagS       : string;
  ZeitS       : string;
  i           : word;
  HAzS, HFalS : string[3];
  SAzS, SfalS : string[3];
begin
  Uhr (JahrS, MonS, TagS, WtagS, ZeitS);
  AssignPrn (Drucktext);
  rewrite (Drucktext);
  try
    with Printer.Canvas.Font do
    begin
      Name := 'TimesNewRoman';
      Size  := 20;
      Style := Style + [fsbold];
      writeln(Drucktext);
      writeln(Drucktext);
      if KopfS = '11' then writeln(Drucktext, Tx(255));
                         {Berechnung der Richtungen der Hauptnormalspannungen.}
      Size  := 10;
      Style := Style - [fsbold];
      writeln(DruckText);
      writeln(DruckText);
      writeln(Drucktext, SpaceS(70), Tx(190));         {Tag der Bearbeitung}
      writeln(Drucktext, SpaceS(70), WTagS,',  ', TagS,'.  ', MonS,'  ', JahrS,
      SpaceS(20), Tx(210), ZeitS);
      writeln(DruckText);
      writeln(DruckText);
      for i := 0 to DateiZahl do
        writeln(DruckText, SpaceS(40), Tx(256),'  ',TitelS[i]); {Dateiname}
      writeln (Drucktext);
      writeln (Drucktext);
      writeln (Drucktext, '   Daten:');
      writeln (Drucktext);
      pitch := fpFixed;
      for i := 1 to Zahl do               {Drucken der Daten}
      begin
        str(HDatAz[i], HAzS);
        str(HDatFall[i], HFalS);
        str(SDatAz[i], SAzS);
        str(abs(SDatFall[i]), SFalS);
        HAzS  := RightS('000'+HAzS,3);
        HFaLS := RightS('00'+HFalS,2);
        SAzS  := RightS('000'+SAzS,3);
        SFalS := RightS('00'+SFalS,2);
        if SDatFall[i] > 0 then SFalS := ' '+SFalS
        else SFalS := '-'+SFalS;
        Write (Drucktext, '    ',HAzS,'/',HFalS,' ',SAzS,'/',SFalS);
        if (i mod 5) = 0 then writeln (Drucktext);
      end;
      pitch := FpDefault;
    end;
  finally
    CloseFile (Drucktext);
  end;
end;

procedure WinDruckPalaeo (SDatei,KopfS: string; DateiZahl: byte;
                       TitelS: array of string;
                       HDatAz, HDatFall, SDatAz: array of word;
                       SDatFall: array of shortint; Zahl:word);
var
  Datei       : TextFile;
  JahrS       : string;
  MonS        : string;
  TagS        : string;
  WtagS       : string;
  ZeitS       : string;
  i           : word;
  HAzS, HFalS : string[3];
  SAzS, SfalS : string[3];
begin
  Uhr (JahrS, MonS, TagS, WtagS, ZeitS);
  Assign (Datei, SDatei);
  rewrite (Datei);
  writeln(Datei);
  if KopfS = '11' then writeln(Datei, Tx(255));
                         {Berechnung der Richtungen der Hauptnormalspannungen.}
  writeln(Datei, Tx(190),' ', WTagS,', ', TagS,'. ', MonS,' ', JahrS,' ', ZeitS);
  for i := 0 to DateiZahl do
    writeln(Datei, Tx(256),'  ',TitelS[i]); {Dateiname}
  writeln (Datei,Tx(183));
  for i := 1 to Zahl do               {Drucken der Daten}
  begin
    str(HDatAz[i], HAzS);
    str(HDatFall[i], HFalS);
    str(SDatAz[i], SAzS);
    str(abs(SDatFall[i]), SFalS);
    HAzS  := RightS('000'+HAzS,3);
    HFaLS := RightS('00'+HFalS,2);
    SAzS  := RightS('000'+SAzS,3);
    SFalS := RightS('00'+SFalS,2);
    if SDatFall[i] > 0 then SFalS := ' '+SFalS
    else SFalS := '-'+SFalS;
      Write (Datei, HAzS,'/',HFalS,' ',SAzS,'/',SFalS,'  ');
    if (i mod 4) = 0 then writeln (Datei);
  end;
  CloseFile (Datei);
end;

procedure DruckBitmap (Canvas: TCanvas; var Fenster: TRect;
                       RadiusS, XKoordS,
                       YKoordS, TextS: string; Schrift: byte;
                       BuendigS: string;
                       Bitmap: Graphics.TBitmap);
var
  BitmapHeader : pBitmapInfo;
  BitmapImage  : Pointer;
  HeaderSize   : DWord;
  ImageSize    : DWord;
  XKoordinate  : extended;
  YKoordinate  : extended;
  RadiusX      : extended;
  RadiusY      : extended;
  Datei        : TextFile;
  i            : byte;
  Zentrum      : extended;
  XText        : word;
  YText        : word;
  Laenge       : word;
  Anfang       : extended;

begin
  if (Programm = 12) or (Programm = 17)  or (Programm = 18) then
  begin
    Laenge := 2 * StrToInt(RadiusS);
    RadiusS := IntToStr(Laenge);
  end;
  KonfigZeileS[74] := 'Radius of bitmap [%]       :'
                      +','+RadiusS;
  KonfigZeileS[75] := 'X-Coord. bitmap centre [%] :'
                      +','+XKoordS;
  KonfigZeileS[76] := 'Y-Coord. bitmap centre [%] :'+','
                      +YKoordS;
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  if (Programm = 12) or (Programm = 17)
  or (Programm = 18) then RadiusS := IntToStr(Laenge div 2);
  RadiusX := Printer.PageWidth * StrToInt(RadiusS)/100;
  RadiusY := RadiusX*YDruckFaktor;
  if Programm = 12 then RadiusY := 8*RadiusX/11;  {Fourier}
  if Programm = 17 then RadiusY := 9*RadiusX/21;  {Formfaktor}
  if Programm = 18 then RadiusY := 3*RadiusX/2;   {Talpha}
  XKoordinate := Printer.PageWidth * StrToInt(XKoordS)/100
                  - RadiusX;
  YKoordinate := Printer.PageHeight * StrToInt(YKoordS)/100
                 - RadiusY;
  if Programm = 27 then
  begin
    XKoordinate := Printer.PageWidth * StrToInt(XKoordS)/100;
    YKoordinate := Printer.PageHeight * StrToInt(YKoordS)/100;
    RadiusX := RadiusX/2;
    RadiusY := RadiusY/2;
  end;
  if Programm = 28 then
  begin
    XKoordinate := Printer.PageWidth * StrToInt(XKoordS)/100;
    YKoordinate := Printer.PageHeight * StrToInt(YKoordS)/100;
    RadiusX := RadiusX/2;
    RadiusY := RadiusY/2;
  end;
  Fenster.Left   := round(Xkoordinate);
  Fenster.Top    := round(YKoordinate);
  Fenster.Right  := round(XKoordinate + 2* RadiusX);
  Fenster.Bottom := round(YKoordinate + 2* RadiusY);
  GetDIBSizes (Bitmap.Handle, HeaderSize, ImageSize);
  GetMem (BitmapHeader, HeaderSize);
  GetMem (BitmapImage, ImageSize);
  try
    GetDIB (Bitmap.Handle, Bitmap.Palette, BitmapHeader^,
            BitmapImage^);
    StretchDIBits (Canvas.Handle, Fenster.Left, Fenster.Top,
                   Fenster.Right - Fenster.Left,
                   Fenster.Bottom - Fenster.Top, 0,0,
                   Bitmap.Width, Bitmap.Height, BitmapImage,
                   TBitmapInfo (BitmapHeader^), DIB_RGB_Colors,
                   cmSRCCopy);
  finally
    FreeMem (BitmapHeader);
    FreeMem (BitmapImage);
  end;
  YText := Fenster.Bottom;
  if Programm = 28 then YText := Fenster.Top + round(YKarte*5.82);
  with Printer.Canvas do
  begin
    Font.Color := clBlack;
    Font.Size  := Schrift;
    Font.Name  := 'Times New Roman';
    Font.Color := UmfangFarbe;
  end;
  if BuendigS = 'Links' then XText := Fenster.Left;
  if BuendigS = 'Zentriert' then
  begin
    Zentrum := Fenster.Left+(Fenster.Right-Fenster.Left) div 2;
    if Programm = 28 then
      Zentrum := Fenster.Left+round(XKarte*5.82/2);
    Anfang  := Printer.Canvas.TextWidth(TextS)/2;
    XText   := round(Zentrum-Anfang);
  end;
  if BuendigS = 'Rechts' then
  begin
    XText := Fenster.Right - Printer.Canvas.TextWidth(TextS);
    if Programm = 28 then
      Xtext := Fenster.Left+round(XKarte*5.82)
                -Printer.Canvas.TextWidth(TextS);
  end;
  Printer.Canvas.Font.Color := clBlack;
  Printer.Canvas.Textout (XText, YText, TextS);
end;

procedure DruckKreise (DateiZahl:byte; TitelS:array of string;
                  DatAz, DatFall, DatKreis:array of word; Zahl:word);
var
  Drucktext     : TextFile;
  JahrS         : string;
  MonS          : string;
  TagS          : string;
  WtagS         : string;
  ZeitS         : string;
  i             : word;
  AzS, FalS,KrS : string[4];
begin
  Uhr (JahrS, MonS, TagS, WtagS, ZeitS);
  AssignPrn (Drucktext);
  rewrite (Drucktext);
    try
    with Printer.Canvas.Font do
    begin
      Name := 'TimesNewRoman';
      Size  := 24;
      Style := Style + [fsbold];
      writeln(Drucktext);
      writeln(Drucktext,SpaceS(8), Tx(1489));  {Plot von kleinkreisen}
      writeln(Drucktext);
      Size  := 10;
      Style := Style - [fsbold];
      writeln(DruckText);
      writeln(DruckText);
      writeln(Drucktext, SpaceS(70), Tx(190));         {Tag der Bearbeitung}
      writeln(Drucktext, SpaceS(70), WTagS,',  ', TagS,'.  ', MonS,'  ', JahrS,
      SpaceS(20), Tx(210), ZeitS);                     {Zeit:}
      writeln(DruckText);
      writeln(DruckText);
      for i := 0 to DateiZahl do
        writeln(DruckText, SpaceS(40), Tx(256),'  ',TitelS[i]); {Dateiname}
      writeln (Drucktext);
      writeln (Drucktext);
      for i := 1 to Zahl do               {Drucken der Daten}
      begin
        str(DatAz[i], AzS);
        str(DatFall[i], FalS);
        str(DatKreis[i],KrS);
        AzS  := RightS('000'+AzS,3);
        FaLS := RightS('00'+FaLS,2);
        KrS  := RightS('00'+KrS,2);
        Write (Drucktext, '    ',AzS,'/',FalS,';',KrS);
        if i mod 6 = 0 then writeln(Drucktext);
      end;
    end;
  finally
    CloseFile (Drucktext);
  end;
end;

procedure WinKreise    (DateiZahl:byte; SDatei: string;
                        TitelS: array of string;
                        DatAz, DatFall, DatKreis: array of word; Zahl:word);
var
  Datei   : TextFile;
  JahrS   : string;
  MonS    : string;
  TagS    : string;
  WtagS   : string;
  ZeitS   : string;
  i       : word;
  AzS     : string[4];
  FalS    : string[4];
  KreisS  : string[4];
begin
  Uhr (JahrS, MonS, TagS, WtagS, ZeitS);
  Assign (Datei,SDatei);
  rewrite (Datei);
  writeln(Datei,SpaceS(8), Tx(1489));  {Plot von Kleinkreisen}
  writeln(Datei, Tx(190),' ', WTagS,', ', TagS,'. ', MonS,' ', JahrS, ' ', ZeitS);                     {Zeit:}
  for i := 0 to DateiZahl do
    writeln(Datei,Tx(256),'  ',TitelS[i]); {Dateiname}
  writeln (Datei, Zahl,'  ',Tx(101));
  for i := 1 to Zahl do               {Drucken der Daten}
  begin
    str(DatAz[i], AzS);
    str(DatFall[i], FalS);
    str(DatKreis[i], KreisS);
    AzS    := RightS('000'+AzS,3);
    FaLS   := RightS('00'+FaLS,2);
    Write (Datei, AzS,'/',FalS,';',KreisS,' ');
    if (i mod 6) = 0 then writeln(Datei,chr(13));
  end;
  CloseFile (Datei);
end;

end.
