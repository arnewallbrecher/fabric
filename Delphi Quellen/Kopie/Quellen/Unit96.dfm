object Form96: TForm96
  Left = 107
  Top = 90
  Width = 800
  Height = 620
  Caption = 'Flinn-Diagramm, manuelle Eingabe'
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
  object LabelDemo: TLabel
    Left = 10
    Top = 20
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
  object StatusBar: TStatusBar
    Left = 0
    Top = 572
    Width = 792
    Height = 21
    Panels = <>
    SimplePanel = False
  end
  object ButtonZurueck: TButton
    Left = 560
    Top = 520
    Width = 101
    Height = 41
    Caption = 'Zurück'
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
    Left = 670
    Top = 520
    Width = 101
    Height = 41
    Caption = 'Beenden'
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
  object ListBox1: TListBox
    Left = 520
    Top = 100
    Width = 231
    Height = 341
    Color = clAqua
    ItemHeight = 13
    TabOrder = 3
  end
  object PanelDaten: TPanel
    Left = 520
    Top = 40
    Width = 231
    Height = 61
    TabOrder = 4
    object LabelDaten: TLabel
      Left = 0
      Top = 0
      Width = 64
      Height = 27
      Caption = 'Daten:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object LabelLange: TLabel
      Left = 0
      Top = 40
      Width = 223
      Height = 21
      Caption = 'Lange A.  mittlere A. kurze A.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
  end
  object PanelAchsen: TPanel
    Left = 10
    Top = 80
    Width = 381
    Height = 101
    TabOrder = 5
    object LabelAchsen: TLabel
      Left = 20
      Top = 10
      Width = 318
      Height = 27
      Caption = 'Geben Sie die lange, mittlere und'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -24
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object LabelAchse2: TLabel
      Left = 20
      Top = 40
      Width = 325
      Height = 27
      Caption = 'kurze Achse eines Ellipsoides ein.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -24
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object LabelEingabe: TLabel
      Left = 20
      Top = 70
      Width = 354
      Height = 27
      Caption = 'Beenden Sie die Eingabe mit '#39'return'#39'.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -24
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
  end
  object Panelmax: TPanel
    Left = 10
    Top = 190
    Width = 221
    Height = 41
    TabOrder = 6
    object LabelMax: TLabel
      Left = 10
      Top = 10
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
    object LabelZahl: TLabel
      Left = 160
      Top = 12
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
end
