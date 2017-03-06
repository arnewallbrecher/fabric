Unit Isolinie1;
{$N-,F+}

interface
uses Globvar, Iso, Graphics, Dialogs, SysUtils, Comctrls;

procedure Isol (Canvas: TCanvas; Kal: real; var LaMax, LbMax: word;
                var WMax: real; var Pis: array of real;
                StrichI :array of byte;
                Fortschritt: TProgressBar; ZPunkte: byte);

implementation

procedure Isol (Canvas: TCanvas; Kal: real; var LaMax, LbMax: word;
                var WMax: real; var Pis: array of real;
                StrichI: array of byte;
                Fortschritt: TProgressBar; ZPunkte: byte);

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
  Zl,Zi       : array[0..50] of real;
  Farb        : TColor;
  LinieStil   : TPenStyle;
  Muster      : TBrushStyle;
  P,Pp        : real;
  Punkte      : byte;
  IsoZahl     : byte;
begin
  setlength (Wwzeiger, 122);
  for i:= 0 to 121 do setlength(Wwzeiger[i], 32);
  setlength (CountZeiger, ZahlGlob+1);
  setlength (Ba1zeiger, 3000);
  setlength (Ba2zeiger, 3000);
  setlength (Be1zeiger, 3000);
  setlength (Be2zeiger, 3000);
  IsoZahl := 0;
  if VielfacheS = 'MULTIPLES' then
  begin
    if ZahlGlob < 100 then Kal := 100 / ZahlGlob else Kal := 1;
  end;
  if VielfacheS = 'MANUAL' then Kal := Kalotte/10;
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
    for i := 1 to 5 do Pis[i-1] := exp(((ln(Wmax-0.2*Wmax))/4)*(i-1));
  If VielfacheS = 'MANUAL' then
    for i := 1 to 5 do Pis[i-1] := Round(IsoStufe[i]/10);
  Punkte := ZPunkte;
  for i := 0 to 4 do
  begin
    if i = 4 then ZPunkte := 5;
    Farb      := IsoLinie[i+1];
    Canvas.Pen.Width := StrichI[i+1];
    LinieStil := IsoTyp[i+1];
    Muster    := IsoMuster[i+1];
    P  := Pis[i];
    Pp := 0;
    if i > 0 then Pp := Pis[i-1];
    if Pis[i] > Pp then
    begin
      with Canvas do Plisli(P*ZahlGlob/100, Zi, Zl, Ba1zeiger,
                            Ba2zeiger, Be1zeiger, Be2zeiger,
                            Canvas, Farb, LinieStil, Muster, WwZeiger,
                            IsoZahl);
    end;
    ZPunkte := Punkte;
  end;
  Countzeiger := NIL;
  for i:=0 to high(Wwzeiger) do
    setlength(Wwzeiger[i],0);
  setlength(wwzeiger,0);
  Ba1zeiger := NIL;
  Ba2zeiger := NIL;
  Be1zeiger := NIL;
  Be2zeiger := NIL;
end;

end.
