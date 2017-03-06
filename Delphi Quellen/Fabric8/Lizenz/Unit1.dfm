object Form1: TForm1
  Left = 192
  Top = 107
  Width = 696
  Height = 480
  Caption = 'Lizenz'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 32
    Top = 24
    Width = 617
    Height = 233
    TabOrder = 0
    object Lizenz: TLabel
      Left = 362
      Top = 56
      Width = 172
      Height = 73
      Caption = 'Lizenz'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -64
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Programm: TLabel
      Left = 32
      Top = 176
      Width = 554
      Height = 36
      Caption = 'Programm zum Erstellen einer Lizenz-Datei'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -32
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Image1: TImage
      Left = 24
      Top = 24
      Width = 209
      Height = 129
    end
  end
  object ButtonStart: TButton
    Left = 536
    Top = 288
    Width = 113
    Height = 33
    Caption = '&Start'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = ButtonStartClick
  end
  object ButtonBeenden: TButton
    Left = 536
    Top = 400
    Width = 113
    Height = 33
    Caption = '&Beenden'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = ButtonBeendenClick
  end
  object GroupBox: TGroupBox
    Left = 32
    Top = 272
    Width = 489
    Height = 161
    Caption = 'Lizenz und Datum'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object LabelTag: TLabel
      Left = 76
      Top = 78
      Width = 29
      Height = 21
      Caption = 'Tag'
    end
    object LabelMonat: TLabel
      Left = 214
      Top = 78
      Width = 48
      Height = 21
      Caption = 'Monat'
    end
    object LabelJahr: TLabel
      Left = 358
      Top = 78
      Width = 30
      Height = 21
      Caption = 'Jahr'
    end
    object MaskEditName: TMaskEdit
      Left = 8
      Top = 32
      Width = 465
      Height = 23
      Color = clAqua
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = 'Demo-Version, valid 30 days since'
      OnKeyPress = MaskEditNameKeyPress
    end
    object MaskEditTag: TMaskEdit
      Left = 126
      Top = 78
      Width = 25
      Height = 29
      Color = clAqua
      TabOrder = 1
      Text = '00'
      OnKeyPress = MaskEditTagKeyPress
    end
    object MaskEditMonat: TMaskEdit
      Left = 280
      Top = 78
      Width = 25
      Height = 29
      Color = clAqua
      TabOrder = 2
      Text = '00'
      OnKeyPress = MaskEditMonatKeyPress
    end
    object MaskEditJahr: TMaskEdit
      Left = 396
      Top = 78
      Width = 41
      Height = 29
      Color = clAqua
      TabOrder = 3
      Text = '2000'
      OnKeyPress = MaskEditJahrKeyPress
    end
    object CheckBoxLizenz: TCheckBox
      Left = 40
      Top = 120
      Width = 105
      Height = 33
      Caption = 'Lizenz'
      Color = clSilver
      ParentColor = False
      TabOrder = 4
    end
  end
  object Buttonzuweisen: TButton
    Left = 536
    Top = 344
    Width = 113
    Height = 33
    Caption = '&Zuweisen'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = ButtonzuweisenClick
  end
end
