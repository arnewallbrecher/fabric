{************************************************************************}

{       Windsway Geodesy Library}
{       Mapstuff.PAS Version 0.96}

{ The initial developer of the Delphi code is < Victor Fraenckel>}
{ (victorf@windreader.com).}
{
{ Portions created by < Victor Fraenckel> are}
{ Copyright © 2002, 2003 < Windsway Instrument Company>.}


{       Obtained through:}

{       Windsway Instrument Company}

{ You may download the latest version of this file at:}
{ www.windreader.com/geodesy}

{ The contents of this file are used with permission, subject to}
{ the Mozilla Public License Version 1.1 (the "License") you may}
{ not use this file except in compliance with the License. You may}
{ obtain a copy of the License at}
{ http:{www.mozilla.org/MPL/MPL-1.1.html}

{ Software distributed under the License is distributed on an}
{ "AS IS" basis, WITHOUT WARRANTY OF ANY KIND, either express or}
{ implied. See the License for the specific language governing}
{ rights and limitations under the License.}

{ If you modify this file or correct mistakes, I would appreciate}
{ you dropping me an e-mail to let me know what you think of it and}
{ let me know about your bug fixes and any additions you have made.}
{ Reach me at victorf@windreader.com}

{Vic Fraenckel 12/02/2003}

{************************************************************************}

{************************************************************************}
{  revision history}
{   date        comment                                       who}

{ 12/18/02      began development                             vhf}
{ 08/24/03      removed all uses of ATan2 function            vhf}
{               and replaced by built-in ArcTan2}
{               function ATan2 retained for compatibility}
{ 08/26/03      changed the value of minor(22) - WGS84}
{               from 6356750.321 to 6356752.314}
{ 08/27/03      added the array, rflat, containing the}
{               inverse flatting [1/f] of the named}
{               ellipsoids. Also added the function}
{               GetFlattening to return the value of}
{               the flattening.}
{ 08/31/03      changed DMSToDeg to properly handle the}
{               minutes and second > 60 problem}
{ 09/19/03      added function GetAllSerialPorts which          vic}
{               reads the registry HKEY_LOCAL_MACHINE key}
{               and extracts the com port names of ALL}
{               installed serial ports}
{ 10/04/03      Added the functions LL2Ruler and Ruler2LL       vic}
{ 10/06/03      Fixed problems in FmtDMS - degs and minutes     vic}
{               were not being handled properly under some}
{               circumstances. Formalized the calling sequence}
{               by enumerating DorH and FOut parameters.}
{ 12/10/03      fixed minor error in UTM2LL convergence calc.   vic}
{}
{************************************************************************}

{************************************************************************}
{  module contains the following routines:}

{   name        last modified date}
{  Antipod           08/24/03}
{  ATan2             12/31/02 NOTE: replaced use of by builtin ArcTan2}
{  ComputeZone       12/21/02}
{  Converge          12/21/02}
{  DMSToD            12/21/02}
{  DToDMS            09/31/03}
{  FmtDMS            10/06/03}
{  GetAllSerialPorts 09/19/03}
{  GetEllipseStuff   12/21/02}
{  GetFlattening     08/27/03}
{  GetWidth          01/04/03}
{  IsAntipodal       08/24/03)
{  LL2Ruler          10/04/03}
{  LL2UTM            12/30/02}
{  ModAzimuth        12/21/02}
{  ModLatitude       12/21/02}
{  ModLongitude      12/21/02}
{  Modulus           12/21/02}
{  ParseLatLong      01/01/03}
{  Reciprocal        12/21/02}
{  Round2            01/02/03}
{  Ruler2LL          10/04/03}
{  Sex2Deg           01/04/03}
{  Sgn               12/21/02}
{  UTM2LL            12/10/03}
{  VDirect           08/24/03}
{  VInverse          08/24/03}

{************************************************************************}

{NOTE:  All applicable routines assume that NORTH latitudes and EAST}
{       longitudes are positive and SOUTH latitudes and WEST longitudes}
{       are negative.}

unit Mapstuff;

interface

uses
  math,SysUtils, classes, Registry, windows,
  WICStrings, StrTokenizer;

type

  charset=set of char;
  string30=string[30];
  LatLongTime = (Lat, Long, None);
  DH = (Deg, Hour);
  FO = (DD, DM, DS);
  UUnits = (MM, CM, Inches);

  DMSStruct=record
    degrees : Double;
    minutes : Double;
    seconds : Double;
    sign : Integer;
  end;

  EllipseStruct=record
    major : Double;
    minor : Double;
    elName : String;
  end;

  DatumStruct=record
    datumNumber : Integer;
    datumName : String;
  end;

  GeoidStruct=record
    geoidNumber : Integer;
    geoidMajor : Double;
    geoidMinor : Double;
    geoidName : String;
  end;

  GeoStruct=record
    latitude1 : Double;
    longitude1 : Double;
    latitude2 : Double;
    longitude2 : Double;
    azimuth12 : Double;
    azimuth21 : Double;
    distance : Double;
    geoid : Integer;
  end;

  UTMStruct=record
    latitude : Double;
    longitude : Double;
    geoid : Integer;
    north : Double;
    east : Double;
    zoneNumber : Integer;
    zoneLetter : Char;
    centralLongitude : Double;
    gamma : Double;
    gridSF : Double;
  end;

  ZoneStruct=record
    latitude : Double;
    longitude : Double;
    zoneNumber : Integer;
    zoneLetter : Char;
    centralLongitude : Double;
  end;

  LLRulerStruct=record
    latitude : double;
    longitude : double;
    cornerlat : double;
    cornerlong : double;
    azimuth : double;
    usergeoid : integer;
    mapscale : double;  //i.e. 1:25000 = 25000.0
    userunits : UUnits; //millimeters, centimenters, inches
    easting : double;   //user units
    northing : double;  //user units
  end;

Const
{====================== Necessary constants =========================}
  //constants
  WICCOPYRIGHT:string = 'Copyright (C) 2003';
  WICCOMPANY:string = 'Windsway Instrument Company';
  WICVERSIONMAJOR : Integer = 0;
  WICVERSIONMINOR : Integer = 90;

  WICEPS : Double = 0.00000000000005; //a small number

  //pi stuff
  WICTWOPI : Double = 2 * PI;
  WICD2R : Double = PI / 180.0;
  WICR2D : Double = 180.0 / PI;

  WICDEGSIGN : Char = chr(176);         // degree sign
  WICMINSIGN : char = chr(39);         // 'minute sign
  WICSECSIGN : char = chr(34);         // 'second sign

  WICNCHOICES = 22;                    //num of currently defined ellipsoids
  WICNDCHOICES = 103;                  //num of currently defined datums
  WICFALSEEAST : Double = 500000.0;   //for UTM
  WICFALSENORTH : Double = 0.0;        //ditto
  WICFALSESOUTH : double = 10000000.0; //ditto southern hemisphere
  WICK0 : Double = 0.9996;             //ditto
  WICCLARK66 : Integer = 5;            //clark 1886 ellipsoid
  WICBESSEL : Integer = 4;             //bessel ellipsoid
  WICINTERNATIONAL : Integer = 16;     //international datum
  WICWGS84 : Integer = 22;             //wgs 84 datum
  WICNAD27 : Integer = 5;              //NAD27 datum
  WICLATNORTH : Integer = 1;           //latitude is northern hemisphere
  WICLATSOUTH : Integer = -1;          //latitude is southern hemisphere
  WICLONGEAST : Integer = 1;            //longitude is east
  WICLONGWEST : Integer = -1;          //longitude is west
  WICNORTH : Char = 'N';               //north flag
  WICSOUTH : Char = 'S';               //south flag
  WICEAST : Char = 'E';                 //east flag
  WICWEST : Char = 'W';                //west flag
  WICTOKENCT : Integer = 3;            //degs, mins secs
  WICMAXSECS : Double = 59.99999;      //really 60 seconds
  WICMAXMINS : Double = 59.99999;      //really 60 minutes
  WICMAXLAT : double = 90.0;           //Max absolute latitude value
  WICMAXLONG : double = 180.0;         //max absolute longitude value
  WICMAXAZ : double = 360.0;           //maximum azimuth value
  WICPOSSIGN : Integer = 1;            //positive angle in DMSStruct
  WICNEGSIGN : Integer = -1;           //negative angle in DMSStruct

  WICMTOMM : double = 1000.0;          //meters to mm
  WICMTOCM : double = 100.0;           //meters to cm
  WICMTOIN : double = 39.36996;        //meters to in

  //BNG Constants
   WICAIRY : Integer = 2;              //Airy ellipsoid
   WICGRS80 : Integer = 13;            //GRS80 ellipsoid
   WICLAT49 : Double = 49.0;           //BNG True origin lat- 49degN
   WICLON2 : Double = -2.0;            //BNG True Origin Long - 2degW
   WICBNGEAST : Double = 400000.0;     //For BNG
   WICBNGNORTH : Double = -100000.0;   //ditto

  //error codes
   WICNOERROR = 0;            //no error
   WICLONGERR = 1;            //longitude maximum exceeded
   WICLATERR  = 2;            //latitude maximum exceeded
   WICBADTOKENCT = 3;         //for parseLatLong
   WICANTIPODAL = 4;          //using antipodal points in VInverse
   WICBADA12 = 5;             //undefined atan
   WICBADA21 = 6;             //ditto
   WICBADGEOID = 7;           //bad geoid selected
   WICBADLAT1 = 8;            //undefined atan2
   WICBADLAT2 = 9;            //ditto
   WICBADLONG1 = 10;          //ditto
   WICBADLONG2 = 11;          //ditto
   MSBADLL2BNG = 12;          //error in ll2BNG
   MSBADBNG2LL = 13;          //error in BNG2LL
   WICNOTNUMERIC = 14;        //error converting string to num
   WICINVALIDTOKEN = 15;      //to many tokens returned by parseLatLong
   WICBADMINSEC = 16;         //minutes or seconds invalid
   WICBADUTM = 17;            //utm zone finder error
   WICINVALIDUTMZONE = 18;    //invalid UTM zone
   WICBADATAN2 = 19;          //general bad atan2
   WICBADDATUM = 20;          //bad datum index
   WICBADLL2BNG = 21;         //error in ll2BNG
   WICBADBNG2LL = 22;         //error in BNG2LL
   WICNOTAIRY = 23;           //geoid not AIRY used for computation
   WICSAMEPT = 24;            //lat/longs are same point - VInverse
   WICZERODIST = 25;          //distance is zero - VDirect
   WICNOCONVERGE = 26;        //loop did not converge
   WICCOMPORTERROR = 27;      //error getting com ports

{====================== ellipsoid constants =========================}

  major:array[1..WICNCHOICES] of double = (
    6377563.396,       {1  airy}
    6377340.189,       {2  airy modified}
    6378160.000,       {3  australian national}
    6377397.155,       {4  bessel 1841}
    6378206.400,       {5  clarke 1866}
    6378249.145,       {6  clarke 1880}
    6377276.345,       {7  everest}
    6377304.063,       {8  everest modified}
    6378166.000,       {9  fischer 1960}
    6378155.000,       {10  fischer 1960 modified}
    6378150.000,       {11 fischer 1968}
    6378160.000,       {12 geodetic reference system 1967}
    6378137.000,       {13 geodetic reference system 1980}
    6378200.000,       {14 helmert}
    6378270.000,       {15 hough}
    6378388.000,       {16 international}
    6378245.000,       {17 krassovsky}
    6378160.000,       {18 south american}
    6378165.000,       {19 wgs 60}
    6378145.000,       {20 wgs 66}
    6378135.000,       {21 wgs 72}
    6378137.000        {22 wgs 84}
    );
  minor:array[1..WICNCHOICES] of double = (
    6356256.909,       {1  airy}
    6356034.448,       {2  airy modified}
    6356774.719,       {3  australian national}
    6356078.963,       {4  bessel 1841}
    6356583.800,       {5  clarke 1866}
    6356514.870,       {6  clarke 1880}
    6356075.413,       {7  everest}
    6356103.039,       {8  everest modified}
    6356784.284,       {9  fischer 1960}
    6356773.320,       {10  fischer 1960 modified}
    6356768.337,       {11 fischer 1968}
    6356774.516,       {12 geodetic reference system 1967}
    6356752.314,       {13 geodetic reference system 1980}
    6356818.170,       {14 helmert}
    6356794.343,       {15 hough}
    6356911.946,       {16 international}
    6356863.019,       {17 krassovsky}
    6356774.719,       {18 south american}
    6356783.287,       {19 wgs 60}
    6356759.769,       {20 wgs 66}
    6356750.520,       {21 wgs 72}
    6356752.314        {22 wgs 84}
    );

  rflat:array[1..WICNCHOICES] of double = (
    299.3249646,                  {1}
    299.3249646,                  {2}
    298.25,                       {3}
    299.1528128,                  {4}
    294.9786982,                  {5}
    293.465,                      {6}
    300.8017,                     {7}
    300.8017,                     {8}
    298.3,                        {9}
    298.3,                        {10}
    298.3,                        {11}
    298.247167427,                {12}
    298.257222101,                {13}
    298.3,                        {14}
    297.0,                        {15}
    297.0,                        {16}
    298.3,                        {17}
    298.25,                       {18}
    298.3,                        {19}
    298.25,                       {20}
    298.26,                       {21}
    298.257223563                 {22}
  );

  ename:array[1..WICNCHOICES] of string30 = (
    'Airy',                       {1}
    'Airy Modified',              {2}
    'Australian National',        {3}
    'Bessel 1841',                {4}
    'Clark 1866',                 {5}
    'Clarke 1880',                {6}
    'Everest',                    {7}
    'Everest Modified',           {8}
    'Fischer 1960',               {9}
    'Fischer 1960 Modified',      {10}
    'Fischer 1968',               {11}
    'Geodetic Reference 1967',    {12}
    'Geodetic Reference 1980',    {13}
    'Helmert',                    {14}
    'Hough',                      {15}
    'International',              {16}
    'Krassovsky',                 {17}
    'South American 1969',        {18}
    'WGS-60',                     {19}
    'WGS-66',                     {20}
    'WGS-72',                     {21}
    'WGS-84'                      {22}
    );

  dname :array[1..WICNDCHOICES] of string30 = (
     'Adindan',                    {1}
     'Afgooye',                    {2}
     'Ain El Abd 1970',            {3}
     'Anna 1 Astro',               {4}
     'ARC 1950',                   {5}
     'ARC 1960',                   {6}
     'Ascension Island 1958',      {7}
     'Astro B4 Sorol Atoll',       {8}
     'Astro Beacon E',             {9}
     'Astro Dos 71/4',             {10}
     'Astronomic Station 1952',    {11}
     'Australian Geodetic 1966',   {12}
     'Australian Geodetic 1984',   {13}
     'Bellevue IGN',               {14}
     'Bermuda 1957',               {15}
     'Bogota Observatory',         {16}
     'Campo Inchauspe',            {17}
     'Canto Astro 1966',           {18}
     'Cape South Africa',          {19}
     'Cape Canaveral',             {20}
     'Carthage',                   {21}
     'Chatham 1971',               {22}
     'Chua Astro',                 {23}
     'Corrego Alegre',             {24}
     'Djakarta',                   {25}
     'Dos 1968',                   {26}
     'Easter Island 1967',         {27}
     'European 1950',              {28}
     'European 1979',              {29}
     '*Finland Hayford',           {30}
     'Gandajika Base',             {31}
     'Geodetic Datum 1949',        {32}
     'Guam 1963',                  {33}
     'Gux 1 Astro',                {34}
     'Hjorsey 1955',               {35}
     'Hong Kong 1963',             {36}
     'Indian',                     {37}
     '*Indian Thailand',           {38}
     'Ireland 1965',               {39}
     'ISTS 073 Astro 1969',        {40}
     'Johnson Island 1961',        {41}
     'Kandawala',                  {42}
     'Kergulen Island',            {43}
     'Kertau 1948',                {44}
     'L. C. 5 Astro',              {45}
     'Liberia 1964',               {46}
     '*Luzon Mindanao',            {47}
     'Luzon Phillipines',          {48}
     'Mahe 1971',                  {49}
     'Marco Astro',                {50}
     'Massawa',                    {51}
     'Merchich',                   {52}
     'Midway Astro 1961',          {53}
     'Minna',                      {54}
     'NAD27 Alaska',               {55}
     'NAD27 Bahamas',              {56}
     'NAD27 Canada',               {57}
     'NAD27 Canal Zone',           {58}
     'NAD27 Caribbean',            {59}
     'NAD27 Central America',      {60}
     'NAD27 Conus',                {61}
     'NAD27 Cuba',                 {62}
     'NAD27 Greenland',            {63}
     'NAD27 Mexico',               {64}
     'NAD27 San Salvador',         {65}
     'NAD83',                      {66}
     '*Nahrwn Masirah Island',     {67}
     '*Nahrwn Saudi Arabia',       {68}
     '*Nahrwn United Arab Emirates',{69}
     '*Naparima BWI',               {70}
     'Observatorio 1966',          {71}
     'Old Egyptian',               {72}
     'Old Hawaiian',               {73}
     'Oman',                       {74}
     'Ord Survey G. Britian 1936', {75}
     'Pico De Las Nieves',         {76}
     'Pitcairn Astro 1967',        {77}
     'Prov. So. America 1956',     {78}
     'Prov. So. Chilean 1963',     {79}
     'Puerto Rico',                {80}
     'Qatar National',             {81}
     'Qornoq',                     {82}
     'Reunion',                    {83}
     'Rome 1940',                  {84}
     '*RT 90 Sweden',              {85}
     'Santo (DOS)',                {86}
     'Sao Braz',                   {87}
     'Sapper Hill 1943',           {88}
     'Schwarzeck',                 {89}
     'South American 1969',        {90}
     'South Asia',                 {91}
     'Southeast Base - Maderia',   {92}
     'Southwest Base - Azores',    {93}
     'Timbalai 1948',              {94}
     'Tokyo',                      {95}
     'Tristan Astro 1968',         {96}
     'Viti Levu 1916',             {97}
     'Wake-Eniwetok 1960',         {98}
     'WGS 1960',                   {99}
     'WGS 1966',                   {100}
     'WGS 1972',                   {101}
     'WGS 1984',                   {102}
     'Zanderij'                    {103}
    );

  ellipnum :array[1..WICNDCHOICES] of integer = (
     6,                            {1}
     17,                           {2}
     16,                           {3}
     3,                            {4}
     6,                            {5}
     6,                            {6}
     16,                           {7}
     16,                           {8}
     16,                           {9}
     16,                           {10}
     16,                           {11}
     3,                            {12}
     3,                            {13}
     16,                           {14}
     5,                            {15}
     16,                           {16}
     16,                           {17}
     16,                           {18}
     6,                            {19}
     6,                            {20}
     5,                            {21}
     16,                           {22}
     16,                           {23}
     16,                           {24}
     4,                            {25}
     16,                           {26}
     16,                           {26}
     16,                           {28}
     16,                           {29}
     16,                           {30}
     16,                           {31}
     16,                           {32}
     5,                            {33}
     16,                           {34}
     16,                           {35}
     16,                           {36}
     7,                            {37}
     16,                           {38}
     2,                            {39}
     16,                           {40}
     16,                           {41}
     7,                            {42}
     16,                           {43}
     8,                            {44}
     5,                            {45}
     6,                            {46}
     5,                            {47}
     5,                            {48}
     6,                            {49}
     16,                           {50}
     4,                            {51}
     6,                            {52}
     16,                           {53}
     6,                            {54}
     5,                            {55}
     5,                            {56}
     5,                            {57}
     5,                            {58}
     5,                            {59}
     5,                            {60}
     5,                            {61}
     5,                            {62}
     5,                            {63}
     5,                            {64}
     5,                            {65}
     13,                           {66}
     6,                            {67}
     6,                            {68}
     6,                            {69}
     6,                            {70}
     16,                           {71}
     14,                           {72}
     5,                            {73}
     6,                            {74}
     1,                            {75}
     16,                           {76}
     16,                           {77}
     16,                           {78}
     16,                           {79}
     5,                            {80}
     16,                           {81}
     16,                           {82}
     16,                           {83}
     16,                           {84}
     16,                           {85}
     16,                           {86}
     16,                           {87}
     16,                           {88}
     4,                            {89}
     18,                           {90}
     10,                           {91}
     16,                           {92}
     16,                           {93}
     7,                            {94}
     4,                            {95}
     16,                           {96}
     6,                            {97}
     15,                           {98}
     19,                           {99}
     20,                           {100}
     21,                           {101}
     22,                           {102}
     16                            {103}
  );

var
  ellipse:array [1..WICNCHOICES] of EllipseStruct;
  datum:array [1..WICNDCHOICES] of DatumStruct;

  ict : integer;
  LLT : LatLongTime;

  function GetAllSerialPorts(Var PortList : TStringList) : integer;
  function Round2(d : Double; Places : Integer): Double;
  function Antipod(latin : Double; lonin : Double;
      var latout : Double; var lonout : Double) : Integer;
  function IsAntipodal( lat1 : Double;  lat2 : Double;
      long1 : Double;  long2 : Double) : Boolean;
  function Atan2(y : Double; x : Double) : Double;
  function Sgn(Num:double):double;
  function SgnI(Num:double):integer;
  procedure DtoDMS(angle : Double; var dms : DMSStruct);
  function DMStoD(dms : DMSStruct) : Double;
  function modulus (Num1:double; Num2:double):double;
{  function modulus(const X, Y: double): double;}
  function modLatitude(lat : double) : double;
  function modLongitude(lon : double) : double;
  function modAzimuth(az : double) : double;
  function reciprocal(angle : double) : double;
  function FmtDMS(Ang : Double; NDig : Integer; DorH : DH; FOut : FO;
                LLT : LatLongTime) : String;
  function GetWidth(Num : double) : integer;
  function Sex2Deg(Ang : Double) : Double;
  function ParseLatLong(var Ang : Double; s : String) : Integer;
  function computeZone(var zone : ZoneStruct) : integer;
  function GetEllipseStuff(var es:EllipseStruct; geoid:integer) : integer;
  function GetDatumStuff(var ds : DatumStruct; dnumber : integer) : Integer;
  function GetFlattening(geoid : integer; var flat : double):Integer;
  function Converge(var gs : GeoStruct) :Integer;
  function LL2UTM(var utm : UTMStruct) : integer;
  function UTM2LL(var utm : UTMStruct) : integer;
  function VInverse(var gs : GeoStruct) : Integer;
  function VDirect(var gs : GeoStruct) : Integer;
  function LL2Ruler(var ls : LLRulerStruct):integer;
  function Ruler2LL(var ls : LLRulerStruct) : integer;

{====================== end of constant declarations ================}

implementation

function GetAllSerialPorts(Var PortList : TStringList) : integer;

//This function reads the registery and extracts the names of
//the known serial ports on your computer.
//The function returns:
//    WICNOERROR if successful
//    WICCOMPORTERROR of an error is detected

var
  i:integer;
  itemct : integer;
  reg : TRegistry;

begin
 reg := TRegistry.Create;
  try
    begin
      reg.RootKey := HKEY_LOCAL_MACHINE;
      if not reg.KeyExists ('HARDWARE') then
        begin
          result := WICCOMPORTERROR;
          exit;
        end;
      if not reg.OpenKey ('HARDWARE',false)then
        begin
          result := WICCOMPORTERROR;
          exit;
        end;
      if not reg.KeyExists ('DEVICEMAP') then
        begin
          result := WICCOMPORTERROR;
          exit;
        end;
      if not reg.OpenKey ('DEVICEMAP',false)then
        begin
          result := WICCOMPORTERROR;
          exit;
        end;
      if not reg.KeyExists ('SERIALCOMM') then
        begin
          result := WICCOMPORTERROR;
          exit;
        end;
      if not reg.OpenKey ('SERIALCOMM',false)then
        begin
          result := WICCOMPORTERROR;
          exit;
        end
      else
        reg.GetValueNames (PortList);
    end; //try

  finally
    reg.Free;
  end;
  result := WICNOERROR;

end;

function Round2(d : Double; Places : Integer): Double;

{This function rounds the number d to Places places}

var
  x: double;

  begin
    x := d * power(10,Places);
    Result := (Trunc(x) + Trunc(Frac(x) * 10) div 5) / power(10,Places);
  end;


function Antipod(latin : Double; lonin : Double;
      var latout : Double; var lonout : Double) : Integer;

  //this function returns the antipod of latin, lonin in latout, lonout
  //NOTE: angles are assumed to be in decimal degrees

  //function returns:
  //   WICNOERROR if successful and latout and lonouut contain the
  //       antipodal values otherwise they are indeterminate. I set them\
  //       both to 9999.0 degrees.
  //   WICLONGERR if abs(lonin) is > 180 degrees
  //   WICLATERR if abs(latin) is > 90 degrees

begin

  If Abs(lonin) > 180.0 Then
    begin
      latout := 9999.0;
      lonout := 9999.0;
      result := WICLONGERR;
      Exit;
    end;

  If Abs(latin) > 90.0 Then
    begin
      latout := 9999.0;
      lonout := 9999.0;
      result := WICLATERR;
      Exit;
    end;

  latout := -latin;
  lonout := modulus(lonin + 180.0, 180.0);
  result := WICNOERROR;

end;  //function Antipod

function IsAntipodal( lat1 : Double;  lat2 : Double;
      long1 : Double;  long2 : Double) : Boolean;

//this function determines if a lat2/long2 is antipodal to lat1/long1
//the function returns true if they are else it returns false. False will
//be returned if lat/longs are out of range. (see Antipod)
//NOTE: angles are assumed to be in decimal degrees


var

  la,lo : Double;
  eflag : Integer;

begin

  eflag := Antipod(lat1, long1, la, lo);  //compute antipodal values
  If eflag <> WICNOERROR Then
    begin
      result := False;
      Exit;
    end;

  If (lat2 = la) And (long2 = lo) Then
    result := True
  Else
    result := False;

end;  //function IsAntipodal

function Atan2(y : Double; x : Double) : Double;

{function computes the ArcTangent of the angle formed by}
{the vectors x and y.}

  begin //function ATan2

    If (x < 0) Then
      result := ArcTan(y / x) + PI;

    If (x > 0) And (y >= 0) Then
      result := ArcTan(y / x);

    If (x > 0) And (y < 0) Then
      result := ArcTan(y / x) + 2.0 * PI;

    If (x = 0) And (y > 0) Then
      result := PI / 2.0;

    If (x = 0) And (y < 0) Then
      result := 3.0 * PI / 2.0;

    If (x = 0) And (y = 0) Then
      result := 0.0

  end;  //function ATan2


function ParseLatLong(var Ang : Double; s : String) : Integer;

{this function parses the string s and extracts the degrees, minutes and}
{seconds. The string s must be in the format dd:mm:ss.ss or dd:mm.mm or dd.ddd}
{The string delimiters can be a colon (:) or a semicolon (;) or a comma (,).}
{The angle is returned as decimal degrees in Ang.}

{The function returns:}
{ WICNOERROR if OK}
{ WICBADTOKENCT if there are too many tokens}
{ WICNOTNUMERIC if any token is not numeric}
{ WICBADMINSEC if either minutes exceeds WICMAXMINS or seconds exceed}
{              WICMAXSECS}


var
  tstr : String;
  tokenCount : Integer;
  i : Integer;
  dms : DMSStruct;
  delims : DelimCharSet;   //from StrTokenizer
  tlist : TStringList;
  x : double;

  begin

    //initialize
    delims := [':',';',#44];           //#44 is a comma
    dms.Degrees := 0.0;
    dms.Minutes := 0.0;
    dms.Seconds := 0.0;
    Ang := 0.0;
    dms.Sign := WICPOSSIGN;
    tstr := '';
    tlist := TStringList.Create;
    tokenCount := StringTokenizer(s, tlist, delims, True);

    If (tokenCount < 1) Or (tokenCount > WICTOKENCT) Then
      begin
        result := WICBADTOKENCT;
        exit;
      end;
    //convert tokens to numeric if possible
    For i := 1 To tokenCount do
      begin
        tstr := tlist.Strings[i-1];                //get next token
        tstr := TrimLeft(TrimRight(tstr));        //get rid of spaces
        try
          x := StrToFloat(tstr);
        except
          on EConvertError do
            begin
              result := WICNOTNUMERIC;
              exit;
            end;
      end;
      Case i of
        1:
          begin
            //check for negative
            dms.degrees := x; 
            If dms.Degrees < 0.0 Then
              begin
                dms.Degrees := Abs(dms.Degrees);
                dms.Sign := WICNEGSIGN;
              end;
          end;
        2:
          dms.Minutes := Abs(x);
        3:
          dms.Seconds := Abs(x);
      end;  //case
    end;

    //now check minutes and seconds.
    If (dms.Minutes > WICMAXMINS) Or (dms.Seconds > WICMAXSECS) Then
      begin
        result := WICBADMINSEC;
        exit;
      end;

    Ang := DMStoD(dms);   //return the value in decimal degrees

    TList.Free;         //no longer needed

    result := WICNOERROR

  end; //function ParseLatLong

function Sgn(Num:double):double;

{sgn mimics the basic function SGN. it returns 1.0 for positive Num,}
{-1.0 for a negative Num and 0.0 for a zero Num}

  begin {function sgn}

     If Num > 0.0 Then
        result := 1.0                       {value is positive}
     Else
     If Num < 0.0 Then
        result := -1.0                      {value is negative}
     Else
        result := 0.0;                      {value is zero}
  end; {function sgn}

function SgnI(Num:double):integer;

{sgn mimics the basic function SGN. it returns 1 for positive Num,}
{-1 for a negative Num and 0 for a zero Num}

  begin {function sgn}

     If Num > 0.0 Then
        result := 1                       {value is positive}
     Else
     If Num < 0.0 Then
        result := -1                      {value is negative}
     Else
        result := 0;                      {value is zero}

  end; {function sgn}


function DMStoD(dms : DMSStruct) : Double;

{this function converts an angle in dms format to the}
{corresponding decimal degrees.}
{NOTE: sign = -1.0 for negative}
{           = 0.0 for zero}
{           = 1.0 for positive}

var
  sn : double;
  d : double;
  m : double;
  s : double;

  begin //function DMStoD
    sn := dms.Sign;

    d := Abs(dms.Degrees);
    m := Abs(dms.Minutes);
    s := Abs(dms.Seconds);

    While s > WICMAXSECS do
      begin
        s := s - 60.0;
        m := m + 1.0;
      end;

    While m > WICMAXMINS do
      begin
        m := m - 60.0;
        d := d + 1.0;
      end;

    result := sn * (d + m / 60.0 + s / 3600.0)

  end;  //function DMStoD

procedure DtoDMS(angle : Double; var dms : DMSStruct);

{this subroutine converts angle in decimal degrees to}
{degrees, minutes and seconds and returns the result in a DMSDtruct}

var
  d : double;
  m : double;
  s : double;
  sn : integer;

  begin //procedure DtoDMS
    sn := SgnI(angle);
    angle := Abs(angle);
    d := Int(angle);                   //integer degrees
    m := (angle - d) * 60.0;           //minutes
    s := (m - Int(m)) * 60.0;          //seconds

    If s > WICMAXSECS Then             //really 60 seconds?
      begin
        s := 0.0;                      //bump up
        m := m + 1.0;                  //ditto minutes
      end;

    If m > WICMAXMINS Then             //really 60 minutes?
      begin
        m := 0.0;                      //bump up
        d := d + 1.0;                  //ditto minutes
      end;

    dms.degrees := d;                  //store degrees
    dms.minutes := Int(m);             //store
    dms.seconds := s;                  //ditto
    dms.sign := sn;

  end;  //procedure DtoDMS

{function modulus (Num1:double; Num2:double):double;)

  {return the floating point modulus}

(*
function modulus(const X, Y: double): double;

var
  Z: double;

begin

  Result := X / Y;
  Z := System.Int(Result);
  if Frac(Result) < 0.0 then
    Z := Z - 1.0;
  Result := X - Y * Z;

end;
*)
function modulus (Num1:double; Num2:double):double;

  {return the floating point modulus}

begin {function modulus}

  result := Num1 - Num2 * floor(Num1 / Num2);

end; {function modulus}


function ModLatitude(lat : double) : double;

{returns the value of the argument (in radians) constrained to}
{range of -90.0 <= x <= +90.0. Value returned in radians}

  begin {function modlatitude}

    result := modulus(lat + PI / 2.0, PI) - PI / 2.0;

  end;  {function modlatitude}

function ModLongitude(lon : double) : double;

{returns the value of the argument (in radians) constrained to}
{range of -180.0 <= x <= +180.0. Value returned in radians}

  begin {function modlongitude}

    result := modulus(lon + PI, 2.0 * PI) - PI

  end;  {function modlongitude}

function ModAzimuth(az : double) : double;

{returns the value of the argument (in radians) constrained to}
{range of 0.0 <= x <= +360.0. Value returned in radians}

  begin {function modazimuth}

    result := modulus(az, 2.0 * PI);

  end; {function modazimuth}

function Reciprocal(angle : double) : double;

{this function finds the reciprocal of angle.}
{angle is reduced to range 0-360 first and then}
{the reciprocal is computed}
{angle is assumed to be in decimal degrees}
{the result is decimal degrees}

                    //algorithm is from Alan

  begin {function reciprocal}
    while angle < 0.0 do       //handle negative values
      angle := angle + 360.0;

    while angle > 360.0 do     //handle big stuff
      angle := angle - 360.0;

    if angle <= 180.0 Then
      angle := angle + 200.0 - 20.0
    else
      angle := angle + 20.0 - 200.0;

    result := angle;

  end;  {function reciprocal}

function FmtDMS(Ang : Double; NDig : Integer; DorH : DH; FOut : FO;
                LLT : LatLongTime) : String;

{this Function formats angular and time quantities.}
{ Input:  Ang decimal value - function restricts number}
{                           of decimals to 5}
{         NDig number of digits to right of decimal}
{         DorH =  Deg   formatting to degrees}
{                 Hour  formatting to hours}
{         FOut format of output string}
{           DD  = decimal degrees/hours}
{               i.e. ddd.dddd (for n=4)}
{           DM  = degrees/hours and decimal minutes}
{               i.e. ddd mm.mmmm (for n=4)}
{           DMS = degrees/hours, minutes and decimal seconds}
{               i.e. ddd mm ss.ssss (for n=4)}
{         LLT = Format as:}
{                 Lat:  Format as latitude, i.e. two digit degrees}
{                       adding N or S as appropriate}
{                 Long: Format as longitude, i.e. 3 digit degrees}
{                       adding E or W as appropriate}
{                 None: No special formatting}
{                 NOTE: since this function DOES NOT know about lat/long}
{                       it CANNOT strictly enforce the LLT formatting rules.}
{                       It ASSUMES that Ang is a valid lat/long}

  //NOTE: this function rounds at the last decimal place

var
  dh : Array[1 .. 2] of String;
  mm : Array[1 .. 2] of String;
  ss : Array[1 .. 2] of String;
  s : String;
  fstr : String;
  dstr : String;
  mstr : String;
  sstr : String;
  rstr : String;
  wstr : string;
  deg, ideg, d : Double;
  min, imin, m : Double;
  sec  : Double;
  w : Integer;
  dms : DMSStruct;
  
  begin  //function FmtDMS

    dh[1] := Chr(176);    //----- degree symbol
    mm[1] := Chr(39);     //----- arc-min symbol
    ss[1] := Chr(34);     //----- arc-sec symbol
    dh[2] := 'h';
    mm[2] := 'm';
    ss[2] := 's';

    //restrict decimal places to no more than 5
    If NDig > 5 Then
      NDig := 5;

    //get deg/hr, min and sec from Ang
    //don't need sign
    DToDMS(Ang,dms);
    deg := dms.degrees;
    ideg := Int(deg);
    min := dms.minutes;
    imin := Int(min);
    sec := dms.seconds;

    if DorH = Hour then
      While deg > 24.0 do
        deg := deg - 24.0;

    If ((deg = 24.0) And (DorH = Hour)) Or (deg = 360.0) Then
      deg := 0.0;

    Case LLT of
      Lat:
        if Ang < 0.0 then
          s := ' S'
        else if Ang > 0.0 then
          s := ' N'
        else
          s := '';
      Long:
        if Ang < 0.0 then
          s := ' W'
        else if Ang > 0.0 then
          s := ' E'
        else
          s := '';
      None:
        if Ang < 0.0 then
          s := '-'
        else if Ang > 0.0 then
          s := '+'
        else
          s := '';
    end;

    Case FOut of
      DD:      //decimal degrees
        begin
          d := deg + min/60.0 + sec/3600.0;
          fstr := '%.*f';                      //%.*f
          rstr := format(fstr, [NDig,d]) + dh[ord(DorH)+1];  //add symbols
          //complete format of lat/long
          Case LLT of
            Lat :
              begin
                if ideg < 10.0 then
                  rstr := '0' + rstr + s;
                rstr := rstr + s;
              end;
            Long:
              begin
                if ideg < 10.0 then
                  rstr := '00' + rstr
                else if ideg < 100.0 then
                  rstr := '0' + rstr;
                rstr := rstr + s;
              end;
            None:
              rstr := s + rstr;
          end;
        end;
      DM:      //degrees and decimal minutes
        begin
          //first do degrees
          fstr := '%.0f';                      //%.0f
          dstr := format(fstr, [ideg]) + dh[ord(DorH)+1] + ' ';
          //complete format of lat/long
          Case LLT of
            Lat :
              if ideg < 10.0 then
                dstr := '0'+ dstr;
            Long:
              if ideg < 10.0 then
                dstr := '00' + dstr
              else if ideg < 100.0 then
                dstr := '0' + dstr;
            None:
              ;   //nothing
          end;
          //now do minutes
          m := min + sec/3600.0;
          fstr := '%.*f';                       //%.*f
          mstr := format(fstr, [NDig,m]) + mm[ord(DorH)+1];
          if LLT = None then
            rstr := s + dstr + mstr
          else
            rstr := dstr + mstr + s;
        end;
      DS:      //degrees, minutes and decimal seconds
        begin
          //first do degrees
          fstr := '%.0f';                      //%.*f
          dstr := format(fstr, [ideg]) + dh[ord(DorH)+1] + ' ';
          //complete format of lat/long
          Case LLT of
            Lat :
              if ideg < 10.0 then
                dstr := '0'+ dstr;
            Long:
              if ideg < 10.0 then
                dstr := '00' + dstr
              else if ideg < 100.0 then
                dstr := '0' + dstr;
            None:
              ;   //nothing
          end;
          //now do minutes
          fstr := '%2.0f';                     //%2.0f
          mstr := format(fstr, [imin]) + mm[ord(DorH)+1] + ' ';
          //now do seconds
          w := GetWidth(sec);
          wstr := IntToStr(w + 1 + NDig);
          fstr := '%.*f';                      //%.*f
          sstr := format(fstr, [NDig,sec]) + ss[ord(DorH)+1];
          if LLT = None then
            rstr := s + dstr + mstr + sstr
          else
            rstr := dstr + mstr + sstr + s;
        end;
    end;  //case

    result := rstr;

  end;  //function FmtDMS

function GetWidth(Num : double) : integer;

{this function returns the number of characters to the left of the}
{decimal point}

var
  t : Integer;
  df : Double;

  begin //function GetWidth

    t := 0;
    df := Int(Num);

    While df > 0 do
      begin
        df := Int(df / 10);
        t := t + 1;
      end;

    result := t

  end;  //function GetWidth

function Sex2Deg(Ang : Double) : Double;

{given an angle expressed in sexigesimal format:}
{   dd.mmsssss}
{this function returns the angle espressed in}
{decimal degrees:}
{   dd.dddd}

var
   dd : double;
   d : double;
   fixdd : double;
   ddfixdd : double;

  begin //function Sex2Deg

    dd := Abs(Ang);
    fixdd := Int(dd);
    ddfixdd := dd - fixdd + 0.0000000005;    //fudge it
    d := fixdd + Int(100.0 * ddfixdd) / 60.0;
    d := d + (10000.0 * ddfixdd - 100.0 * Int(100.0 * ddfixdd)) / 3600.0;
    Sex2Deg := Sgn(Ang) * d

  end;  //function Sex2Deg

function ComputeZone(var zone : ZoneStruct) : integer;

{This function computes UTM zone information for a given lat/long pair}
{The method returns WICNOERROR for a valid computation else it returns}
{WICBADUTM which indicates the latitude is outside the range for UTMs as}
{UTM zones are confined to the latitude range -80 thru +84 degrees.}

var
  lon : double;
  lat : double;
  zn : integer;
  zlet : char;

  begin {function computezone}

    lon := ModLongitude(DegToRad(zone.Longitude));
    lat := ModLatitude(DegToRad(zone.Latitude));
    lon := RadToDeg(lon);
    lat := RadToDeg(lat);

    If (lat > 84.0) Or (lat < -80.0) Then
      begin
        result := WICBADUTM;
        Exit;
      end;

    zn := floor((lon + 180.0) / 6.0 + 1.0); //zone

    If (lat >= 56.0) And (lat < 64.0) And (lon >= 3.0) And (lon < 12.0) Then
      zn := 32;

    //zones for Svalbard
    zlet := 'Z';
    If (lat >= 72.0) And (lat < 84.0) Then
        If (lon >= 0.0) And (lon < 9.0) Then
          zn := 31
        Else If (lon >= 9.0) And (lon < 21.0) Then
          zn := 33
        Else If (lon >= 21.0) And (lon < 33.0) Then
          zn := 35
        Else If (lon >= 33.0) And (lon < 42.0) Then
          zn := 37;

    // determine zone letter
    If (lat <= 84.0) And (lat >= 72.0) Then
      zlet := 'X'
    else if (lat < 72.0)And (lat >= 64.0)Then
      zlet := 'W'
    else if (lat < 64.0)And (lat >= 56.0) Then
      zlet := 'V'
    else if (lat < 56.0) And (lat >= 48.0) Then
      zlet := 'U'
    else if (lat < 48.0) And (lat >= 40.0) Then
      zlet := 'T'
    else if (lat < 40.0) And (lat >= 32.0) Then
      zlet := 'S'
    else if (lat < 32.0) And (lat >= 24.0) Then
      zlet := 'R'
    else if (lat < 24.0) And (lat >= 16.0) Then
      zlet := 'Q'
    else if (lat < 16.0) And (lat >= 8.0) Then
      zlet := 'P'
    else if (lat < 8.0) And (lat >= 0.0) Then
      zlet := 'N'
    else if (lat < 0.0) And (lat >= -8.0) Then
      zlet := 'M'
    else if (lat < -8.0) And (lat >= -16.0) Then
      zlet := 'L'
    else if (lat < -16.0) And (lat >= -24.0) Then
      zlet := 'K'
    else if (lat < -24.0) And (lat >= -32.0) Then
      zlet := 'J'
    else if (lat < -32.0) And (lat >= -40.0) Then
      zlet := 'H'
    else if (lat < -40.0) And (lat >= -48.0) Then
      zlet := 'G'
    else if (lat < -48.0) And (lat >= -56.0) Then
      zlet := 'F'
    else if (lat < -56.0) And (lat >= -64.0) Then
      zlet := 'E'
    else if (lat < -64.0) And (lat >= -72.0) Then
      zlet := 'D'
    else if (lat < -72.0) And (lat >= -80.0) Then
      zlet := 'C';

    zone.ZoneNumber := zn;
    zone.CentralLongitude := (zn - 1) * 6 - 180.0 + 3;
    zone.ZoneLetter := zlet;

    result := WICNOERROR;

  end;  {function computezone}

function GetEllipseStuff(var es:EllipseStruct; geoid:integer) : integer;

{this method returns a EllipseStruct filled with the ellipse data for}
{the requested ellipsoid. The method returns WICBADGEOID on error else}
{if successful it returns WICNOERROR}

  begin

    If ((geoid < 1) Or (geoid > WICNCHOICES)) Then
    begin

      result := WICBADGEOID;                   //flag error
      exit;

    end;

    es.major := ellipse[geoid].major;
    es.minor := ellipse[geoid].minor;
    es.elName := ellipse[geoid].elName;
    result :=  WICNOERROR;

  end; //end GetEllipseStuff

function GetDatumStuff(var ds : DatumStruct; dnumber : integer) : Integer;

{this function extracts the datum name and it's cooresponding}
{index from the array datum and make it available to the user's}
{application. The ds.datumnumber IS the geoid number of the ellipse}
{that the particular datum is based upon, i.e for dnumber 61 which is}
{ NAD27 Conus has an index of 5 which is the Clarke 1866 ellipse.}
{The function returns WICNOERROR if successful else it returns WICBADDATUM}
{if it is passed an dnumber that is out of the range of 1 to WICNDCHOICES}

var
  c : Integer;


  begin {function GetDatumStuff}

    c := WICNDCHOICES;

    if (dnumber < 1) Or (dnumber > c) Then
      begin
        GetDatumStuff := WICBADDATUM;
        Exit;
      End;

    ds.datumName := datum[dnumber].datumName;
    ds.datumNumber := datum[dnumber].datumNumber;  //actual ellipse number
                                                   //for this datum
    result := WICNOERROR;

  end;  {function GetDatumStuff}
function GetFlattening(geoid : integer; var flat : double):Integer;

//this function returns the flattening of the ellipsoid from the
//array of reciprocal flattening (1/f) flat.

//the function returns:
//    WICNOERROR if passed geoid is in range
//    WICBADGEOID otherwise

begin
  If ((geoid < 1) Or (geoid > WICNCHOICES)) Then
    begin
      result := WICBADGEOID;
      exit;
    end;

    flat := 1.0/rflat[geoid];
    result := WICNOERROR;

end;  //function getflattening

function Converge(var gs : GeoStruct) :Integer;

{this function computes the convergence of meridians between}
{two parallels of latitude. The convergence is returned in}
{meters in gs.distance.}

{Negative convergence implies meridians converge toward the pole}
{or abs(latitude1 is nearer the pole than abs(latitude2)}

{Positive convergence implies meridians diverge towarf the equator}
{or abs(latitude1 is nearer the equator than abs(Latitude2)}

{the longitude order makes no difference}

{The function returns WICNOERROR if completed successfully}
{or WICBADGEOID if unable to find data for gs.geoid}

var
  eflag : Integer;
  a0, b0 : Double;
  flat : Double;
  esq : Double;
  deltaL, deltalambda : Double;
  lambda1, lambda2 : Double;
  phi1, phi2 : Double;
  sinphi1, cosphi1 : Double;
  sinphi2, cosphi2 : Double;
  l1, l2 : Double;
  term1, term2 : Double;
  es : EllipseStruct;

  begin {function Converge}

    eflag := GetEllipseStuff(es, gs.geoid);

    If (eflag = WICBADGEOID) Then
      begin
        result := WICBADGEOID;
        exit;
      end;

    a0 := es.major;
    b0 := es.minor;
    flat := (a0 - b0) / a0;
    esq := 2.0 * flat - Sqr(flat);       //eccentricity squared

    lambda1 := DegToRad(gs.Longitude1);
    lambda2 := DegToRad(gs.Longitude2);
    deltalambda := Abs(lambda2 - lambda1); //order does not matter
    phi1 := DegToRad(gs.Latitude1);
    phi2 := DegToRad(gs.Latitude2);
    sinphi1 := Sin(phi1);
    cosphi1 := Cos(phi1);
    sinphi2 := Sin(phi2);
    cosphi2 := Cos(phi2);

    //first compute length of arc at latitude1
    term1 := a0 * cosphi1 * deltalambda;
    term2 := Sqrt(1.0 - esq * sqr(sinphi1));
    l1 := term1 / term2;                   //arc length in meters

    //now compute length of arc at latitude2
    term1 := a0 * cosphi2 * deltalambda;
    term2 := Sqrt(1.0 - esq * sqr(sinphi2));
    l2 := term1 / term2;                   //arc length in meters
    deltaL := l2 - l1;

    gs.Distance := deltaL;
    result := WICNOERROR;

  end;  {function Converge}

function LL2UTM(var utm : UTMStruct) : integer;

{This method converts a latatude/longitude pair to the corresponding}
{UTM grid coordinates.}
{User supplies:}
{   Latitude}
{   Longitude}
{   Geoid}
{in a UTMStructure}
{Method returns:}
{    UTM Easting}
{    UTM Northing}
{    UTM Zone Number}
{    UTM Zone Letter}
{    UTM Central Longitude}
{    UTM Grid Scale Factor}
{in the same UTMStructure}

{The method impliments the algorithm as published in Map Projections -}
{'a Working Manual, USGS Professional paper 1395.}

{the function returns WICNOERROR if successful, WICBADGEOID if unable}
{to get the requested geoid data or WICINVALIDUTMZONE for invalid zone}
{information.}

var
  eflag, geoid : Integer;
  a0, b0 : Double;
  m, m0 : Double;
  e2, e4, e6 : Double;
  eprime2, eprime4, eprime6, eprime8 : Double;
  flat : Double;
  a : Double;
  n, n1, t1  : Double;
  theta, rtheta : Double;
  a1, a12, a13, a14, a15, a16 : Double;
  tanphi, tan2phi, ets, c1, c2, c3, c4, c5, l, ls, rcm, conv : Double;
  lambda : Double;
  rlambda : Double;
  dl, dl3, dl5, dl7 : Double;
  lambda0 : Double;
  rlambda0 : Double;
  phi : Double;
  rphi : Double;
  sinphi, cosphi : Double;
  cos2phi, cos4phi, cos6phi, cos8phi : Double;
  term1 : Double;
  term2 : Double;
  term3 : Double;
  term4 : Double;
  x : Double;
  y : Double;
  k : Double;
  zone : ZoneStruct;
  es : EllipseStruct;

  begin {function LL2UTM}

    geoid := utm.geoid;
    eflag := GetEllipseStuff(es, geoid);
    If (eflag = WICBADGEOID) Then
      begin
        LL2UTM := WICBADGEOID;
        Exit;
      End;

    a0 := es.major;
    b0 := es.minor;

    zone.Longitude := utm.Longitude;
    zone.Latitude := utm.Latitude;

    eflag := ComputeZone(zone);
    If eflag <> WICNOERROR Then
      begin
        LL2UTM := WICINVALIDUTMZONE;
        Exit;
      end;

    lambda0 := zone.CentralLongitude;

    //return central longitude information
    utm.CentralLongitude := zone.CentralLongitude;
    rcm := DegToRad(utm.CentralLongitude);
    utm.ZoneNumber := zone.ZoneNumber;
    utm.ZoneLetter := zone.ZoneLetter;

    lambda := utm.Longitude;
    rlambda0 := DegToRad(lambda0);
    rlambda := DegToRad(lambda);
    phi := utm.Latitude;
    rphi := DegToRad(phi);
    sinphi := Sin(rphi);
    cosphi := Cos(rphi);
    cos2phi := sqr(cosphi);
    cos4phi := sqr(cos2phi);
    cos6phi := cos2phi * cos4phi;
    cos8phi := sqr(cos4phi);
    tanphi := sinphi / cosphi;
    tan2phi := sqr(tanphi);
    dl := rlambda - rcm;
    l := dl * cosphi;
    ls := sqr(l);
    dl3 := dl * sqr(dl);
    dl5 := dl3 * sqr(dl);
    dl7 := dl5 * sqr(dl);

    //SIGN CONVENTION:
    //     north latitudes and east longitudes are positive

    //compute flatting from geoid ellipse constants
    flat := (a0 - b0) / a0;

    //compute eccentricity sqrd
    e2 := 2.0 * flat - sqr(flat);         //e^2 first eccentricity sqrd
    e4 := sqr(e2);                       //e^4
    e6 := e4 * e2;                       //e^6

    theta := utm.Latitude;
    rtheta := DegToRad(theta);

    //compute e prime from equation (8-12)
    eprime2 := e2 / (1.0 - e2);          //second eccentricity sqrd
    eprime4 := sqr(eprime2);
    eprime6 := eprime2 * eprime4;
    eprime8 := sqr(eprime4);

    //compute the convergence - grid north
    //ets := eprime2 * sqr(cosphi)
    //c2 := -tn
    //c3 := (1# + 3# * ets + 2# * sqr(ets)) / 3#
    //c5 := (2# - ts) / 15#
    //conv := c2 * l * (1# + ls * (c3 + c5 * ls)) 'grid north

    c2 := sinphi;
    c3 := sinphi * cos2phi / 3.0 * (1.0 + 3.0 * eprime2 +
            2.0 * eprime4 * cos4phi);
    c4 := 2.0 - tan2phi + 15.0 * eprime2 * cos2phi + 35.0 * eprime4 * cos4phi -
            15.0 * tan2phi * eprime2 * cos2phi + 33.0 * eprime6 * cos6phi -
            50.0 * tan2phi * eprime4 * cos4phi + 11.0 * eprime8 * cos8phi -
            60.0 * tan2phi * eprime6 * cos6phi;
    c4 := sinphi * cos4phi / 15.0 * c4;
    c5 := sinphi * cos6phi / 315.0 * (7.0 - 26.0 * tan2phi +
            2.0 * sqr(tan2phi));

    conv := dl * c2 + dl3 * c3 + dl5 * c4 + dl7 * c5;

    a := a0;

    //compute N using equation (4-20 pg 61)
    n1 := a / Sqrt(1.0 - e2 * sqr(Sin(rtheta)));

    //compute T using equation (8-13)
    t1 := sqr(Tan(rtheta));

    //compute C using equation (8-14)
    c1 := eprime2 * sqr(Cos(rtheta));

    //compute A using equation (8-15)
    a1 := (rlambda - rlambda0) * Cos(rtheta);
    a12 := sqr(a1);                         //a^2
    a13 := a12 * a1;                        //a^3
    a14 := a13 * a1;                        //a^4
    a15 := a14 * a1;                        //a^5
    a16 := a15 * a1;                        //a^6

    m0 := 0.0;

    //compute M using equation (3-21)
    //this expression is more general for any geoidlipsoid

    term1 := rphi * (1.0 - e2 / 4.0 - 3.0 * e4 / 64.0 - 5.0 * e6 / 256.0);
    term2 := Sin(2.0 * rphi) * (3.0 * e2 / 8.0 + 3.0 * e4 / 32.0 +
                45.0 * e6 / 1024.0);
    term3 := Sin(4.0 * rphi) * (15.0 * e4 / 256.0 + 45.0 * e6 / 1024.0);
    term4 := Sin(6.0 * rphi) * 35.0 * e6 / 3072.0;
    m := a * (term1 - term2 + term3 - term4);


    //compute x (east) from equation (8-9)
    term1 := WICK0 * n1;
    term2 := a1 + (1.0 - t1 + c1) * a13 / 6.0;
    term3 := (5.0 - 18.0 * t1 + sqr(t1) + 72.0 * c1 - 58.0 * eprime2) *
             a15 / 120.0;
    x := term1 * (term2 + term3);

    //compute y (north) from equation (8-10)
    term1 := m - m0;
    term2 := n1 * Tan(rphi);
    term3 := a12 / 2.0 + (5.0 - t1 + 9.0 * c1 + 4.0 * sqr(c1)) * a14 / 24.0;
    term4 := (61.0 - 58.0 * t1 + sqr(t1) + 600.0 * c1 - 330.0 * eprime2) *
               a16 / 720.0;
    y := WICK0 * (term1 + term2 * (term3 + term4));

    //compute k from equation (8-11)
    k := WICK0 * (1.0 + (1.0 + eprime2 * Cos(rphi) * Cos(rphi)) *
               sqr(x) / (2.0 * sqr(WICK0) * sqr(n1)));

    //return easting and northing and local scale factor
    x := x + WICFALSEEAST;
    utm.East := x;

    If (Sgn(utm.Latitude) = WICLATSOUTH) Then
        y := y + WICFALSESOUTH
    Else
        y := y + WICFALSENORTH;


    utm.North := y;
    utm.GridSF := k;
    utm.ZoneLetter := zone.ZoneLetter;
    utm.Gamma := RadToDeg(conv);         //return as decimal degrees
    RESULT := WICNOERROR;                //flag no error

  end; {function LL2UTM}

function UTM2LL(var utm : UTMStruct) : integer;

{This function converts a UTM coordinate pair to the corresponding}
{latitude/longitude.}

{this function impliments the algorithm as published in}
{ Map Projections - a working manual, USGS Professional paper}
{ 1395.}
{User supplies:}
{   Geoid}
{   UTM Easting}
{   UTM Northing}
{   UTM Zone Letter}
{   UTM Zone Number}
{in a UTMStructure}

{function returns:}
{   UTM Latitude}
{   UTM Longitude}
{   UTM Central Longitude}
{in the same UTMStructure.}

{the function returns WICNOERROR if successful else it returns}
{WICBADGEOID}


var
  eflag : Integer;
  a0, b0 : Double;
  m, m0, n, n2, n3, n4, G, sigma : Double;
  e2, eprime2 : Double;
  flat : Double;
  e1, e12, e13, e14 : Double;
  c1, n1, r1 : Double;
  d, d2, d3, d4, d5, d6 : Double;
  a, u : Double;
  tmp : Double;
  phi, phi1, fpphi : Double;
  term1, term2, term3, term4, term5, term6 : Double;
  lambda, rlambda : Double;
  utmlat : Double;
  utmlon : Double;
  East, North : Double;
  c2, c3, c5 : Double;
  s1, s2, s4, s6, s8 : Double;
  x1, x2, x3, x4, x5, x7 : Double;
  p1, psi, psi1, psi2, psi3, psi4 : Double;
  t, t1, t2, t3, t4, t5, t6 : Double;
  conv, sinphi, cosphi : Double;
  geoid : Integer;
  es : EllipseStruct;

  begin {function UTM2LL}

    //get ellipse number for constants
    geoid := utm.geoid;
    eflag := GetEllipseStuff(es, geoid);

    If (eflag = WICBADGEOID) Then
      begin
        result := WICBADGEOID;
        exit;
      end;

    a0 := es.major;
    b0 := es.minor;


    East := utm.East - WICFALSEEAST;
    If (utm.ZoneLetter < 'N') Then     //southern hemisphere
      North := utm.North - WICFALSESOUTH
     Else
      North := utm.North - WICFALSENORTH;

    //SIGN CONVENTION:
    //     north latitudes and east longitudes are positive

    //compute flatting from ellipse constants
    flat := (a0 - b0) / a0;

    //compute first excentricity squared
    e2 := 2.0 * flat - sqr(flat);
    //second eccentricity sqrd equation 8-12
    eprime2 := e2 / (1.0 - e2);

    //now compute m0 using equation (3.22)
    m0 := 0.0;                                 //for UTM

    //compute m from equation (8-20)
    m := m0 + North / WICK0;

    //compute e1 from equation(3-24)
    e1 := (1.0 - Sqrt(1.0 - e2)) / (1.0 + Sqrt(1.0 - e2));
    a := a0;                                 //major axis in meters

    //compute u using equation (7-19)
    u := m / (a * (1.0 - e2 / 4.0 - 3.0 * e2 * e2 / 64.0 -
          5.0 * e2 * e2 * e2 / 256.0));
    //NOTE:u is in radians

    e12 := e1 * e1;
    e13 := e12 * e1;
    e14 := e13 * e1;

    //compute phi1 using equation (3-26)
    term1 := u;
    term2 := (3.0 * e1 / 2.0 - 27.0 * e13 / 32.0) * Sin(2.0 * u);
    term3 := (21.0 * e12 / 16.0 - 55.0 * e14 / 32.0) * Sin(4.0 * u);
    term4 := (151.0 * e13 / 96.0) * Sin(6.0 * u);
    term5 := (1097.0 * e14 / 512.0) * Sin(8.0 * u);
    //compute the footprint latitude
    phi1 := term1 + term2 + term3 + term4 + term5;
    //NOTE:phi1 is in radians

    //{compute c1 using equation (8-21)
    c1 := eprime2 * Cos(phi1) * Cos(phi1);

    //compute t using equation (8-22)
    t := Tan(phi1) * Tan(phi1);

    //{compute n1 from equation (8-23)}
    //radius of curvature of the ellipsoid in the prime vertical
    n1 := a / Sqrt((1.0 - e2 * Sin(phi1) * Sin(phi1)));
    //compute the radius of curvature of the ellipsoid in the plane
    //of the meridian
    n := 1.0 - e2 * sqr(Sin(phi1));
    n2 := sqr(n);
    n3 := n * n2;
    p1 := a * (1.0 - e2) / Sqrt(n3);

    psi1 := n1 / p1;
    psi2 := sqr(psi1);
    psi3 := psi2 * psi1;
    psi4 := sqr(psi2);

    //compute the convergence
    //method from GDA Tech Manual chapter 5
    t1 := Tan(phi1);
    t2 := sqr(t1);
    t3 := t1 * t2;
    t4 := sqr(t2);
    t5 := t4 * t1;
    t6 := t2 * t4;

    x1 := East / (WICK0 * n1);
    x3 := x1 * sqr(x1);
    x5 := x3 * x2;
    x7 := x5 * x2;

    term1 := -t1 * x1;
    term2 := (t1 * x3 / 3.0) * (-2.0 * psi2 + 3.0 * psi1 + sqr(t1));
    term3 := (t1 * x5 / 15.0) * (psi4 * (11.0 - 24.0 * t2) -
          3.0 * psi3 * (8.0 - 23.0 * t2) + 5.0 * psi2 *
          (3.0 - 14.0 * t2) + 30.0 * psi1 * t2 + 3.0 * t4);
    term4 := (t1 * x7 / 315.0) * (17.0 + 77.0 * t2 + 105.0 * t4 + 45.0 * t6);
    conv := term1 + term2 + term3 + term4; //radians
    utm.Gamma := RadToDeg(conv);            //return decimal degrees

    //compute r1 from equation (8-24)
    tmp := (1.0 - e2 * Sin(phi1) * Sin(phi1));
    tmp := Sqrt(tmp * tmp * tmp);
    r1 := a * (1.0 - e2) / tmp;

    //compute d from equation (8-25)
    d := East / (n1 * WICK0);
    d2 := d * d;
    d3 := d2 * d;
    d4 := d3 * d;
    d5 := d4 * d;
    d6 := d5 * d;

    //compute phi from equation (8-17)
    term1 := phi1;
    term2 := (n1 * Tan(phi1) / r1);
    term3 := d2 / 2.0 - (5.0 + 3.0 * t + 10.0 * c1 - 4.0 * sqr(c1) -
            9.0 * eprime2) * d4 / 24.0;
    term4 := (61.0 + 90.0 * t + 298.0 * c1 + 45.0 * sqr(t) -
            252.0 * eprime2 - 3.0 * sqr(c1)) * d6 / 720.0;
    phi := term1 - term2 * (term3 + term4);    //in radians

    utm.Latitude := ModLatitude(phi);          //constrain to -90 to 90
    utm.Latitude := RadToDeg(utm.Latitude);    //decimal degrees

    //compute lambda from equation (8-18)
    utm.CentralLongitude := (utm.ZoneNumber - 1.0) * 6.0 - 180.0 + 3.0;
    term1 := utm.CentralLongitude;
    term2 := d - (1.0 + 2.0 * t + c1) * d3 / 6.0;
    term3 := (5.0 - 2.0 * c1 + 28.0 * t - 3.0 * sqr(c1) + 8.0 * eprime2 +
            24.0 * sqr(t)) * d5 / 120.0;
    lambda := term1 + RadToDeg((term2 + term3) / Cos(phi1));

    utm.Longitude := lambda;

    result := WICNOERROR;

  end;  {function UTM2LL}


function VInverse(var gs : GeoStruct) : Integer;

{Solution of the geodetic inverse problem after T. Vincenty}
{function is effective of any azimuth and any distance short}
{of antipodal. Start and end lat/long must not be a geograpic}
{pole. Latitudes and longitudes are positive north and east.}
{Given: latitude and longitude of two points, VInverse will}
{compute the ellipsoidal distance (in meters) and forward and}
{reverse azimuths

{user supplies:}
{ Point 1 Latitude}
{ Point 1 Longitude}
{ Point 2 Latitude}
{ Point 2 Longitude}
{ Required geoid number}
{in a GeoStructure}
{function returns:}
{ Azimuth of point 2 from point 1 - Azimuth12}
{ Azimuth of point 1 from point 2 - Azimuth21}
{ Distance between points in Meters}
{in the same structure}

{function returns WICNOERROR if successful else it returns error code}
{ERRORS RETURNED}
{       WICANTIPODAL - for antipodal lat/longs}
{       WICBADGEOID - for bad geoid number}
{       WICNOCONVERGE if loop fails to converge
{       WICSAMEPT - lat1/long1 and lat2/long2 same point}
{         NOTE: this error flag is not fatal - function returns}
{               0 for azimuths and distance.}

var
   eflag :  Integer;
   icount : integer;
   lat1 :  double;
   long1 :  double;
   lat2 :  double;
   long2 :  double;
   A, a0 :  double;
   B, b0 :  double;
   flat :  double;
   C, r, s :  double;
   u2, x :  double;
   sinu1, sinu2 :  double;
   cosu1, cosu2 :  double;
   tanu1, tanu2 :  double;
   sigma : double;
   lambda, lambda0, testlambda, L :  double;
   sinsigma, sin2sigma, s2s, ss :  double;
   cossigma, cos2sigmam, c2sm, cs :  double;
   tansigma :  double;
   sinalpha :  double;
   cosalpha :  double;
   dsigma :  double;
   alpha12, alpha21 :  double;
   tanalpha12, tanalpha21 :  double;
   es :  EllipseStruct;
   testL : double;

const
  MAXCT : integer = 100;  //max loops

  begin //function VInverse
  
    lat1 := DegToRad(gs.Latitude1);
    lat2 := DegToRad(gs.Latitude2);
    long1 := DegToRad(gs.Longitude1);
    long2 := DegToRad(gs.Longitude2);
    icount := 0;
    testL := gs.longitude2 - gs.longitude1;

    //check for antipodal points
    if IsAntipodal(gs.latitude1, gs.latitude2,
                  gs.longitude1, gs.longitude2)  then
      begin
        result := WICANTIPODAL;
        exit;
      end;

   //same point detection
    If (Abs(gs.Latitude1 - gs.Latitude2) < 0.000001) and
       (Abs(gs.Longitude1 - gs.Longitude2) < 0.000001) then
      begin
        gs.Azimuth12 := 0.0;
        gs.Azimuth21 := 0.0;
        gs.Distance := 0.0;
        result := WICSAMEPT;
        exit;
      end;

    eflag := GetEllipseStuff(es, gs.geoid);
    if (eflag = WICBADGEOID) then
      begin
        result := WICBADGEOID;
        exit;
      end;

    a0 := es.major;
    b0 := es.minor;
    flat := (a0 - b0) / a0;
    r := 1.0 - flat;

    tanu1 := r * Tan(lat1);
    tanu2 := r * Tan(lat2);

    x := ArcTan(tanu1);
    cosu1 := Cos(x);
    sinu1 := Sin(x);

    x := ArcTan(tanu2);
    cosu2 := Cos(x);
    sinu2 := Sin(x);

    L := long2 - long1;
    lambda := L;

    repeat
      Inc(icount);
      testlambda := lambda;

      //equation 14
      s2s := Sqr(cosu2 * Sin(lambda)) +
              Sqr(cosu1 * sinu2 - sinu1 * cosu2 * Cos(lambda));
      ss := abs(Sqrt(s2s));  //sin(sigma)
      //equation 15
      cs := sinu1 * sinu2 + cosu1 * cosu2 * Cos(lambda);  //cos(sigma)

      sigma := ArcTan2(ss,cs);    //ArcCos(cs);
      //no need for equation 16
      //equation 17
      sinalpha := cosu1 * cosu2 * Sin(lambda) / ss;
      x := ArcSin(sinalpha);
      cosalpha := Cos(x);
      //equation 18
      c2sm := cs - (2.0 * sinu1 * sinu2 / Sqr(cosalpha));
      //equation 10
      C := flat / 16.0 *
           Sqr(cosalpha) *
           (4.0 + flat *
           (4.0 - 3.0 * Sqr(cosalpha)));

      //equation 11
      lambda := L +
                (1.0 - C) *
                flat * sinalpha *
                (sigma + C * ss *
                (c2sm + C *
                cs * (-1.0 + 2.0 * Sqr(c2sm))));

    until (Abs(testlambda - lambda) <= WICEPS) or (icount > MAXCT);

    //test failure to converge
    If icount > MAXCT then
      begin
        result := WICNOCONVERGE;
        exit;
      end;

    u2 := Sqr(cosalpha) *
          (Sqr(a0) - Sqr(b0)) / Sqr(b0);

    A :=  1.0 +
          (u2 / 16384.0) *
          (4096.0 + u2 *
          (-768.0 + u2 *
          (320.0 - 175.0 * u2)));

    B := (u2 / 1024.0) *
         (256.0 + u2 *
         (-128.0 + u2 *
         (74.0 - 47.0 * u2)));

    dsigma := B * ss *
              (c2sm + (B / 4.0) *
              (cs * (-1.0 + 2.0 * Sqr(c2sm)) -
              (B / 6.0) * c2sm *
              (-3.0 + 4.0 * Sqr(ss)) *
              (-3.0 + 4.0 * Sqr(c2sm))));

    s := b0 * A * (sigma - dsigma);

    alpha12 := ArcTan2(cosu2 * Sin(lambda),
      (cosu1 * sinu2 - sinu1 * cosu2 * Cos(lambda)));

    alpha21 := ArcTan2(cosu1 * Sin(lambda),
        (-sinu1 * cosu2 + cosu1 * sinu2 * Cos(lambda))) - PI;

    alpha12 := ModAzimuth(alpha12);      //constrain value
    alpha21 := ModAzimuth(alpha21);      //ditto
    gs.Azimuth12 := RadToDeg(alpha12);   //convert to decimal degrees
    gs.Azimuth21 := RadToDeg(alpha21);   //ditto
    gs.Distance := s;                    //distance in meters
    result := WICNOERROR                 //return success

  end;  //function VInverse

function VDirect(var gs : GeoStruct) : Integer;

{Solution of the geodetic direct problem after T. Vincenty}
{Given: latitude and longitude of a point and the geodetic}
{azimuth and ellipsoidal distance to a second point, VDirect}
{will compute the latitude and longitude of the second point}
{and the reverse azimuth}

{user supplies:}
{ Point 1 Latitude}
{ Point 1 Longitude}
{ Azimuth of point 2 from point 1 - Azimuth12}
{ distance of point 2 from point 2 in meters}
{ Required geoid number}
{in a GeoStructure}
{function returns:}
{ Latitude of point 2 - Latitude2}
{ Longitude of point 2 - Longitude2}
{ Azimuth of point 1 from point 2 - Azimuth21}
{in the same structure}

{function returns:}
{   WICNOERROR for success}
{   WICBADGEOID if retrival of ellipsoid data fails}
{   WICZERODIST if distance to second point is zero}
{     NOTE: this error is not fatal. VDirect returns}
{           0 for azimuth21 and lat1/long1 for lat2/long2}

var
   eflag : Integer;
   lat1, lat2, long1, long2 : double;
   az12, az21 : double;
   s, a0, b0 : double;
   flat, r : double;
   u1, tanu1, sinu1, cosu1, tansigma1, sinalpha, cosalpha : double;
   a, b, c, usqr : double;
   sigma, sigma1, deltasigma, twosigmam, lastsigma : double;
   costwosigmam : double;
   term1, term2, term3, term4 : double;
   l, lambda, tanlambda, omega : double;
   ss, cs, c2sm : double;
   es : EllipseStruct;
   sa12, sa21 : double;

  begin //function VDirect

    lat1 := DegToRad(gs.Latitude1);
    long1 := DegToRad(gs.Longitude1);
    az12 := DegToRad(gs.Azimuth12);
    s := gs.Distance;

    //handle zero distance
    If s = 0.0 Then
      begin
        gs.Latitude2 := gs.Latitude1;
        gs.Longitude2 := gs.Longitude1;
        gs.Azimuth21 := 0.0;
        result := WICZERODIST;
        exit;
      end;

    eflag := GetEllipseStuff(es, gs.geoid);

    If (eflag = WICBADGEOID) Then
      begin
        VDirect := WICBADGEOID;
        exit;
      end;

    a0 := es.major;
    b0 := es.minor;
    flat := (a0 - b0) / a0;
    r := 1.0 - flat;
    tanu1 := r * Tan(lat1);

    tansigma1 := tanu1 / Cos(az12);          //eq 1

    u1 := ArcTan(tanu1);
    sinu1 := Sin(u1);
    cosu1 := Cos(u1);

    sinalpha := cosu1 * Sin(az12);           //eq 2
    cosalpha := Sqrt(1.0 - sqr(sinalpha));

    usqr := sqr(cosalpha) * (sqr(a0) - sqr(b0)) / sqr(b0);

    term1 := usqr / 16384.0;
    term2 := 4096.0 + usqr * (-768.0 + usqr * (320.0 - 175.0 * usqr));
    a := 1.0 + term1 * term2;
    b := usqr / 1024.0 * (256.0 + usqr * (-128.0 + usqr *
          (74.0 - 47.0 * usqr)));            //eq 4

    sigma := s / (b0 * a);
    sigma1 := ArcTan(tansigma1);

    repeat
      lastsigma := sigma;
      twosigmam := 2.0 * sigma1 + sigma;     //eq 5
      ss := Sin(sigma);                      //sin(sigma)
      cs := Cos(sigma);                      //cos(sigma)
      c2sm := Cos(twosigmam);                //cos(twosigmam)

      deltasigma := b * ss * (c2sm + b / 4.0 * (cs * (-1.0 + 2.0 * sqr(c2sm)) -
          b / 6.0 * c2sm * (-3.0 + 4.0 * sqr(ss)) *
          (-3.0 + 4.0 * sqr(c2sm))));        //eq 6

      sigma := s / (b0 * a) + deltasigma;    //eq 7

    until (Abs(sigma - lastsigma) <= WICEPS);

    twosigmam := 2.0 * sigma1 + sigma;       //eq 5
    ss := Sin(sigma);                        //sin(sigma)
    cs := Cos(sigma);                        //cos(sigma)
    c2sm := Cos(twosigmam);                  //cos(twosigmam)
    term1 := sinu1 * cs + cosu1 * ss * Cos(az12);
    term2 := sqr(sinalpha) + sqr(sinu1 * ss - cosu1 * cs * Cos(az12));
    term3 := r * Sqrt(term2);
    lat2 := ArcTan2(term1, term3);

    term1 := ss * Sin(az12);
    term2 := cosu1 * cs - sinu1 * ss * Cos(az12);
    tanlambda := term1 / term2;
    lambda := ArcTan2(term1, term2);

    c := flat / 16.0 * sqr(cosalpha) * (4.0 + flat *
          (4.0 - 3.0 * sqr(cosalpha)));

    omega := lambda - (1.0 - c) * flat * sinalpha *
          (sigma + c * ss * (c2sm + c * cs * (-1.0 + 2.0 * sqr(c2sm))));

    long2 := long1 + omega;

    term1 := -sinu1 * ss + cosu1 * cs * Cos(az12);
    az21 := ArcTan2(sinalpha, term1);
    az21 := ModAzimuth(az21) - PI;

    sa21 := Sin(az21);
    sa12 := Sin(az12);

    lat2 := ModLatitude(lat2);
    long2 := ModLongitude(long2);


    gs.Latitude2 := RadToDeg(lat2);
    gs.Longitude2 := RadToDeg(long2);
    gs.Azimuth21 := RadToDeg(az21);
    if gs.azimuth21 > 360.0 then
      gs.azimuth21 := gs.azimuth21 - 360.0;
    if gs.azimuth21 < 0.0 then
      gs.azimuth21 := gs.azimuth21 + 360.0;

      
    result := WICNOERROR;

  end;  //function VDirect
{-----------------------------------------------------------------------------
  Procedure: LL2Ruler
  Author:    Victor Fraenckel
  Date:      04-Oct-2003
  Arguments: LLRulerStruct
  Result:    integer
-----------------------------------------------------------------------------}
{
  this function converts a Latitude/Longitude into a measurement suitable
  for plotting the position on a paper map. The user specifies the map scale
  measurement units and map datum and the function returns the easting and
  northing components of the coordinates.
  the function returns:
      WICNOERROR if successful
      VInverse errors if unsuccessful

}
  function LL2Ruler(var ls : LLRulerStruct):integer;

{
  this function converts a Latitude/Longitude into a measurement suitable
  for plotting the position on a paper map. The user specifies the map scale
  measurement units and map datum and the function returns the easting and
  northing components of the coordinates.
  the function returns:
      WICNOERROR if successful
      VInverse errors if unsuccessful

}
  var
    east : double;
    north : double;
    gs : GeoStruct;
    eflag : integer;

  begin

    //first compute the easting distance
    //this is the distance between cornerlat/cornerlong and
    //cornerlat/longitude
    gs.latitude1 := ls.cornerlat;
    gs.longitude1 := ls.cornerlong;
    gs.latitude2 := ls.cornerlat ;
    gs.longitude2 := ls.longitude;
    gs.geoid := ls.usergeoid;
    eflag := VInverse(gs);
    if eflag = WICNOERROR then
      east := gs.distance      //easting
    else
      begin
        result := eflag;
        exit;
      end;

     //next compute the northing distance
    //this is the distance between cornerlat/cornerlong and
    //latitude/cornerlong
    gs.latitude1 := ls.cornerlat;
    gs.longitude1 := ls.cornerlong;
    gs.latitude2 := ls.latitude;
    gs.longitude2 := ls.cornerlong;
    gs.geoid := ls.usergeoid;
    eflag := VInverse(gs);
    if eflag = WICNOERROR then
      north := gs.distance      //northing
    else
      begin
        result := eflag;
        exit;
      end;

    //now convert east/north into user units
   case ls.userunits of
      MM:
        begin
          east := (east * WICMTOMM) / ls.mapscale;
          north := (north * WICMTOMM) / ls.mapscale;
        end;
      CM:
        begin
          east := (east * WICMTOCM) / ls.mapscale;
          north := (north * WICMTOCM) / ls.mapscale;
        end;
      Inches:
        begin
          east := (east * WICMTOIN) / ls.mapscale;
          north := (north * WICMTOIN) / ls.mapscale;
        end;
    end;  //case

    ls.easting := east;
    ls.northing := north;
    result :=WICNOERROR;

  end;  //function LL2Ruler

  {-----------------------------------------------------------------------------
  Procedure: Ruler2LL
  Author:    Victor Fraenckel
  Date:      04-Oct-2003
  Arguments: var ls : LLRulerStruct
  Result:    integer
-----------------------------------------------------------------------------}

  function Ruler2LL(var ls : LLRulerStruct) : integer;

  {
    This function converts a ruler measurement of the easting and northing
    of a point to the corresponding latitude and longitude of the point.

    NOTE: you MUST provide the latitude and longitude of the lower left
    corner of the map and make your easting and northing measurements from
    that corner.
    You supply the measurement units and the map's datum.

    The function returns:

      WICNOERROR if successful
      else it returns VDirect errors
  }

  var
    gs : GeoStruct;
    eflag : integer;
    lat : double;
    long : double;
    east, north : double;

  begin
    //convert to meters
    case ls.userunits of
      MM:
        east := (ls.easting * ls.mapscale) / WICMTOMM;
      CM:
        east := (ls.easting * ls.mapscale) / WICMTOCM;
      Inches:
        east := (ls.easting * ls.mapscale) / WICMTOIN;
    end;  //case

    //compute the lat/long of the easting
    gs.latitude1 := ls.cornerlat;
    gs.longitude1 := ls.cornerlong;
    gs.distance := east;
    gs.geoid := ls.usergeoid;
    gs.azimuth12 := 90.0;     //azimuth from lower left
    eflag := VDirect(gs);
    if eflag = WICNOERROR then
      long := gs.longitude2
    else
      begin
        result := eflag;
        exit;
      end;
    //convert to meters
    case ls.userunits of
      MM:
        north := (ls.northing * ls.mapscale) / WICMTOMM;
      CM:
        north := (ls.northing * ls.mapscale) / WICMTOCM;
      Inches:
        north := (ls.northing * ls.mapscale) / WICMTOIN;
    end;  //case

    //compute the lat/long of the northing
    gs.latitude1 := ls.cornerlat;
    gs.longitude1 := ls.cornerlong;
    gs.distance := north;
    gs.azimuth12 := 0.0;          //azimuth from lower left
    gs.geoid := ls.usergeoid;
    eflag := VDirect(gs);
    if eflag = WICNOERROR then
      lat := gs.latitude2
    else
      begin
        result := eflag;
        exit;
      end;
    ls.latitude := lat;
    ls.longitude := long;
    result := WICNOERROR;

  end;  //function Ruler2LL

 {================= initialization ==================================}

initialization


  for ict := 1 to WICNCHOICES do
     begin
        ellipse[ict].major:=major[ict];
        ellipse[ict].minor:=minor[ict];
        ellipse[ict].elName:=ename[ict];
     end;

  for ict := 1 to WICNDCHOICES do
     begin
        datum[ict].datumName:=dname[ict];
        datum[ict].datumNumber:=ellipnum[ict];
     end;

 {====================== end of unit =================================}

end.


