unit Standard;

interface
  procedure Hinweis (var Weiter: boolean);
  procedure Kompress (var NameS:string);
  procedure Neugrad (var Azimut:word; var Fallen:shortint);

implementation

uses Basic, Globvar, Texte, Dialogs;

procedure Hinweis (var Weiter: boolean);

var
  i:byte;

begin
  for i :=1 to 11 do
  begin
    KomS[i] := Tx(31+i);         {Text des Hinweises auf Copywright}
  end;
  ReihenB := 11;
  Kasten;
  if MessageDlg (ZeilenS, mtInformation, mbOKCancel, 0) = 2 then
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

procedure Neugrad (var Azimut:word; var Fallen:shortint);
var
  Az,Fa :real;
begin
  Az     := Azimut;
  Fa     := Fallen;
  Azimut := round(Az-Az/10);
  Fallen := round(Fa-Fa/10);
end;

end.
