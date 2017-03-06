unit Unit17;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, ExtCtrls, StdCtrls, Menus, Einausga,
  Globvar, Drucken, Texte, ComCtrls, Buttons, Shellapi,
  ehsHelpRouter;

type
  TForm17 = class(TForm)
    Panel1          : TPanel;               {Datei-Name}
    Panel2          : TPanel;
    LabelDateien    : TLabel;
    LabelWinkelraum : TLabel;               {Winkelraum}
    Label4          : TLabel;
    LabelAnzahl     : TLabel;               {Anzahl:}
    Label6          : TLabel;
    LabelVSumme     : TLabel;               {Vektorsumme}
    Label8          : TLabel;
    LabelnormSVektor: TLabel;               {normierter Summenvektor}
    Label10         : TLabel;
    LabelRegelung   : TLabel;               {prozentualer Regelungsgrad}
    Label12         : TLabel;
    LabelVmittel    : TLabel;               {Vektormittel}
    Label14         : TLabel;
    LabelSchiefe    : TLabel;               {Schiefe}
    Label16         : TLabel;
    LabelKurtosis   : TLabel;               {Kurtosis}
    Label18: TLabel;

    Buttonzurueck : TButton;
    Buttonbeenden : TButton;

    Listbox1 : TListbox;

    MainMenu1          : TMainMenu;
    Drucker1           : TMenuItem;
    einrichten1        : TMenuItem;
    drucken1           : TMenuItem;
    PrinterSetupDialog1: TPrinterSetupDialog;
    PrintDialog1       : TPrintDialog;
    Hilfe1: TMenuItem;
    Label1g: TLabel;
    Label2g: TLabel;
    Label3g: TLabel;
    Label4g: TLabel;
    Label5g: TLabel;
    Label6g: TLabel;
    Label7g: TLabel;
    StatusBar: TStatusBar;

    Panel3       : TPanel;
    SpeedDrucken : TSpeedButton;
    SpeedHilfe   : TSpeedButton;
    Handbuch: TMenuItem;
    LabelDemo: TLabel;
    SpeedHandbuch: TSpeedButton;
    Literatur: TMenuItem;
    SpeedLiteratur: TSpeedButton;
    DatenSpeichern: TMenuItem;
    Dspeichern: TMenuItem;
    DspeichernUnter: TMenuItem;
    SaveDialog1: TSaveDialog;
    SpeedEinrichten: TSpeedButton;
    Auswertung: TMenuItem;
    Richtungsrose: TMenuItem;
    Speedrose: TSpeedButton;
    ButtonStart: TButton;
    SpeedSpeichern: TSpeedButton;

    procedure FormActivate(Sender: TObject);
    procedure ButtonzurueckClick(Sender: TObject);    {zurück}
    procedure ButtonbeendenClick(Sender: TObject);    {beenden}
    procedure einrichten1Click(Sender: TObject);      {Drucker einrichten}
    procedure drucken1Click(Sender: TObject);
    procedure Hilfe1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ShowHint(Sender: TObject);

    procedure SpeedDruckenClick(Sender: TObject);
    procedure SpeedHilfeClick(Sender: TObject);
    procedure HandbuchClick(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
    procedure SpeedLiteraturClick(Sender: TObject);
    procedure DspeichernClick(Sender: TObject);
    procedure DspeichernUnterClick(Sender: TObject);
    procedure SpeedEinrichtenClick(Sender: TObject);
    procedure RichtungsroseClick(Sender: TObject);
    procedure SpeedroseClick(Sender: TObject);
    procedure ButtonStartClick(Sender: TObject);
    procedure SpeedSpeichernClick(Sender: TObject);
  end;

var
  Form17         : TForm17;
  ExtensionS     : String[3];
  NameS          : string;
  VektorsummeS   : string[10];
  NormSumVektorS : string[10];
  SchiefeS       : string[10];
  KurtosisS      : string[10];
  RegelungS      : string[10];
  VekMittelS     : string[10];
  CurrentFile    : string;

implementation
uses Unit15, Unit16, Unit18, Unit19, Unit78, Unit92;
{$R *.DFM}

procedure TForm17.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm17.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;


procedure TForm17.FormActivate(Sender: TObject);
begin
  Left   := 125;
  Top    := 80;
  Width  := 800;
  Height := 620;
  LabelDemo.Visible                := false;
  if DemoB then LabelDemo.Visible  := true;
  WeiterB[17]              := false;
  Form17.Caption           := Tx(457);  {Maßzahlen zirkularer Verteilungen,..}
  Panel2.Hint              := Hilf(82);
  ListBox1.Hint            := Hilf(82);
  LabelWinkelraum.Hint     := Hilf(83);
  LabelAnzahl.Hint         := Hilf(36);
  Label6.Hint              := Hilf(36);
  LabelVSumme.Hint         := Hilf(84);
  Label8.Hint              := Hilf(84);
  LabelNormSVektor.Hint    := Hilf(84);
  Label10.Hint             := Hilf(84);
  LabelRegelung.Hint       := Hilf(84);
  Label12.Hint             := Hilf(84);
  LabelVMittel.Hint        := Hilf(84);
  Label14.Hint             := Hilf(84);
  LabelSchiefe.Hint        := Hilf(84);
  Label16.Hint             := Hilf(84);
  LabelKurtosis.Hint       := Hilf(84);
  Label18.Hint             := Hilf(84);
  Buttonzurueck.Hint       := Hilf(85);
  Buttonbeenden.Hint       := Hilf(30);
  SpeedDrucken.Hint        := Hilf(203);
  SpeedHilfe.Hint          := Hilf(210);
  SpeedHandbuch.Hint       := Hilf(274);
  SpeedEinrichten.Hint     := Hilf(505);
  SpeedRose.Hint           := Hilf(510);
  SpeedSpeichern.Hint      := Hilf(204);
  Drucker1.Caption         := Tx(92);
  einrichten1.Caption      := Tx(94);
  Hilfe1.Caption           := Tx(162)+' (F1)';
  LabelDateien.Caption     := Tx(458);
  LabelWinkelraum.Caption  := Tx(459);
  LabelAnzahl.Caption      := Tx(460);  {Anzahl                      =}
  LabelVSumme.Caption      := Tx(461);  {Vektorsumme                 =}
  LabelnormSVektor.Caption := Tx(462);  {normierter Summenvektor     =}
  LabelRegelung.Caption    := Tx(463);  {prozentualer Regelungsgrad  =}
  LabelVmittel.Caption     := Tx(464);  {Vektormittel                =}
  LabelSchiefe.Caption     := Tx(465);  {Schiefe                     =}
  LabelKurtosis.Caption    := Tx(466);  {Kurtosis                    =}
  Buttonzurueck.Caption    := Tx(30);
  Buttonbeenden.Caption    := Tx(53);
  Datenspeichern.Caption   := Tx(86);
  Dspeichern.Caption       := Tx(87);
  DspeichernUnter.Caption  := Tx(88);
  Auswertung.Caption       := Tx(1341);
  Richtungsrose.Caption    := TX(839);
  Handbuch.Caption         := Tx(1055)+' (F2)';
  Literatur.Caption        := Tx(1183)+' (F5)';
  drucken1.Caption         := Tx(93);
  SpeedLiteratur.Hint      := Hilf(462);
  Label4.Caption := BereichS;
  if RichtungenS = 'Richtungen' then
  begin
    if BereichS = 'Halbkreis' then ExtensionS := 'Str';
    if BereichS = 'Vollkreis' then ExtensionS := 'AZI';
  end;
  if RichtungenS = 'Betraege' then
  begin
    if BereichS = 'Halbkreis' then ExtensionS := 'LST';
    if BereichS = 'Vollkreis' then ExtensionS := 'LAZ';
  end;
  LabelWinkelraum.Visible  := false;
  Label4.Visible           := false;
  LabelAnzahl.Visible      := false;
  Label4g.Visible          := false;
  Label6.Visible           := false;
  LabelVSumme.Visible      := false;
  Label3g.Visible          := false;
  Label8.Visible           := false;
  LabelnormSVektor.Visible := false;
  Label2g.Visible          := false;
  Label10.Visible          := false;
  LabelRegelung.Visible    := false;
  Label1g.Visible          := false;
  Label12.Visible          := false;
  LabelVMittel.Visible     := false;
  Label5g.Visible          := false;
  Label14.Visible          := false;
  LabelSchiefe.Visible     := false;
  Label6g.Visible          := false;
  Label16.Visible          := false;
  LabelKurtosis.Visible    := false;
  Label7g.Visible          := false;
  Label18.Visible          := false;
  Panel2.Visible           := false;
  DatenSpeichern.Enabled   := false;
  Drucker1.Enabled         := false;
  Auswertung.Enabled       := false;
  SpeedDrucken.Enabled     := false;
  SpeedEinrichten.Enabled  := false;
  SpeedRose.Enabled        := false;
  if WeiterB[19] then
  begin
    ButtonStart.Visible   := false;
    ButtonBeenden.Visible := false;
    ButtonStartClick(Sender);
  end;
end;

procedure TForm17.ButtonStartClick(Sender: TObject);
var
  ZahlS         : string[6];
  R, Rn, G1, G2 : real;
  Rpp, i        : byte;
  Vmm           : word;
begin
  Vmm            := 0;
  ZahlS          := IntToStr (ZahlGlob);
  Label6.Caption := ZahlS;
  Ausgabe6 (R, Rn, G1, G2, Rpp, Vmm);
  str (R:6:1, VektorsummeS);
  str (Rn:6:1, NormSumVektorS);
  str (Rpp:6, RegelungS);
  str (Vmm:6, VekMittelS);
  str (G1:6:2, SchiefeS);
  str (G2:6:2, KurtosisS);
  Label8.Caption  := VektorsummeS;
  Label10.Caption := NormSumVektorS;
  Label12.Caption := RegelungS + ' %';
  Label14.Caption := VekMittelS + ' °';
  Label16.Caption := SchiefeS;
  Label18.Caption := KurtosisS;
  Listbox1.Clear;
  if EingabeS <> 'ExcelD' then
    for i := 0 to DateiZahl do
      Listbox1.Items.Add (DateiNameS[i])
  else ListBox1.Items.Add(PfadS);    
  LabelWinkelraum.Visible  := true;
  Label4.Visible           := true;
  LabelAnzahl.Visible      := true;
  Label4g.Visible          := true;
  Label6.Visible           := true;
  LabelVSumme.Visible      := true;
  Label3g.Visible          := true;
  Label8.Visible           := true;
  LabelnormSVektor.Visible := true;
  Label2g.Visible          := true;
  Label10.Visible          := true;
  LabelRegelung.Visible    := true;
  Label1g.Visible          := true;
  Label12.Visible          := true;
  LabelVMittel.Visible     := true;
  Label5g.Visible          := true;
  Label14.Visible          := true;
  LabelSchiefe.Visible     := true;
  Label6g.Visible          := true;
  Label16.Visible          := true;
  LabelKurtosis.Visible    := true;
  Label7g.Visible          := true;
  Label18.Visible          := true;
  Panel2.Visible           := true;
  DatenSpeichern.Enabled   := true;
  Drucker1.Enabled         := true;
  if not WeiterB[19] then
  begin
    Auswertung.Enabled     := true;
    SpeedRose.Enabled      := true;
  end;
  DatenSpeichern.Enabled   := true;
  Drucker1.Enabled         := true;
  SpeedDrucken.Enabled     := true;
  SpeedEinrichten.Enabled  := true;
end;

procedure TForm17.ButtonzurueckClick(Sender: TObject);        {zurück}
begin
  ListBox1.Clear;
  if not WeiterB[19] then
  begin
    AziFeld := Nil;
    FalFeld := Nil;
    WertFeld := Nil;
    TNzeiger := Nil;
  end;
  Form17.Close;
  if EingabeS = 'manuell' then Form16.Close;
  if EingabeS = 'Bild'    then Form78.Close;
  if EingabeS = 'Festplatte' then Form18.Close;
  if EingabeS = 'ExcelD' then Form92.Close;
end;

procedure TForm17.ButtonbeendenClick(Sender: TObject);        {beenden}
begin
  AziFeld := Nil;
  FalFeld := Nil;
  Form17.Close;
  if EingabeS = 'manuell' then Form16.Close;
  if EingabeS = 'Bild'    then Form78.Close;
  if EingabeS = 'Festplatte' then Form18.Close;
  if EingabeS = 'ExcelD' then Form92.Close;
  Form15.Close;
  SetCurrentDir(DirectS);
end;

procedure TForm17.einrichten1Click(Sender: TObject);     {Drucker einrichten}
begin
  PrinterSetupDialog1.Execute;
end;

procedure TForm17.SpeedEinrichtenClick(Sender: TObject);
begin
  einrichten1Click(Sender);
end;

procedure TForm17.drucken1Click(Sender: TObject);        {drucken}
begin
  Drucken6 (Dateizahl, VektorsummeS, NormSumVektorS, SchiefeS, KurtosisS,
            RegelungS, VekMittelS);
end;

procedure TForm17.Hilfe1Click(Sender: TObject);
var
  DateiS : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\zirk3rxh.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\Circular-data-result.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm17.SpeedDruckenClick(Sender: TObject);
begin
  drucken1Click(Sender);
end;

procedure TForm17.SpeedHilfeClick(Sender: TObject);
begin
  Hilfe1Click(Sender);
end;

procedure TForm17.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Masszahlen_zirkular.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'Circular_measures.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm17.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm17.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm17.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

procedure TForm17.DspeichernClick(Sender: TObject);
begin
  if CurrentFile <> '' then Speichern4 (CurrentFile, Anzahl, AziFeld,
    FalFeld)
  else DspeichernUnterClick(Sender);
end;

procedure TForm17.DspeichernUnterClick(Sender: TObject);
begin
  Erweiterung (ExtenS);
  SaveDialog1.DefaultExt := ExtenS;
  SaveDialog1.Filter     := ExtenS;
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    Speichern4 (CurrentFile, Anzahl, AziFeld, FalFeld);
  end;
end;

procedure TForm17.SpeedSpeichernClick(Sender: TObject);
begin
  DspeichernUnterClick(Sender);
end;

procedure TForm17.RichtungsroseClick(Sender: TObject);
begin
  WeiterB[17] := true;
  Application.CreateForm(TForm19, Form19);
  Form19.Show;
end;

procedure TForm17.SpeedroseClick(Sender: TObject);
begin
  RichtungsroseClick(Sender);
end;

end.
