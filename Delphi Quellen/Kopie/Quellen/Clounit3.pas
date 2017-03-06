Unit Clounit3;

interface
uses SysUtils, Dialogs;

procedure Param (P:real; Numgru,Num:word; Merke: array of word;
                 X,Yy,z: array of real);

implementation

uses Basic,Globvar,Clovar,Texte,Clounit1,Kalkulat, Graphics;

procedure Param (P:real; Numgru,Num:word; Merke: array of word;
                 X,Yy,Z: array of real);

var
  Aq       : array[0..6] of word;
  Fq       : array[0..6] of shortint;
  V,Vx     : array[0..3] of real;
  Bo       : real;
  Sumx     : real;
  Sumy     : real;
  Sumz     : real;
  i,j,n    : word;
  Rr,Xs    : real;
  Regel    : byte;
  Ys,Zs    : real;
  Mrho     : word;
  Mphi     : word;
  Nn       : word;
  Concen   : real;
  Acone    : real;
  Cone     : real;
  Aper     : real;
  Sv       : real;
  Good2    : byte;
  Gk       : byte;
  R,T,O    : integer;
  Coap     : real;
  Basis, k : real;
  Exponent :real;
  RegelS   : string[10];
  GruppeS  : String[10];
  MengeS   : string[10];
  KParamS  : string[10];
  KegelS   : string[10];
  AperturS : string[10];
  ZylinS   : string[10];
  AzimutS  : string[3];
  FallenS  : string[3];
  ZirkOeff : byte;
  ZirkOeffS: string[3];
label
  Exparam;
begin
  Bo := Pi / 180;
  Sumx := 0;
  Sumy := 0;
  Sumz := 0;
  for i := 1 to 3 do for j := 1 TO 3 do Q[i,j] := 0;
  Lz := Lz + 1;
  for i := 1 to Numgru do
  begin
    n := Merke[i];
    if X[n] + Yy[n] + Z[n] < 1.01 then
    begin
      Summe (i, X[n], Yy[n], Z[n], Sumx, Sumy, Sumz);
    end;
  end;
  Rr := sqrt(sqr(Sumx) + sqr(Sumy) + sqr(Sumz));
  Regel := round((2 * Rr - Numgru) * 100 / Numgru);
  if Regel < 0 then Regel := 0;
  if Rr = 0 then Rr := 0.0001;
  Xs := Sumx / Rr;
  Ys := Sumy / Rr;
  Zs := Sumz / Rr;
  Mrho := Flazi (Xs, Ys, Zs);
  Mphi := Flpol (Xs, Ys, Zs);
  if Gefuegetyp =2 then
  begin
    Mrho := (Mrho + 180) mod 360;
    Mphi := 90 - Mphi;
  end;
  Vx[1] := Xs;
  Vx[2] := Ys;
  Vx[3] := Zs;
  Nn := Numgru;
  if Nn <> Rr then Concen := (Numgru - 1) / (Numgru - Rr);
  Acone := (Numgru - Rr) / Rr;
  Basis := 1/P;
  Exponent := 1/(Numgru-1);
  Acone := 1 - Acone * (Hoch(Basis,Exponent) - 1);
  if Acone > 1 then Acone := 1;
  if Acone < -1 then Acone := -1;
  if Acone = 0 then Acone :=0.0001;
  Cone := arctan(sqrt(1-sqr(Acone))/Acone)/Bo;
  Aper := 1-1/Numgru;
  Aper := sqrt(2*Aper/Concen);
  if Aper >= 1 then goto Exparam;
  Aper := arctan(Aper/sqrt(1-sqr(Aper)))/Bo;
  Eigenwerte (Aq, Fq, V, Numgru, Sv, Good2, Zirkoeff, Gk);
  if (Good2 < 50) and (Cone > Aper) and (Pool = 0) then
  begin
    lz := lz - 1;
    goto Exparam;
  end;
  if (Good2 < 50) and (Concen < 4) and (Pool = 0) then
  begin
    lz := lz - 1;
    goto Exparam;
  end;
  if Pool = 0 then
  begin
    Anzahl := Anzahl + Numgru;
    if lz > 0 then
    begin
      if Gefuegetyp =2 then
      begin
        Mrho := (Mrho + 180) mod 360;
        Mphi := 90 - Mphi;
      end;
      RegelS   := IntToStr(round(Regel));
      GruppeS  := IntToStr(lz);
      GruppeS  := RightS('  '+GruppeS,2);
      MengeS   := IntToStr(Numgru);
      MengeS   := RightS('    '+MengeS,3);
      RegelS   := IntToStr(Regel);
      RegelS   := RightS('   '+RegelS,2);
      KParamS  := IntToStr(round(Concen));
      KParamS  := RightS('    '+KParamS,4);
      KegelS   := IntToStr(round(Cone));
      KegelS   := RightS('  '+KegelS,2);
      AperturS := IntToStr(round(Aper));
      AperturS := RightS('   '+AperturS,2);
      ZirkOeffS:= IntToStr(ZirkOeff);
      ZirkOeffS:= RightS('   '+ZirkOeffS,2);
      ZylinS   := IntToStr(Good2);
      ZylinS   := RightS('   '+ZylinS,2);
      AzimutS  := IntToStr(Mrho);
      AzimutS  := RightS('   '+AzimutS,3);
      FallenS  := IntToStr(Mphi);
      FallenS  := RightS('  '+FallenS,2);
      ZeileS[lz] := GruppeS+' '+MengeS+' '+RegelS+KParamS +' '+KegelS
                    +'°'+AperturS+'°'+ZirkOeffS+'°'
                    +' '+ZylinS+'%'+' '+AzimutS+'/'+FallenS;
      OFarbeMatrix[lz] := OeffnungFarbe;
      TFarbeMatrix[lz] := VertrauFarbe;
    end;
  end
  else    {Pool <> 0}
  begin
    if Gefuegetyp =2 then
    begin
      Mrho := (Mrho + 180) mod 360;
      Mphi := 90 - Mphi;
    end;
    nGruppe  := ngruppe + 1;
    RegelS   := IntToStr(round(Regel));
    GruppeS  := IntToStr(nGruppe);
    GruppeS  := RightS('  '+GruppeS,3);
    MengeS   := IntToStr(Numgru);
    MengeS   := RightS('    '+MengeS,4);
    RegelS   := IntToStr(Regel);
    RegelS   := RightS('   '+RegelS,3);
    str (Concen:7:1, KParamS);
    KParamS  := RightS('       '+KParamS,7);
    KegelS   := IntToStr(round(Cone));
    KegelS   := RightS('   '+KegelS,3);
    AperturS := IntToStr(round(Aper));
    AperturS := RightS('   '+AperturS,3);
    ZirkOeffS:= IntToStr(ZirkOeff);
    ZirkOeffS:= RightS('   '+ZirkOeffS,3);
    ZylinS   := IntToStr(Good2);
    ZylinS   := RightS('   '+ZylinS,3);
    AzimutS  := IntToStr(Mrho);
    AzimutS  := RightS('   '+AzimutS,3);
    FallenS  := IntToStr(Mphi);
    nZeileS[nGruppe] := GruppeS+'  '+MengeS+'  '+RegelS+' '+KParamS+'  '+
                        KegelS +'°'+' '+AperturS+'°'+'  '+ZirkOeffS+'°'
                        +' '+ZylinS+'%'+'  '+AzimutS+'/'+FallenS;
//    OFarbeMatrix[nGruppe] := OberVertrauFarbe;
//    TFarbeMatrix[nGruppe] := OberOeffnungFarbe;
  end;
  if Gefuegetyp =2 then
  begin
    Mrho := (Mrho + 180) mod 360;
    Mphi := 90 - Mphi;
  end;
  GrunumMatrix[lz] := NumGru;
  XrMatrix[lz]     := Xs;
  YrMatrix[lz]     := Ys;
  ZrMatrix[lz]     := Zs;
  Coap := 0.1;
  if Good2 <= 50 then Coap := Cone + Aper;
  ThMatrix[lz] := Coap*Bo;
  ZylinMatrix[lz]    := Good2;
  Aqbild1Matrix[lz]  := Aq[1];
  Aqbild2Matrix[lz]  := Aq[2];
  Aqbild3Matrix[lz]  := Aq[3];
  Fqbild1Matrix[lz]  := Fq[1];
  Fqbild2Matrix[lz]  := Fq[2];
  Fqbild3Matrix[lz]  := Fq[3];
  AlMatrix[lz]       := Mrho;
  FlMatrix[lz]       := Mphi;
  OmegaMatrix[lz]    := Aper * Bo;
  ThetaMatrix[lz]    := Cone * Bo;
  ZirkoeffMatrix[lz] := ZirkOeff;
  Grupmax := lz;
Exparam:
  if lz = 0 then
  begin
    if Cone > Aper then Ts[1] := Tx(722);{Vertrauenskegel > sph. Öffnungsgrad}
    if (Concen < 4) and (Good2 < 50) then Ts[1] :=Tx(723);      {Konz.Par.< 4}
  end
  else Ts[1] := '';
end;
end.