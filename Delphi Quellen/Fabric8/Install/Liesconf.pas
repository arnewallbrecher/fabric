Unit Liesconf;

interface

uses Dialogs, Basic, Globvar, Standard, Messages, SysUtils,
     Texte, Graphics ;

procedure Liesconfig;

implementation

procedure  Liesconfig;
var
  Datei        : textfile;
  Ctext        : string;
  Xconf        : string[20];
  Code         : integer;
  FarbeS       : string;
  LinienTypS   : string;
  KonfidenzS   : string[3];
  StufeS       : string[3];
  Co           : integer;
  LaengeS      : string[6];
  SigmaS       : string[6];
  KanteS       : string[6];
  WinkelS      : string[6];
begin
  assignFile(Datei,DirectS+'\'+'Gefuege7.ini');
  try
    reset (Datei);
  except
    on EInOutError do
    begin
      Beep;
      ShowMessage (Tx(1));  { Datei Gefuege7.ini nicht gefunden}
    end;
  end;
  readln (Datei,Ctext); Xconf := Nachkomma(Ctext);   {1}
  Texttest (Ctext,1);
  readln (Datei,Ctext);                              {2}
  Texttest (Ctext,2); {Grafik}
  readln (Datei,Ctext);FarbeS := Nachkomma(Ctext);   {3}
  Texttest (Ctext,3);
  ClFarben (FarbeS, HintFarbe);
  readln (Datei,Ctext);FarbeS := Nachkomma(Ctext);   {4}
  Texttest (Ctext,4);
  ClFarben (FarbeS, RahmenFarbe);
  readln (Datei,Ctext);FarbeS := Nachkomma(Ctext);   {5}
  Texttest (Ctext,5);
  ClFarben (FarbeS, UmfangFarbe);
  readln (Datei,Ctext);FarbeS := Nachkomma(Ctext);   {6}
  Texttest (Ctext,6);
  ClFarben (FarbeS, DiagrFarbe);
  readln (Datei,Ctext);FarbeS := Nachkomma(Ctext);   {7}
  Texttest (Ctext,7);
  ClFarben (FarbeS, DatenFarbe);
  readln (Datei, Ctext);FarbeS := Nachkomma(Ctext);   {8}
  Texttest (Ctext, 8);
  ClFarben (FarbeS, GrosskreisFarbe);
  readln (Datei,Ctext);DatenSymbol := Nachkomma (Ctext); {9}
  Texttest (Ctext,9);
  readln (Datei, Ctext);LinientypS := Nachkomma (Ctext); {10}
  Texttest (Ctext, 10);
  PsLinien (LinienTypS, LinienTyp);
  readln (Datei, Ctext);FarbeS := Nachkomma (Ctext);     {11}
  Texttest (Ctext, 11);
  ClFarben (FarbeS, RoseFarbe);
  readln (Datei,Ctext);Laufw2S := Nachkomma (Ctext);     {12}
  Texttest (Ctext,12);
  readln (Datei,Ctext); Xconf := Nachkomma(Ctext); {Suchpfad} {13}
  Texttest (Ctext,13);
  readln (Datei, PfadS);                                 {14}
  Kompress (PfadS);
  if (RightS (PfadS, 1) <> ':') and (RightS(PfadS, 1) <> '\')
     then PfadS := PfadS + '\';
  readln (Datei,GrafikS);                                {15}
  Kompress (GrafikS);
  if (RightS (GrafikS, 1) <> ':') and (RightS (GrafikS, 1) <> '\')
  then GrafikS := GrafikS + '\';
  readln (Datei,Ctext);Xconf := Nachkomma(Ctext); SchnittS := Xconf; {16}
  Texttest (Ctext,16);
  val (RightS(SchnittS,1),Kom,Code);
  readln (Datei,Ctext);Xconf := Nachkomma(Ctext); PasswortS := Xconf; {17}
  Texttest (Ctext,17);
  readln (Datei,Ctext);Xconf := Nachkomma(Ctext); SpracheS := XConf;  {18}
  Texttest (Ctext,18);
  readln (Datei,Ctext);
  Texttest (Ctext, 19); {Statistics}
  readln (Datei,Ctext);Xconf := Nachkomma(Ctext); KonfidenzS := XConf;
  Texttest (Ctext, 20);
  val (KonfidenzS, Konfidenz, Co);
  readln (Datei,Ctext);Xconf := Nachkomma(Ctext); FarbeS := XConf;
  Texttest (Ctext, 21);
  ClFarben (FarbeS, EigenFarbe);
  readln (Datei,Ctext);Xconf := Nachkomma(Ctext); FarbeS := XConf;
  Texttest (Ctext, 22);
  ClFarben (FarbeS, OeffnungFarbe);
  readln (Datei,Ctext);Xconf := Nachkomma(Ctext); FarbeS := XConf;
  Texttest (Ctext, 23);
  ClFarben (FarbeS, VertrauFarbe);
  readln (Datei,Ctext);Xconf := Nachkomma(Ctext); ProjektionS := XConf;
  Texttest (Ctext, 24);
  readln (Datei,Ctext);Xconf := Nachkomma(Ctext); FarbeS := XConf;
  Texttest (Ctext, 25);
  ClFarben (FarbeS, NetzFarbe);
  readln (Datei,Ctext);Xconf := Nachkomma(Ctext); FarbeS := XConf;
  Texttest (Ctext, 26);
  ClFarben (FarbeS, AequatorFarbe);
  readln (Datei,Ctext);Xconf := Nachkomma(Ctext); FarbeS := XConf;
  Texttest (Ctext, 27);
  ClFarben (FarbeS, RGFarbe);
  readln (Datei,Ctext);Xconf := Nachkomma(Ctext); FarbeS := XConf;
  Texttest (Ctext, 28);
  ClFarben (FarbeS, KoordinFarbe);
  readln (Datei,Ctext);Xconf := Nachkomma(Ctext); FarbeS := XConf;
  Texttest (Ctext, 29);
  ClFarben (FarbeS, Isolinie[1]);
  readln (Datei,Ctext);Xconf := Nachkomma(Ctext); FarbeS := XConf;
  Texttest (Ctext, 30);
  ClFarben (FarbeS, Isolinie[2]);
  readln (Datei,Ctext);Xconf := Nachkomma(Ctext); FarbeS := XConf;
  Texttest (Ctext, 31);
  ClFarben (FarbeS, Isolinie[3]);
  readln (Datei,Ctext);Xconf := Nachkomma(Ctext); FarbeS := XConf;
  Texttest (Ctext, 32);
  ClFarben (FarbeS, Isolinie[4]);
  readln (Datei,Ctext);Xconf := Nachkomma(Ctext); FarbeS := XConf;
  Texttest (Ctext, 33);
  ClFarben (FarbeS, Isolinie[5]);
  readln (Datei,Ctext);Xconf := Nachkomma(Ctext); FarbeS := XConf;
  Texttest (Ctext, 34);
  ClFarben (FarbeS, ObSlipLine);
  readln (Datei,Ctext);Xconf := Nachkomma(Ctext); FarbeS := XConf;
  Texttest (Ctext, 35);
  ClFarben (FarbeS, UnSlipLine);
  readln (Datei,Ctext);Xconf := Nachkomma(Ctext); FarbeS := XConf;
  Texttest (Ctext, 36);
  ClFarben (FarbeS, PfeilFarbe);
  readln (Datei,Ctext);Xconf := Nachkomma(Ctext); FarbeS := XConf;
  Texttest (Ctext, 37);
  ClFarben (FarbeS, TheorFarbe);
  readln (Datei,Ctext);Xconf := Nachkomma(Ctext); LinientypS := XConf;
  Texttest (Ctext, 38);
  PsLinien (LinienTypS, IsoTyp[1]);
  readln (Datei,Ctext);Xconf := Nachkomma(Ctext); LinientypS := XConf;
  Texttest (Ctext, 39);
  PsLinien (LinienTypS, IsoTyp[2]);
  readln (Datei,Ctext);Xconf := Nachkomma(Ctext); LinientypS := XConf;
  Texttest (Ctext, 40);
  PsLinien (LinienTypS, IsoTyp[3]);
  readln (Datei,Ctext);Xconf := Nachkomma(Ctext); LinientypS := XConf;
  Texttest (Ctext, 41);
  PsLinien (LinienTypS, IsoTyp[4]);
  readln (Datei,Ctext);Xconf := Nachkomma(Ctext); LinientypS := XConf;
  Texttest (Ctext, 42);
  PsLinien (LinienTypS, IsoTyp[5]);
  readln (Datei,Ctext);Xconf := Nachkomma(Ctext); VielfacheS := XConf;
  Texttest (Ctext, 43);
  readln (Datei,Ctext);Xconf := Nachkomma(Ctext); StufeS := XConf;
  Texttest (Ctext, 44);
  IsoStufe[1] := StrtoInt(StufeS);
  readln (Datei,Ctext);Xconf := Nachkomma(Ctext); StufeS := XConf;
  Texttest (Ctext, 45);
  IsoStufe[2] := StrtoInt(StufeS);
  readln (Datei,Ctext);Xconf := Nachkomma(Ctext); StufeS := XConf;
  Texttest (Ctext, 46);
  IsoStufe[3] := StrtoInt(StufeS);
  readln (Datei,Ctext);Xconf := Nachkomma(Ctext); StufeS := XConf;
  Texttest (Ctext, 47);
  IsoStufe[4] := StrtoInt(StufeS);
  readln (Datei,Ctext);Xconf := Nachkomma(Ctext); StufeS := XConf;
  Texttest (Ctext, 48);
  IsoStufe[5] := StrtoInt(StufeS);
  readln (Datei,Ctext);Xconf := Nachkomma(Ctext); StufeS := XConf;
  Texttest (Ctext, 49);
  Kalotte := StrtoInt(StufeS);
  readln (Datei,Ctext);Xconf := Nachkomma(Ctext); StufeS := XConf;
  Texttest (Ctext, 50);
  val (StufeS, Vielfach, Co);
  readln (Datei,Ctext);Xconf := Nachkomma(Ctext); FarbeS := XConf;
  Texttest (Ctext, 51);
  ClFarben (FarbeS, OberOeffnungFarbe);
  readln (Datei,Ctext);Xconf := Nachkomma(Ctext); FarbeS := XConf;
  Texttest (Ctext, 52);
  ClFarben (FarbeS, OberVertrauFarbe);
  readln (Datei,Ctext);Xconf := Nachkomma(Ctext); GeraetS := XConf;
  Texttest (Ctext, 53);
  readln (Datei,Ctext);Xconf := Nachkomma(Ctext); GroesseS := XConf;
  Texttest (Ctext, 54);
  readln (Datei,Ctext);Xconf := Nachkomma(Ctext); FormatS  := XConf;
  Texttest (Ctext, 55);
  readln (Datei,Ctext);Xconf := Nachkomma(Ctext); FarbeS := XConf;
  Texttest (Ctext, 56);
  ClFarben (FarbeS, PeriFarbe);
  readln (Datei,Ctext);Xconf := Nachkomma(Ctext); LaengeS := XConf;
  Texttest (Ctext, 57);
  val(LaengeS, HpRadius, Co);
  HpRadius := HpRadius/10;
  readln (Datei,Ctext);Xconf := Nachkomma(Ctext); LaengeS := XConf;
  Texttest (Ctext, 58);
  val(LaengeS, XKoord, Co);
  XKoord := XKoord/10;
  readln (Datei,Ctext);Xconf := Nachkomma(Ctext); LaengeS := XConf;
  Texttest (Ctext, 59);
  val(LaengeS, YKoord, Co);
  YKoord := YKoord/10;
  readln (Datei,Ctext);Xconf := Nachkomma(Ctext); DarstellungS := XConf;
  Texttest (Ctext, 60);
  readln (Datei,Ctext);Xconf := Nachkomma(Ctext); LaengeS := XConf;
  Texttest (Ctext, 61);
  val(LaengeS, Intervall, Co);
  readln (Datei,Ctext);Xconf := Nachkomma(Ctext); LaengeS := XConf;
  Texttest (Ctext, 62);
  val(LaengeS, Inkrement, Co);
  readln (Datei,Ctext);Xconf := Nachkomma(Ctext); SigmaS := XConf;
  Texttest (Ctext, 63);
  val(SigmaS, ASigma1, Co);
  readln (Datei,Ctext);Xconf := Nachkomma(Ctext); SigmaS := XConf;
  Texttest (Ctext, 64);
  val(SigmaS, FSigma1, Co);
  readln (Datei,Ctext);Xconf := Nachkomma(Ctext); SigmaS := XConf;
  Texttest (Ctext, 65);
  val(SigmaS, ASigma3, Co);
  readln (Datei,Ctext);Xconf := Nachkomma(Ctext); SigmaS := XConf;
  Texttest (Ctext, 66);
  val(SigmaS, FSigma3, Co);
  readln (Datei,Ctext);Xconf := Nachkomma(Ctext); KanteS := XConf;
  Texttest (Ctext, 67);
  val(KanteS, Kante, Co);
  Kante := Kante/10;
  readln (Datei,Ctext);Xconf := Nachkomma(Ctext); KanteS := XConf;
  Texttest (Ctext, 68);
  val(KanteS, XAnfang, Co);
  XAnfang := XAnfang/10;
  readln (Datei,Ctext);Xconf := Nachkomma(Ctext); KanteS := XConf;
  Texttest (Ctext, 69);
  val(KanteS, YAnfang, Co);
  YAnfang := YAnfang/10;
  readln (Datei,Ctext);Xconf := Nachkomma(Ctext); WinkelS := XConf;
  Texttest (Ctext, 70);
  val(WinkelS,Abstand, Co);
  readln (Datei,Ctext);Xconf := Nachkomma(Ctext); WinkelS := XConf;
  Texttest (Ctext, 71);
  val(WinkelS,NetzInkrement, Co);
  readln (Datei,Ctext);Xconf := Nachkomma(Ctext); WinkelS := XConf;
  Texttest (Ctext, 72);
  val(WinkelS,Kippwinkel, Co);
  readln (Datei,Ctext);Xconf := Nachkomma(Ctext); FarbeS := XConf;
  Texttest (Ctext, 73);
  ClFarben (FarbeS, GrundFarbe);
  readln (Datei,Ctext);Xconf := Nachkomma(Ctext); LaengeS := XConf;
  Texttest (Ctext, 74);
  val(LaengeS, DruckenR, Co);
  DruckenR := DruckenR/10;
  readln (Datei,Ctext);Xconf := Nachkomma(Ctext); LaengeS := XConf;
  Texttest (Ctext, 75);
  val(LaengeS, DruckenX, Co);
  DruckenX := DruckenX/10;
  readln (Datei,Ctext);Xconf := Nachkomma(Ctext); LaengeS := XConf;
  Texttest (Ctext, 76);
  val(LaengeS, DruckenY, Co);
  DruckenY := DruckenY/10;
  readln (Datei,Ctext);Xconf := Nachkomma(Ctext); FarbeS := XConf;
  Texttest (Ctext, 77);
  ClFarben (FarbeS, ObjektFarbe);
  readln (Datei,Ctext);Xconf := Nachkomma(Ctext); FarbeS := XConf;
  Texttest (Ctext, 78);
  ClFarben (FarbeS, ScherFarbe);
  readln (Datei,Ctext);Xconf := Nachkomma(Ctext); FarbeS := XConf;
  TextTest (Ctext, 79);
  ClFarben (FarbeS, KompressionFarbe);
  readln (Datei,Ctext);Xconf := Nachkomma(Ctext); FarbeS := XConf;
  TextTest (Ctext, 80);
  ClFarben (FarbeS, DehnungFarbe);
  readln (Datei,Ctext);Xconf := Nachkomma(Ctext); SymbolKompression := XConf;
  TextTest (Ctext, 81);
  readln (Datei,Ctext);Xconf := Nachkomma(Ctext); SymbolDehnung := XConf;
  TextTest (Ctext, 82);
  readln (Datei,Ctext);Xconf := Nachkomma(Ctext); FarbeS := Xconf;
  TextTest (Ctext, 83);
  ClFarben (FarbeS, FarbePoly);
  readln (Datei, Ctext); Xconf := Nachkomma(Ctext);
  TextTest (Ctext, 84);
  MaxDaten := StrtoInt (Xconf);
  readln (Datei, CText); Xconf := Nachkomma(Ctext);
  TextTest (CText, 85);
  val (Xconf, Faktor, Co);
  closeFile (Datei);
  Konfig;
end;
end.