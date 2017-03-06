unit Unit92;

interface

uses
 Windows, Messages, Classes, Dialogs, Controls, StdCtrls, Basic,
  Forms, ComCtrls, Texte, Globvar, FileCtrl, SysUtils, Standard,
  ExtCtrls, Excel97, OleServer, ComObj, Mask, ActiveX, Menus,
  Einausga, Drucken, Buttons, Shellapi, ehsHelpRouter;

type
  TForm92 = class(TForm)
    PanelExcel: TPanel;
    ButtonPfad: TButton;
    PanelTabelle: TPanel;
    LabelTAuswahl: TLabel;
    ComboBoxTabelle: TComboBox;
    PanelZellen: TPanel;
    LabelRichtung: TLabel;
    LabelBetrag: TLabel;
    MaskEditRichtung: TMaskEdit;
    MaskEditBetrag: TMaskEdit;
    PanelSpalte: TPanel;
    LabelObereZeile: TLabel;
    LabelUntereZeile: TLabel;
    LabelTrennz: TLabel;
    MaskEditOben: TMaskEdit;
    MaskEditUnten: TMaskEdit;
    CheckBoxOK: TCheckBox;
    MaskEditTrenn: TMaskEdit;
    ButtonPlotten: TButton;
    PanelDateien: TPanel;
    PanelDaten: TPanel;
    LabelDaten: TLabel;
    LabelLineare: TLabel;
    ListBoxDateien: TListBox;
    ListBoxDaten: TListBox;
    PanelOrdner: TPanel;
    LabelOrdner: TLabel;
    LabelDatei: TLabel;
    LabelDateiname: TLabel;
    LabelWorkSheet: TLabel;
    LabelWSName: TLabel;
    LabelBereich: TLabel;
    LabelO: TLabel;
    Labelbis: TLabel;
    LabelRU: TLabel;
    LabelAnzahl: TLabel;
    LabelMenge: TLabel;
    MaskEditOrdner: TMaskEdit;
    LabelDemo: TLabel;
    ButtonZurueck: TButton;
    ButtonBeenden: TButton;
    StatusBar: TStatusBar;
    PanelSpeed: TPanel;
    SpeedDrucken: TSpeedButton;
    SpeedSpeichern: TSpeedButton;
    SpeedHilfe: TSpeedButton;
    SpeedHandbuch: TSpeedButton;
    SpeedLiteratur: TSpeedButton;
    SpeedEinrichten: TSpeedButton;
    SaveDialog1: TSaveDialog;
    PrintDialog1: TPrintDialog;
    PrinterSetupDialog1: TPrinterSetupDialog;
    MainMenu1: TMainMenu;
    ExcelApplication1: TExcelApplication;
    ExcelWorksheet1: TExcelWorksheet;
    ExcelWorkbook1: TExcelWorkbook;
    DatenSpeichern: TMenuItem;
    speichern: TMenuItem;
    speichernU: TMenuItem;
    Drucker: TMenuItem;
    einrichten: TMenuItem;
    drucken: TMenuItem;
    Hilfe: TMenuItem;
    Handbuch: TMenuItem;
    Literatur: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure ShowHint (Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ButtonPfadClick(Sender: TObject);
    procedure ListBoxDateienClick(Sender: TObject);
    procedure ComboBoxTabelleChange(Sender: TObject);
    procedure MaskEditRichtungKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditBetragKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditObenKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditUntenKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditTrennKeyPress(Sender: TObject; var Key: Char);
    procedure CheckBoxOKClick(Sender: TObject);
    procedure ButtonPlottenClick(Sender: TObject);
    procedure ButtonZurueckClick(Sender: TObject);
    procedure ButtonBeendenClick(Sender: TObject);
    procedure speichernClick(Sender: TObject);
    procedure speichernUClick(Sender: TObject);
    procedure einrichtenClick(Sender: TObject);
    procedure druckenClick(Sender: TObject);
    procedure HilfeClick(Sender: TObject);
    procedure HandbuchClick(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
    procedure SpeedSpeichernClick(Sender: TObject);
    procedure SpeedDruckenClick(Sender: TObject);
    procedure SpeedEinrichtenClick(Sender: TObject);
    procedure SpeedHilfeClick(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure SpeedLiteraturClick(Sender: TObject);
  end;

var
  Form92: TForm92;
  ExcelNameS      : string;
  DrS             : string;
  ObenS           : string;
  UntenS          : string;
  Lcid            : integer;
  TabelleS        : string;
  TypS            : string;
  ExcelAn         : Boolean;
  Menge           : word;
  Spalte          : byte;
  CurrentFile     : string;
  SpalteRichtungS : string[1];
  SpalteBetragS   : string[1];
  TrennS          : string[1];
  DatExcel        : OleVariant;
  DatNameS        : string;
  DNameS          : string;

implementation
uses Unit15, Unit17, Unit19;
{$R *.DFM}

procedure TForm92.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm92.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm92.FormActivate(Sender: TObject);
begin
  Left   := 140;
  Top    := 80;
  Width  := 800;
  Height := 620;
  setlength (AziFeld, MaxDaten);
  setlength (FalFeld, MaxDaten);
  LabelDemo.Visible                := false;
  if DemoB then LabelDemo.Visible  := true;
  ButtonPfad.Hint          := Hilf(278);
  PanelTabelle.Hint        := Hilf(279);
  ComboBoxTabelle.Hint     := Hilf(279);
  PanelZellen.Hint         := Hilf(283);
  CheckBoxOk.Hint          := Hilf(287);
  MaskEditTrenn.Hint       := Hilf(288);
  ButtonPlotten.Hint       := Hilf(290);
  ListBoxDateien.Hint      := Hilf(291);
  ListBoxDaten.Hint        := Hilf(292);
  MaskEditOben.Hint        := Hilf(294);
  MaskEditUnten.Hint       := Hilf(295);
  CheckBoxOk.Hint          := Hilf(287);
  SpeedHandbuch.Hint       := Hilf(274);
  SpeedEinrichten.Hint     := Hilf(505);
  SpeedSpeichern.Hint      := Hilf(204);
  SpeedDrucken.Hint        := Hilf(423);
  SpeedHilfe.Hint          := Hilf(210);
  PanelExcel.Caption       := Tx(1008);
  LabelDaten.Caption       := Tx(183);  {Daten}
  PanelDateien.Caption     := Tx(1014); {Excel-Datei}
  ButtonPfad.Caption       := Tx(1010); {Ordner suchen}
  LabelOrdner.Caption      := '';       {Ordner}
  LabelDatei.Caption       := '';       {Datei}
  LabelDateiname.Caption   := '';       {DateiName}
  LabelRichtung.Caption    := Tx(1518);
  LabelBetrag.Caption      := Tx(1519);
  LabelObereZeile.Caption  := Tx(1297);
  LabelUntereZeile.Caption := Tx(1298);
  LabelTrennz.Caption      := Tx(1339);
  LabelTAuswahl.Caption    := Tx(1017);
  LabelTAuswahl.Enabled    := false;
  MaskEditOben.Text        := '';
  MaskEditUnten.Text       := '';
  MaskEditRichtung.EditMask:= 'L;0; ';
  MaskEditBetrag.EditMask  := 'L;0; ';
  MaskEditOben.EditMask    := '9999;0; ';
  MaskEditUnten.EditMask   := '9999;0; ';
  ButtonZurueck.Caption    := Tx(30);
  ButtonBeenden.Caption    := TX(53);
  ButtonPlotten.Visible    := false;
  PanelTabelle.Visible     := false;
  ComboBoxTabelle.Visible  := false;
  PanelZellen.Visible      := false;
  PanelSpalte.Visible      := false;
  PanelDaten.Visible       := false;
  PanelOrdner.Visible      := false;
  MaskEditOben.Visible     := false;
  MaskEditUnten.Visible    := false;
  CheckBoxOK.Enabled       := false;
  LabelO.Caption           := '';
  Labelbis.Caption         := '';
  LabelRU.Caption          := '';
  LabelBereich.Caption     := Tx(1015);
  Labelbis.Caption         := Tx(1016);
  LabelBereich.Visible     := false;
  LabelBis.Visible         := false;
  ButtonPfad.Enabled       := true;
  if Gefuegetyp = 1 then
    TypS                   := Tx(169);
  if Gefuegetyp = 2 then
    TypS                   := Tx(170);
  LabelWorkSheet.Caption   := '';
  LabelWSName.Caption      := '';
  LabelDaten.Caption       := '';
  LabelLineare.Caption     := '';
  ExcelAn                  := false;
  ListBoxDateien.Visible   := false;
  PanelDateien.Visible     := false;
  ListBoxDaten.Visible     := false;
  LabelAnzahl.Caption      := '';
  LabelMenge.Caption       := '';
  DatenSpeichern.Caption   := Tx(86);
  DatenSpeichern.Enabled   := false;
  Drucker.Caption          := Tx(92);
  drucken.Caption          := Tx(93);
  einrichten.Caption       := Tx(94);
  Hilfe.Caption            := Tx(162)+' (F1)';
  Drucker.Enabled          := false;
  SpeedDrucken.Enabled     := false;
  SpeedSpeichern.Enabled   := false;
  Speedeinrichten.Enabled  := false;
  ButtonPfad.Enabled       := true;
  ListBoxDateien.Enabled   := true;
  MaskEditTrenn.EditMask   := 'c;0 ';
  MaskEditTrenn.Text          := ' ';
  MaskEditTrenn.Visible       := false;
  LabelTrennz.Visible         := false;
  Handbuch.Caption            := TX(1055)+' (F2)';
  Literatur.Caption           := Tx(1183)+' (F5)';
  SpeedLiteratur.Hint         := Hilf(462);
  if RichtungenS = 'Betraege' then
  begin
    LabelBetrag.Visible    := true;
    MaskEditBetrag.Visible := true;
  end
  else
  begin
    LabelBetrag.Visible    := false;
    MaskEditBetrag.Visible := false;
  end;
  if Programm = 7 then ButtonPlotten.Caption := Tx(241)
  else ButtonPlotten.Caption := Tx(1520);
end;

procedure TForm92.ButtonPfadClick(Sender: TObject);
const
  Verz = 1000;
var
  DirRecord : TSearchRec;
  Fehler    : integer;
  Typ       : TMsgDlgType;
begin
  ListBoxDateien.Clear;
  DrS := DirectS;
  Typ := mtError;
  if SelectDirectory (DrS, [sdAllowCreate, sdPerformCreate,
          sdPrompt], Verz)
          then MaskEditOrdner.Text := DrS;
  Fehler := findfirst(DrS+'\*.xls', faAnyFile,DirRecord);
  if Fehler <> 0 then
  begin
    if DlgMessage (Typ, Tx(37), Tx(1009),3) = 4 then exit;
  end
  else
  begin
    ListBoxDateien.Items.Add (DirRecord.Name);
    while findNext (DirRecord) = 0 do
      ListboxDateien.Items.Add (DirRecord.Name);
  end;
  LabelOrdner.Caption     := Tx(1011);
  ListBoxDateien.Visible  := true;
  PanelDateien.Visible    := true;
end;

procedure TForm92.ListBoxDateienClick(Sender: TObject);
var
  i          : word;
  Tabzaehlen : word;
  Wks        : _Worksheet;
begin
  PanelTabelle.Visible    := true;
  ComboBoxTabelle.Visible := true;
  PanelOrdner.Visible     := true;
  if ExcelAn = true then
  begin
    ExcelWorksheet1.Disconnect;
    ExcelApplication1.ActiveWorkbook.Close(DatExcel, EmptyParam, EmptyParam, Lcid);
    ExcelApplication1.Quit;
    ExcelApplication1.Disconnect;
  end;
  LabelDateiName.Caption := '';
  for i := 0 to ListBoxDateien.Items.Count-1 do
  begin
    if ListBoxDateien.Selected[i] then
    begin
      ExcelNameS := DrS + '\' +
      ListBoxDateien.Items.Strings[i];
      DnameS := ListBoxDateien.Items.Strings[i];
      DatExcel           := ExcelNameS;
    end;
  end;
  DatnameS  := DNameS;
  DateiZahl := 0;
  if ExcelAn = false then
  begin
    if not ExcelApplication1.AutoConnect
    then ExcelApplication1.Connect;
    ExcelApplication1.Workbooks.Open(DatExcel,
                   EmptyParam, EmptyParam,
                   EmptyParam, EmptyParam,
                   EmptyParam, EmptyParam,
                   EmptyParam, EmptyParam,
                   EmptyParam, EmptyParam,
                   EmptyParam, EmptyParam,
                   Lcid);
    ExcelAn := true;
  end;
  ComboBoxTabelle.Clear;
  for Tabzaehlen := 1 to ExcelApplication1.ActiveWorkbook.Worksheets.Count do
  begin
    Wks := ExcelApplication1.ActiveWorkbook.worksheets.item[Tabzaehlen]
           as _WorkSheet;
    ComboBoxTabelle.Items.Add(Wks.Name);
  end;
  LabelDatei.Caption      := Tx(211);
  LabelDateiName.Caption  := DnameS;
  LabelTAuswahl.Enabled   := true;
  ListBoxDateien.Enabled  := false;
end;

procedure TForm92.ComboBoxTabelleChange(Sender: TObject);
begin
  if ExcelAn then
  begin
    ExcelWorksheet1.ConnectTo(ExcelApplication1.Worksheets.Item[
                    ComboBoxTabelle.Text] as _WorkSheet);
    Showmessage(Tx(1029)+Chr(13)+Tx(1095));
    ExcelApplication1.Visible[lcid]:=True;
    ExcelApplication1.UserControl := true;
  end;
  PanelZellen.Visible    := true;
  MaskEditRichtung.SetFocus;
  LabelWorkSheet.Caption := Tx(1018);
  LabelWSName.Caption    := ComboBoxTabelle.Text;
end;

procedure TForm92.MaskEditRichtungKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(13) then
  begin
    SpalteRichtungS := UcaseS(MaskEditRichtung.Text);
    if RichtungenS = 'Betraege' then MaskEditBetrag.SetFocus
    else
    begin
      PanelSpalte.Visible   := true;
      MaskEditOben.Visible  := true;
      MaskEditUnten.Visible := true;
      MaskEditOben.SetFocus;
    end;
  end;
end;

procedure TForm92.MaskEditBetragKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(13) then
  begin
    SpalteBetragS := UcaseS(MaskEditBetrag.Text);
    PanelSpalte.Visible   := true;
    MaskEditOben.Visible  := true;
    MaskEditUnten.Visible := true;
    MaskEditOben.SetFocus;
    if SpalteRichtungS = SpalteBetragS then
    begin
      LabelTrennZ.Visible   := true;
      MaskEditTrenn.Visible := true;
    end;
  end;
end;

procedure TForm92.MaskEditObenKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(13) then
  begin
    ObenS := MaskEditOben.Text;
    CheckboxOK.Enabled := false;
    LabelUntereZeile.Enabled := true;
    MaskEditUnten.SetFocus;
  end;
end;

procedure TForm92.MaskEditUntenKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(13) then
  begin
    UntenS := MaskEditUnten.Text;
    if SpalteRichtungS = SpalteBetragS then
    begin
      MaskEditTrenn.Visible := true;
      MaskEditTrenn.SetFocus;
      LabelTrennz.Visible := true;
    end
    else
    begin
      CheckBoxOK.State   := cbUnchecked;
      CheckBoxOK.Enabled := true;
    end;
  end;
end;

procedure TForm92.MaskEditTrennKeyPress(Sender: TObject; var Key: Char);
begin
  CheckBoxOK.State   := cbUnchecked;
  CheckBoxOK.Enabled := true;
  TrennS             := MaskEditTrenn.Text;
end;

procedure TForm92.CheckBoxOKClick(Sender: TObject);
var
  WSheet        : _WorkSheet;
  Zeile         : OleVariant;
  RiZeileS      : string;
  BeZeileS      : string;
  ObenZeile, i  : word;
  UntenZeile    : word;
  RiSpalte      : word;
  BeSpalte      : word;
  Trenn         : byte;
  Typ           : TMsgDlgType;
  j             : word;
  ZeichenS      : string[1];
  Ziffer        : boolean;
  DatenZeileS   : string;
  Richtung      : word;
  Betrag        : word;
  Falsch        : word;
  Fall          : word;

begin
  if CheckBoxOK.State = cbChecked then
  begin
    ListBoxDaten.Visible := true;
    PanelDaten.Visible   := true;
    ListBoxDaten.Clear;
    LabelDaten.Caption   := Tx(183);
    LabelLineare.Caption := TypS;
    LabelBereich.Visible := true;
    Labelbis.Visible     := true;
    Typ                  := mtError;
    try
      ObenS  := MaskEditOben.Text;
      UntenS := MaskEditUnten.Text;
      TrennS := MaskEditTrenn.Text;
    except
      if DlgMessage (Typ, Tx(37), Tx(243),3) = 4 then exit;
    end;
    ObenZeile  := StrToInt(ObenS);
    UntenZeile := StrToInt(UntenS);
    Menge    := 0;
    Falsch   := 0;
    RiSpalte := Ord(SpalteRichtungS[1])-64;
    if RichtungenS = 'Betraege' then
      BeSpalte := Ord(SpalteBetragS[1])-64;
    WSheet  := ExcelApplication1.ActiveSheet as _WorkSheet;
    if RichtungenS = 'Richtungen' then
    begin
      Fall := 0;
      for i := ObenZeile to UntenZeile do
      begin
        Zeile    := WSheet.Cells.Item[i, RiSpalte].Value;
        RiZeileS := Zeile;
        LeerLoeschen(RiZeileS);
        if RiZeileS = '' then continue;
        Ziffer := true;
        for j := 1 to length(RizeileS) do
        begin
          ZeichenS := copy(RiZeileS,j,1);
          if (ord(ZeichenS[1])< 48) or (ord(ZeichenS[1]) > 57) then
          Ziffer := false;
        end;
        if not Ziffer then continue;
        inc(Menge);
        Richtung := StrToInt(RiZeileS);
        if Winkel = 2 then NeugradR(Richtung, Fall);
        AziFeld[Menge] := Richtung;
      end;
      ZahlGlob := Menge;
      for i := 1 to ZahlGlob do
      begin
        DatenZeileS := RightS('000'+IntToStr(AziFeld[i]),3);
        ListBoxDaten.Items.Add('          ' + DatenZeileS);
      end;
    end;
    if RichtungenS = 'Betraege' then
    begin
      for i := ObenZeile to UntenZeile do
      begin
        Zeile    := WSheet.Cells.Item[i, RiSpalte].Value;
        RiZeileS  := Zeile;
        LeerLoeschen(RiZeileS);
        if RiZeileS = '' then continue;
        Ziffer := true;
        for j := 1 to length(RizeileS) do
        begin
          ZeichenS := copy(RiZeileS,j,1);
          if ZeichenS = TrennS then continue;
          if (ord(ZeichenS[1])< 48) or (ord(ZeichenS[1]) > 57) then
            Ziffer := false;
        end;
        if not Ziffer then continue;
        if SpalteRichtungS = SpalteBetragS then
        begin
          inc(Menge);
          Trenn    := pos (TrennS,RiZeileS);
          Richtung := StrToInt(Copy(RiZeileS,1,Trenn-1));
          delete(RiZeileS,1,Trenn);
          Betrag := StrToInt(RiZeileS);
          if Winkel = 2 then NeugradR(Richtung, Betrag);
          if Richtung > 360 then Falsch := i;
          AziFeld[Menge] := Richtung;
          FalFeld[Menge] := Betrag;
        end
        else
        begin
          Zeile    := WSheet.Cells.Item[i, BeSpalte].Value;
          BeZeileS := Zeile;
          LeerLoeschen(BeZeileS);
          if BeZeileS = '' then continue;
          Ziffer := true;
          for j := 1 to length(BezeileS) do
          begin
            ZeichenS := copy(BeZeileS,j,1);
            if (ord(ZeichenS[1])< 48) or (ord(ZeichenS[1]) > 57) then
              Ziffer := false;
          end;
          if not Ziffer then continue;
          inc(Menge);
          Richtung := StrToInt(RiZeileS);
          Betrag   := StrToInt(BeZeileS);
          if Winkel = 2 then NeugradR (Richtung, Betrag);
          if Richtung > 360 then Falsch := i;
          AziFeld[Menge] := Richtung;
          FalFeld[Menge] := Betrag;
        end;
      end;
      ZahlGlob := Menge;
      for i := 1 to ZahlGlob do
      begin
        DatenZeileS := RightS('000'+IntToStr(AziFeld[i]),3)
                     +'-'+RightS('00'+IntToStr(FalFeld[i]),2);
        ListBoxDaten.Items.Add('     ' + DatenZeileS);
      end;
    end;
    LabelO.Caption          := ObenS;
    LabelRU.Caption         := UntenS;
    LabelAnzahl.Visible     := true;
    LabelAnzahl.Caption     := Tx(181);
    LabelMenge.Caption      := IntToStr(ZahlGlob);
    LabelBis.Visible        := true;
    DatenSpeichern.Enabled  := true;
    Drucken.Enabled         := true;
    SpeedSpeichern.Enabled  := true;
    SpeedDrucken.Enabled    := true;
    SpeedEinrichten.Enabled := true;
    if Falsch <> 0 then
    begin
      showmessage(Tx(1340)+' '+Inttostr(Falsch));
      ExcelAn := true;
      ButtonZurueckClick(Sender);
    end;
    ButtonPlotten.Visible := true;
  end;
end;

procedure TForm92.speichernClick(Sender: TObject);
begin
  if CurrentFile <> '' then Speichern4 (CurrentFile, ZahlGlob, AziFeld,
    FalFeld)
  else speichernUClick(Sender);
end;

procedure TForm92.SpeedSpeichernClick(Sender: TObject);
begin
  speichernClick(Sender);
end;

procedure TForm92.speichernUClick(Sender: TObject);
begin
  Erweiterung (ExtenS);
  SaveDialog1.DefaultExt := ExtenS;
  SaveDialog1.Filter     := ExtenS;
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    Speichern4 (CurrentFile, ZahlGlob, AziFeld, FalFeld);
  end;
end;

procedure TForm92.druckenClick(Sender: TObject);
begin
  Datnam (DateiNameS[0], ExtensionS);
  Drucken7 (1);
end;

procedure TForm92.SpeedDruckenClick(Sender: TObject);
begin
  druckenClick(Sender);
end;

procedure TForm92.einrichtenClick(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TForm92.SpeedEinrichtenClick(Sender: TObject);
begin
  einrichtenClick(Sender);
end;

procedure TForm92.ButtonPlottenClick(Sender: TObject);
begin
  PfadS := DNameS;
  if ExcelAn = true then
  begin
    ExcelWorksheet1.Disconnect;
    ExcelApplication1.ActiveWorkbook.Close(DatExcel, EmptyParam, EmptyParam, Lcid);
    ExcelApplication1.Quit;
    ExcelApplication1.Disconnect;
    ChDir (DirectS);
  end;
  if Programm = 7 then Form19.Show;
  if Programm = 6 then Form17.Show;
end;

procedure TForm92.ButtonZurueckClick(Sender: TObject);
begin
  if ExcelAn = true then
  begin
    ExcelWorksheet1.Disconnect;
    ExcelApplication1.ActiveWorkbook.Close(DatExcel, EmptyParam, EmptyParam, Lcid);
    ExcelWorkbook1.Disconnect;
    ExcelApplication1.Quit;
    ExcelApplication1.Disconnect;
    ChDir (DirectS);
  end;
  if High(AziFeld) > 0 then AziFeld := Nil;
  if High(FalFeld) > 0 then FalFeld := Nil;
  ListBoxDateien.Clear;
  ListBoxDaten.Clear;
  Form92.Close;
end;

procedure TForm92.ButtonBeendenClick(Sender: TObject);
begin
  if ExcelAn = true then
  begin
    ExcelWorksheet1.Disconnect;
    ExcelApplication1.ActiveWorkbook.Close(DatExcel, EmptyParam, EmptyParam, Lcid);
    ExcelApplication1.Quit;
    ExcelApplication1.Disconnect;
  end;
  if High(AziFeld) > 0 then AziFeld := Nil;
  if High(FalFeld) > 0 then FalFeld := Nil;
  ListBoxDateien.Clear;
  ListBoxDaten.Clear;
  Form92.Close;
  Form15.Close;
  SetCurrentDir(DirectS);
end;

procedure TForm92.HilfeClick(Sender: TObject);
const
  Anfang = 102;
var
  DateiS : string;
  HelpRouter1 : THelpRouter;
  i        : word;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\64excel.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\64excel.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm92.SpeedHilfeClick(Sender: TObject);
begin
  HilfeClick(Sender);
end;

procedure TForm92.HandbuchClick(Sender: TObject);
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

procedure TForm92.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm92.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm92.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

end.
