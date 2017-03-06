unit Unit89;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, Menus, StdCtrls, ExtCtrls, Globvar, Dateien, Basic, Einausga, Drucken,
  Printers, Texte, ComCtrls, Buttons, Shellapi, FileCtrl,
  Standard, Mask, ehsHelpRouter;

type
  TForm89 = class(TForm)
    Panel3: TPanel;
    ListBox3: TListBox;
    Panel2: TPanel;
    Labelausgewaehlte: TLabel;
    Panel1: TPanel;
    LabelDateien: TLabel;
    ListBoxDaten: TListBox;
    ListBoxausgewaehlte: TListBox;
    ListBoxDateien: TListBox;
    StatusBar: TStatusBar;
    LabelDaten: TLabel;
    Panel5: TPanel;
    Buttonzurueck: TButton;
    Buttonbeenden: TButton;
    LabelDemo: TLabel;
    ButtonPfadsuchen: TButton;
    Panel6: TPanel;
    ButtonStart: TButton;
    Buttonplotten: TButton;
    ButtonAuswahl: TButton;
    Panel4: TPanel;
    LabelPfad: TLabel;
    MaskEditPfad: TMaskEdit;
    Panel7: TPanel;
    LabelExtension: TLabel;
    LabelLIN: TLabel;
    LabelAnzahl: TLabel;
    Label00000: TLabel;
    Panel8: TPanel;
    MainMenu1: TMainMenu;
    Dspeichern: TMenuItem;
    speichern: TMenuItem;
    speichernU: TMenuItem;
    SaveDialog1: TSaveDialog;
    Drucker: TMenuItem;
    einrichten: TMenuItem;
    drucken: TMenuItem;
    RtfDatei: TMenuItem;
    PrinterSetupDialog1: TPrinterSetupDialog;
    SpeedSpeichern: TSpeedButton;
    SpeedDrucken: TSpeedButton;
    SpeedEinrichten: TSpeedButton;
    SpeedWinWord: TSpeedButton;
    SpeedHilfe: TSpeedButton;
    SpeedHandbuch: TSpeedButton;
    SpeedLiteratur: TSpeedButton;
    Hilfe: TMenuItem;
    Handbuch: TMenuItem;
    Literatur: TMenuItem;
    Dloeschen: TMenuItem;
    loeschen: TMenuItem;
    SpeedLoeschen: TSpeedButton;

    procedure FormShow(Sender: TObject);
    procedure ShowHint(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ButtonzurueckClick(Sender: TObject);
    procedure ButtonbeendenClick(Sender: TObject);
    procedure ListBoxDateienClick(Sender: TObject);
    procedure ButtonPfadsuchenClick(Sender: TObject);
    procedure ButtonStartClick(Sender: TObject);
    procedure ButtonAuswahlClick(Sender: TObject);
    procedure ButtonplottenClick(Sender: TObject);
    procedure speichernClick(Sender: TObject);
    procedure speichernUClick(Sender: TObject);
    procedure einrichtenClick(Sender: TObject);
    procedure druckenClick(Sender: TObject);
    procedure RtfDateiClick(Sender: TObject);
    procedure SpeedSpeichernClick(Sender: TObject);
    procedure SpeedEinrichtenClick(Sender: TObject);
    procedure SpeedDruckenClick(Sender: TObject);
    procedure SpeedWinWordClick(Sender: TObject);
    procedure HilfeClick(Sender: TObject);
    procedure HandbuchClick(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
    procedure SpeedHilfeClick(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure SpeedLiteraturClick(Sender: TObject);
    procedure loeschenClick(Sender: TObject);
    procedure SpeedLoeschenClick(Sender: TObject);
  end;

var
  Form89          : TForm89;
  DiscS           : string;
  ListBoxLoeschen : Boolean;
  NameS           : string;
  Loesch          : boolean;
implementation
uses Unit12, Unit13;
{$R *.DFM}

procedure TForm89.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm89.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm89.FormActivate(Sender: TObject);
begin
  Left   := LeftDiag + ULap;
  Top    := TopDiag + ULap;
  Width  := WidForm;
  Height := HeiForm;
  LabelDemo.Visible               := false;
  if DemoB then LabelDemo.Visible := true;
  Form89.Caption            := Tx(1488);
  setlength (AziFeld, MaxDaten);
  setlength (FalFeld, MaxDaten);
  setlength (WinkelFeld, MaxDaten);
  SpeedDrucken.Hint         := Hilf(203);
  SpeedSpeichern.Hint       := Hilf(204);
  SpeedEinrichten.Hint      := Hilf(505);
  SpeedWinword.Hint         := Hilf(470);
  SpeedHilfe.Hint           := Hilf(210);
  SpeedHandbuch.Hint        := Hilf(274);
  SpeedLiteratur.Hint       := Hilf(462);
  SpeedLoeschen.Hint        := Hilf(713);
  Dspeichern.Caption        := Tx(86);
  speichern.Caption         := Tx(87);
  speichernU.Caption        := Tx(88);
  Drucker.Caption           := Tx(92);
  einrichten.Caption        := Tx(94);
  drucken.Caption           := Tx(93);
  RtfDatei.Caption          := Tx(1207);
  Hilfe.Caption             := Tx(162)+' (F1)';
  Handbuch.Caption          := Tx(1055)+' (F2)';
  Literatur.Caption         := Tx(1183)+' (F5)';
  LabelDaten.Caption        := Tx(183);
  Labelausgewaehlte.Caption := Tx(136);
  LabelDateien.Caption      := Tx(137);
  ButtonAuswahl.Caption     := Tx(248);
  ButtonPlotten.Caption     := Tx(241);
  LabelAnzahl.Caption       := Tx(222);
  ButtonPfadsuchen.Caption  := Tx(1004);
  Buttonzurueck.Caption     := Tx(30);
  Buttonbeenden.Caption     := Tx(53);
  LabelPfad.Caption         := Tx(1003);
  Dspeichern.Enabled        := false;
  Drucker.Enabled           := false;
  SpeedDrucken.Enabled      := false;
  SpeedSpeichern.Enabled    := false;
  SpeedEinrichten.Enabled   := false;
  SpeedWinword.Enabled      := false;
  Loesch                    := false;
  LabelAnzahl.Visible       := false;
  Label00000.Caption        := '';
  DLoeschen.Caption         := Tx(1659);
  Loeschen.Caption          := Tx(1660);
  Dloeschen.Enabled         := false;
  SpeedLoeschen.Enabled     := false;
end;

procedure TForm89.ButtonzurueckClick(Sender: TObject);
begin
  AziFeld    := nil;
  FalFeld    := nil;
  WinkelFeld := nil;
  ListBoxDateien.Clear;
  ListBoxausgewaehlte.Clear;
  ListBoxDaten.Clear;
  Form89.Close;
  ChDir (DirectS);
end;

procedure TForm89.ButtonbeendenClick(Sender: TObject);
begin
  AziFeld    := nil;
  FalFeld    := nil;
  WinkelFeld := nil;
  ListBoxDateien.Clear;
  ListBoxausgewaehlte.Clear;
  ListBoxDaten.Clear;
  ChDir (DirectS);
  SetCurrentDir(DirectS);
  Form89.Close;
  Form13.Close;
end;

procedure TForm89.ListBoxDateienClick(Sender: TObject);
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

procedure TForm89.ButtonPfadsuchenClick(Sender: TObject);
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

procedure TForm89.ButtonStartClick(Sender: TObject);
var
  Dzahl      : word;
  DatNameS   : array[0..1000] of string;
  i          : word;
  DNameS     : string[80];
  DatS       : string;
begin
  Loesch                   := false;
  ButtonAuswahl.Enabled    := false;
  Dloeschen.Enabled        := true;
  SpeedLoeschen.Enabled    := true;
  ButtonPfadsuchen.Enabled := true;
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
  ExtenS                      := 'SCI';
  ButtonPfadsuchen.Enabled := true;
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

procedure TForm89.ButtonAuswahlClick(Sender: TObject);
var
  j          : byte;
  i          : word;
  DatAzimutS : string[3];
  DatFallS   : string[2];
  ZeileS     : string[20];
  WinkelS    : string[2];
begin
  Buttonplotten.Enabled       := true;
  Drucker.Enabled             := true;
  DSpeichern.Enabled          := true;
  ListboxDateien.Enabled      := false;
  Listboxausgewaehlte.Enabled := false;
  ButtonPfadsuchen.Enabled    := false;
  SpeedDrucken.Enabled        := true;
  SpeedSpeichern.Enabled      := true;
  SpeedWinWord.Enabled        := true;
  LabelAnzahl.Visible         := true;
  SpeedEinrichten.Enabled     := true;
  DateiZahl := ListBoxausgewaehlte.Items.Count-1;
  for j := 0 to DateiZahl do
  begin
    NameS := Listboxausgewaehlte.Items.Strings[j]+ '.' + ExtenS;
    AusB := false;
    Testpfad (DiscS);
    LiesKreis (j, NameS, DiscS, ZahlGlob, AziFeld, FalFeld, WinkelFeld);
    if AusB then       {zurück}
    begin
      ListBoxDateien.Clear;
      ListBoxausgewaehlte.Clear;
      ListBoxDaten.Clear;
      LabelLIN.Caption := '';
      Form89.Close;
    end;
    DateiNameS[j]     := NameS;
  end;
  Label00000.Caption := RightS('     '+IntToStr(ZahlGlob),5);
  for i := 1 to ZahlGlob do
  begin
    DatAzimutS := IntToStr (AziFeld[i]);
    DatAzimutS := RightS ('000' + DatAzimutS, 3);
    DatFallS   := IntToStr (FalFeld[i]);
    DatFallS   := RightS ('00' + DatFallS, 2);
    WinkelS    := IntToStr(WinkelFeld[i]);
    WinkelS    := RightS('00'+ WinkelS,2);
    ZeileS := '    '+DatAzimutS+'/'+DatFallS+';'+WinkelS;
    ListBoxDaten.Items.Add (ZeileS);
  end;
  ButtonAuswahl.Enabled  := false;
end;

procedure TForm89.ButtonplottenClick(Sender: TObject);
begin
  Form12.Show;
end;

procedure TForm89.speichernClick(Sender: TObject);
begin
  if CurrentFile <> '' then
    SchreibKreis (CurrentFile, ZahlGlob, AziFeld, FalFeld, WinkelFeld)
  else speichernUClick(Sender);
end;

procedure TForm89.SpeedSpeichernClick(Sender: TObject);
begin
  speichernClick(Sender);
end;

procedure TForm89.speichernUClick(Sender: TObject);
begin
  Erweiterung (ExtenS);
  SaveDialog1.DefaultExt := ExtenS;
  SaveDialog1.Filter := 'Small circles (*.sci)|*.SCI';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    SchreibKreis (CurrentFile, ZahlGlob, AziFeld, FalFeld, WinkelFeld);
  end;
end;

procedure TForm89.loeschenClick(Sender: TObject);
begin
  Loesch := true;
  showmessage(Tx(1719)+chr(10)+chr(13)+Tx(1720));   
end;

procedure TForm89.SpeedLoeschenClick(Sender: TObject);
begin
  LoeschenClick(Sender);
end;

procedure TForm89.einrichtenClick(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TForm89.SpeedEinrichtenClick(Sender: TObject);
begin
  einrichtenClick(Sender);
end;

procedure TForm89.druckenClick(Sender: TObject);
begin
  Datnam (DateiNameS[0], ExtenS);
  DruckKreise (0, DateiNameS, AziFeld, FalFeld, WinkelFeld, ZahlGlob);
end;

procedure TForm89.SpeedDruckenClick(Sender: TObject);
begin
  druckenClick(Sender);
end;

procedure TForm89.RtfDateiClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := 'rtf';
  SaveDialog1.Filter     := 'rtf';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    WinKreise (DateiZahl, CurrentFile, DateinameS, AziFeld, FalFeld,
               WinkelFeld, ZahlGlob)
  end;
end;

procedure TForm89.SpeedWinWordClick(Sender: TObject);
begin
  RtfDateiClick(Sender);
end;

procedure TForm89.HilfeClick(Sender: TObject);
const
  Anfang = 111;
var
  DateiS      : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\11PlotPunkte-dis.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\11PlotPoints-dis.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm89.SpeedHilfeClick(Sender: TObject);
begin
  HilfeClick(Sender);
end;

procedure TForm89.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Kleinkreise.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'Small_Circles.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm89.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm89.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm89.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

end.
