Unit Einausga;

Interface
uses Globvar, Dialogs, Basic, Texte, Standard, SysUtils,
     Dateien, Controls, FileCtrl, OleServer;

procedure Utisch (var A:word;var F:shortint);
procedure Diskette (DiscS:string);
procedure Datnam(var NameS:string;DatS:string);
procedure Speichern (DateiS:string;N:word;Azimut,
                     Fallen: array of word);
procedure KarteSpeichern (DateiS:string);
procedure Speichern2 (DateiS:string;N:word; Azimut, Fallen: array of word);
procedure Speichern3 (DateiS:string;N:word;Azimut:array of word);
procedure Speichern4 (DateiS:string;N:word;Azimut, Wert: array of word);
procedure SpeichernS (DateiS:string;SpZeile: array of string;
                      n: word);
procedure SpeichernT (DateiS:string;N:word; Azimut,
                      Fallen: array of word;
                      Talbot: array of boolean);
procedure Laufwerk (DatS, EingabeS: string; var DiscS:string);
procedure Stressein(DateiS:string;N:word; HAzimut, SAzimut,
                    HFallen: array of word; SFallen: array of shortint);
procedure Schreib2 (DateiS:string; N:word; Na, Ra, Nf, Rf: array of word);
procedure Schreib3 (DateiS:string; N:word; Na, Nf, Ra: array of word);
procedure Ausgabe6 (var R, Rn, G1, G2: real; var Rpp: byte; var Vmm: word);
procedure Tschreiben (DateiS:string); {T0: array of word);
                     T1,T2,T3,T4,T5,T6,T7,T8,T9: array of real);}
procedure Erweiterung (var ExtensionS: string);
procedure RfDatSpeichern (DateiS:string; N:word;
                       Rf: array of real; RPhi: array of integer);
procedure SchreibKreis (DateiS: string;N: word;Azimut, Fallen: array of word;
                        Kreis: array of word);

Implementation

procedure Utisch (var A:word;var F:shortint);
var
  Azimut:integer;
  Zl    : byte;
begin
  Azimut := A;
  Zl := 0;
  if UTischS = 'Zeiss' then Zl := 90;
  if Gefuegetyp = 3 then
  begin
    Azimut := 360 - Azimut;
    if F <=  0 then Azimut := Azimut + 90;
    if F > 0 then Azimut := Azimut - 90;
  end
  else
  begin
    Azimut := 360 - Azimut;
    if F < 0 then Azimut := Azimut - 180;
  end;
  F := abs(F);
  Azimut := Azimut - Zl;
  if Azimut < 0 then Azimut := 360 + Azimut;
  if Azimut > 360 then Azimut := Azimut - 360;
  A := Azimut;
end;

procedure Diskette (DiscS:string);

var
  DiskFehler : byte;
  Floppy     : Text;
  mrOk       : word;
  Typ        : TMsgDlgType;
begin
  mrOk    := 0;
  KomS[1] := ' ';
  KomS[2] := Tx(119);                        {Daten-Diskette}
  KomS[3] := Tx(120)+ DiscS + Tx(121);       {in Laufwerk x: einlegen}
  KomS[4] := ' ';
  ReihenB := 4;
  Kasten;
  ShowMessage (ZeilenS);
  assign (Floppy,DiscS+'\xTestx');
  try
    repeat
{$I-}
      rewrite (Floppy);
{$I+}
      DiskFehler := ioresult;
      if DiskFehler <> 0 then
      begin
        if DiskFehler = 19 then
        begin
          KomS[1] := Tx(122);     {Diskette ist schreibgeschÅtzt}
          KomS[2] := Tx(123);     {Schreibschutz entfernen}
          KomS[3] := Tx(124);     {oder eine andere Diskette einlegen}
          ReihenB := 3;
          Kasten;
        end;
       Abbrechen := false;
        if DiskFehler = 21 then
        begin
          KomS[1] := Tx(125);    {Keine Diskette im Laufwerk}
          KomS[2] := Tx(126);    {Diskette defekt}
          KomS[3] := Tx(127);    {oder Laufwerk nicht verriegelt}
          KomS[4] := Tx(128);    {Fehler beheben, dann eine Taste drÅcken}
          ReihenB := 4;
          Kasten;
        end;
        Typ := mtConfirmation;
        if DlgMessage (Typ, Tx(1226), ZeilenS,4) = mrOk then break
        else
        begin
          Abbrechen  := true;
          DiskFehler := 0;
        end;
      end;
    until DiskFehler = 0;
  finally
    if not Abbrechen then
    begin
      CloseFile (Floppy);
      erase (Floppy);
    end;
  end;
end;

procedure Datnam(var NameS:string;DatS:string);
var
  Z   : byte;
  Typ : TMsgDlgType;
begin
  Z   := 0;
  Typ := mtError;
  if DemoB then NameS := 'DEMO'
  else
  begin
    try
      NameS := InputBox(Tx(129),Tx(130) + ' '+DatS + Tx(131), ' '); {Namen eingeben}
      NameS := UcaseS(NameS);
      if NameS <> '' then Z := ord(NameS[1]);
    except
      if (Z < 64) or (Z > 91) then
        if DlgMessage(Typ,Tx(37),Tx(424),3) = 4 then exit;
    end;
  end;
  NameS := NameS +'.'+DatS;
  Kompress(NameS);
  NameS := UcaseS(NameS);
end;

procedure Speichern (DateiS:string; N:word; Azimut,
                     Fallen: array of word);
var
  i          :integer;
  Datei      :text;
begin
  assign(Datei,DateiS);
  rewrite(Datei);
  writeln(Datei, DateiS);
  if n >= 1 then
    for i := 1 tO n do Writeln(Datei, Azimut[i], ',', Fallen[i]);
  Beep;
  CloseFile (Datei);
end;

procedure KarteSpeichern (DateiS:string);
var
  i          :integer;
  Datei      :text;
  BreiteS    : string;
  LaengeS    : string;
  AziS, FalS : string[3];
  LFS        : string[1];
  TextS      : string;
begin
  assign(Datei,DateiS);
  rewrite(Datei);
  writeln(Datei,DateiS);
  if (KoordinatenS = 'DMM') or (KoordinatenS = 'DMS') then
    Texts := NordSuedS + OstWestS;
  if KoordinatenS = 'Gauss' then TextS := 'Gauss-Krueger';
  if KoordinatenS = 'UTM' then TextS := 'UTM'+UTMZoneS;
  writeln(Datei,TextS);
  if ZahlGlob >= 1 then
  begin
    for i := 1 tO ZahlGlob do
    begin
      if LpFeld[i] then LFS := 'L' else LFS := 'P';
      BreiteS := FloatToStr(BreiteFeld[i]);
      if length(BreiteS) < 7 then BreiteS := '0'+BreiteS;
      LaengeS := FloatToStr(LaengeFeld[i]);
      if length(LaengeS) < 7 then LaengeS := '0'+LaengeS;
      AziS    := IntToStr(AziFeld[i]);
      FalS    := IntToStr(FalFeld[i]);
      TextS   := BreiteS+','+LaengeS+','+LFS+','+AziS+','+FalS;
      Writeln(Datei,TextS);
    end;
  end;  
  Beep;
  CloseFile (Datei);
end;

procedure Speichern2 (DateiS:string; N: word; Azimut, Fallen: array of word);
var
  i  :integer;
  Datei:text;
begin
  assign(Datei,DateiS);
  rewrite(Datei);
  writeln(Datei, DateiS);
  if n >= 1 then
    for i := 1 tO n do Writeln(Datei, Azimut[i], ',', Fallen[i]);
  Beep;
  CloseFile (Datei);
end;

procedure Speichern3 (DateiS:string;N:word;Azimut:array of word);
var
  i  :integer;
  Datei:text;
begin
  assign(Datei,DateiS);
  rewrite(Datei);
  writeln(Datei, DateiS);
  if n >= 1 then
    for i := 1 to n do Writeln(Datei,Azimut[i],',',0);
  Beep;
  closeFile (Datei);
end;

procedure Speichern4 (DateiS:string;N:word; Azimut, Wert: array of word);
var
  i  :integer;
  Datei:text;
begin
  assign(Datei,DateiS);
  rewrite(Datei);
  writeln(Datei, DateiS);
  if n >= 1 then
    for i := 1 to n do Writeln(Datei,Azimut[i],',',Wert[i]);
  Beep;
  closeFile (Datei);
end;

procedure SpeichernS (DateiS:string; SpZeile: array of string;
                      n: word);
var
  i     : word;
  Datei : Text;
begin
  assign (Datei, DateiS);
  rewrite (Datei);
  writeln (Datei, DateiS);
  for i := 1 to n do writeln (Datei,SpZeile[i]);
  Beep;
  CloseFile (Datei);
end;

procedure SpeichernT (DateiS:string;N:word; Azimut,
                      Fallen: array of word;
                      Talbot: array of boolean);
var
  i          :integer;
  Datei      :text;
  TBit       : byte;
begin
  assign(Datei,DateiS);
  rewrite(Datei);
  writeln(Datei, DateiS);
  if n >= 1 then
    for i := 1 tO n do
    begin
      if Talbot[i] then Tbit := 1 else Tbit := 0;
      Writeln(Datei, Azimut[i], ',', Fallen[i],',', TBit);
    end;
  Beep;
  CloseFile (Datei);
end;

procedure Stressein(DateiS:string;N:word; HAzimut, SAzimut,
                    HFallen: array of word; SFallen: array of shortint);
var
  i     : integer;
  Datei : TextFile;
begin
  assign(Datei,DateiS);
  rewrite(Datei);
  writeln(Datei, DateiS);
  if n >= 1 then
    for i := 1 tO n do Writeln(Datei, HAzimut[i],',',HFallen[i],',',
                               SAzimut[i],',',SFallen[i]);
  Beep;
  CloseFile (Datei);
end;

procedure Schreib2 (DateiS:string; N:word; Na, Ra, Nf, Rf: array of word);
var
  Datei   : Text;
  i       : word;
begin
  Assign (Datei,DateiS);
  rewrite (Datei);
  writeln (Datei, DateiS);
  if N >= 1 then
    For i := 1 to N do writeln (Datei,Na[i], ',', Nf[i], ',',
                                      Ra[i], ',', Rf[i]);
  Beep;
  CloseFile (Datei);
end;

procedure Schreib3 (DateiS:string; N:word; Na, Nf, Ra: array of word);
var
  Datei : Text;
  i     : word;
begin
  Assign(Datei, DateiS);
  rewrite (Datei);
  writeln(Datei, DateiS);
  if N >=1 then
    for i := 1 to N do writeln(Datei,Na[i],',',Nf[i],',',Ra[i]);
  Beep;
  CloseFile (Datei);
end;

procedure Laufwerk (DatS, EingabeS: string; var DiscS:string);

begin
  if EingabeS = 'DisketteA'  then DiscS := 'A:';
  if EingabeS = 'DisketteB'  then DiscS := Laufw2S;
  if EingabeS = 'Festplatte' then DiscS := PfadS;
  if (EingabeS = 'DisketteA') or (EingabeS = 'DisketteB') then
      Diskette (DiscS);
end;

procedure Ausgabe6 (var R, Rn, G1, G2: real; var Rpp: byte; var Vmm: word);
var
  Sx,Sy,Xs,Ys  : real;
  Summe        : real;
  i            : word;
  Faktor       : word;
  A,X,Y,Xx,Yy  : real;
  W,Xq,Yq,V,M2 : real;
  R2,Rp,Vm     : real;

begin
  Bo := Pi / 180;
  Sx := 0;
  Sy := 0;
  Xs := 0;
  Ys := 0;
  Summe := 0;
  if DemoB then RichtungenS := Tx(425);                  {Richtungen}
  if ZahlGlob = 0 then exit;
  for i := 1 to ZahlGlob do
  begin
    if RichtungenS = 'Richtungen' then Faktor := 1
    else Faktor := FalFeld[i];
    A  := AziFeld[i] * Bo;
    X  := Faktor  * cos(A);
    Y  := Faktor  * sin(A);
    Xx := cos(2*A);
    Yy := sin(2*A);
    if (RichtungenS = 'Richtungen') and (i <> 1) then
    begin
      W  := sqrt(Sx*Sx + Sy*Sy);
      Xq := Sx / W;
      Yq := Sy / W;
      V  := sqrt(sqr(Xq + X / Faktor) + sqr(Yq + Y / Faktor));
      if V <= 1.4142 then
      begin
        X  := - X * Faktor;
        Y  := - Y * Faktor;
        Xx := - Xx;
        Yy := - Yy;
      end;
    end;
    Sx := Sx + X;
    Sy := Sy + Y;
    Xs := Xs + Xx;
    Ys := Ys + Yy;
    Summe := Summe + Faktor;
  end;
  R  := sqrt(Sx*Sx + Sy*Sy);
  R2 := sqrt(Xs*Xs + Ys*Ys);
  Rn := R / Summe;
  R2 := R2 / Summe;
  if RichtungenS = 'Richtungen' then Rp:=100*(Pi*Rn/2-1)/(Pi/2-1)
  else Rp:=100*Rn;
  if Sx <> 0 then Vm := arctan(Sy / Sx) else Vm := Pi / 2;
  if Xs <> 0 then M2 := arctan(Ys / Xs) else M2 := Pi / 2;
  if Vm < 0 then Vm  := Vm + Pi;
  if Vm > Pi then Vm := Vm - Pi;
  if Rn = 1 then Rn := 0.999;
  if Rn <= 1 then G1 := R2 * sin(M2 - 2 * Vm) / sqrt(sqr(1 - Rn)*(1-Rn));
  if M2 < 0 then M2 := M2 + Pi;
  if Ys < 0 then M2 := M2 + Pi;
  if Sy < 0 then Vm := Vm + Pi;
  if M2 > 2 * Pi then M2 := M2 - 2 * Pi;
  if Rn <= 1 then G2 := (R2 * cos(M2 - 2 * Vm)- sqr(sqr(Rn)))/sqr(1-Rn);
  Vmm := round(Vm / Bo);
  Rpp := round(Rp);
  if (DemoB) and (EingabeS = 'manuell') then
  begin
    G1 := 0;
    G2 := 0;
  end;
end;

procedure Tschreiben (DateiS:string); {T0: array of word;
                      T1
                      );{,T2,T3,T4,T5,T6,T7,T8,T9: array of real);}
var
  Datei   : text;
  i       : word;
begin
  assign (Datei, DateiS);
  rewrite (Datei);
  try
    writeln (Datei, DateiS);
    for i := 1 to Zahlglob do
    begin
      writeln (Datei, T0[i]:4,',',T1Strich[i]:4:2,',',
               T2Strich[i]:4:2,',',T3Strich[i]:4:2,',',
               T4Strich[i]:4:2,',',T5Strich[i]:4:2,',',
               T6Strich[i]:4:2,',',T7Strich[i]:4:2,',',
               T8Strich[i]:4:2,',',T9Strich[i]:4:2);
    end;
    Beep;
  finally
    CloseFile (Datei);
  end;
end;

procedure Erweiterung (var ExtensionS: string);
begin
  case Gefuegetyp of
    1: ExtensionS := 'LIN';
    2: ExtensionS := 'PLA';
    3: ExtensionS := 'LIN';
    4: ExtensionS := 'PLA';
  end;
  if Programm = 1 then
  begin
    case Berechnung of
      1: ExtensionS := 'PL2';
      2: ExtensionS := 'PL2';
      3: ExtensionS := 'LI2';
      4: ExtensionS := 'LI2';
      5: ExtensionS := 'LI2';
      6: ExtensionS := 'PLI';
      7: ExtensionS := 'PCH';
    end;
  end;
  if (Programm = 6) or (Programm = 7) then
  begin
    if RichtungenS = 'Richtungen' then
    begin
      if BereichS = '1..180∞' then ExtensionS := 'STR';
      if BereichS = '1..360∞' then ExtensionS := 'Azi';
    end;
    if RichtungenS = 'Betraege' then
    begin
      if BereichS = '1..180∞' then ExtensionS := 'LST';
      if BereichS = '1..360∞' then ExtensionS := 'LAZ';
    end;
  end;
  if Programm = 10 then ExtensionS := 'RGD';
  if Programm = 21 then
  begin
    case Gefuegetyp of
      1: ExtensionS := 'TLI';
      2: ExtensionS := 'TPL';
    end;
  end;
end;

procedure RfDatSpeichern (DateiS:string; N:word; Rf: array of real;
                          RPhi: array of integer);
var
  i          :integer;
  Datei      :text;
begin
  assign(Datei,DateiS);
  rewrite(Datei);
  writeln(Datei, DateiS);
  if n >= 1 then
    for i := 1 tO n do Writeln(Datei, Rf[i], ',', RPhi[i]);
  CloseFile (Datei);
end;

procedure SchreibKreis (DateiS: string;N: word;Azimut, Fallen: array of word;
                        Kreis: array of word);
var
  Datei : Text;
  i     : word;
begin
  Assign(Datei, DateiS);
  rewrite (Datei);
  writeln(Datei, DateiS);
  if N >=1 then
    for i := 1 to N do writeln(Datei,Azimut[i],',',Fallen[i],',',Kreis[i]);
  Beep;
  CloseFile (Datei);
end;

end.

