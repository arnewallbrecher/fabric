unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, Menus, ExtCtrls, StdCtrls, ComCtrls,
  Haupt, Texte, Liesconf, Globvar, Basic, Standard, Buttons,
  Shellapi, ehsHelpRouter, Mask;

type
  TForm1 = class(TForm)
    Panel1           : TPanel;
    LabelPaket       : TLabel;
    LabelAnalyse     : TLabel;
    LabelDaten       : TLabel;
    PanelLizenz      : TPanel;
    Label5           : TLabel;
    LabelLizenz      : TLabel;
    LabelName        : TLabel;
    ButtonStart      : TButton;
    Buttonzuruck     : TButton;

    Image1    : TImage;
    Image2    : TImage;
    MainMenu1 : TMainMenu;
    Hilfe1    : TMenuItem;
    StatusBar : TStatusBar;
    Panel2    : TPanel;
    SpeedHilfe: TSpeedButton;
    Sprache: TMenuItem;
    Deutsch: TMenuItem;
    English: TMenuItem;
    Handbuch  : TMenuItem;
    LabelDemo : TLabel;
    SpeedHandbuch: TSpeedButton;
    SpeedDeutsch: TSpeedButton;
    SpeedEnglish: TSpeedButton;
    Literatur: TMenuItem;
    SpeedLiteratur: TSpeedButton;
    LabelDarstellung: TLabel;
    Praesentation: TMenuItem;
    DLage: TMenuItem;
    PanelGrafik: TPanel;
    LabelGrafik: TLabel;
    LabelPixel: TLabel;
    LabelLinks: TLabel;
    LabelOben: TLabel;
    MaskEditLinks: TMaskEdit;
    MaskEditOben: TMaskEdit;
    SpeedLinksoben: TSpeedButton;
    Anordnung: TMenuItem;
    RadioAnordnung: TRadioGroup;
    RadioKongruent: TRadioButton;
    RadioUberlappend: TRadioButton;
    SpeedULap: TSpeedButton;

    procedure FormActivate(Sender: TObject);
    procedure ButtonStartClick(Sender: TObject);
    procedure ButtonzuruckClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Hilfe1Click(Sender: TObject);
    procedure ShowHint(Sender: TObject);
    procedure SpeedHilfeClick(Sender: TObject);
    procedure DeutschClick(Sender: TObject);
    procedure EnglishClick(Sender: TObject);
    procedure HandbuchClick(Sender: TObject);
    procedure SpeedDeutschClick(Sender: TObject);
    procedure SpeedEnglishClick(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
    procedure SpeedLiteraturClick(Sender: TObject);
    procedure DLageClick(Sender: TObject);
    procedure MaskEditLinksKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditObenKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedLinksobenClick(Sender: TObject);
    procedure AnordnungClick(Sender: TObject);
    procedure RadioKongruentClick(Sender: TObject);
    procedure RadioUberlappendClick(Sender: TObject);
    procedure SpeedULapClick(Sender: TObject);
  end;

var
  Form1: TForm1;

implementation
uses unit2;
{$R *.DFM}

procedure TForm1.FormShow(Sender: TObject);
begin
  getDir(0,DirectS);
  Application.OnHint := ShowHint;
  Icon.Loadfromfile (DirectS+'\'+'Symbol1.ico');
  Image1.Picture.LoadfromFile (DirectS+'\'+'Fabric8.bmp');
  Image1.Stretch := true;
  Image2.Picture.LoadfromFile (DirectS+'\'+'GeolSoft.wmf');
  Image2.Stretch := true;
end;

procedure TForm1.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm1.FormActivate(Sender: TObject);
var
  LizS           : string[10];
  DatumAnfang    : TDateTime;
  DatumEnde      : TDateTime;
  DatumDifferenz : real;
  DatumS         : string[15];
begin
  if Finde = 0 then LiesConfig; {Konfigurationsdatei lesen und bei Fehler abbrechen}
  DemoB                := false;
  Left   := LeftDiag;
  Top    := TopDiag;
  Height := 620;
  Width  := 820;
  FabIni;
  if Finde <> 0 then
  begin
    Application.Terminate;
    exit;
  end;
  LabelDemo.Visible    := false;
  Buttonzuruck.Caption := Tx(30);
  Buttonzuruck.Hint    := Hilf(1);
  ButtonStart.Hint     := Hilf(2)+ Hilf(3);
  Panel1.Hint          := Hilf(6)+ Hilf(7);
  PanelLizenz.Hint     := Hilf(4)+ Hilf(5);
  Image1.Hint          := Hilf(12);
  SpeedHilfe.Hint      := Hilf(210);
  Sprache.Hint         := Hilf(270);
  Deutsch.Hint         := Hilf(271);
  English.Hint         := Hilf(272);
  Hilfe1.Hint          := Hilf(273);
  Handbuch.Hint        := Hilf(274);
  SpeedDeutsch.Hint    := Hilf(325);
  SpeedEnglish.Hint    := Hilf(326);
  SpeedHandbuch.Hint   := Hilf(274);
  SpeedLinksOben.Hint  := Hilf(728);
  Ausb := false;
  SpracheS := UcaseS (SpracheS);
  LabelPaket.Caption       := Tx(2);         {Ein Programm-Paket};
  LabelDarstellung.Caption := Tx(3);         {zur Darstellung};
  LabelAnalyse.Caption     := Tx(4);         {und Analyse};
  LabelDaten.Caption       := Tx(5);         {tektonischer Daten};
  Praesentation.Caption    := Tx(1723);
  Anordnung.Caption        := Tx(1726);
  RadioAnordnung.Caption   := Tx(1726);
  RadioKongruent.Caption   := Tx(1724);
  RadioUberlappend.Caption := Tx(1725);
  Dlage.Caption            := Tx(1693);
  LabelGrafik.Caption      := Tx(1694);
  LabelPixel.Caption       := Tx(1695);
  LabelLinks.Caption       := Tx(1696);
  LabelOben.Caption        := Tx(1697);
  Hilfe1.Caption           := Tx(162)+' (F1)';
  Sprache.Caption          := 'Language/Sprache';
  Handbuch.Caption         := Tx(1055)+' (F2)';
  Literatur.Caption        := Tx(1183)+' (F5)';
  SpeedLiteratur.Hint      := Hilf(462);
  if SpracheS = 'DEUTSCH' then LizS := 'Lizenz: ';
  if SpracheS = 'ENGLISH' then LizS := 'License: ';
  LiesLizenz;
  LabelLizenz.Caption := LizS;
  If Schluessel = 0 then DemoB := true;
  if Schluessel =  0 then
    DatumS := ' '+InttoStr(ATag)+'. '+Inttostr(AMonat)+'. '
              +InttoStr(AJahr) else DatumS := '';
  LabelName.Caption   := NameLiz + DatumS; {Lizenz}
  Ausb := false;
  DatumEnde      := Date;
  DatumAnfang    := EncodeDate(AJahr,AMonat,ATag);
  DatumDifferenz := DatumEnde - DatumAnfang;
  if DatumDifferenz > DemoZeit then
  begin
    if Schluessel <> 2086138754 then
    begin
      KomS[1] := Tx(873); //Die kostenlose Testzeit für Gefüge7 ist abgelaufen.
      KomS[2] := Tx(874); //Wenn Sie das Programm erwerben, bekommen Sie eine
      KomS[3] := Tx(875); //unbegrenzte Lizenz.
      ReihenB := 3;
      Kasten;
      MessageDlg (ZeilenS, MtError, [mbCancel], 0);
      application.terminate;
    end;
  end;
  if DemoB then LabelDemo.Visible := true;
  PanelGrafik.Visible      := false;
  MaskEditLinks.Text       := IntToStr(LeftDiag);
  MaskEditOben.Text        := IntToStr(TopDiag);
  RadioAnordnung.Visible   := false;
  RadioKongruent.Visible   := false;
  RadioUberlappend.Visible := false;
end;

procedure TForm1.ButtonStartClick(Sender: TObject);  {Start}
var
  Weiter : boolean;
begin
  application.ProcessMessages;
  Ausb   := false;
  Weiter := true;
//  Passwortein;
  if Ausb then Form1.Close;
  if UCaseS(LiesHinweisS) = 'YES' then Hinweis (Weiter);
  Form2.Show
end;

procedure TForm1.ButtonzuruckClick(Sender: TObject);
var
  Infos : string;
  Typ   : TMsgDlgType;
begin
  InfoS := Tx(1226);
  Typ := mtConfirmation;
  if DlgMessage (Typ, InfoS, Tx(50),1) = 6 then Form1.Close;
  SetCurrentDir (Directs);
end;

procedure TForm1.Hilfe1Click(Sender: TObject);
var
  DateiS      : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\1Allgemeines.htm');
    Showmessage('Hilfe schließen');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\1Introduction.htm');
    Showmessage('Close help');
  end;
  Helprouter1.free;
end;

procedure TForm1.SpeedHilfeClick(Sender: TObject);
begin
  Hilfe1Click(Sender);
end;

procedure TForm1.DeutschClick(Sender: TObject);
var
  i      : byte;
  Datei  : Textfile;
begin
  SpracheS := 'Deutsch';
  KonfigZeileS[18] := 'Language                   :,Deutsch';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  FormActivate(Sender);
end;

procedure TForm1.SpeedDeutschClick(Sender: TObject);
begin
  DeutschClick(Sender);
end;

procedure TForm1.EnglishClick(Sender: TObject);
var
  i     : byte;
  Datei : Textfile;
begin
  SpracheS := 'English';
  KonfigZeileS[18] := 'Language                   :,English';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  FormActivate(Sender);
end;

procedure TForm1.SpeedEnglishClick(Sender: TObject);
begin
  EnglishClick(Sender)
end;

procedure TForm1.DLageClick(Sender: TObject);
begin
  PanelGrafik.Visible   := true;
  MaskEditLinks.Enabled := true;
  MaskEditLinks.setFocus;
end;

procedure TForm1.AnordnungClick(Sender: TObject);
begin
  RadioAnordnung.Visible   := true;
  RadioKongruent.Visible   := true;
  RadioUberlappend.Visible := true;
end;

procedure TForm1.SpeedULapClick(Sender: TObject);
begin
  AnordnungClick(Sender);
end;


procedure TForm1.RadioKongruentClick(Sender: TObject);
var
  Datei : TextFile;
  i     : word;
begin
  RadioAnordnung.Visible   := false;
  RadioKongruent.Visible   := false;
  RadioUberlappend.Visible := false;
  KonfigZeileS[151] := 'Overlapping                :,'+'0';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
end;

procedure TForm1.RadioUberlappendClick(Sender: TObject);
var
  Datei : TextFile;
  i     : word;
begin
  RadioAnordnung.Visible   := false;
  RadioKongruent.Visible   := false;
  RadioUberlappend.Visible := false;
  KonfigZeileS[151] := 'Overlapping                :,'+'50';
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
end;

procedure TForm1.SpeedLinksobenClick(Sender: TObject);
begin
  DlageClick(Sender);
end;

procedure TForm1.MaskEditLinksKeyPress(Sender: TObject; var Key: Char);
var
  LeftDS : string;
  Datei  : TextFile;
  i      : word;
begin
  if Key = chr(13) then
  begin
    LeftDS := MaskEditLinks.Text;
    LeerLoeschen (LeftDS);
    if LeftDS = '' then exit
    else
    begin
      LeftDiag := StrToInt (LeftDS);
      MaskEditOben.Enabled := true;
      MaskEditOben.SetFocus;
      MaskEditLinks.Enabled := false;
    end;
    KonfigZeileS[150] := 'Left of diagram            :,'+LeftDS;
    assignFile(Datei,FabricS+'\'+'Fabric.ini');
    rewrite (Datei);
    for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
    closefile (Datei);
  end;
end;

procedure TForm1.MaskEditObenKeyPress(Sender: TObject; var Key: Char);
var
  ObenDS  : string;
  Datei   : TextFile;
  i       : word;
begin
  if key = chr(13) then
  begin
    ObenDS := MaskEditOben.Text;
    LeerLoeschen(ObenDS);
    if ObenDS = '' then exit;
    TopDiag := StrToInt(ObenDS);
    MaskEditOben.Enabled := false;
    PanelGrafik.Visible  := false;
    KonfigZeileS[149] := 'Top of diagram             :,'+ObenDS;
    assignFile(Datei,FabricS+'\'+'Fabric.ini');
    rewrite (Datei);
    for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
    closefile (Datei);
    PanelGrafik.Visible := false;
    FormActivate(Sender);
  end;
end;

procedure TForm1.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Allgemeines.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'Introduction.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm1.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm1.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm1.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

end.

