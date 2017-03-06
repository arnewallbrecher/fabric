unit Seriell;
interface
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs;

{  type
    TDCB = record
      DCBLength  : Dword;
      Baudrate   : DWord;
      Flags      : Longint;
      wReserved  : Word;
      XONLim     : Word;
      XOFFLim    : Word;
      ByteSize   : Byte;
      Parity     : Byte;
      StopBits   : Byte;
      XONChar    : Char;
      XOFFChar   : Char;
      ErrorChar  : Char;
      EOFChar    : Char;
      EvtChar    : Char;
      wReserved1 : Word;
    end;}
  type
    TCommPort    = (cpCOM1, cpCOM2, cpCOM3, cpCOM4);
    TBaudrate    = (br110, br300, br600, br1200, br2400,
                    br4800, br9600, br14400, br19200, br38400,
                    br56000, br128000, br256000);
    TParityType  = (pcNone, pcEven, pcOdd, pcMark, pcSpace);
    TStopBits    = (sbOne, sbOnePtFive, sbTwo);
    TDataBits    = (db4, db5, db6, db7, db8);
    TFlowControl = (fcNone, fcXON_XOFF, fcRTS_CTS,
                    fsDSR_DTR);
    TNotifyTXEvent = procedure(Sender : TObject;
                     data : string) of Object;
    TNotifyRXEvent = procedure (Sender : TObject;
                     data : string) of Object;
  const
    dflt_CommPort               = cpCOM2;
    dflt_BaudRate               = br9600;
    dflt_ParityType             = pcNone;
    dflt_ParityErrorChecking    = false;
    dflt_ParityErrorChar        = 0;
    dflt_ParityErrorReplacement = false;
    dflt_StopBits               = sbOne;
    dflt_DataBits               = db8;
    dflt_XONChar                = $11; {ASCII 11h}
    dflt_XOFFChar               = $13;
    dflt_XONLim                 = 1024;
    dflt_XOFFLim                = 2048;
    dflt_ErrorChar              = 0;
    dflt_FlowControl            = fcNone;
    dflt_StripNullChars         = false;
    dflt_EOFChar                = 0;
  type
    TSerialPort = class(TComponent)
    private
      hCommPort               : THandle;
      fCommPort               : TCommPort;
      fBaudrate               : TBaudRate;
      fParityType             : TParityType;
      fParityErrorChecking    : Boolean;
      fParityErrorChar        : Byte;
      fParityErrorReplacement : Boolean;
      fStopBits               : TStopBits;
      fDataBits               : TDataBits;
      fXONChar                : Byte;
      fXOFFChar               : Byte;
      fXONLim                 : Word;
      fXOFFLim                : Word;
      fErrorChar              : Byte;
      fFlowControl            : TFlowControl;
      fStripNullChars         : Boolean;
      fEOFChar                : Byte;
      fOnTransmit             : TNotifyTXEvent;
      fOnReceive              : TNotifyRXEvent;
      fAfterTransmit          : TNotifyTxEvent;
      fAfterReceive           : TNotifyRXEvent;
      fRXBytes                : DWord;
      fTXBytes                : DWord;
      ReadBuffer              : String;
      procedure SetCommPort (Value: TCommPort);
      procedure SetBaudRate (Value: TBaudRate);
      procedure SetParityType (Value: TParityType);
      procedure SetParityErrorChecking (Value: Boolean);
      procedure SetParityErrorChar (Value: Byte);
      procedure SetParityErrorReplacement (Value: Boolean);
      procedure SetStopBits (Value: TStopBits);
      procedure SetDataBits (Value: TDataBits);
      procedure SetXONChar  (Value: Byte);
      procedure SetXOFFChar (Value: Byte);
      procedure SetXONLim   (Value: Word);
      procedure SetXOFFLim  (Value: Word);
      procedure SetErrorChar (Value: Byte);
      procedure SetFlowControl (Value: TFlowControl);
      procedure SetStripNullChars (Value: Boolean);
      procedure SetEOFChar  (Value: Byte);
      procedure Initialize_DCB;
    protected
    public
      constructor Create (AOwner : TComponent); override;
      destructor Destroy; override;
      function OpenPort (MyCommPort : TCommPort): Boolean;
      function ClosePort : Boolean;
      procedure SendData (data: PChar; size: DWord);
      function GetData : String;
      function PortIsOpen : Boolean;
      procedure FlushTX;
      procedure FlushRX;
    published
      property CommPort:
        TCommPort read fCommPort
                  write SetCommPort
                  default dflt_CommPort;
      property BaudRate:
        TBaudRate read fBaudRate
                  write SetBaudRate
                  default dflt_BaudRate;
      property ParityType :
        TParityType read fParityType
                    write SetParityType
                    default dflt_ParityType;
      property ParityErrorChecking:
        Boolean read fParityErrorChecking
                write SetParityErrorChecking
                default dflt_ParityErrorChecking;
      property ParityErrorChar:
        Byte read fParityErrorChar
             write SetParityErrorChar
             default dflt_ParityErrorChar;
      property ParityErrorReplacement:
        Boolean read fParityErrorReplacement
                write SetParityErrorReplacement
                default dflt_ParityErrorReplacement;
      property StopBits:
        TStopBits read fStopBits
                  write SetStopBits
                  default dflt_StopBits;
      property DataBits:
        TDataBits read fDataBits
                  write SetDataBits
                  default dflt_DataBits;
      property XONChar:
        Byte read fXONChar
             write SetXONChar
             default dflt_XONChar;
      property XOFFChar:
        Byte read fXOFFChar
             write SetXOFFChar
             default dflt_XOFFChar;
      property XONLim:
        Word read fXONLim
             write SetXONLim
             default dflt_XONLim;
      property XOFFLim:
        Word read fXOFFLim
             write SetXOFFLim
             default dflt_XOFFLim;
      property ErrorChar:
        Byte read fErrorChar
             write SetErrorChar
             default dflt_ErrorChar;
      property FlowControl:
        TFlowControl read fFlowControl
                     write SetFlowControl
                     default dflt_FlowControl;
      property StripNullChars:
        Boolean read fStripNullChars
                write SetStripNullChars
                default dflt_StripNullChars;
      property EOFChar:
        Byte read fEOFChar
             write SetEOFChar
             default dflt_EOFChar;
      property OnTransmit:
        TNotifyTXEvent read fOnTransmit
                       write fOnTransmit;
      property OnReceive:
        TNotifyRXEvent read fOnReceive
                       write fOnReceive;
      property AfterTransmit:
        TNotifyTXEvent read fAfterTransmit
                       write fAfterTransmit;
      property AfterReceive:
        TNotifyRXEvent read fAfterReceive
                       write fAfterReceive;
  end;
  procedure Register;
  procedure Schnittstelle;

implementation
{$R *.DFM}
constructor TSerialPort.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  hCommPort    := INVALID_HANDLE_VALUE;
  fCommPort    := dflt_CommPort;
  fBaudrate    := dflt_BaudRate;
  fParityErrorChecking := dflt_ParityErrorChecking;
  fStopBits    := dflt_StopBits;
  fDataBits    := dflt_DataBits;
  fXONChar     := dflt_XONChar;
  fXOFFChar    := dflt_XOFFChar;
  fXONLim      := dflt_XONLim;
  fXOFFLim     := dflt_XOFFLim;
  fErrorChar   := dflt_ErrorChar;
  fFlowControl := dflt_FlowControl;
  fOnTransmit  := Nil;
  fOnReceive   := Nil;
end;
destructor TSerialPort.Destroy;
begin
  ClosePort;
  inherited Destroy;
end;
function TSerialPortIsOpen: boolean;
var
  hCommPort : integer;
begin
  Result := hCommPort <> INVALID_HANDLE_VALUE;
end;
function TSerialPort.OpenPort (MyCommPort: TCommPort):
         Boolean;
var
  MyPort : PChar;
begin
  ClosePort;
  MyPort := PChar('COM'+ InttoStr(ord(fCommPort)+1));
  hCommPort := CreateFile(MyPort,
                          GENERIC_READ or GENERIC_WRITE,0,
                          Nil,OPEN_EXISTING,0,0);
  initialize_DCB;
  result := hCommPort <> INVALID_HANDLE_VALUE;
end;
function TSerialPort.ClosePort: Boolean;
begin
  FlushTX;
  FlushRX;
  result := CloseHandle(hCommPort);
  hCommPort := INVALID_HANDLE_VALUE;
end;
procedure TSerialPort.FlushRX;
begin
  if hCommPort = INVALID_HANDLE_VALUE then exit;
  PurgeComm(hCommPort,
            PURGE_RXABORT or PURGE_RXCLEAR);
  ReadBuffer := '';
end;
procedure TSerialPort.FlushTX;
begin
  if hCommPort = INVALID_HANDLE_VALUE then exit;
  PurgeComm(hCommPort,
            PURGE_TXABORT or PURGE_TXCLEAR);
end;
procedure TSerialPort.Initialize_DCB;
var
  MyDCB      : TDCB;
  MyBaudrate : integer;
begin
  if hCommPort = INVALID_HANDLE_VALUE then exit;
  GetCommState(hCommPort, MyDCB);
  case fBaudrate of
    br110    : MyBaudRate :=    110;
    br300    : MyBaudRate :=    300;
    br600    : MyBaudRate :=    600;
    br1200   : MyBaudRate :=   1200;
    br2400   : MyBaudRate :=   2400;
    br4800   : MyBaudRate :=   4800;
    br9600   : MyBaudRate :=   9600;
    br14400  : MyBaudRate :=  14400;
    br19200  : MyBaudRate :=  19200;
    br38400  : MyBaudRate :=  38400;
    br56000  : MyBaudRate :=  56000;
    br128000 : MyBaudRate := 128000;
    br256000 : MyBaudRate := 256000;
  end;
  case fParityType of
    pcNone  : MyDCB.Parity := NOPARITY;
    pcEven  : MyDCB.Parity := EVENPARITY;
    pcOdd   : MyDCB.Parity := ODDPARITY;
    pcMark  : MyDCB.Parity := MARKPARITY;
    pcSpace : MyDCB.Parity := SPACEPARITY;
  end;
  if fParityErrorChecking then inc(MyDCB.Flags,$0002);
  if fParityErrorReplacement then inc(MyDCB.Flags, $0021);
  MyDCB.ErrorChar := char(fErrorChar);
  case fStopBits of
    sbOne       : MyDCB.StopBits := ONESTOPBIT;
    sbOnePtFive : MyDCB.StopBits := ONE5STOPBITS;
    sbTwo       : MyDCB.StopBits := TWOSTOPBITS;
  end;
  case fDataBits of
    db4 : MyDCB.ByteSize := 4;
    db5 : MyDCB.ByteSize := 5;
    db6 : MyDCB.ByteSize := 6;
    db7 : MyDCB.ByteSize := 7;
    db8 : MyDCB.ByteSize := 8;
  end;
  case fFlowControl of
    fcXON_XOFF : MyDCB.Flags := MyDCB.Flags or $0020 or $0018;
    fcRTS_CTS  : MyDCB.Flags := MyDCB.Flags
                                or $0004 or
                                $0024*RTS_CONTROL_HANDSHAKE;
    fsDSR_DTR  : MyDCB.Flags := MyDCB.Flags or $0008 or
                                $0010*DTR_CONTROL_HANDSHAKE;
  end;
  if fStripNullChars then inc(MyDCB.Flags, $0022);
  MyDCB.XONChar  := char(fXONChar);
  MyDCB.XOFFChar := char(fXOFFChar);
  MyDCB.XONLim   := fXONLim;
  MyDCB.XOFFLim  := fXOFFLim;
  if EOFChar <> 0 then MyDCB.EOFChar := char(EOFChar);
  SetCommState(hCommPort,MyDCB);
end;
procedure TSerialPort.SendData (data: PChar; size: DWord;
var
  NumBytesWritten : DWord;
begin
  if hCommPort = INVALID_HANDLE_VALUE then exit;
  if assigned(fONTransmit) then fONTransmit(self.Data);
  WriteFile(hCommPort,Data^,Size, NumBytesWritten, Nil);
  if assigned(fAfterTransmit) then fAfterTransmit(self, Data);
end;}
function TSerialPort.GetData : string;
var
  NumBytesRead : DWord;
  BytesInQueue : LongInt;
  oStatus      : TComStat;
  dwErrorCode  : DWord;
begin
  if hCommPort = INVALID_HANDLE_VALUE then exit;
  if assigned(fONReceive) then fONReceive(self, ReadBuffer);
  ClearCommError(hCommPort, dwErrorCode, @oStatus);
  BytesInQueue := oStatus.cbInQue;
  if BytesInQueue > 0 then
  begin
    SetLength(ReadBuffer, BytesInQueue + 1);
    ReadFile(hCommPort,PChar(ReadBuffer)^,BytesInQueue,
             NumBytesRead, Nil);
    SetLength(ReadBuffer,StrLen(PChar(ReadBuffer)));
  end;
  if assigned(fAfterReceive) then fAfterReceive(self,ReadBuffer);
  result := ReadBuffer;
end;
procedure Schnittstelle;
begin
end;
end.

















