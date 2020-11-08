object UnimLoginForm1: TUnimLoginForm1
  Left = 0
  Top = 0
  ClientHeight = 480
  ClientWidth = 320
  Caption = 'AQAR AL GHAD'
  AlignmentControl = uniAlignmentClient
  LayoutAttribs.Align = 'start'
  LayoutAttribs.Pack = 'center'
  TitleButtons = <>
  OnCreate = UnimLoginFormCreate
  OnBeforeShow = UnimLoginFormBeforeShow
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object loginIMG: TUnimImage
    Left = 0
    Top = 0
    Width = 320
    Height = 200
    Hint = ''
    Center = True
    Stretch = True
    Proportional = True
    Transparent = True
    FitWidth = True
    LayoutConfig.Width = '95%'
  end
  object UnimContainerPanel1: TUnimContainerPanel
    Left = 0
    Top = 224
    Width = 320
    Height = 256
    Hint = ''
    LayoutAttribs.Align = 'center'
    LayoutAttribs.Pack = 'center'
    LayoutConfig.Width = '100%'
    Flex = 1
    object UserEdt: TUnimEdit
      Left = 40
      Top = 32
      Width = 225
      Height = 47
      Hint = ''
      Text = ''
      EmptyText = 'User Name'
      ParentFont = False
      LayoutConfig.Cls = 'CurvEdit'
      LayoutConfig.Width = '90%'
      TabOrder = 1
    end
    object PassEdt: TUnimEdit
      Left = 40
      Top = 85
      Width = 225
      Height = 47
      Hint = ''
      Text = ''
      EmptyText = 'Password'
      ParentFont = False
      LayoutConfig.Cls = 'CurvEdit'
      LayoutConfig.Width = '90%'
      TabOrder = 2
    end
    object LoginBtn: TUnimButton
      Left = 40
      Top = 138
      Width = 225
      Height = 47
      Hint = ''
      Caption = 'Log In'
      LayoutConfig.Cls = 'BlueButton'
      LayoutConfig.Width = '85%'
      OnClick = LoginBtnClick
    end
    object UnimContainerPanel2: TUnimContainerPanel
      Left = 3
      Top = 203
      Width = 314
      Height = 50
      Hint = ''
      Layout = 'hbox'
      LayoutAttribs.Align = 'start'
      LayoutAttribs.Pack = 'center'
      LayoutConfig.Width = '100%'
      object LangCombo: TUnimSelect
        Left = 3
        Top = 3
        Width = 118
        Height = 33
        Hint = ''
        Items.Strings = (
          'English'
          #1575#1604#1593#1585#1576#1610#1577)
        ItemIndex = 0
        TabOrder = 1
      end
      object UnimToggle1: TUnimToggle
        Left = 192
        Top = 12
        Width = 93
        Height = 24
        Hint = ''
      end
    end
  end
  object logInQry: TUniQuery
    Connection = UniMainModule.MainDB
    SQL.Strings = (
      'Select * from userdefinition'
      'where usercode = :usr And password = :pas')
    Left = 280
    Top = 160
    ParamData = <
      item
        DataType = ftString
        Name = 'usr'
        Value = nil
      end
      item
        DataType = ftString
        Name = 'pas'
        Value = nil
      end>
  end
  object siLang1: TsiLang
    Version = '7.6.0.1'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST')
    NumOfLanguages = 2
    LangDelim = 1
    LangNames.Strings = (
      'English'
      #1575#1604#1593#1585#1576#1610#1577)
    Language = 'English'
    ExcludedProperties.Strings = (
      'Category'
      'SecondaryShortCuts'
      'HelpKeyword'
      'InitialDir'
      'HelpKeyword'
      'ActivePage'
      'ImeName'
      'DefaultExt'
      'FileName'
      'FieldName'
      'PickList'
      'DisplayFormat'
      'EditMask'
      'KeyList'
      'LookupDisplayFields'
      'DropDownSpecRow'
      'TableName'
      'DatabaseName'
      'IndexName'
      'MasterFields'
      'SQL'
      'DeleteSQL'
      'UpdateSQL'
      'ModifySQL'
      'KeyFields'
      'LookupKeyFields'
      'LookupResultField'
      'DataField'
      'KeyField'
      'ListField')
    Left = 20
    Top = 126
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00540055006E0069004C006F00670069006E0046006F007200
      6D003100010055006E0069004C006F00670069006E0046006F0072006D003100
      010001000D000A004C006F00670069006E00420074006E0001004C006F006700
      200049006E0001002A0633062C064A0644062000270644062F062E0648064406
      01000D000A0055006E0069004C006100620065006C0031000100550073006500
      7200730020004C006F006700200049006E00200001002F062E06480644062000
      27064406450633062A062E062F0645064A06460601000D000A0055006E006900
      4C006100620065006C0032000100400640064006400640064006400640064006
      4006400640064006400640064006400640064006400640064006400640064006
      4006400640064006400640064006400640064006400640064006400640064006
      4006400640064006400640064006400640064006400640064006400640064006
      4006400640064006400640064006400640064006400640064006400640064006
      4006400640064006400640064006400640064006400640064006400640064006
      4006400640064006400640064006400640064006400640064006400640064006
      4006400640064006400640064006010001000D000A0055006E0069004C006100
      620065006C003300010052006500740020007700650062002000610070007000
      6C00690063006100740069006F006E0020002000200020002000200020002000
      200020002000200020002000200020002000200020002000440065006D006F00
      2000560065007200730069006F006E00200031002E003000010001000D000A00
      73007400480069006E00740073005F0055006E00690063006F00640065000D00
      0A007300740044006900730070006C00610079004C006100620065006C007300
      5F0055006E00690063006F00640065000D000A007300740046006F006E007400
      73005F0055006E00690063006F00640065000D000A00730074004D0075006C00
      740069004C0069006E00650073005F0055006E00690063006F00640065000D00
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
      0D000A0055006E00690043006F006E007400610069006E006500720050006100
      6E0065006C0031002E004C00610079006F007500740001006100620073006F00
      6C00750074006500010001000D000A0055007300650072004500640074002E00
      45006D0070007400790054006500780074000100550073006500720020004E00
      61006D0065000100270633064506200027064406450633062A062E062F064506
      01000D000A0055007300650072004500640074002E004600690065006C006400
      4C006100620065006C0053006500700061007200610074006F00720001003A00
      010001000D000A0050006100730073004500640074002E0045006D0070007400
      790054006500780074000100500061007300730077006F007200640001004306
      440645062906200027064406450631064806310601000D000A00500061007300
      73004500640074002E004600690065006C0064004C006100620065006C005300
      6500700061007200610074006F00720001003A00010001000D000A0055006E00
      69004600530054006F00670067006C00650031002E005400690074006C006500
      4F00660066000100520065006D0065006D0062006500720020004D0065000100
      2A0630064306310646064A0601000D000A0055006E0069004600530054006F00
      670067006C00650031002E005400690074006C0065004F006E00010052006500
      6D0065006D0062006500720020004D00650001002A0630064306310646064A06
      01000D000A00540055006E0069004C006F00670069006E0046006F0072006D00
      31002E004C00610079006F007500740001006100620073006F006C0075007400
      6500010001000D000A00730074004C006F00630061006C00650073005F005500
      6E00690063006F00640065000D000A007300740043006F006C006C0065006300
      740069006F006E0073005F0055006E00690063006F00640065000D000A007300
      7400430068006100720053006500740073005F0055006E00690063006F006400
      65000D000A00}
  end
end
