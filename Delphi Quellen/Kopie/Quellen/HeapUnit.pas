unit heapunit;
{
Exports various routines that can be used to use and monitor dynamic
memory (the heap).
The most important exported procedures are GetBigMem and FreeBigMem;
these are equivalent to GetMem and FreeMem, only the amount of claimed
(freed) memory is now virtually unlimited.
Also important is the Move procedure that overrides (but uses) system's
Move procedure.

In the past, there were problems (with GetBigMem) when GlobalAllocPtr was
frequently called. To avoid this problem, the simple GetMem procedure,
also available in protected mode, is used whenever possible.
An additional advantage of this is that GetMem works considerably faster
than GlobalAllocPtr.
However, WHY there is a problem when GlobalAllocPtr is called often,
is not completely understood.

C.A. van Beest, R.P. Sterkenburg, PML-TNO Rijswijk, The Netherlands.
}
{
Revision history:
19 oct 92: - created as a unit
22 oct 92: - procedure BigFillChar added
13 nov 92: - bug in getbigmem.find_block eliminated
 1 feb 93: - now runs under Borland Pascal 7.0, with use of extended memory
             if target is 'protected mode application'
 4 mar 93: - uses 'strfunc' instead of 'strings' or 'mystrings'
 1 apr 93: - added procedure Move, that overrides system's Move procedure;
             this corrects a bug that occurs when a segment limit is crossed
           - HexAdrStr is renamed to SegOfsStr (in unit strfunc)
 6 mar 94: - added compiler directives for use with windows targets
 9 mar 94: - corrected compiler directives: dpmi memory routines (move,
             AddToAddress, GlobalAllocPtr and GlobalFreePtr) now used
             both for dpmi and windows targets
23 may 94: - added procedure BigMove
24 may 94: - renamed freebigmem to BigFreeMem
           - renamed getbigmem to BigGetMem
30 aug 94: - added procedures BigBlockwrite and BigBlockread
 7 sep 94: - changed the type of 'number' to Longint
25 oct 94: - msdos in stead of real (compiler directive)
           - changed GetBigMem: uses GetMem for small blocks
           - changed layout of compiler directive-dependent pieces
26 oct 94: - tested with RAPSCEN, RAPCAS and TESTBGAR.copy
           - Procedures for testing moved to program TESTHEAP.
27 Oct 94: - undone a few (undocumented) mistakes made at 25 Oct
28 oct 94: - Procedure BigFreemem for both protected and real mode changed
 2 Apr 95: - added startmem and usedmem, conditionally declared and used,
             for debugging purposes
 4 Apr 95: - changed result type for BigBlockWrite and -read to Longint;
             it's now also calculated correctly
           - made separate versions of BigBlockWrite and -Read for DPMI
             and real mode
           - moved mempos to 'real mode declarations'
 5 Apr 95: - tested BigMove, and it seems to work correctly, also
             in Protected mode, although it was expected to fail for
             the same reasons as BigBlockWrite etc.
 7 Apr 95: - made compilation (and good functioning) under
             Delphi possible
23 May 95: - updated USES comments for Delphi
27 Feb 96: - corrected bugs in BigBlockRead and BigBlockWrite that occurred
             when reading blocks with size being a power of 2
12 Nov 96: - All keywords to lower case
26 Mar 97: - renamed ErStop to FatalError
}

(*************************)   interface    (*************************)

const
   blocksize = 64000;
{ Since the maximum length of a contiguous piece of memory (allocated
with GetMem, deallocated with FreeMem c.q. copied by Move) is 65520,
one must use these procedures with blocks smaller than that size.
The chosen size is rather arbitrary, but easy when debugging. }

{$ifdef debug}
var startmem, usedmem: Longint;
{$endif}


procedure AddToAddress(var P: Pointer; Increment: Longint);
{ Increments the address of P with 'increment' }

procedure BigBlockWrite(var f: file; var buffer;
                            number: Longint; var Result: Longint);
{ Same as BlockWrite (Turbo Pascal) but permits writing of blocks
greater than the BP block size of at most 65535 }

procedure BigBlockRead(var F: file; var buffer;
                           number: Longint; var Result: Longint);
{ Same as BlockRead (Turbo Pascal) but permits reading of blocks
greater than the BP block size of at most 65535 }

procedure BigFillChar(address : pointer; size : longint; ch : char);
{ Same as FillChar (Turbo Pascal), but size larger than 65520 bytes
is allowed. }

procedure BigFreeMem(address: Pointer; size: Longint);
{ Same as FreeMem (see Turbo Pascal help about that procedure),
but 'size' larger than 65520 bytes is allowed }

procedure BigGetMem(var address: Pointer; size: Longint);
{ Same as GetMem (see Turbo Pascal help about that procedure),
but 'size' larger than 65520 bytes is allowed.
'Address' returns the starting address of the allocated piece of memory;
returns nil if no block of the specified size could be found }

procedure BigMove(var Source, Dest; Count: Longint);
{ Same as Move (see declaration hereunder),
but 'Count' larger than 65520 bytes is allowed }

procedure Move(var Source, Dest; Count: Longint);
{ This procedure overrides system's Move procedure, because that lead
in certain cases to errors; here it is (hopefully in all cases) solved. }

{$ifdef MSDOS}
function mempos(ptr: pointer): longint;
{ Returns the number of bytes between the mempos in 'ptr' and the
bottom of memory. }
{$endif MSDOS}

(*************************)  implementation  (***********************)

{$ifdef MSDOS}
uses
   exitunit;    { Imports FatalError }
{$endif}
{$ifdef DPMI}
uses
   winapi;      { Imports GlobalAllocPtr }
{$endif}
{$ifdef Windows}
{$ifndef ver80}
uses
   winapi;      { Imports GlobalAllocPtr }
{$else}
uses
   WinProcs,    { Imports GlobalAllocPtr }
   WinTypes;    { Imports gmem_movable }
{$endif ver80}
{$endif Windows}

{ Procedures for REAL mode }

{$ifdef MSDOS}
procedure AddToAddress(var P: Pointer; Increment: Longint);
{ Increments the address of P with 'increment' }
var Address, AddrSeg, AddrOfs: Longint;
begin { AddToAddress }
   Address := 16*Longint(Seg(P^)) + Longint(Ofs(P^)) + Increment;
   AddrSeg := Address div 16;
   AddrOfs := Address mod 16;
   P := Ptr(AddrSeg, AddrOfs)
end;  { AddToAddress }

procedure BigBlockRead(var F: file; var buffer;
                           number: Longint; var Result: Longint);
{ Same as BlockRead (Turbo Pascal) but permits reading of blocks
greater than the BP block size of at most 65535 }
var
   p: pointer;
   j, nblock, tempresult: word;
   offset: Longint;
begin { BigBlockRead }
   result := 0;
   p := addr(buffer);
   nblock := number div blocksize;
   for j := 1 to nblock
   do begin
      BlockRead( f, p^, blocksize, tempresult);
      result := result + tempresult;
      addtoaddress(p, blocksize);
   end;
   BlockRead( f, p^, number mod blocksize, tempresult);
   result := result + tempresult;
end; { BigBlockRead }

procedure BigBlockWrite(var f: file; var buffer;
                            number: Longint; var Result: Longint);
{ Same as BlockWrite (Turbo Pascal) but permits writing of blocks
greater than the BP block size of at most 65535 }
var
   p: pointer;
   blocknr, nblock, tempresult: word;
begin { BigBlockWrite }
   result := 0;
   nblock := number div blocksize;
   p := addr(buffer);
   for blocknr := 1 to nblock
   do begin
      BlockWrite( f, p^, blocksize, tempresult);
      result := result + tempresult;
      addtoaddress(p, blocksize);
   end;
   BlockWrite( f, p^, number mod blocksize, tempresult);
   result := result + tempresult;
end; { BigBlockWrite }

procedure BigFreeMem( address: Pointer; size: Longint);
{ Same as FreeMem, but blocks larger than 65520 bytes are allowed }
var
   block, NumberOfBlocks: word;
begin { BigFreeMem }
   NumberOfBlocks := Size div BlockSize;
   for Block := 1 to NumberOfBlocks do begin
      FreeMem(Address, BlockSize);
      AddToAddress(Address, BlockSize);
   end;
   FreeMem(Address, Size mod BlockSize);
   {$ifdef debug}
   usedmem := startmem - memavail;
   {$endif}
end;  { BigFreeMem }

procedure BigGetMem(var address: Pointer; size: Longint);
{ Same as GetMem, but blocks larger than 65520 bytes are allowed.
'Address' returns the starting address of the allocated piece of memory;
returns nil if no block of the specified size could be found }

   type
      pfree = ^freerec;
      freerec = record
         next: pfree;
         lo, hi: Word;
      end; { freerec }
   { This record structure corresponds to that used in the heap to
   administrate free blocks. For the meaning of lo and hi see the
   Borland Pascal programmer's guide. }

   function freeblocksize(freeblockpointer: Pfree): longint;
   { Returns the size of the free block that belongs to 'freeblockpointer' }
   begin { freeblocksize }
      with freeblockpointer^
      do if freeblockpointer = heapptr
         then freeblocksize := mempos(heapend) - mempos(freeblockpointer)
         else freeblocksize := longint(hi) * 16 + lo;
   end;  { freeblocksize }

   function next_pfree(p: pfree): pfree;
   { Returns the pointer to the next record of the freelist, or heapend if
   'p' points to 'heapptr' (the latter is the last record in the list,
   whose 'next' field contains garbage). }
   var tempptr: pfree;
   begin { next_pfree }
      if p = heapptr
      then next_pfree := heapend
      else next_pfree := p^.next;
   end;  { next_pfree }

   function prev_pfree(p: pfree): pfree;
   { returns the pointer to the record who's 'next' field points to 'p'.
   p can not be equal to freelist when called from getbigmem }
   var tempptr: pfree;
   begin { prev_pfree }
      if p = freelist
      then FatalError('Error in subroutine prev_pfree: p=freelist')
      else begin
         tempptr := freelist;
         while tempptr^.next <> p
         do tempptr := tempptr^.next;
         prev_pfree := tempptr;
      end;
   end;  { prev_pfree }

   procedure find_block(size: Longint; var freeblockpointer: Pfree);
   { Returns the pointer to the record in the freelist that has a free block
   that can contain 'size' bytes or more (in other words:
   in which a data structure of 'size' bytes can be stored).
   Returns Nil if no such block is available. }
   begin { find_block }
      freeblockpointer := freelist;
      while (freeblocksize(freeblockpointer) < size) and
            (freeblockpointer <> heapptr)
      do freeblockpointer := freeblockpointer^.next;
      if freeblocksize(freeblockpointer) < size
      then freeblockpointer := Nil
   end;  { find_block }

   procedure getmemblocks(var address: Pointer; size: Longint);
   var Block, NumberOfBlocks: Word;
       BlockAddress: Pointer;
   begin { getmemblocks }
      if (Size mod BlockSize) = 0
      then address := HeapPtr
      else GetMem(address, Size mod BlockSize);
      NumberOfBlocks := Size div BlockSize;
      for Block := 1 to NumberOfBlocks
      do GetMem(BlockAddress, BlockSize);
   end;  { getmemblocks }

var freeblockpointer,
    savefreelist, previous: pfree;
begin { BigGetMem }
   if Size < 65520
   then GetMem(address, Size)
   else begin
      address := nil;
      find_block(size, freeblockpointer);
      if freeblockpointer <> Nil
      then begin
         if freeblockpointer = freelist
         then getmemblocks(address, size)
         else begin
            savefreelist := freelist;
            previous := prev_pfree(freeblockpointer);
            freelist := freeblockpointer;
            getmemblocks(address, size);
            previous^.next := freelist;
            freelist := savefreelist;
         end;
      end;
   end;
   {$ifdef debug}
   usedmem := startmem - memavail;
   {$endif}
end;  { BigGetMem }

function mempos(ptr: pointer): longint;
{ Returns the number of bytes between the mempos in 'ptr' and the
bottom of memory. }
begin  mempos := 16 * longint(seg(ptr^)) + longint(ofs(ptr^));
end; { mempos }

procedure Move(var Source, Dest; Count: Longint);
{ This procedure overrides system's Move procedure;
the real mode version is trivial, but the DPMI/Windows version isn't }
begin system.Move(Source, Dest, Count);
end;  { Move }
{$endif}


{ Procedures for PROTECTED mode }

{$ifndef MSDOS}
procedure AddToAddress(var P: Pointer; Increment: Longint);
{ Increments the address of P with 'increment' }
type Long = record Lo, Hi: Word; end;
var phi, plo, inchi, inclo: Longint;
begin { AddToAddress }
   phi := Long(P).Hi;
   plo := Long(P).Lo;
   inchi := Long(Increment).Hi;
   inclo := Long(Increment).Lo;
   if plo + inclo >= 65536      { this is necessary    }
   then begin                   { to prevent a range   }
      inclo := inclo-65536;     { check error at the   }
      Inc(inchi);               { P = Ptr(...)         }
   end;                         { assignment statement }
   P := Ptr(phi + inchi*SelectorInc, plo + inclo);
end;  { AddToAddress }

procedure BigBlockRead(var f: file; var buffer;
                           number: Longint; var Result: Longint);
{ Same as BlockWrite (Turbo Pascal) but permits writing of blocks
greater than the BP block size of at most 65535 }
const blocksize = 32768;
var
   p: pointer;
   offset, rest: Longint;
   tempresult, nblock, blocknr: word;
begin { BigBlockRead }
   result := 0;
   p := addr(buffer);
   offset := Longint(Ofs(P^));
   if offset + number <= 65535
   then begin
      BlockRead( f, p^, number, tempresult);
      result := result + tempresult;
   end
   else begin
      rest := 65536 - offset;
      if rest <= 65535
      then begin
         BlockRead( f, p^, rest, tempresult);
         addtoaddress(p, rest);
         result := result + tempresult;
         number := number - rest;
      end;
      nblock := number div blocksize;
      for blocknr := 1 to nblock
      do begin
         BlockRead( f, p^, blocksize, tempresult);
         result := result + tempresult;
         addtoaddress(p, blocksize);
      end;
      rest := number - result;
      if rest = 0
      then tempresult := 0
      else BlockRead( f, p^, rest, tempresult);
      result := result + tempresult;
   end;
end; { BigBlockRead }

procedure BigBlockWrite(var f: file; var buffer;
                            number: Longint; var Result: Longint);
{ Same as BlockWrite (Turbo Pascal) but permits writing of blocks
greater than the BP block size of at most 65535 }
const blocksize = 32768;
var
   p: pointer;
   offset, rest: Longint;
   tempresult, nblock, blocknr: word;
begin { BigBlockWrite }
   result := 0;
   p := addr(buffer);
   offset := Longint(Ofs(P^));
   if offset + number <= 65535
   then begin
      BlockWrite( f, p^, number, tempresult);
      result := result + tempresult;
   end
   else begin
      rest := 65536 - offset;
      if rest <= 65535
      then begin
         BlockWrite( f, p^, rest, tempresult);
         addtoaddress(p, rest);
         result := result + tempresult;
         number := number - rest;
      end;
      nblock := number div blocksize;
      for blocknr := 1 to nblock
      do begin
         BlockWrite( f, p^, blocksize, tempresult);
         result := result + tempresult;
         addtoaddress(p, blocksize);
      end;
      rest := number - result;
      if rest = 0
      then tempresult := 0
      else BlockWrite( f, p^, rest, tempresult);
      result := result + tempresult;
   end;
end; { BigBlockWrite }

procedure BigGetMem( var address: Pointer; size: Longint);
{ Same as GetMem, but blocks larger than 65520 bytes are allowed }
begin { BigGetMem }
   if size < 65520
   then GetMem(address, size)
   else address := GlobalAllocPtr(gmem_moveable, size);
   {$ifdef debug}
   usedmem := startmem - memavail;
   {$endif}
end;  { BigGetMem }

procedure BigFreeMem(address: Pointer; size: Longint);
{ Same as FreeMem, but blocks larger than 65520 bytes are allowed }
var H: THandle;
begin { BigFreeMem }
   if size < 65520
   then FreeMem(address, size)
   else H := GlobalFreePtr(address);
   {$ifdef debug}
   usedmem := startmem - memavail;
   {$endif}
end;  { BigFreeMem }

procedure Move(var Source, Dest; Count: Longint);
{ This procedure overrides system's Move procedure, because that lead
in certain cases to errors; here it is (hopefully in all cases) solved. }
type bytearr = array[1..6] of Byte;
     valpointer=^bytearr;
var firstpart: word;
    SourcePtr, DestPtr: Pointer;
    valptr: valpointer;
begin { Move }
   if (Longint(Ofs(Dest))+Count > 65536) or
      (Longint(Ofs(Source))+Count > 65536)
   then begin
      SourcePtr := @Source;
      DestPtr := @Dest;
      if Longint(Ofs(Dest))+Count > 65536
      then firstpart := 65536 - Ofs(Dest)
      else firstpart := 65536 - Ofs(Source);
      system.Move(Source, Dest, firstpart);
      AddToAddress(SourcePtr, firstpart);
      AddToAddress(DestPtr, firstpart);
      system.Move(SourcePtr^, DestPtr^, Count-firstpart);
   end
   else system.Move(Source, Dest, Count);
end;  { Move }
{$endif}


{ Procedures for both REAL and PROTECTED mode }

procedure BigFillChar(address: pointer; size: longint; ch: char);
{ Same as FillChar (TurboPascal), but size larger than 65520 bytes
is allowed. }
var p: pointer;
    j, nblock: word;
begin { BigFillChar }
   nblock := size div blocksize;
   p := address;
   for j := 1 to nblock
   do begin
      fillchar(p^, blocksize, ch);
      addtoaddress(p, blocksize);
   end;
   FillChar(p^, size mod blocksize, ch);
end;  { BigFillChar }

procedure BigMove(var Source, Dest; Count: Longint);
var BlockNr, NumberOfBlocks: Word;
    SourceAddress, TargetAddress: Pointer;
begin { BigMove }
   NumberOfBlocks := Count div BlockSize;
   SourceAddress := Pointer(Source);
   TargetAddress := Pointer(Dest);
   for BlockNr := 1 to NumberOfBlocks
   do begin
      Move(SourceAddress^, TargetAddress^, BlockSize);
      AddToAddress(SourceAddress, BlockSize);
      AddToAddress(TargetAddress, BlockSize)
   end;
   Move(SourceAddress^, TargetAddress^, Count mod BlockSize);
end;  { BigMove }

{$ifdef debug}
begin
   startmem := memavail;
   usedmem := 0;
{$endif}
end.  { UNIT heapunit }
