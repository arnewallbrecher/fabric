unit Unit40;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, Menus, StdCtrls, ExtCtrls, Einausga,
  Globvar, Dateien, Basic, RGProg, Drucken, Texte, ComCtrls,
  Buttons, Shellapi, FileCtrl, Standard, Mask, ehsHelpRouter;

type
  TForm40 = class(TForm)
    Panel1      : TPanel;
    LabelDaten  : TLabel;
    LabelR      : TLabel;
    LabelG      : TLabel;
    LabelSymbol : TLabel;

    Panel2           : TPanel;
    Labelausgewaehlte: TLabel;

    Panel3      : TPanel;
    LabelDateien: TLabel;

    Panel4         : TPanel;
    LabelExtension : TLabel;
    LabelRGD       : TLabel;
    LabelAnzahl    : TLabel;
    Label00000     : TLabel;

    Panel5        : TPanel;
    ButtonStart   : TButton;
    ButtonAuswahl : TButton;
    Buttonplotten : TButton;

    Panel6        : TPanel;
    Buttonzurueck : TButton;
    Buttonbeenden : TButton;
    ListBoxDaten: TListBox;
    ListBoxausgewaehlte: TListBox;
    ListBoxDateien: TListBox;

    MainMenu1: TMainMenu;

    Drucker1            : TMenuItem;
    Druckereinrichten1  : TMenuItem;
    drucken1            : TMenuItem;
    PrintDialog1        : TPrintDialog;
    PrinterSetupDialog1 : TPrinterSetupDialog;

    Hilfe1: TMenuItem;
    StatusBar: TStatusBar;

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

    procedure ShowHint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);

    procedure ButtonStartClick(Sender: TObject);
    procedure ButtonzurueckClick(Sender: TObject);
    procedure ButtonbeendenClick(Sender: TObject);

    procedure ButtonAuswahlClick(Sender: TObject);
    procedure ListBoxDateienClick(Sender: TObject);
    procedure ListBoxausgewaehlteClick(Sender: TObject);

    procedure ButtonplottenClick(Sender: TObject);

    {Drucker}
    procedure Druckereinrichten1Click(Sender: TObject);
    procedure drucken1Click(Sender: TObject);

    procedure Hilfe1Click(Sender: TObject);

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
  Form40          : TForm40;
  DiscS           : string;
  DaS             : string;
  N               : word;
  SymbolS         : array[0..10] of string[20];
  ListBoxLoeschen : Boolean;
  Loesch          : boolean;

implementation
uses Unit38, Unit41;
{$R *.DFM}

procedure TForm40.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm40.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm40.FormActivate(Sender: TObject);
begin
  Left   := 140;
  Top    := 80;
  Width  := 800;
  Height := 620;
  setlength (Regelung, MaxDaten);
  setlength (Zylindrizitaet, MaxDaten);
  setlength (Symbol, MaxDaten);
  LabelDemo.Visible                := false;
  if DemoB then LabelDemo.Visible  := true;
  Form40.Caption             := Tx(727);   {Fabric7: R%-G%-Diagramm, Eingabe}
  ListBoxDaten.Hint          := Hilf(54);
  Panel1.Hint                := Hilf(54);
  ListBoxausgewaehlte.Hint   := Hilf(32);
  Panel2.Hint                := Hilf(32);
  ListBoxDateien.Hint        := Hilf(33);
  Panel3.Hint                := Hilf(33);
  LabelPfad.Hint             := Hilf(34);
  LabelExtension.Hint        := Hilf(35);
  LabelRGD.Hint              := Hilf(35);
  LabelAnzahl.Hint           := Hilf(36);
  Label00000.Hint            := Hilf(36);
  ButtonStart.Hint           := Hilf(296);
  ButtonAuswahl.Hint         := Hilf(55);
  Buttonplotten.Hint         := Hilf(112);
  Buttonzurueck.Hint         := Hilf(113);
  Buttonbeenden.Hint         := Hilf(30);
  SpeedDrucken.Hint          := Hilf(203);
  ButtonDurchsuchen.Hint     := Hilf(275);
  SpeedHandbuch.Hint         := Hilf(274);
  SpeedSpeichern.Hint        := Hilf(204);
  SpeedEinrichten.Hint       := Hilf(505);
  SpeedLoeschen.Hint         := Hilf(713);
  Drucker1.Caption           := Tx(92);
  drucken1.Caption           := Tx(93);
  DruckerEinrichten1.Caption := Tx(94);
  Hilfe1.Caption             := Tx(162)+' (F1)';
  SpeedHilfe.Hint            := Hilf(210);
  LabelDaten.Caption         := Tx(183);
  LabelR.Caption             := Tx(718);   {R%}
  LabelG.Caption             := Tx(719);   {G%}
  LabelSymbol.Caption        := TX(724);   {Symbol}
  Labelausgewaehlte.Caption  := Tx(136);
  LabelDateien.Caption       := Tx(137);  {Dateien auswählen}
  LabelAnzahl.Caption        := Tx(138);  {Anzahl:}
  ButtonAuswahl.Caption      := Tx(248);  {Auswahl ok?}
  Buttonplotten.Caption      := Tx(241);  {&plotten}
  Buttonzurueck.Caption      := Tx(30);
  Buttonbeenden.Caption      := Tx(53);
  DatenSpeichern.Caption     := Tx(86);
  speichernD.Caption         := Tx(87);
  speichernDUnter.Caption    := Tx(88);
  LabelDaten.Enabled          := false;
  LabelR.Enabled              := false;
  LabelG.Enabled              := false;
  LabelSymbol.Enabled         := false;
  Labelausgewaehlte.Enabled   := false;
  LabelDateien.Enabled        := false;
  LabelPfad.Enabled           := false;
  LabelExtension.Enabled      := false;
  LabelRGD.Caption            := '';
  LabelAnzahl.Visible         := false;
  Label00000.Caption          := '';
  ListboxDaten.Enabled        := false;
  Listboxausgewaehlte.Enabled := false;
  ListboxDateien.Enabled      := false;
  ButtonAuswahl.Enabled       := false;
  Buttonplotten.Enabled       := false;
  Drucker1.Enabled            := false;
  Buttonzurueck.Enabled       := false;
  Buttonbeenden.Enabled       := false;
  SpeedDrucken.Enabled        := false;
  SpeedSpeichern.Enabled      := false;
  SymbolS[1]  := Tx(392);                            {Kreis, offen    }
  SymbolS[2]  := Tx(393);                            {Kreis, gefüllt  }
  SymbolS[3]  := Tx(394);                            {Quadrat, offen  }
  SymbolS[4]  := Tx(395);                            {Quadrat, gefüllt}
  SymbolS[5]  := Tx(396);                            {Dreieck, offen  }
  SymbolS[6]  := Tx(397);                            {Dreieck, gefüllt}
  SymbolS[7]  := Tx(398);                            {Raute, offen    }
  SymbolS[8]  := Tx(399);                            {Raute, gefüllt  }
  SymbolS[9]  := '       +        ';
  SymbolS[10] := '       x        ';
  LabelPfad.Caption         := Tx(1003);
  ButtonDurchsuchen.Caption := Tx(1004);
  ButtonDurchsuchen.Enabled := false;
  Handbuch.Caption          := Tx(1055)+' (F2)';
  Literatur.Caption         := Tx(1183)+' (F5)';
  SpeedLiteratur.Hint       := Hilf(462);
  WinWord.Caption           := Tx(1207);
  SpeedWinWord.Hint         := Hilf(470);
  SpeedWinWord.Enabled      := false;
  SpeedEinrichten.Enabled   := false;
  Loesch                    := false;
  DLoeschen.Caption         := Tx(1659);
  Loeschen.Caption          := Tx(1660);
  Dloeschen.Enabled         := false;
  SpeedLoeschen.Enabled     := false;
end;

procedure TForm40.ButtonzurueckClick(Sender: TObject);
begin
  Regelung       := Nil;
  Zylindrizitaet := Nil;
  Symbol         := Nil;
  Form40.Close;
end;

procedure TForm40.ButtonbeendenClick(Sender: TObject);
begin
  Regelung       := Nil;
  Zylindrizitaet := Nil;
  Symbol         := Nil;
  Form40.Close;
  Form38.Close;
  SetCurrentDir(DirectS);
end;

procedure TForm40.ButtonStartClick(Sender: TObject);
var
  DatS     : string;
  i        : word;
  DNameS   : string[80];
begin
  Loesch                      := false;
  ButtonAuswahl.Enabled       := false;
  Dloeschen.Enabled           := true;
  SpeedLoeschen.Enabled       := true;
  ListBoxDaten.Enabled        := true;
  ListBoxausgewaehlte.Enabled := true;
  ListBoxDateien.Enabled      := true;
  ListBoxDaten.Clear;
  ListBoxausgewaehlte.Clear;
  ListBoxDateien.Clear;
  Buttonzurueck.Enabled       := true;
  Buttonbeenden.Enabled       := true;
  LabelDaten.Enabled          := true;
  LabelR.Enabled              := true;
  LabelG.Enabled              := true;
  LabelSymbol.Enabled         := true;
  Labelausgewaehlte.Enabled   := true;
  LabelDateien.Enabled        := true;
  LabelPfad.Enabled           := true;
  LabelExtension.Enabled      := true;
  LabelAnzahl.Visible         := true;
  ListboxDaten.Enabled        := true;
  Listboxausgewaehlte.Enabled := true;
  ListboxDateien.Enabled      := true;
  ExtenS                      := 'RGD';
  ButtonDurchsuchen.Enabled   := true;
  Laufwerk(DatS,EingabeS, DiscS);
  ListBoxLoeschen := false;
  Datsuch (DateiZahl, DiscS, ExtenS, DateiNameS, ListBoxLoeschen);
  MaskEditPfad.Text := DiscS;
  LabelRGD.Caption      := ExtenS;
  if not ListBoxLoeschen then
  begin
    for i := 1 to DateiZahl do
    begin
      DNameS := LeftS (DateiNameS[i], length(DateiNameS[i])- 4);
      ListboxDateien.Items.Add (DNameS);
    end;
  end;
end;

procedure TForm40.ListBoxDateienClick(Sender: TObject);
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

procedure TForm40.ListBoxausgewaehlteClick(Sender: TObject);
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

procedure TForm40.ButtonAuswahlClick(Sender: TObject);
var
  j, i, N         : word;
  NameS           : string;
  RegelungS       : string[3];
  ZylindrizitaetS : string[3];
  ZeileS          : string[40];
begin
  Buttonplotten.Enabled       := true;
  Drucker1.Enabled            := true;
  SpeedDrucken.Enabled        := true;
  SpeedSpeichern.Enabled      := true;
  SpeedWinWord.Enabled        := true;
  SpeedEinrichten.Enabled     := true;
  ListboxDateien.Enabled      := false;
  Listboxausgewaehlte.Enabled := false;
  DateiZahl := ListBoxausgewaehlte.Items.Count-1;
  N := 0;
  for j := 0 to DateiZahl do
  begin
    NameS := Listboxausgewaehlte.Items.Strings[j]+ '.' + ExtenS;
    AusB := false;
    Liesrg (DiscS, NameS, N, Regelung, Zylindrizitaet, Symbol);
    ZahlGlob := N;
    if AusB then       {zurück}
    begin
      ListBoxDateien.Clear;
      ListBoxausgewaehlte.Clear;
      ListBoxDaten.Clear;
      LabelRGD.Caption := '';
      Form40.Close;
    end;
    DateinameS[j] := NameS;
  end;
  Label00000.Caption := RightS('     '+IntToStr(ZahlGlob),5);
  for i := 1 to ZahlGlob do
  begin
    RegelungS       := IntToStr (Regelung[i]);
    RegelungS       := RightS ('000' + RegelungS, 3);
    ZylindrizitaetS := IntToStr (Zylindrizitaet[i]);
    ZylindrizitaetS := RightS ('000' + ZylindrizitaetS, 3);
    ZeileS := ' '+RegelungS+'  '+ZylindrizitaetS+'  '+SymbolS[Symbol[i]];
    ListBoxDaten.Items.Add (ZeileS); {Daten und Ergebnis in Listbox schreiben}
  end;
end;

procedure TForm40.speichernDClick(Sender: TObject);
begin
  if CurrentFile <> '' then Schreiben (CurrentFile, ZahlGlob,
    Regelung, Zylindrizitaet, Symbol)
  else speichernDUnterClick(Sender);
end;

procedure TForm40.SpeedSpeichernClick(Sender: TObject);
begin
  speichernDClick(Sender);
end;

procedure TForm40.speichernDUnterClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := ExtenS;
  SaveDialog1.Filter := 'R-G diagrams (*.rgd)|*.RGD';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    Schreiben (CurrentFile, ZahlGlob, Regelung, Zylindrizitaet,
               Symbol)
  end;
end;

procedure TForm40.loeschenClick(Sender: TObject);
begin
  Loesch := true;
end;

procedure TForm40.SpeedLoeschenClick(Sender: TObject);
begin
  LoeschenClick(Sender);
end;

procedure TForm40.ButtonplottenClick(Sender: TObject);
begin
  Form41.Show;
end;

procedure TForm40.Druckereinrichten1Click(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TForm40.SpeedEinrichtenClick(Sender: TObject);
begin
  DruckerEinrichten1Click(Sender);
end;

procedure TForm40.drucken1Click(Sender: TObject);
begin
  Druck (ZahlGlob, Regelung, Zylindrizitaet, Symbol);
end;

procedure TForm40.Hilfe1Click(Sender: TObject);
var
  DateiS      : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\40RG-dis.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\40RG-dis.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm40.SpeedDruckenClick(Sender: TObject);
begin
  drucken1Click(Sender);
end;

procedure TForm40.SpeedHilfeClick(Sender: TObject);
begin
  Hilfe1Click(Sender);
end;

procedure TForm40.ButtonDurchsuchenClick(Sender: TObject);
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

procedure TForm40.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'R-G-Diagramm.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'R-G_diagram.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm40.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm40.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm40.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

procedure TForm40.WinWordClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := 'doc';
  SaveDialog1.Filter     := 'doc';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    WinDruck (CurrentFile, ZahlGlob, Regelung,
              Zylindrizitaet, Symbol);
  end;
end;

procedure TForm40.SpeedWinWordClick(Sender: TObject);
begin
  WinWordClick(Sender);
end;

end.
