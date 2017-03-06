unit Kollekt;

interface

uses classes;

type PIntCollection = ^TIntCollection;
     TIntCollection = class (TCollection)
                        procedure FreeItem(Item:Pointer); virtual;
                      end;
     PRealCollection = ^TRealCollection;
     TRealCollection = class (TCollection)
                         procedure FreeItem(Item:Pointer); virtual;
                       end;

     PShortIntCollection = ^TShortIntCollection;
     TShortIntCollection = class(TCollection)
                             procedure FreeItem(Item:Pointer); virtual;
                           end;

     PWordCollection = ^TWordCollection;
     TWordCollection = class(TCollection)
                         procedure FreeItem(Item:Pointer); virtual;
                       end;

     PByteCollection = ^TByteCollection;
     TByteCollection = class (TCollection)
                        procedure FreeItem(Item:Pointer); virtual;
                      end;

     Pbooleancollection = ^Tbooleancollection;
     Tbooleancollection = class (Tcollection)
                            procedure FreeItem(Item:pointer); virtual;
                          end;

     Pstringcollection  = ^Tstringcollection;
     Tstringcollection  = class (Tcollection)
                            procedure FreeItem(Item:pointer); virtual;
                          end;

     PInteger = ^Integer;
     PReal    = ^Real;
     PShortInt= ^ShortInt;
     PWord    = ^Word;
     PByte    = ^Byte;
     Pboolean = ^Boolean;
     Pstring  = ^String;

var aInt     : PInteger;
    aReal    : Preal;
    aShortInt: PShortInt;
    aWord    : PWord;
    aByte    : PByte;
    aBoolean : Pboolean;
    aString  : Pstring;

implementation

procedure TIntCollection.FreeItem(Item:Pointer);
begin
  if item <> NIL then dispose(PInteger(Item));
end;

procedure TRealCollection.FreeItem(Item:Pointer);
begin
  if item <> NIL then dispose(PReal(Item));
end;

procedure TShortIntCollection.FreeItem(Item:Pointer);
begin
  if item <> NIL then dispose(PShortInt(Item));
end;

procedure TWordCollection.FreeItem(Item:Pointer);
begin
  if item <> NIL then dispose(PWord(Item));
end;

procedure TByteCollection.FreeItem(Item:Pointer);
begin
  if item <> NIL then dispose(PByte(Item));
end;

procedure Tbooleancollection.FreeItem(Item:Pointer);
begin
  if item <> NIL then dispose(Pboolean(Item));
end;

procedure Tstringcollection.FreeItem(Item:pointer);
begin
  if item <> NIL then dispose(Pstring(Item));
end;

begin
end.