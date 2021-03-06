object Form63: TForm63
  Left = 254
  Top = 136
  Width = 1050
  Height = 750
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
    Left = 96
    Top = 2
    Width = 660
    Height = 650
    ParentShowHint = False
    ShowHint = True
    OnMouseDown = Image1MouseDown
    OnMouseUp = Image1MouseUp
  end
  object Image2: TImage
    Left = 676
    Top = 568
    Width = 81
    Height = 81
  end
  object ImageNord: TImage
    Left = 400
    Top = 12
    Width = 18
    Height = 36
  end
  object GroupBoxPlotten: TGroupBox
    Left = 770
    Top = 392
    Width = 240
    Height = 230
    Caption = 'Plotten:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object PanelRadius: TPanel
      Left = 16
      Top = 18
      Width = 209
      Height = 36
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
        Top = 2
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
      Top = 62
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
        Width = 104
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
      Top = 158
      Width = 209
      Height = 33
      Caption = 'Plotdatei erstellen'
      TabOrder = 2
      OnClick = PloterstellenClick
    end
    object ButtonPlotEnde: TButton
      Left = 60
      Top = 200
      Width = 121
      Height = 21
      Caption = 'Abbrechen'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = ButtonPlotEndeClick
    end
  end
  object PanelEllipsoid: TPanel
    Left = 770
    Top = 212
    Width = 240
    Height = 45
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
    object LabelXy: TLabel
      Left = 32
      Top = 8
      Width = 46
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
      Left = 88
      Top = 8
      Width = 23
      Height = 21
      Caption = '0.0'
    end
    object LabelYZ: TLabel
      Left = 136
      Top = 8
      Width = 45
      Height = 21
      Caption = 'Y/Z ='
    end
    object LabelYZWert: TLabel
      Left = 192
      Top = 8
      Width = 23
      Height = 21
      Caption = '0.0'
    end
  end
  object PanelEllipse: TPanel
    Left = 770
    Top = 120
    Width = 241
    Height = 81
    TabOrder = 16
    object Radionfls: TRadioGroup
      Left = 24
      Top = 0
      Width = 201
      Height = 73
      Caption = 'n.f.l.s.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object RadioKompression: TRadioButton
      Left = 40
      Top = 24
      Width = 137
      Height = 17
      Caption = 'Kompression'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = RadioKompressionClick
    end
    object RadioDehnung: TRadioButton
      Left = 40
      Top = 48
      Width = 113
      Height = 17
      Caption = 'Dehnung'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = RadioDehnungClick
    end
    object CheckBoxOK: TCheckBox
      Left = 168
      Top = 40
      Width = 49
      Height = 25
      Caption = 'OK'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = CheckBoxOKClick
    end
  end
  object PanelKaliber: TPanel
    Left = 100
    Top = 0
    Width = 421
    Height = 231
    TabOrder = 11
    object LabelBrE: TLabel
      Left = 80
      Top = 155
      Width = 150
      Height = 19
      Caption = 'eingegebene Breite [mm]'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object LabelBrD: TLabel
      Left = 80
      Top = 200
      Width = 187
      Height = 19
      Caption = 'Breite auf der Druckseite [mm]'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object LabelCalib1: TLabel
      Left = 20
      Top = 40
      Width = 3
      Height = 13
    end
    object LabelCalib: TLabel
      Left = 30
      Top = 20
      Width = 229
      Height = 20
      Caption = 'Geben Sie auf der Tafel '#39'Plotten'#39
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object LabelCalib2: TLabel
      Left = 30
      Top = 40
      Width = 359
      Height = 20
      Caption = 'einen Radius ein (in mm, R< Xmitte und R<Ymitte).'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object LabelCalib3: TLabel
      Left = 30
      Top = 60
      Width = 268
      Height = 20
      Caption = 'Dr�cken Sie die Taste '#39'Plot erzeugen'#39'.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object LabelCalib4: TLabel
      Left = 30
      Top = 80
      Width = 191
      Height = 20
      Caption = 'Ein Testdruck wird erzeugt.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object LabelCalib5: TLabel
      Left = 30
      Top = 100
      Width = 380
      Height = 20
      Caption = 'Geben Sie nun in die Felder (unten) den eigegebenen'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object LabelCalib6: TLabel
      Left = 30
      Top = 120
      Width = 270
      Height = 20
      Caption = 'und den gedruckten Durchmesser ein.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object MaskEditBrE: TMaskEdit
      Left = 30
      Top = 150
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
      OnKeyPress = MaskEditBrEKeyPress
    end
    object MaskEditBrD: TMaskEdit
      Left = 30
      Top = 190
      Width = 41
      Height = 29
      Color = clAqua
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnKeyPress = MaskEditBrDKeyPress
    end
    object ButtonCalibEnde: TButton
      Left = 300
      Top = 180
      Width = 101
      Height = 31
      Caption = 'Abbrechen'
      TabOrder = 2
      OnClick = ButtonCalibEndeClick
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 671
    Width = 1034
    Height = 21
    Panels = <>
    SimplePanel = False
  end
  object PanelDateien: TPanel
    Left = 770
    Top = 0
    Width = 240
    Height = 121
    TabOrder = 1
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
    object ListBoxDateien: TListBox
      Left = 24
      Top = 32
      Width = 193
      Height = 81
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
  object ButtonStart: TButton
    Left = 780
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
    TabOrder = 3
    OnClick = ButtonStartClick
  end
  object Buttonzurueck: TButton
    Left = 852
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
    TabOrder = 4
    OnClick = ButtonzurueckClick
  end
  object ButtonBeenden: TButton
    Left = 932
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
    TabOrder = 5
    OnClick = ButtonBeendenClick
  end
  object Paneldrucken: TPanel
    Left = 200
    Top = 136
    Width = 433
    Height = 425
    TabOrder = 6
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
        object LabelLaenge: TLabel
          Left = 8
          Top = 8
          Width = 229
          Height = 21
          Caption = 'Radius [in % der Papierbreite]:'
        end
        object MaskEditLaenge: TMaskEdit
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
        object LabelEcke: TLabel
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
          Width = 272
          Height = 21
          Caption = 'Y-Koordinate [in % der Papierh�he]:'
        end
        object MaskEditLinks: TMaskEdit
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
      object MaskEditOben: TMaskEdit
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
  object PanelSpeed: TPanel
    Left = 24
    Top = 0
    Width = 70
    Height = 649
    TabOrder = 0
    object SpeedHilfe: TSpeedButton
      Left = 42
      Top = 124
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
      Left = 10
      Top = 532
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
      Left = 42
      Top = 148
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
      Top = 220
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
      Left = 10
      Top = 316
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
    object SpeedPlotter: TSpeedButton
      Left = 10
      Top = 412
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
    object SpeedPeripherie: TSpeedButton
      Left = 10
      Top = 436
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
      Left = 10
      Top = 460
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
      Left = 10
      Top = 484
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
      Top = 4
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
      Top = 28
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
      Top = 52
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
    object SpeedLiteratur: TSpeedButton
      Left = 42
      Top = 1964
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
    end
    object SpeedEinrichten: TSpeedButton
      Left = 10
      Top = 508
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
      Top = 196
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
    object SpeedButton1: TSpeedButton
      Left = 10
      Top = 316316
      Width = 24
      Height = 24
    end
    object SpeedTransparent: TSpeedButton
      Left = 10
      Top = 244
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
      Top = 268
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
    object SpeedSpeichern: TSpeedButton
      Left = 10
      Top = 292
      Width = 24
      Height = 24
      Glyph.Data = {
        72010000424D7201000000000000760000002800000015000000150000000100
        040000000000FC000000232E0000232E00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00F00000000000
        00000000F0000000000700000000000000000000000700000FFF000000000000
        000700000FFF000000000000000700000FFF000000000000000700000FFF0000
        0000000000000000000000000000000004444444444400000000000004444444
        44440000000000000000000000000000000000000FFFFFFFFFFF000000000000
        0FFF00000FFF0000000000000FF0999990FF0000000000000FF09999990F0000
        000000000F099999990F0000000000000FF09999990F0000000000000FF00999
        90FF0000000000000FFFF0000FFF0000000000000FFFFFFFFFFF000000000000
        00000000000000000000F0000000000000000000F000}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedSpeichernClick
    end
    object SpeedLoad: TSpeedButton
      Left = 10
      Top = 340
      Width = 24
      Height = 24
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        5555555555555555555555555555555555555555555555555555555555555555
        555555555555555555555555555555555555555FFFFFFFFFF555550000000000
        55555577777777775F55500B8B8B8B8B05555775F555555575F550F0B8B8B8B8
        B05557F75F555555575F50BF0B8B8B8B8B0557F575FFFFFFFF7F50FBF0000000
        000557F557777777777550BFBFBFBFB0555557F555555557F55550FBFBFBFBF0
        555557F555555FF7555550BFBFBF00055555575F555577755555550BFBF05555
        55555575FFF75555555555700007555555555557777555555555555555555555
        5555555555555555555555555555555555555555555555555555}
      NumGlyphs = 2
      OnClick = SpeedLoadClick
    end
    object SpeedFont: TSpeedButton
      Left = 10
      Top = 148
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
    object SpeedRueck: TSpeedButton
      Left = 10
      Top = 388
      Width = 24
      Height = 24
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
        3333333777333777FF3333993333339993333377FF3333377FF3399993333339
        993337777FF3333377F3393999333333993337F777FF333337FF993399933333
        399377F3777FF333377F993339993333399377F33777FF33377F993333999333
        399377F333777FF3377F993333399933399377F3333777FF377F993333339993
        399377FF3333777FF7733993333339993933373FF3333777F7F3399933333399
        99333773FF3333777733339993333339933333773FFFFFF77333333999999999
        3333333777333777333333333999993333333333377777333333}
      NumGlyphs = 2
      OnClick = SpeedRueckClick
    end
    object SpeedZoom: TSpeedButton
      Left = 10
      Top = 364
      Width = 24
      Height = 24
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33033333333333333F7F3333333333333000333333333333F777333333333333
        000333333333333F777333333333333000333333333333F77733333333333300
        033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
        33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
        3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
        33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
        333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
        333333773FF77333333333370007333333333333777333333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedZoomClick
    end
    object SpeedText: TSpeedButton
      Left = 42
      Top = 4
      Width = 24
      Height = 24
      Glyph.Data = {
        76050000424D7605000000000000360000002800000015000000150000000100
        18000000000040050000232E0000232E0000000000000000000075777AA1A2A4
        A1A2A4A1A2A4A1A2A4A1A2A4A1A2A4A1A2A4A1A2A4A1A2A4A1A2A4A1A2A4A1A2
        A4A1A2A4A1A2A4A1A2A4A1A2A4A1A2A4A1A2A4A1A2A475777A00A1A2A4E0E0E1
        E2E2E3E2E3E3E2E3E3E2E3E3E2E3E3E2E3E3E2E3E3E2E2E3EFEFF0FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA1A2A400A1A2A4636568
        65676B65676B65676B65676B65676B65676B65676B5A5C5FB9BABBFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA1A2A400A1A2A4646669
        E4E5E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F9093B9BABBFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA1A2A400A1A2A4646669
        E4E5E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F9093B9BABBFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA1A2A400A1A2A4646669
        E4E5E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F9093B9BABBFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA1A2A400A1A2A4646669
        E4E5E5CACBCC7E7F82FFFFFFFFFFFFFFFFFFFFFFFF8F9093B9BABBFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA1A2A400A1A2A4646669
        E4E5E5BBBCBE5B5D61F9F9F9FFFFFFFFFFFFFFFFFF8F9093B9BABBFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA1A2A400A1A2A4646669
        E4E5E5FFFFFF747679D0D0D1FFFFFFFFFFFFFFFFFF8F9093B9BABBFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA1A2A400A1A2A4636568
        4B4D514B4D5136383C37393E4B4D514B4D514B4D514C4E52B9BABBFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA1A2A400A1A2A4FBFBFB
        FDFDFDFDFDFDFDFDFD606266E5E5E6FDFDFDFDFDFDFEFEFEFDFDFDFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA1A2A400A1A2A4FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF5052565D5F63B9BABBFFFFFFFFFFFFFFFFFFFFFF
        FFEBECECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBECECA1A2A400A1A2A4FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFF8F8F8EAEAEAC2C3C4CBCBCCAEAFB1FFFFFF9D9E
        A09E9FA1828487CBCCCDABADAE828487EBECEC696B6EA1A2A400A1A2A4FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCBCBCCAEAFB1FFFFFF6F71
        74969799858789F8F8F8787A7DB4B5B6F4F4F4939497A1A2A400A1A2A4FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCBCBCCAEAFB1FFFFFF9495
        97CCCDCE737578EBECEC848688818285D8D9DA76777AA1A2A400A1A2A4FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAC4C5C6AAABADFAFAFAFCFC
        FCC7C8C9F6F6F7EAEBEBF6F6F7EAEBEBD5D5D6797B7EA1A2A400A1A2A4FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB3B4B5929396929396A7A8AAFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F6F6A1A2A400A1A2A4FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA1A2A400A1A2A4FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA1A2A400A1A2A4FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA1A2A40075777AA1A2A4
        A1A2A4A1A2A4A1A2A4A1A2A4A1A2A4A1A2A4A1A2A4A1A2A4A1A2A4A1A2A4A1A2
        A4A1A2A4A1A2A4A1A2A4A1A2A4A1A2A4A1A2A4A1A2A474767900}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedTextClick
    end
    object SpeedUnText: TSpeedButton
      Left = 42
      Top = 28
      Width = 24
      Height = 24
      Glyph.Data = {
        76050000424D7605000000000000360000002800000015000000150000000100
        18000000000040050000232E0000232E0000000000000000000075777AA1A2A4
        A1A2A4A1A2A4A1A2A4A1A2A4A1A2A4A1A2A4A1A2A4A1A2A4A1A2A4A1A2A4A1A2
        A4A1A2A4A1A2A4A1A2A4A1A2A4A1A2A4A1A2A4A1A2A475777A00A1A2A4FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA1A2A400A1A2A4FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA1A2A400A1A2A4FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA1A2A400A1A2A4FFFFFF
        FFFFFFFFFFFFAABBFFEDF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA1A2A400A1A2A4FFFFFF
        FFFFFFFFFFFFFFFFFF5375FFE3E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA1A2A400A1A2A4FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF486DFFEEF1FFF5F6F6E9E9E9FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFF5F5F5E9E9E9FFFFFFFFFFFFA1A2A400A1A2A4FFFFFF
        FFFFFFFFFFFF4F5155F9F9F9FFFFFF335AF45457608A8B8E797B7EEBECEC6365
        69FCFCFC636569EDEDEE616366C0C1C3FFFFFFFFFFFFA1A2A400A1A2A4FFFFFF
        FFFFFFFFFFFF4F5155FAFAFAFFFFFF7D7F812850EFDBDBDCAEAFB1F8F8F8B6B7
        B94C4E52B5B6B7FFFFFF626468FFFFFFFFFFFFFFFFFFA1A2A400A1A2A4FFFFFF
        FFFFFFFFFFFF4F5155FFFFFFFFFFFF797B7E7C7E83224AE844474BE6E6E7E0E0
        E12D3035DDDDDEFFFFFF626468FFFFFFFFFFFFFFFFFFA1A2A400A1A2A4FFFFFF
        FFFFFFFFFFFF4F5155FFFFFFFFFFFFCCCDCE696B6EACAFB8183ED6FDFDFD6264
        68DDDDDE626468DADBDB43464AC8C9CAFFFFFFFFFFFFA1A2A400A1A2A4FFFFFF
        FFFFFFFFFFFF4F5155FFFFFFFFFFFFFFFFFFE0E0E1BCBDBEE1E6F6496CFCE2E3
        E3FFFFFFE5E5E6E2E3E3525458E1E2E2FFFFFFFFFFFFA1A2A400A1A2A4FFFFFF
        909294636569424448636569747679FFFFFFFFFFFFFFFFFFFFFFFFDEE4FF5879
        FFFFFFFFFFFFFFFFFFFFC7C8C9FFFFFFFFFFFFFFFFFFA1A2A400A1A2A4FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1DA
        FF6584FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA1A2A400A1A2A4FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFC3CFFF738FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA1A2A400A1A2A4FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFDCE3FFB7C5FFFFFFFFFFFFFFFFFFFFFFFFFFA1A2A400A1A2A4FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA1A2A400A1A2A4FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA1A2A400A1A2A4FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA1A2A400A1A2A4FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA1A2A40075777AA1A2A4
        A1A2A4A1A2A4A1A2A4A1A2A4A1A2A4A1A2A4A1A2A4A1A2A4A1A2A4A1A2A4A1A2
        A4A1A2A4A1A2A4A1A2A4A1A2A4A1A2A4A1A2A4A1A2A474767900}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedUnTextClick
    end
    object SpeedDspeichern: TSpeedButton
      Left = 42
      Top = 76
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
      OnClick = SpeedDspeichernClick
    end
    object SpeedLiterat: TSpeedButton
      Left = 42
      Top = 172
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
      OnClick = SpeedLiteratClick
    end
    object SpeedEllipse: TSpeedButton
      Left = 10
      Top = 76
      Width = 24
      Height = 24
      Glyph.Data = {
        76050000424D7605000000000000360000002800000015000000150000000100
        18000000000040050000232E0000232E0000000000000000000075777AA1A2A4
        A1A2A4A1A2A4A1A2A4A1A2A4A1A2A4A1A2A4A1A2A4A1A2A4A1A2A4A1A2A4A1A2
        A4A1A2A4A1A2A4A1A2A4A1A2A4A1A2A4A1A2A4A1A2A475777A00A1A2A4FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA1A2A400A1A2A4FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA1A2A400A1A2A4FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA1A2A400A1A2A4FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3ECE9EDE3DEFDFCFCFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA1A2A400A1A2A4FFFFFF
        FFFFFFFFFFFFFFFFFFDCC7BED1B5ABAA7662B07F6C9F654EC0998AEEE3DFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA1A2A400A1A2A4FFFFFF
        FFFFFFFFFFFFFFFFFFCFB2A69E634CFFFFFFFFFFFFFFFFFFDDC9C1AF7D6BF5EF
        EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA1A2A400A1A2A4FFFFFF
        FFFFFFFFFFFFEDE2DEB0806DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA873
        5EDDC9C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA1A2A400A1A2A4FFFFFF
        FFFFFFFFFFFFEBDFDAB28371FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE5
        E1C7A598D6BCB3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA1A2A400A1A2A4FFFFFF
        FFFFFFFFFFFFFDFCFCA0654FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFAE7D6AEFE5E1FFFFFFFFFFFFFFFFFFFFFFFFA1A2A400A1A2A4FFFFFF
        FFFFFFFFFFFFFFFFFFAD7A67F0E7E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFF0E6E3AD7B68FFFFFFFFFFFFFFFFFFFFFFFFA1A2A400A1A2A4FFFFFF
        FFFFFFFFFFFFFFFFFFEEE4E0AF7D6BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFA0654FFDFCFCFFFFFFFFFFFFFFFFFFA1A2A400A1A2A4FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFD5BCB2C8A699EFE5E1FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFB28270EBDFDAFFFFFFFFFFFFFFFFFFA1A2A400A1A2A4FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDC9C1A8735EFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFB07F6CEDE3DEFFFFFFFFFFFFFFFFFFA1A2A400A1A2A4FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5EFEDAF7D6BDDC8C0FFFFFFFFFF
        FFFFFFFF9E634CCFB2A7FFFFFFFFFFFFFFFFFFFFFFFFA1A2A400A1A2A4FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEE4E0C0998B9F654EAF7E
        6CA97561D2B6ACDCC7BFFFFFFFFFFFFFFFFFFFFFFFFFA1A2A400A1A2A4FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFDEEE3
        DFF3EDEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA1A2A400A1A2A4FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA1A2A400A1A2A4FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA1A2A400A1A2A4FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA1A2A40075777AA1A2A4
        A1A2A4A1A2A4A1A2A4A1A2A4A1A2A4A1A2A4A1A2A4A1A2A4A1A2A4A1A2A4A1A2
        A4A1A2A4A1A2A4A1A2A4A1A2A4A1A2A4A1A2A4A1A2A474767900}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedEllipseClick
    end
    object SpeedFlinn: TSpeedButton
      Left = 10
      Top = 100
      Width = 24
      Height = 24
      Glyph.Data = {
        76050000424D7605000000000000360000002800000015000000150000000100
        18000000000040050000232E0000232E0000000000000000000037393E6A6C6F
        6A6C6F6A6C6F6A6C6F6A6C6F6A6C6F6A6C6F6A6C6F6A6C6F6A6C6F6A6C6F6A6C
        6F6A6C6F6A6C6F6A6C6F6A6C6F6A6C6F6A6C6F6A6C6F535559006A6C6F494C50
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6A6C6F006A6C6FFFFFFF
        494C50FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6A6C6F006A6C6FFFFFFF
        FFFFFF494C50FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6A6C6F006A6C6FFFFFFF
        FFFFFFFFFFFF494C50FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6A6C6F006A6C6FFFFFFF
        FFFFFFFFFFFFFFFFFF494C50FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6A6C6F006A6C6FFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF494C50FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6A6C6F006A6C6FFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF494C50FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6A6C6F006A6C6FFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF494C50FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6A6C6F006A6C6FFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF494C50FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6A6C6F006A6C6FFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF494C50FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6A6C6F006A6C6FFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF494C50FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6A6C6F006A6C6FFFFFFF
        FFFFFFFFFFFFA163FF8330FFBE94FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF494C
        50FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6A6C6F006A6C6FFFFFFF
        FFFFFF812DFF6601FF6600FF7213FFD4B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF494C50FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6A6C6F006A6C6FFFFFFF
        D4B8FF7519FF6600FF6600FF6600FF7921FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF494C50FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6A6C6F006A6C6FFFFFFF
        D8BEFF761BFF6600FF6600FF6600FF7D26FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF494C50FFFFFFFFFFFFFFFFFFFFFFFF6A6C6F006A6C6FFFFFFF
        FFFFFF9D5CFF6A07FF6600FF7113FFC096FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF494C50FFFFFFFFFFFFFFFFFF6A6C6F006A6C6FFFFFFF
        FFFFFFFFFFFFA76EFF9149FFBC8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF494C50FFFFFFFFFFFF6A6C6F006A6C6FFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF494C50FFFFFF6A6C6F006A6C6FFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF494C506A6C6F005355596A6C6F
        6A6C6F6A6C6F6A6C6F6A6C6F6A6C6F6A6C6F6A6C6F6A6C6F6A6C6F6A6C6F6A6C
        6F6A6C6F6A6C6F6A6C6F6A6C6F6A6C6F6A6C6F6A6C6F36393D00}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedFlinnClick
    end
  end
  object PanelGroesse: TPanel
    Left = 98
    Top = 10
    Width = 241
    Height = 121
    TabOrder = 8
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
  object PanelDehnen: TPanel
    Left = 370
    Top = 250
    Width = 141
    Height = 141
    TabOrder = 9
    object ButtonNPlus: TButton
      Left = 60
      Top = 10
      Width = 20
      Height = 20
      Caption = 'L'
      Font.Charset = SYMBOL_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Symbol'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = ButtonNPlusClick
    end
    object ButtonNMinus: TButton
      Left = 60
      Top = 35
      Width = 20
      Height = 20
      Caption = 'V'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = '@Arial Unicode MS'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = ButtonNMinusClick
    end
    object ButtonWplus: TButton
      Left = 10
      Top = 60
      Width = 20
      Height = 20
      Caption = '<'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = ButtonWplusClick
    end
    object ButtonWMinus: TButton
      Left = 35
      Top = 60
      Width = 20
      Height = 20
      Caption = '>'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = ButtonWMinusClick
    end
    object ButtonEMinus: TButton
      Left = 85
      Top = 60
      Width = 20
      Height = 20
      Caption = '<'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = ButtonEMinusClick
    end
    object ButtonEPlus: TButton
      Left = 110
      Top = 60
      Width = 20
      Height = 20
      Caption = '>'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = ButtonEPlusClick
    end
    object ButtonHok: TButton
      Left = 60
      Top = 60
      Width = 20
      Height = 20
      Caption = 'OK'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = ButtonHokClick
    end
    object ButtonSMinus: TButton
      Left = 60
      Top = 85
      Width = 20
      Height = 20
      Caption = 'L'
      Font.Charset = SYMBOL_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Symbol'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnClick = ButtonSMinusClick
    end
    object ButtonSPlus: TButton
      Left = 60
      Top = 110
      Width = 20
      Height = 20
      Caption = 'V'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = '@Arial Unicode MS'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
      OnClick = ButtonSPlusClick
    end
  end
  object PanelLoad: TPanel
    Left = 240
    Top = 0
    Width = 410
    Height = 80
    TabOrder = 12
    object ListBoxLoad: TListBox
      Left = 10
      Top = 10
      Width = 300
      Height = 60
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ItemHeight = 19
      ParentFont = False
      TabOrder = 0
      OnClick = ListBoxLoadClick
    end
    object ButtonLabbrechen: TButton
      Left = 320
      Top = 30
      Width = 81
      Height = 31
      Caption = 'Abbrechen'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = ButtonLabbrechenClick
    end
  end
  object PanelSpeichern: TPanel
    Left = 240
    Top = 0
    Width = 410
    Height = 80
    TabOrder = 13
    object ListBoxSpeichern: TListBox
      Left = 10
      Top = 10
      Width = 300
      Height = 60
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ItemHeight = 19
      ParentFont = False
      TabOrder = 0
      OnClick = ListBoxSpeichernClick
    end
    object ButtonSabbrechen: TButton
      Left = 320
      Top = 40
      Width = 81
      Height = 21
      Caption = 'Abbrechen'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = ButtonSabbrechenClick
    end
  end
  object PanelText: TPanel
    Left = 110
    Top = 608
    Width = 561
    Height = 41
    TabOrder = 14
    object LabelText: TLabel
      Left = 10
      Top = 0
      Width = 77
      Height = 15
      Caption = 'Text schreiben'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object LabelReturn: TLabel
      Left = 10
      Top = 20
      Width = 104
      Height = 15
      Caption = 'mit Return beenden'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object MaskEditText: TMaskEdit
      Left = 130
      Top = 10
      Width = 421
      Height = 24
      Color = clAqua
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyPress = MaskEditTextKeyPress
    end
    object PanelPlazieren: TPanel
      Left = 130
      Top = 0
      Width = 421
      Height = 31
      TabOrder = 1
      object LabelPlazieren: TLabel
        Left = 10
        Top = 10
        Width = 371
        Height = 13
        Caption = 
          'Klicken Sie auf den Punkt, wo die linke obere Ecke des Textes er' +
          'scheinen soll'
      end
    end
  end
  object PanelDaten: TPanel
    Left = 770
    Top = 344
    Width = 240
    Height = 281
    TabOrder = 10
    object LabelDaten: TLabel
      Left = 10
      Top = 305
      Width = 18
      Height = 23
      Caption = 'S:'
      Font.Charset = SYMBOL_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Symbol'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
    object LabelMess: TLabel
      Left = 20
      Top = 5
      Width = 81
      Height = 21
      Caption = 'LabelMess'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object LabelKompr: TLabel
      Left = 20
      Top = 30
      Width = 81
      Height = 19
      Caption = 'Kompression'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object LabelDehn: TLabel
      Left = 120
      Top = 30
      Width = 53
      Height = 19
      Caption = 'Dehnung'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object LabelSummeK: TLabel
      Left = 40
      Top = 306
      Width = 55
      Height = 23
      Caption = '00000'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object LabelSummeD: TLabel
      Left = 135
      Top = 306
      Width = 55
      Height = 23
      Caption = '00000'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object TLabel
      Left = 24
      Top = 256
      Width = 3
      Height = 13
    end
    object LabelSum: TLabel
      Left = 8
      Top = 248
      Width = 22
      Height = 30
      Caption = 'S:'
      Font.Charset = SYMBOL_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Symbol'
      Font.Style = []
      ParentFont = False
    end
    object LabelKom: TLabel
      Left = 40
      Top = 250
      Width = 55
      Height = 23
      Caption = '00000'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object LabelDeh: TLabel
      Left = 128
      Top = 250
      Width = 55
      Height = 23
      Caption = '00000'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object ListBoxKomp: TListBox
      Left = 20
      Top = 56
      Width = 90
      Height = 193
      Color = clAqua
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 20
      ParentFont = False
      TabOrder = 0
    end
    object ListBoxDehn: TListBox
      Left = 120
      Top = 56
      Width = 90
      Height = 193
      Color = clAqua
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 20
      ParentFont = False
      TabOrder = 1
    end
  end
  object ButtonFlinn: TButton
    Left = 768
    Top = 270
    Width = 241
    Height = 24
    Caption = 'Flinn-Diagramm'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 17
    OnClick = ButtonFlinnClick
  end
  object ButtonTalbot: TButton
    Left = 768
    Top = 312
    Width = 241
    Height = 24
    Caption = 'Talbot-Diagramm'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 18
    OnClick = ButtonTalbotClick
  end
  object PanelAchsen: TPanel
    Left = 96
    Top = -8
    Width = 409
    Height = 41
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 19
    object LabelAchse: TLabel
      Left = 8
      Top = 14
      Width = 323
      Height = 21
      Caption = 'Klicken Sie auf die Lange Achse der Ellipse'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
  end
  object PanelWieder: TPanel
    Left = 770
    Top = 216
    Width = 241
    Height = 40
    TabOrder = 20
    object ButtonWieder: TButton
      Left = 24
      Top = 5
      Width = 113
      Height = 30
      Caption = 'Wiederholen'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = ButtonWiederClick
    end
    object CheckBoxWieder: TCheckBox
      Left = 160
      Top = 5
      Width = 57
      Height = 25
      Caption = 'OK'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = CheckBoxWiederClick
    end
  end
  object MainMenu1: TMainMenu
    Left = 670
    Top = 80
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
      object LkRadienD: TMenuItem
        Caption = 'Langer und kurzer Radius'
        object LkKreisOffen: TMenuItem
          Caption = 'Kreis offen'
          OnClick = LkKreisOffenClick
        end
        object LkKreisGefuellt: TMenuItem
          Caption = 'Kreis gef�llt'
          OnClick = LkKreisGefuelltClick
        end
        object LkQuadratOffen: TMenuItem
          Caption = 'Quadrat offen'
          OnClick = LkQuadratOffenClick
        end
        object LkQuadratGefuellt: TMenuItem
          Caption = 'Quadrat gef�llt;'
          OnClick = LkQuadratGefuelltClick
        end
        object LkDreieckOffen: TMenuItem
          Caption = 'Dreieck offen'
          OnClick = LkDreieckOffenClick
        end
        object LkDreieckGefuellt: TMenuItem
          Caption = 'Dreieck gef�llt'
          OnClick = LkDreieckGefuelltClick
        end
        object LkRauteOffen: TMenuItem
          Caption = 'Raute offen'
          OnClick = LkRauteOffenClick
        end
        object LkRauteGefuellt: TMenuItem
          Caption = 'Raute gef�llt'
          OnClick = LkRauteGefuelltClick
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
          Caption = 'Quadrat offen'
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
      object DehnungFa: TMenuItem
        Caption = 'Dehnung'
        OnClick = DehnungFaClick
      end
      object KompressionFa: TMenuItem
        Caption = 'Kompression'
        OnClick = KompressionFaClick
      end
      object FarbeAchsen: TMenuItem
        Caption = '&Achsen'
        OnClick = FarbeAchsenClick
      end
      object FarbeEllipse: TMenuItem
        Caption = 'Ellipse'
        OnClick = FarbeEllipseClick
      end
      object PunktFlinnF: TMenuItem
        Caption = '&Punkt im Flinn-Diagramm'
        OnClick = PunktFlinnFClick
      end
    end
    object Font: TMenuItem
      Caption = 'Font'
      OnClick = FontClick
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
      object Gspeichern: TMenuItem
        Caption = '&speichern'
        OnClick = GspeichernClick
      end
      object Dhinzufuegen: TMenuItem
        Caption = 'Diagramm hinzuf�gen'
        object ausZwischenablage: TMenuItem
          Caption = 'Aus der Zwischenablage'
          OnClick = ausZwischenablageClick
        end
        object ausDatei: TMenuItem
          Caption = 'Aus einer Datei'
          OnClick = ausDateiClick
        end
        object Zoom: TMenuItem
          Caption = 'Zoom'
          OnClick = ZoomClick
        end
        object Drueck: TMenuItem
          Caption = 'R�ckg�ngig'
          OnClick = DrueckClick
        end
      end
      object mitHPPlotter: TMenuItem
        Caption = 'mit dem HP-&Plotter zeichnen'
        object DEinrichten: TMenuItem
          Caption = 'Einrichten'
          OnClick = DEinrichtenClick
        end
        object Calibrieren: TMenuItem
          Caption = 'Calibrieren'
          OnClick = CalibrierenClick
        end
        object DDrucken: TMenuItem
          Caption = 'Drucken'
          OnClick = DDruckenClick
        end
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
    object Text: TMenuItem
      Caption = 'Text'
      object Textschreiben: TMenuItem
        Caption = 'Text schreiben'
        OnClick = TextschreibenClick
      end
      object Trueck: TMenuItem
        Caption = 'R�ckg�ngig'
        OnClick = TrueckClick
      end
    end
    object DatenSpeichern: TMenuItem
      Caption = 'Daten speichern'
      object Dspeichern: TMenuItem
        Caption = 'Speichern'
        OnClick = DspeichernClick
      end
      object DspeichernUnter: TMenuItem
        Caption = 'Speichern unter'
        OnClick = DspeichernUnterClick
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
    Left = 670
    Top = 260
  end
  object OpenDialog1: TOpenDialog
    Left = 670
    Top = 290
  end
  object PrintDialog1: TPrintDialog
    Left = 670
    Top = 200
  end
  object PrinterSetupDialog1: TPrinterSetupDialog
    Left = 670
    Top = 230
  end
  object ColorDialog1: TColorDialog
    Ctl3D = True
    Left = 670
    Top = 110
  end
  object SavePictureDialog1: TSavePictureDialog
    Left = 670
    Top = 140
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 670
    Top = 170
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MinFontSize = 0
    MaxFontSize = 0
    Left = 670
    Top = 320
  end
end
