inherited RepairF: TRepairF
  ClientHeight = 466
  ClientWidth = 687
  Caption = 'RepairF'
  BorderStyle = bsNone
  Font.Charset = ANSI_CHARSET
  Font.Height = -13
  Font.Name = 'Tajawal'
  ExplicitWidth = 687
  ExplicitHeight = 466
  PixelsPerInch = 96
  TextHeight = 18
  inherited pnlBaseContainer: TUniContainerPanel
    Left = 24
    Top = 8
    Width = 553
    Height = 450
    Layout = 'vbox'
    LayoutAttribs.Align = 'center'
    ExplicitLeft = 24
    ExplicitTop = 8
    ExplicitWidth = 553
    ExplicitHeight = 450
    object EstateCB: TUniDBLookupComboBox
      Left = 72
      Top = 12
      Width = 145
      Hint = ''
      ListField = 'EstNo;estName;estDistrict'
      ListSource = lookESTs
      KeyField = 'EstNo'
      ListFieldIndex = 0
      AnyMatch = True
      EmptyText = 'EstNo;estName;estDistrict'
      TabOrder = 1
      Color = clWindow
      LayoutConfig.Width = '60%'
      LayoutConfig.Margin = '20 0 0 0'
      FieldLabel = 'Look For Estate'
      FieldLabelWidth = 70
      Style = csDropDown
    end
    object UnitCB: TUniDBLookupComboBox
      Left = 72
      Top = 56
      Width = 145
      Hint = ''
      ListField = 'Unit;Floor;Rooms'
      ListSource = lookUNITs
      KeyField = 'ID'
      ListFieldIndex = 0
      AnyMatch = True
      EmptyText = 'unitNo;Unit;Floor '
      TabOrder = 2
      Color = clWindow
      LayoutConfig.Width = '60%'
      LayoutConfig.Margin = '5 0 0 0'
      FieldLabel = 'Look For Unit'
      FieldLabelWidth = 70
      Style = csDropDown
    end
    object pnlRepair: TUniContainerPanel
      Left = 24
      Top = 120
      Width = 497
      Height = 241
      Hint = ''
      ParentColor = False
      TabOrder = 3
      Layout = 'vbox'
      LayoutAttribs.Align = 'center'
      LayoutAttribs.Pack = 'start'
      LayoutAttribs.Padding = '5'
      LayoutConfig.Width = '80%'
      object dbeUnitID: TUniDBEdit
        Left = 287
        Top = 3
        Width = 121
        Height = 22
        Hint = ''
        Visible = False
        DataField = 'ID'
        DataSource = lookUNITs
        TabOrder = 4
      end
      object SelecttedPnl: TUniContainerPanel
        Left = 38
        Top = 30
        Width = 412
        Height = 86
        Hint = ''
        ParentColor = False
        TabOrder = 1
        Layout = 'table'
        LayoutAttribs.Align = 'middle'
        LayoutAttribs.Pack = 'center'
        LayoutAttribs.Padding = '5'
        LayoutAttribs.Columns = 3
        LayoutConfig.Width = '80%'
        LayoutConfig.Margin = '10 0 0 0'
        object dbeEstNo: TUniDBEdit
          Left = 7
          Top = 31
          Width = 80
          Height = 22
          Hint = ''
          DataField = 'estNo'
          DataSource = lookESTs
          Alignment = taCenter
          ParentFont = False
          Font.Color = clGray
          Font.Style = [fsBold]
          TabOrder = 1
          UseFieldAlignment = False
          FieldLabel = 'Estate'
          FieldLabelWidth = 30
          BorderStyle = ubsNone
        end
        object UniDBEdit5: TUniDBEdit
          Left = 93
          Top = 31
          Width = 150
          Height = 22
          Hint = ''
          DataField = 'estName'
          DataSource = lookESTs
          Alignment = taCenter
          ParentFont = False
          Font.Color = clGray
          Font.Style = [fsBold]
          TabOrder = 2
          UseFieldAlignment = False
          LayoutConfig.Flex = 1
          LayoutConfig.Width = '100%'
          FieldLabelWidth = 30
          BorderStyle = ubsNone
        end
        object UniDBEdit6: TUniDBEdit
          Left = 249
          Top = 31
          Width = 150
          Height = 22
          Hint = ''
          DataField = 'estDistrict'
          DataSource = lookESTs
          Alignment = taCenter
          ParentFont = False
          Font.Color = clGray
          Font.Style = [fsBold]
          TabOrder = 3
          UseFieldAlignment = False
          LayoutConfig.Flex = 1
          LayoutConfig.Width = '100%'
          FieldLabelWidth = 30
          BorderStyle = ubsNone
        end
        object UniDBEdit7: TUniDBEdit
          Left = 7
          Top = 59
          Width = 80
          Height = 22
          Hint = ''
          DataField = 'Unit'
          DataSource = lookUNITs
          Alignment = taCenter
          ParentFont = False
          Font.Color = clTeal
          Font.Style = [fsBold]
          TabOrder = 4
          UseFieldAlignment = False
          FieldLabel = 'Unit'
          FieldLabelWidth = 30
          BorderStyle = ubsNone
        end
        object UniDBEdit8: TUniDBEdit
          Left = 93
          Top = 59
          Width = 150
          Height = 22
          Hint = ''
          DataField = 'Floor'
          DataSource = lookUNITs
          Alignment = taCenter
          ParentFont = False
          Font.Color = clTeal
          Font.Style = [fsBold]
          TabOrder = 5
          UseFieldAlignment = False
          LayoutConfig.Width = '100%'
          FieldLabelWidth = 30
          BorderStyle = ubsNone
        end
        object UniDBEdit9: TUniDBEdit
          Left = 249
          Top = 59
          Width = 150
          Height = 22
          Hint = ''
          DataField = 'Rooms'
          DataSource = lookUNITs
          Alignment = taCenter
          ParentFont = False
          Font.Color = clTeal
          Font.Style = [fsBold]
          TabOrder = 6
          UseFieldAlignment = False
          LayoutConfig.Width = '100%'
          FieldLabelWidth = 30
          BorderStyle = ubsNone
        end
      end
      object UniContainerPanel1: TUniContainerPanel
        Left = 38
        Top = 122
        Width = 435
        Height = 63
        Hint = ''
        ParentColor = False
        TabOrder = 2
        Layout = 'hbox'
        LayoutAttribs.Align = 'middle'
        LayoutConfig.Width = '80%'
        object UniEdit1: TUniEdit
          Left = 10
          Top = 24
          Width = 121
          Hint = ''
          Text = ''
          TabOrder = 1
          EmptyText = 'Maintenance Exp'
          FieldLabel = 'Maintenance'
          FieldLabelWidth = 40
          LayoutConfig.Flex = 1
        end
        object UniNumberEdit1: TUniNumberEdit
          Left = 152
          Top = 24
          Width = 121
          Hint = ''
          TabOrder = 2
          FieldLabel = 'value'
          FieldLabelWidth = 30
          DecimalSeparator = '.'
        end
        object dtpMainDate: TUniDateTimePicker
          Left = 288
          Top = 24
          Width = 130
          Hint = ''
          DateTime = 43942.000000000000000000
          TabOrder = 3
          FieldLabel = 'Date'
          FieldLabelWidth = 30
          UseSystemFormats = True
        end
      end
      object UniButton1: TUniButton
        Left = 190
        Top = 191
        Width = 75
        Height = 25
        Hint = ''
        Caption = 'Save'
        TabOrder = 3
        IconCls = 'add'
        LayoutConfig.Cls = 'GreenButton'
        LayoutConfig.Width = '50%'
        OnClick = UniButton1Click
      end
    end
    object UniURLFrame1: TUniURLFrame
      Left = 31
      Top = 342
      Width = 341
      Height = 108
      Hint = ''
      Visible = False
      TabOrder = 5
      ParentColor = False
      Color = clMoneyGreen
    end
    object grdUMaint: TUniDBGrid
      Left = 101
      Top = 367
      Width = 320
      Height = 136
      Hint = ''
      DataSource = UnitMaintQs
      ReadOnly = True
      LoadMask.Message = 'Loading data...'
      ForceFit = True
      LayoutConfig.Flex = 1
      LayoutConfig.Width = '80%'
      TabOrder = 4
    end
  end
  inherited siLang1: TsiLang
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00540052006500700061006900720046000100520065007000
      6100690072004600010035064A06270646062906200027064406390642062706
      310601000D000A0055006E00690042007500740074006F006E00310001005300
      61007600650001002706360627064106290601000D000A007300740048006900
      6E00740073005F0055006E00690063006F00640065000D000A00730074004400
      6900730070006C00610079004C006100620065006C0073005F0055006E006900
      63006F00640065000D000A0055006E00690074004D00610069006E0074005100
      49004400010049004400010001000D000A0055006E00690074004D0061006900
      6E00740051004500730074004E006F0001004500730074004E006F0001003106
      42064506200027064406390642062706310601000D000A0055006E0069007400
      4D00610069006E007400510055006E00690074004E006F00010055006E006900
      74004E006F0001002706440648062D062F06470601000D000A0055006E006900
      74004D00610069006E00740051004D00610069006E007400560061006C007500
      650001004D00610069006E0074002000560061006C0075006500010027064406
      2A06430644064106290601000D000A0055006E00690074004D00610069006E00
      740051004D00610069006E007400440061007400650001004D00610069006E00
      7400200044006100740065000100270644062A06270631064A062E0601000D00
      0A0055006E00690074004D00610069006E00740051004D00610069006E007400
      45005800500001004D00610069006E00740001002706440635064A0627064606
      4706200027064406450646062C063206290601000D000A007300740046006F00
      6E00740073005F0055006E00690063006F00640065000D000A00730074004D00
      75006C00740069004C0069006E00650073005F0055006E00690063006F006400
      65000D000A007300740044006C0067007300430061007000740069006F006E00
      73005F0055006E00690063006F00640065000D000A005700610072006E006900
      6E00670001005700610072006E0069006E006700010001000D000A0045007200
      72006F00720001004500720072006F007200010001000D000A0049006E006600
      6F0072006D006100740069006F006E00010049006E0066006F0072006D006100
      740069006F006E00010001000D000A0043006F006E006600690072006D000100
      43006F006E006600690072006D00010001000D000A0059006500730001002600
      590065007300010001000D000A004E006F00010026004E006F00010001000D00
      0A004F004B0001004F004B00010001000D000A00430061006E00630065006C00
      0100430061006E00630065006C00010001000D000A00410062006F0072007400
      01002600410062006F0072007400010001000D000A0052006500740072007900
      0100260052006500740072007900010001000D000A00490067006E006F007200
      650001002600490067006E006F0072006500010001000D000A0041006C006C00
      0100260041006C006C00010001000D000A004E006F00200054006F0020004100
      6C006C0001004E0026006F00200074006F00200041006C006C00010001000D00
      0A00590065007300200054006F00200041006C006C0001005900650073002000
      74006F002000260041006C006C00010001000D000A00480065006C0070000100
      2600480065006C007000010001000D000A007300740053007400720069006E00
      670073005F0055006E00690063006F00640065000D000A00730074004F007400
      68006500720053007400720069006E00670073005F0055006E00690063006F00
      640065000D000A00540052006500700061006900720046002E004C0061007900
      6F00750074000100660069007400010001000D000A0070006E006C0042006100
      7300650043006F006E007400610069006E00650072002E004C00610079006F00
      750074000100760062006F007800010001000D000A0045007300740061007400
      6500430042002E0045006D007000740079005400650078007400010045007300
      74004E006F003B006500730074004E0061006D0065003B006500730074004400
      690073007400720069006300740001002706440631064206450620002C002000
      2706440627063306450620002C002000270644062D064A0601000D000A004500
      73007400610074006500430042002E004600690065006C0064004C0061006200
      65006C0001004C006F006F006B00200046006F00720020004500730074006100
      74006500010027062E062A064A06270631062000270644063906420627063106
      01000D000A00450073007400610074006500430042002E004600690065006C00
      64004C006100620065006C0053006500700061007200610074006F0072000100
      3A00010001000D000A0055006E0069007400430042002E0045006D0070007400
      79005400650078007400010075006E00690074004E006F003B0055006E006900
      74003B0046006C006F006F007200200001002706440631064206450620002C00
      20002706440648062D062F06470620002C002000270644063706270628064206
      01000D000A0055006E0069007400430042002E004600690065006C0064004C00
      6100620065006C0001004C006F006F006B00200046006F007200200055006E00
      69007400010027062E062A064A062706310620002706440648062D062F062906
      01000D000A0055006E0069007400430042002E004600690065006C0064004C00
      6100620065006C0053006500700061007200610074006F00720001003A000100
      01000D000A0070006E006C005200650070006100690072002E004C0061007900
      6F00750074000100760062006F007800010001000D000A00530065006C006500
      6300740074006500640050006E006C002E004C00610079006F00750074000100
      7400610062006C006500010001000D000A006400620065004500730074004E00
      6F002E004600690065006C0064004C006100620065006C000100450073007400
      610074006500010027064406390642062706310601000D000A00640062006500
      4500730074004E006F002E004600690065006C0064004C006100620065006C00
      53006500700061007200610074006F00720001003A00010001000D000A005500
      6E00690044004200450064006900740035002E004600690065006C0064004C00
      6100620065006C0053006500700061007200610074006F00720001003A000100
      01000D000A0055006E00690044004200450064006900740036002E0046006900
      65006C0064004C006100620065006C0053006500700061007200610074006F00
      720001003A00010001000D000A0055006E006900440042004500640069007400
      37002E004600690065006C0064004C006100620065006C00010055006E006900
      740001002706440648062D062F06470601000D000A0055006E00690044004200
      450064006900740037002E004600690065006C0064004C006100620065006C00
      53006500700061007200610074006F00720001003A00010001000D000A005500
      6E00690044004200450064006900740038002E004600690065006C0064004C00
      6100620065006C0053006500700061007200610074006F00720001003A000100
      01000D000A0055006E00690044004200450064006900740039002E0046006900
      65006C0064004C006100620065006C0053006500700061007200610074006F00
      720001003A00010001000D000A0055006E00690043006F006E00740061006900
      6E0065007200500061006E0065006C0031002E004C00610079006F0075007400
      0100680062006F007800010001000D000A0055006E0069004500640069007400
      31002E004600690065006C0064004C006100620065006C0001004D0061006900
      6E00740065006E0061006E006300650001002706440635064A06270646064706
      01000D000A0055006E006900450064006900740031002E004600690065006C00
      64004C006100620065006C0053006500700061007200610074006F0072000100
      3A00010001000D000A0055006E0069004E0075006D0062006500720045006400
      6900740031002E004600690065006C0064004C006100620065006C0001007600
      61006C00750065000100270644062A06430644064106290601000D000A005500
      6E0069004E0075006D00620065007200450064006900740031002E0046006900
      65006C0064004C006100620065006C0053006500700061007200610074006F00
      720001003A00010001000D000A006400740070004D00610069006E0044006100
      740065002E00440061007400650046006F0072006D0061007400010079007900
      790079002D004D004D002D0064006400010001000D000A006400740070004D00
      610069006E0044006100740065002E004600690065006C0064004C0061006200
      65006C00010044006100740065000100270644062A06270631064A062E060100
      0D000A006400740070004D00610069006E0044006100740065002E0046006900
      65006C0064004C006100620065006C0053006500700061007200610074006F00
      720001003A00010001000D000A006400740070004D00610069006E0044006100
      740065002E00540069006D00650046006F0072006D0061007400010048003A00
      6D006D00200041004D0050004D00010001000D000A0055006E00690045006400
      6900740031002E0045006D00700074007900540065007800740001004D006100
      69006E00740065006E0061006E00630065002000450078007000010028064A06
      2706460620002706440635064A0627064606470601000D000A0055006E006900
      42007500740074006F006E0031002E00490063006F006E0043006C0073000100
      610064006400010001000D000A006C006F006F006B0055004E00490054002E00
      440065007400610069006C004600690065006C00640073000100450053005400
      49004400010001000D000A0064006200650055006E0069007400490044002E00
      4600690065006C0064004C006100620065006C00530065007000610072006100
      74006F00720001003A00010001000D000A0055006E00690074004D0061006900
      6E00740051002E00440065007400610069006C004600690065006C0064007300
      010055006E00690074004E006F00010001000D000A00730074004C006F006300
      61006C00650073005F0055006E00690063006F00640065000D000A0073007400
      43006F006C006C0065006300740069006F006E0073005F0055006E0069006300
      6F00640065000D000A0073007400430068006100720053006500740073005F00
      55006E00690063006F00640065000D000A00}
  end
  object lookUNIT: TUniQuery
    Connection = UniMainModule.MainDB
    SQL.Strings = (
      'SELECT * From Units'
      'Order By ID')
    MasterSource = lookESTs
    MasterFields = 'estNo'
    DetailFields = 'ESTID'
    Active = True
    Left = 502
    Top = 74
    ParamData = <
      item
        DataType = ftInteger
        Name = 'estNo'
        ParamType = ptInput
        Value = 33
      end>
  end
  object lookUNITs: TUniDataSource
    DataSet = lookUNIT
    Left = 400
    Top = 72
  end
  object lookEST: TUniQuery
    Connection = UniMainModule.MainDB
    SQL.Strings = (
      'SELECT  * from Estates'
      'Order By ID')
    Active = True
    Left = 494
    Top = 18
  end
  object lookESTs: TUniDataSource
    DataSet = lookEST
    Left = 408
    Top = 16
  end
  object UnitMaintQ: TUniQuery
    Connection = UniMainModule.MainDB
    SQL.Strings = (
      'SELECT * FROM unitmaint'
      'Order By ID')
    MasterSource = lookUNITs
    MasterFields = 'ID'
    DetailFields = 'UnitNo'
    Left = 48
    Top = 336
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Value = 40
      end>
    object UnitMaintQID: TIntegerField
      DisplayWidth = 15
      FieldName = 'ID'
    end
    object UnitMaintQEstNo: TIntegerField
      DisplayWidth = 20
      FieldName = 'EstNo'
      Required = True
    end
    object UnitMaintQMaintEXP: TWideStringField
      DisplayLabel = 'Maint'
      DisplayWidth = 200
      FieldName = 'MaintEXP'
      Required = True
      Size = 255
    end
    object UnitMaintQMaintValue: TFloatField
      DisplayLabel = 'Maint Value'
      DisplayWidth = 20
      FieldName = 'MaintValue'
      Required = True
    end
    object UnitMaintQMaintDate: TDateField
      DisplayLabel = 'Maint Date'
      DisplayWidth = 20
      FieldName = 'MaintDate'
      Required = True
    end
    object UnitMaintQUnitNo: TIntegerField
      FieldName = 'UnitNo'
      Required = True
      Visible = False
    end
  end
  object UnitMaintQs: TUniDataSource
    DataSet = UnitMaintQ
    Left = 48
    Top = 408
  end
  object SMSqry: TUniQuery
    Connection = UniMainModule.MainDB
    SQL.Strings = (
      'SELECT ID,Name,phone1 From Persons'
      'Where ID=:UnitOwnerID')
    Left = 616
    Top = 70
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'UnitOwnerID'
        Value = nil
      end>
    object SMSqryID: TIntegerField
      FieldName = 'ID'
    end
    object SMSqryName: TWideStringField
      FieldName = 'Name'
      Required = True
      Size = 50
    end
    object SMSqryphone1: TWideStringField
      FieldName = 'phone1'
      Required = True
      Size = 15
    end
  end
end
