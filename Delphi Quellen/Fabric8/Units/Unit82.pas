unit Unit82;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, ExtCtrls, ComCtrls, Mask, Texte,
  Menus, Buttons, Globvar, Einausga, Dateien, Basic, FileCtrl,
  Standard, Karte, Drucken, Shellapi, ehsHelpRouter;

type
  TForm82 = class(TForm)
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
    LabelDemo: TLabel;
    ButtonDurchsuchen: TButton;
    Panel5: TPanel;
    Buttonzurueck: TButton;
    Buttonbeenden: TButton;
    PanelPfad: TPanel;
    LabelPfad: TLabel;
    MaskEditPfad: TMaskEdit;
    StatusBar: TStatusBar;
    Panel7: TPanel;
    SpeedDrucken: TSpeedButton;
    SpeedHilfe: TSpeedButton;
    SpeedHandbuch: TSpeedButton;
    SpeedSpeichern: TSpeedButton;
    SpeedLiteratur: TSpeedButton;
    SpeedWinWord: TSpeedButton;
    MainMenu1: TMainMenu;
    DatenSpeichern: TMenuItem;
    speichernD: TMenuItem;
    speichernDUnter: TMenuItem;
    Drucker1: TMenuItem;
    drucken1: TMenuItem;
    einrichten1: TMenuItem;
    WinWord: TMenuItem;
    Hilfe1: TMenuItem;
    Literatur: TMenuItem;
    SaveDialog1: TSaveDialog;
    PrintDialog1: TPrintDialog;
    PrinterSetupDialog1: TPrinterSetupDialog;
    PanelKoordinaten: TPanel;
    LabelKoordinaten: TLabel;
    LabelGeogr: TLabel;
    LabelUTM: TLabel;
    LabelZone: TLabel;
    SpeedEinrichten: TSpeedButton;
    Handbuch: TMenuItem;
    Dloeschen: TMenuItem;
    loeschen: TMenuItem;
    SpeedLoeschen: TSpeedButton;
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    Procedure ShowHint(Sender: TObject);
    procedure ButtonStartClick(Sender: TObject);
    procedure ButtonzurueckClick(Sender: TObject);
    procedure ButtonbeendenClick(Sender: TObject);
    procedure ButtonAuswahlClick(Sender: TObject);
    procedure ButtonplottenClick(Sender: TObject);
    procedure ButtonDurchsuchenClick(Sender: TObject);
    procedure ListBoxDateienClick(Sender: TObject);
    procedure ListBoxausgewaehlteClick(Sender: TObject);
    procedure speichernDClick(Sender: TObject);
    procedure speichernDUnterClick(Sender: TObject);
    procedure drucken1Click(Sender: TObject);
    procedure einrichten1Click(Sender: TObject);
    procedure WinWordClick(Sender: TObject);
    procedure SpeedSpeichernClick(Sender: TObject);
    procedure SpeedDruckenClick(Sender: TObject);
    procedure SpeedWinWordClick(Sender: TObject);
    procedure Hilfe1Click(Sender: TObject);
    procedure HandbuchClick(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
    procedure SpeedLiteraturClick(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure SpeedHilfeClick(Sender: TObject);
    procedure SpeedEinrichtenClick(Sender: TObject);
    procedure loeschenClick(Sender: TObject);
    procedure SpeedLoeschenClick(Sender: TObject);
  end;

var
  Form82          : TForm82;
  ListBoxLoeschen : boolean;
  NameS, DiscS    : string;
  CurrentFile     : string;
  Loesch          : boolean;

implementation
uses Unit79, Unit81;
{$R *.DFM}

procedure TForm82.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm82.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm82.FormActivate(Sender: TObject);
begin
  Left   := 140;
  Top    := 80;
  Width  := 800;
  Height := 620;
  Form82.Caption := 'Fabric8: '+Tx(1282);
  setlength (AziFeld, MaxDaten);
  setlength (FalFeld, MaxDaten);
  setlength (BreiteFeld, MaxDaten);
  setlength (LaengeFeld, MaxDaten);
  setlength (LPFeld, MaxDaten);
  LabelDemo.Visible        := false;
  if DemoB then LabelDemo.Visible := true;
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
  DatenSpeichern.Caption      := Tx(86);
  speichernD.Caption          := Tx(87);
  speichernDUnter.Caption     := Tx(88);
  Drucker1.Caption            := Tx(92);
  drucken1.Caption            := Tx(93);
  Einrichten1.Caption         := Tx(94);
  Hilfe1.Caption              := Tx(162)+' (F1)';
  LabelDaten.Caption          := Tx(183);
  Labelausgewaehlte.Caption   := Tx(136);
  LabelDateien.Caption        := Tx(137);
  LabelAnzahl.Caption         := Tx(222);
  ButtonAuswahl.Caption       := Tx(248);
  Buttonplotten.Caption       := Tx(241);
  Buttonzurueck.Caption       := Tx(30);
  Buttonbeenden.Caption       := Tx(53);
  LabelKoordinaten.Caption    := Tx(689);
  LabelDateien.Enabled        := false;
  Labelausgewaehlte.Enabled   := false;
  LabelDaten.Enabled          := false;
  LabelPfad.Enabled           := false;
  LabelExtension.Enabled      := false;
  LabelLIN.Caption            := '';
  LabelAnzahl.Enabled         := false;
  Label00000.Caption          := '';
  ListboxDateien.Enabled      := false;
  Listboxausgewaehlte.Enabled := false;
  ListboxDaten.Enabled        := false;
  Buttonplotten.Enabled       := false;
  ButtonAuswahl.Enabled       := false;
  Buttonzurueck.Enabled       := false;
  Buttonbeenden.Enabled       := false;
  Drucker1.Enabled            := false;
  SpeedDrucken.Enabled        := false;
  SpeedSpeichern.Enabled      := false;
  ButtonDurchsuchen.Enabled   := false;
  LabelPfad.Caption           := Tx(1003);
  ButtonDurchsuchen.Caption   := Tx(1004);
  ButtonDurchsuchen.Enabled   := false;
  DatenSpeichern.Enabled      := false;
  Handbuch.Caption            := Tx(1055)+' (F2)';
  Literatur.Caption           := Tx(1183)+' (F5)';
  SpeedLiteratur.Hint         := Hilf(462);
  WinWord.Caption             := Tx(1207);
  SpeedWinword.Hint           := Hilf(470);
  SpeedWinWord.Enabled        := false;
  SpeedEinrichten.Enabled     := false;
  PanelKoordinaten.Visible    := false;
  LabelUTM.Visible            := false;
  LabelZone.Caption           := ' ';
  Loesch                      := false;
  DLoeschen.Caption           := Tx(1659);
  Loeschen.Caption            := Tx(1660);
  Dloeschen.Enabled           := false;
  SpeedLoeschen.Enabled       := false;
end;

procedure TForm82.ButtonStartClick(Sender: TObject);
var
  Dzahl      : word;
  DatNameS   : array[0..1000] of string;
  i          : word;
  DNameS     : string[80];
  DatS       : string;
begin
  Loesch                    := false;
  ButtonAuswahl.Enabled     := false;
  Dloeschen.Enabled         := true;
  SpeedLoeschen.Enabled     := true;
  LabelUTM.Visible          := false;
  LabelZone.Caption         := ' ';
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
  ExtenS                      := 'MAP';
  PanelKoordinaten.Visible    := false;
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

procedure TForm82.ButtonzurueckClick(Sender: TObject);
begin
  AziFeld    := Nil;
  FalFeld    := Nil;
  BreiteFeld := Nil;
  LaengeFeld := Nil;
  LPFeld     := Nil;
  ListBoxDateien.Clear;
  ListBoxausgewaehlte.Clear;
  ListBoxDaten.Clear;
  Form82.Close;
  ChDir (DirectS);
end;

procedure TForm82.ButtonbeendenClick(Sender: TObject);
begin
  AziFeld    := Nil;
  FalFeld    := Nil;
  BreiteFeld := Nil;
  LaengeFeld := Nil;
  LPFeld     := Nil;
  ListBoxDateien.Clear;
  ListBoxausgewaehlte.Clear;
  ListBoxDaten.Clear;
  ChDir (DirectS);
  SetCurrentDir(DirectS);
  Form82.Close;
  Form79.Close;
end;

procedure TForm82.ButtonAuswahlClick(Sender: TObject);
var
  j          : byte;
  i          : word;
  KoorS      : string;
  ZeileS     : string;
  BGradS     : string;
  BMinS      : string;
  LGradS     : string;
  LMinS      : string;
  AzimutS    : string;
  FalS, LPS  : string;
  TestS      : string;
  RS, HS     : string[1];

begin
  RS                          := Tx(1308);
  HS                          := Tx(1309);
  Buttonplotten.Enabled       := true;
  Drucker1.Enabled            := true;
  ListboxDateien.Enabled      := false;
  Listboxausgewaehlte.Enabled := false;
  ButtonDurchsuchen.Enabled   := false;
  SpeedDrucken.Enabled        := true;
  SpeedSpeichern.Enabled      := true;
  SpeedWinWord.Enabled        := true;
  SpeedEinrichten.Enabled     := true;
  LabelAnzahl.Enabled         := true;
  DateiZahl := ListBoxausgewaehlte.Items.Count-1;
  for j := 0 to DateiZahl do
  begin
    NameS := Listboxausgewaehlte.Items.Strings[j]+ '.' + ExtenS;
    AusB := false;
    Testpfad (DiscS);
    if j > 0 then TestS := KoorS;
    LiesKarte (j,NameS,DiscS,ZahlGlob,KoorS);
    if j > 0 then if TestS <> KoorS then
    begin
      showmessage(Tx(1310)+':'+Chr(10)+chr(13)
                  +TestS+' '+Tx(1311)+' '+KoorS);
      ButtonStartClick(Sender);
      exit;
    end;
    if LeftS(KoorS,3) = 'UTM' then
    begin
      LabelZone.Caption := RightS(KoorS,3);
      UTMZoneS          := RightS(KoorS,3);
      KoorS := 'UTM';
      LabelUTM.Visible  := true;
    end;
    if AusB then       {zurück}
    begin
      ListBoxDateien.Clear;
      ListBoxausgewaehlte.Clear;
      ListBoxDaten.Clear;
      LabelLIN.Caption := '';
      Form82.Close;
    end;
    DateiNameS[j] := NameS;
  end;
  Label00000.Caption := RightS('     '+IntToStr(ZahlGlob),5);
  for i := 1 to ZahlGlob do
  begin
    if LPFeld[i] then LPS := 'L' else LPS := 'P';
    AzimutS := RightS ('000'+IntToStr(AziFeld[i]),3);
    FalS    := RightS ('00'+IntToStr(FalFeld[i]),2);
    if (KoorS='NE')or(KoorS='NW')
       or(KoorS='SE')or(KoorS='SW') then
    begin
      KoordinatenS := 'DMM';
      NordSuedS    := LeftS(KoorS,1);
      OstWestS     := RightS(KoorS,1);
      GradMin (BreiteFeld[i], i, BGradS, BMinS);
      GradMin (LaengeFeld[i], i, LGradS, LMinS);
      ZeileS := '  '+NordSuedS+BGradS+'°'+BMinS+'´'+'  '
                +OstWestS+LGradS+'°'+LMinS+'´  '
                +LPS+' '+AzimutS+'/'+FalS;
    end;
    if KoorS = 'Gauss-Krueger' then
    begin
      KoordinatenS := 'Gauss';
      BGradS := FloatToStr(BreiteFeld[i]);
      LGradS := FloatToStr(LaengeFeld[i]);
      ZeileS := '  '+RS+LGradS+'     '+HS+BGradS+'   '+LPS
                +' '+AzimutS+'/'+FalS;
    end;
    if KoorS = 'UTM' then
    begin
      KoordinatenS := 'UTM';
      BGradS := FloatToStr(BreiteFeld[i]);
      LGradS := FloatToStr(LaengeFeld[i]);
      if length (BGradS) = 6 then BGradS := '0' + BGradS;
      if length (LGradS) = 6 then LGradS := '0' + LGradS;
      ZeileS := '  '+'E'+LGradS+'     '+'N'+BGradS+'   '+LPS
                +' '+AzimutS+'/'+FalS;
    end;
    ListBoxDaten.Items.Add (ZeileS);
  end;
  ButtonAuswahl.Enabled    := false;
  DatenSpeichern.Enabled   := true;
  PanelKoordinaten.Visible := true;
  if (KoorS='NE') or (KoorS='NW')
    or (KoorS='SE') or (KoorS='SW') then KoorS := Tx(1262);
  LabelGeogr.Caption       := KoorS;
end;

procedure TForm82.ButtonplottenClick(Sender: TObject);
begin
  Form81.Show;
end;

procedure TForm82.ButtonDurchsuchenClick(Sender: TObject);
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

procedure TForm82.ListBoxDateienClick(Sender: TObject);
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
        ListboxDateien.Items.Delete(i);
        break;
      end;
    end;
    Typ    := mtInformation;
    InfoS  := Tx(1226);
    if Dlgmessage(Typ, InfoS, Tx(1656)+'  '+LoeschS+'  '+Tx(1657),1) = 6 then
    begin
      assignFile (Datei,LoeschS);
      reset(Datei);
      CloseFile(Datei);
      Erase(Datei);
      Showmessage(LoeschS+' '+Tx(1658));
    end;
  end;
  Loesch := false;
end;

procedure TForm82.ListBoxausgewaehlteClick(Sender: TObject);
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

procedure TForm82.speichernDClick(Sender: TObject);
begin
  if CurrentFile <> '' then KarteSpeichern(CurrentFile)
  else speichernDUnterClick(Sender);
end;

procedure TForm82.speichernDUnterClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := ExtenS;
  SaveDialog1.Filter     := ExtenS;
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    KarteSpeichern (CurrentFile);
  end;
end;

procedure TForm82.SpeedSpeichernClick(Sender: TObject);
begin
  SpeichernDUnterClick(Sender);
end;

procedure TForm82.loeschenClick(Sender: TObject);
begin
  Loesch := true;
end;

procedure TForm82.SpeedLoeschenClick(Sender: TObject);
begin
  loeschenClick(Sender);
end;

procedure TForm82.drucken1Click(Sender: TObject);
begin
  if PrintDialog1.Execute then
    TitelKarte (DateiZahl, DateiNameS);
end;

procedure TForm82.SpeedDruckenClick(Sender: TObject);
begin
  drucken1Click(Sender);
end;

procedure TForm82.einrichten1Click(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TForm82.SpeedEinrichtenClick(Sender: TObject);
begin
  einrichten1Click(Sender);
end;

procedure TForm82.WinWordClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := 'rtf';
  SaveDialog1.Filter     := 'rtf';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    WinKarte(DateiZahl, CurrentFile, DateiNameS);
  end;
end;

procedure TForm82.SpeedWinWordClick(Sender: TObject);
begin
  WinWordClick(Sender);
end;

procedure TForm82.Hilfe1Click(Sender: TObject);
var
  DateiS : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\82Karte-dis.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\82Map-dis.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm82.SpeedHilfeClick(Sender: TObject);
begin
  Hilfe1Click(Sender);
end;

procedure TForm82.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Eintragen_in_Karte.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'Plot_data_into_map.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm82.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm82.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm82.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

end.
