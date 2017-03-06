unit Unit15; {Maßzahlen, Hauptformular}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs,  ExtCtrls, StdCtrls, Menus, Globvar, Texte,
  ComCtrls, Buttons, Shellapi, Mask, ehsHelpRouter;

type
  TForm15 = class(TForm)
    Panel1                : TPanel;
    LabelBerechnung       : TLabel;
    Labelderstatistischen : TLabel;
    Labelzirkularer       : TLabel;

    Panel3: TPanel;
    LabelEingabe : TLabel;
    Label7       : TLabel;
    LabelDaten   : TLabel;
    Label9       : TLabel;
    LabelWinkel  : TLabel;
    LabelAltgrad: TLabel;
    LabelBereich : TLabel;
    Label13      : TLabel;

    Buttonweiter  : TButton;
    Buttonzurueck : TButton;
    Buttonbeenden : TButton;

    MainMenu1: TMainMenu;

    {Dateneingabe}
    Eingabe1          : TMenuItem;
    manuell1          : TMenuItem;
    ausDatei: TMenuItem;

    Daten1                : TMenuItem;
    reineRichtungen1      : TMenuItem;
    RichtungenmitBetrgen1 : TMenuItem;

    Winkel1  : TMenuItem;
    Altgrad1 : TMenuItem;
    Neugrad1 : TMenuItem;

    Bereich1       : TMenuItem;
    Halbkreis11801 : TMenuItem;
    Vollkreis13601 : TMenuItem;

    Hilfe1 : TMenuItem;
    Image1 : TImage;
    StatusBar: TStatusBar;
    Panel4: TPanel;
    SpeedHilfe: TSpeedButton;
    Handbuch: TMenuItem;
    LabelDemo: TLabel;
    SpeedHandbuch: TSpeedButton;
    Speedmanuell: TSpeedButton;
    SpeedDatei: TSpeedButton;
    SpeedReineRichtungen: TSpeedButton;
    SpeedBetraege: TSpeedButton;
    SpeedAltgrad: TSpeedButton;
    SpeedNeugrad: TSpeedButton;
    SpeedBereich180: TSpeedButton;
    SpeedBereich360: TSpeedButton;
    Literatur: TMenuItem;
    SpeedLiteratur: TSpeedButton;
    LabelEinstellungen: TLabel;
    ausBild: TMenuItem;
    SpeedBild: TSpeedButton;
    MaskEditMax: TMaskEdit;
    LabelMax: TLabel;
    ausExcel: TMenuItem;
    SpeedExcel: TSpeedButton;

    procedure FormActivate(Sender: TObject);
    procedure Hilfe1Click(Sender: TObject);
    procedure ButtonweiterClick(Sender: TObject);      {weiter}
    procedure ButtonzurueckClick(Sender: TObject);
    procedure ButtonbeendenClick(Sender: TObject);

    procedure manuell1Click(Sender: TObject);
    procedure ausDateiClick(Sender: TObject);

    procedure reineRichtungen1Click(Sender: TObject);
    procedure RichtungenmitBetrgen1Click(Sender: TObject);
    procedure Altgrad1Click(Sender: TObject);
    procedure Neugrad1Click(Sender: TObject);

    procedure Halbkreis11801Click(Sender: TObject);
    procedure Vollkreis13601Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ShowHint(Sender: TObject);
    procedure SpeedHilfeClick(Sender: TObject);
    procedure HandbuchClick(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure SpeedmanuellClick(Sender: TObject);
    procedure SpeedDateiClick(Sender: TObject);
    procedure SpeedReineRichtungenClick(Sender: TObject);
    procedure SpeedBetraegeClick(Sender: TObject);
    procedure SpeedAltgradClick(Sender: TObject);
    procedure SpeedNeugradClick(Sender: TObject);
    procedure SpeedBereich180Click(Sender: TObject);
    procedure SpeedBereich360Click(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
    procedure SpeedLiteraturClick(Sender: TObject);
    procedure ausBildClick(Sender: TObject);
    procedure SpeedBildClick(Sender: TObject);
    procedure MaskEditMaxKeyPress(Sender: TObject; var Key: Char);
    procedure ausExcelClick(Sender: TObject);
    procedure SpeedExcelClick(Sender: TObject);
  private
    Gedrueckt : array[0..4] of boolean;
  public
    Bereich : byte;
  end;

var
  Form15: TForm15;

implementation
uses Unit16, Unit18, Unit78, Unit92;
{$R *.DFM}

procedure TForm15.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm15.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm15.FormActivate(Sender: TObject);
begin
  Left   := 115;
  Top    := 80;
  Width  := 800;
  Height := 620;
  LabelDemo.Visible                := false;
  if DemoB then LabelDemo.Visible  := true;
  Form15.Caption                := Tx(321);  {Fabric7: Statistische}
  Panel3.Hint                   := Hilf(15);
  Buttonweiter.Hint             := Hilf(75);
  Buttonzurueck.Hint            := Hilf(18);
  Buttonbeenden.Hint            := Hilf(30);
  SpeedHilfe.Hint               := Hilf(210);
  SpeedHandbuch.Hint            := Hilf(274);
  SpeedManuell.Hint             := Hilf(327);
  SpeedDatei.Hint               := Hilf(328);
  SpeedExcel.Hint               := Hilf(344);
  SpeedAltgrad.Hint             := Hilf(334);
  SpeedNeugrad.Hint             := Hilf(335);
  SpeedReineRichtungen.Hint     := Hilf(338);
  SpeedBetraege.Hint            := Hilf(339);
  SpeedBereich180.Hint          := Hilf(340);
  SpeedBereich360.Hint          := Hilf(341);
  LabelBerechnung.Caption       := Tx(322);  {Berechnung}
  Labelderstatistischen.Caption := Tx(323);  {der statistischen Maßzahlen}
  Labelzirkularer.Caption       := Tx(324);  {zirkularer Verteilungen}
  Eingabe1.Caption              := Tx(55);
  manuell1.Caption              := Tx(56);
  ausDatei.Caption              := Tx(57);
  ausExcel.Caption              := Tx(1007);
  Daten1.Caption                := Tx(325);
  reineRichtungen1.Caption      := Tx(326);
  RichtungenmitBetrgen1.Caption := Tx(327);
  Winkel1.Caption               := Tx(67);
  Altgrad1.Caption              := Tx(68);
  Neugrad1.Caption              := Tx(69);
  Bereich1.Caption              := Tx(328);
  Halbkreis11801.Caption        := Tx(329);
  Vollkreis13601.Caption        := Tx(330);
  Hilfe1.Caption                := Tx(162)+' (F1)';
  LabelEinstellungen.Caption    := Tx(75);   {folgende Einstellungen..}
  Buttonweiter.Caption          := Tx(76);
  Buttonzurueck.Caption         := Tx(30);
  Buttonbeenden.Caption         := Tx(53);
  LabelEingabe.Caption          := Tx(809);  {Eingabe:}
  LabelDaten.Caption            := Tx(331);
  LabelWinkel.Caption           := Tx(81);
  LabelBereich.Caption          := Tx(332);
  if Programm = 7 then
  begin
    Form15.Caption                := Tx(333);     {Fabric7: Plotten einer Ri}
    LabelBerechnung.Caption       := Tx(334);     {    Plotten}
    Labelderstatistischen.Caption := Tx(335);     {einer Richtungsrose}
    Labelzirkularer.Caption       := Tx(336);     { zirkularverteilter Daten}
  end;
  Buttonweiter.Enabled   := false;
  Label7.Caption         := '';
  Label9.Caption         := '';
  LabelAltgrad.Caption   := '';
  Label13.Caption        := '';
  Handbuch.Caption       := Tx(1055)+' (F2)';
  Literatur.Caption      := Tx(1183)+' (F5)';
  SpeedLiteratur.Hint    := Hilf(462);
  SpeedBild.Hint         := Hilf(342);
  ausBild.Caption        := Tx(1064);
  LabelMax.Caption       := Tx(981);
  MaskEditMax.EditMask   := '99999;0; ';
  MaskEditMax.Text       := IntToStr(MaxDaten);
end;

procedure TForm15.ButtonweiterClick(Sender: TObject);       {weiter}
begin
  if EingabeS = 'manuell'    then Form16.Show;
  if EingabeS = 'Festplatte' then Form18.Show;
  if EingabeS = 'Bild'       then Form78.Show;
  if EingabeS = 'ExcelD' then
    showMessage(Tx(1040)+Chr(13)+Tx(1041)+Chr(13)+Tx(1042)+Chr(13)
              +Tx(1043)+Chr(13)+Tx(1044));
  if EingabeS = 'ExcelD'     then Form92.Show;
end;

procedure TForm15.ButtonzurueckClick(Sender: TObject);        {zurück}
begin
  Form15.Close;
end;

procedure TForm15.ButtonbeendenClick(Sender: TObject);
begin
  Form15.Close;
  SetCurrentDir(DirectS);
end;

procedure TForm15.manuell1Click(Sender: TObject);
begin
  winkel1.Enabled := true;
  Daten1.Enabled  := true;
  LabelAltgrad.Caption := '';
  SpeedReineRichtungen.Enabled := true;
  SpeedBetraege.Enabled := true;
  SpeedAltgrad.Enabled  := true;
  SpeedNeugrad.Enabled  := true;
  Gedrueckt[1] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3] and Gedrueckt[4]
  then Buttonweiter.Enabled := true;
  Label7.Caption := Tx(167);                          {manuell}
  EingabeS := 'manuell';
end;

procedure TForm15.ausDateiClick(Sender: TObject);
begin
  Altgrad1Click(Sender);
  SpeedAltgrad.Enabled := false;
  SpeedNeugrad.Enabled := false;
  LabelAltgrad.Caption := Tx(82);                                 {Altgrad}
  Winkel1.Enabled      := false;
  Gedrueckt[1] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3] and Gedrueckt[4]
  then Buttonweiter.Enabled := true;
  Label7.Caption := Tx(57); {aus einer Datei}
  EingabeS := 'Festplatte';
end;

procedure TForm15.ausExcelClick(Sender: TObject);
begin
  LabelAltgrad.Caption  := '';
  Winkel1.Enabled       := true;
  Neugrad1.Enabled      := true;
  SpeedAltgrad.Enabled  := true;
  SpeedNeugrad.Enabled  := true;
  Gedrueckt[1] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3]
    and Gedrueckt[4] then Buttonweiter.Enabled := true;                {Button1 = weiter}
  Label7.Caption       := 'Excel';                          {manuell}
  EingabeS             := 'ExcelD';
end;

procedure TForm15.SpeedExcelClick(Sender: TObject);
begin
  ausExcelClick(Sender);
end;

procedure TForm15.ausBildClick(Sender: TObject);
begin
  Altgrad1Click(Sender);
  LabelAltgrad.Caption := Tx(82);                                 {Altgrad}
  Winkel1.Enabled      := false;
  Daten1.Enabled       := false;
  SpeedReineRichtungen.Enabled := false;
  SpeedBetraege.Enabled := false;
  SpeedAltgrad.Enabled  := false;
  SpeedNeugrad.Enabled  := false;
  Gedrueckt[1]          := true;
  Gedrueckt[2]          := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3] and Gedrueckt[4]
  then Buttonweiter.Enabled := true;
  Label7.Caption := Tx(1064); {aus einem Bild}
  RichtungenS    := 'Betraege';
  EingabeS       := 'Bild';
  Label9.Caption := Tx(338);
end;

procedure TForm15.SpeedBildClick(Sender: TObject);
begin
  ausBildClick(Sender);
end;

procedure TForm15.reineRichtungen1Click(Sender: TObject);
begin
  Gedrueckt[2] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3] and Gedrueckt[4]
  then Buttonweiter.Enabled := true;
  Label9.Caption := Tx(337);                          {reine Richtungen}
  RichtungenS := 'Richtungen';
end;

procedure TForm15.RichtungenmitBetrgen1Click(Sender: TObject);
begin
  Gedrueckt[2] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3] and Gedrueckt[4]
  then Buttonweiter.Enabled := true;
  Label9.Caption := Tx(338);
  RichtungenS := 'Betraege';
end;

procedure TForm15.Altgrad1Click(Sender: TObject);
begin
  Winkel := 1;
  Gedrueckt[3] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3] and Gedrueckt[4]
  then Buttonweiter.Enabled := true;
  LabelAltgrad.Caption := Tx(339)                        {Altgrad}
end;

procedure TForm15.Neugrad1Click(Sender: TObject);
begin
  Winkel := 2;
  Gedrueckt[3] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3] and Gedrueckt[4]
  then Buttonweiter.Enabled := true;
  LabelAltgrad.Caption := Tx(340)                        {Neugrad}
end;

procedure TForm15.Halbkreis11801Click(Sender: TObject);
begin
  BereichS := '1..180°';
  Label13.Caption := Tx(341);                         {Halbkreis}
  Gedrueckt[4] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3] and Gedrueckt[4]
  then Buttonweiter.Enabled := true;
end;

procedure TForm15.Vollkreis13601Click(Sender: TObject);
begin
  BereichS := '1..360°';
  Label13.Caption := Tx(342);                        {Vollkreis}
  Gedrueckt[4] := true;
  if Gedrueckt[1] and Gedrueckt[2] and Gedrueckt[3] and Gedrueckt[4]
  then Buttonweiter.Enabled := true;
end;

procedure TForm15.Hilfe1Click(Sender: TObject);
var
  DateiS : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    if Programm = 6 then HelpRouter1.HelpJump(DateiS,'html\Deutsch\zirk7ral.htm');
    if Programm = 7 then HelpRouter1.HelpJump(DateiS,'html\Deutsch\rich0fj9.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    if Programm = 6 then HelpRouter1.HelpJump(DateiS,'html\English\Circular-data-main.htm');
    if Programm = 7 then HelpRouter1.HelpJump(DateiS,'html\English\Rose-diagram-main.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm15.SpeedHilfeClick(Sender: TObject);
begin
  Hilfe1Click(Sender);
end;

procedure TForm15.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if Programm = 6 then
  begin
    if SpracheS = 'DEUTSCH' then HilfeS := 'Masszahlen_zirkular.doc';
    if SpracheS = 'ENGLISH' then HilfeS := 'circular_measures.doc';
    ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
                 nil,nil,sw_normal);
  end;
  if Programm = 7 then
  begin
    if SpracheS = 'DEUTSCH' then HilfeS := 'Richtungsrose.doc';
    if SpracheS = 'ENGLISH' then HilfeS := 'Rose_Diagrams.doc';
    ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
                 nil,nil,sw_normal);
  end;
end;

procedure TForm15.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm15.SpeedmanuellClick(Sender: TObject);
begin
  manuell1Click(Sender);
end;

procedure TForm15.SpeedDateiClick(Sender: TObject);
begin
  ausDateiClick(Sender);
end;

procedure TForm15.SpeedReineRichtungenClick(Sender: TObject);
begin
  reineRichtungen1Click(Sender);
end;

procedure TForm15.SpeedBetraegeClick(Sender: TObject);
begin
  RichtungenmitBetrgen1Click(Sender);
end;

procedure TForm15.SpeedAltgradClick(Sender: TObject);
begin
  Altgrad1Click(Sender);
end;

procedure TForm15.SpeedNeugradClick(Sender: TObject);
begin
  Neugrad1Click(Sender);
end;

procedure TForm15.SpeedBereich180Click(Sender: TObject);
begin
  Halbkreis11801Click(Sender);
end;

procedure TForm15.SpeedBereich360Click(Sender: TObject);
begin
  Vollkreis13601Click(Sender);
end;

procedure TForm15.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm15.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

procedure TForm15.MaskEditMaxKeyPress(Sender: TObject; var Key: Char);
var
  Datei : TextFile;
  i     : byte;
begin
  if Key = chr(13) then
  begin
    MaxDaten := StrToInt(MaskEditMax.Text);
    KonfigZeileS[84] := 'Maximum number of data     :,'+MaskEditMax.Text;
    assignFile(Datei,DirectS+'\'+'Fabric.ini');
    rewrite (Datei);
    for i := 1 to ConfigEnde do writeln (Datei, KonfigZeileS[i]);
    closefile (Datei);
  end;
end;

end.
