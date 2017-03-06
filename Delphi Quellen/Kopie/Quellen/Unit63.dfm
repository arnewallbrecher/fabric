object Form63: TForm63
  Left = 33
  Top = 1
  Width = 1026
  Height = 746
  Caption = 'Talbot-Methode, Grafik'
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
  object Image1: TImage
    Left = 80
    Top = 2
    Width = 660
    Height = 663
    ParentShowHint = False
    ShowHint = True
    OnMouseDown = Image1MouseDown
  end
  object Image2: TImage
    Left = 660
    Top = 560
    Width = 81
    Height = 81
  end
  object ImageNord: TImage
    Left = 400
    Top = 12
    Width = 18
    Height = 36
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 679
    Width = 1018
    Height = 21
    Panels = <>
    SimplePanel = False
  end
  object PanelTyp: TPanel
    Left = 748
    Top = 324
    Width = 241
    Height = 61
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    object LabelProjektion: TLabel
      Left = 16
      Top = 8
      Width = 80
      Height = 21
      Caption = 'Projektion:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object LabelGeraet: TLabel
      Left = 16
      Top = 32
      Width = 134
      Height = 21
      Caption = 'Typ der Plotdatei:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
  end
  object PanelDateien: TPanel
    Left = 748
    Top = 0
    Width = 241
    Height = 169
    TabOrder = 3
    object LabelDateien: TLabel
      Left = 24
      Top = 8
      Width = 153
      Height = 21
      Caption = 'ausgew�hlte Dateien:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object LabelAnzahl: TLabel
      Left = 24
      Top = 240
      Width = 127
      Height = 21
      Caption = 'Anzahlder Daten:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object LabelZahl: TLabel
      Left = 160
      Top = 240
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
    object LabelDaten: TLabel
      Left = 24
      Top = 144
      Width = 132
      Height = 21
      Caption = 'Anzahl der Daten:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
    object Label00000: TLabel
      Left = 168
      Top = 144
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
    object ListBoxDateien: TListBox
      Left = 24
      Top = 32
      Width = 193
      Height = 105
      Color = clAqua
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ItemHeight = 21
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
  end
  object GroupBoxPlotten: TGroupBox
    Left = 748
    Top = 400
    Width = 241
    Height = 217
    Caption = 'Plotten:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    object PanelRadius: TPanel
      Left = 16
      Top = 24
      Width = 209
      Height = 41
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      object LabelRadius: TLabel
        Left = 8
        Top = 8
        Width = 101
        Height = 21
        Caption = 'Radius [mm]:'
      end
      object MaskEditRadius: TMaskEdit
        Left = 160
        Top = 8
        Width = 41
        Height = 29
        Color = clAqua
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        Text = '        '
      end
    end
    object PanelMittelpunkt: TPanel
      Left = 16
      Top = 72
      Width = 209
      Height = 89
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      object LabelMittelpunkt: TLabel
        Left = 8
        Top = 8
        Width = 133
        Height = 21
        Caption = 'Mittelpunkt [mm]:'
      end
      object LabelX: TLabel
        Left = 24
        Top = 32
        Width = 106
        Height = 21
        Caption = 'X-Koordinate:'
      end
      object LabelY: TLabel
        Left = 24
        Top = 64
        Width = 106
        Height = 21
        Caption = 'Y-Koordinate:'
      end
      object MaskEditX: TMaskEdit
        Left = 160
        Top = 24
        Width = 41
        Height = 29
        Color = clAqua
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        Text = '        '
      end
      object MaskEditY: TMaskEdit
        Left = 160
        Top = 56
        Width = 41
        Height = 29
        Color = clAqua
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        Text = '        '
      end
    end
    object Ploterstellen: TButton
      Left = 16
      Top = 168
      Width = 209
      Height = 33
      Caption = 'Plotdatei erstellen'
      TabOrder = 2
      OnClick = PloterstellenClick
    end
  end
  object ButtonStart: TButton
    Left = 756
    Top = 632
    Width = 65
    Height = 33
    Caption = '&Start'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    OnClick = ButtonStartClick
  end
  object Buttonzurueck: TButton
    Left = 828
    Top = 632
    Width = 73
    Height = 33
    Caption = '&zur�ck'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
    OnClick = ButtonzurueckClick
  end
  object ButtonBeenden: TButton
    Left = 908
    Top = 632
    Width = 73
    Height = 33
    Caption = '&beenden'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
    OnClick = ButtonBeendenClick
  end
  object Paneldrucken: TPanel
    Left = 184
    Top = 136
    Width = 433
    Height = 425
    TabOrder = 8
    Visible = False
    object GroupBoxdrucken: TGroupBox
      Left = 16
      Top = 8
      Width = 401
      Height = 401
      Caption = 'Druck-Parameter:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object PanelDRadius: TPanel
        Left = 24
        Top = 32
        Width = 353
        Height = 41
        TabOrder = 0
        object LabelRdrucken: TLabel
          Left = 8
          Top = 8
          Width = 229
          Height = 21
          Caption = 'Radius [in % der Papierbreite]:'
        end
        object MaskEditRdrucken: TMaskEdit
          Left = 304
          Top = 8
          Width = 33
          Height = 29
          Color = clAqua
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          Text = '100'
        end
      end
      object PanelBild: TPanel
        Left = 24
        Top = 80
        Width = 353
        Height = 113
        TabOrder = 1
        object LabelMitte: TLabel
          Left = 16
          Top = 8
          Width = 121
          Height = 21
          Caption = 'Bildmittelpunkt :'
        end
        object LabelXdrucken: TLabel
          Left = 16
          Top = 40
          Width = 279
          Height = 21
          Caption = 'X-Koordinate [in % der Papierbreite]:'
        end
        object LabelYdrucken: TLabel
          Left = 16
          Top = 72
          Width = 274
          Height = 21
          Caption = 'Y-Koordinate [in % der Papierh�he]:'
        end
        object MaskEditXdrucken: TMaskEdit
          Left = 304
          Top = 40
          Width = 33
          Height = 29
          Color = clAqua
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          Text = '100'
        end
      end
      object MaskEditYdrucken: TMaskEdit
        Left = 328
        Top = 152
        Width = 33
        Height = 29
        Color = clAqua
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        Text = '100'
      end
      object Panel1Unterschrift: TPanel
        Left = 24
        Top = 208
        Width = 353
        Height = 137
        TabOrder = 3
        object LabelUnterschrift: TLabel
          Left = 8
          Top = 8
          Width = 118
          Height = 21
          Caption = 'Bildunterschrift:'
        end
        object LabelSchrift: TLabel
          Left = 8
          Top = 88
          Width = 92
          Height = 21
          Caption = 'Schriftgr��e'
        end
        object MaskEditUnterschrift: TMaskEdit
          Left = 8
          Top = 32
          Width = 337
          Height = 22
          Color = clAqua
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnKeyPress = MaskEditUnterschriftKeyPress
        end
        object ListBoxSchrift: TListBox
          Left = 120
          Top = 80
          Width = 41
          Height = 33
          Color = clAqua
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          ItemHeight = 14
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = ListBoxSchriftClick
        end
        object RadioGroup: TRadioGroup
          Left = 176
          Top = 56
          Width = 169
          Height = 73
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
        end
        object RadioButtonlinks: TRadioButton
          Left = 192
          Top = 104
          Width = 145
          Height = 17
          Caption = 'linksb�ndig'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = RadioButtonlinksClick
        end
        object RadioButtonzentriert: TRadioButton
          Left = 192
          Top = 88
          Width = 137
          Height = 17
          Caption = 'zentriert'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnClick = RadioButtonzentriertClick
        end
        object RadioButtonrechts: TRadioButton
          Left = 192
          Top = 72
          Width = 137
          Height = 17
          Caption = 'rechtsb�ndig'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnClick = RadioButtonrechtsClick
        end
      end
      object ButtonDrucken: TButton
        Left = 30
        Top = 350
        Width = 81
        Height = 31
        Caption = 'Drucken'
        TabOrder = 4
        OnClick = ButtonDruckenClick
      end
      object ButtonAbbrechen: TButton
        Left = 120
        Top = 350
        Width = 101
        Height = 31
        Caption = 'Abbrechen'
        TabOrder = 5
        OnClick = ButtonAbbrechenClick
      end
    end
  end
  object Panel3: TPanel
    Left = 748
    Top = 176
    Width = 241
    Height = 137
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 9
    object LabelVektor1: TLabel
      Left = 168
      Top = 24
      Width = 44
      Height = 19
      Caption = '000/00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object LabelVektor2: TLabel
      Left = 168
      Top = 40
      Width = 44
      Height = 19
      Caption = '000/00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object LabelVektor3: TLabel
      Left = 168
      Top = 56
      Width = 44
      Height = 19
      Caption = '000/00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object LabelStrainEllipsoid: TLabel
      Left = 72
      Top = 8
      Width = 95
      Height = 19
      Caption = 'Strain-Ellipsoid:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object LabelLangeAchse: TLabel
      Left = 32
      Top = 24
      Width = 73
      Height = 19
      Caption = 'lange Achse'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object LabelMittlereAchse: TLabel
      Left = 32
      Top = 40
      Width = 86
      Height = 19
      Caption = 'mittlere Achse'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object LabelKurzeAchse: TLabel
      Left = 32
      Top = 56
      Width = 75
      Height = 19
      Caption = 'kurze Achse'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object LabelKegelWinkel: TLabel
      Left = 80
      Top = 72
      Width = 78
      Height = 19
      Caption = 'Kegelwinkel:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object LabelWinkelLang: TLabel
      Left = 8
      Top = 88
      Width = 89
      Height = 19
      Caption = 'mittlere Achse:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object LabelWinkelKurz: TLabel
      Left = 128
      Top = 88
      Width = 78
      Height = 19
      Caption = 'kurze Achse:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object LabelWinkel1: TLabel
      Left = 104
      Top = 88
      Width = 16
      Height = 19
      Caption = '00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object LabelWinkel2: TLabel
      Left = 208
      Top = 88
      Width = 16
      Height = 19
      Caption = '00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object LabelXy: TLabel
      Left = 24
      Top = 112
      Width = 47
      Height = 21
      Caption = 'X/Y ='
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object LabelXYWert: TLabel
      Left = 80
      Top = 112
      Width = 23
      Height = 21
      Caption = '0.0'
    end
    object LabelYZ: TLabel
      Left = 128
      Top = 112
      Width = 45
      Height = 21
      Caption = 'Y/Z ='
    end
    object LabelYZWert: TLabel
      Left = 184
      Top = 112
      Width = 23
      Height = 21
      Caption = '0.0'
    end
  end
  object ButtonAchsen: TButton
    Left = 496
    Top = 0
    Width = 245
    Height = 27
    Caption = '&Orientierung des Strain-Ellipsoides'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 10
    OnClick = ButtonAchsenClick
  end
  object ButtonCluster: TButton
    Left = 610
    Top = 30
    Width = 131
    Height = 27
    Caption = '&Cluster eliminieren'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 11
    OnClick = ButtonClusterClick
  end
  object PanelProlat: TPanel
    Left = 82
    Top = 636
    Width = 177
    Height = 27
    ParentShowHint = False
    ShowHint = True
    TabOrder = 12
    object RadioProlat: TRadioButton
      Left = 8
      Top = 8
      Width = 73
      Height = 17
      Caption = 'Prolat'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = RadioProlatClick
    end
    object RadioOblat: TRadioButton
      Left = 98
      Top = 8
      Width = 73
      Height = 17
      Caption = 'Oblat'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = RadioOblatClick
    end
  end
  object PanelSpeed: TPanel
    Left = -2
    Top = 0
    Width = 70
    Height = 521
    TabOrder = 1
    object SpeedHilfe: TSpeedButton
      Left = 40
      Top = 388
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
    object SpeedDrucker: TSpeedButton
      Left = 40
      Top = 340
      Width = 24
      Height = 24
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        0003377777777777777308888888888888807F33333333333337088888888888
        88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
        8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
        8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedDruckerClick
    end
    object SpeedHandbuch: TSpeedButton
      Left = 40
      Top = 412
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
    object SpeedKopieren: TSpeedButton
      Left = 10
      Top = 292
      Width = 24
      Height = 24
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003333330FFFFF
        FFF03333337F3FFFF3F73333330F0000F0F03333337F777737373333330FFFFF
        FFF033FFFF7FFF33FFF77000000007F00000377777777FF777770BBBBBBBB0F0
        FF037777777777F7F3730B77777BB0F0F0337777777777F7F7330B7FFFFFB0F0
        0333777F333377F77F330B7FFFFFB0009333777F333377777FF30B7FFFFFB039
        9933777F333377F777FF0B7FFFFFB0999993777F33337777777F0B7FFFFFB999
        9999777F3333777777770B7FFFFFB0399933777FFFFF77F777F3070077007039
        99337777777777F777F30B770077B039993377FFFFFF77F777330BB7007BB999
        93337777FF777777733370000000073333333777777773333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedKopierenClick
    end
    object SpeedZwischenablage: TSpeedButton
      Left = 40
      Top = 52
      Width = 24
      Height = 24
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333FF33333333FF333993333333300033377F3333333777333993333333
        300033F77FFF3333377739999993333333333777777F3333333F399999933333
        33003777777333333377333993333333330033377F3333333377333993333333
        3333333773333333333F333333333333330033333333F33333773333333C3333
        330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
        333333333337733333FF3333333C333330003333333733333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedZwischenablageClick
    end
    object SpeedLambert: TSpeedButton
      Left = 10
      Top = 4
      Width = 24
      Height = 24
      Glyph.Data = {
        76050000424D7605000000000000360000002800000015000000150000000100
        18000000000040050000232E0000232E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFC1C3F4D1D3F7FFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF9194EC2B32DBFFFFFFFFFFFF00FFFFFF98999C
        5A5C5F5A5C5F5A5C5F5A5C5F57595D494B4F30323722252A2C2F333D40445052
        565A5C5F5A5C5F5A5C5F494C841D20721B1E525A5EC5FFFFFF00FFFFFFF5F5F5
        EEEEEFEEEEEFEEEEEFCBCCCD4C4E537C7E80CBCCCDD9DADB3F42479597986264
        67B9BABCEEEEEFEEEEEFB4B5C6171927171A2E9599E9FFFFFF00FFFFFFFFFFFF
        FFFFFFF0F0F1E9E9EA6E6F73FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5B5D61CECF
        D0818386999A9DFFFFFFE6E6E6181A20181B23FFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFECEDED494C50FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF797B
        7EA1A2A4A4A5A7A4A5A7FFFFFF6F71749C9C9DFFFFFFFFFFFF00FFFFFFFFFFFF
        F5F6F6525558FFFFFFFFFFFF171A1F171A1F171A1F171A1F171A1FFFFFFFFFFF
        FF9C9D9F8A8B8E595B5EEFEFF065676BE2E3E3FFFFFFFFFFFF00FFFFFFFFFFFF
        A2A3A5A6A7A9FFFFFFFFFFFFFFFFFF171A1FFFFFFFD4D4D5171A1FFFFFFFFFFF
        FFFFFFFFBEBFC0595B5E494DAE292D4FF8F8F8FFFFFFFFFFFF00FFFFFFFCFCFC
        4C4E52FFFFFFFFFFFFFFFFFFFFFFFF171A1FFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFB5B7DE2227BF1F24889194ECFFFFFFFFFFFF00FFFFFFA8AAAB
        9FA1A3FFFFFFFFFFFFFFFFFFFFFFFF171A1FFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFB3B5F2252BDA282EDB888BEAFFFFFFFFFFFF00FFFFFF818386
        C6C7C8FFFFFFFFFFFFFFFFFFFFFFFF171A1FFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF8689E82329D3FFFFFFFFFFFFFFFFFF00FFFFFF595B5E
        EFEFF0FFFFFFFFFFFFFFFFFFFFFFFF171A1FFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF5C5E64EAEAEAFFFFFFFFFFFF00FFFFFF494C50
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF171A1FFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF727477D6D6D7FFFFFFFFFFFF00FDFDFD4E5054
        ACADAFACADAFACADAFACADAFACADAF171A1FACADAFACADAFACADAFACADAFACAD
        AFACADAFACADAFACADAFACADAF6B6D70C7C8C9FFFFFFFFFFFF00FDFDFD9C9D9F
        9C9D9F9C9D9F9C9D9F9C9D9F171A1F171A1F171A1F9C9D9F9C9D9F9C9D9F9C9D
        9F9C9D9F9C9D9F9C9D9F9C9D9F9C9D9FDEDEDFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedLambertClick
    end
    object SpeedStereografisch: TSpeedButton
      Left = 10
      Top = 28
      Width = 24
      Height = 24
      Glyph.Data = {
        76050000424D7605000000000000360000002800000015000000150000000100
        18000000000040050000232E0000232E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9D9DA7F808267686B5A5B5E6B6C6F8383
        86E2E1E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF75777958595C9B9A9CAFADAEBAB8B8ABAAAB9897
        985254577F8083D4D5D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFF4F4F4FFFFFF45474BA3A1A2D0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CD
        CDD0CDCD9B999B5B5C5FFFFFFF999CEDFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFDFDFE03F4145C9C6C667686B171A1F171A1F67686BD0CDCDD0CDCDD0CD
        CDD0CDCDD0CDCDD0CDCD363A72252BDAFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFF434548CECBCB67686B67686BD0CDCDD0CDCD67686B67686BD0CDCDD0CD
        CDD0CDCDD0CDCD9292D1252CDA2B30DA3E44DEFFFFFFFFFFFF00FFFFFFFFFFFF
        8C8D8F919091D0CDCD171A1FD0CDCDD0CDCDD0CDCDD0CDCD171A1FD0CDCDD0CD
        CDD0CDCDD0CDCDCCC9C93A3C743237CE939395FFFFFFFFFFFF00FFFFFFFFFFFF
        616366B3B1B2D0CDCDD0CDCDD0CDCDD0CDCDD0CDCDB9B7B7171A1FD0CDCDD0CD
        CDD0CDCD9999D061638D9B999BB6B4B55D5E62FFFFFFFFFFFF00FFFFFFFDFDFD
        3E3F43C6C3C4C6C3C4C6C3C4C6C3C4B0AEAF6E6E7137393D8F8E90C6C3C4C6C3
        C4C6C3C4363CD53F4277C6C3C4C6C3C43E3F43FDFDFDFFFFFF00FFFFFFF0F0F0
        313438484A4D484A4D4244472022272C2F33383B3E484A4D484A4D484A4D484A
        4D262CC92D32DA252BDA3B3F7D484A4D34373AF0F0F0FFFFFF00FFFFFFFDFDFD
        404145D0CDCDD0CDCD393B3FB9B7B7D0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CD
        CDB3B1B2252CD09D9DD0D0CDCDD0CDCD404145FDFDFDFFFFFF00FFFFFFFFFFFF
        5D5E62B7B5B5D0CDCD171A1FD0CDCDD0CDCDD0CDCDD0CDCD171A1FD0CDCDD0CD
        CD555659BAB8B8D0CDCDD0CDCDC8C6C6494B4EFFFFFFFFFFFF00FFFFFFFFFFFF
        9293958C8B8DD0CDCD50515567686BD0CDCDD0CDCD67686B67686BD0CDCDA3A2
        A36B6B6ED0CDCDD0CDCDD0CDCD878688999A9CFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFF515356C1BFBFD0CDCD67686B171A1F171A1F5C5D60D0CDCDD0CDCD4849
        4DC7C4C4D0CDCDD0CDCDC6C3C44C4D51FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFD3D2D33F4145D0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCD9492947B7B
        7DD0CDCDD0CDCDD0CDCD3F4145F4F4F4FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFEEEEEFFFFFFF67686BA7A5A6D0CDCDD0CDCDD0CDCDD0CDCD404145CFCC
        CCD0CDCDBBB8B9444649E2E2E2F0F0F0FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFC3C4C567686B5E5F62A4A3A4B6B4B57B7B7D7B7B7D9291
        936C6D6F545558F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1D1D17475775D5E623F41445D5E628A8B
        8DBCBCBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedStereografischClick
    end
    object SpeedOrthografisch: TSpeedButton
      Left = 10
      Top = 52
      Width = 24
      Height = 24
      Glyph.Data = {
        76050000424D7605000000000000360000002800000015000000150000000100
        18000000000040050000232E0000232E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFEDEEFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEDEDF8B8D8F6F71747D7F81B2B3B5999C
        EC2F36DCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFECEDED4B4D516A6C6FBCBDBFD8D9DACBCCCD7679AA242B
        DA292FDB787CE8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFF5F5F5F5F6F65B5D61FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFEDEEFB2229
        DA272DDB797CD4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFECEDED494C50FFFFFFFFFFFF999B9D171A1F171A1F999B9DFFFFFFBBBB
        BD3B41C9B4B5B7949597FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        F5F6F6525558FFFFFFFFFFFFB6B7B9505256FFFFFFFFFFFF505256C5C6C7BBBB
        BD8D8F91FFFFFF64666AE3E4E4FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        A2A3A5A6A7A9FFFFFFFFFFFF505256E2E3E3FFFFFFFFFFFFE2E3E3505256BBBB
        BD8D8F91FFFFFFDEDEDF6A6C6FFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFCFCFC
        4C4E52FFFFFFFFFFFFFFFFFF171A1FFFFFFFFFFFFFFFFFFFFFFFFF171A1FBBBB
        BD8D8F91FFFFFFFFFFFF6E6F73DADBDCFFFFFFFFFFFFFFFFFF00FFFFFFA8AAAB
        9FA1A3FFFFFFFFFFFFFFFFFF171A1FFFFFFFFFFFFFFFFFFFFFFFFF171A1FBBBB
        BD8D8F91FFFFFFFFFFFFC6C7C8818386FFFFFFFFFFFFFFFFFF00FFFFFF818386
        C6C7C8FFFFFFFFFFFFFFFFFF505256E2E3E3FFFFFFFFFFFFE2E3E3505256BBBB
        BD8D8F91FFFFFFFFFFFFFDFDFD4B4D51FFFFFFFFFFFFFFFFFF00FFFFFF595B5E
        EFEFF0FFFFFFFFFFFFFFFFFFC5C6C7505256FFFFFFFFFFFF505256C5C6C7BBBB
        BD8D8F91FFFFFFFFFFFFFFFFFF57595DF8F8F8FFFFFFFFFFFF00FFFFFF494C50
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA8A9AB171A1F171A1F999B9DFFFFFF5D62
        CE252CD6FFFFFFFFFFFFFFFFFF6C6E71EEEEEEFFFFFFFFFFFF00FEFEFE4F5155
        9495979495979495979495979495979495979495979495979495976367B4262C
        DA272DDA6064B6949597949597646669E4E4E5FFFFFFFFFFFF00FEFEFEB4B5B7
        B4B5B7B4B5B7B4B5B7B4B5B7B4B5B7B4B5B7B4B5B7B4B5B7B4B5B77B7EC5262C
        DA2329DA6165CAB4B5B7B4B5B7B4B5B7F2F2F3FFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF777C
        E8353BDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedOrthografischClick
    end
    object SpeedKavraiskii: TSpeedButton
      Left = 10
      Top = 76
      Width = 24
      Height = 24
      Glyph.Data = {
        76050000424D7605000000000000360000002800000015000000150000000100
        18000000000040050000232E0000232E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBCDCDCEC1C2C3D4D4D5FEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF696B6E4D4F536F71745052567476794A4C
        50C5C5C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFF9F9F94B4D51DFDFE0D9DADB898A8C3E4045A5A6A8FAFA
        FA828487C1C2C3DFDFE0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFF0F0F1585A5ED1D2D35C5E626E707395969956585CA3A4A64E50
        54C1C2C3494C50E7E7E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFF737578D5D5D6B8B9BA959698EAEAEA6163662E3035858789F6F6
        F7494C50FFFFFF585A5EF0F0F1FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFE5E5E66365688E9092BABBBCD1D2D3494C50BDBFC05D5F62C3C3C54F51
        55FFFFFF4B4D51CBCBCC7B7D80FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFF98999CB0B1B2595B5EDADBDC5F6165FFFFFF494B4F3134384E5054E9E9
        EA5F6165949698B3B4B6505256F9F9F9FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFF686A6DC2C2C46B6D706C6E71BABCBD707275D8D8DA696B6E9C9EA0A8AA
        AB686A6DB8B9BB76777A66686CE8E8E9FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFF4F52556366694D4F533032375C5E615A5C5F78797D3E414588898C2F32
        3654565A5E606336383D535559D1D1D3FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFF595B5F8B8C8F6465693E4044898B8E707175A9AAAC525458BFBFC13C3F
        436B6D708385884D4F52686B6ED2D3D3FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFF77797CC2C3C45A5D60898A8DBFC0C14A4C50B5B6B766686BB3B4B68B8D
        8F5E6064B4B4B683858867696CE7E7E8FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFC0C1C288898C65676BE2E3E3494C50FBFBFB6D6F722A2C318E9092E2E2
        E364666986888AC0C0C24C4E52FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFF54565AEDEEEE494C50C7C8C95F6165AAABAC54565A97999B8183
        86E1E1E267696CB0B1B298999CFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFA7A8AA97989AD9DADB9E9FA1E9E9EA7A7C7F3A3D41B1B2B3BCBD
        BF5F6165D8D8D94B4D51FCFCFCFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFEFEFEB1B2B4CBCCCDAAABAD494C50585B5E34373B5052568B8D
        8FF3F3F3636568B7B8B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF7D7F81686A6DC4C4C6C5C5C6585A5EECECECA4A5
        A755575BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFE08486884F515536393D56585CA4A5
        A7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedKavraiskiiClick
    end
    object SpeedPlotter: TSpeedButton
      Left = 40
      Top = 220
      Width = 24
      Height = 24
      Glyph.Data = {
        76050000424D7605000000000000360000002800000015000000150000000100
        18000000000040050000232E0000232E000000000000000000004D4F53494C50
        494C50494C50494C50494C50494C50494C50494C50494C50494C50494C50494C
        50494C50494C50494C50494C50494C50494C50494C504D4F5300494C50FCFCFC
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFC494C5000494C50F4F3F4
        747576747576D9D9D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF494C5000494C50F5F5F5
        2B2D2F212326707071A1A1A3A1A1A3A1A1A3A1A1A3A1A1A3A1A1A3A1A1A3A1A1
        A3A1A1A3A1A1A3A1A1A3A0A0A2BAB9BBFFFFFFFFFFFF494C5000494C50F7F7F6
        2B2D2F3637385B5B5C6E6E6F6E6E6F6E6E6F6E6E6F6E6E6F6E6E6F6E6E6F6E6E
        6F6E6E6F6E6E6F6E6E6F606062656669FFFFFFFFFFFF494C5000494C50F7F7F6
        2B2D2F363738898788B6B3B2B6B3B2B6B3B2B6B3B2B6B3B2B6B3B2B6B3B2B6B3
        B2B6B3B2B6B3B2B6B3B2969595656668FFFFFFFFFFFF494C5000494C50F7F7F6
        2B2D2F3838387A7979A09C9CA09C9CA09C9CA09C9CA09C9CA09C9CA09C9CA09C
        9CA09C9CA09C9CA09C9C8584845D5E5FFFFFFFFFFFFF494C5000494C50F7F7F6
        2B2D2F2F30323233353233353233353233353233353233353233353233353233
        35323335323335323335323335393A3CFFFFFFFFFFFF494C5000494C50F7F7F6
        2B2D2F2F30322A2B2E2A2B2E2A2B2E2A2B2E2A2B2E2A2B2E2A2B2E3233342829
        2C2F30322A2B2E2A2B2E2A2B2E393A3CFFFFFFFFFFFF494C5000494C50F7F7F6
        2B2D2F363738898788B6B3B2B6B3B2B6B3B2B6B3B2ADABAA3334364F4E4C4244
        484B4A48353638B1AEAD969595656668FFFFFFFFFFFF494C5000494C50F7F7F6
        2B2D2F363738898788B6B3B2B6B3B2B6B3B2B6B3B29A9897323234525457ACAD
        AF4F5154303133A19E9D969595656668FFFFFFFFFFFF494C5000494C50F7F7F6
        2B2D2F363738898788B6B3B2B6B3B2B6B3B2B6B3B2A3A0A02E2F316F6B65494C
        506F6B652E2F31A3A0A0969595656668FFFFFFFFFFFF494C5000494C50F7F7F6
        2B2D2F363738898788B6B3B2B6B3B2B6B3B2B6B3B2B6B3B24B4B4C54524F6D6B
        68504F4F3E3F41B6B3B2969595656668FFFFFFFFFFFF494C5000494C50F7F7F6
        2B2D2F363738898788B6B3B2B6B3B2B6B3B2B6B3B2B6B3B2B6B3B2585758393A
        3C6A6969B6B3B2B6B3B2969595656668FFFFFFFFFFFF494C5000494C50F7F7F6
        2B2D2F363738898788B6B3B2B6B3B2B6B3B2B6B3B2B6B3B2B6B3B2B6B3B2B6B3
        B2B6B3B2B6B3B2B6B3B2969595656668FFFFFFFFFFFF494C5000494C50F7F7F6
        2B2D2F363738898788B6B3B2B6B3B2B6B3B2B6B3B2B6B3B2B6B3B2B6B3B2B6B3
        B2B6B3B2B6B3B2B6B3B2969595656668FFFFFFFFFFFF494C5000494C50F7F7F6
        2B2D2F36373860606179797A79797A79797A79797A79797A79797A79797A7979
        7A79797A79797A79797A666668656668FFFFFFFFFFFF494C5000494C50F7F7F6
        2B2D2F36373879797B8F90928F90928F90928F90928F90928F90928F90928F90
        928F90928F90928F90928F9092AFAFB0FFFFFFFFFFFF494C5000494C50F5F5F5
        2A2C2E2B2C2FCBCBCAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF494C5000494C50FCFCFC
        F5F5F5F5F5F5FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB494C50004D4F53494C50
        494C50494C50494C50494C50494C50494C50494C50494C50494C50494C50494C
        50494C50494C50494C50494C50494C50494C50494C504E505400}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedPlotterClick
    end
    object SpeedPLT: TSpeedButton
      Left = 40
      Top = 4
      Width = 24
      Height = 24
      Glyph.Data = {
        76050000424D7605000000000000360000002800000015000000150000000100
        18000000000040050000232E0000232E000000000000000000004D4F53494C50
        494C50494C50494C50494C50494C50494C50494C50494C50494C50494C50494C
        50494C50494C50494C50494C50494C50494C50494C504D4F5300494C505D5E61
        5E5F625E5F625E5F625E5F625E5F625E5F625E5F625E5F625E5F625E5F625E5F
        625E5F625E5F625E5F625E5F625E5F625E5F625D5E61393B3F00494C50393B3F
        9B99999B99999B99999B99999B99999B99999B99999B99999B99999B99999B99
        999B99999B99999B99999B99999B99999B999964646634363A00494C50393B3F
        B6B3B2B6B3B2B6B3B2B6B3B2B6B3B2B6B3B2B6B3B2B6B3B2B6B3B2B6B3B2B6B3
        B2B6B3B2B6B3B2B6B3B2B6B3B2B6B3B2B6B3B271717234363A00494C50393B3F
        B6B3B2B6B3B2B6B3B2B6B3B2B6B3B2B6B3B2B6B3B2B6B3B2B6B3B2B6B3B2B6B3
        B2B6B3B2B6B3B2B6B3B2B6B3B2B6B3B2B6B3B271717234363A00494C50393B3F
        171A1FB6B3B2B6B3B2B6B3B2B6B3B2B6B3B2B6B3B2171A1F171A1F171A1F171A
        1F171A1FB6B3B2B6B3B2171A1FB6B3B2B6B3B271717234363A00494C50393B3F
        171A1FB6B3B2B6B3B2B6B3B2B6B3B2B6B3B2B6B3B2171A1FB6B3B2B6B3B2B6B3
        B2B6B3B2B6B3B2B6B3B2171A1FB6B3B2B6B3B271717234363A00494C50393B3F
        171A1FB6B3B2B6B3B2B6B3B2B6B3B2B6B3B2B6B3B2171A1FB6B3B2B6B3B2B6B3
        B2B6B3B2B6B3B2B6B3B2171A1FB6B3B2B6B3B271717234363A00494C50393B3F
        171A1FB6B3B2B6B3B2B6B3B2B6B3B2B6B3B2B6B3B2171A1FB6B3B2B6B3B2B6B3
        B2B6B3B2B6B3B2B6B3B2171A1FB6B3B2B6B3B271717234363A00494C50393B3F
        171A1FB6B3B2B6B3B2B6B3B2B6B3B2B6B3B2B6B3B2171A1FB6B3B2B6B3B2B6B3
        B2B6B3B2B6B3B2B6B3B2171A1FB6B3B2B6B3B271717234363A00494C50393B3F
        171A1F171A1F171A1F171A1F5C5C5FB6B3B2B6B3B2171A1FB6B3B2B6B3B2B6B3
        B2B6B3B2B6B3B2B6B3B2171A1FB6B3B2B6B3B271717234363A00494C50393B3F
        171A1FB6B3B2B6B3B2B6B3B25C5C5F5C5C5FB6B3B2171A1FB6B3B2B6B3B2B6B3
        B2B6B3B2B6B3B2B6B3B2171A1FB6B3B2B6B3B271717234363A00494C50393B3F
        171A1FB6B3B2B6B3B2B6B3B2B6B3B2171A1FB6B3B2171A1FB6B3B2B6B3B2B6B3
        B2B6B3B2B6B3B2B6B3B2171A1FB6B3B2B6B3B271717234363A00494C50393B3F
        171A1FB6B3B2B6B3B2B6B3B2B6B3B2171A1FB6B3B2171A1FB6B3B2B6B3B2B6B3
        B2B6B3B2B6B3B2B6B3B2171A1FB6B3B2B6B3B271717234363A00494C50393B3F
        171A1FB6B3B2B6B3B2ACAAA95C5C5F5C5C5FB6B3B2171A1FB6B3B2B6B3B2B6B3
        B2B6B3B2B6B3B2B6B3B2171A1FB6B3B2B6B3B271717234363A00494C50393B3F
        171A1F171A1F171A1F171A1F5C5C5FB6B3B2B6B3B2171A1FB6B3B2B6B3B2B6B3
        B2B6B3B2171A1F171A1F171A1F171A1F171A1F71717234363A00494C50393B3F
        B6B3B2B6B3B2B6B3B2B6B3B2B6B3B2B6B3B2B6B3B2B6B3B2B6B3B2B6B3B2B6B3
        B2B6B3B2B6B3B2B6B3B2B6B3B2B6B3B2B6B3B271717234363A00494C50393B3F
        B3B0AFB3B0AFB3B0AFB3B0AFB3B0AFB3B0AFB3B0AFB3B0AFB3B0AFB3B0AFB3B0
        AFB3B0AFB3B0AFB3B0AFB3B0AFB3B0AFB3B0AF6F6F7134363A00494C50404145
        4041454041454041454041454041454041454041454041454041454041454041
        4540414540414540414540414540414540414540414534373B00494C50FCFCFC
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB494C50004D4F53494C50
        494C50494C50494C50494C50494C50494C50494C50494C50494C50494C50494C
        50494C50494C50494C50494C50494C50494C50494C504E505400}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedPLTClick
    end
    object SpeedDXF: TSpeedButton
      Left = 40
      Top = 28
      Width = 24
      Height = 24
      Glyph.Data = {
        76050000424D7605000000000000360000002800000015000000150000000100
        18000000000040050000232E0000232E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        898A8C8484878484878484878484878484878484878484878484878484878484
        87848487848487848487848487848487E1E1E1FFFFFFFFFFFF00FFFFFFFFFFFF
        3D3E427E7D7E8180818180818180818180818180818180818180818180818180
        81818081818081818081818081494B4ED6D6D6FFFFFFFFFFFF00FFFFFFFFFFFF
        3D3E42B6B3B2B6B3B2B6B3B2B6B3B2B6B3B2B6B3B2B6B3B2B6B3B2B6B3B2B6B3
        B2B6B3B2B6B3B2B6B3B2B6B3B24E4F52D6D6D6FFFFFFFFFFFF00FFFFFFFFFFFF
        3D3E42B6B3B2B6B3B2B6B3B2B6B3B2B6B3B2B6B3B2B6B3B2B6B3B2B6B3B2B6B3
        B2B6B3B2B6B3B2B6B3B2B6B3B24E4F52D6D6D6FFFFFFFFFFFF00FFFFFFFFFFFF
        3D3E42B6B3B2171A1F171A1F3E4043B6B3B25C5C5FB6B3B2B6B3B25C5C5FB6B3
        B2171A1FB6B3B2B6B3B2B6B3B24E4F52D6D6D6FFFFFFFFFFFF00FFFFFFFFFFFF
        3D3E42B6B3B2171A1FB6B3B25C5C5F7070717A797BACAAA9ACAAA97A797BB6B3
        B2171A1FB6B3B2B6B3B2B6B3B24E4F52D6D6D6FFFFFFFFFFFF00FFFFFFFFFFFF
        3D3E42B6B3B2171A1FB6B3B2A2A0A048494CB6B3B2666668666668B6B3B2B6B3
        B2171A1FB6B3B2B6B3B2B6B3B24E4F52D6D6D6FFFFFFFFFFFF00FFFFFFFFFFFF
        3D3E42B6B3B2171A1FB6B3B2B6B3B2171A1FB6B3B2666668666668B6B3B2B6B3
        B2171A1FB6B3B2B6B3B2B6B3B24E4F52D6D6D6FFFFFFFFFFFF00FFFFFFFFFFFF
        3D3E42B6B3B2171A1FB6B3B2B6B3B2171A1FB6B3B2848384848384B6B3B2B6B3
        B2171A1F171A1F171A1FB6B3B24E4F52D6D6D6FFFFFFFFFFFF00FFFFFFFFFFFF
        3D3E42B6B3B2171A1FB6B3B2B6B3B2171A1FB6B3B2707071707071B6B3B2B6B3
        B2171A1FB6B3B2B6B3B2B6B3B24E4F52D6D6D6FFFFFFFFFFFF00FFFFFFFFFFFF
        3D3E42B6B3B2171A1FB6B3B2A2A0A048494CB6B3B2666668666668B6B3B2B6B3
        B2171A1FB6B3B2B6B3B2B6B3B24E4F52D6D6D6FFFFFFFFFFFF00FFFFFFFFFFFF
        3D3E42B6B3B2171A1FB6B3B26666687A797B848384A2A0A0A2A0A0848384B6B3
        B2171A1FB6B3B2B6B3B2B6B3B24E4F52D6D6D6FFFFFFFFFFFF00FFFFFFFFFFFF
        3D3E42B6B3B2171A1F171A1F48494CB6B3B25C5C5FB6B3B2B6B3B25C5C5FB6B3
        B2171A1F171A1F171A1FB6B3B24E4F52D6D6D6FFFFFFFFFFFF00FFFFFFFFFFFF
        3D3E42B6B3B2B6B3B2B6B3B2B6B3B2B6B3B2B6B3B2B6B3B2B6B3B2B6B3B2B6B3
        B2B6B3B2B6B3B2B6B3B2B6B3B24E4F52D6D6D6FFFFFFFFFFFF00FFFFFFFFFFFF
        3D3E42B6B3B2B6B3B2B6B3B2B6B3B2B6B3B2B6B3B2B6B3B2B6B3B2B6B3B2B6B3
        B2B6B3B2B6B3B2B6B3B2B6B3B24E4F52D6D6D6FFFFFFFFFFFF00FFFFFFFFFFFF
        3D3E428684858C8A8B8C8A8B8C8A8B8C8A8B8C8A8B8C8A8B8C8A8B8C8A8B8C8A
        8B8C8A8B8C8A8B8C8A8B8C8A8B4B4C4FD6D6D6FFFFFFFFFFFF00FFFFFFFFFFFF
        7E7E807474767474767474767474767474767474767474767474767474767474
        76747476747476747476747476747578DEDDDEFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedDXFClick
    end
    object SpeedPeripherie: TSpeedButton
      Left = 40
      Top = 244
      Width = 24
      Height = 24
      Glyph.Data = {
        76050000424D7605000000000000360000002800000015000000150000000100
        18000000000040050000232E0000232E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2E3FAA7AAF08387EA777CE8888CEBBDBF
        F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF6066E56A6FE6A5A8F0CACBF6D5D6F8C4C6F58F93
        EC4E54E2A8ABF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFE3E4FA6066E5ECEDFBFFFFFFFFFFFFD7D6D6ABABABC6C6C7FFFF
        FFFFFFFFA4A8F05F64E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFEFEFE4F55E2E9EAFBFFFFFFFFFFFFFFFFFF8E8F8F16191D5E5E60FFFF
        FFFFFFFFFFFFFF767BE8D7D8F8FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFF7E82E9CFD1F7FFFFFF171A1FFFFFFFFFFFFF8F909116181B5E5E60E2E3
        E3505256171A1FFFFFFF797EE9D3D5F7FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        E8E9FB6469E5FFFFFFFFFFFF171A1FFFFFFFFFFFFF8F909116181B48484B5F61
        64E2E3E3171A1FFFFFFFCACCF68286EAFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        BBBDF39296EDFFFFFFFFFFFF171A1FFFFFFFFFFFFF8F909116181C2D2F33FFFF
        FFFFFFFF171A1FFFFFFFF9F9FE5359E2FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        9094ECBCBFF4FFFFFFFFFFFF171A1FFFFFFFFFFFFF43464916191D5E5E60FFFF
        FFFFFFFF171A1FFFFFFFFFFFFF5C62E4F0F1FCFFFFFFFFFFFF00FFFFFFFFFFFF
        979BEEB5B8F3FFFFFFFFFFFF171A1FE2E3E35F6164696B6D16181B5E5E60FFFF
        FFFFFFFF171A1FFFFFFFFFFFFF5B61E4F1F2FCFFFFFFFFFFFF00FFFFFFFFFFFF
        AAADF1A3A6EFFFFFFFFFFFFF171A1F505256C5C7C772737416181B525355D7D8
        D8FFFFFF171A1FFFFFFFFFFFFF4E54E2FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        EBECFB6167E5FFFFFFFFFFFFFFFFFFFFFFFF3A3B3E16181B16171916181B3638
        3AFFFFFFFFFFFFFFFFFFCFD1F77E82E9FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFF8387EACACBF6FFFFFFFFFFFFFFFFFFCECECF16181B16151316181AC7C8
        C8FFFFFFFFFFFFFFFFFF6F75E7DDDEF9FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFF4E54E2DCDDF9FFFFFFFFFFFFFFFFFF3F41431616153A3B3EFFFF
        FFFFFFFFE0E1F9CACCF68286EAFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFE8E9FB777CE89EA2EFFFFFFFFFFFFFFFFFFF16181CFDFDFDFFFF
        FFDBDCF98488EACACBF6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFAEB1F14F55E29195EDBBBEF4C1C3F4ABAEF16C71
        E77176E7C9CBF6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEBBBEF49195ED8C90ECA2A5EFE0E1
        F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedPeripherieClick
    end
    object SpeedDiagramm: TSpeedButton
      Left = 40
      Top = 268
      Width = 24
      Height = 24
      Glyph.Data = {
        76050000424D7605000000000000360000002800000015000000150000000100
        18000000000040050000232E0000232E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCDF6767AE85055E1464CE0555AE29396
        ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF353CDD242ADA292FDB2D32DB2E32DB2C31DB272D
        DB2B32DB777CE8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFCDCEF6353CDD3034DB3236DC3236DC5458E17A7EE76365E33236
        DC3236DC292FDB343ADDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFDFDFD2B32DC4447DDD4D4F7C8C9F53236DC9496ECFFFFFFBFC0F33236
        DCD4D4F7D4D4F7363CDCB8BBF2FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFF4B51E12D32DB4246DEFFFFFFF3F4FC3236DC9395ECFFFFFFBFC0F3F2F3
        FCFFFFFFFFFFFF3F43DE252BDAB3B5F2FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        D5D7F7232ADA3236DC4144DEFFFFFFF2F2FC3236DC9395ECFFFFFFFFFFFFFFFF
        FFEEEEFCFFFFFF3F43DE2D32DB4F55E1FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        8F92EC272DDB3236DC4144DEFFFFFFF0F1FC3236DCAFB1F0FFFFFFFFFFFF4246
        DEF0F0FCFFFFFF3F43DE3135DB2D34DCFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        5C61E32B31DB3236DC4144DEFFFFFFEFEFFC8789EAFFFFFFFFFFFFBFC0F33236
        DCF2F2FCFFFFFF3F43DE3236DC2229DAE4E5F9FFFFFFFFFFFF00FFFFFFFFFFFF
        6469E52B30DB3236DC4144DEFFFFFFEDEDFBFFFFFFF2F2FCFFFFFFBFC0F33236
        DCF3F3FCFFFFFF3F43DE3236DC2229DAE5E6FAFFFFFFFFFFFF00FFFFFFFFFFFF
        7A7DE8292FDB3236DC4246DEFFFFFFFFFFFFDEDFF9ADAFF0FFFFFFC9CAF55356
        E1F4F4FDFFFFFF3F43DE3236DC2B32DBFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        DBDBF8232ADA3236DC3E42DE9E9FED9E9FEDDFE0F9FFFFFFFFFFFFFFFFFFE2E3
        FA9E9FED9E9FED3C40DC2D32DB4B51E1FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFF5055E12D32DB3236DC3236DC3236DC5C5EE2FFFFFFFFFFFFFFFFFF6165
        E33236DC3236DC3236DC242BDAC3C5F4FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFF2128DA2E33DB3236DC3236DC3236DCDADBF8FFFFFFDFE0F93236
        DC3236DC2F33DB2D32DB4F55E1FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFD5D7F7252BDA292EDB3236DC3236DC3236DCFFFFFF3236DC3236
        DC2E33DB262CDAA4A7EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF7F83E92128DA272DDB2B30DB2C31DB2A2FDB242A
        DA242BDAA3A6EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFD9194EC5D62E4585DE37074E6C7C9
        F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedDiagrammClick
    end
    object SpeedRahmen: TSpeedButton
      Left = 40
      Top = 292
      Width = 24
      Height = 24
      Glyph.Data = {
        76050000424D7605000000000000360000002800000015000000150000000100
        18000000000040050000232E0000232E00000000000000000000C8CAF69A9DEE
        9A9DEE9A9DEE9A9DEE9A9DEE9A9DEE9A9DEE9A9DEE9A9DEE9A9DEE9A9DEE9A9D
        EE9A9DEE9A9DEE9A9DEE9A9DEE9A9DEE9A9DEE9A9DEEC9CBF600989CEE868AEB
        B3B5F2B3B5F2B3B5F2B3B5F2B3B5F2B3B5F2B3B5F2B3B5F2B3B5F2B3B5F2B3B5
        F2B3B5F2B3B5F2B3B5F2B3B5F2B3B5F2B3B5F28589EB989CEE00989CEEB4B7F2
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB4B7F2989CEE00989CEEB4B7F2
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCDDDDC4C4C6B5B6B8C6C7C8F3F3
        F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB4B7F2989CEE00989CEEB4B7F2
        FFFFFFFFFFFFFFFFFFFFFFFFE1E1E25D5F636C6E718486889394968183865557
        5B6E6F73DADBDCFFFFFFFFFFFFFFFFFFFFFFFFB4B7F2989CEE00989CEEB4B7F2
        FFFFFFFFFFFFFFFFFFB6B7B967696CEBEBEBFFFFFFF0F0F0E7E7E8E9E9E9FFFF
        FFD9DADB6E6F73D2D3D4FFFFFFFFFFFFFFFFFFB4B7F2989CEE00989CEEB4B7F2
        FFFFFFFFFFFF6A6C6F9293967777796C6D6EF0F0F093939516191D636566FFFF
        FF6C6D6E727273494C50FFFFFFFFFFFFFFFFFFB4B7F2989CEE00989CEEB4B7F2
        FFFFFFBBBCBE8C8E90FFFFFF24262A16181CF0F0F095959616181B6365662729
        2C16191C242629E5E5E6636568FFFFFFFFFFFFB4B7F2989CEE00989CEEB4B7F2
        FFFFFF57595DF1F1F1FFFFFF24262A16181CF7F7F795959616171A1A1C201618
        1B212326232529FFFFFF9A9B9DAEAFB1FFFFFFB4B7F2989CEE00989CEEB4B7F2
        F6F6F7515457FFFFFFFFFFFF24262A16181CFDFDFD7C7C7D16181C16181CE5E6
        E616181C25272AFFFFFFC8C9CA808184FFFFFFB4B7F2989CEE00989CEEB4B7F2
        D7D7D8717376FFFFFFFFFFFF24262A16181CAEAEAE16181B16181C636566F9F9
        F916181C25272AFFFFFFE9E9EA5F6165FFFFFFB4B7F2989CEE00989CEEB4B7F2
        D9DADB6E7073FFFFFFFFFFFF21242720222616171B24262916181B636566F3F3
        F316181C25272AFFFFFFE7E7E8616366FFFFFFB4B7F2989CEE00989CEEB4B7F2
        FFFFFF494C50FFFFFFFFFFFF24262916191D32343663656616181B4B4C4EA0A0
        A116191D25272AFFFFFFCDCDCE7B7D80FFFFFFB4B7F2989CEE00989CEEB4B7F2
        FFFFFF616366E7E7E8FFFFFFA2A2A3A6A7A842434616181A16171916171A3C3D
        3FA6A7A8A4A4A5FFFFFF8C8E90BBBCBEFFFFFFB4B7F2989CEE00989CEEB4B7F2
        FFFFFFDDDDDE6B6D70FFFFFFFFFFFFFFFFFFF7F7F716181C16151316181CF1F1
        F2FFFFFFFFFFFFD3D4D575777AFFFFFFFFFFFFB4B7F2989CEE00989CEEB4B7F2
        FFFFFFFFFFFFAAABAD9E9FA1FFFFFFFFFFFFFFFFFF5F5F61161617555759FFFF
        FFFFFFFFDCDDDD696B6EFFFFFFFFFFFFFFFFFFB4B7F2989CEE00989CEEB4B7F2
        FFFFFFFFFFFFFFFFFF9293966D6E72BBBCBEFFFFFFFFFFFF16181CFDFDFDF0F0
        F18B8D8F696B6ED7D7D8FFFFFFFFFFFFFFFFFFB4B7F2989CEE00989CEEB4B7F2
        FFFFFFFFFFFFFFFFFFFFFFFFDBDCDC8C8E9053555964666A7476795D5F63585A
        5EBCBDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB4B7F2989CEE00989CEEB4B7F2
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5E3E4E4D4D4D5EAEAEAFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB4B7F2989CEE00989CEE8589EB
        B3B5F2B3B5F2B3B5F2B3B5F2B3B5F2B3B5F2B3B5F2B3B5F2B3B5F2B3B5F2B3B5
        F2B3B5F2B3B5F2B3B5F2B3B5F2B3B5F2B3B5F28589EB989CEE00C9CBF69A9DEE
        9A9DEE9A9DEE9A9DEE9A9DEE9A9DEE9A9DEE9A9DEE9A9DEE9A9DEE9A9DEE9A9D
        EE9A9DEE9A9DEE9A9DEE9A9DEE9A9DEE9A9DEE9A9DEEC9CBF600}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedRahmenClick
    end
    object SpeedKompressionFarbe: TSpeedButton
      Left = 10
      Top = 124
      Width = 24
      Height = 24
      Glyph.Data = {
        76050000424D7605000000000000360000002800000015000000150000000100
        18000000000040050000232E0000232E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFE3A833F4E0B8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFF7E7C8E4AD3DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00EEC980ECC679
        ECC679ECC679ECC679E09D18DD9300F1D69EFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFEECA83DD9300E09C16F2D7A1F2D7A1F2D7A1F2D7A1F0D19500DF9910DD9300
        DD9300DD9300DD9300DD9300DD9300DD9300F5E2BCFFFFFFFFFFFFFFFFFFE8B8
        58DD9300DD9300DD9300DD9300DD9300DD9300DD9300DE980C00DF9910DD9300
        DD9300DD9300DD9300DD9300DD9300DD9300E1A020FFFFFFFFFFFFFFFFFFEABD
        64DD9300DD9300DD9300DD9300DD9300DD9300DD9300DE980C00E9BB60E7B44F
        E7B44FE7B44FE7B44FE09D18DD9300E2A52AFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFEABE65DD9300DF990FE3A834E3A834E3A834E3A834E4AD3E00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFE3A62EE8B858FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFEDC77DDE980CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFBF2E1F9EED8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFF9EFDCF6E3BDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF92C77ECAE4C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFCAE4C3ADD59FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF499C1A6CB24EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF5DA93956A52FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0055A42C4EA022
        4EA0224EA0224EA0224A9D1B42A73861AC3FFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF4C9E1E43A8394E9F2158A63158A63158A63158A63169B04900499C1A44AE49
        44B04D44B04D44B04D44B04D44B15144AB4161AC3FFFFFFFFFFFFFFFFFFF4199
        1144B14F44B04E44AD4644AD4644AD4644AD4643AA3E4C9E1F00499C1A419A14
        419A14419A14419A14419A1444AE48419B19BBDCB1FFFFFFFFFFFFFFFFFFFFFF
        FF419A1444AE48419C1A419C1A419C1A419C1A419C1A4D9E1F00E7F3E4F3F8F1
        F3F8F1F3F8F1F3F8F152A228499C1ADEEED9FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFF3F8F141991155A42CD7EBD2D7EBD2D7EBD2D7EBD2CEE6C700FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFA1CF91DFEFDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFD7EBD28DC478FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFCED0F6E5E6FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFDDDFF9E9E9FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF2B32DC979BEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF7478E74D52E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF005A5FE35258E2
        5258E25258E25258E22F35DC262CDA8185E9FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF4A4FE0272DDA373DDD6C70E66C70E66C70E66B6FE57A7DE8002B32DB2C31DB
        2C31DB2C31DB2C31DB2C31DB3135DB282EDB7D80E9FFFFFFFFFFFFFFFFFF4046
        DF2D32DB3034DB2A30DB2A2FDB2A2FDB2A2FDB292FDB2F36DC002B32DB262CDA
        262CDA262CDA262CDA262CDA3034DB272DDB6E72E6FFFFFFFFFFFFFFFFFFC1C3
        F4262CDA3034DB282EDB282EDB282EDB282EDB272DDB2F36DC00A2A5EFABADF0
        ABADF0ABADF0ABADF0353CDD242ADA9195ECFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFAAACF0242BDA373DDD898CEA898CEA898CEA898CEA9194EC00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF565BE2CDCEF6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFC3C5F44D53E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedKompressionFarbeClick
    end
    object SpeedFarbeDehnung: TSpeedButton
      Left = 10
      Top = 148
      Width = 24
      Height = 24
      Glyph.Data = {
        76050000424D7605000000000000360000002800000015000000150000000100
        18000000000040050000232E0000232E00000000000000000000FFFFFFFFFFFF
        FFFFFF373EDED9DAF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFE4E5F92B32DBFFFFFFFFFFFFFFFFFF00FFFFFFDDDFF9
        2E35DC232ADA8F92ECBFC1F4BFC1F4BFC1F4BFC0F4D0D1F7FFFFFFBBBEF3878B
        EA878BEA878BEA878BEA7377E72229DA2B32DBE7E8FBFFFFFF007D80E9232ADA
        3135DB272DDB242BDA242BDA242BDA242BDA242ADA5E63E4FFFFFF7579E8252B
        DA282EDB282EDB282EDB282EDB2A2FDB3236DC2229DABFC0F4006E72E6252CDA
        3236DC2E33DB2D32DB2D32DB2D32DB2D32DB282EDB5D62E4FFFFFF7579E8252C
        DA2A2FDB2A2FDB2A2FDB2A2FDB2A30DB3236DC292FDB4248DF00FFFFFFAEB0F0
        232ADA242ADA454BDF484DE0484DE0484DE0484DE0898CEAFFFFFFAFB2F16F73
        E66F73E66F73E66F73E6696EE52229DA252BDA7579E8FFFFFF00FFFFFFFFFFFF
        D5D5F72128DAC8CAF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFF2F3FD2128DABBBEF3FFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFBFC0F4D1D3F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFF4F5FDEDEEFBFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFF82BF6BE0EFDCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFE6F2E25BA836FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        5FAA3B419B18C7E2BEF9FCF9F9FCF9F9FCF9F9FBF8F7FAF6FFFFFFDEEED9CEE6
        C7CEE6C7CEE6C7CEE6C7A7D299419B1756A52FFFFFFFFFFFFF00C4E1BB4A9D1B
        44AC43419E1F41991241991241991241991241991275B75AFFFFFF85C06F419C
        19419D1C419D1C419D1C419D1C42A12844AE484C9E1FF9FBF8005DA93943A634
        45B25244B04D44B04F44B14F44B14F44B14F43A63475B75AFFFFFF85C06F42A2
        2944AC4444AC4444AC4444AC4344AB4245B25244AB414B9D1C00FFFFFF81BE69
        42A22A419D1C4C9E1F4C9E1F4C9E1F4C9E1F4C9E1F82BF6BFFFFFFA1D0925DA9
        395DA9395DA9395DA9395DA939419A1442A42F61AC3FFFFFFF00FFFFFFFFFFFF
        9ECD8D419911D3E9CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFF3F8F14199118EC57AFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFF8DC478C0DFB6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFE0EFDCBBDCB1FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFBF4E7FDF9F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFF7E6C6F3DAA9FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        F3DAA9DD9300FDF9F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFF6E3BFDD9300F7E6C6FFFFFFFFFFFF00FFFFFFE8B95A
        DD9300DD9300E6B34DE7B552E7B552E7B552E7B552F1D6A0FFFFFFEBC371E2A4
        28E2A428E2A428E2A428E2A225DD9300DD9300F1D398FFFFFF00E1A122DD9300
        DD9300DD9300DD9300DD9300DD9300DD9300DD9300E9BA5EFFFFFFE5AF43DD93
        00DD9300DD9300DD9300DD9300DD9300DD9300DD9300E7B55100F4E0B8DD9300
        DD9300DD9300DD9300DD9300DD9300DD9300DD9300E9BA5EFFFFFFE5AF43DD93
        00DD9300DD9300DD9300DD9300DD9300DD9300DD9300EBC06C00FFFFFFFBF3E5
        DE980CDD9300E9BB5FECC578ECC578ECC578ECC578F4DEB3FFFFFFF7E8CAF5E1
        BAF5E1BAF5E1BAF5E1BAEDC87FDD9300DF990FF9F0DEFFFFFF00FFFFFFFFFFFF
        FFFFFFDE980CFBF3E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFF8ECD3E09F1CFFFFFFFFFFFFFFFFFF00}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedFarbeDehnungClick
    end
    object SpeedFarbeAchsen: TSpeedButton
      Left = 10
      Top = 172
      Width = 24
      Height = 24
      Glyph.Data = {
        76050000424D7605000000000000360000002800000015000000150000000100
        18000000000040050000232E0000232E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFBF4E7F4DDB0ECC475F4DCAE00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFAF0DCF2D8A3EABF68E4AC3BE7B44FEECB86F6E4C1FEFCF900FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFCF8EBD1F1D398E9BB5EE4AA
        37E8B859F0D193F8EACEFEFDFBFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFBF2E1EDC87FE8B653E4AB39EABE65F2D69EF9EED8FFFF
        FFFFFFFFFFFFFFF3F8F0CDE2BDBFDAAAFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFF8EBD0E5AD3EE4AA36F3DBAAFFFFFFFFFFFFEDF4E7C4DD
        B098C47672AE4374B0469BC579E0EDD6FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFBF2E1E8B755E4EDD7B0B85A839C186AA2277BB44FA4CB
        86CFE4C0F6F9F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        F3F8EFCFE3BFB2D39885B553649A1283B859ADD092D8E8CAECCF8FE4AB38F1D5
        9DF8F9FDC9CBF6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFF5CA12668A836C2D399E8B755FFFFFFFFFFFFF2F3FCC5C7F59094EC5C59
        C64D45B19A8BB3FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFF69A937E6F0DE8CAA668B7955727FD1595EE35A60E4878CEBBCBFF4ECED
        FBFFFFFFF2D69EE4AB38F0D192FEFDFBFFFFFFFFFFFFFFFFFF00FDFDFED9DAF8
        AFB2F13C5C955258E26164DC836F8F759A8875AC53D1E5C2FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFF2D8A4E4AC3BF6E4C0FFFFFFFFFFFF006167E44249DF
        9498ED598E57FAFAFEFBF2E1E8B755FFFFFFEDF5E897C37477B149CDE2BCFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6E2BCFFFFFFFFFFFF00656AE5B3B5F2
        5E64E44E8F33EAEBFBFBF2E1E8B755FFFFFFFFFFFFFFFFFFF1F7ED9BC67A73AF
        44C8DFB6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00656AE5E8E8FB
        FFFFFF5D9E356268E58983CDE0AF53FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F9
        F2A0C88071AE41E7F1DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00656AE5E8E8FB
        FFFFFF69A937FFFFFFD0C9DAB5854D797EE9E1E2FAFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFF7FAF597C374FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00656AE5E8E8FB
        FFFFFF69A937FFFFFFFFFFFFFEFEFDD3D5F76B70E67378E8DCDDF9FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00656AE5E8E8FB
        FFFFFF69A937FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9DBF87075E76F74E7D8D9
        F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00656AE5E8E8FB
        FFFFFF69A937FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEDFF9757A
        E8F5F5FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00656AE5E8E8FB
        FFFFFFD8E9CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00656AE5E8E8FB
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00656AE5E8E8FB
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00B3B5F2F4F4FD
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedFarbeAchsenClick
    end
    object SpeedFarbeEllipse: TSpeedButton
      Left = 10
      Top = 196
      Width = 24
      Height = 24
      Glyph.Data = {
        76050000424D7605000000000000360000002800000015000000150000000100
        18000000000040050000232E0000232E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEE
        FCCACCF6ADB0F1E8E8FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9FE9599ED555BE31D25
        DA1D25DA1D25DA1D25DA4E54E2C7C9F5FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB6B8F28186EA1D25DA1D25DA1D25DA1D25
        DA6167E57B80E94F55E21D25DA1D25DADDDEF9F7F8FDFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFEFEFE282FDB1D25DA1D25DA7E83EAE5E6FAFFFF
        FFFFFFFFFFFFFFFFFFFFEAEBFB1D25DA1D25DAE1E2F9FFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF1D25DA1D25DA5A60E3E8E8FBFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF4A50E11D25DACED0F7FFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFBEC0F41D25DA1D25DA9DA1EFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFABAEF11D25DAAAADF1FFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFF5258E21D25DAB9BBF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFBDBFF41D25DA9397EDFFFFFF00FFFFFFFFFFFF
        FFFFFF8B8FEC1D25DA898DEBEEEEFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF6066E51D25DAE8E8FBFFFFFF00FFFFFFFFFFFF
        CACBF61D25DA5158E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFEDEDFC1D25DA595EE3FFFFFFFFFFFF00FFFFFFFFFFFF
        8C90EC1D25DAA2A5EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF656AE51D25DA7A7FE9FFFFFFFFFFFF00FFFFFFFFFFFF
        545AE31D25DAF5F5FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFA7AAF01D25DA6F74E7FFFFFFFFFFFFFFFFFF00FFFFFFE1E2FA
        1D25DA6E73E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFB4B7F21D25DA1D25DAFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFBFBFE
        1D25DA575DE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F3
        FC888DEB1D25DA1D25DAAFB2F1FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        4A51E01D25DAF7F8FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC8CAF63F46
        DF1D25DA1D25DAF1F2FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        5359E21D25DAA3A6EFBEC0F4E8E9FBFCFCFED3D5F79C9FEE6066E51D25DA1D25
        DA262DDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFA4A7F01D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA555BE3BBBE
        F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFC9CBF66F74E74F55E21D25DA5B61E47C80E9989CEEFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3FDFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedFarbeEllipseClick
    end
    object SpeedFarbeFlinn: TSpeedButton
      Left = 10
      Top = 220
      Width = 24
      Height = 24
      Glyph.Data = {
        76050000424D7605000000000000360000002800000015000000150000000100
        18000000000040050000232E0000232E000000000000000000007A7C7F616366
        6466696466696466696466696466696466696466696466696466696466696466
        69646669646669646669646669646669646669646669B1B2B4005F616444464B
        E4E5E5E4E5E5E4E5E5E4E5E5E4E5E5E4E5E5E4E5E5E4E5E5E4E5E5E4E5E5E4E5
        E5E4E5E5E4E5E5E4E5E5E4E5E5E4E5E5E4E5E5E4E5E5F3F3F300646669D0D1D2
        5F6165FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00646669E4E5E5
        DFDFE0686A6DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00646669E4E5E5
        FFFFFFD5D5D6737578FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00646669E4E5E5
        FFFFFFFFFFFFC9CACB7F8083FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00646669E4E5E5
        FFFFFFFFFFFFFFFFFFBEBFC08A8B8EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00646669E4E5E5
        FFFFFFFFFFFFFFFFFFFFFFFFB1B2B496989AFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00646669E4E5E5
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA6A7A9A2A3A5FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00646669E4E5E5
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9A9B9DAEAFB1FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00646669E4E5E5
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8E9092BABBBCFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00646669E4E5E5
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFFFFF828487C5C5C7FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00646669E4E5E5
        FFFFFFFFFFFFFFFFFFFDFDFD7579E8353CDD2128DA2C33DC6165E477787BD1D2
        D3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00646669E4E5E5
        FFFFFFFFFFFFFFFFFFA3A6EF292FDB3034DB3236DC3135DB2B30DB585DE36D6E
        72DBDCDCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00646669E4E5E5
        FFFFFFFFFFFFB6B8F2252BDA3236DC3236DC3236DC3236DC3236DC2229DAB1B3
        F0626467E6E6E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00646669E4E5E5
        FFFFFFFFFFFF9B9EED272DDA3236DC3236DC3236DC3236DC3236DC272DDB9497
        EDFFFFFF595B5EEFEFF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00646669E4E5E5
        FFFFFFFFFFFFC4C5F4242BDA3236DC3236DC3236DC3236DC3236DC2229DAF5F6
        FDFFFFFFFFFFFF515357F7F7F8FFFFFFFFFFFFFFFFFFFFFFFF00646669E4E5E5
        FFFFFFFFFFFFFFFFFFFFFFFF2229DA2F33DB3034DB2F33DB2128DADCDDF9FFFF
        FFFFFFFFFFFFFFFFFFFF4B4D51FDFDFDFFFFFFFFFFFFFFFFFF00646669E4E5E5
        FFFFFFFFFFFFFFFFFFFFFFFF8E91EC3C42DE333ADD3E44DFD5D5F7E2E3F9FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF494C50FFFFFFFFFFFFFFFFFF00646669E4E5E5
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8B8D8FC4C4C6FFFFFF00B1B2B4F2F2F2
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedFarbeFlinnClick
    end
    object SpeedLiteratur: TSpeedButton
      Left = 40
      Top = 436
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
      Left = 40
      Top = 316
      Width = 25
      Height = 25
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
    object SpeedBGroesse: TSpeedButton
      Left = 10
      Top = 268
      Width = 24
      Height = 24
      Glyph.Data = {
        E6040000424DE604000000000000360000002800000014000000140000000100
        180000000000B0040000232E0000232E00000000000000000000B4B4B4B3B3B3
        B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3
        B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B4B4B4B3B3B3CFCCCCC0BEBEC5
        C2C2C5C3C3CFCCCCD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCD
        D0CDCDD0CDCDD0CDCDD0CDCDCFCCCCB3B3B3B3B3B3D0CDCD34363B47484C494A
        4EBEBCBCD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCD68
        696B3F414534363AACAAAAB3B3B3B3B3B3D0CDCD4C4D51535457B6B4B5D0CDCD
        D0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCD6262
        65484A4DBBB8B9B3B3B3B3B3B3D0CDCD8B8A8CC9C6C6545558BBB8B9D0CDCDD0
        CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCD626366ACAAAB757578
        C0BEBEB3B3B3B3B3B3D0CDCDD0CDCDD0CDCDD0CDCD4F5054C0BDBED0CDCDCBC9
        CDAAA9CFB1B0CFCDCACDD0CDCDD0CDCD626366ACAAABD0CDCDD0CDCDD0CDCDB3
        B3B3B3B3B3D0CDCDD0CDCDD0CDCDD0CDCDD0CDCD4B4C4F8788C5484DD6696DD4
        6266D4464CD69595D1636467ABAAABD0CDCDD0CDCDD0CDCDD0CDCDB3B3B3B3B3
        B3D0CDCDD0CDCDD0CDCDD0CDCDD0CDCD7C7ECE787BBFD0CDCD5659D63237D875
        76D3393EADBBB9B9D0CDCDD0CDCDD0CDCDD0CDCDD0CDCDB3B3B3B3B3B3D0CDCD
        D0CDCDD0CDCDD0CDCDB8B6CE4B51D62A30D9B6B4CEC3C1CD2A31D9D0CDCDCFCC
        CD444AD7D0CDCDD0CDCDD0CDCDD0CDCDD0CDCDB3B3B3B3B3B3D0CDCDD0CDCDD0
        CDCDD0CDCD7679D36D70D32229DA494DD72C32D96B6ED42A31D92027DA6165D5
        B2B1CFD0CDCDD0CDCDD0CDCDD0CDCDB3B3B3B3B3B3D0CDCDD0CDCDD0CDCDD0CD
        CD8082D29394D1D0CDCDCECBCD282ED92A31D98A8BD26568D55A5ED5B9B8CED0
        CDCDD0CDCDD0CDCDD0CDCDB3B3B3B3B3B3D0CDCDD0CDCDD0CDCDD0CDCDB1B0CF
        6266D4D0CDCD7678D3292FD9D0CDCDD0CDCDB9B8CE4449D7D0CDCDD0CDCDD0CD
        CDD0CDCDD0CDCDB3B3B3B3B3B3D0CDCDD0CDCDD0CDCDD0CDCDD0CDCDC8C5CD38
        3DA9282FD92A2FDAD0CDCDC0BECE4044A0A7A6CFD0CDCDD0CDCDD0CDCDD0CDCD
        D0CDCDB3B3B3B3B3B3D0CDCDD0CDCDD0CDCDD0CDCDD0CDCD81818E8889A74448
        D64B50D6484DD65358D6CBC8C83F4145CCC9C9D0CDCDD0CDCDD0CDCDD0CDCDB3
        B3B3B3B3B3D0CDCDCDCACA9F9E9FD0CDCD818183828284D0CDCDD0CDCDC8C5CD
        CBC9CDD0CDCDD0CDCDD0CDCD434448C6C3C4D0CDCDD0CDCDD0CDCDB3B3B3B3B3
        B3D0CDCDC8C6C646484B7776798D8C8ED0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0
        CDCDD0CDCDD0CDCDD0CDCD484A4DB5B2B367676AD0CDCDB3B3B3B3B3B3D0CDCD
        C8C6C63A3C406E6E70949294CECBCBD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CD
        CDD0CDCDD0CDCD9C9B9C36383C47484CD0CDCDB3B3B3B3B3B3D0CDCDC8C5C561
        61657B7B7D7B7B7DCDCACAD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCD
        D0CDCD9C9B9C878789838284D0CDCDB3B3B3B3B3B3CFCCCCD0CDCDD0CDCDD0CD
        CDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0
        CDCDD0CDCDD0CDCDCFCCCCB3B3B3B4B4B4B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3
        B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3
        B3B3B3B3B3B3B3B4B4B4}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedBGroesseClick
    end
    object SpeedBMP: TSpeedButton
      Left = 10
      Top = 364
      Width = 24
      Height = 24
      Glyph.Data = {
        E6040000424DE604000000000000360000002800000014000000140000000100
        180000000000B0040000232E0000232E00000000000000000000ACB0B156524C
        514E47514E47514E47514E47514E47514E47514E47514E47514E47514E47514E
        47514E47514E47514E47514E474F4D45878886CAD1D5D8DDE0C7C5C593918E93
        918E93918E93918E93918E93918E93918E93918E93918E93918E93918E93918E
        93918E93918E93918E79756F878886CAD1D5D8DDE0E4E7E9CAD1D5CAD1D5CAD1
        D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CA
        D1D5CAD1D57C7872878886CAD1D5D8DDE0E4E7E9CAD1D5CAD1D5CAD1D5CAD1D5
        CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1
        D57C7872878886CAD1D5D8DDE0E4E7E9CAD1D5CAD1D5979B9B71726F71726F92
        9392A9ACACA9ACACA9ACACA9ACAC92939271726FC2C9CCCAD1D5CAD1D57C7872
        878886CAD1D5D8DDE0E4E7E9CAD1D5A9AFB033332F16151316151356524CA39F
        9CA8A5A2A8A5A2A8A5A269665F1615136D6E6ACAD1D5CAD1D57C7872878886CA
        D1D5D8DDE0E4E7E9CAD1D591949416151316151316151356524CACA9A74D4A42
        96928FC3C0BF79756F16151332312DCAD1D5CAD1D57C7872878886CAD1D5D8DD
        E0E4E7E9CAD1D591949416151316151316151356524CA5A29F161513807C76C3
        C0BF79756F16151332312DCAD1D5CAD1D57C7872878886CAD1D5D8DDE0E4E7E9
        CAD1D591949416151316151316151356524CB6B2B1A6A3A0B8B4B3C3C0BF7975
        6F16151332312DCAD1D5CAD1D57C7872878886CAD1D5D8DDE0E6E7E8E7E8E9DB
        DBDBC0BFBFC0BFBFC0BFBFC1C0BFC2C1C0C2C1C0C2C1C0C2C1C0C1C0C0C0BFBF
        C6C5C4E7E8E9DFE1E27C7872878886CAD1D5D8DDE0E8E8EAE9E8E8DBD9D9DBD9
        D9DBD9D9DBD9D9DBD9D9DBD9D9DBD9D9DBD9D9DBD9D9DBD9D9DBD9D9DBD9D9E2
        E0E0EDEDEE7C7872878886CAD1D5D8DDE0E8E8EA3236DC3236DC3236DC3236DC
        9F9ED23236DC3236DC3236DC7778D66D6ED73236DC3236DC3236DC3236DC3236
        DC7C7872878886CAD1D5D8DDE0E8E8EAE4E2E23236DCD0CDCD9F9ED23236DCD0
        CDCD3236DCD0CDCD3236DC4F52DAD0CDCD3236DCD0CDCD3236DCEDEDEE7C7872
        878886CAD1D5D8DDE0E8E8EAE4E2E23236DCD0CDCD9594D33236DCD0CDCD3236
        DCA9A7D16D6ED77778D6A9A7D13236DCD0CDCD3236DC3236DC3236DC6C6EA1CA
        D1D5D8DDE0E8E8EAE4E2E23236DC3236DC3236DC9594D3D0CDCD3236DC7778D6
        9F9ED2A9A7D18181D53236DCD0CDCD3236DCEDEDEE6563933236DCCAD1D5D8DD
        E0E8E8EAE4E2E23236DCD0CDCD8B8BD43236DCD0CDCD3236DC3236DCD0CDCDD0
        CDCD4F52DA3236DCD0CDCD3236DCEDEDEE6563933236DCCAD1D5D8DDE0E8E8EA
        3236DC3236DC3236DC3236DCB0B1E53236DC3236DC7779E1EAE9E9EAE9E97779
        E13236DC3236DC3236DC3236DC3236DC6C6EA1CAD1D5D8DDE0E4E6E8D5D9DBCD
        CFD18786836766648084E28084E28084E28084E28084E28084E27372B8646361
        B6B7B7D5D9DCD4D8DB7C7872878886CAD1D5D8DDE0E4E7E9CAD1D5CAD1D5B9BE
        C1ABB0B5A9B0DAA9B0DAA9B0DAA9B0DAA9B0DAA9B0DAA9B0CAABB0B2C7CED2CA
        D1D5CAD1D57C7872878886CAD1D5D8DDE0E4E7E9CAD1D5CAD1D5CAD1D5CAD1D5
        CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1
        D57C7872878886CAD1D5}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedBMPClick
    end
    object SpeedGIF: TSpeedButton
      Left = 10
      Top = 388
      Width = 24
      Height = 24
      Glyph.Data = {
        E6040000424DE604000000000000360000002800000014000000140000000100
        180000000000B0040000232E0000232E00000000000000000000514E47514E47
        514E47514E47514E47514E47514E47514E47514E47514E47514E47514E47514E
        47514E47514E47514E47514E47514E47514E47514E4793918E93918E93918E93
        918E93918E93918E93918E93918E93918E93918E93918E93918E93918E93918E
        93918E93918E93918E93918E93918E93918ECAD1D5CAD1D5CAD1D5CAD1D5CAD1
        D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CA
        D1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5
        CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1
        D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5B8BEC071726F71726F71726F86
        8886A9ACACA9ACACA9ACACA9ACACA9ACACA9ACAC81828071726FB8BEC0CAD1D5
        CAD1D5CAD1D5CAD1D5CAD1D5BAC0C251514C1615131615131615133D3A339491
        8DA8A5A2A8A5A2A8A5A2A8A5A2A8A5A23B393216151351514CBAC0C2CAD1D5CA
        D1D5CAD1D5CAD1D5AEB3B51615131615131615131615133D3A33A09C998A8681
        4D4A42908C88C3C0BFC3C0BF434039161513161513AEB3B5CAD1D5CAD1D5CAD1
        D5CAD1D5AEB3B51615131615131615131615133D3A33A09C996D696316151375
        716BC3C0BFC3C0BF434039161513161513AEB3B5CAD1D5CAD1D5CAD1D5CAD1D5
        AEB3B51615131615131615131615133D3A33A09C99B5B1B0A6A3A0B6B3B2C3C0
        BFC3C0BF434039161513161513AEB3B5CAD1D5CAD1D5CAD1D5ACB1B44A4C5041
        4347414347414347414347414347414347414347414347414347414347414347
        4143474143474143474A4C50AFB4B8CAD1D5CAD1D5AFB3B776777AF9F9F9D0D1
        F46F74E61D25DA1D25DA6F74E6D0D1F4F9F9F9F9F9F91D25DAF9F9F91D25DAF9
        F9F9F9F9F9717376B2B7BBCAD1D5CAD1D5AFB4B876777AC7C9F61D25DAB8BBF4
        FFFFFFFFFFFFB8BBF4464DE1E3E4FBFFFFFF1D25DAFFFFFF1D25DAFFFFFFFFFF
        FF717376B2B7BBCAD1D5CAD1D5AFB4B876777A464DE1D5D6F9FFFFFFFFFFFFFF
        FFFFFFFFFFD5D6F97176E8FFFFFF1D25DAFFFFFF1D25DAFFFFFFFFFFFF717376
        B2B7BBCAD1D5CAD1D5AFB4B876777A1D25DAFFFFFFFFFFFF6368E61D25DA1D25
        DA1D25DA1D25DAFFFFFF1D25DAFFFFFF1D25DA1D25DA1D25DA1D25DAB2B7BBCA
        D1D5CAD1D5AFB4B876777A464DE1D5D6F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF1D25DAFFFFFF1D25DAFFFFFFFFFFFF717376B2B7BBCAD1D5CAD1
        D5AFB4B876777AD5D6F9464DE1AAADF2FFFFFFFFFFFFF1F2FD8E92ED7F84EBFF
        FFFF1D25DAFFFFFF1D25DAFFFFFFFFFFFF717376B2B7BBCAD1D5CAD1D5AFB4B8
        76777AFFFFFFE3E4FB7176E81D25DA1D25DA464DE19C9FEFFFFFFFFFFFFF1D25
        DAFFFFFF1D25DA1D25DA1D25DA1D25DAB2B7BBCAD1D5CAD1D5AFB3B756585C69
        6B6E696B6E696B6E696B6E696B6E696B6E696B6E696B6E696B6E696B6E696B6E
        696B6E696B6E696B6E55575BB2B7BBCAD1D5CAD1D5C2C9CDB7BDC0B2B7BAA0A4
        A69FA4AF9EA4C49EA4C49EA4C49EA4C49EA4C49EA4C49EA4C49EA4C49FA4AFA0
        A4A6B2B7BAB7BDC0C3CACDCAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5
        CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1
        D5CAD1D5CAD1D5CAD1D5}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedGIFClick
    end
    object SpeedTIF: TSpeedButton
      Left = 10
      Top = 412
      Width = 24
      Height = 24
      Glyph.Data = {
        E6040000424DE604000000000000360000002800000014000000140000000100
        180000000000B0040000232E0000232E00000000000000000000514E47514E47
        514E47514E47514E47514E47514E47514E47514E47514E47514E47514E47514E
        47514E47514E47514E47514E47514E47514E47514E4793918E93918E93918E93
        918E93918E93918E93918E93918E93918E93918E93918E93918E93918E93918E
        93918E93918E93918E93918E93918E93918ECAD1D5CAD1D5CAD1D5CAD1D5CAD1
        D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CA
        D1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5
        CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1
        D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5B8BEC071726F71726F71726F86
        8886A9ACACA9ACACA9ACACA9ACACA9ACACA9ACAC81828071726FB8BEC0CAD1D5
        CAD1D5CAD1D5CAD1D5CAD1D5BAC0C251514C1615131615131615133D3A339491
        8DA8A5A2A8A5A2A8A5A2A8A5A2A8A5A23B393216151351514CBAC0C2CAD1D5CA
        D1D5CAD1D5CAD1D5AEB3B51615131615131615131615133D3A33A09C998A8681
        4D4A42908C88C3C0BFC3C0BF434039161513161513AEB3B5CAD1D5CAD1D5CAD1
        D5CAD1D5AEB3B51615131615131615131615133D3A33A09C996D696316151375
        716BC3C0BFC3C0BF434039161513161513AEB3B5CAD1D5CAD1D5CAD1D5CAD1D5
        AEB3B51615131615131615131615133D3A33A09C99B5B1B0A6A3A0B6B3B2C3C0
        BFC3C0BF434039161513161513AEB3B5CAD1D5CAD1D5CAD1D5ACB1B44A4C5041
        4347414347414347414347414347414347414347414347414347414347414347
        4143474143474143474A4C50AFB4B8CAD1D5CAD1D5AFB3B776777AF9F9F9F9F9
        F91D25DAF9F9F9F9F9F9F9F9F91D25DAF9F9F9F9F9F91D25DAF9F9F9F9F9F9F9
        F9F9F9F9F9717376B2B7BBCAD1D5CAD1D5AFB4B876777AFFFFFFFFFFFF1D25DA
        FFFFFFFFFFFFFFFFFF1D25DAFFFFFFFFFFFF1D25DAFFFFFFFFFFFFFFFFFFFFFF
        FF717376B2B7BBCAD1D5CAD1D5AFB4B876777AFFFFFFFFFFFF1D25DAFFFFFFFF
        FFFFFFFFFF1D25DAFFFFFFFFFFFF1D25DAFFFFFFFFFFFFFFFFFFFFFFFF717376
        B2B7BBCAD1D5CAD1D5AFB4B876777AFFFFFFFFFFFF1D25DAFFFFFFFFFFFFFFFF
        FF1D25DAFFFFFFFFFFFF1D25DA1D25DA1D25DA1D25DA1D25DA717376B2B7BBCA
        D1D5CAD1D5AFB4B876777AFFFFFFFFFFFF1D25DAFFFFFFFFFFFFFFFFFF1D25DA
        FFFFFFFFFFFF1D25DAFFFFFFFFFFFFFFFFFFFFFFFF717376B2B7BBCAD1D5CAD1
        D5AFB4B876777AFFFFFFFFFFFF1D25DAFFFFFFFFFFFFFFFFFF1D25DAFFFFFFFF
        FFFF1D25DAFFFFFFFFFFFFFFFFFFFFFFFF717376B2B7BBCAD1D5CAD1D5AFB4B8
        76777A1D25DA1D25DA1D25DA1D25DA1D25DAFFFFFF1D25DAFFFFFFFFFFFF1D25
        DA1D25DA1D25DA1D25DA1D25DA717376B2B7BBCAD1D5CAD1D5AFB3B756585C69
        6B6E696B6E696B6E696B6E696B6E696B6E696B6E696B6E696B6E696B6E696B6E
        696B6E696B6E696B6E55575BB2B7BBCAD1D5CAD1D5C2C9CDB7BDC0B2B7BAA0A4
        A69FA4AF9EA4C49EA4C49EA4C49EA4C49EA4C49EA4C49EA4C49EA4C49FA4AFA0
        A4A6B2B7BAB7BDC0C3CACDCAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5
        CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1
        D5CAD1D5CAD1D5CAD1D5}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedTIFClick
    end
    object SpeedJPG: TSpeedButton
      Left = 10
      Top = 436
      Width = 24
      Height = 24
      Glyph.Data = {
        E6040000424DE604000000000000360000002800000014000000140000000100
        180000000000B0040000232E0000232E00000000000000000000514E47514E47
        514E47514E47514E47514E47514E47514E47514E47514E47514E47514E47514E
        47514E47514E47514E47514E47514E47514E47514E4793918E93918E93918E93
        918E93918E93918E93918E93918E93918E93918E93918E93918E93918E93918E
        93918E93918E93918E93918E93918E93918ECAD1D5CAD1D5CAD1D5CAD1D5CAD1
        D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CA
        D1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5
        CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1
        D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5B8BEC071726F71726F71726F86
        8886A9ACACA9ACACA9ACACA9ACACA9ACACA9ACAC81828071726FB8BEC0CAD1D5
        CAD1D5CAD1D5CAD1D5CAD1D5BAC0C251514C1615131615131615133D3A339491
        8DA8A5A2A8A5A2A8A5A2A8A5A2A8A5A23B393216151351514CBAC0C2CAD1D5CA
        D1D5CAD1D5CAD1D5AEB3B51615131615131615131615133D3A33A09C998A8681
        4D4A42908C88C3C0BFC3C0BF434039161513161513AEB3B5CAD1D5CAD1D5CAD1
        D5CAD1D5AEB3B51615131615131615131615133D3A33A09C996D696316151375
        716BC3C0BFC3C0BF434039161513161513AEB3B5CAD1D5CAD1D5CAD1D5CAD1D5
        AEB3B51615131615131615131615133D3A33A09C99B5B1B0A6A3A0B6B3B2C3C0
        BFC3C0BF434039161513161513AEB3B5CAD1D5CAD1D5CAD1D5ACB1B44A4C5041
        4347414347414347414347414347414347414347414347414347414347414347
        4143474143474143474A4C50AFB4B8CAD1D5CAD1D5AFB3B776777AF9F9F9F9F9
        F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
        F9F9F9F9F9717376B2B7BBCAD1D5CAD1D5AFB4B8494EAA1D25DAAAADF2FFFFFF
        FFFFFF1D25DAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8E92ED1D25DA1D25DA8E92
        ED717376B2B7BBCAD1D5CAD1D5AFB4B81D25DAF1F2FD1D25DAFFFFFFFFFFFF1D
        25DAFFFFFFFFFFFFFFFFFFFFFFFF8E92ED7F84EBFFFFFFFFFFFFAAADF2474CA8
        B2B7BBCAD1D5CAD1D5AFB4B876777AFFFFFF1D25DAFFFFFFFFFFFF1D25DAFFFF
        FFFFFFFFFFFFFFFFFFFF1D25DAFFFFFF9C9FEF1D25DA1D25DA1D25DAB2B7BBCA
        D1D5CAD1D5AFB4B876777AFFFFFF1D25DAFFFFFFFFFFFF1D25DA1D25DA1D25DA
        9C9FEFFFFFFF1D25DAFFFFFFFFFFFFFFFFFFFFFFFF717376B2B7BBCAD1D5CAD1
        D5AFB4B876777AFFFFFF1D25DAFFFFFFFFFFFF1D25DAFFFFFFF1F2FD1D25DAFF
        FFFF8E92ED7176E8F1F2FDFFFFFFFFFFFF717376B2B7BBCAD1D5CAD1D5AFB4B8
        76777AFFFFFF1D25DAFFFFFFFFFFFF1D25DA1D25DA1D25DA9C9FEFFFFFFFFFFF
        FF8E92ED1D25DA1D25DA464DE151559CB2B7BBCAD1D5CAD1D5AFB3B756585C69
        6B6E696B6E696B6E696B6E696B6E696B6E696B6E696B6E696B6E696B6E696B6E
        696B6E696B6E696B6E55575BB2B7BBCAD1D5CAD1D5C2C9CDB7BDC0B2B7BAA0A4
        A69FA4AF9EA4C49EA4C49EA4C49EA4C49EA4C49EA4C49EA4C49EA4C49FA4AFA0
        A4A6B2B7BAB7BDC0C3CACDCAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5
        CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1
        D5CAD1D5CAD1D5CAD1D5}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedJPGClick
    end
    object SpeedWMF: TSpeedButton
      Left = 10
      Top = 460
      Width = 24
      Height = 24
      Glyph.Data = {
        E6040000424DE604000000000000360000002800000014000000140000000100
        180000000000B0040000232E0000232E00000000000000000000514E47514E47
        514E47514E47514E47514E47514E47514E47514E47514E47514E47514E47514E
        47514E47514E47514E47514E47514E47514E47514E4793918E93918E93918E93
        918E93918E93918E93918E93918E93918E93918E93918E93918E93918E93918E
        93918E93918E93918E93918E93918E93918ECAD1D5CAD1D5CAD1D5CAD1D5CAD1
        D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CA
        D1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5
        CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1
        D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5B8BEC071726F71726F71726F86
        8886A9ACACA9ACACA9ACACA9ACACA9ACACA9ACAC81828071726FB8BEC0CAD1D5
        CAD1D5CAD1D5CAD1D5CAD1D5BAC0C251514C1615131615131615133D3A339491
        8DA8A5A2A8A5A2A8A5A2A8A5A2A8A5A23B393216151351514CBAC0C2CAD1D5CA
        D1D5CAD1D5CAD1D5AEB3B51615131615131615131615133D3A33A09C998A8681
        4D4A42908C88C3C0BFC3C0BF434039161513161513AEB3B5CAD1D5CAD1D5CAD1
        D5CAD1D5AEB3B51615131615131615131615133D3A33A09C996D696316151375
        716BC3C0BFC3C0BF434039161513161513AEB3B5CAD1D5CAD1D5CAD1D5CAD1D5
        AEB3B51615131615131615131615133D3A33A09C99B5B1B0A6A3A0B6B3B2C3C0
        BFC3C0BF434039161513161513AEB3B5CAD1D5CAD1D5CAD1D5ACB1B44A4C5041
        4347414347414347414347414347414347414347414347414347414347414347
        4143474143474143474A4C50AFB4B8CAD1D5CAD1D5AFB3B776777AF9F9F9F9F9
        F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
        F9F9F9F9F9717376B2B7BBCAD1D5CAD1D5AFB4B876777AF1F2FD1D25DAE3E4FB
        FFFFFF1D25DAF1F2FDFFFFFF1D25DAF1F2FD1D25DAF1F2FD1D25DAFFFFFF1D25
        DA717376B2B7BBCAD1D5CAD1D5AFB4B876777AC7C9F67F84EB8E92EDD5D6F955
        5BE4C7C9F6FFFFFF1D25DAC7C9F6B8BBF4C7C9F61D25DAFFFFFF1D25DA717376
        B2B7BBCAD1D5CAD1D5AFB4B876777AAAADF2FFFFFF555BE4D5D6F9C7C9F69C9F
        EFFFFFFF1D25DA9C9FEFFFFFFF9C9FEF1D25DAFFFFFF1D25DA1D25DA1D25DACA
        D1D5CAD1D5AFB4B876777AAAADF2FFFFFF7F84EB555BE4D5D6F9AAADF2FFFFFF
        1D25DAAAADF2FFFFFFAAADF21D25DAFFFFFF1D25DA717376B2B7BBCAD1D5CAD1
        D5AFB4B876777AC7C9F6FFFFFFE3E4FB1D25DAFFFFFFB8BBF4FFFFFF1D25DAC7
        C9F6FFFFFFC7C9F61D25DAFFFFFF1D25DA1D25DA1D25DACAD1D5CAD1D5AFB4B8
        76777AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF717376B2B7BBCAD1D5CAD1D5AFB3B756585C69
        6B6E696B6E696B6E696B6E696B6E696B6E696B6E696B6E696B6E696B6E696B6E
        696B6E696B6E696B6E55575BB2B7BBCAD1D5CAD1D5C2C9CDB7BDC0B2B7BAA0A4
        A69FA4AF9EA4C49EA4C49EA4C49EA4C49EA4C49EA4C49EA4C49EA4C49FA4AFA0
        A4A6B2B7BAB7BDC0C3CACDCAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5
        CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1
        D5CAD1D5CAD1D5CAD1D5}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedWMFClick
    end
    object SpeedEMF: TSpeedButton
      Left = 10
      Top = 484
      Width = 24
      Height = 24
      Glyph.Data = {
        E6040000424DE604000000000000360000002800000014000000140000000100
        180000000000B0040000232E0000232E00000000000000000000514E47514E47
        514E47514E47514E47514E47514E47514E47514E47514E47514E47514E47514E
        47514E47514E47514E47514E47514E47514E47514E4793918E93918E93918E93
        918E93918E93918E93918E93918E93918E93918E93918E93918E93918E93918E
        93918E93918E93918E93918E93918E93918ECAD1D5CAD1D5CAD1D5CAD1D5CAD1
        D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CA
        D1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5
        CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1
        D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5B8BEC071726F71726F71726F86
        8886A9ACACA9ACACA9ACACA9ACACA9ACACA9ACAC81828071726FB8BEC0CAD1D5
        CAD1D5CAD1D5CAD1D5CAD1D5BAC0C251514C1615131615131615133D3A339491
        8DA8A5A2A8A5A2A8A5A2A8A5A2A8A5A23B393216151351514CBAC0C2CAD1D5CA
        D1D5CAD1D5CAD1D5AEB3B51615131615131615131615133D3A33A09C998A8681
        4D4A42908C88C3C0BFC3C0BF434039161513161513AEB3B5CAD1D5CAD1D5CAD1
        D5CAD1D5AEB3B51615131615131615131615133D3A33A09C996D696316151375
        716BC3C0BFC3C0BF434039161513161513AEB3B5CAD1D5CAD1D5CAD1D5CAD1D5
        AEB3B51615131615131615131615133D3A33A09C99B5B1B0A6A3A0B6B3B2C3C0
        BFC3C0BF434039161513161513AEB3B5CAD1D5CAD1D5CAD1D5ACB1B44A4C5041
        4347414347414347414347414347414347414347414347414347414347414347
        4143474143474143474A4C50AFB4B8CAD1D5CAD1D5AFB3B776777AF9F9F9F9F9
        F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
        F9F9F9F9F9717376B2B7BBCAD1D5CAD1D5AFB4B876777A1D25DA1D25DA1D25DA
        FFFFFF1D25DAFFFFFFE3E4FB1D25DAE3E4FBFFFFFF1D25DAFFFFFF1D25DAFFFF
        FF717376B2B7BBCAD1D5CAD1D5AFB4B876777A1D25DAFFFFFFFFFFFFFFFFFF1D
        25DAFFFFFF8E92EDB8BBF48E92EDFFFFFF1D25DAFFFFFF1D25DAFFFFFF717376
        B2B7BBCAD1D5CAD1D5AFB4B876777A1D25DA1D25DA1D25DAFFFFFF1D25DAFFFF
        FF7176E8FFFFFF7176E8FFFFFF1D25DAFFFFFF1D25DA1D25DA1D25DAB2B7BBCA
        D1D5CAD1D5AFB4B876777A1D25DAFFFFFFFFFFFFFFFFFF1D25DAC7C9F6B8BBF4
        FFFFFFB8BBF4C7C9F61D25DAFFFFFF1D25DAFFFFFF717376B2B7BBCAD1D5CAD1
        D5AFB4B876777A1D25DAFFFFFFFFFFFFFFFFFF1D25DA8E92EDFFFFFFFFFFFFFF
        FFFF8E92ED1D25DAFFFFFF1D25DAFFFFFF717376B2B7BBCAD1D5CAD1D5AFB4B8
        76777A1D25DA1D25DA1D25DAFFFFFF1D25DA9C9FEFFFFFFFFFFFFFFFFFFF9C9F
        EF1D25DAFFFFFF1D25DA1D25DA1D25DAB2B7BBCAD1D5CAD1D5AFB3B756585C69
        6B6E696B6E696B6E696B6E696B6E696B6E696B6E696B6E696B6E696B6E696B6E
        696B6E696B6E696B6E55575BB2B7BBCAD1D5CAD1D5C2C9CDB7BDC0B2B7BAA0A4
        A69FA4AF9EA4C49EA4C49EA4C49EA4C49EA4C49EA4C49EA4C49EA4C49FA4AFA0
        A4A6B2B7BAB7BDC0C3CACDCAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5
        CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1
        D5CAD1D5CAD1D5CAD1D5}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedEMFClick
    end
    object SpeedButton1: TSpeedButton
      Left = 10
      Top = 316316
      Width = 24
      Height = 24
    end
    object SpeedTransparent: TSpeedButton
      Left = 10
      Top = 316
      Width = 24
      Height = 24
      Glyph.Data = {
        E6040000424DE604000000000000360000002800000014000000140000000100
        180000000000B0040000232E0000232E00000000000000000000D9D9D9D1D2D2
        D1D2D2D1D2D2C2C3C3D1D2D2D1D2D2D1D2D2D1D2D2D1D2D2BFC0C0D1D2D2D1D2
        D2D1D2D2D1D2D2B1B3B3B6B8B8D1D2D2D1D2D2DCDCDCD2D3D3F5F5F5FCFCFCFC
        FCFCE0E1E1686A6EFCFCFCFCFCFCFCFCFCFCFCFCE0E0E1696B6FFCFCFCFCFCFC
        FCFCFCFCFCFC686A6DDCDDDDF2F2F2D5D5D5C3C4C4F8F8F8FFFFFFFFFFFFFFFF
        FFCACBCC7E7F82FFFFFFFFFFFFFFFFFFFFFFFFCACBCC7E7F82FFFFFFFFFFFFFF
        FFFFFFFFFF515357F1F2F2D5D5D5CDCECE606265FFFFFFFFFFFFFFFFFFFFFFFF
        B0B1B2AD9D7FE9B95AE4A731E3A52BE7B148D0AA5E999895FFFFFFFFFFFFFFFF
        FFFAFAFA4C4F52D5D5D5D2D3D3D4D4D5737578FFFFFFFFFFFFF6E0B8E6B044E4
        A52BEAB755EEC06AEEC16DECBB5EE8B147DC9C1ED0A95FFFFFFFFFFFFFFFFFFF
        F2F2F3818284D2D3D3FBFBFBBBBBBD8D8F91FFFFFFE3A326ECBC5FF0C575F0C5
        75B8985E947C50F0C575F0C575F0C575E8B146D5B87FFFFFFFFFFFFFF9F9F9D5
        D5D5D2D3D3FBFBFBFFFFFF9FA1A3DAA130EDBE65F0C575171A1FF0C575AF925B
        86724BE3BB70171A1FF0C575EFC474E19D19E0E0E1FFFFFFF9F9F9D5D5D5D2D3
        D3FBFBFBFFFFFFEDC576E8B248F0C575F0C575171A1FF0C575AF925B86724BAC
        8F5A171A1FF0C575F0C575EEC06AD49720F4F4F4F9F9F9D5D5D5D2D3D3FBFBFB
        FFFFFFE1A020EFC474F0C575F0C575171A1FF0C575AF925B786745C7A565171A
        1FF0C575F0C575F0C575E2A01F59554DF9F9F9D5D5D5ADAEAFF2F3F3FCF7EEE1
        A01EF0C575F0C575F0C575171A1FF0C575AF925B554B37F0C575171A1FF0C575
        F0C575F0C575E3A326E7BC675E6064D5D5D5D2D3D38D8E91C0BBB2E2A01FF0C5
        75F0C575F0C575171A1FF0C575927B50716143F0C575171A1FF0C575F0C575F0
        C575E6AD3DF1D193EEEEEEB9BBBBD2D3D3FBFBFB848688DE9E1FEFC473F0C575
        F0C575171A1FF0C5756C5D4086724BF0C575171A1FF0C575F0C575F0C575E3A5
        2AF7E7C9F9F9F9D5D5D5D2D3D3FBFBFBFFFFFFD29B31ECBB5FF0C575F0C57517
        1A1FC7A5659C835386724BF0C575171A1FF0C575F0C575EFC26FE1A01EFFFFFF
        F9F9F9D5D5D5D2D3D3FBFBFBFFFFFFFFFFFFE19E1AEFC474F0C575171A1FAC8F
        5AAF925B86724BE1B96F171A1FF0C575EDBF68E6AC3AD0B37AFFFFFFF9F9F9D5
        D5D59D9EA0EBECECFFFFFFFFFFFFFFFFFFE19D19EFC26F171A1F87724BAF925B
        7463439C8354171A1FF0C575E5AA35F0CD8B707275D8D8D9F9F9F9D5D5D5D2D3
        D35A5C60ECEDEDFFFFFFFFFFFFF4DDB1DA991BE7AE41EDBF67AB8E58403B2FEF
        C26FE9B44FE19E1AF3D9A7FFFFFFFFFFFF5A5D60E8E9E9D5D5D5D2D3D3FBFBFB
        54565AF4F4F4FFFFFFFFFFFFFFFFFFAE8B49E1A633E0A020E1A020E3A429C094
        3ED9D8D6FFFFFFFFFFFFFFFFFFFFFFFF56585CD4D5D5D2D3D3FBFBFBFFFFFF4F
        5155F9F9F9FFFFFFFFFFFFFFFFFF64666AE3E4E4FFFFFFFFFFFFFFFFFF585A5E
        F0F0F1FFFFFFFFFFFFFFFFFFF0F1F1C1C2C3D2D3D3F2F2F2F9F9F9F9F9F9494B
        4FF8F8F8F9F9F9F9F9F9F9F9F967696DE5E5E6F9F9F9F9F9F9F9F9F953565AF9
        F9F9F9F9F9F9F9F9EFEFEFD5D5D5DCDDDDD4D5D5D4D5D5D4D5D5CCCDCDB4B6B7
        D4D5D5D4D5D5D4D5D5D4D5D5BFC0C0D4D4D4D4D5D5D4D5D5D0D1D1CDCDCED4D5
        D5D4D5D5D4D5D5DFDFDF}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedTransparentClick
    end
    object SpeedHFarbe: TSpeedButton
      Left = 10
      Top = 340
      Width = 24
      Height = 24
      Glyph.Data = {
        E6040000424DE604000000000000360000002800000014000000140000000100
        180000000000B0040000232E0000232E00000000000000000000B0A9CAB0AAC9
        B0AAC9B0AAC9B0AAC9B0AAC9B0AAC9B0AAC9B0AAC9B0AAC9B0AAC9B0AAC9B0AA
        C9B0AAC9B0AAC9B0AAC9B0AAC9B0AAC9B0AAC9B0A9CAB0AAC94E22DA4D21DB4D
        21DB4D21DB4D21DB4D21DB4D21DB4D21DB4D21DB4D21DB4D21DB4D21DB4D21DB
        4D21DB4D21DB4D21DB4D21DB4E22DAB0AAC9B0AAC94D21DB4D21DB4D21DB4D21
        DB4D21DB4D21DB4D21DB4D21DB4D21DB4D21DB4D21DB4D21DB4D21DB4D21DB4D
        21DB4D21DB4D21DB4D21DBB0AAC9B0AAC94D21DB4D21DB4D21DB4D21DB4D21DB
        4D21DB9C6780CF9034D59427D79522D4932BBF84505124D54D21DB4D21DB4D21
        DB4D21DB4D21DBB0AAC9B0AAC94D21DB4D21DB4D21DB4D21DB4D21DBD59329E7
        AD3EEDBE65EEC26EEFC371EEC16BEAB755D895207242B16F3FB54D21DB4D21DB
        4D21DBB0AAC9B0AAC94D21DB4D21DB4D21DB8B5895E19E1BEEC16DF0C575F0C5
        75BC9C608A744CF0C575F0C575F0C575E19D198251A04D21DB4D21DB4D21DBB0
        AAC9B0AAC94D21DB4D21DB4D21DBD2922FEEBF69171A1FF0C575F0C575B7985E
        7F6C48F0C575836F4A171A1FF0C575E4A72F7F4EA34D21DB4D21DBB0AAC9B0AA
        C94D21DB4D21DBB77D5CE9B44FF0C575171A1FF0C575F0C575B7985E7F6C48BA
        9A5F685A3F171A1FF0C575F0C575E19D194D21DB4D21DBB0AAC9B0AAC94D21DB
        4F23D6D89520F0C575F0C575171A1FF0C575F0C575B7985E7967454C4434F0C5
        75171A1FF0C575F0C575E4A62D7B4AA74D21DBB0AAC9B0AAC94D21DB6637BEE2
        A224F0C575F0C575171A1FF0C575F0C575B7985E37332BC7A565F0C575171A1F
        F0C575F0C575E8B147AB746D4D21DBB0AAC9B0AAC94D21DB683ABCE3A225F0C5
        75F0C575171A1FF0C575F0C575716042514836F0C575F0C575171A1FF0C575F0
        C575E9B44DB47B604D21DBB0AAC9B0AAC94D21DB4D21DBE19D19F0C575F0C575
        171A1FF0C575C7A5654841327F6C48F0C575F0C575171A1FF0C575F0C575E6AB
        39935F8B4D21DBB0AAC9B0AAC94D21DB4D21DBCF9035EDBE65F0C575171A1FF0
        C5754C4434AD905A7F6C48F0C575F0C575171A1FF0C575F0C575E2A2236436C0
        4D21DBB0AAC9B0AAC94D21DB4D21DB4D21D9E19E1AF0C575171A1F685A3FBA9A
        5FB7985E7F6C48E9BF72F0C575171A1FF0C575ECBB5EC88B414D21DB4D21DBB0
        AAC9B0AAC94D21DB4D21DB4D21DB4D21DBE19D19171A1F836F4A9D8454B7985E
        7A68468B754DF0C575171A1FE9B44EBA80574D21DB4D21DB4D21DBB0AAC9B0AA
        C94D21DB4D21DB4D21DB4D21DB9C6681E19E1BE9B44FEFC371B6975E322F29F0
        C575EDBD62E4A52BB67D5E4D21DB4D21DB4D21DB4D21DBB0AAC9B0AAC94D21DB
        4D21DB4D21DB4D21DB4D21DB5226D4B67D5DE19F1DE19F1EE2A01FE19D19E4A5
        2B7847AB4D21DB4D21DB4D21DB4D21DB4D21DBB0AAC9B0AAC94D21DB4D21DB4D
        21DB4D21DB4D21DB4D21DB4D21DB4D21DB582BCE5B2ECA4D21DB4D21DB4D21DB
        4D21DB4D21DB4D21DB4D21DB4D21DBB0AAC9B0AAC94E22DA4D21DB4D21DB4D21
        DB4D21DB4D21DB4D21DB4D21DB4D21DB4D21DB4D21DB4D21DB4D21DB4D21DB4D
        21DB4D21DB4D21DB4E23DAB0AAC9B0A9CAB0AAC9B0AAC9B0AAC9B0AAC9B0AAC9
        B0AAC9B0AAC9B0AAC9B0AAC9B0AAC9B0AAC9B0AAC9B0AAC9B0AAC9B0AAC9B0AA
        C9B0AAC9B0AAC9B0A8CA}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedHFarbeClick
    end
    object SpeedHolBMP: TSpeedButton
      Left = 40
      Top = 76
      Width = 24
      Height = 24
      Glyph.Data = {
        76050000424D7605000000000000360000002800000015000000150000000100
        18000000000040050000232E0000232E00000000000000000000514E47514E47
        514E47514E47514E47514E47514E47514E47514E47514E47514E47514E47514E
        47514E47514E47514E47514E47514E47514E47514E47514E470093918E93918E
        93918E93918E93918E93918E93918E93918E93918E93918E93918E93918E9391
        8E93918E93918E93918E93918E93918E93918E93918E93918E00AAB1D5636AD7
        636AD76C73D79DA4D5CAD1D5868DD6636AD7B9C0D5989FD5636AD7636AD7CAD1
        D58289D6636AD77D85D6636AD7B7BED5CAD1D5CAD1D5CAD1D500939BD51D25DA
        1D25DA1D25DA1D25DA7A82D74951D81D25DAB3BAD5BAC1D51D25DA3B42D8CAD1
        D54249D81D25DA454CD81D25DAAFB6D5CAD1D5CAD1D5CAD1D500959CD51D25DA
        555DD8B3BAD54E56D81D25DA3F47D81D25DAB3BAD52D35D9242CD91D25DA888F
        D64249D81D25DA454CD81D25DAAFB6D5CAD1D5CAD1D5CAD1D500959CD51D25DA
        3F46D8636BD7232BD91D25DA4951D81D25DA7A81D61D25DA686FD7232BD92E36
        D94249D81D25DA454CD81D25DA2B32D9353DD8646BD7CAD1D500959CD51D25DA
        1D25DA1D25DA1D25D94F57D84951D81D25DA2B33D9232BD9CAD1D5636BD71D25
        DA343CD81D25DA454CD81D25DA1D25D91D25DA1D25DA646BD700959CD51D25DA
        535BD8A4ABD51D25DA252CCB262CB11D25DA1D25DA2C319A44433E44433E1D25
        D32127C71D25DA2D33BE1D25DAAFB6D5B1B8D52830D92A31D900939BD51D25DA
        2F37D92A32D91D25DA1C20872040C61D25DA1D2AD853B2B24CB6B643B8B83359
        C91D25DA1D25DA1E41CC1D25DA363ED82B33D91D25DA252DD9008E95D5252DD9
        242BD9262ED925299CA9A6A32B37B01D2DD74D99D953DFE059DEDE60DBDB49DA
        DF2333D91F31DA3654D51D2AD81E26D32930D94249D8CAD1D500CAD1D5CAD1D5
        CAD1D5CAD1D537363222BDBDA4F1F3636C682A97975BCECE54D2D24BD4D465CB
        CA3BD9D976C5C52BDDDD87C0C01DC2C22B2A26CAD1D5CAD1D500CAD1D5CAD1D5
        CAD1D5CAD1D53736329FBDBC68EEF297F3F673817E2832302932302932302832
        302A32302327261B1A172E2C282E2C283E3E3BCAD1D5CAD1D500CAD1D5CAD1D5
        CAD1D5CAD1D53736322CBDBD9AF3F672EFF38EF2F67DF0F483F1F588F1F577EF
        F393F3F62AB1B140403BCAD1D5CAD1D5CAD1D5CAD1D5CAD1D500CAD1D5CAD1D5
        CAD1D5CAD1D537363280BDBD73EFF38EF2F67CF0F487F1F583F1F577DBDA66B0
        B03CB0B092908C6A6B68CAD1D5CAD1D5CAD1D5CAD1D5CAD1D500CAD1D5CAD1D5
        CAD1D5CAD1D571726F32878763DEDE7DF0F487F1F581F0F47DCCCB7E7C785A5A
        575A5A577C7E7BCAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D500CAD1D5CAD1D5
        CAD1D5CAD1D5CAD1D56B6A65336F6E5281813C818148818168655E838381CAD1
        D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D500CAD1D5CAD1D5
        CAD1D5CAD1D5CAD1D5B5B8BA8C8E8C7D7E7C7D7E7C7D7E7C959796BABEC0CAD1
        D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D500CAD1D5CAD1D5
        CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1
        D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D500CAD1D5CAD1D5
        CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1
        D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D500CAD1D5CAD1D5
        CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1
        D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D500CAD1D5CAD1D5
        CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1
        D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D500}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedHolBMPClick
    end
    object SpeedHolGIF: TSpeedButton
      Left = 40
      Top = 100
      Width = 24
      Height = 24
      Glyph.Data = {
        76050000424D7605000000000000360000002800000015000000150000000100
        18000000000040050000232E0000232E00000000000000000000514E47514E47
        514E47514E47514E47514E47514E47514E47514E47514E47514E47514E47514E
        47514E47514E47514E47514E47514E47514E47514E47514E470093918E93918E
        93918E93918E93918E93918E93918E93918E93918E93918E93918E93918E9391
        8E93918E93918E93918E93918E93918E93918E93918E93918E00CAD1D5CAD1D5
        CAD1D5CAD1D5BCC3D54850D82D35D92F37D9555DD8CAD1D5CAD1D5C0C7D5242C
        D95C64D76A72D74149D8ADB4D5CAD1D5CAD1D5CAD1D5CAD1D500CAD1D5CAD1D5
        CAD1D52E36D91D25DA1D25DA1D25DA1D25DA1D25DA1D25DACAD1D5BEC5D51D25
        DA3139D94249D81D25DAABB2D5CAD1D5CAD1D5CAD1D5CAD1D500CAD1D5CAD1D5
        A1A8D51D25DA252DD9BEC5D5ADB4D5AEB5D5AAB1D5262ED91D25DA9CA4D51D25
        DA3139D94249D81D25DAABB2D5CAD1D5CAD1D5CAD1D5CAD1D500CAD1D5CAD1D5
        353DD91D25DAB9C0D5636AD71D25DA1D25DA1D25DA1D25DA1D25DA2F36D91D25
        DA3139D94249D81D25DA2F37D92F37D9242CD9565ED8CAD1D500CAD1D5CAD1D5
        2B33D91D25DAC8CFD57F86D6737AD77279D77279D77279D77279D77A81D61D25
        DA3139D94249D81D25DA262ED9262ED92028D9565ED8CAD1D500CAD1D5CAD1D5
        5961D81D25DA454DD865666344433E44433E4241401F27CE1F27CE4241421D25
        DA2128C6252BB81D25DAABB2D5CAD1D5CAD1D5CAD1D5CAD1D500CAD1D5CAD1D5
        CAD1D58C94D51D25DA1C24D41E30D12433D41D25DA1D25DA46A7B841B2B81D25
        DA1F37D62D41CF1D25DA1F26D3242CD91F27D9565ED8CAD1D500CAD1D5CAD1D5
        CAD1D5CAD1D531324E3C42CC1F28D11D2CD62B48D93781DC59DEDE5CD1DA2442
        DA375ED82A72DD283BD71D38D42127C2252DD9565ED8CAD1D500CAD1D5CAD1D5
        CAD1D5CAD1D537363222BDBDA4F1F3636C682A97975BCECE54D2D24BD4D465CB
        CA3BD9D976C5C52BDDDD87C0C01DC2C22B2A26CAD1D5CAD1D500CAD1D5CAD1D5
        CAD1D5CAD1D53736329FBDBC68EEF297F3F673817E2832302932302932302832
        302A32302327261B1A172E2C282E2C283E3E3BCAD1D5CAD1D500CAD1D5CAD1D5
        CAD1D5CAD1D53736322CBDBD9AF3F672EFF38EF2F67DF0F483F1F588F1F577EF
        F393F3F62AB1B140403BCAD1D5CAD1D5CAD1D5CAD1D5CAD1D500CAD1D5CAD1D5
        CAD1D5CAD1D537363280BDBD73EFF38EF2F67CF0F487F1F583F1F577DBDA66B0
        B03CB0B092908C6A6B68CAD1D5CAD1D5CAD1D5CAD1D5CAD1D500CAD1D5CAD1D5
        CAD1D5CAD1D571726F32878763DEDE7DF0F487F1F581F0F47DCCCB7E7C785A5A
        575A5A577C7E7BCAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D500CAD1D5CAD1D5
        CAD1D5CAD1D5CAD1D56B6A65336F6E5281813C818148818168655E838381CAD1
        D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D500CAD1D5CAD1D5
        CAD1D5CAD1D5CAD1D5B5B8BA8C8E8C7D7E7C7D7E7C7D7E7C959796BABEC0CAD1
        D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D500CAD1D5CAD1D5
        CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1
        D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D500CAD1D5CAD1D5
        CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1
        D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D500CAD1D5CAD1D5
        CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1
        D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D500CAD1D5CAD1D5
        CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1
        D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D500}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedHolGIFClick
    end
    object SpeedHolTIF: TSpeedButton
      Left = 40
      Top = 124
      Width = 24
      Height = 24
      Glyph.Data = {
        76050000424D7605000000000000360000002800000015000000150000000100
        18000000000040050000232E0000232E00000000000000000000514E47514E47
        514E47514E47514E47514E47514E47514E47514E47514E47514E47514E47514E
        47514E47514E47514E47514E47514E47514E47514E47514E470093918E93918E
        93918E93918E93918E93918E93918E93918E93918E93918E93918E93918E9391
        8E93918E93918E93918E93918E93918E93918E93918E93918E00CAD1D5CAD1D5
        CAD1D5CAD1D56E76D74149D87077D7CAD1D5CAD1D56870D74149D8767DD7B5BC
        D54149D84149D8BCC3D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D500CAD1D5CAD1D5
        CAD1D5CAD1D5464ED81D25DA4850D8CAD1D5CAD1D54047D81D25DA5058D8B7BE
        D51D25DA1D25DABEC5D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D500CAD1D5CAD1D5
        CAD1D5CAD1D5474FD81D25DA4850D8CAD1D5CAD1D54148D81D25DA5058D8B8BF
        D51D25DA1D25DABEC5D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D500CAD1D5CAD1D5
        CAD1D5CAD1D5474FD81D25DA4850D8CAD1D5CAD1D54148D81D25DA5058D8B8BF
        D51D25DA1D25DA2F37D92F37D92F37D92F37D91E26D9C5CCD500CAD1D5CAD1D5
        CAD1D5CAD1D5474FD81D25DA4850D8CAD1D5CAD1D54148D81D25DA5058D8B8BF
        D51D25DA1D25DA262ED9262ED9262ED9262ED91D25D9C4CBD500CAD1D5CAD1D5
        CAD1D5CAD1D5474FD81D25DA262CB244433E44433E242AB91D25DA282DAA403F
        4C1D25DA1D25DA5F6169CAD1D5CAD1D5CAD1D5CAD1D5CAD1D500CAD1D5B1B8D5
        1D25D9242CD91E26D31D25DA1D29D61F2AD71D25D9263DD21D25DA2750CF52A0
        B41D25DA1D25DA1D2AD71F26D3242CD9242CD91D25D9C4CBD500CAD1D5B5BCD5
        1E26D9353DD92026C12F35D1222CC71D37D21D26D92F67DB2641DA3C7ADA44C7
        DF2A41D9203EDA293CD71D38D42127C2353DD91E26D9C5CCD500CAD1D5CAD1D5
        CAD1D5CAD1D537363222BDBDA4F1F3636C682A97975BCECE54D2D24BD4D465CB
        CA3BD9D976C5C52BDDDD87C0C01DC2C22B2A26CAD1D5CAD1D500CAD1D5CAD1D5
        CAD1D5CAD1D53736329FBDBC68EEF297F3F673817E2832302932302932302832
        302A32302327261B1A172E2C282E2C283E3E3BCAD1D5CAD1D500CAD1D5CAD1D5
        CAD1D5CAD1D53736322CBDBD9AF3F672EFF38EF2F67DF0F483F1F588F1F577EF
        F393F3F62AB1B140403BCAD1D5CAD1D5CAD1D5CAD1D5CAD1D500CAD1D5CAD1D5
        CAD1D5CAD1D537363280BDBD73EFF38EF2F67CF0F487F1F583F1F577DBDA66B0
        B03CB0B092908C6A6B68CAD1D5CAD1D5CAD1D5CAD1D5CAD1D500CAD1D5CAD1D5
        CAD1D5CAD1D571726F32878763DEDE7DF0F487F1F581F0F47DCCCB7E7C785A5A
        575A5A577C7E7BCAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D500CAD1D5CAD1D5
        CAD1D5CAD1D5CAD1D56B6A65336F6E5281813C818148818168655E838381CAD1
        D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D500CAD1D5CAD1D5
        CAD1D5CAD1D5CAD1D5B5B8BA8C8E8C7D7E7C7D7E7C7D7E7C959796BABEC0CAD1
        D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D500CAD1D5CAD1D5
        CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1
        D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D500CAD1D5CAD1D5
        CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1
        D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D500CAD1D5CAD1D5
        CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1
        D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D500CAD1D5CAD1D5
        CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1
        D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D500}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedHolTIFClick
    end
    object SpeedHolJPG: TSpeedButton
      Left = 40
      Top = 148
      Width = 24
      Height = 24
      Glyph.Data = {
        76050000424D7605000000000000360000002800000015000000150000000100
        18000000000040050000232E0000232E00000000000000000000514E47514E47
        514E47514E47514E47514E47514E47514E47514E47514E47514E47514E47514E
        47514E47514E47514E47514E47514E47514E47514E47514E470093918E93918E
        93918E93918E93918E93918E93918E93918E93918E93918E93918E93918E9391
        8E93918E93918E93918E93918E93918E93918E93918E93918E00CAD1D5959CD5
        424AD8353DD95961D8CAD1D57D85D74C54D8A6ADD5CAD1D5CAD1D5CAD1D5CAD1
        D5CAD1D57077D7434BD8353DD8535BD8969DD5CAD1D5CAD1D500C4CBD52A31D9
        1D25DA1D25DA1D25DA353DD9525AD81D25DA9CA3D5CAD1D5CAD1D5CAD1D5CAD1
        D5363ED81D25DA1D25DA252DD91D25DA1D25DA636BD7CAD1D500BCC3D51D25D9
        464DD8B3BAD52E36D91D25DA525AD81D25DA9CA3D5CAD1D5CAD1D5CAD1D54D55
        D81D25DA252DD9BCC3D5BCC3D5BCC3D53941D81D25DA646BD700CAD1D5CAD1D5
        CAD1D5CAD1D53840D81D25DA4F57D81D25DA2129D92830D94C54D8BEC5D51D25
        DA373FD9CAD1D52830D91D25DA1D25DA1D25DA1D25DA535BD800CAD1D5CAD1D5
        CAD1D5CAD1D53840D81D25DA4F57D81D25DA1F27D91D25DA1D25DA252DD91D25
        DA4249D8CAD1D5636BD7636AD7636AD7636AD7636AD7636BD700CAD1D5CAD1D5
        CAD1D5CAD1D53840D81D25DA282DAB1D25DA393A653E3F4F2128C21D25DA1F26
        CE1D25DA2A2F9C656663CAD1D5CAD1D55961D82E36D98E95D500CAD1D5CAD1D5
        CAD1D5CAD1D5252BC31D25DA1F42C31D25DA1E2ED71F2BD71D25DA2545D15AB0
        B01D2BD71D25DA1D32D3252BC1242CD91D25DA1D25DAA8AFD500CAD1D5CAD1D5
        CAD1D5CAD1D5242AA41E26D82E3BA61D31D52436D9233EDA3063DB60DBDB4BE0
        E170D8D82247DB2331D81D2AD81E26CB636BD7C8CFD5CAD1D500CAD1D5CAD1D5
        CAD1D5CAD1D537363222BDBDA4F1F3636C682A97975BCECE54D2D24BD4D465CB
        CA3BD9D976C5C52BDDDD87C0C01DC2C22B2A26CAD1D5CAD1D500CAD1D5CAD1D5
        CAD1D5CAD1D53736329FBDBC68EEF297F3F673817E2832302932302932302832
        302A32302327261B1A172E2C282E2C283E3E3BCAD1D5CAD1D500CAD1D5CAD1D5
        CAD1D5CAD1D53736322CBDBD9AF3F672EFF38EF2F67DF0F483F1F588F1F577EF
        F393F3F62AB1B140403BCAD1D5CAD1D5CAD1D5CAD1D5CAD1D500CAD1D5CAD1D5
        CAD1D5CAD1D537363280BDBD73EFF38EF2F67CF0F487F1F583F1F577DBDA66B0
        B03CB0B092908C6A6B68CAD1D5CAD1D5CAD1D5CAD1D5CAD1D500CAD1D5CAD1D5
        CAD1D5CAD1D571726F32878763DEDE7DF0F487F1F581F0F47DCCCB7E7C785A5A
        575A5A577C7E7BCAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D500CAD1D5CAD1D5
        CAD1D5CAD1D5CAD1D56B6A65336F6E5281813C818148818168655E838381CAD1
        D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D500CAD1D5CAD1D5
        CAD1D5CAD1D5CAD1D5B5B8BA8C8E8C7D7E7C7D7E7C7D7E7C959796BABEC0CAD1
        D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D500CAD1D5CAD1D5
        CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1
        D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D500CAD1D5CAD1D5
        CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1
        D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D500CAD1D5CAD1D5
        CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1
        D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D500CAD1D5CAD1D5
        CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1
        D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D500}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedHolJPGClick
    end
    object SpeedHolWMF: TSpeedButton
      Left = 40
      Top = 172
      Width = 24
      Height = 24
      Glyph.Data = {
        76050000424D7605000000000000360000002800000015000000150000000100
        18000000000040050000232E0000232E00000000000000000000514E47514E47
        514E47514E47514E47514E47514E47514E47514E47514E47514E47514E47514E
        47514E47514E47514E47514E47514E47514E47514E47514E470093918E93918E
        93918E93918E93918E93918E93918E93918E93918E93918E93918E93918E9391
        8E93918E93918E93918E93918E93918E93918E93918E93918E00CAD1D5CAD1D5
        CAD1D5747CD72830D9BAC1D5666ED7252DD9C5CCD52C34D92C34D9CAD1D52C34
        D92C34D99FA6D5353DD9424AD82C34D9CAD1D5CAD1D5CAD1D500CAD1D5CAD1D5
        CAD1D53B43D81D25DA8A92D63B43D81D25DA8D95D5474FD81D25D9A1A8D51D25
        DA1F27D99FA6D51D25DA373FD81D25DACAD1D5CAD1D5CAD1D500CAD1D5CAD1D5
        CAD1D52129D91D25DA545CD8242CD91F27D94B53D8474ED82129D94A52D82028
        D91D25DA686FD61D25DA3840D81D25DACAD1D5CAD1D5CAD1D500CAD1D5CAD1D5
        9DA4D51D25DA262ED92A32D91D25DA2931D9242CD9474ED82129D92129D9464E
        D8252DD92E36D91D25DA3840D81D25DA222AD91E26D96F76D700CAD1D5CAD1D5
        575FD81D25DA525AD81D25DA1D25DA636AD71D25DA3E46D81F27D91D25DA9DA4
        D55E66D71D25DA1D25DA3840D81D25DA3D44D8252DD96F76D700CAD1D5CAD1D5
        2830D92F37D98A92D61D25DA1D25D4403F4A1D25DA1F26C91D25D61E25D04443
        3E403F4B1D25DA1D25DA3840D81D25DAAFB6D5BCC3D5C0C7D500CAD1D5B8BFD5
        1D25DA636BD74D4E541D25DA1E35CE62AEAE1D29D81D25D91D25DA2C5FCC5AB0
        B035BDBD2433D31D25DA242BC31D25DA1D25DA1D25DA6F76D700CAD1D59098D5
        3840D9888FD63736324B4FC72C38B026AAAA3561D92647DA3062DB51B5DA4BE0
        E170D8D83098DF3B5DD41E61C9282DA5565ED8565ED8939BD500CAD1D5CAD1D5
        CAD1D5CAD1D537363222BDBDA4F1F3636C682A97975BCECE54D2D24BD4D465CB
        CA3BD9D976C5C52BDDDD87C0C01DC2C22B2A26CAD1D5CAD1D500CAD1D5CAD1D5
        CAD1D5CAD1D53736329FBDBC68EEF297F3F673817E2832302932302932302832
        302A32302327261B1A172E2C282E2C283E3E3BCAD1D5CAD1D500CAD1D5CAD1D5
        CAD1D5CAD1D53736322CBDBD9AF3F672EFF38EF2F67DF0F483F1F588F1F577EF
        F393F3F62AB1B140403BCAD1D5CAD1D5CAD1D5CAD1D5CAD1D500CAD1D5CAD1D5
        CAD1D5CAD1D537363280BDBD73EFF38EF2F67CF0F487F1F583F1F577DBDA66B0
        B03CB0B092908C6A6B68CAD1D5CAD1D5CAD1D5CAD1D5CAD1D500CAD1D5CAD1D5
        CAD1D5CAD1D571726F32878763DEDE7DF0F487F1F581F0F47DCCCB7E7C785A5A
        575A5A577C7E7BCAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D500CAD1D5CAD1D5
        CAD1D5CAD1D5CAD1D56B6A65336F6E5281813C818148818168655E838381CAD1
        D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D500CAD1D5CAD1D5
        CAD1D5CAD1D5CAD1D5B5B8BA8C8E8C7D7E7C7D7E7C7D7E7C959796BABEC0CAD1
        D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D500CAD1D5CAD1D5
        CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1
        D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D500CAD1D5CAD1D5
        CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1
        D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D500CAD1D5CAD1D5
        CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1
        D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D500CAD1D5CAD1D5
        CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1
        D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D500}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedHolWMFClick
    end
    object SpeedHolEMF: TSpeedButton
      Left = 40
      Top = 196
      Width = 24
      Height = 24
      Glyph.Data = {
        76050000424D7605000000000000360000002800000015000000150000000100
        18000000000040050000232E0000232E00000000000000000000514E47514E47
        514E47514E47514E47514E47514E47514E47514E47514E47514E47514E47514E
        47514E47514E47514E47514E47514E47514E47514E47514E470093918E93918E
        93918E93918E93918E93918E93918E93918E93918E93918E93918E93918E9391
        8E93918E93918E93918E93918E93918E93918E93918E93918E00CAD1D5CAD1D5
        6A72D7272FD9272FD92830D91D25D95960D72C34D9B5BCD5636BD72B33D9B1B8
        D57077D7343CD95159D72C34D9ADB4D5CAD1D5CAD1D5CAD1D500CAD1D5CAD1D5
        5B63D71D25DA2E36D92E36D91E26D94951D81D25DABDC4D52A32D91D25DA5961
        D87078D71D25DA464ED81D25DAB3BAD5CAD1D5CAD1D5CAD1D500CAD1D5CAD1D5
        5B63D71D25DAA9B0D5CAD1D5CAD1D55058D81D25DA8B92D51D25DA363ED9222A
        D97078D71D25DA464ED81D25DAB3BAD5CAD1D5CAD1D5CAD1D500CAD1D5CAD1D5
        5B63D71D25DA1D25D9222AD91D25D94850D81D25DA3840D82129D98E95D51D25
        DA4850D71D25DA464ED81D25DA222AD92129D92830D9CAD1D500CAD1D5CAD1D5
        5B63D71D25DA3B42D83D44D81F27D94A52D81D25DA1D25DA545CD8CAD1D5272F
        D9242CD91D25DA464ED81D25DA3C44D8363ED82830D9CAD1D500CAD1D5CAD1D5
        5B63D71D25DA8A92D65F606B403F49272CAA1D25DA1D25DA403F4A44433E2E32
        901D25DA1D25DA2D34BC1D25DA939AD5BCC3D5B4BBD5CAD1D500CAD1D5CAD1D5
        5B63D71D25DA1D25DA1D25DA1D25DA2F4ACC1D25DA253ED24CB6B643B8B85AB0
        B01D27D81D25DA1E42CC1D25DA1D25DA1D25DA2830D9CAD1D500CAD1D5CAD1D5
        8990D6565ED8252AA14B4FC72C38B0206CBE3561D93577DC59DEDE60DBDB4BE0
        E15BACD82764DC4977D21E54CD282DA5565ED86169D7CAD1D500CAD1D5CAD1D5
        CAD1D5CAD1D537363222BDBDA4F1F3636C682A97975BCECE54D2D24BD4D465CB
        CA3BD9D976C5C52BDDDD87C0C01DC2C22B2A26CAD1D5CAD1D500CAD1D5CAD1D5
        CAD1D5CAD1D53736329FBDBC68EEF297F3F673817E2832302932302932302832
        302A32302327261B1A172E2C282E2C283E3E3BCAD1D5CAD1D500CAD1D5CAD1D5
        CAD1D5CAD1D53736322CBDBD9AF3F672EFF38EF2F67DF0F483F1F588F1F577EF
        F393F3F62AB1B140403BCAD1D5CAD1D5CAD1D5CAD1D5CAD1D500CAD1D5CAD1D5
        CAD1D5CAD1D537363280BDBD73EFF38EF2F67CF0F487F1F583F1F577DBDA66B0
        B03CB0B092908C6A6B68CAD1D5CAD1D5CAD1D5CAD1D5CAD1D500CAD1D5CAD1D5
        CAD1D5CAD1D571726F32878763DEDE7DF0F487F1F581F0F47DCCCB7E7C785A5A
        575A5A577C7E7BCAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D500CAD1D5CAD1D5
        CAD1D5CAD1D5CAD1D56B6A65336F6E5281813C818148818168655E838381CAD1
        D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D500CAD1D5CAD1D5
        CAD1D5CAD1D5CAD1D5B5B8BA8C8E8C7D7E7C7D7E7C7D7E7C959796BABEC0CAD1
        D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D500CAD1D5CAD1D5
        CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1
        D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D500CAD1D5CAD1D5
        CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1
        D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D500CAD1D5CAD1D5
        CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1
        D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D500CAD1D5CAD1D5
        CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1
        D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D500}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedHolEMFClick
    end
  end
  object PanelGroesse: TPanel
    Left = 90
    Top = 10
    Width = 241
    Height = 121
    TabOrder = 13
    object LabelBHoehe: TLabel
      Left = 18
      Top = 62
      Width = 123
      Height = 21
      Caption = 'Bildh�he (Pixel):'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object LabelBBreite: TLabel
      Left = 13
      Top = 20
      Width = 128
      Height = 21
      Caption = 'Bildbreite (Pixel):'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object MaskEditBBreite: TMaskEdit
      Left = 181
      Top = 20
      Width = 50
      Height = 29
      Color = clAqua
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyPress = MaskEditBBreiteKeyPress
    end
    object MaskEditBHoehe: TMaskEdit
      Left = 181
      Top = 60
      Width = 50
      Height = 29
      Color = clAqua
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnKeyPress = MaskEditBHoeheKeyPress
    end
    object CheckBoxBild: TCheckBox
      Left = 180
      Top = 90
      Width = 51
      Height = 21
      Caption = 'ok'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = CheckBoxBildClick
    end
  end
  object MainMenu1: TMainMenu
    Left = 850
    Top = 90
    object Projektionen: TMenuItem
      Caption = '&Projektionen'
      object Lambert: TMenuItem
        Caption = '&Lambert'
        ShortCut = 16453
        OnClick = LambertClick
      end
      object stereografisch: TMenuItem
        Caption = '&stereografisch'
        ShortCut = 16471
        OnClick = stereografischClick
      end
      object orthografisch: TMenuItem
        Caption = '&orthografisch'
        ShortCut = 16463
        OnClick = orthografischClick
      end
      object Kavraiskii: TMenuItem
        Caption = '&Kavraiskii'
        ShortCut = 16459
        OnClick = KavraiskiiClick
      end
    end
    object Darstellung: TMenuItem
      Caption = '&Darstellung'
      object KompressionD: TMenuItem
        Caption = '&Kompression'
        object KreisOffenK: TMenuItem
          Caption = '&Kreis offen'
          OnClick = KreisOffenKClick
        end
        object KreisGefuelltK: TMenuItem
          Caption = 'Kreis &gef�llt'
          OnClick = KreisGefuelltKClick
        end
        object QuadratOffenK: TMenuItem
          Caption = '&Quadrat offen'
          OnClick = QuadratOffenKClick
        end
        object QuadratGefuelltK: TMenuItem
          Caption = 'Q&uadrat gef�llt'
          OnClick = QuadratGefuelltKClick
        end
        object DreieckOffenK: TMenuItem
          Caption = '&Dreieck offen'
          OnClick = DreieckOffenKClick
        end
        object DreieckGefuelltK: TMenuItem
          Caption = 'D&reieck gef�llt'
          OnClick = DreieckGefuelltKClick
        end
        object RauteOffenK: TMenuItem
          Caption = '&Raute offen'
          OnClick = RauteOffenKClick
        end
        object RauteGefuelltK: TMenuItem
          Caption = 'R&aute gef�llt'
          OnClick = RauteGefuelltKClick
        end
      end
      object DehnungD: TMenuItem
        Caption = '&Dehnung'
        object KreisoffenD: TMenuItem
          Caption = '&Kreis offen'
          OnClick = KreisoffenDClick
        end
        object KreisgefuelltD: TMenuItem
          Caption = 'Kreis &gef�llt'
          OnClick = KreisgefuelltDClick
        end
        object QuadratoffenD: TMenuItem
          Caption = '&Quadrat offen'
          OnClick = QuadratoffenDClick
        end
        object QuadratgefuelltD: TMenuItem
          Caption = 'Q&uadrat gef�llt'
          OnClick = QuadratgefuelltDClick
        end
        object DreieckoffenD: TMenuItem
          Caption = '&Dreieck offen'
          OnClick = DreieckoffenDClick
        end
        object DreieckgefuelltD: TMenuItem
          Caption = 'D&reieck gef�llt'
          OnClick = DreieckgefuelltDClick
        end
        object RauteoffenD: TMenuItem
          Caption = '&Raute offen'
          OnClick = RauteoffenDClick
        end
        object RautegefuelltD: TMenuItem
          Caption = 'R&aute gef�llt'
          OnClick = RautegefuelltDClick
        end
        object TMenuItem
        end
      end
      object PunktFlinn: TMenuItem
        Caption = '&Pun kt im Flinn-Diagramm'
        object KreisOffenF: TMenuItem
          Caption = '&Kreis offen'
          OnClick = KreisOffenFClick
        end
        object KreisGefuelltF: TMenuItem
          Caption = 'Kreis &gef�llt'
          OnClick = KreisGefuelltFClick
        end
        object QuadratOffenF: TMenuItem
          Caption = '&Quadrat offen'
          OnClick = QuadratOffenFClick
        end
        object QuadratGefuelltF: TMenuItem
          Caption = 'Q&uadrat gef�llt'
          OnClick = QuadratGefuelltFClick
        end
        object DreieckOffenF: TMenuItem
          Caption = '&Dreieck offen'
          OnClick = DreieckOffenFClick
        end
        object DreieckGefuelltF: TMenuItem
          Caption = 'D&reieck gef�llt'
          OnClick = DreieckGefuelltFClick
        end
        object RauteOffenF: TMenuItem
          Caption = '&Raute offen'
          OnClick = RauteOffenFClick
        end
        object RauteGefuelltF: TMenuItem
          Caption = 'Raute &gef�llt'
          OnClick = RauteGefuelltFClick
        end
      end
    end
    object PFarbe: TMenuItem
      Caption = '&Farbe'
      object KompressionF: TMenuItem
        Caption = 'Kompression'
        OnClick = KompressionFClick
      end
      object DehnungF: TMenuItem
        Caption = '&Dehnung'
        OnClick = DehnungFClick
      end
      object FarbeAchsen: TMenuItem
        Caption = '&Achsen'
        OnClick = FarbeAchsenClick
      end
      object FarbePolygon: TMenuItem
        Caption = 'Farbe der &Ellipse'
        OnClick = FarbePolygonClick
      end
      object PunktFlinnF: TMenuItem
        Caption = '&Punkt im Flinn-Diagramm'
        OnClick = PunktFlinnFClick
      end
    end
    object Grafik: TMenuItem
      Caption = '&Grafik'
      object BGroesse: TMenuItem
        Caption = 'Bildgr��e �ndern'
        OnClick = BGroesseClick
      end
      object kopieren: TMenuItem
        Caption = '&kopieren'
        ShortCut = 16451
        OnClick = kopierenClick
      end
      object Hintergrund: TMenuItem
        Caption = 'Hintergrund'
        object transparent: TMenuItem
          Caption = 'Transparent'
          OnClick = transparentClick
        end
        object HFarbe: TMenuItem
          Caption = 'HFarbe'
          OnClick = HFarbeClick
        end
      end
      object speichern: TMenuItem
        Caption = '&speichern'
        object speichernBMP: TMenuItem
          Caption = 'BMP'
          OnClick = speichernBMPClick
        end
        object speichernGIF: TMenuItem
          Caption = 'GIF'
          OnClick = speichernGIFClick
        end
        object speichernTIF: TMenuItem
          Caption = 'TIF'
          OnClick = speichernTIFClick
        end
        object speichernJPG: TMenuItem
          Caption = 'JPG'
          OnClick = speichernJPGClick
        end
        object speichernWMF: TMenuItem
          Caption = 'WMF'
          OnClick = speichernWMFClick
        end
        object speichernEMF: TMenuItem
          Caption = 'EMF'
          OnClick = speichernEMFClick
        end
        object speichernPLT: TMenuItem
          Caption = 'PLT'
          OnClick = speichernPLTClick
        end
        object speichernDXF: TMenuItem
          Caption = 'DXF'
          OnClick = speichernDXFClick
        end
      end
      object speichernUnter: TMenuItem
        Caption = '&speichern unter'
        object speichernUBMP: TMenuItem
          Caption = 'BMP'
          OnClick = speichernUBMPClick
        end
        object speichernUGIF: TMenuItem
          Caption = 'GIF'
          OnClick = speichernUGIFClick
        end
        object speichernUTIF: TMenuItem
          Caption = 'TIF'
          OnClick = speichernUTIFClick
        end
        object speichernUJPG: TMenuItem
          Caption = 'JPG'
          OnClick = speichernUJPGClick
        end
        object speichernUWMF: TMenuItem
          Caption = 'WMF'
          OnClick = speichernUWMFClick
        end
        object speichernUEMF: TMenuItem
          Caption = 'EMF'
          OnClick = speichernUEMFClick
        end
      end
      object Zwischenablage: TMenuItem
        Caption = 'aus &Zwischenablage holen'
        ShortCut = 16470
        OnClick = ZwischenablageClick
      end
      object ausDatei: TMenuItem
        Caption = 'aus einer &Datei holen'
        object holenBMP: TMenuItem
          Caption = 'BMP'
          OnClick = holenBMPClick
        end
        object holenGIF: TMenuItem
          Caption = 'GIF'
          OnClick = holenGIFClick
        end
        object holenTIF: TMenuItem
          Caption = 'TIF'
          OnClick = holenTIFClick
        end
        object holenJPG: TMenuItem
          Caption = 'JPG'
          OnClick = holenJPGClick
        end
        object holenWMF: TMenuItem
          Caption = 'WMF'
          OnClick = holenWMFClick
        end
        object holenEMF: TMenuItem
          Caption = 'EMF'
          OnClick = holenEMFClick
        end
      end
      object mitHPPlotter: TMenuItem
        Caption = 'mit dem HP-&Plotter zeichnen'
        ShortCut = 49232
        OnClick = mitHPPlotterClick
      end
      object FarbePeripherie: TMenuItem
        Caption = 'Farbe der &Peripherie'
        OnClick = FarbePeripherieClick
      end
      object FarbeDiagramm: TMenuItem
        Caption = 'Farbe des &Diagramms'
        OnClick = FarbeDiagrammClick
      end
      object FarbeRahmen: TMenuItem
        Caption = 'Farbe des &Rahmens'
        OnClick = FarbeRahmenClick
      end
      object Drucker1: TMenuItem
        Caption = '&Drucker'
        object einrichten: TMenuItem
          Caption = '&einrichten'
          OnClick = einrichtenClick
        end
        object drucken: TMenuItem
          Caption = '&drucken'
          ShortCut = 16464
          OnClick = druckenClick
        end
      end
    end
    object Hilfe: TMenuItem
      Caption = '&Hilfe'
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
    Left = 880
    Top = 56
  end
  object OpenDialog1: TOpenDialog
    Left = 920
    Top = 56
  end
  object PrintDialog1: TPrintDialog
    Left = 816
    Top = 56
  end
  object PrinterSetupDialog1: TPrinterSetupDialog
    Left = 848
    Top = 56
  end
  object ColorDialog1: TColorDialog
    Ctl3D = True
    Left = 816
    Top = 90
  end
  object SavePictureDialog1: TSavePictureDialog
    Left = 888
    Top = 90
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 918
    Top = 90
  end
end
