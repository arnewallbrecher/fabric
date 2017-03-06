unit Standard;

interface
  procedure Hinweis (var Weiter: boolean);
  procedure Kompress (var NameS:string);
  procedure Neugrad (var Azimut:word; var Fallen:shortint);
  procedure NeugradR (var Azimut:word; var Fallen:word);
  procedure PfadWechsel (var DiscS:string);
  procedure LeerLoeschen (var LNameS:string);

implementation

uses Basic, Globvar, Texte, Dialogs, SysUtils, Controls,
     FileCtrl, unit1;

procedure Hinweis (var Weiter: boolean);
var
  i     :byte;
  Datei : TextFile;
  Typ   : TMsgDlgType;
begin
  Typ := mtInformation;
  for i :=1 to 12 do KomS[i] := Tx(30+i); {Text des Hinweises auf Copywright}
  KomS[13] := '  ';
  KomS[14] := Tx(1124);
  ReihenB := 15;
  Kasten;
  if DlgMessage (Typ, 'Information', ZeilenS, 1) = mrNo then
  begin 
    KonfigZeileS[96] := 'Show copyright             :,NO';
    assignFile(Datei,DirectS+'\'+'Fabric.ini');
    rewrite (Datei);
    for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
    closefile (Datei);
  end;
  Weiter := false;
end;

procedure Kompress (var NameS:string);
var
  J:byte;
begin
  J := length(NameS);
  if J > 0 then
  begin
    While copy(NameS,J,1) = ' ' do
    begin
      J := J-1;
      if J = 0 then break;
    end;
  end;
  NameS := LeftS(NameS,J);
end;

procedure LeerLoeschen (var LNameS:string);
var
  j     : word;
  Leer : boolean;
begin
  repeat
    for j := 1 to Length(LNameS) do
    begin
      Leer := false;
      if copy(LNameS,j,1) = ' ' then
      begin
        delete (LNameS,j,1);
        Leer := true;
        break;
      end;  
    end;
  until Leer = false; //j >= Length(LNameS);
end;

procedure Neugrad (var Azimut:word; var Fallen: shortint);
var
  Az,Fa :real;
begin
  Az     := Azimut;
  Fa     := Fallen;
  Azimut := round(Az-Az/10);
  Fallen := round(Fa-Fa/10);
end;

procedure NeugradR (var Azimut:word; var Fallen: word);
var
  Az,Fa :real;
begin
  Az     := Azimut;
  Fa     := Fallen;
  Azimut := round(Az-Az/10);
  Fallen := round(Fa-Fa/10);
end;

procedure PfadWechsel (var DiscS: string);
const
  Verz = 1000;
var
  NeuerPfadS : string;
  Datei      : TextFile;
  i          : integer;
  Typ        : TMsgDlgType;  
begin
  Typ := mtConfirmation;
  if DlgMessage (Typ, 'Information', Tx(1005)+chr(13)+' '+chr(13)+DiscS+chr(13)+
                 ' '+chr(13)+Tx(1006),1) = mrNo then
  begin
    NeuerPfadS := Tx(1002);
    if SelectDirectory (DiscS, [sdAllowCreate, sdPerformCreate,
          sdPrompt], Verz) then
    begin
      MessageDlg(NeuerPfadS+' '+DiscS, mtInformation,
        [mbOK], 0);
      Kompress (DiscS);
      if (RightS (DiscS, 1) <> ':') and (RightS(DiscS, 1) <> '\')
        then DiscS := DiscS + '\';
    end;
    if SetCurrentDir (DirectS) then getDir (0, DirectS);
  end;
  KonfigZeileS[14] := DiscS;
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
end;
end.
