{$R-,S-,I+,D+,F-,V-,B-,N-,L+}                            { 880613 PEEM/gsp }
unit com01;

{ Bedient GLEICHZEITIG die 4 Schnittstellen eines XT
  beim Empfang von Zeichen (interruptgesteuert) und
  sendet Strings ueber eine beliebige Schnittstelle aus, wobei das Signal
  DTR den Traeger schaltet (TX-Driver Enable fuer RS485).
  }

interface


type
  ComNr_T  = 0..3;                         {** 4.11.93 von 1 auf 3 ****}
  Param_T  = array [ComNr_T] of byte;
  { Initialisierungsdaten fuer die UARTs: selbe Bedeutung wie beim INT14h
    aber fuer jede Schnittstelle ein eigenes Byte:
    76543210
    765.......Baudrate   000=110Bd, 100=1200Bd, 101=2400Bd, 111=9600Bd etc.
       43.....Parity     00=No, 01=Odd, 11=Even-Parity
         2....Stopbits   0=1Stop, 1=2Stop-Bits
          10..Datenbits  00=5Data, 01=6Data, 10=7Data, 11=8Data-Bits          }

procedure InitCom (cm1:byte;Param : Param_T);
  { Das Initialisierungsprogramm muss und darf nur EINMAL aufgerufen werden   }

function gets (ComNr : ComNr_T; delim : char): string;
  { gibt einen String zurueck, der von der Schnittstelle ComNr kommt und
    mit dem Buchstaben 'delim' aufhoert (meistens CR oder LF). Wird kein
    Delimiter gefunden, wird der ganze Buffer ausgelesen und noch das Timeout
    abgewartet, ob noch Zeichen kommen.                                       }

procedure puts (ComNr : ComNr_T; line : string);
  { sendet den String 'line' ueber die Schnittstelle ComNr und schaltet
    dabei die DTR Leitung aktiv, bis das letzte Zeichen draussen ist          }

implementation

const
  ComNrs  : set of ComNr_T = [0..3];   { bei Karte PC-8S auf 0..7 erhoehen }
                                       {**** 4.11.93  von 1 auf 3 ***}
  com     : array [ComNr_T] of word = ($03f8, $02f8, $03e8, $02e8);
  bufmax    =  1019; { Platz fuer einige Bildschirmzeilen ist genug }
  IRQ_Cont  =  $20;
  IRQ_Mask  =  $21;
  EOI       =  $20;
  mask      =  $18; {= IRQ4 = int0C & IRQ3 = INT0B }

type
  RXBuf_T  = array [0..bufmax] of byte;
  RXBuffer = record
             head, tail : 0..bufmax;
             dat : RXBuf_T;
             end;

var
  altexit, altint, altintc : pointer;
  RXBuf           : array [ComNr_T] of RXBuffer;

procedure ReadInt; interrupt;
  { diese Prozedur wird bei jedem eintreffenden Zeichen ausgeloest
    und schreibt das Zeichen in den zugehoerigen Ringbuffer, wenn der
    voll ist, wird das Zeichen vergessen                                      }
  var
      ComNr   : ComNr_T;
      RXC     : byte;   { das empfangene Zeichen }
      lochead : integer;
  begin
  port [IRQ_Cont] := EOI;  { sonst geht gar nichts mehr }
    for ComNr := 0 to 3    {**** 4.11.93 ****}
    do with RXBuf [ComNr]
       do if not odd (port [COM [ComNr] + 2])  { Bit 0 nicht gesetzt? }
          then begin
               RXC := port [Com [ComNr]];
                  lochead := head;
                  if lochead = bufmax then lochead := 0 else inc (lochead);
                  if lochead <> tail
                  then begin
                       dat [head] := RXC;
                       head := lochead;
                       end;
               end;
  end;

function GetChar (ComNr : ComNr_T; var CH : char): boolean;
  { stellt fest, ob ein Zeichen im Buffer ist und holt es, wenn da }
  var leer    : boolean;
  begin
  with RXBuf [ComNr]
  do begin
     leer := tail = head;
     if not leer
     then begin
          CH := char (dat [tail] and $7f); { nur 7 bit ASCII Character }
          dat [tail] := 249;
          if tail = bufmax then tail := 0 else inc (tail);
          end
     else CH := #0;
     end;
  GetChar := not leer;
  end;


procedure InitCom (cm1:byte;Param : Param_T);
  { Initialisiert alle Schnittstellen nach Vorgabe und setzt Interrupts }
  const Baud : array [0..7] of integer = (1047,768,384,192,96,48,24,12);
  var i, j : integer;
      drop : byte;
  begin
  GetIntVec ($0b, altint);
  GetIntVec ($0c, altintc);
  altexit := ExitProc;
{  ExitProc := addr (ErrorExit); }
  SetIntVec ($0b, addr (ReadInt));
  SetIntVec ($0c, addr (ReadInt));
  i:=cm1;
     begin
     with RXBuf [i]
     do begin
        head := 0; tail := 0;
        end;
     port [Com [i] + 3] := $80;
     port [Com [i] + 0] := lo (Baud [(Param [i] shr 5) and $07]);
     port [Com [i] + 1] := hi (Baud [(Param [i] shr 5) and $07]);
     port [Com [i] + 3] := Param [i] and $1f;
     port [Com [i] + 4] := $0e; { RTS on }
     port [Com [i] + 1] := $01; { RX-Int enable }
     drop := port [Com [i]];    { dummy read }
     end;

  port [IRQ_Mask] := port [IRQ_Mask] and (not mask); { enable IRQ3 = INT0bh }
  end;

function gets (ComNr : ComNr_T; delim : char): string;
  var line : string;
      t : word;
      c : char;
      i, j : integer;
  begin
  line := '';
  if ComNr in ComNrS
  then begin
       t := 10000; {timeout}
       repeat if GetChar(ComNr, c) then begin line := line + c; t := 10000 end
                                   else dec(t);
       until (c = delim) or (length (line) = 255) or (t = 0) ;
       end;
  gets := line;
  end;

procedure puts (ComNr : ComNr_T; line : string);
  var i : integer;
  begin
  if (length (line) > 0) and (ComNr in ComNrS)
  then begin
       port [Com [ComNr] + 4] := $0f;                     { Carrier on }
       for i := 1 to length (line)
       do begin
          while (port [Com [ComNr] + 5] and $20) = 0 do   { wait ready };
          port [Com [ComNr]] := ord (line [i]);           { send char }
          end;
       while (port [Com [ComNr] + 5] and $40) = 0 do      { wait empty };
       port [Com [ComNr] + 4] := $0e;                     { Carrier off }
       end;
  end;

  { an dieser Stelle stand die procedure errorex }

end.
