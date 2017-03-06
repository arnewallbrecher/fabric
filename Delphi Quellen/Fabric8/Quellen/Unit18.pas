unit Unit18;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, Menus, StdCtrls, ExtCtrls, Globvar,
  Einausga, Dateien, Basic, Drucken, Texte, ComCtrls,
  Buttons, Shellapi, FileCtrl, Standard, Mask, ehsHelpRouter;

type
  TForm18 = class(TForm)
    Panel1       : TPanel;
    LabelDaten   : TLabel;
    ListBoxDaten : TListBox;

    Panel2              : TPanel;
    Labelausgewaehlte   : TLabel;
    ListBoxausgewaehlte : TListBox;

    Panel3         : TPanel;
    LabelDateien   : TLabel;
    ListBoxDateien : TListBox;

    Panel4           : TPanel;
    LabelExtension   : TLabel;
    LabelEXT         : TLabel;
    LabelAnzahl      : TLabel;
    Label00000       : TLabel;

    Panel5           : TPanel;
    ButtonStart      : TButton;
    ButtonAuswahl    : TButton;
    ButtonMasszahlen : TButton;

    Panel6        : TPanel;
    Buttonzurueck : TButton;
    Buttonbeenden : TButton;

    MainMenu1: TMainMenu;

    Hilfe1: TMenuItem;

    StatusBar: TStatusBar;

    Panel7     : TPanel;
    SpeedHilfe : TSpeedButton;

    Drucker1    : TMenuItem;
    einrichten1 : TMenuItem;
    drucken1    : TMenuItem;
    SpeedDrucken: TSpeedButton;

    PrintDialog1        : TPrintDialog;
    PrinterSetupDialog1 : TPrinterSetupDialog;
    PanelPfad: TPanel;
    LabelPfad: TLabel;
    ButtonDurchsuchen: TButton;
    Handbuch: TMenuItem;
    DatenSpeichern: TMenuItem;
    speichernD: TMenuItem;
    speichernDUnter: TMenuItem;
    SaveDialog1: TSaveDialog;
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

    procedure FormShow(Sender: TObject);
    procedure ShowHint(Sender: TObject);
    procedure FormActivate(Sender: TObject);

    procedure ButtonStartClick(Sender: TObject);
    procedure ButtonzurueckClick(Sender: TObject);
    procedure ButtonbeendenClick(Sender: TObject);

    procedure ListBoxDateienClick(Sender: TObject);
    procedure ListBoxausgewaehlteClick(Sender: TObject);
    procedure ButtonAuswahlClick(Sender: TObject);
    procedure ButtonMasszahlenClick(Sender: TObject);

    procedure Hilfe1Click(Sender: TObject);
    procedure SpeedHilfeClick(Sender: TObject);

    procedure einrichten1Click(Sender: TObject);
    procedure drucken1Click(Sender: TObject);
    procedure SpeedDruckenClick(Sender: TObject);
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
    procedure loeschenClick(Sender: TObject);
    procedure SpeedLoeschenClick(Sender: TObject);
  end;

var
  Form18: TForm18;
  ExtensionS : string;
  DiscS      : string;
  NameS      : string[80];
  DatnameS   : array of string;
  ListBoxLoeschen : Boolean;
  Loesch          : boolean;

implementation
uses Unit15, Unit17, Unit19;
{$R *.DFM}

procedure TForm18.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm18.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm18.FormActivate(Sender: TObject);
begin
  Left   := LeftDiag + ULap;
  Top    := TopDiag + ULap;
  Width  := WidForm;
  Height := HeiForm;
  setlength (AziFeld, MaxDaten);
  setlength (FalFeld, MaxDaten);
  setlength (DatnameS, 100);
  LabelDemo.Visible                := false;
  if DemoB then LabelDemo.Visible  := true;
  if Programm = 6 then
    Form18.Caption          := Tx(467); {Fabric7: statistische Maßzahlen..}
  if Programm = 7 then
    Form18.Caption          := Tx(841); {Fabric7: Plot einer Richtungsrose..}
  ListBoxDaten.Hint         := Hilf(53);
  Panel1.Hint               := Hilf(53);
  ListBoxausgewaehlte.Hint  := Hilf(32);
  Panel2.Hint               := Hilf(32);
  ListBoxDateien.Hint       := Hilf(33);
  Panel3.Hint               := Hilf(33);
  LabelPfad.Hint            := Hilf(34);
  LabelExtension.Hint       := Hilf(35);
  LabelEXT.Hint             := Hilf(35);
  LabelAnzahl.Hint          := Hilf(36);
  Label00000.Hint           := Hilf(36);
  ButtonStart.Hint          := Hilf(296);
  ButtonAuswahl.Hint        := Hilf(55);
  ButtonMasszahlen.Hint     := Hilf(79);
  Buttonzurueck.Hint        := Hilf(81);
  Buttonbeenden.Hint        := Hilf(30);
  SpeedHilfe.Hint           := Hilf(210);
  ButtonDurchsuchen.Hint    := Hilf(275);
  SpeedHandbuch.Hint        := Hilf(274); 
  SpeedSpeichern.Hint       := Hilf(204);
  SpeedDrucken.Hint         := Hilf(203);
  SpeedEinrichten.Hint      := Hilf(505);
  SpeedLoeschen.Hint        := Hilf(713);
  Hilfe1.Caption            := Tx(162)+' (F1)';
  LabelDaten.Caption        := Tx(183); {Dateien:}
  Labelausgewaehlte.Caption := Tx(136); {ausgewaehlte Dateien:}
  LabelDateien.Caption      := Tx(137); {Dateien auswählen:}
  LabelAnzahl.Caption       := Tx(222); {Anzahl}
  ButtonAuswahl.Caption     := Tx(248); {Auswahl ok?}
  ButtonMasszahlen.Caption  := Tx(468); {Maßzahlen}
  Buttonzurueck.Caption     := Tx(30);
  Buttonbeenden.Caption     := Tx(53);
  if Programm = 7 then ButtonMasszahlen.Caption := Tx(469);   {&plotten}
  Label00000.Caption        := '';
  LabelEXT.Caption          := '';
  LabelDaten.Enabled        := false;
  Labelausgewaehlte.Enabled := false;
  LabelDateien.Enabled      := false;
  LabelPfad.Enabled         := false;
  LabelAnzahl.Visible       := false;
  Drucker1.Enabled          := false;
  SpeedDrucken.Enabled      := false;
  Label00000.Enabled        := false;
  ListboxDaten.Enabled      := false;
  Listboxausgewaehlte.Enabled := false;
  ListboxDateien.Enabled      := false;
  ButtonAuswahl.Enabled       := false;
  ButtonMasszahlen.Enabled    := false;
  Buttonzurueck.Enabled       := false;
  Buttonbeenden.Enabled       := false;
  Datenspeichern.Enabled      := false;
  SpeedSpeichern.Enabled      := false;
  SpeedEinrichten.Enabled     := false;
  LabelExtension.Enabled      := false;
  LabelPfad.Caption           := Tx(1003);
  ButtonDurchsuchen.Caption   := Tx(1004);
  ButtonDurchsuchen.Enabled   := false;
  if RichtungenS = 'Richtungen' then
  begin
    if BereichS = '1..180°' then ExtensionS := 'STR';
    if BereichS = '1..360°' then ExtensionS := 'Azi';
  end;
  if RichtungenS = 'Betraege' then
  begin
    if BereichS = '1..180°' then ExtensionS := 'LST';
    if BereichS = '1..360°' then ExtensionS := 'LAZ';
  end;
  Handbuch.Caption      := Tx(1055)+' (F2)';
  Literatur.Caption     := Tx(1183)+' (F5)';
  SpeedLiteratur.Hint   := Hilf(462);
  WinWord.Caption       := Tx(1207);
  SpeedWinWord.Hint     := Hilf(470);
  SpeedWinWord.Enabled  := false;
  Loesch                := false;
  DLoeschen.Caption     := Tx(1659);
  Loeschen.Caption      := Tx(1660);
  Dloeschen.Enabled     := false;
  SpeedLoeschen.Enabled := false;
end;

procedure TForm18.ButtonStartClick(Sender: TObject);
var
  Dzahl      : word;
  i          : word;
  DNameS     : string[80];
  DatS       : string;
begin
  Loesch                := false;
  ButtonAuswahl.Enabled := false;
  Dloeschen.Enabled     := true;
  SpeedLoeschen.Enabled := true;
  ListBoxDaten.Clear;
  ListBoxausgewaehlte.Clear;
  ListBoxDateien.Clear;
  LabelDaten.Enabled          := true;
  Labelausgewaehlte.Enabled   := true;
  LabelDateien.Enabled        := true;
  LabelPfad.Enabled           := true;
  LabelExtension.Enabled      := true;
  LabelEXT.Enabled            := true;
  LabelAnzahl.Visible         := true;
  Label00000.Enabled          := true;
  ListboxDaten.Enabled        := true;
  Listboxausgewaehlte.Enabled := true;
  ListboxDateien.Enabled      := true;
  ButtonAuswahl.Enabled       := false;
  Buttonzurueck.Enabled       := true;
  Buttonbeenden.Enabled       := true;
  Label00000.Caption          := '';
  ZahlGlob                    := 0;
  ButtonDurchsuchen.Enabled   := true;
  Laufwerk(DatS,EingabeS, DiscS);
  ListBoxLoeschen := false;
  Datsuch (Dzahl, DiscS, ExtensionS, DatnameS, ListBoxLoeschen);
  MaskEditPfad.Text     := DiscS;
  LabelEXT.Caption      := ExtensionS;
  if not ListBoxLoeschen then
  begin
    for i := 1 to Dzahl do
    begin
      DNameS := LeftS (DatNameS[i], length(DatNameS[i])- 4);
      ListboxDateien.Items.Add (DNameS);
    end;
  end;
end;

procedure TForm18.ButtonzurueckClick(Sender: TObject);     {zurück}
begin
  AziFeld    := Nil;
  FalFeld    := Nil;
  DatNameS   := Nil;
  ListBoxDaten.Clear;
  ListBoxausgewaehlte.Clear;
  ListBoxDateien.Clear;
  Form18.Close;
end;

procedure TForm18.ButtonbeendenClick(Sender: TObject);     {beenden}
begin
  AziFeld  := Nil;
  FalFeld  := Nil;
  DatNameS := Nil;
  ListBoxDaten.Clear;
  ListBoxausgewaehlte.Clear;
  ListBoxDateien.Clear;
  Form18.Close;
  Form15.Close;
  SetCurrentDir(DirectS);
end;

procedure TForm18.ListBoxDateienClick(Sender: TObject);
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
        Listboxausgewaehlte.Items.Add (ListboxDateien.Items.Strings[i]);
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

procedure TForm18.ListBoxausgewaehlteClick(Sender: TObject);      {ausgewählte Dateien}
var
  i : word;
begin
  for i := 0 to ListBoxausgewaehlte.Items.Count-1 do
  begin
    if Listboxausgewaehlte.Selected[i] then
    begin
      ListboxDateien.Items.Add (Listboxausgewaehlte.Items.Strings[i]);
      Listboxausgewaehlte.Items.Delete(i);
      break;
    end;
  end;
end;

procedure TForm18.ButtonAuswahlClick(Sender: TObject);    {Auswahl OK}
var
  j          : byte;
  i          : word;
  DatAzimutS : string[3];
  ZeileS     : string[30];
  WertS      : string[10];
begin
  DatenSpeichern.Enabled  := true;
  Drucker1.Enabled        := true;
  SpeedDrucken.Enabled    := true;
  SpeedSpeichern.Enabled  := true;
  SpeedWinWord.Enabled    := true;
  SpeedEinrichten.Enabled := true;
  DateiZahl                   := ListBoxausgewaehlte.Items.Count-1;
  ButtonMasszahlen.Enabled    := true;
  ListboxDateien.Enabled      := false;
  Listboxausgewaehlte.Enabled := false;
  for j := 0 to DateiZahl do
  begin
    NameS := Listboxausgewaehlte.Items.Strings[j]+ '.' + ExtensionS;
    AusB := false;
    Testpfad (DiscS);
    LiesDaten (j, NameS, DiscS, ZahlGlob, AziFeld, FalFeld);
    if AusB then       {zurück}
    begin
      ListBoxDaten.Clear;
      ListBoxausgewaehlte.Clear;
      ListBoxDateien.Clear;
      LabelEXT.Caption := '';
      Form18.Close;
    end;
    DateinameS[j] := NameS;
  end;
  Label00000.Caption := RightS('     '+IntToStr(ZahlGlob),5);
  for i := 1 to ZahlGlob do
  begin
    DatAzimutS := IntToStr (AziFeld[i]);
    DatAzimutS := RightS ('000' + DatAzimutS, 3);
    if RichtungenS = 'Betraege' then
    begin
      WertS   := IntToStr (FalFeld[i]);
      WertS   := RightS ('0000' + WertS, 4);
      ZeileS := '            '+DatAzimutS + '   ' + WertS;
    end
    else ZeileS := '                 ' + DatAzimutS;
    ListBoxDaten.Items.Add (ZeileS);     {Daten und Ergebnis in Listbox schreiben}
  end;
  ButtonAuswahl.Enabled := false;
end;

procedure TForm18.speichernDClick(Sender: TObject);
begin
  if CurrentFile <> '' then Speichern4 (CurrentFile, ZahlGlob,
    AziFeld, FalFeld)
  else speichernDUnterClick(Sender);
end;

procedure TForm18.SpeedSpeichernClick(Sender: TObject);
begin
  speichernDClick(Sender);
end;

procedure TForm18.speichernDUnterClick(Sender: TObject);
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

procedure TForm18.loeschenClick(Sender: TObject);
begin
  Loesch := true;
  showmessage(Tx(1719)+chr(10)+chr(13)+Tx(1720));   
end;

procedure TForm18.SpeedLoeschenClick(Sender: TObject);
begin
  LoeschenClick(Sender);
end;

procedure TForm18.ButtonMasszahlenClick(Sender: TObject);    {Maßzahlen}
begin
  if Programm = 6 then Form17.Show;
  if Programm = 7 then Form19.Show;
end;

procedure TForm18.einrichten1Click(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TForm18.drucken1Click(Sender: TObject);
begin
  Drucken7 (Dateizahl);
end;

procedure TForm18.Hilfe1Click(Sender: TObject);
var
  DateiS : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\18Zirkular-dis.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\18Circular-dis.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm18.SpeedHilfeClick(Sender: TObject);
begin
  Hilfe1Click(Sender);
end;

procedure TForm18.SpeedDruckenClick(Sender: TObject);
begin
  drucken1Click(Sender);
end;

procedure TForm18.ButtonDurchsuchenClick(Sender: TObject);
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

procedure TForm18.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if Programm = 6 then
  begin
    if SpracheS = 'DEUTSCH' then HilfeS := 'Masszahlen_zirkular.doc';
    if SpracheS = 'ENGLISH' then HilfeS := 'Circular_measures.doc';
    ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
                 nil,nil,sw_normal);
  end;
  if Programm = 7 then
  begin
    if SpracheS = 'DEUTSCH' then HilfeS := 'Richtungsrose.doc';
    if SpracheS = 'ENGLISH' then HilfeS := 'Rose_diagrams.doc';
    ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
                 nil,nil,sw_normal);
  end;
end;

procedure TForm18.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm18.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm18.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

procedure TForm18.WinWordClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := 'rtf';
  SaveDialog1.Filter     := 'rtf';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    WinDrucken7 (CurrentFile, Dateizahl);
  end;
end;

procedure TForm18.SpeedWinWordClick(Sender: TObject);
begin
  WinWordClick(Sender);
end;

end.
