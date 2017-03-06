unit PlottRoutinen;

interface
uses Serial;
type
  TMyPlotter = class
  private
    FLastErrorCode: Integer;
    FSerial : TSerialPort;
    function GetLastErrorCode: Integer;
    function GetIntAnswer(Question:string):Integer;

  protected

  public
    constructor Create(aComport:TCommport);
    destructor Destroy; override;
    procedure Open;
    procedure Close;
    procedure WriteData(Data:String);
    property LastErrorCode : Integer read GetLastErrorCode;
  end;


implementation
uses sysutils;
{ TMyPlotter }

procedure TMyPlotter.Close;
begin
  FSerial.ClosePort;
end;

constructor TMyPlotter.Create(aComport: TCommport);
begin
  inherited Create;
  FSerial:=TSerialPort.Create(nil);
  FSerial.CommPort:=aComport;
end;

destructor TMyPlotter.Destroy;
begin
  FSerial.ClosePort;
  FSerial.Free;
  inherited;
end;

function TMyPlotter.GetIntAnswer(Question: string): Integer;
var Antwort, Wert : string;
begin
  FSerial.SendData(pchar(Question),length(Question));
  Antwort:='';
  repeat
    Wert:=FSerial.GetData;
    Antwort:=Antwort+Wert;
  until pos(#13,Antwort)<>0;
  Result:=StrToInt(Antwort);
end;

function TMyPlotter.GetLastErrorCode: Integer;
begin
  Result:=-1;
end;

procedure TMyPlotter.Open;
var StartKommando : String;
begin
  StartKommando := #27'.@;16:';
  FSerial.OpenPort;
  FSerial.SendData(pchar(StartKommando),length(StartKommando));

end;



procedure TMyPlotter.WriteData(Data: String);

begin
  repeat
    FSerial.SendData(pchar(Data),length(Data));
  until GetIntAnswer(#27'.E')=0;
end;

end.
