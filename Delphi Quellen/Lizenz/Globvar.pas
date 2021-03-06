unit Globvar;

interface
uses Graphics;

const
  DemoB      = false;
  ConfigEnde = 73;

type
  TFWord  = array[0..5000] of word;
  TFShort = array[0..5000] of shortint;
  TWw     = array[0..121, 0..31] of real;
  TFByte  = array[0..5000] of byte;
  TFReal  = array[0..5000] of real;

var
  Abbrechen         : boolean;
  Abstand           : integer;
  AequatorFarbe     : TColor;
  ASigma1           : word;
  Asigma3           : word;
  Ausb              : boolean;
  AziFeld           : ^TFWord;
  B1Fou, B3Fou      : ^TFReal;
  B5Fou             : ^TFReal;
  Berechnung        : byte;
  BereichS          : string[10];
  Bo                : real;
  Breite            : word;
  DarstellungS      : string[10];
  DateiNameS        : array[0..100] of string;
  DateiZahl         : word;
  DatenFarbe        : TColor;
  Datensymbol       : string[15];
  DiagrFarbe        : TColor;
  DirectS           : string;
  Dxfp,Dxfpud       : byte;
  EigenFarbe        : TColor;
  EingabeS          : string[30];
  FalFeld           : ^TFWord;
  Farbe             : TColor;
  FarbIso           : array[0..5] of byte;
  FormatS           : string[12];
  FSigma1           : shortint;
  FSigma3           : shortint;
  Gefuegetyp        : byte;
  GeraetS           : string[10];
  GrafikS           : string;
  GroesseS          : string[6];
  GrosskreisFarbe   : TColor;
  GrundFarbe        : TColor;
  HintFarbe         : TColor;
  Hoehe             : word;
  Horizontal        : word;
  HpRadius          : real;
  Inkrement         : byte;
  Intervall         : byte;
  Isolinie          : array [0..5] of TColor;
  IsoTyp            : array [0..5] of TPenStyle;
  IsoStufe          : array [0..5] of word;
  Kalotte           : word;
  Kante             : real;
  KippWinkel        : integer;
  Kom               : byte;
  KomS              : array[0..20] of string;
  KonfigZeileS      : array[0..80] of string;
  Konfidenz         : byte;
  KoordinFarbe      : TColor;
  Lambda1           : ^TFWord;
  Lambda2           : ^TFWord;
  Lambda3           : ^TFWord;
  Laufw2S           : string[3];
  Linientyp         : TPenStyle;
  Matrix            : array[0..3, 0..3] of real;
  NetzFarbe         : TColor;
  NetzInkrement     : integer;
  Oben              : word;
  OberOeffnungFarbe : TColor;
  OberVertrauFarbe  : TColor;
  ObSlipLine        : TColor;
  OeffnungFarbe     : TColor;
  PassS             : string[8];
  PasswortS         : string[8];
  PDatei            : TextFile;
  PeriFarbe         : TColor;
  PfadS             : string;
  PfeilFarbe        : TColor;
  PlatteS           : string[3];
  PlotRadius        : real;
  ProjektionS       : string;
  PudS              : string[5];
  Programm          : byte;
  PwS               : string[6];
  Q                 : array[0..3, 0..3] of real;
  Radius            : word;
  RahmenFarbe       : TColor;
  Regelung          : ^TFByte;
  ReihenB           : byte;
  RGFarbe           : TColor;
  RichtungenS       : string[20];
  RoseFarbe         : TColor;
  SAzifeld          : ^TFword;
  SchnittS          : string;
  SFalFeld          : ^TFShort;
  SchutzS           : string[10];
  SpracheS          : string[10];
  StextS            : string;
  Symbol            : ^TFByte;
  T0                : ^TFWord;
  T1Strich          : ^TFReal;
  T2Strich          : ^TFReal;
  T3Strich          : ^TFReal;
  T4Strich          : ^TFReal;
  T5Strich          : ^TFReal;
  T6Strich          : ^TFReal;
  T7Strich          : ^TFReal;
  T8Strich          : ^TFReal;
  T9Strich          : ^TFReal;
  TheorFarbe        : TColor;
  Ts                : array[0..30] of string;
  UmfangFarbe       : TColor;
  UnSlipLine        : TColor;
  UTischS           : string;
  Vergenz           : ^TFShort;
  Vertikal          : word;
  VertrauFarbe      : TColor;
  VielfacheS        : string[12];
  Vielfach          : real;
  WertFeld          : ^TFWord;
  Winkel            : byte;
  WwZeiger          : ^TWw;
  XAnfang           : real;
  X1Fou, Y1Fou      : ^TFWord;
  X2Fou, Y2Fou      : ^TFWord;
  X3Fou, Y3Fou      : ^TFWord;
  XKoord            : real;
  XMitte            : word;
  Xver1Feld         : ^TFreal;
  Xver2Feld         : ^TFbyte;
  YAnfang           : real;
  YKoord            : real;
  YMitte            : word;
  Yver1Feld         : ^TFreal;
  Yver2Feld         : ^TFbyte;
  ZahlGlob          : word;
  Zaehler           : word;
  ZeilenS           : string;
  Zylindrizitaet    : ^TFByte;

implementation
end.
