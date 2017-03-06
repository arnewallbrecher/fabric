unit ColorTbl;
{ Exports type TColorTable and a few subroutines that work
on/with it.
The TColorTable is meant to be used for palette like data structures
of max. 256 entries, which are used in GIF files and BMP files.
The entries in the TColorTable (TColorItem) are three bytes
with r,g,b values.

Reinier Sterkenburg, Delft, The Netherlands

 March 97: - created
22 Apr 97: - corrected a very stupid bug: the shifts for
             DecodeColor were wrong (4, 2 in stead of 16, 8)
30 Aug 97: - Made TColorTable a class again. If I keep using a
             packed record (RColorTable) for the storage and I/O of the
             colors this works.
31 Aug 97: - Added use of RFastColorTable. This complicatest things a bit but
             it improves the performance of GetColorIndex.
             See also GifUnit.BitmapToPixelmatrix
 2 Dec 97: - added function TColorTable.GetColor
}

interface

uses
  Graphics;        { Imports TColor }

type
  TColorItem = packed record      { one item a a color table }
    Red: byte;
    Green: byte;
    Blue: byte;
  end; { TColorItem }

  RColorTable = packed record
    Count: Integer;                      { Actual number of colors }
    Colors: packed array[0..255] of TColorItem;  { the color table }
  end; { TColorTable }

  RFastColorTable = record
    Colors: array[0..255] of TColor;
  end; { RFastColorTable }

  TColorTable = class(TObject)
  private
    function  GetCount: Integer;
    procedure SetCount(NewValue: Integer);
  public
    CT: RColorTable;
    FCT: RFastColorTable;
    constructor Create(NColors: Word);
    procedure AdjustColorCount;
    procedure CompactColors;
    function  GetColor(Index: Byte): TColor;
    function  GetColorIndex(Color: TColor): Integer;

    property Count: Integer read GetCount write SetCount;
  end; { TColorTable }

implementation

function DecodeColor(Color: TColor): TColorItem;
begin { DecodeColor }
  Result.Blue   := (Color shr 16) and $FF;
  Result.Green := (Color shr 8) and $FF;
  Result.Red  := Color and $FF;
end;  { DecodeColor }

function EncodeColorItem(r, g, b: Byte): TColorItem;
begin { EncodeColorItem }
  Result.Red := r;
  Result.Green := g;
  Result.Blue := b;
end;  { EncodeColorItem }

(***** RColorTable *****)

procedure TColorTable_CreateBW(var CT: RColorTable);
begin { TColorTable_CreateBW }
  CT.Count := 2;
  CT.Colors[0] := EncodeColorItem(0, 0, 0);
  CT.Colors[1] := EncodeColorItem($FF, $FF, $FF);
end;  { TColorTable_CreateBW }

procedure TColorTable_Create16(var CT: RColorTable);
begin { TColorTable_Create16 }
  CT.Count := 16;
  CT.Colors[ 0] := EncodeColorItem($00, $00, $00); { black }
  CT.Colors[ 1] := EncodeColorItem($80, $00, $00); { maroon }
  CT.Colors[ 2] := EncodeColorItem($00, $80, $00); { darkgreen }
  CT.Colors[ 3] := EncodeColorItem($80, $80, $00); { army green }
  CT.Colors[ 4] := EncodeColorItem($00, $00, $80); { dark blue }
  CT.Colors[ 5] := EncodeColorItem($80, $00, $80); { purple }
  CT.Colors[ 6] := EncodeColorItem($00, $80, $80); { blue green }
  CT.Colors[ 7] := EncodeColorItem($80, $80, $80); { dark gray }
  CT.Colors[ 8] := EncodeColorItem($C0, $C0, $C0); { light gray }
  CT.Colors[ 9] := EncodeColorItem($FF, $00, $00); { red }
  CT.Colors[10] := EncodeColorItem($00, $FF, $00); { green }
  CT.Colors[11] := EncodeColorItem($FF, $FF, $00); { yellow }
  CT.Colors[12] := EncodeColorItem($00, $00, $FF); { blue }
  CT.Colors[13] := EncodeColorItem($FF, $00, $FF); { magenta }
  CT.Colors[14] := EncodeColorItem($00, $FF, $FF); { lt blue green }
  CT.Colors[15] := EncodeColorItem($FF, $FF, $FF); { white }
end;  { TColorTable_Create16 }

procedure TColorTable_Create256(var CT: RColorTable);
var ColorNo: Byte;
begin { TColorTable_Create256 }
  CT.Count := 256;
  for ColorNo := 0 to 255
  do CT.Colors[ColorNo] := EncodeColorItem(ColorNo, ColorNo, ColorNo);
end;  { TColorTable_Create256 }

(***** TColorTable *****)

constructor TColorTable.Create(NColors: Word);
begin { TColorTable.Create }
  inherited Create;
  case NColors of
    0, 2: TColorTable_CreateBW(CT);
    16: TColorTable_Create16(CT);
    256: TColorTable_Create256(CT);
  end;
  CT.Count := NColors;
end;  { TColorTable.Create }

procedure TColorTable.AdjustColorCount;
begin { TColorTable.AdjustColorCount }
  if CT.Count > 2
  then if CT.Count <= 4
  then CT.Count := 4
  else if CT.Count <= 8
  then CT.Count := 8
  else if CT.Count <= 16
  then CT.Count := 16
  else if CT.Count <= 32
  then CT.Count := 32
  else if CT.Count <= 64
  then CT.Count := 64
  else if CT.Count <= 128
  then CT.Count := 128
  else if CT.Count < 256
  then CT.Count := 256;
end;  { TColorTable.AdjustColorCount }

procedure TColorTable.CompactColors;
var
  i: integer;
begin { TColorTable.CompactColors }
  for i := 0 to CT.Count-1
  do CT.Colors[i] := DecodeColor(FCT.Colors[i]);
end;  { TColorTable.CompactColors }

function TColorTable.GetColor(Index: Byte): TColor;
begin
  with CT.Colors[Index]
  do Result :=  Blue shl 16 + Green shl 8 + Red;
end;

function TColorTable.GetColorIndex(Color: TColor): Integer;
begin { GetColorIndex }
  Result := CT.Count - 1;
  while Result >= 0
  do begin
    if Color = FCT.Colors[Result]
    then exit
    else Dec(Result);
  end;
end;  { TColorTable.GetColorIndex }

function TColorTable.GetCount: Integer;
begin
  Result := CT.Count;
end;  { TColorTable.GetCount }

procedure TColorTable.SetCount(NewValue: Integer);
begin
  CT.Count := NewValue;
end;  { TColorTable.SetCount }

end.
