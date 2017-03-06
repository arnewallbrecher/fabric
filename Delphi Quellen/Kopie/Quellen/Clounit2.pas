Unit Clounit2;

interface
uses SysUtils, Comctrls;

procedure Vecsum (Num:word; X,Yy,Z: array of real);
procedure Cluster(P:real; Num:word; var Merke:array of word;
                   Sortier: array of word; X,Yy,Z: array of real;
                   var Numgru:word; var Zirkoeff, Gruppen:byte;
                   Fortschritt: TProgressBar);

implementation

uses Globvar,Basic,Texte, CloVar, CloUnit1, CloUnit3, Dialogs;

procedure Vecsum (Num:word; X,Yy,Z: array of real);
type
  TDatTyp = word;
var
  Wu,R    : real;
  n,m     : word;
  Datein  : word;
  l       : longint;
  DateiV  : file of TDatTyp;
begin
  GetDir (0, DirectS);
  AssignFile (DateiV,DirectS + '\' + 'VEKTOR.TMP');
  rewrite(DateiV);
  Wu := sqrt(2);
  l := 0;
  try
    for n := 1 to Num do
    begin
      for m := 1 to Num do
      begin
        l := l +1;
        if m <> n then
        begin
          R := sqrt(sqr(X[n] + X[m]) + sqr(Yy[n] + Yy[m]) + sqr(Z[n] + Z[m]));
          if R < Wu then R := sqrt(4 -R*R);
        end
        else R := 0.0;
        Datein := round(R*1000);
        seek(DateiV,l);
        write(DateiV,Datein);          {Matrix richtig}
      end;
    end;
  finally
    CloseFile(DateiV);
  end;
end;

procedure Cluster(P:real; Num:word; var Merke:array of word;
                   Sortier: array of word; X,Yy,Z: array of real;
                   var Numgru:word; var Zirkoeff, Gruppen: byte;
                   Fortschritt: TProgressBar);
type
  TMark    = array[0..1000] of boolean;
  TRVektor = array[0..1000] of word;
  TDatTyp  = word;
var
  i,l           : longint;
  j             : word;
  Rtest         : longint;
  Markzeiger    : ^TMark;
  Rvektorzeiger : ^TRVektor;
  Null,Rv       : word;
  Nsoll         : longint;
  jjj,m         : longint;
  DateiV        : file of TDatTyp;
  DateiM        : file of TDatTyp;
  DateiF        : file of TDatTyp;
label
  Sprung4,Sprung5,Sprung6,Sprung7,Sprung12,Sprung9,Sprung8,Sprung11,
  Excluster;
begin
  getdir (0, DirectS);
  assignfile (DateiV,DirectS + '\' + 'VEKTOR.TMP');
  assignfile (DateiM,DirectS + '\' + 'MZAEHLER.TMP');
  assignfile (DateiF,DirectS + '\' + 'MFELD.TMP');
  rewrite (DateiM);
  reset (DateiV);
  rewrite (DateiF);
  MarkZeiger    := NIL;
  RVektorZeiger := NIL;
  GetMem (Markzeiger, sizeof(TMark));
  GetMem (Rvektorzeiger, sizeof(TRVektor));
  Fortschritt.Max := Num;
  Bo   := Pi / 180;
  Null := 0;
  try
    l := 0;
    for i := 1 to 50 do
    begin
      for j := 1 to Num do
      begin
        l := l + 1;
        seek(DateiM,l);
        write (DateiM,Null);
      end;
    end;
    Iclus := 0;
    Lz    := 0;
    m     := 0;
    Rtest := round(2000 * cos((Test / 2) * Bo));
    for i := 1 to Num do
    begin
      Markzeiger^[i] := false;;
    end;
    repeat
      Fortschritt.StepIt;
      {Anzahl pro Gruppe auf null, Merke auf null}
      NumGru := 0;
      for i := 1 to Num do
      begin
        Merke[i] := 0;
      end;
      repeat
        j := 1;
   Sprung4:
        if not Markzeiger^[j] then goto Sprung5;
        j := j + 1;

         if j <= Num then goto Sprung4;
        goto Excluster;
   Sprung5:
        Nsoll := j;
   Sprung6:
        for i := 1 to Num  do
        begin
          seek(DateiV,(Nsoll-1)*num  + i);        {nsoll-1}
	  read (DateiV,Rv);
          Rvektorzeiger^[i] := Rv;
        end;
        j := 1;
   Sprung7:
        if Rvektorzeiger^[j] >= Rtest then goto Sprung9;
   Sprung8:
        j := j + 1;
        if j <= Num then goto Sprung7;
        goto Sprung12;
   Sprung9:
        if Numgru = 0 then goto Sprung11;
        for i := 1 to Numgru do if Merke[i] = j then goto Sprung8;
   Sprung11:
        Numgru := Numgru + 1;
        Merke[NumGru] := j;
        goto Sprung8;
   Sprung12:
        Markzeiger^[nsoll] := true;
      until Numgru <> 0;
      for i := 1 to Numgru do
      begin
        jjj := Merke[i];
        if not Markzeiger^[jjj] then
        begin
	  Nsoll := jjj;
	  goto Sprung6;
        end;
      end;
      for i := 1 to Numgru do Sortier[i] := Merke[i];
      Isort (Numgru,Sortier);
      for i := 1 to Numgru do Merke[i] := Sortier[i];
      if Numgru > 4 then
      begin
        iclus := iclus + 1;
        for i := 1 to Numgru do
        begin
          seek(DateiM,(iclus-1)*Num+i);
          write (DateiM,Merke[i]);
        end;
       Param (P, Numgru, Num, Merke, X, Yy, Z);
       for i := 1 to Numgru do
        begin
          if lz > 0 then
          begin
            m := m +1;
            seek(DateiF,m);
            write(DateiF,Merke[i]);
          end;
        end;
      end;
    until Numgru = 10000;
Excluster:
  Gruppen := lz;
  finally
    CloseFile (DateiM);
    CloseFile (DateiF);
    CloseFile (DateiV);
    Freemem (Markzeiger);
    Freemem (Rvektorzeiger);
  end;
end;
end.