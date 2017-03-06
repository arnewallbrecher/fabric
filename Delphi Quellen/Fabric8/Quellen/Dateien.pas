Unit Dateien;

Interface
uses Windows, Globvar, Texte, Dialogs, SysUtils, Basic,
     Standard, Classes, Kalkulat;

procedure Liesharn (j: word; DatS, DiscS: string; var Zahl:word;
                    var Na, Nf, Ra: array of word; var Rf: array of shortint);
procedure Liesber (j: word; DatS, DiscS:string; var Zahl:word;
                   var Na,Ra, Nf, Rf: array of Word);
procedure LiesPitch (J: word; DatS, DiscS:string;
                     var Zahl:word;
                     var Na, Nf, Ra: array of word);
procedure LiesDaten (j: word; DatS, DiscS: string;
                     var Zahl:word;
                     var Na, Nf: array of word);
procedure LiesPunkte (j: word; DatS, DiscS: string; var Zahl:word;
                    var Xschn, Yschn: array of word);
procedure LiesBrunton (j: word; DatS, DiscS: string; var Zahl:word;
                    var Na, Nf: array of word;
                    var NS: array of shortstring);
procedure LiesFlinn (j: word; DatS, DiscS: string;
                     var Zahl: word;
                     var DLang, DMittel, DKurz: array of word);
procedure LiesKarte (j:word; DatS, DiscS:string;
                     var Zahl:word; var KoorS: string);
procedure LiesDatenT (j: word; DatS, DiscS: string;
                      var Zahl:word;
                      var Na, Nf: array of word;
                      Vorzeichen: byte);
procedure Falsch(A,N:word;F:integer;DateiS:string);
procedure Wlies (DiscS:string; var DaS:string; var N:word;
                 var L1, L2, L3: array of word; var Zahl:array of word);
procedure Datsuch (var Dzahl:word;DiscS,ExtensionS:string;
                   var DaNameS: array of string;
                   var ListBoxLoeschen: Boolean);
procedure Testpfad (DiscS:string);
procedure Tallies (DiscS:string; var DaS:string; var N:word;
                   var T0: array of word;
                   var T1, T2, T3, T4, T5, T6, T7, T8, T9: array of real);
procedure LiesKreis (j: word;DatS,DiscS: string; var Zahl: word;
                     var Na, Nf, Kreis: array of word);

implementation

procedure Liesharn (j: word; DatS, DiscS: string; var Zahl:word;
                    var Na, Nf, Ra: array of word; var Rf: array of shortint);

var
  Datei           : Text;
  FS, TextS       : string;
  Co              : integer;
  Nn, i, Ff, Raa  : word;
  Rff, F          : shortint;
  Prog            : byte;
  Typ             : TMsgDlgType;
begin
  Prog := 11;
  DatS := UcaseS (DatS);
  FS := DiscS + UcaseS(DatS);
  Kompress (FS);
  assign (Datei,FS);
  reset (Datei);
  if j = 0 then Zahl := 0;
  i := Zahl;
  readln (Datei, TextS);
  while not eof (Datei) do
  begin
    inc(i);
    readln (Datei,TextS);
    val(LeftS(TextS,pos(',',TextS)-1),Nn,Co);
    delete(TextS,1,pos(',',TextS));
    val(LeftS(TextS,pos(',',TextS)-1),Ff,Co);
    delete(TextS,1,pos(',',TextS));
    val(Lefts(TextS,pos(',',TextS)-1),Raa,Co);
    delete(TextS,1,pos(',',TextS));
    val(TextS,Rff,Co);
    F := abs(Rff);
    Falsch (Raa,i,F,FS);
    if Rff < 0 then Rff := -F;
    Falsch (Nn,i,Ff,FS);
    Korrdaten (Prog, Nn,Raa,Ff,Rff);
    Na[i] := NN;
    Nf[i] := Ff;
    Ra[i] := Raa;
    Rf[i] := Rff;
  end;
  Zahl := i;
  Kompress (TextS);
  Typ := mtError;
  if (TextS = '') or (Zahl = 0) then
    if DlgMessage (Typ, Tx(37), 'in '+FS+' '+Tx(88),3)=4 then AusB := true;
end;

procedure Liesber (j: word; DatS, DiscS: string; var Zahl:word;
                   var Na,Ra, Nf, Rf: array of word);

var
  Datei      : Text;
  FS, TextS  : string;
  Co         : integer;
  Nn,Raa, i  : word;
  Ff,Rff     : shortint;
  Typ        : TMsgDlgType;

begin
  DatS := UcaseS (DatS);
  FS := DiscS + UcaseS(DatS);
  Kompress (FS);
  assign (Datei,FS);
  reset (Datei);
  Typ := mtError;
  if j = 0 then Zahl := 0;
  i := Zahl;
  readln (Datei, TextS);
  while not eof (Datei) do
  begin
    inc(i);
    if i > MaxDaten then
    begin
      KomS[1] := Tx(977); {Datenmenge größer}
      KomS[2] := Tx(978); {als reservierte Datenmenge}
      KomS[3] := Tx(979); {ändern Sie den Wert in Zeile 84}
      KomS[4] := Tx(980); {Der Datei Fabric.ini}
      ReihenB := 4;
      Kasten;
      if DlgMessage (Typ, Tx(37), ZeilenS,3) = 4 then exit;
    end;
    readln (Datei,TextS);
    val(LeftS(TextS,pos(',',TextS)-1),Nn,Co);
    delete(TextS,1,pos(',',TextS));
    val(LeftS(TextS,pos(',',TextS)-1),Ff,Co);
    delete(TextS,1,pos(',',TextS));
    val(Lefts(TextS,pos(',',TextS)-1),Raa,Co);
    val(RightS(TextS,length(TextS)-pos(',',TextS)),Rff,Co);
    Falsch (Raa,i,Rff,FS);
    Falsch (Nn,i,Ff,FS);
    if Ff > 87 then Ff := 85;
    Na[i] := NN;
    Nf[i] := Ff;
    Ra[i] := Raa;
    Rf[i] := Rff;
  end;
  Zahl := i;
  Kompress (TextS);
  if (TextS = '') or (Zahl = 0) then
    if DlgMessage (Typ, Tx(37), 'in '+FS+' '+Tx(88),3)=4 then AusB := true;
end;

procedure LiesPitch (J: word; DatS, DiscS:string;
                     var Zahl:word;
                     var Na, Nf, Ra: array of word);
var
  Datei      : Text;
  FS, TextS  : string;
  Co         : integer;
  Nn,Raa, i  : word;
  Ff         : shortint;
  Typ        : TMsgDlgType;

begin
  DatS := UcaseS (DatS);
  FS := DiscS + UcaseS(DatS);
  Kompress (FS);
  assign (Datei,FS);
  reset (Datei);
  if j = 0 then Zahl := 0;
  i := Zahl;
  readln (Datei, TextS);
  Typ := mtError;
  while not eof (Datei) do
  begin
    inc(i);
    if i > MaxDaten then
    begin
      KomS[1] := Tx(977); {Datenmenge größer}
      KomS[2] := Tx(978); {als reservierte Datenmenge}
      KomS[3] := Tx(979); {ändern Sie den Wert in Zeile 84}
      KomS[4] := Tx(980); {Der Datei Fabric.ini}
      ReihenB := 4;
      Kasten;
      if DlgMessage (Typ, Tx(37), ZeilenS,3) = 4 then exit;
    end;
    readln (Datei,TextS);
    val(LeftS(TextS,pos(',',TextS)-1),Nn,Co);
    delete(TextS,1,pos(',',TextS));
    val(LeftS(TextS,pos(',',TextS)-1),Ff,Co);
    delete(TextS,1,pos(',',TextS));
    val(TextS,Raa,Co);
    if Ff > 87 then Ff := 85;
    Na[i] := NN;
    Nf[i] := Ff;
    Ra[i] := Raa;
  end;
  Zahl := i;
  Kompress (TextS);
  if (TextS = '') or (Zahl = 0) then
    if DlgMessage (Typ, Tx(37), 'in '+FS+' '+Tx(88),3)=4 then AusB := true;
end;

procedure LiesDaten (j: word; DatS, DiscS: string; var Zahl:word;
                    var Na, Nf: array of word);
var
  Datei      : Text;
  FS, TextS  : string;
  Co         : integer;
  Nn, i      : word;
  Ff         : word;
  Typ        : TMsgDlgType;
begin
  DatS := UcaseS (DatS);
  FS := DiscS + UcaseS(DatS);
  Kompress (FS);
  assign (Datei,FS);
  reset (Datei);
  if j = 0 then Zahl := 0;
  i := Zahl;
  readln (Datei, TextS);
  Typ := mtError;
  while not eof (Datei) do
  begin
    inc(i);
    if i >= MaxDaten then
    begin
      KomS[1] := Tx(977); {Datenmenge größer}
      KomS[2] := Tx(978); {als reservierte Datenmenge}
      KomS[3] := Tx(979); {ändern Sie den Wert in Zeile 84}
      KomS[4] := Tx(980); {Der Datei Gefuege7.ini}
      ReihenB := 4;
      Kasten;
      Typ := mtError;
      if DlgMessage (Typ, Tx(37), ZeilenS,3) = 4 then exit;
    end;
    readln (Datei,TextS);
    val(LeftS(TextS,pos(',',TextS)-1),Nn,Co);
    delete(TextS,1,pos(',',TextS));
    val(TextS,Ff,Co);
    Falsch (Nn,i,Ff,FS);
    if Ff = 90 then Ff := 89;
    if Ff =  0 then Ff := 1;
    if NN =  0 then NN := 1;
    Na[i] := NN;
    Nf[i] := Ff;
  end;
  Zahl := i;
  if Zahl = 0 then
    if DlgMessage (Typ, Tx(37), 'in '+FS+' '+Tx(223),3) = 4 then AusB := true;
end;

procedure LiesPunkte (j: word; DatS, DiscS: string; var Zahl:word;
                    var Xschn, Yschn: array of word);
var
  Datei      : Text;
  FS, TextS  : string;
  Co         : integer;
  Xx, i      : word;
  Yy         : word;
  Typ        : TMsgDlgType;
begin
  DatS := UcaseS (DatS);
  FS := DiscS + UcaseS(DatS);
  Kompress (FS);
  assign (Datei,FS);
  reset (Datei);
  if j = 0 then Zahl := 0;
  i := Zahl;
  readln (Datei, TextS);
  Typ := mtError;
  while not eof (Datei) do
  begin
    inc(i);
    if i >= MaxDaten then
    begin
      KomS[1] := Tx(977); {Datenmenge größer}
      KomS[2] := Tx(978); {als reservierte Datenmenge}
      KomS[3] := Tx(979); {ändern Sie den Wert in Zeile 84}
      KomS[4] := Tx(980); {Der Datei Gefuege7.ini}
      ReihenB := 4;
      Kasten;
      Typ := mtError;
      if DlgMessage (Typ, Tx(37), ZeilenS,3) = 4 then exit;
    end;
    readln (Datei,TextS);
    val(LeftS(TextS,pos(',',TextS)-1),Xx,Co);
    delete(TextS,1,pos(',',TextS));
    val(TextS,Yy,Co);
    Xschn[i] := Xx;
    Yschn[i] := Yy;
  end;
  Zahl := i;
  if Zahl = 0 then
    if DlgMessage (Typ, Tx(37), 'in '+FS+' '+Tx(223),3) = 4 then AusB := true;
end;

procedure LiesBrunton (j: word; DatS, DiscS: string; var Zahl:word;
                    var Na, Nf: array of word;
                    var NS: array of shortstring);
var
  Datei      : Text;
  FS, TextS  : string;
  Co         : integer;
  Nn, i      : word;
  Ff         : word;
  Typ        : TMsgDlgType;
begin
  DatS := UcaseS (DatS);
  FS := DiscS + UcaseS(DatS);
  Kompress (FS);
  assign (Datei,FS);
  reset (Datei);
  if j = 0 then Zahl := 0;
  i := Zahl;
  readln (Datei, TextS);
  Typ := mtError;
  while not eof (Datei) do
  begin
    inc(i);
    if i >= MaxDaten then
    begin
      KomS[1] := Tx(977); {Datenmenge größer}
      KomS[2] := Tx(978); {als reservierte Datenmenge}
      KomS[3] := Tx(979); {ändern Sie den Wert in Zeile 84}
      KomS[4] := Tx(980); {Der Datei Gefuege7.ini}
      ReihenB := 4;
      Kasten;
      Typ := mtError;
      if DlgMessage (Typ, Tx(37), ZeilenS,3) = 4 then exit;
    end;
    readln (Datei,TextS);
    val(LeftS(TextS,pos(',',TextS)-1),Nn,Co);
    delete(TextS,1,pos(',',TextS));
    val(TextS,Ff,Co);
    Falsch (Nn,i,Ff,FS);
    if Ff = 90 then Ff := 89;
    if Ff =  0 then Ff := 1;
    if NN =  0 then NN := 1;
    Na[i] := NN;
    Nf[i] := Ff;
    delete(TextS,1,pos(',',TextS));
    NS[i] := TextS;
  end;
  Zahl := i;
  if Zahl = 0 then
    if DlgMessage (Typ, Tx(37), 'in '+FS+' '+Tx(223),3) = 4 then AusB := true;
end;

procedure LiesFlinn (j: word; DatS, DiscS: string;
                     var Zahl: word;
                     var DLang, DMittel, DKurz: array of word);
var
  Datei      : Text;
  FS, TextS  : string;
  Co         : integer;
  i          : word;
  La, Mi, Ku : word;
  Typ        : TMsgDlgType;
begin
  DatS := UcaseS (DatS);
  FS := DiscS + UcaseS(DatS);
  Kompress (FS);
  assign (Datei,FS);
  reset (Datei);
  if j = 0 then Zahl := 0;
  i := Zahl;
  readln (Datei, TextS);
  Typ := mtError;
  while not eof (Datei) do
  begin
    inc(i);
    if i >= MaxDaten then
    begin
      KomS[1] := Tx(977); {Datenmenge größer}
      KomS[2] := Tx(978); {als reservierte Datenmenge}
      KomS[3] := Tx(979); {ändern Sie den Wert in Zeile 84}
      KomS[4] := Tx(980); {Der Datei Gefuege7.ini}
      ReihenB := 4;
      Kasten;
      if DlgMessage (Typ, Tx(37), ZeilenS,3) = 4 then exit;
    end;
    readln (Datei,TextS);
    val(LeftS(TextS,pos(',',TextS)-1),La,Co);
    delete(TextS,1,pos(',',TextS));
    val(LeftS(TextS,pos(',',TextS)-1),Mi,Co);
    delete(TextS,1,pos(',',TextS));
    val(TextS,Ku,Co);
    DLang[i]   := La;
    DMittel[i] := Mi;
    DKurz[i]   := Ku;
  end;
  Zahl := i;
  if Zahl = 0 then
    if DlgMessage (Typ, Tx(37), 'in '+FS+' '+Tx(223),3) = 4 then AusB := true;
end;

procedure LiesKarte (j : word; DatS, DiscS:string;
                     var Zahl:word; var KoorS: string);
var
  Datei      : Text;
  FS, TextS  : string;
  i          : word;
  Typ        : TMsgDlgType;
  BreiteS    : string;
  LaengeS    : string;
  LFS        : string;
  AziS, FalS : string;
begin
  DecimalSeparator := '.';
  DatS := UcaseS (DatS);
  FS := DiscS + UcaseS(DatS);
  Kompress (FS);
  assign (Datei,FS);
  reset (Datei);
  if j = 0 then Zahl := 0;
  i := Zahl;
  Readln(Datei,TextS);
  Readln(Datei,KoorS);
  if (KoorS='NE')or(KoorS='NW')or(KoorS='SE')
    or(KoorS='SW') then
  begin
    NordSuedS := copy(KoorS,1,1);
    OstWestS  := copy(KoorS,2,1);
  end;
  Typ := mtError;
  while not eof (Datei) do
  begin
    inc(i);
    if i > MaxDaten then
    begin
      KomS[1] := Tx(977); {Datenmenge größer}
      KomS[2] := Tx(978); {als reservierte Datenmenge}
      KomS[3] := Tx(979); {ändern Sie den Wert in Zeile 84}
      KomS[4] := Tx(980); {Der Datei Gefuege7.ini}
      ReihenB := 4;
      Kasten;
      if DlgMessage (Typ, Tx(37), ZeilenS,3) = 4 then exit;
    end;
    readln (Datei,TextS);
    BreiteS := copy(TextS,1,pos(',',TextS)-1);
    delete (TextS,1,pos(',',TextS));
    LaengeS := copy(TextS,1,pos(',',TextS)-1);
    delete (TextS,1,pos(',',TextS));
    LFS := copy(TextS,1,pos(',',TextS)-1);
    delete (TextS,1,pos(',',TextS));
    AziS := copy(TextS,1,pos(',',TextS)-1);
    delete (TextS,1,pos(',',TextS));
    FalS := TextS;
    BreiteFeld[i] := StrToFloat(BreiteS);
    LaengeFeld[i] := StrToFloat(LaengeS);
    AziFeld[i]    := StrToInt(AziS);
    FalFeld[i]    := StrToInt(FalS);
    If LFS = 'L' then LpFeld[i] := true else LpFeld[i] := false;
  end;
  Zahl := i;
  if Zahl = 0 then
    if DlgMessage (Typ, Tx(37), 'in '+FS+' '+Tx(223),3) = 4 then AusB := true;
end;

procedure LiesDatenT (j: word; DatS, DiscS: string;
                     var Zahl:word;
                     var Na, Nf: array of word;
                     Vorzeichen: byte);

var
  Datei      : Text;
  FS, TextS  : string;
  Co         : integer;
  Nn, i      : word;
  Ff         : word;
  Typ        : TMsgDlgType;
begin
  DatS := UcaseS (DatS);
  FS := DiscS + UcaseS(DatS);
  Kompress (FS);
  assign (Datei,FS);
  reset (Datei);
  if j = 0 then Zahl := 0;
  i := Zahl;
  readln (Datei, TextS);
  while not eof (Datei) do
  begin
    inc(i);
    readln (Datei,TextS);
    val(LeftS(TextS,pos(',',TextS)-1),Nn,Co);
    delete(TextS,1,pos(',',TextS));
    val(TextS,Ff,Co);
    Falsch (Nn,i,Ff,FS);
    if Ff = 90 then Ff := 89;
    Na[i] := NN;
    Nf[i] := Ff;
    if RightS(TextS,1) = '1' then Talbot[i] := true
    else Talbot[i] := false;;
  end;
  Zahl := i;
  Typ := mtError;
  if Zahl = 0 then
    if DlgMessage (Typ, Tx(37), 'in '+FS+' '+Tx(223),3) = 4 then AusB := true;
end;

procedure Wlies (DiscS:string; var DaS:string; var N:word;
                 var L1, L2, L3: array of word; var Zahl:array of word);

var
  FS    : string;
  Datei : Text;
  TextS : string[80];
  LaS   : string[8];
  Co    : integer;
  La    : word;
  Komma : byte;
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
      LaS := LeftS(TextS,Komma-1);
      val (LaS, La, Co);
      Lambda1[n] := La;
      Delete(TextS,1,Komma);
      Komma := Pos(',',TextS);
      LaS   := LeftS(TextS,Komma-1);
      val (LaS, La, Co);
      Lambda2[n] := La;
      Delete(TextS,1,Komma);
      LaS := TextS;
      val (LaS, La, Co);
      Lambda3[n] := La;
      Komma := Pos(',',TextS);
      Delete(TextS,1,Komma);
      Zahl[n] := StrToInt(TextS);
    end;
  finally
    CloseFile (Datei);
  end;
end;

procedure Falsch(A,N:word;F:integer;DateiS:string);
var
  Fa      : integer;
  Nstring : string[6];
  Astring : string[3];
  Fstring : string[5];
  Fehler  : boolean;
  ExtensS : string[3];
  Typ     : TMsgDlgType;
begin
  Fehler  := false;
  ExtensS := UcaseS(RightS(DateiS,3));
  if (ExtensS = 'LST') or (ExtensS = 'LAZ') then Fa := 9999
  else Fa := 90;
  if (A > 360) or (A < 0) or ( F > Fa) then Fehler := true;
  if (ExtensS <> 'SLI') and (F < 0)     then Fehler := true;
  if (ExtensS = 'SLI') and (F < -Fa)    then Fehler := true;
  if Fehler = true then
  begin
    str(N,Nstring);
    str(A,Astring);
    str(F,Fstring);
    KomS[1] := Tx(224)+Nstring +'.) '+Astring+'/'+Fstring+' ';{Falscher Wert}
    KomS[2] := ' ';
    KomS[3] := Tx(225);               {Korrigieren Sie diesen Wert in der}
    KomS[4] := Tx(226)+DateiS+Tx(415);  {Datei.....mit einem Texteditor}
    KomS[5] := ' ';
    ReihenB := 5;
    Kasten;
    Typ := mtError;
    if DlgMessage (Typ, Tx(37), ZeilenS,3) = 4 then halt;
  end;
end;

procedure Datsuch (var Dzahl:word;DiscS,ExtensionS:string;
                   var DaNameS: array of string;
                   var ListBoxLoeschen: Boolean);
var
  i             : word;
  DirRecord     : TSearchRec;
  DName, Fehler : integer;
  Typ           : TMsgDlgType;
begin
  DName  := 0;
  Fehler := findfirst (DiscS+'*.'+ ExtensionS, faAnyFile,
            DirRecord);
  Typ := mtError;
  if Fehler <> 0 then
  begin
    if DlgMessage (Typ, Tx(37), Tx(140),3) = 4 then ListBoxLoeschen := true;
  end
  else
  begin
    i := 0;
    while Dname <> 18 do
    begin
      inc(i);
      DaNameS[i] := DirRecord.Name;
      DName      := findnext (DirRecord);
    end;
    Dzahl := i;
    findclose (DirRecord);
  end;
end;

procedure Testpfad (DiscS:string);
var
  Floppy : TextFile;
  Typ    : TMsgDlgType;
begin
  if (DiscS <> 'A:') and (DiscS <> PfadS) then
  begin
    assign (Floppy, DiscS+'\xTextx');
{$I-}
    rewrite (Floppy);
{$I+}
    if ioresult <> 0 then
    begin
      KomS[1] := Tx(132);     {Dieser Suchweg existiert nicht}
      KomS[2] := Tx(133);     {Kontrollieren Sie in Config6.gef}
      KomS[3] := Tx(134);     {den Pfad fr das Daten-Directory}
      ReihenB := 3;
      Kasten;
      Typ := mtError;
      if DlgMessage (Typ, Tx(37), ZeilenS,3) = 4 then halt;
    end;
    CloseFile (Floppy);
    Erase (Floppy);
  end;
end;

procedure Tallies (DiscS:string; var DaS:string; var N:word;
                   var T0: array of word;
                   var T1, T2, T3, T4, T5, T6, T7, T8, T9: array of real);

var
  FS      : string;
  Datei   : text;
  S       : word;
  Tstrich : real;
  Co      : integer;
  TextS   : string[80];

begin
  FS := DiscS +UcaseS (DaS);
  assign (Datei, FS);
  reset (Datei);
  readln (Datei,TextS);
  try
    while not eof (Datei) do
    begin
      inc (N);
      readln (Datei, TextS);
      val(LeftS(TextS,pos(',',TextS)-1),S, Co);
      delete(TextS,1,pos(',',TextS));
      T0[n] := S;
      val(LeftS(TextS,pos(',',TextS)-1),Tstrich,Co);
      delete(TextS,1,pos(',',TextS));
      T1[n] := TStrich;
      val(LeftS(TextS,pos(',',TextS)-1),Tstrich,Co);
      delete(TextS,1,pos(',',TextS));
      T2[n] := TStrich;
      val(LeftS(TextS,pos(',',TextS)-1),Tstrich,Co);
      delete(TextS,1,pos(',',TextS));
      T3[n] := TStrich;
      val(LeftS(TextS,pos(',',TextS)-1),TStrich,Co);
      delete(TextS,1,pos(',',TextS));
      T4[n] := TStrich;
      val(LeftS(TextS,pos(',',TextS)-1),TStrich,Co);
      delete(TextS,1,pos(',',TextS));
      T5[n] := TStrich;
      val(LeftS(TextS,pos(',',TextS)-1),TStrich,Co);
      delete(TextS,1,pos(',',TextS));
      T6[n] := TStrich;
      val(LeftS(TextS,pos(',',TextS)-1),TStrich,Co);
      delete(TextS,1,pos(',',TextS));
      T7[n] := TStrich;
      val(LeftS(TextS,pos(',',TextS)-1),TStrich,Co);
      delete(TextS,1,pos(',',TextS));
      T8[n] := TStrich;
      val(TextS,TStrich,Co);
      T9[n] := TStrich;
    end;
  finally
    CloseFile(Datei);
  end;
end;

procedure LiesKreis (j: word;DatS,DiscS: string; var Zahl: word;
                     var Na, Nf, Kreis: array of word);
var
  Datei      : Text;
  FS, TextS  : string;
  Co         : integer;
  Nn, i      : word;
  Ff, Kr     : word;
  Typ        : TMsgDlgType;
begin
  DatS := UcaseS (DatS);
  FS := DiscS + UcaseS(DatS);
  Kompress (FS);
  assign (Datei,FS);
  reset (Datei);
  if j = 0 then Zahl := 0;
  i := Zahl;
  readln (Datei, TextS);
  Typ := mtError;
  while not eof (Datei) do
  begin
    inc(i);
    if i > MaxDaten then
    begin
      KomS[1] := Tx(977); {Datenmenge größer}
      KomS[2] := Tx(978); {als reservierte Datenmenge}
      KomS[3] := Tx(979); {ändern Sie den Wert in Zeile 84}
      KomS[4] := Tx(980); {Der Datei Gefuege7.ini}
      ReihenB := 4;
      Kasten;
      if DlgMessage (Typ, Tx(37), ZeilenS,3) = 4 then exit;
    end;
    readln (Datei,TextS);
    val(LeftS(TextS,pos(',',TextS)-1),Nn,Co);
    delete(TextS,1,pos(',',TextS));
    val(LeftS(TextS,pos(',',TextS)-1),Ff,Co);
    delete(TextS,1,pos(',',TextS));
    val(TextS,Kr,Co);
    Na[i] := Nn;
    Nf[i] := Ff;
    Kreis[i] := Kr;
  end;
  Zahl := i;
  if Zahl = 0 then
    if DlgMessage (Typ, Tx(37), 'in '+FS+' '+Tx(223),3) = 4 then AusB := true;
end;

end.