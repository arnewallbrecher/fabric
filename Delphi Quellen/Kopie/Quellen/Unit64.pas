unit Unit64;

interface

uses
  Windows, Messages, Classes, Dialogs, Controls, StdCtrls, Basic,
  Forms, ComCtrls, Texte, Globvar, FileCtrl, SysUtils, Standard,
  ExtCtrls, Excel97, OleServer, ComObj, Mask, ActiveX, Menus,
  Einausga, Drucken, Buttons, Shellapi, ehsHelpRouter;

type
  TForm64 = class(TForm)
    MainMenu1: TMainMenu;

    PanelExcel  : TPanel;
    PanelDaten  : TPanel;
    PanelDateien: TPanel;
    PanelOrdner : TPanel;
    PanelZellen : TPanel;
    PanelTabelle: TPanel;
    PanelSpeed  : TPanel;

    LabelOrdner     : TLabel;
    LabelDatei      : TLabel;
    LabelDateiname  : TLabel;
    LabelDaten      : TLabel;
    LabelLineare    : TLabel;
    LabelTAuswahl   : TLabel;
    LabelWorkSheet  : TLabel;
    LabelWSName     : TLabel;
    LabelBereich    : TLabel;
    LabelO          : TLabel;
    Labelbis        : TLabel;
    LabelRU         : TLabel;
    LabelAnzahl     : TLabel;
    LabelMenge      : TLabel;

    ListBoxDaten   : TListBox;
    ListBoxDateien : TListBox;

    ButtonPfad     : TButton;
    ButtonZurueck  : TButton;
    ButtonBeenden  : TButton;
    ButtonPlotten  : TButton;

    ComboBoxTabelle: TComboBox;
    Drucken          : TMenuItem;
    DruckerEinrichten: TMenuItem;
    Druck            : TMenuItem;
    Hilfe            : TMenuItem;

    SpeedButtonDrucken   : TSpeedButton;

    PrintDialog1       : TPrintDialog;
    PrinterSetupDialog1: TPrinterSetupDialog;

    Statusbar1 : TStatusbar;

    ExcelWorksheet1  : TExcelWorksheet;
    ExcelWorkbook1   : TExcelWorkbook;
    ExcelApplication1: TExcelApplication;
    LabelDemo: TLabel;
    DatenSpeichern: TMenuItem;
    Dspeichern: TMenuItem;
    speichernUnter: TMenuItem;
    SaveDialog1: TSaveDialog;
    SpeedDatenSpeichern: TSpeedButton;
    SpeedHilfe: TSpeedButton;
    SpeedHandbuch: TSpeedButton;
    Handbuch: TMenuItem;
    Literatur: TMenuItem;
    SpeedLiteratur: TSpeedButton;
    SpeedEinrichten: TSpeedButton;
    LabelAzimut: TLabel;
    LabelFallen: TLabel;
    MaskEditAzimut: TMaskEdit;
    MaskEditFallen: TMaskEdit;
    PanelSpalte: TPanel;
    LabelObereZeile: TLabel;
    LabelUntereZeile: TLabel;
    LabelTrennz: TLabel;
    MaskEditOben: TMaskEdit;
    MaskEditUnten: TMaskEdit;
    CheckBoxOK: TCheckBox;
    MaskEditTrenn: TMaskEdit;
    MaskEditOrdner: TMaskEdit;
    MaskEditRichtung: TMaskEdit;
    LabelRichtung: TLabel;

    procedure FormShow(Sender: TObject);
    procedure ShowHint (Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ButtonPfadClick(Sender: TObject);
    procedure ListBoxDateienClick(Sender: TObject);
    procedure ButtonZurueckClick(Sender: TObject);
    procedure ButtonBeendenClick(Sender: TObject);
    procedure ComboBoxTabelleChange(Sender: TObject);
    procedure ButtonPlottenClick(Sender: TObject);
    procedure DruckerEinrichtenClick(Sender: TObject);
    procedure DruckClick(Sender: TObject);
    procedure SpeedButtonDruckenClick(Sender: TObject);
    procedure HilfeClick(Sender: TObject);
    procedure DspeichernClick(Sender: TObject);
    procedure speichernUnterClick(Sender: TObject);
    procedure SpeedDatenSpeichernClick(Sender: TObject);
    procedure SpeedHilfeClick(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure HandbuchClick(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
    procedure SpeedLiteraturClick(Sender: TObject);
    procedure SpeedEinrichtenClick(Sender: TObject);
    procedure MaskEditAzimutKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditFallenKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditObenKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditUntenKeyPress(Sender: TObject; var Key: Char);
    procedure CheckBoxOKClick(Sender: TObject);
    procedure MaskEditTrennKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditRichtungKeyPress(Sender: TObject; var Key: Char);
  end;

var
  Form64          : TForm64;
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
  SpalteAzimutS   : string[1];
  SpalteFallenS   : string[1];
  SpalteRichtungS : string[1];
  TrennS          : string[1];
  DatExcel        : OleVariant;
  DatNameS        : string;
  DNameS          : string;

implementation
uses Unit6, Unit8, Unit9, Unit12, Unit20, Unit21, Unit22, Unit23, Unit24,
     Unit25, Unit85, Unit93;

{$R *.DFM}

procedure TForm64.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm64.ShowHint (Sender: TObject);
begin
  StatusBar1.SimpleText := Application.Hint;
end;

procedure TForm64.FormActivate(Sender: TObject);
begin
  Left   := 100;
  Top    := 80;
  Width  := 850;
  Height := 650;
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
  SpeedDatenSpeichern.Hint := Hilf(204);
  SpeedButtonDrucken.Hint  := Hilf(423);
  SpeedHilfe.Hint          := Hilf(210);
  PanelExcel.Caption       := Tx(1008);
  LabelDaten.Caption       := Tx(183);  {Daten}
  PanelDateien.Caption     := Tx(1014); {Excel-Datei}
  ButtonPfad.Caption       := Tx(1010); {Ordner suchen}
  LabelOrdner.Caption      := '';       {Ordner}
  LabelDatei.Caption       := '';       {Datei}
  LabelDateiname.Caption   := '';       {DateiName}
  LabelAzimut.Caption      := Tx(1293);
  LabelFallen.Caption      := Tx(1294);
  LabelObereZeile.Caption  := Tx(1297);
  LabelUntereZeile.Caption := Tx(1298);
  LabelTrennz.Caption      := Tx(1339);
  LabelTAuswahl.Caption    := Tx(1017);
  LabelTAuswahl.Enabled    := false;
  MaskEditOben.Text        := '';
  MaskEditUnten.Text       := '';
  MaskEditAzimut.EditMask  := 'L;0; ';
  MaskEditFallen.EditMask  := 'L;0; ';
  MaskEditOben.EditMask    := '9999;0; ';
  MaskEditUnten.EditMask   := '9999;0; ';
  ButtonZurueck.Caption    := Tx(30);
  ButtonBeenden.Caption    := TX(53);
  ButtonPlotten.Caption    := Tx(241);
  if Programm = 2 then
    ButtonPlotten.Caption  :='Rotation';
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
  Drucken.Caption          := Tx(92);
  Druck.Caption            := Tx(93);
  DruckerEinrichten.Caption:= Tx(94);
  Hilfe.Caption            := Tx(162)+' (F1)';
  Drucken.Enabled          := false;
  SpeedButtonDrucken.Enabled  := false;
  SpeedDatenSpeichern.Enabled := false;
  ButtonPfad.Enabled          := true;
  ListBoxDateien.Enabled      := true;
  MaskEditTrenn.EditMask      := 'c;0 ';
  MaskEditTrenn.Text          := ' ';
  MaskEditTrenn.Visible       := false;
  LabelTrennz.Visible         := false;
  Handbuch.Caption            := TX(1055)+' (F2)';
  Literatur.Caption           := Tx(1183)+' (F5)';
  SpeedLiteratur.Hint         := Hilf(462);
  LabelRichtung.Caption       := Tx(1462);
  if KompassS = 'Clar' then
  begin
    LabelRichtung.Visible    := false;
    MaskEditRichtung.Visible := false;
  end;
  if KompassS = 'Brunton' then
  begin
    LabelRichtung.Visible    := true;
    MaskEditRichtung.Visible := true;
  end;
end;

procedure TForm64.ButtonPfadClick(Sender: TObject);
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

procedure TForm64.ListBoxDateienClick(Sender: TObject);
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

procedure TForm64.ComboBoxTabelleChange(Sender: TObject);
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
  MaskEditAzimut.SetFocus;
  LabelWorkSheet.Caption := Tx(1018);
  LabelWSName.Caption    := ComboBoxTabelle.Text;
end;

procedure TForm64.MaskEditAzimutKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(13) then
  begin
    SpalteAzimutS := UcaseS(MaskEditAzimut.Text);
    MaskEditFallen.SetFocus;
  end;
end;

procedure TForm64.MaskEditFallenKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(13) then
  begin
    SpalteFallenS         := UcaseS(MaskEditFallen.Text);
    if KompassS = 'Brunton' then
    begin
      MaskEditRichtung.Visible := true;
      MaskEditRichtung.SetFocus;
    end;  
    if KompassS = 'Clar' then
    begin
      PanelSpalte.Visible   := true;
      MaskEditOben.Visible  := true;
      MaskEditUnten.Visible := true;
      MaskEditOben.SetFocus;
    end;
    if SpalteFallenS = SpalteAzimutS then
    begin
      LabelTrennZ.Visible   := true;
      MaskEditTrenn.Visible := true;
    end;
  end;
end;

procedure TForm64.MaskEditRichtungKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(13) then
  begin
    SpalteRichtungS := UCaseS(MaskEditRichtung.Text);
    PanelSpalte.Visible   := true;
    MaskEditOben.Visible  := true;
    MaskEditUnten.Visible := true;
    MaskEditOben.SetFocus;
  end;  
end;

procedure TForm64.MaskEditObenKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(13) then
  begin
    ObenS := MaskEditOben.Text;
    CheckboxOK.Enabled := false;
    LabelUntereZeile.Enabled := true;
    MaskEditUnten.SetFocus;
  end;
end;

procedure TForm64.MaskEditUntenKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(13) then
  begin
    UntenS := MaskEditUnten.Text;
    if SpalteAzimutS = SpalteFallenS then
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

procedure TForm64.MaskEditTrennKeyPress(Sender: TObject; var Key: Char);
begin
  CheckBoxOK.State   := cbUnchecked;
  CheckBoxOK.Enabled := true;
  TrennS             := MaskEditTrenn.Text;
end;

procedure TForm64.CheckBoxOKClick(Sender: TObject);
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
    Menge   := 0;
    Falsch  := 0;
    if KompassS = 'Clar' then
    begin
      ASpalte := Ord(SpalteAzimutS[1])-64;
      FSpalte := Ord(SpalteFallenS[1])-64;
      WSheet  := ExcelApplication1.ActiveSheet as _WorkSheet;
      for i := ObenZeile to UntenZeile do
      begin
        Zeile    := WSheet.Cells.Item[i, ASpalte].Value;
        AZeileS  := Zeile;
        LeerLoeschen(AZeileS);
        if AZeileS = '' then continue;
        Ziffer := true;
        for j := 1 to length(AzeileS) do
        begin
          ZeichenS := copy(AZeileS,j,1);
          if ZeichenS = TrennS then continue;
          if (ord(ZeichenS[1])< 48) or (ord(ZeichenS[1]) > 57) then
            Ziffer := false;
        end;
        if not Ziffer then continue;
        if SpalteAzimutS = SpalteFallenS then
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
          LeerLoeschen(FZeileS);
          if FZeileS = '' then continue;
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
      ASpalte := Ord(SpalteAzimutS[1])-64;
      FSpalte := Ord(SpalteFallenS[1])-64;
      RSpalte := Ord(SpalteRichtungS[1])-64;
      WSheet  := ExcelApplication1.ActiveSheet as _WorkSheet;
      for i := ObenZeile to UntenZeile do
      begin
        Zeile    := WSheet.Cells.Item[i, ASpalte].Value;
        AZeileS  := Zeile;
        LeerLoeschen(AZeileS);
        if AZeileS = '' then continue;
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
        if (SpalteAzimutS = SpalteFallenS) and (SpalteAzimutS = SpalteRichtungS) then
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
        if (SpalteFallenS <> SpalteAzimutS)
        and (SpalteFallenS = SpalteRichtungS) then
        begin
          Zeile   := WSheet.Cells.Item[i, FSpalte].Value;
          FZeileS := Zeile;
          LeerLoeschen(FZeileS);
          if FZeileS = '' then continue;
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
        if (SpalteAzimutS<>SpalteFallenS) and (SpalteFallenS<>SpalteRichtungS) then
        begin
          Ziffer := true;
          Zeile   := WSheet.Cells.Item[i, ASpalte].Value;
          AZeileS := Zeile;
          LeerLoeschen(AZeileS);
          if AZeileS = '' then continue;
          for j := 1 to length(AZeileS) do
          begin
            ZeichenS := Copy(AZeileS,j,1);
            if (ord(ZeichenS[1])< 48) or (ord(ZeichenS[1]) > 57) then
              Ziffer := false;
          end;
          Streichen := StrToInt(AZeileS);
          Zeile   := WSheet.Cells.Item[i, FSpalte].Value;
          FZeileS := Zeile;
          LeerLoeschen(FZeileS);
          if FZeileS = '' then continue;
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
          LeerLoeschen(RZeileS);
          if RZeileS = '' then continue;
          RichtungS := UCaseS(copy(RZeileS,1,1));
          if (RichtungS <> 'N') and (RichtungS <> 'S') then
            showmessage ('Richtung muss N oder S sein (Zeile'+Inttostr(i));
        end;
        if RichtungS = 'N' then
        begin
          if Gefuegetyp = 2 then
          begin
            if Streichen <= 180 then
            begin
              AzimutB := Streichen - 90;
              if AzimutB < 0 then AzimutB := AzimutB + 360;
            end
            else AzimutB := (Streichen + 90) mod 360;
          end;
          if Gefuegetyp = 1 then
          begin
            if Streichen >= 180 then Streichen := Streichen - 180;
            if Streichen < 90  then  AzimutB := Streichen;
            if (Streichen >= 90) then AzimutB := Streichen + 180;
          end;
        end;
        if RichtungS = 'S' then
        begin
          if Gefuegetyp = 2 then
          begin
            if Streichen <= 180 then AzimutB := Streichen + 90
            else AzimutB := Streichen - 90;
          end;
          if Gefuegetyp = 1 then
          begin
            if Streichen >= 180 then Streichen := Streichen - 180;
            if (Streichen < 90) and (RichtungS = 'S') then
              AzimutB := Streichen + 180;
            if (Streichen >= 90) then AzimutB := Streichen;
          end;
        end;
        inc(Menge);
        AziFeld[Menge] := AzimutB;
        FalFeld[Menge] := Fallen;
      end;{for}
    end;  {Brunton}
    ZahlGlob := Menge;
    for i := 1 to ZahlGlob do
    begin
      DatenZeileS := RightS('000'+IntToStr(AziFeld[i]),3)
                   +'/'+RightS('00'+IntToStr(FalFeld[i]),2);
      ListBoxDaten.Items.Add('     ' + DatenZeileS);
    end;
    LabelO.Caption          := ObenS;
    LabelRU.Caption         := UntenS;
    LabelAnzahl.Visible     := true;
    LabelAnzahl.Caption     := Tx(181);
    LabelMenge.Caption      := IntToStr(ZahlGlob);
    LabelBis.Visible        := true;
    DatenSpeichern.Enabled  := true;
    Drucken.Enabled         := true;
    SpeedDatenspeichern.Enabled := true;
    SpeedButtonDrucken.Enabled  := true;
    if Falsch <> 0 then
    begin
      showmessage(Tx(1340)+' '+Inttostr(Falsch));
      ExcelAn := true;
      ButtonZurueckClick(Sender);
    end;
    ButtonPlotten.Visible := true;
  end;
end;

procedure TForm64.DruckerEinrichtenClick(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TForm64.SpeedEinrichtenClick(Sender: TObject);
begin
  DruckerEinrichtenClick(Sender);
end;

procedure TForm64.DruckClick(Sender: TObject);
begin
  Datnam (DatNameS, ExtensionS);
  Titel8 ('3', 0, DateiNameS, AziFeld, FalFeld, Menge);
end;

procedure TForm64.SpeedButtonDruckenClick(Sender: TObject);
begin
  DruckClick(Sender);
end;

procedure TForm64.HilfeClick(Sender: TObject);
const
  Anfang = 102;
var
  DateiS : string;
  HelpRouter1 : THelpRouter;
  HilfText : string;
  i        : word;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\excel.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\excel.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm64.ButtonPlottenClick(Sender: TObject);
var
  i : word;
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
  if Programm =  2 then Form93.Show;
  if Programm =  3 then Form12.Show;
  if Programm =  4 then Form85.Show;
  if Programm =  8 then Form21.Show;
  if Programm = 24 then Form23.Show;
  if Programm = 23 then Form25.Show;
end;

procedure TForm64.ButtonZurueckClick(Sender: TObject);
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
  Form64.Close;
end;

procedure TForm64.ButtonBeendenClick(Sender: TObject);
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
  Form64.Close;
  if Programm =  3 then Form9.Close;
  if Programm =  4 then Form9.Close;
  if Programm =  8 then Form20.Close;
  if Programm = 24 then Form22.Close;
  if Programm = 21 then Form24.Close;
  SetCurrentDir(DirectS);
end;

procedure TForm64.DspeichernClick(Sender: TObject);
begin
  if CurrentFile <> '' then Speichern (CurrentFile, Menge,
                                      AziFeld,FalFeld)
  else speichernUnterClick(Sender);
end;

procedure TForm64.speichernUnterClick(Sender: TObject);
begin
  Erweiterung (ExtenS);
  SaveDialog1.DefaultExt := ExtenS;
  SaveDialog1.Filter     := ExtenS;
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    Speichern (CurrentFile, Menge, AziFeld, FalFeld);
  end;
end;

procedure TForm64.SpeedDatenSpeichernClick(Sender: TObject);
begin
  DspeichernClick(Sender);
end;

procedure TForm64.SpeedHilfeClick(Sender: TObject);
begin
  HilfeClick(Sender);
end;

procedure TForm64.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm64.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if Programm = 3 then
  begin
    if SpracheS = 'DEUTSCH' then HilfeS := 'Daten_plotten.doc';
    if SpracheS = 'ENGLISH' then HilfeS := 'Plot_data.doc';
    ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
                 nil,nil,sw_normal);
  end;
  if Programm = 4 then
  begin
    if SpracheS = 'DEUTSCH' then HilfeS := 'Grosskreise.doc';
    if SpracheS = 'ENGLISH' then HilfeS := 'Great_circles.doc';
    ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
                 nil,nil,sw_normal);
  end;
  if Programm = 8 then
  begin
    if SpracheS = 'DEUTSCH' then HilfeS := 'Gefuege_Statistik.doc';
    if SpracheS = 'ENGLISH' then HilfeS := 'Fabric_Statistics.doc';
    ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
                 nil,nil,sw_normal);
  end;
  if Programm = 23 then
  begin
    if SpracheS = 'DEUTSCH' then HilfeS := 'Clodat.doc';
    if SpracheS = 'ENGLISH' then HilfeS := 'Clodat-E.doc';
    ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
                 nil,nil,sw_normal);
  end;
  if Programm = 24 then
  begin
    if SpracheS = 'DEUTSCH' then HilfeS := 'Isolinien.doc';
    if SpracheS = 'ENGLISH' then HilfeS := 'Contour_lines.doc';
    ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
                 nil,nil,sw_normal);
  end;
end;

procedure TForm64.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm64.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

end.
