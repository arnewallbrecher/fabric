unit Unit80;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, ComCtrls, Texte, ExtCtrls,
  Globvar, Mask, Standard, Basic, Menus, EinAusga, Buttons,
  Shellapi, Karte, ehsHelpRouter, CheckLst, ExtDlgs;

type
  TForm80 = class(TForm)
    ButtonStart: TButton;
    ButtonZuruck: TButton;
    ButtonBeenden: TButton;
    StatusBar: TStatusBar;
    LabelDemo: TLabel;
    PanelDMM: TPanel;
    LabelBreite: TLabel;
    MaskEditBGrad: TMaskEdit;
    LabelLaenge: TLabel;
    MaskEditLGrad: TMaskEdit;
    LabelGrad: TLabel;
    MaskEditDMMBMin: TMaskEdit;
    MaskEditDMMLMin: TMaskEdit;
    LabelMinuten: TLabel;
    LabelNS: TLabel;
    LabelOW: TLabel;
    PanelDaten: TPanel;
    LabelEingabe: TLabel;
    MaskEditAzi: TMaskEdit;
    ButtonDBeenden: TButton;
    PanelMaxDat: TPanel;
    LabelMaxDat: TLabel;
    LabelMenge: TLabel;
    PanelGrenzen: TPanel;
    PanelAnzahl: TPanel;
    LabelAnzahl: TLabel;
    LabelZahl: TLabel;
    ButtonPlot: TButton;
    MaskEditLP: TMaskEdit;
    MainMenu1: TMainMenu;
    DSpeichern: TMenuItem;
    speichern: TMenuItem;
    speichernunter: TMenuItem;
    SaveDialog1: TSaveDialog;
    Hilfe: TMenuItem;
    Literatur: TMenuItem;
    PanelSpeed: TPanel;
    SpeedDspeichern: TSpeedButton;
    SpeedHilfe: TSpeedButton;
    SpeedHandbuch: TSpeedButton;
    SpeedLiteratur: TSpeedButton;
    PanelGauss: TPanel;
    LabelRechts: TLabel;
    LabelHoch: TLabel;
    MaskEditR1: TMaskEdit;
    MaskEditR2: TMaskEdit;
    MaskEditH1: TMaskEdit;
    MaskEditH2: TMaskEdit;
    MaskEditH3: TMaskEdit;
    PanelUTM: TPanel;
    LabelOsten: TLabel;
    LabelNorden: TLabel;
    PanelDMS: TPanel;
    MaskEditDMSBMin: TMaskEdit;
    LabelDMSMin: TLabel;
    MaskEditDMSLMin: TMaskEdit;
    MaskEditDMSBSek: TMaskEdit;
    MaskEditDMSLSek: TMaskEdit;
    LabelSek: TLabel;
    LabelKoord: TLabel;
    LabelDaten: TLabel;
    MaskEditR3: TMaskEdit;
    MaskEditZone: TMaskEdit;
    LabelZone: TLabel;
    MaskEditOsten: TMaskEdit;
    MaskEditNorden: TMaskEdit;
    LabelUTMZone: TLabel;
    PanelKoor: TPanel;
    LabelKoor: TLabel;
    LabelGeogr: TLabel;
    Handbuch: TMenuItem;
    PanelDiagramm: TPanel;
    ListBoxDaten: TListBox;
    PanelRadius: TPanel;
    LabelRadius: TLabel;
    MaskEditRadius: TMaskEdit;
    OpenPictureDialog1: TOpenPictureDialog;
    PanelBrunton: TPanel;
    MaskEditBStreichen: TMaskEdit;
    MaskEditBFallen: TMaskEdit;
    MaskEditNS: TMaskEdit;
    MaskEditFal: TMaskEdit;
    ButtonBild: TButton;
    LabelListe: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure ShowHint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ButtonZuruckClick(Sender: TObject);
    procedure ButtonBeendenClick(Sender: TObject);
    procedure ButtonStartClick(Sender: TObject);
    procedure MaskEditBGradKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditDMMBMinKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditLGradKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditDMMLMinKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditAziKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditFalKeyPress(Sender: TObject; var Key: Char);
    procedure ButtonDBeendenClick(Sender: TObject);
    procedure ButtonPlotClick(Sender: TObject);
    procedure MaskEditLPKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditLPKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure speichernClick(Sender: TObject);
    procedure speichernunterClick(Sender: TObject);
    procedure HilfeClick(Sender: TObject);
    procedure HandbuchClick(Sender: TObject);
    procedure LiteraturClick(Sender: TObject);
    procedure SpeedDspeichernClick(Sender: TObject);
    procedure SpeedHilfeClick(Sender: TObject);
    procedure SpeedHandbuchClick(Sender: TObject);
    procedure SpeedLiteraturClick(Sender: TObject);
    procedure MaskEditR1KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditR2KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditR3KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditH1KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditH2KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditH3KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditDMSBMinKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditDMSBSekKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditDMSLMinKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditDMSLSekKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditZoneKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditOstenKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditNordenKeyPress(Sender: TObject; var Key: Char);
    procedure ListBoxDatenClick(Sender: TObject);
    procedure MaskEditRadiusKeyPress(Sender: TObject; var Key: Char);
    procedure ButtonBildClick(Sender: TObject);
    procedure MaskEditBStreichenKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditBFallenKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditNSKeyPress(Sender: TObject; var Key: Char);
  end;

var
  Form80      : TForm80;
  BGradS      : string;
  BGrad       : word;
  DMMBMinS    : string;
  DMMBMin     : real;
  DMSBMinS    : string;
  DMSBMin     : word;
  DMSBSekS    : string;
  DMSBSek     : real;
  LGradS      : string;
  LGrad       : word;
  DMMLMinS    : string;
  DMMLMin     : real;
  DMSLMinS    : string;
  DMSLMin     : word;
  DMSLSekS    : string;
  DMSLSek     : real;
  R1S, H1S    : string;
  R2S, H2S    : string;
  R3S, H3S    : string;
  RechtsS     : string;
  RS, HS      : string;
  HochS       : string;
  BMinS       : string;
  LMinS       : string;
  BSekS       : string;
  LSekS       : string;
  OstenS      : string;
  NordenS     : string;
  AzimutS     : string;
  Azimut      : word;
  FallS       : string;
  Fall        : shortint;
  Anzahl      : word;
  Linear      : boolean;
  LPS         : string[1];
  CurrentFile : string;

implementation
uses
  Unit79, Unit81;
{$R *.DFM}
procedure TForm80.FormShow(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TForm80.ShowHint (Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TForm80.FormActivate(Sender: TObject);
begin
  Left   := LeftDiag + ULap;
  Top    := TopDiag + ULap;
  Width  := WidForm;
  Height := HeiForm;
  LabelDemo.Visible := false;
  if DemoB then LabelDemo.Visible := true;
  if EingabeS <> 'Diagramm' then
  begin
    Setlength (AziFeld, MaxDaten);
    Setlength (FalFeld, MaxDaten);
    Setlength (LPFeld, MaxDaten);
  end
  else Setlength (BildNameS, MaxDaten);
  Setlength (BreiteFeld, MaxDaten);
  Setlength (LaengeFeld, MaxDaten);
  DecimalSeparator          := '.';
  Form80.Caption            := 'Fabric8: '+Tx(1263);
  LabelBreite.Caption       := Tx(1264);
  LabelLaenge.Caption       := Tx(1265);
  LabelGrad.Caption         := Tx(1266);
  LabelMinuten.Caption      := Tx(1267);
  LabelListe.Caption        := Tx(914)+':';
  ButtonDBeenden.Caption    := Tx(182);
  Buttonzuruck.Caption      := Tx(30);
  Buttonbeenden.Caption     := Tx(53);
  LabelSek.Caption          := Tx(1290);
  LabelAnzahl.Caption       := Tx(222);
  LabelKoord.Caption        := Tx(689);
  if EingabeS <> 'Diagramm' then
    LabelDaten.Caption      := Tx(101)
  else LabelDaten.Caption   := Tx(449);
  RS                        := Tx(1308);
  HS                        := Tx(1309);
  LabelKoor.Caption         := Tx(689)+':';
  MaskEditBGrad.EditMask    := '99;0; ';
  MaskEditLGrad.EditMask    := '999;0; ';
  MaskEditDMMBMin.EditMask  := '99.999;.; ';
  MaskEditDMMLMin.EditMask  := '99.999;.; ';
  MaskEditDMSBMin.EditMask  := '99;0; ';
  MaskEditDMSLMin.EditMask  := '99;0; ';
  MaskEditDMSBSek.EditMask  := '99.9;.; ';
  MaskEditDMSLSek.EditMask  := '99.9;.; ';
  MaskEditAzi.EditMask      := '999;0; ';
  MaskEditFal.EditMask      := '99;0; ';
  MaskEditLP.EditMask       := 'L;0; ';
  MaskEditR1.EditMask       := '99;0; ';
  MaskEditR2.EditMask       := '99;0; ';
  MaskEditR3.EditMask       := '999;0; ';
  MaskEditH1.EditMask       := '99;0; ';
  MaskEditH2.EditMask       := '99;0; ';
  MaskEditH3.EditMask       := '999;0; ';
  MaskEditZone.EditMask     := '99l;0; ';
  MaskEditOsten.EditMask    := '9999999;0; ';
  MaskEditNorden.EditMask   := '9999999;0; ';
  MaskEditRadius.EditMask   := '999;0; ';
  MaskEditBStreichen.EditMask := '999;0; ';
  MaskEditBFallen.EditMask    := '99;0; ';
  MaskEditNS.EditMask         := 'L;0; ';
  PanelDMM.Visible          := false;
  LabelEingabe.Caption      := Tx(183);
  PanelDaten.Visible        := false;
  ButtonDBeenden.Enabled    := false;
  LabelMenge.Caption        := '';
  PanelMaxDat.Visible       := false;
  PanelAnzahl.Visible       := false;
  PanelGrenzen.Visible      := false;
  LabelListe.Visible        := false;
  LabelZahl.Caption         := '';
  LabelSek.Caption          := Tx(1290);
  Dspeichern.Caption        := Tx(86);
  speichern.Caption         := Tx(87);
  speichernUnter.Caption    := Tx(88);
  ButtonPlot.Enabled        := false;
  SpeedDspeichern.Hint      := Hilf(328);
  SpeedHilfe.Hint           := Hilf(210);
  SpeedHandbuch.Hint        := Hilf(274);
  SpeedLiteratur.Hint       := Hilf(462);
  Hilfe.Caption             := Tx(162)+' (F1)';
  Handbuch.Caption          := Tx(1055)+' (F2)';
  Literatur.Caption         := Tx(1183)+' (F5)';
  DSpeichern.Caption        := Tx(86);
  speichern.Caption         := Tx(87);
  speichernUnter.Caption    := Tx(88);
  Dspeichern.Enabled        := false;
  SpeedDspeichern.Enabled   := false;
  ListBoxDaten.Visible      := false;
  PanelDMS.Visible          := false;
  LabelMaxDat.Caption       := Tx(981);
  LabelRechts.Caption       := Tx(1300);
  LabelHoch.Caption         := Tx(1301);
  PanelGauss.Visible        := false;
  PanelUTM.Visible          := false;
  LabelUTMZone.Visible      := false;
  PanelKoor.Visible         := false;
  LabelGeogr.Caption        := '';
  LabelKoor.Caption         := Tx(689)+':';
  LabelOsten.Caption        := Tx(1324);
  LabelNorden.Caption       := Tx(1325);
  PanelDiagramm.Visible     := false;
  PanelRadius.Visible       := false;
  ButtonBild.Caption        := Tx(1559);
  ButtonBild.Enabled        := false;
  PanelBrunton.Visible      := false; 
end;

procedure TForm80.ButtonZuruckClick(Sender: TObject);
begin
  AziFeld    := nil;
  FalFeld    := nil;
  BreiteFeld := nil;
  LaengeFeld := nil;
  LPFeld     := nil;
  Form80.Close;
end;

procedure TForm80.ButtonBeendenClick(Sender: TObject);
begin
  AziFeld    := nil;
  FalFeld    := nil;
  BreiteFeld := nil;
  LaengeFeld := nil;
  LPFeld     := nil;
  Form80.Close;
  Form79.close;
  SetCurrentDir(DirectS);
end;

procedure TForm80.ButtonStartClick(Sender: TObject);
begin
  PanelKoor.Visible := true;
  if EingabeS = 'Diagramm' then
  begin
    PanelRadius.Visible    := true;
    LabelRadius.Enabled    := true;
    MaskEditRadius.Enabled := true;
    MaskEditRadius.Clear;
    MaskEditRadius.SetFocus;
    PanelDiagramm.Visible := true;
    exit;
  end;
  if KompassS = 'Brunton' then
  begin
    PanelBrunton.Visible := true;
  end;
  LabelListe.Visible    := true;
  ListBoxDaten.Visible  := true;
  ListBoxDaten.Clear;
  Anzahl                := 0;
  LabelNS.Caption       := NordSuedS;
  LabelOW.Caption       := OstWestS;
  PanelMaxDat.Visible   := true;
  PanelDaten.Visible    := true;
  PanelAnzahl.Visible   := true;
  LabelZahl.Caption     := '';
  PanelGrenzen.Visible  := true;

  LabelMenge.Caption    := IntToStr(MaxDaten);
  if KoordinatenS = 'UTM' then
  begin
    PanelUTM.Visible     := true;
    MaskEditZone.Enabled := true;
    MaskEditZone.SetFocus;
  end;
  if KoordinatenS = 'Gauss' then
  begin
    PanelGauss.Visible := true;
    MaskEditR1.Enabled := true;
    MaskEditR1.SetFocus;
  end;
  if KoordinatenS = 'DMM' then
  begin
    PanelDMM.Visible      := true;
    MaskEditBGrad.Enabled := true;
    MaskEditBGrad.SetFocus;
  end;
  if KoordinatenS = 'DMS' then
  begin
    PanelDMM.Visible      := true;
    PanelDMS.Visible      := true;
    MaskEditBGrad.Enabled := true;
    MaskEditBGrad.SetFocus;
  end;
  if KoordinatenS = 'DMM' then LabelGeogr.Caption := Tx(1592);
  if KoordinatenS = 'DMS' then LabelGeogr.Caption := Tx(1593);
  if KoordinatenS = 'Gauss' then LabelGeogr.Caption := Tx(1594);
  if KoordinatenS = 'UTM' then LabelGeogr.Caption := Tx(1595);
end;

procedure TForm80.MaskEditBGradKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(13) then
  begin
    BGradS := MaskEditBGrad.Text;
    LeerLoeschen (BGradS);
    if BGradS = '' then exit
    else
    begin
      Anzahl := Anzahl + 1;
      BGrad := StrToInt (BGradS);
      if KoordinatenS = 'DMM' then MaskEditDMMBMin.SetFocus;
      if KoordinatenS = 'DMS' then MaskEditDMSBMin.SetFocus;
    end;
  end;
end;

procedure TForm80.MaskEditDMMBMinKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(13) then
  begin
    DMMBMinS := MaskEditDMMBMin.Text;
    LeerLoeschen (DMMBMinS);
    if DMMBMinS = '' then exit
    else
    begin
      DMMBMin := StrToFloat (DMMBMinS);
      if length(copy(DMMBMinS,1,pos('.',DMMBMinS)-1)) = 1
      then DMMBMinS := '0'+DMMBMinS;
      if copy(DMMBMinS,length(DMMBMinS),1) = ' '
      then DMMBMinS := copy(DMMBMinS,1,length(DMMBMinS)-1);
      DMMBMinS := LeftS(DMMBMinS+'000',6);
      BreiteFeld[Anzahl] := BGrad*60 + DMMBMin;
      MaskEditLGrad.SetFocus;
    end;
  end;
end;

procedure TForm80.MaskEditDMSBMinKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(13) then
  begin
    DMSBMinS := MaskEditDMSBMin.Text;
    LeerLoeschen (DMSBMinS);
    if DMSBMinS = '' then exit
    else
    begin
      DMSBMin := StrToInt (DMSBMinS);
      if length(DMSBMinS) = 1 then DMSBMinS := '0'+DMSBMinS;
      MaskEditDMSBSek.SetFocus;
    end;
  end;
end;

procedure TForm80.MaskEditDMSBSekKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(13) then
  begin
    DMSBSekS := MaskEditDMSBSek.Text;
    LeerLoeschen (DMSBSekS);
    if DMSBSekS = '' then exit
    else
    begin
      DMSBSek := StrToFloat (DMSBSekS);
      if copy(DMSBSekS,pos('.',DMSBSekS)+1,1) = ''
      then DMSBSekS := DMSBSekS + '0';
      if length(copy(DMSBSekS,1,pos('.',DMSBSekS)-1)) = 1
      then DMSBSekS := '0'+DMSBSekS;
      BreiteFeld[Anzahl] := BGrad*60 + DMSBMin + DMSBSek/60;
      MaskEditLGrad.SetFocus;
    end;
  end;
end;

procedure TForm80.MaskEditLGradKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(13) then
  begin
    LGradS := MaskEditLGrad.Text;
    LeerLoeschen (LGradS);
    if LGradS = '' then exit
    else
    begin
      LGrad := StrToInt (LGradS);
      if KoordinatenS = 'DMM' then
      begin
        MaskEditDMMLMin.SetFocus;
      end;
      if KoordinatenS = 'DMS' then
      begin
        MaskEditDMSLMin.SetFocus;
      end;
    end;
  end;
end;

procedure TForm80.MaskEditDMMLMinKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(13) then
  begin
    DMMLMinS := MaskEditDMMLMin.Text;
    LeerLoeschen (DMMLMinS);
    if DMMLMinS = '' then exit
    else
    begin
      DMMLMin := StrToFloat (DMMLMinS);
      if length(copy(DMMLMinS,1,pos('.',DMMLMinS)-1)) = 1
      then DMMLMinS := '0'+DMMLMinS;
      if copy(DMMLMinS,length(DMMLMinS),1) = ' '
      then DMMLMinS := copy(DMMLMinS,1,length(DMMLMinS)-1);
      DMMLMinS := LeftS(DMMLMinS+'000',6);
      LaengeFeld[Anzahl] := LGrad*60 + DMMLMin;
      PanelDaten.Visible := true;
      if EingabeS <> 'Diagramm' then MaskEditLP.SetFocus
      else ButtonBild.Enabled := true;
    end;
  end;
end;

procedure TForm80.MaskEditDMSLMinKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(13) then
  begin
    DMSLMinS := MaskEditDMSLMin.Text;
    LeerLoeschen (DMSLMinS);
    if DMSLMinS = '' then exit
    else
    begin
      DMSLMin := StrToInt (DMSLMinS);
      if length(DMSLMinS) = 1 then DMSLMinS := '0'+DMSLMinS;
      MaskEditDMSLSek.SetFocus;
    end;
  end;
end;

procedure TForm80.MaskEditDMSLSekKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(13) then
  begin
    DMSLSekS := MaskEditDMSLSek.Text;
    LeerLoeschen (DMSLSekS);
    if DMSLSekS = '' then exit
    else
    begin
      DMSLSek := StrToFloat (DMSLSekS);
      LaengeFeld[Anzahl] := LGrad*60 + DMSLMin + DMSLSek/60;
      if copy(DMSLSekS,pos('.',DMSLSekS)+1,1) = ''
      then DMSLSekS := DMSLSekS + '0';
      if length(copy(DMSLSekS,1,pos('.',DMSLSekS)-1)) = 1
      then DMSLSekS := '0'+DMSLSekS;
      PanelDaten.Visible := true;
      if EingabeS <> 'Diagramm' then MaskEditLP.SetFocus
      else ButtonBild.Enabled := true;
    end;
  end;
end;

procedure TForm80.MaskEditR1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(13) then
  begin
    Anzahl := Anzahl +1;
    R1S := MaskEditR1.Text;
    LeerLoeschen (R1S);
    if R1S = '' then exit
    else
    begin
      R1S := RightS('0'+R1S,2);
      MaskEditR2.SetFocus
    end;
  end;
end;

procedure TForm80.MaskEditR2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(13) then
  begin
    R2S := MaskEditR2.Text;
    LeerLoeschen (R2S);
    if R2S = '' then exit
    else
    begin
      R2S := RightS('0'+R2S,2);
      MaskEditR3.SetFocus
    end;
  end;
end;

procedure TForm80.MaskEditR3KeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(13) then
  begin
    R3S     := MaskEditR3.Text;
    LeerLoeschen (R3S);
    if R3S = '' then exit
    else
    begin
      R3S := RightS('000'+R3S,3);
      RechtsS := R1S+R2S+R3S;
      LaengeFeld[Anzahl] := StrToFloat(RechtsS);
      MaskEditH1.SetFocus;
    end;
  end;
end;

procedure TForm80.MaskEditH1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(13) then
  begin
    H1S := MaskEditH1.Text;
    LeerLoeschen (H1S);
    if H1S = '' then exit
    else
    begin
      H1S := RightS('00'+H1S,2);
      MaskEditH2.SetFocus
    end;
  end;
end;

procedure TForm80.MaskEditH2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(13) then
  begin
    H2S := MaskEditH2.Text;
    LeerLoeschen (H2S);
    if H2S = '' then exit
    else
    begin
      H2S := RightS('00'+H2S,2);
      MaskEditH3.SetFocus
    end;
  end;
end;

procedure TForm80.MaskEditH3KeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(13) then
  begin
    H3S   := MaskEditH3.Text;
    LeerLoeschen (H3S);
    if H3S = '' then exit
    else
    begin
      H3S := RightS('000'+H3S,3);
      HochS := H1S+H2S+H3S;
      BreiteFeld[Anzahl] := StrToFloat(HochS);
      PanelDaten.Visible := true;
      if EingabeS <> 'Diagramm' then MaskEditLP.SetFocus
      else ButtonBild.Enabled := true;
    end;
  end;
end;

procedure TForm80.MaskEditZoneKeyPress(Sender: TObject; var Key: Char);
begin
  if Anzahl > 0 then exit;
  if key = chr(13) then
  begin
    UTMZoneS := UCaseS(MaskEditZone.Text);
    LeerLoeschen (UTMZoneS);
    if UTMZoneS = '' then exit;
    if length(UTMZoneS) < 3 then exit;
    MaskEditZone.Enabled := false;
    MaskEditOsten.SetFocus
  end;
end;

procedure TForm80.MaskEditOstenKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(13) then
  begin
    OstenS := MaskEditOsten.Text;
    LeerLoeschen (OstenS);
    if OstenS = '' then exit
    else
    begin
      if length(OstenS) < 7 then exit;
      Anzahl := Anzahl + 1;
      LaengeFeld[Anzahl] := StrToFloat(OstenS);
      MaskEditNorden.SetFocus
    end;
  end;
end;

procedure TForm80.MaskEditNordenKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(13) then
  begin
    NordenS := MaskEditNorden.Text;
    LeerLoeschen (NordenS);
    if NordenS = '' then exit
    else
    begin
      if length(NordenS) < 7 then exit;
      BreiteFeld[Anzahl] := StrToFloat(NordenS);
      PanelDaten.Visible := true;
      if EingabeS = 'Diagramm' then ButtonBild.Enabled := true
      else MaskEditLP.SetFocus;
    end;
  end;
end;

procedure TForm80.MaskEditLPKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(13) then
  begin
    LPS := UcaseS(MaskEditLP.Text);
    if LPS = '' then exit;
    if LPS = 'L' then Linear := true;
    if LPS = 'P' then Linear := false;
    if KompassS = 'Clar' then MaskEditAzi.SetFocus;
    if KompassS = 'Brunton' then MaskEditBStreichen.SetFocus;
  end;
end;

procedure TForm80.MaskEditLPKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  LP : string[1];
begin
  LP := UcaseS(MaskEditLP.Text);
  if (LP <> 'L') and (LP <> 'P') then
  begin
    MaskEditLP.Clear;
    MaskEditLP.SetFocus;
  end;
end;

procedure TForm80.MaskEditAziKeyPress(Sender: TObject; var Key: Char);
var
  MaxAzi : word;
begin
  if Winkel = 1 then MaxAzi := 360 else MaxAzi := 400;
  if Key = chr(13) then
  begin
    AzimutS := MaskEditAzi.Text;
    LeerLoeschen (AzimutS);
    if AzimutS = '' then exit
    else
    begin
      Azimut := StrToInt (AzimutS);
      if Azimut <= MaxAzi then
      begin
        MaskEditFal.SetFocus;
      end
      else
      begin
        MaskEditAzi.Clear;
        MaskEditAzi.SetFocus;
      end;
    end;
  end;
end;

procedure TForm80.MaskEditBStreichenKeyPress(Sender: TObject;var Key: Char);
var
  MaxAzi : word;
begin
  if Winkel = 1 then MaxAzi := 360 else MaxAzi := 400;
  if Key = chr(13) then
  begin
    AzimutS := MaskEditBStreichen.Text;
    LeerLoeschen (AzimutS);
    if AzimutS = '' then exit
    else
    begin
      Azimut := StrToInt (AzimutS);
      if Azimut <= MaxAzi then
      begin
        MaskEditBFallen.Enabled := true;
        MaskEditBFallen.SetFocus;
      end
      else
      begin
        MaskEditBStreichen.Clear;
        MaskEditBStreichen.SetFocus;
      end;
    end;
  end;
end;

procedure TForm80.MaskEditFalKeyPress(Sender: TObject; var Key: Char);
var
  ZeileS     : string[60];
  AnzahlS    : string[5];
  MaxFall    : shortint;
begin
  if key = chr(13) then
  begin
    ListBoxDaten.Enabled := true;
    if KoordinatenS = 'UTM' then
    begin
      LabelUTMZone.Visible := true;
      LabelUTMZone.Caption := 'UTM-Zone   '+UTMZoneS;
    end;
    MaxFall := 90;
    if Winkel = 2 then MaxFall := 100;
    FallS   := MaskEditFal.Text;
    LeerLoeschen(FallS);
    if FallS = '' then exit
    else
    begin
      Fall := StrToInt (FallS);
      if Fall <= MaxFall then
      begin
        ButtonDBeenden.Enabled := true;
        if KoordinatenS = 'DMM' then
        begin
          MaskEditBGrad.Clear;
          MaskEditBGrad.SetFocus;
          MaskEditDMMBMin.Clear;
          MaskEditLGrad.Clear;
          MaskEditDMMLMin.Clear;
        end;
        if KoordinatenS = 'DMS' then
        begin
          MaskEditBGrad.Clear;
          MaskEditBGrad.SetFocus;
          MaskEditDMSBMin.Clear;
          MaskEditDMSBSek.Clear;
          MaskEditLGrad.Clear;
          MaskEditDMSLMin.Clear;
          MaskEditDMSLSek.Clear;
        end;
        if KoordinatenS = 'Gauss' then
        begin
          MaskEditR1.Clear;
          MaskEditR2.Clear;
          MaskEditR3.Clear;
          MaskEditH1.Clear;
          MaskEditH2.Clear;
          MaskEditH3.Clear;
          MaskEditR1.SetFocus;
        end;
        if KoordinatenS = 'UTM' then
        begin
          MaskEditOsten.Clear;
          MaskEditNorden.Clear;
          MaskEditOsten.SetFocus;
        end;
      end
      else
      begin
        MaskEditFal.Clear;
        MaskEditFal.SetFocus;
        exit;
      end;
    end;
    if Winkel = 2 then Neugrad (Azimut, Fall);
    AzimutS := RightS ('000' + AzimutS, 3);
    FallS   := RightS ('00' + FallS, 2);
    AnzahlS := IntToStr (Anzahl);
    AnzahlS := RightS ('     '+AnzahlS,5);
    MaskEditLP.Text   := ' ';
    MaskEditAzi.Text  := '   ';
    MaskEditFal.Text  := '   ';
    LabelZahl.Caption := AnzahlS;
    AziFeld[Anzahl]   := Azimut;
    FalFeld[Anzahl]   := Fall;
    LPFeld[Anzahl]    := Linear;
    if KoordinatenS = 'DMM' then
    begin
      BGradS  := RightS ('00' + BGradS,2);
      LGradS  := RightS ('000' + LGradS,3);
      BMinS   := DMMBMinS;
      LMinS   := DMMLMinS;
      ZeileS  := NordSuedS+' '+BgradS+'° '+BMinS+'´  '+OstWestS
                 +' '+LGradS+'° '+LMinS+'´    '
                 +LPS+' '+AzimutS+'/'+FallS;
    end;
    if KoordinatenS = 'DMS' then
    begin
      BGradS  := RightS ('00' + BGradS,2);
      LGradS  := RightS ('000' + LGradS,3);
      BMinS := DMSBMinS;
      LMinS := DMSLMinS;
      BSekS := DMSBSekS;
      LSekS := DMSLSekS;
      ZeileS  := NordSuedS+' '+BgradS+'° '+BMinS+'´ '
                 +BSekS+'´´ '+OstWestS+' '+LGradS+'° '
                 +LMinS+'´ '+LSekS+'´´  '+LPS+' '+AzimutS
                 +'/'+FallS;
    end;
    if KoordinatenS = 'Gauss' then
      ZeileS := ' '+RS+' '+R1S+' '+R2S+' '+R3S+'     '+HS+' '+H1S
                +' '+H2S+' '+H3S+'          '+AzimutS+'/'+FallS;
    If KoordinatenS = 'UTM' then
      ZeileS := ' E '+OstenS+'       N '+NordenS+
                '              '+AzimutS+'/'+Falls;
    ListBoxDaten.Items.Add (ZeileS);
  end;
end;

procedure TForm80.MaskEditBFallenKeyPress(Sender: TObject; var Key: Char);
var
  MaxFall : shortint;
begin
  if key = chr(13) then
  begin
    FallS   := MaskEditBFallen.Text;
    LeerLoeschen(FallS);
    if FallS = '' then exit;
    Fall := StrToInt(FallS);
    MaxFall := 90;
    if Winkel = 2 then MaxFall := 100;
    if Fall <= MaxFall then
    begin
      if Winkel = 2 then Neugrad (Azimut, Fall);
      MaskEditNS.Enabled := true;
      MaskEditNS.SetFocus;
    end
    else
    begin
      MaskEditBFallen.Clear;
      MaskEditBFallen.SetFocus;
    end;
  end;
end;

procedure TForm80.MaskEditNSKeyPress(Sender: TObject; var Key: Char);
var
  NordSudS : string;
  ZeileS   : string;
  AnzahlS  : string;
  FallS    : string;
  Azi      : integer;
begin
  if key = chr(13) then
  begin
    ListBoxDaten.Enabled := true;
    if KoordinatenS = 'UTM' then
    begin
      LabelUTMZone.Visible := true;
      LabelUTMZone.Caption := 'UTM-Zone   '+UTMZoneS;
    end;
    NordSudS := UcaseS(MaskEditNS.Text);
    Azi := Azimut;
    if NordSudS = '' then exit;
    if Azi > 180 then Azi := Azi -180;
    if NordSudS = 'N' then
    begin
      if UCaseS(LPS) = 'P' then
      begin
        Azi := Azi - 90;
        if Azi <0 then Azi := Azi + 360;
      end;
      if UCaseS(LPS) = 'L' then
      if Azi >90 then Azi := Azi + 180;
    end;
    if NordSudS = 'S' then
    begin
      if UCaseS(LPS) = 'L' then
      begin
        if Azi <90 then Azi  := Azi + 180;
        if Azi >270 then Azi := Azi - 180;
      end;
      if UCaseS(LPS) = 'P' then
      begin
        if Azi > 180 then Azi := Azi -180;
        Azi := Azi + 90;
        if Azi >360 then Azi := Azi - 360;
      end;
    end;
    Azimut  := Azi;
    AzimutS := IntToStr(Azimut);
    AzimutS := RightS ('000' + AzimutS, 3);
    FallS   := IntToStr(Fall);
    FallS   := RightS ('00' + FallS, 2);
    AnzahlS := IntToStr (Anzahl);
    AnzahlS := RightS ('     '+AnzahlS,5);
    LabelZahl.Caption := AnzahlS;
    AziFeld[Anzahl]   := Azimut;
    FalFeld[Anzahl]   := Fall;
    LPFeld[Anzahl]    := Linear;
    if KoordinatenS = 'DMM' then
    begin
      BGradS  := RightS ('00' + BGradS,2);
      LGradS  := RightS ('000' + LGradS,3);
      BMinS   := DMMBMinS;
      LMinS   := DMMLMinS;
      ZeileS  := NordSuedS+' '+BgradS+'° '+BMinS+'´  '+OstWestS
                 +' '+LGradS+'° '+LMinS+'´    '
                 +LPS+' '+AzimutS+'/'+FallS;
    end;
    if KoordinatenS = 'DMS' then
    begin
      BGradS  := RightS ('00' + BGradS,2);
      LGradS  := RightS ('000' + LGradS,3);
      BMinS := DMSBMinS;
      LMinS := DMSLMinS;
      BSekS := DMSBSekS;
      LSekS := DMSLSekS;
      ZeileS  := NordSuedS+' '+BgradS+'° '+BMinS+'´ '
                 +BSekS+'´´ '+OstWestS+' '+LGradS+'° '
                 +LMinS+'´ '+LSekS+'´´  '+LPS+' '+AzimutS
                 +'/'+FallS;
    end;
    if KoordinatenS = 'Gauss' then
      ZeileS := ' '+RS+' '+R1S+' '+R2S+' '+R3S+'     '+HS+' '+H1S
                +' '+H2S+' '+H3S+'          '+AzimutS+'/'+FallS;
    If KoordinatenS = 'UTM' then
      ZeileS := ' E '+OstenS+'       N '+NordenS+
                '              '+AzimutS+'/'+Falls;
    ListBoxDaten.Items.Add (ZeileS);
    if KoordinatenS = 'UTM' then
    begin
      MaskEditOsten.Clear;
      MaskEditNorden.Clear;
      MaskEditOsten.SetFocus;
    end;
    if KoordinatenS = 'Gauss' then
    begin
      MaskEditR1.Clear;
      MaskEditR2.clear;
      MaskEditR3.Clear;
      MaskEditH1.Clear;
      MaskEditH2.Clear;
      MaskEditH3.Clear;
      MaskEditR1.SetFocus;
    end;
    if KoordinatenS = 'DMM' then
    begin
      MaskEditBGrad.Clear;
      MaskEditLGrad.Clear;
      MaskEditDMMBMin.Clear;
      MaskEditDMMLMin.Clear;
      MaskEditBGrad.SetFocus;
    end;
    if KoordinatenS = 'DMS' then
    begin
      MaskEditBGrad.Clear;
      MaskEditLGrad.Clear;
      MaskEditDMSBMin.Clear;
      MaskEditDMSLMin.Clear;
      MaskEditDMSBSek.Clear;
      MaskEditDMSLSek.Clear;
      MaskEditBGrad.SetFocus;
    end;
    MaskEditLP.Clear;
    MaskEditBStreichen.Clear;
    MaskEditBFallen.Clear;
    MaskEditNS.Clear;
    ButtonDBeenden.Enabled := true;
  end;
end;

procedure TForm80.ButtonBildClick(Sender: TObject);
var
  ZeileS : String;
begin
  OpenPictureDialog1.Filter := 'Compuserve Gif file (*.gif)|*.gif';
  if OpenPictureDialog1.Execute then
    BildNameS[Anzahl] := ExtractFileName(OpenPictureDialog1.FileName)
  else exit;
  if KoordinatenS = 'DMM' then
  begin
    BGradS  := RightS ('00' + BGradS,2);
    LGradS  := RightS ('000' + LGradS,3);
    BMinS   := DMMBMinS;
    LMinS   := DMMLMinS;
    ZeileS  := NordSuedS+' '+BgradS+'° '+BMinS+'´  '+OstWestS
               +' '+LGradS+'° '+LMinS+'´    '+BildNameS[Anzahl];
  end;
  if KoordinatenS = 'DMS' then
  begin
    BGradS  := RightS ('00' + BGradS,2);
    LGradS  := RightS ('000' + LGradS,3);
    BMinS := DMSBMinS;
    LMinS := DMSLMinS;
    BSekS := DMSBSekS;
    LSekS := DMSLSekS;
    ZeileS  := NordSuedS+' '+BgradS+'° '+BMinS+'´ '
               +BSekS+'´´ '+OstWestS+' '+LGradS+'° '
               +LMinS+'´ '+LSekS+'´´  '+LPS+' '+BildNameS[Anzahl];
  end;
  if KoordinatenS = 'Gauss' then
    ZeileS := ' '+RS+' '+R1S+' '+R2S+' '+R3S+'     '+HS+' '+H1S
              +' '+H2S+' '+H3S+'          '+BildNameS[Anzahl];
  If KoordinatenS = 'UTM' then
    ZeileS := ' E '+OstenS+'       N '+NordenS+
              '              '+BildNameS[Anzahl];
  ListBoxDaten.Items.Add (ZeileS);
  if KoordinatenS = 'DMM' then
  begin
    MaskEditBGrad.Clear;
    MaskEditBGrad.SetFocus;
    MaskEditDMMBMin.Clear;
    MaskEditLGrad.Clear;
    MaskEditDMMLMin.Clear;
  end;
  if KoordinatenS = 'DMS' then
  begin
    MaskEditBGrad.Clear;
    MaskEditBGrad.SetFocus;
    MaskEditDMSBMin.Clear;
    MaskEditDMSBSek.Clear;
    MaskEditLGrad.Clear;
    MaskEditDMSLMin.Clear;
    MaskEditDMSLSek.Clear;
  end;
  if KoordinatenS = 'Gauss' then
  begin
    MaskEditR1.Clear;
    MaskEditR2.Clear;
    MaskEditR3.Clear;
    MaskEditH1.Clear;
    MaskEditH2.Clear;
    MaskEditH3.Clear;
    MaskEditR1.SetFocus;
  end;
  if KoordinatenS = 'UTM' then
  begin
    MaskEditOsten.Clear;
    MaskEditNorden.Clear;
    MaskEditOsten.SetFocus;
  end;
  ButtonBild.Enabled := false;
  LabelZahl.Caption := InttoStr(Anzahl);
  if Anzahl >= 2 then ButtonDBeenden.Enabled := true;
end;

procedure TForm80.MaskEditRadiusKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(13) then
  begin
    ListBoxDaten.Visible := true;
    LabelListe.Visible   := true;
    PanelAnzahl.visible  := true;
    Radius := round(StrToInt(MaskEditRadius.Text)*3.1);
    LabelRadius.Enabled    := false;
    MaskEditRadius.Enabled := false;
    if KoordinatenS = 'DMM' then
    begin
      LabelGeogr.Caption     := Tx(1262);
      LabelNS.Caption        := NordSuedS;
      LabelOW.Caption        := OstWestS;
      PanelDMM.Visible   := true;
      MaskEditBGrad.SetFocus;
    end;
    if KoordinatenS = 'DMS' then
    begin
      LabelGeogr.Caption     := Tx(1262);
      LabelNS.Caption        := NordSuedS;
      LabelOW.Caption        := OstWestS;
      PanelDMS.Visible   := true;
      MaskEditBGrad.SetFocus;
    end;
    if KoordinatenS = 'Gauss' then
    begin
      LabelGeogr.Caption := TX(1312);
      PanelGauss.Visible := true;
      MaskEditR1.SetFocus;
      NordSuedS := 'N';
      OstWestS  := 'E';
    end;
    if KoordinatenS = 'UTM' then
    begin
      LabelGeogr.Caption := Tx(1313);
      PanelUTM.Visible := true;
      MaskEditZone.SetFocus;
    end;
  end;
end;

procedure TForm80.ButtonDBeendenClick(Sender: TObject);
begin
  ButtonPlot.Enabled := true;
  ZahlGlob           := Anzahl;
  Dspeichern.Enabled := true;
  SpeedDspeichern.Enabled := true;
end;

procedure TForm80.ButtonPlotClick(Sender: TObject);
begin
  Form81.Show;
end;

procedure TForm80.speichernClick(Sender: TObject);
begin
  if CurrentFile <> '' then KarteSpeichern(CurrentFile)
  else speichernUnterClick(Sender);
end;

procedure TForm80.speichernunterClick(Sender: TObject);
begin
  SaveDialog1.DefaultExt := 'map';
  SaveDialog1.Filter     := 'map';
  if SaveDialog1.Execute then
  begin
    CurrentFile := SaveDialog1.Filename;
    KarteSpeichern (CurrentFile);
  end;
  if CurrentFile <> '' then KarteSpeichern(CurrentFile)
  else speichernUnterClick(Sender);
end;

procedure TForm80.SpeedDspeichernClick(Sender: TObject);
begin
  speichernUnterClick(Sender);
end;

procedure TForm80.HilfeClick(Sender: TObject);
var
  DateiS : string;
  HelpRouter1 : THelpRouter;
begin
  HelpRouter1 := THelpRouter.Create(nil);
  HelpRouter1.Helptype := htHTMLhelp;
  if SpracheS = 'DEUTSCH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Hilfe-Html';
    HelpRouter1.HelpJump(DateiS,'html\Deutsch\80Karte-man.htm');
  end;
  if SpracheS = 'ENGLISH' then
  begin
    DateiS := DirectS+'\'+'Fabric-Help-Html';
    HelpRouter1.HelpJump(DateiS,'html\English\80Map-man.htm');
  end;
  HelpRouter1.free;
end;

procedure TForm80.SpeedHilfeClick(Sender: TObject);
begin
  HilfeClick(Sender);
end;

procedure TForm80.HandbuchClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Eintragen_in_Karte.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'Plot_data_into_map.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm80.SpeedHandbuchClick(Sender: TObject);
begin
  HandbuchClick(Sender);
end;

procedure TForm80.LiteraturClick(Sender: TObject);
var
  HilfeS : string;
begin
  if SpracheS = 'DEUTSCH' then HilfeS := 'Literatur.doc';
  if SpracheS = 'ENGLISH' then HilfeS := 'References.doc';
  ShellExecute(0,'open',PCHar(DirectS+'\'+HilfeS),
               nil,nil,sw_normal);
end;

procedure TForm80.SpeedLiteraturClick(Sender: TObject);
begin
  LiteraturClick(Sender);
end;

procedure TForm80.ListBoxDatenClick(Sender: TObject);
var
  i         : word;
  Geloscht  : word;
  BreiteNeu : array of real;
  LaengeNeu : array of real;
  LpNeu     : array of boolean;
  AziNeu    : array of word;
  FalNeu    : array of shortint;
begin
  Setlength (BreiteNeu, Anzahl+1);
  Setlength (LaengeNeu, Anzahl+1);
  Setlength (LPNeu, Anzahl+1);
  Setlength (AziNeu,Anzahl+1);
  Setlength (FalNeu, Anzahl+1);
  Geloscht := 0;
  for i := 1 to Anzahl do
  begin
    BreiteNeu[i] := BreiteFeld[i];
    LaengeNeu[i] := LaengeFeld[i];
    LpNeu[i]     := LpFeld[i];
    AziNeu[i]    := AziFeld[i];
    FalNeu[i]    := FalFeld[i];
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
    BreiteFeld[i] := BreiteNeu[i];
    LaengeFeld[i] := LaengeNeu[i];
    LpFeld[i]     := LpNeu[i];
    AziFeld[i]    := AziNeu[i];
    FalFeld[i]    := FalNeu[i];
  end;
  for i:= Geloscht to Anzahl-1 do
  begin
    BreiteFeld[i] := BreiteNeu[i+1];
    LaengeFeld[i] := LaengeNeu[i+1];
    LpFeld[i]     := LpNeu[i+1];
    AziFeld[i] := AziNeu[i+1];
    FalFeld[i] := FalNeu[i+1];
  end;
  Anzahl := Anzahl - 1;
  LabelZahl.Caption := IntToStr(Anzahl);
  BreiteNeu := Nil;
  LaengeNeu := Nil;
  LpNeu     := Nil;
  AziNeu    := nil;
  FalNeu    := nil;
  if (KoordinatenS = 'DMM')
  or (Koordinatens = 'DMS') then MaskEditBGrad.SetFocus;
  if KoordinatenS = 'Gauss' then MaskEditR1.SetFocus;
  if KoordinatenS = 'UTM'   then MaskEditOsten.SetFocus;
end;

end.
