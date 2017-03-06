unit Unit49;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, ExtCtrls, StdCtrls, Mask, Menus, Globvar,
  Einausga, Drucken, Fourier, Basic, Texte, ComCtrls, Buttons,
  Shellapi, Standard, ehsHelpRouter;

type
  TForm49 = class(TForm)
    Panel1         : TPanel;
    LabelInversion : TLabel;
    LabelVergenz   : TLabel;
    LabelXY        : TLabel;
    Labeleingeben  : TLabel;

    Panel2        : TPanel;
    ListBoxDaten  : TListBox;
    LabelDaten    : TLabel;
    LabelVergenzw : TLabel;
    Label1P       : TLabel;
    Label2P       : TLabel;
    Label3P       : TLabel;

    Panel3      : TPanel;
    LabelAnzahl : TLabel;
    Label00000  : TLabel;

    GroupBoxEingabe : TGroupBox;
    MaskEdit1X      : TMaskEdit;
    MaskEdit1Y      : TMaskEdit;
    MaskEdit2X      : TMaskEdit;
    MaskEdit2Y      : TMaskEdit;
    MaskEdit3X      : TMaskEdit;
    MaskEdit3Y      : TMaskEdit;
    LabelP1         : TLabel;
    LabelP2         : TLabel;
    LabelP3         : TLabel;
    LabelX          : TLabel;
    LabelY          : TLabel;
    LabelVergenzwi  : TLabel;
    MaskEditVergenz : TMaskEdit;

    Buttonzurueck  : TButton;
    Buttonbeenden  : TButton;
    Buttonplotten  : TButton;
    ButtonDbeenden : TButton;
    ButtonStart    : TButton;

    MainMenu1: TMainMenu;

    Datenspeichern1 : TMenuItem;
    speichernD: TMenuItem;
    speichernDUnter: TMenuItem;

    Drucker1            : TMenuItem;
    Druckereinrichten1  : TMenuItem;
    drucken1            : TMenuItem;
    PrintDialog1        : TPrintDialog;
    PrinterSetupDialog1 : TPrinterSetupDialog;

    Hilfe1: TMenuItem;

    StatusBar: TStatusBar;

    Panel4       : TPanel;
    SpeedDatenF  : TSpeedButton;
    SpeedDrucken : TSpeedButton;
    SpeedHilfe   : TSpeedButton;
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

    {Drucker}
    procedure drucken1Click(Sender: TObject);
    procedure Druckereinrichten1Click(Sender: TObject);

    {Daten speichern}
    procedure speichernDClick(Sender: TObject);
    procedure speichernDUnterClick(Sender: TObject);
    
    procedure ButtonplottenClick(Sender: TObject);
    procedure ButtonbeendenClick(Sender: TObject);
    procedure ButtonzurueckClick(Sender: TObject);
    procedure ButtonDbeendenClick(Sender: TObject);
    procedure ButtonStartClick(Sender: TObject);

    procedure Hilfe1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure MaskEditVergenzKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit1XKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit1YKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit2XKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit2YKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit3XKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit3YKeyPress(Sender: TObject; var Key: Char);
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
  Form49      : TForm49;
  NameS, DatS : string;
  Anzahl      : word;
  VergenzS    : string;
  X1FouS      : string;
  X2FouS      : string;
  X3FouS      : string;
  Y1FouS      : string;
  Y2FouS      : string;
  Y3FouS      : string;

implementation
uses Unit48, Unit50, Unit51;
{$R *.DFM}

procedure TForm49.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm49.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm49.FormActivate(Sender: TObject);
begin
  Left   := 140;
  Top    := 80;
  Width  := 830;
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
  LabelMaxDat.Caption           := Tx(981);
  LabelMenge.Caption            := Inttostr(MaxDaten);
  PanelMaxDat.Hint              := Hilf(268);
  Form49.Caption                := Tx(755);   {Fabric7: Fourier-Analyse von}
  Panel3.Hint                   := Hilf(20);
  GroupBoxEingabe.Hint          := Hilf(132);
  MaskEditVergenz.Hint          := Hilf(133);
  MaskEdit1X.Hint               := Hilf(134);
  MaskEdit1Y.Hint               := Hilf(135);
  MaskEdit2X.Hint               := Hilf(136);
  MaskEdit2Y.Hint               := Hilf(137);
  MaskEdit3X.Hint               := Hilf(138);
  MaskEdit3Y.Hint               := Hilf(139);
  ListBoxDaten.Hint             := Hilf(53);
  Panel2.Hint                   := Hilf(53);
  ButtonStart.Hint              := Hilf(50);
  ButtonDbeenden.Hint           := Hilf(26);
  Buttonplotten.Hint            := Hilf(51);
  Buttonzurueck.Hint            := Hilf(140);
  Buttonbeenden.Hint            := Hilf(30);
  SpeedDatenF.Hint              := Hilf(204);
  SpeedDrucken.Hint             := Hilf(203);
  SpeedHilfe.Hint               := Hilf(210);
  SpeedHandbuch.Hint            := Hilf(274);
  SpeedEinrichten.Hint          := Hilf(505);
  Datenspeichern1.Caption       := Tx(86);    {&Daten speichern}
  speichernD.Caption            := Tx(87);    {speichern}
  speichernDUnter.Caption       := Tx(88);    {speichern unter}
  Drucker1.Caption              := Tx(92);
  drucken1.Caption              := Tx(93);
  DruckerEinrichten1.Caption    := Tx(94);
  Hilfe1.Caption                := Tx(162)+' (F1)';
  LabelInversion.Caption        := Tx(756);   {Falten-Inversion in den Koord}
  LabelVergenz.Caption          := Tx(757);   {Vergenz nach rechts positiv,}
  LabelXy.Caption               := Tx(758);   {X- und Y-Koordinaten von drei }
  Labeleingeben.Caption         := Tx(759);   {eingeben, der 3. Punkt muﬂ im }
  LabelDaten.Caption            := Tx(183);   {Daten:}
  Label1P.Caption               := Tx(760);   {1. Punkt:}
  Label2P.Caption               := Tx(761);   {2. Punkt:}
  Label3P.Caption               := Tx(762);   {3. Punkt:}
  ButtonDbeenden.Caption        := Tx(182);   {Dateneingabe beenden}
  Buttonplotten.Caption         := Tx(241);
  Buttonzurueck.Caption         := Tx(30);
  Buttonbeenden.Caption         := Tx(53);
  GroupBoxEingabe.Caption       := Tx(77);    {Dateneingabe}
  LabelP1.Caption               := Tx(763);   {1. Punkt}
  LabelP2.Caption               := Tx(764);   {2. Punkt}
  LabelP3.Caption               := Tx(765);   {3. Punkt}
  LabelVergenzwi.Caption        := Tx(766);   {Vergenz:}
  LabelX.Caption                := Tx(687);   {X:}
  LabelY.Caption                := Tx(688);   {Y:}
  LabelAnzahl.Caption           := Tx(138);
  DatS                     := 'FOU';
  ExtenS                   := 'FOU';  
  LabelDaten.Enabled       := false;
  LabelAnzahl.Enabled      := false;
  Label00000.Caption       := '';
  MaskEditVergenz.EditMask := '#99;0; ';
  MaskEdit1X.EditMask      := '9999;0; ';
  MaskEdit1Y.EditMask      := '9999;0; ';
  MaskEdit2X.EditMask      := '9999;0; ';
  MaskEdit2Y.EditMask      := '9999;0; ';
  MaskEdit3X.EditMask      := '9999;0; ';
  MaskEdit3Y.EditMask      := '9999;0; ';
  GroupBoxEingabe.Caption  := '';
  Label1P.Enabled          := false;
  Label2P.Enabled          := false;
  Label3P.Enabled          := false;
  LabelVergenzW.Enabled    := false;
  LabelP1.Enabled          := false;
  LabelP2.Enabled          := false;
  LabelP3.Enabled          := false;
  LabelVergenzwi.Enabled   := false;
  LabelX.Enabled           := false;
  LabelY.Enabled           := false;
  Datenspeichern1.Enabled  := false;
  Drucker1.Enabled         := false;
  Buttonzurueck.Enabled    := false;
  Buttonbeenden.Enabled    := false;
  Buttonplotten.Enabled    := false;
  ButtonDbeenden.Enabled   := false;
  Anzahl                   := 0;
  Handbuch.Caption         := Tx(1055)+' (F2)';
  Literatur.Caption        := Tx(1183)+' (F5)';
  SpeedLiteratur.Hint      := Hilf(462);
  SpeedDatenF.Enabled      := false;
  SpeedDrucken.Enabled     := false;
  MaskEditVergenz.Enabled  := false;
  MaskEdit1X.Enabled       := false;
  MaskEdit1Y.Enabled       := false;
  MaskEdit2X.Enabled       := false;
  MaskEdit2Y.Enabled       := false;
  MaskEdit3X.Enabled       := false;
  MaskEdit3Y.Enabled       := false;
  WinWord.Caption          := Tx(1207);
  SpeedWinWord.Hint        := Hilf(470);
  SpeedWinWord.Enabled     := false;
  LabelLoeschen.Caption    := Tx(1257);
  LabelLoeschen.Visible    := false;
  SpeedEinrichten.Enabled  := false;
end;

procedure TForm49.ButtonStartClick(Sender: TObject);
begin
//showmessage('hier');
  ListBoxDaten.Clear;
  MaskEditVergenz.Text     := '   ';
  MaskEdit1X.Text          := '    ';
  MaskEdit1Y.Text          := '    ';
  MaskEdit2X.Text          := '    ';
  MaskEdit2Y.Text          := '    ';
  MaskEdit3X.Text          := '    ';
  MaskEdit3Y.Text          := '    ';
  Buttonzurueck.Enabled    := true;
  Buttonbeenden.Enabled    := true;
  LabelAnzahl.Enabled      := true;
  Label00000.Caption       := '';
  GroupBoxEingabe.Caption  := Tx(77);                      {Dateneingabe:}
  LabelP1.Enabled          := true;
  LabelP2.Enabled          := true;
  LabelP3.Enabled          := true;
  LabelVergenzwi.Enabled   := true;
  LabelDaten.Enabled       := true;
  Label1P.Enabled          := true;
  Label2P.Enabled          := true;
  Label3P.Enabled          := true;
  LabelVergenzW.Enabled    := true;
  LabelX.Enabled           := true;
  LabelY.Enabled           := true;
  LabelAnzahl.Enabled      := true;
  Anzahl                   := 0;
  MaskEditVergenz.Enabled  := true;
  MaskEditVergenz.SetFocus;
  LabelLoeschen.Visible    := true; 
end;

procedure TForm49.MaskEditVergenzKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(13) then
  begin
    VergenzS := MaskEditVergenz.Text;
    LeerLoeschen (VergenzS);
    if VergenzS = '' then exit;
    MaskEdit1X.Enabled := true;
    MaskEdit1X.SetFocus;
    MaskEditVergenz.Enabled := false;
  end;
end;

procedure TForm49.MaskEdit1XKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(13) then
  begin
    X1FouS := MaskEdit1X.Text;
    LeerLoeschen (X1FouS);
    if X1FouS = '' then exit;
    MaskEdit1Y.Enabled := true;
    MaskEdit1Y.SetFocus;
    MaskEdit1X.Enabled := false;
    MaskEdit1Y.SetFocus;
  end;
end;

procedure TForm49.MaskEdit1YKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(13) then
  begin
    Y1FouS := MaskEdit1Y.Text;
    LeerLoeschen (Y1FouS);
    if Y1FouS = '' then exit;
    MaskEdit2X.Enabled := true;
    MaskEdit2X.SetFocus;
    MaskEdit1Y.Enabled := false;
  end;
end;

procedure TForm49.MaskEdit2XKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(13) then
  begin
    X2FouS := MaskEdit2X.Text;
    LeerLoeschen (X2FouS);
    if X2FouS = '' then exit;
    MaskEdit2Y.Enabled := true;
    MaskEdit2Y.SetFocus;
    MaskEdit2X.Enabled := false;
  end;
end;

procedure TForm49.MaskEdit2YKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(13) then
  begin
    Y2FouS := MaskEdit2Y.Text;
    LeerLoeschen (Y2FouS);
    if Y2FouS = '' then exit;
    MaskEdit3X.Enabled := true;
    MaskEdit3X.SetFocus;
    MaskEdit2Y.Enabled := false;
  end;
end;

procedure TForm49.MaskEdit3XKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(13) then
  begin
    X3FouS := MaskEdit3X.Text;
    LeerLoeschen (X3FouS);
    if X3FouS = '' then exit;
    MaskEdit3Y.Enabled := true;
    MaskEdit3Y.SetFocus;
    MaskEdit3X.Enabled := false;
  end;
end;

procedure TForm49.MaskEdit3YKeyPress(Sender: TObject; var Key: Char);
var
  ZeileS   : string[60];
  X1S, X2S : string;
  X3S, Y1S : string;
  Y2S, Y3S : string;
begin
  if key = chr(13) then
  begin
    Y3FouS := MaskEdit3Y.Text;
    LeerLoeschen (Y3FouS);
    if Y3FouS = '' then exit;
    MaskEditVergenz.Enabled := true;
    MaskEditVergenz.SetFocus;
    MaskEdit3Y.Enabled := false;
    ButtonDbeenden.Enabled := true;
    LabelAnzahl.Enabled    := true;
    X1S      := X1FouS;
    X2S      := X2FouS;
    X3S      := X3FouS;
    Y1S      := Y1FouS;
    Y2S      := Y2FouS;
    Y3S      := Y3FouS;
    inc(Anzahl);
    Label00000.Caption     := IntToStr(Anzahl);
    if VergenzS = '' then Vergenz[Anzahl] := 0
    else Vergenz[Anzahl] := StrToInt(VergenzS);
    X1Fou[Anzahl]          := StrToInt(X1S);
    X2Fou[Anzahl]          := StrToInt(X2S);
    X3Fou[Anzahl]          := StrToInt(X3S);
    Y1Fou[Anzahl]          := StrToInt(Y1S);
    Y2Fou[Anzahl]          := StrToInt(Y2S);
    Y3Fou[Anzahl]          := StrToInt(Y3S);
    MaskEdit1X.Text  := '    ';
    MaskEdit2X.Text  := '    ';
    MaskEdit3X.Text  := '    ';
    MaskEdit1Y.Text  := '    ';
    MaskEdit2Y.Text  := '    ';
    MaskEdit3Y.Text  := '    ';
    MaskEditVergenz.Text := '   ';
    X1FouS   := RightS('0000'+IntToStr(X1Fou[Anzahl]),4);
    X2FouS   := RightS('0000'+IntToStr(X2Fou[Anzahl]),4);
    X3FouS   := RightS('0000'+IntToStr(X3Fou[Anzahl]),4);
    Y1FouS   := RightS('0000'+IntToStr(Y1Fou[Anzahl]),4);
    Y2FouS   := RightS('0000'+IntToStr(Y2Fou[Anzahl]),4);
    Y3FouS   := RightS('0000'+IntToStr(Y3Fou[Anzahl]),4);
    VergenzS := RightS('+00'+IntToStr(Vergenz[Anzahl]),3);
    ZeileS   := VergenzS+'  '+X1FouS+','+Y1FouS+'  '+X2FouS+','+Y2FouS+'   '
                +X3FouS+','+Y3FouS;
    ListboxDaten.Items.Add(ZeileS);
    DateiZahl := 0;
  end;
end;

procedure TForm49.ListBoxDatenClick(Sender: TObject);
var
  i        : word;
  Geloscht : word;
  X1Neu    : array of integer;
  Y1Neu    : array of integer;
  X2Neu    : array of integer;
  Y2Neu    : array of integer;
  X3Neu    : array of integer;
  Y3Neu    : array of integer;
  VerNeu   : array of integer;
begin
  Setlength (X1Neu, Anzahl+1);
  Setlength (Y1Neu, Anzahl+1);
  Setlength (X2Neu, Anzahl+1);
  Setlength (Y2Neu, Anzahl+1);
  Setlength (X3Neu, Anzahl+1);
  Setlength (Y3Neu, Anzahl+1);
  Setlength (Verneu, Anzahl+1);
  Geloscht := 0;
  for i := 1 to Anzahl do
  begin
    X1Neu[i]  := X1Fou[i];
    Y1Neu[i]  := Y1Fou[i];
    X2Neu[i]  := X2Fou[i];
    Y2Neu[i]  := Y2Fou[i];
    X3Neu[i]  := X3Fou[i];
    Y3Neu[i]  := Y3Fou[i];
    VerNeu[i] := Vergenz[i];
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
    X1Fou[i]   := X1Neu[i];
    Y1Fou[i]   := Y1Neu[i];
    X2Fou[i]   := X2Neu[i];
    Y2Fou[i]   := Y2Neu[i];
    X3Fou[i]   := X3Neu[i];
    Y3Fou[i]   := Y3Neu[i];
    Vergenz[i] := VerNeu[i];
  end;
  for i:= Geloscht to Anzahl-1 do
  begin
    X1Fou[i]   := X1Neu[i+1];
    Y1Fou[i]   := Y1Neu[i+1];
    X2Fou[i]   := X2Neu[i+1];
    Y2Fou[i]   := Y2Neu[i+1];
    X3Fou[i]   := X3Neu[i+1];
    Y3Fou[i]   := Y3Neu[i+1];
    Vergenz[i] := VerNeu[i+1];
  end;
  Anzahl := Anzahl - 1;
  Label00000.Caption := IntToStr(Anzahl);
  MaskEditVergenz.SetFocus;
  X1Neu  := nil;
  Y1Neu  := nil;
  X2Neu  := nil;
  Y2Neu  := nil;
  X3Neu  := nil;
  Y3Neu  := nil;
  VerNeu := nil;
end;


procedure TForm49.ButtonDbeendenClick(Sender: TObject);
begin
  Datenspeichern1.Enabled := true;
  Drucker1.Enabled        := true;
  SpeedDatenF.Enabled     := true;
  SpeedDrucken.Enabled    := true;
  SpeedWinWord.Enabled    := true;
  Buttonplotten.Enabled   := true;
  SpeedEinrichten.Enabled := true;
  ZahlGlob                := Anzahl;
  FBerechnen (ZahlGlob, X1Fou ,X2Fou, X3Fou, Y1Fou, Y2Fou,
              Y3Fou, Vergenz, B1Fou, B3Fou, B5Fou);
end;

procedure TForm49.ButtonbeendenClick(Sender: TObject);
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
  Form49.Close;
  Form48.Close;
  SetCurrentDir(DirectS);
end;

procedure TForm49.ButtonzurueckClick(Sender: TObject);
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
  Form49.Close;
end;

procedure TForm49.ButtonplottenClick(Sender: TObject);
begin
  Form51.Show;
end;

procedure TForm49.Druckereinrichten1Click(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TForm49.SpeedEinrichtenClick(Sender: TObject);
begin
  DruckerEinrichten1Click(Sender);
end;

procedure TForm49.drucken1Click(Sender: TObject);
begin
  Datnam (DateiNameS[0], 'FOU');
  DateiZahl := 0;
  Fdrucken (Anzahl, Vergenz, X1Fou, Y1Fou, X2Fou, Y2Fou,
            X3Fou, Y3Fou, B1Fou, B3Fou, B5Fou);
end;

procedure TForm49.speichernDClick(Sender: TObject);
begin
  if CurrentFile <> '' then Fschreiben (CurrentFile, ZahlGlob,
    Vergenz, X1Fou, X2Fou, X3Fou, Y1Fou, Y2Fou, Y3Fou)
  else speichernDUnterClick(Sender);
end;

procedure TForm49.speichernDUnterClick(Sender: TObject);
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

procedure TForm49.Hilfe1Click(Sender: TObject);
var
  DateiS      : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\49Fourier-man.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\49Fourier-man.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm49.SpeedDatenFClick(Sender: TObject);
begin
  speichernDUnterClick(Sender);
end;

procedure TForm49.SpeedDruckenClick(Sender: TObject);
begin
  drucken1Click(Sender);
end;

procedure TForm49.SpeedHilfeClick(Sender: TObject);
begin
  Hilfe1Click(Sender);
end;

procedure TForm49.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Fourier-Analyse.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'Fourier_analysis-E.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm49.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm49.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm49.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

procedure TForm49.WinWordClick(Sender: TObject);
begin
  Datnam (DateiNameS[0], 'FOU');
  DateiZahl := 0;
  SaveDialog1.DefaultExt := 'rtf';
  SaveDialog1.Filter     := 'rtf';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    WinFdrucken (CurrentFile, Anzahl, Vergenz, X1Fou, Y1Fou, X2Fou, Y2Fou,
                 X3Fou, Y3Fou, B1Fou, B3Fou, B5Fou);
  end;
end;

procedure TForm49.SpeedWinWordClick(Sender: TObject);
begin
  WinWordClick(Sender);
end;

end.
