object Form71: TForm71
  Left = 35
  Top = 9
  Width = 1036
  Height = 750
  Caption = 'Polygone eingeben'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  ShowHint = True
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ImageFoto: TImage
    Left = 74
    Top = 8
    Width = 635
    Height = 579
    OnMouseDown = ImageFotoMouseDown
    OnMouseUp = ImageFotoMouseUp
  end
  object LabelDatei: TLabel
    Left = 752
    Top = 0
    Width = 47
    Height = 21
    Caption = 'Datei :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object LabelBild: TLabel
    Left = 78
    Top = 604
    Width = 199
    Height = 23
    Caption = 'Importieren Sie ein Bild'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 683
    Width = 1028
    Height = 21
    Panels = <>
    SimplePanel = True
  end
  object ButtonStart: TButton
    Left = 716
    Top = 624
    Width = 89
    Height = 33
    Caption = 'Start'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnClick = ButtonStartClick
  end
  object ButtonBeenden: TButton
    Left = 918
    Top = 624
    Width = 81
    Height = 33
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
  object ListBoxPunkte: TListBox
    Left = 884
    Top = 120
    Width = 125
    Height = 433
    Color = clAqua
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ItemHeight = 19
    ParentFont = False
    TabOrder = 3
  end
  object PanelSpeed: TPanel
    Left = 28
    Top = 6
    Width = 30
    Height = 505
    TabOrder = 4
    object SpeedHandbuch: TSpeedButton
      Left = 4
      Top = 442
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
    object SpeedHilfe: TSpeedButton
      Left = 4
      Top = 418
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
    object SpeedEinfuegen: TSpeedButton
      Left = 2
      Top = 4
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
      OnClick = SpeedEinfuegenClick
    end
    object SpeedPspeichern: TSpeedButton
      Left = 2
      Top = 320
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
      OnClick = SpeedPspeichernClick
    end
    object SpeedFarbe: TSpeedButton
      Left = 2
      Top = 148
      Width = 24
      Height = 24
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555775777777
        57705557757777775FF7555555555555000755555555555F777F555555555550
        87075555555555F7577F5555555555088805555555555F755F75555555555033
        805555555555F755F75555555555033B05555555555F755F75555555555033B0
        5555555555F755F75555555555033B05555555555F755F75555555555033B055
        55555555F755F75555555555033B05555555555F755F75555555555033B05555
        555555F75FF75555555555030B05555555555F7F7F75555555555000B0555555
        5555F777F7555555555501900555555555557777755555555555099055555555
        5555777755555555555550055555555555555775555555555555}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedFarbeClick
    end
    object SpeedFuellFarbe: TSpeedButton
      Left = 2
      Top = 196
      Width = 24
      Height = 24
      Glyph.Data = {
        0E060000424D0E06000000000000360000002800000016000000160000000100
        180000000000D8050000232E0000232E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFF26294F2326492326492326492326492326492326492326492326
        4923264923264923264923264926294FFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
        FFFFFFFFFFFFFFB0B2CF181C471C24D51D25DA1D25DA1D25DA1D25DA1D25DA1D
        25DA1D25DA1D25DA1D25DA1D25DA1C24D5181C48B0B2CFFFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFF5559891B21A21D25DA1D25DA1D25DA1D25DA1D25DA
        1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1B21A2555989FFFFFFFFFF
        FFFFFFFF0000FFFFFFFFFFFFFFFFFF272B511C24D21D25DA1D25DA1D25DA1D25
        DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1C24D2272B51FF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFCACBDF191D5E1D25DA1D25DA1D25DA1D
        25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA
        191D5ECACBDFFFFFFFFFFFFF0000FFFFFFFFFFFF686B991A20941D25DA1D25DA
        1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25
        DA1D25DA1A2094686B99FFFFFFFFFFFF0000FFFFFFFFFFFF2326491D25DA1D25
        DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D
        25DA1D25DA1D25DA1D25DA232649FFFFFFFFFFFF0000FFFFFFE0E1ED181D541D
        25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA
        1D25DA1D25DA1D25DA1D25DA1D25DA181D54E0E1EDFFFFFF0000FFFFFF7C7FA9
        1A20881D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25
        DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1A20887C7FA9FFFFFF0000FFFF
        FF363A671C23BE1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D
        25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1C23BE363A67FFFFFF
        0000F3F3F8181C4C1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA
        1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA181C
        4CF3F3F800009396BB191F7A1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25
        DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D
        25DA191F7A9396BB00004346751B22B21D25DA1D25DA1D25DA1D25DA1D25DA1D
        25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA
        1D25DA1D25DA1B22B24346750000262A501B23B91D25DA1D25DA1D25DA1D25DA
        1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25
        DA1D25DA1D25DA1D25DA1B23B9262A500000FFFFFF3B3F6D1A20901D25DA1D25
        DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D
        25DA1D25DA1D25DA1D25DA1A20903B3F6DFFFFFF0000FFFFFFFFFFFF6F729F19
        1E651D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA
        1D25DA1D25DA1D25DA1D25DA191E656F729FFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFBABCD6181C481C24D91D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25
        DA1D25DA1D25DA1D25DA1C24D9181C48BABCD6FFFFFFFFFFFFFFFFFF0000FFFF
        FFFFFFFFFFFFFFFFFFFFFDFDFD23274A1A21991D25DA1D25DA1D25DA1D25DA1D
        25DA1D25DA1D25DA1D25DA1A219923274AFDFDFDFFFFFFFFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF616493191E6F1D25DA1D25DA
        1D25DA1D25DA1D25DA1D25DA191E6E616493FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA8AAC9181C
        4D1C24CB1D25DA1D25DA1C24CB181C4DA9ABCAFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFF1F2F62C30591D25DA1B21A32C3059F1F2F6FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF232649535787FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedFuellFarbeClick
    end
    object SpeedLiteratur: TSpeedButton
      Left = 4
      Top = 466
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
    object SpeedSspeichern: TSpeedButton
      Left = 2
      Top = 368
      Width = 24
      Height = 24
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        33333FFFFFFFFFFFFFFF000000000000000077777777777777770F7777777777
        77707F3F3333333333370F988888888888707F733FFFFFFFF3370F8800000000
        88707F337777777733370F888888888888707F333FFFFFFFF3370F8800000000
        88707F337777777733370F888888888888707F333333333333370F8888888888
        88707F333333333333370FFFFFFFFFFFFFF07FFFFFFFFFFFFFF7000000000000
        0000777777777777777733333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
      OnClick = SpeedSspeichernClick
    end
    object SpeedKopieren: TSpeedButton
      Left = 2
      Top = 248
      Width = 24
      Height = 24
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003333330B7FFF
        FFB0333333777F3333773333330B7FFFFFB0333333777F3333773333330B7FFF
        FFB0333333777F3333773333330B7FFFFFB03FFFFF777FFFFF77000000000077
        007077777777777777770FFFFFFFF00077B07F33333337FFFF770FFFFFFFF000
        7BB07F3FF3FFF77FF7770F00F000F00090077F77377737777F770FFFFFFFF039
        99337F3FFFF3F7F777FF0F0000F0F09999937F7777373777777F0FFFFFFFF999
        99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
        99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
        93337FFFF7737777733300000033333333337777773333333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedKopierenClick
    end
    object SpeedGanzesBild: TSpeedButton
      Left = 2
      Top = 76
      Width = 24
      Height = 24
      Glyph.Data = {
        C6050000424DC605000000000000360400002800000014000000140000000100
        08000000000090010000232E0000232E00000001000000000000000000000101
        0100020202000303030004040400050505000606060007070700080808000909
        09000A0A0A000B0B0B000C0C0C000D0D0D000E0E0E000F0F0F00101010001111
        1100121212001313130014141400151515001616160017171700181818001919
        19001A1A1A001B1B1B001C1C1C001D1D1D001E1E1E001F1F1F00202020002121
        2100222222002323230024242400252525002626260027272700282828002929
        29002A2A2A002B2B2B002C2C2C002D2D2D002E2E2E002F2F2F00303030003131
        3100323232003333330034343400353535003636360037373700383838003939
        39003A3A3A003B3B3B003C3C3C003D3D3D003E3E3E003F3F3F00404040004141
        4100424242004343430044444400454545004646460047474700484848004949
        49004A4A4A004B4B4B004C4C4C004D4D4D004E4E4E004F4F4F00505050005151
        5100525252005353530054545400555555005656560057575700585858005959
        59005A5A5A005B5B5B005C5C5C005D5D5D005E5E5E005F5F5F00606060006161
        6100626262006363630064646400656565006666660067676700686868006969
        69006A6A6A006B6B6B006C6C6C006D6D6D006E6E6E006F6F6F00707070007171
        7100727272007373730074747400757575007676760077777700787878007979
        79007A7A7A007B7B7B007C7C7C007D7D7D007E7E7E007F7F7F00808080008181
        8100828282008383830084848400858585008686860087878700888888008989
        89008A8A8A008B8B8B008C8C8C008D8D8D008E8E8E008F8F8F00909090009191
        9100929292009393930094949400959595009696960097979700989898009999
        99009A9A9A009B9B9B009C9C9C009D9D9D009E9E9E009F9F9F00A0A0A000A1A1
        A100A2A2A200A3A3A300A4A4A400A5A5A500A6A6A600A7A7A700A8A8A800A9A9
        A900AAAAAA00ABABAB00ACACAC00ADADAD00AEAEAE00AFAFAF00B0B0B000B1B1
        B100B2B2B200B3B3B300B4B4B400B5B5B500B6B6B600B7B7B700B8B8B800B9B9
        B900BABABA00BBBBBB00BCBCBC00BDBDBD00BEBEBE00BFBFBF00C0C0C000C1C1
        C100C2C2C200C3C3C300C4C4C400C5C5C500C6C6C600C7C7C700C8C8C800C9C9
        C900CACACA00CBCBCB00CCCCCC00CDCDCD00CECECE00CFCFCF00D0D0D000D1D1
        D100D2D2D200D3D3D300D4D4D400D5D5D500D6D6D600D7D7D700D8D8D800D9D9
        D900DADADA00DBDBDB00DCDCDC00DDDDDD00DEDEDE00DFDFDF00E0E0E000E1E1
        E100E2E2E200E3E3E300E4E4E400E5E5E500E6E6E600E7E7E700E8E8E800E9E9
        E900EAEAEA00EBEBEB00ECECEC00EDEDED00EEEEEE00EFEFEF00F0F0F000F1F1
        F100F2F2F200F3F3F300F4F4F400F5F5F500F6F6F600F7F7F700F8F8F800F9F9
        F900FAFAFA00FBFBFB00FCFCFC00FDFDFD00FEFEFE00FFFFFF00636363636363
        636363636363636363636363636363FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF6363FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6363FFFF1B1B1B1B1B1B1B
        1B1B1B1B1B1B1BFFFF6363FFFF1B9595959595959595959595951BFFFF6363FF
        FF1B9595959595959595959595951BFFFF6363FFFF1B95959595959595959595
        95951BFFFF6363FFFF1B9595959595959595959595951BFFFF6363FFFF1B9595
        959595959595959595951BFFFF6363FFFF1B9595959595959595959595951BFF
        FF6363FFFF1B9595959595959595959595951BFFFF6363FFFF1B959595959595
        9595959595951BFFFF6363FFFF1B9595959595959595959595951BFFFF6363FF
        FF1B9595959595959595959595951BFFFF6363FFFF1B95959595959595959595
        95951BFFFF6363FFFF1B9595959595959595959595951BFFFF6363FFFF1B1B1B
        1B1B1B1B1B1B1B1B1B1B1BFFFF6363FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF6363FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6363636363636363636363
        63636363636363636363}
      OnClick = SpeedGanzesBildClick
    end
    object SpeedAusschneiden: TSpeedButton
      Left = 2
      Top = 100
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
      OnClick = SpeedAusschneidenClick
    end
    object SpeedImportieren: TSpeedButton
      Left = 2
      Top = 28
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
      OnClick = SpeedImportierenClick
    end
    object SpeedGspeichern: TSpeedButton
      Left = 2
      Top = 272
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
      OnClick = SpeedGspeichernClick
    end
  end
  object ButtonPlotten: TButton
    Left = 746
    Top = 392
    Width = 97
    Height = 33
    Caption = 'Plotten'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    OnClick = ButtonPlottenClick
  end
  object ButtonPunkte: TButton
    Left = 712
    Top = 352
    Width = 165
    Height = 33
    Caption = 'Eingabe beenden'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
    OnClick = ButtonPunkteClick
  end
  object PanelZahl: TPanel
    Left = 866
    Top = 554
    Width = 151
    Height = 61
    TabOrder = 7
    object LabelAnzahl: TLabel
      Left = -2
      Top = 0
      Width = 111
      Height = 19
      Caption = 'Anzahl der Punkte'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object LabelZahl: TLabel
      Left = 40
      Top = 30
      Width = 60
      Height = 27
      Caption = '00000'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -24
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
  end
  object PanelPolygon: TPanel
    Left = 884
    Top = 64
    Width = 121
    Height = 57
    TabOrder = 8
    object LabelPolygone: TLabel
      Left = 10
      Top = 8
      Width = 70
      Height = 21
      Caption = 'Polygone'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object LabelX: TLabel
      Left = 20
      Top = 30
      Width = 13
      Height = 21
      Caption = 'X'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object LabelY: TLabel
      Left = 70
      Top = 30
      Width = 13
      Height = 21
      Caption = 'Y'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
  end
  object ButtonZurueck: TButton
    Left = 816
    Top = 624
    Width = 91
    Height = 31
    Caption = 'zur�ck'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 9
    OnClick = ButtonZurueckClick
  end
  object ButtonLoeschen: TButton
    Left = 712
    Top = 312
    Width = 165
    Height = 31
    Caption = 'letztes Polygon l�schen'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    OnClick = ButtonLoeschenClick
  end
  object MaskEditDatei: TMaskEdit
    Left = 752
    Top = 24
    Width = 201
    Height = 27
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
  end
  object ListBoxFoto: TListBox
    Left = 250
    Top = 20
    Width = 300
    Height = 60
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ItemHeight = 19
    ParentFont = False
    TabOrder = 12
    OnClick = ListBoxFotoClick
  end
  object ListBoxSpeichern: TListBox
    Left = 250
    Top = 20
    Width = 301
    Height = 61
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ItemHeight = 19
    ParentFont = False
    TabOrder = 13
    OnClick = ListBoxSpeichernClick
  end
  object MainMenu1: TMainMenu
    Left = 650
    Top = 10
    object Bild: TMenuItem
      Caption = 'Bild importieren'
      object einfuegen: TMenuItem
        Caption = 'einf�gen'
        ShortCut = 16470
        OnClick = einfuegenClick
      end
      object ausDatei: TMenuItem
        Caption = 'Aus Datei'
        OnClick = ausDateiClick
      end
    end
    object Ausschnitt: TMenuItem
      Caption = 'Ausschnitt'
      object GanzesBild: TMenuItem
        Caption = 'Ganzes Bild'
        OnClick = GanzesBildClick
      end
      object ausschneiden: TMenuItem
        Caption = 'Ausschneiden'
        OnClick = ausschneidenClick
      end
    end
    object Farbe: TMenuItem
      Caption = 'Farbe'
      OnClick = FarbeClick
    end
    object PFuellFarbe: TMenuItem
      Caption = 'F�llfarbe'
      OnClick = PFuellFarbeClick
    end
    object Gspeichern: TMenuItem
      Caption = 'Grafik speichern'
      object kopieren: TMenuItem
        Caption = 'Kopieren'
        ShortCut = 16451
        OnClick = kopierenClick
      end
      object speichern: TMenuItem
        Caption = 'speichern'
        OnClick = speichernClick
      end
    end
    object PolygoneSpeichern: TMenuItem
      Caption = 'Polygone speichern'
      object Pspeichern: TMenuItem
        Caption = 'speichern'
        ShortCut = 16467
        OnClick = PspeichernClick
      end
      object PspeichernUnter: TMenuItem
        Caption = 'speichern unter'
        OnClick = PspeichernUnterClick
      end
    end
    object Schwerpunkte: TMenuItem
      Caption = 'Schwerpunkte speichern'
      object Sspeichern: TMenuItem
        Caption = 'speichern'
        OnClick = SspeichernClick
      end
      object SspeichernUnter: TMenuItem
        Caption = 'speichern unter'
        OnClick = SspeichernUnterClick
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
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 650
    Top = 90
  end
  object ColorDialog1: TColorDialog
    Ctl3D = True
    Left = 650
    Top = 130
  end
  object SaveDialog1: TSaveDialog
    Left = 650
    Top = 170
  end
  object SavePictureDialog1: TSavePictureDialog
    Left = 650
    Top = 210
  end
  object OpenDialog1: TOpenDialog
    Left = 650
    Top = 50
  end
end
