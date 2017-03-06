unit Clounit4;

interface
uses Clovar, SysUtils;

procedure Signif (P:real; Num:word; var Merke, Sortier: array of word;
                  var X,Yy,Z: array of real; Numgru:word;
                  var Trennung: boolean);
implementation

uses Basic,Globvar,Texte,Clounit1,Clounit3, Dialogs;

procedure Signif(P:real;Num:word; var Merke, Sortier: array of word;
                 var X,Yy,Z: array of real; Numgru:word;
                 var Trennung: boolean);
const
  Groesse = 50;

type
  Vr  = array[0..Groesse, 0..Groesse] of real;
  Ms  = array[0..Groesse, 0..Groesse] of word;
  Mes = array[0..Groesse] of word;
  Nuz = array[0..Groesse] of word;
  Mas = array[0..Groesse] of boolean;
  TDatTyp = word;

var
  DateiM        : file of TDatTyp;
  Vrzeiger  : ^Vr;
  Mszeiger  : ^Ms;
  Meszeiger : ^Mes;
  Nuzzeiger : ^Nuz;
  Maszeiger : ^Mas;
  Wu        : real;
  Nss,J,Js  : word;
  Mx, i,Iss : word;
  Nus       : word;
  Gvek      : real;
  Jjs, ii   : word;
  Signum    : word;
  Ll,l,k,My : word;
  Mtest,n   : word;
  XS        : string[3];
label
  Sprung15,Sprung4,Sprung5,Sprung20,Sprung6,Sprung7,Sprung9,Sprung8,
  Sprung12,Sprung11,Sprung13;

begin
  Vrzeiger  := NIL;
  Mszeiger  := NIL;
  Meszeiger := NIL;
  Nuzzeiger := NIL;
  Maszeiger := NIL;
  Getmem (Vrzeiger ,sizeof(Vr));
  Getmem (Mszeiger ,sizeof(Ms));
  Getmem (MesZeiger,sizeof(Mes));
  Getmem (NuzZeiger,sizeof(Nuz));
  Getmem (MasZeiger,sizeof(Mas));
  getdir (0, DirectS);
  AssignFile (DateiM,DirectS + '\' + 'MZAEHLER.TMP');
  reset(DateiM);
  Wu  := sqrt(2);
  Ni  := 0;
  try
    for i:= 1 to lz do
    begin
      Maszeiger^[i] := false;
      for j := 1 to lz do
      begin
        if i <> j then
        begin
	  Vrzeiger^[i,j]:=sqrt(sqr(XrMatrix[i] + XrMatrix[j])
                              +sqr(YrMatrix[i] + YrMatrix[j])
                              +sqr(ZrMatrix[i] + ZrMatrix[j]));
	  if Vrzeiger^[i,j] < Wu then
             Vrzeiger^[i,j] := sqrt(4-sqr(Vrzeiger^[i,j]));
        end
        else Vrzeiger^[i,j] := -1;
      end;                                                 {next j}
    end;                                                   {next i}
    Iss := 0;
    repeat
      Nus := 0;
      Sprung15:
      J := 1;
  Sprung4:
      if not Maszeiger^[j] then goto Sprung5;
      j := j + 1;
      if j <= Lz then goto Sprung4;
      goto Sprung20;        {signifikante Trennung}
  Sprung5:
      Nss := j;
  Sprung6:
      j := 1;
  Sprung7:
      Gvek := (cos((ThMatrix[nss] + ThMatrix[j])/2))*2;
      if Vrzeiger^[nss,j] >= Gvek then goto Sprung9;
  Sprung8:
      j := j + 1;
      if j <= Lz then goto Sprung7;
      goto Sprung12;
  Sprung9:
      if Nus = 0 then goto Sprung11;
      for i := 1 to Nus do
      begin
        if Meszeiger^[i] = j then goto Sprung8;
      end;
  Sprung11:
      Nus := Nus + 1;
      Meszeiger^[nus] := j;
      goto Sprung8;
  Sprung12:
      Maszeiger^[nss] := true;
      if Nus = 0 then goto Sprung15;
      for i := 1 to Nus do
      begin
        Jjs := Meszeiger^[i];
        if Maszeiger^[jjs] then goto Sprung13;
        Nss := Jjs;
        goto Sprung6;
  Sprung13:
      end;
      for i := 1 to Nus do Sortier[i] := MesZeiger^[i];
      Isort (Nus,Sortier);
      for i := 1 to Nus do Meszeiger^[i] := Sortier[i];
      iss := iss + 1;
      for i := 1 to Nus do Mszeiger^[iss,i] := Meszeiger^[i];
      Nuzzeiger^[iss] := Nus;
    until Lz = 10000;
  Sprung20:
    if iss = 0 then Trennung := true           {Trennung signifikant}
    else
    begin
      Trennung := false;
      Signum := 0;
      for ii := 1 to Iss do
      begin
        Ll := Nuzzeiger^[ii];
        nsGruppenS := '';
        for l := 1 to Ll do
        begin
          str (Mszeiger^[ii,l]:2,XS); {Nummern der nicht signifikanten Gruppen}
          nsGruppenS := nsGruppenS + XS+',';
          Signum := Signum + GrunumMatrix[(Mszeiger^[ii,l])];
        end;
        nsGruppenS := LeftS(nsGruppenS,length(nsGruppenS)-1);
        Mx := 0;
        nGruppe := 0;
        for k := 1 to Ll do
        begin
          for i := 1 to Num do
          begin
            My := Mszeiger^[ii,k];
            seek(DateiM,(My-1)*Num+i);
            read(DateiM,Mtest);
	    if Mtest >= 1 then
            begin
	      mx := mx + 1;
	      Merke[mx] := MTest;
	    end;
	  end;
        end;
        Pool := Pool + 1;
        Param (P,Signum,Num,Merke,X,Yy,Z);
        Pool := 0;
      end;
    end;
  finally
    freemem (Vrzeiger);
    freemem (Mszeiger);
    freemem (Meszeiger);
    freemem (Nuzzeiger);
    freemem (Maszeiger);
    CloseFile (DateiM);
  end;
end;
end.