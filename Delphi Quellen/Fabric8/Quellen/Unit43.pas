unit Unit43;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Menus, Mask, Einausga, Globvar, Woodprog, Basic, Drucken,
  Texte, ComCtrls, Buttons, Shellapi, Standard, ehsHelprouter;

type
  TForm43 = class(TForm)
    Panel1          : TPanel;
    LabelEigenwerte : TLabel;
    LabelLambda     : TLabel;
    LabelNachkomma  : TLabel;

    Panel2       : TPanel;
    LabelDaten   : TLabel;
    ListBoxDaten : TListBox;
    LabelDLambda : TLabel;

    Panel3      : TPanel;
    LabelAnzahl : TLabel;
    Label00000  : TLabel;

    GroupBoxEingabe : TGroupBox;
    LabelL1         : TLabel;
    LabelL3         : TLabel;
    MaskEditL1      : TMaskEdit;
    MaskEditL3      : TMaskEdit;
    Label01         : TLabel;
    Label03         : TLabel;
    LabelSumme      : TLabel;

    ButtonStart    : TButton;
    ButtonDbeenden : TButton;
    Buttonplotten  : TButton;
    Buttonzurueck  : TButton;
    Buttonbeenden  : TButton;

    MainMenu1: TMainMenu;

    Drucker1           : TMenuItem;
    Druckereinrichten1 : TMenuItem;
    drucken1           : TMenuItem;

    Hilfe1: TMenuItem;

    Datenspeichern1     : TMenuItem;
    speichernD: TMenuItem;
    speichernDUnter: TMenuItem;
    PrintDialog1        : TPrintDialog;
    PrinterSetupDialog1 : TPrinterSetupDialog;
    StatusBar           : TStatusBar;

    Panel4       : TPanel;
    SpeedDatenF  : TSpeedButton;
    SpeedHilfe   : TSpeedButton;
    SpeedDrucken : TSpeedButton;

    PanelMaxDat : TPanel;
    LabelMaxDat : TLabel;
    LabelMenge  : TLabel;
    Handbuch: TMenuItem;
    SaveDialog1: TSaveDialog;
    LabelDemo: TLabel;
    SpeedHandbuch: TSpeedButton;
    Literatur: TMenuItem;
    SpeedLiteratur: TSpeedButton;
    WinWord: TMenuItem;
    SpeedWinWord: TSpeedButton;
    LabelZahl: TLabel;
    LabelderDaten: TLabel;
    MaskEditZahl: TMaskEdit;
    LabelN: TLabel;
    LabelLoeschen: TLabel;
    SpeedEinrichten: TSpeedButton;

    procedure FormActivate(Sender: TObject);

    {Daten speichern}
    procedure speichernDClick(Sender: TObject);
    procedure speichernDUnterClick(Sender: TObject);

    procedure ButtonStartClick(Sender: TObject);
    procedure ButtonDbeendenClick(Sender: TObject);
    procedure ButtonplottenClick(Sender: TObject);
    procedure ButtonzurueckClick(Sender: TObject);
    procedure ButtonbeendenClick(Sender: TObject);

    procedure Druckereinrichten1Click(Sender: TObject);
    procedure drucken1Click(Sender: TObject);
    procedure MaskEditL3KeyPress(Sender: TObject; var Key: Char);
    procedure Hilfe1Click(Sender: TObject);
    procedure ShowHint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedDatenFClick(Sender: TObject);
    procedure SpeedDruckenClick(Sender: TObject);
    procedure SpeedHilfeClick(Sender: TObject);
    procedure MaskEditL1KeyPress(Sender: TObject; var Key: Char);
    procedure HandbuchClick(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
    procedure SpeedLiteraturClick(Sender: TObject);
    procedure WinWordClick(Sender: TObject);
    procedure SpeedWinWordClick(Sender: TObject);
    procedure MaskEditZahlKeyPress(Sender: TObject; var Key: Char);
    procedure ListBoxDatenClick(Sender: TObject);
    procedure SpeedEinrichtenClick(Sender: TObject);
  end;

var
  Form43   : TForm43;
  NameS    : string;
  Dats     : string;
  Anzahl   : word;
  Lambda1S : string;
  Lambda2S : string;
  Lambda3S : string;
  iZahl    : word;

implementation
uses Unit42, Unit45, Unit46, Unit47, Unit76, Unit77;
{$R *.DFM}

procedure TForm43.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm43.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm43.FormActivate(Sender: TObject);
begin
  Left   := LeftDiag + ULap;
  Top    := TopDiag + ULap;
  Width  := WidForm;
  Height := HeiForm;
  setlength (Lambda1, MaxDaten);
  setlength (Lambda2, MaxDaten);
  setlength (Lambda3, MaxDaten);
  setlength (ZahlEinzel, MaxDaten);
  LabelDemo.Visible                := false;
  if DemoB then LabelDemo.Visible  := true;
  LabelMaxDat.Caption        := Tx(981);
  LabelMenge.Caption         := Inttostr(MaxDaten);
  PanelMaxDat.Hint           := Hilf(268);
  if Programm = 13 then Form43.Caption := Tx(739); {Fabric8: Woodcock-Diagramm}
  if Programm = 16 then Form43.Caption := Tx(1509);
  if Programm = 25 then Form43.Caption := Tx(1516);
  Panel3.Hint                := Hilf(20);
  GroupBoxEingabe.Hint       := Hilf(146);
  LabelL1.Hint               := Hilf(147);
  MaskEditL1.Hint            := Hilf(147);
  LabelL3.Hint               := Hilf(149);
  MaskEditL3.Hint            := Hilf(149);
  ListBoxDaten.Hint          := Hilf(53);
  LabelDaten.Hint            := Hilf(53);
  LabelLambda.Hint           := Hilf(53);
  ButtonStart.Hint           := Hilf(50);
  ButtonDbeenden.Hint        := Hilf(26);
  Buttonplotten.Hint         := Hilf(51);
  Buttonzurueck.Hint         := Hilf(151);
  Buttonbeenden.Hint         := Hilf(30);
  SpeedDrucken.Hint          := Hilf(203);
  SpeedDatenF.Hint           := Hilf(204);
  SpeedHilfe.Hint            := Hilf(210);
  SpeedHandbuch.Hint         := Hilf(274);
  SpeedEinrichten.Hint       := Hilf(505);
  Datenspeichern1.Caption    := Tx(86);    {&Daten speichern}
  speichernD.Caption         := Tx(87);    {speichern}
  speichernDUnter.Caption    := Tx(88);    {speichern unter}
  Drucker1.Caption           := Tx(92);
  drucken1.Caption           := Tx(93);
  DruckerEinrichten1.Caption := Tx(94);
  Hilfe1.Caption             := Tx(162)+' (F1)';
  LabelEigenwerte.Caption    := Tx(740);   {Eigenwerte eingeben:}
  LabelNachkomma.Caption     := Tx(741);   {nur Nachkomma-Stellen eingeben}
  LabelDaten.Caption         := Tx(183);   {Daten:}
  LabelAnzahl.Caption        := Tx(138);   {Anzahl:}
  GroupBoxEingabe.Caption    := Tx(77);    {Dateneingabe}
  LabelSumme.Caption         := Tx(742);   {Summe ist falsch!}
  Buttonzurueck.Caption      := Tx(30);
  Buttonbeenden.Caption      := Tx(53);
  ButtonDbeenden.Caption     := Tx(182);
  ButtonPlotten.Caption      := Tx(726);   {plotten}
  DatS                       := 'WOO';
  ExtenS                     := 'WOO';
  LabelDLambda.Enabled       := false;
  LabelDaten.Enabled         := false;
  LabelAnzahl.Enabled        := false;
  Buttonzurueck.Enabled      := false;
  Buttonbeenden.Enabled      := false;
  SpeedDrucken.Enabled       := false;
  SpeedDatenF.Enabled        := false;
  Label00000.Caption      := '';
  MaskEditL1.EditMask     := '999;0; ';
  MaskEditL3.EditMask     := '999;0; ';
  MaskEditL1.Text         := '   ';
  MaskEditL3.Text         := '   ';
  MaskEditZahl.EditMask   := '9999;0; ';
  MaskEditZahl.Text       := '    ';
  GroupBoxEingabe.Caption := '';
  LabelL1.Enabled         := false;
  LabelL3.Enabled         := false;
  Datenspeichern1.Enabled := false;
  Drucker1.Enabled        := false;
  Buttonplotten.Enabled   := false;
  ButtonDbeenden.Enabled  := false;
  Label01.Enabled         := false;
  Label03.Enabled         := false;
  LabelSumme.Caption      := '';
  Anzahl := 0;
  Handbuch.Caption        := Tx(1055)+' (F2)';
  Literatur.Caption       := Tx(1183)+' (F5)';
  SpeedLiteratur.Hint     := Hilf(462);
  MaskEditL1.Enabled      := false;
  MaskEditL3.Enabled      := false;
  WinWord.Caption         := Tx(1207);
  SpeedWinWord.Hint       := Hilf(470);
  SpeedWinWord.Enabled    := false;
  LabelZahl.Caption       := Tx(1221);
  LabelderDaten.Caption   := Tx(1222);
  LabelN.Caption          := Tx(1221)+':';
  LabelZahl.Enabled       := false;
  LabelderDaten.Enabled   := false;
  LabelLoeschen.Caption   := Tx(1257);
  LabelLoeschen.Visible   := false;
  Speedeinrichten.Enabled := false;
end;

procedure TForm43.ButtonStartClick(Sender: TObject);
begin
  iZahl                   := 0;
  LabelSumme.Caption      := '';
  GroupBoxEingabe.Caption := Tx(77);                       {Dateneingabe:}
  ListBoxDaten.Clear;
  Buttonzurueck.Enabled   := true;
  Buttonbeenden.Enabled   := true;
  LabelL1.Enabled         := true;
  LabelL3.Enabled         := true;
  LabelDaten.Enabled      := true;
  Label01.Enabled         := true;
  Label03.Enabled         := true;
  LabelLambda.Enabled     := true;
  LabelAnzahl.Enabled     := true;
  LabelDLambda.Enabled    := true;
  LabelZahl.Enabled       := true;
  LabelderDaten.Enabled   := true;
  MaskEditL1.Enabled      := true;
  MaskEditL1.SetFocus;
  LabelLoeschen.Visible   := true;
end;

procedure TForm43.MaskEditL1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = char(13) then
  begin
    Lambda1S := MaskEditL1.Text;
    LeerLoeschen (Lambda1S);
    if Lambda1S = '' then exit;
    MaskEditL3.Enabled := true;
    MaskEditL3.SetFocus;
    MaskEditL3.Clear;
    MaskEditL1.Enabled := false;
    LabelSumme.Caption := '';
  end;
end;

procedure TForm43.MaskEditL3KeyPress(Sender: TObject; var Key: Char);
var
  LS1,LS2,LS3 : string[5];
  L1, L2, L3  : real;
  Co          : integer;
begin
  if key = chr(13) then
  begin
    Lambda3S := MaskEditL3.Text;
    LeerLoeschen (Lambda3S);
    if Lambda3S = '' then exit;
    MaskEditL3.Enabled := false;
    LabelAnzahl.Enabled    := true;
    LS1 := Lambda1S;
    LS3 := Lambda3S;
    LS1 := '0.' + LS1;
    LS3 := '0.' + LS3;
    val (LS1, L1, Co);
    val (LS3, L3, Co);
    L2 := 1 - L1 - L3;
    LS2 := FloattoStr(L2);
    if (L1 >= 0.34) or (L2 < L1) or (L2 > L3) then
    begin
      LabelSumme.Caption := Tx(405); {Eingabe ist falsch}
      MaskEditZahl.Enabled := false;
      MaskEditL1.Enabled := true;
      MaskEditL1.Clear;
      MaskEditL3.Clear;
      MaskEditL1.SetFocus;
    end
    else
    begin
      LabelSumme.Caption := '';
      inc(Anzahl);
      Lambda1[Anzahl] := round(L1*1000);
      Lambda2[Anzahl] := round(L2*1000);
      Lambda3[Anzahl] := round(L3*1000);
      Label00000.Caption := IntToStr(Anzahl);
      MaskEditZahl.Enabled := true;
      MaskEditZahl.SetFocus;
    end;
    DateiZahl := 0;
    ButtonDbeenden.Enabled := true;
  end;
end;

procedure TForm43.MaskEditZahlKeyPress(Sender: TObject; var Key: Char);
var
  ZahlS  : string[4];
  ZeileS : string[40];
begin
  if key = chr(13) then
  begin
    inc(iZahl);
    ZahlEinzel[iZahl] := StrToInt(MaskEditZahl.Text);
    Lambda1S := '0.'+RightS('000'+IntToStr(Lambda1[iZahl]),3);
    Lambda2S := '0.'+RightS('000'+IntToStr(Lambda2[iZahl]),3);
    Lambda3S := '0.'+RightS('000'+IntToStr(Lambda3[iZahl]),3);
    ZahlS := RightS('    '+IntToStr(ZahlEinzel[iZahl]),4);
    ZeileS := '    '+Lambda1S+'   '+Lambda2S+'   '+Lambda3S+'   '+ZahlS;
    ListboxDaten.Items.Add(ZeileS);
    MaskEditL1.Clear;
    MaskEditL3.Clear;
    MaskEditZahl.Clear;
    MaskEditL1.Enabled := true;
    MaskEditL1.SetFocus;
  end;
end;

procedure TForm43.ListBoxDatenClick(Sender: TObject);
var
  i        : word;
  Geloscht : word;
  L1Neu    : array of word;
  L2Neu    : array of word;
  L3Neu    : array of word;
  ZaNeu    : array of word;
begin
  Setlength (L1Neu, Anzahl+1);
  Setlength (L2Neu, Anzahl+1);
  Setlength (L3Neu, Anzahl+1);
  Setlength (ZaNeu, Anzahl+1);
  Geloscht := 0;
  for i := 1 to Anzahl do
  begin
    L1Neu[i] := Lambda1[i];
    L2Neu[i] := Lambda2[i];
    L3Neu[i] := Lambda3[i];
    ZaNeu[i] := ZahlEinzel[i];
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
    Lambda1[i]    := L1Neu[i];
    Lambda2[i]    := L2Neu[i];
    Lambda3[i]    := L3Neu[i];
    ZahlEinzel[i] := ZaNeu[i];
  end;
  for i:= Geloscht to Anzahl-1 do
  begin
    Lambda1[i]    := L1Neu[i+1];
    Lambda2[i]    := L2Neu[i+1];
    Lambda3[i]    := L3Neu[i+1];
    ZahlEinzel[i] := ZaNeu[i+1];
  end;
  Anzahl := Anzahl - 1;
  Label00000.Caption := IntToStr(Anzahl);
  MaskEditL1.SetFocus;
  L1Neu := nil;
  L2Neu := nil;
  L3Neu := nil;
  ZaNeu := nil;
end;

procedure TForm43.ButtonzurueckClick(Sender: TObject);
begin
  Lambda1    := Nil;
  Lambda2    := Nil;
  Lambda3    := Nil;
  ZahlEinzel := Nil;
  Form43.Close;
end;

procedure TForm43.ButtonbeendenClick(Sender: TObject);
begin
  SetCurrentDir(DirectS);
  Lambda1    := Nil;
  Lambda2    := Nil;
  Lambda3    := Nil;
  ZahlEinzel := NIL;
  Form43.Close;
  if Programm = 13 then Form42.Close;
  if Programm = 25 then Form76.Close;
  if Programm = 16 then Form46.Close;
end;

procedure TForm43.ButtonDbeendenClick(Sender: TObject);
begin
  Datenspeichern1.Enabled := true;
  Drucker1.Enabled        := true;
  Buttonplotten.Enabled   := true;
  Datenspeichern1.Enabled := true;
  Drucker1.Enabled        := true;
  SpeedDrucken.Enabled    := true;
  SpeedDatenF.Enabled     := true;
  SpeedWinWord.Enabled    := true;
  SpeedEinrichten.Enabled := true;
  ZahlGlob := Anzahl;
end;

procedure TForm43.ButtonplottenClick(Sender: TObject);
begin
  if Programm = 13 then Form45.Show;
  if Programm = 16 then Form47.Show;
  if Programm = 25 then Form77.Show;
end;

procedure TForm43.speichernDClick(Sender: TObject);
begin
   if CurrentFile <> '' then WSchreiben (CurrentFile, Anzahl,
      Lambda1, Lambda2, Lambda3, ZahlEinzel)
   else speichernDUnterClick(Sender);
end;

procedure TForm43.speichernDUnterClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := ExtenS;
  SaveDialog1.Filter     := 'Eigenvalues (*.woo)|*.WOO';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    WSchreiben (CurrentFile, Anzahl, Lambda1, Lambda2,
                Lambda3, ZahlEinzel);
  end;
end;

procedure TForm43.Druckereinrichten1Click(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TForm43.SpeedEinrichtenClick(Sender: TObject);
begin
  DruckerEinrichten1Click(Sender);
end;

procedure TForm43.drucken1Click(Sender: TObject);
begin
  Datnam (DateiNameS[0], 'WOO');
  DateiZahl := 0;
  Wdrucken (Programm, DateiNameS[0], Anzahl, Lambda1,
            Lambda2, Lambda3);
end;

procedure TForm43.Hilfe1Click(Sender: TObject);
var
  DateiS      : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\43Woodcock-man.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\43Woodcock-man.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm43.SpeedDatenFClick(Sender: TObject);
begin
  speichernDUnterClick(Sender);
end;

procedure TForm43.SpeedDruckenClick(Sender: TObject);
begin
  drucken1Click(Sender);
end;

procedure TForm43.SpeedHilfeClick(Sender: TObject);
begin
  Hilfe1Click(Sender);
end;

procedure TForm43.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if Programm = 13 then
  begin
    if SpracheS = 'DEUTSCH' then HilfeS := 'Woodcock-Diagramm.doc';
    if SpracheS = 'ENGLISH' then HilfeS := 'Woodcock-Diagram-E.doc';
    ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
                 nil,nil,sw_normal);
  end;
  if Programm = 16 then
  begin
    if SpracheS = 'DEUTSCH' then HilfeS := 'Vollmer-Diagramm.doc';
    if SpracheS = 'ENGLISH' then HilfeS := 'Vollmer-diagram-E.doc';
    ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
                 nil,nil,sw_normal);
  end;
  if Programm = 25 then
  begin
    if SpracheS = 'DEUTSCH' then HilfeS := 'Signifikanztest.doc';
    if SpracheS = 'ENGLISH' then HilfeS := 'Test_of_Significance.doc';
    ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
                 nil,nil,sw_normal);
  end;
end;

procedure TForm43.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm43.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm43.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

procedure TForm43.WinWordClick(Sender: TObject);
begin
  Datnam (DateiNameS[0], 'WOO');
  DateiZahl := 0;
  SaveDialog1.DefaultExt := 'rtf';
  SaveDialog1.Filter     := 'rtf';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    WinWdrucken (CurrentFile, Programm, DateiNameS[0], Anzahl,
                 Lambda1, Lambda2, Lambda3);
  end;
end;

procedure TForm43.SpeedWinWordClick(Sender: TObject);
begin
  WinWordClick(Sender);
end;

end.
