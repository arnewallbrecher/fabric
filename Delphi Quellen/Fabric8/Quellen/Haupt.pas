unit Haupt;

interface
uses Forms, StdCtrls, SysUtils, Dialogs;

  procedure Kopierschutz;
  procedure Passwortein;
  procedure ListGefprog;
  procedure WaehlGefProg (Gewaehlt: byte);

implementation
uses Globvar, Basic, Texte, Windows, LiesConf,
     Unit1, Unit2;

procedure Kopierschutz;
var
  Datei : Text;
begin
  {Kopierschutz}
  if not DemoB then
  begin
    PassS := 'c:\'+chr(64)+chr(38)+chr(64);
    {$I-}
    assignFile (Datei,PassS);
    reset (Datei);
    {$I+}
    if ioresult = 0 then read(Datei,SchutzS);
    if SchutzS <> 'ZAHFXVK' then Rausschmiss;
    closeFile (Datei);
  end;
end;

procedure Passwortein;
var
  PasswS : string[20];
  Zahler : byte;
begin
  getdir(0,DirectS);
  Zahler := 0;
  if PasswortS <> 'N' then
  begin
    repeat
      PasswS := InputBox (Tx(430), Tx(6), '');  {Fabric7}
      if PasswS <> PwS then inc (Zahler) else exit;
      if PasswS = '' then Zahler := 3;
//      if Zahler = 3 then Ausb := true;
    until Zahler = 3;
  end
end;

procedure ListGefprog;
begin
  LiesConfig;
  Ts[1]  := Tx(1625);           {Richtungsdaten,    2}
  Ts[2]  := '       '+Tx(7);    {Schnittkanten,     3}
  Ts[3]  := '       '+Tx(8);    {Rotation,          4}
  Ts[4]  := '       '+Tx(9);    {Plotten von Daten, 5}
  Ts[5]  := '       '+Tx(10);   {Grosskreise,       6}
  Ts[6]  := '       '+Tx(11);   {Kleinkreise,       7}
  Ts[7]  := '       '+Tx(12);   {Masszahlen,        8}
  Ts[8]  := '       '+Tx(13);   {Richtungsrose,     9}
  Ts[9]  := '       '+Tx(14);   {Gefuege,           10}
  Ts[10] := '       '+Tx(15);   {Iso1,              11}
  Ts[11] := '       '+Tx(16);   {CLODAT,            12}
  Ts[12] := '       '+Tx(21);   {Projektionen,      13}
  Ts[13] := '       '+Tx(904);  {Rekonstruktion,    14}
  Ts[14] := Tx(1626);           {Versatzdaten}
  Ts[15] := '       '+Tx(17);   {Paläospannung,     16}
  Ts[16] := '       '+Tx(18);   {Harnisch-Flächen,  17}
  Ts[17] := '       '+Tx(19);   {Hoeppener,         18}
  Ts[18] := '       '+Tx(20);   {Formfaktor,        19}
  Ts[19] := '       '+Tx(1490); {Mohrscher Kreis,   20}
  Ts[20] := Tx(1628);           {Eigenwert-Methoden}
  Ts[21] := '       '+Tx(22);   {R%-G%,             21}
  Ts[22] := '       '+Tx(23);   {WOODCOCK,          22}
  Ts[23] := '       '+Tx(24);   {VOLLMER-Dreieck,   23}
  Ts[24] := '       '+Tx(1218); {Signifikanz,       24}
  Ts[25] := Tx(1627);           {Falten-Analyse}
  Ts[26] := '       '+Tx(25);   {Fourier,           26}
  Ts[27] := '       '+Tx(26);   {Talpha/Alpha),     27}
  Ts[28] := '       '+Tx(1165); {Isogonen zeichnen, 28}
  Ts[29] := Tx(1629);           {2-dimensionale Strain-Analyse}
  Ts[30] := '       '+Tx(943);  {Simulation einfacher Scherung,            30}
  Ts[31] := '       '+Tx(1060); {Strainanalyse mit der Fry-Methode,        31}
  Ts[32] := '       '+Tx(1145); {Strainanalyse mit der Projektionsmethode, 32}
  Ts[33] := '       '+TX(1364); {Rf/Phi-Methode,                           33}
  Ts[34] := '       '+Tx(1734); {Wellman-Methode                           34}
  Ts[35] := Tx(1727); {Dreidimensionale Strainanalyse}
  Ts[36] := '       '+Tx(1534); {Flinn-Diagramm,                           35}
  Ts[37] := '       '+Tx(966);  {Talbot-Methode zur Strainanalyse,         36}
  Ts[38] :=Tx(1630);            {Karten}
  Ts[39] := '       '+Tx(1258); {Karte,                                    37}
  Ts[40] := Tx(27);             {Ende von Fabric8}
end;

procedure WaehlGefProg (Gewaehlt: byte);

type
  TIsol          = procedure;
  Tclodat        = procedure;
  TGefProgramm1  = procedure;
  TGefProgramm2  = procedure;
  Tgefprogramm3  = procedure;
  Tgefprogramm4  = procedure;
  Tgefprogramm5  = procedure;
  Tgefprogramm6  = procedure;
  Tgefprogramm7  = procedure;
  Tgefprogramm8  = procedure;
  Tgefprogramm9  = procedure;
  Tgefprogramm10 = procedure;
  Tgefprogramm11 = procedure;
  Tgefprogramm12 = procedure;
  Tgefprogramm13 = procedure;
  Tgefprogramm14 = procedure;
  Tgefprogramm15 = procedure;
  Tgefprogramm16 = procedure;
  Tgefprogramm17 = procedure;
  Tgefprogramm18 = procedure;
  Tgefprogramm19 = procedure;
  Tgefprogramm20 = procedure;
  Tgefprogramm21 = procedure;
  Tgefprogramm22 = procedure;
  Tgefprogramm23 = procedure;
  Tgefprogramm24 = procedure;
  Tgefprogramm25 = procedure;
  Tgefprogramm26 = procedure;
  Tgefprogramm27 = procedure;
  Tgefprogramm28 = procedure;
  Tgefprogramm29 = procedure;
  Tgefprogramm30 = procedure;
//  Tgefprogramm31 = procedure;
//  Tgefprogramm32 = procedure;
//  Tgefprogramm33 = procedure;
var
  DllHandle     : THandle;
  GefProgramm1  : TGefProgramm1;  {1}
  GefProgramm2  : TGefProgramm2;  {2}
  Gefprogramm3  : Tgefprogramm3;  {3}
  Gefprogramm4  : Tgefprogramm4;  {4}
  Gefprogramm5  : Tgefprogramm5;  {5}
  Gefprogramm6  : Tgefprogramm6;  {6}
  Gefprogramm7  : Tgefprogramm7;  {7}
  Gefprogramm8  : Tgefprogramm8;  {8}
  Isol          : TIsol;          {9}
  Clodat        : Tclodat;        {10}
  Gefprogramm11 : Tgefprogramm11; {11}
  Gefprogramm15 : Tgefprogramm15; {12}
  Gefprogramm14 : Tgefprogramm14; {13}
  Gefprogramm17 : Tgefprogramm17; {14}
  Gefprogramm28 : Tgefprogramm28; {15}
  Gefprogramm9  : Tgefprogramm9;  {16}
  Gefprogramm19 : Tgefprogramm19; {17}
  Gefprogramm10 : Tgefprogramm10; {18}
  Gefprogramm13 : Tgefprogramm13; {19}
  Gefprogramm16 : Tgefprogramm16; {20}
  Gefprogramm12 : Tgefprogramm12; {21}
  Gefprogramm18 : Tgefprogramm18; {22}
  Gefprogramm20 : Tgefprogramm20; {23}
  Gefprogramm21 : Tgefprogramm21; {24}
  Gefprogramm22 : Tgefprogramm22; {25}
  Gefprogramm23 : Tgefprogramm23; {26}
  Gefprogramm24 : Tgefprogramm24; {22}
  Gefprogramm25 : Tgefprogramm25; {20}
  Gefprogramm26 : Tgefprogramm26; {26}
  GefProgramm27 : Tgefprogramm27; {27}
  GefProgramm29 : Tgefprogramm29; {29}
  Gefprogramm30 : Tgefprogramm30; {30}
//  GefProgramm31 : Tgefprogramm27; {31}
//  GefProgramm32 : Tgefprogramm29; {32}
//  GefProgramm33 : Tgefprogramm30; {33}

begin
  case Gewaehlt of
    2 : begin
          if not Ausb then
          begin
            DllHandle := LoadLibrary ('GefProg1.DLL');
            Findedll (DllHandle,'GefProg1.DLL');
            @GefProgramm1 := GetProcAddress (DllHandle, 'GefProgramm1');
            GefProgramm1;
          end;
          FreeLibrary (DllHandle);
        end;
    3 : begin
          Dllhandle := LoadLibrary ('Gefprog2.DLL');
          Findedll (Dllhandle,'Gefprog2.DLL');
          if not Ausb then
          begin
            @GefProgramm2 := GetProcAddress (DllHandle, 'GefProgramm2');
            GefProgramm2;
          end;
          FreeLibrary (DllHandle);
        end;
    4 : begin
          DllHandle := LoadLibrary ('GefProg3.DLL');
          FindeDll (DllHandle,'Gefprog3.DLL');
          if not Ausb then
          begin
            @GefProgramm3 := GetProcAddress (DllHandle, 'GefProgramm3');
            GefProgramm3;
          end;
          FreeLibrary (DllHandle);
        end;
    5 : begin
          DllHandle := LoadLibrary ('GefProg4.DLL');
          Findedll (DllHandle,'GefProg4.DLL');
          if not Ausb then
          begin
            @GefProgramm4 := GetProcAddress (DllHandle, 'GefProgramm4');
            GefProgramm4;
          end;
          FreeLibrary (DllHandle);
        end;
    6 : begin
           DllHandle := LoadLibrary ('GefProg5.DLL');
           Findedll (DllHandle,'GefProg5.DLL');
           if not Ausb then
           begin
             @GefProgramm5 := GetProcAddress (DllHandle, 'GefProgramm5');
             GefProgramm5;

           end;
           FreeLibrary (DllHandle);
         end;
     7 : begin
           DllHandle := LoadLibrary ('GefProg6.DLL');
           Findedll (DllHandle,'GefProg6.DLL');
           if not Ausb then
           begin
             @GefProgramm6 := GetProcAddress (DllHandle, 'GefProgramm6');
             GefProgramm6;
           end;
           FreeLibrary (DllHandle);
         end;
     8 : begin
           DllHandle := LoadLibrary ('GefProg7.DLL');
           Findedll (DllHandle,'GefProg7.DLL');
           if not Ausb then
           begin
             @GefProgramm7 := GetProcAddress (DllHandle, 'GefProgramm7');
             GefProgramm7;
           end;
           FreeLibrary (DllHandle);
         end;
     9 : begin
           DllHandle := LoadLibrary ('GefProg8.DLL');
           Findedll (DllHandle,'GefProg8.DLL');
           if not Ausb then
           begin
             @GefProgramm8 := GetProcAddress (DllHandle, 'GefProgramm8');
             GefProgramm8;
           end;
           FreeLibrary (DllHandle);
         end;
     10 : begin
           DllHandle := LoadLibrary ('Iso1.DLL');
           Findedll (DllHandle,'Iso1.DLL');
           if not Ausb then
           begin
             @Isol := GetProcAddress (DllHandle, 'Isol');
             Isol;
           end;
           FreeLibrary (DllHandle);
         end;
    11 : begin
           DllHandle := LoadLibrary ('Clodat7.DLL');
           Findedll (DllHandle,'Clodat7.DLL');
           if not Ausb then
           begin
             @Clodat := GetProcAddress (DllHandle, 'Clodat');
             Clodat;
           end;
           FreeLibrary (DllHandle);
         end;
    12 : begin
           DllHandle := LoadLibrary ('GefProg9.DLL');
           Findedll (DllHandle,'GefProg9.DLL');
           if not Ausb then
           begin
             @GefProgramm9 := GetProcAddress (DllHandle, 'GefProgramm9');
             GefProgramm9;
           end;
           FreeLibrary (DllHandle);
         end;
    13 : begin
           DllHandle := LoadLibrary ('GefProg19.DLL');
           Findedll (DllHandle,'GefProg19.DLL');
           if not Ausb then
           begin
             @GefProgramm19 := GetProcAddress (DllHandle, 'GefProgramm19');
             GefProgramm19;
           end;
           FreeLibrary (DllHandle);
         end;
    15 : begin
           DllHandle := LoadLibrary ('Gefprog11.DLL');
           Findedll (DllHandle,'Gefprog11.DLL');
           if not Ausb then
           begin
             @GefProgramm11 := GetProcAddress (DllHandle, 'GefProgramm11');
             GefProgramm11;
           end;
           FreeLibrary (DllHandle);
         end;
    16 : begin
           DllHandle := LoadLibrary ('Gefprog15.DLL');
           Findedll (DllHandle,'Gefprog15.DLL');
           if not Ausb then
           begin
             @GefProgramm15 := GetProcAddress (DllHandle, 'GefProgramm15');
             GefProgramm15;
           end;
           FreeLibrary (DllHandle);
         end;
    17 : begin
           DllHandle := LoadLibrary ('Gefprog14.DLL');
           Findedll (DllHandle,'Gefprog14.DLL');
           if not Ausb then
           begin
             @GefProgramm14 := GetProcAddress (DllHandle, 'GefProgramm14');
             GefProgramm14;
           end;
           FreeLibrary (DllHandle);
         end;
    18 : begin
           DllHandle := LoadLibrary ('Gefprog17.DLL');
           Findedll (DllHandle,'Gefprog17.DLL');
           if not Ausb then
           begin
             @GefProgramm17 := GetProcAddress (DllHandle, 'GefProgramm17');
             GefProgramm17;
           end;
           FreeLibrary (DllHandle);
         end;
    19 : begin
           DllHandle := LoadLibrary ('Gefprog28.DLL');
           Findedll (DllHandle,'Gefprog28.DLL');
           if not Ausb then
           begin
             @GefProgramm28 := GetProcAddress (DllHandle, 'GefProgramm28');
             GefProgramm28;
           end;
           FreeLibrary (DllHandle);
         end;
    21 : begin
           DllHandle := LoadLibrary ('Gefprog10.DLL');
           Findedll (DllHandle,'Gefprog10.DLL');
           if not Ausb then
           begin
             @GefProgramm10 := GetProcAddress (DllHandle, 'GefProgramm10');
             GefProgramm10;
           end;
           FreeLibrary (DllHandle);
         end;
    22 : begin
           DllHandle := LoadLibrary ('Gefprog13.DLL');
           Findedll (DllHandle,'Gefprog13.DLL');
           if not Ausb then
           begin
             @GefProgramm13 := GetProcAddress (DllHandle, 'GefProgramm13');
             GefProgramm13;
           end;
           FreeLibrary (DllHandle);
         end;
    23 : begin
           DllHandle := LoadLibrary ('Gefprog16.DLL');
           Findedll (DllHandle,'Gefprog16.DLL');
           if not Ausb then
           begin
             @GefProgramm16 := GetProcAddress (DllHandle, 'GefProgramm16');
             GefProgramm16;
           end;
           FreeLibrary (DllHandle);
         end;
    24 : begin
           DllHandle := LoadLibrary ('GefProg25.DLL');
           Findedll (DllHandle,'GefProg25.DLL');
           if not Ausb then
           begin
             @GefProgramm25 := GetProcAddress (DllHandle, 'GefProgramm25');
             GefProgramm25;
           end;
           FreeLibrary (DllHandle);
         end;
    26 : begin
           DllHandle := LoadLibrary ('Gefprog12.DLL');
           Findedll (DllHandle,'Gefprog12.DLL');
           if not Ausb then
           begin
             @GefProgramm12 := GetProcAddress (DllHandle, 'GefProgramm12');
             GefProgramm12;
           end;
           FreeLibrary (DllHandle);
         end;
    27 : begin
           DllHandle := LoadLibrary ('Gefprog18.DLL');
           Findedll (DllHandle,'Gefprog18.DLL');
           if not Ausb then
           begin
             @GefProgramm18 := GetProcAddress (DllHandle, 'GefProgramm18');
             GefProgramm18;
           end;
           FreeLibrary (DllHandle);
         end;
    28 : begin
           DllHandle := LoadLibrary ('Gefprog24.DLL');
           Findedll (DllHandle,'Gefprog24.DLL');
           if not Ausb then
           begin
             @GefProgramm24 := GetProcAddress (DllHandle, 'GefProgramm24');
             GefProgramm24;
           end;
           FreeLibrary (DllHandle);
         end;
    30 : begin
           DllHandle := LoadLibrary ('Gefprog20.DLL');   //Plane Strain
           Findedll (DllHandle,'Gefprog20.DLL');
           if not Ausb then
           begin
             @GefProgramm20 := GetProcAddress (DllHandle, 'GefProgramm20');
             GefProgramm20;
           end;
           FreeLibrary (DllHandle);
         end;
     31 : begin
            DllHandle := LoadLibrary ('Gefprog22.DLL');      //Fry
            Findedll (DllHandle,'Gefprog22.DLL');
            if not Ausb then
            begin
              @GefProgramm22 := GetProcAddress (DllHandle, 'GefProgramm22');
              GefProgramm22;
            end;
            FreeLibrary (DllHandle);
          end;
     32 : begin
            DllHandle := LoadLibrary ('Gefprog23.DLL');           //Panozzo
            Findedll (DllHandle,'Gefprog23.DLL');
            if not Ausb then
            begin
              @GefProgramm23 := GetProcAddress (DllHandle, 'GefProgramm23');
              GefProgramm23;
            end;
            FreeLibrary (DllHandle);
          end;
     33 : begin
            DllHandle := LoadLibrary ('Gefprog27.DLL');  //Rf/Phi
            Findedll (DllHandle,'Gefprog27.DLL');
            if not Ausb then
            begin
              @GefProgramm27 := GetProcAddress (DllHandle, 'GefProgramm27');
              GefProgramm27;
            end;
            FreeLibrary (DllHandle);
          end;
     34 : begin
            DllHandle := LoadLibrary ('Gefprog30.Dll'); //Wellman
            Findedll (DllHandle,'Gefprog30.Dll');
            if not Ausb then
            begin
              @GefProgramm30 := GetProcAddress (DllHandle, 'GefProgramm30');
              GefProgramm30;
            end;
            FreeLibrary (DllHandle);
          end;  
     36 : begin
            DllHandle := LoadLibrary ('Gefprog29.DLL');      //Flinn-Diagramm
            Findedll (DllHandle,'Gefprog29.DLL');
            if not Ausb then
            begin
              @GefProgramm29 := GetProcAddress (DllHandle, 'GefProgramm29');
              GefProgramm29;
            end;
            FreeLibrary (DllHandle);
          end;
      37 : begin
             DllHandle := LoadLibrary ('Gefprog21.DLL');
             Findedll (DllHandle,'Gefprog21.DLL');
             if not Ausb then
             begin
               @GefProgramm21 := GetProcAddress (DllHandle, 'GefProgramm21');  //Talbot
               GefProgramm21;
             end;
             FreeLibrary (DllHandle);
           end;
      39 : begin
             DllHandle := LoadLibrary ('Gefprog26.DLL');
             Findedll (DllHandle,'Gefprog26.DLL');
             if not Ausb then
             begin
               @GefProgramm26 := GetProcAddress (DllHandle, 'GefProgramm26');
               GefProgramm26;
             end;
             FreeLibrary (DllHandle);
           end;
       40 : begin              {Ende}
              Form2.Close;
              Form1.Close;
           end;
   end;
end;

end.
