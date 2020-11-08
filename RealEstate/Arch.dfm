inherited ArchF: TArchF
  ClientHeight = 755
  ClientWidth = 992
  Caption = 'ArchF'
  BorderStyle = bsNone
  ExplicitWidth = 992
  ExplicitHeight = 755
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBaseContainer: TUniContainerPanel
    Left = 8
    Top = 8
    Width = 913
    Height = 681
    Layout = 'vbox'
    LayoutAttribs.Align = 'center'
    ExplicitLeft = 8
    ExplicitTop = 8
    ExplicitWidth = 913
    ExplicitHeight = 681
    object UniButton1: TUniButton
      Left = 328
      Top = 64
      Width = 185
      Height = 35
      Hint = ''
      Caption = 'DownLoad Excel'
      TabOrder = 2
      Images = UniMainModule.ImgTol32
      ImageIndex = 31
      LayoutConfig.Margin = '25 10 10 10'
      OnClick = UniButton1Click
    end
    object UniDBGrid1: TUniDBGrid
      Left = 128
      Top = 144
      Width = 577
      Height = 369
      Hint = ''
      DataSource = ArchSrc
      ReadOnly = True
      LoadMask.Message = 'Loading data...'
      ForceFit = True
      LayoutConfig.Flex = 1
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      Exporter.Enabled = True
      Exporter.FileName = #1575#1604#1575#1585#1588#1610#1601
      Exporter.Exporter = UniGridExcelExporter1
      Exporter.Title = #1593#1602#1575#1585' '#1575#1604#1594#1583' - '#1575#1604#1575#1585#1588#1610#1601
      Columns = <
        item
          FieldName = 'ID'
          Title.Caption = 'ID'
          Width = 60
          Font.Style = [fsBold]
        end
        item
          FieldName = 'ArcDate'
          Title.Caption = 'ArcDate'
          Width = 74
          Font.Style = [fsBold]
        end
        item
          FieldName = 'Income'
          Title.Caption = 'Income'
          Width = 74
          Font.Style = [fsBold]
        end
        item
          FieldName = 'Expense'
          Title.Caption = 'Expense'
          Width = 74
          Font.Style = [fsBold]
        end
        item
          FieldName = 'Contracts'
          Title.Caption = 'Contracts'
          Width = 74
          Font.Style = [fsBold]
        end
        item
          FieldName = 'Paids'
          Title.Caption = 'Paids'
          Width = 74
          Font.Style = [fsBold]
        end
        item
          FieldName = 'Maint'
          Title.Caption = 'Maint'
          Width = 74
          Font.Style = [fsBold]
        end>
    end
  end
  inherited siLang1: TsiLang
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00540041007200630068004600010041007200630068004600
      0100270644062706310634064A06410601000D000A0055006E00690042007500
      740074006F006E003100010044006F0077006E004C006F006100640020004500
      7800630065006C0001002A06460632064A06440620004D007300200045007800
      630065006C0001000D000A0073007400480069006E00740073005F0055006E00
      690063006F00640065000D000A007300740044006900730070006C0061007900
      4C006100620065006C0073005F0055006E00690063006F00640065000D000A00
      4100720063006800510049004400010049004400010027064406270631063406
      4A06410601000D000A0041007200630068005100410072006300440061007400
      6500010041007200630044006100740065000100270644062A06270631064A06
      2E0601000D000A004100720063006800510049006E0063006F006D0065000100
      49006E0063006F006D006500010027064A06310627062F062000270644064506
      43062A06280601000D000A004100720063006800510045007800700065006E00
      73006500010045007800700065006E0073006500010045063506270631064A06
      4106200027064406450643062A06280601000D000A0041007200630068005100
      43006F006E00740072006100630074007300010043006F006E00740072006100
      630074007300010039062F062F062000270644063906420648062F0601000D00
      0A00410072006300680051005000610069006400730001005000610069006400
      7300010045062C06450648063906200027064406450633062F062F0601000D00
      0A00410072006300680051004D00610069006E00740001004D00610069006E00
      7400010045062C0645064806390620002706440635064A062706460647060100
      0D000A007300740046006F006E00740073005F0055006E00690063006F006400
      65000D000A00730074004D0075006C00740069004C0069006E00650073005F00
      55006E00690063006F00640065000D000A007300740044006C00670073004300
      61007000740069006F006E0073005F0055006E00690063006F00640065000D00
      0A005700610072006E0069006E00670001005700610072006E0069006E006700
      010001000D000A004500720072006F00720001004500720072006F0072000100
      01000D000A0049006E0066006F0072006D006100740069006F006E0001004900
      6E0066006F0072006D006100740069006F006E00010001000D000A0043006F00
      6E006600690072006D00010043006F006E006600690072006D00010001000D00
      0A0059006500730001002600590065007300010001000D000A004E006F000100
      26004E006F00010001000D000A004F004B0001004F004B00010001000D000A00
      430061006E00630065006C000100430061006E00630065006C00010001000D00
      0A00410062006F007200740001002600410062006F0072007400010001000D00
      0A00520065007400720079000100260052006500740072007900010001000D00
      0A00490067006E006F007200650001002600490067006E006F00720065000100
      01000D000A0041006C006C000100260041006C006C00010001000D000A004E00
      6F00200054006F00200041006C006C0001004E0026006F00200074006F002000
      41006C006C00010001000D000A00590065007300200054006F00200041006C00
      6C000100590065007300200074006F002000260041006C006C00010001000D00
      0A00480065006C00700001002600480065006C007000010001000D000A007300
      740053007400720069006E00670073005F0055006E00690063006F0064006500
      0D000A00730074004F00740068006500720053007400720069006E0067007300
      5F0055006E00690063006F00640065000D000A00540041007200630068004600
      2E004C00610079006F00750074000100660069007400010001000D000A007000
      6E006C00420061007300650043006F006E007400610069006E00650072002E00
      4C00610079006F00750074000100760062006F007800010001000D000A005500
      6E006900470072006900640045007800630065006C004500780070006F007200
      74006500720031002E0043006800610072005300650074000100550054004600
      2D003800010001000D000A0055006E0069004700720069006400450078006300
      65006C004500780070006F00720074006500720031002E00460069006C006500
      45007800740065006E00740069006F006E00010078006C007300780001000100
      0D000A0055006E006900470072006900640045007800630065006C0045007800
      70006F00720074006500720031002E004D0069006D0065005400790070006500
      01006100700070006C00690063006100740069006F006E002F0076006E006400
      2E006F00700065006E0078006D006C0066006F0072006D006100740073002D00
      6F006600660069006300650064006F00630075006D0065006E0074002E007300
      70007200650061006400730068006500650074006D006C002E00730068006500
      65007400010001000D000A00730074004C006F00630061006C00650073005F00
      55006E00690063006F00640065000D000A007300740043006F006C006C006500
      6300740069006F006E0073005F0055006E00690063006F00640065000D000A00
      55006E00690044004200470072006900640031002E0043006F006C0075006D00
      6E0073005B0030005D002E0043006800650063006B0042006F00780046006900
      65006C0064002E004600690065006C006400560061006C007500650073000100
      74007200750065003B00660061006C0073006500010001000D000A0055006E00
      690044004200470072006900640031002E0043006F006C0075006D006E007300
      5B0030005D002E005400690074006C0065002E00430061007000740069006F00
      6E000100490044000100270644062706310634064A06410601000D000A005500
      6E00690044004200470072006900640031002E0043006F006C0075006D006E00
      73005B0031005D002E0043006800650063006B0042006F007800460069006500
      6C0064002E004600690065006C006400560061006C0075006500730001007400
      7200750065003B00660061006C0073006500010001000D000A0055006E006900
      44004200470072006900640031002E0043006F006C0075006D006E0073005B00
      31005D002E005400690074006C0065002E00430061007000740069006F006E00
      010041007200630044006100740065000100270644062A06270631064A062E06
      01000D000A0055006E00690044004200470072006900640031002E0043006F00
      6C0075006D006E0073005B0032005D002E0043006800650063006B0042006F00
      78004600690065006C0064002E004600690065006C006400560061006C007500
      65007300010074007200750065003B00660061006C0073006500010001000D00
      0A0055006E00690044004200470072006900640031002E0043006F006C007500
      6D006E0073005B0032005D002E005400690074006C0065002E00430061007000
      740069006F006E00010049006E0063006F006D006500010027064A0631062706
      2F06200027064406450643062A06280601000D000A0055006E00690044004200
      470072006900640031002E0043006F006C0075006D006E0073005B0033005D00
      2E0043006800650063006B0042006F0078004600690065006C0064002E004600
      690065006C006400560061006C00750065007300010074007200750065003B00
      660061006C0073006500010001000D000A0055006E0069004400420047007200
      6900640031002E0043006F006C0075006D006E0073005B0033005D002E005400
      690074006C0065002E00430061007000740069006F006E000100450078007000
      65006E0073006500010045063506310648064106200027064406450643062A06
      280601000D000A0055006E00690044004200470072006900640031002E004300
      6F006C0075006D006E0073005B0034005D002E0043006800650063006B004200
      6F0078004600690065006C0064002E004600690065006C006400560061006C00
      750065007300010074007200750065003B00660061006C007300650001000100
      0D000A0055006E00690044004200470072006900640031002E0043006F006C00
      75006D006E0073005B0034005D002E005400690074006C0065002E0043006100
      7000740069006F006E00010043006F006E007400720061006300740073000100
      39062F062F062000270644063906420648062F0601000D000A0055006E006900
      44004200470072006900640031002E0043006F006C0075006D006E0073005B00
      35005D002E0043006800650063006B0042006F0078004600690065006C006400
      2E004600690065006C006400560061006C007500650073000100740072007500
      65003B00660061006C0073006500010001000D000A0055006E00690044004200
      470072006900640031002E0043006F006C0075006D006E0073005B0035005D00
      2E005400690074006C0065002E00430061007000740069006F006E0001005000
      6100690064007300010045062C0645064806390620002706440633062F062706
      2F0601000D000A0055006E00690044004200470072006900640031002E004300
      6F006C0075006D006E0073005B0036005D002E0043006800650063006B004200
      6F0078004600690065006C0064002E004600690065006C006400560061006C00
      750065007300010074007200750065003B00660061006C007300650001000100
      0D000A0055006E00690044004200470072006900640031002E0043006F006C00
      75006D006E0073005B0036005D002E005400690074006C0065002E0043006100
      7000740069006F006E0001004D00610069006E007400010045062C0645064806
      390620002706440635064A0627064606290601000D000A007300740043006800
      6100720053006500740073005F0055006E00690063006F00640065000D000A00}
  end
  object ArchQ: TUniQuery
    Connection = UniMainModule.MainDB
    SQL.Strings = (
      'Select * From arch'
      'Order By ID')
    Active = True
    Left = 48
    Top = 40
    object ArchQID: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayWidth = 8
      FieldName = 'ID'
    end
    object ArchQArcDate: TDateField
      FieldName = 'ArcDate'
      Required = True
    end
    object ArchQIncome: TFloatField
      FieldName = 'Income'
      Required = True
      DisplayFormat = '#,##0.##'
    end
    object ArchQExpense: TFloatField
      FieldName = 'Expense'
      Required = True
      DisplayFormat = '#,##0.##'
    end
    object ArchQContracts: TIntegerField
      FieldName = 'Contracts'
      Required = True
    end
    object ArchQPaids: TFloatField
      FieldName = 'Paids'
      Required = True
      DisplayFormat = '#,##0.##'
    end
    object ArchQMaint: TFloatField
      FieldName = 'Maint'
      Required = True
      DisplayFormat = '#,##0.##'
    end
  end
  object ArchSrc: TUniDataSource
    DataSet = ArchQ
    Left = 88
    Top = 104
  end
  object UniGridExcelExporter1: TUniGridExcelExporter
    FileExtention = 'xlsx'
    MimeType = 
      'application/vnd.openxmlformats-officedocument.spreadsheetml.shee' +
      't'
    CharSet = 'UTF-8'
    Left = 200
    Top = 304
  end
end
