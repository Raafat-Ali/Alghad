inherited UserPrevF: TUserPrevF
  ClientHeight = 620
  ClientWidth = 1090
  Caption = 'UserPrevF'
  Layout = 'border'
  ExplicitWidth = 1106
  ExplicitHeight = 659
  PixelsPerInch = 96
  TextHeight = 13
  object UniTreeMenu1: TUniTreeMenu [0]
    Left = 0
    Top = 8
    Width = 256
    Height = 593
    Hint = ''
    InputRTL = False
    Align = alNone
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'      config.' +
        'tree.getItemConfig=function (node, parent) {'#13#10'        var item =' +
        '  Ext.apply({'#13#10'            parentItem: parent.isRootListItem ? n' +
        'ull : parent,'#13#10'            owner: this,'#13#10'            node: node,' +
        #13#10'            indent: this.getIndent()'#13#10'        }, this.getDefau' +
        'lts());'#13#10'        if(node.data.iconCls==="x-tree-node-icon-blank"' +
        '){'#13#10'           node.data.rowCls="nodolabel";'#13#10'        }'#13#10'       ' +
        ' return item'#13#10'    }    '#13#10'}')
    Items.FontData = {0100000000}
    LayoutConfig.Region = 'west'
    SourceMenu = MenuActions
    ExpanderOnly = False
    OnClick = UniTreeMenu1Click
  end
  object UniPanel1: TUniPanel [1]
    Left = 262
    Top = 24
    Width = 590
    Height = 537
    Hint = ''
    TabOrder = 1
    Caption = 'UniPanel1'
    Layout = 'vbox'
    LayoutConfig.Region = 'center'
    object UniPanel2: TUniPanel
      Left = 1
      Top = 1
      Width = 588
      Height = 49
      Hint = ''
      TabOrder = 1
      BorderStyle = ubsFrameLowered
      Caption = 'UniPanel2'
      Layout = 'hbox'
      LayoutAttribs.Align = 'middle'
      LayoutConfig.Width = '100%'
      object UniFSToggle1: TUniFSToggle
        Left = 17
        Top = 3
        Width = 100
        Height = 25
        Hint = ''
        ThemeOn = Success
        ThemeOff = Gray
        TitleOn = 'Active'
        TitleOff = 'Active'
        OnToggled = UniFSToggle1Toggled
      end
      object UniDBText1: TUniDBText
        Left = 123
        Top = 16
        Width = 56
        Height = 13
        Hint = ''
        DataField = 'UserName'
        DataSource = UsersQrySrc
        Alignment = taCenter
        LayoutConfig.Flex = 1
        LayoutConfig.Margin = '0 3 0 3'
      end
      object edtPassword: TUniEdit
        Left = 247
        Top = 16
        Width = 121
        Hint = ''
        PasswordChar = '*'
        Text = 'edtPassword'
        TabOrder = 4
        FieldLabel = 'Password'
        FieldLabelWidth = 60
        LayoutConfig.Flex = 1
        LayoutConfig.Margin = '0 3 0 3'
      end
      object UniButton1: TUniButton
        Left = 408
        Top = 16
        Width = 97
        Height = 25
        Hint = ''
        Caption = 'Change'
        TabOrder = 2
        LayoutConfig.Margin = '0 3 0 3'
        OnClick = UniButton1Click
      end
    end
    object UniContainerPanel1: TUniContainerPanel
      Left = 25
      Top = 56
      Width = 504
      Height = 37
      Hint = ''
      ParentColor = False
      TabOrder = 2
      Layout = 'hbox'
      LayoutAttribs.Align = 'middle'
      LayoutAttribs.Pack = 'center'
      LayoutConfig.Width = '100%'
      object UniButton2: TUniButton
        Left = 18
        Top = 9
        Width = 75
        Height = 25
        Hint = ''
        Caption = 'ADD'
        TabOrder = 1
        IconCls = 'add'
        LayoutConfig.Margin = '0 5 0 5'
        OnClick = UniButton2Click
      end
      object UniButton3: TUniButton
        Left = 121
        Top = 9
        Width = 75
        Height = 25
        Hint = ''
        Caption = 'Enable All'
        TabOrder = 2
        IconCls = 'arrow_up'
        LayoutConfig.Flex = 1
        LayoutConfig.Margin = '0 5 0 5'
        OnClick = UniButton3Click
      end
      object UniButton4: TUniButton
        Left = 231
        Top = 9
        Width = 75
        Height = 25
        Hint = ''
        Caption = 'Disable All'
        TabOrder = 3
        IconCls = 'arrow_down'
        LayoutConfig.Flex = 1
        LayoutConfig.Margin = '0 5 0 5'
        OnClick = UniButton4Click
      end
      object UniButton5: TUniButton
        Left = 352
        Top = 9
        Width = 75
        Height = 25
        Hint = ''
        Caption = 'Remove'
        TabOrder = 4
        IconCls = 'delete'
        LayoutConfig.Margin = '0 5 0 5'
        OnClick = UniButton5Click
      end
    end
    object UniSimplePanel1: TUniSimplePanel
      Left = 25
      Top = 115
      Width = 552
      Height = 110
      Hint = ''
      ParentColor = False
      TabOrder = 3
      Layout = 'hbox'
      LayoutConfig.Width = '100%'
      object UniContainerPanel2: TUniContainerPanel
        Left = 5
        Top = 3
        Width = 88
        Height = 104
        Hint = ''
        ParentColor = False
        TabOrder = 1
        Layout = 'vbox'
        LayoutAttribs.Align = 'center'
        LayoutAttribs.Pack = 'center'
        object UniDBCheckBox1: TUniDBCheckBox
          Left = 3
          Top = 11
          Width = 60
          Height = 17
          Hint = ''
          DataField = 'uShow'
          DataSource = UsersPPsrc
          Caption = 'uShow'
          TabOrder = 1
          ParentColor = False
          Color = clBtnFace
          LayoutConfig.Flex = 1
        end
        object UniDBCheckBox2: TUniDBCheckBox
          Left = 11
          Top = 75
          Width = 60
          Height = 17
          Hint = ''
          DataField = 'uEnab'
          DataSource = UsersPPsrc
          Caption = 'uEnab'
          TabOrder = 2
          ParentColor = False
          Color = clBtnFace
          LayoutConfig.Flex = 1
        end
      end
      object UniContainerPanel4: TUniContainerPanel
        Left = 99
        Top = 11
        Width = 450
        Height = 96
        Hint = ''
        ParentColor = False
        TabOrder = 2
        Layout = 'table'
        LayoutAttribs.Align = 'stretch'
        LayoutAttribs.Pack = 'center'
        LayoutAttribs.Columns = 4
        LayoutConfig.Flex = 1
        LayoutConfig.Height = '100%'
        object UniDBCheckBox6: TUniDBCheckBox
          Left = 87
          Top = 43
          Width = 60
          Height = 17
          Hint = ''
          DataField = 'uPost'
          DataSource = UsersPPsrc
          Caption = 'uPost'
          TabOrder = 1
          ParentColor = False
          Color = clBtnFace
          LayoutConfig.Flex = 1
        end
        object UniDBCheckBox4: TUniDBCheckBox
          Left = 107
          Top = 11
          Width = 60
          Height = 17
          Hint = ''
          DataField = 'uAdd'
          DataSource = UsersPPsrc
          Caption = 'uAdd'
          TabOrder = 2
          ParentColor = False
          Color = clBtnFace
          LayoutConfig.Flex = 1
        end
        object UniDBCheckBox3: TUniDBCheckBox
          Left = 214
          Top = 3
          Width = 60
          Height = 17
          Hint = ''
          DataField = 'uEdit'
          DataSource = UsersPPsrc
          Caption = 'uEdit'
          TabOrder = 3
          ParentColor = False
          Color = clBtnFace
          LayoutConfig.Flex = 1
        end
        object UniDBCheckBox8: TUniDBCheckBox
          Left = 382
          Top = 3
          Width = 60
          Height = 17
          Hint = ''
          DataField = 'uPrint'
          DataSource = UsersPPsrc
          Caption = 'uPrint'
          TabOrder = 4
          ParentColor = False
          Color = clBtnFace
          LayoutConfig.Flex = 1
        end
        object UniDBCheckBox7: TUniDBCheckBox
          Left = 271
          Top = 35
          Width = 60
          Height = 17
          Hint = ''
          DataField = 'uUnpost'
          DataSource = UsersPPsrc
          Caption = 'uUnpost'
          TabOrder = 5
          ParentColor = False
          Color = clBtnFace
          LayoutConfig.Flex = 1
        end
        object UniDBCheckBox9: TUniDBCheckBox
          Left = 390
          Top = 35
          Width = 60
          Height = 17
          Hint = ''
          DataField = 'uUpload'
          DataSource = UsersPPsrc
          Caption = 'uUpload'
          TabOrder = 6
          ParentColor = False
          Color = clBtnFace
          LayoutConfig.Flex = 1
        end
        object UniDBCheckBox10: TUniDBCheckBox
          Left = 270
          Top = 67
          Width = 60
          Height = 17
          Hint = ''
          DataField = 'uDownload'
          DataSource = UsersPPsrc
          Caption = 'uDownload'
          TabOrder = 7
          ParentColor = False
          Color = clBtnFace
          LayoutConfig.Flex = 1
        end
        object UniDBCheckBox5: TUniDBCheckBox
          Left = 280
          Top = 3
          Width = 60
          Height = 17
          Hint = ''
          DataField = 'uDel'
          DataSource = UsersPPsrc
          Caption = 'uDel'
          TabOrder = 8
          ParentColor = False
          Color = clBtnFace
          LayoutConfig.Flex = 1
        end
      end
    end
    object UniGroupBox1: TUniGroupBox
      Left = 25
      Top = 240
      Width = 544
      Height = 257
      Hint = ''
      Caption = 'Add User'
      TabOrder = 4
      object UniDBEdit1: TUniDBEdit
        Left = 34
        Top = 24
        Width = 200
        Height = 22
        Hint = ''
        DataField = 'usercode'
        DataSource = UsersQrySrc
        TabOrder = 1
        FieldLabel = 'User Code'
        FieldLabelWidth = 80
      end
      object UniDBEdit2: TUniDBEdit
        Left = 34
        Top = 52
        Width = 200
        Height = 22
        Hint = ''
        DataField = 'usernamee'
        DataSource = UsersQrySrc
        TabOrder = 2
        FieldLabelWidth = 80
      end
      object UniDBEdit3: TUniDBEdit
        Left = 34
        Top = 80
        Width = 200
        Height = 22
        Hint = ''
        DataField = 'username'
        DataSource = UsersQrySrc
        TabOrder = 3
        FieldLabel = 'User Name A'
        FieldLabelWidth = 80
      end
    end
  end
  object UniContainerPanel3: TUniContainerPanel [2]
    Left = 858
    Top = 32
    Width = 209
    Height = 209
    Hint = ''
    ParentColor = False
    TabOrder = 2
    Layout = 'vbox'
    LayoutAttribs.Align = 'center'
    LayoutAttribs.Pack = 'start'
    LayoutConfig.Height = '100%'
    LayoutConfig.Width = '20%'
    LayoutConfig.Region = 'east'
    LayoutConfig.Margin = '5 5 5 5'
    object UniDBLookupComboBox1: TUniDBLookupComboBox
      Left = 32
      Top = 15
      Width = 126
      Hint = ''
      ListField = 'EmpNo;EmpNamA'
      KeyField = 'EmpNo'
      ListFieldIndex = 0
      ClearButton = True
      AnyMatch = True
      EmptyText = 'Search for Emp'
      TabOrder = 2
      Color = clWindow
      MatchFieldWidth = False
      RemoteQuery = True
      LayoutConfig.Width = '90%'
      LayoutConfig.Margin = '5 5 5 5'
      Style = csDropDown
    end
    object UniDBGrid2: TUniDBGrid
      Left = 23
      Top = 72
      Width = 135
      Height = 108
      Hint = ''
      DataSource = UsersQrySrc
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgAutoRefreshRow]
      ReadOnly = True
      WebOptions.FetchAll = True
      LoadMask.Message = 'Loading data...'
      ForceFit = True
      LayoutConfig.Flex = 1
      LayoutConfig.Width = '100%'
      TabOrder = 1
      Columns = <
        item
          FieldName = 'UserCode'
          Title.Alignment = taCenter
          Title.Caption = 'UserCode'
          Width = 75
          Alignment = taCenter
        end
        item
          FieldName = 'UserName'
          Title.Alignment = taCenter
          Title.Caption = 'UserName'
          Width = 250
          Alignment = taCenter
        end>
    end
  end
  inherited pnlBaseContainer: TUniContainerPanel
    Left = 0
    Top = 462
    Visible = False
    ExplicitLeft = 0
    ExplicitTop = 462
  end
  inherited siLang1: TsiLang
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A0054004D00610069006E0046006F0072006D0001004D006100
      69006E0046006F0072006D00010001000D000A0055006E0069004C0061006200
      65006C003300010047006F006F0064002000610066007400650072006E006F00
      6F006E002C002000520061006100660061007400010001000D000A0070006E00
      6C004D0065006E007500010070006E006C004D0065006E007500010001000D00
      0A0055006E00690054006F006F006C0042007500740074006F006E0031000100
      55006E00690054006F006F006C0042007500740074006F006E00310001000100
      0D000A0055006E00690054006F006F006C0042007500740074006F006E003300
      010055006E00690054006F006F006C0042007500740074006F006E0033000100
      01000D000A0055006E00690054006F006F006C0042007500740074006F006E00
      3400010055006E00690054006F006F006C0042007500740074006F006E003400
      010001000D000A0055006E00690054006F006F006C0042007500740074006F00
      6E003500010055006E00690054006F006F006C0042007500740074006F006E00
      3500010001000D000A0055006E00690054006F006F006C004200750074007400
      6F006E003200010055006E00690054006F006F006C0042007500740074006F00
      6E003200010001000D000A0055006E0069004D0065006E007500420075007400
      74006F006E0031000100660061007600010001000D000A0055006E0069005400
      610062005300680065006500740031000100440061007300680062006F006100
      72006400010001000D000A0055006E00690042007500740074006F006E003100
      010055006E00690042007500740074006F006E003100010001000D000A006100
      410064006D0069006E000100410064006D0069006E0069007300740072006100
      740069006F006E00010001000D000A006100440061007300680042006F006100
      720064000100440061007300680042006F00610072006400010001000D000A00
      6100530079007300530065007400740069006E00670073000100530079007300
      740065006D002000530065007400740069006E0067007300010001000D000A00
      6100550073006500720050007200690076007300010055007300650072002000
      500072006900760069006C006900670065007300010001000D000A0061004800
      52000100480075006D0061006E0020005200650073006F007500720063006500
      7300010001000D000A00610048005200730065007400740069006E0067007300
      0100480052002000530065007400740069006E0067007300010001000D000A00
      73007400480069006E00740073005F0055006E00690063006F00640065000D00
      0A0049006D006100670065004C006F0067006F007500740001004C006F006700
      20006F0075007400010001000D000A007300740044006900730070006C006100
      79004C006100620065006C0073005F0055006E00690063006F00640065000D00
      0A007300740046006F006E00740073005F0055006E00690063006F0064006500
      0D000A00730074004D0075006C00740069004C0069006E00650073005F005500
      6E00690063006F00640065000D000A004C0061006E00670043006F006D006200
      6F002E004900740065006D007300010045004E002C0041005200010001000D00
      0A007300740044006C0067007300430061007000740069006F006E0073005F00
      55006E00690063006F00640065000D000A005700610072006E0069006E006700
      01005700610072006E0069006E006700010001000D000A004500720072006F00
      720001004500720072006F007200010001000D000A0049006E0066006F007200
      6D006100740069006F006E00010049006E0066006F0072006D00610074006900
      6F006E00010001000D000A0043006F006E006600690072006D00010043006F00
      6E006600690072006D00010001000D000A005900650073000100260059006500
      7300010001000D000A004E006F00010026004E006F00010001000D000A004F00
      4B0001004F004B00010001000D000A00430061006E00630065006C0001004300
      61006E00630065006C00010001000D000A00410062006F007200740001002600
      410062006F0072007400010001000D000A005200650074007200790001002600
      52006500740072007900010001000D000A00490067006E006F00720065000100
      2600490067006E006F0072006500010001000D000A0041006C006C0001002600
      41006C006C00010001000D000A004E006F00200054006F00200041006C006C00
      01004E0026006F00200074006F00200041006C006C00010001000D000A005900
      65007300200054006F00200041006C006C000100590065007300200074006F00
      2000260041006C006C00010001000D000A00480065006C007000010026004800
      65006C007000010001000D000A007300740053007400720069006E0067007300
      5F0055006E00690063006F00640065000D000A00730074004F00740068006500
      720053007400720069006E00670073005F0055006E00690063006F0064006500
      0D000A0054004D00610069006E0046006F0072006D002E004C00610079006F00
      75007400010062006F007200640065007200010001000D000A0070006E006C00
      4800650061006400650072002E004C00610079006F0075007400010068006200
      6F007800010001000D000A0070006E006C004C006F0067006F002E004C006100
      79006F007500740001006100620073006F006C00750074006500010001000D00
      0A005400680065006D00650043006F006D0062006F0042006F0078002E004600
      690065006C0064004C006100620065006C005300650070006100720061007400
      6F00720001003A00010001000D000A004C0061006E00670043006F006D006200
      6F002E004600690065006C0064004C006100620065006C005300650070006100
      7200610074006F00720001003A00010001000D000A0070006E006C004D006500
      6E0075002E004C00610079006F00750074000100660069007400010001000D00
      0A0055006E0069005400610062005300680065006500740031002E004C006100
      79006F007500740001006100620073006F006C00750074006500010001000D00
      0A00730074004C006F00630061006C00650073005F0055006E00690063006F00
      640065000D000A007300740043006F006C006C0065006300740069006F006E00
      73005F0055006E00690063006F00640065000D000A0055006E00690053007400
      610074007500730042006100720031002E00500061006E0065006C0073005B00
      30005D002E0054006500780074000100440061007400010001000D000A005500
      6E00690053007400610074007500730042006100720031002E00500061006E00
      65006C0073005B0031005D002E00540065007800740001004400610074006100
      4200610073006500010001000D000A0055006E00690053007400610074007500
      730042006100720031002E00500061006E0065006C0073005B0032005D002E00
      540065007800740001005500730065007200010001000D000A0055006E006900
      53007400610074007500730042006100720031002E00500061006E0065006C00
      73005B0033005D002E0054006500780074000100420072006100630068000100
      01000D000A0055006E0069005300740061007400750073004200610072003100
      2E00500061006E0065006C0073005B0034005D002E0054006500780074000100
      43006F006D00700061006E007900010001000D000A0073007400430068006100
      720053006500740073005F0055006E00690063006F00640065000D000A00}
  end
  object ActionList1: TActionList
    Left = 196
    Top = 179
    object aAdmin: TAction
      Category = 'Admin'
      Caption = 'Administration'
    end
    object aDashBoard: TAction
      Category = 'Admin'
      Caption = 'DashBoard'
      ImageIndex = 0
    end
    object aSysSettings: TAction
      Category = 'Admin'
      Caption = 'System Settings'
      ImageIndex = 0
    end
    object aUserPrivs: TAction
      Category = 'Admin'
      Caption = 'User Priviliges'
      ImageIndex = 0
    end
    object aHR: TAction
      Category = 'HR'
      Caption = 'Human Resources'
    end
    object aHRsettings: TAction
      Category = 'HR'
      Caption = 'HR Settings'
      ImageIndex = 0
    end
    object aEmployees: TAction
      Category = 'HR'
      Caption = 'Employees'
      ImageIndex = 0
    end
    object aSal: TAction
      Category = 'HR'
      Caption = 'Payroll'
      ImageIndex = 0
    end
    object aStartWork: TAction
      Category = 'HR'
      Caption = 'Start Work'
      ImageIndex = 0
    end
    object aCars: TAction
      Category = 'Cars'
      Caption = 'CARS'
    end
    object aMaintSettings: TAction
      Category = 'Cars'
      Caption = 'Maintinance Settings'
      ImageIndex = 0
    end
    object aCarMaint: TAction
      Category = 'Cars'
      Caption = 'Maintenance'
      ImageIndex = 0
    end
    object aCarHand: TAction
      Category = 'Cars'
      Caption = 'Car Hand Over'
      ImageIndex = 0
    end
    object aCarsReports: TAction
      Category = 'Cars'
      Caption = 'Cars Reports'
      ImageIndex = 0
    end
  end
  object MenuActions: TUniMenuItems
    Left = 132
    Top = 171
    object Administration1: TUniMenuItem
      Action = aAdmin
      object DashBoard1: TUniMenuItem
        Action = aDashBoard
      end
      object SystemSettings1: TUniMenuItem
        Action = aSysSettings
      end
      object UserPriviliges1: TUniMenuItem
        Action = aUserPrivs
      end
    end
    object HumanResources1: TUniMenuItem
      Action = aHR
      object HRSettings1: TUniMenuItem
        Action = aHRsettings
      end
      object Employees1: TUniMenuItem
        Action = aEmployees
      end
      object Payroll1: TUniMenuItem
        Action = aSal
      end
      object StartWork1: TUniMenuItem
        Action = aStartWork
      end
    end
    object CARS1: TUniMenuItem
      Action = aCars
      object MaintinanceSettings1: TUniMenuItem
        Action = aMaintSettings
      end
      object Maintenance1: TUniMenuItem
        Action = aCarMaint
      end
      object CarHandOver1: TUniMenuItem
        Action = aCarHand
      end
      object CarsReports1: TUniMenuItem
        Action = aCarsReports
      end
    end
  end
  object QryUsersPP: TUniQuery
    Connection = UniMainModule.MainDB
    SQL.Strings = (
      'Select * From UserPrivs'
      'Order By UserCode')
    MasterSource = UsersQrySrc
    MasterFields = 'UserCode'
    DetailFields = 'UserCode'
    AfterOpen = QryUsersPPAfterOpen
    AfterPost = QryUsersPPAfterPost
    Left = 278
    Top = 464
    ParamData = <
      item
        DataType = ftWideString
        Name = 'UserCode'
        ParamType = ptInput
        Value = '5001'
      end>
  end
  object UsersPPsrc: TUniDataSource
    DataSet = QryUsersPP
    Left = 590
    Top = 472
  end
  object UsersQry: TUniQuery
    Connection = UniMainModule.MainDB
    SQL.Strings = (
      'Select * From UserDefinition'
      'Order By UserCode')
    AfterScroll = UsersQryAfterScroll
    Left = 974
    Top = 256
  end
  object UsersQrySrc: TUniDataSource
    DataSet = UsersQry
    Left = 974
    Top = 320
  end
  object UniSQL1: TUniSQL
    Connection = UniMainModule.MainDB
    Left = 166
    Top = 352
  end
end
