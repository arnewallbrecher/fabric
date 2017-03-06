unit Grafik;

interface
uses Dialogs, Globvar, Graphics, SysUtils, GifImage, Bmp2Tiff,
     extdlgs, jpeg, ReadTiff, PngImage, Classes, Windows, Texte,
     extctrls, stdctrls;

procedure WaehlFont(FDialog: TFontDialog);
procedure Unterschrift (Canvas:TCanvas;Ratio:real;NameS: string);
procedure SpeichernBMP (SDialog: TSavePictureDialog; Bild: Graphics.TBitmap);
procedure SpeichernGIF (SDialog: TSavePictureDialog; Bild: Graphics.TBitmap);
procedure SpeichernTIF (SDialog: TSaveDialog; Bild: Graphics.TBitmap);
procedure SpeichernJPG (SDialog: TSavePictureDialog; Bild: Graphics.TBitmap);
procedure SpeichernWMF (SDialog: TSavePictureDialog; Bild: Graphics.TBitmap);
procedure SpeichernEMF (SDialog: TSavePictureDialog; Bild: Graphics.TBitmap);
procedure SpeichernPNG (SDialog: TSavePictureDialog; Bild: Graphics.TBitmap);
procedure OeffnenBMP (ODialog: TOpenPictureDialog;
                      BildI: Graphics.TBitmap; IWidth: word;
                      IHeight: word; Canvas: TCanvas);
procedure OeffnenGIF (ODialog: TOpenPictureDialog;
                      BildI: Graphics.TBitmap; IWidth: word;
                      IHeight: word; Canvas: TCanvas);
procedure OeffnenTIF (ODialog: TOpenDialog; BildI: Graphics.TBitmap;
                      IWidth: word; IHeight: word; Canvas: TCanvas);
procedure OeffnenJPG (ODialog: TOpenDialog;
                      BildI: Graphics.TBitmap; IWidth: word;
                      IHeight: word; Canvas: TCanvas);
procedure OeffnenWMF (ODialog: TOpenDialog;
                      IWidth: word; IHeight: word;
                      Canvas: TCanvas);
procedure OeffnenEMF (ODialog: TOpenDialog;
                      IWidth: word; IHeight: word;
                      Canvas: TCanvas);
procedure OeffnenPNG (ODialog:TOpenDialog; BildI: Graphics.TBitmap;
                      IWidth,IHeight:word; Canvas: TCanvas);
procedure GrafikSpeichern(Image: TImage; Box: TListBox; Ratio: real;
                          PDialog: TSavePictureDialog; Dialog: TSaveDialog);
procedure holenBMP (HDialog: TOpenPictureDialog; var CFile,PixS: string);
procedure holenGIF (HDialog: TOpenPictureDialog; var CFile,PixS: string);
procedure holenTIF (HDialog: TOpenDialog; var CFile,PixS: string);
procedure holenJPG (HDialog: TOpenPictureDialog; var CFile,PixS: string);
procedure holenWMF (HDialog: TOpenPictureDialog; var CFile,PixS: string);
procedure holenEMF (HDialog: TOpenPictureDialog; var CFile,PixS: string);
procedure holenPNG (HDialog: TOpenPictureDialog; var CFile,PixS: string);

implementation

procedure WaehlFont(FDialog: TFontDialog);
var
  FarbeS : string;
  Style  : integer;
  Datei  : TextFile;
  i      : byte;
begin
  if FDialog.Execute then
  begin
    DSchrift := FDialog.Font.Name;
    DFarbe   := FDialog.Font.Color;
    DGroesse := FDialog.Font.Size;
    DStyle   := FDialog.Font.Style;
    Style    := Integer(TFontStyle(DStyle));
    FarbeS   := ColorToString(DFarbe);
    KonfigZeileS[132] := 'Font name                  :,'+DSchrift;
    KonfigZeileS[133] := 'Font size                  :,'+IntToStr(DGroesse);
    KonfigZeileS[134] := 'Font colour                :,'+FarbeS;
    KonfigZeileS[135] := 'Font style                 :,'+IntToStr(Style);
    assignFile(Datei,Fabrics+'\'+'Fabric.ini');
    rewrite (Datei);
    for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
    closefile (Datei);
  end;
end;

procedure Unterschrift (Canvas:TCanvas;Ratio:real;NameS: string);
var
  DHoehe : word;
begin
  DHoehe := round(BBreiteSt/Ratio);
  with Canvas do
  begin
    Font.Color := DFarbe;
    Font.Size  := DGroesse;
    Font.Name  := DSchrift;
    Font.Style := DStyle;
    Textout(BBreiteSt div 2 -TextWidth(NameS) div 2,
            DHoehe,NameS);
  end;
end;

procedure GrafikSpeichern(Image: TImage; Box: TListBox; Ratio: real;
                          PDialog: TSavePictureDialog; Dialog: TSaveDialog);
var
  DNameS : string;
  i      : byte;
  Rahmen : TRect;
  Bild   : Graphics.TBitmap;
  ZBild  : Graphics.TBitmap;
  Hoehe  : Word;
begin
  Bild         := Graphics.TBitmap.Create;
  ZBild        := Graphics.TBitmap.Create;
  Hoehe        := round(BBreiteSt/Ratio);
  ZBild.Width  := BBreiteSt;
  ZBild.Height := Hoehe;
  Bild.Width   := BBreiteSt;
  Bild.Height  := Hoehe+50;
  Rahmen       := Rect(0,0,ZBild.Width,ZBild.Height);
  try
    ZBild.Canvas.StretchDraw(Rahmen,Image.Picture.Graphic);
    Bild.Canvas.Draw(0,0,ZBild);
    if not HTransparent then
    begin
      for i := 0 to Box.Items.Count-1 do
      begin
        if Box.Selected[i] then
        begin
          if i = 0 then
          begin
            DNameS := InputBox(Tx(439),Tx(887),' ');
            Unterschrift(Bild.Canvas,Ratio,DNameS);
            speichernBMP (PDialog, Bild);
          end;
          if i = 1 then
          begin
            DNameS := InputBox(Tx(439),Tx(887),' ');
            Unterschrift(Bild.Canvas,Ratio,DNameS);
            speichernGIF (PDialog, Bild);
          end;
          if i = 2 then
          begin
            DNameS := InputBox(Tx(439),Tx(887),' ');
            Unterschrift(Bild.Canvas,Ratio,DNameS);
            speichernTIF (Dialog, Bild);
          end;
          if i = 3 then
          begin
            DNameS := InputBox(Tx(439),Tx(887),' ');
            Unterschrift(Bild.Canvas,Ratio,DNameS);
            speichernJPG (PDialog, Bild);
          end;
          if i = 4 then
          begin
            DNameS := InputBox(Tx(439),Tx(887),' ');
            Unterschrift(Bild.Canvas,Ratio,DNameS);
            speichernWMF (PDialog, Bild);
          end;
          if i = 5 then
          begin
            DNameS := InputBox(Tx(439),Tx(887),' ');
            Unterschrift(Bild.Canvas,Ratio,DNameS);
            speichernEMF (PDialog, Bild);
          end;
          if i = 6 then
          begin
            DNameS := InputBox(Tx(439),Tx(887),' ');
            Unterschrift(Bild.Canvas,Ratio,DNameS);
            speichernPNG (PDialog, Bild);
          end;
        end;
      end;
    end
    else
    begin
      Unterschrift(Bild.Canvas,Ratio,DNameS);
      speichernGIF(PDialog, Bild);
    end;
  finally
    Bild.Free;
    ZBild.Free;
  end;
end;

procedure SpeichernBMP (SDialog: TSavePictureDialog; Bild: Graphics.TBitmap);
var
  CFile  : string;
begin
  SDialog.DefaultExt := 'Windows bitmap file (*.bmp)|*.bmp';
  SDialog.Filter     := 'Windows bitmap file (*.bmp)|*.bmp';
  if SDialog.Execute then
  begin
    CFile := SDialog.Filename;
    Bild.SaveToFile(CFile);
  end
  else exit;
end;

procedure SpeichernGIF(SDialog: TSavePictureDialog; Bild: Graphics.TBitmap);
var
  GifBild : TGifImage;
  CFile   : string;
begin
  SDialog.DefaultExt := 'Compuserve gif file (*.gif)|*.gif';
  SDialog.Filter     := 'Compuserve gif file (*.gif)|*.gif';
  if SDialog.Execute then
  begin
    CFile   := SDialog.Filename;
    GifBild := TGIFImage.Create;
    if HTransparent then
    begin
      Bild.Transparent := True;
      Bild.TransParentColor := HintFarbe;
    end
    else Bild.Transparent := false;
    try
      GifBild.Assign(Bild);
      GifBild.SaveToFile(CFile);
    finally
      GifBild.Free;
    end;
  end
  else exit;
end;

procedure SpeichernTIF (SDialog: TSaveDialog; Bild: Graphics.TBitmap);
var
  CFile : string;
begin
  SDialog.DefaultExt := 'Tagged image file format (*.tif)|*.tif';
  SDialog.Filter     := 'Tagged image file format (*.tif)|*.tif';
  if SDialog.Execute then
  begin
    CFile := SDialog.Filename;
    WriteTiffToFile(CFile,Bild);
  end
  else exit;
end;

procedure SpeichernJPG (SDialog: TSavePictureDialog; Bild: Graphics.TBitmap);
var
  JpgDatei : TjpegImage;
  CFile    : string;
begin
  SDialog.DefaultExt := 'Jpeg file (*.jpg)|*.jpg';
  SDialog.Filter     := 'Jpeg file (*.jpg)|*.jpg';
  if SDialog.Execute then
  begin
    CFile      := SDialog.Filename;
    JpgDatei    := TJpegImage.Create;
    try
      with JpgDatei do
      begin
        Assign(Bild);
        SaveToFile(CFile);
      end;
    finally
      JpgDatei.Free;
    end;
  end
  else exit;
end;

procedure SpeichernWMF (SDialog: TSavePictureDialog; Bild: Graphics.TBitmap);
var
  Metafile   : TMetafile;
  MetaCanvas : TMetafileCanvas;
  CFile      : string;
begin
  SDialog.DefaultExt := 'Windows metafile (*.WMF)|*.wmf';
  SDialog.Filter     := 'Windows metafile (*.WMF)|*.wmf';
  if SDialog.Execute then
  begin
    CFile := SDialog.Filename;
    Metafile := TMetaFile.Create;
    MetaFile.Enhanced := false;
    try
      Metafile.Height := Bild.Height;
      Metafile.Width  := Bild.Width;
      MetaCanvas := TMetafileCanvas.Create(Metafile, 0);
      try
        MetaCanvas.Draw(0, 0, Bild);
      finally
        MetaCanvas.Free;
      end;
      MetaFile.SaveToFile(CFile)
    finally
      Metafile.Free;
    end;
  end
  else exit;
end;

procedure SpeichernEMF (SDialog: TSavePictureDialog; Bild: Graphics.TBitmap);
var
  Metafile   : TMetafile;
  MetaCanvas : TMetafileCanvas;
  CFile      : string;
begin
  SDialog.DefaultExt := 'Windows metafile (*.EMF)|*.emf';
  SDialog.Filter     := 'Windows metafile (*.EMF)|*.emf';
  if SDialog.Execute then
  begin
    CFile := SDialog.Filename;
    Metafile := TMetaFile.Create;
    MetaFile.Enhanced := true;
    try
      Metafile.Height := Bild.Height;
      Metafile.Width  := Bild.Width;
      MetaCanvas := TMetafileCanvas.Create(Metafile, 0);
      try
        MetaCanvas.Draw(0, 0, Bild);
      finally
        MetaCanvas.Free;
      end;
      MetaFile.SaveToFile(CFile)
    finally
      Metafile.Free;
    end;
  end
  else exit;
end;

procedure SpeichernPNG (SDialog: TSavePictureDialog; Bild: Graphics.TBitmap);
var
  CFile   : string;
  BildPNG : TPngObject;
begin
  SDialog.DefaultExt := 'Portable Network Graphics (*.PNG)|*.png';
  SDialog.Filter     := 'Portable Network Graphics (*.PNG)|*.png';
  if SDialog.Execute then
  begin
    CFile   := SDialog.Filename;
    BildPng := TPngObject.Create;
    try
      with BildPng do
      begin
        Assign(Bild);
        SaveToFile(CFile);
      end;
    finally
      BildPng.Free;
    end;
  end
  else exit;
end;

procedure OeffnenBMP (ODialog: TOpenPictureDialog;
                      BildI: Graphics.TBitmap; IWidth: word;
                      IHeight: word; Canvas: TCanvas);
var
  Rahmen  : TRect;
  BHoehe  : word;
  BBreite : word;
  Ratio   : real;
  CFile   : string;
begin
  ODialog.Filter := 'Bitmap file (*.bmp)|*.bmp';
  if ODialog.Execute then
  begin
    CFile := ODialog.FileName;
    BildI.LoadFromFile(CFile);
    Ratio := BildI.Height/BildI.Width;
    if BildI.Width > BildI.Height then
    begin
      BBreite := IWidth;
      BHoehe  := round(IWidth*Ratio);
    end
    else
    begin
      BHoehe  := IHeight;
      BBreite := round(IHeight/Ratio);
    end;
    Rahmen := Rect(0,0,BBreite, BHoehe);
    Canvas.StretchDraw (Rahmen, BildI);
  end
  else exit;
end;

procedure OeffnenGIF (ODialog: TOpenPictureDialog;
                      BildI: Graphics.TBitmap; IWidth: word;
                      IHeight: word; Canvas: TCanvas);
var
  GBild   : TGIFImage;
  BHoehe  : word;
  BBreite : word;
  Ratio   : real;
  Rahmen  : TRect;
  CFile   : string;
begin
  ODialog.Filter := 'Compuserve gif file (*.gif)|*.gif';
  if ODialog.Execute then
  begin
    CFile := ODialog.FileName;
    GBild  := TGIFImage.Create;
    try
      GBild.LoadFromFile(CFile);
      BildI.Assign(GBild);
      Ratio := BildI.Height/BildI.Width;
      if BildI.Width > BildI.Height then
      begin
        BBreite := IWidth;
        BHoehe  := round(IWidth*Ratio);
      end
      else
      begin
        BHoehe  := IHeight;
        BBreite := round(IHeight/Ratio);
      end;
      Rahmen := Rect(0,0,BBreite, BHoehe);
      Canvas.StretchDraw (Rahmen, BildI);
    finally
      GBild.free;
    end;
  end
  else exit;
end;

procedure OeffnenTIF (ODialog: TOpenDialog;
                      BildI: Graphics.TBitmap; IWidth: word;
                      IHeight: word; Canvas: TCanvas);
var
  CFile   : string;
  BHoehe  : word;
  BBreite : word;
  Ratio   : real;
  Rahmen  : TRect;
begin
  ODialog.Filter := 'Tagged image file format (*.tif)|*.tif';
  if ODialog.Execute then
  begin
    CFile := ODialog.FileName;
    LoadTiffFromFile(CFile,BildI);
    If (BildI.Height = 0) or (BildI.Width = 0) then
    begin
      showmessage(Tx(1464));
      exit;
    end
    else
    begin
      Ratio := BildI.Height/BildI.Width;
      if BildI.Width > BildI.Height then
      begin
        BBreite := IWidth;
        BHoehe  := round(IWidth*Ratio);
      end
      else
      begin
        BHoehe  := IHeight;
        BBreite := round(IHeight/Ratio);
      end;
      Rahmen := Rect(0,0,BBreite, BHoehe);
      Canvas.StretchDraw (Rahmen, BildI);
    end;
  end
  else exit;
end;

procedure OeffnenJPG (ODialog: TOpenDialog;
                      BildI: Graphics.TBitmap; IWidth: word;
                      IHeight: word; Canvas: TCanvas);
var
  JBild   : TJPEGImage;
  BHoehe  : word;
  BBreite : word;
  Ratio   : real;
  Rahmen  : TRect;
  CFile   : string;
begin
  ODialog.Filter := 'Jpeg file (*.jpg)|*.jpg';
  if ODialog.Execute then
  begin
    CFile := ODialog.FileName;
    JBild := TJpegImage.Create;
    try
      JBild.LoadFromFile(CFile);
      BildI.Assign(JBild);
      Ratio := BildI.Height/BildI.Width;
      if BildI.Width > BildI.Height then
      begin
        BBreite := IWidth;
        BHoehe  := round(IWidth*Ratio);
      end
      else
      begin
        BHoehe  := IHeight;
        BBreite := round(IHeight/Ratio);
      end;
      Rahmen := Rect(0,0,BBreite, BHoehe);
      Canvas.StretchDraw (Rahmen, BildI);
    finally
      JBild.free;
    end;
  end
  else exit;
end;

procedure OeffnenWMF (ODialog: TOpenDialog;
                      IWidth: word; IHeight: word;
                      Canvas: TCanvas);
var
  Metafile : TMetafile;
  Rahmen   : TRect;
  BHoehe   : word;
  BBreite  : word;
  Ratio    : real;
  CFile    : string;
begin
  ODialog.Filter := 'Windows metafile (*.WMF)|*.wmf';
  if ODialog.Execute then
  begin
    CFile := ODialog.FileName;
    Metafile := TMetaFile.Create;
    MetaFile.Enhanced := false;
    try
      MetaFile.LoadFromFile(CFile);
      Ratio := MetaFile.Height/MetaFile.Width;
      if MetaFile.Width > MetaFile.Height then
      begin
        BBreite := IWidth;
        BHoehe  := round(IWidth*Ratio);
      end
      else
      begin
        BHoehe  := IHeight;
        BBreite := round(IHeight/Ratio);
      end;
      Rahmen := Rect(0,0,BBreite,BHoehe);
      Canvas.Stretchdraw (Rahmen, MetaFile);
    finally
      MetaFile.Free;
    end;
  end
  else exit;
end;

procedure OeffnenEMF (ODialog: TOpenDialog;
                      IWidth: word; IHeight: word;
                      Canvas: TCanvas);
var
  Metafile : TMetafile;
  Rahmen   : TRect;
  BHoehe   : word;
  BBreite  : word;
  Ratio    : real;
  CFile    : string;
begin
  ODialog.Filter := 'Enhanced windows metafile (*.emf)|*.emf';
  if ODialog.Execute then
  begin
    CFile := ODialog.FileName;
    Metafile := TMetaFile.Create;
    MetaFile.Enhanced := true;
    try
      MetaFile.LoadFromFile(CFile);
      Ratio := MetaFile.Height/MetaFile.Width;
      if MetaFile.Width > MetaFile.Height then
      begin
        BBreite := IWidth;
        BHoehe  := round(IWidth*Ratio);
      end
      else
      begin
        BHoehe  := IHeight;
        BBreite := round(IHeight/Ratio);
      end;
      Rahmen := Rect(0,0,BBreite,BHoehe);
      Canvas.Stretchdraw (Rahmen, MetaFile);
    finally
      MetaFile.Free;
    end;
  end
  else exit;
end;

procedure OeffnenPNG (ODialog:TOpenDialog; BildI: Graphics.TBitmap;
                      IWidth,IHeight:word; Canvas: TCanvas);
var
  BildPNG : TPngObject;
  BBreite : word;
  BHoehe  : word;
  Rahmen  : TRect;
  CFile   : string;
  Ratio   : real;
begin
  ODialog.DefaultExt := 'Portable Network Graphics (*.png)|*.png';
  ODialog.Filter     := 'Portable Network Graphics (*.png)|*.png';
  if ODialog.Execute then
  begin
    CFile := ODialog.FileName;
    BildPNG := TPngObject.Create;
    try
      BildPNg.LoadFromFile(CFile);
      BildI.Assign(BildPNG);
      Ratio := BildI.Height/BildI.Width;
      if BildI.Width > BildI.Height then
      begin
        BBreite := IWidth;
        BHoehe  := round(IWidth*Ratio);
      end
      else
      begin
        BHoehe  := IHeight;
        BBreite := round(IHeight/Ratio);
      end;
      if BHoehe > IHeight then
      begin
        BHoehe  := IHeight;
        BBreite := round(BHoehe/Ratio);
      end;
      Rahmen := Rect(IWidth div 2 - BBreite div 2,
                     IHeight div 2 - BHoehe div 2,
                     IWidth div 2 + BBreite div 2,
                     IHeight div 2 + BHoehe div 2);
      Canvas.StretchDraw (Rahmen, BildI);
    finally
      BildPNG.free;
    end;
  end
  else exit;
end;

procedure holenBMP (HDialog: TOpenPictureDialog; var CFile,PixS: string);
begin
  HDialog.DefaultExt := 'Windows bitmap (*.bmp)|*.bmp';
  HDialog.Filter     := 'Windows bitmap (*.bmp)|*.bmp';
  if HDialog.Execute then CFile := HDialog.FileName
  else exit;
  PixS := 'BMP';
end;

procedure holenGIF (HDialog: TOpenPictureDialog; var CFile,PixS: string);
begin
  HDialog.DefaultExt := 'Compuserve Gif file (*.gif)|*.gif';
  HDialog.Filter     := 'Compuserve Gif file (*.gif)|*.gif';
  if HDialog.Execute then CFile := HDialog.FileName
  else exit;
  PixS := 'GIF';
end;

procedure holenTIF (HDialog: TOpenDialog; var CFile,PixS: string);
begin
  HDialog.DefaultExt := 'Tagged image file format (*.tif)|*.tif';
  HDialog.Filter     := 'Tagged image file format (*.tif)|*.tif';
  if HDialog.Execute then CFile := HDialog.FileName
  else exit;
  PixS := 'TIF';
end;

procedure holenJPG (HDialog: TOpenPictureDialog; var CFile,PixS: string);
begin
  HDialog.DefaultExt := 'Jpeg file (*.jpg)|*.jpg';
  HDialog.Filter     := 'Jpeg file (*.jpg)|*.jpg';
  if HDialog.Execute then CFile := HDialog.FileName
  else exit;
  PixS := 'JPG';
end;

procedure holenWMF (HDialog: TOpenPictureDialog; var CFile,PixS: string);
begin
  HDialog.DefaultExt := 'Windows metafile (*.WMF)|*.wmf';
  HDialog.Filter     := 'Windows metafile (*.WMF)|*.wmf';
  if HDialog.Execute then CFile := HDialog.FileName
  else exit;
  PixS := 'WMF';
end;

procedure holenEMF (HDialog: TOpenPictureDialog; var CFile,PixS: string);
begin
  HDialog.DefaultExt := 'Enhanced windows metafile (*.EMF)|*.emf';
  HDialog.Filter     := 'Enhanced windows metafile (*.EMF)|*.emf';
  if HDialog.Execute then CFile := HDialog.FileName
  else exit;
  PixS := 'EMF';
end;

procedure holenPNG (HDialog: TOpenPictureDialog; var CFile,PixS: string);
begin
  HDialog.DefaultExt := 'Portable Network Graphics (*.PNG)|*.png';
  HDialog.Filter     := 'Portable Network Graphics (*.PNG)|*.png';
  if HDialog.Execute then CFile := HDialog.FileName
  else exit;
  PixS := 'PNG';
end;

end.
