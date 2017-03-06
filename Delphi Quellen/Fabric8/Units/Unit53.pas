unit Unit53;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, Menus, Globvar, Einausga, Drucken, Basic, Texte,
  ComCtrls, Buttons, Shellapi, Standard, ehsHelpRouter;

type
  TForm53 = class(TForm)
    Panel1         : TPanel;
    LabelScheitel  : TLabel;
    Labelbestimmen : TLabel;
    Labelgrenzen   : TLabel;
    Labelnurganze  : TLabel;

    Panel2     : TPanel;
    LabelDaten : TLabel;
    LabelT0    : TLabel;
    ListBoxDaten: TListBox;

    Panel3      : TPanel;
    LabelAnzahl : TLabel;
    Label00000  : TLabel;

    Buttonbeenden  : TButton;
    Buttonzurueck  : TButton;
    Buttonplotten  : TButton;
    ButtonDbeenden : TButton;
    ButtonStart    : TButton;

    MainMenu1: TMainMenu;

    GroupBoxDaten    : TGroupBox;
    LabelSch         : TLabel;
    MaskEditScheitel : TMaskEdit;

    LabelIsogonen : TLabel;
    Label10Grad   : TLabel;
    Label20Grad   : TLabel;
    Label30Grad   : TLabel;
    Label40Grad   : TLabel;
    Label50Grad   : TLabel;
    Label60Grad   : TLabel;
    Label70Grad   : TLabel;
    Label80Grad   : TLabel;
    Label90Grad   : TLabel;

    MaskEditIso10 : TMaskEdit;
    MaskEditIso20 : TMaskEdit;
    MaskEditIso30 : TMaskEdit;
    MaskEditIso50 : TMaskEdit;
    MaskEditIso60 : TMaskEdit;
    MaskEditIso70 : TMaskEdit;
    MaskEditIso80 : TMaskEdit;
    MaskEditIso40 : TMaskEdit;
    MaskEditIso90 : TMaskEdit;

    LabelTa  : TLabel;
    Labelal  : TLabel;
    LabelT2  : TLabel;
    Labelal2 : TLabel;
    LabelT3  : TLabel;
    Labela3  : TLabel;

    Datenspeichern1 : TMenuItem;
    speichernD: TMenuItem;
    speichernDUnter: TMenuItem;

    Drucker1            : TMenuItem;
    Druckereinrichten1  : TMenuItem;
    Drucken1            : TMenuItem;
    PrintDialog1        : TPrintDialog;
    PrinterSetupDialog1 : TPrinterSetupDialog;

    Hilfe1: TMenuItem;
    StatusBar: TStatusBar;

    Panel4       : TPanel;
    SpeedDatenF  : TSpeedButton;
    SpeedDrucken : TSpeedButton;
    SpeedHilfe   : TSpeedButton;

    PanelMaxDaten : TPanel;
    LabelMaxDaten : TLabel;
    LabelMenge    : TLabel;
    Handbuch: TMenuItem;
    SaveDialog1: TSaveDialog;
    LabelDemo: TLabel;
    SpeedHandbuch: TSpeedButton;
    Literatur: TMenuItem;
    SpeedLiteratur : TSpeedButton;
    WinWord: TMenuItem;
    SpeedWinWord: TSpeedButton;
    SpeedEinrichten: TSpeedButton;

    procedure FormActivate(Sender: TObject);

    procedure ButtonStartClick(Sender: TObject);
    procedure ButtonDbeendenClick(Sender: TObject);
    procedure ButtonplottenClick(Sender: TObject);
    procedure ButtonzurueckClick(Sender: TObject);
    procedure ButtonbeendenClick(Sender: TObject);

    {Drucker}
    procedure Druckereinrichten1Click(Sender: TObject);
    procedure drucken1Click(Sender: TObject);

    {Speichern}
    procedure speichernDClick(Sender: TObject);
    procedure speichernDUnterClick(Sender: TObject);

    {Dateneingabe}
    procedure MaskEditScheitelKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditIso10KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditIso20KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditIso30KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditIso40KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditIso50KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditIso60KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditIso70KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditIso80KeyPress(Sender: TObject; var Key: Char);

    procedure Hilfe1Click(Sender: TObject);
    procedure MaskEditIso90KeyPress(Sender: TObject; var Key: Char);
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
    procedure SpeedEinrichtenClick(Sender: TObject);
  end;

var
  Form53         : TForm53;
  NameS, DatS    : string;
  Anzahl         : word;
  ScheitelS      : string;
  Iso10S, Iso20S : string;
  Iso30S, Iso40S : string;
  Iso50S, Iso60S : string;
  Iso70S, Iso80S : string;
  Iso90S         : string;

implementation
uses Unit52, Unit55;
{$R *.DFM}

procedure TForm53.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm53.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm53.FormActivate(Sender: TObject);
begin
  Left   := 140;
  Top    := 80;
  Width  := 800;
  Height := 620;
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
  setlength (Isogonenzahl, Maxdaten);
  LabelDemo.Visible                := false;
  if DemoB then LabelDemo.Visible  := true;
  LabelMaxDaten.Caption         := Tx(981);
  LabelMenge.Caption            := Inttostr(MaxDaten);
  PanelMaxDaten.Hint            := Hilf(268);
  DatS                          := 'TAL';
  Form53.Caption                := Tx(782);   {Fabric7: T'alph/Alpha-Methode}
  Panel3.Hint                   := Hilf(20);
  GroupBoxDaten.Hint            := Hilf(170);
  MaskEditScheitel.Hint         := Hilf(171);
  LabelSch.Hint                 := Hilf(171);
  MaskEditIso10.Hint            := Hilf(172);
  MaskEditIso20.Hint            := Hilf(173);
  MaskEditIso30.Hint            := Hilf(174);
  MaskEditIso40.Hint            := Hilf(175);
  MaskEditIso50.Hint            := Hilf(176);
  MaskEditIso60.Hint            := Hilf(177);
  MaskEditIso70.Hint            := Hilf(178);
  MaskEditIso80.Hint            := Hilf(179);
  MaskEditIso90.Hint            := Hilf(180);
  LabelDaten.Hint               := Hilf(53);
  LabelT0.Hint                  := Hilf(53);
  ListBoxDaten.Hint             := Hilf(53);
  ButtonStart.Hint              := Hilf(50);
  ButtonDbeenden.Hint           := Hilf(26);
  Buttonplotten.Hint            := Hilf(51);
  Buttonzurueck.Hint            := Hilf(183);
  Buttonbeenden.Hint            := Hilf(30);
  SpeedHandbuch.Hint            := Hilf(274);
  SpeedDatenF.Hint              := Hilf(204);
  SpeedDrucken.Hint             := Hilf(203);
  SpeedHilfe.Hint               := Hilf(210);
  SpeedEinrichten.Hint          := Hilf(505);
  Datenspeichern1.Caption       := Tx(86);    {&Daten speichern}
  speichernD.Caption            := Tx(87);    {speichern}
  speichernDUnter.Caption       := Tx(88);    {speichern unter}
  Drucker1.Caption              := Tx(92);
  drucken1.Caption              := Tx(93);
  DruckerEinrichten1.Caption    := Tx(94);
  Hilfe1.Caption                := Tx(162)+' (F1)';
  LabelScheitel.Caption         := Tx(783);   {Scheitelabstand (T0) zwischen}
  Labelbestimmen.Caption        := Tx(784);   {grenzen bestimmen}
  Labelgrenzen.Caption          := Tx(785);   {Schichtgrenzen eingeben.}
  Labelnurganze.Caption         := Tx(787);   {Nur ganze Zahlen verwenden}
  LabelAnzahl.Caption           := Tx(788);   {Anzahl der Schichten}
  LabelDaten.Caption            := Tx(183);   {Daten:}
  LabelT0.Caption               := Tx(789);   {T0:   Isogone:    T  :   T  /T}
  GroupBoxDaten.Caption         := Tx(77);    {Dateneingabe:}
  LabelIsogonen.Caption         := Tx(790);   {Isogonen:}
  ButtonDbeenden.Caption        := Tx(182);   {Dateneingabe beenden}
  Buttonplotten.Caption         := Tx(241);
  Buttonzurueck.Caption         := Tx(30);
  Buttonbeenden.Caption         := Tx(53);
  LabelDaten.Enabled        := false;
  LabelT0.Enabled           := false;
  LabelAnzahl.Enabled       := false;
  Label00000.Caption        := '';
  MaskEditScheitel.EditMask := '9999;0; ';
  MaskEditIso10.EditMask    := '9999;0; ';
  MaskEditIso20.EditMask    := '9999;0; ';
  MaskEditIso30.EditMask    := '9999;0; ';
  MaskEditIso40.EditMask    := '9999;0; ';
  MaskEditIso50.EditMask    := '9999;0; ';
  MaskEditIso60.EditMask    := '9999;0; ';
  MaskEditIso70.EditMask    := '9999;0; ';
  MaskEditIso80.EditMask    := '9999;0; ';
  MaskEditIso90.EditMask    := '9999;0; ';
  GroupBoxDaten.Caption     := '';
  LabelSch.Enabled          := false;
  LabelIsogonen.Enabled     := false;
  Label10Grad.Enabled       := false;
  Label20Grad.Enabled       := false;
  Label30Grad.Enabled       := false;
  Label40Grad.Enabled       := false;
  Label50Grad.Enabled       := false;
  Label60Grad.Enabled       := false;
  Label70Grad.Enabled       := false;
  Label80Grad.Enabled       := false;
  Label90Grad.Enabled       := false;
  LabelTa.Enabled           := false;
  Labelal.Enabled           := false;
  LabelT2.Enabled           := false;
  Labelal2.Enabled          := false;
  LabelT3.Enabled           := false;
  Labela3.Enabled           := false;
  Drucker1.Enabled          := false;
  Datenspeichern1.Enabled   := false;
  Buttonplotten.Enabled     := false;
  ButtonDbeenden.Enabled    := false;
  Buttonzurueck.Enabled     := false;
  Buttonbeenden.Enabled     := false;
  Anzahl                    := 0;
  Handbuch.Caption          := Tx(1055)+' (F2)';
  Literatur.Caption         := Tx(1183)+' (F5)';
  SpeedLiteratur.Hint       := Hilf(462);
  LabelSch.Caption          := Tx(1123);
  SpeedDatenF.Enabled       := false;
  SpeedDrucken.Enabled      := false;
  MaskEditScheitel.Enabled  := false;
  MaskEditIso10.Enabled     := false;
  MaskEditIso20.Enabled     := false;
  MaskEditIso30.Enabled     := false;
  MaskEditIso40.Enabled     := false;
  MaskEditIso50.Enabled     := false;
  MaskEditIso60.Enabled     := false;
  MaskEditIso70.Enabled     := false;
  MaskEditIso80.Enabled     := false;
  MaskEditIso90.Enabled     := false;
  WinWord.Caption           := Tx(1207);
  SpeedWinWord.Hint         := Hilf(470);
  SpeedWinWord.Enabled      := false;
  SpeedEinrichten.Enabled   := false; 
end;

procedure TForm53.ButtonStartClick(Sender: TObject);
begin
  LabelDaten.Enabled    := true;
  LabelT0.Enabled       := true;
  LabelAnzahl.Enabled   := true;
  GroupBoxDaten.Caption := Tx(77);                          {Dateneingabe:}
  LabelSch.Enabled      := true;
  LabelIsogonen.Enabled := true;
  Label10Grad.Enabled   := true;
  Label20Grad.Enabled   := true;
  Label30Grad.Enabled   := true;
  Label40Grad.Enabled   := true;
  Label50Grad.Enabled   := true;
  Label60Grad.Enabled   := true;
  Label70Grad.Enabled   := true;
  Label80Grad.Enabled   := true;
  Label90Grad.Enabled   := true;
  LabelTa.Enabled       := true;
  Labelal.Enabled       := true;
  LabelT2.Enabled       := true;
  Labelal2.Enabled      := true;
  LabelT3.Enabled       := true;
  Labela3.Enabled       := true;
  Buttonzurueck.Enabled := true;
  Buttonbeenden.Enabled := true;
  ListBoxDaten.Clear;
  MaskEditScheitel.Enabled := true;
  MaskEditScheitel.SetFocus;
end;

procedure TForm53.ButtonDbeendenClick(Sender: TObject);
var
  i : word;
begin
  Datenspeichern1.Enabled := true;
  Drucker1.Enabled        := true;
  SpeedDatenF.Enabled     := true;
  SpeedDrucken.Enabled    := true;
  SpeedWinWord.Enabled    := true;
  Buttonplotten.Enabled   := true;
  SpeedEinrichten.Enabled := true;
  ZahlGlob                := Anzahl;
  for i := 1 to ZahlGlob do IsogonenZahl[i] := 9;
end;

procedure TForm53.ButtonplottenClick(Sender: TObject);
begin
  Form55.Show;
end;

procedure TForm53.ButtonzurueckClick(Sender: TObject);
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
  IsogonenZahl := nil;
  Form53.Close;
end;

procedure TForm53.ButtonbeendenClick(Sender: TObject);
begin
  T0 := Nil;
  T1Strich := Nil;
  T2Strich := Nil;
  T3Strich := Nil;
  T4Strich := Nil;
  T5Strich := Nil;
  T6Strich := Nil;
  T7Strich := Nil;
  T8Strich := Nil;
  T9Strich := Nil;
  Isogonenzahl := nil;
  Form53.Close;
  Form52.Close;
  SetCurrentDir(DirectS);
end;

procedure TForm53.MaskEditScheitelKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(13) then
  begin
    ScheitelS := MaskEditScheitel.Text;
    LeerLoeschen (ScheitelS);
    if ScheitelS = '' then exit;
    MaskEditIso10.Enabled := true;
    MaskEditIso10.SetFocus;
    MaskEditScheitel.Enabled := false;
  end;
end;

procedure TForm53.MaskEditIso10KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(13) then
  begin
    Iso10S := MaskEditIso10.Text;
    LeerLoeschen (Iso10S);
    if Iso10S = '' then exit;
    MaskEditIso20.Enabled := true;
    MaskEditIso20.SetFocus;
    MaskEditIso10.Enabled := false;
  end;
end;

procedure TForm53.MaskEditIso20KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(13) then
  begin
    Iso20S := MaskEditIso20.Text;
    LeerLoeschen (Iso20S);
    if Iso20S = '' then exit;
    MaskEditIso30.Enabled := true;
    MaskEditIso30.SetFocus;
    MaskEditIso20.Enabled := false;
  end;
end;

procedure TForm53.MaskEditIso30KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(13) then
  begin
    Iso30S := MaskEditIso30.Text;
    LeerLoeschen (Iso30S);
    if Iso30S = '' then exit;
    MaskEditIso40.Enabled := true;
    MaskEditIso40.SetFocus;
    MaskEditIso30.Enabled := false;
  end;
end;

procedure TForm53.MaskEditIso40KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(13) then
  begin
    Iso40S := MaskEditIso40.Text;
    LeerLoeschen (Iso40S);
    if Iso40S = '' then exit;
    MaskEditIso50.Enabled := true;
    MaskEditIso50.SetFocus;
    MaskEditIso40.Enabled := false;
  end;
end;

procedure TForm53.MaskEditIso50KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(13) then
  begin
    Iso50S := MaskEditIso50.Text;
    LeerLoeschen (Iso50S);
    if Iso50S = '' then exit;
    MaskEditIso60.Enabled := true;
    MaskEditIso60.SetFocus;
    MaskEditIso50.Enabled := false;
  end;
end;

procedure TForm53.MaskEditIso60KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(13) then
  begin
    Iso60S := MaskEditIso60.Text;
    LeerLoeschen (Iso60S);
    if Iso60S = '' then exit;
    MaskEditIso70.Enabled := true;
    MaskEditIso70.SetFocus;
    MaskEditIso60.Enabled := false;
  end;
end;

procedure TForm53.MaskEditIso70KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(13) then
  begin
    Iso70S := MaskEditIso70.Text;
    LeerLoeschen (Iso70S);
    if Iso70S = '' then exit;
    MaskEditIso80.Enabled := true;
    MaskEditIso80.SetFocus;
    MaskEditIso70.Enabled := false;
  end;
end;

procedure TForm53.MaskEditIso80KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(13) then
  begin
    Iso80S := MaskEditIso80.Text;
    LeerLoeschen (Iso80S);
    if Iso80S = '' then exit;
    MaskEditIso90.Enabled := true;
    MaskEditIso90.SetFocus;
    MaskEditIso80.Enabled := false;
  end;
end;

procedure TForm53.MaskEditIso90KeyPress(Sender: TObject; var Key: Char);
var
  i        : byte;
  TAlphaS  : array[0..9] of string[4];
  Zeile0S  : string[40];
  ZeileS   : string[40];
  T1,T2,T3 : word;
  T4,T5,T6 : word;
  T7,T8,T9 : word;
  T        : word;
  QS       : array[0..9] of string[5];
begin
  if Key = chr(13) then
  begin
    Iso90S := MaskEditIso90.Text;
    LeerLoeschen (Iso90S);
    if Iso90S = '' then exit;
    MaskEditScheitel.Enabled := true;
    MaskEditScheitel.SetFocus;
    MaskEditIso90.Enabled := false;
    ButtonDbeenden.Enabled := true;
    LabelAnzahl.Enabled    := true;
    inc(Anzahl);
    Label00000.Caption     := IntToStr(Anzahl);
    T0[Anzahl]             := StrTOInt(ScheitelS);
    T := T0[Anzahl];
    T1               := StrTOInt(Iso10S);
    T1Strich[Anzahl] := T1/T;
    T2               := StrTOInt(Iso20S);
    T2Strich[Anzahl] := T2/T;
    T3               := StrTOInt(Iso30S);
    T3Strich[Anzahl] := T3/T;
    T4               := StrTOInt(Iso40S);
    T4Strich[Anzahl] := T4/T;
    T5               := StrTOInt(Iso50S);
    T5Strich[Anzahl] := T5/T;
    T6               := StrTOInt(Iso60S);
    T6Strich[Anzahl] := T6/T;
    T7               := StrTOInt(Iso70S);
    T7Strich[Anzahl] := T7/T;
    T8               := StrTOInt(Iso80S);
    T8Strich[Anzahl] := T8/T;
    T9               := StrTOInt(Iso90S);
    T9Strich[Anzahl] := T9/T;
    MaskEditScheitel.Text := '    ';
    MaskEditIso10.Text    := '    ';
    MaskEditIso20.Text    := '    ';
    MaskEditIso30.Text    := '    ';
    MaskEditIso40.Text    := '    ';
    MaskEditIso50.Text    := '    ';
    MaskEditIso60.Text    := '    ';
    MaskEditIso70.Text    := '    ';
    MaskEditIso80.Text    := '    ';
    MaskEditIso90.Text    := '    ';
    TAlphaS[0] := RightS('0000'+IntTOStr(T),4);
    TAlphaS[1] := RightS('0000'+IntTOStr(T1),4);
    TAlphaS[2] := RightS('0000'+IntTOStr(T2),4);
    TAlphaS[3] := RightS('0000'+IntTOStr(T3),4);
    TAlphaS[4] := RightS('0000'+IntTOStr(T4),4);
    TAlphaS[5] := RightS('0000'+IntTOStr(T5),4);
    TAlphaS[6] := RightS('0000'+IntTOStr(T6),4);
    TAlphaS[7] := RightS('0000'+IntTOStr(T7),4);
    TAlphaS[8] := RightS('0000'+IntTOStr(T8),4);
    TAlphaS[9] := RightS('0000'+IntTOStr(T9),4);
    str(T1Strich[Anzahl]:4:2,QS[1]);
    str(T2Strich[Anzahl]:4:2,QS[2]);
    str(T3Strich[Anzahl]:4:2,QS[3]);
    str(T4Strich[Anzahl]:4:2,QS[4]);
    str(T5Strich[Anzahl]:4:2,QS[5]);
    str(T6Strich[Anzahl]:4:2,QS[6]);
    str(T7Strich[Anzahl]:4:2,QS[7]);
    str(T8Strich[Anzahl]:4:2,QS[8]);
    str(T9Strich[Anzahl]:4:2,QS[9]);
    Zeile0S    := ' '+TAlphaS[0]+'       10'+'         '+TAlphaS[1]+'      '
                 +QS[1];
    ListboxDaten.Items.Add(Zeile0S);
    for i := 2 to 9 do
    begin
      ZeileS := '                '+IntToStr(i*10)+'        '+TAlphaS[i]
                +'      '+QS[i];
      ListboxDaten.Items.Add(ZeileS);
    end;
    DateiZahl := 0;
  end;
end;

procedure TForm53.speichernDClick(Sender: TObject);
begin
   if CurrentFile <> '' then Tschreiben (CurrentFile)
   else speichernDUnterClick(Sender);
end;

procedure TForm53.speichernDUnterClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := ExtenS;
  SaveDialog1.Filter := 'Talpha method (*.lin)|*.LIN';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    Tschreiben (CurrentFile);
  end;
end;

procedure TForm53.Druckereinrichten1Click(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TForm53.SpeedEinrichtenClick(Sender: TObject);
begin
  DruckerEinrichten1Click(Sender);
end;

procedure TForm53.drucken1Click(Sender: TObject);
begin
  Datnam (DateiNameS[0], 'FOU');
  DateiZahl := 0;
  Tdrucken (DateiZahl, DateiNameS[0], ZahlGlob, T0,T1Strich,
            T2Strich,T3Strich, T4Strich, T5Strich, T6Strich,
            T7Strich, T8Strich, T9Strich);
end;

procedure TForm53.Hilfe1Click(Sender: TObject);
var
  DateiS : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\53Talpha-man.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\53Talpha-man.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm53.SpeedDatenFClick(Sender: TObject);
begin
  speichernDUnterClick(Sender);
end;

procedure TForm53.SpeedDruckenClick(Sender: TObject);
begin
  drucken1Click(Sender);
end;

procedure TForm53.SpeedHilfeClick(Sender: TObject);
begin
  Hilfe1Click(Sender);
end;

procedure TForm53.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Talpha.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'Talpha-E.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm53.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm53.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm53.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

procedure TForm53.WinWordClick(Sender: TObject);
begin
  Datnam (DateiNameS[0], 'TAL');
  DateiZahl := 0;
  SaveDialog1.DefaultExt := 'rtf';
  SaveDialog1.Filter     := 'rtf';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    WinTdrucken (CurrentFile, DateiZahl, DateiNameS[0], ZahlGlob,
                 T0,T1Strich, T2Strich,T3Strich, T4Strich, T5Strich,
                 T6Strich, T7Strich, T8Strich, T9Strich);
  end;
end;

procedure TForm53.SpeedWinWordClick(Sender: TObject);
begin
  WinWordClick(Sender);
end;

end.
