unit Unit39;

interface
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, Mask, Menus, ExtCtrls, Globvar,
  Einausga, Drucken, Basic, Texte, ComCtrls, Buttons,
  Shellapi, Standard, ehsHelpRouter;

type
  TForm39 = class(TForm)
    Panel1    : TPanel;
    LabelDaten: TLabel;

    Panel2          : TPanel;
    LabelProzent    : TLabel;
    LabelGrosskreis : TLabel;
    LabelundSymbol  : TLabel;

    Panel3      : TPanel;
    LabelAnzahl : TLabel;
    Label00000  : TLabel;

    Panel4           : TPanel;
    LabelR           : TLabel;
    LabelG           : TLabel;
    LabelSymbolDaten : TLabel;
    ListBoxDaten     : TListBox;

    GroupBoxDateneingabe: TGroupBox;
    LabelRegel          : TLabel;
    LabelZylindriz      : TLabel;
    LabelSymbol         : TLabel;
    MaskEditRegel       : TMaskEdit;
    MaskEditZylind      : TMaskEdit;
    ListBoxSymbol       : TListBox;

    MainMenu1: TMainMenu;

    Datenspeichern1   : TMenuItem;
    speichernD: TMenuItem;
    speichernDUnter: TMenuItem;

    Drucker1          : TMenuItem;
    Druckereinrichten1: TMenuItem;
    drucken1          : TMenuItem;

    Hilfe1 : TMenuItem;

    ButtonStart            : TButton;
    ButtonDateneingbeenden : TButton;
    Buttonzurueck          : TButton;
    Buttonbeenden          : TButton;
    Buttonplotten          : TButton;
    PrintDialog1           : TPrintDialog;
    PrinterSetupDialog1    : TPrinterSetupDialog;
    StatusBar: TStatusBar;
    Panel5: TPanel;
    SpeedDatenF: TSpeedButton;
    SpeedDrucken: TSpeedButton;
    SpeedHilfe: TSpeedButton;
    PanelMaxDat: TPanel;
    LabelMaxDat: TLabel;
    LabelMenge: TLabel;
    Handbuch: TMenuItem;
    SaveDialog1: TSaveDialog;
    LabelDemo: TLabel;
    SpeedHandbuch: TSpeedButton;
    Literatur: TMenuItem;
    SpeedLiteratur: TSpeedButton;
    WinWord: TMenuItem;
    SpeedWinWord: TSpeedButton;
    LabelLoeschen: TLabel;
    SpeedEinrichten: TSpeedButton;

    procedure FormActivate(Sender: TObject);
    procedure ButtonStartClick(Sender: TObject);

    {Dateneingabe}
    procedure speichernDClick(Sender: TObject);
    procedure speichernDUnterClick(Sender: TObject);

    {Drucker}
    procedure Druckereinrichten1Click(Sender: TObject);
    procedure drucken1Click(Sender: TObject);

    procedure Hilfe1Click(Sender: TObject);
    procedure ButtonzurueckClick(Sender: TObject);
    procedure ButtonbeendenClick(Sender: TObject);

    procedure ButtonDateneingbeendenClick(Sender: TObject);
    procedure MaskEditRegelKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditZylindKeyPress(Sender: TObject; var Key: Char);
    procedure ButtonplottenClick(Sender: TObject);
    procedure ListBoxSymbolKeyPress(Sender: TObject; var Key: Char);
    procedure ShowHint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedDatenFClick(Sender: TObject);
    procedure SpeedDruckenClick(Sender: TObject);
    procedure SpeedHilfeClick(Sender: TObject);
    procedure HandbuchClick(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
    procedure SpeedLiteraturClick(Sender: TObject);
    procedure WinWordClick(Sender: TObject);
    procedure SpeedWinWordClick(Sender: TObject);
    procedure ListBoxDatenClick(Sender: TObject);
    procedure SpeedEinrichtenClick(Sender: TObject);
  end;

var
  Form39      : TForm39;
  Anzahl      : word;
  SymbolS     : array[0..10] of string[20];
  NameS, DatS : string;
  RegelS      : string;
  ZylindrizS  : string;
  Regel       : word;
  Zylin       : word;

implementation
uses RGProg, Unit38, Unit41;
{$R *.DFM}

procedure TForm39.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm39.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm39.FormActivate(Sender: TObject);
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
  LabelMaxDat.Caption           := Tx(981);
  LabelMenge.Caption            := Inttostr(MaxDaten);
  PanelMaxDat.Hint              := Hilf(268);
  Form39.Caption                 := Tx(714);   {Fabric7: R%-G%-Diagramm, manuell}
  Panel3.Hint                    := Hilf(20);
  GroupBoxDateneingabe.Hint      := Hilf(108);
  MaskEditRegel.Hint             := Hilf(109);
  MaskEditZylind.Hint            := Hilf(110);
  ListBoxSymbol.Hint             := Hilf(111);
  ButtonStart.Hint               := Hilf(50);
  ButtonDateneingbeenden.Hint    := Hilf(78);
  Buttonplotten.Hint             := Hilf(112);
  Buttonzurueck.Hint             := Hilf(113);
  Buttonbeenden.Hint             := Hilf(30);
  Panel1.Hint                    := Hilf(53);
  ListBoxDaten.Hint              := Hilf(53);
  SpeedDrucken.Hint              := Hilf(203);
  SpeedDatenF.Hint               := Hilf(204);
  SpeedHilfe.Hint                := Hilf(210);
  SpeedHandbuch.Hint             := Hilf(274);
  SpeedEinrichten.Hint           := Hilf(505);
  Datenspeichern1.Caption        := Tx(86);    {&Daten speichern}
  speichernD.Caption             := Tx(87);    {speichern}
  speichernDUnter.Caption        := Tx(88);    {speichern unter}
  Drucker1.Caption               := Tx(92);
  drucken1.Caption               := Tx(93);
  DruckerEinrichten1.Caption     := Tx(94);
  Hilfe1.Caption                 := Tx(162)+' (F1)';
  LabelProzent.Caption           := Tx(715);      {prozentualen Regelungsgrad,}
  LabelGrosskreis.Caption        := Tx(716);      {Großkreisregelung}
  LabelundSymbol.Caption         := Tx(717);      {und Plotsymbol eingeben}
  LabelAnzahl.Caption            := TX(138);      {Anzahl:}
  LabelDaten.Caption             := Tx(183);      {Daten:}
  LabelR.Caption                 := Tx(718);      {R%}
  LabelG.Caption                 := Tx(719);      {G%}
  LabelSymbolDaten.Caption       := Tx(720);      {Symbol}
  GroupBoxDateneingabe.Caption   := Tx(721);      {Dateneingabe}
  LabelRegel.Caption             := Tx(722);      {Regelungsgrad:}
  LabelZylindriz.Caption         := Tx(723);      {Zylindrizität}
  LabelSymbol.Caption            := Tx(724);      {Symbol}
  ButtonDateneingbeenden.Caption := Tx(725);      {&Dateneingabe beenden}
  ButtonPlotten.Caption          := Tx(726);      {plotten}
  Buttonzurueck.Caption          := Tx(30);
  Buttonbeenden.Caption          := TX(53);
  DatS                           := 'RGD';
  LabelDaten.Enabled             := false;
  LabelAnzahl.Enabled            := false;
  Label00000.Caption             := '';
  MaskEditRegel.EditMask         := '99;0; ';
  MaskEditZylind.EditMask        := '99;0; ';
  GroupBoxDateneingabe.Caption   := '';
  LabelRegel.Enabled             := false;
  LabelZylindriz.Enabled         := false;
  LabelSymbol.Enabled            := false;
  Datenspeichern1.Enabled        := false;
  Drucker1.Enabled               := false;
  Buttonplotten.Enabled          := false;
  ButtonDateneingbeenden.Enabled := false;
  Buttonzurueck.Enabled          := false;
  Buttonbeenden.Enabled          := false;
  MaskEditRegel.Enabled          := false;
  MaskEditZylind.Enabled         := false;
  ListBoxSymbol.Enabled          := false;
  LabelR.Enabled                 := false;
  LabelG.Enabled                 := false;
  LabelSymbolDaten.Enabled       := false;
  SpeedDrucken.Enabled           := false;
  SpeedDatenF.Enabled            := false;
  Handbuch.Caption               := Tx(1055)+' (F2)';
  Literatur.Caption              := Tx(1183)+' (F5)';
  SpeedLiteratur.Hint            := Hilf(462);
  MaskEditRegel.Enabled          := false;
  MaskEditZylind.Enabled         := false;
  ListBoxSymbol.Enabled          := false;
  WinWord.Caption                := Tx(1207);
  SpeedWinWord.Hint              := Hilf(470);
  SpeedWinWord.Enabled           := false;
  SpeedEinrichten.Enabled        := false;
end;

procedure TForm39.ButtonStartClick(Sender: TObject);
var
  i : byte;
begin
  GroupBoxDateneingabe.Caption := Tx(391);                 {Dateneingabe}
  Buttonzurueck.Enabled        := true;
  Buttonbeenden.Enabled        := true;
  LabelRegel.Enabled           := true;
  LabelZylindriz.Enabled       := true;
  LabelSymbol.Enabled          := true;
  LabelDaten.Enabled           := true;
  MaskEditRegel.Enabled        := true;
  ListBoxDaten.Clear;
  LabelR.Enabled               := true;
  LabelG.Enabled               := true;
  LabelSymbolDaten.Enabled     := true;
  ListBoxSymbol.Clear;
  Label00000.Caption           := '';
  Anzahl                       := 0;
  SymbolS[1]  := Tx(392);                             {Kreis, offen    }
  SymbolS[2]  := Tx(393);                             {Kreis, gefüllt  }
  SymbolS[3]  := Tx(394);                             {Quadrat, offen  }
  SymbolS[4]  := Tx(395);                             {Quadrat, gefüllt}
  SymbolS[5]  := Tx(396);                             {Dreieck, offen  }
  SymbolS[6]  := Tx(397);                             {Dreieck, gefüllt}
  SymbolS[7]  := Tx(398);                             {Raute, offen    }
  SymbolS[8]  := Tx(399);                             {Raute, gefüllt  }
  SymbolS[9]  := '       +        ';
  SymbolS[10] := '       x        ';
  for i := 1 to 10 do ListBoxSymbol.Items.Add (SymbolS[i]);
  Anzahl  := 0;
  MaskEditRegel.SetFocus;
  LabelLoeschen.Caption          := Tx(1257);
end;

procedure TForm39.MaskEditRegelKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(13) then
  begin
    Regels := MaskEditRegel.Text;
    LeerLoeschen (RegelS);
    if RegelS = '' then exit;
    Regel := StrToInt(RegelS);
    if regel <= 100 then
    begin
      MaskEditZylind.Enabled := true;
      MaskEditZylind.SetFocus;
      MaskEditRegel.Enabled := false;
    end
    else
    begin
      MaskEditRegel.Clear;
      MaskEditRegel.SetFocus;
    end;
  end;
end;

procedure TForm39.MaskEditZylindKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(13) then
  begin
    ZylindrizS := MaskEditZylind.Text;
    LeerLoeschen (ZylindrizS);
    if ZylindrizS = '' then exit;
    Zylin := StrToInt(ZylindrizS);
    if Zylin <= 100 then
    begin
      ListBoxSymbol.Enabled := true;
      ListboxSymbol.SetFocus;
      MaskEditZylind.Enabled := false;
    end
    else
    begin
      MaskEditZylind.Clear;
      MaskEditZylind.SetFocus;
    end;
  end;
end;

procedure TForm39.ListBoxSymbolKeyPress(Sender: TObject; var Key: Char);
var
  i          : word;
  ZeileS     : string[30];
begin
  if key = chr(13) then
  begin
    ButtonDateneingbeenden.Enabled := true;
    LabelAnzahl.Enabled            := true;
    MaskEditRegel.Enabled          := true;
    MaskEditRegel.SetFocus;
    inc (Anzahl);
    Label00000.Caption             := IntToStr(Anzahl);
    Regelung[Anzahl]               := Regel;
    Zylindrizitaet[Anzahl]         := Zylin;
    MaskEditRegel.Text  := '  ';
    MaskEditZylind.Text := '  ';
    for i := 0 to 9 do
      if ListboxSymbol.Selected[i] then Symbol[Anzahl] := i+1;
    RegelS := RightS('000'+IntToStr(Regelung[Anzahl]),3);
    ZylindrizS := RightS('000'+IntToStr(Zylindrizitaet[Anzahl]),3);
    ZeileS := RegelS+'   '+ZylindrizS+'   '+SymbolS[Symbol[Anzahl]];
    ListboxDaten.Items.Add(ZeileS);
    DateiZahl := 0;
    ListBoxSymbol.Enabled := false;
  end;
end;

procedure TForm39.ListBoxDatenClick(Sender: TObject);
var
  i        : word;
  Geloscht : word;
  RegelNeu : array of word;
  ZylNeu   : array of shortint;
  SymNeu   : array of byte;
begin
  Setlength (RegelNeu,Anzahl+1);
  Setlength (ZylNeu, Anzahl+1);
  Setlength (SymNeu, Anzahl+1);
  Geloscht := 0;
  for i := 1 to Anzahl do
  begin
    RegelNeu[i] := Regelung[i];
    ZylNeu[i]   := Zylindrizitaet[i];
    SymNeu[i]   := Symbol[i];
  end;
  for i := 0 to ListBoxDaten.Items.Count-1 do
  begin
    if ListBoxDaten.Selected[i] then
    begin
      Geloscht := i+1;
      ListBoxDaten.Items.Delete(i);
      break;
    end;
  end;
  for i := 1 to Geloscht-1 do
  begin
    Regelung[i]       := RegelNeu[i];
    Zylindrizitaet[i] := ZylNeu[i];
    Symbol[i]         := SymNeu[i];
  end;
  for i:= Geloscht to Anzahl-1 do
  begin
    Regelung[i]       := RegelNeu[i+1];
    Zylindrizitaet[i] := ZylNeu[i+1];
    Symbol[i]         := SymNeu[i];
  end;
  Anzahl := Anzahl - 1;
  Label00000.Caption := IntToStr(Anzahl);
  MaskEditRegel.SetFocus;
  RegelNeu := nil;
  ZylNeu   := nil;
  SymNeu   := nil;
end;

procedure TForm39.ButtonDateneingbeendenClick(Sender: TObject);
begin
  Datenspeichern1.Enabled := true;
  Drucker1.Enabled        := true;
  Buttonplotten.Enabled   := true;
  ZahlGlob                := Anzahl;
  SpeedDrucken.Enabled    := true;
  SpeedDatenF.Enabled     := true;
  SpeedWinWord.Enabled    := true;
  SpeedEinrichten.Enabled := true;
end;

procedure TForm39.ButtonzurueckClick(Sender: TObject);
begin
  Regelung       := Nil;
  Zylindrizitaet := Nil;
  Symbol         := Nil;
  Form39.Close;
end;

procedure TForm39.ButtonbeendenClick(Sender: TObject);
begin
  Regelung       := Nil;
  Zylindrizitaet := Nil;
  Symbol         := Nil;
  Form39.Close;
  Form38.Close;
  SetCurrentDir(DirectS);
end;

procedure TForm39.ButtonplottenClick(Sender: TObject);
begin
  Form41.Show;
end;

procedure TForm39.speichernDClick(Sender: TObject);
begin
  if CurrentFile <> '' then Schreiben (CurrentFile, Anzahl,
    Regelung, Zylindrizitaet, Symbol)
   else speichernDUnterClick(Sender);
end;

procedure TForm39.speichernDUnterClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := ExtenS;
  SaveDialog1.Filter := 'R-G diagrams (*.rgd)|*.RGD';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    Schreiben (CurrentFile, Anzahl, Regelung, Zylindrizitaet,
               Symbol)
  end;
end;

procedure TForm39.Druckereinrichten1Click(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TForm39.SpeedEinrichtenClick(Sender: TObject);
begin
  DruckerEinrichten1Click(Sender);
end;

procedure TForm39.drucken1Click(Sender: TObject);
begin
  Datnam (DateiNameS[0], 'RGD');
  DateiZahl := 0;
  Druck (Anzahl, Regelung, Zylindrizitaet, Symbol);
end;

procedure TForm39.Hilfe1Click(Sender: TObject);
var
  DateiS      : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\39RG-man.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\39Rg-man.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm39.SpeedDatenFClick(Sender: TObject);
begin
  speichernDUnterClick(Sender);
end;

procedure TForm39.SpeedDruckenClick(Sender: TObject);
begin
  drucken1Click(Sender);
end;

procedure TForm39.SpeedHilfeClick(Sender: TObject);
begin
  Hilfe1Click(Sender);
end;

procedure TForm39.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'R-G-Diagramm.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'R-G_diagram.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm39.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm39.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm39.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

procedure TForm39.WinWordClick(Sender: TObject);
begin
  Datnam (DateiNameS[0], 'RGD');
  DateiZahl := 0;
  SaveDialog1.DefaultExt := 'rtf';
  SaveDialog1.Filter     := 'rtf';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    WinDruck (CurrentFile, Anzahl, Regelung, Zylindrizitaet,
              Symbol);
  end;            
end;

procedure TForm39.SpeedWinWordClick(Sender: TObject);
begin
  WinWordClick(Sender);
end;

end.
