unit Unit94;

interface

uses
  Windows, Messages, Classes, Dialogs, Controls, StdCtrls, Basic,
  Forms, ComCtrls, Texte, Globvar, FileCtrl, SysUtils, Standard,
  ExtCtrls, Excel97, OleServer, ComObj, Mask, ActiveX, Menus,
  Einausga, Drucken, Buttons, Shellapi, ehsHelpRouter;

type
  TForm94 = class(TForm)
    StatusBar: TStatusBar;
    LabelDemo: TLabel;
    PanelExcel: TPanel;
    ListBoxDateien: TListBox;
    PanelDateien: TPanel;
    ListBoxDaten: TListBox;
    PanelDaten: TPanel;
    LabelDaten: TLabel;
    ButtonStart: TButton;
    PanelTabelle: TPanel;
    LabelTAuswahl: TLabel;
    ComboBoxTabelle: TComboBox;
    PanelHZellen: TPanel;
    LabelHAzimut: TLabel;
    LabelHFallen: TLabel;
    LabelHRichtung: TLabel;
    MaskEditHAzimut: TMaskEdit;
    MaskEditHFallen: TMaskEdit;
    MaskEditHRichtung: TMaskEdit;
    PanelSpalte: TPanel;
    LabelObereZeile: TLabel;
    LabelUntereZeile: TLabel;
    LabelTrennz: TLabel;
    MaskEditOben: TMaskEdit;
    MaskEditUnten: TMaskEdit;
    CheckBoxOK: TCheckBox;
    MaskEditTrenn: TMaskEdit;
    ButtonPlotten: TButton;
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
    ButtonZurueck: TButton;
    ButtonBeenden: TButton;
    PanelSpeed: TPanel;
    SpeedDrucken: TSpeedButton;
    SpeedSpeichern: TSpeedButton;
    SpeedHilfe: TSpeedButton;
    SpeedHandbuch: TSpeedButton;
    SpeedLiteratur: TSpeedButton;
    SpeedEinrichten: TSpeedButton;
    PanelSZellen: TPanel;
    LabelSAzimut: TLabel;
    LabelSFallen: TLabel;
    LabelSRichtung: TLabel;
    MaskEditSAzimut: TMaskEdit;
    MaskEditSFallen: TMaskEdit;
    MaskEditSRichtung: TMaskEdit;
    LabelHarnisch: TLabel;
    LabelStriemung: TLabel;
    MainMenu1: TMainMenu;
    Dspeichern: TMenuItem;
    speichern: TMenuItem;
    speichernU: TMenuItem;
    Drucker: TMenuItem;
    einrichten: TMenuItem;
    drucken: TMenuItem;
    Hilfe: TMenuItem;
    Handbuch: TMenuItem;
    Literatur: TMenuItem;
    ExcelApplication1: TExcelApplication;
    ExcelWorksheet1: TExcelWorksheet;
    ExcelWorkbook1: TExcelWorkbook;
    PrinterSetupDialog1: TPrinterSetupDialog;
    PrintDialog1: TPrintDialog;
    SaveDialog1: TSaveDialog;
    Drword: TMenuItem;
    SpeedWinWord: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure ShowHint(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ButtonStartClick(Sender: TObject);
    procedure ComboBoxTabelleChange(Sender: TObject);
    procedure ListBoxDateienClick(Sender: TObject);
    procedure MaskEditHAzimutKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditHFallenKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditHRichtungKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditSAzimutKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditSFallenKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditObenKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditUntenKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditTrennKeyPress(Sender: TObject; var Key: Char);
    procedure CheckBoxOKClick(Sender: TObject);
    procedure ButtonZurueckClick(Sender: TObject);
    procedure ButtonBeendenClick(Sender: TObject);
    procedure ButtonPlottenClick(Sender: TObject);
    procedure speichernClick(Sender: TObject);
    procedure speichernUClick(Sender: TObject);
    procedure einrichtenClick(Sender: TObject);
    procedure druckenClick(Sender: TObject);
    procedure DrwordClick(Sender: TObject);
    procedure HilfeClick(Sender: TObject);
    procedure HandbuchClick(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
    procedure SpeedSpeichernClick(Sender: TObject);
    procedure SpeedDruckenClick(Sender: TObject);
    procedure SpeedEinrichtenClick(Sender: TObject);
    procedure SpeedHilfeClick(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure SpeedLiteraturClick(Sender: TObject);
    procedure SpeedWinWordClick(Sender: TObject);
    procedure MaskEditSRichtungKeyPress(Sender: TObject; var Key: Char);
  end;

var
  Form94: TForm94;
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
  SpalteHAzimutS  : string[1];
  SpalteSAzimutS  : string[1];
  SpalteHFallenS  : string[1];
  SpalteSFallenS  : string[1];
  SpalteHRichtungS: string[1];
  SpalteSRichtungS: string[1];
  TrennS          : string[1];
  DatExcel        : OleVariant;
  DatNameS        : string;
  DNameS          : string;
implementation
uses Unit26, Unit29, Unit30, Unit31, Unit33, Unit34, Unit99;
{$R *.DFM}

procedure TForm94.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm94.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm94.FormActivate(Sender: TObject);
begin
  Left   := LeftDiag + ULap;
  Top    := TopDiag + ULap;
  Width  := WidForm;
  Height := HeiForm;
  LabelDemo.Visible                := false;
  if DemoB then LabelDemo.Visible  := true;
  Form94.Caption := Tx(1521);
  setlength (AziFeld, MaxDaten);
  setlength (FalFeld, MaxDaten);
  setlength (SAziFeld, MaxDaten);
  setlength (SFalFeld, MaxDaten);
  ButtonStart.Hint         := Hilf(278);
  PanelTabelle.Hint        := Hilf(279);
  ComboBoxTabelle.Hint     := Hilf(279);
  PanelHZellen.Hint        := Hilf(283);
  PanelSZellen.Hint        := Hilf(283);
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
  SpeedWinWord.Hint        := Hilf(470);
  SpeedHilfe.Hint          := Hilf(210);
  PanelExcel.Caption       := Tx(1008);
  LabelDaten.Caption       := Tx(183);  {Daten}
  PanelDateien.Caption     := Tx(1014); {Excel-Datei}
  LabelOrdner.Caption      := '';       {Ordner}
  LabelDatei.Caption       := '';       {Datei}
  LabelDateiname.Caption   := '';       {DateiName}
  LabelHarnisch.Caption    := Tx(1522);
  LabelStriemung.Caption   := Tx(1523);
  LabelHAzimut.Caption     := Tx(1293);
  LabelSAzimut.Caption     := Tx(1293);
  LabelHFallen.Caption     := Tx(1294);
  LabelSFallen.Caption     := Tx(1294);
  LabelHRichtung.Caption   := Tx(1462);
  LabelSRichtung.Caption   := Tx(1462);
  LabelObereZeile.Caption  := Tx(1297);
  LabelUntereZeile.Caption := Tx(1298);
  LabelTrennz.Caption      := Tx(1339);
  LabelTAuswahl.Caption    := Tx(1017);
  ButtonZurueck.Caption    := Tx(30);
  ButtonBeenden.Caption    := TX(53);
  ButtonPlotten.Caption    := Tx(241);
  LabelBereich.Caption     := Tx(1015);
  Labelbis.Caption         := Tx(1016);
  DSpeichern.Caption       := Tx(86);
  DSpeichern.Enabled       := false;
  Drucker.Caption          := Tx(92);
  drucken.Caption          := Tx(93);
  einrichten.Caption       := Tx(94);
  DrWord.Caption           := Tx(1207);
  Hilfe.Caption            := Tx(162)+' (F1)';
  Handbuch.Caption         := TX(1055)+' (F2)';
  Literatur.Caption        := Tx(1183)+' (F5)';
  SpeedLiteratur.Hint      := Hilf(462);
  LabelTAuswahl.Enabled    := false;
  MaskEditOben.Text        := '';
  MaskEditUnten.Text       := '';
  MaskEditHAzimut.EditMask := 'L;0; ';
  MaskEditSAzimut.EditMask := 'L;0; ';
  MaskEditHFallen.EditMask := 'L;0; ';
  MaskEditSFallen.EditMask := 'L;0; ';
  MaskEditOben.EditMask    := '9999;0; ';
  MaskEditUnten.EditMask   := '9999;0; ';
  if Programm = 2 then
    ButtonPlotten.Caption  :='Rotation';
  Drucker.Enabled          := false;
  SpeedDrucken.Enabled     := false;
  Speedeinrichten.Enabled  := false;
  SpeedWinWord.Enabled     := false; 
  Dspeichern.enabled       := false;
  SpeedSpeichern.Enabled   := false;
  ButtonPlotten.Visible    := false;
  PanelTabelle.Visible     := false;
  ComboBoxTabelle.Visible  := false;
  PanelHZellen.Visible     := false;
  PanelSZellen.Visible     := false;
  PanelSpalte.Visible      := false;
  PanelDaten.Visible       := false;
  PanelOrdner.Visible      := false;
  MaskEditOben.Visible     := false;
  MaskEditUnten.Visible    := false;
  CheckBoxOK.Enabled       := false;
  LabelO.Caption           := '';
  Labelbis.Caption         := '';
  LabelRU.Caption          := '';
  LabelBereich.Visible     := false;
  LabelBis.Visible         := false;
  if Gefuegetyp = 1 then
    TypS                   := Tx(169);
  if Gefuegetyp = 2 then
    TypS                   := Tx(170);
  LabelWorkSheet.Caption   := '';
  LabelWSName.Caption      := '';
  LabelDaten.Caption       := '';
  ExcelAn                  := false;
  ListBoxDateien.Visible   := false;
  PanelDateien.Visible     := false;
  ListBoxDaten.Visible     := false;
  LabelAnzahl.Caption      := '';
  LabelMenge.Caption       := '';
  ListBoxDateien.Enabled   := true;
  MaskEditTrenn.EditMask   := 'c;0 ';
  MaskEditTrenn.Text       := ' ';
  MaskEditTrenn.Visible    := false;
  LabelTrennz.Visible      := false;
  if KompassS = 'Clar' then
  begin
    LabelHRichtung.Visible   := false;
    LabelSRichtung.Visible   := false;
    MaskEditHRichtung.Visible:= false;
    MaskEditSRichtung.Visible:= false;
  end;
  if KompassS = 'Brunton' then
  begin
    LabelHRichtung.Visible   := true;
    LabelSRichtung.Visible   := true;
    MaskEditHRichtung.Visible:= true;
    MaskEditSRichtung.Visible:= true;
  end;
end;

procedure TForm94.ButtonStartClick(Sender: TObject);
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

procedure TForm94.ListBoxDateienClick(Sender: TObject);
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

procedure TForm94.ComboBoxTabelleChange(Sender: TObject);
begin
  if ExcelAn then
  begin
    ExcelWorksheet1.ConnectTo(ExcelApplication1.Worksheets.Item[
                    ComboBoxTabelle.Text] as _WorkSheet);
    Showmessage(Tx(1029)+Chr(13)+Tx(1095));
    ExcelApplication1.Visible[lcid]:=True;
    ExcelApplication1.UserControl := true;
  end;
  PanelHZellen.Visible    := true;
  MaskEditHAzimut.SetFocus;
  LabelWorkSheet.Caption := Tx(1018);
  LabelWSName.Caption    := ComboBoxTabelle.Text;
end;

procedure TForm94.MaskEditHAzimutKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(13) then
  begin
    SpalteHAzimutS := UcaseS(MaskEditHAzimut.Text);
    MaskEditHFallen.SetFocus;
  end;
end;

procedure TForm94.MaskEditHFallenKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(13) then
  begin
    SpalteHFallenS := UcaseS(MaskEditHFallen.Text);
    if KompassS = 'Brunton' then
    begin
      MaskEditHRichtung.Visible := true;
      MaskEditHRichtung.SetFocus;
    end;
    if KompassS = 'Clar' then
    begin
      PanelSZellen.Visible   := true;
      MaskEditSAzimut.SetFocus;
    end;
  end;
end;

procedure TForm94.MaskEditHRichtungKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(13) then
  begin
    SpalteHRichtungS := UCaseS(MaskEditHRichtung.Text);
    PanelSZellen.Visible  := true;
    MaskEditSAzimut.Setfocus;
  end;
end;

procedure TForm94.MaskEditSAzimutKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(13) then
  begin
    SpalteSAzimutS := UcaseS(MaskEditSAzimut.Text);
    MaskEditSFallen.SetFocus;
  end;
end;

procedure TForm94.MaskEditSFallenKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(13) then
  begin
    SpalteSFallenS  := UcaseS(MaskEditSFallen.Text);
    if KompassS = 'Brunton' then
    begin
      MaskEditSRichtung.Visible := true;
      MaskEditSRichtung.SetFocus;
    end;  
    if KompassS = 'Clar' then
    begin
      PanelSpalte.Visible   := true;
      MaskEditOben.Visible  := true;
      MaskEditUnten.Visible := true;
      MaskEditOben.SetFocus;
    end;
    if SpalteSFallenS = SpalteSAzimutS then
    begin
      LabelTrennZ.Visible   := true;
      MaskEditTrenn.Visible := true;
    end;
  end;
end;

procedure TForm94.MaskEditSRichtungKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = chr(13) then
  begin
    SpalteSRichtungS      := UcaseS(MaskEditSRichtung.Text);
    PanelSpalte.Visible   := true;
    MaskEditOben.Visible  := true;
    MaskEditUnten.Visible := true;
    MaskEditOben.SetFocus;
  end;
end;

procedure TForm94.MaskEditObenKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(13) then
  begin
    ObenS := MaskEditOben.Text;
    CheckboxOK.Enabled := false;
    LabelUntereZeile.Enabled := true;
    MaskEditUnten.SetFocus;
  end;
end;

procedure TForm94.MaskEditUntenKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(13) then
  begin
    UntenS := MaskEditUnten.Text;
    if SpalteSAzimutS = SpalteSFallenS then
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

procedure TForm94.MaskEditTrennKeyPress(Sender: TObject; var Key: Char);
begin
  CheckBoxOK.State   := cbUnchecked;
  CheckBoxOK.Enabled := true;
  TrennS             := MaskEditTrenn.Text;
end;

procedure TForm94.CheckBoxOKClick(Sender: TObject);
var
  WSheet        : _WorkSheet;
  Zeile         : OleVariant;
  AZeileS       : string;
  FZeileS       : string;
  ObenZeile, i  : word;
  UntenZeile    : word;
  ASpalte       : word;
  FSpalte       : word;
  RSpalte       : word;
  Trenn         : byte;
  Typ           : TMsgDlgType;
  j             : word;
  ZeichenS      : string[1];
  Ziffer        : boolean;
  DatenZeileS   : string;
  Azimut        : word;
  Streichen     : word;
  AzimutB       : integer;
  Fallen        : shortint;
  Falsch        : word;
  RichtungS, NS : string;
  RZeileS       : string;
  ZS            : string[1];

begin
  AzimutB := 0;
  if CheckBoxOK.State = cbChecked then
  begin
    ListBoxDaten.Visible := true;
    PanelDaten.Visible   := true;
    ListBoxDaten.Clear;
    LabelDaten.Caption   := Tx(183);
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
    Menge   := 0;
    Falsch  := 0;
    {Harnische}
    if KompassS = 'Clar' then
    begin
      ASpalte := Ord(SpalteHAzimutS[1])-64;
      FSpalte := Ord(SpalteHFallenS[1])-64;
      WSheet  := ExcelApplication1.ActiveSheet as _WorkSheet;
      for i := ObenZeile to UntenZeile do
      begin
        Zeile    := WSheet.Cells.Item[i, ASpalte].Value;
        AZeileS  := Zeile;
        if length(AZeileS) = 0 then continue;
        Ziffer := true;
        for j := 1 to length(AzeileS) do
        begin
          ZeichenS := copy(AZeileS,j,1);
          if ZeichenS = TrennS then continue;
          if (ord(ZeichenS[1])< 48) or (ord(ZeichenS[1]) > 57) then
            Ziffer := false;
        end;
        if not Ziffer then continue;
        if SpalteHAzimutS = SpalteHFallenS then
        begin
          inc(Menge);
          Trenn  := pos (TrennS,AZeileS);
          Azimut := StrToInt(Copy(AZeileS,1,Trenn-1));
          delete(AZeileS,1,Trenn);
          Fallen := StrToInt(AZeileS);
          if Winkel = 2 then Neugrad(Azimut, Fallen);
          if (Azimut > 360) or (Fallen > 90) then Falsch := i;
          AziFeld[Menge] := Azimut;
          FalFeld[Menge] := Fallen;
        end
        else
        begin
          Zeile   := WSheet.Cells.Item[i, FSpalte].Value;
          FZeileS := Zeile;
          if length(FZeileS) = 0 then continue;
          Ziffer := true;
          for j := 1 to length(FzeileS) do
          begin
            ZeichenS := copy(FZeileS,j,1);
            if (ord(ZeichenS[1])< 48) or (ord(ZeichenS[1]) > 57) then
              Ziffer := false;
          end;
          if not Ziffer then continue;
          inc(Menge);
          Azimut := StrToInt(AZeileS);
          Fallen := StrToInt(FZeileS);
          if Winkel = 2 then Neugrad (Azimut, Fallen);
          if (Azimut > 360) or (Fallen > 90) then Falsch := i;
          AziFeld[Menge] := Azimut;
          FalFeld[Menge] := Fallen;
        end;
      end;
    end; {Clar-Kompass}
    if KompassS = 'Brunton' then
    begin
      ASpalte := Ord(SpalteHAzimutS[1])-64;
      FSpalte := Ord(SpalteHFallenS[1])-64;
      RSpalte := Ord(SpalteHRichtungS[1])-64;
      WSheet  := ExcelApplication1.ActiveSheet as _WorkSheet;
      for i := ObenZeile to UntenZeile do
      begin
        Zeile    := WSheet.Cells.Item[i, ASpalte].Value;
        AZeileS  := Zeile;
        if length(AZeileS) = 0 then continue;
        Ziffer := true;
        for j := 1 to length(AzeileS) do
        begin
          ZeichenS := copy(AZeileS,j,1);
          if ZeichenS = TrennS then continue;
          if UCaseS(ZeichenS) = 'N' then
          begin
            RichtungS := 'N';
            continue;
          end;
          if UCaseS(ZeichenS) = 'S' then
          begin
            RichtungS := 'S';
            continue;
          end;
          if (ord(ZeichenS[1])< 48) or (ord(ZeichenS[1]) > 57) then
          Ziffer := false;
        end;
        if not Ziffer then continue;
        if (SpalteHAzimutS = SpalteHFallenS) and (SpalteHAzimutS = SpalteHRichtungS) then
        begin
          Trenn  := pos (TrennS,AZeileS);
          Streichen := StrToInt(Copy(AZeileS,1,Trenn-1));
          delete(AZeileS,1,Trenn);
          NS := copy(AZeileS,length(AZeileS),1);
          if (UCaseS(NS) = 'N') or (UcaseS(NS) = 'S') then
            delete(AZeileS,length(AZeileS),1)
          else Falsch := i;
          Fallen := StrToInt(AZeileS);
          if Winkel = 2 then Neugrad(Streichen, Fallen);
          if (Streichen > 360) or (Fallen > 90) then Falsch := i;
        end;
        if (SpalteHFallenS <> SpalteHAzimutS)
        and (SpalteHFallenS = SpalteHRichtungS) then
        begin
          Zeile   := WSheet.Cells.Item[i, FSpalte].Value;
          FZeileS := Zeile;
          if length(FZeileS) = 0 then continue;
          Ziffer := true;
          for j := 1 to length(FzeileS) do
          begin
            ZeichenS := copy(FZeileS,j,1);
            if UcaseS(ZeichenS) = 'N' then
            begin
              RichtungS := 'N';
              continue;
            end;
            if UCaseS(ZeichenS) = 'S' then
            begin
              RichtungS := 'S';
              continue;
            end;
            if (ord(ZeichenS[1])< 48) or (ord(ZeichenS[1]) > 57) then
              Ziffer := false;
          end;
          if not Ziffer then continue;
          Streichen := StrToInt(AZeileS);
          NS := copy(FZeileS,length(FZeileS),1);
          if (UCaseS(NS) = 'N') or (UcaseS(NS) = 'S') then
            delete(FZeileS,length(FZeileS),1)
          else Falsch := i;
          Fallen := StrToInt(FZeileS);
          if Winkel = 2 then Neugrad (Streichen, Fallen);
          if (Streichen > 360) or (Fallen > 90) then Falsch := i;
        end;
        if (SpalteHAzimutS<>SpalteHFallenS) and (SpalteHFallenS<>SpalteHRichtungS) then
        begin
          Ziffer := true;
          Zeile   := WSheet.Cells.Item[i, ASpalte].Value;
          AZeileS := Zeile;
          if length(AZeileS) = 0 then continue;
          for j := 1 to length(AZeileS) do
          begin
            ZeichenS := Copy(AZeileS,j,1);
            if (ord(ZeichenS[1])< 48) or (ord(ZeichenS[1]) > 57) then
              Ziffer := false;
          end;
          Streichen := StrToInt(AZeileS);
          Zeile   := WSheet.Cells.Item[i, FSpalte].Value;
          FZeileS := Zeile;
          if length(FZeileS) = 0 then continue;
          Ziffer := true;
          for j := 1 to length(FZeileS) do
            ZeichenS := copy(FZeileS,j,1);
            if (ord(ZeichenS[1])< 48) or (ord(ZeichenS[1]) > 57) then
              Ziffer := false;
          if not Ziffer then continue;
          Fallen := StrToInt(FZeileS);
          if Winkel = 2 then Neugrad (Streichen, Fallen);
          if (Streichen > 360) or (Fallen > 90) then Falsch := i;
          Zeile   := WSheet.Cells.Item[i, RSpalte].Value;
          RZeileS := Zeile;
          if length(RZeileS) = 0 then continue;
          RichtungS := UCaseS(copy(RZeileS,1,1));
          if (RichtungS <> 'N') and (RichtungS <> 'S') then
            showmessage ('Richtung muss N oder S sein (Zeile'+Inttostr(i));
        end;
        if RichtungS = 'N' then
        begin
          if Streichen <= 180 then
          begin
            AzimutB := Streichen - 90;
            if AzimutB < 0 then AzimutB := AzimutB + 360;
          end;
        end;
        if RichtungS = 'S' then
        begin
          if Streichen <= 180 then AzimutB := Streichen + 90
          else AzimutB := Streichen - 90;
        end;
        inc(Menge);
        AziFeld[Menge] := AzimutB;
        FalFeld[Menge] := Fallen;
      end;{for}
    end;  {Brunton}
    {Striemungen}
    Menge  := 0;
    Falsch := 0;
    if KompassS = 'Clar' then
    begin
      ASpalte := Ord(SpalteSAzimutS[1])-64;
      FSpalte := Ord(SpalteSFallenS[1])-64;
      WSheet  := ExcelApplication1.ActiveSheet as _WorkSheet;
      for i := ObenZeile to UntenZeile do
      begin
        Zeile    := WSheet.Cells.Item[i, ASpalte].Value;
        AZeileS  := Zeile;
        if length(AZeileS) = 0 then continue;
        Ziffer := true;
        for j := 1 to length(AzeileS) do
        begin
          ZeichenS := copy(AZeileS,j,1);
          if ZeichenS = TrennS then continue;
          if (ord(ZeichenS[1])< 45) or (ord(ZeichenS[1]) > 57)
          or (ord(ZeichenS[1])= 46) or (ord(ZeichenS[1]) = 47)
            then Ziffer := false;
          if ord(ZeichenS[1]) = 45 then Ziffer := true;  
        end;
        if not Ziffer then continue;
        if SpalteSAzimutS = SpalteSFallenS then
        begin
          inc(Menge);
          Trenn  := pos (TrennS,AZeileS);
          Azimut := StrToInt(Copy(AZeileS,1,Trenn-1));
          delete(AZeileS,1,Trenn);
          Fallen := StrToInt(AZeileS);
          if Winkel = 2 then Neugrad(Azimut, Fallen);
          if (Azimut > 360) or (Fallen > 90) then Falsch := i;
          SAziFeld[Menge] := Azimut;
          SFalFeld[Menge] := Fallen;
        end
        else
        begin
          Zeile   := WSheet.Cells.Item[i, FSpalte].Value;
          FZeileS := Zeile;
          if length(FZeileS) = 0 then continue;
          Ziffer := true;
          for j := 1 to length(FzeileS) do
          begin
            ZeichenS := copy(FZeileS,j,1);
            if (ord(ZeichenS[1])< 45) or (ord(ZeichenS[1]) > 57)
              then Ziffer := false;
            if (ord(ZeichenS[1])= 46) or (ord(ZeichenS[1]) = 47)
              then Ziffer := false;
          end;
          if not Ziffer then continue;
          inc(Menge);
          Azimut := StrToInt(AZeileS);
          Fallen := StrToInt(FZeileS);
          if Winkel = 2 then Neugrad (Azimut, Fallen);
          if (Azimut > 360) or (Fallen > 90) then Falsch := i;
          SAziFeld[Menge] := Azimut;
          SFalFeld[Menge] := Fallen;
        end;
      end;
    end; {Clar-Kompass}
    if KompassS = 'Brunton' then
    begin
      ASpalte := Ord(SpalteSAzimutS[1])-64;
      FSpalte := Ord(SpalteSFallenS[1])-64;
      RSpalte := Ord(SpalteSRichtungS[1])-64;
      WSheet  := ExcelApplication1.ActiveSheet as _WorkSheet;
      for i := ObenZeile to UntenZeile do
      begin
        Zeile    := WSheet.Cells.Item[i, ASpalte].Value;
        AZeileS  := Zeile;
        if length(AZeileS) = 0 then continue;
        Ziffer := true;
        for j := 1 to length(AzeileS) do
        begin
          ZeichenS := copy(AZeileS,j,1);
          if ZeichenS = TrennS then continue;
          if UCaseS(ZeichenS) = 'N' then
          begin
            RichtungS := 'N';
            continue;
          end;
          if UCaseS(ZeichenS) = 'S' then
          begin
            RichtungS := 'S';
            continue;
          end;
          if (ord(ZeichenS[1])< 48) or (ord(ZeichenS[1]) > 57) then
            Ziffer := false;
        end;
        if not Ziffer then continue;
        if (SpalteSAzimutS = SpalteSFallenS) and (SpalteSAzimutS = SpalteSRichtungS) then
        begin
          Trenn  := pos (TrennS,AZeileS);
          Streichen := StrToInt(Copy(AZeileS,1,Trenn-1));
          delete(AZeileS,1,Trenn);
          NS := copy(AZeileS,length(AZeileS),1);
          if (UCaseS(NS) = 'N') or (UcaseS(NS) = 'S') then
            delete(AZeileS,length(AZeileS),1)
          else Falsch := i;
          Fallen := StrToInt(AZeileS);
          if Winkel = 2 then Neugrad(Streichen, Fallen);
          if (Streichen > 360) or (Fallen > 90) then Falsch := i;
        end;
        if (SpalteSFallenS <> SpalteSAzimutS)
        and (SpalteSFallenS = SpalteSRichtungS) then
        begin
          Zeile   := WSheet.Cells.Item[i, FSpalte].Value;
          FZeileS := Zeile;
          if length(FZeileS) = 0 then continue;
          Ziffer := true;
          for j := 1 to length(FzeileS) do
          begin
            ZeichenS := copy(FZeileS,j,1);
            if UcaseS(ZeichenS) = 'N' then
            begin
              RichtungS := 'N';
              continue;
            end;
            if UCaseS(ZeichenS) = 'S' then
            begin
              RichtungS := 'S';
              continue;
            end;
            if (ord(ZeichenS[1])< 45) or (ord(ZeichenS[1]) > 57) then
              Ziffer := false;
            if (ord(ZeichenS[1])= 46) or (ord(ZeichenS[1]) = 47) then
              Ziffer := false;
          end;
          if not Ziffer then continue;
          Streichen := StrToInt(AZeileS);
          NS := copy(FZeileS,length(FZeileS),1);
          if (UCaseS(NS) = 'N') or (UcaseS(NS) = 'S') then
            delete(FZeileS,length(FZeileS),1)
          else Falsch := i;
          Fallen := StrToInt(FZeileS);
          if Winkel = 2 then Neugrad (Streichen, Fallen);
          if (Streichen > 360) or (Fallen > 90) then Falsch := i;
        end;
        if (SpaltesAzimutS<>SpalteSFallenS) and (SpalteSFallenS<>SpalteSRichtungS) then
        begin
          Ziffer := true;
          Zeile   := WSheet.Cells.Item[i, ASpalte].Value;
          AZeileS := Zeile;
          if length(AZeileS) = 0 then continue;
          for j := 1 to length(AZeileS) do
          begin
            ZeichenS := Copy(AZeileS,j,1);
            if (ord(ZeichenS[1])< 48) or (ord(ZeichenS[1]) > 57) then
              Ziffer := false;
          end;
          Streichen := StrToInt(AZeileS);
          Zeile   := WSheet.Cells.Item[i, FSpalte].Value;
          FZeileS := Zeile;
          if length(FZeileS) = 0 then continue;
          Ziffer := true;
          for j := 1 to length(FZeileS) do
            ZeichenS := copy(FZeileS,j,1);
            if (ord(ZeichenS[1])< 45) or (ord(ZeichenS[1]) > 57) then
              Ziffer := false;
            if (ord(ZeichenS[1])= 46) or (ord(ZeichenS[1]) = 47) then
              Ziffer := false;
          if not Ziffer then continue;
          Fallen := StrToInt(FZeileS);
          if Winkel = 2 then Neugrad (Streichen, Fallen);
          if (Streichen > 360) or (Fallen > 90) then Falsch := i;
          Zeile   := WSheet.Cells.Item[i, RSpalte].Value;
          RZeileS := Zeile;
          if length(RZeileS) = 0 then continue;
          RichtungS := UCaseS(copy(RZeileS,1,1));
          if (RichtungS <> 'N') and (RichtungS <> 'S') then
            showmessage ('Richtung muss N oder S sein (Zeile'+Inttostr(i));
        end;
        if RichtungS = 'N' then
        begin
        if Streichen >= 180 then Streichen := Streichen - 180;
        if Streichen < 90  then  AzimutB := Streichen;
        if (Streichen >= 90) then AzimutB := Streichen + 180;
        end;
        if RichtungS = 'S' then
        begin
          if Streichen >= 180 then Streichen := Streichen - 180;
          if (Streichen < 90) and (RichtungS = 'S') then
            AzimutB := Streichen + 180;
          if (Streichen >= 90) then AzimutB := Streichen;
        end;
        inc(Menge);
        SAziFeld[Menge] := AzimutB;
        SFalFeld[Menge] := Fallen;
      end;{for}
    end;  {Brunton}
    ZahlGlob := Menge;
    for i := 1 to ZahlGlob do
    begin
      DatenZeileS := RightS('000'+IntToStr(AziFeld[i]),3)
                   +'/'+RightS('00'+IntToStr(FalFeld[i]),2)+'  '
                   +RightS('000'+IntToStr(SAziFeld[i]),3)
                   +'/'+IntToStr(SFalFeld[i]);
      ListBoxDaten.Items.Add('     ' + DatenZeileS);
    end;
    LabelO.Caption          := ObenS;
    LabelRU.Caption         := UntenS;
    LabelAnzahl.Visible     := true;
    LabelAnzahl.Caption     := Tx(181);
    LabelMenge.Caption      := IntToStr(ZahlGlob);
    LabelBis.Visible        := true;
    DSpeichern.Enabled      := true;
    Drucker.Enabled         := true;
    Speedspeichern.Enabled  := true;
    SpeedDrucken.Enabled    := true;
    SpeedWinWord.Enabled    := true;
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

procedure TForm94.ButtonZurueckClick(Sender: TObject);
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
  if High(AziFeld)  > 0 then AziFeld  := Nil;
  if High(FalFeld)  > 0 then FalFeld  := Nil;
  if High(SAziFeld) > 0 then SAziFeld := Nil;
  if high(SFalFeld) > 0 then SFalFeld := Nil;
  ListBoxDateien.Clear;
  ListBoxDaten.Clear;
  Form94.Close;
end;

procedure TForm94.ButtonBeendenClick(Sender: TObject);
begin
  if ExcelAn = true then
  begin
    ExcelWorksheet1.Disconnect;
    ExcelApplication1.ActiveWorkbook.Close(DatExcel, EmptyParam, EmptyParam, Lcid);
    ExcelApplication1.Quit;
    ExcelApplication1.Disconnect;
  end;
  if High(AziFeld)  > 0 then AziFeld  := Nil;
  if High(FalFeld)  > 0 then FalFeld  := Nil;
  if High(SAziFeld) > 0 then SAziFeld := Nil;
  if high(SFalFeld) > 0 then SFalFeld := Nil;
  ListBoxDateien.Clear;
  ListBoxDaten.Clear;
  Form94.Close;
  if Programm = 11 then Form26.Close;
  SetCurrentDir(DirectS);
end;

procedure TForm94.ButtonPlottenClick(Sender: TObject);
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
  if (Programm = 11) and (MethodeS = 'Dieder') then
    Form29.Show;
  if (Programm = 11) and (MethodeS = 'Iteration') then
    Form99.Show;
  if Programm = 14 then Form33.Show;
  if Programm = 15 then Form31.Show;
  if Programm = 17 then
  begin
    if MethodeS = 'Eigenwerte' then Form34.Show;
    if MethodeS = 'Iteration'  then Form99.Show;
  end;
end;

procedure TForm94.speichernClick(Sender: TObject);
begin
  if CurrentFile <> '' then Stressein(CurrentFile, ZahlGlob,
     AziFeld, SAziFeld, FalFeld, SFalFeld)
  else speichernUClick(Sender);
end;

procedure TForm94.SpeedSpeichernClick(Sender: TObject);
begin
  speichernClick(Sender);
end;

procedure TForm94.speichernUClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := ExtenS;
  SaveDialog1.Filter     := ExtenS;
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    Stressein(CurrentFile, ZahlGlob, AziFeld, SAziFeld, FalFeld,
              SFalFeld);
  end;
end;

procedure TForm94.einrichtenClick(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TForm94.SpeedEinrichtenClick(Sender: TObject);
begin
  einrichtenClick(Sender);
end;

procedure TForm94.druckenClick(Sender: TObject);
var
  Anzahl : word;
begin
  Anzahl := ZahlGlob;
  DruckPalaeo ('11', DateiZahl, DateiNameS, AziFeld, FalFeld,
               SAziFeld, SFalFeld, Anzahl);
end;

procedure TForm94.SpeedDruckenClick(Sender: TObject);
begin
  druckenClick(Sender);
end;

procedure TForm94.DrwordClick(Sender: TObject);
var
  Anzahl : word;
begin
  Anzahl := ZahlGlob;
  SaveDialog1.DefaultExt := 'rtf';
  SaveDialog1.Filter     := 'rtf';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    WinDruckPalaeo (CurrentFile,'11', DateiZahl, DateiNameS,
                    AziFeld, FalFeld, SAziFeld, SFalFeld, Anzahl);
  end;
end;

procedure TForm94.SpeedWinWordClick(Sender: TObject);
begin
  DrWordClick(Sender);
end;

procedure TForm94.HilfeClick(Sender: TObject);
const
  Anfang = 102;
var
  DateiS : string;
  HelpRouter1 : THelpRouter;
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

procedure TForm94.SpeedHilfeClick(Sender: TObject);
begin
  HilfeClick(Sender);
end;

procedure TForm94.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if Programm = 11 then
  begin
    if SpracheS = 'DEUTSCH' then HilfeS := 'Palaeo-Spannung.doc';
    if SpracheS = 'ENGLISH' then HilfeS := 'Palaeo-Stress.doc';
    ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
                 nil,nil,sw_normal);
  end;
  if Programm = 14 then
  begin
    if SpracheS = 'DEUTSCH' then HilfeS := 'Hoeppener.doc';
    if SpracheS = 'ENGLISH' then HilfeS := 'Hoeppener-E.doc';
    ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
                 nil,nil,sw_normal);
  end;
  if Programm = 15 then
  begin
    if SpracheS = 'DEUTSCH' then HilfeS := 'Harnischflaechen.doc';
    if SpracheS = 'ENGLISH' then HilfeS := 'Slickensides.doc';
    ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
                 nil,nil,sw_normal);
  end;
  if Programm = 17 then
  begin
    if SpracheS = 'DEUTSCH' then HilfeS := 'Formfaktor.doc';
    if SpracheS = 'ENGLISH' then HilfeS := 'Shape-factor.doc';
    ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
                 nil,nil,sw_normal);
  end;
end;

procedure TForm94.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm94.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm94.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

end.
