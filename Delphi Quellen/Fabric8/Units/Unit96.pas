unit Unit96;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, ComCtrls, Globvar, ExtCtrls,
  Texte, Mask, Standard, Menus, EinAusga, Basic, Drucken,
  Buttons, Shellapi, ehsHelpRouter;

type
  TForm96 = class(TForm)
    StatusBar: TStatusBar;
    ButtonZurueck: TButton;
    ButtonBeenden: TButton;
    LabelDemo: TLabel;
    ListBoxDaten: TListBox;
    PanelDaten: TPanel;
    LabelDaten: TLabel;
    PanelAchsen: TPanel;
    LabelAchsen: TLabel;
    LabelAchse2: TLabel;
    LabelEingabe: TLabel;
    LabelLange: TLabel;
    Panelmax: TPanel;
    LabelMax: TLabel;
    LabelZahl: TLabel;
    Panel3: TPanel;
    LabelAnzahl: TLabel;
    Label00000: TLabel;
    PanelDAchsen: TPanel;
    LabelDEingabe: TLabel;
    MaskEditLang: TMaskEdit;
    MaskEditMittel: TMaskEdit;
    MaskEditKurz: TMaskEdit;
    ButtonStart: TButton;
    LabelDLang: TLabel;
    LabelDMittel: TLabel;
    LabelDKurz: TLabel;
    ButtonDBeenden: TButton;
    MainMenu1: TMainMenu;
    Dspeichern: TMenuItem;
    speichern: TMenuItem;
    speichernU: TMenuItem;
    SaveDialog1: TSaveDialog;
    Drucker: TMenuItem;
    Deinrichten: TMenuItem;
    drucken: TMenuItem;
    RtfDatei: TMenuItem;
    PrinterSetupDialog1: TPrinterSetupDialog;
    ButtonPlot: TButton;
    PanelElon: TPanel;
    LabelDElon: TLabel;
    MaskEditE1: TMaskEdit;
    MaskEditE2: TMaskEdit;
    MaskEditE3: TMaskEdit;
    LabelE1: TLabel;
    LabelE2: TLabel;
    LabelE3: TLabel;
    PanelSpeed: TPanel;
    SpeedSpeichern: TSpeedButton;
    SpeedEinrichten: TSpeedButton;
    SpeedDrucken: TSpeedButton;
    SpeedRtf: TSpeedButton;
    SpeedHilfe: TSpeedButton;
    Hilfe: TMenuItem;
    Handbuch: TMenuItem;
    Literatur: TMenuItem;
    SpeedHandbuch: TSpeedButton;
    SpeedLiteratur: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure ShowHint(Sender: TObject);
    procedure ButtonZurueckClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ButtonBeendenClick(Sender: TObject);
    procedure MaskEditLangKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditMittelKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditKurzKeyPress(Sender: TObject; var Key: Char);
    procedure ButtonStartClick(Sender: TObject);
    procedure speichernClick(Sender: TObject);
    procedure speichernUClick(Sender: TObject);
    procedure ButtonDBeendenClick(Sender: TObject);
    procedure DeinrichtenClick(Sender: TObject);
    procedure druckenClick(Sender: TObject);
    procedure RtfDateiClick(Sender: TObject);
    procedure ButtonPlotClick(Sender: TObject);
    procedure MaskEditE1KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditE2KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditE3KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedSpeichernClick(Sender: TObject);
    procedure SpeedEinrichtenClick(Sender: TObject);
    procedure SpeedDruckenClick(Sender: TObject);
    procedure SpeedRtfClick(Sender: TObject);
    procedure SpeedHilfeClick(Sender: TObject);
    procedure HilfeClick(Sender: TObject);
    procedure HandbuchClick(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure SpeedLiteraturClick(Sender: TObject);
  end;

var
  Form96      : TForm96;
  LangeA      : word;
  MittlereA   : word;
  KurzeA      : word;
  Zaehler     : word;
  CurrentFile : string;
  ExtensionS  : string;

implementation

uses Unit95, Unit98;

{$R *.DFM}
procedure TForm96.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm96.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm96.FormActivate(Sender: TObject);
begin
  DecimalSeparator := '.';
  Left   := 140;
  Top    := 80;
  Width  := 800;
  Height := 620;
  LabelDemo.Visible     := false;
  if DemoB then LabelDemo.Visible  := true;
  setlength (Lang, MaxDaten);
  setlength (Mittel, MaxDaten);
  setlength (Kurz, MaxDaten);
  Form96.Caption          := Tx(1540);
  Buttonzurueck.Hint      := Hilf(18);
  Buttonbeenden.Hint      := Hilf(30);
  SpeedSpeichern.Hint     := Hilf(204);
  SpeedEinrichten.Hint    := Hilf(505);
  SpeedDrucken.Hint       := Hilf(203);
  SpeedRtf.Hint           := Hilf(470);
  SpeedHilfe.Hint         := Hilf(210);
  SpeedHandbuch.Hint      := Hilf(274);
  SpeedLiteratur.Hint     := Hilf(462);
  ButtonZurueck.Caption   := Tx(30);
  ButtonBeenden.Caption   := Tx(53);
  Hilfe.Caption           := Tx(162)+' (F1)';
  Handbuch.Caption        := Tx(1055)+' (F2)';
  Literatur.Caption       := Tx(1183)+' (F5)';
  LabelDaten.Caption      := Tx(183);  {Daten:}
  LabelAchsen.Caption     := Tx(1541);
  LabelAchse2.Caption     := Tx(1542);
  LabelEingabe.Caption    := Tx(1543);
  LabelAnzahl.Caption     := Tx(222);
  Label00000.Caption      := '';
  LabelDLang.Caption      := Tx(1544);
  LabelDMittel.Caption    := Tx(1545);
  LabelDKurz.Caption      := Tx(1546);
  LabelDeingabe.Caption   := Tx(77);
  LabelDElon.Caption      := Tx(77);
  ButtonDbeenden.Caption  := Tx(182);
  LabelDLang.Caption      := Tx(1544);
  LabelDMittel.Caption    := Tx(1545);
  LabelDKurz.Caption      := Tx(1546);
  LabelLange.Caption      := Tx(1547);
  Dspeichern.Caption      := Tx(86);
  speichern.Caption       := Tx(87);
  speichernU.Caption      := Tx(88);
  Drucker.Caption         := Tx(92);
  Deinrichten.Caption     := Tx(93);
  drucken.Caption         := Tx(94);
  RtfDatei.Caption        := Tx(1207);
  MaskEditLang.EditMask   := '99999;0; ';
  MaskEditMittel.EditMask := '99999;0; ';
  MaskEditKurz.EditMask   := '99999;0; ';
  MaskEditE1.EditMask     := '9999;0; ';
  MaskEditE2.EditMask     := '#999;0; ';
  MaskEditE3.EditMask     := '-99;.; ';
  MaskEditLang.Enabled    := false;
  MaskEditMittel.Enabled  := false;
  MaskEditKurz.Enabled    := false;
  MaskEditE1.Enabled      := false;
  MaskEditE2.Enabled      := false;
  MaskEditE3.Enabled      := false;
  Dspeichern.Enabled      := false;
  ExtenS                  := 'FLI';
  Drucker.Enabled         := false;
  ButtonDbeenden.Enabled  := false;
  ButtonPlot.Enabled      := false;
  ListBoxDaten.Clear;
  PanelDAchsen.Visible    := false;
  PanelElon.Visible       := false;
  SpeedSpeichern.Enabled  := false;
  SpeedEinrichten.Enabled := false;
  SpeedDrucken.Enabled    := false;
  SpeedRtf.Enabled        := false;
  if FlinnDatenS = 'Achsen' then PanelDAchsen.Visible := true;
  if FlinnDatenS = 'Elongation' then PanelElon.Visible := true;
end;

procedure TForm96.ButtonZurueckClick(Sender: TObject);
begin
  Lang   := NIL;
  Mittel := NIL;
  Kurz   := NIL;
  Form96.close;
end;

procedure TForm96.ButtonBeendenClick(Sender: TObject);
begin
  Lang   := NIL;
  Mittel := NIL;
  Kurz   := NIL;
  Form96.Close;
  Form95.Close;
  SetCurrentDir(DirectS);
end;

procedure TForm96.ButtonStartClick(Sender: TObject);
begin
  Zaehler := 0;
  if FlinnDatenS = 'Achsen' then
  begin
    MaskEditLang.Enabled := true;
    MaskEditLang.SetFocus;
  end;
  if FlinnDatenS = 'Elongation' then
  begin
    MaskEditE1.Enabled := true;
    MaskEditE1.Setfocus;
  end;
end;

procedure TForm96.MaskEditLangKeyPress(Sender: TObject; var Key: Char);
var
  LangS    : string;
begin
  if Key = chr(13) then
  begin
    LangS := MaskEditLang.Text;
    LeerLoeschen (LangS);
    if LangS = '' then exit
    else
    begin
      LangeA := StrToInt (LangS);
      MaskEditMittel.Enabled := true;
      MaskEditMittel.SetFocus;
      MaskEditLang.Enabled := false;
    end;
  end;
end;

procedure TForm96.MaskEditMittelKeyPress(Sender: TObject; var Key: Char);
var
  MittelS : string;
begin
  if Key = chr(13) then
  begin
    MittelS := MaskEditMittel.Text;
    LeerLoeschen (MittelS);
    if MittelS = '' then exit
    else
    begin
      MittlereA := StrToInt (MittelS);
      if MittlereA > LangeA then
      begin
        MaskEditMittel.Clear;
        MaskEditLang.Clear;
        MaskEditLang.Enabled := true;
        MaskEditLang.SetFocus;
        exit;
      end;
      MaskEditKurz.Enabled := true;
      MaskEditKurz.SetFocus;
      MaskEditMittel.Enabled := false;
    end;
  end;
end;

procedure TForm96.MaskEditKurzKeyPress(Sender: TObject; var Key: Char);
var
  KurzS    : string;
  ZeileS   : string;
  LS,MS,KS : string[5];
begin
  if Key = chr(13) then
  begin
    KurzS := MaskEditKurz.Text;
    LeerLoeschen (KurzS);
    if KurzS = '' then exit
    else KurzeA := StrToInt (KurzS);
    if KurzeA > MittlereA then
    begin
      MaskEditKurz.Clear;
      MaskEditMittel.Clear;
      MaskEditMittel.Enabled:= true;
      MaskEditMittel.SetFocus;
      exit;
    end;
    inc(Zaehler);
    Kurz[Zaehler]   := KurzeA;
    Mittel[Zaehler] := MittlereA;
    Lang[Zaehler]   := LangeA;
    LS := RightS('00000'+IntToStr(LangeA),5);
    MS := RightS('00000'+IntToStr(MittlereA),5);
    KS := RightS('00000'+IntToStr(KurzeA),5);
    ZeileS := '  '+LS+'      '+MS+'       '+KS;
    ListBoxDaten.Items.Add (ZeileS);
    Label00000.Caption := IntToStr(Zaehler);
    MaskEditKurz.Enabled := false;
    MaskEditLang.Clear;
    MaskEditMittel.Clear;
    MaskEditKurz.Clear;
    MaskEditLang.Enabled := true;
    MaskEditLang.SetFocus;
    ButtonDbeenden.Enabled := true;
  end;
end;

procedure TForm96.MaskEditE1KeyPress(Sender: TObject; var Key: Char);
var
  LangS    : string;
begin
  if Key = chr(13) then
  begin
    LangS := MaskEditE1.Text;
    LeerLoeschen (LangS);
    if LangS = '' then exit
    else
    begin
      LangeA := 100 + StrToInt(LangS);
      MaskEditE2.Enabled := true;
      MaskEditE2.SetFocus;
      MaskEditE1.Enabled := false;
    end;
  end;
end;

procedure TForm96.MaskEditE2KeyPress(Sender: TObject; var Key: Char);
var
  MittelS    : string;
begin
  if Key = chr(13) then
  begin
    MittelS := MaskEditE2.Text;
    LeerLoeschen (MittelS);
    if MittelS = '' then exit
    else
    begin
      MittlereA := 100 + StrToInt(MittelS);
      if MittlereA > LangeA then
      begin
        MaskEditE2.Clear;
        MaskEditE1.Clear;
        MaskEditE1.Enabled := true;
        MaskEditE1.SetFocus;
        exit;
      end;
      MaskEditE3.Enabled := true;
      MaskEditE3.SetFocus;
      MaskEditE2.Enabled := false;
    end;
  end;
end;

procedure TForm96.MaskEditE3KeyPress(Sender: TObject; var Key: Char);
var
  KurzS    : string;
  LS,MS,Ks : string;
  ZeileS   : string;
begin
  if Key = chr(13) then
  begin
    KurzS := MaskEditE3.Text;
    LeerLoeschen (KurzS);
    if KurzS = '' then exit
    else
    begin
      KurzeA := 100 + StrToInt(KurzS);
      MaskEditE3.Enabled := false;
    end;
    inc(Zaehler);
    Kurz[Zaehler]   := KurzeA;
    Mittel[Zaehler] := MittlereA;
    Lang[Zaehler]   := LangeA;
    LS := RightS('00000'+IntToStr(LangeA),5);
    MS := RightS('00000'+IntToStr(MittlereA),5);
    KS := RightS('00000'+IntToStr(KurzeA),5);
    ZeileS := '  '+LS+'      '+MS+'       '+KS;
    ListBoxDaten.Items.Add (ZeileS);
    Label00000.Caption := IntToStr(Zaehler);
    MaskEditE1.Clear;
    MaskEditE2.Clear;
    MaskEditE3.Clear;
    MaskEditE1.Enabled := true;
    MaskEditE1.SetFocus;
    ButtonDbeenden.Enabled := true;
  end;
end;

procedure TForm96.speichernClick(Sender: TObject);
begin
   if CurrentFile <> '' then AchsenSpeichern(CurrentFile,Zaehler,
     Lang, Mittel, Kurz)
   else speichernUClick(Sender);
end;

procedure TForm96.SpeedSpeichernClick(Sender: TObject);
begin
  speichernClick(Sender);
end;

procedure TForm96.speichernUClick(Sender: TObject);
begin
  Erweiterung (ExtenS);
  SaveDialog1.DefaultExt := ExtenS;
  SaveDialog1.Filter     := ExtenS;
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    AchsenSpeichern (CurrentFile, Zaehler, Lang, Mittel, Kurz);
  end;
end;

procedure TForm96.ButtonDBeendenClick(Sender: TObject);
begin
  Dspeichern.Enabled      := true;
  Drucker.Enabled         := true;
  SpeedSpeichern.Enabled  := true;
  SpeedEinrichten.Enabled := true;
  SpeedDrucken.Enabled    := true;
  SpeedRtf.Enabled        := true;
  ButtonPlot.Enabled      := true;
  ZahlGlob                := Zaehler;
end;

procedure TForm96.DeinrichtenClick(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TForm96.SpeedEinrichtenClick(Sender: TObject);
begin
  DeinrichtenClick(Sender);
end;

procedure TForm96.druckenClick(Sender: TObject);
begin
  Datnam (DateiNameS[0], ExtensionS);
  TitelFlinn (0, DateiNameS, Lang, Mittel, Kurz, Zaehler);
end;

procedure TForm96.SpeedDruckenClick(Sender: TObject);
begin
  druckenClick(Sender);
end;

procedure TForm96.RtfDateiClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := 'rtf';
  SaveDialog1.Filter     := 'rtf';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    WinDateiFlinn(0, CurrentFile, CurrentFile,
                  Lang, Mittel, Kurz, Zaehler);
  end;
end;

procedure TForm96.SpeedRtfClick(Sender: TObject);
begin
  RtfDateiClick(Sender);
end;

procedure TForm96.ButtonPlotClick(Sender: TObject);
begin
  Form98.Show;
end;

procedure TForm96.HilfeClick(Sender: TObject);
var
  DateiS      : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\96Flinn-man.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\96Flinn-man.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm96.SpeedHilfeClick(Sender: TObject);
begin
  HilfeClick(Sender);
end;

procedure TForm96.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Flinn-Hsu.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'Flinn-Hsu-E.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm96.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm96.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm96.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

end.
