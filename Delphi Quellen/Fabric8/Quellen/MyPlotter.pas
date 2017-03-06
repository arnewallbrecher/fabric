unit MyPlotter;

interface
uses Serial, Dialogs;
type
  TMyPlotter = class
  private
    FLastErrorCode: Integer;
    FSerial : TSerialPort;
    function GetLastErrorCode: Integer;
    function GetIntAnswer(Question:string):Integer;
    function Getcommport: TCommport;
    procedure SetCommPort(const Value: TCommport);

  protected

  public
    constructor Create;
    destructor Destroy; override;
    procedure Open;
    procedure Close;
    procedure WriteData(Data:String);
    property Commport : TCommport read Getcommport write SetCommPort;
    property LastErrorCode : Integer read GetLastErrorCode;
  end;

implementation
uses sysutils, windows, Globvar;
{ TMyPlotter }

procedure TMyPlotter.Close;
begin
  FSerial.ClosePort;
end;

constructor TMyPlotter.Create;
begin
  inherited Create;
  FSerial:=TSerialPort.Create(nil);
end;

destructor TMyPlotter.Destroy;
begin
  FSerial.ClosePort;
  FSerial.Free;
  inherited;
end;

function TMyPlotter.Getcommport: TCommport;
begin
  Result:=FSerial.CommPort;
end;

function TMyPlotter.GetIntAnswer(Question: string): Integer;
var
  Antwort : string;
  Wert    : string;
  Count   : Integer;
begin
  FSerial.SendData(pchar(Question),length(Question));
  Antwort:='';
  Count:=0;
  repeat
    Wert:=FSerial.GetData;
    Antwort:=Antwort+Wert;
    inc(count);
  until (pos(#13,Antwort)<>0) or (Count>10000);
  if Count>10000 then
  begin
    FLastErrorCode:=-1;
    result:=17;
  end else
    Result:=StrToInt(copy(Antwort,1,pos(#13,Antwort)-1));
end;

function TMyPlotter.GetLastErrorCode: Integer;
begin
  Result:=FLastErrorCode;
end;

procedure TMyPlotter.Open;
var StartKommando : String;
begin
  StartKommando := #27'.@;16:';
  FSerial.OpenPort;
  FSerial.SendData(pchar(StartKommando),length(StartKommando));
end;

procedure TMyPlotter.SetCommPort(const Value: TCommport);
begin
  FSerial.CommPort:=Value;
end;

procedure TMyPlotter.WriteData(Data: String);
var Ergebnis   :Integer;
    Wiederholt : Boolean;
begin
  Wiederholt:=False;
  repeat
    sleep(Schlafe);
    FSerial.SendData(pchar(Data),length(Data));
    Ergebnis:=GetIntAnswer(#27'.E');
    if Ergebnis<>0 then
    begin
      Wiederholt:=True;
      FLastErrorCode:=Ergebnis;
    end;
  until Ergebnis=0;
  if not Wiederholt then
    FLastErrorCode:=Ergebnis;
end;
end.
