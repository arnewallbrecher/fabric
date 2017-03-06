unit Unit1;

interface

uses
  {Windows,} Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, Menus, ExtCtrls, StdCtrls, ComCtrls,
  Haupt, Texte, Liesconf, Globvar, Basic, Standard, Buttons,
  ehsHelpRouter;

type
  TForm1 = class(TForm)
    Panel1           : TPanel;
    LabelPaket       : TLabel;
    LabelDarstellung : TLabel;
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
  end;

var
  Form1: TForm1;

implementation
uses unit2, shellapi, windows;
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
  Left   := 115;
  Top    := 80;
  Height := 620;
  Width  := 800;
  LiesConfig; {Konfigurationsdatei lesen und bei Fehler abbrechen}
  DemoB                := false;
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
//  Ausb := false;
  if Ausb then exit;
  SpracheS := UcaseS (SpracheS);
  LabelPaket.Caption       := Tx(2);         {Ein Programm-Paket};
  LabelDarstellung.Caption := Tx(3);         {zur Darstellung};
  LabelAnalyse.Caption     := Tx(4);         {und Analyse};
  LabelDaten.Caption       := Tx(5);         {tektonischer Daten};
  Hilfe1.Caption           := Tx(162)+' (F1)';
  Sprache.Caption          := Tx(848); {Sprache}
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
end;

procedure TForm1.ButtonStartClick(Sender: TObject);  {Start}
var
  Weiter : boolean;
begin
  application.ProcessMessages;
  Ausb   := false;
  Weiter := true;
  Passwortein;
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
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\fabh8pnp.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\Introduction.htm');
  end;
  HelpRouter1.free;
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
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
  assignFile(Datei,DirectS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  FormActivate(Sender);
end;

procedure TForm1.SpeedEnglishClick(Sender: TObject);
begin
  EnglishClick(Sender)
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

