object Form99: TForm99
  Left = 2
  Top = 32
  Width = 1050
  Height = 750
  Caption = 'Form99'
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
  object ImageFlukt: TImage
    Left = 89
    Top = 10
    Width = 600
    Height = 441
    OnMouseUp = ImageFluktMouseUp
  end
  object ImageMohr: TImage
    Left = 234
    Top = 460
    Width = 335
    Height = 201
  end
  object PanelKaliber: TPanel
    Left = 90
    Top = 10
    Width = 421
    Height = 231
    TabOrder = 12
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
      Caption = 'Drücken Sie die Taste '#39'Plot erzeugen'#39'.'
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
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = ButtonCalibEndeClick
    end
  end
  object GroupBoxplotten: TGroupBox
    Left = 752
    Top = 398
    Width = 240
    Height = 221
    Caption = 'plotten:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    object Panel4: TPanel
      Left = 58
      Top = 10
      Width = 150
      Height = 59
      TabOrder = 0
      object LabelKante: TLabel
        Left = 26
        Top = 4
        Width = 92
        Height = 21
        Caption = 'Breite [mm]:'
      end
      object MaskEditKante: TMaskEdit
        Left = 56
        Top = 25
        Width = 41
        Height = 29
        Color = clAqua
        TabOrder = 0
        Text = '    '
      end
    end
    object Panel5: TPanel
      Left = 60
      Top = 76
      Width = 150
      Height = 65
      TabOrder = 1
      object LabelNull: TLabel
        Left = 8
        Top = -2
        Width = 121
        Height = 21
        Caption = 'Nullpunkt [mm]:'
      end
      object LabelX: TLabel
        Left = 8
        Top = 30
        Width = 17
        Height = 21
        Caption = 'X:'
      end
      object LabelY: TLabel
        Left = 75
        Top = 30
        Width = 15
        Height = 21
        Caption = 'Y:'
      end
      object MaskEditX: TMaskEdit
        Left = 32
        Top = 22
        Width = 41
        Height = 29
        Color = clAqua
        TabOrder = 0
        Text = '    '
      end
      object MaskEditY: TMaskEdit
        Left = 98
        Top = 22
        Width = 41
        Height = 29
        Color = clAqua
        TabOrder = 1
        Text = '    '
      end
    end
    object Ploterstellen: TButton
      Left = 60
      Top = 146
      Width = 153
      Height = 35
      Caption = 'Plotdatei erstellen'
      TabOrder = 2
      OnClick = PloterstellenClick
    end
    object ButtonPlotEnde: TButton
      Left = 90
      Top = 190
      Width = 101
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
  object PanelEingabe: TPanel
    Left = 752
    Top = 396
    Width = 241
    Height = 161
    TabOrder = 3
    object LabelSig1: TLabel
      Left = 10
      Top = 60
      Width = 38
      Height = 34
      Caption = 's1:'
      Font.Charset = SYMBOL_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Symbol'
      Font.Style = []
      ParentFont = False
    end
    object LabelSig3: TLabel
      Left = 10
      Top = 107
      Width = 38
      Height = 34
      Caption = 's3:'
      Font.Charset = SYMBOL_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Symbol'
      Font.Style = []
      ParentFont = False
    end
    object LabelAzimut: TLabel
      Left = 60
      Top = 35
      Width = 53
      Height = 21
      Caption = 'Azimut'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object LabelFal: TLabel
      Left = 130
      Top = 35
      Width = 44
      Height = 21
      Caption = 'Fallen'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object LabelStress: TLabel
      Left = 10
      Top = 10
      Width = 184
      Height = 21
      Caption = 'Hauptnormalspannungen'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object MaskEditS1Azi: TMaskEdit
      Left = 70
      Top = 60
      Width = 51
      Height = 39
      Color = clAqua
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = MaskEditS1AziChange
    end
    object MaskEditS3Azi: TMaskEdit
      Left = 70
      Top = 112
      Width = 51
      Height = 39
      Color = clAqua
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnChange = MaskEditS3AziChange
    end
    object MaskEditS1Fal: TMaskEdit
      Left = 135
      Top = 60
      Width = 36
      Height = 39
      Color = clAqua
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnChange = MaskEditS1FalChange
    end
    object MaskEditS3Fal: TMaskEdit
      Left = 135
      Top = 112
      Width = 36
      Height = 39
      Color = clAqua
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnChange = MaskEditS3FalChange
    end
    object CheckBoxOK: TCheckBox
      Left = 180
      Top = 130
      Width = 51
      Height = 21
      Caption = 'OK'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = CheckBoxOKClick
    end
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 669
    Width = 1034
    Height = 23
    Panels = <>
    ParentShowHint = False
    ShowHint = True
    SimplePanel = False
  end
  object ButtonStart: TButton
    Left = 700
    Top = 630
    Width = 79
    Height = 31
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
    Left = 793
    Top = 630
    Width = 91
    Height = 31
    Caption = 'Zurueck'
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
    Left = 898
    Top = 630
    Width = 91
    Height = 30
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
  object PanelDateien: TPanel
    Left = 752
    Top = -12
    Width = 240
    Height = 173
    TabOrder = 4
    object LabelDateien: TLabel
      Left = 16
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
    object LabelAnzahl: TLabel
      Left = 16
      Top = 320
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
    object Label00000: TLabel
      Left = 168
      Top = 360
      Width = 65
      Height = 21
      Caption = '             '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object TLabel
      Left = 152
      Top = 320
      Width = 3
      Height = 13
    end
    object LabelZahl: TLabel
      Left = 160
      Top = 320
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
      Left = 16
      Top = 32
      Width = 209
      Height = 129
      Color = clAqua
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ItemHeight = 19
      ParentFont = False
      TabOrder = 0
    end
  end
  object PanelR: TPanel
    Left = 570
    Top = 415
    Width = 111
    Height = 26
    TabOrder = 5
    object LabelR: TLabel
      Left = 10
      Top = 2
      Width = 31
      Height = 23
      Caption = 'R ='
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object LabelRZahl: TLabel
      Left = 60
      Top = 2
      Width = 38
      Height = 23
      Caption = '0.55'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
  end
  object PanelGroesse: TPanel
    Left = 450
    Top = 0
    Width = 241
    Height = 121
    TabOrder = 6
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
  object PanelDrucken: TPanel
    Left = 182
    Top = 120
    Width = 433
    Height = 425
    TabOrder = 8
    object GroupBoxDrucken: TGroupBox
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
      object Panel6: TPanel
        Left = 24
        Top = 32
        Width = 353
        Height = 41
        TabOrder = 0
        object LabelLaenge: TLabel
          Left = 16
          Top = 8
          Width = 229
          Height = 21
          Caption = 'Radius [in % der Papierbreite]:'
        end
        object MaskEditLaenge: TMaskEdit
          Left = 312
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
        object LabelEcke: TLabel
          Left = 8
          Top = 8
          Width = 116
          Height = 21
          Caption = 'Bildmittelpunkt:'
        end
        object LabelXdrucken: TLabel
          Left = 16
          Top = 40
          Width = 279
          Height = 21
          Caption = 'X-Koordinate [in % der Papierbreite]:'
          Color = clSilver
          ParentColor = False
        end
        object LabelYdrucken: TLabel
          Left = 16
          Top = 72
          Width = 277
          Height = 21
          Caption = 'Y-Koordinate [in % der Papierhöhe ]:'
        end
        object MaskEditLinks: TMaskEdit
          Left = 312
          Top = 32
          Width = 33
          Height = 29
          Color = clAqua
          TabOrder = 0
          Text = '100'
        end
        object MaskEditOben: TMaskEdit
          Left = 312
          Top = 72
          Width = 33
          Height = 29
          Color = clAqua
          TabOrder = 1
          Text = '100'
        end
      end
      object Panel9: TPanel
        Left = 24
        Top = 200
        Width = 353
        Height = 137
        TabOrder = 2
        object LabelUnterschrift: TLabel
          Left = 8
          Top = 8
          Width = 118
          Height = 21
          Caption = 'Bildunterschrift:'
        end
        object LabelSchrift: TLabel
          Left = 16
          Top = 80
          Width = 90
          Height = 21
          Caption = 'Schrifthöhe:'
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
        object ListBoxSchrift: TListBox
          Left = 120
          Top = 72
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
        object RadioGroup: TRadioGroup
          Left = 176
          Top = 56
          Width = 153
          Height = 73
          TabOrder = 2
        end
        object RadioButtonRechts: TRadioButton
          Left = 184
          Top = 104
          Width = 113
          Height = 17
          Caption = 'rechtsbündigRadioButtonRechts'
          TabOrder = 3
          OnClick = RadioButtonRechtsClick
        end
        object RadioButtonZentriert: TRadioButton
          Left = 184
          Top = 88
          Width = 113
          Height = 17
          Caption = 'zentriert'
          TabOrder = 4
          OnClick = RadioButtonZentriertClick
        end
        object RadioButtonLinks: TRadioButton
          Left = 184
          Top = 72
          Width = 113
          Height = 17
          Caption = 'linksbündig'
          TabOrder = 5
          OnClick = RadioButtonLinksClick
        end
      end
      object ButtonDrucken: TButton
        Left = 30
        Top = 350
        Width = 101
        Height = 31
        Caption = 'Drucken'
        TabOrder = 3
        OnClick = ButtonDruckenClick
      end
      object ButtonAbbrechen: TButton
        Left = 140
        Top = 350
        Width = 101
        Height = 31
        Caption = 'Abbrechen'
        TabOrder = 4
        OnClick = ButtonAbbrechenClick
      end
    end
  end
  object PanelSpeed: TPanel
    Left = 18
    Top = 0
    Width = 59
    Height = 665
    TabOrder = 9
    object SpeedorgVersatz: TSpeedButton
      Left = 4
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
        FFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9FBFBFBFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFAFB0B2999A9DFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFCCCCCE7C7E81FFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFD1D2D377787BFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFC5C5C7828487FFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF96989AB1B2B4FFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF66686CE2E2E3FFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFF7F7F8515357FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9B9C9E383A3F5355
        59C9CACBFFFFFFFFFFFFAEAFB19A9B9DFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA4A5A76E7073CFD0
        D1F9F9F9FFFFFFFFFFFF6E6F73D9DADBFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB4B5B79FA1A35557
        5BF3F3F3848688797A7D96989AFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8D8
        D956595CA4A4A64D4F53FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8486
        88B2B3B54A4C509D9EA0595B5EEFEFF0FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB3B4
        B6404246E9E9EAC2C3C4797B7EFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1E1E2686A6D9496
        98AFB0B25F616586888AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFEFEFEEFEFF0BBBBBD6B6D7067696CE0E0E1FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFF9A9B9D4F51554A4C50595B5E8D8F91DDDDDEFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFF9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedorgVersatzClick
    end
    object SpeedorgDieder: TSpeedButton
      Left = 4
      Top = 4
      Width = 24
      Height = 24
      Glyph.Data = {
        76050000424D7605000000000000360000002800000015000000150000000100
        18000000000040050000232E0000232E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        CBACB2FCFBFBFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFF0F1FCFEFEFEFCFBFBBC939CFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        C39EA6CAA9B0FFFFFF9C9FEEB1B4F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF545AE3F8F9FDF3ECEE995B68FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFF8F4A59FDFCFCFFFFFF595FE3F3F3FDFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFDBDCF97176E7FFFFFFBF98A0CEAFB6FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFD4B9BFB98E97FFFFFFE0E2FA6C71E7FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF6065E4EDEDFCFFFFFF9C5F6CF0E8EAFFFFFFFFFFFFFFFFFF00FFFFFFEAF3E3
        FFFFFFFFFFFFBC939CD0B4BAFFFFFF969AEDB4B7F2FFFFFFFFFFFFFFFFFF8F93
        ECBDBFF4FFFFFFC8A6ADC5A1A8FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFDBEACF
        6EAC3DFFFFFFFFFFFFA56D79E8DADDFFFFFF989CEE5056E28B8FEC686DE6A5A8
        F0FFFFFFE4D3D6A9747FFFFFFFECF4E69DC77CCBE1BAFFFFFF00FFFFFFFFFFFF
        FAFCF96DAB3CFFFFFFFFFFFF8E4857FBF9F9FFFFFFFDFDFEC2C4F5E5E6FAFFFF
        FFFCFAFA9E6370F6F1F2FFFFFF8DBE67CBE1BAFBFCFAFFFFFF00FFFFFFFFFFFF
        FFFFFFC1DBACA7CD8AFFFFFFEFE5E78F4958D0B3B9FFFFFFFFFFFFFFFFFFE8DA
        DD914D5BFFFFFFFFFFFF94C270D4E6C6FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFAFCF96EAC3DFFFFFFFFFFFFFFFFFFBD949D955462A2697593505EA56D
        79FFFFFFFFFFFFDEECD489BC62FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFEFEFE6AAA38FFFFFFFFFFFFFFFFFFFFFFFFF7F3F4EADEE0FAF7F8FFFF
        FFFFFFFFFFFFFFD5E7C892C16EFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFD5E7C892C16EFFFFFFFFFFFFFFFFFFD3B8BE9B5D6B8E4857985966E3D2
        D6FFFFFFFFFFFFF5F9F273AF44FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        EBF3E569A937FAFCF9FFFFFFFFFFFF8E4857B98F98F2EAEBFFFFFFF4EEEFAA75
        80D9C2C6FFFFFFFFFFFFA4CB86C4DDB0FFFFFFFFFFFFFFFFFF00FFFFFFB6D59E
        7DB451F9FBF7FBFCFAFAF7F89B5D6BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFB4858FBD959EFFFFFFFFFFFF7FB654DAEACEFFFFFFFFFFFF00FFFFFFDDEBD2
        FFFFFFFFFFFFFFFFFF945260F6F0F1FFFFFFFFFFFFDDDEF9A8ABF0CFD1F7FFFF
        FFF5EFF0E7D9DCA56E7AFFFFFFFAFCF98EBE68F9FBF7FFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFA7717CE6D6DAFFFFFFFFFFFF9C9FEE6F75E7A4A8F07E82E98B8F
        ECFFFFFFFFFFFFCAAAB1C29DA5FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFE4D4D7A8737FFFFFFFFFFFFF6B70E6B1B4F2FFFFFFFFFFFFFFFFFF8186
        EACBCDF6FFFFFFF6F1F2965664FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFF9A5C69F3EBEDFFFFFFB4B7F2989CEEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF555BE3F7F8FDFFFFFFAC7A84E0CDD1FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        EDE1E4A06672FFFFFFF6F6FD575DE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFCED0F77E83EAFFFFFFD9C2C7B3858EFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        AF7D88FFFFFFFFFFFF7D81E9E2E3FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF565CE3FCFCFEF7F2F3A8727EFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedorgDiederClick
    end
    object SpeedorgHoeppener: TSpeedButton
      Left = 4
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
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFC9CACBE3E4E4FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFA9AAAC9EA0A2FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCED0F64F55E13C42DE363DDD4A4F
        E0A8ABF0D1D2D377787BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF777CE8242ADA2D32DB2F33DB3034DB2D32
        DB262CDA20244BFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF5156E1292FDB3236DC3236DC3236DC3236DC3236
        DC22256E252AB4787CE8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFB8BBF2252BDA3236DC3236DC3236DC3236DC3236DC272B
        92272A913236DC242BDAC1C3F4FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF4F55E12D32DB3236DC3236DC3236DC3236DC2B2FAE2326
        763236DC3236DC2E33DB4349DFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF393FDE2F34DB3236DC3236DC3236DC2E32C22023623236
        DC3236DC3236DC3135DB2F36DCFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF4147DF2E33DB3236DC3236DC3034CF1E21543236DC3236
        DC3236DC3236DC3034DB353CDDFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF6B6FE52A30DB3236DC3135D81D204C3236DC3236DC3236
        DC3236DC3236DC2C31DB5156E1FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        9FA1A3B7B8B9FFFFFFFFFFFF252BDA2E33DB1D20493135DB3236DC3236DC3236
        DC3236DC3236DC232ADAD5D5F7FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        828487C5C6C7FFFFFFFFFFFFFFFFFF1D21522B30D03236DC3236DC3236DC3236
        DC2E32DB2128DAEDEEFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        737578D5D5D6FFFFFFFFFFFF6D6E72D4D5DB4D52E12229DA252BDA252BDA232A
        DA474CE0FFFFFFF9F9FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        65676BE2E3E3FFFFFF929396B6B7B9FFFFFFFFFFFFEDEEFBB6B8F2B3B5F2DDDF
        F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        5A5C5FEEEEEFC4C4C6838588FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        4D4F53F2F2F34E5054FFFFFFFFFFFFEEEEEFD2D3D4B2B3B5F5F5F5FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFDFDFD
        3E404452545875777A595B5E494C505A5C5F76777A959799F5F6F6FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFCFCFC
        757779B3B4B6D3D4D5EFEFF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedorgHoeppenerClick
    end
    object Labelrot: TLabel
      Left = 10
      Top = 80
      Width = 12
      Height = 13
      Caption = 'rot'
    end
    object SpeedrotVersatz: TSpeedButton
      Left = 4
      Top = 148
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
        FFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9FBFBFBFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFAFB0B2999A9DFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFCCCCCE7C7E81FFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFD1D2D377787BFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFC5C5C7828487FFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF96989AB1B2B4FFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF66686CE2E2E3FFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFF7F7F8515357FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9B9C9E383A3F5355
        59C9CACBFFFFFFFFFFFFAEAFB19A9B9DFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA4A5A76E7073CFD0
        D1F9F9F9FFFFFFFFFFFF6E6F73D9DADBFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB4B5B79FA1A35557
        5BF3F3F3848688797A7D96989AFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8D8
        D956595CA4A4A64D4F53FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8486
        88B2B3B54A4C509D9EA0595B5EEFEFF0FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB3B4
        B6404246E9E9EAC2C3C4797B7EFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1E1E2686A6D9496
        98AFB0B25F616586888AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFEFEFEEFEFF0BBBBBD6B6D7067696CE0E0E1FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFF9A9B9D4F51554A4C50595B5E8D8F91DDDDDEFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFF9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
      ParentShowHint = False
      ShowHint = True
    end
    object SpeedrotDieder: TSpeedButton
      Left = 4
      Top = 100
      Width = 24
      Height = 24
      Glyph.Data = {
        76050000424D7605000000000000360000002800000015000000150000000100
        18000000000040050000232E0000232E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        CBACB2FCFBFBFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFF0F1FCFEFEFEFCFBFBBC939CFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        C39EA6CAA9B0FFFFFF9C9FEEB1B4F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF545AE3F8F9FDF3ECEE995B68FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFF8F4A59FDFCFCFFFFFF595FE3F3F3FDFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFDBDCF97176E7FFFFFFBF98A0CEAFB6FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFD4B9BFB98E97FFFFFFE0E2FA6C71E7FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF6065E4EDEDFCFFFFFF9C5F6CF0E8EAFFFFFFFFFFFFFFFFFF00FFFFFFEAF3E3
        FFFFFFFFFFFFBC939CD0B4BAFFFFFF969AEDB4B7F2FFFFFFFFFFFFFFFFFF8F93
        ECBDBFF4FFFFFFC8A6ADC5A1A8FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFDBEACF
        6EAC3DFFFFFFFFFFFFA56D79E8DADDFFFFFF989CEE5056E28B8FEC686DE6A5A8
        F0FFFFFFE4D3D6A9747FFFFFFFECF4E69DC77CCBE1BAFFFFFF00FFFFFFFFFFFF
        FAFCF96DAB3CFFFFFFFFFFFF8E4857FBF9F9FFFFFFFDFDFEC2C4F5E5E6FAFFFF
        FFFCFAFA9E6370F6F1F2FFFFFF8DBE67CBE1BAFBFCFAFFFFFF00FFFFFFFFFFFF
        FFFFFFC1DBACA7CD8AFFFFFFEFE5E78F4958D0B3B9FFFFFFFFFFFFFFFFFFE8DA
        DD914D5BFFFFFFFFFFFF94C270D4E6C6FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFAFCF96EAC3DFFFFFFFFFFFFFFFFFFBD949D955462A2697593505EA56D
        79FFFFFFFFFFFFDEECD489BC62FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFEFEFE6AAA38FFFFFFFFFFFFFFFFFFFFFFFFF7F3F4EADEE0FAF7F8FFFF
        FFFFFFFFFFFFFFD5E7C892C16EFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFD5E7C892C16EFFFFFFFFFFFFFFFFFFD3B8BE9B5D6B8E4857985966E3D2
        D6FFFFFFFFFFFFF5F9F273AF44FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        EBF3E569A937FAFCF9FFFFFFFFFFFF8E4857B98F98F2EAEBFFFFFFF4EEEFAA75
        80D9C2C6FFFFFFFFFFFFA4CB86C4DDB0FFFFFFFFFFFFFFFFFF00FFFFFFB6D59E
        7DB451F9FBF7FBFCFAFAF7F89B5D6BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFB4858FBD959EFFFFFFFFFFFF7FB654DAEACEFFFFFFFFFFFF00FFFFFFDDEBD2
        FFFFFFFFFFFFFFFFFF945260F6F0F1FFFFFFFFFFFFDDDEF9A8ABF0CFD1F7FFFF
        FFF5EFF0E7D9DCA56E7AFFFFFFFAFCF98EBE68F9FBF7FFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFA7717CE6D6DAFFFFFFFFFFFF9C9FEE6F75E7A4A8F07E82E98B8F
        ECFFFFFFFFFFFFCAAAB1C29DA5FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFE4D4D7A8737FFFFFFFFFFFFF6B70E6B1B4F2FFFFFFFFFFFFFFFFFF8186
        EACBCDF6FFFFFFF6F1F2965664FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFF9A5C69F3EBEDFFFFFFB4B7F2989CEEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF555BE3F7F8FDFFFFFFAC7A84E0CDD1FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        EDE1E4A06672FFFFFFF6F6FD575DE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFCED0F77E83EAFFFFFFD9C2C7B3858EFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        AF7D88FFFFFFFFFFFF7D81E9E2E3FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF565CE3FCFCFEF7F2F3A8727EFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
      ParentShowHint = False
      ShowHint = True
    end
    object SpeedrotHoeppener: TSpeedButton
      Left = 4
      Top = 124
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
        FFFFFFFFFFFFFFFFFFFFC9CACBE3E4E4FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFA9AAAC9EA0A2FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCED0F64F55E13C42DE363DDD4A4F
        E0A8ABF0D1D2D377787BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF777CE8242ADA2D32DB2F33DB3034DB2D32
        DB262CDA20244BFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF5156E1292FDB3236DC3236DC3236DC3236DC3236
        DC22256E252AB4787CE8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFB8BBF2252BDA3236DC3236DC3236DC3236DC3236DC272B
        92272A913236DC242BDAC1C3F4FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF4F55E12D32DB3236DC3236DC3236DC3236DC2B2FAE2326
        763236DC3236DC2E33DB4349DFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF393FDE2F34DB3236DC3236DC3236DC2E32C22023623236
        DC3236DC3236DC3135DB2F36DCFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF4147DF2E33DB3236DC3236DC3034CF1E21543236DC3236
        DC3236DC3236DC3034DB353CDDFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF6B6FE52A30DB3236DC3135D81D204C3236DC3236DC3236
        DC3236DC3236DC2C31DB5156E1FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        9FA1A3B7B8B9FFFFFFFFFFFF252BDA2E33DB1D20493135DB3236DC3236DC3236
        DC3236DC3236DC232ADAD5D5F7FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        828487C5C6C7FFFFFFFFFFFFFFFFFF1D21522B30D03236DC3236DC3236DC3236
        DC2E32DB2128DAEDEEFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        737578D5D5D6FFFFFFFFFFFF6D6E72D4D5DB4D52E12229DA252BDA252BDA232A
        DA474CE0FFFFFFF9F9FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        65676BE2E3E3FFFFFF929396B6B7B9FFFFFFFFFFFFEDEEFBB6B8F2B3B5F2DDDF
        F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        5A5C5FEEEEEFC4C4C6838588FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        4D4F53F2F2F34E5054FFFFFFFFFFFFEEEEEFD2D3D4B2B3B5F5F5F5FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFDFDFD
        3E404452545875777A595B5E494C505A5C5F76777A959799F5F6F6FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFCFCFC
        757779B3B4B6D3D4D5EFEFF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
      ParentShowHint = False
      ShowHint = True
    end
    object SpeedEigen: TSpeedButton
      Left = 4
      Top = 196
      Width = 24
      Height = 24
      Glyph.Data = {
        0E060000424D0E06000000000000360000002800000016000000160000000100
        180000000000D8050000232E0000232E00000000000000000000171A1F171A1F
        171A1F171A1F171A1F171A1F171A1F171A1F171A1F171A1F171A1F171A1F171A
        1F171A1F171A1F171A1F171A1F171A1F171A1F171A1F171A1F171A1F0000171A
        1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF171A1F
        0000171A1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF171A1F0000171A1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF171A1F0000171A1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF171A1F0000171A1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF171A1F0000171A1F171A1F171A1F171A1F171A
        1F171A1F171A1F171A1F171A1F171A1F171A1F171A1F171A1F171A1F171A1F17
        1A1F171A1F171A1F171A1F171A1F171A1F171A1F0000171A1F171A1F86827D86
        827D86827D86827D86827D86827D86827D86827D86827D86827D86827D86827D
        86827D86827D86827D86827D86827D86827D171A1F171A1F0000171A1F171A1F
        86827D1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25
        DA1D25DA1D25DA1D25DA1D25DA1D25DA86827D171A1FFFFFFF171A1F0000171A
        1FFFFFFF171A1F1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D
        25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA86827D171A1FFFFFFF171A1F
        0000171A1FFFFFFFFFFFFF171A1F86827D86827D86827D86827D86827DFFFFFF
        86827D86827DFFFFFFFFFFFF86827D86827D86827D86827D171A1FFFFFFFFFFF
        FF171A1F0000171A1FFFFFFFFFFFFF171A1F86827D86827D86827D86827D8682
        7DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF86827D86827D86827D86827D171A1FFF
        FFFFFFFFFF171A1F0000171A1FFFFFFFFFFFFFFFFFFF171A1F86827D86827D86
        827D86827D86827DFFFFFFFFFFFF86827D86827D86827D86827D86827D171A1F
        FFFFFFFFFFFFFFFFFF171A1F0000171A1FFFFFFFFFFFFFFFFFFF171A1F86827D
        86827D86827D86827D86827DFFFFFFFFFFFF86827D86827D86827D86827D171A
        1FFFFFFFFFFFFFFFFFFFFFFFFF171A1F0000171A1FFFFFFFFFFFFFFFFFFFFFFF
        FF171A1F86827D86827D86827D86827DFFFFFFFFFFFF86827D86827D86827D86
        827D171A1FFFFFFFFFFFFFFFFFFFFFFFFF171A1F0000171A1FFFFFFFFFFFFFFF
        FFFFFFFFFF171A1F86827D86827D86827DFFFFFFFFFFFFFFFFFF86827D86827D
        86827D171A1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF171A1F0000171A1FFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF171A1F86827D86827DFFFFFFFFFFFF86827D8682
        7D86827D86827D171A1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF171A1F0000171A
        1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF171A1F171A1F171A1F171A1F171A1F17
        1A1F171A1F171A1F171A1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF171A1F
        0000171A1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF171A1F0000171A1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF171A1F0000171A1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF171A1F0000171A1F171A1F171A1F171A1F171A1F171A1F
        171A1F171A1F171A1F171A1F171A1F171A1F171A1F171A1F171A1F171A1F171A
        1F171A1F171A1F171A1F171A1F171A1F0000}
      ParentShowHint = False
      ShowHint = True
    end
    object SpeedBGroesseF: TSpeedButton
      Left = 4
      Top = 292
      Width = 24
      Height = 24
      Glyph.Data = {
        E6040000424DE604000000000000360000002800000014000000140000000100
        180000000000B0040000232E0000232E00000000000000000000C7C7C7C7C7C7
        C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7
        C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7CDCDCDC7C7C7CFCCCCD0CDCDD0
        CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCD
        D0CDCDD0CDCDD0CDCDD0CDCDCDCBCBC8C8C8C7C7C76C6C6F494A4E55565A7979
        7BD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0
        CDCD5A5B5E3F414534363B55575AC7C7C75455594346497F7F81C0BDBED0CDCD
        D0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CD
        CD8E8D8F535458717375C7C7C7505155C0BEBE80808267676AB9B7B7B9B7B7B9
        B7B7B9B7B7B9B7B7B9B7B7B9B7B7B9B7B7B9B7B7B9B7B7B9B7B7A3A2A4818082
        8F8E907B7C7FC7C7C7D0CDCDD0CDCDD0CDCD60616450515555565A55565A5556
        5A55565A55565A55565A55565A55565A55565A52535646484CD0CDCDC4C2C2C1
        C1C1C7C7C7D0CDCDD0CDCDD0CDCD7B7B7D84839D9696C59796C69796C69796C6
        9796C69796C69796C69796C69696C58B8BA3727275D0CDCDCECBCBCBCBCBC7C7
        C7D0CDCDD0CDCDD0CDCD7B7B7D88869B3B41CD5B5DBA5B5DBA5B5DBA5B5DBA5B
        5DBA5B5DBA5B5DBA3B41CD9191A0727275D0CDCDCECBCBCBCBCBC7C7C7D0CDCD
        D0CDCDD0CDCD7B7B7D9492948989C56465B59F9B989F9B989F9B989F9B989F9B
        986566B58889C59C9B9C727275D0CDCDCECBCBCBCBCBC7C7C7D0CDCDD0CDCDD0
        CDCD7B7B7D949294D0CDCD4247CC99959A9F9B989F9B989F9B989B97993F44CC
        D0CDCD9C9B9C727275D0CDCDCECBCBCBCBCBC7C7C7D0CDCDD0CDCDD0CDCD7B7B
        7D949294D0CDCDA4A3C6393ECB3D42C93D42C93D42C9393ECB9B9AC6D0CDCD9C
        9B9C727275D0CDCDCECBCBCBCBCBC7C7C7D0CDCDD0CDCDD0CDCD7B7B7D8B8A8C
        CBC8C8B8B6C4C3C0C6C3C0C6C3C0C6C3C0C6C3C0C6B4B2C5CBC8C89190917272
        75D0CDCDCECBCBCBCBCBC7C7C7CBC8C8CDCACAD0CDCD67686B3D3F4343454943
        45494345494345494345494345494345494345494345493B3D4169686BBAB8B8
        878789CBCBCBC7C7C77C7C7E92919375757899989AD0CDCDD0CDCDD0CDCDD0CD
        CDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCD7C7B7E7C7C7E5F6063CB
        CBCBC7C7C777777A5D5E61908F91C6C3C4D0CDCDD0CDCDD0CDCDD0CDCDD0CDCD
        D0CDCDD0CDCDD0CDCDD0CDCDD0CDCD8E8E8F88878963646737393DCBCBCBC7C7
        C75D5E6138393E424347535458D0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0
        CDCDD0CDCDD0CDCDD0CDCD8E8E8F8786888786889B999BCBCBCBC7C7C7CECBCB
        CFCCCCD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CD
        CDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDCECBCBCBCBCBC7C7C7D0CDCDD0CDCDD0
        CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCD
        D0CDCDD0CDCDD0CDCDD0CDCDCECBCBCBCBCBC7C7C7CFCCCCD0CDCDD0CDCDD0CD
        CDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0
        CDCDD0CDCDD0CDCDCDCBCBCBCBCBC7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7
        C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7
        C7C7C7C7C7C7C7CDCDCD}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedBGroesseFClick
    end
    object SpeedBGroesseM: TSpeedButton
      Left = 4
      Top = 316
      Width = 24
      Height = 24
      Glyph.Data = {
        E6040000424DE604000000000000360000002800000014000000140000000100
        180000000000B0040000232E0000232E00000000000000000000C7C7C7C7C7C7
        C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7
        C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7CDCDCDC7C7C7CFCCCCD0CDCDD0
        CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCD
        D0CDCDD0CDCDD0CDCDD0CDCDCDCBCBC8C8C8C7C7C76C6C6F494A4E55565A7979
        7BD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0
        CDCD5A5B5E3F414534363B55575AC7C7C75455594346497F7F81C0BDBED0CDCD
        D0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CD
        CD8E8D8F535458717375C7C7C7505155C0BEBE80808267676AB9B7B7B9B7B7B9
        B7B7B9B7B7B9B7B7B9B7B7B9B7B7B9B7B7B9B7B7B9B7B7B9B7B7A3A2A4818082
        8F8E907B7C7FC7C7C7D0CDCDD0CDCDD0CDCD60616450516954556D53556C5355
        6C53556C53556C53556C50537156586658596655566446484CD0CDCDC4C2C2C1
        C1C1C7C7C7D0CDCDD0CDCDD0CDCD7B7B7D3E43CA2A32D42A32D42A32D42A32D4
        2A32D42A32D4252CD64B51C7454CCA484EC7727275D0CDCDCECBCBCBCBCBC7C7
        C7D0CDCDD0CDCDD0CDCD7B7B7D5F63B84A50C8CBCA9ACBCA9ACBCA9ACBCA9ABA
        B9A05459C5454BCB363DD06E71B7727275D0CDCDCECBCBCBCBCBC7C7C7D0CDCD
        D0CDCDD0CDCD7B7B7D8D8C9A4147CC4349CCC0C09DCAC99AA2A3A84B51C8CBCA
        9AC8C89A5358C69393A0727275D0CDCDCECBCBCBCBCBC7C7C7D0CDCDD0CDCDD0
        CDCD7B7B7D9492946266C9696DBD4D52C84349CB6B6FBDA6A7A7CBCA9A8F91B0
        8082C59C9B9C727275D0CDCDCECBCBCBCBCBC7C7C7D0CDCDD0CDCDD0CDCD7B7B
        7D949294D0CDCD9798C54A50C98E90B0A8A9A69EA0AA6F72BB9E9FC6D0CDCD9C
        9B9C727275D0CDCDCECBCBCBCBCBC7C7C7D0CDCDD0CDCDD0CDCD7B7B7D8B8A8C
        CBC8C8CBC8C8C3C0C67F81C46569C76F72C59E9EC3CBC8C8CBC8C89190917272
        75D0CDCDCECBCBCBCBCBC7C7C7CBC8C8CDCACAD0CDCD67686B3D3F4343454943
        45494345494345494345494345494345494345494345493B3D4169686BBAB8B8
        878789CBCBCBC7C7C77C7C7E92919375757899989AD0CDCDD0CDCDD0CDCDD0CD
        CDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCD7C7B7E7C7C7E5F6063CB
        CBCBC7C7C777777A5D5E61908F91C6C3C4D0CDCDD0CDCDD0CDCDD0CDCDD0CDCD
        D0CDCDD0CDCDD0CDCDD0CDCDD0CDCD8E8E8F88878963646737393DCBCBCBC7C7
        C75D5E6138393E424347535458D0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0
        CDCDD0CDCDD0CDCDD0CDCD8E8E8F8786888786889B999BCBCBCBC7C7C7CECBCB
        CFCCCCD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CD
        CDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDCECBCBCBCBCBC7C7C7D0CDCDD0CDCDD0
        CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCD
        D0CDCDD0CDCDD0CDCDD0CDCDCECBCBCBCBCBC7C7C7CFCCCCD0CDCDD0CDCDD0CD
        CDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0CDCDD0
        CDCDD0CDCDD0CDCDCDCBCBCBCBCBC7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7
        C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7
        C7C7C7C7C7C7C7CDCDCD}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedBGroesseMClick
    end
    object SpeedKopierenR: TSpeedButton
      Left = 4
      Top = 340
      Width = 24
      Height = 24
      Glyph.Data = {
        E6040000424DE604000000000000360000002800000014000000140000000100
        180000000000B0040000232E0000232E0000000000000000000068655E57534D
        57534D57534D57534D57534D57534D57534D57534D57534D57534D57534D5753
        4D57534D57534D57534D57534D57534D57534D4D4A42EFEEEE9D9D9B9D9D9B9D
        9D9B9D9D9B9D9D9B9D9D9B9D9D9B9D9D9B9D9D9B9D9D9B9D9D9B9D9D9B9D9D9B
        9D9D9B9D9D9B9D9D9B9D9D9B8F8B8855524BF6F7F7171A1F171A1F171A1F171A
        1FCAD1D5CAD1D5A8AFB3171A1F171A1F171A1FCAD1D5CAD1D5CAD1D5CAD1D5CA
        D1D5CAD1D5CAD1D59D9C9B55524BF6F7F7CAD1D5171A1F171A1FCAD1D5CAD1D5
        CAD1D5383B40171A1FB0B0B3EFF0F1EFF0F1EFF0F1EFF0F1EFF0F1D3D3D57274
        71CAD1D59D9C9B55524BF6F7F7CAD1D5171A1F171A1FCAD1D5CAD1D57B818517
        1A1F383A38D8D6D535322C35322C35322CBBB8B756524CD8D6D54D4D48CAD1D5
        9D9C9B55524BF6F7F7CAD1D5171A1F171A1FA9AEB093999A171A1F3134394141
        3CB1AEACD7D5D4F0EFEFEAE9E9D3D1D0D3D1D0B1AEAC4D4D48CAD1D59D9C9B55
        524BF6F7F7CAD1D5171A1F171A1F305B5B1D2A2E171A1F2B4F50305C5C305C5C
        305B5B938F8B86827D46443D615D571D1C19777875CAD1D59D9C9B55524BF6F7
        F7CAD1D5171A1F171A1F171A1F171A1F171A1F224D512B77792EE9EB05D5D55F
        5C5586827DAFACAA9A96937B7D7ACAD1D5CAD1D59D9C9B55524BF6F7F7CAD1D5
        171A1F171A1F05D5D593908CDBD9D89E9D9E171A1F171A1F05D5D55F5C558682
        7D413F38858785CAD1D5CAD1D5CAD1D59D9C9B55524BF6F7F7CAD1D5171A1F17
        1A1F05D5D59A9693FFFFFFFFFFFF171A1F171A1F05D5D51E1D1A22211D2A2989
        A7AED4CAD1D5CAD1D5CAD1D59D9C9B55524BF6F7F7CAD1D5171A1F171A1F05D5
        D59A9693FFFFFFB6B7B9171A1F171A1F05D5D53F404F5256DF3236DC3236DCA9
        B0DACAD1D5CAD1D59D9C9B55524BF6F7F7171A1F171A1F171A1F171A1F171A1F
        171A1F171A1F7C7E81F1F1F100D5E42A29893236DC3236DC3236DC3237DC9AA1
        DDCAD1D59D9C9B55524BF6F7F7CAD1D5CAD1D54D4D4805D5D59A9693FFFFFFFF
        FFFFFFFFFFFFFFFF00D5EB2D2EA43A40DD3236DC3236DC646AE2858BE0CAD1D5
        9D9C9B55524BF6F7F7CAD1D5CAD1D54D4D484B8C8C3B393274716AACA9A77471
        6A59564F4B8C8C4D4D48646AE23236DC3236DCCAD1D5CAD1D5CAD1D59D9C9B55
        524BF6F7F7CAD1D5CAD1D54D4D4820C4C473706957544D22211D57544D737069
        20C4C44D4D48646AE23236DC3236DCCAD1D5CAD1D5CAD1D59D9C9B55524BF6F7
        F7CAD1D5CAD1D55A5A5623B1B122BEBE4F4D451615134F4D4522BEBE16B1D42E
        33DB353BDD353BDDADB4D9CAD1D5CAD1D5CAD1D59D9C9B55524BF6F7F7CAD1D5
        CAD1D5ABAEAE5B5B574E4F4A4E4F4A4E4F4A4E4F4A4E4F4A5B5B57ABAEAECAD1
        D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D59D9C9B55524BF6F7F7CAD1D5CAD1D5CA
        D1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5
        CAD1D5CAD1D5CAD1D5CAD1D59D9C9B55524BF6F7F7CAD1D5CAD1D5CAD1D5CAD1
        D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CA
        D1D5CAD1D5CAD1D59D9C9B55524BFDFDFDF7F7F8F7F7F8F7F7F8F7F7F8F7F7F8
        F7F7F8F7F7F8F7F7F8F7F7F8F7F7F8F7F7F8F7F7F8F7F7F8F7F7F8F7F7F8F7F7
        F8F7F7F8F0F0F065615A}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedKopierenRClick
    end
    object SpeedKopierenM: TSpeedButton
      Left = 4
      Top = 364
      Width = 24
      Height = 24
      Glyph.Data = {
        E6040000424DE604000000000000360000002800000014000000140000000100
        180000000000B0040000232E0000232E0000000000000000000068655E57534D
        57534D57534D57534D57534D57534D57534D57534D57534D57534D57534D5753
        4D57534D57534D57534D57534D57534D57534D4D4A42EFEEEE9D9D9B9D9D9B9D
        9D9B9D9D9B9D9D9B9D9D9B9D9D9B9D9D9B9D9D9B9D9D9B9D9D9B9D9D9B9D9D9B
        9D9D9B9D9D9B9D9D9B9D9D9B8F8B8855524BF6F7F7171A1F171A1F171A1FCAD1
        D5383B40BFC6CA171A1F171A1F171A1F171A1FCAD1D5CAD1D5CAD1D5CAD1D5CA
        D1D5CAD1D5CAD1D59D9C9B55524BF6F7F7CAD1D5171A1FCAD1D5A8AFB3171A1F
        878C91CAD1D5171A1F171A1FEFF0F1EFF0F1EFF0F1EFF0F1EFF0F1D3D3D57274
        71CAD1D59D9C9B55524BF6F7F7CAD1D5171A1FCAD1D5656A6E171A1F4E5357CA
        D1D5171A1F171A1F35322C35322C35322CBBB8B756524CD8D6D54D4D48CAD1D5
        9D9C9B55524BF6F7F7CAD1D5171A1FC1C6C9171A1F171A1F3A3E42A5ABAC171A
        1F171A1FD7D5D4F0EFEFEAE9E9D3D1D0D3D1D0B1AEAC4D4D48CAD1D59D9C9B55
        524BF6F7F7CAD1D5171A1F5F5F5F171A1F203235253F41284749171A1F171A1F
        305B5B938F8B86827D46443D615D571D1C19777875CAD1D59D9C9B55524BF6F7
        F7CAD1D5171A1F27292B171A1F308C8E37ABAC24585B171A1F171A1F05D5D55F
        5C5586827DAFACAA9A96937B7D7ACAD1D5CAD1D59D9C9B55524BF6F7F7CAD1D5
        171A1F171A1F171A1F93908CDBD9D8171A1F171A1F171A1F05D5D55F5C558682
        7D413F38858785CAD1D5CAD1D5CAD1D59D9C9B55524BF6F7F7171A1F171A1F17
        1A1F0F6B6E9A9693FFFFFF6D6F72171A1F171A1F171A1F1E1D1A22211D2A2989
        A7AED4CAD1D5CAD1D5CAD1D59D9C9B55524BF6F7F7CAD1D5CAD1D54D4D4805D5
        D59A9693FFFFFFFFFFFFFFFFFFFFFFFF05D5D53F404F5256DF3236DC3236DCA9
        B0DACAD1D5CAD1D59D9C9B55524BF6F7F7CAD1D5CAD1D54D4D4805D5D59A9693
        FFFFFFFFFFFFFFFFFFFFFFFF00D5E42A29893236DC3236DC3236DC3237DC9AA1
        DDCAD1D59D9C9B55524BF6F7F7CAD1D5CAD1D54D4D4805D5D59A9693FFFFFFFF
        FFFFFFFFFFFFFFFF00D5EB2D2EA43A40DD3236DC3236DC646AE2858BE0CAD1D5
        9D9C9B55524BF6F7F7CAD1D5CAD1D54D4D484B8C8C3B393274716AACA9A77471
        6A59564F4B8C8C4D4D48646AE23236DC3236DCCAD1D5CAD1D5CAD1D59D9C9B55
        524BF6F7F7CAD1D5CAD1D54D4D4820C4C473706957544D22211D57544D737069
        20C4C44D4D48646AE23236DC3236DCCAD1D5CAD1D5CAD1D59D9C9B55524BF6F7
        F7CAD1D5CAD1D55A5A5623B1B122BEBE4F4D451615134F4D4522BEBE16B1D42E
        33DB353BDD353BDDADB4D9CAD1D5CAD1D5CAD1D59D9C9B55524BF6F7F7CAD1D5
        CAD1D5ABAEAE5B5B574E4F4A4E4F4A4E4F4A4E4F4A4E4F4A5B5B57ABAEAECAD1
        D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D59D9C9B55524BF6F7F7CAD1D5CAD1D5CA
        D1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5
        CAD1D5CAD1D5CAD1D5CAD1D59D9C9B55524BF6F7F7CAD1D5CAD1D5CAD1D5CAD1
        D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CA
        D1D5CAD1D5CAD1D59D9C9B55524BFDFDFDF7F7F8F7F7F8F7F7F8F7F7F8F7F7F8
        F7F7F8F7F7F8F7F7F8F7F7F8F7F7F8F7F7F8F7F7F8F7F7F8F7F7F8F7F7F8F7F7
        F8F7F7F8F0F0F065615A}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedKopierenMClick
    end
    object SpeedPlotter: TSpeedButton
      Left = 4
      Top = 436
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
    object SpeedKoordinaten: TSpeedButton
      Left = 4
      Top = 484
      Width = 24
      Height = 24
      Glyph.Data = {
        76050000424D7605000000000000360000002800000015000000150000000100
        18000000000040050000232E0000232E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        8C90EC7378E87378E87378E87378E8666BE56F75E77378E87378E87378E87378
        E87277E76469E57378E87378E87378E8B4B7F2FFFFFFFFFFFF00FFFFFFFFFFFF
        585EE3C2C4F5D9DBF8D9DBF8D9DBF86268E5BCBFF3D9DBF8D9DBF8D9DBF8D9DB
        F8D6D8F7494FE1D9DBF8D9DBF8D9DBF8EBECFBFFFFFFFFFFFF00FFFFFFFFFFFF
        585EE3F5F5FDFFFFFFFFFFFFFFFFFF777CE8DEDFF9FFFFFFFFFFFFFFFFFFFFFF
        FFFCFCFE7075E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        585EE3F5F5FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        585EE3F5F5FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        474DE0585DE3D9DAF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        565CE2E9E9FBFCFCFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        585EE3F5F5FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        585EE3F5F5FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        585EE3F5F5FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        585EE3F5F5FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        585EE3F5F5FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        575DE2F1F1FCFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        484FE04F55E2C6C8F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        585EE3F5F5FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        585EE3F5F5FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        585EE3F5F5FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        F9F9FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedKoordinatenClick
    end
    object SpeedHintergrund: TSpeedButton
      Left = 4
      Top = 508
      Width = 24
      Height = 24
      Glyph.Data = {
        76050000424D7605000000000000360000002800000015000000150000000100
        18000000000040050000232E0000232E00000000000000000000B5B6CE9899B7
        9899B89899B89899B89899B89899B89899B89899B89899B89899B89899B89899
        B89899B89899B89899B89899B89899B89899B89899B7D9D9E700BABBCDA0A1C4
        9798CA9798CA9798CA9798CA9798CA9798CA9798CA9798CA9798CA9798CA9798
        CA9798CA9798CA9798CA9798CA9798CA9798CA9395B2EBEBF200BABBCD5154B8
        3236DC3236DC3236DC3236DC3236DC3236DC3236DC3236DC3236DC3236DC3236
        DC3236DC3236DC3236DC3236DC3236DC3236DC232674EAEBF100BABBCD5154B8
        3236DC2D31BF2D30BA2D31BA2D31BA2D31BA2D31BA2D31BA2D31BA2D31BA2D31
        BA2D31BA2D31BA2D31BA2D31BC3236DC3236DC232674EAEBF100BABBCD5154B8
        3236DC2F325B2A2D382B2E3A2B2E3A2528322427312B2E3A2B2E3A2B2E3A2B2E
        3A1F222A2A2D392B2E3A2E313D5154B33236DC232674EAEBF100BABBCD5154B8
        3236DC303357707275E5E5E6E5E5E69C9DA08C8D90E5E5E6E5E5E6E5E5E6E5E5
        E6484A4EE0E1E2E5E5E68385885456AB3236DC232674EAEBF100BABBCD5154B8
        3236DC3033577A7B7EFFFFFFFFFFFFC1C2C3B3B4B6FFFFFFFFFFFFFFFFFFFFFF
        FF959799FCFCFCFFFFFF8D8F915456AB3236DC232674EAEBF100BABBCD5154B8
        3236DC2E31535B5D61CACBCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF8D8F915456AB3236DC232674EAEBF100BABBCD5154B8
        3236DC2D30514A4C50AFB0B2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF8D8F915456AB3236DC232674EAEBF100BABBCD5154B8
        3236DC3033577A7B7EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF8D8F915456AB3236DC232674EAEBF100BABBCD5154B8
        3236DC3033577A7B7EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF8D8F915456AB3236DC232674EAEBF100BABBCD5154B8
        3236DC3033577A7B7EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF8D8F915456AB3236DC232674EAEBF100BABBCD5154B8
        3236DC3033577A7B7EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF8D8F915456AB3236DC232674EAEBF100BABBCD5154B8
        3236DC2F32566F7073ECEDEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF8D8F915456AB3236DC232674EAEBF100BABBCD5154B8
        3236DC2D305137393E949597FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF8D8F915456AB3236DC232674EAEBF100BABBCD5154B8
        3236DC3033577A7B7EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF8D8F915456AB3236DC232674EAEBF100BABBCD5154B8
        3236DC303357636669BBBCBEBBBCBEBBBCBEBBBCBEBBBCBEBBBCBEBBBCBEBBBC
        BEBBBCBEBBBCBEBBBCBE75777A5456AB3236DC232674EAEBF100BABBCD5154B8
        3236DC474AAC5558855759875759875759875759875759875759875759875759
        87575987575987575987575A884B4EBE3236DC232674EAEBF100BABBCD5154B8
        3236DC3236DC3236DC3236DC3236DC3236DC3236DC3236DC3236DC3236DC3236
        DC3236DC3236DC3236DC3236DC3236DC3236DC232674EAEBF100BABBCD8284B1
        6264AF6264AF6264AF6264AF6264AF6264AF6264AF6264AF6264AF6264AF6264
        AF6264AF6264AF6264AF6264AF6264AF6264AF63658FEBEBF200C1C2D6BABBCF
        BABBCFBABBCFBABBCFBABBCFBABBCFBABBCFBABBCFBABBCFBABBCFBABBCFBABB
        CFBABBCFBABBCFBABBCFBABBCFBABBCFBABBCFBABBCFE3E3ED00}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedHintergrundClick
    end
    object SpeedDiagramm: TSpeedButton
      Left = 4
      Top = 532
      Width = 24
      Height = 24
      Glyph.Data = {
        76050000424D7605000000000000360000002800000015000000150000000100
        18000000000040050000232E0000232E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        7C7E8564666D64666D64666D64666D585A6161636A64666D64666D64666D6466
        6D63656C56585F64666D64666D64666D9496A2FFFFFFFFFFFF00FFFFFFFFFFFF
        2A2D3C1C1F451C1F4B1C1F4B1C1F4B181B2F1B1E441C1F4B1C1F4B1C1F4B1C1F
        4B1B1E4A181B291C1F4B1C1F4B1C1F4B242745FFFFFFFFFFFF00FFFFFFFFFFFF
        2B2E3D272B963236DC3236DC3236DC2124652D31BF3236DC3236DC3236DC3236
        DC3135D91D204B3236DC3236DC3236DC262949FFFFFFFFFFFF00FFFFFFFFFFFF
        2B2E3D272B963236DC3236DC3236DC21256B2E31C03236DC3236DC3236DC3236
        DC3135D922256F3236DC3236DC3236DC262949FFFFFFFFFFFF00FFFFFFFFFFFF
        2B2E3D272B963236DC3236DC3236DC3236DC3236DC3236DC3236DC3236DC3236
        DC3236DC3236DC3236DC3236DC3236DC262949FFFFFFFFFFFF00FFFFFFFFFFFF
        2528341B1E3F1F22593236DC3236DC3236DC3236DC3236DC3236DC3236DC3236
        DC3236DC3236DC3236DC3236DC3236DC262949FFFFFFFFFFFF00FFFFFFFFFFFF
        2A2D3C262A8F3034D33236DC3236DC3236DC3236DC3236DC3236DC3236DC3236
        DC3236DC3236DC3236DC3236DC3236DC262949FFFFFFFFFFFF00FFFFFFFFFFFF
        2B2E3D272B963236DC3236DC3236DC3236DC3236DC3236DC3236DC3236DC3236
        DC3236DC3236DC3236DC3236DC3236DC262949FFFFFFFFFFFF00FFFFFFFFFFFF
        2B2E3D272B963236DC3236DC3236DC3236DC3236DC3236DC3236DC3236DC3236
        DC3236DC3236DC3236DC3236DC3236DC262949FFFFFFFFFFFF00FFFFFFFFFFFF
        2B2E3D272B963236DC3236DC3236DC3236DC3236DC3236DC3236DC3236DC3236
        DC3236DC3236DC3236DC3236DC3236DC262949FFFFFFFFFFFF00FFFFFFFFFFFF
        2B2E3D272B963236DC3236DC3236DC3236DC3236DC3236DC3236DC3236DC3236
        DC3236DC3236DC3236DC3236DC3236DC262949FFFFFFFFFFFF00FFFFFFFFFFFF
        2B2E3D272B963236DC3236DC3236DC3236DC3236DC3236DC3236DC3236DC3236
        DC3236DC3236DC3236DC3236DC3236DC262949FFFFFFFFFFFF00FFFFFFFFFFFF
        2A2D3C262A943135D93236DC3236DC3236DC3236DC3236DC3236DC3236DC3236
        DC3236DC3236DC3236DC3236DC3236DC262949FFFFFFFFFFFF00FFFFFFFFFFFF
        2528351A1D3A1F225A3236DC3236DC3236DC3236DC3236DC3236DC3236DC3236
        DC3236DC3236DC3236DC3236DC3236DC262949FFFFFFFFFFFF00FFFFFFFFFFFF
        2B2E3D272B963236DC3236DC3236DC3236DC3236DC3236DC3236DC3236DC3236
        DC3236DC3236DC3236DC3236DC3236DC262949FFFFFFFFFFFF00FFFFFFFFFFFF
        2B2E3D272B963236DC3236DC3236DC3236DC3236DC3236DC3236DC3236DC3236
        DC3236DC3236DC3236DC3236DC3236DC262949FFFFFFFFFFFF00FFFFFFFFFFFF
        2A2D3C21246A262A8C262A8C262A8C262A8C262A8C262A8C262A8C262A8C262A
        8C262A8C262A8C262A8C262A8C262A8C262949FFFFFFFFFFFF00FFFFFFFFFFFF
        ABACC77C7DA67C7DA67C7DA67C7DA67C7DA67C7DA67C7DA67C7DA67C7DA67C7D
        A67C7DA67C7DA67C7DA67C7DA67C7DA67D7FA6FFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedDiagrammClick
    end
    object SpeedEinrichten: TSpeedButton
      Left = 4
      Top = 580
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
    object SpeedDruckenR: TSpeedButton
      Left = 4
      Top = 602
      Width = 24
      Height = 24
      Glyph.Data = {
        E6040000424DE604000000000000360000002800000014000000140000000100
        180000000000B0040000232E0000232E00000000000000000000F1F2F2CAD1D5
        CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1
        D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5F1F2F2CAD1D5CAD1D5CA
        D1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5
        CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5F1F2F2BCC1C4B1B6B8B1B6B8B1B6
        B8B1B6B8B1B6B8B1B6B8B1B6B8B1B6B8B1B6B8B1B6B8B1B6B8B1B6B8B1B6B8B1
        B6B8B1B6B8B1B6B8BCC1C4CAD1D5F1F2F2ADAEAE6C696265625B65625B65625B
        65625B65625B65625B65625B65625B65625B65625B65625B65625B65625B6562
        5B615D5781807ECAD1D5F1F2F2E9EBEDC0C3C5B6BABCB6BABCB6BABCB6BABCB6
        BABCB6BABCB6BABCB6BABCB6BABCB6BABCB6BABCB6BABCB6BABCB6BABC84817C
        81807ECAD1D5F1F2F2E9EBEDD1D7DB171A1F171A1F171A1F171A1F8F91904B4E
        50171A1F171A1F8F91908F91908F91908F9190CAD1D5CAD1D588858181807ECA
        D1D5F1F2F2E9EBEDD1D7DBCAD1D5171A1F171A1F79756F736F6A171A1F292A2D
        79756F79756F79756F79756F79756F7A7B78CAD1D588858181807ECAD1D5F1F2
        F2E9EBEDD1D7DBCAD1D5171A1F171A1FA19D9A424245171A1F7E7C7BA19D9AA1
        9D9AA19D9AA19D9AA19D9A45443FCAD1D588858181807ECAD1D5F1F2F2E9EBED
        D1D7DBCAD1D5171A1F171A1F5C5A55171A1F313233706C6665615A68655E706C
        6668655E65615A45443FCAD1D588858181807ECAD1D5F1F2F2E9EBEDD1D7DBCA
        D1D5171A1F171A1F171A1F171A1FC7C6C5DCDAD9E7E6E6E3E2E2DCDAD9A3A4EB
        BCBCEC45443FCAD1D588858181807ECAD1D5F1F2F2E9EBEDD1D7DBCAD1D5171A
        1F171A1FA29E9B6D6C6B171A1F31333795918E9B9794A7A4A19B979495918E45
        443FCAD1D588858181807ECAD1D5F1F2F2E9EBEDD1D7DBCAD1D5171A1F171A1F
        3E3E3988847F171A1F171A1F9D99969D999688847F3E3E397D7E7C929595CAD1
        D588858181807ECAD1D5F1F2F2E9EBEDD1D7DBCAD1D5171A1F171A1F5E5F5A8E
        8D8E171A1F171A1F88847FA09C99C5C2C15E5F5ACAD1D5CAD1D5CAD1D5888581
        81807ECAD1D5F1F2F2E9EBEDD1D7DB171A1F171A1F171A1F171A1F171A1F4E4E
        4FD7D5D495918E95918E817E785E5F5ACAD1D5CAD1D5CAD1D588858181807ECA
        D1D5F1F2F2E9EBEDD1D7DBCAD1D5CAD1D5CAD1D55E5F5AD3D1D0BBB8B7EDECEB
        403D36BBB8B73B3933AAB0B1CAD1D5CAD1D5CAD1D588858181807ECAD1D5F1F2
        F2E9EBEDD1D7DBCAD1D5CAD1D5CAD1D55E5F5AC5C2C18E8A86F3F2F23E3B3476
        736EB7BCBECAD1D5CAD1D5CAD1D5CAD1D588858181807ECAD1D5F1F2F2E9EBED
        D1D7DBCAD1D5CAD1D5CAD1D55E5F5A625E58706C66706C662F2E2AA8ADAFCAD1
        D5CAD1D5CAD1D5CAD1D5CAD1D588858181807ECAD1D5F1F2F2E9EBEDD1D7DBCA
        D1D5CAD1D5CAD1D5BCC2C4B2B7B9B2B7B9B2B7B9B9BEC1CAD1D5CAD1D5CAD1D5
        CAD1D5CAD1D5CAD1D588858181807ECAD1D5F1F2F2E9EBEDD1D7DBCAD1D5CAD1
        D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CA
        D1D5CAD1D588858181807ECAD1D5F1F2F2E9EBEDF2F3F4F1F2F2F1F2F2F1F2F2
        F1F2F2F1F2F2F1F2F2F1F2F2F1F2F2F1F2F2F1F2F2F1F2F2F1F2F2F1F2F2F1F2
        F2CBC8C781807ECAD1D5}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedDruckenRClick
    end
    object SpeedDruckenM: TSpeedButton
      Left = 4
      Top = 628
      Width = 24
      Height = 24
      Glyph.Data = {
        E6040000424DE604000000000000360000002800000014000000140000000100
        180000000000B0040000232E0000232E00000000000000000000F1F2F2CAD1D5
        CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1
        D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5F1F2F2CAD1D5CAD1D5CA
        D1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5
        CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5F1F2F2BCC1C4B1B6B8B1B6B8B1B6
        B8B1B6B8B1B6B8B1B6B8B1B6B8B1B6B8B1B6B8B1B6B8B1B6B8B1B6B8B1B6B8B1
        B6B8B1B6B8B1B6B8BCC1C4CAD1D5F1F2F2ADAEAE6C696265625B65625B65625B
        65625B65625B65625B65625B65625B65625B65625B65625B65625B65625B6562
        5B615D5781807ECAD1D5F1F2F2E9EBEDC0C3C5B6BABCB6BABCB6BABCB6BABCB6
        BABCB6BABCB6BABCB6BABCB6BABCB6BABCB6BABCB6BABCB6BABCB6BABC84817C
        81807ECAD1D5F1F2F2E9EBED171A1F171A1F171A1F4B4E50434649171A1F171A
        1F171A1F8F91908F91908F91908F91908F9190CAD1D5CAD1D588858181807ECA
        D1D5F1F2F2E9EBEDD1D7DB171A1F7A7B78171A1F292A2D79756F171A1F79756F
        79756F79756F79756F79756F79756F7A7B78CAD1D588858181807ECAD1D5F1F2
        F2E9EBEDD1D7DB171A1F3939374A4B4D5353547E7C7B171A1FA19D9AA19D9AA1
        9D9AA19D9AA19D9AA19D9A45443FCAD1D588858181807ECAD1D5F1F2F2E9EBED
        D1D7DB171A1F2B2C2D5452505755513E3D3C171A1F706C6665615A68655E706C
        6668655E65615A45443FCAD1D588858181807ECAD1D5F1F2F2E9EBEDD1D7DB17
        1A1F171A1FDCDAD9E0DEDD3D3F43171A1FDCDAD9E7E6E6E3E2E2DCDAD9A3A4EB
        BCBCEC45443FCAD1D588858181807ECAD1D5F1F2F2E9EBED171A1F171A1F2829
        2BA7A4A1A29E9B464648171A1F171A1F95918E9B9794A7A4A19B979495918E45
        443FCAD1D588858181807ECAD1D5F1F2F2E9EBEDD1D7DBCAD1D59295957D7E7C
        3E3E3988847F9D99969D99969D99969D999688847F3E3E397D7E7C929595CAD1
        D588858181807ECAD1D5F1F2F2E9EBEDD1D7DBCAD1D5CAD1D5CAD1D55E5F5AC5
        C2C159564F59564F88847FA09C99C5C2C15E5F5ACAD1D5CAD1D5CAD1D5888581
        81807ECAD1D5F1F2F2E9EBEDD1D7DBCAD1D5CAD1D5CAD1D55E5F5ACECBCA9591
        8EE3E1E095918E95918E817E785E5F5ACAD1D5CAD1D5CAD1D588858181807ECA
        D1D5F1F2F2E9EBEDD1D7DBCAD1D5CAD1D5CAD1D55E5F5AD3D1D0BBB8B7EDECEB
        403D36BBB8B73B3933AAB0B1CAD1D5CAD1D5CAD1D588858181807ECAD1D5F1F2
        F2E9EBEDD1D7DBCAD1D5CAD1D5CAD1D55E5F5AC5C2C18E8A86F3F2F23E3B3476
        736EB7BCBECAD1D5CAD1D5CAD1D5CAD1D588858181807ECAD1D5F1F2F2E9EBED
        D1D7DBCAD1D5CAD1D5CAD1D55E5F5A625E58706C66706C662F2E2AA8ADAFCAD1
        D5CAD1D5CAD1D5CAD1D5CAD1D588858181807ECAD1D5F1F2F2E9EBEDD1D7DBCA
        D1D5CAD1D5CAD1D5BCC2C4B2B7B9B2B7B9B2B7B9B9BEC1CAD1D5CAD1D5CAD1D5
        CAD1D5CAD1D5CAD1D588858181807ECAD1D5F1F2F2E9EBEDD1D7DBCAD1D5CAD1
        D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CAD1D5CA
        D1D5CAD1D588858181807ECAD1D5F1F2F2E9EBEDF2F3F4F1F2F2F1F2F2F1F2F2
        F1F2F2F1F2F2F1F2F2F1F2F2F1F2F2F1F2F2F1F2F2F1F2F2F1F2F2F1F2F2F1F2
        F2CBC8C781807ECAD1D5}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedDruckenMClick
    end
    object SpeedKaliber: TSpeedButton
      Left = 4
      Top = 460
      Width = 24
      Height = 24
      Glyph.Data = {
        0E060000424D0E06000000000000360000002800000016000000160000000100
        180000000000D8050000232E0000232E00000000000000000000A9A9AAA9A9AA
        A9A9AAA9A9AAA9A9AAA9A9AAA9A9AAA9A9AAA9A9AAA9A9AAA9A9AAA9A9AAA9A9
        AAA9A9AAA9A9AAA9A9AAA9A9AAA9A9AAA9A9AAA9A9AAA9A9AAA9A9AA0000A9A9
        AAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA9A9AA
        0000A9A9AAFFFFFF2C3A212C3A212C3A212C3A212C3A212C3A212C3A212C3A21
        2C3A212C3A212C3A212C3A212C3A212C3A212C3A212C3A212C3A212C3A21FFFF
        FFA9A9AA0000A9A9AAFFFFFF2C3A21FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2C
        3A21FFFFFFA9A9AA0000A9A9AAFFFFFF2C3A21FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF2C3A212C3A21FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF2C3A21FFFFFFA9A9AA0000A9A9AAFFFFFF2C3A21FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF2C3A212C3A21FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF2C3A21FFFFFFA9A9AA0000A9A9AAFFFFFF2C3A21FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2C3A212C3A21FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF2C3A21FFFFFFA9A9AA0000A9A9AAFFFFFF2C3A21FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2C3A212C3A21FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2C3A21FFFFFFA9A9AA0000A9A9AAFFFFFF
        2C3A21FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2C3A212C3A212C3A21FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2C3A21FFFFFFA9A9AA0000A9A9
        AAFFFFFF2C3A21FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2C3A21171A1F2C
        3A21FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2C3A21FFFFFFA9A9AA
        0000A9A9AAFFFFFF2C3A21FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        2C3A21FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2C3A21FFFF
        FFA9A9AA0000A9A9AAFFFFFF2C3A21FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF2C3A21FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2C
        3A21FFFFFFA9A9AA0000A9A9AAFFFFFF2C3A21FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF2C3A212C3A21FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF2C3A21FFFFFFA9A9AA0000A9A9AAFFFFFF2C3A21FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF2C3A212C3A212C3A21FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF2C3A21FFFFFFA9A9AA0000A9A9AAFFFFFF2C3A21FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2C3A21FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF2C3A21FFFFFFA9A9AA0000A9A9AAFFFFFF2C3A21FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2C3A21FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2C3A21FFFFFFA9A9AA0000A9A9AAFFFFFF
        2C3A21FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2C3A21FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2C3A21FFFFFFA9A9AA0000A9A9
        AAFFFFFF2C3A21FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2C3A21FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2C3A21FFFFFFA9A9AA
        0000A9A9AAFFFFFF2C3A21FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        2C3A21FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2C3A21FFFF
        FFA9A9AA0000A9A9AAFFFFFF2C3A212C3A212C3A212C3A212C3A212C3A212C3A
        212C3A212C3A212C3A212C3A212C3A212C3A212C3A212C3A212C3A212C3A212C
        3A21FFFFFFA9A9AA0000A9A9AAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFA9A9AA0000A9A9AAA9A9AAA9A9AAA9A9AAA9A9AAA9A9AA
        A9A9AAA9A9AAA9A9AAA9A9AAA9A9AAA9A9AAA9A9AAA9A9AAA9A9AAA9A9AAA9A9
        AAA9A9AAA9A9AAA9A9AAA9A9AAA9A9AA0000}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedKaliberClick
    end
    object SpeedRahmen: TSpeedButton
      Left = 4
      Top = 556
      Width = 24
      Height = 24
      Glyph.Data = {
        E6040000424DE604000000000000360000002800000014000000140000000100
        180000000000B004000011170000111700000000000000000000E4E4E5E4E4E5
        E4E4E5E4E4E5E4E4E5E4E4E5E4E4E5E4E4E5E4E4E5E4E4E5E4E4E5E4E4E5E4E4
        E5E4E4E5E4E4E5E4E4E5E4E4E5E4E4E5E4E4E5FFFFFFE4E4E5FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E4E5E4E4E5FFFFFF9DA5F0818BEBBCC1
        F4BCC1F4BCC1F4BCC1F4BCC1F4BCC1F4BCC1F4BCC1F4BCC1F4BCC1F4BCC1F4BC
        C1F4BCC1F4FFFFFFFFFFFFE4E4E5E4E4E5FFFFFF9DA5F0636FE68D96ED8D96ED
        8D96ED8D96ED8D96ED8D96ED8D96ED8D96ED8D96ED8D96ED8D96ED8D96ED838D
        EB5F6BE6FFFFFFE4E4E5E4E4E5FFFFFF9DA5F0ACB2F2FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBECFB5F6BE6
        FFFFFFE4E4E5E4E4E5FFFFFF9DA5F0ACB2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBECFB5F6BE6FFFFFFE4
        E4E5E4E4E5FFFFFF9DA5F0ACB2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBECFB5F6BE6FFFFFFE4E4E5E4E4
        E5FFFFFF9DA5F0ACB2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFEBECFB5F6BE6FFFFFFE4E4E5E4E4E5FFFFFF
        9DA5F0ACB2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFEBECFB5F6BE6FFFFFFE4E4E5E4E4E5FFFFFF9DA5F0AC
        B2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFEBECFB5F6BE6FFFFFFE4E4E5E4E4E5FFFFFF9DA5F0ACB2F2FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFEBECFB5F6BE6FFFFFFE4E4E5E4E4E5FFFFFF9DA5F0ACB2F2FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEC
        FB5F6BE6FFFFFFE4E4E5E4E4E5FFFFFF9DA5F0ACB2F2FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBECFB5F6BE6
        FFFFFFE4E4E5E4E4E5FFFFFF9DA5F0ACB2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBECFB5F6BE6FFFFFFE4
        E4E5E4E4E5FFFFFF9DA5F0ACB2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBECFB5F6BE6FFFFFFE4E4E5E4E4
        E5FFFFFF9DA5F0ACB2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFEBECFB5F6BE6FFFFFFE4E4E5E4E4E5FFFFFF
        6773E76773E76773E76773E76773E76773E76773E76773E76773E76773E76773
        E76773E76773E76773E7EBECFB5F6BE6FFFFFFE4E4E5E4E4E5FFFFFFE3E5FAE3
        E5FAE3E5FAE3E5FAE3E5FAE3E5FAE3E5FAE3E5FAE3E5FAE3E5FAE3E5FAE3E5FA
        E3E5FAE3E5FAFFFFFFFFFFFFFFFFFFE4E4E5FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFE4E4E5E4E4E5E4E4E5E4E4E5E4E4E5E4E4E5E4E4E5
        E4E4E5E4E4E5E4E4E5E4E4E5E4E4E5E4E4E5E4E4E5E4E4E5E4E4E5E4E4E5E4E4
        E5E4E4E5FFFFFFFFFFFF}
      OnClick = SpeedRahmenClick
    end
    object SpeedHilfe: TSpeedButton
      Left = 32
      Top = 76
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
      Left = 32
      Top = 100
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
      Left = 32
      Top = 124
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
    object SpeedIspeichern: TSpeedButton
      Left = 4
      Top = 388
      Width = 24
      Height = 24
      Glyph.Data = {
        72010000424D7201000000000000760000002800000015000000150000000100
        040000000000FC000000232E0000232E00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00F00000000000
        00000000F0000000000700000000000000000000000700000FFF000000000000
        000700000FFF000000000000000700000FFF000000000000000700000FFF0000
        0000000000000000000000000000000FFFFFFFFFFFFFFF000000000FFFFFFFF9
        FFFFFF000000000FFFFFFFF9FFFFFF000000000FFFFFFFF9FFFFFF000000000F
        FFFFFFF9FFFFFF000000000FFFFFFFF9FFFFFF000000000FFFFFFFF9FFFFFF00
        0000000FFFFFF9999FFFFF000000000FFFF99FFFF99FFF000000000FF99FFFFF
        FFF9FF000000000F9FFFFFFFFFFF9F0000000099FFFFFFFFFFFFF9000000000F
        FFFFFFFFFFFFFF000000F0000000000000000000F000}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedIspeichernClick
    end
    object SpeedMspeichern: TSpeedButton
      Left = 4
      Top = 412
      Width = 24
      Height = 24
      Glyph.Data = {
        72010000424D7201000000000000760000002800000015000000150000000100
        040000000000FC000000232E0000232E00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00F00000000000
        00000000F0000000000700000000000000000000000700000FFF000000000000
        000700000FFF000000000000000700000FFF000000000000000700000FFF0000
        000000000000000000000000000000FFFFFFFFFFFFFFFFF0000000FFFFFFFFFF
        FFFFFFF00000000000000000000000F00000000BBBBBBB09999990F000000000
        BBBBB009999990F0000000F00BBB0080099000F0000000F00000888880080FF0
        000000FF008888888880FFF0000000FFFF008888800FFFF0000000FFFFFF0000
        0FFFFFF0000000FFFFFFFFFFFFFFFFF0000000FFFFFFFFFFFFFFFFF000000000
        00000000000000000000F0000000000000000000F000}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedMspeichernClick
    end
    object SpeedFont: TSpeedButton
      Left = 4
      Top = 244
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
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedFontClick
    end
    object SpeedText: TSpeedButton
      Left = 32
      Top = 2
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
      Left = 32
      Top = 26
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
  end
  object PanelDaten: TPanel
    Left = 752
    Top = 170
    Width = 240
    Height = 220
    TabOrder = 10
    object LabelAnzahl1: TLabel
      Left = 26
      Top = 190
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
    object LabelZahl2: TLabel
      Left = 160
      Top = 190
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
      Left = 20
      Top = 10
      Width = 113
      Height = 21
      Caption = 'Liste der Daten'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object ListBoxDaten: TListBox
      Left = 20
      Top = 35
      Width = 201
      Height = 155
      Color = clAqua
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ItemHeight = 21
      ParentFont = False
      TabOrder = 0
    end
  end
  object PanelIspeichern: TPanel
    Left = 240
    Top = 0
    Width = 410
    Height = 80
    TabOrder = 13
    object ListBoxItSpeichern: TListBox
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
      OnClick = ListBoxItSpeichernClick
    end
    object ButtonIabbrechen: TButton
      Left = 320
      Top = 30
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
      OnClick = ButtonIabbrechenClick
    end
  end
  object PanelMspeichern: TPanel
    Left = 240
    Top = 0
    Width = 410
    Height = 80
    TabOrder = 14
    object ListBoxMSpeichern: TListBox
      Left = 10
      Top = 9
      Width = 300
      Height = 61
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ItemHeight = 19
      ParentFont = False
      TabOrder = 0
      OnClick = ListBoxMSpeichernClick
    end
    object ButtonMabbrechen: TButton
      Left = 320
      Top = 30
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
      OnClick = ButtonMabbrechenClick
    end
  end
  object PanelText: TPanel
    Left = 110
    Top = 368
    Width = 561
    Height = 41
    TabOrder = 15
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
  object MainMenu1: TMainMenu
    Left = 790
    Top = 40
    object Dplotten: TMenuItem
      Caption = 'Daten plotten'
      object orgDaten: TMenuItem
        Caption = 'Originaldaten'
        object orgDieder: TMenuItem
          Caption = 'Dieder'
          OnClick = orgDiederClick
        end
        object orgHoeppener: TMenuItem
          Caption = 'Hoeppener'
          OnClick = orgHoeppenerClick
        end
        object orgVersatz: TMenuItem
          Caption = 'Versatz'
          OnClick = orgVersatzClick
        end
      end
      object rotDaten: TMenuItem
        Caption = 'Rotierte Daten'
        object rotDieder: TMenuItem
          Caption = 'Dieder'
          OnClick = rotDiederClick
        end
        object rotHoeppener: TMenuItem
          Caption = 'Hoeppener'
          OnClick = rotHoeppenerClick
        end
        object rotVersatz: TMenuItem
          Caption = 'Versatz'
          OnClick = rotVersatzClick
        end
      end
    end
    object Font: TMenuItem
      Caption = 'Font'
      OnClick = FontClick
    end
    object Grafik: TMenuItem
      Caption = 'Grafik'
      object BGroesse: TMenuItem
        Caption = 'Bildgröße ändern'
        object BIteration: TMenuItem
          Caption = 'Iteration'
          OnClick = BIterationClick
        end
        object BMohr: TMenuItem
          Caption = 'Mohr-Diagramm'
          OnClick = BMohrClick
        end
      end
      object kopieren: TMenuItem
        Caption = 'kopieren'
        object kIteration: TMenuItem
          Caption = 'Iteration'
          OnClick = kIterationClick
        end
        object kMohr: TMenuItem
          Caption = 'Mohr-Diagramm'
          OnClick = kMohrClick
        end
      end
      object ItSpeichern: TMenuItem
        Caption = 'Iterations-Diagramm speichern'
        OnClick = ItSpeichernClick
      end
      object MohrDiagramm: TMenuItem
        Caption = 'Mohr-Diagramm speichern'
        OnClick = MohrDiagrammClick
      end
      object plotDrucker: TMenuItem
        Caption = 'mit dem Drucker plotten'
        object Einrichten: TMenuItem
          Caption = 'Drucker einrichten'
          OnClick = EinrichtenClick
        end
        object Calibrieren: TMenuItem
          Caption = 'Drucker calibrieren'
          OnClick = CalibrierenClick
        end
        object Drucken: TMenuItem
          Caption = 'Drucken'
          OnClick = DruckenClick
        end
      end
      object FarbeKoord: TMenuItem
        Caption = 'Farbe der Koordinaten'
        OnClick = FarbeKoordClick
      end
      object FarbeHinter: TMenuItem
        Caption = 'Farbe des Hintergrunds'
        OnClick = FarbeHinterClick
      end
      object FarbeDiagramm: TMenuItem
        Caption = 'Farbe des Diagramms'
        OnClick = FarbeDiagrammClick
      end
      object FarbeKurve: TMenuItem
        Caption = 'Farbe der Kurve'
        OnClick = FarbeKurveClick
      end
      object FarbeRahmen: TMenuItem
        Caption = 'Farbe des Rahmens'
        OnClick = FarbeRahmenClick
      end
      object Drucker: TMenuItem
        Caption = 'Drucker'
        object Deinrichten: TMenuItem
          Caption = 'Einrichten'
          OnClick = DeinrichtenClick
        end
        object Ddrucken: TMenuItem
          Caption = 'Drucken'
          object DFormfaktor: TMenuItem
            Caption = 'Formfaktor'
            OnClick = DFormfaktorClick
          end
          object DMohr: TMenuItem
            Caption = 'Mohrsche Kreise'
            OnClick = DMohrClick
          end
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
        Caption = 'Rückgängig'
        OnClick = TrueckClick
      end
    end
    object DatenSpeichern: TMenuItem
      Caption = 'Daten speichern'
      object Dspeichern: TMenuItem
        Caption = 'speichern'
        ShortCut = 16467
        OnClick = DspeichernClick
      end
      object DspeichernU: TMenuItem
        Caption = 'speichern unter'
        OnClick = DspeichernUClick
      end
    end
    object Auswertung: TMenuItem
      Caption = 'AndereMethoden'
      object Dieder: TMenuItem
        Caption = 'Dieder-Methode'
        Hint = 'Dieder'
        OnClick = DiederClick
      end
      object Versatz: TMenuItem
        Caption = 'Plot der Versatzdaten'
        OnClick = VersatzClick
      end
      object Hoeppener: TMenuItem
        Caption = 'Hoeppener-Diagramm'
        OnClick = HoeppenerClick
      end
      object Eigenwerte: TMenuItem
        Caption = 'Eigenwert-Methode'
        OnClick = EigenwerteClick
      end
      object Direkt: TMenuItem
        Caption = 'Direkte Methode'
        OnClick = DirektClick
      end
    end
    object Hilfe: TMenuItem
      Caption = 'Hilfe'
      ShortCut = 112
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
  object SaveDialog1: TSaveDialog
    Left = 790
    Top = 80
  end
  object SavePictureDialog1: TSavePictureDialog
    Left = 790
    Top = 120
  end
  object PrintDialog1: TPrintDialog
    Left = 830
    Top = 40
  end
  object PrinterSetupDialog1: TPrinterSetupDialog
    Left = 830
    Top = 80
  end
  object ColorDialog: TColorDialog
    Ctl3D = True
    Left = 830
    Top = 120
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MinFontSize = 0
    MaxFontSize = 0
    Left = 866
    Top = 38
  end
end
