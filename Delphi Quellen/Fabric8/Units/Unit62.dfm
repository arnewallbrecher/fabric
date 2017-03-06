object Form62: TForm62
  Left = 140
  Top = 80
  Width = 800
  Height = 620
  Caption = 'Talbot-Methode, Dateneingabe von Diskette'
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
    Left = 270
    Top = -10
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
  object StatusBar1: TStatusBar
    Left = 0
    Top = 555
    Width = 792
    Height = 19
    Panels = <>
    ParentShowHint = False
    ShowHint = True
    SimplePanel = False
  end
  object PanelKompression: TPanel
    Left = 64
    Top = 48
    Width = 105
    Height = 41
    TabOrder = 1
    object LabelKompression: TLabel
      Left = 8
      Top = 8
      Width = 92
      Height = 19
      Caption = 'Kompression'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
  end
  object PanelAusgewaehlt: TPanel
    Left = 312
    Top = 48
    Width = 201
    Height = 41
    TabOrder = 2
    object LabelAusgewaehlt: TLabel
      Left = 24
      Top = 8
      Width = 153
      Height = 21
      Caption = 'ausgewählte Dateien:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
  end
  object PanelAusgDateien: TPanel
    Left = 552
    Top = 48
    Width = 201
    Height = 41
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object LabelAusgDateien: TLabel
      Left = 16
      Top = 8
      Width = 140
      Height = 21
      Caption = 'Dateien auswählen:'
    end
  end
  object ListBoxKompression: TListBox
    Left = 64
    Top = 80
    Width = 105
    Height = 345
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
    TabOrder = 4
  end
  object ListBoxAusgewaehlt: TListBox
    Left = 312
    Top = 80
    Width = 201
    Height = 321
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
    TabOrder = 5
    OnClick = ListBoxAusgewaehltClick
  end
  object ListBoxAusgDateien: TListBox
    Left = 552
    Top = 80
    Width = 201
    Height = 345
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
    TabOrder = 6
    OnClick = ListBoxAusgDateienClick
  end
  object PanelSpeed: TPanel
    Left = 8
    Top = 48
    Width = 43
    Height = 283
    TabOrder = 7
    object SpeedDrucker: TSpeedButton
      Left = 8
      Top = 106
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
    object SpeedHilfe: TSpeedButton
      Left = 8
      Top = 202
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
      Left = 8
      Top = 226
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
    object SpeedSpeichern: TSpeedButton
      Left = 8
      Top = 4
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
    object SpeedLiteratur: TSpeedButton
      Left = 8
      Top = 250
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
    object SpeedWinWord: TSpeedButton
      Left = 8
      Top = 154
      Width = 24
      Height = 24
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
    object SpeedEinrichten: TSpeedButton
      Left = 8
      Top = 130
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
    object SpeedLoeschen: TSpeedButton
      Left = 8
      Top = 58
      Width = 24
      Height = 24
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF33333333333330003333333333333777333333333333
        300033FFFFFF3333377739999993333333333777777F3333333F399999933333
        3300377777733333337733333333333333003333333333333377333333333333
        3333333333333333333F333333333333330033333F33333333773333C3333333
        330033337F3333333377333CC3333333333333F77FFFFFFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC399333777777777737733333CC3333333
        333333377F33333333FF3333C333333330003333733333333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
      OnClick = SpeedLoeschenClick
    end
  end
  object PanelDirectory: TPanel
    Left = 40
    Top = 448
    Width = 249
    Height = 49
    ParentShowHint = False
    ShowHint = True
    TabOrder = 8
    object LabelExtension: TLabel
      Left = 8
      Top = 16
      Width = 77
      Height = 21
      Caption = 'Extension:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object LabelLIN: TLabel
      Left = 88
      Top = 16
      Width = 30
      Height = 21
      Caption = 'LIN'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object LabelAnzahl: TLabel
      Left = 128
      Top = 16
      Width = 55
      Height = 21
      Caption = 'Anzahl:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label00000: TLabel
      Left = 192
      Top = 16
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
  object PanelStart: TPanel
    Left = 312
    Top = 408
    Width = 201
    Height = 89
    TabOrder = 9
    object ButtonStart: TButton
      Left = 8
      Top = 8
      Width = 73
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
      TabOrder = 0
      OnClick = ButtonStartClick
    end
    object ButtonAuswahl: TButton
      Left = 88
      Top = 8
      Width = 105
      Height = 33
      Caption = '&Auswahl ok'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = ButtonAuswahlClick
    end
    object ButtonPlotten: TButton
      Left = 64
      Top = 48
      Width = 81
      Height = 33
      Caption = '&plotten'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = ButtonPlottenClick
    end
  end
  object Panelzurueck: TPanel
    Left = 552
    Top = 488
    Width = 201
    Height = 57
    TabOrder = 10
    object Buttonzurueck: TButton
      Left = 16
      Top = 16
      Width = 75
      Height = 33
      Caption = '&zurück'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = ButtonzurueckClick
    end
    object ButtonBeenden: TButton
      Left = 104
      Top = 16
      Width = 75
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
      TabOrder = 1
      OnClick = ButtonBeendenClick
    end
  end
  object PanelDehnung: TPanel
    Left = 184
    Top = 48
    Width = 105
    Height = 41
    TabOrder = 11
    object LabelDehnung: TLabel
      Left = 24
      Top = 8
      Width = 60
      Height = 19
      Caption = 'Dehnung'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
  end
  object ListBoxDehnung: TListBox
    Left = 184
    Top = 80
    Width = 105
    Height = 345
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
    TabOrder = 12
  end
  object PanelPfad: TPanel
    Left = 40
    Top = 504
    Width = 473
    Height = 41
    ParentShowHint = False
    ShowHint = True
    TabOrder = 13
    object LabelPfad: TLabel
      Left = 8
      Top = 8
      Width = 70
      Height = 19
      Caption = 'Daten-Pfad'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object MaskEditPfad: TMaskEdit
      Left = 96
      Top = 8
      Width = 369
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
  object ButtonDurchsuchen: TButton
    Left = 552
    Top = 440
    Width = 201
    Height = 33
    Caption = 'Pfad suchen'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 14
    OnClick = ButtonDurchsuchenClick
  end
  object MainMenu1: TMainMenu
    Left = 330
    Top = 112
    object DatenSpeichern: TMenuItem
      Caption = 'Daten speichern'
      object speichernD: TMenuItem
        Caption = 'speichern'
        ShortCut = 16467
        OnClick = speichernDClick
      end
      object speichernDUnter: TMenuItem
        Caption = 'speichern unter'
        OnClick = speichernDUnterClick
      end
    end
    object Dloeschen: TMenuItem
      Caption = 'Datei löschen'
      object loeschen: TMenuItem
        Caption = 'Löschen'
        OnClick = loeschenClick
      end
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
      object WinWord: TMenuItem
        Caption = 'Rtf-Datei'
        ShortCut = 16471
        OnClick = WinWordClick
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
    Left = 418
    Top = 112
  end
  object PrintDialog1: TPrintDialog
    Left = 378
    Top = 112
  end
  object SaveDialog1: TSaveDialog
    Left = 460
    Top = 110
  end
end
