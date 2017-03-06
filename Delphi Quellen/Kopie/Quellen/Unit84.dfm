object Form84: TForm84
  Left = 87
  Top = 58
  Width = 850
  Height = 648
  Caption = 'Daten aus einer EXCEL-Datei in eine Karte eintragen'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnActivate = FormActivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar: TStatusBar
    Left = 0
    Top = 578
    Width = 842
    Height = 24
    Panels = <>
    SimplePanel = False
  end
  object PanelExcel: TPanel
    Left = 0
    Top = 10
    Width = 473
    Height = 39
    Caption = 'Einlesen von Daten aus einer Excel-Datei'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -27
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object ButtonPfad: TButton
    Left = 72
    Top = 54
    Width = 129
    Height = 27
    Caption = 'Pfad suchen'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = ButtonPfadClick
  end
  object PanelTabelle: TPanel
    Left = 16
    Top = 92
    Width = 245
    Height = 69
    TabOrder = 3
    object LabelTAuswahl: TLabel
      Left = 8
      Top = 8
      Width = 211
      Height = 21
      Caption = 'Wählen Sie eine Tabelle aus:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object ComboBoxTabelle: TComboBox
      Left = 10
      Top = 40
      Width = 211
      Height = 21
      Color = clAqua
      ItemHeight = 13
      TabOrder = 0
      OnChange = ComboBoxTabelleChange
    end
  end
  object PanelDateien: TPanel
    Left = 276
    Top = 70
    Width = 249
    Height = 29
    Caption = 'Excel-Dateien'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object PanelDaten: TPanel
    Left = 540
    Top = 66
    Width = 153
    Height = 33
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    object LabelDaten: TLabel
      Left = 8
      Top = 0
      Width = 47
      Height = 21
      Caption = 'Daten:'
    end
    object LabelLineare: TLabel
      Left = 64
      Top = 0
      Width = 68
      Height = 21
      Caption = 'Lineation'
    end
  end
  object ListBoxDateien: TListBox
    Left = 276
    Top = 98
    Width = 249
    Height = 273
    Color = clAqua
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = []
    ItemHeight = 15
    ParentFont = False
    TabOrder = 6
    OnClick = ListBoxDateienClick
  end
  object ListBoxDaten: TListBox
    Left = 540
    Top = 98
    Width = 261
    Height = 273
    Color = clAqua
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ItemHeight = 19
    ParentFont = False
    TabOrder = 7
  end
  object PanelOrdner: TPanel
    Left = 272
    Top = 376
    Width = 529
    Height = 125
    TabOrder = 8
    object LabelOrdner: TLabel
      Left = 8
      Top = 8
      Width = 57
      Height = 21
      Caption = 'Ordner:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object LabelDatei: TLabel
      Left = 8
      Top = 44
      Width = 42
      Height = 21
      Caption = 'Datei:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object LabelDateiname: TLabel
      Left = 96
      Top = 44
      Width = 77
      Height = 21
      Caption = 'Dateiname'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object LabelWorkSheet: TLabel
      Left = 308
      Top = 40
      Width = 63
      Height = 21
      Caption = 'Tabelle :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object LabelWSName: TLabel
      Left = 396
      Top = 40
      Width = 63
      Height = 21
      Caption = 'Tabelle1'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object LabelBereich: TLabel
      Left = 8
      Top = 74
      Width = 140
      Height = 21
      Caption = 'Excel-Bereich: von'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object LabelO: TLabel
      Left = 160
      Top = 74
      Width = 40
      Height = 21
      Caption = 'A111'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Labelbis: TLabel
      Left = 208
      Top = 74
      Width = 22
      Height = 21
      Caption = 'bis'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object LabelRU: TLabel
      Left = 240
      Top = 74
      Width = 38
      Height = 21
      Caption = 'Z999'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object LabelAnzahl: TLabel
      Left = 308
      Top = 68
      Width = 132
      Height = 21
      Caption = 'Anzahl der Daten:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object LabelMenge: TLabel
      Left = 452
      Top = 68
      Width = 36
      Height = 21
      Caption = '9999'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object MaskEditOrdner: TMaskEdit
      Left = 90
      Top = 10
      Width = 341
      Height = 27
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object ButtonZurueck: TButton
    Left = 620
    Top = 530
    Width = 81
    Height = 31
    Caption = 'Zurück'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    OnClick = ButtonZurueckClick
  end
  object ButtonEnde: TButton
    Left = 720
    Top = 530
    Width = 81
    Height = 31
    Caption = 'Beenden'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    OnClick = ButtonEndeClick
  end
  object PanelGeografie: TPanel
    Left = 10
    Top = 220
    Width = 251
    Height = 81
    TabOrder = 11
    object LabelSBreite: TLabel
      Left = 10
      Top = 10
      Width = 179
      Height = 21
      Caption = 'Spalte der geogr. Breite:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object LabelSLaenge: TLabel
      Left = 10
      Top = 50
      Width = 181
      Height = 21
      Caption = 'Spalte der geogr. Länge:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object MaskEditBreite: TMaskEdit
      Left = 210
      Top = 0
      Width = 21
      Height = 31
      Color = clAqua
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = '_'
      OnKeyPress = MaskEditBreiteKeyPress
    end
    object MaskEditLaenge: TMaskEdit
      Left = 210
      Top = 40
      Width = 21
      Height = 31
      Color = clAqua
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = '_'
      OnKeyPress = MaskEditLaengeKeyPress
    end
  end
  object PanelSpalte: TPanel
    Left = 22
    Top = 452
    Width = 239
    Height = 109
    TabOrder = 12
    object LabelObereZeile: TLabel
      Left = 16
      Top = 8
      Width = 91
      Height = 21
      Caption = 'Obere  Zeile'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object LabelUntereZeile: TLabel
      Left = 18
      Top = 50
      Width = 89
      Height = 21
      Caption = 'Untere Zeile'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object LabelTrennz: TLabel
      Left = 18
      Top = 84
      Width = 99
      Height = 21
      Caption = 'Trennzeichen'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object MaskEditOben: TMaskEdit
      Left = 128
      Top = 10
      Width = 49
      Height = 29
      Color = clAqua
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyPress = MaskEditObenKeyPress
    end
    object MaskEditUnten: TMaskEdit
      Left = 128
      Top = 44
      Width = 49
      Height = 29
      Color = clAqua
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = '    '
      OnKeyPress = MaskEditUntenKeyPress
    end
    object CheckBoxOK: TCheckBox
      Left = 162
      Top = 76
      Width = 57
      Height = 25
      Caption = 'OK'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = CheckBoxOKClick
    end
    object MaskEditTrenn: TMaskEdit
      Left = 130
      Top = 76
      Width = 17
      Height = 29
      Color = clAqua
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Text = '/'
      OnKeyPress = MaskEditTrennKeyPress
    end
  end
  object PanelSpalteAzimut: TPanel
    Left = 10
    Top = 310
    Width = 251
    Height = 81
    TabOrder = 13
    object LabelAzimut: TLabel
      Left = 10
      Top = 10
      Width = 173
      Height = 21
      Caption = 'Spalte der Azimutwerte'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object LabelFallen: TLabel
      Left = 10
      Top = 50
      Width = 147
      Height = 21
      Caption = 'Spalte der Fallwerte'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object MaskEditAzimut: TMaskEdit
      Left = 210
      Top = 0
      Width = 21
      Height = 29
      Color = clAqua
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = '_'
      OnKeyPress = MaskEditAzimutKeyPress
    end
    object MaskEditFallen: TMaskEdit
      Left = 210
      Top = 40
      Width = 21
      Height = 29
      Color = clAqua
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = '_'
      OnKeyPress = MaskEditFallenKeyPress
    end
    object Panel1: TPanel
      Left = 10
      Top = 78
      Width = 185
      Height = 41
      Caption = 'Panel1'
      TabOrder = 2
    end
  end
  object ButtonPlotten: TButton
    Left = 400
    Top = 524
    Width = 121
    Height = 33
    Caption = 'plotten'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 14
    OnClick = ButtonPlottenClick
  end
  object RadioGroupTyp: TRadioGroup
    Left = 10
    Top = 400
    Width = 251
    Height = 51
    Caption = 'Gefügetyp'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 15
  end
  object RadioButtonLinear: TRadioButton
    Left = 60
    Top = 420
    Width = 91
    Height = 17
    Caption = 'Linear'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 16
    OnClick = RadioButtonLinearClick
  end
  object RadioButtonFlaeche: TRadioButton
    Left = 160
    Top = 420
    Width = 91
    Height = 21
    Caption = 'Flächen'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 17
    OnClick = RadioButtonFlaecheClick
  end
  object PanelUTM: TPanel
    Left = 10
    Top = 170
    Width = 251
    Height = 41
    TabOrder = 18
    object LabelUTM: TLabel
      Left = 40
      Top = 7
      Width = 85
      Height = 21
      Caption = 'UTM-Zone'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object MaskEditUTM: TMaskEdit
      Left = 150
      Top = 7
      Width = 41
      Height = 29
      Color = clAqua
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = '___'
      OnKeyPress = MaskEditUTMKeyPress
    end
  end
  object PanelHilfe: TPanel
    Left = 500
    Top = 10
    Width = 101
    Height = 41
    TabOrder = 19
    object SpeedHilfe: TSpeedButton
      Left = 10
      Top = 10
      Width = 25
      Height = 25
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333F797F3333333333F737373FF333333BFB999BFB
        33333337737773773F3333BFBF797FBFB33333733337333373F33BFBFBFBFBFB
        FB3337F33333F33337F33FBFBFB9BFBFBF3337333337F333373FFBFBFBF97BFB
        FBF37F333337FF33337FBFBFBFB99FBFBFB37F3333377FF3337FFBFBFBFB99FB
        FBF37F33333377FF337FBFBF77BF799FBFB37F333FF3377F337FFBFB99FB799B
        FBF373F377F3377F33733FBF997F799FBF3337F377FFF77337F33BFBF99999FB
        FB33373F37777733373333BFBF999FBFB3333373FF77733F7333333BFBFBFBFB
        3333333773FFFF77333333333FBFBF3333333333377777333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedHilfeClick
    end
    object SpeedHandbuch: TSpeedButton
      Left = 34
      Top = 10
      Width = 25
      Height = 25
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333333333333333333333C3333333333333337F3333333333333C0C3333
        333333333777F33333333333C0F0C3333333333377377F333333333C0FFF0C33
        3333333777F377F3333333CCC0FFF0C333333373377F377F33333CCCCC0FFF0C
        333337333377F377F3334CCCCCC0FFF0C3337F3333377F377F33C4CCCCCC0FFF
        0C3377F333F377F377F33C4CC0CCC0FFF0C3377F3733F77F377333C4CCC0CC0F
        0C333377F337F3777733333C4C00CCC0333333377F773337F3333333C4CCCCCC
        3333333377F333F7333333333C4CCCC333333333377F37733333333333C4C333
        3333333333777333333333333333333333333333333333333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedHandbuchClick
    end
    object SpeedLiteratur: TSpeedButton
      Left = 58
      Top = 10
      Width = 25
      Height = 25
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333FF3333333333333C0C333333333333F777F3333333333CC0F0C3
        333333333777377F33333333C30F0F0C333333337F737377F333333C00FFF0F0
        C33333F7773337377F333CC0FFFFFF0F0C3337773F33337377F3C30F0FFFFFF0
        F0C37F7373F33337377F00FFF0FFFFFF0F0C7733373F333373770FFFFF0FFFFF
        F0F073F33373F333373730FFFFF0FFFFFF03373F33373F333F73330FFFFF0FFF
        00333373F33373FF77333330FFFFF000333333373F333777333333330FFF0333
        3333333373FF7333333333333000333333333333377733333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedLiteraturClick
    end
  end
  object ExcelApplication1: TExcelApplication
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    AutoQuit = False
    Left = 312
    Top = 108
  end
  object ExcelWorksheet1: TExcelWorksheet
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 350
    Top = 108
  end
  object ExcelWorkbook1: TExcelWorkbook
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 388
    Top = 108
  end
  object MainMenu1: TMainMenu
    Left = 320
    Top = 150
    object Hilfe: TMenuItem
      Caption = 'Hilfe'
      ShortCut = 112
      OnClick = HilfeClick
    end
    object Handbuch: TMenuItem
      Caption = 'Handbuch'
      ShortCut = 113
      OnClick = HandbuchClick
    end
    object Literatur: TMenuItem
      Caption = 'Literatur'
      ShortCut = 116
      OnClick = LiteraturClick
    end
  end
end
