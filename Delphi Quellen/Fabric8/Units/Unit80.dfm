object Form80: TForm80
  Left = 140
  Top = 80
  Width = 800
  Height = 620
  Caption = 'Meßwerte in eine Karte eintragen (Manuelle Eingabe)'
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
    Left = 464
    Top = -4
    Width = 281
    Height = 55
    Caption = 'Demo-Version'
    Font.Charset = ANSI_CHARSET
    Font.Color = clGray
    Font.Height = -48
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object ButtonStart: TButton
    Left = 14
    Top = 478
    Width = 105
    Height = 49
    Caption = 'Start'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = ButtonStartClick
  end
  object ButtonZuruck: TButton
    Left = 536
    Top = 478
    Width = 105
    Height = 49
    Caption = 'Zurück'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = ButtonZuruckClick
  end
  object ButtonBeenden: TButton
    Left = 664
    Top = 478
    Width = 97
    Height = 49
    Caption = 'Beenden'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = ButtonBeendenClick
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 557
    Width = 792
    Height = 17
    Panels = <>
    SimplePanel = False
  end
  object PanelDMM: TPanel
    Left = 30
    Top = 262
    Width = 341
    Height = 99
    TabOrder = 4
    object LabelBreite: TLabel
      Left = 16
      Top = 32
      Width = 104
      Height = 21
      Caption = 'Geogr. Breite:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object LabelLaenge: TLabel
      Left = 16
      Top = 72
      Width = 101
      Height = 21
      Caption = 'geogr. Länge:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object LabelGrad: TLabel
      Left = 192
      Top = 8
      Width = 38
      Height = 21
      Caption = 'Grad'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object LabelMinuten: TLabel
      Left = 258
      Top = 8
      Width = 60
      Height = 21
      Caption = 'Minuten'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object LabelNS: TLabel
      Left = 178
      Top = 32
      Width = 11
      Height = 21
      Caption = 'S'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object LabelOW: TLabel
      Left = 178
      Top = 72
      Width = 11
      Height = 21
      Caption = 'E'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object MaskEditBGrad: TMaskEdit
      Left = 200
      Top = 32
      Width = 25
      Height = 29
      Color = clAqua
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyPress = MaskEditBGradKeyPress
    end
    object MaskEditLGrad: TMaskEdit
      Left = 200
      Top = 64
      Width = 33
      Height = 29
      Color = clAqua
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnKeyPress = MaskEditLGradKeyPress
    end
    object MaskEditDMMBMin: TMaskEdit
      Left = 258
      Top = 32
      Width = 57
      Height = 29
      Color = clAqua
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Text = '______'
      OnKeyPress = MaskEditDMMBMinKeyPress
    end
    object MaskEditDMMLMin: TMaskEdit
      Left = 258
      Top = 64
      Width = 57
      Height = 29
      Color = clAqua
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Text = '______'
      OnKeyPress = MaskEditDMMLMinKeyPress
    end
  end
  object PanelDaten: TPanel
    Left = 30
    Top = 392
    Width = 281
    Height = 57
    BevelInner = bvRaised
    TabOrder = 5
    object LabelEingabe: TLabel
      Left = 18
      Top = 16
      Width = 71
      Height = 31
      Caption = 'Daten:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object MaskEditAzi: TMaskEdit
      Left = 154
      Top = 8
      Width = 57
      Height = 39
      Color = clAqua
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyPress = MaskEditAziKeyPress
    end
    object MaskEditLP: TMaskEdit
      Left = 110
      Top = 10
      Width = 21
      Height = 39
      Color = clAqua
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnKeyPress = MaskEditLPKeyPress
      OnKeyUp = MaskEditLPKeyUp
    end
    object MaskEditFal: TMaskEdit
      Left = 218
      Top = 8
      Width = 43
      Height = 39
      Color = clAqua
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnKeyPress = MaskEditFalKeyPress
    end
  end
  object ButtonDBeenden: TButton
    Left = 134
    Top = 478
    Width = 257
    Height = 49
    Caption = '&Dateneingabe beenden'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    TabStop = False
    OnClick = ButtonDBeendenClick
  end
  object PanelMaxDat: TPanel
    Left = 14
    Top = 140
    Width = 241
    Height = 49
    TabOrder = 7
    object LabelMaxDat: TLabel
      Left = 8
      Top = 16
      Width = 136
      Height = 21
      Caption = 'max. Datenmenge:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object LabelMenge: TLabel
      Left = 184
      Top = 16
      Width = 45
      Height = 21
      Caption = '10000'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
  end
  object PanelGrenzen: TPanel
    Left = 424
    Top = 50
    Width = 337
    Height = 61
    TabOrder = 8
    object LabelKoord: TLabel
      Left = 0
      Top = 30
      Width = 92
      Height = 21
      Caption = 'Koordinaten'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object LabelDaten: TLabel
      Left = 274
      Top = 30
      Width = 43
      Height = 21
      Caption = 'Daten'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object LabelUTMZone: TLabel
      Left = 0
      Top = 10
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
  end
  object PanelAnzahl: TPanel
    Left = 290
    Top = 150
    Width = 131
    Height = 47
    TabOrder = 9
    object LabelAnzahl: TLabel
      Left = 10
      Top = 20
      Width = 51
      Height = 21
      Caption = 'Anzahl'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object LabelZahl: TLabel
      Left = 80
      Top = 20
      Width = 45
      Height = 21
      Caption = '00000'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
  end
  object ButtonPlot: TButton
    Left = 404
    Top = 476
    Width = 91
    Height = 51
    Caption = 'Plot'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    OnClick = ButtonPlotClick
  end
  object PanelSpeed: TPanel
    Left = 14
    Top = 12
    Width = 141
    Height = 41
    TabOrder = 11
    object SpeedDspeichern: TSpeedButton
      Left = 10
      Top = 10
      Width = 25
      Height = 25
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
      OnClick = SpeedDspeichernClick
    end
    object SpeedHilfe: TSpeedButton
      Left = 58
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
      Left = 82
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
      Left = 106
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
  object PanelDMS: TPanel
    Left = 280
    Top = 260
    Width = 91
    Height = 101
    TabOrder = 14
    object LabelDMSMin: TLabel
      Left = 0
      Top = 10
      Width = 29
      Height = 21
      Caption = 'Min'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object LabelSek: TLabel
      Left = 40
      Top = 10
      Width = 28
      Height = 21
      Caption = 'Sek'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object MaskEditDMSBMin: TMaskEdit
      Left = 0
      Top = 32
      Width = 25
      Height = 29
      Color = clAqua
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = '__'
      OnKeyPress = MaskEditDMSBMinKeyPress
    end
    object MaskEditDMSLMin: TMaskEdit
      Left = 0
      Top = 64
      Width = 25
      Height = 29
      Color = clAqua
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = '__'
      OnKeyPress = MaskEditDMSLMinKeyPress
    end
    object MaskEditDMSBSek: TMaskEdit
      Left = 30
      Top = 32
      Width = 51
      Height = 29
      Color = clAqua
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Text = '____'
      OnKeyPress = MaskEditDMSBSekKeyPress
    end
    object MaskEditDMSLSek: TMaskEdit
      Left = 30
      Top = 64
      Width = 51
      Height = 29
      Color = clAqua
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Text = '____'
      OnKeyPress = MaskEditDMSLSekKeyPress
    end
  end
  object PanelGauss: TPanel
    Left = 30
    Top = 262
    Width = 341
    Height = 101
    TabOrder = 12
    object LabelRechts: TLabel
      Left = 50
      Top = 10
      Width = 88
      Height = 21
      Caption = 'Rechtswert:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object LabelHoch: TLabel
      Left = 50
      Top = 60
      Width = 77
      Height = 21
      Caption = 'Hochwert:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object MaskEditR1: TMaskEdit
      Left = 170
      Top = 10
      Width = 21
      Height = 23
      Color = clAqua
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = '__'
      OnKeyPress = MaskEditR1KeyPress
    end
    object MaskEditR2: TMaskEdit
      Left = 210
      Top = 10
      Width = 31
      Height = 35
      Color = clAqua
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = '__'
      OnKeyPress = MaskEditR2KeyPress
    end
    object MaskEditH1: TMaskEdit
      Left = 170
      Top = 50
      Width = 21
      Height = 23
      Color = clAqua
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Text = '__'
      OnKeyPress = MaskEditH1KeyPress
    end
    object MaskEditH2: TMaskEdit
      Left = 210
      Top = 50
      Width = 31
      Height = 35
      Color = clAqua
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Text = '__'
      OnKeyPress = MaskEditH2KeyPress
    end
    object MaskEditH3: TMaskEdit
      Left = 260
      Top = 53
      Width = 31
      Height = 23
      Color = clAqua
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      Text = '___'
      OnKeyPress = MaskEditH3KeyPress
    end
    object MaskEditR3: TMaskEdit
      Left = 260
      Top = 10
      Width = 31
      Height = 23
      Color = clAqua
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      Text = '___'
      OnKeyPress = MaskEditR3KeyPress
    end
  end
  object PanelUTM: TPanel
    Left = 30
    Top = 262
    Width = 341
    Height = 101
    TabOrder = 13
    object LabelOsten: TLabel
      Left = 130
      Top = 20
      Width = 44
      Height = 21
      Caption = 'Osten'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object LabelNorden: TLabel
      Left = 130
      Top = 60
      Width = 56
      Height = 21
      Caption = 'Norden'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object LabelZone: TLabel
      Left = 20
      Top = 40
      Width = 38
      Height = 21
      Caption = 'Zone'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object MaskEditZone: TMaskEdit
      Left = 70
      Top = 40
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
      OnKeyPress = MaskEditZoneKeyPress
    end
    object MaskEditOsten: TMaskEdit
      Left = 210
      Top = 20
      Width = 81
      Height = 29
      Color = clAqua
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = '_______'
      OnKeyPress = MaskEditOstenKeyPress
    end
    object MaskEditNorden: TMaskEdit
      Left = 210
      Top = 60
      Width = 81
      Height = 29
      Color = clAqua
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Text = '_______'
      OnKeyPress = MaskEditNordenKeyPress
    end
  end
  object PanelKoor: TPanel
    Left = 14
    Top = 62
    Width = 387
    Height = 71
    TabOrder = 15
    object LabelKoor: TLabel
      Left = 10
      Top = 20
      Width = 110
      Height = 23
      Caption = 'Koordinaten:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object LabelGeogr: TLabel
      Left = 136
      Top = 20
      Width = 109
      Height = 23
      Caption = 'geographisch'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
  end
  object ListBoxDaten: TListBox
    Left = 424
    Top = 110
    Width = 337
    Height = 351
    Color = clAqua
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ItemHeight = 21
    ParentFont = False
    TabOrder = 17
  end
  object PanelRadius: TPanel
    Left = 14
    Top = 202
    Width = 191
    Height = 41
    TabOrder = 18
    object LabelRadius: TLabel
      Left = 10
      Top = 10
      Width = 101
      Height = 21
      Caption = 'Radius [mm]:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object MaskEditRadius: TMaskEdit
      Left = 130
      Top = 2
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
      OnKeyPress = MaskEditRadiusKeyPress
    end
  end
  object PanelBrunton: TPanel
    Left = 168
    Top = 392
    Width = 145
    Height = 57
    TabOrder = 19
    object MaskEditBStreichen: TMaskEdit
      Left = 8
      Top = 10
      Width = 49
      Height = 39
      Color = clAqua
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyPress = MaskEditBStreichenKeyPress
    end
    object MaskEditBFallen: TMaskEdit
      Left = 64
      Top = 10
      Width = 33
      Height = 39
      Color = clAqua
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnKeyPress = MaskEditBFallenKeyPress
    end
    object MaskEditNS: TMaskEdit
      Left = 104
      Top = 10
      Width = 25
      Height = 39
      Color = clAqua
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnKeyPress = MaskEditNSKeyPress
    end
  end
  object PanelDiagramm: TPanel
    Left = 14
    Top = 364
    Width = 341
    Height = 101
    TabOrder = 16
    object ButtonBild: TButton
      Left = 66
      Top = 12
      Width = 201
      Height = 61
      Caption = 'Diagramm suchen'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = ButtonBildClick
    end
  end
  object MainMenu1: TMainMenu
    Left = 278
    Top = 14
    object DSpeichern: TMenuItem
      Caption = 'Daten speichern'
      object speichern: TMenuItem
        Caption = 'speichern'
        OnClick = speichernClick
      end
      object speichernunter: TMenuItem
        Caption = 'speichern unter'
        OnClick = speichernunterClick
      end
    end
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
  object SaveDialog1: TSaveDialog
    Left = 318
    Top = 12
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 358
    Top = 18
  end
end
