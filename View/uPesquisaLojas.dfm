object frmPesquisaLoja: TfrmPesquisaLoja
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Listagem de Lojas'
  ClientHeight = 389
  ClientWidth = 703
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnCabecalho: TPanel
    AlignWithMargins = True
    Left = 576
    Top = 5
    Width = 122
    Height = 379
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alRight
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    object btnFiltrar: TSpeedButton
      Left = 6
      Top = 37
      Width = 113
      Height = 36
      Caption = 'Filtrar'
      Glyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        2000000000000009000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00040000000C000000110000001400000017000000190000001B0000001C0000
        001D0000001E0000001E0000001E0000001E0000001D0000001C0000001C0000
        000F0000000B0000000B000000030000000C0000000400000000000000000000
        000C000000200000002A0000013100000135000001380000013A0000013C0000
        013D0000013E0000013F0000013F0000013E0000013D0000003B00000025160B
        07644B2211CD502412D625110979000000140000000B00000000000000000000
        0000000000000000000000000002000000020000000300000004000000050000
        000500000006000000060000000600000006000000030000000029140A61672F
        15FA693014FF682F14FF693015FF160B06310000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000042230B88763B12FF763B
        11FF763C12FF763C12FF763C11FF311908670000000000000000000000000000
        00000000000000000000000000000000000000000000050505071A1A1A221C1C
        1C250A0A0B0E00000000000000000604020C5D340BB084470EFF85480EFF8548
        0EFF85480EFF86490EFF84480FFC150C04260000000000000000000000000000
        0000000000000000000000000000191919217777789AB3B3B3E6C8C8C9FFC8C8
        C9FFBABABAEE88898CAF3E383157793F00D3935309FF94550BFF94540BFF9454
        0BFF95550AFF8B500BEE27170443000000000000000000000000000000000000
        000000000000000000003D3D3E50BDBDBEF3CCCCCCFFCCCCCDFFCACACBFFCACA
        CBFFCBCBCCFFCDCDCEFFC7C8C9FFB19066FFA15A00FFA36007FFA36108FFA461
        07FF865008D1180F032400000000000000000000000000000000000000000000
        00000000000029292A36C7C7C8FFCECECEFFCBCBCCFFD6D7D7FFE3E4E4FFE5E5
        E6FFDADBDBFFCBCBCCFFCECED0FFCCD3DEFFB9935BFFB16700FFB36E04FF794B
        05AD070501090000000000000000000000000000000000000000000000000000
        000001010101A2A2A3D2CDCDCDFFCBCCCCFFE8E8E9FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF0F0F0FFCDCECEFFCECFD2FFC7C7C8FFBE7F19FC633E01840000
        0000000000000000000000000000000000000000000000000000000000000000
        00002E2E2E3CC8C8C9FFCBCBCCFFE2E2E2FFFFFFFFFFF7F7F7FFF1F2F2FFF1F2
        F2FFF4F5F5FFFFFFFFFFEDEDEDFFCBCACBFFCBCCCFFF716A5E92000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00005C5C5D78CACACBFFCDCDCEFFF7F7F7FFF6F6F6FFF1F1F1FFF2F2F2FFF2F2
        F2FFF1F2F2FFF3F4F4FFFDFDFDFFD3D3D4FFCBCBCBFF828487A8000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00006F6F6F8ECBCBCCFFD1D1D2FFF8F9F9FFF4F4F4FFF5F5F5FFF5F5F5FFF5F5
        F5FFF5F5F5FFF4F4F4FFFBFBFBFFDADADAFFCBCACBFF9B9B9CC7000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00005D5D5D77CCCDCDFFCECECEFFF5F5F5FFF8F8F8FFF7F7F7FFF7F7F7FFF7F7
        F7FFF7F7F7FFF7F7F7FFFAFAFAFFD4D4D5FFCCCCCDFF898A8AAF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00002C2C2C39CDCDCEFFCACACBFFE6E6E6FFFFFFFFFFF9F9F9FFF9F9F9FFF9F9
        F9FFF9F9F9FFFDFDFDFFF0F0F0FFCBCACBFFCECFCFFF58585871000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000A3A3A4CED1D1D1FFCBCBCCFFEFEFEFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF7F7F7FFD0D0D0FFCFCFD0FFC4C4C5F50F0F0F15000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000025252632CCCCCDFCD2D2D3FFCACACBFFDCDCDCFFEBEBEBFFECEC
        ECFFE1E1E1FFCCCCCDFFCFD0D0FFD0D1D1FF4B4B4C6200000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000037373849C2C2C3F0D4D4D5FFCFCFD0FFCCCBCCFFCBCB
        CCFFCECECEFFD4D4D5FFD0D1D1FF5A5A5A740000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000001515151D73747492B5B6B6DED1D1D1FCD3D3
        D4FFBDBEBEE7858586A727272734000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000011616161E1919
        1A23050405080000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = btnFiltrarClick
    end
    object btnTodos: TSpeedButton
      Left = 6
      Top = 79
      Width = 113
      Height = 36
      Caption = 'Todos'
      Glyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        2000000000000009000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000A00000017000000180000001000000012000000140000
        001600000015070E073B0710083D000000160000001600000015000000120000
        001100000019000000190000000D000000000000000000000000000000000000
        0000000000000000000E0000001D0A0A0A324F4F50896262639F6161619E6F66
        6D9D39543FA2268037FA288238FC36553DA570676E9D6363649F6363649F5252
        538C0C0C0D360000001E00000012000000000000000000000000000000000000
        0000000000000000000000000000959596BBCECECFFFD1D1D2FFE3D9E0FFA5C5
        B0FF319C53FF2A984EFF2B984EFF309B52FFA0C4ADFFE7DBE3FFD5D5D6FFD2D2
        D3FF9F9FA0C40000000000000000000000000000000000000000000000000000
        000000000000000000000E0E0E11C9C9CAF8D1D2D3FFDED7DCFFA0C8B2FF24A4
        5AFF29A65EFF2EA761FF2DA761FF2AA65EFF22A358FF9BC8AFFFE2DBE0FFD5D5
        D6FFD1D1D2FC1010101400000000000000000000000000000000000000000000
        000000000000000000000F0F0F12CACACBF3DDD9DCFFC8D7D0FF1EAE64FF1DAE
        64FF2DB16EFF2CB16DFF2CB16DFF2DB16EFF1FAE65FF19AC61FFC4D8CFFFE3DE
        E2FFD1D1D2F61111111400000000000000000000000000000000000000000000
        000000000000000000000F0F0F12D0D0D1F3DFDEDFFFDDE0DFFFBAD9CBFF8CCF
        B0FF22B873FF29B977FF29B977FF21B772FF89CEAEFFB8D9CAFFDCE1DFFFE3E2
        E3FFD7D7D8F61111111400000000000000000000000000000000000000000000
        0000000000000000000010101012D5D5D5F3E1E1E2FFE3E3E4FFF9E9F0FFBDDE
        D1FF1BBD7AFF26BF81FF26BF81FF19BD79FFB7DDCEFFFBEBF3FFE5E5E6FFE3E3
        E4FFDADADBF61212121400000000000000000000000000000000000000000000
        0000000000000000000010101012D7D7D8F3E3E3E4FFE5E5E6FFF1E9ECFFB6DE
        D0FF16C082FF21C286FF21C286FF14C081FFB0DECDFFF4EBEFFFE7E7E8FFE5E6
        E6FFDCDCDDF61212121400000000000000000000000000000000000000000000
        0000000000000000000010101012D8D9D9F3E5E6E6FFE7E7E8FFF4EBEFFFB6E1
        D3FF12C387FF1DC58CFF1DC58CFF10C386FFB0E1D1FFF7EDF1FFE9EAEAFFE7E8
        E8FFDEDEDFF61212121400000000000000000000000000000000000000000000
        0000000000000000000010101012DADBDBF3E7E8E8FFE9EAEAFFF7EEF1FFB4E3
        D5FF06C58BFF10C790FF11C790FF04C58AFFADE2D2FFF9EEF2FFEBECECFFEAEA
        EBFFE0E0E1F61212121400000000000000000000000000000000000000000000
        0000000000000000000010101012DCDCDDF3E9E9EAFFEBECECFFF3EEEFFFC7E7
        DEFF39CFA2FF3DCFA3FF3DCFA3FF37CFA1FFC1E5DBFFF4EEF0FFEBECECFFEBEC
        ECFFE1E2E2F61212121400000000000000000000000000000000000000000000
        0000000000000000000010101012DDDEDEF3EAEBEBFFEBECECFFEBECECFFEEED
        EEFFE5EBEBFFE3EBE9FFE3EBE9FFE5EBEBFFEFECEEFFEBECECFFEBECECFFEBEC
        ECFFE3E4E4F61212121400000000000000000000000000000000000000000000
        0000000000000000000010101012DEDFDFF3EBECECFFEBECECFFEBECECFFECEC
        EDFFEFEDEEFFF0EEEFFFF0EEEFFFEFEEEEFFECEDEDFFECECEDFFECECEDFFEBEC
        ECFFE3E4E4F61213131400000000000000000000000000000000000000000000
        0000000000000000000010101012DFE0E0F3EBECECFFEBECECFFECECEDFFECEC
        EDFFECEDEDFFEDEDEEFFEDEDEEFFEDEDEEFFECEDEDFFECEDEDFFEDEDEEFFECED
        EDFFE4E5E5F61213131400000000000000000000000000000000000000000000
        0000000000000000000010111112DFE0E0F3EBECECFFEBECECFFECECEDFFECED
        EDFFEDEDEEFFEDEDEEFFEDEDEEFFEDEDEEFFF0EFF1FFF0F1F1FFEBEBECFFE9EA
        EAFFE7E8E8FF1313131500000000000000000000000000000000000000000000
        0000000000000000000010111112DFE0E0F3EBECECFFEBECECFFECECEDFFECED
        EDFFEDEDEEFFEDEDEEFFEDEDEEFFEFEFF0FFE4E4E5FFA8A9AAFF9E9FA0FFA7A8
        A9FF7A7A7BAD0404040400000000000000000000000000000000000000000000
        0000000000000000000010101112DFE0E0F3EBECECFFEBECECFFECECEDFFECED
        EDFFECEDEDFFEDEDEEFFEDEDEEFFF4F4F5FFB5B5B7FF838485FF979899FF6B6C
        6DAD000000000000000000000000000000000000000000000000000000000000
        0000000000000000000011111113E1E2E2F6EBECECFFEBECECFFEBECECFFECEC
        EDFFECEDEDFFECEDEDFFEDEDEEFFF2F3F3FFAEAFB0FF909192FF6B6B6BAB0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000005050505CFD0D0E4EBECECFFEBECECFFEBECECFFECEC
        EDFFECECEDFFECEDEDFFECEDEDFFF1F1F2FFB1B2B3FF606161A9000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000033333338A3A3A3B2B2B3B3C1B0B1B1BFB0B1
        B1BFB0B1B1BFB1B1B2BFB1B1B2BFB5B5B6C27171729500000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = btnTodosClick
    end
    object btnIncluir: TSpeedButton
      Left = 6
      Top = 117
      Width = 113
      Height = 36
      Caption = 'Incluir'
      Glyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        2000000000000009000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00040000000C000000110000001400000017000000190000001B0000001D0000
        001400000011000000130000001300000011000000140000001D0000001B0000
        00190000001700000014000000110000000C0000000400000000000000000000
        000C000000200000002A0000013100000135000001380000013A000000330A1B
        0D68205B27C9215F28D0215F28D0215D28CB0A1D0D6A000000330000013A0000
        013800000135000001310000002A000000200000000B00000000000000000000
        000000000000000000000000000200000002000000030000000400000000256F
        33CD2D8B3EFF2E8B3EFF2E8B3EFF2D8B3EFF267134D300000000000000030000
        0003000000020000000200000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000277C
        3DD92D9147FF2D9147FF2D9147FF2D9147FF298040E100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000002782
        45D72D9951FF2D9951FF2D9951FF2D9951FF288648DF01010101000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000002789
        4CD72DA159FF2DA159FF2DA159FF2DA159FF288D4FDF01010101000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000268D
        53D42DA963FF2DA963FF2DA963FF2DA963FF289257DD00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000007140D1C0C2B1B3E0C2A1A3D0C2A1A3D0C2A1A3D0C2A1A3D289A
        5DE02DAE69FF2DAE69FF2DAE69FF2DAE69FF299D60E60C2B1B3E0C2A1A3D0C2A
        1A3D0C2A1A3D0C2B1B3E08150E1E000000000000000000000000000000000000
        00000B22172F2CAB6BF32BB26EFF2BB26EFF2BB26EFF2BB26EFF2BB26FFF2BB2
        6FFF2BB26FFF2BB26FFF2BB26FFF2BB26FFF2BB26FFF2BB26FFF2BB26EFF2BB2
        6EFF2BB26EFF2BB26EFF2BAC6CF50C2619340000000000000000000000000000
        0000134B316829B774FF2AB775FF2AB775FF2AB775FF2AB775FF2AB775FF2AB7
        75FF2AB775FF2AB775FF2AB775FF2AB775FF2AB775FF2AB775FF2AB775FF2AB7
        75FF2AB775FF2AB775FF29B774FF124D316B0000000000000000000000000000
        0000114A316429BC7BFF29BC7BFF29BC7BFF29BC7BFF29BC7BFF29BC7BFF29BC
        7BFF29BC7BFF29BC7BFF29BC7BFF29BC7BFF29BC7BFF29BC7BFF29BC7BFF29BC
        7BFF29BC7BFF29BC7BFF29BC7BFF104B31660000000000000000000000000000
        0000114E356826BF80FF25BF7FFF25BF7FFF25BF7FFF25BF7FFF25BF7FFF26BF
        7FFF27BF80FF27BF80FF27BF80FF27BF80FF26BF7FFF25BF7FFF25BF7FFF25BF
        7FFF25BF7FFF25BF7FFF26BF7FFF104F356A0000000000000000000000000000
        00000E3A294B28C285FF2DC387FF2DC387FF2DC387FF2CC387FF2DC387FF29C1
        85FF23C082FF24C083FF24C083FF23C082FF28C184FF2DC387FF2CC286FF2CC2
        86FF2CC286FF2DC286FF29C285FF0E3E2B510000000000000000000000000000
        000000000000184C38612870538E266F528C266F528C266F518C276F528C3CBA
        87EC20C286FF22C286FF22C286FF1FC285FF3CBC89F02870528D266E518C266F
        518C266F518C2870538E1B503B65010101010000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000000031A6
        7AD320C489FF1FC389FF1FC389FF1EC489FF32AD7FDC00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000000031AA
        7ED71DC58CFF1DC58CFF1DC58CFF1CC58CFF32B182DF00010101000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000002EAB
        80D71AC690FF1AC690FF1AC690FF19C690FF30B285DF00010101000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000002DAC
        82D717C893FF18C893FF18C893FF17C893FF2DB287DF00010101000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000000034B4
        8BDF14C996FF11C996FF11C996FF13C996FF35BB8FE700000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000002166
        507C35C99CF828CC9DFD27CC9DFD34CA9CF9246C558300000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000051410180718131D0718131D051410180000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = btnIncluirClick
    end
    object btnAlterar: TSpeedButton
      Left = 7
      Top = 155
      Width = 113
      Height = 36
      Caption = 'Alterar'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00100000001600000024000000290000002C0000002200000000000000000000
        00000000000000000000000000000000000000000019000000220000002C0000
        003300010137080D18552A3655BB3C404EFF1F1F1FFF00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000108
        121D365B97F3516191FE546490FD6578A3FF424B5CFD00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000374
        BFFF0066ACF956729EFF8AA0CEFFA7C2E3FF576898F700000000000000000000
        00000000000000000000000000000000000000000000000000000376C1FF0076
        D4FF0275A9CC0190C4DAADC9E9FC6A7CA9FF35476DAE00000000000000000000
        000000000000000000000000000000000000000000000377C2FF0076D4FF0AB4
        EEFF02ADEAFF03ACE8FF28BFF7FE5576ABFD0719325000000000000000000000
        0000000000000000000000000000000000000478C2FF0076D4FF10BAF0FF02AD
        ECFF05B1ECFF24D3FFFF0083DBFC0661A0E20001010200000000000000000000
        00000000000000000000000000000478C2FF0076D4FF1CC1F4FF02B1F0FF05B2
        EFFF24D3FFFF0086E1FF037BC8FF000305080000000000000000000000000000
        00000000000000000000037CCAFF0076D4FF26C6F6FF02B3F1FF09B7F1FF24D3
        FFFF0086E1FF037BC9FF00000000000000000000000000000000000000000000
        00000E10263C5D6050FF0076D4FF26C6F6FF02B5F5FF0DBBF4FF98ECFFFF0086
        E1FF037BC9FF0000000000000000000000000000000000000000000000001C31
        7AAD636251FF99987BFF4C574AFF37A6CDFF10BEF6FF98ECFFFF0086E1FF037B
        CAFF00000000000000000000000000000000000000000000000002071017244D
        C2FF345CD9FF494D45FF46443DFFD6D7B3FF63C7E4FF0086E1FF037CCAFF0000
        0000000000000000000000000000000000000000000000000000142B677B254F
        C6FF3766DEFF3B66D9FFD5D7BBFFD4D4ACFF72725BFF0672C4FF000000000000
        0000000000000000000000000000000000000000000000000000000000002042
        A1DA3967DAFF9BA5EEFF414BB2FF72725BFF5F5E4EFF00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000306
        1016335BC1FDC0C8FFFF9BA5EEFF5A594AFF060A172500000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000010204061B3A94CB273A8FD1080916220000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = btnAlterarClick
    end
    object btnExcluir: TSpeedButton
      Left = 6
      Top = 194
      Width = 113
      Height = 36
      Caption = 'Excluir'
      Glyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        2000000000000009000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00040000000C00000011000000120000000700000009000000130000001D0000
        001D0000001E0000001E0000001E0000001E0000001D0000001C000000190000
        000A000000070000000D000000120000000C0000000400000000000000000000
        000C0000002000000026000000260E1140A4111552C2040510530000002D0000
        013D0000013E0000013F0000013F0000013E0000013D00000037000000300E11
        41A6121552C004050F490000001C000000200000000B00000000000000000000
        00000000000000000000121551A1191F7FFF191E80FF171B71E4040411210000
        0000000000060000000600000006000000060000000300000000111451A5191E
        7FFF191E7FFF181C70E10505101D000000000000000000000000000000000000
        0000010102031115539F191E83FF191E83FF191E83FF191E83FF171C75E40404
        11200000000000000000000000000000000000000000111454A2191E83FF191E
        83FF191E83FF191E83FF181C75E2040512210000000000000000000000000000
        00000708213C191F88FF191F88FF191F88FF191F88FF191F88FF191F88FF171D
        7AE404051222000000000000000000000000111457A2191F88FF191F88FF191F
        88FF191F88FF191F88FF191F88FF101456A00000000000000000000000000000
        000003040F1B181E85EE191F8EFF191F8EFF191F8EFF191F8EFF191F8EFF191F
        8DFF171C7FE40304101D0000000011145BA3191F8DFF191F8EFF191F8EFF191F
        8EFF191F8EFF191F8EFF191F8EFF0A0D36610000000000000000000000000000
        00000000000005061C30181E8AEF1A1F92FF1A1F92FF1A1F92FF1A1F92FF1A1F
        92FF1A1F92FF161B7CD9121662AA1A1F92FF1A1F92FF1A1F92FF1A1F92FF1A1F
        92FF1A1F92FF1A1F93FF0D0F4679000000000000000000000000000000000000
        0000000000000000000005071D30181E8EEF1A2098FF1A2098FF1A2098FF1A20
        98FF1A2098FF1A2097FF1A2097FF1A2098FF1A2098FF1A2098FF1A2098FF1A20
        98FF1A2098FF0D10487900000000000000000000000000000000000000000000
        000000000000000000000000000005071E30181E93EF1A209DFF1A209DFF1A20
        9DFF1A209DFF1A209DFF1A209DFF1A209DFF1A209DFF1A209DFF1A209DFF1A20
        9DFF0D104B7A0000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000005071F30181F97ED1A20A2FF1A21
        A2FF1A21A2FF1A21A2FF1A21A2FF1A21A2FF1A21A2FF1A21A2FF1A21A2FF0D10
        4D79000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000005071D2C1A20A3F91A21
        A7FF1A21A7FF1A21A7FF1A21A7FF1A21A7FF1A21A7FF1A21A7FF0F125A8A0000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000111468991B21ABFD1B21
        ACFF1B21ACFF1B21ACFF1B21ACFF1B21ACFF1B21ACFF1B21ACFF161B8FD40405
        1621000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000121672A31B22B1FF1B22B1FF1B22
        B1FF1B22B1FF1B22B1FF1B22B1FF1B22B1FF1B22B1FF1B22B1FF1B22B1FF191E
        9EE4040518220000000000000000000000000000000000000000000000000000
        0000000000000000000000000000121676A31B22B6FF1B22B7FF1B22B7FF1B22
        B7FF1B22B7FF1A21B7FF1B23B7FF1A21B6FF1B22B7FF1B22B7FF1B22B7FF1B22
        B7FF181EA4E40405192200000000000000000000000000000000000000000000
        00000000000000000000121678A31B22BBFF1B22BCFF1B22BCFF1B22BCFF1B22
        BCFF191FBAFF2934C6FF2F3CC7FA1C24BDFF1A20BBFF1B22BCFF1B22BCFF1B22
        BCFF1B22BCFF181FA8E404051821000000000000000000000000000000000000
        00000000020312167AA11C23C1FF1C23C1FF1C23C1FF1C23C1FF1B23C1FF1A20
        C0FF2935CAFF161C5B6F080A232C2C38C1EF1D25C2FF1A21C0FF1C23C1FF1C23
        C1FF1C23C1FF1C23C1FF191FADE404051A230000000000000000000000000000
        0000090B303C1D25C6FF1B21C5FF1C23C6FF1C23C6FF1C23C6FF1A20C5FF2A35
        CEFF181F657A0000000000000000090B28302C38C4EF1E25C7FF1B21C5FF1C23
        C6FF1C23C6FF1C23C6FF1B22C5FF151B7EA00000000000000000000000000000
        00000607171B2C39C5ED1D25CCFF1B22CAFF1C23CBFF1A21CAFF2A35D2FF181E
        667900000000000000000000000000000000090B28302C38C7EF1E25CCFF1B22
        CAFF1C23CBFF1A20CAFF2A35D2FF141951600000000000000000000000000000
        0000000000000A0C262D2D3AC9ED1E27D2FF1B22D0FF2A36D6FF181F687A0000
        00000000000000000000000000000000000000000000090B29302C39CAEF1F28
        D2FF1B22D0FF2A37D6FF19206576000000000000000000000000000000000000
        00000000000000000000090B282E2D3AC7E6303EDCFF161D6878000000000000
        0000000000000000000000000000000000000000000000000000080A29302C39
        C6E6303EDCFF181E667600000000000000000000000000000000000000000000
        000000000000000000000000000001010C0E04041B1F00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000101
        0C0E04041B1F0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = btnExcluirClick
    end
    object SpeedButton6: TSpeedButton
      Left = 6
      Top = 339
      Width = 113
      Height = 36
      Caption = 'Sair'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000D0000001000000016000000100000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000001900000022000000351A352880359F70FF000000330000
        002C000000220000001900000000000000000000000000000000000000000000
        000000000000000000000000000009251A3834A072FF33A172FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000009251A3832A373FF3DD7A8FF31A273FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000009251A382FA576FF3DD7A8FF1FCF9DFF2EA575FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000009251A382BA877FF3DD7A8FF10BF8FFF1FD29FFF2BA878FF2CA978FF2CA8
        78FF2CA978FF2CA878FF2CA878FF2CA877FF2CA877FF00000000000000000925
        1A3828AB7AFF3DD7A8FF0FC392FF10BF8FFF3DD7A8FF3DD7A8FF3DD7A8FF3DD7
        A8FF3DD7A8FF3DD7A8FF3DD7A8FF2BDAAAFF29AC7BFF0000000009251A3825AF
        7DFF3DD7A8FF0ECE9BFF0ED4A0FF0FCC99FF0FC796FF0FC795FF0FC795FF0FC7
        95FF0FC795FF0FC796FF0FC795FF2BDCACFF25AF7EFF0000000021B280FF31E0
        B0FF0FCE9CFF0ED7A2FF0ED7A3FF0ED7A3FF0ED7A3FF0ED7A2FF0ED7A3FF0ED7
        A3FF0FD7A3FF0ED7A3FF0ED7A3FF3EE4B7FF22B280FF0000000005291E381EB5
        83FF49E8BDFF0FDAA5FF0FDAA6FF0EDAA6FF0EDAA6FF0EDAA6FF0ED9A6FF0FDA
        A6FF0ED9A6FF0FDAA5FF0EDAA6FF4DE8BEFF1EB583FF00000000000000000529
        1E381BB886FF62EFC8FF0FDDA9FF0FDDA9FF4DEABFFFF5F9F7FF91F9D9FF91F9
        D9FF91F9D9FF91F9D9FF91F9D9FFF5F9F7FF1BB886FF00000000000000000000
        000005291E3817BC88FF79F4D1FF10DFACFF4DEBC1FF0EC590FF0EC590FF0EC5
        90FF0EC590FF0EC590FF0EC590FF0EC590FF0EC590FF00000000000000000000
        00000000000005291E3815BF8BFF8AF8D7FF91F9D9FF15BE8BFF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000005291E3812C18DFFF5F9F7FF12C18DFF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000005291E380FC38FFF10C38FFF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000005291E380EC590FF000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = SpeedButton6Click
    end
    object btnConsultar: TSpeedButton
      Left = 6
      Top = 236
      Width = 113
      Height = 36
      Caption = 'Consultar'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00290000003800000048070D1784043464FF2F373AFF2F373AFF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000004081040043464FF053F7AFFDDE1C0FF2F373AFF000000000000
        0000000000000504040C2B28236F48443ABA524D42D2504B41CF474339B72825
        2066070E173F013E7BFF053F7AFF1764A5FF9FD7F4FF135C9CFF000000000000
        00001C1A17485A5448E77B6C59FFA98B6DFFC8A27BFFCAA47DFFAB8F70FF7F70
        5CFF5A5852FF273D5CFF043261FFCAF3FDFF135C9CFF00000000000000001D1B
        184B625C4FFCC09F7CFFFDDFABFFFEFADEFFFFFFF3FFFFFFF2FFFEF2DFFFFED4
        A1FFB99976FF635D51FF273D5CFF135C9CFF040B153800000000070706125C56
        4AEDC8AA84FFFEECB9FFFFF6C3FFFEEDB4FFFDE9AFFFFEEBB2FFFEF1BDFFFEF0
        C1FFFEE0AFFFB19171FF5B5951FF090F17410000000000000000333029849184
        6BFFFDDEADFFFCDDADFFFCD69FFFFCD68EFFFCD992FFFCD88FFFFBD7A2FFFCD8
        A6FFFCD8A6FFFDD8A9FF806F5BFF2D2B25750000000000000000524E43D0C2A1
        7DFFFBCB9AFFF9BD89FFF9C190FFFACC96FFF9CE91FFF8CC90FFF8C593FFF8C3
        91FFFAC491FFFDC896FFC59977FF4B463CC00000000000000000666052F9D8B0
        89FFF9BA88FFF4B683FFF1B27EFFEFB382FFF0B583FFEEB280FFEEB07EFFF0B2
        80FFF6BC89FFF9B987FFDEAD85FF5A5448E70000000000000000625C4FFCD6AA
        84FFF8B985FFEFAE7BFFECAA78FFECAA78FFECAA78FFECAA78FFECAA78FFECAA
        78FFEEB07DFFF5B582FFDAA67EFF5B5549EA0000000000000000555045DBBC98
        78FFF5B583FFF3B481FFEEAC7AFFECAA78FFECAA78FFECAA78FFECAA78FFEDAB
        78FFF0B07DFFF0AF7FFFBE9876FF4F4A40CC000000000000000039362E938E7F
        68FFE9A87BFFF9BC88FFF6B884FFF2B37FFFF1B07DFFF1B17EFFF3B380FFF4B6
        82FFF4B784FFE09E75FF8F7E66FF3330298400000000000000000E0D0B246D68
        58F9AC8466FFEAAA7CFFFBCF9EFFFFFCF1FFFFFFFFFFFFFFFFFFFFFBEFFFF8C3
        91FFDD9F74FFA27D61FF6C6657F4090908180000000000000000000000002B28
        236F665F51FFAD8466FFE7AC81FFF8E0C7FFFFFDFBFFFEFCFBFFF6DCC1FFD8A0
        78FFA77F62FF675F52FF23211C5A000000000000000000000000000000000000
        000024221D5B5D584BF07E6B58FFAC8365FFC5906DFFC38E6BFFA98063FF7D6A
        57FF5B5549EA22201B5300000000000000000000000000000000000000000000
        0000000000000A0A081B3D39319C5B5549EA635D50FF635D50FF5A5448E73A37
        2F96080807150000000000000000000000000000000000000000}
      OnClick = btnConsultarClick
    end
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 122
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      Caption = 'MENU'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
  end
  object cxGrid1: TcxGrid
    AlignWithMargins = True
    Left = 5
    Top = 5
    Width = 561
    Height = 379
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alClient
    BevelInner = bvNone
    BevelOuter = bvNone
    BorderStyle = cxcbsNone
    TabOrder = 1
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      FilterBox.CustomizeDialog = False
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = DM.dsLoja
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.NoDataToDisplayInfoText = '<Sem dados para exibir>'
      OptionsView.GroupByBox = False
      OptionsView.ShowColumnFilterButtons = sfbAlways
      object cxGrid1DBTableView1ID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Width = 40
      end
      object cxGrid1DBTableView1cnpj: TcxGridDBColumn
        Caption = 'CNPJ'
        DataBinding.FieldName = 'cnpj'
        Width = 50
      end
      object cxGrid1DBTableView1razaosocial: TcxGridDBColumn
        Caption = 'Raz'#227'o Social'
        DataBinding.FieldName = 'razaosocial'
        Width = 220
      end
      object cxGrid1DBTableView1telefone: TcxGridDBColumn
        Caption = 'Telefone'
        DataBinding.FieldName = 'telefone'
        Width = 110
      end
      object cxGrid1DBTableView1cidade: TcxGridDBColumn
        Caption = 'Cidade'
        DataBinding.FieldName = 'cidade'
        Width = 130
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
end
