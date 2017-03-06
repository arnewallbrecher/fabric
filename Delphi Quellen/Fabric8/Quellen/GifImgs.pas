unit GifImgs;
{ Exports TGifImage component. See also the unit GifUnit.pas.

(c) Reinier Sterkenburg 1997, 1998
    r.p.sterkenburg@dataweb.nl
    www.dataweb.nl/~r.p.sterkenburg

24 Jul 97: - Added Register procedure
           - Added a property StartImmediately
             (default False; at design time animation probably not wanted)
           - Added procedure AnimateOnce (which works through extra boolean
             field NoRepeat)
 2 Aug 97: - Added LoadFromBmpfile and SaveToFile;
             implemented LoadFromFile differently: encoding to GIF is not
             immedately done anymore
15 Sep 97: - added method Faster
 2 Dec 97: - methods in alphabetical order
           - added PictureChanged and field FOldOnChange to insert
             PictureChanged in the OnChange chain of events
13 Feb 98: - finally got all (most?) combinations of transparency and
             disposal methods working
17 Feb 98: - uses WinTypes in stead of Windows (to make use with Delphi 1 possible)
}
interface

uses
  WinTypes,        { Imports TRect }
  Classes,         { Imports TComponent }
  ColorTbl,        { Imports TColorTable }
  DynArrB,         { Imports TByteArray2D }
  ExtCtrls,        { Imports TImage }
  Forms,           { Imports Application }
  GifDecl,         { Imports TDisposalMethod }
  GifUnit,         { Imports TGifFile }
  Graphics,        { Imports TBitmap }
  MoreUtil,        { Imports FreeObject }
  SysUtils;        { IntToStr; temporary?}

type
  TGifImage = class(TImage)
  private
    Freeing: Boolean;
    PrevBitmap: TBitmap;
    PrevSubImage: TGifSubImage;

    PrevX, PrevY: Integer;
    Changed: Boolean;
    NoRepeat: Boolean;

    FOldOnChange: TNotifyEvent;
    FGifFile: TGifFile;
    FTimer: TTimer;
    FCurrSubImageNo: Integer;
    FStartImmediately: Boolean;
    procedure GetPrevBitmap(SubImage: TGifSubImage);
    procedure NextImageEvent(Sender: TObject);
    function  GetAnimating: Boolean;
    procedure SetAnimating(NewValue: Boolean);
    procedure PictureChanged(Sender: TObject);
  public
    constructor Create(AnOwner: TComponent); override;
    destructor Destroy; override;
    procedure AnimateOnce;
    procedure Faster;
    procedure LoadFromGifFile(GifFilename: String);
    procedure LoadFromBmpFile(BmpFilename: String);
    procedure NextImage;
    procedure SaveToFile(Filename: String);
    procedure Slower;
  published
    property Animating: Boolean read GetAnimating write SetAnimating;
    property StartImmediately: Boolean read FStartImmediately
                                       write FStartImmediately default False;
  end; { TGifImage }

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Additional', [TGifImage])
end;

constructor TGifImage.Create(AnOwner: TComponent);
begin { TGifImage.Create }
  inherited Create(AnOwner);
  Width := 0;
  Height := 0;
  Freeing := False;
  FTimer := TTimer.Create(Self);
  FTimer.Enabled := False;
  FTimer.OnTimer := NextImageEvent;
  FCurrSubImageNo := 1;
  PrevSubImage := nil;
  FStartImmediately := False;
  NoRepeat := False;
  FGifFile := TGifFile.Create;
  FOldOnChange := Picture.OnChange;
  Picture.OnChange := PictureChanged;
  Changed := False;
end;  { TGifImage.Create }

destructor TGifImage.Destroy;
begin { TGifImage.Destroy }
  FTimer.Enabled := False;
  FTimer.Free;
  FGifFile.Free;
  inherited Destroy;
end;  { TGifImage.Destroy }

procedure TGifImage.AnimateOnce;
begin { TGifImage.AnimateOnce }
  NoRepeat := True;
  FCurrSubImageNo := 0;
  FTimer.Interval := FGifFile.GetSubImage(1).AnimateInterval*10;
  FTimer.Enabled := True;
end;  { TGifImage.AnimateOnce }

procedure TGifImage.Faster;
var SubImageNo: Integer;
begin { TGifImage.Faster }
  for SubImageNo := 1 to FGifFile.SubImages.Count
  do FGifFile.GetSubImage(SubImageNo).AnimateInterval :=
     FGifFile.GetSubImage(SubImageNo).AnimateInterval div 2
end;  { TGifImage.Faster }

function TGifImage.GetAnimating: Boolean;
begin { TGifImage.GetAnimating }
  Result := FTimer.Enabled;
end;  { TGifImage.GetAnimating }

procedure TGifImage.LoadFromBmpFile(BmpFilename: String);
var
  Bitmap: TBitmap;
begin { TGifImage.LoadFromBmpFile }
  Freeing := True;
  Application.ProcessMessages;
  FGifFile.Free;
  FGifFile := TGifFile.Create;
  Bitmap := TBitmap.Create;
  Bitmap.LoadFromFile(BmpFilename);
  FGifFile.AddBitmap(Bitmap);
  Picture.Bitmap := Bitmap;
  Freeing := False;
end;  { TGifImage.LoadFromBmpFile }


procedure TGifImage.LoadFromGifFile(GifFilename: String);

  procedure DrawFirstTime;
  var
    BGCI: Integer;
    MustDrawBackground: Boolean;
    BGColor: TColor;
    SubImg: TGifSubImage;
    R, RS: TRect;
    ScreenXY: TPoint;
  begin { DrawFirstTime }
    SubImg := FGifFile.GetSubImage(FCurrSubImageNo);
    Picture.Bitmap.Width := FGifFile.ScreenDescriptor.ScreenWidth;
    Picture.Bitmap.Height := FGifFile.ScreenDescriptor.ScreenHeight;
    MustDrawBackground := FGifFile.HasGlobalColorMap and
                          not SubImg.IsTransparent;
    if not MustDrawBackground and not SubImg.IsTransparent
    then Picture.Bitmap := SubImg.AsBitmap
    else begin
      FreeObject(PrevBitmap);
      PrevBitmap := TBitmap.Create;
      PrevBitmap.Width := FGifFile.ScreenDescriptor.ScreenWidth;
      PrevBitmap.Height := FGifFile.ScreenDescriptor.ScreenHeight;
      if MustDrawBackground
      then begin
        BGCI := FGifFile.ScreenDescriptor.BackGroundColorIndex;
        if SubImg.HasLocalColorMap
        then BGColor := SubImg.LocalColorMap.GetColor(BGCI)
        else BGColor := FGifFile.GlobalColorMap.GetColor(BGCI);
        RS := Rect(0, 0, PrevBitmap.Width, PrevBitmap.Height);
        Picture.Bitmap := PrevBitmap;
        {Picture.Bitmap.Width := PrevBitmap.Width;
        Picture.Bitmap.Height := PrevBitmap.Height;}
        Picture.Bitmap.Canvas.Brush.Color := BGColor;
        Picture.Bitmap.Canvas.FillRect(RS);
      end
      else begin
        ScreenXY := ClientToScreen(Point(0, 0));
        R := Rect(ScreenXY.x, ScreenXY.y,
                  ScreenXY.x+PrevBitmap.Width, ScreenXY.y+PrevBitmap.Height);
        GrabScreen(R, PrevBitmap);
        Picture.Bitmap := PrevBitmap;
        DrawTransparent(Picture.Bitmap.Canvas, 0, 0, SubImg.AsBitmap, SubImg.TransparentColor);
      end;
    end;
    PrevSubImage := SubImg;
  end; { DrawFirstTime }

var NewInterval: Integer;
begin { TGifImage.LoadFromGifFile }
  Freeing := True;
  Application.ProcessMessages;
  FGifFile.Free;
  FGifFile := TGifFile.Create;
  FCurrSubImageNo := 1;
  PrevSubImage := nil;
  FGifFile.LoadFromFile(GifFilename);
  FTimer.Enabled := False;
  if FGifFile.SubImages.Count <> 1
  then begin
    NewInterval := FGifFile.GetSubImage(1).AnimateInterval*10;
    if NewInterval <> 0
    then FTimer.Interval := NewInterval
    else FTimer.Interval := 10;
    if StartImmediately
    then Animating := True;
  end;
  DrawFirstTime;
  Freeing := False;
end;  { TGifImage.LoadFromGifFile }

procedure TGifImage.NextImageEvent(Sender: TObject);
begin { TGifImage.NextImageEvent }
  if not Freeing
  then NextImage;
end;  { TGifImage.NextImageEvent }

procedure TGifImage.NextImage;
var NewInterval: Integer;
begin { TGifImage.NextImage }
  Inc(FCurrSubImageNo);
  if FGifFile.SubImages.Count = 0
  then begin
    FGifFile.AddBitmap(Picture.Bitmap);
    { this was meant for use at design time; not finished }
  end;
  if FCurrSubImageNo > FGifFile.SubImages.Count
  then begin
    FCurrSubImageNo := 1;
    if NoRepeat
    then begin
      FTimer.Enabled := False;
      NoRepeat := False;
    end;
    Application.ProcessMessages;
  end;
  NewInterval := FGifFile.GetSubImage(FCurrSubImageNo).AnimateInterval*10;
  if NewInterval <> 0
  then FTimer.Interval := NewInterval;
  PictureChanged(nil);
end;  { TGifImage.NextImage }

procedure TGifImage.GetPrevBitmap(SubImage: TGifSubImage);
var
  DestR, SrcR: TRect;
begin { TGifImage.GetPrevBitmap }
  FreeObject(PrevBitmap);
  if SubImage.IsTransparent or
     (SubImage.DisposalMethod = dmRestorePrevious)
  then begin
    PrevBitmap := TBitmap.Create;
    PrevBitmap.Width := SubImage.ImageDescriptor.ImageWidth;
    PrevBitmap.Height := SubImage.ImageDescriptor.ImageHeight;
    DestR := Rect(0, 0, PrevBitmap.Width, PrevBitmap.Height);
    with SubImage.ImageDescriptor do
    SrcR := Rect(ImageLeftPos, ImageTopPos,
                 ImageLeftPos + ImageWidth, ImageTopPos + ImageHeight);
    PrevBitmap.Canvas.CopyRect(DestR, Canvas, SrcR);
  end else if SubImage.DisposalMethod = dmRestoreBackgroundColor
  then begin
    PrevBitmap := TBitmap.Create;
    PrevBitmap.Width := SubImage.ImageDescriptor.ImageWidth;
    PrevBitmap.Height := SubImage.ImageDescriptor.ImageHeight;
    DestR := Rect(0, 0, PrevBitmap.Width, PrevBitmap.Height);
    PrevBitmap.Canvas.Brush.Color := SubImage.BackgroundColor;
    PrevBitmap.Canvas.FillRect(DestR);
  end;
  PrevX := SubImage.ImageDescriptor.ImageLeftPos;
  PrevY := SubImage.ImageDescriptor.ImageTopPos;
end;  { TGifImage.GetPrevBitmap }


procedure TGifImage.PictureChanged(Sender: TObject);
var
  SubImage: TGifSubImage;
begin { TGifImage.PictureChanged }
  if not Changed and not DrawingTransparent
  then begin
    Changed := True;
    if (PrevSubImage <> nil) and
       (PrevSubimage.DisposalMethod in [dmRestorePrevious, dmRestoreBackgroundColor])
    then Picture.Bitmap.Canvas.Draw(PrevX, PrevY, PrevBitmap);
    FreeObject(PrevBitmap);
    SubImage := FGifFile.GetSubImage(FCurrSubImageNo);
    if (SubImage.DisposalMethod in [dmRestoreBackgroundColor, dmRestorePrevious])
    then GetPrevBitmap(SubImage);
    with SubImage.ImageDescriptor
    do if not SubImage.IsTransparent
       then Picture.BitMap.Canvas.Draw
               (ImageLeftPos, ImageTopPos, SubImage.AsBitmap)
       else DrawTransparent(Canvas, ImageLeftPos, ImageTopPos,
                SubImage.AsBitmap, SubImage.TransparentColor);
    PrevSubimage := SubImage;
  end;
  Changed := False;
  FOldOnChange(Sender);
end;  { TGifImage.PictureChanged }

procedure TGifImage.SaveToFile(Filename: String);
begin { TGifImage.SaveToFile }
  FGifFile.SaveToFile(Filename)
end;  { TGifImage.SaveToFile }

procedure TGifImage.SetAnimating(NewValue: Boolean);
begin { TGifImage.SetAnimating }
  if FTimer.Enabled <> NewValue
  then FTimer.Enabled := NewValue;
end;  { TGifImage.SetAnimating }

procedure TGifImage.Slower;
var SubImageNo: Integer;
begin { TGifImage.Slower }
  for SubImageNo := 1 to FGifFile.SubImages.Count
  do FGifFile.GetSubImage(SubImageNo).AnimateInterval :=
     FGifFile.GetSubImage(SubImageNo).AnimateInterval * 2
end;  { TGifImage.Slower }

end.  { unit GifImgs }
