object Form59: TForm59
  Left = 1
  Top = 33
  AutoScroll = False
  Caption = 'Scherkasten'
  ClientHeight = 694
  ClientWidth = 1028
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  ShowHint = True
  OnActivate = FormActivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 70
    Top = 78
    Width = 935
    Height = 413
    Cursor = crCross
    AutoSize = True
    Center = True
    DragCursor = crArrow
    IncrementalDisplay = True
    ParentShowHint = False
    ShowHint = True
    Stretch = True
    OnMouseDown = Image1MouseDown
    OnMouseMove = Image1MouseMove
    OnMouseUp = Image1MouseUp
  end
  object Image2: TImage
    Left = 24
    Top = 96
    Width = 1
    Height = 0
  end
  object Paneldrucken: TPanel
    Left = 272
    Top = 88
    Width = 433
    Height = 401
    TabOrder = 7
    Visible = False
    object GroupBoxdrucken: TGroupBox
      Left = 16
      Top = 16
      Width = 401
      Height = 377
      Caption = 'Druck-Parameter:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object Panel11: TPanel
        Left = 24
        Top = 200
        Width = 353
        Height = 129
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
          Caption = 'Schriftgröße'
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
          TabOrder = 1
          OnClick = ListBoxSchriftClick
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
          TabOrder = 0
          OnKeyPress = MaskEditUnterschriftKeyPress
        end
      end
      object Panel7: TPanel
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
          TabOrder = 0
          Text = '100'
        end
      end
      object Panel8: TPanel
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
          Caption = 'Y-Koordinate [in % der Papierhöhe]:'
        end
        object MaskEditXdrucken: TMaskEdit
          Left = 304
          Top = 40
          Width = 33
          Height = 29
          Color = clAqua
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
        TabOrder = 2
        Text = '100'
      end
      object ButtonDrucken: TButton
        Left = 30
        Top = 340
        Width = 91
        Height = 31
        Caption = 'Drucken'
        TabOrder = 4
        OnClick = ButtonDruckenClick
      end
      object ButtonAbbrechen: TButton
        Left = 130
        Top = 340
        Width = 101
        Height = 31
        Caption = 'Abbrechen'
        TabOrder = 5
        OnClick = ButtonAbbrechenClick
      end
    end
  end
  object RadioButtonrechts: TRadioButton
    Left = 504
    Top = 408
    Width = 137
    Height = 17
    Caption = 'rechtsbündig'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    OnClick = RadioButtonrechtsClick
  end
  object RadioButtonzentriert: TRadioButton
    Left = 504
    Top = 392
    Width = 137
    Height = 17
    Caption = 'zentriert'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    OnClick = RadioButtonzentriertClick
  end
  object RadioButtonlinks: TRadioButton
    Left = 504
    Top = 376
    Width = 145
    Height = 17
    Caption = 'linksbündig'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    OnClick = RadioButtonlinksClick
  end
  object PanelPlaettung: TPanel
    Left = 724
    Top = 504
    Width = 289
    Height = 81
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
    object ButtonPlaettung: TButton
      Left = 12
      Top = 28
      Width = 97
      Height = 33
      Caption = 'Plättung'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = ButtonPlaettungClick
    end
    object PanelProzent: TPanel
      Left = 134
      Top = 6
      Width = 145
      Height = 65
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      object LabelProzent: TLabel
        Left = 16
        Top = 40
        Width = 61
        Height = 21
        Caption = 'Prozent:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object LabelAuf: TLabel
        Left = 16
        Top = 16
        Width = 23
        Height = 21
        Caption = 'auf'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object ListBoxProzent: TListBox
        Left = 86
        Top = 6
        Width = 49
        Height = 49
        Color = clAqua
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ItemHeight = 19
        ParentFont = False
        TabOrder = 0
        OnClick = ListBoxProzentClick
      end
    end
  end
  object PanelAffin: TPanel
    Left = 80
    Top = 504
    Width = 633
    Height = 81
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    object ButtonScherung: TButton
      Left = 14
      Top = 26
      Width = 97
      Height = 33
      Caption = '&Scherung'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = ButtonScherungClick
    end
    object ButtonAffin: TButton
      Left = 118
      Top = 28
      Width = 97
      Height = 33
      Caption = 'affin'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = ButtonAffinClick
    end
    object ButtonNichtaffin: TButton
      Left = 222
      Top = 26
      Width = 97
      Height = 33
      Caption = 'nicht affin'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = ButtonNichtaffinClick
    end
    object PanelWinkel: TPanel
      Left = 324
      Top = 8
      Width = 161
      Height = 65
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      object LabelScherwinkel: TLabel
        Left = 8
        Top = 24
        Width = 94
        Height = 21
        Caption = 'Scherwinkel:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object ListBoxScherwinkel: TListBox
        Left = 112
        Top = 8
        Width = 41
        Height = 49
        Color = clAqua
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ItemHeight = 19
        ParentFont = False
        TabOrder = 0
        OnClick = ListBoxScherwinkelClick
      end
    end
    object PanelFaktor: TPanel
      Left = 500
      Top = 10
      Width = 133
      Height = 71
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      object LabelFaktor: TLabel
        Left = 18
        Top = 22
        Width = 53
        Height = 21
        Caption = 'Faktor:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object ListBoxFaktor: TListBox
        Left = 80
        Top = 6
        Width = 41
        Height = 49
        Color = clAqua
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ItemHeight = 19
        ParentFont = False
        TabOrder = 0
        OnClick = ListBoxFaktorClick
      end
    end
  end
  object GroupBoxVorzeichnung: TGroupBox
    Left = 72
    Top = 8
    Width = 591
    Height = 65
    Caption = 'Vorzeichnung:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    object ButtonDatei: TButton
      Left = 400
      Top = 22
      Width = 81
      Height = 33
      Caption = '&Datei'
      TabOrder = 0
      OnClick = ButtonDateiClick
    end
    object ButtonLoeschen: TButton
      Left = 500
      Top = 22
      Width = 81
      Height = 33
      Caption = '&Löschen'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = ButtonLoeschenClick
    end
    object ButtonZwischen: TButton
      Left = 264
      Top = 22
      Width = 129
      Height = 33
      Caption = '&Zwischenablage'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = ButtonZwischenClick
    end
    object ButtonRechteck: TButton
      Left = 158
      Top = 22
      Width = 89
      Height = 33
      Caption = '&Rechteck'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = ButtonRechteckClick
    end
    object ButtonEllipse: TButton
      Left = 84
      Top = 22
      Width = 73
      Height = 33
      Caption = '&Ellipse'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = ButtonEllipseClick
    end
    object ButtonLinie: TButton
      Left = 8
      Top = 22
      Width = 73
      Height = 33
      Caption = '&Linie'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = ButtonLinieClick
    end
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 675
    Width = 1028
    Height = 19
    Panels = <>
    SimplePanel = False
  end
  object ButtonStart: TButton
    Left = 376
    Top = 600
    Width = 97
    Height = 41
    Caption = '&Start'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    OnClick = ButtonStartClick
  end
  object ButtonZurueck: TButton
    Left = 488
    Top = 600
    Width = 97
    Height = 41
    Caption = '&zurück'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnClick = ButtonZurueckClick
  end
  object ButtonBeenden: TButton
    Left = 600
    Top = 600
    Width = 97
    Height = 41
    Caption = '&beenden'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnClick = ButtonBeendenClick
  end
  object PanelScherung: TPanel
    Left = 668
    Top = 20
    Width = 353
    Height = 41
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    object LabelScher: TLabel
      Left = 16
      Top = 8
      Width = 94
      Height = 21
      Caption = 'Scherwinkel:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object LabelWinkel: TLabel
      Left = 120
      Top = 8
      Width = 18
      Height = 21
      Caption = '00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object LabelScherung: TLabel
      Left = 200
      Top = 8
      Width = 74
      Height = 21
      Caption = 'Scherung:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object LabelGrad: TLabel
      Left = 144
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
    object LabelTan: TLabel
      Left = 280
      Top = 8
      Width = 50
      Height = 21
      Caption = '10.000'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
  end
  object Fortschritt: TProgressBar
    Left = 72
    Top = 614
    Width = 273
    Height = 17
    Min = 0
    Max = 100
    TabOrder = 12
  end
  object Fortschritt2: TProgressBar
    Left = 720
    Top = 624
    Width = 265
    Height = 16
    Min = 0
    Max = 100
    TabOrder = 13
  end
  object PanelSpeed: TPanel
    Left = 18
    Top = 10
    Width = 41
    Height = 281
    TabOrder = 14
    object SpeedHilfe: TSpeedButton
      Left = 10
      Top = 196
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
      OnClick = SpeedHilfeClick
    end
    object SpeedHandbuch: TSpeedButton
      Left = 10
      Top = 220
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
      OnClick = SpeedHandbuchClick
    end
    object SpeedKopieren: TSpeedButton
      Left = 10
      Top = 76
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
      OnClick = SpeedKopierenClick
    end
    object SpeedDrucken: TSpeedButton
      Left = 10
      Top = 148
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
    end
    object SpeedLiteratur: TSpeedButton
      Left = 10
      Top = 248
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
      OnClick = SpeedLiteraturClick
    end
    object SpeedEinrichten: TSpeedButton
      Left = 10
      Top = 124
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
      OnClick = SpeedEinrichtenClick
    end
    object SpeedBGroesse: TSpeedButton
      Left = 10
      Top = 52
      Width = 24
      Height = 24
      Glyph.Data = {
        E6040000424DE604000000000000360000002800000014000000140000000100
        180000000000B0040000232E0000232E00000000000000000000B4B4B4A0A0A1
        A5A5A6A6A6A6B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3
        B3B3B3B3B3B3B3B3B3B3A7A7A8A6A6A6A5A5A6B4B4B4B3B3B33133374B4D504E
        4F53CDCACAD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCD
        D0CDCDD0CDCD5D5E614C4D50333539B2B2B2B3B3B34042464E4F53BFBCBDD0CD
        CDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0
        CDCDC5C2C24A4B4F404145B2B2B2B3B3B38B8A8CCFCCCC4B4D50C3C1C1D0CDCD
        D0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDC5C2C24A4B
        4FD0CDCD808082B3B3B3B3B3B3D0CDCDD0CDCDD0CDCD47484CC8C5C5D0CDCDD0
        CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDC5C3C3494A4ED0CDCDD0CDCD
        D0CDCDB3B3B3B3B3B3D0CDCDD0CDCDD0CDCDD0CDCD434549CBC8C8D0CDCDD0CD
        CDD0CDCDD0CDCDD0CDCDD0CDCDC6C3C4484A4DD0CDCDD0CDCDD0CDCDD0CDCDB3
        B3B3B3B3B3D0CDCD857870594F48594F48594E48554B44594F48594F48594F48
        594F48594F48594F48685C55D0CDCDD0CDCDD0CDCDD0CDCDD0CDCDB3B3B3B3B3
        B3D0CDCD968B84755B48B18563B18563B18563B18563B18563B18563B18563B1
        8563B185636D56459E948DD0CDCDD0CDCDD0CDCDD0CDCDB3B3B3B3B3B3D0CDCD
        D0CDCD4E453FBC8D68CC986FCC986FCC986FCC986FCC986FCC986FCC986FCC98
        6FC8956D423A37D0CDCDD0CDCDD0CDCDD0CDCDB3B3B3B3B3B3D0CDCDD0CDCDB1
        A8A35B493DCC986FCC986FCC986FCC986FCC986FCC986FCC986FCC986FCC986F
        876850847770D0CDCDD0CDCDD0CDCDB3B3B3B3B3B3D0CDCDD0CDCDD0CDCD6559
        52A57D5ECC986FCC986FCC986FCC986FCC986FCC986FCC986FCC986FCC986F44
        3933C9C5C4D0CDCDD0CDCDB3B3B3B3B3B3D0CDCDD0CDCDD0CDCDC7C2C0463A33
        CC986FCC986FCC986FCC986FCC986FCC986FCC986FCC986FCC986FA27A5C685C
        55D0CDCDD0CDCDB3B3B3B3B3B3D0CDCDD0CDCDD0CDCDD0CDCD80746C8A6A52CC
        986FCC986FCC986FCC986FCC986FCC986FCC986FCC986FCC986F58473CB4ACA7
        D0CDCDB3B3B3B3B3B3D0CDCDD0CDCDD0CDCDD0CDCDD0CDCD463E3A4E40374E40
        374E40374E40374E40374E40374E40374E40374E40374E40373E3734D0CDCDB3
        B3B3B3B3B3D0CDCDD0CDCDD0CDCDD0CDCD8382849D9896BEB8B5BEB8B5BEB8B5
        BEB8B5BEB8B5BEB8B5BBB5B24B4848BEB8B5BEB8B5BEB8B5D0CDCDB3B3B3B3B3
        B3C7C4C4C9C6C6D0CDCD77777A8C8B8DD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0
        CDCDD0CDCDD0CDCDCAC7C7404246CFCCCCD0CDCDD0CDCDB3B3B3B3B3B37F7F81
        8F8E906C6D6F979697D0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CD
        CDD0CDCDD0CDCDCECBCB404145CAC8C8A19FA0B1B1B1B3B3B37F7E8066676993
        9294C5C2C2D0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCD
        D0CDCDD0CDCDCFCCCC43454846484BACADADB3B3B38F8E90393A3E5152568787
        89D0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0
        CDCD8C8B8D4143472B2D32A8A8A9B4B4B4B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3
        B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3
        B3B3B3B3B3B3B3B4B4B4}
      OnClick = SpeedBGroesseClick
    end
    object SpeedSpeichern: TSpeedButton
      Left = 10
      Top = 100
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
      OnClick = SpeedSpeichernClick
    end
    object SpeedFont: TSpeedButton
      Left = 10
      Top = 4
      Width = 24
      Height = 24
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333FFF33FFFFF33333300033000
        00333337773377777333333330333300033333337FF33777F333333330733300
        0333333377FFF777F33333333700000073333333777777773333333333033000
        3333333337FF777F333333333307300033333333377F777F3333333333703007
        33333333377F7773333333333330000333333333337777F33333333333300003
        33333333337777F3333333333337007333333333337777333333333333330033
        3333333333377333333333333333033333333333333733333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
      OnClick = SpeedFontClick
    end
  end
  object PanelGroesse: TPanel
    Left = 84
    Top = 90
    Width = 241
    Height = 121
    TabOrder = 15
    object LabelBHoehe: TLabel
      Left = 18
      Top = 62
      Width = 123
      Height = 21
      Caption = 'Bildhöhe (Pixel):'
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
  object ListBoxBild: TListBox
    Left = 456
    Top = 80
    Width = 89
    Height = 73
    Color = clAqua
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ItemHeight = 21
    ParentFont = False
    TabOrder = 16
    OnClick = ListBoxBildClick
  end
  object ListBoxSpeichern: TListBox
    Left = 300
    Top = 60
    Width = 300
    Height = 60
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ItemHeight = 19
    ParentFont = False
    TabOrder = 17
    OnClick = ListBoxSpeichernClick
  end
  object MainMenu1: TMainMenu
    Left = 870
    Top = 100
    object Font: TMenuItem
      Caption = 'Font'
      OnClick = FontClick
    end
    object Grafik: TMenuItem
      Caption = '&Grafik'
      object BGroesse: TMenuItem
        Caption = 'Bildgröße ändern'
        OnClick = BGroesseClick
      end
      object kopieren1: TMenuItem
        Caption = '&kopieren'
        ShortCut = 16451
        OnClick = kopieren1Click
      end
      object Speichern1: TMenuItem
        Caption = '&speichern'
        OnClick = Speichern1Click
      end
      object FarbeRahmen: TMenuItem
        Caption = 'Farbe des &Rahmens'
        OnClick = FarbeRahmenClick
      end
      object FarbeVorzeichnung: TMenuItem
        Caption = 'Farbe der &Vorzeichnung'
        OnClick = FarbeVorzeichnungClick
      end
      object FarbeScherung: TMenuItem
        Caption = 'Farbe nach &Scherung'
        OnClick = FarbeScherungClick
      end
      object Drucker1: TMenuItem
        Caption = '&Drucker'
        object Druckereinrichten: TMenuItem
          Caption = 'Drucker &einrichten'
          OnClick = DruckereinrichtenClick
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
  object PrinterSetupDialog1: TPrinterSetupDialog
    Left = 910
    Top = 100
  end
  object PrintDialog1: TPrintDialog
    Left = 950
    Top = 100
  end
  object SaveDialog1: TSaveDialog
    Left = 870
    Top = 140
  end
  object OpenDialog1: TOpenDialog
    Left = 910
    Top = 140
  end
  object ColorDialog1: TColorDialog
    Ctl3D = True
    Left = 950
    Top = 140
  end
  object SavePictureDialog1: TSavePictureDialog
    Left = 870
    Top = 180
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MinFontSize = 0
    MaxFontSize = 0
    Left = 910
    Top = 180
  end
end
