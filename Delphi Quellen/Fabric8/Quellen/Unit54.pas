unit Unit54;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Menus, Globvar, Einausga, Dateien, Basic, Drucken,
  Texte, ComCtrls, Buttons, Shellapi, FileCtrl, Standard, Mask,
  ehsHelpRouter;

type
  TForm54 = class(TForm)
    Panel1       : TPanel;
    LabelDaten   : TLabel;
    LabelT0      : TLabel;
    Labela2      : TLabel;
    ListBoxDaten : TListBox;

    Panel2             : TPanel;
    ListBoxausgewaehlt : TListBox;
    Labelausgewaehlte  : TLabel;

    Panel3          : TPanel;
    ListBoxDateien  : TListBox;
    LabelDateien    : TLabel;

    Panel4        : TPanel;
    Buttonzurueck : TButton;
    Buttonbeenden : TButton;

    Panel5        : TPanel;
    ButtonStart   : TButton;
    ButtonAuswahl: TButton;
    Buttonplotten : TButton;

    Panel6         : TPanel;
    LabelExtension : TLabel;
    LabelTAL       : TLabel;
    LabelAnzahl    : TLabel;
    Label00000     : TLabel;

    MainMenu1 : TMainMenu;

    Drucker1            : TMenuItem;
    Druckereinrichten1  : TMenuItem;
    drucken1            : TMenuItem;
    PrintDialog1        : TPrintDialog;
    PrinterSetupDialog1 : TPrinterSetupDialog;

    Hilfe1 : TMenuItem;

    StatusBar : TStatusBar;

    Panel7       : TPanel;
    SpeedDrucken : TSpeedButton;
    SpeedHilfe   : TSpeedButton;
    PanelPfad: TPanel;
    LabelPfad: TLabel;
    ButtonDurchsuchen: TButton;
    Handbuch: TMenuItem;
    SaveDialog1: TSaveDialog;
    DatenSpeichern: TMenuItem;
    speichernD: TMenuItem;
    speichernDUnter: TMenuItem;
    LabelDemo: TLabel;
    SpeedHandbuch: TSpeedButton;
    SpeedSpeichern: TSpeedButton;
    Literatur: TMenuItem;
    SpeedLiteratur: TSpeedButton;
    WinWord: TMenuItem;
    SpeedWinWord: TSpeedButton;
    MaskEditPfad: TMaskEdit;
    SpeedEinrichten: TSpeedButton;
    Dloeschen: TMenuItem;
    loeschen: TMenuItem;
    SpeedLoeschen: TSpeedButton;

    procedure ButtonbeendenClick(Sender: TObject);
    procedure ButtonzurueckClick(Sender: TObject);
    procedure ButtonplottenClick(Sender: TObject);
    procedure ButtonStartClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ListBoxausgewaehltClick(Sender: TObject);
    procedure ListBoxDateienClick(Sender: TObject);
    procedure Druckereinrichten1Click(Sender: TObject);
    procedure drucken1Click(Sender: TObject);
    procedure Hilfe1Click(Sender: TObject);
    procedure ButtonAuswahlClick(Sender: TObject);
    procedure ShowHint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedDruckenClick(Sender: TObject);
    procedure SpeedHilfeClick(Sender: TObject);
    procedure ButtonDurchsuchenClick(Sender: TObject);
    procedure HandbuchClick(Sender: TObject);
    procedure speichernDClick(Sender: TObject);
    procedure speichernDUnterClick(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure SpeedSpeichernClick(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
    procedure SpeedLiteraturClick(Sender: TObject);
    procedure WinWordClick(Sender: TObject);
    procedure SpeedWinWordClick(Sender: TObject);
    procedure SpeedEinrichtenClick(Sender: TObject);
    procedure loeschenClick(Sender: TObject);
    procedure SpeedLoeschenClick(Sender: TObject);
  end;

var
  Form54          : TForm54;
  DiscS           : string;
  DatS            : string;
  NameS           : string;
  ListBoxLoeschen : Boolean;
  Loesch          : boolean;

implementation
uses Unit52, Unit55;
{$R *.DFM}

procedure TForm54.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm54.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm54.FormActivate(Sender: TObject);
begin
  Left   := LeftDiag + ULap;
  Top    := TopDiag + ULap;
  Width  := WidForm;
  Height := HeiForm;
  setlength (T0, MaxDaten);
  setlength (T1Strich, MaxDaten);
  setlength (T2Strich, MaxDaten);
  setlength (T3Strich, MaxDaten);
  setlength (T4Strich, MaxDaten);
  setlength (T5Strich, MaxDaten);
  setlength (T6Strich, MaxDaten);
  setlength (T7Strich, MaxDaten);
  setlength (T8Strich, MaxDaten);
  setlength (T9Strich, MaxDaten);
  setlength (IsogonenZahl, MaxDaten);
  LabelDemo.Visible                := false;
  if DemoB then LabelDemo.Visible  := true;
  Form54.Caption             := Tx(791);   {Fabric7: T'alpha/Alpha-Methode,}
  ListBoxDaten.Hint        := Hilf(54);
  Panel1.Hint              := Hilf(54);
  ListBoxausgewaehlt.Hint  := Hilf(32);
  Panel2.Hint              := Hilf(32);
  ListBoxDateien.Hint      := Hilf(33);
  Panel3.Hint              := Hilf(33);
  LabelPfad.Hint           := Hilf(34);
  LabelExtension.Hint      := Hilf(35);
  LabelTAL.Hint            := Hilf(35);
  LabelAnzahl.Hint         := Hilf(36);
  ButtonStart.Hint         := Hilf(296);
  ButtonAuswahl.Hint       := Hilf(55);
  Buttonplotten.Hint       := Hilf(51);
  Buttonzurueck.Hint       := Hilf(52);
  Buttonbeenden.Hint       := Hilf(30);
  ButtonDurchsuchen.Hint   := Hilf(275);
  SpeedSpeichern.Hint      := Hilf(204);
  SpeedDrucken.Hint        := Hilf(203);
  SpeedHilfe.Hint          := Hilf(210);
  SpeedHandbuch.Hint       := Hilf(274);
  SpeedEinrichten.Hint     := Hilf(505);
  SpeedLoeschen.Hint       := Hilf(713);
  DatenSpeichern.Caption     := Tx(86);
  speichernD.Caption         := Tx(87);
  SpeichernDUnter.Caption    := Tx(88);
  Drucker1.Caption           := Tx(92);
  drucken1.Caption           := Tx(93);
  DruckerEinrichten1.Caption := Tx(94);
  Hilfe1.Caption             := Tx(162)+' (F1)';
  LabelDaten.Caption         := Tx(183);   {Daten:}
  LabelT0.Caption            := Tx(789);   {To    Isogone     T /T0}
  Labelausgewaehlte.Caption  := Tx(136);
  LabelDateien.Caption       := Tx(137);
  LabelAnzahl.Caption        := Tx(222);
  ButtonAuswahl.Caption      := Tx(248);
  Buttonplotten.Caption      := Tx(241);
  Buttonzurueck.Caption      := Tx(30);
  Buttonbeenden.Caption      := Tx(53);
  LabelDaten.Enabled         := false;
  LabelT0.Enabled            := false;
  Labela2.Enabled            := false;
  Labelausgewaehlte.Enabled  := false;
  LabelDateien.Enabled       := false;
  LabelPfad.Enabled          := false;
  LabelExtension.Enabled     := false;
  LabelTAL.Caption           := '';
  LabelAnzahl.Enabled        := false;
  Label00000.Caption         := '';
  ListboxDaten.Enabled       := false;
  Listboxausgewaehlt.Enabled := false;
  ListboxDateien.Enabled     := false;
  ButtonAuswahl.Enabled      := false;
  Buttonplotten.Enabled      := false;
  Drucker1.Enabled           := false;
  Buttonzurueck.Enabled      := false;
  Buttonbeenden.Enabled      := false;
  LabelPfad.Caption          := Tx(1003);
  ButtonDurchsuchen.Caption  := Tx(1004);
  ButtonDurchsuchen.Enabled  := false;
  Handbuch.Caption           := Tx(1055)+' (F2)';
  Literatur.Caption          := Tx(1183)+' (F5)';
  SpeedLiteratur.Hint        := Hilf(462);
  ExtenS                     := 'TAL';
  SpeedSpeichern.Enabled     := false;
  SpeedDrucken.Enabled       := false;
  WinWord.Caption            := Tx(1207);
  SpeedWinWord.Hint          := Hilf(470);
  SpeedWinWord.Enabled       := false;
  SpeedEinrichten.Enabled    := false;
  Loesch                     := false;
  DLoeschen.Caption          := Tx(1659);
  Loeschen.Caption           := Tx(1660);
  Dloeschen.Enabled          := false;
  SpeedLoeschen.Enabled      := false;
end;

procedure TForm54.ButtonStartClick(Sender: TObject);
var
  i        : word;
  DNameS   : string[80];
begin
  Loesch                := false;
  ButtonAuswahl.Enabled := false;
  Dloeschen.Enabled     := true;
  SpeedLoeschen.Enabled := true;  
  ExtenS := 'TAL';
  ListBoxDaten.Clear;
  ListBoxausgewaehlt.Clear;
  ListBoxDateien.Clear;
  ButtonZurueck.Enabled      := true;
  Buttonbeenden.Enabled      := true;
  LabelDaten.Enabled         := true;
  LabelT0.Enabled            := true;
  Labela2.Enabled            := true;
  Label00000.Caption         := '';
  Labelausgewaehlte.Enabled  := true;
  LabelDateien.Enabled       := true;
  LabelPfad.Enabled          := true;
  MaskEditPfad.Text          := PfadS;
  LabelExtension.Enabled     := true;
  LabelAnzahl.Enabled        := true;
  ListboxDaten.Enabled       := true;
  Listboxausgewaehlt.Enabled := true;
  ListboxDateien.Enabled     := true;
  ButtonDurchsuchen.Enabled  := true;
  Laufwerk(DatS,EingabeS, DiscS);
  ListBoxLoeschen := false;
  Datsuch (DateiZahl, DiscS, ExtenS, DateiNameS, ListBoxLoeschen);
  MaskEditPfad.Text := DiscS;
  LabelTAL.Caption  := ExtenS;
  if not ListBoxLoeschen then
  begin
    for i := 1 to DateiZahl do
    begin
      DNameS := LeftS (DateiNameS[i], length(DateiNameS[i])- 4);
      ListboxDateien.Items.Add (DNameS);
    end;
  end;  
end;

procedure TForm54.ButtonbeendenClick(Sender: TObject);
begin
  T0       := Nil;
  T1Strich := Nil;
  T2Strich := Nil;
  T3Strich := Nil;
  T4Strich := Nil;
  T5Strich := Nil;
  T6Strich := Nil;
  T7Strich := Nil;
  T8Strich := Nil;
  T9Strich := Nil;
  Form54.Close;
  Form52.Close;
  SetCurrentDir(DirectS);
end;

procedure TForm54.ButtonzurueckClick(Sender: TObject);
begin
  T0       := Nil;
  T1Strich := Nil;
  T2Strich := Nil;
  T3Strich := Nil;
  T4Strich := Nil;
  T5Strich := Nil;
  T6Strich := Nil;
  T7Strich := Nil;
  T8Strich := Nil;
  T9Strich := Nil;
  Form54.Close;
end;

procedure TForm54.ButtonAuswahlClick(Sender: TObject);
  var
  j, i, N : word;
  Zeile0S : string[50];
  ZeileS  : string[50];
  TS      : array[0..9] of string[4];
  T0S     : string[4];
begin
  Drucker1.Enabled           := true;
  Buttonplotten.Enabled      := true;
  Drucker1.Enabled           := true;
  SpeedSpeichern.Enabled     := true;
  SpeedDrucken.Enabled       := true;
  SpeedWinWord.Enabled       := true;
  SpeedEinrichten.Enabled    := true;
  ListboxDateien.Enabled     := false;
  Listboxausgewaehlt.Enabled := false;
  DateiZahl := ListBoxausgewaehlt.Items.Count-1;
  N := 0;
  for j := 0 to DateiZahl do
  begin
    NameS := Listboxausgewaehlt.Items.Strings[j]+ '.' + ExtenS;
    AusB := false;
    Tallies (DiscS, NameS, N,T0,T1Strich,T2Strich,T3Strich,
             T4Strich,T5Strich,T6Strich,T7Strich,T8Strich,
             T9Strich);
    ZahlGlob := N;
    if AusB then       {zurück}
    begin
      ListBoxDateien.Clear;
      ListBoxausgewaehlt.Clear;
      ListBoxDaten.Clear;
      LabelTAL.Caption := '';
      Form54.Close;
    end;
    DateinameS[j] := NameS;
  end;
  Label00000.Caption := RightS('     '+IntToStr(ZahlGlob),5);
  for i := 1 to ZahlGlob do
  begin
    IsogonenZahl[i] := 9;
    T0S := RightS('0000'+IntToStr(T0[i]),4);
    str (T1Strich[i]:4:2,TS[1]);
    str (T2Strich[i]:4:2,TS[2]);
    str (T3Strich[i]:4:2,TS[3]);
    str (T4Strich[i]:4:2,TS[4]);
    str (T5Strich[i]:4:2,TS[5]);
    str (T6Strich[i]:4:2,TS[6]);
    str (T7Strich[i]:4:2,TS[7]);
    str (T8Strich[i]:4:2,TS[8]);
    str (T9Strich[i]:4:2,TS[9]);
    Zeile0S    := '     '+T0S+'             10'+'             '+TS[1];
    ListboxDaten.Items.Add(Zeile0S);
    for j := 2 to 9 do
    begin
      ZeileS := '                         '+IntToStr(j*10)+'             ';
      ZeileS := ZeileS +TS[j];
      ListboxDaten.Items.Add(ZeileS);
    end;
  end;
end;

procedure TForm54.ButtonplottenClick(Sender: TObject);
begin
  Form55.Show;
end;

procedure TForm54.ListBoxausgewaehltClick(Sender: TObject);
var
  i : word;
begin
  for i := 0 to Listboxausgewaehlt.Items.Count-1 do
  begin
    if Listboxausgewaehlt.Selected[i] then
    begin
      ListboxDateien.Items.Add (Listboxausgewaehlt.Items.Strings[i]);
      Listboxausgewaehlt.Items.Delete(i);
      break;
    end;
  end;
end;

procedure TForm54.ListBoxDateienClick(Sender: TObject);
var
  i       : word;
  Datei   : TextFile;
  Typ     : TMsgDlgType;
  InfoS   : string;
  LoeschS : string;
begin
  if not Loesch then
  begin
    for i := 0 to ListboxDateien.Items.Count-1 do
    begin
      if ListboxDateien.Selected[i] then
      begin
        Listboxausgewaehlt.Items.Add (ListboxDateien.Items.Strings[i]);
        ListboxDateien.Items.Delete(i);
        break;
      end;
    end;
    ButtonAuswahl.Enabled := true;
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

procedure TForm54.Druckereinrichten1Click(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TForm54.SpeedEinrichtenClick(Sender: TObject);
begin
  DruckerEinrichten1Click(Sender);
end;

procedure TForm54.drucken1Click(Sender: TObject);
begin
  Tdrucken (DateiZahl, DateiNameS, ZahlGlob, T0,T1Strich,
            T2Strich, T3Strich, T4Strich,T5Strich,T6Strich,
            T7Strich,T8Strich, T9Strich);
end;

procedure TForm54.Hilfe1Click(Sender: TObject);
const
  Anfang = 154;
var
  DateiS      : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\54Talpha-dis.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\54Talpha-dis.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm54.SpeedDruckenClick(Sender: TObject);
begin
  drucken1Click(Sender);
end;

procedure TForm54.SpeedHilfeClick(Sender: TObject);
begin
  Hilfe1Click(Sender);
end;

procedure TForm54.ButtonDurchsuchenClick(Sender: TObject);
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

procedure TForm54.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Talpha.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'Talpha-E.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm54.speichernDClick(Sender: TObject);
begin
  if CurrentFile <> '' then Tschreiben (CurrentFile)
  else speichernDUnterClick(Sender);
end;

procedure TForm54.SpeedSpeichernClick(Sender: TObject);
begin
  speichernDClick(Sender);
end;

procedure TForm54.speichernDUnterClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := ExtenS;
  SaveDialog1.Filter := 'Talpha method (*.lin)|*.LIN';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    Tschreiben (CurrentFile);
  end;
end;

procedure TForm54.loeschenClick(Sender: TObject);
begin
  Loesch := true;
end;

procedure TForm54.SpeedLoeschenClick(Sender: TObject);
begin
  loeschenClick(Sender);
end;

procedure TForm54.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm54.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm54.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

procedure TForm54.WinWordClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := 'rtf';
  SaveDialog1.Filter     := 'rtf';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    WinTdrucken (CurrentFile, DateiZahl, DateiNameS, ZahlGlob,
            T0,T1Strich, T2Strich, T3Strich, T4Strich,T5Strich,
            T6Strich, T7Strich,T8Strich, T9Strich);
  end;
end;

procedure TForm54.SpeedWinWordClick(Sender: TObject);
begin
  WinWordClick(Sender);
end;

end.
