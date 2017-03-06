Unit Clounit5;

interface
uses Graphics, HpPlot, Dialogs;

procedure Pplot (Canvas: TCanvas; Hp: boolean; A, F: word);

implementation

uses Globvar, Clovar, Plotten, Basic, Texte;

procedure Pplot (Canvas: TCanvas; Hp: boolean; A, F: word);
var
  X, Y : real;
begin
  if Gefuegetyp = 2 then
  begin
    A := (A + 180) mod 360;
    F := 90 - F;
  end;
  if not Hp then PlotAF(Canvas, A, F)
  else
  begin
    Hpkoordin (A*Bo, F*Bo,X,Y);
    Hppunkt (Canvas, X,Y,'+');
  end;
end;
end.