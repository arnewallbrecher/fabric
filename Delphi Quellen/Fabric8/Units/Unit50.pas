unit Unit50;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, ExtCtrls, Menus, StdCtrls, Globvar,
  Einausga, Dateien, Basic, Drucken, Fourier, Texte, ComCtrls,
  Buttons, Shellapi, FileCtrl, Standard, Mask, ehsHelpRouter;

type
  TForm50 = class(TForm)
    Panel1       : TPanel;
    LabelDaten   : TLabel;
    LabelVer     : TLabel;
    Label1P      : TLabel;
    Label2P      : TLabel;
    Label3P      : TLabel;
    ListBoxDaten : TListBox;

    Panel2            : TPanel;
    Labelausgewaehlte: TLabel;
    ListBoxausgewaehlt: TListBox;

    Panel3         : TPanel;
    LabelDateien   : TLabel;
    ListBoxDateien : TListBox;

    Panel4          : TPanel;
    ButtonStart     : TButton;
    ButtonAuswahl: TButton;
    Buttonplotten   : TButton;

    Panel5         : TPanel;
    LabelExtension : TLabel;
    LabelFou       : TLabel;
    LabelAnzahl    : TLabel;
    Label00000     : TLabel;

    Panel6        : TPanel;
    Buttonzurueck : TButton;
    Buttonbeenden : TButton;

    MainMenu1: TMainMenu;

    Drucker1            : TMenuItem;
    Druckereinrichten1  : TMenuItem;
    drucken1            : TMenuItem;
    PrintDialog1        : TPrintDialog;
    PrinterSetupDialog1 : TPrinterSetupDialog;

    Hilfe1: TMenuItem;
    StatusBar: TStatusBar;

    Panel7       : TPanel;
    SpeedHilfe   : TSpeedButton;
    SpeedDrucken : TSpeedButton;
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

    procedure FormActivate(Sender: TObject);
    procedure ButtonStartClick(Sender: TObject);
    procedure ButtonplottenClick(Sender: TObject);
    procedure ButtonAuswahlClick(Sender: TObject);

    procedure ListBoxDateienClick(Sender: TObject);
    procedure ListBoxausgewaehltClick(Sender: TObject);

    procedure ButtonzurueckClick(Sender: TObject);
    procedure ButtonbeendenClick(Sender: TObject);

    {Drucker}
    procedure Druckereinrichten1Click(Sender: TObject);
    procedure drucken1Click(Sender: TObject);

    procedure Hilfe1Click(Sender: TObject);
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
  Form50          : TForm50;
  DiscS           : string;
  ListBoxLoeschen : Boolean;
  Loesch          : Boolean;

implementation
uses Unit48, Unit51;
{$R *.DFM}

procedure TForm50.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm50.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm50.FormActivate(Sender: TObject);
begin
  Left   := 140;
  Top    := 80;
  Width  := 800;
  Height := 620;
  setlength (X1Fou, MaxDaten);
  setlength (Y1Fou, MaxDaten);
  setlength (X2Fou, MaxDaten);
  setlength (Y2Fou, MaxDaten);
  setlength (X3Fou, MaxDaten);
  setlength (Y3Fou, MaxDaten);
  setlength (Vergenz, MaxDaten);
  setlength (B1Fou, MaxDaten);
  setlength (B3Fou, MaxDaten);
  setlength (B5Fou, MaxDaten);
  LabelDemo.Visible                := false;
  if DemoB then LabelDemo.Visible  := true;
  Form50.Caption           := Tx(767);   {Fabric7: Fourier-Analyse von}
  ListBoxDaten.Hint        := Hilf(54);
  Panel3.Hint              := Hilf(54);
  ListBoxausgewaehlt.Hint  := Hilf(32);
  Panel2.Hint              := Hilf(32);
  ListBoxDateien.Hint      := Hilf(33);
  Panel3.Hint              := Hilf(33);
  LabelPfad.Hint           := Hilf(34);
  LabelExtension.Hint      := Hilf(35);
  LabelAnzahl.Hint         := Hilf(36);
  ButtonStart.Hint         := Hilf(296);
  ButtonAuswahl.Hint       := Hilf(55);
  Buttonplotten.Hint       := Hilf(51);
  Buttonzurueck.Hint       := Hilf(52);
  Buttonbeenden.Hint       := Hilf(30);
  ButtonDurchsuchen.Hint   := Hilf(275);
  SpeedHandbuch.Hint       := Hilf(274);
  SpeedSpeichern.Hint      := Hilf(204);
  SpeedDrucken.Hint        := Hilf(203);
  SpeedHilfe.Hint          := Hilf(210);
  SpeedEinrichten.Hint     := Hilf(505);
  SpeedLoeschen.Hint       := Hilf(713);
  DatenSpeichern.Caption      := Tx(86);
  speichernD.Caption          := Tx(87);
  speichernDUnter.Caption     := Tx(88);
  Drucker1.Caption            := Tx(92);
  drucken1.Caption            := Tx(93);
  DruckerEinrichten1.Caption  := Tx(94);
  Hilfe1.Caption              := Tx(162)+' (F1)';
  LabelDaten.Caption          := Tx(183);   {Daten:}
  LabelVer.Caption            := Tx(768);   {Ver:}
  Label1P.Caption             := Tx(769);   {1.Punkt:}
  Label2P.Caption             := Tx(770);   {2.Punkt:}
  Label3P.Caption             := Tx(771);   {3.Punkt}
  Labelausgewaehlte.Caption   := Tx(136);
  LabelDateien.Caption        := Tx(137);
  LabelAnzahl.Caption         := Tx(222);
  ButtonAuswahl.Caption       := Tx(248);
  Buttonplotten.Caption       := Tx(241);
  Buttonzurueck.Caption       := Tx(30);
  Buttonbeenden.Caption       := Tx(53);
  LabelDaten.Enabled          := false;
  LabelVer.Enabled            := false;
  Label1P.Enabled             := false;
  Label2P.Enabled             := false;
  Label3P.Enabled             := false;
  Labelausgewaehlte.Enabled   := false;
  LabelDateien.Enabled        := false;
  LabelPfad.Enabled           := false;
  LabelExtension.Visible      := false;
  LabelFou.Caption            := '';
  LabelAnzahl.Visible         := false;
  Label00000.Caption          := '';
  ListboxDaten.Enabled        := false;
  Listboxausgewaehlt.Enabled  := false;
  ListboxDateien.Enabled      := false;
  ButtonAuswahl.Enabled       := false;
  Buttonplotten.Enabled       := false;
  Drucker1.Enabled            := false;
  LabelPfad.Caption           := Tx(1003);
  ButtonDurchsuchen.Caption   := Tx(1004);
  ButtonDurchsuchen.Enabled   := false;
  Handbuch.Caption            := Tx(1055)+' (F2)';
  Literatur.Caption           := Tx(1183)+' (F5)';
  SpeedLiteratur.Hint         := Hilf(462);
  SpeedSpeichern.Enabled      := false;
  DatenSpeichern.Enabled      := false;
  SpeedDrucken.Enabled        := false;
  WinWord.Caption             := Tx(1207);
  SpeedWinWord.Hint           := Hilf(470);
  SpeedWinWord.Enabled        := false;
  SpeedEinrichten.Enabled     := false;
  Loesch                      := false;
  DLoeschen.Caption           := Tx(1659);
  Loeschen.Caption            := Tx(1660);
  Dloeschen.Enabled           := false;
  SpeedLoeschen.Enabled       := false;
end;

procedure TForm50.ButtonStartClick(Sender: TObject);
var
  DatS     : string;
  i        : word;
  DNameS   : string[80];
begin
  Loesch                := false;
  ButtonAuswahl.Enabled := false;
  Dloeschen.Enabled     := true;
  SpeedLoeschen.Enabled := true;  
  ListBoxDaten.Clear;
  ListBoxausgewaehlt.Clear;
  ListBoxDateien.Clear;
  ZahlGlob                    := 0;
  Label00000.Caption          := '';
  LabelDaten.Enabled          := true;
  LabelVer.Enabled            := true;
  Label1P.Enabled             := true;
  Label2P.Enabled             := true;
  Label3P.Enabled             := true;
  Labelausgewaehlte.Enabled   := true;
  LabelDateien.Enabled        := true;
  LabelPfad.Enabled           := true;
  MaskEditPfad.Text           := PfadS;
  LabelExtension.Visible      := true;
  LabelAnzahl.Visible         := true;
  Label00000.Caption          := IntToStr(ZahlGlob);
  ListboxDaten.Enabled        := true;
  Listboxausgewaehlt.Enabled  := true;
  ListboxDateien.Enabled      := true;
  ButtonDurchsuchen.Enabled   := true;
  ExtenS                  := 'FOU';
  Laufwerk(DatS,EingabeS, DiscS);
  ListBoxLoeschen            := false;
  Datsuch (DateiZahl, DiscS, ExtenS, DateiNameS, ListBoxLoeschen);
  MaskEditPfad.Text := DiscS;
  LabelFOU.Caption  := ExtenS;
  if not ListBoxLoeschen then
  begin
    for i := 1 to DateiZahl do
    begin
      DNameS := LeftS (DateiNameS[i], length(DateiNameS[i])- 4);
      ListboxDateien.Items.Add (DNameS);
    end;
  end;
end;

procedure TForm50.ButtonzurueckClick(Sender: TObject);
begin
  X1Fou   := Nil;
  Y1Fou   := Nil;
  X2Fou   := Nil;
  Y2Fou   := Nil;
  X3Fou   := Nil;
  Y3Fou   := Nil;
  Vergenz := Nil;
  B1Fou   := Nil;
  B3Fou   := Nil;
  B5Fou   := Nil;
  Form50.Close;
end;

procedure TForm50.ButtonbeendenClick(Sender: TObject);
begin
  X1Fou   := Nil;
  Y1Fou   := Nil;
  X2Fou   := Nil;
  Y2Fou   := Nil;
  X3Fou   := Nil;
  Y3Fou   := Nil;
  Vergenz := Nil;
  B1Fou   := Nil;
  B3Fou   := Nil;
  B5Fou   := Nil;
  Form50.Close;
  Form48.Close;
  SetCurrentDir(DirectS);
end;

procedure TForm50.ButtonplottenClick(Sender: TObject);
begin
  Form51.Show;
end;

procedure TForm50.ButtonAuswahlClick(Sender: TObject);
var
  j, i, N  : word;
  NameS    : string;
  ZeileS   : string[40];
  X1S, Y1S : string[4];
  X2S, Y2S : string[4];
  X3S, Y3S : string[4];
  VeS      : string[3];
begin
  Buttonplotten.Enabled      := true;
  DatenSpeichern.Enabled     := true;
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
    Flies (DiscS, NameS, N, Vergenz, X1Fou, X2Fou, X3Fou,
           Y1Fou, Y2Fou, Y3Fou);
    ZahlGlob := N;
    if AusB then       {zurück}
    begin
      ListBoxDateien.Clear;
      ListBoxausgewaehlt.Clear;
      ListBoxDaten.Clear;
      LabelFOU.Caption := '';
      Form50.Close;
    end;
    DateinameS[j] := NameS;
  end;
  Label00000.Caption := RightS('     '+IntToStr(ZahlGlob),5);
  for i := 1 to ZahlGlob do
  begin
    X1S := RightS('0000'+IntToStr(X1Fou[i]),4);
    X2S := RightS('0000'+IntToStr(X2Fou[i]),4);
    X3S := RightS('0000'+IntToStr(X3Fou[i]),4);
    Y1S := RightS('0000'+IntToStr(Y1Fou[i]),4);
    Y2S := RightS('0000'+IntToStr(Y2Fou[i]),4);
    Y3S := RightS('0000'+IntToStr(Y3Fou[i]),4);
    VeS   := RightS('000'+IntToStr(Vergenz[i]),3);
    ZeileS := ' '+VeS+'  '+X1S+', '+Y1S+'  '+X2S+', '+Y2S+'  '+X3S+', '+Y3S;
    ListBoxDaten.Items.Add (ZeileS); {Daten und Ergebnis in Listbox schreiben}
  end;
  FBerechnen (N,X1Fou,X2Fou,X3Fou,Y1Fou,Y2Fou,Y3Fou,Vergenz,B1Fou,B3Fou,B5Fou);
end;

procedure TForm50.ListBoxDateienClick(Sender: TObject);
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

procedure TForm50.ListBoxausgewaehltClick(Sender: TObject);
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

procedure TForm50.speichernDClick(Sender: TObject);
begin
  if CurrentFile <> '' then Fschreiben (CurrentFile, ZahlGlob,
    Vergenz, X1Fou, X2Fou, X3Fou, Y1Fou, Y2Fou, Y3Fou)
  else speichernDUnterClick(Sender);
end;

procedure TForm50.SpeedSpeichernClick(Sender: TObject);
begin
  speichernDClick(Sender);
end;

procedure TForm50.speichernDUnterClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := ExtenS;
  SaveDialog1.Filter     := 'Fourier-Analysis (*.fou)|*.FOU';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    Fschreiben (CurrentFile, ZahlGlob, Vergenz, X1Fou, X2Fou,
                X3Fou, Y1Fou, Y2Fou, Y3Fou);
  end;
end;

procedure TForm50.loeschenClick(Sender: TObject);
begin
  Loesch := true;
end;

procedure TForm50.SpeedLoeschenClick(Sender: TObject);
begin
  loeschenClick(Sender);
end;

procedure TForm50.Druckereinrichten1Click(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TForm50.SpeedEinrichtenClick(Sender: TObject);
begin
  DruckerEinrichten1Click(Sender);
end;

procedure TForm50.drucken1Click(Sender: TObject);
begin
  Fdrucken (ZahlGlob, Vergenz, X1Fou, Y1Fou, X2Fou,Y2Fou,
            X3Fou,Y3Fou, B1Fou, B3Fou, B5Fou);
end;

procedure TForm50.Hilfe1Click(Sender: TObject);
var
  DateiS      : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\50Fourier-dis.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\50Fourier-dis.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm50.SpeedDruckenClick(Sender: TObject);
begin
  drucken1Click(Sender);
end;

procedure TForm50.SpeedHilfeClick(Sender: TObject);
begin
  Hilfe1Click(Sender);
end;

procedure TForm50.ButtonDurchsuchenClick(Sender: TObject);
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

procedure TForm50.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Fourier-Analyse.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'Fourier_analysis-E.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm50.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm50.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm50.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

procedure TForm50.WinWordClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := 'rtf';
  SaveDialog1.Filter     := 'rtf';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    WinFdrucken (CurrentFile,ZahlGlob, Vergenz, X1Fou,
                 Y1Fou, X2Fou,Y2Fou, X3Fou,Y3Fou, B1Fou,
                 B3Fou, B5Fou);
  end;
end;

procedure TForm50.SpeedWinWordClick(Sender: TObject);
begin
  WinWordClick(Sender);
end;

end.
