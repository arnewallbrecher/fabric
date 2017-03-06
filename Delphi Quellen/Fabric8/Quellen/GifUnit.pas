unit GifUnit;
{ Exports TGifFile and TGifSubImage classes.

Needs non-VCL units:
- ColorTbl, DynArrB, GifDecl:
  belonging to the 'core' of the gif library
- HeapUnit (only if Delphi 1 is used)
- MoreUtil, Progress:
  general purpose units; can be left out if necessary
- FmProgr, FmCanSav:
  forms that are used by MoreUtil and Progress
The latter four can be easily left out if necessary.

by Reinier Sterkenburg (February-November 1997)
   r.p.sterkenburg@dataweb.nl
   www.dataweb.nl/~r.p.sterkenburg

Known bugs / left to do: see the VERSIONS.TXT file

Before using the GIF format in any commercial application
be sure you know the legal issues for this format!

Versions (for older versions see the file versions.txt):
10 Mar 97: - first version (1.00) released by uploading it to
             the Delphi Super Page (freeware)
17 Mar 97: - moved the comments about older version
             to separate file (versions.txt)
           - added TGifSubImage.Destroy and TGifImage.Destroy
18 Mar 97: - made the unit also work under Delphi 1.0, by changing the type
             of the 'CompressedRasterData' from a huge string into
             a specially made TEncodedBytes/TByteBuffer (see unit GifDecl);
             also made some obvious D2-D1 modifications involving
             SetLength, Application.Initialize, and the use of Longint
 3 Apr 97: - renamed AsTBitmap to AsBitmap
           - Made AsBitmap also a method of TGifSubImage;
             added field FGifImage to TGifSubImage;
             moved SaveToStream from TGifFile to TGifSubImage
 5 Apr 97: - added FBitmap as field to TGifSubImage, for speed advantage
13 Apr 97: - Made animation extension work, through functions AnimateInterval;
             see also unit GifImgs (with TGifImage)
           - released this version as version 2.00
24 Jul 97: - added comment: two bugs found by users:
             - reset of read-only files
           - Corrected a bug: number of colors in Localcolormap
             now assigned
 2 Aug 97: - Solved two memory leaks (LineBytes objects were not freed)
           - added try-except block which catches EListError in
             TGifImage.DecodeRasterData. It seems that some Gif-creating
             software leaves out the rest of the pixels when they are all
             zero. Now these files can also be read and displayed successfully.
           - EStringlistError also caught to get it also to work in Delphi 3
14 Aug 97: - PixelString is now a TByteBuffer in stead of a string.
             This solves a bug that occurred in Delphi 1 when strings
             became longer than 255 characters
23 Aug 97: - Made procedure BitmapToPixelmatrix a lot (roughly four times)
             faster by making use of the ScanLine property of TBitmap;
             this works for Delphi 3 only
           - Struggled with GetPixel(H, x, y) but it won't work much
             faster when ShowProgress is used. I keep using ShowProgress.
31 Aug 97: - Added checks on 'Eof(infile)' at a few places. Also one
             BlockRead call in ReadRasterData got an extra parameter.
             As far as I know, this  shouldn't be necessary for Gif files
             that follow the Gif specification, but this extra check does
             make it possible to read certain gif files that otherwise cause
             errors.
           - Deleted TGifSubImage.Copy. It wasn't used and only caused
             annoying hints.
13 Sep 97: - Applied fix (FileMode := 0) in initialization (Delphi 2 only)
             so opening read-only files won't give errors anymore
           - Added LoadFromStream methods (replacing a.o. LoadFromOpenInfile);
             removed all use of 'infile' using 'Stream' instead
           - Added TGifBitmap and RegisterFileFormat (thanks to Eric Maddox
             who supplied the piece of code that does this)
           - deleted BitmapRToPixelmatrix from interface;
             not used by GifImg anymore
29 Oct 97: - Moved memory compiler directive ($M) from demo .dpr files
             to this unit.
 3 Nov 97: - fixed most of the memory leakages; only Freeing extensions
             is not yet done
 5 Nov 97: - Deleted the remains (commented out) of the file-reading
             and -writing stuff. It had been replaced with Stream reading
             and writing.
           - added try-finally block in TGifSubImage.DecodeRasterData
             to ensure freeing of LineBytes
           - Deleted ReadColor (it wasn't used)
 9 Nov 97: - made Extensions of type TExtensionList in stead of TList
           - Moved memory compiler directive ($M) back from
             this unit to demo .dpr files after finding out that it
             has no effect in units
           - ifdef'd out the warnings that are displayed when
             animation time intervals are not present or not equal
14 Nov 97: - added TPicture.UnRegisterGraphicClass in finalization section
             This fixes a GPF that occurs when a package containing the GIF
             code is reloaded
 2 Dec 97: - added IsTransparent
29 Dec 97: - added GrabScreen
 3 Jan 98: - converted a few fields of TGifSubImage to properties:
             Extensions, IsTransparent, and added DisposalMethod
12 Feb 98: - added TGifSubImage.BackgroundColor
13 Feb 98: - deleted unused stuff
17 Feb 98: - declared DrawingTransparent as a const in stead of a var
           - added GifDecl specifier before declarations of TExtension instances
}
{$ifdef ver100}
{$define UseScanlines}
{$endif}

interface

uses
  WinProcs,        { Imports RGB }
  WinTypes,        { Imports TBitmapInfoHeader }
{ declared these Windows units before Graphics so
  TBitmap from Graphics is used }
  Classes,         { Imports TList }
  ColorTbl,        { Imports TColorTable }
  Controls,        { Imports Cursor values }
  Dialogs,         { Imports ShowMessage }
  DynArrB,         { Imports TByteArray2D }
  Forms,           { Imports Screen }
  GifDecl,         { Imports constant and type declarations }
  Graphics,        { Imports TColor }
  MoreUtil,        { Imports WarningMessage }
  Progress,        { Imports ShowProgress }
  SysUtils;        { Imports UpperCase }

type
  TGifFile = class;
  TGifSubImage = class(TObject)
  private
    LZWCodeSize: Byte;
    CompressedRasterData: TByteBuffer;

    FGifFile: TGifFile;
    FBitmap: TBitmap;
    FDisposalMethod: TDisposalMethod;
    FExtensions: TExtensionList;
    FIsTransparent: Boolean;
    { property acess methods }
    function  GetAnimateInterval: Word;
    function  GetBGColor: TColor;
    procedure SetAnimateInterval(NewValue: Word);
    procedure SetExtensions(NewValue: TExtensionList);
    { other private methods }
    procedure DecodeStatusbyte;
    procedure ReadImageDescriptor(Stream: TStream);
    procedure ReadLocalColorMap(Stream: TStream);
    procedure ReadRasterData(Stream: TStream);
    procedure DecodeRasterData;
    procedure LoadFromStream(Stream: TStream);

    procedure WriteImageDescriptor(Stream: TStream);
    procedure WriteLocalColorMap(Stream: TStream);
    procedure EncodeRasterdata;
    procedure WriteRasterData(Stream: TStream);
    procedure SaveToStream(Stream: TStream);
  public
    ImageDescriptor: TImageDescriptor;
    Interlaced: Boolean;
    HasLocalColorMap: Boolean;
    BitsPerPixel: Byte;
    Pixels: TByteArray2D;
    LocalColorMap: TColorTable;

    constructor Create(NColors: Word; Parent: TGifFile);
    constructor CreateEmpty;
    destructor Destroy; override;

    function  AsBitmap: TBitmap;
    procedure EncodeStatusbyte;
    function  TransparentColor: TColor;
    function  TransparentColorIndex: Integer;

    property  AnimateInterval: Word
              read GetAnimateInterval
              write SetAnimateInterval;
    property  BackgroundColor: TColor
              read GetBGColor;
    property  Extensions: TExtensionList
              read FExtensions
              write SetExtensions;
    property  DisposalMethod: TDisposalMethod
              read FDisposalMethod;
    property  IsTransparent: Boolean
              read FIsTransparent;
  end; { TGifSubImage }

  TGifFile = class(TObject)
  private
    procedure DecodeStatusByte;
    procedure ReadExtensionBlocks(Stream: TStream;
                                  var SeparatorChar: Char;
                                  var Extensions: TExtensionList);
    procedure ReadSignature(Stream: TStream);
    procedure ReadScreenDescriptor(Stream: TStream);
    procedure ReadGlobalColorMap(Stream: TStream);

    procedure EncodeGifFile;
    procedure EncodeStatusByte;
    procedure WriteSignature(Stream: TStream);
    procedure WriteScreenDescriptor(Stream: TStream);
    procedure WriteGlobalColorMap(Stream: TStream);
  public
    Header: TGifHeader;
    ScreenDescriptor: TLogicalScreenDescriptor;
    HasGlobalColorMap: Boolean;
    GlobalColorMap: TColorTable;
    BitsPerPixel: Byte;
    SubImages: TList;
    constructor Create;
    destructor Destroy; override;
    procedure AddBitmap(Bitmap: TBitmap);
    function  AsBitmap: TBitmap;
    function  GetSubImage(Index: Integer): TGifSubImage;
    procedure LoadFromFile(filename: String);
    procedure LoadFromStream(Stream: TStream);
    procedure SaveToFile(filename: String);
    procedure SaveToStream(Stream: TStream);
  end; { TGifFile }

type
  TGifBitmap = class(TBitmap)
  public
    procedure LoadFromStream(Stream: TStream); override;
  end; { TGifBitmap }


procedure DrawTransparent(DestCanvas: TCanvas; X, Y: smallint;
                          SrcBitmap: TBitmap; AColor: TColor);
{ Draws SrcBitmap on the DestCanvas, with AColor as transparent color.
Subroutine was posted by Leif L. in Borland's Delphi.Graphics newsgroup
and is thankfully used }

procedure GrabScreen(const SourceRect: TRect; Bitmap: TBitmap);
{ Captures what's on the screen in the SourceRect rectangle into
the Bitmap bitmap.
Posted in Borland's Delphi.Graphics newsgroup by Nick Hodges;
he refers to Mike Scott as the creator }

const
  DrawingTransparent: Boolean = False;

implementation

procedure DrawTransparent(DestCanvas: TCanvas; X, Y: smallint;
                          SrcBitmap: TBitmap; AColor: TColor);
{ Draws SrcBitmap on the DestCanvas, with AColor as transparent color.
Subroutine was posted by Leif L. in Borland's Delphi.Graphics newsgroup
and is thankfully used }
var
  ANDBitmap, ORBitmap: TBitmap;
  CM: TCopyMode;
  Src: TRect;
begin { DrawTransparent }
  DrawingTransparent := True;
  ANDBitmap := nil;
  ORBitmap := nil;
  try
    ANDBitmap := TBitmap.Create;
    ORBitmap := TBitmap.Create;
    Src  := Bounds(0, 0, SrcBitmap.Width, SrcBitmap.Height);
    with ORBitmap
    do begin
      Width := SrcBitmap.Width;
      Height := SrcBitmap.Height;
      Canvas.Brush.Color := clBlack;
      Canvas.CopyMode := cmSrcCopy;
      Canvas.BrushCopy(Src, SrcBitmap, Src, AColor);
    end;
    with ANDBitmap
    do begin
      Width := SrcBitmap.Width;
      Height := SrcBitmap.Height;
      Canvas.Brush.Color := clWhite;
      Canvas.CopyMode := cmSrcInvert;
      Canvas.BrushCopy(Src, SrcBitmap, Src, AColor);
    end;
    with DestCanvas
    do begin
      CM := CopyMode;
      CopyMode := cmSrcAnd;
      Draw(X, Y, ANDBitmap);
      CopyMode := cmSrcPaint;
      Draw(X, Y, ORBitmap);
      CopyMode := CM;
    end;
  finally
    ANDBitmap.Free;
    ORBitmap.Free;
  end;
  DrawingTransparent := False;
end;  { DrawTransparent }

procedure GrabScreen(const SourceRect: TRect; Bitmap: TBitmap);
{ Captures what's on the screen in the SourceRect rectangle into
the bitmap }
var ScreenCanvas: TCanvas ;
begin { GrabScreen }
  ScreenCanvas := TCanvas.Create;
  try
    ScreenCanvas.Handle := GetDC(0);
    try
      Bitmap.Width := SourceRect.Right - SourceRect.Left;
      Bitmap.Height := SourceRect.Bottom - SourceRect.Top;
      Bitmap.Canvas.CopyRect( Rect(0, 0, Bitmap.Width, Bitmap.Height),
                              ScreenCanvas, SourceRect);
    finally
      ReleaseDC( 0, ScreenCanvas.Handle);
      ScreenCanvas.Handle := 0;
    end;
  finally
    ScreenCanvas.Free;
  end;
end;  { GrabScreen }

function PaletteToDIBColorTable(Pal: HPalette;
                 var ColorTable: array of TRGBQuad): Integer;
{ This function was found in the Graphics unit but it is not exported.
  It's modified: ByteSwapColors is not called because a TRGBQuad
  has the same physical layout as TColor }
begin { PaletteToDIBColorTable }
  Result := 0;
  if (Pal = 0) or
     (GetObject(Pal, sizeof(Result), @Result) = 0) or
     (Result = 0)
  then Exit;
  if Result > High(ColorTable)+1
  then Result := High(ColorTable)+1;
  GetPaletteEntries(Pal, 0, Result, ColorTable);
end;  { PaletteToDIBColorTable }

{$ifdef UseScanlines}
procedure BitmapToPixelmatrix8bpp(Bitmap: TBitmap;
                                  var ColorTable: TColorTable;
                                  var Pixels: TByteArray2D);
{ Converts the pixels of a TBitmap into a matrix of pixels (PixelArray)
and constructs the Color table in the same process.
This '8bpp' variant makes use of the ScanLine property of TBitmap
(appl. since Delphi 3.0) AND assumes 1 pixel =1 byte (8 bits per pixel) }
var
  i, j: Integer;
  SL: PByteArray;
  PaletteIndex: Byte;
  PixelValRGBQuad: TRGBQuad;
  PixelVal: TColor absolute PixelValRGBQuad;
  ColorIndex: Integer;
  ColorQuadTable: array[0..255] of TRGBQuad;
begin { BitmapToPixelmatrix8bpp }
  ColorTable.Count := 0;
  PaletteToDIBColorTable(Bitmap.Palette, ColorQuadTable);
  with Bitmap
  do begin
    Pixels := TByteArray2D.Create(Width, Height);
    ShowProgress(0);
    for j := 1 to Height
    do begin
      SL := Bitmap.Scanline[j-1];
      for i := 1 to Width
      do begin
        PaletteIndex := SL[i-1];
        PixelValRGBQuad := ColorQuadTable[PaletteIndex];
        ColorIndex := ColorTable.GetColorIndex(PixelVal);
        if ColorIndex = -1
        then begin
          ColorTable.FCT.Colors[ColorTable.Count] := PixelVal;
          ColorIndex := ColorTable.Count;
          ColorTable.Count := ColorTable.Count + 1; { no check on > 256 yet }
        end;
        Pixels[i, j] := ColorIndex;
      end;
      ShowProgress(j/Height)
    end;
  end; { with }
  ColorTable.AdjustColorCount;
  ColorTable.CompactColors;
end;  { BitmapToPixelmatrix8bpp }
{$endif UseScanlines}

procedure BitmapToPixelmatrix(Bitmap: TBitmap;
                              var ColorTable: TColorTable;
                              var Pixels: TByteArray2D);
{ Converts the pixels of a TBitmap into a matrix of pixels (PixelArray)
and constructs the Color table in the same process. }
var
  H: HDC;
  i, j: Integer;
  PixelVal: TColor;
  PrevPixelVal: TColor;
  ColorIndex: Integer;
begin { BitmapToPixelmatrix }
  ColorTable := TColorTable.Create(0);
{$ifdef UseScanlines}
  if Bitmap.PixelFormat in [pf15bit, pf16bit, pf24bit, pf32bit]
  then begin
    Bitmap.PixelFormat := pf8bit;
    ShowMessage('Warning: the bitmap color depth is more than 8 bits per pixel'
      +#13+#10+'This is now converted to 8 bits per pixel');
  end;
  if Bitmap.PixelFormat = pf8bit
  then begin
    BitmapToPixelmatrix8bpp(Bitmap, ColorTable, Pixels);
    Exit;
  end;
{$endif UseScanlines}

  PrevPixelVal := $FFFFFFFF;
  with Bitmap
  do begin
    ShowProgress(0);
    Pixels := TByteArray2D.Create(Width, Height);
    for j := 1 to Height
    do begin
      H := Bitmap.Canvas.Handle; { within the loop becuase ShowProgress
                                   corrupts this handle }
      for i := 1 to Width
      do begin
        {PixelVal := Canvas.Pixels[i-1, j-1];}
        PixelVal := GetPixel(H, i-1, j-1);
        if PixelVal <> PrevPixelVal
        then begin
          ColorIndex := ColorTable.GetColorIndex(PixelVal);
          if ColorIndex = -1
          then begin
            ColorTable.FCT.Colors[ColorTable.Count] := PixelVal;
            ColorIndex := ColorTable.Count;
            ColorTable.Count := COlorTable.Count + 1; { no check on > 256 yet }
          end;
          PrevPixelVal := PixelVal;
        end;
        Pixels[i, j] := ColorIndex;
      end;
      ShowProgress(j/Height);
    end;
  end; { with }
  ColorTable.AdjustColorCount;
  ColorTable.CompactColors;
end;  { BitmapToPixelmatrix }


procedure MakeFlat(PixelMatrix: TByteArray2D;
                   Interlaced: Boolean;
                   var PixelArray: TBigByteArray);
{ Convert a matrix of pixels into a linear array of pixels,
taking interlacing into account if necessary }
var
  InterlacePass: Integer;
  i, j, Index, LineNo: Longint;
begin { MakeFlat }
  InterlacePass := 1;
  with PixelMatrix
  do begin
    PixelArray := TBigByteArray.Create(Count1 * Count2);
    Index := 1;
    LineNo := 0;
    for j := 1 to Count2
    do begin
      for i := 1 to Count1
      do begin
        PixelArray[Index] := PixelMatrix[i, LineNo+1];
        Inc(Index);
      end;
      if not Interlaced
      then Inc(LineNo)
      else LineNo := NextLineNo(LineNo, Count2, InterlacePass);
    end;
  end; { with }
end;  { MakeFlat }

procedure WriteColor(Stream: TStream; Color: TColor);
var r, g, b: Byte;
begin { WriteColor }
  r := (Color shr 4) and $FF;
  g := (Color shr 2) and $FF;
  b := Color and $FF;
  Stream.Write(r, 1);
  Stream.Write(g, 1);
  Stream.Write(b, 1);
end;  { WriteColor }

(***** TGifSubImage *****)

constructor TGifSubImage.Create(NColors: Word; Parent: TGifFile);
begin { TGifSubImage.Create }
  inherited Create;
  FGifFile := Parent;
  FExtensions := TExtensionList.Create;
  CompressedRasterData := TByteBuffer.Create;
  Pixels := TByteArray2D.Create(0, 0);
  ImageDescriptor.ImageLeftPos := 0;
  ImageDescriptor.ImageTopPos := 0;
  ImageDescriptor.ImageWidth := 0;
  ImageDescriptor.ImageHeight := 0;
  ImageDescriptor.PackedFields := 0;
  HasLocalColorMap := False;
  Interlaced := False;
  case NColors of
    2: BitsPerPixel := 1;
    4: BitsPerPixel := 2;
    8: BitsPerPixel := 3;
    16: BitsPerPixel := 4;
    32: BitsPerPixel := 5;
    64: BitsPerPixel := 6;
    128: BitsPerPixel := 7;
    256: BitsPerPixel := 8;
    else raise EGifException.Create('Number of colors ('+IntToStr(NColors)+') wrong; must be a power of 2');
  end;  { case }
  LZWCodeSize := BitsPerPixel;
  if LZWCodeSize = 1
  then Inc(LZWCodeSize);
  {TColorTable_Create(LocalColorMap, NColors);}
  LocalColormap := TColorTable.Create(NColors);
  EncodeStatusByte;
end;  { TGifSubImage.Create }

constructor TGifSubImage.CreateEmpty;
begin { TGifSubImage.CreateEmpty }
  inherited Create;
end;  { TGifSubImage.CreateEmpty }

destructor TGifSubImage.Destroy;
begin { TGifSubImage.Destroy }
  LocalColormap.Free;
  Pixels.Free;
  CompressedRasterData.Free;
  FExtensions.Free;
  FBitmap.Free;
  inherited Destroy;
end;  { TGifSubImage.Destroy }

(***** TGifSubImage: end of constructors/desctructors *****)
(***** TGifSubImage: property access methods *****)

function TGifSubImage.GetAnimateInterval: Word;
{ Returns the delay time between this (sub)image and the next one.
In centiseconds! }
var ExtNo: Integer;
    Extension: GifDecl.TExtension;
begin { TGifSubImage.GetAnimateInterval }
  if Extensions.Count = 0
  then Result := 0
  else begin
    Result := 0;
    for ExtNo := 1 to Extensions.Count
    do begin
      Extension := Extensions[ExtNo-1];
      if Extension.Extrec.ExtensionType = etGCE
      then Result := Extension.ExtRec.GCE.DelayTime;
    end;
  end;
end;  { TGifSubImage.GetAnimateInterval }

function TGifSubImage.GetBGColor: TColor;
var
  Index: Integer;
begin { TGifSubImage.GetBGColor }
  Index := FGifFile.ScreenDescriptor.BackGroundColorIndex;
  if HasLocalColormap
  then Result := LocalColormap.GetColor(index)
  else Result := FGifFile.GlobalColorMap.GetColor(index)
end;  { TGifSubImage.GetBGColor }

procedure TGifSubImage.SetAnimateInterval(NewValue: Word);
{ Sets the delay time between this (sub)image and the next one.
In centiseconds! }
var ExtNo: Integer;
    Extension: GifDecl.TExtension;
begin { TGifSubImage.SetAnimateInterval }
  if Extensions.Count <> 0
  then begin
    for ExtNo := 1 to Extensions.Count
    do begin
      Extension := Extensions[ExtNo-1];
      if Extension.Extrec.ExtensionType = etGCE
      then Extension.ExtRec.GCE.DelayTime := NewValue;
    end;
  end;
end;  { TGifSubImage.SetAnimateInterval }

procedure TGifSubImage.SetExtensions(NewValue: TExtensionList);
var
  ExtNo: Integer;
  Ext: GifDecl.TExtension;
begin { TGifSubImage.SetExtensions }
  FExtensions := NewValue;

  FDisposalMethod := dmNone;
  FIsTransparent := False;
  if Extensions <> nil
  then for ExtNo := 1 to Extensions.Count
  do begin
    Ext := Self.Extensions[ExtNo-1];
    case Ext.ExtRec.ExtensionType of
    etGCE: begin
           FDisposalMethod := TDisposalMethod((Ext.ExtRec.GCE.PackedFields shr 2) and $07);
           FIsTransparent := (Ext.ExtRec.GCE.PackedFields and $01) <> 0;
           end;
    etPTE:  ;
    etAPPE: ;
    etCE:   ;
    end;
  end;
end;  { TGifSubImage.SetExtensions }

(***** TGifSubImage: end of property access methods *****)

function TGifSubImage.AsBitmap: TBitmap;
var Stream: TMemoryStream;
begin { TGifSubImage.AsBitmap }
  if FBitmap = nil
  then begin
    Stream := TMemoryStream.Create;
    try
      SaveToStream(Stream);
      FBitmap := TBitmap.Create;
      FBitmap.LoadFromStream(Stream);
    finally
      Stream.Free;
    end;
  end;
  Result := FBitmap;
end;  { TGifSubImage.AsBitmap }

function TGifSubImage.TransparentColor: TColor;
var
  Found: Boolean;
  ExtNo: Integer;
  Ext: GifDecl.TExtension;
  index: Byte;
begin { TGifSubImage.TransparentColor }
  Found := False;
  ExtNo := 1;
  while not Found and (ExtNo <= Extensions.Count)
  do begin
    Ext := Extensions[ExtNo-1];
    Found := (Ext.ExtRec.ExtensionType = etGCE) and
             ((Ext.ExtRec.GCE.PackedFields and $01) <> 0);
    Inc(ExtNo);
  end;
  if not Found
  then Result := -1
  else begin
    index := Ext.ExtRec.GCE.TransparentColorIndex;
    if HasLocalColormap
    then Result := LocalColormap.GetColor(index)
    else Result := FGifFile.GlobalColormap.GetColor(index)
  end;
end;  { TGifSubImage.TransparentColor }

function TGifSubImage.TransparentColorIndex: Integer;
var
  Found: Boolean;
  ExtNo: Integer;
  Ext: GifDecl.TExtension;
begin { TGifSubImage.TransparentColorIndex }
  Found := False;
  ExtNo := 1;
  while not Found and (ExtNo <= Extensions.Count)
  do begin
    Ext := Extensions[ExtNo-1];
    Found := (Ext.ExtRec.ExtensionType = etGCE) and
             ((Ext.ExtRec.GCE.PackedFields and $01) <> 0);
    Inc(ExtNo);
  end;
  if not Found
  then Result := -1
  else Result := Ext.ExtRec.GCE.TransparentColorIndex;
end;  { TGifSubImage.TransparentColorIndex }

(***** read routines *****)

procedure TGifSubImage.DecodeStatusByte;
begin { TGifSubImage.DecodeStatusByte }
  with ImageDescriptor
  do begin
    HasLocalColorMap := (PackedFields and idLocalColorTable) = idLocalColorTable;
    Interlaced := (ImageDescriptor.PackedFields and idInterlaced) = idInterlaced;
    BitsPerPixel := 1 + ImageDescriptor.PackedFields and $07;
    LocalColorMap.Count := 1 shl BitsPerPixel;
  end;
end;  { TGifSubImage.DecodeStatusByte }

procedure TGifSubImage.ReadImageDescriptor(Stream: TStream);
begin { TGifSubImage.ReadImageDescriptor }
  Stream.Read(ImageDescriptor, SizeOf(ImageDescriptor));
  DecodeStatusByte;
end;  { TGifSubImage.ReadImageDescriptor }

procedure TGifSubImage.ReadLocalColorMap(Stream: TStream);
begin { TGifSubImage.ReadLocalColorMap }
  if HasLocalColorMap
  then
    with LocalColorMap
    do Stream.Read(CT.Colors[0], Count*SizeOf(TColorItem));
end;  { TGifSubImage.ReadLocalColorMap }

procedure TGifSubImage.ReadRasterData(Stream: TStream);
var
  NewString: String;
  BlokByteCount: Byte;
  ReadBytes: Integer;
begin { TGifSubImage.ReadRasterData }
  Stream.Read(LZWCodeSize, 1);
  Stream.Read(BlokByteCount, 1);
  while (BlokByteCount <> 0) and not (Stream.Position >= Stream.Size)
  do begin
{$ifdef ver80}
    NewString[0] := Chr(BlokByteCount);
{$else}
    SetLength(NewString, BlokByteCount);
{$endif ver80}
    ReadBytes := Stream.Read(NewString[1], BlokByteCount);
    if ReadBytes < BlokByteCount
    then
  {$ifdef ver80}
      NewString[0] := Chr(ReadBytes)
  {$else}
      SetLength(NewString, ReadBytes)
  {$endif ver80}
    else Stream.Read(BlokByteCount, 1);
    CompressedRasterData.AddString(NewString);
  end;
end;  { TGifSubImage.ReadRasterData }

procedure InitCompressionStream(InitLZWCodeSize: Byte;
                                var DecodeRecord: TDecodeRecord);
begin { InitCompressionStream }
  with DecodeRecord
  do begin
    LZWCodeSize := InitLZWCodeSize;
    if not (LZWCodeSize in [2..9])    { valid code sizes 2-9 bits }
    then raise EGifException.Create('Bad code Size');
    CurrCodeSize := succ(LZWCodeSize);
    ClearCode := 1 shl LZWCodeSize;
    EndingCode := succ(ClearCode);
    HighCode := pred(ClearCode);      { highest code not needing decoding }
    BitsLeft := 0;
    CurrentY := 0;
    InterlacePass := 1;
  end;
end;  { InitCompressionStream }

function NextCode(CompressedRasterData: TByteBuffer;
                  var DecodeRecord: TDecodeRecord): word;
{ returns a code of the proper bit size }
var LongResult: Longint;
begin { NextCode }
  with DecodeRecord
  do begin
    if BitsLeft = 0 then       { any bits left in byte ? }
    begin                      { any bytes left }
      CurrByte := CompressedRasterData.GetNextByte;   { get a byte }
      BitsLeft := 8;                 { set bits left in the byte }
    end;
    LongResult := CurrByte shr (8 - BitsLeft); { shift off any previously used bits}
    while CurrCodeSize > BitsLeft do          { need more bits ? }
    begin
      CurrByte := CompressedRasterData.GetNextByte;      { get another byte }
      LongResult := LongResult or (CurrByte shl BitsLeft);
                                 { add the remaining bits to the return value }
      BitsLeft := BitsLeft + 8;               { set bit counter }
    end;
    BitsLeft := BitsLeft - CurrCodeSize;      { subtract the code size from bitsleft }
    Result := LongResult and CodeMask[CurrCodeSize];{ mask off the right number of bits }
  end;
end;  { NextCode }

procedure UpdateBitsPerPixel(const ColorCount: Integer;
                             var BitsPerPixel: Byte);
begin { UpdateBitsPerPixel }
  while ColorCount > 1 shl BitsPerPixel
  do Inc(BitsPerPixel)
end;  { UpdateBitsPerPixel }

procedure TGifSubImage.DecodeRasterData;
{ decodes the LZW encoded raster data }
var
  SP: integer; { index to the decode stack }
  DecodeStack: array[0..CodeTableSize-1] of byte;
               { stack for the decoded codes }
  DecodeRecord: TDecodeRecord;
  Prefix: array[0..CodeTableSize-1] of integer; { array for code prefixes }
  Suffix: array[0..CodeTableSize-1] of integer; { array for code suffixes }
  LineBytes: TBigByteArray;
  CurrBuf: word;  { line buffer index }

  procedure DecodeCode(var Code: word);
  { decodes a code and puts it on the decode stack }
  begin { DecodeCode }
    while Code > DecodeRecord.HighCode do
            { rip thru the prefix list placing suffixes }
    begin                    { onto the decode stack }
      DecodeStack[SP] := Suffix[Code]; { put the suffix on the decode stack }
      inc(SP);                         { increment decode stack index }
      Code := Prefix[Code];            { get the new prefix }
    end;
    DecodeStack[SP] := Code;           { put the last code onto the decode stack }
    Inc(SP);                           { increment the decode stack index }
  end;  { DecodeCode }

  procedure PopStack;
  { pops off the decode stack and puts into the line buffer }
  begin { PopStack }
    with DecodeRecord do
    while SP > 0 do
    begin
      dec(SP);
      LineBytes[CurrBuf] := DecodeStack[SP];
      inc(CurrBuf);
      if CurrBuf > ImageDescriptor.ImageWidth       { is the line full ? }
      then begin
        if ImageDescriptor.ImageHeight > 200
        then ShowProgress((CurrentY+1)/ImageDescriptor.ImageHeight);
        Application.ProcessMessages;
        Pixels.SetRow(CurrentY+1, LineBytes);
        { addition of one necessary because CurrentY is
          zero-based while ImagePixels is one-based }
        if not InterLaced
        then Inc(CurrentY)
        else CurrentY := NextLineNo(CurrentY, ImageDescriptor.ImageHeight,
                                              InterlacePass);
        CurrBuf := 1;
      end;
    end; { while SP > 0 }
  end;  { PopStack }

  procedure CheckSlotValue(var Slot, TopSlot: Word; var MaxVal: Boolean);
  begin { CheckSlotValue }
    if Slot >= TopSlot then      { have reached the top slot for bit size }
    begin                        { increment code bit size }
      if DecodeRecord.CurrCodeSize < 12 then  { new bit size not too big? }
      begin
        TopSlot := TopSlot shl 1;  { new top slot }
        inc(DecodeRecord.CurrCodeSize)       { new code size }
      end else
        MaxVal := True;       { Must check next code is a start code }
    end;
  end;  { CheckSlotValue }

var
  TempOldCode, OldCode: word;
  Code, C: word;
  MaxVal: boolean;
  Slot     : Word;     { position that the next new code is to be added }
  TopSlot  : Word;     { highest slot position for the current code size }
begin { TGifSubImage.DecodeRasterData }
  InitCompressionStream(LZWCodeSize, DecodeRecord); { Initialize decoding parameters }
  CompressedRasterData.Reset;
  LineBytes := TBigByteArray.Create(ImageDescriptor.ImageWidth);
  OldCode := 0;
  SP := 0;
  CurrBuf := 1;
  MaxVal := False;
  try
  try
    C := NextCode(CompressedRasterData, DecodeRecord);  { get the initial code - should be a clear code }
    while C <> DecodeRecord.EndingCode do  { main loop until ending code is found }
    begin
      if C = DecodeRecord.ClearCode then   { code is a clear code - so clear }
      begin
        DecodeRecord.CurrCodeSize := DecodeRecord.LZWCodeSize + 1;  { reset the code size }
        Slot := DecodeRecord.EndingCode + 1;           { set slot for next new code }
        TopSlot := 1 shl DecodeRecord.CurrCodeSize;    { set max slot number }
        while C = DecodeRecord.ClearCode do
          C := NextCode(CompressedRasterData, DecodeRecord);
            { read until all clear codes gone - shouldn't happen }
        if C = DecodeRecord.EndingCode then
          raise EGifException.Create('Bad code');     { ending code after a clear code }
        if C >= Slot then { if the code is beyond preset codes then set to zero }
          C := 0;
        OldCode := C;
        DecodeStack[SP] := C;   { output code to decoded stack }
        inc(SP);                { increment decode stack index }
      end else   { the code is not a clear code or an ending code so  }
      begin      { it must be a code code - so decode the code }
        Code := C;
        if Code < Slot then     { is the code in the table? }
        begin
          DecodeCode(Code);            { decode the code }
          if Slot <= TopSlot then
          begin                        { add the new code to the table }
            Suffix[Slot] := Code;      { make the suffix }
            Prefix[Slot] := OldCode;   { the previous code - a link to the data }
            inc(Slot);                 { increment slot number }
            CheckSlotValue(Slot, TopSlot, MaxVal);
            OldCode := C;              { set oldcode }
          end;
        end else
        begin  { the code is not in the table }
          if Code <> Slot then
            raise EGifException.Create('Bad code'); { so error out }
            { the code does not exist so make a new entry in the code table
              and then translate the new code }
          TempOldCode := OldCode;  { make a copy of the old code }
          while OldCode > DecodeRecord.HighCode { translate the old code and }
          do begin                              { place it on the decode stack }
            DecodeStack[SP] := Suffix[OldCode]; { do the suffix }
            OldCode := Prefix[OldCode];         { get next prefix }
          end;
          DecodeStack[SP] := OldCode;  { put the code onto the decode stack }
                                    { but DO NOT increment stack index }
              { the decode stack is not incremented because we are }
              { only translating the oldcode to get the first character }
          if Slot <= TopSlot then
          begin   { make new code entry }
            Suffix[Slot] := OldCode;       { first char of old code }
            Prefix[Slot] := TempOldCode;   { link to the old code prefix }
            inc(Slot);                     { increment slot }
            CheckSlotValue(Slot, TopSlot, MaxVal);
          end;
          DecodeCode(Code); { now that the table entry exists decode it }
          OldCode := C;     { set the new old code }
        end;
      end; { else (if code < slot) }
      PopStack;  { the decoded string is on the decode stack; put in linebuffer }
      C := NextCode(CompressedRasterData, DecodeRecord);  { get the next code and go at is some more }
      if (MaxVal = True) and (C <> DecodeRecord.ClearCode) then
        raise EGifException.Create('Code size overflow');
      MaxVal := False;
    end; { while C <> EndingCode }
  except
    on E: EListError do;
    on E: EStringListError do;
  end;
  finally
  LineBytes.Free;
  end;
end;  { TGifSubImage.DecodeRasterData }

procedure TGifSubImage.LoadFromStream(Stream: TStream);
begin { TGifSubImage.LoadFromStream }
  ReadImageDescriptor(Stream);
  ReadLocalColorMap(Stream);
  Pixels.Free;
  Pixels := TByteArray2D.Create(ImageDescriptor.ImageWidth,
                                ImageDescriptor.ImageHeight);
  ReadRasterData(Stream);
  DecodeRasterData;
end;  { TGifSubImage.LoadFromStream }

(***** write routines *****)

procedure AppendPixel(var PixelString: TByteBuffer;
                      Pixels: TBigByteArray;
                      var NextPixelNo: Longint);
begin { AppendPixel }
  PixelString.AddByte(Pixels[NextPixelNo]);
  Inc(NextPixelNo);
end;  { AppendPixel }

procedure GoBackPixel(var PixelString: TByteBuffer;
                      var NextPixelNo: Longint);
begin { GoBackPixel }
  PixelString.DeleteLastByte;
  Dec(NextPixelNo);
end;  { GoBackPixel }

procedure TGifSubImage.EncodeStatusbyte;
begin { TGifSubImage.EncodeStatusbyte }
  with ImageDescriptor
  do begin
    PackedFields := 0;
    if HasLocalColorMap
    then PackedFields := PackedFields or idLocalColorTable;
    if Interlaced
    then PackedFields := PackedFields or idInterlaced;
    if HasLocalColorMap
    then PackedFields := PackedFields or (BitsperPixel-1);
  end;
end;  { TGifSubImage.EncodeStatusbyte }

procedure TGifSubImage.WriteImageDescriptor(Stream: TStream);
var OldStatusByte: Byte;
begin { TGifSubImage.WriteImageDescriptor }
  OldStatusByte := ImageDescriptor.PackedFields;
  EncodeStatusByte;
  {if ImageDescriptor.PackedFields <> OldStatusByte
  then ShowMessage('PackedFields value has been changed');}
  Stream.Write(ImageDescriptor, SizeOf(ImageDescriptor));
end;  { TGifSubImage.WriteImageDescriptor }

procedure TGifSubImage.WriteLocalColorMap(Stream: TStream);
begin { TGifSubImage.WriteLocalColorMap }
  if HasLocalColorMap
  then
    with LocalColorMap
    do Stream.Write(CT.Colors[0], Count*SizeOf(TColorItem))
end;  { TGifSubImage.WriteLocalColorMap }

procedure TGifSubImage.EncodeRasterdata;
var
  PixelArray: TBigByteArray;
  CodeTable: TCodeTable;
  ClearCode: Word;
  EndCode: Word;
  FirstPixel: Byte;
  OldCode, Code: Integer;
  PixelString: TByteBuffer;
  NextPixelNo: Longint;
  Found: Boolean;
  PrevFoundIndex, FoundIndex: Integer;
  EncodedBytes: TEncodedBytes;
begin { TGifSubImage.EncodeRasterdata }
  MakeFlat(Pixels, Interlaced, PixelArray);
  CodeTable := TCodeTable.Create;
  CodeTable.Clear(LZWCodeSize+1);
  PixelString := TByteBuffer.Create;
  ClearCode := 1 shl LZWCodeSize;
  EndCode := ClearCode + 1;
  EncodedBytes := TEncodedBytes.Create;
  EncodedBytes.AppendCode(ClearCode, CodeTable.CodeSize);
  NextPixelNo := 1;
  FirstPixel := PixelArray[NextPixelNo];
  EncodedBytes.AppendCode(FirstPixel, CodeTable.CodeSize);
  OldCode := FirstPixel;
  Inc(NextPixelNo);
  ShowProgress(0);
  repeat
    PixelString.Clear;
    AppendPixel(PixelString, PixelArray, NextPixelNo);
    CodeTable.AddEntry(OldCode, PixelString.FirstByte);
    Found := True;
    PrevFoundIndex := PixelString.FirstByte;
    while Found and (NextPixelNo <= PixelArray.Count)
    do begin
      AppendPixel(PixelString, PixelArray, NextPixelNo);
      Found := CodeTable.IsInTable(PixelString, PrevFoundIndex, FoundIndex)
    end;
    if not Found
    then begin
      GoBackPixel(PixelString, NextPixelNo);
      Code := PrevFoundIndex
    end
    else Code := FoundIndex;
    EncodedBytes.AppendCode(Code, CodeTable.CodeSize);
    if CodeTable.TableFull and (NextPixelNo <= PixelArray.Count)
    then begin
      EncodedBytes.AppendCode(ClearCode, CodeTable.CodeSize);
      CodeTable.Clear(LZWCodeSize+1);
      FirstPixel := PixelArray[NextPixelNo];
      EncodedBytes.AppendCode(FirstPixel, CodeTable.CodeSize);
      OldCode := FirstPixel;
      Inc(NextPixelNo);
      ShowProgress(NextPixelNo/PixelArray.Count);
    end
    else OldCode := Code;
  until (NextPixelNo > PixelArray.Count);
  EncodedBytes.Finish(EndCode, CodeTable.CodeSize);
  CompressedRasterData := EncodedBytes.Value;
  PixelString.Free;
  CodeTable.Free;
  EncodedBytes.Free;
  PixelArray.Free;
  ShowProgress(1);
end;  { TGifSubImage.EncodeRasterdata }

procedure TGifSubImage.WriteRasterData(Stream: TStream);
var
  StringNo: Integer;
  Block: String;
  BlokByteCount: Byte;
begin { TGifSubImage.WriteRasterData }
  Stream.Write(LZWCodeSize, 1);
  for StringNo := 1 to CompressedRasterData.StringCount
  do begin
    Block := CompressedRasterData.Strings[StringNo];
    BlokByteCount := Length(Block);
    Stream.Write(BlokByteCount, 1);
    Stream.Write(Block[1], BlokByteCount);
  end;
  BlokByteCount := 0;
  Stream.Write(BlokByteCount, 1);
end;  { TGifSubImage.WriteRasterData }

procedure TGifSubImage.SaveToStream(Stream: TStream);
{ Saves it as a .bmp! }

  procedure CreateBitHeader(Image: TGifSubImage;
                            var bmHeader: TBitmapInfoHeader);
  { This routine takes the values from the GIF image
    descriptor and fills in the appropriate values in the
    bit map header struct. }
  begin { CreateBitHeader }
    with BmHeader do
    begin
      biSize           := Sizeof(TBitmapInfoHeader);
      biWidth          := Image.ImageDescriptor.ImageWidth;
      biHeight         := Image.ImageDescriptor.ImageHeight;
      biPlanes         := 1;            {Arcane and rarely used}
      biBitCount       := 8;            {Hmmm Should this be hardcoded ?}
      biCompression    := BI_RGB;       {Sorry Did not implement compression in this version}
      biSizeImage      := 0;            {Valid since we are not compressing the image}
      biXPelsPerMeter  :=143;           {Rarely used very arcane field}
      biYPelsPerMeter  :=143;           {Ditto}
      biClrUsed        := 0;            {all colors are used}
      biClrImportant   := 0;            {all colors are important}
    end;
  end;  { CreateBitHeader }

var
  BitFile: TBitmapFileHeader;
  BmHeader: TBitmapInfoHeader; {File Header for bitmap file}
  i: integer;
  Line: integer;
  ch: char;
  x: integer;
  LineBytes: TBigByteArray;
begin { TGifSubImage.SaveToStream }
  with BitFile do begin
    with ImageDescriptor do
    bfSize := (3*255) + Sizeof(TBitmapFileHeader) +
              Sizeof(TBitmapInfoHeader) + (Longint(ImageHeight)*
                                           Longint(ImageWidth));
    bfReserved1 := 0; {not currently used}
    bfReserved2 := 0; {not currently used}
    bfOffBits := (4*256)+ Sizeof(TBitmapFileHeader)+
                          Sizeof(TBitmapInfoHeader);
  end;
  CreateBitHeader(Self, bmHeader);
  {Write the file header}
  with Stream do begin
    Position:=0;
    ch:='B';
    Write(ch,1);
    ch:='M';
    Write(ch,1);
    Write(BitFile.bfSize,sizeof(BitFile.bfSize));
    Write(BitFile.bfReserved1,sizeof(BitFile.bfReserved1));
    Write(BitFile.bfReserved2,sizeof(BitFile.bfReserved2));
    Write(BitFile.bfOffBits,sizeof(BitFile.bfOffBits));
    {Write the bitmap image header info}
    Write(BmHeader,sizeof(BmHeader));
    {Write the BGR palete information to this file}
    if HasLocalColorMap then {Use the local color table}
    begin
      for i:= 0 to 255 do
      begin
        Write(LocalColormap.CT.Colors[i].Blue,1);
        Write(LocalColormap.CT.Colors[i].Green,1);
        Write(LocalColormap.CT.Colors[i].Red,1);
        Write(ch,1); {Bogus palette entry required by windows}
      end;
    end else {Use the global table}
    begin
      with FGifFile do
      for i := 0 to 255 do
      begin
        Write(GlobalColormap.CT.Colors[i].Blue,1);
        Write(GlobalColormap.CT.Colors[i].Green,1);
        Write(GlobalColormap.CT.Colors[i].Red,1);
        Write(ch,1); {Bogus palette entry required by windows}
      end;
    end;
    for Line := ImageDescriptor.ImageHeight downto 1
    do begin
 {Use reverse order since gifs are stored top to bottom.
  Bmp file need to be written bottom to top}
      LineBytes := Pixels.CopyRow(Line);
      x := ImageDescriptor.ImageWidth;
      Write(LineBytes.Address^, x);
      ch := chr(0);
      while (x and 3) <> 0 do { Pad up to 4-byte boundary with zeroes }
      begin
        Inc(x);
        Write(ch, 1);
      end;
      LineBytes.Free;
      if ImageDescriptor.ImageHeight > 500
      then ShowProgress(1-(Line-1)/ImageDescriptor.ImageHeight);
    end;
    Position := 0; { reset memory stream}
  end;
end;  { TGifSubImage.SaveToStream }

(***** end of TGifSubImage *****)

(***** TGifFile *****)

constructor TGifFile.Create;
begin { TGifFile.Create }
  inherited Create;
  Header.Signature := 'GIF';
  Header.Version := '87a';
  ScreenDescriptor.ScreenWidth := 0;
  ScreenDescriptor.ScreenHeight := 0;
  ScreenDescriptor.PackedFields := 0;
  ScreenDescriptor.BackGroundcolorIndex := 0;
  ScreenDescriptor.AspectRatio := 0;
  HasGlobalColorMap := True;
  BitsPerPixel := 1;  { arbitrary; other choices would be 4 or 8 }
  GlobalColorMap := TColorTable.Create(0);
  SubImages := TList.Create;
end;  { TGifFile.Create }

destructor TGifFile.Destroy;
var
  SubImageNo: Integer;
  SubImage: TGifSubImage;
begin { TGifFile.Destroy }
  GlobalColormap.Free;
  for SubImageNo := 1 to SubImages.Count
  do begin
    SubImage := SubImages[SubImageNo-1];
    SubImage.Free;
  end;
  SubImages.Free;
  inherited Destroy;
end;  { TGifFile.Destroy }

(***** end of constructor and destructor *****)
(***** property access methods *****)

(*function TGifFile.GetBGColor: TColor;
var BGCI: Byte;
begin { TGifFile.GetBGColor }
  BGCI := ScreenDescriptor.BackGroundColorIndex;
  Result := GlobalColorMap.GetColor(BGCI);
end;  { TGifFile.GetBGColor }*)

(***** end of property access methods *****)

procedure TGifFile.AddBitmap(Bitmap: TBitmap);
var NewSubImage: TGifSubImage;
begin { TGifFile.AddBitmap }
  NewSubImage := TGifSubImage.CreateEmpty;
  NewSubImage.FBitmap := Bitmap;
  SubImages.Add(NewSubImage);
end;  { TGifFile.AddBitmap }

(*function TGifFile.AnimateInterval: Word;
var SubImage: TGifSubImage;
    SubImageNo: Integer;
    Interval: Word;
begin { TGifFile.AnimateInterval }
  if SubImages.Count < 2
  then Result := 0
  else begin
    Result := 0;
    for SubImageNo := 1 to SubImages.Count
    do begin
      SubImage := SubImages[SubImageNo-1];
      Interval := SubImage.AnimateInterval;
{$ifdef debug}
      if Interval = 0
      then WarningMessage('Multiple subimages; no animation time interval found');
      if (Result <> 0) and (Result <> Interval)
      then WarningMessage('Multiple subimages; animation time intervals not equal');;
{$endif debug}
      if Interval <> 0
      then Result := Interval
    end;
  end;
end;  { TGifFile.AnimateInterval }*)

function TGifFile.AsBitmap: TBitmap;
var Stream: TMemoryStream;
begin { TGifFile.AsBitmap }
  Stream := TMemoryStream.Create;
  try
    TGifSubImage(Self.SubImages[0]).SaveToStream(Stream);
    Result := TBitmap.Create;
    Result.LoadFromStream(Stream);
  finally
    Stream.Free;
  end;
end;  { TGifFile.AsBitmap }

function TGifFile.GetSubImage(Index: Integer): TGifSubImage;
begin
  Result := SubImages[Index-1]
end;  { TGifFile.GetSubImage }

(***** Read routines *****)

procedure TGifFile.ReadSignature(Stream: TStream);
begin { TGifFile.ReadSignature }
  Stream.Read(Header, SizeOf(TGifHeader));
  if (Header.Version <> '87a') and (Header.Version <> '89a') and
     (Header.Version <> '87A') and (Header.Version <> '89A')
  then raise EGifException.Create('Gif Version must be 87a or 89a');
end;  { TGifFile.ReadSignature }

procedure TGifFile.DecodeStatusByte;
var
  ColorResolutionBits: Byte;
begin { TGifFile.DecodeStatusByte }
  HasGlobalColorMap := (ScreenDescriptor.PackedFields and lsdGlobalColorTable) = lsdGlobalColorTable;  { M=1 }
  ColorResolutionbits := 1 + (ScreenDescriptor.PackedFields and lsdColorResolution) shr 4;
  {GlobalColorMap.Count := 1 shl ColorResolutionbits;}
  BitsPerPixel := 1 + ScreenDescriptor.PackedFields and $07;
  GlobalColorMap.Count := 1 shl BitsPerPixel;
end;  { TGifFile.DecodeStatusByte }

procedure TGifFile.ReadScreenDescriptor(Stream: TStream);
begin { TGifFile.ReadScreenDescriptor }
  Stream.Read(ScreenDescriptor, SizeOf(ScreenDescriptor));
  DecodeStatusByte;
end;  { TGifFile.ReadScreenDescriptor }

procedure TGifFile.ReadGlobalColorMap(Stream: TStream);
begin { TGifFile.ReadGlobalColorMap }
  if HasGlobalColorMap
  then
    with GlobalColorMap
    do Stream.Read(CT.Colors[0], Count*SizeOf(TColorItem));
end;  { TGifFile.ReadGlobalColorMap }

procedure TGifFile.ReadExtensionBlocks(Stream: TStream;
                                       var SeparatorChar: Char;
                                       var Extensions: TExtensionList);
{ The '!' has already been read before calling }

  procedure ReadDataBlocks(Stream: TStream; var Data: TStringList);
  { data not yet stored }
  var
    BlockSize: Byte;
    NewString: String;
  begin { ReadDataBlocks }
    Data := TStringlist.Create;
    repeat
      Stream.Read(BlockSize, 1);
      if BlockSize <> 0
      then begin
    {$ifdef ver80}
        NewString[0] := Chr(BlockSize);
    {$else}
        SetLength(NewString, BlockSize);
    {$endif ver80}
        Stream.Read(NewString[1], BlockSize);
        Data.Add(NewString);
      end;
    until BlockSize = 0;
  end;  { ReadDataBlocks }

var
  NewExtension: GifDecl.TExtension;
  ExtensionLabel: Byte;
begin { TGifFile.ReadExtensionBlocks }
  Extensions := TExtensionList.Create;
  while SeparatorChar = '!'
  do begin
    NewExtension := GifDecl.TExtension.Create;
    Extensions.Add(NewExtension);
    Stream.Read(ExtensionLabel, 1);
    with NewExtension.ExtRec do
    case ExtensionLabel of
      $F9: ExtensionType := etGCE;  { graphic control extension }
      $FE: ExtensionType := etCE;   { comment extension }
      $01: ExtensionType := etPTE;  { plain text extension }
      $FF: ExtensionType := etAPPE; { application extension }
      else raise EGifException.Create('Unrecognized extension block.'+
                 #13+#10 + 'Code = $' + IntToHex(ExtensionLabel, 2));
    end; { case }
    with NewExtension.ExtRec do
    case ExtensionLabel of
      $F9: Stream.Read(GCE, SizeOf(GCE));
      $FE: ReadDataBlocks(Stream, Comment);
      $01: begin
             Stream.Read(PTE, SizeOf(PTE)-SizeOf(PTE.PlainTextData));
             ReadDataBlocks(Stream, PTE.PlainTextData);
           end;
      $FF: begin
             Stream.Read(APPE, SizeOf(APPE)-SizeOf(APPE.AppData));
             ReadDataBlocks(Stream, APPE.AppData);
           end;
    end; { case }
    Stream.Read(SeparatorChar, 1);
  end;
end;  { TGifFile.ReadExtensionBlocks }

procedure TGifFile.LoadFromFile(filename: String);
var
  Stream: TMemoryStream;
begin { TGifFile.LoadFromFile }
  Stream := TMemoryStream.Create;
  try
    Stream.LoadFromFile(filename);
    LoadFromStream(Stream);
  finally
    Stream.Free;
  end;
end;  { TGifFile.LoadFromFile }

procedure TGifFile.LoadFromStream(Stream: TStream);
var
  SeparatorChar: Char;
  NewSubImage: TGifSubimage;
  Extensions: TExtensionList;
  OldStreamPosition: Longint;
begin { TGifFile.LoadFromStream }
  Screen.Cursor := crHourGlass;
  try
    Stream.Position := 0;
    OldStreamPosition := 0;
    ReadSignature(Stream);
    ReadScreenDescriptor(Stream);
    ReadGlobalColorMap(Stream);
    Stream.Read(SeparatorChar, 1);
    while (SeparatorChar <> ';') and not (Stream.Position >= Stream.Size)
          and not (Stream.Position = OldStreamPosition)
    do begin
      OldStreamPosition := Stream.Position;
      ReadExtensionBlocks(Stream, SeparatorChar, Extensions);
      if SeparatorChar = ','
      then begin
        NewSubImage := TGifSubImage.Create(GlobalColormap.Count, Self);
        NewSubImage.Extensions.Free;
        NewSubImage.Extensions := Extensions;
        NewSubImage.LoadFromStream(Stream);
        SubImages.Add(NewSubImage);
        if not (Stream.Position >= Stream.Size)
        then Stream.Read(SeparatorChar, 1)
        else SeparatorChar := ';'
      end
      else Extensions.Free;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;  { TGifFile.LoadFromStream }

(***** write routines *****)

procedure TGifFile.EncodeGifFile;
{ Encodes the subimages which are (all) not yet encoded (just stored as
  bitmaps) }
var
  SubImage: TGifSubImage;
  Colormap: TColorTable;
  Pixels: TByteArray2D;
  SubImageNo: Integer;
begin { TGifFile.EncodeGifFile }
  for SubImageNo := 1 to SubImages.Count
  do begin
    SubImage := SubImages[SubImageNo-1];
    BitmapToPixelmatrix(SubImage.FBitmap, Colormap, Pixels);
    SubImages.Remove(SubImage);
    SubImage.Free;
    SubImage := TGifSubImage.Create(Colormap.Count, Self);
    SubImages.Add(SubImage);
    if GlobalColormap.Count = 0
    then GlobalColormap := Colormap
    else begin
      SubImage.HasLocalColorMap := True;
      SubImage.LocalColormap := Colormap;
    end;
    UpdateBitsPerPixel(GlobalColormap.Count, BitsPerPixel);
    SubImage.EncodeStatusByte;
    SubImage.Pixels.Free;
    SubImage.Pixels := Pixels;
    SubImage.ImageDescriptor.ImageWidth := Pixels.Count1;
    SubImage.ImageDescriptor.ImageHeight := Pixels.Count2;
    if ScreenDescriptor.ScreenWidth < Pixels.Count1
    then ScreenDescriptor.ScreenWidth := Pixels.Count1;
    if ScreenDescriptor.ScreenHeight < Pixels.Count2
    then ScreenDescriptor.ScreenHeight := Pixels.Count2;
    EncodeStatusByte;
  end;
end;  { TGifFile.EncodeGifFile }

procedure TGifFile.EncodeStatusByte;
var
  ColorResolutionBits: Byte;
begin { TGifFile.EncodeStatusByte }
  with ScreenDescriptor
  do begin
    PackedFields := 0;
    if HasGlobalColorMap
    then PackedFields := PackedFields + lsdGlobalColorTable;
    case GlobalColorMap.Count of
      2: ColorResolutionBits := 1;
      4: ColorResolutionBits := 2;
      8: ColorResolutionBits := 3;
      16: ColorResolutionBits := 4;
      32: ColorResolutionBits := 5;
      64: ColorResolutionBits := 6;
      128: ColorResolutionBits := 7;
      256: ColorResolutionBits := 8;
      else raise EGifException.Create('unexpected number of colors')
    end;
    PackedFields := PackedFields + (ColorResolutionBits-1) shl 4;
    PackedFields := PackedFields + (BitsPerPixel-1);
  end;
end;  { TGifFile.EncodeStatusByte }

procedure TGifFile.WriteSignature(Stream: TStream);
begin { TGifFile.WriteSignature }
  Stream.Write(Header, SizeOf(TGifHeader));
end;  { TGifFile.WriteSignature }

procedure TGifFile.WriteScreenDescriptor(Stream: TStream);
begin { TGifFile.WriteScreenDescriptor }
  EncodeStatusByte;
  Stream.Write(ScreenDescriptor, SizeOf(ScreenDescriptor));
end;  { TGifFile.WriteScreenDescriptor }

procedure TGifFile.WriteGlobalColorMap(Stream: TStream);
begin { TGifFile.WriteGlobalColorMap }
  if HasGlobalColorMap
  then
    with GlobalColorMap
    do Stream.Write(CT.Colors[0], Count*SizeOf(TColorItem))
end;  { TGifFile.WriteGlobalColorMap }

procedure TGifFile.SaveToFile(filename: String);
var
  Stream: TMemoryStream;
begin { TGifFile.SaveToFile }
  Stream := TMemoryStream.Create;
  SaveToStream(Stream);
  Stream.SaveToFile(filename);
  Stream.Free;
end;  { TGifFile.SaveToFile }

procedure TGifFile.SaveToStream(Stream: TStream);
var
  ImageSeparator: Char;
  ImageNo: Integer;
  SubImage: TGifSubimage;
begin { TGifFile.SaveToStream }
  Screen.Cursor := crHourGlass;
  if not Assigned(GetSubImage(1).FGifFile)
  then EncodeGifFile;
  WriteSignature(Stream);
  WriteScreenDescriptor(Stream);
  WriteGlobalColorMap(Stream);
  ImageSeparator := ',';
  for ImageNo := 1 to SubImages.Count
  do begin
    Stream.Write(ImageSeparator, 1);
    SubImage := SubImages[ImageNo-1];
    if SubImage.CompressedRasterData.TotalSize = 0
    then SubImage.EncodeRasterdata;
    SubImage.WriteImageDescriptor(Stream);
    SubImage.WriteLocalColorMap(Stream);
    SubImage.WriteRasterData(Stream);
  end;
  ImageSeparator := ';';
  Stream.Write(ImageSeparator, 1);
  Screen.Cursor := crDefault;
end;  { TGifFile.SaveToStream }

(***** end of methods of TGifFile *****)

(***** TGifBitmap *****)

procedure TGifBitmap.LoadFromStream(Stream: TStream);
{ Reads TGifBitmap from a (GIF) stream; necessary to make
  TPicture.RegisterFileFormat work }
var
  aGif: TGifFile;
  aStream: TMemoryStream;
begin { TGifBitmap.LoadFromStream }
  aGif := TGifFile.Create;
  try
    aGif.LoadFromStream(Stream);
    aStream := TMemoryStream.Create;
    try
      aGif.GetSubImage(1).SaveToStream(aStream);
      inherited LoadFromStream(aStream);
    finally
      aStream.Free;
    end;
  finally
    aGif.Free;
  end;
end;  { TGifBitmap.LoadFromStream }

(***** end of methods of TGifBitmap *****)

initialization
{ Register the TGifBitmap as a new graphic file format;
  now all the TPicture storage stuff can access our new
  GIF graphic format! }
  TPicture.RegisterFileFormat('gif','GIF-Format', TGifBitmap);

{$ifdef ver90}
  FileMode := 0; { now Reset can be used on ReadOnly files }
{$endif ver90}

{$ifndef ver80}
{$ifndef ver90}
finalization
  TPicture.UnRegisterGraphicClass(TGifBitmap);
{$endif ver90}
{$endif ver80}
end. { unit GifUnit }
