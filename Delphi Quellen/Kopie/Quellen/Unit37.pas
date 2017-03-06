unit Unit37;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, ExtCtrls, Menus, StdCtrls, Mask, ClipBrd,
  Globvar, Basic, Plotten, NetzProj, HPPlot, Texte, ComCtrls,
  Buttons, Drucken, Printers, Shellapi, Standard, GifImage,
  Bmp2Tiff, Jpeg, ExtDlgs, ReadTiff, ehsHelpRouter;

type
  TForm37 = class(TForm)
    Image1: TImage;

    Panel1         : TPanel;
    LabelProjektion: TLabel;
    LabelNetz      : TLabel;

    ButtonStart  : TButton;
    Buttonzurueck: TButton;
    Buttonbeenden: TButton;

    GroupBoxWinkel    : TGroupBox;
    MaskEditAbstand   : TMaskEdit;
    MaskEditKippwinkel: TMaskEdit;
    LabelAbstand      : TLabel;
    LabelKippwinkel   : TLabel;
    CheckBoxOK: TCheckBox;

    MainMenu1: TMainMenu;

    Projektion1           : TMenuItem;
    SchmidtschesNetz1     : TMenuItem;
    WulffschesNetz1       : TMenuItem;
    orthographischesNetz1 : TMenuItem;
    KavraiskiiNetz1: TMenuItem;

    Farbe1   : TMenuItem;

    Grafik1                    : TMenuItem;
    kopieren1                  : TMenuItem;
    Speichern1                 : TMenuItem;
    speichernunter1            : TMenuItem;
    ausZwischenablageholen1: TMenuItem;
    ausDateiholen1: TMenuItem;

    Hilfe1: TMenuItem;

    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;

    GrossuKleinkreise1: TMenuItem;
    Aequator1: TMenuItem;
    HPPlotter1: TMenuItem;

    FarbePeripherie1 : TMenuItem;
    GroupBoxplotten: TGroupBox;
    Panel3: TPanel;
    LabelRadius: TLabel;
    MaskEditRadius: TMaskEdit;
    Panel4: TPanel;
    LabelMittelpunkt: TLabel;
    LabelX: TLabel;
    MaskEditX: TMaskEdit;
    LabelY: TLabel;
    MaskEditY: TMaskEdit;
    StatusBar: TStatusBar;
    PanelSpeed: TPanel;
    SpeedHilfe: TSpeedButton;
    FarbeDiagramm1: TMenuItem;
    Panel5: TPanel;
    LabelGeraet: TLabel;
    Hintergrund: TMenuItem;
    PrinterSetupDialog1: TPrinterSetupDialog;
    PrintDialog1: TPrintDialog;
    SpeedDrucken: TSpeedButton;
    Drucker1: TMenuItem;
    Druckereinrichten: TMenuItem;
    drucken1: TMenuItem;
    FarbeRahmen: TMenuItem;
    Paneldrucken: TPanel;
    GroupBoxDrucken: TGroupBox;
    Panel7: TPanel;
    LabelRdrucken: TLabel;
    MaskEditRdrucken: TMaskEdit;
    Panel8: TPanel;
    LabelMitte: TLabel;
    LabelXdrucken: TLabel;
    MaskEditXdrucken: TMaskEdit;
    LabelYdrucken: TLabel;
    MaskEditYdrucken: TMaskEdit;
    Panel9: TPanel;
    LabelUnterschrift: TLabel;
    MaskEditUnterschrift: TMaskEdit;
    LabelSchrift: TLabel;
    ListBoxSchrift: TListBox;
    RadioGroup: TRadioGroup;
    RadioButtonLinks: TRadioButton;
    RadioButtonZentriert: TRadioButton;
    RadioButtonRechts: TRadioButton;
    Handbuch: TMenuItem;
    ColorDialog1: TColorDialog;
    Halbkugel: TMenuItem;
    untere: TMenuItem;
    obere: TMenuItem;
    Image2: TImage;
    SpeedHandbuch: TSpeedButton;
    SpeedObereH: TSpeedButton;
    SpeedUntereH: TSpeedButton;
    SpeedFarbeKreise: TSpeedButton;
    SpeedKopieren: TSpeedButton;
    SpeedZwischenablage: TSpeedButton;
    SpeedLambert: TSpeedButton;
    SpeedStereografisch: TSpeedButton;
    SpeedOrthografisch: TSpeedButton;
    SpeedKavraiskii: TSpeedButton;
    SpeedFarbeAequator: TSpeedButton;
    SpeedPlotter: TSpeedButton;
    SpeedPLT: TSpeedButton;
    SpeedDXF: TSpeedButton;
    SpeedPeripherie: TSpeedButton;
    SpeedDiagramm: TSpeedButton;
    SpeedRahmen: TSpeedButton;
    SpeedausDatei: TSpeedButton;
    Literatur: TMenuItem;
    SpeedLiteratur: TSpeedButton;
    ImageNord: TImage;
    StrichStaerke: TMenuItem;
    ListBoxStrich: TListBox;
    LabelStrich: TLabel;
    SpeedStrich: TSpeedButton;
    Beschriften: TMenuItem;
    BeschriftenJa: TMenuItem;
    BeschriftenNein: TMenuItem;
    rechts: TMenuItem;
    links: TMenuItem;
    SpeedEinrichten: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedKeineSkala: TSpeedButton;
    SpeedSkalaLinks: TSpeedButton;
    SpeedSkalaRechts: TSpeedButton;
    PanelGroesse: TPanel;
    LabelBHoehe: TLabel;
    LabelBBreite: TLabel;
    MaskEditBBreite: TMaskEdit;
    MaskEditBHoehe: TMaskEdit;
    CheckBoxBild: TCheckBox;
    BGroesse: TMenuItem;
    FarbeH: TMenuItem;
    speichernBMP: TMenuItem;
    speichernGIF: TMenuItem;
    speichernTIF: TMenuItem;
    speichernJPG: TMenuItem;
    speichernWMF: TMenuItem;
    speichernEMF: TMenuItem;
    SpeedBMP: TSpeedButton;
    SpeedJPG: TSpeedButton;
    SpeedWMF: TSpeedButton;
    SpeedEMF: TSpeedButton;
    SpeedBGroesse: TSpeedButton;
    SpeedTransparent: TSpeedButton;
    SpeedFarbe: TSpeedButton;
    SpeedTIF: TSpeedButton;
    SpeedGIF: TSpeedButton;
    speichernUBMP: TMenuItem;
    speichernUGIF: TMenuItem;
    speichernUTIF: TMenuItem;
    speichernUJPG: TMenuItem;
    speichernUWMF: TMenuItem;
    speichernUEMF: TMenuItem;
    SavePictureDialog1: TSavePictureDialog;
    speichernPLT: TMenuItem;
    speichernDXF: TMenuItem;
    holenBMP: TMenuItem;
    holenGIF: TMenuItem;
    holenTIF: TMenuItem;
    holenJPG: TMenuItem;
    holenWMF: TMenuItem;
    holenEMF: TMenuItem;
    OpenPictureDialog1: TOpenPictureDialog;
    Ploterstellen: TButton;
    ButtonDrucken: TButton;
    ButtonAbbrechen: TButton;

    procedure FormActivate(Sender: TObject);
    procedure ButtonStartClick(Sender: TObject);
    procedure ButtonzurueckClick(Sender: TObject);
    procedure ButtonbeendenClick(Sender: TObject);

   {Projektion}
    procedure SchmidtschesNetz1Click(Sender: TObject);
    procedure WulffschesNetz1Click(Sender: TObject);
    procedure orthographischesNetz1Click(Sender: TObject);
    procedure KavraiskiiNetz1Click(Sender: TObject);

    {Farben Großkreise}
    procedure GrossuKleinkreise1Click(Sender: TObject);

    {Farben Äquator}
    procedure Aequator1Click(Sender: TObject);

    {Grafik}
    procedure kopieren1Click(Sender: TObject);
    procedure ausZwischenablageholen1Click(Sender: TObject);

    {Plotten}
    procedure Hilfe1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ShowHint(Sender: TObject);
    procedure SpeedHilfeClick(Sender: TObject);
    procedure CheckBoxOKClick(Sender: TObject);
    procedure MaskEditAbstandChange(Sender: TObject);
    procedure MaskEditKippwinkelChange(Sender: TObject);
    procedure DruckereinrichtenClick(Sender: TObject);
    procedure drucken1Click(Sender: TObject);
    procedure SpeedDruckenClick(Sender: TObject);
    procedure MaskEditUnterschriftKeyPress(Sender: TObject; var Key: Char);
    procedure RadioButtonLinksClick(Sender: TObject);
    procedure RadioButtonZentriertClick(Sender: TObject);
    procedure RadioButtonRechtsClick(Sender: TObject);
    procedure ListBoxSchriftClick(Sender: TObject);
    procedure HandbuchClick(Sender: TObject);
    procedure FarbePeripherie1Click(Sender: TObject);
    procedure FarbeDiagramm1Click(Sender: TObject);
    procedure FarbeRahmenClick(Sender: TObject);
    procedure untereClick(Sender: TObject);
    procedure obereClick(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure SpeedObereHClick(Sender: TObject);
    procedure SpeedUntereHClick(Sender: TObject);
    procedure SpeedFarbeKreiseClick(Sender: TObject);
    procedure SpeedKopierenClick(Sender: TObject);
    procedure SpeedZwischenablageClick(Sender: TObject);
    procedure SpeedLambertClick(Sender: TObject);
    procedure SpeedStereografischClick(Sender: TObject);
    procedure SpeedOrthografischClick(Sender: TObject);
    procedure SpeedKavraiskiiClick(Sender: TObject);
    procedure SpeedFarbeAequatorClick(Sender: TObject);
    procedure SpeedPlotterClick(Sender: TObject);
    procedure SpeedPLTClick(Sender: TObject);
    procedure SpeedDXFClick(Sender: TObject);
    procedure HPPlotter1Click(Sender: TObject);
    procedure SpeedPeripherieClick(Sender: TObject);
    procedure SpeedDiagrammClick(Sender: TObject);
    procedure SpeedRahmenClick(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
    procedure SpeedLiteraturClick(Sender: TObject);
    procedure StrichStaerkeClick(Sender: TObject);
    procedure ListBoxStrichClick(Sender: TObject);
    procedure SpeedStrichClick(Sender: TObject);
    procedure BeschriftenNeinClick(Sender: TObject);
    procedure rechtsClick(Sender: TObject);
    procedure linksClick(Sender: TObject);
    procedure SpeedEinrichtenClick(Sender: TObject);
    procedure SpeedSkalaLinksClick(Sender: TObject);
    procedure SpeedKeineSkalaClick(Sender: TObject);
    procedure SpeedSkalaRechtsClick(Sender: TObject);
    procedure BGroesseClick(Sender: TObject);
    procedure MaskEditBBreiteKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditBHoeheKeyPress(Sender: TObject; var Key: Char);
    procedure CheckBoxBildClick(Sender: TObject);
    procedure SpeedBGroesseClick(Sender: TObject);
    procedure FarbeHClick(Sender: TObject);
    procedure transparentClick(Sender: TObject);
    procedure speichernBMPClick(Sender: TObject);
    procedure SpeedBMPClick(Sender: TObject);
    procedure speichernGIFClick(Sender: TObject);
    procedure SpeedGIFClick(Sender: TObject);
    procedure speichernTIFClick(Sender: TObject);
    procedure SpeedTIFClick(Sender: TObject);
    procedure speichernJPGClick(Sender: TObject);
    procedure SpeedJPGClick(Sender: TObject);
    procedure speichernWMFClick(Sender: TObject);
    procedure SpeedWMFClick(Sender: TObject);
    procedure speichernEMFClick(Sender: TObject);
    procedure SpeedEMFClick(Sender: TObject);
    procedure speichernUBMPClick(Sender: TObject);
    procedure speichernUGIFClick(Sender: TObject);
    procedure speichernUTIFClick(Sender: TObject);
    procedure speichernUJPGClick(Sender: TObject);
    procedure speichernUWMFClick(Sender: TObject);
    procedure speichernUEMFClick(Sender: TObject);
    procedure SpeedTransparentClick(Sender: TObject);
    procedure SpeedFarbeClick(Sender: TObject);
    procedure speichernPLTClick(Sender: TObject);
    procedure speichernDXFClick(Sender: TObject);
    procedure holenBMPClick(Sender: TObject);
    procedure holenGIFClick(Sender: TObject);
    procedure holenTIFClick(Sender: TObject);
    procedure holenJPGClick(Sender: TObject);
    procedure holenWMFClick(Sender: TObject);
    procedure holenEMFClick(Sender: TObject);
    procedure PloterstellenClick(Sender: TObject);
    procedure ButtonDruckenClick(Sender: TObject);
    procedure ButtonAbbrechenClick(Sender: TObject);
  end;

var
  Form37      : TForm37;
  Bitmap      : TBitmap;
  HolZwischen : boolean;
  HolDatei    : boolean;
  CurrentFile : string;
  NetzS       : string[20];
  PlotDateiS  : string;
  Schrift     : byte;
  BuendigS    : string;
  Gedrueckt   : array [1..3] of boolean;
  TextS       : string;
  ProS        : string[25];
  Image1      : TImage;
  Ratio       : real;
  BHoeheSt    : word;
  HolPixS     : string;
implementation
uses Unit36;
{$R *.DFM}

procedure TForm37.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm37.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm37.FormActivate(Sender: TObject);
var
  i : byte;
begin
  Left   := 2;
  Top    := 0;
  Height := 750;
  Width  := 1040;
  SpeedDrucken.Hint                := Hilf(309);
  Form37.Caption                   := Tx(699);  {Fabric7: Projektionen der}
  Image1.Hint                      := Hilf(99);
  Panel1.Hint                      := Hilf(100);
  GroupBoxWinkel.Hint              := Hilf(101);
  MaskEditAbstand.Hint             := Hilf(102);
  LabelAbstand.Hint                := Hilf(102);
  MaskEditKippwinkel.Hint          := Hilf(104);
  LabelKippwinkel.Hint             := Hilf(104);
  CheckBoxOk.Hint                  := Hilf(105);
  GroupBoxPlotten.Hint             := Hilf(58) + Hilf(59);
  CheckBoxOk.Hint                  := Hilf(60);
  Ploterstellen.Hint               := Hilf(60);
  Panel3.Hint                      := Hilf(61);
  Panel4.Hint                      := Hilf(62);
  MaskEditX.Hint                   := Hilf(63);
  MaskEditY.Hint                   := Hilf(64);
  LabelX.Hint                      := Hilf(63);
  LabelY.Hint                      := Hilf(64);
  SpeedUntereH.Hint                := Hilf(364);
  SpeedObereH.Hint                 := Hilf(363);
  ButtonStart.Hint                 := Hilf(37);
  Buttonzurueck.Hint               := Hilf(106);
  ButtonBeenden.Hint               := Hilf(30);
  SpeedHandbuch.Hint               := Hilf(274);
  SpeedKopieren.Hint               := Hilf(262);
  SpeedZwischenablage.Hint         := Hilf(246);
  SpeedLambert.Hint                := Hilf(387);
  SpeedStereografisch.Hint         := Hilf(388);
  SpeedOrthografisch.Hint          := Hilf(389);
  SpeedKavraiskii.Hint             := Hilf(390);
  SpeedFarbeKreise.Hint            := Hilf(421);
  SpeedFarbeAequator.Hint          := Hilf(422);
  SpeedausDatei.Hint               := Hilf(368);
  SpeedPlotter.Hint                := Hilf(437);
  SpeedPLT.Hint                    := Hilf(438);
  SpeedDXF.Hint                    := Hilf(439);
  SpeedPeripherie.Hint             := Hilf(440);
  SpeedDiagramm.Hint               := Hilf(441);
  SpeedRahmen.Hint                 := Hilf(442);
  SpeedStrich.Hint                 := Hilf(463);
  SpeedEinrichten.Hint             := Hilf(505);
  SpeedSkalaRechts.Hint            := Hilf(528);
  SpeedSkalaLinks.Hint             := Hilf(529);
  SpeedKeineSkala.Hint             := Hilf(527);
  SpeedBMP.Hint                    := Hilf(586);
  SpeedGIF.Hint                    := Hilf(587);
  SpeedTIF.Hint                    := Hilf(588);
  SpeedJPG.Hint                    := Hilf(589);
  SpeedWMF.Hint                    := Hilf(590);
  SpeedEMF.Hint                    := Hilf(591);
  SpeedTransparent.Hint            := Hilf(584);
  SpeedFarbe.Hint                  := Hilf(585);
  SpeedBGroesse.Hint               := Hilf(583);  {&Projektion}
  HolPixS                          := '';
  SchmidtschesNetz1.Caption        := Tx(803);
  WulffschesNetz1.Caption          := Tx(804);
  orthographischesNetz1.Caption    := Tx(805);
  KavraiskiiNetz1.Caption          := Tx(806);
  Farbe1.Caption                   := Tx(642);  {&Farbe}
  GrossuKleinkreise1.Caption       := Tx(700);  {&Groß- und Kleinkreise}
  Aequator1.Caption                := Tx(701);  {Äquator}
  Grafik1.Caption                  := Tx(281);
  kopieren1.Caption                := Tx(282);
  Hintergrund.Caption              := Tx(1453); {Hintergrund}
  FarbeH.Caption                   := TX(275);
  speichern1.Caption               := Tx(284);
  speichernunter1.Caption          := Tx(285);
  ausZwischenablageholen1.Caption  := Tx(286);
  ausDateiholen1.Caption           := Tx(287);
  HPPlotter1.Caption               := Tx(288);
  FarbePeripherie1.Caption         := Tx(498);
  FarbeDiagramm1.Caption           := Tx(860);
  Hilfe1.Caption                   := Tx(162)+' (F1)';
  LabelProjektion.Caption          := Tx(704);   {Projektionsnetz:}
  LabelNetz.Caption                := Tx(705);   {orthografisches Netz}
  GroupBoxWinkel.Caption           := Tx(706);   {Winkel:}
  LabelAbstand.Caption             := Tx(707);   {Abstand der Kreise}
  LabelKippwinkel.Caption          := Tx(709);   {Kippwinkel:}
  GroupBoxPlotten.Caption          := Tx(297);
  Ploterstellen.Caption            := Tx(298);
  LabelRadius.Caption              := Tx(299);
  LabelMittelpunkt.Caption         := Tx(300);
  LabelX.Caption                   := Tx(301);
  LabelY.Caption                   := Tx(302);
  Buttonzurueck.Caption            := Tx(30);
  Buttonbeenden.Caption            := Tx(53);
  GroupBoxPlotten.Caption          := '';
  SpeedHilfe.Hint                  := Hilf(210);
  Image1.Enabled              := false;
  GroupBoxWinkel.Caption      := '';
  LabelAbstand.Enabled        := false;
  LabelKippwinkel.Enabled     := false;
  CheckBoxOK.State            := cbUnchecked;
  CheckBoxOK.Enabled          := false;
  Grafik1.Enabled             := false;
  MaskEditAbstand.EditMask    := '99;0; ';
  MaskEditKippwinkel.EditMask := '999;0; ';
  MaskEditAbstand.Text        := InttoStr(Abstand);
  MaskEditKippwinkel.Text     := InttoStr(Kippen);
  MaskEditAbstand.Enabled     := false;
  MaskEditKippwinkel.Enabled  := false;
  LabelProjektion.Enabled     := false;
  LabelNetz.Caption           := ' ';
  HolDatei                    := false;
  HolZwischen                 := false;
  LabelRadius.Enabled         := false;
  MaskEditRadius.EditMask     := '999;0; ';
  MaskEditX.EditMask          := '999;0; ';
  MaskEditY.EditMask          := '999;0; ';
  MaskEditRadius.Text         := InttoStr(round(HpRadius*10));
  MaskEditX.Text              := InttoStr(round(XKoord*10));
  MaskEditY.Text              := InttoStr(round(YKoord*10));
  MaskEditRadius.Enabled      := false;
  LabelMittelpunkt.Enabled    := false;
  LabelX.Enabled              := false;
  MaskEditX.Enabled           := false;
  LabelY.Enabled              := false;
  MaskEditY.Enabled           := false;
  Projektion1.Enabled         := false;
  Farbe1.Enabled              := false;
  LabelGeraet.Caption         := '';
  Grafik1.Enabled             := false;
  SpeedDrucken.Enabled        := false;
  Paneldrucken.Visible         := false;
  GroupBoxDrucken.Visible      := false;
  Drucker1.Caption             := Tx(92);
  Druckereinrichten.Caption    := Tx(94);
  drucken1.Caption             := Tx(93);
  FarbeRahmen.Caption          := Tx(892);
  for i := 1 to 3 do Gedrueckt[i] := false;
  GroupBoxPlotten.Visible := false;
  Panel5.Visible          := false;
  Halbkugel.Caption       := Tx(1087);
  untere.Caption          := Tx(1088);
  obere.Caption           := Tx(1089);
  Handbuch.Caption        := Tx(1055)+' (F2)';
  Literatur.Caption       := Tx(1183)+' (F5)';
  SpeedLiteratur.Hint     := Hilf(462);
  PanelSpeed.Visible      := false;
  for i := 0 to 9 do ListboxStrich.Items.Add(IntToStr(i+1));
  ListBoxStrich.Visible   := false;
  LabelStrich.Visible     := false;
  Strichstaerke.Caption   := Tx(1186);
  LabelStrich.Caption     := Tx(1187);
  Beschriften.Caption     := Tx(1188);
  BeschriftenJa.Caption   := Tx(655);
  BeschriftenNein.Caption := Tx(654);
  rechts.Caption          := Tx(1189);
  links.Caption           := Tx(1190);
  MaskEditBBreite.EditMask:= '99999;0; ';
  MaskEditBHoehe.EditMask := '99999;0; ';
  LabelBBreite.Caption    := Tx(1440);
  LabelBHoehe.Caption     := Tx(1441);
  BGroesse.Caption        := Tx(1439);
  PanelGroesse.Visible    := false;
  Ratio                   := Image1.Width/Image1.Height;
  HTransparent            := false;
end;

procedure TForm37.ButtonStartClick(Sender: TObject);
var
  ProS     : string[25];
  Quadrat  : TRect;
  i, j     : byte;
  BBild    : TBitmap;
  FBild    : TBitmap;
  JBild    : TJpegImage;
  GBild    : TGifImage;
  MetaFile : TMetaFile;
  Rahmen   : TRect;
begin
  BHoeheSt := round(BBreiteSt/Ratio);
  if not ClipBoard.HasFormat(CF_Bitmap) then
  begin
    ausZwischenablageHolen1.Enabled := false;
    SpeedZwischenablage.Enabled     := false;
  end
  else
  begin
    ausZwischenablageHolen1.Enabled := true;
    SpeedZwischenablage.Enabled     := true;
  end;
  PanelSpeed.Visible       := true;
  GroupBoxPlotten.Visible  := false;
  Panel5.Visible           := false;
  SpeedDrucken.Enabled     := true;
  LabelProjektion.Enabled  := true;
  GroupBoxPlotten.Caption  := 'Plot:';
  if ProjektionS = 'Lambert'       then ProS := Tx(803);
  if ProjektionS = 'stereographic' then ProS := Tx(804);
  if ProjektionS = 'orthographic'  then ProS := Tx(805);
  if ProjektionS = 'Kavraiskii'    then ProS := Tx(806);
  if LeftS(ProS,1) = '&' then delete (ProS,1,1);
  LabelNetz.Caption    := ProS;
  LabelGeraet.Caption  := Tx(850) + ' '+GeraetS;
  Grafik1.Enabled            := true;
  MaskEditRadius.Enabled     := true;
  LabelMittelpunkt.Enabled   := true;
  LabelX.Enabled             := true;
  MaskEditX.Enabled          := true;
  LabelY.Enabled             := true;
  MaskEditY.Enabled          := true;
  Projektion1.Enabled        := true;
  Farbe1.Enabled             := true;
  CheckBoxOk.Enabled         := true;
  LabelAbstand.Enabled       := true;
  LabelKippwinkel.Enabled    := true;
  MaskEditAbstand.Enabled    := true;
  MaskEditKippwinkel.Enabled := true;
  LabelRadius.Enabled        := true;
  Bo := Pi/180;
  Image1.Enabled             := true;
  Bitmap := Tbitmap.Create;
  ImageNord.Picture.LoadfromFile (DirectS+'\'+'NordPfeil.bmp');
  Bitmap := Tbitmap.Create;
  Bitmap.Width     := Image1.Width;
  Bitmap.Height    := Image1.Height;
  ImageNord.Top    := 22;
  ImageNord.Left   := 400;
  ImageNord.Width  := 18;
  ImageNord.Height := 36;
  with Image1 do
  begin
    Picture.Graphic := Bitmap;
    Xmitte := Image1.Width div 2;
    Ymitte := Image1.Height div 2 + 18;
    Radius := Image1.Width div 2 - 24;
    Breite := Image1.Width;
    Hoehe  := Image1.Height;
  end;
  Diagramm (Image1.Canvas);
  with ImageNord do
  begin
    if not HTransparent then
    begin
      for i := 0 to Width-1 do
      begin
        for j := 0 to Height-1 do
        begin
          if Canvas.Pixels[i,j] = clWhite then
            Canvas.Pixels[i,j] := HintFarbe
          else Canvas.Pixels[i,j] := UmfangFarbe;
        end;
      end;
    end;
    Visible := true;
  end;
  if HolZwischen then
  begin
    Image1.Canvas.CopyMode := cmSrcCopy;
    if ClipBoard.HasFormat(CF_Bitmap) then
    begin
      Bitmap := TBitmap.Create;
      try
        Bitmap.Assign(ClipBoard);
        Image1.Canvas.Draw(0,0, Bitmap);
      finally
        Bitmap.free;
      end;
      Zahlloeschen(Image1.Canvas);
    end
    else MessageDlg(Tx(306), mtInformation, [mbOK],0);  {Die Zwischenablage}
    Holzwischen := false;
  end;
  if HolPixS = 'BMP' then
  begin
    try
      FBild  := TBitmap.Create;
      Rahmen := Rect(0,0,Breite,Hoehe);
      FBild.LoadFromFile(CurrentFile);
      Image1.Canvas.Stretchdraw(Rahmen,FBild);
    finally
      FBild.Free;
    end;
    Zahlloeschen(Image1.Canvas);
  end;
  if HolPixS = 'GIF' then
  begin
    try
      GBild  := TGifImage.Create;
      Rahmen := Rect(0,0,Image1.Width,Image1.Height);
      GBild.LoadFromFile(CurrentFile);
      Image1.Canvas.Stretchdraw(Rahmen,GBild);
    finally
      GBild.Free;
    end;
    Zahlloeschen(Image1.Canvas);
  end;
  if HolPixS = 'TIF' then
  begin
    try
      FBild  := TBitmap.Create;
      Rahmen := Rect(0,0,Image1.Width,Image1.Height);
      LoadTiffFromFile(CurrentFile,FBild);
      Image1.Canvas.Stretchdraw(Rahmen,FBild);
    finally
      FBild.Free;
    end;
    Zahlloeschen(Image1.Canvas);
  end;
  if HolPixS = 'JPG' then
  begin
    try
      JBild := TJpegImage.Create;
      FBild := TBitmap.Create;
      JBild.LoadFromFile(CurrentFile);
      FBild.Assign(JBild);
      Rahmen := Rect(0,0,Image1.Width,Image1.Height);
      Image1.Canvas.Stretchdraw(Rahmen,FBild);
    finally
      FBild.Free;
      JBild.Free;
    end;
    Zahlloeschen(Image1.Canvas);
  end;
  if HolPixS = 'WMF' then
  begin
    try
      MetaFile := TMetaFile.Create;
      MetaFile.Enhanced := false;
      FBild := TBitmap.Create;
      MetaFile.LoadFromFile(CurrentFile);
      FBild.Width  := MetaFile.Width;
      FBild.Height := MetaFile.Height;
      FBild.Canvas.Draw(0,0,MetaFile);
      Rahmen := Rect(0,0,Image1.Width,Image1.Height);
      Image1.Canvas.Stretchdraw(Rahmen,FBild);
    finally
      MetaFile.Free;
      FBild.Free;
    end;
    Zahlloeschen(Image1.Canvas);
  end;
  if HolPixS = 'EMF' then
  begin
    try
      MetaFile := TMetaFile.Create;
      MetaFile.Enhanced := true;
      FBild := TBitmap.Create;
      MetaFile.LoadFromFile(CurrentFile);
      Rahmen := Rect(0,0,Image1.Width,Image1.Height);
      FBild.Width  := Image1.Width;
      FBild.Height := Image1.Height;
      FBild.Canvas.StretchDraw(Rahmen,MetaFile);
      Image1.Canvas.Stretchdraw(Rahmen,FBild);
    finally
      MetaFile.Free;
      FBild.Free;
    end;
    Zahlloeschen(Image1.Canvas);
  end;
  HolPixS := '';
  {Zeichnen des Netzes}
  Kippen := Kippen mod 180;
  if ObenUntenS = 'LOWER' then Kippwinkel := abs(Kippen);
  if ObenUntenS = 'UPPER' then Kippwinkel := Kippen*-1;
  if Kippwinkel < 0 then KippWinkel := 180 + Kippwinkel;
  with Image1.Canvas do
  begin
    Projektionen (NetzS, Image1.Canvas);
    if not HTransparent then
    begin
      with image2 do
      begin
        Quadrat := Rect (0, 0, Clientwidth, ClientHeight);
        if ObenUntenS = 'LOWER' then UntereH(Canvas, Quadrat);
        if ObenUntenS = 'UPPER' then ObereH (Canvas, Quadrat);
      end;
    end;
  end;
  Image2.Visible    := false;
  ImageNord.Visible := false;
  if not HTransparent then
    Image1.Canvas.Draw(Image1.Width-Image2.width-5,
                       Image1.Height-Image2.Height-5,
                       Image2.picture.graphic);
  Image1.Canvas.Draw(Image1.Width div 2 - ImageNord.Width div 2,7,
                     ImageNord.Picture.Graphic);
  if DemoB then
  begin
    with Image1.Canvas do
    begin
      Font.Name   := 'Times New Roman';
      Brush.Color := clWhite;
      Font.Color  := clGray;
      Font.Size   := 36;
      Textout(Width div 2-300,Height div 2+10,'Demo-Version');
    end;
  end;
end;

procedure TForm37.ButtonzurueckClick(Sender: TObject);
var
  Flaeche : TRect;
begin
  ButtonStart.Enabled     := true;
  LabelGeraet.Color       := clWhite;
  CheckBoxOK.State        := cbUnchecked;
  Flaeche := Rect(0,0,Clientwidth,ClientHeight);
  Loeschen (Image1.Canvas, Flaeche);
  Loeschen (Image2.Canvas, Flaeche);
  Loeschen (ImageNord.Canvas, Flaeche);
  Form37.Close;
end;

procedure TForm37.ButtonbeendenClick(Sender: TObject);
var
  Flaeche : TRect;
begin
  Loeschen (Image1.Canvas, Flaeche);
  Loeschen (Image2.Canvas, Flaeche);
  Loeschen (ImageNord.Canvas, Flaeche);
  Form37.Close;
  Form36.Close;
  SetCurrentDir(DirectS);
end;

procedure TForm37.MaskEditAbstandChange(Sender: TObject);
begin
  CheckBoxOk.State := cbUnchecked;
end;

procedure TForm37.MaskEditKippwinkelChange(Sender: TObject);
begin
  CheckBoxOk.State := cbUnchecked;
end;

procedure TForm37.CheckBoxOKClick(Sender: TObject);
var
  Datei : TextFile;
  i     : word;
begin
  if CheckBoxOk.State = cbUnchecked then exit;
  Abstand       := StrtoInt(MaskEditAbstand.Text);
  NetzInkrement := Abstand;
  Kippen        := StrtoInt(MaskEditKippwinkel.Text);
  KonfigZeileS[70] := 'Distance of Circles Deg.   :,'+IntToStr(Abstand);
  KonfigZeileS[71] := 'Distance of Points Deg.    :,'+IntToStr(NetzInkrement);
  KonfigZeileS[72] := 'Tilt Angle Deg.            :,'+IntToStr(Kippen);
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm37.untereClick(Sender: TObject);
var
  Datei : TextFile;
  i     : word;
begin
  ObenUntenS := 'LOWER';
  KonfigZeileS[16] := 'Hemisphere                 :,'+ObenUntenS;
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;


procedure TForm37.obereClick(Sender: TObject);
var
  Datei : TextFile;
  i     : word;
begin
  ObenUntenS := 'UPPER';
  KonfigZeileS[16] := 'Hemisphere                 :,'+ObenUntenS;
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm37.SchmidtschesNetz1Click(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  NetzS        := 'Schmidt';
  ProjektionS  := 'Lambert';
  KonfigZeileS[24] := '  Projection               :,Lambert';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ProS := Tx(803);
  delete (ProS,1,1);
  LabelNetz.Caption := ProS;
  ButtonStartClick(Sender);
end;

procedure TForm37.WulffschesNetz1Click(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  NetzS        := 'Wulff';
  ProjektionS  := 'stereographic';
  KonfigZeileS[24] := '  Projection               :,stereographic';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ProS := Tx(804);
  delete (ProS,1,1);
  LabelNetz.Caption := ProS;
  ButtonStartClick(Sender);
end;

procedure TForm37.orthographischesNetz1Click(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  NetzS        := 'ortho';
  ProjektionS  := 'orthographic';
  KonfigZeileS[24] := '  Projection               :,orthographic';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ProS := Tx(805);
  delete (ProS,1,1);
  LabelNetz.Caption := ProS;
  ButtonStartClick(Sender);
end;

procedure TForm37.KavraiskiiNetz1Click(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  NetzS        := 'Kavraiskii';
  ProjektionS  := 'Kavraiskii';
  KonfigZeileS[24] := '  Projection               :,Kavraiskii';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ProS := Tx(806);
  delete (ProS,1,1);
  LabelNetz.Caption := ProS;
  ButtonStartClick(Sender);
end;

procedure TForm37.SpeedLambertClick(Sender: TObject);
begin
  SchmidtschesNetz1Click(Sender);
end;

procedure TForm37.SpeedStereografischClick(Sender: TObject);
begin
  WulffschesNetz1Click(Sender);
end;

procedure TForm37.SpeedOrthografischClick(Sender: TObject);
begin
  orthographischesNetz1Click(Sender);
end;

procedure TForm37.SpeedKavraiskiiClick(Sender: TObject);
begin
  KavraiskiiNetz1Click(Sender);
end;

procedure TForm37.BGroesseClick(Sender: TObject);
begin
  PanelGroesse.Visible := true;
  CheckBoxBild.State   := cbUnchecked;
  MaskEditBBreite.Text := IntTostr(BBreiteSt);
  MaskEditBHoehe.Text  := IntToStr(BHoeheSt);
end;

procedure TForm37.SpeedBGroesseClick(Sender: TObject);
begin
  BGroesseClick(Sender);
end;

procedure TForm37.MaskEditBBreiteKeyPress(Sender: TObject; var Key: Char);
var
  BBreiteS : string;
  Datei    : TextFile;
  i        : byte;
begin
  if Key = chr(13) then
  begin
    BBreiteS := MaskEditBBreite.Text;
    LeerLoeschen (BBreiteS);
    if BBreiteS = '' then exit
    else
    begin
      BBreiteSt := StrToInt (BBreiteS);
      BHoeheSt := round(BBreiteSt/Ratio);
      KonfigZeileS[118] := 'Save Image Width (Stereo)  :,'+BBreiteS;
      MaskEditBHoehe.Text := IntToStr(BHoeheSt);
      assignFile(Datei,DirectS+'\'+'Fabric.ini');
      rewrite (Datei);
      for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
      closefile (Datei);
    end;
  end;
end;

procedure TForm37.MaskEditBHoeheKeyPress(Sender: TObject; var Key: Char);
var
  BHoeheS : string;
  Datei   : TextFile;
  i       : byte;
begin
  if Key = chr(13) then
  begin
    BHoeheS := MaskEditBHoehe.Text;
    LeerLoeschen (BHoeheS);
    if BHoeheS = '' then exit
    else
    begin
      BHoeheSt  := StrToInt (BHoeheS);
      BBreiteSt := round(BHoeheSt*Ratio);
      KonfigZeileS[118] := 'Save Image Width (Stereo)  :,'+IntToStr(BBreiteSt);
      MaskEditBBreite.Text := IntToStr(BBreiteSt);
    end;
    assignFile(Datei,DirectS+'\'+'Fabric.ini');
    rewrite (Datei);
    for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
    closefile (Datei);
  end;
end;

procedure TForm37.CheckBoxBildClick(Sender: TObject);
begin
  PanelGroesse.Visible := false;
end;

procedure TForm37.kopieren1Click(Sender: TObject);
begin
  ClipBoard.Assign (Image1.Picture);
end;

procedure TForm37.transparentClick(Sender: TObject);
begin
  Farbe                 := clWhite;
  HTransparent          := true;
  speichernBMP.Enabled  := false;
  speichernJPG.Enabled  := false;
  speichernTIF.Enabled  := false;
  speichernWMF.Enabled  := false;
  speichernEMF.Enabled  := false;
  speichernUBMP.Enabled := false;
  speichernUJPG.Enabled := false;
  speichernUTIF.Enabled := false;
  speichernUWMF.Enabled := false;
  speichernUEMF.Enabled := false;
  ButtonStartClick(Sender);
end;

procedure TForm37.SpeedTransparentClick(Sender: TObject);
begin
  transparentClick(Sender);
end;

procedure TForm37.FarbeHClick(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  HTransparent := false;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS    := ColorToString (Farbe);
  HintFarbe := StringToColor(FarbeS);
  KonfigZeileS[3] := '  Background Colour        :,'+FarbeS;
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  CheckBoxOk.State      := cbUnchecked;
  speichernBMP.Enabled  := true;
  speichernJPG.Enabled  := true;
  speichernTIF.Enabled  := true;
  speichernWMF.Enabled  := true;
  speichernEMF.Enabled  := true;
  speichernUBMP.Enabled := true;
  speichernUJPG.Enabled := true;
  speichernUTIF.Enabled := true;
  speichernUWMF.Enabled := true;
  speichernUEMF.Enabled := true;
  ButtonStartClick (Sender);
end;

procedure TForm37.SpeedFarbeClick(Sender: TObject);
begin
  FarbeHClick(Sender);
end;

procedure TForm37.speichernBMPClick(Sender: TObject);
var
  Rahmen : TRect;
begin
  Bitmap        := TBitmap.Create;
  Bitmap.Width  := BBreiteSt;
  Bitmap.Height := BHoeheSt;
  Rahmen        := Rect(0,0,Bitmap.Width,Bitmap.Height);
  Bitmap.Canvas.Stretchdraw(Rahmen,Image1.Picture.Graphic);
  try
    if CurrentFile <> '' then Bitmap.SaveToFile(CurrentFile)
    else speichernUBMPClick(Sender);
  finally
    Bitmap.Free;
    Bitmap   := nil;
  end;
end;

procedure TForm37.SpeedBMPClick(Sender: TObject);
begin
  speichernBMPClick(Sender);
end;

procedure TForm37.speichernGIFClick(Sender: TObject);
var
  Bitmap  : TBitmap;
  GifBild : TGifImage;
  Rahmen  : TRect;
begin
  Bitmap        := TBitmap.Create;
  GifBild       := TGIFImage.Create;
  Bitmap.Width  := BBreiteSt;
  Bitmap.Height := BHoeheSt;
  Rahmen        := Rect(0,0,Bitmap.Width,Bitmap.Height);
  Bitmap.Canvas.Stretchdraw(Rahmen,Image1.Picture.Graphic);
  if HTransparent then
  begin
    Bitmap.Transparent := True;
    Bitmap.TransParentColor := HintFarbe;
  end
  else Bitmap.Transparent := false;
  try
    GifBild.Assign(Bitmap);
    if CurrentFile <> '' then GifBild.SaveToFile(CurrentFile)
    else speichernUGIFClick(Sender);
  finally
    Bitmap.Free;
    GifBild.Free;
  end;
end;

procedure TForm37.SpeedGIFClick(Sender: TObject);
begin
  speichernGIFClick(Sender);
end;

procedure TForm37.speichernTIFClick(Sender: TObject);
var
  Rahmen : TRect;
begin
  Bitmap        := TBitmap.Create;
  Bitmap.Width  := BBreiteSt;
  Bitmap.Height := BHoeheSt;
  Rahmen        := Rect(0,0,Bitmap.Width,Bitmap.Height);
  Bitmap.Canvas.Stretchdraw(Rahmen,Image1.Picture.Graphic);
  try
    if CurrentFile <> '' then
      WriteTiffToFile(CurrentFile,Bitmap)
    else speichernUTIFClick(Sender);
  finally
    Bitmap.Free;
    Bitmap := nil;
  end;
end;

procedure TForm37.SpeedTIFClick(Sender: TObject);
begin
  speichernTIFClick(Sender);
end;

procedure TForm37.speichernJPGClick(Sender: TObject);
var
  DateiJ   : string;
  Rahmen   : TRect;
  Bild     : TBitmap;
  JpgDatei : TjpegImage;
begin
  JpgDatei    := TJpegImage.Create;
  Bild        := TBitmap.Create;
  Bild.Width  := BBreiteSt;
  Bild.Height := BHoeheSt;
  Rahmen      := Rect(0,0,Bild.Width,Bild.Height);
  Bild.Canvas.Stretchdraw(Rahmen,Image1.Picture.Graphic);
  try
    with JpgDatei do
    begin
      Assign(Bild);
      if (CurrentFile <> '') and (UCaseS(RightS(Currentfile,3)) = 'JPG') then
      begin
        DateiJ := CurrentFile;
        delete(DateiJ,length(DateiJ)-2,3);
        DateiJ := DateiJ+'JPG';
        SaveToFile(DateiJ);
      end
      else SpeichernUJPGClick(Sender);
    end;
  finally
    JpgDatei.Free;
    Bild.Free;
    Bild        := nil;
    JpgDatei    := nil;
    CurrentFile := '';
  end;
end;

procedure TForm37.SpeedJPGClick(Sender: TObject);
begin
  speichernJPGClick(Sender);
end;

procedure TForm37.speichernWMFClick(Sender: TObject);
var
  Metafile   : TMetafile;
  MetaCanvas : TMetafileCanvas;
  Bitmap     : TBitmap;
  Rahmen     : TRect;
begin
  Metafile := TMetaFile.Create;
  MetaFile.Enhanced := false;
  try
    Bitmap := TBitmap.Create;
    Bitmap.Width  := BBreiteSt;
    Bitmap.Height := BHoeheSt;
    Rahmen        := Rect(0,0,Bitmap.Width,Bitmap.Height);
    Bitmap.Canvas.Stretchdraw(Rahmen,Image1.Picture.Graphic);
    try
      Bitmap.Assign(Image1.Picture);
      Metafile.Height := Bitmap.Height;
      Metafile.Width  := Bitmap.Width;
      MetaCanvas := TMetafileCanvas.Create(Metafile, 0);
      try
        MetaCanvas.Draw(0, 0, Bitmap);
      finally
        MetaCanvas.Free;
      end;
    finally
      Bitmap.Free;
    end;
    if CurrentFile <> '' then MetaFile.SaveToFile(CurrentFile)
    else SpeichernUWMFClick(Sender);
  finally
    Metafile.Free;
  end;
end;

procedure TForm37.SpeedWMFClick(Sender: TObject);
begin
  speichernWMFClick(Sender);
end;

procedure TForm37.speichernEMFClick(Sender: TObject);
var
  Metafile   : TMetafile;
  MetaCanvas : TMetafileCanvas;
  Bitmap     : TBitmap;
begin
  Metafile := TMetaFile.Create;
  MetaFile.Enhanced := true;
  try
    Bitmap := TBitmap.Create;
    try
      Bitmap.Assign(Image1.Picture);
      Metafile.Height := BHoeheSt;
      Metafile.Width  := BBreiteSt;
      MetaCanvas := TMetafileCanvas.Create(Metafile, 0);
      try
        MetaCanvas.Draw(0, 0, Bitmap);
      finally
        MetaCanvas.Free;
      end;
    finally
      Bitmap.Free;
    end;
    if CurrentFile <> '' then MetaFile.SaveToFile(CurrentFile)
    else SpeichernUEMFClick(Sender);
  finally
    Metafile.Free;
  end;
end;

procedure TForm37.SpeedEMFClick(Sender: TObject);
begin
  speichernEMFClick(Sender);
end;

procedure TForm37.speichernPLTClick(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  GroupBoxPlotten.Visible := true;
  Panel5.Visible          := true;
  GeraetS          := 'HPGL';
  KonfigZeileS[53] := 'Paper Plot                 :,HPGL';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  LabelGeraet.Caption  := Tx(850)+' '+ GeraetS;
end;

procedure TForm37.speichernDXFClick(Sender: TObject);
var
  i      : byte;
  Datei  : Textfile;
begin
  GroupBoxPlotten.Visible := true;
  Panel5.Visible          := true;
  GeraetS          := 'DXF';
  KonfigZeileS[53] := 'Paper Plot                 :,DXF';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  LabelGeraet.Caption  := Tx(850)+' '+ GeraetS;
end;

procedure TForm37.speichernUBMPClick(Sender: TObject);
begin
  SavePictureDialog1.DefaultExt := 'Windows bitmap file (*.bmp)|*.bmp';
  SavePictureDialog1.Filter     := 'Windows bitmap file (*.bmp)|*.bmp';
  if SavePictureDialog1.Execute then
  begin
    CurrentFile := SavePictureDialog1.Filename;
    SpeichernBMPClick(Sender);
  end
  else exit;
end;

procedure TForm37.speichernUGIFClick(Sender: TObject);
begin
  SavePictureDialog1.DefaultExt := 'Compuserver gif file (*.gif)|*.gif';
  SavePictureDialog1.Filter     := GraphicFilter(TGIFImage);
  if SavePictureDialog1.Execute then
  begin
    CurrentFile := SavePictureDialog1.Filename;
    SpeichernGIFClick(Sender);
  end
  else exit;
end;

procedure TForm37.speichernUTIFClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := 'Tagged image file format (*.tif)|*.tif';
  SaveDialog1.Filter     := 'Tagged image file format (*.tif)|*.tif';;
  if SavePictureDialog1.Execute then
  begin
    CurrentFile := SavePictureDialog1.Filename;
    SpeichernTIFClick(Sender);
  end
  else exit;
end;

procedure TForm37.speichernUJPGClick(Sender: TObject);
begin
  SavePictureDialog1.DefaultExt := 'Jpeg file (*.jpg)|*.jpg';
  SavePictureDialog1.Filter     := 'Jpeg file (*.jpg)|*.jpg';
  if SavePictureDialog1.Execute then
  begin
    CurrentFile := SavePictureDialog1.Filename;
    SpeichernJPGClick(Sender);
  end
  else exit;
end;

procedure TForm37.speichernUWMFClick(Sender: TObject);
begin
  SavePictureDialog1.DefaultExt := 'Windows metafile (*.wmf)|*.wmf';
  SavePictureDialog1.Filter     := 'Windows metafile (*.wmf)|*.wmf';
  if SavePictureDialog1.Execute then
  begin
    CurrentFile := SavePictureDialog1.Filename;
    speichernWMFClick(Sender);
  end
  else exit;
end;

procedure TForm37.speichernUEMFClick(Sender: TObject);
begin
  SavePictureDialog1.DefaultExt := 'Windows metafile (*.emf)|*.emf';
  SavePictureDialog1.Filter     := GraphicFilter(TMetaFile);
  if SavePictureDialog1.Execute then
  begin
    CurrentFile := SavePictureDialog1.Filename;
    speichernEMFClick(Sender);
  end
  else exit;
end;

procedure TForm37.ausZwischenablageholen1Click(Sender: TObject);
begin
  FarbePeripherie1.Enabled  := false;
  FarbeDiagramm1.Enabled    := false;
  Hintergrund.Enabled       := false;
  HolZwischen               := true;
  ButtonStartClick(Sender);
end;

procedure TForm37.holenBMPClick(Sender: TObject);
begin
  OpenDialog1.DefaultExt := 'Windows bitmap file (*.bmp)|*.bmp';
  OpenDialog1.Filter     := 'Windows bitmap file (*.bmp)|*.bmp';
  if OpenPictureDialog1.Execute then CurrentFile := OpenPictureDialog1.FileName
  else exit;
  HolPixS := 'BMP';
  ButtonStartClick(Sender);
end;

procedure TForm37.holenGIFClick(Sender: TObject);
begin
  OpenDialog1.DefaultExt := 'Compuserve gif file (*.gif)|*.gif';
  OpenDialog1.Filter     := GraphicFilter(TGIFImage);
  if OpenDialog1.Execute then CurrentFile := OpenDialog1.FileName
  else exit;
  HolPixS := 'GIF';
  ButtonStartClick(Sender);
end;

procedure TForm37.holenTIFClick(Sender: TObject);
begin
  OpenDialog1.DefaultExt := 'Tagged image file format (*.tif)|*.tif';
  OpenDialog1.Filter     := 'Tagged image file format (*.tif)|*.tif';
  if OpenDialog1.Execute then CurrentFile := OpenDialog1.FileName
  else exit;
  HolPixS := 'TIF';
  ButtonStartClick(Sender);
end;

procedure TForm37.holenJPGClick(Sender: TObject);
begin
  OpenPictureDialog1.DefaultExt := 'Jpeg file (*.jpg)|*.jpg';
  OpenPictureDialog1.Filter     := 'Jpeg file (*.jpg)|*.jpg';
  if OpenPictureDialog1.Execute then CurrentFile := OpenPictureDialog1.FileName
  else exit;
  HolPixS := 'JPG';
  ButtonStartClick(Sender);
end;

procedure TForm37.holenWMFClick(Sender: TObject);
begin
  OpenDialog1.DefaultExt := 'Windows metafile (*.WMF)|*.wmf';
  OpenDialog1.Filter     := 'Windows metafile (*.WMF)|*.wmf';
  if OpenDialog1.Execute then CurrentFile := OpenDialog1.FileName
  else exit;
  HolPixS := 'WMF';
  ButtonStartClick(Sender);
end;

procedure TForm37.holenEMFClick(Sender: TObject);
begin
  OpenDialog1.DefaultExt := 'Enhanced windows metafile (*.EMF)|*.emf';
  OpenDialog1.Filter     := 'Enhanced windows metafile (*.EMF)|*.emf';
  if OpenDialog1.Execute then CurrentFile := OpenDialog1.FileName
  else exit;
  HolPixS := 'EMF';
  ButtonStartClick(Sender);
end;

procedure TForm37.GrossuKleinkreise1Click(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  Farbe := clWhite;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS    := ColorToString (Farbe);
  NetzFarbe := StringToColor(FarbeS);
  KonfigZeileS[25] := 'Colour of Nets             :,'+FarbeS;
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick (Sender);
end;

procedure TForm37.Aequator1Click(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  Farbe := clWhite;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS        := ColorToString (Farbe);
  AequatorFarbe := StringToColor(FarbeS);
  KonfigZeileS[26] := 'Colour of Equator          :,'+FarbeS;
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick (Sender);
end;

procedure TForm37.SpeedFarbeAequatorClick(Sender: TObject);
begin
  Aequator1Click(Sender);
end;

procedure TForm37.HPPlotter1Click(Sender: TObject);
var
  Datei : TextFile;
  i     : byte;
begin
  DiagrFarbe := clWhite;
  ButtonStartClick(Sender);
  PrinterSetupDialog1.execute;
  GeraetS          := 'Plotter';
  KonfigZeileS[53] := 'Paper Plot                 :,Plotter';
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  GroupBoxPlotten.Visible := true;
  Panel5.Visible          := true;
  LabelGeraet.Caption     := Tx(850)+' '+ GeraetS;
end;

procedure TForm37.SpeedPlotterClick(Sender: TObject);
begin
  HPPlotter1Click(Sender);
end;

procedure TForm37.SpeedPLTClick(Sender: TObject);
begin
  speichernPLTClick(Sender);
end;

procedure TForm37.SpeedDXFClick(Sender: TObject);
begin
  speichernDXFClick(Sender);
end;

procedure TForm37.FarbePeripherie1Click(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  Farbe := clWhite;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS    := ColorToString (Farbe);
  UmfangFarbe := StringToColor(FarbeS);
  KonfigZeileS[5] := '  Periphery Colour         :,'+FarbeS;
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  CheckBoxOk.State := cbUnchecked;
  ButtonStartClick (Sender);
end;

procedure TForm37.FarbeDiagramm1Click(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  Farbe := clWhite;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS     := ColorToString (Farbe);
  DiagrFarbe := StringToColor(FarbeS);
  KonfigZeileS[6] := '  Diagram Colour           :,'+FarbeS;
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick (Sender);
end;

procedure TForm37.FarbeRahmenClick(Sender: TObject);
var
  Datei  : TextFile;
  i      : word;
  Farbe  : TColor;
  FarbeS : string;
begin
  Farbe := clWhite;
  if ColorDialog1.Execute then Farbe := ColorDialog1.Color;
  FarbeS      := ColorToString (Farbe);
  RahmenFarbe := StringToColor(FarbeS);
  KonfigZeileS[4] := '  Frame Colour             :,'+FarbeS;
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick (Sender);
end;

procedure TForm37.SpeedPeripherieClick(Sender: TObject);
begin
  FarbePeripherie1Click(Sender);
end;

procedure TForm37.SpeedDiagrammClick(Sender: TObject);
begin
  FarbeDiagramm1Click(Sender);
end;

procedure TForm37.SpeedRahmenClick(Sender: TObject);
begin
  FarbeRahmenClick(Sender);
end;

procedure TForm37.PloterstellenClick(Sender: TObject);
var
  RmaxS   : string[12];
  Rmax    : real;
  Xmax    : real;
  Ymax    : real;
  RadiusS : string[4];
  XKoordS : string[4];
  YKoordS : string[4];
  Kreuz   : boolean;
  Xm, Ym  : word;
  Datei   : TextFile;
  i       : byte;
  XS, YS  : string;
  WS, HS  : string;
  X, Y    : word;
  Groesse : word;
  X1, X2  : word;
  Y1, Y2  : word;
  Typ     : TMsgDlgType;
begin
  ZahlGlob := 0;
  RadiusS := MaskEditRadius.Text;
  XKoordS := MaskEditX.Text;
  YKoordS := MaskEditY.Text;
  KonfigZeileS[57] := 'Radius [mm]                :'+','+RadiusS;
  KonfigZeileS[58] := 'X-Coordinate of Centre [mm]:'+','+XKoordS;
  KonfigZeileS[59] := 'Y-Coordinate of Centre [mm]:'+','+YKoordS;
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  HpRadius  := StrtoInt(RadiusS)/10;
  XKoord    := StrtoInt(XKoordS)/10;
  YKoord    := StrtoInt(YKoordS)/10;
  if GeraetS <> 'Plotter' then
  begin
    Typ   := mtError;
    RmaxS := '(max. 100mm)';
    Rmax  := 10.0;
    Xmax  := 29.2 - Rmax;
    Ymax  := 20.5 - Rmax;
    if HpRadius > Rmax then
    begin
      if DlgMessage (Typ, Tx(37), Tx(308)+RMaxS,3) = 4 then
      begin
        MaskEditRadius.Clear;
        MaskEditRadius.SetFocus;
        exit;
      end;
    end;
    if XKoord > Xmax then
    begin
     if DlgMessage (Typ, Tx(37), Tx(309)+' max. '
         +FloattoStr(Xmax),3) = 4 then
      begin
        MaskEditX.Clear;
        MaskEditX.SetFocus;
        exit;
      end;  
    end;
    if YKoord > Ymax then
    begin
      if DlgMessage (Typ, Tx(37), Tx(310)+' max. '
          +FloattoStr(Ymax),3) = 4 then
      begin
        MaskEditY.Clear;
        MaskEditY.SetFocus;
        exit;
      end;
    end;
  end;
  Kreuz := false;
  {Beginn des Plottens}
  if GeraetS <> 'Plotter' then
  begin
    Plotter (Canvas, SaveDialog1);
    Farben (Canvas, UmfangFarbe);
    HPPeriph (Canvas, Kreuz);
    HPProjektionen (Canvas, NetzS, Abstand, NetzInkrement,
                    Kippwinkel);
    Farben (Canvas, PeriFarbe);
    Xm := round(XKoord*400);
    Ym := round(YKoord*400);
    Zeichkreis (Xm, Ym, 80, 5);
    DecimalSeparator := '.';
    XS := Inttostr(round((Xkoord-HPRadius/1.5) * 400));
    YS := IntToStr(round((YKoord-HpRadius/4) * 400));
    WS := FloatToStr(HPRadius/10);
    HS := FloatToStr(HPRadius/8);
    Farben (Canvas, clBlack);
    Hpende (XS, Ys, WS, HS);
  end;
  if GeraetS = 'Plotter' then
  begin
    SetMapMode (Printer.Handle, MM_Himetric);
    Kreuz := true;
    with Printer do
    begin
      BeginDoc;
      Plotter (Canvas, SaveDialog1);
      Farben (Canvas, PeriFarbe);
      HPPeriph (Canvas, Kreuz);
      HPProjektionen (Canvas, NetzS, Abstand, NetzInkrement,
                      Kippwinkel);
      Xm := round(XKoord*100*Faktor);
      Ym := round(YKoord*100*Faktor);
      X1 := Xm - round(HPRadius*100*Faktor);
      X2 := Xm + round(HPRadius*100*Faktor);
      Y1 := Ym - round(HPRadius*100*Faktor);
      Y2 := Ym + round(HPRadius*100*Faktor);
      Canvas.Pen.Color := UmfangFarbe;
      Canvas.Ellipse(X1,Y1,X2,Y2);
      if DemoB then
      begin
        X := round(Xkoord*100*Faktor);
        Y := round(Ykoord*100*Faktor);
        Groesse := round(HpRadius*2);
        Canvas.Font.Size  := Groesse;
        Canvas.Font.Color := clBlack;
        Canvas.Textout (round(x-25*Groesse), round(y+100*Faktor),
                                  'Demo-Version');
      end;
      EndDoc;
    end;
  end;
  showmessage(Tx(435));
  GroupBoxPlotten.Visible := false;
end;

procedure TForm37.DruckereinrichtenClick(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TForm37.SpeedEinrichtenClick(Sender: TObject);
begin
  DruckerEinrichtenClick(Sender);
end;

procedure TForm37.drucken1Click(Sender: TObject);
var
  SchriftS : string[5];
  i        : byte;
begin
  Paneldrucken.Visible    := true;
  GroupBoxDrucken.Visible := true;
  MaskEditRdrucken.EditMask := '999;0; ';
  MaskEditXdrucken.EditMask := '999;0; ';
  MaskEditYdrucken.EditMask := '999;0; ';
  MaskEditRdrucken.Text     := InttoStr(round(DruckenR*10));
  MaskEditXdrucken.Text     := InttoStr(round(DruckenX*10));
  MaskEditYdrucken.Text     := InttoStr(round(DruckenY*10));
  MaskEditUnterschrift.Text := ProS+'  '
                               +IntToStr(Kippwinkel)+'°';
  GroupBoxdrucken.Caption   := Tx(880);
  LabelRdrucken.Caption        := Tx(883);
  LabelMitte.Caption           := Tx(884);
  LabelXdrucken.Caption        := Tx(885);
  LabelYdrucken.Caption        := Tx(886);
  ButtonDrucken.Caption        := Tx(881);
  ButtonAbbrechen.Caption      := Tx(882);
  LabelUnterschrift.Caption    := Tx(887);
  LabelSchrift.Caption         := Tx(888);
  RadioButtonLinks.Caption     := Tx(889);
  RadioButtonZentriert.Caption := Tx(890);
  RadioButtonRechts.Caption    := Tx(891);
  ButtonDrucken.Enabled        := false;
  i                            := 3;
  repeat
    i := i + 1;
    str(i, SchriftS);
    ListBoxSchrift.Items.Add (SchriftS);
  until i = 40;
end;

procedure TForm37.SpeedDruckenClick(Sender: TObject);
begin
  drucken1Click(Sender);
end;

procedure TForm37.MaskEditUnterschriftKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = chr(13) then
  begin
    TextS := MaskEditUnterschrift.Text;
    Gedrueckt[1] := true;
    if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
       and (Gedrueckt[3] = true) then
       ButtonDrucken.Enabled := true;
  end;
end;

procedure TForm37.RadioButtonLinksClick(Sender: TObject);
begin
  BuendigS := 'Links';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    ButtonDrucken.Enabled := true;
end;

procedure TForm37.RadioButtonZentriertClick(Sender: TObject);
begin
  BuendigS := 'Zentriert';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    ButtonDrucken.Enabled := true;
end;

procedure TForm37.RadioButtonRechtsClick(Sender: TObject);
begin
  BuendigS := 'Rechts';
  Gedrueckt[3] := true;
  if (Gedrueckt[1] = true) and (Gedrueckt[2] = true)
    and (Gedrueckt[3] = true) then
    ButtonDrucken.Enabled := true;
end;

procedure TForm37.ListBoxSchriftClick(Sender: TObject);
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
    ButtonDrucken.Enabled := true;
end;

procedure TForm37.ButtonDruckenClick(Sender: TObject);
var
  XKoordS : string;
  YKoordS : string;
  RadiusS : string;
  Bitmap  : TBitmap;
  Fenster : TRect;
begin
  Paneldrucken.Visible    := false;
  GroupBoxDrucken.Visible := false;
  RadiusS := MaskEditRdrucken.Text;
  XKoordS := MaskEditXdrucken.Text;
  YKoordS := MaskEditYdrucken.Text;
  Bitmap  :=TBitmap.Create;
  try
    Bitmap.Assign(Image1.picture.graphic);
    with Printer do
    begin
      BeginDoc;
      DruckBitmap (Printer.Canvas, Fenster, RadiusS,
                   XKoordS, YKoordS, TextS, Schrift,
                   BuendigS, Bitmap);
      EndDoc;
    end;
  finally
    Bitmap.free;
  end;
end;

procedure TForm37.ButtonAbbrechenClick(Sender: TObject);
begin
  Paneldrucken.Visible         := false;
  GroupBoxDrucken.Visible      := false;
end;

procedure TForm37.Hilfe1Click(Sender: TObject);
var
  DateiS : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\lage3dt8.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\Nets-plot.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm37.SpeedHilfeClick(Sender: TObject);
begin
  Hilfe1Click(Sender);
end;

procedure TForm37.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Lagenkugel.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'Projections.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm37.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm37.SpeedObereHClick(Sender: TObject);
begin
  obereClick(Sender);
end;

procedure TForm37.SpeedUntereHClick(Sender: TObject);
begin
  untereClick(Sender);
end;

procedure TForm37.SpeedFarbeKreiseClick(Sender: TObject);
begin
  GrossuKleinkreise1Click(Sender);
end;

procedure TForm37.SpeedKopierenClick(Sender: TObject);
begin
  kopieren1Click(Sender);
end;

procedure TForm37.SpeedZwischenablageClick(Sender: TObject);
begin
  AusZwischenablageHolen1Click(Sender);
end;

procedure TForm37.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm37.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

procedure TForm37.StrichStaerkeClick(Sender: TObject);
begin
  ListBoxStrich.Visible  := true;
  LabelStrich.Color      := HintFarbe;
  LabelStrich.Font.Color := UmfangFarbe;
  LabelStrich.Visible    := true;
end;

procedure TForm37.ListBoxStrichClick(Sender: TObject);
var
  i       : byte;
  StrichS : string[3];
  Datei   : TextFile;
begin
  for i := 0 to ListboxStrich.Items.Count-1 do
  begin
    if ListboxStrich.Selected[i] then
      Strich := StrToInt(ListBoxStrich.Items.Strings[i]);
  end;
  StrichS := IntToStr(Strich);
  KonfigZeileS[99] := 'Pen width (in pixel)      :,'+StrichS;
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ListBoxStrich.Visible := false;
  LabelStrich.Visible   := false;
  ButtonStartClick(Sender);
end;

procedure TForm37.SpeedStrichClick(Sender: TObject);
begin
  StrichStaerkeClick(Sender);
end;

procedure TForm37.BeschriftenNeinClick(Sender: TObject);
begin 
  ButtonStartClick(sender);
end;

procedure TForm37.SpeedKeineSkalaClick(Sender: TObject);
begin
  BeschriftenNeinClick(Sender);
end;

procedure TForm37.rechtsClick(Sender: TObject);
var
  X, Y : word;
  Bo   : real;
  i, l : word;
begin
  Bo := Pi / 180;
  for i := 1 to 35 do
  begin
    if i < 12 then l := 20;
    if (i > 12) and (i < 16) then l := 10;
    if (i > 16) and (i < 20) then l := 5;
    if i > 30 then l := 15;
    X := round(Xmitte - (Radius+l)*sin(i*10*Bo));
    Y := round(Ymitte - (Radius+l)*cos(i*10*Bo));
    with image1.Canvas do
    begin
      Brush.Color := HintFarbe;
      Font.Color  := UmfangFarbe;
      Font.Size   := 6;
      TextOut(X,Y,inttostr(360-i*10));
    end;
  end;
end;

procedure TForm37.SpeedSkalaRechtsClick(Sender: TObject);
begin
  rechtsClick(Sender);
end;

procedure TForm37.linksClick(Sender: TObject);
var
  X, Y : word;
  Bo   : real;
  i, l : word;
begin
  ButtonStartClick(Sender);
  Bo := Pi / 180;
  for i := 1 to 35 do
  begin
    if i < 12 then l := 20;
    if (i > 12) and (i < 16) then l := 10;
    if (i > 16) and (i < 20) then l := 5;
    if i > 30 then l := 15;
    X := round(Xmitte - (Radius+l)*sin(i*10*Bo));
    Y := round(Ymitte - (Radius+l)*cos(i*10*Bo));
    with image1.Canvas do
    begin
      Brush.Color := HintFarbe;
      Font.Color  := UmfangFarbe;
      Font.Size   := 6;
      TextOut(X,Y,inttostr(i*10));
    end;
  end;
end;

procedure TForm37.SpeedSkalaLinksClick(Sender: TObject);
begin
  linksClick(Sender);
end;

end.
