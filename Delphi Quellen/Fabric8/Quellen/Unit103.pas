unit Unit103;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, ComCtrls, Globvar, Texte, Menus, Mask, Einausga,
  Dateien, Basic, Printers, Drucken, ehsHelpRouter, Shellapi, Buttons,
  FileCtrl, Standard;

type
  TForm103 = class(TForm)
    ListBoxDaten: TListBox;
    Panel3: TPanel;
    LabelDaten: TLabel;
    ListBox3: TListBox;
    ListBoxausgewaehlte: TListBox;
    ListBoxDateien: TListBox;
    Panel1: TPanel;
    LabelDateien: TLabel;
    StatusBar: TStatusBar;
    Panel2: TPanel;
    Labelausgewaehlte: TLabel;
    Panel4: TPanel;
    LabelExtension: TLabel;
    LabelLIN: TLabel;
    LabelAnzahl: TLabel;
    Label00000: TLabel;
    Panel6: TPanel;
    ButtonStart: TButton;
    Buttonplotten: TButton;
    ButtonAuswahl: TButton;
    ButtonDurchsuchen: TButton;
    PanelPfad: TPanel;
    LabelPfad: TLabel;
    MaskEditPfad: TMaskEdit;
    MainMenu1: TMainMenu;
    Dspeichern: TMenuItem;
    DLoeschen: TMenuItem;
    Loeschen: TMenuItem;
    Panel5: TPanel;
    Buttonzurueck: TButton;
    Buttonbeenden: TButton;
    LabelDemo: TLabel;
    Drucker: TMenuItem;
    drucken: TMenuItem;
    einrichten: TMenuItem;
    WordDatei: TMenuItem;
    PrinterSetupDialog1: TPrinterSetupDialog;
    SaveDialog1: TSaveDialog;
    Hilfe: TMenuItem;
    Handbuch: TMenuItem;
    Literatur: TMenuItem;
    speichernD: TMenuItem;
    speichernU: TMenuItem;
    Panel7: TPanel;
    SpeedDrucken: TSpeedButton;
    SpeedHilfe: TSpeedButton;
    SpeedHandbuch: TSpeedButton;
    SpeedSpeichern: TSpeedButton;
    SpeedLiteratur: TSpeedButton;
    SpeedWinWord: TSpeedButton;
    SpeedEinrichten: TSpeedButton;
    SpeedLoeschen: TSpeedButton;
    procedure FormShow(Sender: TObject);
    Procedure ShowHint(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ButtonStartClick(Sender: TObject);
    procedure ButtonzurueckClick(Sender: TObject);
    procedure ButtonbeendenClick(Sender: TObject);
    procedure ListBoxDateienClick(Sender: TObject);
    procedure ListBoxausgewaehlteClick(Sender: TObject);
    procedure ButtonAuswahlClick(Sender: TObject);
    procedure ButtonplottenClick(Sender: TObject);
    procedure druckenClick(Sender: TObject);
    procedure LoeschenClick(Sender: TObject);
    procedure einrichtenClick(Sender: TObject);
    procedure WordDateiClick(Sender: TObject);
    procedure HilfeClick(Sender: TObject);
    procedure HandbuchClick(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
    procedure speichernDClick(Sender: TObject);
    procedure speichernUClick(Sender: TObject);
    procedure SpeedSpeichernClick(Sender: TObject);
    procedure SpeedLoeschenClick(Sender: TObject);
    procedure SpeedDruckenClick(Sender: TObject);
    procedure SpeedEinrichtenClick(Sender: TObject);
    procedure SpeedWinWordClick(Sender: TObject);
    procedure SpeedHilfeClick(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure SpeedLiteraturClick(Sender: TObject);
    procedure ButtonDurchsuchenClick(Sender: TObject);
  end;

var
  Form103         : TForm103;
  Loesch          : boolean;
  DiscS           : string;
  ListBoxLoeschen : boolean;
  NameS           : string;

implementation

{$R *.DFM}
uses Unit101, Unit102;

procedure TForm103.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm103.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm103.FormActivate(Sender: TObject);
begin
  Left   := LeftDiag + ULap;
  Top    := TopDiag + ULap;
  Width  := WidForm;
  Height := HeiForm;
  setlength (Xschn, MaxDaten);
  setlength (yschn, MaxDaten);
  Form103.Caption           := Tx(1746);
  LabelDemo.Visible         := false;
  if DemoB then
    LabelDemo.Visible       := true;
  SpeedSpeichern.Hint       := Hilf(204);
  SpeedLoeschen.Hint        := Hilf(713);
  SpeedDrucken.Hint         := Hilf(203);
  SpeedEinrichten.Hint      := Hilf(505);
  SpeedWinword.Hint         := Hilf(470);
  SpeedHilfe.Hint           := Hilf(210);
  SpeedHandbuch.Hint        := Hilf(274);
  SpeedLiteratur.Hint       := Hilf(462);
  LabelDaten.Caption        := Tx(183);
  Labelausgewaehlte.Caption := Tx(136);
  LabelDateien.Caption      := Tx(137);
  LabelAnzahl.Caption       := Tx(222);
  Label00000.Caption        := '';
  LabelPfad.Caption         := Tx(1003);
  ButtonAuswahl.Caption     := Tx(248);
  ButtonPlotten.Caption     := Tx(241);
  ButtonDurchsuchen.Caption := Tx(1004);
  ButtonZurueck.Caption     := Tx(30);
  ButtonBeenden.Caption     := Tx(53);
  Dspeichern.Caption        := Tx(86);
  speichernD.Caption        := Tx(87);
  speichernU.Caption        := Tx(88);
  Dloeschen.Caption         := Tx(1659);
  Loeschen.Caption          := Tx(1660);
  Drucker.Caption           := Tx(92);
  drucken.Caption           := Tx(93);
  einrichten.Caption        := Tx(94);
  WordDatei.Caption         := Tx(1207);
  Handbuch.Caption          := Tx(1055);
  Literatur.Caption         := Tx(1183);
  LabelLin.Caption          := ExtenS;
  Dspeichern.Enabled        := false;
  Dloeschen.Enabled         := false;
  Drucker.Enabled           := false;
  Loesch                    := false;
end;

procedure TForm103.ButtonStartClick(Sender: TObject);
var
  Dzahl      : word;
  DatNameS   : array[0..1000] of string;
  i          : word;
  DNameS     : string[80];
  DatS       : string;
begin
  Loesch                := false;
  ButtonAuswahl.Enabled := false;
  Dloeschen.Enabled     := true;
//  SpeedLoeschen.Enabled := true;
  ButtonDurchsuchen.Enabled := true;
  MaskEditPfad.Text := PfadS;
  ListBoxDateien.Clear;
  ListBoxausgewaehlte.Clear;
  ListBoxDaten.Clear;
  LabelDateien.Enabled        := true;
  Labelausgewaehlte.Enabled   := true;
  LabelDaten.Enabled          := true;
  LabelPfad.Enabled           := true;
  LabelExtension.Enabled      := true;
  LabelLIN.Caption            := '';
  Label00000.Caption          := '';
  ListboxDateien.Enabled      := true;
  Listboxausgewaehlte.Enabled := true;
  ListboxDaten.Enabled        := true;
  Buttonzurueck.Enabled       := true;
  Buttonbeenden.Enabled       := true;
  ButtonAuswahl.Enabled       := false;
  Buttonplotten.Enabled       := false;
  LabelAnzahl.Visible         := false;
  ButtonDurchsuchen.Enabled := true;
  Laufwerk(DatS,EingabeS, DiscS);
  ListBoxLoeschen := false;
  Datsuch (Dzahl, DiscS, ExtenS, DatNameS, ListBoxLoeschen);
  LabelLIN.Caption      := ExtenS;
  if not ListBoxLoeschen then
  begin
    for i := 1 to Dzahl do
    begin
      DNameS := LeftS (DatNameS[i], length(DatNameS[i])- 4);
      ListboxDateien.Items.Add (DNameS);
    end;
  end;
end;

procedure TForm103.ButtonzurueckClick(Sender: TObject);
begin
  Xschn := Nil;
  Yschn := Nil;
  ListBoxDateien.Clear;
  ListBoxausgewaehlte.Clear;
  ListBoxDaten.Clear;
  Form103.Close;
  ChDir (DirectS);
end;

procedure TForm103.ButtonbeendenClick(Sender: TObject);
begin
  Xschn := Nil;
  Yschn := Nil;
  ListBoxDateien.Clear;
  ListBoxausgewaehlte.Clear;
  ListBoxDaten.Clear;
  ChDir (DirectS);
  SetCurrentDir(DirectS);
  Form103.Close;
  Form101.Close;
end;

procedure TForm103.ListBoxDateienClick(Sender: TObject);
var
  i       : word;
  Datei   : TextFile;
  Typ     : TMsgDlgType;
  InfoS   : string;
  LoeschS : string;
begin
  if not Loesch then
  begin
    ButtonAuswahl.Enabled := true;
    for i := 0 to ListboxDateien.Items.Count-1 do
    begin
      if ListboxDateien.Selected[i] then
      begin
        Listboxausgewaehlte.Items.Add (ListboxDateien.Items.Strings[i]);
        ListboxDateien.Items.Delete(i);
        break;
      end;
    end;
  end
  else
  begin
    for i := 0 to ListboxDateien.Items.Count-1 do
    begin
      if ListboxDateien.Selected[i] then
      begin
        LoeschS := ListBoxDateien.Items.Strings[i];
        LoeschS := DiscS+LoeschS+'.'+ExtenS;
        break;
      end;
    end;
    Typ    := mtInformation;
    InfoS  := Tx(1226);
    if Dlgmessage(Typ, InfoS, Tx(1656)+'  '+LoeschS+'  '+Tx(1657),1) = 6 then
    begin
      ListboxDateien.Items.Delete(i);
      assignFile (Datei,LoeschS);
      reset(Datei);
      CloseFile(Datei);
      Erase(Datei);
      Showmessage(LoeschS+' '+Tx(1658));
    end;
  end;
  Loesch := false;
end;

procedure TForm103.ListBoxausgewaehlteClick(Sender: TObject);
var
  i : word;
begin
  for i := 0 to Listboxausgewaehlte.Items.Count-1 do
  begin
    if Listboxausgewaehlte.Selected[i] then
    begin
      ListboxDateien.Items.Add (Listboxausgewaehlte.Items.Strings[i]);
      Listboxausgewaehlte.Items.Delete(i);
      break;
    end;
  end;
end;

procedure TForm103.ButtonAuswahlClick(Sender: TObject);
var
  j          : byte;
  i          : word;
  DatXS      : string;
  DatYS      : string;
  ZeileS     : string[20];
begin
  Dspeichern.Enabled          := true;
  Dloeschen.Enabled           := true;
  Drucker.Enabled             := true;
  Buttonplotten.Enabled       := true;
  Drucker.Enabled             := true;
  ListboxDateien.Enabled      := false;
  Listboxausgewaehlte.Enabled := false;
  ButtonDurchsuchen.Enabled   := false;
//  SpeedDrucken.Enabled        := true;
//  SpeedSpeichern.Enabled      := true;
//  SpeedWinWord.Enabled        := true;
  LabelAnzahl.Visible         := true;
//  SpeedEinrichten.Enabled     := true;
  DateiZahl := ListBoxausgewaehlte.Items.Count-1;
  for j := 0 to DateiZahl do
  begin
    NameS := Listboxausgewaehlte.Items.Strings[j]+ '.' + ExtenS;
    AusB := false;
    Testpfad (DiscS);
    LiesPunkte (j, NameS, DiscS, ZahlGlob, Xschn, Yschn);
    if AusB then       {zurück}
    begin
      ListBoxDateien.Clear;
      ListBoxausgewaehlte.Clear;
      ListBoxDaten.Clear;
      LabelLIN.Caption := '';
      Form103.Close;
    end;
    DateiNameS[j]     := NameS;
  end;
  Label00000.Caption := RightS('     '+IntToStr(ZahlGlob),5);
  for i := 1 to ZahlGlob do
  begin
    DatXS  := IntToStr (Xschn[i]);
    DatXS  := RightS ('0000' + DatXS, 4);
    DatYS  := IntToStr (Yschn[i]);
    DatYS  := RightS ('0000' + DatYS, 4);
    ZeileS := '   '+DatXS+'   '+DatYS;
    ListBoxDaten.Items.Add (ZeileS);
  end;
  ButtonAuswahl.Enabled  := false;
end;

procedure TForm103.ButtonDurchsuchenClick(Sender: TObject);
const
  Verz = 1000;
var
  NeuerPfadS : string;
  Datei      : TextFile;
  i          : integer;
begin
  NeuerPfadS := Tx(1002);
  if not DirectoryExists (PfadS) then PfadS := DirectS;
  if SelectDirectory (PfadS, [sdAllowCreate, sdPerformCreate,
          sdPrompt], Verz)
          then MessageDlg(NeuerPfadS+' '+PfadS, mtInformation,
            [mbOK], 0);
  Kompress (PfadS);
  if (RightS (PfadS, 1) <> ':') and (RightS(PfadS, 1) <> '\')
     then PfadS := PfadS + '\';
  if SetCurrentDir (DirectS) then getDir (0, DirectS);
  KonfigZeileS[14] := PfadS;
  assignFile(Datei,FabricS+'\'+'Fabric.ini');
  rewrite (Datei);
  for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
  closefile (Datei);
  ButtonStartClick(Sender);
end;

procedure TForm103.ButtonplottenClick(Sender: TObject);
begin
  WellmanDatei := true;
  Form102.Show;
end;

procedure TForm103.speichernDClick(Sender: TObject);
begin
  if CurrentFile <> '' then PunkteSpeichern(CurrentFile,ZahlGlob,
     Xschn,Yschn)
   else speichernUClick(Sender);
end;

procedure TForm103.SpeedSpeichernClick(Sender: TObject);
begin
  speichernDClick(Sender);
end;

procedure TForm103.speichernUClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := ExtenS;
  if UCaseS(ExtenS) = 'WEL' then
    SaveDialog1.Filter := 'Wellman method (*.wel)|*.WEL';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    PunkteSpeichern (CurrentFile, ZahlGlob, Xschn, Yschn);
  end;
end;

procedure TForm103.druckenClick(Sender: TObject);
begin
  TitelWel (DateiZahl, DateiNameS, Xschn, Yschn, ZahlGlob);
end;

procedure TForm103.SpeedDruckenClick(Sender: TObject);
begin
  druckenClick(Sender)
end;

procedure TForm103.LoeschenClick(Sender: TObject);
begin
  Loesch := true;
  showmessage(Tx(1719)+chr(10)+chr(13)+Tx(1720));
end;

procedure TForm103.SpeedLoeschenClick(Sender: TObject);
begin
  LoeschenClick(Sender);
end;

procedure TForm103.einrichtenClick(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TForm103.SpeedEinrichtenClick(Sender: TObject);
begin
  einrichtenClick(Sender);
end;

procedure TForm103.WordDateiClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := 'rtf';
  SaveDialog1.Filter     := 'rtf';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    WinDatWel(DateiZahl, CurrentFile, DateiNameS,
             Xschn, Yschn, ZahlGlob);
  end;
end;

procedure TForm103.SpeedWinWordClick(Sender: TObject);
begin
  WordDateiClick(Sender);
end;

procedure TForm103.HilfeClick(Sender: TObject);
var
  DateiS      : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\102Wellman.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\102Wellman.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm103.SpeedHilfeClick(Sender: TObject);
begin
  HilfeClick(Sender);
end;

procedure TForm103.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Wellman-Methode.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'Wellman_Method.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm103.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm103.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm103.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

end.
