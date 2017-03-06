Unit Clovar;

Interface
uses Graphics;

const
  Matrix = 50;
var
  ThMatrix       : array[0..Matrix] of real;
  GruppeMatrix   : array[0..Matrix] of word;
  GruNumMatrix   : array[0..Matrix] of word;
  XrMatrix       : array[0..Matrix] of real;
  YrMatrix       : array[0..Matrix] of real;
  ZrMatrix       : array[0..Matrix] of real;
  ThetaMatrix    : array[0..Matrix] of real;
  ZeileS         : array[0..Matrix] of string;
  nZeileS        : array[0..Matrix] of string;
  AqBild1Matrix  : array[0..Matrix] of word;
  AqBild2Matrix  : array[0..Matrix] of word;
  AqBild3Matrix  : array[0..Matrix] of word;
  FqBild1Matrix  : array[0..Matrix] of shortint;
  FqBild2Matrix  : array[0..Matrix] of shortint;
  FqBild3Matrix  : array[0..Matrix] of shortint;
  ZirkoeffMatrix : array[0..Matrix] of byte;
  OmegaMatrix    : array[0..Matrix] of real;
  AlMatrix       : array[0..Matrix] of word;
  FlMatrix       : array[0..Matrix] of word;
  ZylinMatrix    : array[0..Matrix] of byte;
  OFarbeMatrix   : array[0..Matrix] of TColor;
  TFarbeMatrix   : array[0..Matrix] of TColor;
  Ni,lz,Pool     : word;
  Grupmax        : word;
  Poin           : shortint;
  Test           : real;
  ZaehlerS       : string[20];
  Anzahl         : word;
  Iclus          : word;
  nsGruppenS     : string[6];
  nGruppe        : byte;
  TestS          : string[6];
  AnzahlS        : string;

Implementation
end.