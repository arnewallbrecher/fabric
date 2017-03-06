unit Globvar;

interface
uses Graphics, Classes, Forms, Windows;
const
  DemoZeit   = 60;
  ConfigEnde = 156;
  HeiDiag    = 750;
  HeiForm    = 620;
  ImTop      = 0;
  ImLeft     = 100;
  ImWidth    = 660;
  ImHeight   = 650;
  ImYmitte   = 18;
  ImRadius   = 24;
  WidDiag    = 1050;
  WidForm    = 820;
  DFak       = 1.7014;  //Skalierung zum Plotten mit Drucker

  Agitter : array[0..311] of word
  = (0  ,336,342,348,354,  0,  6, 13, 18, 24,328,334,340,346,353,  0,
     7, 14, 21, 27, 32,315,319,325,330,337,344,352,  0,  8, 16,
     23, 30, 36, 41, 45,307,311,315,320,326,334,342,351,  0, 10,
     18, 27, 34, 40, 45, 49,302,306,310,315,321,329,338,349,  0,
     11, 22, 31, 39, 45, 50, 54, 58,294,297,300,304,309,315,323,
     334,346,  0, 14, 27, 37, 45, 51, 56, 60, 63, 66,289,291,293,
     297,301,307,315,327,342,  0, 19, 34, 45, 53, 59, 63, 67, 69,
     72,283,284,286,289,292,297,304,315,334,  0, 27, 45, 56, 63,
     68, 72, 74, 76, 77,276,277,278,280,281,284,289,297,316,  1,
     45, 63, 71, 76, 79, 80, 82, 83, 84,270,270,270,270,270,270,
     270,270,270,271, 45, 89, 90, 90, 90, 90, 90, 90, 90, 90,264,
     263,262,261,259,256,252,244,225,179,134,116,108,104,101, 99,
     98, 97, 96,258,256,254,252,248,243,236,225,206,180,153,135,
     123,116,112,108,106,104,102,252,249,247,243,239,233,225,214,
     198,180,161,146,135,127,121,116,113,110,108,246,243,240,236,
     231,225,217,207,194,180,166,153,143,135,129,124,120,116,114,
     238,234,230,225,219,211,202,191,180,169,158,149,141,135,130,
     125,122,233,229,225,220,214,207,198,189,180,170,161,153,146,
     140,135,131,225,221,216,210,203,196,188,180,172,164,157,150,
     144,139,135,217,212,207,201,194,187,180,173,166,159,153,148,
     143,204,198,192,186,180,174,167,161,156,180);

  Fgitter : array[0..311] of word
  = (0 , 2, 6, 9,10,11,10, 8, 6, 2, 6,11,16,19,20,21,20,19,16,11, 6,
     1, 9,15,20,25,28,30,31,30,28,25,20,15, 8, 1, 0, 9,16,23,29,
     33,37,39,40,39,37,33,29,23,16, 8, 6,15,23,30,36,41,45,48,49,
     48,45,41,36,30,23,15, 6, 2,12,21,29,36,43,49,53,56,57,56,53,
     48,43,36,29,20,11, 2, 6,16,25,33,41,49,55,60,64,65,64,60,55,
     48,41,33,25,16, 6, 9,19,28,37,45,53,60,67,72,74,72,67,60,53,
     45,37,28,19, 8,10,21,30,39,48,56,64,72,79,82,78,72,64,56,48,
     39,30,20,10, 0,11,21,31,40,49,57,66,74,82,90,82,74,65,57,49,
     40,31,21,11,10,21,30,39,48,56,64,72,79,82,79,72,64,56,48,39,
     30,20,10, 9,19,28,37,45,53,61,67,72,74,72,67,60,53,45,37,28,
     19, 9, 6,16,25,33,41,49,55,61,64,66,64,60,55,49,41,33,25,16,
     6, 2,12,21,29,36,43,49,53,56,57,56,53,49,43,36,29,20,11, 2,
     6,15,23,30,36,41,45,48,49,48,45,41,36,30,23,15, 6, 0, 9,16,
     23,29,33,37,39,40,39,37,33,29,23,16, 9, 1, 9,15,21,25,28,30,
     31,30,28,25,21,15, 9, 1, 0, 6,12,16,19,21,21,21,19,16,12, 6,
     0, 2, 6, 9,10,11,10, 9, 6, 2, 0);

type
  TFWord    = array[0..8000] of word;
  TFShort   = array[0..8000] of shortint;
  Tww       = array of array of real;
  TPu       = array of array of TPoint;
  TFByte    = array[0..8000] of byte;
  TFReal    = array[0..8000] of real;
  TFBoolean = array[0..8000] of boolean;
  Tpi       = array[0..4,0..40] of word;
type
  StuetzList = ^SList;
  SList = record
     Xzeiger : integer;
     Yzeiger : integer;
end;     

type TRandS = Record
  ObenS  : string;
  UntenS : string;
  RechtsS: string;
  LinksS : string;
end;

type TRand = Record
  Oben   : integer;
  Unten  : integer;
  Rechts : integer;
  Links  : integer;
end;

var
  Abbrechen         : boolean;
  Abstand           : integer;
  AequatorFarbe     : TColor;
  AJahr             : word;
  AMonat            : byte;
  ASigma1           : word;
  Asigma3           : word;
  ausDatei          : string;
  ATag              : byte;
  Ausb              : boolean;
  AziFeld           : array of word;
  AziFeldAlt        : array of word;
  BaudS             : string;
  B1Fou, B3Fou      : array of real;
  B5Fou             : array of real;
  BBreiteCh         : word;
  BBreiteD          : word;
  BBreiteF          : word;
  BBreiteFou        : word;
  BBreiteHo         : word;
  BBreiteHi         : word;
  BBreiteI          : word;
  BBreiteM          : word;
  BBreiteMa         : word;
  BBreiteMo         : word;
  BBreiteP          : word;
  BBreiteSh         : word;
  BBreiteSt         : word;
  BBreiteT          : word;
  BBreiteFl         : word;
  BBreiteHs         : word;
  BBreiteW          : word;
  Berechnung        : byte;
  BereichS          : string[10];
  BHoeheSt          : word;
  BildNameS         : array of string;
  BLaenge           : word;
  BLinks            : word;
  Bo                : extended;
  BOben             : word;
  Breite            : word;
  BreiteFeld        : array of real;
  Calib             : boolean;
  ChiHintFarbe      : TColor;
  ChiKoorFarbe      : TColor;
  ChiGraphFarbe     : TColor;
  DarstellungS      : string;
  DateiNameS        : array[0..100] of string;
  DateiZahl         : word;
  DatenFarbe        : TColor;
  Datensymbol       : string[15];
  DDruckS           : string;
  DehnungFarbe      : TColor;
  DemoB             : boolean;
  DFarbe            : TColor;
  DGroesse          : word;
  DiagrFarbe        : TColor;
  DirectS           : string;
  Dlg               : TForm;
  Druck             : byte;
  DruckenR          : real;
  DruckenX          : real;
  DruckenY          : real;
  DSchrift          : TFontName;
  DStrich           : byte;
  DStyle            : TFontStyles;
  Dxfp,Dxfpud       : byte;
  EigenFarbe        : TColor;
  EingabeS          : string[30];
  EllipsoidS        : string[8];
  ExtenS            : string;
  FabricS           : string;  
  Faktor            : real;
  FalFeld           : array of word;
  FalFeldAlt        : array of word;
  Farbe             : TColor;
  FarbePoly         : TColor;
  FarbIso           : array[0..5] of byte;
  Fehlt             : boolean;
  FehltIso          : byte;
  FellipseStilS     : string;
  Finde             : integer;
  FlHTransparent    : boolean;
  FlinnDatenS       : string;
  Fluss             : string;
  FourierFarbe      : TColor;
  FryR              : array of real;
  FryX              : array of real;
  FryY              : array of real;
  FryFaktor         : real;
  FryFarbeEllipse   : TColor;
  FryFarbePunkte    : TColor;
  FryFarbeFlaeche   : TColor;
  FryMethodeS       : string;
  FSigma1           : shortint;
  FSigma3           : shortint;
  FuellFarbe        : TColor;
  GAbstand          : integer;
  Gefuegetyp        : byte;
  GeraetS           : string[10];
  Glaettung         : byte;
  GrafikS           : string;
  Grau              : array[0..5] of boolean;
  Grenze            : real;
  GrosskreisFarbe   : TColor;
  GrundFarbe        : TColor;
  HarmFarbe         : TColor;
  HFuellFarbe       : TColor;
  HHintFarbe        : TColor;
  HintFarbe         : TColor;
  HKoordinFarbe     : TColor;
  Hoehe             : word;
  Horizontal        : word;
  HpRadius          : real;
  HRahmenFarbe      : TColor;
  HTransparent      : boolean;
  IniS              : string;
  Inkrement         : byte;
  Intervall         : byte;
  IsogonenZahl      : array of byte;
  IsogonFarbe       : TColor;
  Isolinie          : array [0..5] of TColor;
  IsoList           : TList;
  IsoMuster         : array [0..5] of TBrushStyle;
  Isopoly           : boolean;
  IsoTyp            : array [0..5] of TPenStyle;
  IsoStufe          : array [0..5] of word;
  IterFarbe         : TColor;
  Kalotte           : word;
  Kante             : real;
  KeinPort          : boolean;
  Kippen            : integer;
  KippWinkel        : integer;
  KleinFarbe        : TColor;
  KlickFarbe        : TColor;
  Kom               : byte;
  KompassS          : string;
  KomS              : array[0..20] of string;
  KompressionFarbe  : TColor;
  KonfigZeileS      : array[0..200] of string;
  Konfidenz         : byte;
  KoordinatenS      : string;
  KoordinFarbe      : TColor;
  Kurz              : array of word;
  LaengeFeld        : array of real;
  Lambda1           : array of word;
  Lambda2           : array of word;
  Lambda3           : array of word;
  Lang              : array of word;
  LeftDiag          : word;
  LiesHinweisS      : string[3];
  LinearFarbe       : TColor;
  Linientyp         : TPenStyle;
  LPFeld            : array of boolean;
  manuell           : boolean;
  Matrix            : array[0..3, 0..3] of real;
  MaxDaten          : word;
  MengeDaten        : string;
  MethodeS          : string;
  MFuellFarbe       : TColor;
  MHintFarbe        : TColor;
  MRahmenFarbe      : TColor;
  MKoordinFarbe     : TColor;
  Ms1FuellFarbe     : TColor;
  Ms2FuellFarbe     : TColor;
  Ms3FuellFarbe     : TColor;
  MVektorFarbe      : TColor;
  Mittel            : array of word;
  MohrKreisS        : string;
  MPunkte           : byte;
  NameLiz           : string[80];
  NellipseStilS     : string;
  NetzFarbe         : TColor;
  NetzInkrement     : integer;
  NetzS             : string;
  NNFarbeEllipse    : TColor;
  NNFarbeFlaeche    : TColor;
  NordSuedS         : string[1];
  Oben              : word;
  ObenUntenS        : string[6];
  OberOeffnungFarbe : TColor;
  OberVertrauFarbe  : TColor;
  ObjektFarbe       : TColor;
  ObSlipLine        : TColor;
  OeffnungFarbe     : TColor;
  OstWestS          : string[1];
  PassS             : string[8];
  PasswortS         : string[8];
  PDatei            : TextFile;
  PeriFarbe         : TColor;
  PfadS             : string;
  PfeilFarbe        : TColor;
  PFuellen          : boolean;
  PitchS            : string;
  PitchSinnS        : string;
  PKante            : byte;
  PlatteS           : string[3];
  Plot              : boolean;
  PlotRadius        : real;
  PlotZeile         : TextFile;
  Polygon           : boolean;
  PolygonZeileS     : array of string;
  PolyNr            : word;
  ProjektionS       : string;
  Prozent           : byte;
  PudS              : string[5];
  Programm          : byte;
  PwS               : string[6];
  Q                 : array[0..3, 0..3] of real;
  Radius            : word;
  RahmenFarbe       : TColor;
  Regelung          : array of byte;
  ReihenB           : byte;
  RekSimS           : string[4];
  Rf                : array of real;
  Rphi              : array of integer;
  RGFarbe           : TColor;
  RichtungenS       : string[20];
  RoseFarbe         : TColor;
  RoseS             : string;
  RUBGrad           : word;
  RUBMin            : integer;
  RULGrad           : word;
  RULMin            : integer;
  SAziFeld          : array of word;
  SAziFeldAlt       : array of word;
  ScherFarbe        : TColor;
  Schlafe           : word;
  Schliess          : real;
  Schluessel        : integer;
  SchnittS          : string;
  Schrift           : byte;
  SchutzS           : string;
  SFalFeld          : array of shortint;
  SFalFeldAlt       : array of shortint;
  SigAzi            : array[0..3] of word;
  SigFal            : array[0..3] of shortint;
  SigAziRot         : array[0..3] of word;
  SigFalRot         : array[0..3] of shortint;
  SigmaFarbe        : TColor;
  SkalaS            : string;
  SLaenge           : byte;
  SpracheS          : string[10];
  SpZeile           : array of string;
  StextS            : string;
  Strich            : word;
  StrichI           : array[0..5] of byte;
  Symbol            : array of byte;
  SymbolKompression : string[15];
  SymbolDehnung     : string[15];
  SymbolRadii       : string[15];
  Talbot            : array of boolean;
  T0                : array of word;
  TopDiag           : word;
  T1Strich          : array of real;
  T2Strich          : array of real;
  T3Strich          : array of real;
  T4Strich          : array of real;
  T5Strich          : array of real;
  T6Strich          : array of real;
  T7Strich          : array of real;
  T8Strich          : array of real;
  T9Strich          : array of real;
  TheorFarbe        : TColor;
  Ts                : array[0..40] of string;
  ULap              : byte;
  UmfangFarbe       : TColor;
  UnSlipLine        : TColor;
  UTischS           : string;
  UTMZoneS          : string;
  VekFarbe          : TColor;
  Vergenz           : array of shortint;
  Vertikal          : word;
  VertrauFarbe      : TColor;
  VielfacheS        : string;
  Vielfach          : real;
  WeiterB           : array[0..120] of boolean;
  WellmanDatei      : boolean;
  Winkel            : byte;
  WinkelFeld        : array of word;
  WMax              : real;
  X1Fou, Y1Fou      : array of integer;
  X2Fou, Y2Fou      : array of integer;
  X3Fou, Y3Fou      : array of integer;
  XAnfang           : real;
  XKarte            : word;
  XKoord            : real;
  Xmitte            : word;
  Xschn             : array of word;
  Xver1Feld         : array of real;
  Xver2Feld         : array of real;
  YDruckFaktor      : real;
  XYRecord          : StuetzList;
  YAnfang           : real;
  YKarte            : word; 
  YKoord            : real;
  Ymitte            : word;
  Yschn             : array of word;
  Yver1Feld         : array of real;
  Yver2Feld         : array of real;
  ZahlGlob          : word;
  ZahlEinzel        : array of word;
  ZahlPoly          : word;
  ZahlPunkte        : word;
  Zaehler           : word;
  ZaehlFarbe        : TColor;
  ZeilenS           : string;
  ZeileS            : array [0..100] of string;
  ZeilePolygonS     : array of string;
  Zylindrizitaet    : array of byte;
implementation
end.
