object Form94: TForm94
  Left = 140
  Top = 80
  Width = 820
  Height = 620
  Caption = 'Form94'
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
  object LabelDemo: TLabel
    Left = 54
    Top = 54
    Width = 154
    Height = 31
    Caption = 'Demo Version'
    Font.Charset = ANSI_CHARSET
    Font.Color = clGray
    Font.Height = -27
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 543
    Width = 804
    Height = 19
    Panels = <>
    SimplePanel = False
  end
  object PanelExcel: TPanel
    Left = 10
    Top = 8
    Width = 473
    Height = 41
    Caption = 'Einlesen von Daten aus einer Excel-Datei'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -27
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object ListBoxDateien: TListBox
    Left = 296
    Top = 88
    Width = 249
    Height = 263
    Color = clAqua
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ItemHeight = 19
    ParentFont = False
    TabOrder = 2
    OnClick = ListBoxDateienClick
  end
  object PanelDateien: TPanel
    Left = 296
    Top = 56
    Width = 249
    Height = 33
    Caption = 'Excel-Dateien'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object ListBoxDaten: TListBox
    Left = 580
    Top = 88
    Width = 171
    Height = 263
    Color = clAqua
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ItemHeight = 21
    ParentFont = False
    TabOrder = 4
  end
  object PanelDaten: TPanel
    Left = 580
    Top = 56
    Width = 168
    Height = 33
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    object LabelDaten: TLabel
      Left = 64
      Top = 6
      Width = 47
      Height = 21
      Caption = 'Daten:'
    end
  end
  object ButtonStart: TButton
    Left = 412
    Top = 510
    Width = 100
    Height = 33
    Caption = 'Start'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = ButtonStartClick
  end
  object PanelTabelle: TPanel
    Left = 16
    Top = 96
    Width = 245
    Height = 73
    TabOrder = 7
    object LabelTAuswahl: TLabel
      Left = 8
      Top = 8
      Width = 210
      Height = 21
      Caption = 'W�hlen Sie eine Tabelle aus:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object ComboBoxTabelle: TComboBox
      Left = 16
      Top = 36
      Width = 193
      Height = 21
      Style = csDropDownList
      Color = clAqua
      ItemHeight = 13
      TabOrder = 0
      OnChange = ComboBoxTabelleChange
    end
  end
  object PanelHZellen: TPanel
    Left = 22
    Top = 176
    Width = 239
    Height = 121
    TabOrder = 8
    object LabelHAzimut: TLabel
      Left = 10
      Top = 26
      Width = 172
      Height = 21
      Caption = 'Spalte der Azimutwerte'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object LabelHFallen: TLabel
      Left = 10
      Top = 60
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
    object LabelHRichtung: TLabel
      Left = 10
      Top = 94
      Width = 167
      Height = 21
      Caption = 'Spalte der Fallrichtung'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object LabelHarnisch: TLabel
      Left = 8
      Top = 0
      Width = 114
      Height = 21
      Caption = 'Harnischfl�che:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object MaskEditHAzimut: TMaskEdit
      Left = 204
      Top = 18
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
      OnKeyPress = MaskEditHAzimutKeyPress
    end
    object MaskEditHFallen: TMaskEdit
      Left = 204
      Top = 52
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
      OnKeyPress = MaskEditHFallenKeyPress
    end
    object MaskEditHRichtung: TMaskEdit
      Left = 204
      Top = 86
      Width = 21
      Height = 29
      Color = clAqua
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Text = '_'
      OnKeyPress = MaskEditHRichtungKeyPress
    end
  end
  object PanelSpalte: TPanel
    Left = 22
    Top = 432
    Width = 239
    Height = 109
    TabOrder = 9
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
      Width = 98
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
  object ButtonPlotten: TButton
    Left = 268
    Top = 508
    Width = 81
    Height = 33
    Caption = 'plotten'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    OnClick = ButtonPlottenClick
  end
  object PanelOrdner: TPanel
    Left = 290
    Top = 360
    Width = 461
    Height = 141
    TabOrder = 11
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
      Top = 34
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
      Top = 34
      Width = 64
      Height = 19
      Caption = 'Dateiname'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object LabelWorkSheet: TLabel
      Left = 8
      Top = 60
      Width = 62
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
      Left = 96
      Top = 60
      Width = 51
      Height = 19
      Caption = 'Tabelle1'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object LabelBereich: TLabel
      Left = 8
      Top = 84
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
      Top = 84
      Width = 38
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
      Top = 84
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
      Top = 84
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
      Left = 8
      Top = 108
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
      Left = 152
      Top = 108
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
      Top = 0
      Width = 351
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
    Left = 532
    Top = 510
    Width = 100
    Height = 33
    Caption = 'zur�ck'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
    OnClick = ButtonZurueckClick
  end
  object ButtonBeenden: TButton
    Left = 650
    Top = 510
    Width = 100
    Height = 33
    Caption = 'beenden'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 13
    OnClick = ButtonBeendenClick
  end
  object PanelSpeed: TPanel
    Left = 510
    Top = 10
    Width = 235
    Height = 41
    TabOrder = 14
    object SpeedDrucken: TSpeedButton
      Left = 82
      Top = 10
      Width = 24
      Height = 24
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedDruckenClick
    end
    object SpeedSpeichern: TSpeedButton
      Left = 10
      Top = 10
      Width = 24
      Height = 24
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333FFFFFFFFFFFFF33000077777770033377777777777773F000007888888
        00037F3337F3FF37F37F00000780088800037F3337F77F37F37F000007800888
        00037F3337F77FF7F37F00000788888800037F3337777777337F000000000000
        00037F3FFFFFFFFFFF7F00000000000000037F77777777777F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF07037F7F33333333777F000FFFFFFFFF
        0003737FFFFFFFFF7F7330099999999900333777777777777733}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedSpeichernClick
    end
    object SpeedHilfe: TSpeedButton
      Left = 156
      Top = 10
      Width = 24
      Height = 24
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
      Left = 180
      Top = 10
      Width = 24
      Height = 24
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
      Left = 204
      Top = 10
      Width = 24
      Height = 24
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
    object SpeedEinrichten: TSpeedButton
      Left = 58
      Top = 10
      Width = 24
      Height = 24
      Glyph.Data = {
        CA050000424DCA05000000000000360000002800000016000000150000000100
        1800000000009405000000000000000000000000000000000000C8D0D4C8D0D4
        C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
        D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D400000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000C8D0D4
        0000C8D0D4FFFFFFC8D0D4FFFFFFC8D0D4FFFFFFC8D0D4FFFFFFC8D0D4FFFFFF
        C8D0D4FFFFFFC8D0D4FFFFFFC8D0D4FFFFFFC8D0D4FFFFFFC8D0D4FFFFFF0000
        00C8D0D40000FFFFFFC8D0D40000000000000000000000000000000000000000
        00000000000000000000000000000000000000C8D0D4FFFFFFC8D0D4FFFFFFC8
        D0D4000000C8D0D40000C8D0D4808080C8D0D480808080808080808080808080
        8080808080808080808080808080808080808080808080000000C8D0D4FFFFFF
        C8D0D4FFFFFF000000C8D0D40000FFFFFF000000FFFFFFC8D0D4C8D0D4C8D0D4
        C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D48080800000
        00C8D0D4FFFFFFC8D0D4000000C8D0D40000C8D0D4000000FFFFFF0000FF0000
        FFC8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D480
        8080808080000000C8D0D4FFFFFF000000C8D0D40000FFFFFF808080FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF808080808080000000FFFFFFC8D0D4000000C8D0D40000C8D0D4FFFFFF
        000000C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
        D4808080808080FFFFFF808080000000C8D0D4FFFFFF000000C8D0D40000FFFF
        FFC8D0D4FFFFFF000000C8D0D480808080808080808080808080808080808080
        8080808080808080808080808080FFFFFF000000FFFFFFC8D0D4000000C8D0D4
        0000C8D0D4FFFFFFC8D0D4FFFFFF000000000000000000000000000000000000
        000000000000000000000000000000000000000000C8D0D4C8D0D4FFFFFF0000
        00C8D0D40000FFFFFFC8D0D4FFFFFFC8D0D4FFFFFFC8D0D4FFFFFFC8D0D4FFFF
        FFC8D0D4FFFFFFC8D0D4FFFFFF808000FFFF00FFFF00FFFF00000000FFFFFFC8
        D0D4000000C8D0D40000C8D0D4FFFFFFC8D0D480808000000000000000000000
        0000000000000000000000000000000000FFFF00808000000000000000808080
        C8D0D4FFFFFF000000C8D0D40000FFFFFFC8D0D4FFFFFF000000FFFF00808000
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00000000C8D0D4FFFF
        FFC8D0D4FFFFFFC8D0D4000000C8D0D40000C8D0D4FFFFFFC8D0D48080800000
        00000000000000000000000000000000000000000000000000FFFF0080800000
        0000000000808080C8D0D4FFFFFF000000C8D0D40000FFFFFFC8D0D4FFFFFFC8
        D0D4FFFFFFC8D0D4FFFFFFC8D0D4FFFFFFC8D0D4FFFFFFC8D0D4808080808000
        FFFF00FFFF00FFFF00000000FFFFFFC8D0D4000000C8D0D40000C8D0D4FFFFFF
        C8D0D4FFFFFFC8D0D4FFFFFFC8D0D4FFFFFFC8D0D4FFFFFFC8D0D4FFFFFFC8D0
        D4808080000000000000000000808080C8D0D4FFFFFF000000C8D0D40000FFFF
        FFC8D0D4FFFFFFC8D0D4FFFFFFC8D0D4FFFFFFC8D0D4FFFFFFC8D0D4FFFFFFC8
        D0D4FFFFFFC8D0D4FFFFFFC8D0D4FFFFFFC8D0D4FFFFFFC8D0D4000000C8D0D4
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00C8D0D40000FFFFFF000000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000000000FFFFFF000000FF
        FFFF000000C8D0D4000080808080808080808080808080808080808080808080
        8080808080808080808080808080808080808080808080808080808080808080
        808080808080808080C8D0D40000}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedEinrichtenClick
    end
    object SpeedWinWord: TSpeedButton
      Left = 106
      Top = 10
      Width = 25
      Height = 25
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333330070
        7700333333337777777733333333008088003333333377F73377333333330088
        88003333333377FFFF7733333333000000003FFFFFFF77777777000000000000
        000077777777777777770FFFFFFF0FFFFFF07F3333337F3333370FFFFFFF0FFF
        FFF07F3FF3FF7FFFFFF70F00F0080CCC9CC07F773773777777770FFFFFFFF039
        99337F3FFFF3F7F777F30F0000F0F09999937F7777373777777F0FFFFFFFF999
        99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
        99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
        93337FFFF7737777733300000033333333337777773333333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedWinWordClick
    end
  end
  object PanelSZellen: TPanel
    Left = 22
    Top = 304
    Width = 239
    Height = 121
    TabOrder = 15
    object LabelSAzimut: TLabel
      Left = 10
      Top = 26
      Width = 172
      Height = 21
      Caption = 'Spalte der Azimutwerte'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object LabelSFallen: TLabel
      Left = 10
      Top = 60
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
    object LabelSRichtung: TLabel
      Left = 10
      Top = 94
      Width = 167
      Height = 21
      Caption = 'Spalte der Fallrichtung'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object LabelStriemung: TLabel
      Left = 8
      Top = 4
      Width = 96
      Height = 21
      Caption = 'Striemungen:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object MaskEditSAzimut: TMaskEdit
      Left = 204
      Top = 18
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
      OnKeyPress = MaskEditSAzimutKeyPress
    end
    object MaskEditSFallen: TMaskEdit
      Left = 204
      Top = 52
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
      OnKeyPress = MaskEditSFallenKeyPress
    end
    object MaskEditSRichtung: TMaskEdit
      Left = 204
      Top = 86
      Width = 21
      Height = 29
      Color = clAqua
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Text = '_'
      OnKeyPress = MaskEditSRichtungKeyPress
    end
  end
  object MainMenu1: TMainMenu
    Left = 312
    Top = 112
    object Dspeichern: TMenuItem
      Caption = 'Daten speichern'
      object speichern: TMenuItem
        Caption = 'Speichern'
        ShortCut = 16467
        OnClick = speichernClick
      end
      object speichernU: TMenuItem
        Caption = 'Speichern unter'
        OnClick = speichernUClick
      end
    end
    object Drucker: TMenuItem
      Caption = 'Drucker'
      object einrichten: TMenuItem
        Caption = 'Einrichten'
        OnClick = einrichtenClick
      end
      object drucken: TMenuItem
        Caption = 'Drucken'
        ShortCut = 16464
        OnClick = druckenClick
      end
      object Drword: TMenuItem
        Caption = 'Word-Datei'
        ShortCut = 49239
        OnClick = DrwordClick
      end
    end
    object Hilfe: TMenuItem
      Caption = 'Hilfe'
      OnClick = HilfeClick
    end
    object Handbuch: TMenuItem
      Caption = 'Handbuch'
      OnClick = HandbuchClick
    end
    object Literatur: TMenuItem
      Caption = 'Literatur'
      OnClick = LiteraturClick
    end
  end
  object ExcelApplication1: TExcelApplication
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    AutoQuit = False
    Left = 312
    Top = 168
  end
  object ExcelWorksheet1: TExcelWorksheet
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 360
    Top = 168
  end
  object ExcelWorkbook1: TExcelWorkbook
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 408
    Top = 168
  end
  object PrinterSetupDialog1: TPrinterSetupDialog
    Left = 312
    Top = 208
  end
  object PrintDialog1: TPrintDialog
    Left = 360
    Top = 208
  end
  object SaveDialog1: TSaveDialog
    Left = 420
    Top = 210
  end
end
