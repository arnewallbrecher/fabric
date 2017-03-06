unit Unit78;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, ExtCtrls, Buttons, Texte, StdCtrls, Menus,
  Globvar, Plotten, Clipbrd, Jpeg, ExtDlgs, Basic, ComCtrls,
  Math, EinAusga, Mask, Printers, Drucken, Shellapi,ehsHelpRouter;

type
  TForm78 = class(TForm)
    PanelSpeed: TPanel;
    SpeedHilfe: TSpeedButton;
    SpeedHandbuch: TSpeedButton;
    SpeedEinfuegen: TSpeedButton;
    SpeedausDatei: TSpeedButton;
    SpeedFarbe: TSpeedButton;
    SpeedSpeichern: TSpeedButton;
    SpeedBMP: TSpeedButton;
    SpeedJPG: TSpeedButton;
    SpeedLiteratur: TSpeedButton;
    ImageFoto: TImage;
    ButtonStart: TButton;
    ButtonZuruck: TButton;
    ButtonEnde: TButton;
    MainMenu1: TMainMenu;
    BildImportieren: TMenuItem;
    einfuegen: TMenuItem;
    ausDatei: TMenuItem;
    PanelImportieren: TPanel;
    LabelImportieren: TLabel;
    OpenPictureDialog1: TOpenPictureDialog;
    LabelText: TLabel;
    BildKorrigieren: TMenuItem;
    BildRotieren: TMenuItem;
    Fortschritt: TProgressBar;
    ListBoxDaten: TListBox;
    KeineKorrektur: TMenuItem;
    Farbe: TMenuItem;
    FarbeLineation: TMenuItem;
    ColorDialog1: TColorDialog;
    PanelDaten: TPanel;
    LabelLineationen: TLabel;
    LabelAzimut: TLabel;
    PanelZahl: TPanel;
    LabelZahlD: TLabel;
    LabelZahl: TLabel;
    ButtonDbeenden: TButton;
    ButtonPlotten: TButton;
    DatenSpeichern: TMenuItem;
    speichern: TMenuItem;
    speichernUnter: TMenuItem;
    SaveDialog1: TSaveDialog;
    GrafikSpeichern: TMenuItem;
    alsBMP: TMenuItem;
    alsJPG: TMenuItem;
    Gkopieren: TMenuItem;
    SavePictureDialog1: TSavePictureDialog;
    Linien: TMenuItem;
    Strichstaerke: TMenuItem;
    Linienstil: TMenuItem;
    ListBoxStrich: TListBox;
    LabelStrich: TLabel;
    durchgezogen: TMenuItem;
    gestrichelt: TMenuItem;
    punktiert: TMenuItem;
    strichpunktiert: TMenuItem;
    StrichPunktPunkt: TMenuItem;
    Drucken: TMenuItem;
    Deinrichten: TMenuItem;
    Drucker: TMenuItem;
    PrinterSetupDialog1: TPrinterSetupDialog;
    Paneldrucken: TPanel;
    GroupBoxdrucken: TGroupBox;
    Panel7: TPanel;
    LabelRdrucken: TLabel;
    MaskEditRdrucken: TMaskEdit;
    Panel8: TPanel;
    LabelMitte: TLabel;
    LabelXdrucken: TLabel;
    LabelYdrucken: TLabel;
    MaskEditXdrucken: TMaskEdit;
    Panel9: TPanel;
    CheckBoxdrucken: TCheckBox;
    MaskEditYdrucken: TMaskEdit;
    Panel10: TPanel;
    CheckBoxAbbruch: TCheckBox;
    Panel11: TPanel;
    LabelUnterschrift: TLabel;
    LabelSchrift: TLabel;
    MaskEditUnterschrift: TMaskEdit;
    ListBoxSchrift: TListBox;
    RadioGroup: TRadioGroup;
    RadioButtonLinks: TRadioButton;
    RadioButtonZentriert: TRadioButton;
    RadioButtonRechts: TRadioButton;
    ButtonRueck: TButton;
    SpeedKopieren: TSpeedButton;
    SpeedDrucker: TSpeedButton;
    Handbuch: TMenuItem;
    Literatur: TMenuItem;
    StatusBar: TStatusBar;
    SpeedRotieren: TSpeedButton;
    SpeedKeineKorrektur: TSpeedButton;
    ButtonAuswertung: TButton;
    MaskEditDatei: TMaskEdit;
    LabelDatei: TLabel;
    SpeedEinrichten: TSpeedButton;
    SpeedSStaerke: TSpeedButton;
    SpeedDurchgezogen: TSpeedButton;
    SpeedGestrichelt: TSpeedButton;
    SpeedPunktiert: TSpeedButton;
    SpeedStrichPunkt: TSpeedButton;
    SpeedStrichPunktPunkt: TSpeedButton;
    Hilfe: TMenuItem;
    procedure FormActivate(Sender: TObject);
    procedure SpeedHilfeClick(Sender: TObject);
    procedure ButtonStartClick(Sender: TObject);
    procedure einfuegenClick(Sender: TObject);
    procedure ausDateiClick(Sender: TObject);
    procedure ButtonZuruckClick(Sender: TObject);
    procedure ButtonEndeClick(Sender: TObject);
    procedure BildRotierenClick(Sender: TObject);
    procedure ImageFotoMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure KeineKorrekturClick(Sender: TObject);
    procedure FarbeLineationClick(Sender: TObject);
    procedure ButtonDbeendenClick(Sender: TObject);
    procedure ButtonPlottenClick(Sender: TObject);
    procedure speichernClick(Sender: TObject);
    procedure speichernUnterClick(Sender: TObject);
    procedure alsBMPClick(Sender: TObject);
    procedure alsJPGClick(Sender: TObject);
    procedure GkopierenClick(Sender: TObject);
    procedure StrichstaerkeClick(Sender: TObject);
    procedure ListBoxStrichClick(Sender: TObject);
    procedure durchgezogenClick(Sender: TObject);
    procedure gestricheltClick(Sender: TObject);
    procedure punktiertClick(Sender: TObject);
    procedure strichpunktiertClick(Sender: TObject);
    procedure StrichPunktPunktClick(Sender: TObject);
    procedure DeinrichtenClick(Sender: TObject);
    procedure DruckerClick(Sender: TObject);
    procedure MaskEditUnterschriftKeyPress(Sender: TObject; var Key: Char);
    procedure ListBoxSchriftClick(Sender: TObject);
    procedure RadioButtonLinksClick(Sender: TObject);
    procedure RadioButtonZentriertClick(Sender: TObject);
    procedure RadioButtonRechtsClick(Sender: TObject);
    procedure CheckBoxdruckenClick(Sender: TObject);
    procedure CheckBoxAbbruchClick(Sender: TObject);
    procedure ButtonRueckClick(Sender: TObject);
    procedure SpeedEinfuegenClick(Sender: TObject);
    procedure SpeedausDateiClick(Sender: TObject);
    procedure SpeedFarbeClick(Sender: TObject);
    procedure SpeedKopierenClick(Sender: TObject);
    procedure SpeedBMPClick(Sender: TObject);
    procedure SpeedJPGClick(Sender: TObject);
    procedure SpeedDruckerClick(Sender: TObject);
    procedure HandbuchClick(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
    procedure SpeedLiteraturClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ShowHint(Sender: TObject);
    procedure SpeedSpeichernClick(Sender: TObject);
    procedure SpeedRotierenClick(Sender: TObject);
    procedure SpeedKeineKorrekturClick(Sender: TObject);
    procedure ButtonAuswertungClick(Sender: TObject);
    procedure SpeedEinrichtenClick(Sender: TObject);
    procedure SpeedDurchgezogenClick(Sender: TObject);
    procedure SpeedSStaerkeClick(Sender: TObject);
    procedure SpeedGestricheltClick(Sender: TObject);
    procedure SpeedPunktiertClick(Sender: TObject);
    procedure SpeedStrichPunktClick(Sender: TObject);
    procedure SpeedStrichPunktPunktClick(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure HilfeClick(Sender: TObject);
  end;

var
  Form78      : TForm78;
  Bitmap      : TBitmap;
  JPGDatei    : TJpegImage;
  CurrentFile : string;
  Punkt       : string;
  Xmess       : word;
  Ymess       : word;
  Xum1, Yum1  : word;
  Xum2, Yum2  : word;
  Maus        : boolean;
  Bo          : real;
  SBild       : TBitmap;
  Zahl        : word;
  BuendigS    : string;
  RBild       : TBitmap;

implementation
uses Unit15, Unit17, Unit19;
{$R *.DFM}

procedure TForm78.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm78.ShowHint(Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm78.FormActivate(Sender: TObject);
var
  i : byte;
begin
  Top    := 0;
  Left   := 4;
  Width  := 1030;
  Height := 750;
  Form78.Caption := Tx(1246);
  Bo := Pi/180;
  setlength (AziFeld, MaxDaten);
  setlength (FalFeld, MaxDaten);
  ButtonZuruck.Hint           := Hilf(18);
  ButtonEnde.Hint             := Hilf(19);
  SpeedEinfuegen.Hint         := Hilf(246);
  SpeedausDatei.Hint          := Hilf(368);
  Speedkopieren.Hint          := Hilf(262);
  SpeedBMP.Hint               := Hilf(426);
  SpeedJPG.Hint               := Hilf(427);
  SpeedFarbe.Hint             := Hilf(486);
  SpeedDrucker.Hint           := Hilf(309);
  SpeedHandbuch.Hint          := Hilf(274);
  SpeedHilfe.Hint             := Hilf(210);
  SpeedSpeichern.Hint         := Hilf(487);
  SpeedLiteratur.Hint         := Hilf(462);
  SpeedRotieren.Hint          := Hilf(488);
  SpeedKeineKorrektur.Hint    := Hilf(489);
  SpeedEinrichten.Hint        := Hilf(505);
  SpeedSStaerke.Hint          := Hilf(463);
  SpeedDurchgezogen.Hint      := Hilf(428);
  SpeedGestrichelt.Hint       := Hilf(429);
  SpeedPunktiert.Hint         := Hilf(431);
  SpeedStrichPunkt.Hint       := Hilf(430);
  SpeedStrichPunktPunkt.Hint  := Hilf(526);
  BildImportieren.Enabled  := false;
  ButtonEnde.Caption       := Tx(53);
  ButtonZuruck.Caption     := Tx(30);
  BildImportieren.Caption  := Tx(1068);
  Einfuegen.Caption        := Tx(1069);
  AusDatei.Caption         := Tx(57);
  Hilfe.Caption            := Tx(162)+' (F1)';
  SpeedHilfe.Hint          := Hilf(210);
  SpeedHandbuch.Hint       := Hilf(274);
  PanelImportieren.Visible := false;
  LabelImportieren.Caption := Tx(1158);
  LabelText.Caption        := Tx(1105)+' ?';
  LabelText.Visible        := false;
  BildKorrigieren.Caption  := Tx(1105);
  BildRotieren.Caption     := Tx(1247);
  Fortschritt.Visible      := false;
  BildKorrigieren.Enabled  := false;
  Maus                     := false;
  KeineKorrektur.Caption   := Tx(1240);
  Farbe.Caption            := Tx(275);
  FarbeLineation.Caption   := Tx(1252);
  LabelLineationen.Caption := Tx(1253);
  LabelAzimut.Caption      := Tx(1254);
  ListBoxDaten.Visible     := false;
  PanelDaten.Visible       := false;
  PanelZahl.Visible        := false;
  LabelZahlD.Caption       := Tx(646);
  ButtonDbeenden.Caption   := Tx(106);
  ButtonPlotten.Caption    := Tx(696);
  ButtonDBeenden.Visible   := false;
  ButtonPlotten.Visible    := false;
  DatenSpeichern.Caption   := Tx(86);
  speichern.Caption        := Tx(87);
  speichernUnter.Caption   := Tx(88);
  DatenSpeichern.Enabled   := false;
  GrafikSpeichern.Caption  := Tx(1071);
  alsBMP.Caption           := Tx(1072);
  alsJPG.Caption           := Tx(1073);
  Linien.Caption           := Tx(525);
  Strichstaerke.Caption    := Tx(1181);
  Linienstil.Caption       := Tx(847);
  LabelStrich.Caption      := Tx(1181);
  LabelStrich.Visible      := false;
  for i := 1 to 10 do
    ListBoxStrich.Items.Add (IntToStr(i));
  ListBoxStrich.Visible    := false;
  durchgezogen.Caption     := Tx(526);
  gestrichelt.Caption      := Tx(527);
  punktiert.Caption        := Tx(645);
  strichpunktiert.Caption  := Tx(528);
  StrichPunktPunkt.Caption := Tx(1182);
  LabelZahl.Caption        := '';
  Drucken.Caption          := Tx(92);
  Deinrichten.Caption      := TX(935);
  Drucker.Caption          := Tx(936);
  ButtonRueck.Visible      := false;
  Farbe.Enabled            := false;
  Linien.Enabled           := false;
  GrafikSpeichern.Enabled  := false;
  Drucken.Enabled          := false;
  Handbuch.Caption         := Tx(1055)+' (F2)';
  Literatur.Caption        := Tx(1183)+' (F5)';
  ButtonAuswertung.Caption := Tx(349);
  ButtonAuswertung.Visible := false;
  PanelSpeed.Visible       := false;
  SpeedFarbe.Enabled       := false;
  SpeedSpeichern.Enabled   := false;
  SpeedKopieren.Enabled    := false;
  SpeedBMP.Enabled         := false;
  SpeedJPG.Enabled         := false;
  SpeedDrucker.Enabled     := false;
  SpeedRotieren.Enabled    := false;
  SpeedKeineKorrektur.Enabled   := false;
  SpeedEinrichten.Enabled       := false;
  MaskEditDatei.Text            := '';
  LabelDatei.Caption            := Tx(419);
  ButtonRueck.Caption           := Tx(1235);
  Gkopieren.Caption             := Tx(282);
  SpeedDurchgezogen.Enabled     := false;
  SpeedGestrichelt.Enabled      := false;
  SpeedPunktiert.Enabled        := false;
  SpeedStrichPunkt.Enabled      := false;
  SpeedStrichPunktPunkt.Enabled := false;
  SpeedSStaerke.Enabled         := false; 
end;

procedure TForm78.ButtonStartClick(Sender: TObject);
begin
  PanelSpeed.Visible := true;
  Bildimportieren.Enabled := true;
  With ImageFoto.Canvas do
  begin
    Brush.Color := clWhite;
    Rectangle (0,0,Width,Height);;
  end;
  PanelImportieren.Visible := true;
  ButtonDbeenden.Visible   := false;
  ButtonPlotten.Visible    := false;
  ListBoxDaten.Clear;
end;

procedure TForm78.ButtonZuruckClick(Sender: TObject);
begin
  AziFeld := Nil;
  FalFeld := Nil;
  Bitmap.free;
  RBild.free;
  ImageFoto.Picture:=nil;
  JPGDatei.free;
  Form78.Close;
  SetCurrentDir (DirectS);
end;

procedure TForm78.ButtonEndeClick(Sender: TObject);
begin
  AziFeld := Nil;
  FalFeld := Nil;
  Bitmap.free;
  RBild.free;
  ImageFoto.Picture:=nil;
  JPGDatei.free;
  Form78.Close;
  Form15.Close;
  SetCurrentDir (DirectS);
end;

procedure TForm78.einfuegenClick(Sender: TObject);
var
  Rahmen : TRect;
  BHoehe  : word;
  BBreite : word;
  Ratio   : real;
begin
  PanelImportieren.Visible := false;
  if not ClipBoard.HasFormat(CF_Bitmap) then
  begin
    MessageDlg(Tx(1074),mtInformation,[mbOK],0);
    exit;
  end
  else
  begin
    ImageFoto.Canvas.CopyMode := cmSrcCopy;
    try
      Bitmap := TBitmap.Create;
      Bitmap.Assign(ClipBoard);
      Ratio := Bitmap.Height/Bitmap.Width;
      if Bitmap.Width > Bitmap.Height then
      begin
        BBreite := ImageFoto.Width;
        BHoehe  := round(ImageFoto.Height*Ratio);
      end
      else
      begin
        BHoehe  := ImageFoto.Height;
        BBreite := round(ImageFoto.Height/Ratio);
      end;
      Rahmen := Rect(0,0,BBreite, BHoehe);
      ImageFoto.Canvas.StretchDraw (Rahmen, Bitmap);
    finally
      Bitmap.free;
      Bitmap:=nil;
    end;
  end;
  BildKorrigieren.Enabled := true;
  SpeedRotieren.Enabled   := true;
  SpeedKeineKorrektur.Enabled := true;
  LabelText.Visible       := true;
  if DemoB then
  begin
    with ImageFoto.Canvas do
    begin
      Font.Name   := 'Times New Roman';
      Brush.Color := clWhite;
      Font.Color  := clGray;
      Font.Size   := 36;
      Textout(Width div 2-120,Height div 2-20,'Demo-Version');
    end;
  end;
end;

procedure TForm78.SpeedEinfuegenClick(Sender: TObject);
begin
  einfuegenClick(Sender);
end;

procedure TForm78.ausDateiClick(Sender: TObject);
var
  ExtenS  : string;
  Bild    : TJPEGImage;
  Rahmen  : TRect;
  BHoehe  : word;
  BBreite : word;
  Ratio   : real;
  SDir    : string;
  Slaenge : word;
begin
  PanelImportieren.Visible := false;
  if OpenPictureDialog1.Execute then
  begin
    CurrentFile := OpenPictureDialog1.FileName;
    ExtenS := UcaseS(RightS(CurrentFile,3));
    GetDir(0,SDir);
    SLaenge := length (SDir);
    DateinameS[1] := RightS(CurrentFile,Length(CurrentFile)-SLaenge-1);
    DateiZahl := 1;
    MaskEditDatei.Text := DateiNameS[1];
    try
      if ExtenS = 'BMP' then
      begin
        Bitmap := Tbitmap.create;
        Bitmap.LoadFromFile(CurrentFile);
        Ratio := Bitmap.Height/Bitmap.Width;
        if Bitmap.Width > Bitmap.Height then
        begin
          BBreite := ImageFoto.Width;
          BHoehe  := round(ImageFoto.Height*Ratio);
        end
        else
        begin
          BHoehe  := ImageFoto.Height;
          BBreite := round(ImageFoto.Height/Ratio);
        end;
        Rahmen := Rect(0,0,BBreite, BHoehe);
        ImageFoto.Canvas.StretchDraw (Rahmen, Bitmap);
      end;
      if ExtenS = 'JPG' then
      begin
        Bild   := TJpegImage.Create;
        Bitmap := TBitmap.Create;
        Bild.LoadFromFile(CurrentFile);
        Bitmap.Assign(Bild);
        Ratio := Bitmap.Height/Bitmap.Width;
        if Bitmap.Width > Bitmap.Height then
        begin
          BBreite := ImageFoto.Width;
          BHoehe  := round(ImageFoto.Height*Ratio);
        end
        else
        begin
          BHoehe  := ImageFoto.Height;
          BBreite := round(ImageFoto.Height/Ratio);
        end;
        Rahmen := Rect(0,0,BBreite, BHoehe);
        ImageFoto.Canvas.StretchDraw (Rahmen, Bitmap);
      end;
      if (ExtenS <> 'BMP') and (ExtenS <> 'JPG') then
        showmessage(Tx(1227)+Chr(13)+Tx(1228));
    finally
      Bitmap.free;
      Bitmap:=nil;
    end;
  end;
  BildKorrigieren.Enabled := true;
  SpeedRotieren.Enabled   := true;
  LabelText.Visible       := true;
  SpeedKeineKorrektur.Enabled := true;
  if DemoB then
  begin
    with ImageFoto.Canvas do
    begin
      Font.Name   := 'Times New Roman';
      Brush.Color := clWhite;
      Font.Color  := clGray;
      Font.Size   := 36;
      Textout(Width div 2-200,Height div 2-100,'Demo-Version');
    end;
  end;
end;

procedure TForm78.SpeedausDateiClick(Sender: TObject);
begin
  ausDateiClick(Sender);
end;


procedure TForm78.BildRotierenClick(Sender: TObject);
begin
  Punkt                   := 'PUNKT1';
  LabelText.Caption       := Tx(1248);
  Maus                    := true;
  ListBoxDaten.Visible    := true;
  PanelDaten.Visible      := true;
  PanelZahl.Visible       := true;
  Zahl                    := 0;
  ButtonDbeenden.Visible  := true;
  Farbe.Enabled           := true;
  Linien.Enabled          := true;
  GrafikSpeichern.Enabled := true;
  Drucken.Enabled         := true;
  SpeedEinrichten.Enabled := true;
  SpeedFarbe.Enabled      := true;
  SpeedSpeichern.Enabled  := true;
  SpeedKopieren.Enabled   := true;
  SpeedJPG.Enabled        := true;
  SpeedBMP.Enabled        := true;
  SpeedDrucker.Enabled    := true;
  SpeedDurchgezogen.Enabled     := true;
  SpeedGestrichelt.Enabled      := true;
  SpeedPunktiert.Enabled        := true;
  SpeedStrichPunkt.Enabled      := true;
  SpeedStrichPunktPunkt.Enabled := true;
  SpeedSStaerke.Enabled         := true;
end;

procedure TForm78.SpeedRotierenClick(Sender: TObject);
begin
  BildRotierenClick(Sender);
end;

procedure TForm78.KeineKorrekturClick(Sender: TObject);
begin
  Punkt := 'Streich1';
  Maus  := true;
  if BereichS = '1..180°' then LabelText.Caption := Tx(1250);
  if BereichS = '1..360°' then LabelText.Caption := Tx(1255);
  ListBoxDaten.Visible    := true;
  PanelDaten.Visible      := true;
  PanelZahl.Visible       := true;
  Zahl                    := 0;
  ButtonDbeenden.Visible  := true;
  Farbe.Enabled           := true;
  Linien.Enabled          := true;
  GrafikSpeichern.Enabled := true;
  Drucken.Enabled         := true;
  SpeedFarbe.Enabled      := true;
  SpeedSpeichern.Enabled  := true;
  SpeedKopieren.Enabled   := true;
  SpeedJPG.Enabled        := true;
  SpeedBMP.Enabled        := true;
  SpeedDrucker.Enabled    := true;
  SpeedEinrichten.Enabled := true;
  SpeedDurchgezogen.Enabled     := true;
  SpeedGestrichelt.Enabled      := true;
  SpeedPunktiert.Enabled        := true;
  SpeedStrichPunkt.Enabled      := true;
  SpeedStrichPunktPunkt.Enabled := true;
  SpeedSStaerke.Enabled         := true;  
end;

procedure TForm78.SpeedKeineKorrekturClick(Sender: TObject);
begin
  keineKorrekturClick(Sender);
end;

procedure TForm78.ImageFotoMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  i, j     : integer;
  k, l     : integer;
  Bild     : array of array of TColor;
  Xkorr    : integer;
  Ykorr    : integer;
  Xm, Ym   : integer;
  TanDreh  : real;
  Dreh     : real;
  Laenge   : integer;
  Hoehe    : integer;
  xmR      : integer;
  ymR      : integer;
  Winkel   : integer;
  Betrag   : word;
  Zeile    : string;
  WinkelS  : string;
  BetragS  : string;
begin
  if not Maus then exit;
  if ssLeft in Shift then
  begin
    if ssDouble in Shift then exit;
    Xmess := x;
    Ymess := y;
    if Punkt = 'PUNKT1' then
    begin
      with ImageFoto.Canvas do
      begin
        Pen.Color   := LinearFarbe;
        Brush.Color := LinearFarbe;
        Ellipse (Xmess-3,Ymess-3,Xmess+3,Ymess+3);
      end;
      Xum1 := Xmess;
      Yum1 := Ymess;
      Punkt := 'PUNKT2';
      LabelText.Caption := Tx(1249);
      exit;
    end;
    if Punkt = 'PUNKT2' then
    begin
      With ImageFoto do
      begin
        Canvas.Pen.Color   := LinearFarbe;
        Canvas.Brush.Color := LinearFarbe;
        Canvas.Ellipse (Xmess-3,Ymess-3,Xmess+3,Ymess+3);
        setlength(Bild,Height+1);
        for i:= 0 to Height do setlength(Bild[i],Width+1);
        Xum2 := Xmess;
        Yum2 := Ymess;
        Laenge := Xum2-Xum1;
        Hoehe  := Yum2-Yum1;
        TanDreh := Laenge/Hoehe;
        Dreh    := -arctan(TanDreh);
        Fortschritt.Visible := true;
        Fortschritt.Max     := Width;
        Fortschritt.Step    := 5;
        Xm   := Width div 2;
        Ym   := Height div 2;
        for i := 0 to Height do
        begin
          for j := 0 to Width do Bild[i,j] := Canvas.pixels[j,i];
          Fortschritt.StepIt;
        end;
        Canvas.Brush.Color := clWhite;
        Canvas.Rectangle(0,0,Width,Height);
        xmR   := round(cos(Dreh)*Xm-sin(Dreh)*Ym);
        ymR   := round(sin(Dreh)*Xm+cos(Dreh)*Ym);
        Xkorr := Xm - XmR;
        Ykorr := Ym - YmR;
        Fortschritt.Visible := true;
        Fortschritt.Max     := Width;
        Fortschritt.Step    := 5;
        for i := 0 to Height do
        begin
          for j := 0 to Width do
          begin
            k := round(cos(Dreh)*j - sin(Dreh)*i)+Xkorr;
            l := round(sin(Dreh)*j + cos(Dreh)*i)+Ykorr;
            if (k>=0) and (k<Width) and (l>=0) and (l<Height) then  //k,l
              Canvas.Pixels[j,i]    := Bild[l,k]
            else Canvas.Pixels[j,i] := clWhite;
          end;
          Fortschritt.StepIt;
        end;
        Fortschritt.Visible   := false;
        for i := 0 to Height do setlength(Bild[i],0);
        Bild := NIL;
      end;
      Punkt := 'Streich1';
      if BereichS = '1..180°' then LabelText.Caption := Tx(1250);
      if BereichS = '1..360°' then LabelText.Caption := Tx(1255);
      exit;
    end;
    If Punkt = 'Streich1' then
    begin
      Xum1 := Xmess;
      Yum1 := Ymess;
      SBild := TBitmap.Create;
      SBild.Assign(ImageFoto.Picture.Graphic);
      With ImageFoto.Canvas do
      begin
        Pen.Color   := LinearFarbe;
        Brush.Color := LinearFarbe;
        Ellipse (Xum1-3,Yum1-3,Xum1+3,Yum1+3);
      end;
      Punkt := 'Streich2';
      if BereichS = '1..180°' then LabelText.Caption := Tx(1251);
      if BereichS = '1..360°' then LabelText.Caption := Tx(1256);
      exit;
    end;
    if Punkt = 'Streich2' then
    begin
      TanDreh := 0;
      Xum2 := Xmess;
      Yum2 := Ymess;
      Laenge := abs(Xum2-Xum1);
      Hoehe  := abs(Yum2-Yum1);
      if Yum1 <> Yum2 then TanDreh := Laenge/Hoehe;
      Winkel := Round(arctan(TanDreh)/Bo);
      if (Yum1 = Yum2) and (Xum1 > Xum2) then Winkel := 90;
      if (Yum1 = Yum2) and (Xum1 < Xum2) then Winkel := 270;
      if (Xum1 = Xum2) and (Yum2 > Yum1) then Winkel := 0;
      if (Xum1 = Xum2) and (Yum1 > Yum2) then Winkel := 180;
      if (Xum1 > Xum2) and (Yum1 > Yum2) then Winkel := 180-Winkel;
      if (Xum1 < Xum2) and (Yum1 > Yum2) then Winkel := Winkel + 180;
      if (Xum1 < Xum2) and (Yum2 > Yum1) then Winkel := 360-Winkel;
      Betrag := Round(sqrt(sqr(Laenge)+sqr(Hoehe)));
      WinkelS := RightS('000'+IntToStr(Winkel),3);
      BetragS := RightS('0000'+IntToStr(Betrag),3);
      Zeile  := '  '+WinkelS+'       '+BetragS;
      listBoxDaten.Items.Add (Zeile);
      Punkt := 'Streich1';
      ImageFoto.Picture.Assign (SBild);
      RBild := TBitmap.Create;
      RBild.Assign(ImageFoto.Picture.Graphic);
      With ImageFoto.Canvas do
      begin
        Pen.Width := Strich;
        Pen.Color := LinearFarbe;
        Pen.Style := LinienTyp;
        moveto (Xum1, Yum1);
        lineto (Xum2, Yum2);
      end;
      if BereichS = '1..180°' then LabelText.Caption := Tx(1250);
      if BereichS = '1..360°' then LabelText.Caption := Tx(1255);
      inc(Zahl);
      LabelZahl.Caption := IntToStr(Zahl);
      AziFeld[Zahl] := Winkel;
      FalFeld[Zahl] := Round(Betrag/5);
      if FalFeld[Zahl] = 0 then FalFeld[Zahl] := 1;
      ButtonRueck.Visible := true;
      SBild.Free;
    end;
  end;
end;

procedure TForm78.ButtonDbeendenClick(Sender: TObject);
begin
  ZahlGlob               := Zahl;
  if Programm = 7 then ButtonPlotten.Visible  := true;
  if Programm = 6 then ButtonAuswertung.Visible := true;
  DatenSpeichern.Enabled := true;
end;

procedure TForm78.ButtonPlottenClick(Sender: TObject);
begin
  Form19.Show;
end;

procedure TForm78.ButtonAuswertungClick(Sender: TObject);
begin
  Form17.Show;
end;

procedure TForm78.FarbeLineationClick(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  FarbeS : string;
begin
  FarbeS := 'clWhite';
  if ColorDialog1.Execute then LinearFarbe := ColorDialog1.Color;
  FarbeS := ColorToString (LinearFarbe);
  KonfigZeileS[106] := 'Colour of foto-lineations  :,'+FarbeS;
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
end;

procedure TForm78.SpeedFarbeClick(Sender: TObject);
begin
  FarbeLineationClick(Sender);
end;

procedure TForm78.StrichstaerkeClick(Sender: TObject);
begin
  LabelStrich.Visible   := true;
  ListBoxStrich.Visible := true;
  LinienTyp             := psSolid;
end;

procedure TForm78.SpeedSStaerkeClick(Sender: TObject);
begin
  StrichstaerkeClick(Sender);
end;

procedure TForm78.ListBoxStrichClick(Sender: TObject);
var
  i       : byte;
  StrichS : string;
  Datei   : TextFile;
begin
  Strich  := 1;
  StrichS := '1';
  for i := 1 to ListBoxStrich.Items.Count-1 do
    if ListboxStrich.Selected[i] then
      StrichS := ListBoxStrich.Items.Strings[i];
  KonfigZeileS[99] := 'Pen width (in pixel)       :,'+StrichS;
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  Strich := StrtoInt(StrichS);
  LabelStrich.Visible   := false;
  ListBoxStrich.Visible := false;
end;

procedure TForm78.durchgezogenClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  LinienTyp        := psSolid;
  KonfigZeileS[10] := '  Line Style               :,Solid';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  Strich := 1;
end;

procedure TForm78.SpeedDurchgezogenClick(Sender: TObject);
begin
  durchgezogenClick(Sender);
end;

procedure TForm78.gestricheltClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  LinienTyp     := psDash;
  KonfigZeileS[10] := '  Line Style               :,Dash';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  Strich :=1;
end;

procedure TForm78.SpeedGestricheltClick(Sender: TObject);
begin
  gestricheltClick(Sender);
end;

procedure TForm78.punktiertClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  LinienTyp := psDot;
  KonfigZeileS[10] := '  Line Style               :,Dot';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  Strich := 1;
end;

procedure TForm78.SpeedPunktiertClick(Sender: TObject);
begin
  punktiertClick(Sender);
end;

procedure TForm78.strichpunktiertClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  LinienTyp     := psDashDot;
  KonfigZeileS[10] := '  Line Style               :,DashDot';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  Strich := 1;
end;

procedure TForm78.SpeedStrichPunktClick(Sender: TObject);
begin
  strichpunktiertClick(Sender);
end;

procedure TForm78.StrichPunktPunktClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  LinienTyp     := psDashDotDot;
  KonfigZeileS[10] := '  Line Style               :,DashDotDot';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  Strich := 1;
end;

procedure TForm78.SpeedStrichPunktPunktClick(Sender: TObject);
begin
  StrichPunktPunktClick(Sender);
end;

procedure TForm78.speichernClick(Sender: TObject);
begin
  if CurrentFile <> '' then Speichern4 (CurrentFile, ZahlGlob, AziFeld,
    FalFeld)
  else speichernUnterClick(Sender);
end;

procedure TForm78.speichernUnterClick(Sender: TObject);
begin
  Erweiterung (ExtenS);
  SaveDialog1.DefaultExt := ExtenS;
  SaveDialog1.Filter     := ExtenS;
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    Speichern4 (CurrentFile, ZahlGlob, AziFeld, FalFeld);
  end;
end;

procedure TForm78.SpeedSpeichernClick(Sender: TObject);
begin
  speichernUnterClick(Sender);
end;

procedure TForm78.GkopierenClick(Sender: TObject);
begin
  Clipboard.Assign(ImageFoto.Picture);
end;

procedure TForm78.SpeedKopierenClick(Sender: TObject);
begin
  GkopierenClick(Sender);
end;

procedure TForm78.alsBMPClick(Sender: TObject);
begin
  SavePictureDialog1.DefaultExt := GraphicExtension(TBitmap);
  SavePictureDialog1.Filter := 'Bitmap (*.bmp)|*.BMP';
  if SavePictureDialog1.Execute then
  begin
    CurrentFile := SavePictureDialog1.Filename;
    Bitmap   := TBitmap.Create;
    Bitmap.Assign(ImageFoto.Picture.Graphic);
    try
      Bitmap.SaveToFile(CurrentFile)
    finally
      Bitmap.Free;
      Bitmap   := nil;
    end;
  end;
end;

procedure TForm78.SpeedBMPClick(Sender: TObject);
begin
  alsBMPClick(Sender);
end;

procedure TForm78.alsJPGClick(Sender: TObject);
var
  DateiJ   : string;
begin
  SavePictureDialog1.DefaultExt := GraphicExtension(TJpegImage);
  SavePictureDialog1.Filter     := 'JPG-Datei (*.jpg)|*.jpg';
  if SavePictureDialog1.Execute then
  begin
    CurrentFile := SavePictureDialog1.Filename;
    JpgDatei := TJpegImage.Create;
    Bitmap   := TBitmap.Create;
    try
      with JpgDatei do
      begin
        Assign(ImageFoto.Picture.Bitmap);
        DateiJ := CurrentFile;
        delete(DateiJ,length(DateiJ)-2,3);
        DateiJ := DateiJ+'JPG';
        SaveToFile(DateiJ);
      end;
    finally
      JpgDatei.Free;
      Bitmap.Free;
      Bitmap   := nil;
      JpgDatei := nil;
    end;
  end;
end;

procedure TForm78.SpeedJPGClick(Sender: TObject);
begin
  alsJPGClick(Sender);
end;


procedure TForm78.ButtonRueckClick(Sender: TObject);
begin
  ImageFoto.Picture.Assign (RBild);
  Punkt := 'Streich1';
  ListBoxDaten.Items.delete(Zahl-1);
  Zahl := Zahl - 1;
  LabelZahl.Caption   := IntToStr(Zahl);
  ButtonRueck.Visible := false;
end;

procedure TForm78.DeinrichtenClick(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TForm78.SpeedEinrichtenClick(Sender: TObject);
begin
  DeinrichtenClick(Sender);
end;

procedure TForm78.DruckerClick(Sender: TObject);
var
  SchriftS : string[5];
  i        : byte;
begin
  Paneldrucken        .Visible := true;
  RadioButtonlinks.Visible     := true;
  RadioButtonzentriert.Visible := true;
  RadioButtonrechts.Visible    := true;
  RadioGroup.Visible           := true;
  CheckBoxdrucken.State        := cbUnchecked;
  MaskEditRdrucken.EditMask := '999;0; ';
  MaskEditXdrucken.EditMask := '999;0; ';
  MaskEditYdrucken.EditMask := '999;0; ';
  MaskEditRdrucken.Text     := InttoStr(round(DruckenR*10));
  MaskEditXdrucken.Text     := InttoStr(round(DruckenX*10));
  MaskEditYdrucken.Text     := InttoStr(round(DruckenY*10));
  GroupBoxdrucken.Caption   := Tx(880);
  LabelRdrucken.Caption        := Tx(883);
  LabelMitte.Caption           := Tx(884);
  LabelXdrucken.Caption        := Tx(885);
  LabelYdrucken.Caption        := Tx(886);
  CheckBoxdrucken.Caption      := Tx(881);
  CheckBoxAbbruch.Caption      := Tx(882);
  LabelUnterschrift.Caption    := Tx(887);
  LabelSchrift.Caption         := Tx(888);
  RadioButtonLinks.Caption     := Tx(889);
  RadioButtonZentriert.Caption := Tx(890);
  RadioButtonRechts.Caption    := Tx(891);
  CheckBoxdrucken.Enabled   := false;
  i                         := 3;
  repeat
    i := i + 1;
    str(i, SchriftS);
    ListBoxSchrift.Items.Add (SchriftS);
  until i = 40;
end;

procedure TForm78.SpeedDruckerClick(Sender: TObject);
begin
  DruckerClick(Sender);
end;

procedure TForm78.MaskEditUnterschriftKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = chr(13) then
  begin
    TextS := MaskEditUnterschrift.Text;
    Gedrueckt[1] := true;
    if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
       and (Gedrueckt[3] = true) then
       CheckBoxdrucken.Enabled := true;
  end;
end;

procedure TForm78.ListBoxSchriftClick(Sender: TObject);
var
  i        : byte;
  SchriftS : string[2];
begin
  for i := 1 to ListboxSchrift.Items.Count-1 do
  begin
    if ListboxSchrift.Selected[i] then SchriftS := ListBoxSchrift.Items.Strings[i];
  end;
  Schrift := StrToInt(SchriftS);
  Gedrueckt[2] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    CheckBoxdrucken.Enabled := true;
end;

procedure TForm78.RadioButtonLinksClick(Sender: TObject);
begin
  BuendigS := 'Links';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    CheckBoxdrucken.Enabled := true;
end;

procedure TForm78.RadioButtonZentriertClick(Sender: TObject);
begin
  BuendigS := 'Zentriert';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    CheckBoxdrucken.Enabled := true;
end;

procedure TForm78.RadioButtonRechtsClick(Sender: TObject);
begin
  BuendigS := 'Rechts';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    CheckBoxdrucken.Enabled := true;
end;

procedure TForm78.CheckBoxdruckenClick(Sender: TObject);
var
  XKoordS : string;
  YKoordS : string;
  RadiusS : string;
  DBitmap : TBitmap;
  Fenster : TRect;
begin
  Paneldrucken.Visible         := false;
  RadioButtonlinks.Visible     := false;
  RadioButtonzentriert.Visible := false;
  RadioButtonrechts.Visible    := false;
  RadioGroup.Visible           := false;
  RadiusS := MaskEditRdrucken.Text;
  XKoordS := MaskEditXdrucken.Text;
  YKoordS := MaskEditYdrucken.Text;
  DBitmap:=TBitmap.Create;
  try
    DBitmap.Assign(ImageFoto.picture.graphic);
    with Printer do
    begin
      BeginDoc;
      DruckBitmap (Printer.Canvas, Fenster, RadiusS,
                   XKoordS, YKoordS, TextS, Schrift,
                   BuendigS, Bitmap);
      EndDoc;
    end;
  finally
    DBitmap.free;
  end;
end;

procedure TForm78.CheckBoxAbbruchClick(Sender: TObject);
begin
  Paneldrucken.Visible         := false;
  RadioButtonlinks.Visible     := false;
  RadioButtonzentriert.Visible := false;
  RadioButtonrechts.Visible    := false;
  RadioGroup.Visible           := false;
end;

procedure TForm78.HilfeClick(Sender: TObject);
const
  Anfang = 167;
var
  DateiS      : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\fry-0cry.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\Circular-data-satellite.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm78.SpeedHilfeClick(Sender: TObject);
begin
  HilfeClick(Sender);
end;

procedure TForm78.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if Programm = 16 then
  begin
    if SpracheS = 'DEUTSCH' then HilfeS := 'Masszahlen_zirkular.doc';
    if SpracheS = 'ENGLISH' then HilfeS := 'Circular_measures.doc';
  end;
  if Programm = 7 then
  begin
    if SpracheS = 'DEUTSCH' then HilfeS := 'Richtungsrose.doc';
    if SpracheS = 'ENGLISH' then HilfeS := 'Rose_diagrams.doc';
  end;
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm78.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm78.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm78.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

end.
