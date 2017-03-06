unit Unit84;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, ComCtrls, Texte, StdCtrls, ExtCtrls,
  Globvar, FileCtrl, Basic, ActiveX, Excel97, OleServer,
  Standard, ComObj, Mask, Menus, Buttons, Shellapi,
  Karte, ehsHelpRouter;

type
  TForm84 = class(TForm)
    StatusBar: TStatusBar;
    PanelExcel: TPanel;
    ButtonPfad: TButton;
    PanelTabelle: TPanel;
    LabelTAuswahl: TLabel;
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
    ExcelApplication1: TExcelApplication;
    ExcelWorksheet1: TExcelWorksheet;
    ExcelWorkbook1: TExcelWorkbook;
    ButtonZurueck: TButton;
    ButtonEnde: TButton;
    PanelGeografie: TPanel;
    LabelSBreite: TLabel;
    LabelSLaenge: TLabel;
    MaskEditBreite: TMaskEdit;
    MaskEditLaenge: TMaskEdit;
    PanelSpalte: TPanel;
    LabelObereZeile: TLabel;
    LabelUntereZeile: TLabel;
    LabelTrennz: TLabel;
    MaskEditOben: TMaskEdit;
    MaskEditUnten: TMaskEdit;
    CheckBoxOK: TCheckBox;
    MaskEditTrenn: TMaskEdit;
    MaskEditOrdner: TMaskEdit;
    PanelSpalteAzimut: TPanel;
    LabelAzimut: TLabel;
    LabelFallen: TLabel;
    MaskEditAzimut: TMaskEdit;
    MaskEditFallen: TMaskEdit;
    ButtonPlotten: TButton;
    RadioGroupTyp: TRadioGroup;
    RadioButtonLinear: TRadioButton;
    RadioButtonFlaeche: TRadioButton;
    ComboBoxTabelle: TComboBox;
    MainMenu1: TMainMenu;
    Hilfe: TMenuItem;
    Panel1: TPanel;
    PanelUTM: TPanel;
    MaskEditUTM: TMaskEdit;
    LabelUTM: TLabel;
    Literatur: TMenuItem;
    PanelHilfe: TPanel;
    SpeedHilfe: TSpeedButton;
    SpeedHandbuch: TSpeedButton;
    SpeedLiteratur: TSpeedButton;
    Handbuch: TMenuItem;
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ShowHint (Sender: TObject);
    procedure ButtonPfadClick(Sender: TObject);
    procedure ListBoxDateienClick(Sender: TObject);
    procedure ButtonEndeClick(Sender: TObject);
    procedure ButtonZurueckClick(Sender: TObject);
    procedure MaskEditObenKeyPress(Sender: TObject; var Key: Char);
    procedure CheckBoxOKClick(Sender: TObject);
    procedure MaskEditUntenKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditBreiteKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditLaengeKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditTrennKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditAzimutKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditFallenKeyPress(Sender: TObject; var Key: Char);
    procedure ButtonPlottenClick(Sender: TObject);
    procedure RadioButtonLinearClick(Sender: TObject);
    procedure RadioButtonFlaecheClick(Sender: TObject);
    procedure ComboBoxTabelleChange(Sender: TObject);
    procedure HilfeClick(Sender: TObject);
    procedure MaskEditUTMKeyPress(Sender: TObject; var Key: Char);
    procedure HandbuchClick(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
    procedure SpeedHilfeClick(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure SpeedLiteraturClick(Sender: TObject);
  end;

var
  Form84        : TForm84;
  DrS           : string;
  ExcelAn       : boolean;
  Lcid          : integer;
  SpeicherExcel : OleVariant;
  ExcelNameS    : string;
  TypS          : string;
  ObenS, UntenS : string;
  Menge         : word;
  SpalteBreiteS : string[1];
  SpalteLaengeS : string[1];
  Spalte        : byte;
  SpalteAzimutS : string[1];
  SpalteFallenS : string[1];
  TrennS        : string[1];
  PositionS     : string;

implementation
uses Unit79, Unit81;

{$R *.DFM}
procedure TForm84.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm84.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm84.FormActivate(Sender: TObject);
begin
  Left   := 140;
  Top    := 80;
  Width  := 800;
  Height := 620;
  Form84.Caption := 'Fabric8: '+Tx(1288);
  setlength (BreiteFeld, MaxDaten);
  setlength (LaengeFeld, MaxDaten);
  setlength (AziFeld, MaxDaten);
  setlength (FalFeld, MaxDaten);
  setlength (LpFeld, MaxDaten);
  ExcelAn                     := false;
  ListBoxDateien.Visible      := false;
  ListBoxDaten.Visible        := false;
  PanelDateien.Visible        := false;
  PanelOrdner.Visible         := false;
  PanelDaten.Visible          := false;
  PanelTabelle.Visible        := false;
  PanelGeografie.Visible      := false;
  PanelSpalte.Visible         := false;
  PanelDaten.Visible          := false;
  SpeedHilfe.Hint             := Hilf(210);
  SpeedHandbuch.Hint          := Hilf(274);
  SpeedLiteratur.Hint         := Hilf(462);
  PanelExcel.Caption          := Tx(1008);
  PanelDateien.Caption        := Tx(1014); {Excel-Datei}
  PanelSpalteAzimut.Visible   := false;
  ButtonPfad.Caption          := Tx(1010);
  ButtonZurueck.Caption       := Tx(30);
  ButtonEnde.Caption          := TX(53);
  ButtonPlotten.Caption       := Tx(241);
  LabelDaten.Caption          := Tx(183);  {Daten}
  LabelTAuswahl.Caption       := Tx(1017);
  LabelOrdner.Caption         := Tx(1011);
  LabelWorkSheet.Caption      := Tx(1018);
  LabelWSName.Caption         := '';
  if (KoordinatenS = 'DMM') or (KoordinatenS = 'DMS') then
  begin
    LabelSBreite.Caption        := Tx(1264);
    LabelSLaenge.Caption        := Tx(1265);
  end
  else
  begin
    LabelSBreite.Caption        := Tx(1306);
    LabelSLaenge.Caption        := Tx(1307);
  end;
  LabelBereich.Caption        := Tx(1015);
  Labelbis.Caption            := Tx(1016);
  LabelO.Caption              := '';
  LabelRU.Caption             := '';
  LabelAnzahl.Caption         := Tx(181);
  LabelAzimut.Caption         := TX(1293);
  LabelFallen.Caption         := Tx(1294);
  LabelMenge.Caption          := '';
  LabelObereZeile.Caption     := Tx(1297);
  LabelUntereZeile.Caption    := Tx(1298);
  RadioGroupTyp.Caption       := Tx(157);
  RadioButtonLinear.Caption   := TX(158);
  RadioButtonFlaeche.Caption  := Tx(159);
  Hilfe.Caption               := Tx(162)+'(F1)';
  Handbuch.Caption            := Tx(1055)+'(F2)';
  Literatur.Caption           := Tx(1183)+'(F5)';
  MaskEditBreite.EditMask     := 'L;0; ';
  MaskEditLaenge.EditMask     := 'L;0; ';
  MaskEditAzimut.EditMask     := 'L;0; ';
  MaskEditFallen.EditMask     := 'L;0; ';
  RadioGroupTyp.Visible       := false;
  RadioButtonLinear.Visible   := false;
  RadioButtonFlaeche.Visible  := false;
  LabelWorksheet.Visible      := false;
  LabelBereich.Visible        := false;
  LabelBis.Visible            := false;
  LabelAnzahl.Visible         := false;
  ButtonPlotten.Visible       := false;
  LabelTrennz.Visible         := false;
  MaskEditTrenn.Visible       := false;
  MaskEditBreite.Text         := '';
  MaskEditLaenge.Text         := '';
  MaskEditAzimut.Text         := '';
  MaskEditFallen.Text         := '';
  MaskEditOben.Text           := '';
  MaskEditUnten.Text          := '';
  MaskEditTrenn.Text          := '';
  PanelUTM.Visible            := false;
  MaskEditUTM.Visible         := false;
  MaskEditUTM.EditMask        := '99l;0; ';
  RadioButtonLinear.Checked   := false;
  RadioButtonFlaeche.Checked  := false;
end;

procedure TForm84.ButtonPfadClick(Sender: TObject);
const
  Verz = 1000;
var
  DirRecord : TSearchRec;
  Fehler    : integer;
  Typ       : TMsgDlgType;
begin
  ListBoxDateien.Enabled := true;
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
  ListBoxDateien.Visible  := true;
  PanelDateien.Visible    := true;
  ExcelAn := false;
end;

procedure TForm84.ComboBoxTabelleChange(Sender: TObject);
begin
  if ExcelAn then
  begin
    ExcelWorksheet1.ConnectTo(ExcelApplication1.Worksheets.Item[
                    ComboBoxTabelle.Text] as _WorkSheet);
    Showmessage(Tx(1029)+Chr(13)+Tx(1095));
    ExcelApplication1.Visible[lcid]:=True;
    ExcelApplication1.UserControl := true;
    PanelGeografie.Visible        := true;
    if KoordinatenS = 'UTM' then
    begin
      PanelUTM.Visible    := true;
      MaskEditUTM.Visible := true;
      MaskEditUTM.SetFocus;
    end
    else MaskEditBreite.SetFocus;
  end;
end;

procedure TForm84.MaskEditUTMKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(13) then
  begin
    UTMZoneS := MaskEditUTM.Text;
    LeerLoeschen(UTMZoneS);
    if UTMZoneS = '' then exit;
    if length(UTMZoneS) < 3 then exit;
    MaskEditBreite.SetFocus;
  end;
end;

procedure TForm84.MaskEditBreiteKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(13) then
  begin
    SpalteBreiteS := UcaseS(MaskEditBreite.Text);
    MaskEditLaenge.SetFocus;
  end;
end;

procedure TForm84.MaskEditLaengeKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(13) then
  begin
    SpalteLaengeS := UcaseS(MaskEditLaenge.Text);
    PanelSpalteAzimut.Visible := true;
    MaskEditAzimut.SetFocus;
  end;
end;

procedure TForm84.MaskEditAzimutKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(13) then
  begin
    SpalteAzimutS := UcaseS(MaskEditAzimut.Text);
    MaskEditFallen.SetFocus;
  end;
end;

procedure TForm84.MaskEditFallenKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(13) then
  begin
    SpalteFallenS              := UcaseS(MaskEditFallen.Text);
    RadioGroupTyp.Visible      := true;
    RadioButtonLinear.Visible  := true;
    RadioButtonFlaeche.Visible := true;
    RadioButtonLinear.Checked  := false;
    RadioButtonLinear.Checked  := false;
  end;
end;

procedure TForm84.RadioButtonLinearClick(Sender: TObject);
begin
  TypS := 'L';
  PanelSpalte.Visible := true;
  MaskEditOben.SetFocus;
end;

procedure TForm84.RadioButtonFlaecheClick(Sender: TObject);
begin
  TypS := 'P';
  PanelSpalte.Visible := true;
  MaskEditOben.SetFocus;
end;

procedure TForm84.ListBoxDateienClick(Sender: TObject);
var
  i          : word;
  DnameS     : string;
  Tabzaehlen : word;
  Wks        : _Worksheet;
  DatExcel   : OleVariant;
begin
  if ExcelAn = true then
  begin
    ExcelWorksheet1.Disconnect;
    ExcelApplication1.ActiveWorkbook.Close(SpeicherExcel, EmptyParam, EmptyParam, Lcid);
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
  PanelOrdner.Visible     := true;
  PanelTabelle.Visible    := true;
  LabelDatei.Caption      := Tx(211);
  LabelDateiName.Caption  := DnameS;
  LabelTAuswahl.Enabled   := true;
  ListBoxDateien.Enabled  := false;
end;

procedure TForm84.MaskEditObenKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(13) then
  begin
    ObenS := MaskEditOben.Text;
    CheckboxOK.Enabled := false;
    LabelUntereZeile.Enabled := true;
    MaskEditUnten.SetFocus;
  end;
end;

procedure TForm84.MaskEditUntenKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(13) then
  begin
    UntenS := MaskEditUnten.Text;
    MaskEditTrenn.Enabled := true;
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

procedure TForm84.MaskEditTrennKeyPress(Sender: TObject; var Key: Char);
begin
  CheckBoxOK.State   := cbUnchecked;
  CheckBoxOK.Enabled := true;
  TrennS             := MaskEditTrenn.Text;
end;

procedure TForm84.CheckBoxOKClick(Sender: TObject);
var
  WSheet        : _WorkSheet;
  Zeile         : OleVariant;
  BZeileS       : string;
  LZeileS       : string;
  AZeileS       : string;
  FZeileS       : string;
  ObenZeile, i  : word;
  UntenZeile    : word;
  BSpalte       : word;
  LSpalte       : word;
  ASpalte       : word;
  FSpalte       : word;
  PruefS, GradS : string;
  Trenn         : byte;
  Typ           : TMsgDlgType;
  GTypS, LGradS : string;
  Minuten       : word;
  Sekunde       : real;
  SekS, MinS    : string;
  RestS, BGradS : string;
  BMinS, LMinS  : string;
  Ziffer        : boolean;
  j             : byte;
  ZahlS         : string[1];

begin
  if CheckBoxOK.State = cbChecked then
  begin
    DecimalSeparator := '.';
    ListBoxDaten.Visible := true;
    PanelDaten.Visible   := true;
    ListBoxDaten.Clear;
    LabelDaten.Caption   := tx(183);
    LabelLineare.Caption := TypS;
    LabelBereich.Caption := 'Excel-Bereich: von';
    Labelbis.Caption     := 'bis';
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
    BSpalte := Ord(SpalteBreiteS[1])-64;
    LSpalte := Ord(SpalteLaengeS[1])-64;
    ASpalte := Ord(SpalteAzimutS[1])-64;
    FSpalte := Ord(SpalteFallenS[1])-64;
    WSheet := ExcelApplication1.ActiveSheet as _WorkSheet;
    Menge := 0;
    for i := ObenZeile to UntenZeile do
    begin
      Zeile   := WSheet.Cells.Item[i, BSpalte].Value;
      BZeileS := Zeile;
      LeerLoeschen (BZeileS);
      Zeile  := WSheet.Cells.Item[i, LSpalte].Value;
      LZeileS := Zeile;
      LeerLoeschen(LZeileS);
      Zeile    := WSheet.Cells.Item[i, ASpalte].Value;
      AZeileS  := Zeile;
      LeerLoeschen(AZeileS);
      if (BZeileS = '') or (AZeileS = '') then continue;
      if (KoordinatenS = 'DMM') or (KoordinatenS = 'DMS') then
      begin
        PruefS := copy(BZeileS,1,1);
        if (PruefS='N') or (PruefS='S') then NordSuedS := PruefS;
        if (PruefS <> 'N') and (PruefS <> 'S') then continue;
        delete(BZeileS,1,1);
        PruefS := copy(LZeileS,1,1);
        if (PruefS='E') or (PruefS='W') then OstWestS := PruefS;
        if (PruefS <> 'E') and (PruefS<> 'W') then continue;
        delete(LZeileS,1,1);
        inc(Menge);
      end;
      if KoordinatenS = 'DMM' then
      begin
        GradS := copy(BZeileS,1,Pos('°',BZeileS)-1);
        delete(BZeileS,1,Pos('°',BZeileS));
        if copy(BZeileS,Length(BZeileS),1) = chr(39) then
          BZeileS  := copy(BZeileS,1,Length(BZeileS)-1);
        MinS := BZeileS;
        BreiteFeld[Menge] := StrToInt(GradS)*60+StrToFloat(MinS);
        GradS := Copy(LZeileS,1,pos('°',LZeileS)-1);
        delete(LZeileS,1,Pos('°',LZeileS));
        if copy(LZeileS,Length(LZeileS),1) = chr(39) then
          LZeileS := copy(LZeileS,1,Length(LZeileS)-1);
        MinS := LZeileS;
        LaengeFeld[Menge] := StrToInt(GradS)*60 + StrToFloat(MinS);
      end;
      if KoordinatenS = 'DMS' then
      begin
        GradS := copy(BZeileS,1,Pos('°',BZeileS)-1);
        delete(BZeileS,1,Pos('°',BZeileS));
        MinS := copy(BZeileS,1,Pos(chr(39),BZeileS)-1);
        Minuten := StrToInt(MinS);
        delete(BZeileS,1,Pos(chr(39),BZeileS));
        SekS := BZeileS;
        if copy(SekS,length(SekS),1) = chr(39) then
          SekS := copy(SekS,1,Length(SekS)-1);
        if copy(SekS,length(SekS),1) = chr(39) then
          SekS := copy(SekS,1,Length(SekS)-1);
        SekS    := copy(SekS,1,length(SekS)-2);
        RestS   := copy(SekS,length(SekS),1);
        Sekunde := StrToFloat(SekS+'.'+RestS);
        BreiteFeld[Menge] := StrToInt(GradS)*60+Minuten
                           +Sekunde/60;
        GradS := copy(LZeileS,1,Pos('°',LZeileS)-1);
        delete(LZeileS,1,Pos('°',LZeileS));
        MinS := copy(LZeileS,1,Pos(chr(39),LZeileS)-1);
        Minuten := StrToInt(MinS);
        delete(LZeileS,1,Pos(chr(39),LZeileS));
        SekS := LZeileS;
        if copy(SekS,length(SekS),1) = chr(39) then
          SekS := copy(SekS,1,Length(SekS)-1);
        if copy(SekS,length(SekS),1) = chr(39) then
          SekS := copy(SekS,1,Length(SekS)-1);
        SekS    := copy(SekS,1,length(SekS)-2);
        RestS   := copy(SekS,length(SekS),1);
        Sekunde := StrToFloat(SekS+'.'+RestS);
        LaengeFeld[Menge] := StrToInt(GradS)*60+Minuten
                             +Sekunde/60;
      end;
      if (KoordinatenS = 'Gauss') or (KoordinatenS = 'UTM') then
      begin
        NordSuedS := 'N';
        OstWestS  := 'E';
        Ziffer := true;
        for j := 1 to length(BZeileS) do
        begin
          ZahlS := copy(BZeileS,j,1);
          if ZahlS <> ' ' then
            if (Ord(ZahlS[1])<48) or (Ord(ZahlS[1])>57) then
              Ziffer := false;
        end;
        if not Ziffer then continue;
        inc(Menge);
        LaengeFeld[Menge] := StrToInt(BZeileS);
        BreiteFeld[Menge] := StrToInt(LZeileS);
      end;
      If TypS = 'L' then LpFeld[Menge] := true
      else LpFeld[Menge] := false;
      if SpalteAzimutS = SpalteFallenS then
      begin
        Trenn  := pos (TrennS,AZeileS);
        AziFeld[Menge] := StrToInt(Copy(AZeileS,1,Trenn-1));
        delete(AZeileS,1,Trenn);
        FalFeld[Menge] := StrToInt(AZeileS);
      end
      else
      begin
        AziFeld[Menge] := StrToInt(AZeileS);
        Zeile   := WSheet.Cells.Item[i, FSpalte].Value;
        FZeileS := Zeile;
        LeerLoeschen(FZeileS);
        FalFeld[Menge] := StrToInt(FZeileS);
      end;
    end; // for Obenzeile...
    ZahlGlob             := Menge;
    ListBoxDaten.Visible := true;
    for i := 1 to ZahlGlob do
    begin
      if LpFeld[i] then TypS := 'L' else TypS := 'P';
      if (KoordinatenS = 'DMM') or (KoordinatenS = 'DMS') then
      begin
        GradMin(BreiteFeld[i],i,BGradS,BMinS);
        GradMin(LaengeFeld[i],i,LGradS,LMins);
        ListBoxDaten.Items.Add (NordSuedS+BGradS+'°'+BMinS+'´ '
                                +OstWestS+LGradS+'°'+LMinS+'´  '
                                +' '+Typs+' '
                                +RightS('000'+IntToStr(AziFeld[i]),3)
                                +'/'+RightS('00'+IntToStr(FalFeld[i]),2));
      end;
      if (KoordinatenS = 'Gauss') or (KoordinatenS = 'UTM') then
        ListBoxDaten.Items.Add (IntToStr(round(LaengeFeld[i]))+'   '+
                                IntToStr(round(BreiteFeld[i]))+'    '
                                +' '+Typs+' '
                                +RightS('000'+IntToStr(AziFeld[i]),3)
                                +'/'+RightS('00'+IntToStr(FalFeld[i]),2));
    end; // For I = 1 to ZahlGlog
    PanelDaten.Visible   := true;
    LabelAnzahl.Caption  := Tx(181);
    LabelAnzahl.Visible  := true;
    LabelMenge.Caption   := IntToStr(Menge);
    LabelO.Caption       := UcaseS(ObenS);
    LabelRU.Caption      := UcaseS(UntenS);
    LabelDaten.Caption   := tx(183);
    if TypS = 'L' then GTypS := Tx(158) else GTyps := Tx(159);
    LabelLineare.Caption := GTypS;
    LabelBereich.Caption := Tx(1295);
    Labelbis.Caption     := Tx(1296);
    LabelBereich.Visible := true;
    LabelBis.Visible     := true;
    ButtonPlotten.Visible:= true;
  end; // CheckBox
end;

procedure TForm84.ButtonPlottenClick(Sender: TObject);
begin
  if ExcelAn = true then
  begin
    SpeicherExcel := true;
    ExcelWorksheet1.Disconnect;
    ExcelApplication1.ActiveWorkbook.Close(SpeicherExcel, EmptyParam, EmptyParam, Lcid);
    ExcelApplication1.Quit;
    ExcelApplication1.Disconnect;
    ChDir (DirectS);
  end;
  Form81.Show;
end;

procedure TForm84.ButtonEndeClick(Sender: TObject);
begin
  BreiteFeld := Nil;
  LaengeFeld := Nil;
  LpFeld     := Nil;
  AziFeld    := Nil;
  FalFeld    := Nil;
  if ExcelAn = true then
  begin
    SpeicherExcel := true;
    ExcelWorksheet1.Disconnect;
    ExcelApplication1.ActiveWorkbook.Close(SpeicherExcel, EmptyParam, EmptyParam, Lcid);
    ExcelApplication1.Quit;
    ExcelApplication1.Disconnect;
    ChDir (DirectS);
  end;
  Form84.Close;
  Form79.Close;
end;

procedure TForm84.ButtonZurueckClick(Sender: TObject);
begin
  BreiteFeld := Nil;
  LaengeFeld := Nil;
  LpFeld     := Nil;
  AziFeld    := Nil;
  FalFeld    := Nil;
  if ExcelAn = true then
  begin
    SpeicherExcel := true;
    ExcelWorksheet1.Disconnect;
    ExcelApplication1.ActiveWorkbook.Close(SpeicherExcel, EmptyParam, EmptyParam, Lcid);
    ExcelApplication1.Quit;
    ExcelApplication1.Disconnect;
    ChDir (DirectS);
  end;
  Form84.Close;
end;

procedure TForm84.HilfeClick(Sender: TObject);
var
  DateiS : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\84Karte-Excel.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\84Map-excel.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm84.SpeedHilfeClick(Sender: TObject);
begin
  HilfeClick(Sender);
end;

procedure TForm84.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Eintragen_in_Karte.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'Plot_data_into_map.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm84.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm84.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm84.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

end.
