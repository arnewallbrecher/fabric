Unit Basic;

interface

uses Dialogs, Standard, Globvar, Texte, SysUtils, Graphics,
     Math, Classes, StdCtrls, Windows,ShlObj, ActiveX, Forms;

   function  Arccos (Argument:real):real;
   function  Arcsin (Argument:real):real;
   function  Azimut (X, Y:real):word;
   procedure CLFarben (FarbeS:string; var FarbeTc : TColor);
   function  Dlgmessage (Typ: TMsgDlgType; InfoS, Text: string;
             Be: byte): byte;
   procedure FarbTausch;
   function  Fallen (Z:real):shortint;
   procedure Findedll (Dhandle:integer; Name:string);
   function GetSpecialFolder(hWindow: HWND; Folder: Integer): String;
//   function  GetSpecialFolder(const CSIDL : integer) : string;
   function  Hoch(Basis,Exponent:real):real;
   procedure KubischeGl (a3,a2,a1,a0:real;var x1,x2,x3:extended);
   function  LeftS(Gestext:string;Teil:integer):string; {linker Stringrest}
   function  Max(a:double; b:double):double;
   function  MidS(Text:string;Start,Laenge:byte):string;
   function  Nachkomma(var ZeileS:string):string;
   procedure PsLinien (LinienTypS:string; var LinienTyp :TPenStyle);
   function  RightS(Gestext:string;Teil:integer):string;{rechter String}
   function  SpaceS(Laenge:byte):string;         {Leerstring}
   function  TabS(WortS:string; Vorkomma,Nachkomma: byte):string;
   function  Tan(Argument:real):real;
   procedure Texttest (TextS:string; NrZeile:word);
   function  UcaseS(Text:string):string;
   function  WeiterF:boolean;
   procedure AngleTextOut(CV: TCanvas; const sText: String; x, y, angle:integer);

implementation

  function Arccos (Argument:real):real;
  begin
    if Argument<> 0 then
      Arccos := arctan (sqrt(1-sqr(Argument))/Argument)
    else Arccos := Pi/2;
  end;

  function Arcsin (Argument:real):real;
  var
    Wu : real;
  begin
    Wu := sqrt(1-sqr(Argument));
    if Wu < 0.0001 then ArcSin := Pi/2 else
      Arcsin := Arctan (Argument / sqrt(1 - sqr(Argument)));
  end;

  function  Azimut (X, Y:real):word;
  const
    Bo = Pi/180;
  var
    Lazi : integer;
  begin
    if X <> 0 then
    begin
      Lazi := round(arctan(Y/X)/Bo);
      if Lazi = 0 then Lazi := abs(Lazi);
      if Lazi < 0 then Lazi := Lazi + 180;
    end
    else
    begin
      Lazi := 90;
      if Y < 0 then Lazi := 270;
    end;
    if (Lazi = 0) and (X < 0) then Lazi := 180;
    if (Lazi = 0) and (X > 0) then Lazi := 0;
    if (Lazi <> 0) and (Lazi <> 180) then
      if Y < 0 then Lazi := Lazi + 180;
    if Lazi >=360 then Lazi := Lazi - 360;
    Azimut := Lazi;
  end;

procedure CLFarben (FarbeS:string; var FarbeTc : TColor);
begin
  FarbeS := UcaseS (FarbeS);
  if FarbeS = 'BLACK'    then FarbeTc := clBlack;
  if FarbeS = 'MAROON'   then FarbeTc := clMaroon;
  if FarbeS = 'GREEN'    then FarbeTc := clGreen;
  if FarbeS = 'OLIVE'    then FarbeTc := clOlive;
  if FarbeS = 'NAVY'     then FarbeTc := clNavy;
  if FarbeS = 'PURPLE'   then FarbeTc := clPurple;
  if FarbeS = 'TEAL'     then FarbeTc := clTeal;
  if FarbeS = 'GRAY'     then FarbeTc := clGray;
  if FarbeS = 'SILVER'   then FarbeTc := clSilver;
  if FarbeS = 'RED'      then FarbeTc := clRed;
  if FarbeS = 'LIME'     then FarbeTc := clLime;
  if FarbeS = 'YELLOW'   then FarbeTc := clYellow;
  if FarbeS = 'BLUE'     then FarbeTc := clBlue;
  if FarbeS = 'FUCHSIA'  then FarbeTc := clFuchsia;
  if FarbeS = 'AQUA'     then FarbeTc := clAqua;
  if FarbeS = 'WHITE'    then FarbeTc := clWhite;
  if FarbeS = '20%BLACK' then Grau[1] := true;
  if FarbeS = '40%BLACK' then Grau[2] := true;
  if FarbeS = '60%BLACK' then Grau[3] := true;
  if FarbeS = '80%BLACK' then Grau[4] := true;
end;

function Dlgmessage(Typ: TMsgDlgType; InfoS, Text: string;
                    Be: byte): byte;
var
  i     : word;
  B     : TButton;
begin
  if Be = 1 then Dlg := CreateMessageDialog(Text,Typ,
            [mbYes,mbNo]);
  if Be = 2 then Dlg := CreateMessageDialog(Text,Typ,
            [mbOk,mbRetry]);
  if Be = 3 then
    Dlg := CreateMessageDialog(Text,Typ, [mbRetry]);
  if Be = 4 then
    Dlg := CreateMessageDialog(Text,Typ, [mbOK,mbCancel]);
  Dlg.Caption  := InfoS;
  Dlg.Position := poMainFormCenter;
  try
    if SpracheS = 'ENGLISH' then
    begin
      for i := 0 to Dlg.ControlCount-1 do
        if Dlg.Controls[i] is TButton then
          begin
            B := TButton(Dlg.Controls[i]);
            if B.Caption = 'Abbrechen' then B.Caption := 'Cancel';
            if B.Caption = '&Ja' then B.Caption := 'Yes';
            if B.Caption = '&Nein' then B.Caption := 'No';
            if B.Caption = '&Wiederholen' then B.Caption := 'Retry';
          end;
    end;
    DlgMessage := Dlg.ShowModal;
  finally
    Dlg.free;
  end;
end;

procedure FarbTausch;
begin
  if HintFarbe = clBlack then
  begin
    if ObjektFarbe = clBlack then
    begin
      ObjektFarbe := clWhite;
      exit;
    end;
    if ObjektFarbe = clRed then
    begin
      ObjektFarbe := clAqua;
      exit;
    end;
    if ObjektFarbe = clBlue then
    begin
      ObjektFarbe := clYellow;
      exit;
    end;
    if ObjektFarbe = clLime then
    begin
      ObjektFarbe := clFuchsia;
      exit;
    end;
    if ObjektFarbe = clFuchsia then
    begin
      ObjektFarbe := clLime;
      exit;
    end;
    if ObjektFarbe = clYellow then
    begin
      ObjektFarbe := clBlue;
      exit;
    end;
    if ObjektFarbe = clWhite then
    begin
      ObjektFarbe := clBlack;
      exit;
    end;
     if ObjektFarbe = clAqua then
    begin
      ObjektFarbe := clRed;
      exit;
    end;
  end;
  if HintFarbe = clAqua then
  begin
    if ObjektFarbe = clBlue then
    begin
      ObjektFarbe := clFuchsia;
      exit;
    end;
     if ObjektFarbe = clRed then
    begin
      ObjektFarbe := clBlack;
      exit;
    end;
     if ObjektFarbe = clYellow then
    begin
      ObjektFarbe := clLime;
      exit;
    end;
     if ObjektFarbe = clWhite then
    begin
      ObjektFarbe := clAqua;
      exit;
    end;
     if ObjektFarbe = clBlack then
    begin
      ObjektFarbe := clRed;
      exit;
    end;
     if ObjektFarbe = clLime then
    begin
      ObjektFarbe := clYellow;
      exit;
    end;
     if ObjektFarbe = clFuchsia then
    begin
      ObjektFarbe := clBlue;
      exit;
    end;
  end;
end;

function Fallen (Z:real):shortint;
const
  Bo = Pi/180;
begin
  Z  := abs(Z);
  if Z < 1 then Fallen := round(arctan(Z/sqrt(1-sqr(Z)))/Bo)
  else Fallen := 90;
end;

  procedure Findedll (Dhandle:integer; Name:string);
  begin
    Ausb := false;
    if Dhandle = 0 then
    begin
      KomS[1] := ' ';
      KomS[2] := '  ' + Name + '  ';
      KomS[3] := '  ' + Tx(29) + '  '; {nicht gefunden}
      ReihenB := 3;
      Kasten;
      Messagedlg (ZeilenS, MtError, [mbCancel], 0);
      Ausb := true;
    end;
  end;

//  function  GetSpecialFolder(const CSIDL : integer) : string;
//ggf. konstanten definieren

//die funktion zum holen des pfades
function GetSpecialFolder(hWindow: HWND; Folder: Integer): String;
const
  CSIDL_DESKTOP = $0; // Desktop
  CSIDL_INTERNET = $1; // Internet
  CSIDL_PROGRAMS = $2; // Startmen�: Programme
  CSIDL_CONTROLS = $3; // Systemsteuerung
  CSIDL_PRINTERS = $4; // Drucker
  CSIDL_PERSONAL = $5; // Eigene Dateien
  CSIDL_FAVORITES = $6; // IE: Favoriten
  CSIDL_STARTUP = $7; // Autostart
  CSIDL_RECENT = $8; // Zuletzt benutzte Dokumente
  CSIDL_SENDTO = $9; // Senden an / SendTo
  CSIDL_BITBUCKET = $A; // Papierkorb
  CSIDL_STARTMENU = $B; // Startmen�
  CSIDL_MYMUSIC = $D; // Eigene Musik
  CSIDL_MYVIDEO = $E; // Eigene Videos
  CSIDL_DESKTOPDIRECTORY = $10; // Desktopverzeichnis
  CSIDL_DRIVES = $11; // Mein Computer
  CSIDL_NETWORK = $12; // Netzwerk
  CSIDL_NETHOOD = $13; // Netzwerkumgebung
  CSIDL_FONTS = $14; // Windows\Fonts
  CSIDL_TEMPLATES = $15; // Vorlagen
  CSIDL_COMMON_STARTMENU = $16; // "All Users" - Startmen�
  CSIDL_COMMON_PROGRAMS = $17; // "All Users" - Programme
  CSIDL_COMMON_STARTUP = $18; // "All Users" - Autostart
  CSIDL_COMMON_DESKTOPDIRECTORY = $19; // "All Users" - Desktop
  CSIDL_APPDATA = $1A; // Anwendungsdaten
  CSIDL_PRINTHOOD = $1B; // Druckumgebung
  CSIDL_LOCAL_APPDATA = $1C; // Lokale Einstellungen\Anwendungsdaten
  CSIDL_COMMON_FAVORITES = $1F; // "All Users" - Favoriten
  CSIDL_INTERNET_CACHE = $20; // IE: Tempor�re Internetdateien
  CSIDL_COOKIES = $21; // IE: Cookies
  CSIDL_HISTORY = $22; // IE: Verlauf
  CSIDL_COMMON_APPDATA = $23; // "All Users" - Anwendungsdaten
  CSIDL_WINDOWS = $24; // Windows
  CSIDL_SYSTEM = $25; // Windows\System32
  CSIDL_PROGRAM_FILES = $26; // C:\Programme
  CSIDL_MYPICTURES = $27; // Eigene Bilder
  CSIDL_PROFILE = $28; // Anwenderprofil (Benutzername)
  CSIDL_SYSTEMX86 = $29; // Windows\System32
  CSIDL_PROGRAM_FILES_COMMON = $2B; //Gemeinsame Dateien
  CSIDL_COMMON_TEMPLATES = $2D; // "All Users" - Vorlagen
  CSIDL_COMMON_DOCUMENTS = $2E; // "All Users" - Dokumente
  CSIDL_COMMON_ADMINTOOLS = $2F; // "All Users" - Verwaltung
  CSIDL_ADMINTOOLS = $30; // Startmen�\Programme\Verwaltung
var
  pMalloc: IMalloc;
  pidl: PItemIDList;
  Path: PChar;
begin
  // get IMalloc interface pointer
  if (SHGetMalloc(pMalloc) <> S_OK) then
  begin
    MessageBox(hWindow, 'Couldn''t get pointer to IMalloc interface.', 
               'SHGetMalloc(pMalloc)', 16);
    Exit;
  end;
  // retrieve path
  SHGetSpecialFolderLocation(hWindow, Folder, pidl);
  GetMem(Path, MAX_PATH);
  SHGetPathFromIDList(pidl, Path);
  Result := Path;
  FreeMem(Path);

  // free memory allocated by SHGetSpecialFolderLocation
  pMalloc.Free(pidl);
end;

//nun kann man den pfad einfach auslesen per
//DirectS :=GetSpecialFolder(Handle,CSIDL_APPDATA);
//bzw. f�r das Userprofile
//Edit1.Text:=GetSpecialFolder(Handle,CSIDL_PROFILE);






{  Var
    RecPath : PansiChar;
  begin
    RecPath := StrAlloc(MAX_PATH);
    try
      FillChar(RecPath^,MAX_PATH, 0);
      if SHGetSpecialFolderPath(0,RecPath,CSIDL,false) then
      begin
        result := RecPath
      end
      else result := '';
    finally
      StrDispose(RecPath);
    end;
  end;}

  function Hoch(Basis:real;Exponent:real):real;
  var
    X : real;
  begin
    X := ln(Basis) * Exponent;
    Hoch := exp(X);
  end;

  procedure KubischeGl (a3,a2,a1,a0:real;var x1,x2,x3:extended);
  {Form: a3*xhoch3 + a2*xhoch2 + a1*x +a0 = 0 }
  var
    p, q, r    :real;
    sig        : integer;
    pqTest     : real;
    phi, psi   : real;
    z1, z2, z3 : real;
    Nenner     : real;
    cosin      : real;

  begin
    Z1  := 0;
    Sig := 0;
    z2  := 0;
    z3  := 0;
    if a3 = 0 then a3 := 0.00001;
    p := a1/(3*a3) - sqr(a2/(3*a3));
    q := power((a2/(3*a3)),3)-a1*a2/(6*sqr(a3))+a0/(2*a3);
    pqTest := power(p,3) + sqr(q);
    if q < 0 then sig := -1;
    if q = 0 then sig := 0;
    if q > 0 then sig := 1;
    if pqTest >= 0 then
    begin
      if p > 0 then
      begin
        r   := sig*sqrt(p);
        phi := arctan(power(r,3)/q);
        psi := arctan(power(tan(phi/2),1/3));
        z1 := -2* r/tan(2*psi);
        z2 := z1;
        z3 := z1;
      end;
      if p < 0 then
      begin
        r   := sig*sqrt(-p);
        phi := arcsin(power(r,3)/q);
        psi := arctan(power(tan(phi/2),1/3));
        z1  := -2*r/sin(psi);
        z2  := z1;
        z3  := z1;
      end;
    end
    else
    begin
      r := sig * sqrt(abs(p));
      if r = 0 then r := 0.00001;
      Nenner := q/power(r,3);
      phi := arccos(Nenner);
      z1 := -2* r * cos(phi/3);
      cosin := 60*Bo + phi/3;
      z2 := 2 * r * cos(cosin);
      cosin := 60*Bo-phi/3;
      z3 := 2 * r * cos(cosin);
    end;
    Nenner := 3 * a3;
    if Nenner = 0 then Nenner := 0.0001;
    x1 := z1 - a2/Nenner;
    x2 := z2 - a2/Nenner;
    x3 := z3 - a2/Nenner;
  end;

  function LeftS(Gestext:string;Teil:integer):string;
  begin
    LeftS := copy(Gestext,1,Teil);
  end;

  function  Max(a:double; b:double):double;
  begin
    Result := 0.0;
    if a > b then Result := a;
    if b > a then Result := b;
    If a = b then Result := a;
  end;

  function  MidS(Text:string;Start,Laenge:byte):string;
  begin
    MidS := copy(Text,Start,Laenge);
  end;

  function Nachkomma (var ZeileS:string):string;
  var
    i,j,k :byte;
    x     :string;
  begin
    k := pos(',',ZeileS);
    j := pos(':',ZeileS);
    i := length(ZeileS)-k;
    x := (RightS(ZeileS,i));
    if k = 0 then Nachkomma := '' else
    begin
      Kompress (x);
      Nachkomma := x;
    end;
    ZeileS := LeftS(ZeileS,j-1);
    Kompress(ZeileS);
    repeat
      if LeftS(ZeileS,1) = ' ' then delete (ZeileS,1,1);
    until LeftS(ZeileS,1) <> ' ';
  end;

  procedure PsLinien (LinienTypS:string; var LinienTyp :TPenStyle);
  begin
    LinienTypS := UcaseS (LinienTypS);
    if LinientypS = 'SOLID'      then LinienTyp := psSolid;
    if LinientypS = 'DASH'       then LinienTyp := psDash;
    if LinientypS = 'DOT'        then LinienTyp := psDot;
    if LinientypS = 'DASHDOT'    then LinienTyp := psDashDot;
    if LinientypS = 'DASHDOTDOT' then LinienTyp :=psDashDotDot;
  end;

  function RightS(Gestext:string;Teil:integer):string;
  begin
    RightS := copy(Gestext,length(Gestext)-Teil+1,Teil);
  end;

  function SpaceS(Laenge:byte):string;
  var
    X:string;
    i:byte;
  begin
    X :='';
    for i := 1 to Laenge do X := X+' ';
    SpaceS := X;
  end;

  function Tan(Argument:real):real;
  begin
    Tan := sin(Argument) / cos(Argument);
  end;

  function TabS (WortS:string; Vorkomma, Nachkomma:byte):string;
  var
    Vorn    : byte;
    VornS   : string;
    HintenS : string;
  begin
    Vorn    := pos('.',WortS);
    VornS   := copy(WortS,1,Vorn-1);
    LeerLoeschen(VornS);
    VornS   := RightS('000000'+VornS,Vorkomma);
    delete(WortS,1,Vorkomma+1);
    LeerLoeschen(WortS);
    HintenS := LeftS(WortS+'0000000',Nachkomma);
    if Copy(HintenS,1,1) = '.' then
    begin
      delete(HintenS,1,1);
      HintenS := '0'+HintenS;
    end;
    TabS := VornS+'.'+HintenS;
  end;

  procedure Texttest (TextS:string; NrZeile:word);
  var
    Datnam : string;
    Text   : TStrings;
    Zeile  : string;
    ZS     : string;
    Laenge : byte;
  begin
    Datnam := 'Testconf.txt';
    Text := TStringList.create;
    Text.Capacity := 200;
    Text.LoadfromFile (DirectS+'\'+Datnam);
    Zeile := Text[NrZeile-1];
    Laenge := pos('�', Zeile)-1;
    Zeile := copy(Zeile, 1, Laenge);
    Text.free;
    if TextS <> Zeile then
    begin
      str (NrZeile,ZS);
      KomS[1] := Tx(412) + ZS;       {Fehler in der Datei Fabric.ini, Zeile }
      KomS[2] := ' ';
      KomS[3] := '"'+TextS+' " ';
      KomS[4] := ' ';
      KomS[5] := Tx(413)+' "'+Zeile+'" ';
      KomS[6] := ' ';
      ReihenB := 6;
      Kasten;
      if MessageDlg (ZeilenS, mtError, [mbCancel], 0) = 2 then
      begin
        MessageDlg (Tx(414) + ZS + ' in Fabric.ini',
                    mtInformation, [mbOK], 0);
        Ausb := true;
      end;
    end;
  end;

  function UcaseS(Text:string):string;
  var
    i :byte;
  begin
    for i := 1 to length(Text) do Text[i] := upcase(Text[i]);
    UcaseS := Text;
  end;

function WeiterF:boolean;
var
  i : byte;
begin
  WeiterF := false;
  for i := 1 to 120 do
  begin
    if WeiterB[i] then WeiterF := true;
  end;
end;

procedure AngleTextOut(CV: TCanvas; const sText: String; x, y, angle:integer);
var
  LogFont: TLogFont;
  SaveFont: TFont;
begin
  SaveFont := TFont.Create;
  SaveFont.Assign(CV.Font);
  GetObject(SaveFont.Handle, sizeof(TLogFont), @LogFont);
  with LogFont do
    begin
      lfEscapement := angle *10;
      lfPitchAndFamily := FIXED_PITCH or FF_DONTCARE;
    end; {with}
  CV.Font.Handle := CreateFontIndirect(LogFont);
  SetBkMode(CV.Handle, TRANSPARENT);
  CV.TextOut(x, y, sText);
  CV.Font.Assign(SaveFont);
  SaveFont.Free;
end;

end.






