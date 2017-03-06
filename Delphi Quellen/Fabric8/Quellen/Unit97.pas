unit Unit97;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, ComCtrls, StdCtrls, ExtCtrls, Dateien,
  Texte, Mask, Globvar, EinAusga, Standard, Basic, Menus,
  Drucken, Buttons, Shellapi, FileCtrl, ehsHelpRouter;

type
  TForm97 = class(TForm)
    StatusBar: TStatusBar;
    Panel3: TPanel;
    LabelDaten: TLabel;
    ListBox3: TListBox;
    Panel2: TPanel;
    Labelausgewaehlte: TLabel;
    Panel1: TPanel;
    LabelDateien: TLabel;
    ListBoxDaten: TListBox;
    ListBoxausgewaehlte: TListBox;
    ListBoxDateien: TListBox;
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
    LabelDemo: TLabel;
    Panel5: TPanel;
    Buttonzurueck: TButton;
    Buttonbeenden: TButton;
    PanelPfad: TPanel;
    LabelPfad: TLabel;
    MaskEditPfad: TMaskEdit;
    MainMenu1: TMainMenu;
    Dspeichern: TMenuItem;
    speichern: TMenuItem;
    speichernU: TMenuItem;
    Drucker: TMenuItem;
    einrichten: TMenuItem;
    drucken: TMenuItem;
    RtfDatei: TMenuItem;
    PrinterSetupDialog1: TPrinterSetupDialog;
    Panel7: TPanel;
    SpeedDrucken: TSpeedButton;
    SpeedHilfe: TSpeedButton;
    SpeedHandbuch: TSpeedButton;
    SpeedSpeichern: TSpeedButton;
    SpeedLiteratur: TSpeedButton;
    SpeedRtfDatei: TSpeedButton;
    SpeedEinrichten: TSpeedButton;
    Hilfe: TMenuItem;
    Handbuch: TMenuItem;
    Literatur: TMenuItem;
    SaveDialog1: TSaveDialog;
    Dloeschen: TMenuItem;
    loeschen: TMenuItem;
    SpeedLoeschen: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure ShowHint(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ListBoxDateienClick(Sender: TObject);
    procedure ListBoxausgewaehlteClick(Sender: TObject);
    procedure ButtonStartClick(Sender: TObject);
    procedure ButtonAuswahlClick(Sender: TObject);
    procedure ButtonDurchsuchenClick(Sender: TObject);
    procedure ButtonzurueckClick(Sender: TObject);
    procedure ButtonbeendenClick(Sender: TObject);
    procedure speichernClick(Sender: TObject);
    procedure speichernUClick(Sender: TObject);
    procedure einrichtenClick(Sender: TObject);
    procedure druckenClick(Sender: TObject);
    procedure RtfDateiClick(Sender: TObject);
    procedure SpeedSpeichernClick(Sender: TObject);
    procedure SpeedDruckenClick(Sender: TObject);
    procedure SpeedEinrichtenClick(Sender: TObject);
    procedure SpeedRtfDateiClick(Sender: TObject);
    procedure SpeedHilfeClick(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure SpeedLiteraturClick(Sender: TObject);
    procedure HilfeClick(Sender: TObject);
    procedure HandbuchClick(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
    procedure ButtonplottenClick(Sender: TObject);
    procedure loeschenClick(Sender: TObject);
    procedure SpeedLoeschenClick(Sender: TObject);
  end;

var
  Form97          : TForm97;
  DiscS           : string;
  ListBoxLoeschen : Boolean;
  NameS           : string;
  CurrentFile     : string;
  Loesch          : boolean;

implementation
uses Unit95, Unit98;
{$R *.DFM}

procedure TForm97.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm97.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm97.FormActivate(Sender: TObject);
begin
  Left   := LeftDiag + ULap;
  Top    := TopDiag + ULap;
  Width  := WidForm;
  Height := HeiForm;
  Form97.Caption := Tx(1548);
  LabelDemo.Visible               := false;
  if DemoB then LabelDemo.Visible := true;
  setlength (Lang, MaxDaten);
  setlength (Mittel, MaxDaten);
  setlength (Kurz, MaxDaten);
  ListBoxDaten.Hint        := Hilf(54);
  Panel3.Hint              := Hilf(54);
  ListBoxausgewaehlte.Hint := Hilf(32);
  Panel2.Hint              := Hilf(32);
  ListBoxDateien.Hint      := Hilf(33);
  Panel1.Hint              := Hilf(33);
  LabelPfad.Hint           := Hilf(34);
  LabelExtension.Hint      := Hilf(35);
  LabelAnzahl.Hint         := Hilf(36);
  ButtonStart.Hint         := Hilf(296);
  ButtonAuswahl.Hint       := Hilf(55);
  Buttonplotten.Hint       := Hilf(51);
  Buttonzurueck.Hint       := Hilf(52);
  Buttonbeenden.Hint       := Hilf(30);
  SpeedDrucken.Hint        := Hilf(203);
  SpeedHilfe.Hint          := Hilf(210);
  ButtonDurchsuchen.Hint   := Hilf(275);
  SpeedHandbuch.Hint       := Hilf(274);
  SpeedSpeichern.Hint      := Hilf(204);
  SpeedEinrichten.Hint     := Hilf(505);
  SpeedLoeschen.Hint       := Hilf(713);
  Dspeichern.Caption       := Tx(86);
  speichern.Caption        := Tx(87);
  speichernU.Caption       := Tx(88);
  Drucker.Caption          := Tx(92);
  drucken.Caption          := Tx(93);
  Einrichten.Caption       := Tx(94);
  Hilfe.Caption            := Tx(162)+' (F1)';
  LabelDaten.Caption       := Tx(183);
  Labelausgewaehlte.Caption:= Tx(136);
  LabelDateien.Caption     := Tx(137);
  LabelAnzahl.Caption      := Tx(222);
  ButtonAuswahl.Caption    := Tx(248);
  Buttonplotten.Caption    := Tx(241);
  Buttonzurueck.Caption    := Tx(30);
  Buttonbeenden.Caption    := Tx(53);
  LabelDateien.Enabled     := false;
  Labelausgewaehlte.Enabled:= false;
  LabelDaten.Enabled       := false;
  LabelPfad.Enabled        := false;
  LabelExtension.Enabled   := false;
  LabelLIN.Caption         := '';
  LabelAnzahl.Enabled      := false;
  Label00000.Caption       := '';
  ListboxDateien.Enabled   := false;
  Listboxausgewaehlte.Enabled := false;
  ListboxDaten.Enabled        := false;
  Buttonplotten.Enabled       := false;
  ButtonAuswahl.Enabled       := false;
  Buttonzurueck.Enabled       := false;
  Buttonbeenden.Enabled       := false;
  Drucker.Enabled             := false;
  SpeedDrucken.Enabled        := false;
  SpeedSpeichern.Enabled      := false;
  ButtonDurchsuchen.Enabled   := false;
  LabelPfad.Caption           := Tx(1003);
  ButtonDurchsuchen.Caption   := Tx(1004);
  ButtonDurchsuchen.Enabled   := false;
  Dspeichern.Enabled          := false;
  Handbuch.Caption            := Tx(1055)+' (F2)';
  Literatur.Caption           := Tx(1183)+' (F5)';
  SpeedLiteratur.Hint         := Hilf(462);
  RtfDatei.Caption            := Tx(1207);
  SpeedRtfDatei.Hint          := Hilf(470);
  SpeedRtfDatei.Enabled       := false;
  SpeedEinrichten.Enabled     := false;
  Loesch                      := false;
  DLoeschen.Caption           := Tx(1659);
  Loeschen.Caption            := Tx(1660);
  Dloeschen.Enabled           := false;
  SpeedLoeschen.Enabled       := false;
end;

procedure TForm97.ButtonStartClick(Sender: TObject);
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
  SpeedLoeschen.Enabled := true;
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
  LabelAnzahl.Enabled         := false;
  ExtenS                      := 'FLI';
  ButtonDurchsuchen.Enabled   := true;
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

procedure TForm97.ListBoxDateienClick(Sender: TObject);
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

procedure TForm97.ListBoxausgewaehlteClick(Sender: TObject);
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

procedure TForm97.ButtonAuswahlClick(Sender: TObject);
var
  j       : byte;
  i       : word;
  LangS   : string[4];
  MittelS : string[4];
  KurzS   : string[4];
  ZeileS  : string[30];
begin
  Dspeichern.Enabled          := true;
  Buttonplotten.Enabled       := true;
  Drucker.Enabled             := true;
  ListboxDateien.Enabled      := false;
  Listboxausgewaehlte.Enabled := false;
  ButtonDurchsuchen.Enabled   := false;
  SpeedDrucken.Enabled        := true;
  SpeedSpeichern.Enabled      := true;
  SpeedRtfDatei.Enabled       := true;
  LabelAnzahl.Enabled         := true;
  SpeedEinrichten.Enabled     := true;
  DateiZahl := ListBoxausgewaehlte.Items.Count-1;
  for j := 0 to DateiZahl do
  begin
    NameS := Listboxausgewaehlte.Items.Strings[j]+ '.' + ExtenS;
    AusB := false;
    Testpfad (DiscS);
    LiesFlinn (j, NameS, DiscS, ZahlGlob, Lang, Mittel, Kurz);
    if AusB then       {zurück}
    begin
      ListBoxDateien.Clear;
      ListBoxausgewaehlte.Clear;
      ListBoxDaten.Clear;
      LabelLIN.Caption := '';
      Form97.Close;
    end;
    DateiNameS[j]     := NameS;
  end;
  Label00000.Caption := RightS('     '+IntToStr(ZahlGlob),5);
  for i := 1 to ZahlGlob do
  begin
    LangS := FloatToStr (Lang[i]);
    LangS := RightS ('0000'+ LangS,4);
    MittelS := FloatToStr (Mittel[i]);
    MittelS := RightS ('0000' + MittelS, 4);
    KurzS   := FloatToStr(Kurz[i]);
    KurzS   := RightS ('0000'+ KurzS,4);
    ZeileS := ' '+LangS+' '+MittelS+' '+KurzS;
    ListBoxDaten.Items.Add (ZeileS);
  end;
  ButtonAuswahl.Enabled  := false;
  speichern.Enabled := true;
end;

procedure TForm97.ButtonDurchsuchenClick(Sender: TObject);
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

procedure TForm97.ButtonzurueckClick(Sender: TObject);
begin
  Lang   := Nil;
  Mittel := Nil;
  Kurz   := NIL;
  ListBoxDateien.Clear;
  ListBoxausgewaehlte.Clear;
  ListBoxDaten.Clear;
  Form97.Close;
  ChDir (DirectS);
end;

procedure TForm97.ButtonbeendenClick(Sender: TObject);
begin
  Lang   := Nil;
  Mittel := Nil;
  Kurz   := Nil;
  ListBoxDateien.Clear;
  ListBoxausgewaehlte.Clear;
  ListBoxDaten.Clear;
  ChDir (DirectS);
  SetCurrentDir(DirectS);
  Form97.Close;
  Form95.Close;
end;

procedure TForm97.speichernClick(Sender: TObject);
begin
   if CurrentFile <> '' then AchsenSpeichern(CurrentFile,ZahlGlob,
     Lang, Mittel, Kurz)
   else speichernUClick(Sender);
end;

procedure TForm97.speichernUClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := ExtenS;
  SaveDialog1.Filter     := ExtenS;
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    AchsenSpeichern (CurrentFile, ZahlGlob, Lang, Mittel, Kurz);
  end;
end;

procedure TForm97.loeschenClick(Sender: TObject);
begin
  Loesch := true;
  showmessage(Tx(1719)+chr(10)+chr(13)+Tx(1720));  
end;

procedure TForm97.SpeedLoeschenClick(Sender: TObject);
begin
  loeschenClick(Sender);
end;

procedure TForm97.einrichtenClick(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TForm97.druckenClick(Sender: TObject);
begin
  TitelFlinn (DateiZahl, DateiNameS, Lang, Mittel, Kurz,
              ZahlGlob);
end;

procedure TForm97.RtfDateiClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := 'rtf';
  SaveDialog1.Filter     := 'rtf';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    WinDateiFlinn(DateiZahl, CurrentFile, DateiNameS,
                  Lang, Mittel, Kurz, ZahlGlob);
  end;
end;

procedure TForm97.SpeedSpeichernClick(Sender: TObject);
begin
  speichernUClick(Sender);
end;

procedure TForm97.SpeedDruckenClick(Sender: TObject);
begin
  druckenClick(Sender);
end;

procedure TForm97.SpeedEinrichtenClick(Sender: TObject);
begin
  einrichtenClick(Sender);
end;

procedure TForm97.SpeedRtfDateiClick(Sender: TObject);
begin
  RtfDateiClick(Sender);
end;

procedure TForm97.SpeedHilfeClick(Sender: TObject);
begin
  HilfeClick(Sender);
end;

procedure TForm97.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm97.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

procedure TForm97.HilfeClick(Sender: TObject);
var
  DateiS      : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\97Flinn-dis.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\97Flinn-dis.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm97.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Flinn-Hsu.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'Flinn-Hsu-E.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm97.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm97.ButtonplottenClick(Sender: TObject);
begin
  Form98.Show;
end;

end.
