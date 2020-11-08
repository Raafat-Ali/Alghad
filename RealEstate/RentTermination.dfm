inherited RentTerminationF: TRentTerminationF
  ClientHeight = 742
  ClientWidth = 891
  Caption = 'Rent Termination'
  BorderStyle = bsNone
  Font.Charset = ANSI_CHARSET
  Font.Height = -13
  Font.Name = 'Tajawal'
  ExplicitWidth = 891
  ExplicitHeight = 742
  PixelsPerInch = 96
  TextHeight = 18
  inherited pnlBaseContainer: TUniContainerPanel
    Left = 8
    Top = 8
    Width = 875
    Height = 689
    Layout = 'vbox'
    LayoutAttribs.Align = 'center'
    ExplicitLeft = 8
    ExplicitTop = 8
    ExplicitWidth = 875
    ExplicitHeight = 689
    object ContractCB: TUniDBLookupComboBox
      Left = 40
      Top = 16
      Width = 145
      Height = 26
      Hint = ''
      ListField = 'ContractID;Name;unitNo;Unit;Floor '
      ListSource = LookContractQs
      KeyField = 'ContractID'
      ListFieldIndex = 0
      ClearButton = True
      AnyMatch = True
      EmptyText = 'ContractID;Name;unitNo;Unit'
      TabOrder = 1
      Color = clWindow
      LayoutConfig.Width = '80%'
      LayoutConfig.Margin = '10 0 0 0'
      FieldLabel = 'Look For Contract'
      Style = csDropDown
      OnSelect = ContractCBSelect
    end
    object EstateCB: TUniDBLookupComboBox
      Left = 32
      Top = 44
      Width = 145
      Height = 26
      Hint = ''
      Enabled = False
      ListField = 'EstNo;estName;estDistrict'
      ListSource = lookESTs
      KeyField = 'EstNo'
      ListFieldIndex = 0
      AnyMatch = True
      EmptyText = 'EstNo;estName;estDistrict'
      TabOrder = 2
      Color = clWindow
      LayoutConfig.Width = '80%'
      FieldLabel = 'Look For Estate'
      Style = csDropDown
      OnChangeValue = EstateCBChangeValue
    end
    object UnitCB: TUniDBLookupComboBox
      Left = 32
      Top = 72
      Width = 145
      Height = 26
      Hint = ''
      ListField = 'unitNo;Unit;Floor;Name'
      ListSource = lookUNITs
      KeyField = 'unitNo'
      ListFieldIndex = 0
      ClearButton = True
      AnyMatch = True
      EmptyText = 'unitNo;Unit;Floor;Name'
      TabOrder = 3
      Color = clWindow
      LayoutConfig.Width = '80%'
      FieldLabel = 'Look For Unit'
      Style = csDropDown
      OnSelect = UnitCBSelect
    end
    object ContractData: TUniContainerPanel
      Left = 3
      Top = 100
      Width = 862
      Height = 555
      Hint = ''
      ParentColor = False
      TabOrder = 4
      Layout = 'vbox'
      LayoutAttribs.Align = 'center'
      LayoutAttribs.Pack = 'start'
      LayoutConfig.Flex = 1
      LayoutConfig.Width = '95%'
      object pnlFooter: TUniPanel
        Left = 0
        Top = 0
        Width = 862
        Height = 2
        Hint = ''
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alTop
        TabOrder = 2
        BorderStyle = ubsNone
        Caption = 'pnlFooter'
        Color = clRed
        LayoutConfig.Width = '100%'
      end
      object SelecttedPnl: TUniContainerPanel
        Left = 17
        Top = 5
        Width = 412
        Height = 116
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
        object dbeContract: TUniDBEdit
          Left = 7
          Top = 3
          Width = 80
          Height = 22
          Hint = ''
          DataField = 'ContractID'
          DataSource = ContractDetails
          Alignment = taCenter
          ParentFont = False
          Font.Color = clTeal
          Font.Style = [fsBold]
          TabOrder = 1
          UseFieldAlignment = False
          LayoutConfig.Flex = 1
          LayoutConfig.Width = '100%'
          FieldLabel = 'Cont'
          BorderStyle = ubsNone
        end
        object UniDBEdit2: TUniDBEdit
          Left = 161
          Top = 3
          Width = 121
          Height = 22
          Hint = ''
          DataField = 'contF'
          DataSource = ContractDetails
          Alignment = taCenter
          ParentFont = False
          Font.Color = clTeal
          Font.Style = [fsBold]
          TabOrder = 2
          UseFieldAlignment = False
          LayoutConfig.Width = '100%'
          FieldLabel = 'Starts'
          FieldLabelWidth = 50
          BorderStyle = ubsNone
        end
        object UniDBEdit3: TUniDBEdit
          Left = 288
          Top = 3
          Width = 121
          Height = 22
          Hint = ''
          DataField = 'contT'
          DataSource = ContractDetails
          Alignment = taCenter
          ParentFont = False
          Font.Color = clTeal
          Font.Style = [fsBold]
          TabOrder = 3
          UseFieldAlignment = False
          LayoutConfig.Width = '100%'
          FieldLabel = 'Ends'
          FieldLabelWidth = 70
          BorderStyle = ubsNone
        end
        object dbeEstateNo: TUniDBEdit
          Left = 7
          Top = 31
          Width = 80
          Height = 22
          Hint = ''
          DataField = 'EstNo'
          DataSource = ContractDetails
          Alignment = taCenter
          ParentFont = False
          Font.Color = clGray
          Font.Style = [fsBold]
          TabOrder = 4
          UseFieldAlignment = False
          LayoutConfig.Width = '100%'
          FieldLabel = 'Estate'
          BorderStyle = ubsNone
        end
        object UniDBEdit5: TUniDBEdit
          Left = 93
          Top = 31
          Width = 150
          Height = 22
          Hint = ''
          DataField = 'estName'
          DataSource = ContractDetails
          Alignment = taCenter
          ParentFont = False
          Font.Color = clGray
          Font.Style = [fsBold]
          TabOrder = 5
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
          DataSource = ContractDetails
          Alignment = taCenter
          ParentFont = False
          Font.Color = clGray
          Font.Style = [fsBold]
          TabOrder = 6
          UseFieldAlignment = False
          LayoutConfig.Flex = 1
          LayoutConfig.Width = '100%'
          FieldLabelWidth = 30
          BorderStyle = ubsNone
        end
        object dbeUnitNo: TUniDBEdit
          Left = 7
          Top = 59
          Width = 80
          Height = 22
          Hint = ''
          DataField = 'unitNo'
          DataSource = ContractDetails
          Alignment = taCenter
          ParentFont = False
          Font.Color = clTeal
          Font.Style = [fsBold]
          TabOrder = 7
          UseFieldAlignment = False
          LayoutConfig.Width = '100%'
          FieldLabel = 'Unit'
          BorderStyle = ubsNone
        end
        object UniDBEdit8: TUniDBEdit
          Left = 93
          Top = 59
          Width = 150
          Height = 22
          Hint = ''
          DataField = 'Unit'
          DataSource = ContractDetails
          Alignment = taCenter
          ParentFont = False
          Font.Color = clTeal
          Font.Style = [fsBold]
          TabOrder = 8
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
          DataField = 'Floor'
          DataSource = ContractDetails
          Alignment = taCenter
          ParentFont = False
          Font.Color = clTeal
          Font.Style = [fsBold]
          TabOrder = 9
          UseFieldAlignment = False
          LayoutConfig.Width = '100%'
          FieldLabelWidth = 30
          BorderStyle = ubsNone
        end
        object UniDBEdit1: TUniDBEdit
          Left = 3
          Top = 87
          Width = 150
          Height = 22
          Hint = ''
          DataField = 'Name'
          DataSource = ContractDetails
          Alignment = taCenter
          ParentFont = False
          Font.Color = clTeal
          Font.Style = [fsBold]
          TabOrder = 10
          UseFieldAlignment = False
          LayoutConfig.Flex = 1
          LayoutConfig.Width = '100%'
          LayoutConfig.ColSpan = 2
          FieldLabel = 'Tenant Name'
          BorderStyle = ubsNone
        end
        object UniContainerPanel1: TUniContainerPanel
          Left = 122
          Top = 87
          Width = 287
          Height = 25
          Hint = ''
          ParentColor = False
          TabOrder = 11
          Layout = 'hbox'
          LayoutAttribs.Align = 'middle'
          LayoutConfig.Flex = 1
          object dbePMTcnt: TUniDBEdit
            Left = 18
            Top = 3
            Width = 58
            Height = 22
            Hint = ''
            DataField = 'Payments'
            DataSource = ContractDetails
            Alignment = taCenter
            ParentFont = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clTeal
            Font.Height = -13
            Font.Name = 'Tajawal'
            Font.Style = [fsBold]
            TabOrder = 1
            UseFieldAlignment = False
            LayoutConfig.Flex = 1
            FieldLabel = 'Payments'
            FieldLabelWidth = 50
            BorderStyle = ubsNone
          end
          object dbeRentAMT: TUniDBEdit
            Left = 144
            Top = 3
            Width = 80
            Height = 22
            Hint = ''
            DataField = 'RentAmount'
            DataSource = ContractDetails
            Alignment = taCenter
            ParentFont = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clTeal
            Font.Height = -13
            Font.Name = 'Tajawal'
            Font.Style = [fsBold]
            TabOrder = 2
            UseFieldAlignment = False
            LayoutConfig.Flex = 1
            FieldLabel = 'RentAMT'
            FieldLabelWidth = 60
            BorderStyle = ubsNone
          end
        end
      end
      object UniPanel1: TUniPanel
        Left = 29
        Top = 134
        Width = 405
        Height = 2
        Hint = ''
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        TabOrder = 3
        BorderStyle = ubsNone
        Caption = 'pnlFooter'
        Color = clRed
        LayoutConfig.Width = '100%'
      end
      object PymtSchPnl: TUniContainerPanel
        Left = 388
        Top = 142
        Width = 649
        Height = 57
        Hint = ''
        Visible = False
        ParentColor = False
        TabOrder = 5
        Layout = 'hbox'
        LayoutAttribs.Align = 'middle'
        LayoutAttribs.Pack = 'center'
        LayoutConfig.Width = '100%'
        LayoutConfig.Margin = '5 0 5 0'
        object UniLabel2: TUniLabel
          Left = 19
          Top = 24
          Width = 80
          Height = 13
          Hint = ''
          Caption = 'Paymt Schedule:'
          TabOrder = 1
          LayoutConfig.Margin = '0 3 0 3'
        end
        object Pmt1: TUniNumberEdit
          Left = 111
          Top = 21
          Width = 121
          Hint = ''
          TabOrder = 2
          Color = clMoneyGreen
          ReadOnly = True
          FieldLabelAlign = laTop
          FieldLabelFont.Style = [fsBold]
          LayoutConfig.Margin = '0 3 0 10'
          DecimalSeparator = '.'
        end
        object Pmt2: TUniNumberEdit
          Left = 238
          Top = 21
          Width = 121
          Hint = ''
          TabOrder = 3
          ReadOnly = True
          FieldLabel = '1-'
          FieldLabelAlign = laTop
          FieldLabelFont.Style = [fsBold]
          LayoutConfig.Margin = '0 3 0 3'
          DecimalSeparator = '.'
        end
        object Pmt3: TUniNumberEdit
          Left = 361
          Top = 21
          Width = 121
          Hint = ''
          TabOrder = 4
          Color = clMoneyGreen
          ReadOnly = True
          FieldLabel = '1-'
          FieldLabelAlign = laTop
          FieldLabelFont.Style = [fsBold]
          LayoutConfig.Margin = '0 3 0 3'
          DecimalSeparator = '.'
        end
        object Pmt4: TUniNumberEdit
          Left = 488
          Top = 21
          Width = 121
          Hint = ''
          TabOrder = 5
          ReadOnly = True
          FieldLabel = '1-'
          FieldLabelAlign = laTop
          FieldLabelFont.Style = [fsBold]
          LayoutConfig.Margin = '0 3 0 3'
          DecimalSeparator = '.'
        end
      end
      object pnlTerminate: TUniContainerPanel
        Left = 17
        Top = 167
        Width = 832
        Height = 128
        Hint = ''
        ParentColor = False
        TabOrder = 4
        Layout = 'vbox'
        LayoutConfig.Width = '80%'
        object pnlHead: TUniContainerPanel
          Left = 3
          Top = 18
          Width = 826
          Height = 56
          Hint = ''
          ParentColor = False
          TabOrder = 1
          Layout = 'hbox'
          LayoutAttribs.Align = 'middle'
          LayoutAttribs.Pack = 'start'
          LayoutConfig.Width = '100%'
          object btnTerminate: TUniButton
            Left = 4
            Top = 3
            Width = 99
            Height = 25
            Hint = ''
            Caption = 'Terminate'
            TabOrder = 2
            IconCls = 'delete'
            LayoutConfig.Cls = 'RedButton'
            LayoutConfig.Margin = '0 10 0 10'
            OnClick = btnTerminateClick
          end
          object dtpTermDate: TUniDateTimePicker
            Left = 17
            Top = 31
            Width = 112
            Hint = ''
            DateTime = 43938.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            TabOrder = 1
            LayoutConfig.Width = '30'
            LayoutConfig.Margin = '0 3 0 3'
            FieldLabel = 'Termination Date'
            FieldLabelWidth = 80
            OnChange = dtpTermDateChange
          end
          object NEdifCost: TUniNumberEdit
            Left = 135
            Top = 19
            Width = 121
            Hint = ''
            TabOrder = 6
            FieldLabel = #1593#1606' '#1575#1604#1605#1583#1577
            FieldLabelAlign = laTop
            LayoutConfig.Margin = '0 3 0 3'
            DecimalSeparator = '.'
            OnChangeValue = NEdifCostChangeValue
          end
          object NEamt: TUniNumberEdit
            Left = 262
            Top = 20
            Width = 121
            Hint = ''
            TabOrder = 7
            FieldLabel = #1575#1604#1601#1585#1602
            FieldLabelAlign = laTop
            LayoutConfig.Margin = '0 3 0 3'
            DecimalSeparator = '.'
          end
          object UniCheckBox1: TUniCheckBox
            Left = 439
            Top = 19
            Width = 106
            Height = 17
            Hint = ''
            Caption = 'Maintenance'
            TabOrder = 3
            LayoutConfig.Margin = '0 3 0 3'
            OnChange = UniCheckBox1Change
          end
          object UniEdit1: TUniEdit
            Left = 512
            Top = 20
            Width = 191
            Hint = ''
            Visible = False
            Text = #1605#1602#1575#1576#1604' '#1589#1610#1575#1606#1577' '#1575#1604#1588#1602#1577
            ParentFont = False
            Font.Style = [fsBold]
            TabOrder = 4
            FieldLabel = 'EXP'
            FieldLabelWidth = 50
            FieldLabelFont.Style = [fsBold]
            LayoutConfig.Flex = 1
            LayoutConfig.Width = '80%'
          end
          object NumEdtAmount: TUniNumberEdit
            Left = 702
            Top = 20
            Width = 121
            Hint = ''
            Visible = False
            ParentFont = False
            Font.Style = [fsBold]
            TabOrder = 5
            FieldLabel = 'Amount'
            FieldLabelWidth = 30
            FieldLabelFont.Style = [fsBold]
            LayoutConfig.Margin = '0 3 0 3'
            DecimalSeparator = '.'
          end
        end
        object UniSimplePanel1: TUniSimplePanel
          Left = 20
          Top = 81
          Width = 709
          Height = 44
          Hint = ''
          ParentColor = False
          Color = clMoneyGreen
          TabOrder = 2
          Layout = 'hbox'
          LayoutAttribs.Align = 'middle'
          LayoutAttribs.Pack = 'center'
          LayoutConfig.Width = '100%'
          object UniButton1: TUniButton
            Left = 257
            Top = 11
            Width = 150
            Height = 30
            Hint = ''
            Caption = 'Renew'
            ParentFont = False
            Font.Style = [fsBold]
            TabOrder = 1
            IconCls = 'compose'
            LayoutConfig.Cls = 'GreenButton'
            OnClick = UniButton1Click
          end
        end
      end
      object PaymentsListBox: TUniListBox
        Left = 791
        Top = 259
        Width = 74
        Height = 85
        Hint = ''
        Visible = False
        TabOrder = 6
      end
      object paPayments: TUniContainerPanel
        Left = 3
        Top = 338
        Width = 856
        Height = 196
        Hint = ''
        ParentColor = False
        TabOrder = 7
        Layout = 'hbox'
        LayoutConfig.Margin = '5 0 0 0'
        object pnlRestPayments: TUniContainerPanel
          Left = 16
          Top = 3
          Width = 428
          Height = 169
          Hint = ''
          Visible = False
          ParentColor = False
          TabOrder = 1
          Layout = 'vbox'
          LayoutAttribs.Align = 'center'
          LayoutConfig.Margin = '3 0 0 3'
          object UniLabel1: TUniLabel
            Left = 135
            Top = 5
            Width = 150
            Height = 19
            Hint = ''
            Caption = 'There Is No Due Payments'
            ParentFont = False
            Font.Charset = ANSI_CHARSET
            Font.Height = -13
            Font.Name = 'Tajawal'
            Font.Style = [fsBold]
            TabOrder = 2
          end
          object PmtVerticalGrid: TUniDBGrid
            Left = 1
            Top = 30
            Width = 406
            Height = 134
            Hint = ''
            HeaderTitle = 'Due Payments'
            HeaderTitleAlign = taCenter
            DataSource = DuePaymentsQs
            Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgAutoRefreshRow]
            ReadOnly = True
            WebOptions.Paged = False
            LoadMask.Message = 'Loading data...'
            ForceFit = True
            LayoutConfig.Flex = 1
            LayoutConfig.Width = '100%'
            LayoutConfig.Margin = '5 0 5 0'
            TabOrder = 3
            Columns = <
              item
                FieldName = 'PaymentSN'
                Title.Alignment = taCenter
                Title.Caption = 'PaymentSN'
                Width = 40
                Alignment = taCenter
              end
              item
                FieldName = 'PaymentDate'
                Title.Alignment = taCenter
                Title.Caption = 'PaymentDate'
                Width = 85
                Alignment = taCenter
              end
              item
                FieldName = 'PaymentValu'
                Title.Alignment = taCenter
                Title.Caption = 'PaymentValu'
                Width = 65
                Alignment = taCenter
              end
              item
                FieldName = 'Paid'
                Title.Alignment = taCenter
                Title.Caption = 'Paid'
                Width = 40
                Alignment = taCenter
              end
              item
                FieldName = 'PayDate'
                Title.Alignment = taCenter
                Title.Caption = 'PayDate'
                Width = 80
                Alignment = taCenter
              end
              item
                FieldName = 'PayType'
                Title.Alignment = taCenter
                Title.Caption = 'PayType'
                Width = 150
                Alignment = taCenter
              end>
          end
          object UniPanel2: TUniPanel
            Left = 0
            Top = 167
            Width = 428
            Height = 2
            Hint = ''
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alBottom
            TabOrder = 1
            BorderStyle = ubsNone
            Caption = 'pnlFooter'
            Color = clMedGray
            LayoutConfig.Width = '100%'
          end
        end
        object pnlPaidPayments: TUniContainerPanel
          Left = 449
          Top = 3
          Width = 428
          Height = 169
          Hint = ''
          Visible = False
          ParentColor = False
          TabOrder = 2
          Layout = 'vbox'
          LayoutAttribs.Align = 'center'
          LayoutConfig.Margin = '3 0 0 3'
          object UniLabel3: TUniLabel
            Left = 133
            Top = 16
            Width = 152
            Height = 19
            Hint = ''
            Caption = 'There Is No Paid Payments'
            ParentFont = False
            Font.Charset = ANSI_CHARSET
            Font.Height = -13
            Font.Name = 'Tajawal'
            Font.Style = [fsBold]
            TabOrder = 2
          end
          object PaidPmtVerticalGrid: TUniDBGrid
            Left = 16
            Top = 36
            Width = 377
            Height = 128
            Hint = ''
            HeaderTitle = 'Paid Payments'
            HeaderTitleAlign = taCenter
            DataSource = PaidPaymentsQs
            Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgAutoRefreshRow]
            ReadOnly = True
            WebOptions.Paged = False
            LoadMask.Message = 'Loading data...'
            ForceFit = True
            LayoutConfig.Flex = 1
            LayoutConfig.Width = '100%'
            LayoutConfig.Margin = '5 0 5 0'
            TabOrder = 3
            Columns = <
              item
                FieldName = 'PaymentSN'
                Title.Alignment = taCenter
                Title.Caption = 'PaymentSN'
                Width = 40
                Alignment = taCenter
              end
              item
                FieldName = 'PaymentDate'
                Title.Alignment = taCenter
                Title.Caption = 'PaymentDate'
                Width = 85
                Alignment = taCenter
              end
              item
                FieldName = 'PaymentValu'
                Title.Alignment = taCenter
                Title.Caption = 'PaymentValu'
                Width = 65
                Alignment = taCenter
              end
              item
                FieldName = 'Paid'
                Title.Alignment = taCenter
                Title.Caption = 'Paid'
                Width = 45
                Alignment = taCenter
              end
              item
                FieldName = 'PayDate'
                Title.Alignment = taCenter
                Title.Caption = 'PayDate'
                Width = 80
                Alignment = taCenter
              end
              item
                FieldName = 'PayType'
                Title.Alignment = taCenter
                Title.Caption = 'PayType'
                Width = 150
                Alignment = taCenter
              end>
          end
          object UniPanel3: TUniPanel
            Left = 0
            Top = 167
            Width = 428
            Height = 2
            Hint = ''
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alBottom
            TabOrder = 1
            BorderStyle = ubsNone
            Caption = 'pnlFooter'
            Color = clMedGray
            LayoutConfig.Width = '100%'
          end
        end
      end
    end
  end
  object UniURLFrame1: TUniURLFrame [1]
    Left = 28
    Top = 669
    Width = 341
    Height = 73
    Hint = ''
    Visible = False
    TabOrder = 1
    ParentColor = False
    Color = clMoneyGreen
  end
  inherited siLang1: TsiLang
    Left = 612
    Top = 159
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400520065006E0074005400650072006D0069006E006100
      740069006F006E0046000100520065006E00740020005400650072006D006900
      6E006100740069006F006E000100270646064706270621062000390642062F06
      200027064A062C062706310601000D000A0070006E006C0046006F006F007400
      65007200010070006E006C0046006F006F00740065007200010001000D000A00
      55006E006900500061006E0065006C003100010070006E006C0046006F006F00
      740065007200010001000D000A00620074006E005400650072006D0069006E00
      61007400650001005400650072006D0069006E00610074006500010027064606
      470627062106200027064406390642062F0601000D000A0055006E0069004300
      6800650063006B0042006F007800310001004D00610069006E00740065006E00
      61006E006300650001004A0648062C062F06200035064A062706460647060100
      0D000A0055006E00690042007500740074006F006E0031000100520065006E00
      6500770001002A062C062F064A062F06200027064406390642062F0601000D00
      0A0055006E0069004C006100620065006C00320001005000610079006D007400
      20005300630068006500640075006C0065003A000100270644062F0641063906
      27062A06200027064406450633062A062D064206290601000D000A0055006E00
      69004C006100620065006C003100010054006800650072006500200049007300
      20004E006F00200044007500650020005000610079006D0065006E0074007300
      01004406270620004A0648062C062F0620002F064106390627062A0620004506
      33062A062D064206290601000D000A0055006E006900500061006E0065006C00
      3200010070006E006C0046006F006F00740065007200010001000D000A005500
      6E0069004C006100620065006C00330001005400680065007200650020004900
      730020004E006F002000500061006900640020005000610079006D0065006E00
      7400730001004406270620004A0648062C062F0620002F064106390627062A06
      2000450633062F062F06290601000D000A0055006E006900500061006E006500
      6C003300010070006E006C0046006F006F00740065007200010001000D000A00
      73007400480069006E00740073005F0055006E00690063006F00640065000D00
      0A007300740044006900730070006C00610079004C006100620065006C007300
      5F0055006E00690063006F00640065000D000A005000610079006D0065006E00
      7300510049004400010049004400010001000D000A005000610079006D006500
      6E007300510043006F006E00740072006100630074004E006F00010043006F00
      6E00740072006100630074004E006F00010001000D000A005000610079006D00
      65006E00730051005000610079006D0065006E00740053004E00010050006100
      79006D0065006E00740053004E00010001000D000A005000610079006D006500
      6E00730051005000610079006D0065006E007400440061007400650001005000
      610079006D0065006E0074004400610074006500010001000D000A0050006100
      79006D0065006E00730051005000610079006D0065006E007400560061006C00
      750001005000610079006D0065006E007400560061006C007500010001000D00
      0A005000610079006D0065006E00730051005000610069006400010050006100
      69006400010001000D000A005000610079006D0065006E007300510050006100
      7900440061007400650001005000610079004400610074006500010001000D00
      0A005000610079006D0065006E00730051005000610079005400790070006500
      01005000610079005400790070006500010001000D000A005000610079006D00
      65006E007300510070006D0074004E006F00740065007300010070006D007400
      4E006F00740065007300010001000D000A007300740046006F006E0074007300
      5F0055006E00690063006F00640065000D000A00730074004D0075006C007400
      69004C0069006E00650073005F0055006E00690063006F00640065000D000A00
      7300740044006C0067007300430061007000740069006F006E0073005F005500
      6E00690063006F00640065000D000A005700610072006E0069006E0067000100
      5700610072006E0069006E006700010001000D000A004500720072006F007200
      01004500720072006F007200010001000D000A0049006E0066006F0072006D00
      6100740069006F006E00010049006E0066006F0072006D006100740069006F00
      6E00010001000D000A0043006F006E006600690072006D00010043006F006E00
      6600690072006D00010001000D000A0059006500730001002600590065007300
      010001000D000A004E006F00010026004E006F00010001000D000A004F004B00
      01004F004B00010001000D000A00430061006E00630065006C00010043006100
      6E00630065006C00010001000D000A00410062006F0072007400010026004100
      62006F0072007400010001000D000A0052006500740072007900010026005200
      6500740072007900010001000D000A00490067006E006F007200650001002600
      490067006E006F0072006500010001000D000A0041006C006C00010026004100
      6C006C00010001000D000A004E006F00200054006F00200041006C006C000100
      4E0026006F00200074006F00200041006C006C00010001000D000A0059006500
      7300200054006F00200041006C006C000100590065007300200074006F002000
      260041006C006C00010001000D000A00480065006C0070000100260048006500
      6C007000010001000D000A007300740053007400720069006E00670073005F00
      55006E00690063006F00640065000D000A00730074004F007400680065007200
      53007400720069006E00670073005F0055006E00690063006F00640065000D00
      0A005400520065006E0074005400650072006D0069006E006100740069006F00
      6E0046002E004C00610079006F00750074000100660069007400010001000D00
      0A0070006E006C00420061007300650043006F006E007400610069006E006500
      72002E004C00610079006F00750074000100760062006F007800010001000D00
      0A0043006F006E0074007200610063007400430042002E0045006D0070007400
      79005400650078007400010043006F006E007400720061006300740049004400
      3B004E0061006D0065003B0075006E00690074004E006F003B0055006E006900
      74000100310642064506200027064406390642062F0620002C00200027063306
      4506200027064406450633062A0623062C06310620002C002000310642064506
      20002706440648062D062F06470620002C0020002706440648062D062F064706
      01000D000A0043006F006E0074007200610063007400430042002E0046006900
      65006C0064004C006100620065006C0001004C006F006F006B00200046006F00
      7200200043006F006E0074007200610063007400010028062D062B0620003906
      4606200027064406390642062F0601000D000A0043006F006E00740072006100
      63007400430042002E004600690065006C0064004C006100620065006C005300
      6500700061007200610074006F00720001003A00010001000D000A0045007300
      7400610074006500430042002E0045006D007000740079005400650078007400
      01004500730074004E006F003B006500730074004E0061006D0065003B006500
      7300740044006900730074007200690063007400010031064206450620002706
      4406390642062706310620002C00200027063306450620002706440639064206
      2706310620002C002000270644062D064A0601000D000A004500730074006100
      74006500430042002E004600690065006C0064004C006100620065006C000100
      4C006F006F006B00200046006F00720020004500730074006100740065000100
      28062D062B06200039064606200027064406390642062706310601000D000A00
      450073007400610074006500430042002E004600690065006C0064004C006100
      620065006C0053006500700061007200610074006F00720001003A0001000100
      0D000A0055006E0069007400430042002E0045006D0070007400790054006500
      78007400010075006E00690074004E006F003B0055006E00690074003B004600
      6C006F006F0072003B004E0061006D0065000100310642064506200027064406
      48062D062F06470620002C0020002706440648062D062F06470620002C002000
      27064406370627062806420620002C0020002706330645062000270644064506
      33062A0623062C06310601000D000A0055006E0069007400430042002E004600
      690065006C0064004C006100620065006C0001004C006F006F006B0020004600
      6F007200200055006E0069007400010028062D062B0620003906460620002706
      440648062D062F06470601000D000A0055006E0069007400430042002E004600
      690065006C0064004C006100620065006C005300650070006100720061007400
      6F00720001003A00010001000D000A0043006F006E0074007200610063007400
      44006100740061002E004C00610079006F00750074000100760062006F007800
      010001000D000A0070006E006C0046006F006F007400650072002E004C006100
      79006F007500740001006100620073006F006C00750074006500010001000D00
      0A00530065006C0065006300740074006500640050006E006C002E004C006100
      79006F007500740001007400610062006C006500010001000D000A0064006200
      650043006F006E00740072006100630074002E004600690065006C0064004C00
      6100620065006C00010043006F006E0074000100310642064506200027064406
      390642062F0601000D000A0064006200650043006F006E007400720061006300
      74002E004600690065006C0064004C006100620065006C005300650070006100
      7200610074006F00720001003A00010001000D000A0055006E00690044004200
      450064006900740032002E004600690065006C0064004C006100620065006C00
      0100530074006100720074007300010028062F062306200041064A0601000D00
      0A0055006E00690044004200450064006900740032002E004600690065006C00
      64004C006100620065006C0053006500700061007200610074006F0072000100
      3A00010001000D000A0055006E00690044004200450064006900740033002E00
      4600690065006C0064004C006100620065006C00010045006E00640073000100
      480620004A0646062A0647064A06200041064A0601000D000A0055006E006900
      44004200450064006900740033002E004600690065006C0064004C0061006200
      65006C0053006500700061007200610074006F00720001003A00010001000D00
      0A006400620065004500730074006100740065004E006F002E00460069006500
      6C0064004C006100620065006C00010045007300740061007400650001002806
      4A062706460627062A06200027064406390642062706310601000D000A006400
      620065004500730074006100740065004E006F002E004600690065006C006400
      4C006100620065006C0053006500700061007200610074006F00720001003A00
      010001000D000A0055006E00690044004200450064006900740035002E004600
      690065006C0064004C006100620065006C005300650070006100720061007400
      6F00720001003A00010001000D000A0055006E00690044004200450064006900
      740036002E004600690065006C0064004C006100620065006C00530065007000
      61007200610074006F00720001003A00010001000D000A006400620065005500
      6E00690074004E006F002E004600690065006C0064004C006100620065006C00
      010055006E006900740001002706440648062D062F0629062000270644064506
      24062C063106290601000D000A0064006200650055006E00690074004E006F00
      2E004600690065006C0064004C006100620065006C0053006500700061007200
      610074006F00720001003A00010001000D000A0055006E006900440042004500
      64006900740038002E004600690065006C0064004C006100620065006C005300
      6500700061007200610074006F00720001003A00010001000D000A0055006E00
      690044004200450064006900740039002E004600690065006C0064004C006100
      620065006C0053006500700061007200610074006F00720001003A0001000100
      0D000A0055006E006900500061006E0065006C0031002E004C00610079006F00
      7500740001006100620073006F006C00750074006500010001000D000A005500
      6E00690044004200450064006900740031002E004600690065006C0064004C00
      6100620065006C000100540065006E0061006E00740020004E0061006D006500
      0100270633064506200027064406450633062A0623062C06310601000D000A00
      55006E00690044004200450064006900740031002E004600690065006C006400
      4C006100620065006C0053006500700061007200610074006F00720001003A00
      010001000D000A0070006E006C005400650072006D0069006E00610074006500
      2E004C00610079006F00750074000100760062006F007800010001000D000A00
      70006E006C0048006500610064002E004C00610079006F007500740001006800
      62006F007800010001000D000A006400740070005400650072006D0044006100
      740065002E00440061007400650046006F0072006D0061007400010064006400
      2F004D004D002F007900790079007900010001000D000A006400740070005400
      650072006D0044006100740065002E004600690065006C0064004C0061006200
      65006C0001005400650072006D0069006E006100740069006F006E0020004400
      61007400650001002A06270631064A062E062000270644062706460647062706
      210601000D000A006400740070005400650072006D0044006100740065002E00
      4600690065006C0064004C006100620065006C00530065007000610072006100
      74006F00720001003A00010001000D000A006400740070005400650072006D00
      44006100740065002E00540069006D00650046006F0072006D00610074000100
      480048003A006D006D003A0073007300010001000D000A00620074006E005400
      650072006D0069006E006100740065002E00490063006F006E0043006C007300
      0100640065006C0065007400650001002D063006410601000D000A0055006E00
      6900450064006900740031002E004600690065006C0064004C00610062006500
      6C00010045005800500001002706440628064A062706460601000D000A005500
      6E006900450064006900740031002E004600690065006C0064004C0061006200
      65006C0053006500700061007200610074006F00720001003A00010001000D00
      0A004E0075006D0045006400740041006D006F0075006E0074002E0046006900
      65006C0064004C006100620065006C00010041006D006F0075006E0074000100
      270644064506280644063A0601000D000A004E0075006D004500640074004100
      6D006F0075006E0074002E004600690065006C0064004C006100620065006C00
      53006500700061007200610074006F00720001003A00010001000D000A005500
      6E006900450064006900740031002E0054006500780074000100450642062706
      28064406200035064A0627064606290620002706440634064206290601000100
      0D000A0055006E006900530069006D0070006C006500500061006E0065006C00
      31002E004C00610079006F00750074000100680062006F007800010001000D00
      0A0055006E00690042007500740074006F006E0031002E00490063006F006E00
      43006C007300010063006F006D0070006F0073006500010001000D000A005000
      79006D00740053006300680050006E006C002E004C00610079006F0075007400
      0100680062006F007800010001000D000A0050006D00740031002E0046006900
      65006C0064004C006100620065006C0053006500700061007200610074006F00
      720001003A00010001000D000A0050006D00740032002E004600690065006C00
      64004C006100620065006C00010031002D00010001000D000A0050006D007400
      32002E004600690065006C0064004C006100620065006C005300650070006100
      7200610074006F00720001003A00010001000D000A0050006D00740033002E00
      4600690065006C0064004C006100620065006C00010031002D00010001000D00
      0A0050006D00740033002E004600690065006C0064004C006100620065006C00
      53006500700061007200610074006F00720001003A00010001000D000A005000
      6D00740034002E004600690065006C0064004C006100620065006C0001003100
      2D00010001000D000A0050006D00740034002E004600690065006C0064004C00
      6100620065006C0053006500700061007200610074006F00720001003A000100
      01000D000A0055006E00690043006F006E007400610069006E00650072005000
      61006E0065006C0031002E004C00610079006F00750074000100680062006F00
      7800010001000D000A0064006200650050004D00540063006E0074002E004600
      690065006C0064004C006100620065006C0001005000610079006D0065006E00
      740073000100270644062F064106390627062A0601000D000A00640062006500
      50004D00540063006E0074002E004600690065006C0064004C00610062006500
      6C0053006500700061007200610074006F00720001003A00010001000D000A00
      640062006500520065006E00740041004D0054002E004600690065006C006400
      4C006100620065006C000100520065006E00740041004D005400010042064A06
      45062906200027064406390642062F0601000D000A0064006200650052006500
      6E00740041004D0054002E004600690065006C0064004C006100620065006C00
      53006500700061007200610074006F00720001003A00010001000D000A004E00
      450064006900660043006F00730074002E004600690065006C0064004C006100
      620065006C0053006500700061007200610074006F00720001003A0001000100
      0D000A00700061005000610079006D0065006E00740073002E004C0061007900
      6F00750074000100680062006F007800010001000D000A0070006E006C005200
      6500730074005000610079006D0065006E00740073002E004C00610079006F00
      750074000100760062006F007800010001000D000A0055006E00690050006100
      6E0065006C0032002E004C00610079006F007500740001006100620073006F00
      6C00750074006500010001000D000A0070006E006C0050006100690064005000
      610079006D0065006E00740073002E004C00610079006F007500740001007600
      62006F007800010001000D000A0055006E006900500061006E0065006C003300
      2E004C00610079006F007500740001006100620073006F006C00750074006500
      010001000D000A0050006D00740056006500720074006900630061006C004700
      7200690064002E004800650061006400650072005400690074006C0065000100
      44007500650020005000610079006D0065006E00740073000100270644062F06
      4106390627062A06200027064406450633062A062D064206290601000D000A00
      500061006900640050006D00740056006500720074006900630061006C004700
      7200690064002E004800650061006400650072005400690074006C0065000100
      500061006900640020005000610079006D0065006E0074007300010027064406
      2F064106390627062A06200027064406450633062F062F06290601000D000A00
      730074004C006F00630061006C00650073005F0055006E00690063006F006400
      65000D000A007300740043006F006C006C0065006300740069006F006E007300
      5F0055006E00690063006F00640065000D000A0050006D007400560065007200
      74006900630061006C0047007200690064002E0043006F006C0075006D006E00
      73005B0030005D002E0043006800650063006B0042006F007800460069006500
      6C0064002E004600690065006C006400560061006C0075006500730001007400
      7200750065003B00660061006C0073006500010001000D000A0050006D007400
      56006500720074006900630061006C0047007200690064002E0043006F006C00
      75006D006E0073005B0030005D002E005400690074006C0065002E0043006100
      7000740069006F006E0001005000610079006D0065006E00740053004E000100
      270644062F0641063906470601000D000A0050006D0074005600650072007400
      6900630061006C0047007200690064002E0043006F006C0075006D006E007300
      5B0031005D002E0043006800650063006B0042006F0078004600690065006C00
      64002E004600690065006C006400560061006C00750065007300010074007200
      750065003B00660061006C0073006500010001000D000A0050006D0074005600
      6500720074006900630061006C0047007200690064002E0043006F006C007500
      6D006E0073005B0031005D002E005400690074006C0065002E00430061007000
      740069006F006E0001005000610079006D0065006E0074004400610074006500
      01002A06270631064A062E06200027064406270633062A062D06420627064206
      01000D000A0050006D00740056006500720074006900630061006C0047007200
      690064002E0043006F006C0075006D006E0073005B0032005D002E0043006800
      650063006B0042006F0078004600690065006C0064002E004600690065006C00
      6400560061006C00750065007300010074007200750065003B00660061006C00
      73006500010001000D000A0050006D0074005600650072007400690063006100
      6C0047007200690064002E0043006F006C0075006D006E0073005B0032005D00
      2E005400690074006C0065002E00430061007000740069006F006E0001005000
      610079006D0065006E007400560061006C00750001002706440642064A064506
      290601000D000A0050006D00740056006500720074006900630061006C004700
      7200690064002E0043006F006C0075006D006E0073005B0033005D002E004300
      6800650063006B0042006F0078004600690065006C0064002E00460069006500
      6C006400560061006C00750065007300010074007200750065003B0066006100
      6C0073006500010001000D000A0050006D007400560065007200740069006300
      61006C0047007200690064002E0043006F006C0075006D006E0073005B003300
      5D002E005400690074006C0065002E00430061007000740069006F006E000100
      50006100690064000100450633062F062F06470601000D000A0050006D007400
      56006500720074006900630061006C0047007200690064002E0043006F006C00
      75006D006E0073005B0034005D002E0043006800650063006B0042006F007800
      4600690065006C0064002E004600690065006C006400560061006C0075006500
      7300010074007200750065003B00660061006C0073006500010001000D000A00
      50006D00740056006500720074006900630061006C0047007200690064002E00
      43006F006C0075006D006E0073005B0034005D002E005400690074006C006500
      2E00430061007000740069006F006E0001005000610079004400610074006500
      01002A06270631064A062E0620002706440633062F0627062F0601000D000A00
      50006D00740056006500720074006900630061006C0047007200690064002E00
      43006F006C0075006D006E0073005B0035005D002E0043006800650063006B00
      42006F0078004600690065006C0064002E004600690065006C00640056006100
      6C00750065007300010074007200750065003B00660061006C00730065000100
      01000D000A0050006D00740056006500720074006900630061006C0047007200
      690064002E0043006F006C0075006D006E0073005B0035005D002E0054006900
      74006C0065002E00430061007000740069006F006E0001005000610079005400
      7900700065000100370631064A06420629062000270644062F06410639060100
      0D000A00500061006900640050006D0074005600650072007400690063006100
      6C0047007200690064002E0043006F006C0075006D006E0073005B0030005D00
      2E0043006800650063006B0042006F0078004600690065006C0064002E004600
      690065006C006400560061006C00750065007300010074007200750065003B00
      660061006C0073006500010001000D000A00500061006900640050006D007400
      56006500720074006900630061006C0047007200690064002E0043006F006C00
      75006D006E0073005B0030005D002E005400690074006C0065002E0043006100
      7000740069006F006E0001005000610079006D0065006E00740053004E000100
      270644062F0641063906470601000D000A00500061006900640050006D007400
      56006500720074006900630061006C0047007200690064002E0043006F006C00
      75006D006E0073005B0031005D002E0043006800650063006B0042006F007800
      4600690065006C0064002E004600690065006C006400560061006C0075006500
      7300010074007200750065003B00660061006C0073006500010001000D000A00
      500061006900640050006D00740056006500720074006900630061006C004700
      7200690064002E0043006F006C0075006D006E0073005B0031005D002E005400
      690074006C0065002E00430061007000740069006F006E000100500061007900
      6D0065006E007400440061007400650001002A06270631064A062E0620002706
      4406270633062A062D0642062706420601000D000A0050006100690064005000
      6D00740056006500720074006900630061006C0047007200690064002E004300
      6F006C0075006D006E0073005B0032005D002E0043006800650063006B004200
      6F0078004600690065006C0064002E004600690065006C006400560061006C00
      750065007300010074007200750065003B00660061006C007300650001000100
      0D000A00500061006900640050006D0074005600650072007400690063006100
      6C0047007200690064002E0043006F006C0075006D006E0073005B0032005D00
      2E005400690074006C0065002E00430061007000740069006F006E0001005000
      610079006D0065006E007400560061006C00750001002706440642064A064506
      290601000D000A00500061006900640050006D00740056006500720074006900
      630061006C0047007200690064002E0043006F006C0075006D006E0073005B00
      33005D002E0043006800650063006B0042006F0078004600690065006C006400
      2E004600690065006C006400560061006C007500650073000100740072007500
      65003B00660061006C0073006500010001000D000A0050006100690064005000
      6D00740056006500720074006900630061006C0047007200690064002E004300
      6F006C0075006D006E0073005B0033005D002E005400690074006C0065002E00
      430061007000740069006F006E00010050006100690064000100450633062F06
      2F06470601000D000A00500061006900640050006D0074005600650072007400
      6900630061006C0047007200690064002E0043006F006C0075006D006E007300
      5B0034005D002E0043006800650063006B0042006F0078004600690065006C00
      64002E004600690065006C006400560061006C00750065007300010074007200
      750065003B00660061006C0073006500010001000D000A005000610069006400
      50006D00740056006500720074006900630061006C0047007200690064002E00
      43006F006C0075006D006E0073005B0034005D002E005400690074006C006500
      2E00430061007000740069006F006E0001005000610079004400610074006500
      01002A06270631064A062E0620002706440633062F0627062F0601000D000A00
      500061006900640050006D00740056006500720074006900630061006C004700
      7200690064002E0043006F006C0075006D006E0073005B0035005D002E004300
      6800650063006B0042006F0078004600690065006C0064002E00460069006500
      6C006400560061006C00750065007300010074007200750065003B0066006100
      6C0073006500010001000D000A00500061006900640050006D00740056006500
      720074006900630061006C0047007200690064002E0043006F006C0075006D00
      6E0073005B0035005D002E005400690074006C0065002E004300610070007400
      69006F006E00010050006100790054007900700065000100370631064A064206
      29062000270644062F064106390601000D000A00730074004300680061007200
      53006500740073005F0055006E00690063006F00640065000D000A00}
  end
  object lookContractQ: TUniQuery
    Connection = UniMainModule.MainDB
    SQL.Strings = (
      'SELECT Cont.ContractID ,P.Name,'
      ''
      ' Cont.EstNo, E.estName, E.estDistrict,'
      ''
      ' Cont.unitNo, U.Unit, U.Floor '
      ''
      ' FROM  contracts as Cont'
      ''
      'inner join  persons P   on Cont.tenantID = P.ID'
      ''
      'inner join  estates E   on Cont.EstNo  =  E.EstNo'
      ''
      'inner join   units U    on Cont.UnitNo = U.ID '
      ''
      'where Cont.Active = True')
    Active = True
    Left = 230
    Top = 10
  end
  object LookContractQs: TUniDataSource
    DataSet = lookContractQ
    Left = 232
    Top = 64
  end
  object lookEST: TUniQuery
    Connection = UniMainModule.MainDB
    SQL.Strings = (
      'SELECT  Cont.EstNo, E.estName, E.estDistrict'
      ''
      ' FROM  contracts as Cont'
      ''
      'inner join  estates E   on Cont.EstNo  =  E.EstNo'
      ''
      'where Cont.Expired = False'
      ''
      'Group By EstNo')
    Active = True
    Left = 326
    Top = 26
  end
  object lookESTs: TUniDataSource
    DataSet = lookEST
    Left = 328
    Top = 72
  end
  object lookUNIT: TUniQuery
    Connection = UniMainModule.MainDB
    SQL.Strings = (
      'SELECT Cont.ContractID ,P.Name,'
      ''
      ' Cont.EstNo ,'
      ''
      ' Cont.unitNo, U.Unit, U.Floor , U.ownerID '
      ''
      ' FROM  contracts as Cont'
      ''
      'inner join  persons P   on Cont.tenantID = P.ID'
      ''
      'inner join  estates E   on Cont.EstNo  =  E.EstNo'
      ''
      'inner join   units U    on Cont.UnitNo = U.ID '
      ''
      'where Cont.Active = True')
    Left = 406
    Top = 18
    object lookUNITContractID: TIntegerField
      FieldName = 'ContractID'
    end
    object lookUNITName: TWideStringField
      FieldName = 'Name'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object lookUNITEstNo: TIntegerField
      FieldName = 'EstNo'
      Required = True
    end
    object lookUNITunitNo: TIntegerField
      FieldName = 'unitNo'
      Required = True
    end
    object lookUNITUnit: TWideStringField
      FieldName = 'Unit'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object lookUNITFloor: TWideStringField
      FieldName = 'Floor'
      ReadOnly = True
      Size = 30
    end
    object lookUNITownerID: TIntegerField
      FieldName = 'ownerID'
      ReadOnly = True
      Required = True
    end
  end
  object lookUNITs: TUniDataSource
    DataSet = lookUNIT
    Left = 400
    Top = 72
  end
  object ContractDetailsQ: TUniQuery
    Connection = UniMainModule.MainDB
    SQL.Strings = (
      'SELECT '
      
        'Cont.ContractID, Cont.contF, Cont.contT , Cont.Payments,Cont.Ren' +
        'tAmount , P.Name ,'
      ''
      ' Cont.EstNo, E.estName, E.estDistrict,'
      ''
      
        ' Cont.unitNo, U.Unit, U.Floor ,U.Price1,U.Price2,U.Price3,U.Pric' +
        'e4'
      ''
      ' FROM  contracts as Cont'
      ''
      'inner join  persons P   on Cont.tenantID = P.ID'
      ''
      'inner join  estates E   on Cont.EstNo  =  E.EstNo'
      ''
      'inner join   units U    on Cont.UnitNo = U.ID '
      ' '
      'Order By Cont.ContractID')
    ReadOnly = True
    Active = True
    AfterScroll = ContractDetailsQAfterScroll
    Left = 510
    Top = 18
  end
  object ContractDetails: TUniDataSource
    DataSet = ContractDetailsQ
    Left = 513
    Top = 77
  end
  object DuePaymentsQ: TUniQuery
    Connection = UniMainModule.MainDB
    SQL.Strings = (
      'Select  * From Payments'
      'where contractNo = :ConID'
      'And Paid = False'
      ''
      ''
      'Order By COntractNo , PaymentSN'
      ''
      '')
    Active = True
    AfterScroll = DuePaymentsQAfterScroll
    Left = 57
    Top = 397
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ConID'
        Value = 635
      end>
  end
  object DuePaymentsQs: TUniDataSource
    DataSet = DuePaymentsQ
    Left = 153
    Top = 405
  end
  object SMSqry: TUniQuery
    Connection = UniMainModule.MainDB
    SQL.Strings = (
      'SELECT ID,Name,phone1 From Persons'
      'Where ID=:UnitOwnerID')
    Left = 72
    Top = 553
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
  object UniQuery1: TUniQuery
    Connection = UniMainModule.MainDB
    Left = 144
    Top = 608
  end
  object PaymensQ: TUniQuery
    Connection = UniMainModule.MainDB
    SQL.Strings = (
      'SELECT * FROM payments'
      'Order By ID')
    Left = 720
    Top = 208
    object PaymensQID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      Visible = False
    end
    object PaymensQContractNo: TIntegerField
      FieldName = 'ContractNo'
      Required = True
      Visible = False
    end
    object PaymensQPaymentSN: TIntegerField
      FieldName = 'PaymentSN'
      Required = True
      Visible = False
    end
    object PaymensQPaymentDate: TDateField
      FieldName = 'PaymentDate'
      Required = True
    end
    object PaymensQPaymentValu: TFloatField
      FieldName = 'PaymentValu'
      Required = True
    end
    object PaymensQPaid: TBooleanField
      FieldName = 'Paid'
      Required = True
    end
    object PaymensQPayDate: TDateField
      FieldName = 'PayDate'
      Visible = False
    end
    object PaymensQPayType: TWideStringField
      FieldName = 'PayType'
      Visible = False
      Size = 30
    end
    object PaymensQpmtNotes: TWideStringField
      FieldName = 'pmtNotes'
      Visible = False
      Size = 60
    end
  end
  object PaidPaymentsQ: TUniQuery
    Connection = UniMainModule.MainDB
    SQL.Strings = (
      'Select  * From Payments'
      'where contractNo = :ConID'
      'And Paid = True'
      'Order By COntractNo , PaymentSN'
      ''
      '')
    Active = True
    AfterScroll = DuePaymentsQAfterScroll
    Left = 561
    Top = 405
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ConID'
        Value = 635
      end>
  end
  object PaidPaymentsQs: TUniDataSource
    DataSet = PaidPaymentsQ
    Left = 657
    Top = 413
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxHandOver'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ContractID=ContractID'
      'ConDate=ConDate'
      'contF=contF'
      'contT=contT'
      'Payments=Payments'
      'RentAmount=RentAmount'
      'TerminDate=TerminDate'
      'Name=Name'
      'IqamaID=IqamaID'
      'EstNo=EstNo'
      'estName=estName'
      'estDistrict=estDistrict'
      'unitNo=unitNo'
      'Unit=Unit'
      'Floor=Floor'
      'Price1=Price1'
      'Price2=Price2'
      'Price3=Price3'
      'Price4=Price4')
    DataSet = PrintContractDetailsQ
    BCDToCurrency = False
    Left = 671
    Top = 672
  end
  object frxReport1: TfrxReport
    Version = '6.4.17'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41942.492033055600000000
    ReportOptions.LastChange = 44138.861471458330000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 536
    Top = 664
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxHandOver'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Tajawal'
      Font.Style = []
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 548.031581500000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxHandOver'
        RowCount = 0
        object Shape5: TfrxShapeView
          AllowVectorExport = True
          Left = 8.338590000000000000
          Top = 226.771531500000000000
          Width = 706.772110000000000000
          Height = 113.385900000000000000
          Frame.Color = clGray
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
        end
        object Picture2: TfrxPictureView
          AllowVectorExport = True
          Left = 419.527830000000000000
          Top = 7.661410000000000000
          Width = 257.007991180000000000
          Height = 128.504020000000000000
          Center = True
          Frame.Typ = []
          KeepAspectRatio = False
          Picture.Data = {
            0A544A504547496D61676573CB0000FFD8FFE000104A46494600010101006000
            600000FFE100664578696600004D4D002A000000080005030100050000000100
            00004A030200020000000C000000525110000100000001010000005111000400
            00000100002E23511200040000000100002E2300000000000186A00000B18E49
            43432050726F66696C6500FFE20C584943435F50524F46494C4500010100000C
            484C696E6F021000006D6E74725247422058595A2007CE000200090006003100
            00616373704D5346540000000049454320735247420000000000000000000000
            000000F6D6000100000000D32D48502020000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            1163707274000001500000003364657363000001840000006C77747074000001
            F000000014626B707400000204000000147258595A0000021800000014675859
            5A0000022C000000146258595A0000024000000014646D6E6400000254000000
            70646D6464000002C400000088767565640000034C0000008676696577000003
            D4000000246C756D69000003F8000000146D6561730000040C00000024746563
            68000004300000000C725452430000043C0000080C675452430000043C000008
            0C625452430000043C0000080C7465787400000000436F707972696768742028
            63292031393938204865776C6574742D5061636B61726420436F6D70616E7900
            00646573630000000000000012735247422049454336313936362D322E310000
            00000000000000000012735247422049454336313936362D322E310000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000058595A20000000000000F35100010000000116
            CC58595A200000000000000000000000000000000058595A200000000000006F
            A2000038F50000039058595A2000000000000062990000B785000018DA58595A
            2000000000000024A000000F840000B6CF646573630000000000000016494543
            20687474703A2F2F7777772E6965632E63680000000000000000000000164945
            4320687474703A2F2F7777772E6965632E636800000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0064657363000000000000002E4945432036313936362D322E31204465666175
            6C742052474220636F6C6F7572207370616365202D2073524742000000000000
            00000000002E4945432036313936362D322E312044656661756C742052474220
            636F6C6F7572207370616365202D207352474200000000000000000000000000
            00000000000000000064657363000000000000002C5265666572656E63652056
            696577696E6720436F6E646974696F6E20696E2049454336313936362D322E31
            00000000000000000000002C5265666572656E63652056696577696E6720436F
            6E646974696F6E20696E2049454336313936362D322E31000000000000000000
            000000000000000000000000000000000076696577000000000013A4FE00145F
            2E0010CF140003EDCC0004130B00035C9E0000000158595A2000000000004C09
            560050000000571FE76D65617300000000000000010000000000000000000000
            00000000000000028F0000000273696720000000004352542063757276000000
            000000040000000005000A000F00140019001E00230028002D00320037003B00
            400045004A004F00540059005E00630068006D00720077007C00810086008B00
            900095009A009F00A400A900AE00B200B700BC00C100C600CB00D000D500DB00
            E000E500EB00F000F600FB01010107010D01130119011F0125012B0132013801
            3E0145014C0152015901600167016E0175017C0183018B0192019A01A101A901
            B101B901C101C901D101D901E101E901F201FA0203020C0214021D0226022F02
            380241024B0254025D02670271027A0284028E029802A202AC02B602C102CB02
            D502E002EB02F50300030B03160321032D03380343034F035A03660372037E03
            8A039603A203AE03BA03C703D303E003EC03F9040604130420042D043B044804
            5504630471047E048C049A04A804B604C404D304E104F004FE050D051C052B05
            3A05490558056705770586059605A605B505C505D505E505F606060616062706
            3706480659066A067B068C069D06AF06C006D106E306F507070719072B073D07
            4F076107740786079907AC07BF07D207E507F8080B081F08320846085A086E08
            82089608AA08BE08D208E708FB09100925093A094F09640979098F09A409BA09
            CF09E509FB0A110A270A3D0A540A6A0A810A980AAE0AC50ADC0AF30B0B0B220B
            390B510B690B800B980BB00BC80BE10BF90C120C2A0C430C5C0C750C8E0CA70C
            C00CD90CF30D0D0D260D400D5A0D740D8E0DA90DC30DDE0DF80E130E2E0E490E
            640E7F0E9B0EB60ED20EEE0F090F250F410F5E0F7A0F960FB30FCF0FEC100910
            2610431061107E109B10B910D710F511131131114F116D118C11AA11C911E812
            07122612451264128412A312C312E31303132313431363138313A413C513E514
            0614271449146A148B14AD14CE14F01512153415561578159B15BD15E0160316
            261649166C168F16B216D616FA171D17411765178917AE17D217F7181B184018
            65188A18AF18D518FA19201945196B199119B719DD1A041A2A1A511A771A9E1A
            C51AEC1B141B3B1B631B8A1BB21BDA1C021C2A1C521C7B1CA31CCC1CF51D1E1D
            471D701D991DC31DEC1E161E401E6A1E941EBE1EE91F131F3E1F691F941FBF1F
            EA20152041206C209820C420F0211C2148217521A121CE21FB22272255228222
            AF22DD230A23382366239423C223F0241F244D247C24AB24DA25092538256825
            9725C725F726272657268726B726E827182749277A27AB27DC280D283F287128
            A228D429062938296B299D29D02A022A352A682A9B2ACF2B022B362B692B9D2B
            D12C052C392C6E2CA22CD72D0C2D412D762DAB2DE12E162E4C2E822EB72EEE2F
            242F5A2F912FC72FFE3035306C30A430DB3112314A318231BA31F2322A326332
            9B32D4330D3346337F33B833F1342B3465349E34D83513354D358735C235FD36
            37367236AE36E937243760379C37D738143850388C38C839053942397F39BC39
            F93A363A743AB23AEF3B2D3B6B3BAA3BE83C273C653CA43CE33D223D613DA13D
            E03E203E603EA03EE03F213F613FA23FE24023406440A640E74129416A41AC41
            EE4230427242B542F7433A437D43C044034447448A44CE45124555459A45DE46
            22466746AB46F04735477B47C04805484B489148D7491D496349A949F04A374A
            7D4AC44B0C4B534B9A4BE24C2A4C724CBA4D024D4A4D934DDC4E254E6E4EB74F
            004F494F934FDD5027507150BB51065150519B51E65231527C52C75313535F53
            AA53F65442548F54DB5528557555C2560F565C56A956F75744579257E0582F58
            7D58CB591A596959B85A075A565AA65AF55B455B955BE55C355C865CD65D275D
            785DC95E1A5E6C5EBD5F0F5F615FB36005605760AA60FC614F61A261F5624962
            9C62F06343639763EB6440649464E9653D659265E7663D669266E8673D679367
            E9683F689668EC6943699A69F16A486A9F6AF76B4F6BA76BFF6C576CAF6D086D
            606DB96E126E6B6EC46F1E6F786FD1702B708670E0713A719571F0724B72A673
            01735D73B87414747074CC7528758575E1763E769B76F8775677B37811786E78
            CC792A798979E77A467AA57B047B637BC27C217C817CE17D417DA17E017E627E
            C27F237F847FE5804780A8810A816B81CD8230829282F4835783BA841D848084
            E3854785AB860E867286D7873B879F8804886988CE8933899989FE8A648ACA8B
            308B968BFC8C638CCA8D318D988DFF8E668ECE8F368F9E9006906E90D6913F91
            A89211927A92E3934D93B69420948A94F4955F95C99634969F970A977597E098
            4C98B89924999099FC9A689AD59B429BAF9C1C9C899CF79D649DD29E409EAE9F
            1D9F8B9FFAA069A0D8A147A1B6A226A296A306A376A3E6A456A4C7A538A5A9A6
            1AA68BA6FDA76EA7E0A852A8C4A937A9A9AA1CAA8FAB02AB75ABE9AC5CACD0AD
            44ADB8AE2DAEA1AF16AF8BB000B075B0EAB160B1D6B24BB2C2B338B3AEB425B4
            9CB513B58AB601B679B6F0B768B7E0B859B8D1B94AB9C2BA3BBAB5BB2EBBA7BC
            21BC9BBD15BD8FBE0ABE84BEFFBF7ABFF5C070C0ECC167C1E3C25FC2DBC358C3
            D4C451C4CEC54BC5C8C646C6C3C741C7BFC83DC8BCC93AC9B9CA38CAB7CB36CB
            B6CC35CCB5CD35CDB5CE36CEB6CF37CFB8D039D0BAD13CD1BED23FD2C1D344D3
            C6D449D4CBD54ED5D1D655D6D8D75CD7E0D864D8E8D96CD9F1DA76DAFBDB80DC
            05DC8ADD10DD96DE1CDEA2DF29DFAFE036E0BDE144E1CCE253E2DBE363E3EBE4
            73E4FCE584E60DE696E71FE7A9E832E8BCE946E9D0EA5BEAE5EB70EBFBEC86ED
            11ED9CEE28EEB4EF40EFCCF058F0E5F172F1FFF28CF319F3A7F434F4C2F550F5
            DEF66DF6FBF78AF819F8A8F938F9C7FA57FAE7FB77FC07FC98FD29FDBAFE4BFE
            DCFF6DFFFFFFDB00430002010101010102010101020202020204030202020205
            04040304060506060605060606070908060709070606080B08090A0A0A0A0A06
            080B0C0B0A0C090A0A0AFFDB004301020202020202050303050A0706070A0A0A
            0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A
            0A0A0A0A0A0A0A0A0A0A0A0A0A0A0AFFC0001108025403440301220002110103
            1101FFC4001F0000010501010101010100000000000000000102030405060708
            090A0BFFC400B5100002010303020403050504040000017D0102030004110512
            2131410613516107227114328191A1082342B1C11552D1F02433627282090A16
            1718191A25262728292A3435363738393A434445464748494A53545556575859
            5A636465666768696A737475767778797A838485868788898A92939495969798
            999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4
            D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100
            030101010101010101010000000000000102030405060708090A0BFFC400B511
            0002010204040304070504040001027700010203110405213106124151076171
            1322328108144291A1B1C109233352F0156272D10A162434E125F11718191A26
            2728292A35363738393A434445464748494A535455565758595A636465666768
            696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5
            A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DA
            E2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00
            FDFCA28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
            2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
            2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
            2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
            2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
            2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
            2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
            2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
            2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
            2800A28A6975033400EA29AB22B7434EA0028A29372FAD170168A4DCBEB46E5F
            5A2E02D149B97D6972319A0028A4DC338A372FAD002D149B97D68DCBEB45C05A
            29372FAD1B97D68B80B4526E07A1A370F5A005A29BE62671BA9C083D280BDF60
            A28A28B80514526E5F5A2E02D149B97D694903AD1700A29372FAD2D001451450
            0145145001451450014514500145145001451450014514500145145001451450
            0145145001451450014514500145145001451450014514500145145001451450
            0145145001451450014514500145145001451450014514500145145001451450
            0145145001451450014514500145145001451450014514500145145001451450
            014514500145145001451450014514500145145001451450007A534A023AD2B1
            C2E4D319D5E16D80371850C48C9A03CC6ACF01DDB255C29C37CDD3EBE94A2E22
            270275FCC57C41FB6A7FC175BF656FD86FE3DEA1FB3BFC53F877F12356D734BB
            7B79EEAEBC37A4E9F2DA859A25951434D7D0316D8CA7EE607D6BC965FF0083A9
            7F60C87EFF00C15F8CC3FEE01A4FFF002D2B95E330CA569495D799EDD1E1BCF3
            154556A342528BD9A8B6BE4CFD3BDDFEDD2E7FDBAFCBC6FF0083AD7F6048CFCF
            F067E337FE13BA57FF002D29AFFF000760FF00C13E63FBFF00063E347FE13BA4
            FF00F2D68FAE617F997DE872E1ACFA1BD097FE02CFD45CFF00B7467FDBAFCB57
            FF0083B37FE09E319F9BE0DFC69FFC26F4AFFE5A533FE22D5FF82770383F073E
            347FE137A4FF00F2D28FAE617F997DE8CFFB0738FF009F32FB99FA9B9F56FD29
            A9716EC76C7206FF00779AFCB43FF076B7FC13B070FF0007BE348FF77C37A4FF
            00F2D2BF407F653FDA3FC13FB5F7C05F0AFED2DF0CF4FD52CF41F1769CB7DA7D
            B6B4AB1DD44BBCA14912391D01F94F4661DF9E95A53AF46A3B41A3971596E3B0
            74F9EBD3715B5DAB2BF63D31C6D05C9E9CD37CD5271BFF00F1D38FCE89E4FDD3
            953FC27A7D2BF357C45FF073CFEC27E1BF11DFE8F75F06FE2E5C4DA7DE4B6AD7
            36FE1DD24AB6C38DC85B51562ADDB7056E79028AD5E8D0FE234BD4781CAF30CC
            E4E384A6E6D6E926DFE07E9596039325279A878132D7E62C9FF07557EC0D11C4
            9F053E330FFB97749FFE5AD42FFF00075B7FC13E62E5BE0D7C6AFF00C27F4AFF
            00E5A565F5EC26FCCBEF476FFAB79F6FF5797FE02CFD42CFFB7467FDBAFCB76F
            F83B1FFE09EAA76B7C19F8D3FF0084E695FF00CB4A47FF0083B2FF00E09E51FD
            EF837F1A3FF09CD2BFF9694D6330AF692FBD11FEAFE75FF3E25F733F5273FEDD
            2640190D5F968DFF00076AFF00C13B4707E0EFC68FFC26F4AFFE5A56BFC39FF8
            3A87FE09FBF12FE21E83F0DB48F855F176D6F3C41AD5AE9969717DE1DD35608A
            59E55895E431EA4EE1017058AA33000E158F06A38CC3B959497DE8879167118B
            6E93D3C99FA6324A230C4BFDDE4851B8FE439A512A93812E79C1C738A80BBC70
            799203BB0366EC123D8E2BC27F6FAFDBCFE13FFC13AFE0F693F19BE30784BC49
            AB693A8789A1D12DED7C2F6D6B3DCC533DBCF3AB15B89A24D816D99490E5BE60
            403D46D52A469C79A5B773CFC3E1B158AAD1A3463CD293B24B56DF92EA7BF71E
            B4BBBFDAAFCC69BFE0E9FF00D8422FBFF053E31AFF00DC0349FF00E59540FF00
            F07587EC1119F9BE0BFC661FF72EE93FFCB4AE658EC1CB5525F79ECAE15E2295
            DAC3CB4FEEB3F50377FB74B9FF006EBF2E5BFE0EBCFD80633F3FC1AF8CDFF84D
            E95FFCB4A6BFFC1D93FF0004F68FEFFC18F8D1FF0084DE93FF00CB4A7F5CC2FF
            0032FBCCE5C379ED3DE84BFF000167EA467FDBA46915577B3ED51C92DDABF2D1
            BFE0ED4FF82788E3FE14DFC68FFC26F4AFFE5A5467FE0ED7FF00827946A4C9F0
            73E34371F757C39A4E4FB7FC8568FADE17F997DE47FABD9D7FCF997DCCFD4EF3
            149FBDE9D462A4AF933FE09A5FF0568FD9D7FE0A873F8C21FD9E3C17E32D2478
            1E4D38EB3278BB4FB4B5130BDFB5346D0082E6E0B7CD692EE0FB08DE319EDF59
            D744271A91BA3CDAF87AD85AAE9568DA4B75D505145154621451450014514500
            1451450014514500145145001451450014514500145145001451450014514500
            1451450014514500145145001451450014514500145145001451450014514500
            1451450014514500145145001451450014514500145145001451450014514500
            1451450014514500145145001451450014514500145145001451450014514500
            1451450014514500145145001451450007918A8DC910B607217B5487A5432EE5
            56247CBB4F538A2D70F33F0CFF00E0B5DFB117ED47F187FE0A01E2AF883F0EBF
            675F19F88B4ABEB0D345AEA9A2F872E2EA193CBB28A371BE342010EA460E0F1E
            95F1FDFF00FC1327F6E8972D17EC77F129B8EDE09BDFFE375FD2A78CFE3F7C03
            F875ADFF00C233E3EF8C9E13D17518D55DAC356F105B5B4A14F4628EEAC38E41
            C62B3FFE1AE7F653C71FB4C780FF00F0B2B2FF00E3B5F3B5B23C3E22B4A73A9A
            B7DCFD572DF12B3CCBB2BA3848612328C159369DFF00E09FCD1DDFFC12FF00F6
            F5704A7EC65F13BFF087BDFF00E3559775FF0004B9FDBF8FCF1FEC5BF145B03F
            E845BEFF00E355FD380FDAEBF655270DFB4BF807F1F17D97FF001DA5FF0086B6
            FD937FE8E5BE1EFF00E15F67FF00C7AA6391E0A9FF00CBC7F79A4BC4DCF25FF3
            0918FA26CFE5F2EBFE096FFF000509704A7EC45F150FFDC857FF00FC6AA8CDFF
            0004B2FF008287B8253F619F8AFD3FE843BFFF00E355FD487FC35BFEC97FF473
            1F0FFF00F0B1B3FF00E3D4A3F6BBFD93074FDA63E1FF00FE15F65FFC7AAE3946
            07F9DFDE734BC41CEE7FF30EBFF0167F2C927FC12AFF00E0A35F797F616F8B07
            FEE43BFF00FE355FD257FC11F3E1C78DFE10FF00C135FE107C35F899E15BED0F
            C41A5F85C26A5A3EA56E63B8B6633C842BA1E54E181E4719E6BD41FF006B9FD9
            41D0A27ED35F0FC330C0FF008ABACFAFE135771E19F10F873C57A3DBEBFE16D6
            ACF52D36E8092D6F6C6ED678A51EAAEA4A919F426BBB0583C3E16A5E9CAECF99
            E20E20CC33AC3C69E269F224EFA2B17AF15FEC732A1F9B61C7E55FCCC7C41FF8
            2697EDB171E31D5A7B5FD933E224EB26AB70C25B7F07DDC88FF3755658CAB03D
            88241ED5FD34DCEC6859664565DA77AB0C822BCDEFBF6ABFD95F4FBC92C6FBF6
            8EF0147345298E78EE3C576619194E0AE0CA36907A8EB4B33CBA8E6115ED276B
            1BF09715661C2F52A54C2525373493BABDAD7FF33F9B3BEFF8261FEDD2F978BF
            63AF898D8E7FE447BEFF00E3559777FF0004BFFDBDA45629FB17FC503C7FD08B
            7DFF00C6ABFA5E1FB5A7EC960FFC9C97C3EFFC2BACBFF8F53FFE1AD7F64CEDFB
            4A7C3EFF00C2C2CBFF008F579B4F23C14636751FDE7D64BC4ECFB9797EACBFF0
            167F31575FF04B7FF8281BF29FB14FC513F4F02DF7FF001AACDBAFF82597FC14
            39BE64FD88BE2B37FDC877FCFF00E42AFEA23FE1AD7F64FF00FA397F87FF00F8
            57597FF1EA17F6B7FD9357FE6E5FC01FF858597FF1EAD6393E063FF2F1FDE8E4
            9788B9E4BFE61D7DCCFE5AA6FF0082587FC14559495FD85BE2C7FE1077FF00FC
            6ABADFD99BFE0973FF000508D2BF694F87BAB6B1FB157C4FB2B3B5F1C69335E5
            EDF782EF2186DE25BC899E492478C2C68A01259880002490057F4D1FF0D77FB2
            7F51FB4CFC3EFF00C2C2CBFF008ED4DA4FED57FB316B7A943A4E8FFB45781EEA
            EEE2658ADED6DBC5568F24B231C2A2A8949662700000924D6B4F2BC35392709F
            E27257E3ACF3114270787566ACF47B1DE8C3C3F77864CAE463B57C21FF000703
            FC13F895FB41FEC6FE19F09FC1FF0087BAD78A350B7F895697D3E9FA16992DD4
            F1C234EBF5323468A58286923078E370AFBC0C8197CB53B89E32CB9C573FE3AF
            891E02F86BA443AF7C4AF1BE8FA0D84B70B0A5D6B9A8456D1B4CC09F2C3C8CAB
            BB6AB60649201EB8E7D2C561E35B0AE95476B9F15936655729CDA8E2E82E69D3
            97325DD9FCCDDFFF00C133BF6E39433C5FB207C486E3F87C1B79FF00C6EB1EEF
            FE098DFB7838253F634F89A7FEE47BDFFE355FD2B2FED71FB26853B7F694F002
            FF00DCE165FF00C7693FE1AEBF64FEDFB4CF803FF0AEB1FF00E3B5F3F1E1DC1C
            7FE5EBFBCFD4B11E2A67D59DA5828BDF64D6ECFE662EBFE0981FB7D480ECFD8B
            FE279FFB91EFBFF8D5665DFF00C12D7FE0A0AE098FF62AF8A4DC741E05BEFF00
            E355FD3DFF00C35DFECA1D3FE1A4FC03FF0085758FFF001EA07ED6BFB2767FE4
            E5BE1FFF00E15F65FF00C7ABAA392E0E2B5A8FEF3825E236752DB0AA3F26CFE5
            CE6FF8259FFC144581C7EC3DF158FF00DC877FFF00C6AA9CFF00F04B0FF8288A
            2997FE186BE2C10A33F2F806FCFE9E5735FD4D7FC35B7EC9C47FC9CBFC3FFC7C
            6167FF00C7AA397F6B7FD9350171FB4C7C3FE067E5F18597FF001EA7FD8F81D9
            D47F79CD2E3DCEAAC95E82D35D99F9A3FF0006B07ECAFF00B487ECC9A8FC7287
            F681F811E2DF04FF006C27865749FF00849B40B8B3179E41D5C4DE599540709E
            6C792323E75F515FAFD5C8F803E29FC2AF8A2663F0DBE20F87BC4474F64370DA
            1EAD0DD8B60E5826EF2D9B61211BAE33B5B1DEBAEAF630F469D1A6A307747C1E
            6B8DAD9863A788AB1B4A5BAF90514515B9E78514514005145140051451400514
            5140051451400514514005145140051451400514514005145140051451400514
            5140051451400514514005145140051451400514514005145140051451400514
            5140051451400514514005145140051451400514514005145140051451400514
            5140051451400514514005145140051451400514514005145140051451400514
            5140051451400514514005472ED21830C8DBD0F7A91B38E2A2911CF4F4A57B31
            3EE7F309FF000729B4FF00F0F6AF1CC72CAD21FEC4D0CB3331F940D36DC6D519
            E013927EB5F060DBD947EBFE35F7BFFC1CAE98FF0082B8F8ECFF000FF61E87FF
            00A6F82BE0BFDD1E01AF90C654A9F59959F53F7BC868E1E592D09722778A1A41
            EFB7F5FF001A69DB8FBA3F5FF1A90A363A5336B7A573FB4A8FA9EBFB1C3FFCFB
            4336FF00B03F5FF1A36FFB03F5FF001A75018138068E6A9DC5EC28BDA086A8C3
            6767F3FF001AFEAE7FE085ACD2FF00C1287E09121BFE453C659B9E2E66E49CF3
            9016BF949D8DE95FD5C7FC10A94AFF00C1283E0996FF00A14BFF006E25AF6326
            7278877EC7C1F1E51A70CBE0EC96BFA33EB5B939B67E3F84D7F165F14FE7F899
            E2273F3337882F58316660DBA791998E4F52481ED9AFED36ECE2DE4DABD14D7F
            167F13C1FF00858FAF0F4D62EBFF00469ADB377254E36F3FD0F3BC3F873622B5
            D27A2DFE673FB7FD81FAFF008D20DBD947EBFE3526C3DC5298D40CE2BC1E6A9C
            AB53F4D8D1A2E3AD3447B5BFD9FD7FC682BC7DC1FAFF008D2EE5F5A0B02300D1
            CD53B8FD8E1FFE7DA220BCFDD1FAFF008D7A1FEC9B2496FF00B52FC35920936B
            7FC27FA390C990C0FDBA1E873D6BCFF6B7A577DFB287FC9D2FC35FFB1FF46FFD
            2E86B4A72A9ED23AF539B154692C3D47182F859FD94C48E22550BB5B6E3AF400
            F1F98AFCB9FF0083B555CFFC13A7C1606DDBFF000BAB4F0C847CAD8D2B57E38E
            73D1BD3295FA94858C7BC47F363D6BF2E7FE0ED4047FC139FC1631FF0035B34F
            27DBFE253AC57D4E3B9BEAF2773F11E1FE6FEDEC3DD27EF9FCEF98E3C7DC1FAF
            F8D34C28067CB1FAFF008D4941E462BE3E356B773F78951A526DF22DD907CBFD
            D1FAFF008D2EDFF607EBFE35218D40CE29A3938A7ED2AF727D8515BC10C63C75
            5FD7FC698A22660B2479527E61CF23F3AB0625C74A6883073B69A9D495EEFA15
            EC70FA7EED1FB5DFF0674F9AD37ED08D92DC7845D8063F78FF006D0240278C9C
            B7E22BF70ABF0FFF00E0CE52EB37ED0807FCF2F087FEE6EBF702BEAF2DE67828
            5CFC2F89A2E39D554D5B5FD10514515DC7821451450014514500145145001451
            4500145145001451450014514500145145001451450014514500145145001451
            4500145145001451450014514500145145001451450014514500145145001451
            4500145145001451450014514500145145001451450014514500145145001451
            4500145145001451450014514500145145001451450014514500145145001451
            4500145145001451450007A534F4FF0080D38F4A69E9FF0001A00FE627FE0E57
            E7FE0ADFE391FF00503D17FF004DF057C122350738AFBDBFE0E56463FF00056F
            F1C607FCC0F45FFD37C15F066D6F4AF8BC67FBCCFD4FDF787FFE44743FC221E9
            4CD87B8A7D26E5F5AE73D710C4B8E94CF200E7152D07A500463AD7F56FFF0004
            2F3FF1A9FF008283FEA54C7FE4CCDFE06BF949D8DE95FD5AFF00C10BF9FF0082
            50FC1523FE8563FF00A55715ED64BFEF0FD0F83F103FE4530FF17E8CFAD2EBFD
            449FEE9FE55FC5AFC4E463F127C4040FF98D5C7FE8DAFED2AEBFD449FEE9FE55
            FC5CFC4C8A45F88DE2162BFF00318B8FFD1B5B671FC38FCFF43CEF0F3FDE2B7A
            47F53036B7A521E9CD49F5A0AC78AF9FBFBA8FD4231928906C8E97CB5EC29FB6
            3ED46C6F4A05223D87B8AEFF00F6528D47ED47F0D8E3FE67ED1FFF004B61AE10
            A903245779FB29B2FF00C3517C36E7FE67ED1FFF004B61AAA7FC587A9CF8AFF7
            4ABFE167F65307FAB5FF0076BF2E7FE0ED3466FF008275782C63FE6B4E9C7FF2
            95ABFF008D7EA3439F2863FBB5F97DFF000765A96FF8275F82D40FF9ACDA77FE
            9AB55AFAECC3FDD647E1BC351E6CFF000FFE33F9E0F297D28F2D3D2ACF903FBB
            48625C74AF8D8EC7F424A9AD7D5FE855291E29BE5AF61563CA5F4A1A35DBC0AA
            B99CA9C4ADB5BD290649C0A9761EE2942C79E285D7D0CE50F7A36EE7ED47FC19
            CEA56E7F684047FCB1F087FEE6EBF6FABF113FE0CED056EBF684CFFCF1F087FE
            E6EBF6EEBEB32BFF007181F857167FC9415FD57E4828A28AF40F9C0A28A2800A
            28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
            28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
            28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
            28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
            28A2800A28A2800A28A2800A28A2800A28A28003D29A7A7FC069C7A537AF03D2
            803F98DFF83953FE52DDE38FFB00E8BFFA6F82BE0BE3BD7DEDFF0007282337FC
            15BBC70C071FD87A267FF05F057C1E625C74AF8BC67FBD4FD4FE80E1D4FF00B0
            A87F8484F938EBFA5336C7DAA630003245376C7DAB9EE7B047B1BD282A40C914
            FA0A1C72280230C09C035FD597FC10B811FF00049FF82B9FFA1589FF00C9A9FF
            00C6BF94F0B1E78AFEACBFE086231FF04A1F8280FF00D0A87FF4A66FF0AF6B25
            FF00787E87C0F8857FECBA7FE2FD19F595C7FAA93FDD35FC60FC4D463F10BC41
            C7FCC66E3FF469AFECFAE3FD4C9CFF0009AFE317E248FF008B85E20CFF00D066
            E07FE45AACE9DA10BF9FE879FE1C7FBE567E4BF539DF2D3D290A46460559312E
            3A547E5AF615E07447EA924F62B980019C536AC1438E4537CA5F4A7133910E33
            C577BFB29C1FF1945F0DB0BFF33F68FF00FA5B0D7106350338AEF3F652FF0093
            A3F86BFF0063F68FFF00A5D0D694FF008B1F539F129FD56AFF00859FD9042408
            C03FDDCD7E60FF00C1D84A5FFE09E1E0C007FCD65D3BFF004D5AAD7E9F4472A3
            FEB9AFF3AFCC5FF83AE23693FE09E9E0D0A3A7C64D3F3FF82AD56BEBB30FF749
            1F85F0C6BC4586FF0019FCF698971D2A3300C7DDABBE40FEED218971D2BE2799
            1FD16E9DE4EFDCA1E40FEED218971D2AE18063EED466018FBB557444A9A29989
            71D299E401CE2AE7903FBB48D1A6D3C5545AD7D08946DCB6EE7ECE7FC19E80C7
            77FB426F1FF2C7C223F5D687F3AFDBAAFC4BFF00833FE2DB79FB42AE3A0F0A03
            F5DFAD57EDA57D7657FEE303F00E2EFF009286BFAAFC90514515E81F36145145
            0014514500145145001451450014514500145145001451450014514500145145
            0014514500145145001451450014514500145145001451450014514500145145
            0014514500145145001451450014514500145145001451450014514500145145
            0014514500145145001451450014514500145145001451450014514500145145
            00145145001451450014514500145145001451450014D5FBE69D4D03073401FC
            C9FF00C1C96AC7FE0AD1E3A207FCC0F45FFD2082BE0DAFBDBFE0E48527FE0ACD
            E3A247FCC1345FFD37C35F07F969E95F138DFF007A97A9FD15C3B14F87F0D7FE
            5213C8C537CA5F4A9F6C7485131C5729EB4A36D887CB5EC290A12318A97CA93F
            BB49B5BD2AA2664220F415FD577FC10DBFE5147F057FEC536FFD2BB8AFE55864
            9C0AFEAA3FE086DFF28A3F82BFF62ABFFE95DC57B792FF00BC3F43F3FF00113F
            E45947FC7FA1F585C9C42E7FD9FE95FC677C49881F885AF607FCC66E0FFE45AF
            ECC6EB3E4498FEEFF4AFE35FE23420FC42D79B1FF316B8FF00D1B4F883F850F5
            FF002387C338F356C57F857E6CE74C4B8E951F969E9570C4B8E95198971D2BC1
            97C4CFD72A538FB4F92FC8AA523C537CB4F4AB1E52FA50625C74A2E672A68AA5
            23C5779FB2A222FED43F0DDBFEA7ED1FFF004B61AE27CA5F4AEF3F6598D7FE1A
            73E1CE07FCCF9A3FFE96C55A51FE2C7D4E4C5C6D84AB6FE567F627029D8BC7F0
            81FAD7E657FC1D54AD27FC13DBC1EAA3FE6B269FFF00A6AD5ABF4DA26088A09A
            FCCEFF0083A7A277FF00827DF83D557FE6B1E9E7FF00295AAD7D7E63FEE733F0
            8E125CDC4D855FDF47F3F46D4E3EED47F653FDDAD46B53B7EED42D00DBF76BE0
            D1FD2B2A2FB19E6018FBB5198063EED6818971D2A3300C7DDAB8994A8BEC6798
            063EED46D6F95202F6AD0300C7DDA8CC031D2AA3BBF427D97BD1F53F65BFE0D0
            65DB7BFB4337666F0B6DF7E7593FD457ED657E2C7FC1A1F1959FF680207F1785
            FF0096AD5FB4F5F6995FFB8C0FE73E315CBC49885E6BF241451457A07CC85145
            1400514514005145140051451400514514005145140051451400514514005145
            1400514514005145140051451400514514005145140051451400514514005145
            1400514514005145140051451400514514005145140051451400514514005145
            1400514514005145140051451400514514005145140051451400514514005145
            140051451400514514005145140051451400514514001E94873B38F4A53D293F
            86803F99CFF839063DDFF0561F1D337FD01345FF00D37C35F07948F15F7A7FC1
            C7A85BFE0ABDE3A38FF98268BFFA41057C23E52FA57C4E35AFAD4FD4FE8EE1B8
            A970FE1AFF00CA57F2D3D2936C7DAAC98971D2A3F297B0AE5B9ED7B3890946C7
            4A66C3DC559F29FBAD34A478A2E44A9C4855137715FD51FF00C10E54AFFC1293
            E0AA91FF0032ABFF00E95DC57F2C2B1A86071DEBFAA0FF00821E1FF8D547C17F
            FB155FFF004AEE2BDAC8FF00DE1FA1F9D788D1E5CB68FF008FF43EADBAFF0051
            27FBBFD2BF8E0F88B128F1F6BD9FFA0B5C7FE8CAFEC7EEB982403FBBFD2BF8E9
            F88D08FF0084F35CE3FE62D71FFA36B6CF9AF630F5FF00238BC2F8F355C57F85
            7E6CE6CC4B8E95198971D2AE18063EED33C81FDDAF9B935CECFD86A53F7AFE4B
            F229F903FBB48625C74AB8625C74A8CC4B8E945C9F6653F297D2BBCFD96E351F
            B4DFC3938FF99F348FFD2D8AB8CF207F76BB9FD976351FB4C7C3B38FF99EB48F
            FD2D8AB4A6D7347D4E3C746D85A9FE197E47F608FD57E95F9AFF00F074A02DFB
            01783D3FEAB15867FF00055AAD7E9413964C57E6DFFC1D0B1997F608F0883FF4
            58AC7FF4D5AAD7D8E63FEE12F43F00E0D8DF8B309FE389F81AF00D87E5ED55CD
            B8C74AD96B65DA79ED5035A0DB5F00A7D8FEA7952D4CB36CB8E2A336A71F76B5
            1ADD76D426018FBB47B433951334DA9C7DDA8CDAF1CAD6918063EED30DB8EE2B
            4A73BDCCA747E1F53F617FE0D1C5115C7C7FC776F0BFF2D5ABF682BF18FF00E0
            D2C8FCBBBF8F8A3FBDE17FE5AB57ECE57DCE53FF0022F81FCC9C6B1E5E26C42F
            35F920A28A2BD13E5428A28A0028A28A0028A28A0028A28A0028A28A0028A28A
            0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A
            0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A
            0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A
            0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A
            0029A3A35389C0C9A6EE18FAD1D00FE697FE0E3742DFF055CF1CB638FEC3D147
            FE48415F0AF969E95F787FC1C651B7FC3D67C740AFFCC1745FFD2082BE17312E
            3A57C1E33FDEA7EA7F4B70CC2FC3B86FF0A2A948F14D31A819C559F207F7690C
            4B8E95CF73DCF66553C8C537CB4F4AB1E52FA50625C74A2E672A712B844270BD
            6BFA99FF00821E023FE0953F05C11FF32ABFFE95DC57F2D4B1A86CE2BFA97FF8
            2208D9FF0004ACF8321BFE857917F1FB5DC57B990FFBCBF43F35F12A36CB68DB
            F9FF0043EABB9FF5527FBB5FC79FC44881F1EEB447FD052E3FF4657F61975CC3
            201FDDFE95FC7EFC40B661E3CD6B2BFF00314B8FFD1955C45FC187A9CBE13C79
            ABE2FF00C2BF367366018FBB5198063EED6818063EED466018FBB5F377F7D9FB
            44A8EDE88CF300C7DDA67903FBB57CC031F76A3300C7DDAABA27D914CC4B8E95
            DB7ECC1063F696F87676FF00CCF5A4FF00E96455C97903FBB5DBFECC71AFFC34
            9FC3DC0FF99E349FFD2C8AAA9B5EDA1EA71E3A1CB83A96FE597E47F5E39E148A
            FCE3FF00839D22693F60EF08A91F77E2F5893FF82BD507F335FA360E02835F9D
            7FF0731A799FB0AF85233F7BFE16D589C7FDC3B52AFB4CCFFE45F2F4FD0FE75E
            0A5CDC5D845FDF8FEA7E10BDA00306A27B65036D6CCB66338C5432589DE005EF
            5F9BC6A5B547F5E4B0EBA98AF6800C1A8CDA0C56CC9624B6D54A89AD90233170
            36FDE271C56919F31954A3CA8C76B65008355EF4DB58C0D35CC8146D27EB4DD7
            FC5DA769EC6DACD7CE9BA6E00FCA7D6B95D42FEEF5191A6B9727FD9F4AD63F0B
            3CFA9CB1B7A9FB4DFF0006955FC77FA8FC7EF2A3C2A7FC22FF0037AF1AAD7ECF
            57E2BFFC1A2409BAFDA07FDEF0AFF2D5ABF6A2BF41CA7FE45D4FD0FE5AE38FF9
            2A311EABF241451457A07C985145140051451400514514005145140051451400
            5145140051451400514514005145140051451400514514005145140051451400
            5145140051451400514514005145140051451400514514005145140051451400
            5145140051451400514514005145140051451400514514005145140051451400
            5145140051451400514514005145140051451400514514005145140051451400
            51451400D93EE1A60E9FF0234F93EE1A676FF811AAFB2C3B1FCD9FFC1C5E37FF
            00C156FC74474FEC5D17FF004DF0D7C35E5A7A57DD9FF0713AAB7FC155BC77CF
            FCC1B45FFD2086BE1B312E3A57E7F8DFF7A97A9FD45C2F1E6E1CC2DFF91154A4
            78A698971D2ACF903FBB48625C74AE5B9ED4A994FCA5F4A0C4B8E9563CA5F4A0
            C4B8E945CCE54CA6625C702BFA90FF00822471FF0004AFF8303FEA5D97FF004A
            6E2BF97768D76F02BFA89FF8225A30FF008259FC1A523EEF87650DFF00815702
            BDEC83FDE65E87E67E2647972BA3FE3FD19F54CDFEA9BFDD15FC85FC4280B78E
            75A60386D4E6C7FDFCAFEBD2E0E217FF0076BF917F1F43FF0015AEAE31FF0031
            2B8FFD194F8917EE69FF005D8E5F0823CD5B1BFE18FF00E947326018FBB51980
            63EED6818063EED466018FBB5F2CE528C9D8FDC6547DE7EA6798063EED466018
            FBB5A06018FBB5198063EED3E6BEE672A26798063EED769FB32C007ED23F0F4E
            3FE678D27FF4B22AE5CC031F76BB4FD99EDFFE323FE1FE17FE676D27FF004B22
            AD68FF00123EA8E0CCA1CB81A9FE197E47F5B8DF7D3FDDAFCF3FF8394A2127EC
            3DE1507FE8ABD9FF00E9BB52AFD0C209656F45AFCFDFF838FA259FF626F0B292
            38F8A9667E638C7FC4BB52AFBBCD7FE4593F4FD0FE6DE03D78D306BFBF1FCD9F
            8712D96D39DB50CD6AA781DFF3AD7D4A5B1D32DDAF6FEE16189792EC7F97AFE1
            5E71E33F8B4F24B258F862DD63C290D74DD5BDC57E61878C9D28AB1FD958AA98
            7A11D5AB9B1E21D7F48F0D45BEE6E54BE3FD5AF2CDEDEDF8D79F788FC65AA6BB
            BA1402187770B1F0C47B9ACDB9BA9AEEE1AEE766795FEFBC8D9CFD2A3AEE5454
            6C7CBD7C654AD2B474419CFF000FE2D48FF70FD29691FEE1FA56928F2C19C7EF
            7BD7EDFA9FB43FF0688FFC7CFED05FEF7857FF0072B5FB515F8AFF00F0688FFC
            7CFED05FEF7857FF0072B5FB515F7793FF00C8BE07F3471D7FC95789FF00B77F
            F4941451457A67C9051451400514514005145140051451400514514005145140
            0514514005145140051451400514514005145140051451400514514005145140
            0514514005145140051451400514514005145140051451400514514005145140
            0514514005145140051451400514514005145140051451400514514005145140
            0514514005145140051451400514514005145140051451400514514005145140
            08FF0070FD2A3EE7FDF3FCAA46FBA7E951670493FDF3420FB4BE67F383FF0007
            10405BFE0AA3E3B7C71FD8FA2FFE90435F0F7903FBB5F73FFC1C32BBFF00E0A9
            9E3A23FE815A28FCAC2126BE23312E3A57E7B8E6BEBB53D4FEA8E1585F86F097
            FE4453312E3A546625C74AB86018FBB4CF207F76B96E7D07B3453F207F7690C4
            B8E9570C4B8E95198971D28B912A68A4D102A401DABFA86FF822683FF0EB8F83
            FC7FCC027FFD2CB8AFE609A0F9785AFE9FBFE089DC7FC12DFE1003FF004019FF
            00F4B27AF7F87FFDEA5E87E59E2A47972AA1FE3FD19F525CFF00A993FDDAFE48
            FC7B6C5BC6BAC305E3FB426FFD195FD6DDC9C4121FF66BF932F1BDB37FC265AB
            8DBFF3129C7FE3F9A7C532E5C353FEBB1878311E7C4637FC31FF00D299CC9B53
            8FBB519B538FBB5A86D4E3EED46D6A76FDDAF94F6BA9FBED4A3EF3F532CDA9C7
            DDA8CDA9C7DDAD2300C7DDA8CDBF1C2D355148E7952334DA9C7DDAECBF668B72
            BFB477C3F6DBD3C6DA4FFE96455CDBC215791F877AEC7F6698E17FDA6BE1BE99
            BD7CEBCF1E68F0DBC7B8659DAF62503DB93DF15D187FF7887A9E7E694A3FD9F5
            6FFCB2FC8FEB171F267FD91FCEBF38BFE0E73F19FF00C20BFB05F8575CFB12DC
            349F162CA18E37FBBB8E99A9919F6E2BF46D436C000F95401F8D7E63FF00C1D6
            FF00F28F1F06FF00D966D3BFF4D5AAD7DE6691E6CBE513F95F836A4A97176164
            BA4E27E07F89BC63E20F15DD1BAD6351DFF3663863C848C7A0AC92114EE0324D
            1457C1C60A9C6C8FEA0954AB564E53614514550B50A47FB87E94B48FF70FD2A6
            5F0B21FDAF4FD4FDA1FF0083447FE3E7F682FF007BC2BFFB95AFDA8AFC57FF00
            83447FE3E7F682FF007BC2BFFB95AFDA8AFBBC9FFE45F03F9A38EBFE4ABC4FFD
            BBFF00A4A0A28A2BD33E4828A28A0028A28A0028A28A0028A28A0028A28A0028
            A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
            A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
            A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
            A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
            A28A000F4A8BA9C7FD34A95BEED43900E7FDBCD083ED23F9CDFF008383D15BFE
            0A91E3823FE819A41FFCA7422BE26F207F76BEDFFF00838221DDFF000547F1B9
            03FE613A38FC7EC109AF8ACC031F76BF37C6FF00BE54F53FAD784A1CDC3384FF
            0002FC8A6625C74A8CC4B8E9570C031F7699E40FEED739EFCA9148C031F7699E
            40FEED5F312E3A5466018FBB419FB2293440A90076AFE9D3FE08A4A47FC12EBE
            108C7FCC0E7FFD2CB8AFE650C1C70B5FD36FFC1157E5FF00825F7C2256FF00A0
            0DC7FE964F5F43C3BFEF32F43F29F1623CB94D0FF1FE8CFA7EEBFE3DE4E3F86B
            F942F1C5AB1F1A6ACDB7FE62971FFA157F57D74316F237FB35FCA978DADFFE2B
            1D5491F7B54B8FFD0A97167FBBD3F5FF00231F03A3CD8AC77F863FFA53397680
            6DFBB513C4BB4F1DAB59AD94A903D3D2A06B3054E57231E95F20F73FA1A74F59
            3F332DED4A9DAD19E466A19E38ADA1F3EE5FCB8FBC9E950F89FC6BA1F86C790F
            37DA6E9572B6F1B703EBDABCF75CF156B3E2276FB7DD158777EEEDE3E00FAD6B
            4E9C9EE8F2ABE2A9D1F756B737BC49E3C8A266B3D0620CCA0869FD3DEBA3FD8A
            EEEE6EFF006D4F84971732EF66F89FA064BFFD8460AF2DF90708197FDD3D6BD3
            BF624FF93CEF845FF653F40FFD38C15E861E3CB5E1EA7CCE6988A92C1D5FF0CB
            FF004967F5E31FDC61FED8FE95F98BFF00075BFF00CA3C3C1BFF00659B4EFF00
            D356AB5FA749F75BFEBA0FE95F98BFF075B7FCA3C3C1DFF659B4EFFD34EAB5F7
            9997FB8CBE47F327097FC95386FF001C4FE7E68A28AF8047F50C7E10A28A2995
            A8523FDC3F4A5A47FB87E9532F8590FED7A7EA7ED0FF00C1A23FF1F3FB417FBD
            E15FFDCAD7ED457E2BFF00C1A23FF1F3FB417FBDE15FFDCAD7ED457DDE4FFF00
            22F81FCD1C75FF00255E27FEDDFF00D250514515E99F24145145001451450014
            5145001451450014514500145145001451450014514500145145001451450014
            5145001451450014514500145145001451450014514500145145001451450014
            5145001451450014514500145145001451450014514500145145001451450014
            5145001451450014514500145145001451450014514500145145001451450014
            51450014514500145145001451450023FDC3F4A8BAF1FED54AE7E43F4A887FEC
            D409EE8FE777FE0E00883FFC1507C6CD8FF9876923FF0029D0D7C5A6018FBB5F
            6D7FC17E22DDFF00053BF1B363FE61FA47FE9BA1AF8C4C031F76BF31CCA5CB8E
            9FA9FD87C1B0E6E15C1FF823F919E6018FBB5198063EED6818063EED466018FB
            B5CB1A8CFA3953287903FBB48625C74AB86018FBB5198063EED5A9736E672A3D
            8A6D1A852715FD317FC117011FF04C3F846A7A8D06E3FF004B27AFE6964B7FDD
            B617F86BFA5AFF00822FE47FC1327E13823FE6033FFE965C57D1F0DFFBDCBD0F
            C83C608F2E4D87FF00AF9FA33E9FBD38B2739FF9666BF961F185A96F16EA65D7
            1FF1309C8F705B02BFA9FBC52D66EA073E5D7F26BF1D7E315B784FC6BAEF8674
            AB3336A56BAB5C5B5D4B27DD864498AB20F5C153C8C838E0D571653A9528D3E5
            EEFF004397C11C4D1C3E231D29B5F0C7F365CD6F53D27C3966D7FAC5E2C083A6
            EFBCDF41D6BCBFC5FF0016B50D5B7E9FE1C06CAD837FAC6E5DFDC7A1FAD731AD
            EBBABF88AEDAFB59BE7B8919B2BE637CA83D00F5AA95F371C2F2BBB67ED18ECD
            A588A8D5356571CCECECC5CEEDE77348DCB96F734DA28AE83C77CDBB615E9FFB
            127FC9E77C22FF00B29FA07FE9C60AF30AF4FF00D893FE4F3BE117FD94FD03FF
            004E3055D1FF007887A9C398FF00B8D4FF000CBFF4967F5E2BF74FFD7415F98B
            FF00075BFF00CA3C3C1BFF00659B4EFF00D356AB5FA74BF74FFD7415F98BFF00
            075B7FCA3C3C1DFF00659B4EFF00D34EAB5F77997FB8C8FE68E11FF92A70DFE3
            89FCFCD14515F008FEA28FC214514532B50A47FB87E94B48FF0070FD2A65F0B2
            1FDAF4FD4FDA1FF83447FE3E7F682FF7BC2BFF00B95AFDA8AFC57FF83447FE3E
            7F682FF7BC2BFF00B95AFDA8AFBBC9FF00E45F03F9A38EBFE4ABC4FF00DBBFFA
            4A0A28A2BD33E4828A28A0028A28A0028A28A0028A28A0028A28A0028A28A002
            8A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A002
            8A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A002
            8A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A002
            8A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A006
            C9F70D317BFD69F27DC3518E7207AD027D0FE7B7FE0BDF1A3FFC14DBC6DBBAFF
            0067E93FFA6E86BE35300C7DDAFB4BFE0BC91A49FF000533F1BBFF00D38693FF
            00A6E86BE39300C7DDAFCBB34947EBD3F53FB3F82E9B970960BFEBDC7F233CC0
            31F76A3300C7DDAD0300C7DDA8CC031F76B839EDB1F4B2A3AD8CF300C7DDA8CD
            BF1C2D68341C729F98AAF7B7165A6DBB5D5FCDE4C6A33B9B83F87AFE15A45CA4
            672A7CAAF7B150DAB30DAABF37419C0AFE937FE08C8EB1FF00C132BE136FFE2D
            0E7DBC75FF004C9FFC457F313E27F8833DE6EB4D114471ED23CE71CB57F4F1FF
            0004642EFF00F04C1F830E79DFE0F8DC9F56696426BEAB8654962A57EC7E25E3
            1578D4CA30F18F4A9FA33EA094FEE5BDD6BF8F1FDA3CFF00C643F8F15BB78D35
            6C7FE064D5FD874C7F71B735FC78FED23FF2713E3CFF00B1D355FF00D2C9ABBB
            88FF00DDE3EA7CBF853FEF38BFF0C7F338BA28A2BE665F11FB74B7614514548B
            50AF4FFD893FE4F3BE117FD94FD03FF4E30579857A7FEC49FF00279DF08BFECA
            7E81FF00A7182AE8FF00BC43D4E2CC7FDC6A7F865FFA4B3FAF15FBA7FEBA0AFC
            C5FF0083ADFF00E51E1E0DFF00B2CDA77FE9AB55AFD3A5FBA7FEBA0AFCC5FF00
            83ADBFE51E1E0EFF00B2CDA77FE9A755AFBBCCBFDC647F34708FFC95386FF1C4
            FE7E68A28AF8047F5147E10A28A2995A8523FDC3F4A5A47FB87E9532F8590FED
            7A7EA7ED0FFC1A23FF001F3FB417FBDE15FF00DCAD7ED457E2BFFC1A23FF001F
            3FB417FBDE15FF00DCAD7ED457DDE4FF00F22F81FCD1C75FF255E27FEDDFFD25
            0514515E99F24145145001451450014514500145145001451450014514500145
            1450014514500145145001451450014514500145145001451450014514500145
            1450014514500145145001451450014514500145145001451450014514500145
            1450014514500145145001451450014514500145145001451450014514500145
            145001451450014514500145145001451450014514500145145001451450023F
            DC3F4A897A9FF7BFA54AE70873E9512E4EEC7F7BFA51DC5F697CCFE7F7FE0BB1
            087FF8295F8E091FF2E3A4FF00E9BA1AF8FCDA31E027F2AFB2BFE0BA112B7FC1
            49FC6C5BFE7C749C7FE0BE1AF9105B6EE029AFC973492FED1A9EA7F6FF0003D3
            E6E0EC137FF3EE3F9198D6C795D950985554B16031D5B70E3FC29DE29F14E85E
            10B6FB45FDEAEEFE18D79663E9C74FC6BCABC5FF0012B59F1386B2B65FB259EE
            E238CFCEFEE4FA563469CA47B38AC6D0C2C74D59D4F8B7E24697A196B3D280BB
            B8C10CBBBE51FE3F8579FEB1AE6A3AEDD7DAF53BB791BF8509F9107A01548285
            3B828CF7634B5DF0A763E62B62AB579735EC38B2E3AD7F541FF045FF00F945E7
            C15FFB1361FF00D19257F2BB5FD517FC117FFE5179F057FEC4D87FF46495F4F9
            0251C53B763F23F15BFE45743FC7FA33E9F93EE37D2BF8F2FDA47FE4E27C79FF
            0063A6ABFF00A59357F61B29C2357F1E5FB48FFC9C4F8F3FEC74D57FF4B26ADB
            88BFDD61EBFE478BE147FBC62FFC2BFF004A38BA28A2BE665F11FB74B7614514
            548B50AF4FFD893FE4F3BE117FD94FD03FF4E30579857A7FEC49FF00279DF08B
            FECA7E81FF00A7182AE8FF00BC43D4E2CC7FDC6A7F865FFA4B3FAF15FBA7FEBA
            0AFCC5FF0083ADFF00E51E1E0DFF00B2CDA77FE9AB55AFD3A5FBA7FEBA0AFCC5
            FF0083ADBFE51E1E0EFF00B2CDA77FE9A755AFBBCCBFDC647F34708FFC95386F
            F1C4FE7E68A28AF8047F5147E10A28A2995A8523FDC3F4A5A47FB87E9532F859
            0FED7A7EA7ED0FFC1A23FF001F3FB417FBDE15FF00DCAD7ED457E2BFFC1A23FF
            001F3FB417FBDE15FF00DCAD7ED457DDE4FF00F22F81FCD1C75FF255E27FEDDF
            FD250514515E99F2414514500145145001451450014514500145145001451450
            0145145001451450014514500145145001451450014514500145145001451450
            0145145001451450014514500145145001451450014514500145145001451450
            0145145001451450014514500145145001451450014514500145145001451450
            0145145001451450014514500145145001451450014514500145145001451450
            0364FB86A3525771FF006AA493EE1A899772B28246ECF2BDB8AA5B344BF897CF
            F23F03BFE0B9B3D9DA7FC1463C6DA86A1771C30A58E99BA59180518D3E1FF1E9
            D6BF3F7C6FF1C54F9963E0A4C6D2524BC93A7A65475CFA57D71FF072EC935B7F
            C14E75CD3D2E596DE7F0AE933C96EBC23398B6EE3EA7082BF3E8E3180AAABD91
            3F9D7E678EC3D3FAF546FB9FD7FC2F9C54FF0054F054A9ADA9A4C7DD5DDCEA17
            325F6A13BCD33B64B48D9FCAA3A28A88F2A5648EBE6A937790514514C5A857F5
            45FF00045FFF00945E7C15FF00B1361FFD19257F2BB5FD517FC117FF00E5179F
            057FEC4D87FF0046495F41C3FF00EF52F43F2CF15BFE45743FC7FA33E9F93EE3
            7D2BF8F2FDA47FE4E27C79FF0063A6ABFF00A59357F61B29C2357F1E5FB48FFC
            9C4F8F3FEC74D57FF4B26AE8E22FF7587AFF0091E2F851FEF18BFF000AFF00D2
            8E2E8A28AF9997C47EDD2DD851451522D42BD3FF00624FF93CEF845FF653F40F
            FD38C15E615E9FFB127FC9E77C22FF00B29FA07FE9C60ABA3FEF10F538B31FF7
            1A9FE197FE92CFEBC57EE9FF00AE82BF317FE0EB7FF94787837FECB369DFFA6A
            D56BF4E97EE9FF00AE82BF317FE0EB6FF9478783BFECB369DFFA69D56BEEF32F
            F7191FCD1C23FF00254E1BFC713F9F9A28A2BE011FD451F8428A28A656A148FF
            0070FD29691FEE1FA54CBE1643FB5E9FA9FB43FF000688FF00C7CFED05FEF785
            7FF72B5FB515F8AFFF000688FF00C7CFED05FEF7857FF72B5FB515F7793FFC8B
            E07F3471D7FC95789FFB77FF004941451457A67C905145140051451400514514
            0051451400514514005145140051451400514514005145140051451400514514
            0051451400514514005145140051451400514514005145140051451400514514
            0051451400514514005145140051451400514514005145140051451400514514
            0051451400514514005145140051451400514514005145140051451400514514
            005145140051451400514514008FF70FD2A21F79BFDEA95FEE1FA5443EF13FED
            538EE27F12F9FE47F383FF000733FF00CA51756FFB12F47FFD05ABF3EEBF413F
            E0E67FF94A2EADFF00625E8FFF00A0B57E7DD7E798EFF7C9FA9FD4DC25FF0024
            DE17FC0828A28AE53E8B50A28A280D42BFAA2FF822FF00FCA2F3E0AFFD89B0FF
            00E8C92BF95DAFEA8BFE08BFFF0028BCF82BFF00626C3FFA324AFA0E1FFF007A
            97A1F9678ADFF22BA1FE3FD19F4FC9F71BE95FC797ED23FF002713E3CFFB1D35
            5FFD2C9ABFB0D94E11ABF8F2FDA47FE4E27C79FF0063A6ABFF00A5935747117F
            BAC3D7FC8F17C28FF78C5FF857FE94717451457CCCBE23F6E96EC28A28A916A1
            5E9FFB127FC9E77C22FF00B29FA07FE9C60AF30AF4FF00D893FE4F3BE117FD94
            FD03FF004E3055D1FF007887A9C598FF00B8D4FF000CBFF4967F5E2BF74FFD74
            15F98BFF00075BFF00CA3C3C1BFF00659B4EFF00D356AB5FA74BF74FFD7415F9
            8BFF00075B7FCA3C3C1DFF00659B4EFF00D34EAB5F77997FB8C8FE68E11FF92A
            70DFE389FCFCD14515F008FEA28FC214514532B50A47FB87E94B48FF0070FD2A
            65F0B21FDAF4FD4FDA1FF83447FE3E7F682FF7BC2BFF00B95AFDA8AFC57FF834
            47FE3E7F682FF7BC2BFF00B95AFDA8AFBBC9FF00E45F03F9A38EBFE4ABC4FF00
            DBBFFA4A0A28A2BD33E4828A28A0028A28A0028A28A0028A28A0028A28A0028A
            28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A
            28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A
            28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A
            28A0028A28A0028A28A0028A46608A598F03AD312EA090E11BDFEE9A00928A60
            9E2662A1FEEF5A5F313FBD46C1B0EA29BE627F7A8F3A2FF9E8BF9D003A8A6891
            09C67F4A479E38D773B501BE83E8A8FED30E40DDD5B1F8E33525001451450023
            FDC3F4A887DE6FF7AA57FB87E9510FBC4FFB54E3B89FC4BE7F91FCE0FF00C1CC
            FF00F2945D5BFEC4BD1FFF00416AFCFBAFD04FF8399FFE528BAB7FD897A3FF00
            E82D5F9F75F9E63BFDF27EA7F537097FC93785FF00020A28A2B94FA2D428A28A
            0350AFEA8BFE08BFFF0028BCF82BFF00626C3FFA324AFE576BFAA2FF00822FFF
            00CA2F3E0AFF00D89B0FFE8C92BE8387FF00DEA5E87E59E2B7FC8AE87F8FF467
            D3F27DC6FA57F1E5FB48FF00C9C4F8F3FEC74D57FF004B26AFEC3653846AFE3C
            BF691FF9389F1E7FD8E9AAFF00E964D5D1C45FEEB0F5FF0023C5F0A3FDE317FE
            15FF00A51C5D14515F332F88FDBA5BB0A28A2A45A857A7FEC49FF279DF08BFEC
            A7E81FFA7182BCC2BD3FF624FF0093CEF845FF00653F40FF00D38C15747FDE21
            EA71663FEE353FC32FFD259FD78AFDD3FF005D057E62FF00C1D6FF00F28F0F06
            FF00D966D3BFF4D5AAD7E9D2FDD3FF005D057E62FF00C1D6DFF28F0F077FD966
            D3BFF4D3AAD7DDE65FEE323F9A3847FE4A9C37F8E27F3F3451457C023FA8A3F0
            8514514CAD4291FEE1FA52D23FDC3F4A997C2C87F6BD3F53F687FE0D11FF008F
            9FDA0BFDEF0AFF00EE56BF6A2BF15FFE0D11FF008FAFDA0BFDEF0AFF00EE56BF
            698BAA8C93FA57DDE4FF00F22F81FCD1C75FF255627FEDDFFD250EA299F688B3
            80DFA51E7C5FDFAF4CF92DF61F4533CF8BFBF479F17F7E8B8F9643E8A679F17F
            7E8F3E2FEFD170E590FA299E7C5FDFA16E2166D8241BBFBA7A9A05D6C3E8A6BC
            888BB98D1E6AE7A37FDF26801D4534CD1FF7C5279F17F7E8B8598FA299E7C5FD
            FA3CF8BFBF45C7CB21F45344F11380D49E7C79DB93FF007C9A04FDDDC7D1481C
            374A5A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A00
            28A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A00
            28A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A00
            28A28A006C9BB636D5C9DBC0F5AFE6EBFE0A95FF00053DFF0082857C34FF0082
            857C5BF01FC30FDAC7C61E1FD0F47F17DC58E97A4699A988A28228C285C0087B
            A1E323EF57F48CE7084FB57F2BDFF056FD15AE3FE0A53F1AA61167778FAF4FFE
            3CD5E1E7D51D1C2A9A935AF43F42F0EB2DA19AE655A9558A92506F5F53976FF8
            2BD7FC152A30CDFF000DC1E3E071DB5A6FF0AAEDFF000583FF0082A3818FF86E
            2F881FF83A6AF1BB9D1080418F07DC8ACDBAD2E385B128C735F3F2C6549BBBA8
            CFD6A7C3380D1C68476D6E91EE1FF0F87FF82A50381FB717C41DDFF61A63FD2A
            F699FF000575FF0082A8C8DE7DD7EDCDE3E551CA86D5739FC31FCF8AF9F62B68
            619322307DEA60ECD905801DB8EB594B195A3B4D9AD0E19CBE3F15087DC8FA61
            7FE0B29FF05400AA83F6D2F197CABF79AE2327FF0040A1BFE0B2BFF053F61FBC
            FDB47C6522FF0071A68483EDF747F315F32D14A18CC5FB58DA6EDE67656C8F28
            8D1B2C343AEB657D8FEC4BE026ADAB788FE0B783BC45AEEA0D79797BE17D3EE6
            EAEA45DA6695EDD0B3103B9CE6BB6AE0FF00667E7F677F018C7FCC9BA67FE92C
            55DE57DF51E6F651B9FCB1888C6388A897F33FCC28A28AD0C447FB87E9510FBC
            DFEF54AFF70FD2A21F789FF6A9C7713F897CFF0023F9C1FF008399FF00E528BA
            B7FD897A3FFE82D5F9F75FA09FF0733FFCA51756FF00B12F47FF00D05ABF3EEB
            F3CC77FBE4FD4FEA6E12FF00926F0BFE04145145729F45A851451406A15FD517
            FC117FFE5179F057FEC4D87FF46495FCAED7F545FF00045FFF00945E7C15FF00
            B1361FFD19257D070FFF00BD4BD0FCB3C56FF915D0FF001FE8CFA7E4FB8DF4AF
            E3CBF691FF009389F1E7FD8E9AAFFE964D5FD86CA708D5FC797ED23FF2713E3C
            FF00B1D355FF00D2C9ABA388BFDD61EBFE478BE147FBC62FFC2BFF004A38BA28
            A2BE665F11FB74B7614514548B50AF4FFD893FE4F3BE117FD94FD03FF4E30579
            857A7FEC49FF00279DF08BFECA7E81FF00A7182AE8FF00BC43D4E2CC7FDC6A7F
            865FFA4B3FAF15FBA7FEBA0AFCC5FF0083ADFF00E51E1E0DFF00B2CDA77FE9AB
            55AFD3A5FBA7FEBA0AFCC5FF0083ADBFE51E1E0EFF00B2CDA77FE9A755AFBBCC
            BFDC647F34708FFC95386FF1C4FE7E68A28AF8047F5147E10A28A2995A8523FD
            C3F4A5A47FB87E9532F8590FED7A7EA7ED0FFC1A247173FB411F7F0AFF00EE56
            BF696450CADB7AEDEC715F8B5FF06897FC7C7ED05F5F0AFF00EE56BF69242C03
            62BEF327FF0091740FE67E3CFF0092AB12FF00C3FF00A4A3E40FF82957FC15D7
            E0CFFC1327C45E12D13E2FFC36F136BEDE2CB7BD9EC4F8761B6658560922077F
            9D346771F317A7F8E3E68FF88B13F631FF00A378F89FFF0080FA77FF0025D78A
            FF00C1DBFF00F2517E08FF00D8175BCFFDFDB2AFC7BAF1F1D9C62E8E21D3874E
            E7DE70BF046479C6494B1789837295F676EA7EF77FC4589FB18FFD1BC7C4FF00
            FC07D3BFF92E8FF88B13F631FF00A378F89FFF0080FA77FF0025D7E08D15C7FD
            B998791EFF00FC435E17FF009F52FF00C08FDEEFF88B13F631FF00A378F89FFF
            0080FA77FF0025D1FF0011627EC63FF46F1F13FF00F01F4EFF00E4BAFC11A28F
            EDCCC3C83FE21AF0BFFCFA97FE047EF71FF83B0BF63171B3FE19DBE271DDC7CD
            6FA763FF004AEBED8FF82777EDDFF0EFFE0A27F03E6F8F7F0BBC1DAD687A643A
            F4FA5B5A6BCB0ACED2451C72161E4BBAEDFDF81D7B1AFE4E93EF8FAD7F441FF0
            6B703FF0EDCBE23FE8A56A7FFA4B655E96579A62B1589E4A87C871A70864F90E
            50B1384834DC92D5DF73F437E2078BAC7C05E04D6BC77A9DB4D35BE8BA4DC5F5
            C436E14C8E9146D232AEE206E214E3240CF522BF2EC7FC1D7DFB1B865FF8C74F
            89391E90E9FB786E48FF004ACFCC39FF000AFD24FDA5081FB3B78F973FF3266A
            9FFA492D7F1E23EF0FA1ADB37C762B07522A96CD1E6F02F0D65BC411ABF5A873
            72B56D6DBA3F7BBFE22C5FD8CBFE8DDBE277FE03E9FF00FC9947FC4589FB18FF
            00D1BC7C4FFF00C07D3BFF0092EBF0468AF1FF00B7330F23F40FF886DC32DEB4
            9FCA47EF77FC4589FB18FF00D1BC7C4FFF00C07D3BFF0092E8FF0088B13F631F
            FA378F89FF00F80FA77FF25D7E08D147F6E661E43FF886BC2FFF003EA5FF0081
            1FBDAFFF000761FEC6A51845FB3C7C4DDDB7E5DD6FA7633EFF00E975DDFECABF
            F071EFECB7FB557ED0BE13FD9DFC1FF043C7DA76A5E2CD5BEC5637DA95BD8791
            036320B6CB8660A7049C024007A9C0AFE75C75AFA6BFE08CE33FF0542F82A0FF
            00D0E69FFA2E4AD2866D8EAD888C64F438734F0FF8770796D5AB4E2D38C5B5AB
            7AA47F555BD4ED6DDD6A4A815198ED231B5BE5A9EBEC97C28FC1BDDDD0514514
            0051451400514514005145140051451400514514005145140051451400514514
            0051451400514514005145140051451400514514005145140051451400514514
            0051451400514514005145140051451400514514005145140051451400D94811
            B16FEED7F31FFF00055AD32D21FF008280FC62D5F507F2626F1C5E3798DC67E7
            6071EA73E95FD384A1CC6C13EF638AFE5BBFE0B960D97FC153BE2EE876ACCB69
            0EB96F3456ED21DB1C92E9F6D348DF8C92357CDF12D394F08ADDCFD63C24AD4E
            966F88E6EB4FFF006E47CD5E22F14D94931B5D2ED4155FF96CE3EF560BCAD248
            D2C873BBB7A5287558FAEE63D6995F2AA2E3A367EE1293949BF30A28A2A85A85
            14514FF97D5115BF85F7FE47F619FB32FF00C9BAF80FFEC4DD33FF004962AEF2
            B83FD99BFE4DD7C07FF626E99FFA4B157795FA3D3FE1AF43F90B15FEF553FC4F
            F30A28A2B43011FEE1FA5443EF37FBD52BFDC3F4A887DE27FDAA71DC4FE25F3F
            C8FE707FE0E67FF94A2EADFF00625E8FFF00A0B57E7DD7E827FC1CCFFF002945
            D5BFEC4BD1FF00F416AFCFBAFCF31DFEF93F53FA9B84BFE49BC2FF0081051451
            5CA7D16A14514501A857F545FF00045FFF00945E7C15FF00B1361FFD19257F2B
            B5FD517FC117FF00E5179F057FEC4D87FF0046495F41C3FF00EF52F43F2CF15B
            FE45743FC7FA33E9F93EE37D2BF8F2FDA47FE4E27C79FF0063A6ABFF00A59357
            F61B29C2357F1E5FB48FFC9C4F8F3FEC74D57FF4B26AE8E22FF7587AFF0091E2
            F851FEF18BFF000AFF00D28E2E8A28AF9997C47EDD2DD851451522D42BD3FF00
            624FF93CEF845FF653F40FFD38C15E615E9FFB127FC9E77C22FF00B29FA07FE9
            C60ABA3FEF10F538B31FF71A9FE197FE92CFEBC57EE9FF00AE82BF317FE0EB7F
            F94787837FECB369DFFA6AD56BF4E97EE9FF00AE82BF317FE0EB6FF9478783BF
            ECB369DFFA69D56BEEF32FF7191FCD1C23FF00254E1BFC713F9F9A28A2BE011F
            D451F8428A28A656A148FF0070FD29691FEE1FA54CBE1643FB5E9FA9FB43FF00
            06897FC7C7ED05F5F0AFFEE56BF6924FBADF5AFC5BFF008344BFE3E3F682FAF8
            57FF0072B5FB4927DD6FAD7DE64FFF0022FA67F3371E7FC9538AFF00B77FF494
            7E1F7FC1DBDFF251BE09FF00D81B5CFF00D1B655F8F95FB07FF076F7FC946F82
            7FF606D73FF46D957E3E57CAE6BFF230A9FD743F6CE03FF925E87A3FCC28A28A
            F3CFB0D428A28A035153EF8FAD7F443FF06B6FFCA36B50FF00B295A9FF00E92D
            957F3BC9F7C7D6BFA21FF835B7FE51B5A87FD94AD4FF00F496CABDAC87FDFBE4
            CFCEFC4CFF0092757F8E3FA9F75FED27FF0026F7E3EFFB12B55FFD2596BF8F21
            F787D0D7F61BFB49FF00C9BDF8FBFEC4AD57FF004965AFE3C87DE1F435D9C43F
            67D19E17851FC1C47AC7F261451457CCFD93F5EA7FC3414514505EA03AD7D35F
            F0467FF94A1FC153FF00539A7FE8B92BE651D6BE9AFF008233FF00CA50FE0A9F
            FA9CD3FF0045C95BE13FDF29FA9E467BFF0022BABFE19FFE927F555FF2D2A4A8
            FF00E5A5495FA29FC9E145145001451450014514500145145001451450014514
            5001451450014514500145145001451450014514500145145001451450014514
            5001451450014514500145145001451450014514500145145001451450014514
            500145145001451450015FCB6FFC1757FE52CBF193FEC2D61FFA6AB2AFEA4ABF
            96DFF82EAFFCA597E327FD85AC3FF4D5655E0E7E9BC2AB773F4CF0BE32967355
            2FE47F99F24D14515F2367CCD9FBDF2CB7F2414514503B30A28A2AACFDDF5467
            5BF84EFE7F91FD867ECCBFF26EBE03FF00B1374CFF00D258ABBCAE0BF667755F
            D9DBC06A4F5F06E983FF002562AEF6BF46A5FC38BF23F90715FEF553FC4FF30A
            28A2B43111FEE1FA5443EF37FBD52BFDC3F4A887DE27FDAA71DC4FE25F3FC8FE
            707FE0E67FF94A2EADFF00625E8FFF00A0B57E7DD7E827FC1CCFFF002945D5BF
            EC4BD1FF00F416AFCFBAFCF31DFEF93F53FA9B84BFE49BC2FF00810514515CA7
            D16A14514501A857F545FF00045FFF00945E7C15FF00B1361FFD19257F2BB5FD
            517FC117FF00E5179F057FEC4D87FF0046495F41C3FF00EF52F43F2CF15BFE45
            743FC7FA33E9F93EE37D2BF8F2FDA47FE4E27C79FF0063A6ABFF00A59357F61B
            29C2357F1E5FB48FFC9C4F8F3FEC74D57FF4B26AE8E22FF7587AFF0091E2F851
            FEF18BFF000AFF00D28E2E8A28AF9997C47EDD2DD851451522D42BD3FF00624F
            F93CEF845FF653F40FFD38C15E615E9FFB127FC9E77C22FF00B29FA07FE9C60A
            BA3FEF10F538B31FF71A9FE197FE92CFEBC57EE9FF00AE82BF317FE0EB7FF947
            87837FECB369DFFA6AD56BF4E97EE9FF00AE82BF317FE0EB6FF9478783BFECB3
            69DFFA69D56BEEF32FF7191FCD1C23FF00254E1BFC713F9F9A28A2BE011FD451
            F8428A28A656A148FF0070FD29691FEE1FA54CBE1643FB5E9FA9FB43FF000689
            7FC7C7ED05F5F0AFFEE56BF6924FBADF5AFC5BFF008344BFE3E3F682FAF857FF
            0072B5FB48FDD735F7993FFC8BE99FCCFC79AF1562BFEDDFFD251F87DFF076F7
            FC946F827FF606D73FF46D957E3E57EC1FFC1DBDFF00251BE097FD81B5CFFD1B
            655F8F95F2B9B69984EFFD687ED5C07FF24BD05EBF98514515E7DCFB1F985145
            145C3E62A7DF1F5AFE887FE0D6DFF946D6A1FF00652B53FF00D25B2AFE7793EF
            8FAD7F443FF06B6FFCA36EFC67FE6A56A7FF00A4B655ED641FEFDF23F3AF135F
            FC63CB5FB71FD4FBAFF693FF00937BF1F7FD895AAFFE92CB5FC790FBC3E86BFB
            0EFDA4D48FD9E7C7CFDBFE10BD53FF004965AFE3C47DE1F435D9C41F63D19E1F
            853FC2C42F38FE4C28A28AF99E87EBF04D534145145172BE603AD7D35FF0467F
            F94A1FC153FF00539A7FE8B92BE651D6BE9AFF00823471FF000542F82A4FFD0E
            49FF00A2E5ADF09FEF74DF99E4E79197F64D67FDD97E47F555FF002D2A4A8D7E
            67C8FAD495FA29FC9C828A28A0028A28A0028A28A0028A28A0028A28A0028A28
            A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A09
            C0C9A6991477A00751485D57AD2EE14005149B87AD1BC5170168A40C0D2D1700
            A28A28B805145145C028A28240EB45C028A40C0D2E45001451B86334DF31719A
            007514DF3148CD34DC44A76B363B74A04E496E494534CA83A9FD28F363FEF502
            E68F709E45860695D82AAA92CCC7000AFE6AFF00E0B49FB2C7ED41F10FFE0A83
            F16BC61E04FD9BBC7DAD6957DAAD9FD8F52D27C1F7B716F3EDD32CD5B6491C45
            5B0C08E0F6AFE94A57478D903755C722AAF90ED26F94EECF1B5BE60BC9E7A8EA
            0E3A1C571633034F1D0E59368FA1E1CE22970EE3BEB10A6A7756DEC7F22BFF00
            0C41FB69FF00D1A17C50FF00C37FA8FF00F19A3FE1883F6D3FFA342F8A1FF86F
            F51FFE335FD7635BC40811C518FF00808FF0A77929FDC4FF00BE7FFAD5E4FF00
            ABB87DB999F6BFF115F13B470B1D3FBC7F223FF0C41FB69FFD1A17C50FFC37FA
            8FFF0019A3FE1883F6D3FF00A342F8A1FF0086FF0051FF00E335FD777929FDC4
            FF00BE7FFAD47929FDC4FF00BE7FFAD4BFD5DC3FF330FF0088AD8CFF00A058FF
            00E047F223FF000C41FB69FF00D1A17C50FF00C37FA8FF00F19A1BF622FDB411
            4BBFEC89F1415546599BC03A8803FF0020D7F5DDE4C7DE34FF00BE7FFAD4D16B
            6C0F98B0A83EDFFEAAA8F0FC2325CB2D052F15B192A7287B08C6EADBDCE47F67
            1B2BBD2BE03782F4CD4ED6486E2DFC2BA6C7716F34656489C5B46A5594F20820
            8391C62BBAAA912BA956F7FBA7F87D493DCD59F363FEF57D0423C9051EC7E5D5
            2B2AD51D47657771D4534CD1819DD4095186E07F4AA33E68F715FEE1FA5443EF
            37FBD4F6914A1C5307DE27FDAA22F50EABE7F91FCE0FFC1CCFFF002945D5BFEC
            4BD1FF00F416AFCFBAFD04FF008399FF00E528BAB7FD897A3FFE82D5F9F75F9E
            E3BFDF27EA7F53F097FC93785FF020A28A2B94FA2D428A28A0350AFEA8BFE08B
            FF00F28BCF82BFF626C3FF00A324AFE576BFAA2FF822FF00FCA2F3E0AFFD89B0
            FF00E8C92BE8387FFDEA5E87E59E2B7FC8AE87F8FF00467D3F27DC6FA57F1E5F
            B48FFC9C4F8F3FEC74D57FF4B26AFEC3653846AFE3CBF691FF009389F1E7FD8E
            9AAFFE964D5D1C45FEEB0F5FF23C5F0A3FDE317FE15FFA51C5D14503938AF999
            7C47EDD27BEA14518259500F999432A7F1118CE71D718E49EDDE97637A5118CA
            5AA46729C60ED2924257A7FEC49FF279DF08BFECA7E81FFA7182BCC7637A57A7
            FEC488E7F6CFF8440293FF00173F40E14673FF0013182B4A309FD621A7538B31
            A94FEA351F32F865F933FAF05FBA7FEBA0AFCC5FF83ADFFE51E1E0DFFB2CDA77
            FE9AB55AFD388AE22922DE1B00B8FBC31DB3FCABF317FE0EB39164FF008279F8
            3510367FE172E9C7EE9E9FD95AAF3F4AFB6CC7DEC0B48FE6AE13FDDF1461DCB4
            4A713F9FBA297637A5284727016BE15539EBA1FD411A94D46FCC86D14B2A3409
            BE7F917705DCC71C9ED48A0BA798A7E5EB9CF5F98AF1EBC83438CA2AED171946
            5B3BF50A47FB87E94B48FF0070FD2B397C2D09FDAF4FD4FDA1FF00834479B8FD
            A0BFEE55FF00DCAD7ED24CFE5AEFAFC5BFF834533E7FED078FFA957FF72B5FB4
            4FE6E7E5FEEFE46BEEB28FF916D33F99F8EAF2E2AC4A5FDDFF00D251F883FF00
            077071F11BE09E7FE80FADF1DCFEF6CBA7AD7E3E6C7FF9E6DFF7C9AFEACFF6E7
            FF00825AFECB1FF0510D57C39ACFED1BA4EB5712F85A1B883496D235A7B5DA93
            B21937601CE7CB5AF06FF88653FE0975FF0042B78CBFF0AE97FF0089AF371D93
            E2ABE2A55232567DCFB2E19E3DC9F29C96961311097346FB7A9FCE2EC7FF009E
            6DFF007C9A363FFCF36FFBE4D7F475FF0010CA7FC12EBFE856F197FE15D2FF00
            F1347FC4329FF04BAFFA15BC65FF008574BFFC4D72FF0061E3BF9A27BDFF0011
            3B877F927FD7CCFE71763FFCF36FFBE4D1B1FF00E79B7FDF26BFA3AFF88653FE
            0975FF0042B78CBFF0AE97FF0089A3FE2194FF00825D7FD0ADE32FFC2BA5FF00
            E268FEC3C77F3443FE22770EFF0024FF00AF99FCE300C877BA90072491D2BFA1
            DFF835BDBFE35BBA863B7C4AD4C7E3F66B2FF0ADB3FF0006CAFF00C12F946E8F
            C2BE30DC395DDE2E9719FF00BE6BEAAFD8CBF628F827FB07FC257F823F00B4ED
            4ADF419B589B5391354D41AE65FB449B0310C40F970838AEFCB72CC460F13ED2
            725B743E538CF8D329CF727585C341A9732777E8755FB4A963FB3B78F02A9F9B
            C1BA98E3FEBD24AFE3C54E5902E4EE0D8E3DBF4AFECCBC63E19D37C6DE11D53C
            19AEA48D67AC69F3595E086428FE54B1947DAC3EE9C31C1EC6BE0793FE0D9AFF
            0082624CE5DBC27E305DF26E90AF8AA4193F2E7F87EB5B66981AF8CE574DAD2F
            7B9C1C0FC5395F0F46B471516DCAD6B7A1FCE36C7FF9E6DFF7C9A363FF00CF36
            FF00BE4D7F4767FE0D94FF00825CE3E5F0B78CFF001F16CBFF00C4D27FC4329F
            F04BAFFA15BC65FF008574BFFC4D7911C8F1DD648FBA8F89DC3AE2AF09FF005F
            33F9C5D8FF00F3CDBFEF9346C7FF009E6DFF007C9AFE8EBFE2194FF825D7FD0A
            DE32FF00C2BA5FFE268FF88653FE0975FF0042B78CBFF0AE97FF0089AAFEC3C7
            7F3443FE22770EFF0024FF00AF99FCE32C72160046DD7FBB5F4B7FC119CEFF00
            F829FF00C1465CFCDE3142063FE994BCE2BF689BFE0D93FF00825E15217C2DE3
            2CE3B78BA5FF00E26BB2FD9F7FE0815FB007ECD3F19FC3FF001E3E177873C4D0
            6BDE19BE5BBD366BCF123CA81D776372E391CF4EE2B4A392E2A9D48CE4D68D6C
            71E63E226438CCBEAD0A719A728B4BB5CFB61395001E768A92A1DCCA72A3BFCD
            EC2A412237435F58DA5A1F872F31D4537CD418E7AD1E6C7FDEA0774B71D4537C
            D8FF00BD479B1FF7A8279A3DC7514DF363FEF51E6C7FDEA039A3DC7514DF363F
            EF51E6C7FDEA039A3DC7514DF363FEF51E6C7FDEA039A3DC7514DF363FEF51E6
            C7FDEA039A3DC7514DF363FEF51E6C7FDEA039A3DC7514D33460677522CF131D
            AAE0FD3B505269EC3E8A6EF5C669D40051451400514514005145140051451400
            D95956366720281CE6BE5BF8ADFF00059CFF0082667C0CF88DAC7C23F8A5FB53
            69BA4F88741BD6B4D5B4D7D0F5190DBCCBD50BC76EC8C463F84915F5248BBA36
            523A8EF5FC9A7FC1572D40FF008293FC726DBB777C4AD5536B10DCADC305EA38
            F9437E55E7E618CA983A5CD049FA9F59C2590E178831B3A35E524A2AFEEDBF1B
            9FD038FF0082FA7FC122D7A7ED91A67FE13BAA7FF22D07FE0BEBFF00048EFF00
            A3C9D2FF00F09DD57FF912BF9737B6551CAAFF00DF23FC2A13171D3FF41FFE26
            BC859D62A4BE147DCFFC439CA6314DCEA7DF1FFE459FD488FF0082FBFF00C123
            73FF002795A5FF00E13BAAFF00F2252FFC3FE3FE0919FF004797A57FE13DAB7F
            F2257F2D2D0E463FA0FF00E26A3FB22FFCF41FF7C8FF00E268FEDAC4FF002A22
            5E1DE53FCF53EF8FFF00207F535FF0FF008FF82467FD1E5E95FF0084F6ABFF00
            C894DFF87FB7FC122FFE8F3349FF00C27B55FF00E44AFE59DAD5769F9C7FDF23
            FC2A136EB8FBBFCBFC29ACEB14FECA27FE21EE52BEDD4FBE3FFC81FD4F7FC3FE
            7FE0913FF479BA4FFE13BAAFFF002251FF000FF9FF008244FF00D1E6E93FF84E
            EABFFC895FCAEFD9D7FBBFCBFC290C31E3EEFF002FF0A3FB6315FCA89FF887D9
            4FF3D4FBE3FF00C81FD517FC3FEFFE090FFF00479DA4FF00E13BAAFF00F22529
            FF0082FCFF00C12240C9FDB3749FFC27755FFE44AFE564C48390BFCBFC29AD16
            0729D7FDDFF0A3FB6315FCA85FEA06517B7B4A9F7C7FF903FAA61FF05FFF00F8
            242E7FE4F3B4AFFC27756FFE44A745FF0005FCFF0082444AE123FDB3349258E3
            8F0FEABFFC895FCAE5A693757ADB6253B7F89885181EBC8AD9D3F48B2B05CA45
            97FE266C73FA5672CF711D123AE8786B96D6FB753EF8FF00F207F52EBFF05DDF
            F824F3AEE5FDB1348C7FD81352FF00E45A5FF87ECFFC127FFE8F0F48FF00C12E
            A5FF00C8D5FCB791B9F981157F0FF0A76C8BFBABF90FF0ACDE7D8AFE5477FF00
            C429CA7FE7ED4FFC0A3FFC81FD463FFC1773FE093C8A5CFED87A47CA33FF0020
            5D4BFF0091ABD97F661FDB4BF664FDB2F47D4BC49FB357C59B5F145968F7896B
            A94D6F67710886664DEABFBE8D0B6579C8C8AFE43B11A7CC1178E7EE8FF0AFDD
            2FF834B6363FB3EFC582A0ED5F1B5A12BB871FE8A7D057765F9B56C5621539A4
            BD0F9AE2CE03CB721CA5E2A9D49B926B46D35AFA451FAE0FB638999FEEE09E45
            7C53E3CFF8381FFE097DF0DBC6FAD7C38F17FC66D5ADF56F0F6AD3E99AA411F8
            37509162B986468E450CB010D86561904838E0915F6B4F8785902E72B8AFE433
            F6D7FF0093CAF8BDFF00654B5DFF00D2E9EBAF36C756C0D352825A9E3703F0DE
            0789317569E26524A293F75A5F7DFF0003FA07FF00888F3FE09360F1F1E35AFF
            00C22352FF00E47A5FF888F3FE0939FF0045F35BFF00C21B52FF00E315FCD451
            5E27FAC18CE55EEA3F438F86391CA3772A9F7C7FF9167F4AFF00F111E7FC1273
            FE8BE6B7FF008436A5FF00C628FF00888F3FE0939FF45F35BFFC21B52FFE315F
            CD45153FEB0633F950FF00E218645FCD53EF8FFF00227F4AFF00F111E7FC1273
            FE8BE6B7FF008436A5FF00C628FF00888F3FE0939FF45F35BFFC21B52FFE315F
            CD45147FAC18CFE541FF0010C322FE6A9F7C7FF913FA57FF00888F3FE0939FF4
            5F35BFFC21B52FFE3147FC4479FF00049CFF00A2F9ADFF00E10DA97FF18AFE6A
            28A3FD60C67F2A0FF8861917F354FBE3FF00C89FD2BFFC4479FF00049CFF00A2
            F9ADFF00E10DA97FF18A3FE223CFF824E7FD17CD6FFF00086D4BFF008C57F351
            451FEB0633F9507FC430C8BF9AA7DF1FFE44FE95FF00E223CFF824E7FD17CD6F
            FF00086D4BFF008C51FF00111E7FC1273FE8BE6B7FF8436A5FFC62BF9A8A28FF
            0058319FCA83FE218645FCD53EF8FF00F227F4AFFF00111E7FC126FF00E8BDEB
            7FF843EA5FFC6291FF00E0E3BFF824D91CFC79D6BDFF00E288D4BFF91EBF9A9A
            47FB87E94FFD60C6DBE142FF00886191A92F7AA6BA6F1FF247F5AFFB1AFEDF5F
            B317EDF1E1CD5BC59FB34F8C6E359B2D07504B3D4E4BBD1AE2CDA295937AA813
            A216CAF395040FD2BDB07DE6FF007ABF24BFE0D2E40FFB3EFC5A38E478DACFF2
            FB2F35FADA3EF13FED57D4606B4F11455492DD1F8DF1165F432BCEEAE168B6E3
            07657D5EC7F383FF000733FF00CA51756FFB12F47FFD05ABF3EEBF413FE0E67F
            F94A2EADFF00625E8FFF00A0B57E7DD7C363BFDF27EA7F46F097FC93785FF020
            A28A2B94FA2D428A28A0350AFEA8BFE08BFF00F28BCF82BFF626C3FF00A324AF
            E576BFAA2FF822FF00FCA2F3E0AFFD89B0FF00E8C92BE8387FFDEA5E87E59E2B
            7FC8AE87F8FF00467D3F27DC6FA57F1E5FB48FFC9C4F8F3FEC74D57FF4B26AFE
            C3653846AFE3CBF691FF009389F1E7FD8E9AAFFE964D5D1C45FEEB0F5FF23C5F
            0A3FDE317FE15FFA51C5D07A73FCB34507A57CCBF89FA1FB6CA51F7D3EDFA9F7
            17FC1BBDA658EB3FF0552F04E97A9D95BDC5ABE91AC99219D7CC591858485414
            65232BB49E0F6AFE85BE22F8DFF64FF8433DADAFC58F14FC3DF0BCB7AAED671F
            88AEAC6C8CCABB7715F3B6EEC6F5E9EB5FCF7FFC1B96BBFF00E0AC1E064F5D2F
            5AFF00D36DCD7D35FF00076C2343F10FE09C7F36D3A3EBAC8A64C05C4D6401E8
            73C671C8FC2BE872DAD1C3E52EA38DECCFC6B8B32FA99D71C53C1CAA382705D2
            FDFCD1FAA4BFB4C7FC13C9B96FDA0BE0B8FF00B9AB49FF00E2EA48BF69FF00F8
            2775BC8B341FB427C1B5756055D7C59A506523B83BF835FC94F992FF00CF4FD5
            BFF8AA3CC97FE7A7EADFFC55611CFA2B5F648EB9785F14DC5E2E4FD22ADF8C8F
            EBA5FF006DEFD8B1BE66FDAD3E19330E57FE2BDD3C73E9FEBAAA6B5FB60FEC29
            AEDBC763ABFED41F0A6F218EE048B1DD78D34C91558290180795B9C12323070C
            6BF921F325FF009E9FAB7FF1547992FF00CF4FD5BFF8AADBFD62A92DE08C21E1
            3D38CF9D576BCF9637FF00D28FEB517F698FF82761E07ED03F067F1F15695FFC
            5D34FED2FF00F04F527627C7FF0082ED9E00FF0084A74839FF00C895FC96F992
            FF00CF4FD5BFF8AA6BC936D387078E8CA581FC0B60FD0D47F6E4375491BFFC42
            F4E5FEF92B5BAC7F2B48FEC1B4DF07FECEBF16FC1CDA8F86BC3FE0BF126897C8
            D1ADD69B6769776D376237C6195BD0F35FC94FED096763A77C7FF1C58E9F631D
            BC1078BF548A18E05DBB105E4C0285FBAAA3D076AFE81BFE0DA180CBFF0004BD
            D2C233797178BF588E03BBA22CC368C678C8F4E95FCFEFED23FF002713E3CFFB
            1D355FFD2C9A967328D4C2539A8DAE65C0387AD83CDB1D84551C94525AAB757D
            0E2E91FEE1FA52D23FDC3F4AF02A6F23F5D97C525FDD47ED0FFC1A23FF001F3F
            B417FBDE15FF00DCAD7ED3332A86623A57E2CFFC1A279FB47ED078F5F0AFFEE5
            6BF689C3EE63DB6D7DDE4CBFE13E07F3371DFF00C95589FF00B77FF4946078C7
            E2E7C2EF877736F65E3BF887A1E8B35D296B78F56D5A1B76900EA5448C3763DB
            D6B2BFE1A4FF00673FFA2F7E0FFF00C29AD7FF008E57E3AFFC1DBE71F117E099
            8C6DFF00892EBA3E572B9CCDA79F980E0E006033FDF35F8F78FF00657FEF95FF
            000AE3C5E752C2D774F96F63E9387FC3D8E7594D3C63AFC9CDD2D73FB0EFF869
            3FD9CFFE8BDF83FF00F0A6B5FF00E3947FC349FECE7FF45EFC1FFF008535AFFF
            001CAFE3C71FECAFFDF2BFE1463FD95FFBE57FC2B97FD62A9FC87B1FF10A21FF
            00417FF929FD877FC349FECE7FF45EFC1FFF008535AFFF001CA3FE1A4FF673FF
            00A2F7E0FF00FC29AD7FF8E57F1E38FF00657FEF95FF000A31FECAFF00DF2BFE
            147FAC553F903FE21443FE82FF00F253FB0EFF008693FD9CFF00E8BDF83FFF00
            0A6B5FFE3947FC349FECE7FF0045EFC1FF00F8535AFF00F1CAFE3C71FECAFF00
            DF2BFE1463FD95FF00BE57FC28FF0058AA7F207FC42887FD05FF00E4A7F61DFF
            000D27FB39FF00D17BF07FFE14D6BFFC728FF8693FD9CFFE8BDF83FF00F0A6B5
            FF00E395FC78E3FD95FF00BE57FC28C7FB2BFF007CAFF851FEB154FE40FF0088
            510FFA0BFF00C94FEC3BFE1A4FF673FF00A2F7E0FF00FC29AD7FF8E51FF0D27F
            B39FFD17BF07FF00E14D6BFF00C72BF8F1C7FB2BFF007CAFF8518FF657FEF95F
            F0A3FD62A9FC81FF0010A21FF417FF00929FD877FC349FECE7FF0045EFC1FF00
            F8535AFF00F1CA3FE1A4FF00673FFA2F7E0FFF00C29AD7FF008E57F1E38FF657
            FEF95FF0A31FECAFFDF2BFE147FAC553F903FE21443FE82FFF00253FB0EFF869
            4FD9D073FF000BEFC1DFF8535AFF00F1CA934CFDA1FE036B5AA5BE8FA47C69F0
            ADD5DDD4CB0DADB5BF882D9E49A463B551543E598920003924E057F1DB8FF657
            FEF95FF0AF66FF008272827FE0A15F01C003FE4B3785FF00847FD05ADBDAB4A3
            C412A95541C3739719E17470F85A95BEB1CDC916F6B6DA9FD6F1E9CD70FF00B4
            37ED01F0CFF65EF839ADFC79F8CDAD4DA6F867C3D0A4BAB5E416924ED0A348B1
            AB08E25676CBBA8C007AE4F1923B65DE17695FBA3E5AF917FE0BBC36FF00C128
            7E30003FE60F667FF2A16D5EF55A93A745CD76B9F95E5F4238AC6D3A2F694927
            F3691C6AFF00C1C79FF049D1FF0035DF5AFF00C22752FF00E47A5FF888F3FE09
            39FF0045F35BFF00C21B52FF00E315FCD4515F28F88319CCFDD47EE5FF0010BB
            218BB73CDEDB34BF38B3FA57FF00888F3FE0939FF45F35BFFC21B52FFE3147FC
            4479FF00049CFF00A2F9ADFF00E10DA97FF18AFE6A28A5FEB0633F950FFE2186
            45FCD53EF8FF00F227F4AFFF00111E7FC1273FE8BE6B7FF8436A5FFC628FF888
            F3FE0939FF0045F35BFF00C21B52FF00E315FCD45147FAC18CFE541FF10C322F
            E6A9F7C7FF00913FA57FF888F3FE0939FF0045F35BFF00C21B52FF00E3147FC4
            479FF049CFFA2F9ADFFE10DA97FF0018AFE6A28A3FD60C67F2A0FF008861917F
            354FBE3FFC89FD2BFF00C4479FF049CFFA2F9ADFFE10DA97FF0018A3FE223CFF
            00824E7FD17CD6FF00F086D4BFF8C57F351451FEB0633F9507FC430C8BF9AA7D
            F1FF00E44FE95FFE223CFF00824E7FD17CD6FF00F086D4BFF8C51FF111E7FC12
            73FE8BE6B7FF008436A5FF00C62BF9A8A28FF58319FCA83FE218645FCD53EF8F
            FF00227F4AFF00F111E7FC1273FE8BE6B7FF008436A5FF00C628FF00888F3FE0
            939FF45F35BFFC21B52FFE315FCD45147FAC18CFE541FF0010C322FE6A9F7C7F
            F913FA5693FE0E3EFF00824F2A3327C7AD68B63807C0FA97FF0018AFB33E14FC
            47F097C63F86DE1FF8B9E03D45AEF43F1468B6BAB68D78D0BC4D3DADC42B3432
            1470197723A9DAC030CE080722BF8DC7FB87E95FD6AFFC135D245FF82797C08D
            DFC5F07FC3247D3FB2ADEBD6CA732AD8EAB25515AC8F86E38E15C0F0DE1E94F0
            CE4F99B5EF34F6ED648F71299C0CF7A7D463713FF02CD495EE2F84FCEC28A28A
            0028A28A0028A28A0028A28A001B95AFE507FE0AAB6FE67FC1493E3748CBD7E2
            86AA7FF23CC2BFABE6385E6BF954FF0082A4DA2BFF00C1463E36647CDFF0B2B5
            43FF00933357CFF1049C70D1F53F4CF0C69BA9996212FE45FF00A523E6A9ACC7
            4C5576B403835BB2D8907EED41258E1BEED7CC2A9EF33F6E9E1F9A4EFDCC57B4
            0060D46F6EAA306B625B319C62A096C483F76AF9B98E7A94127A1906018FBB51
            B4036FDDAD67B40060D46F6CB8DB551935B184A8992625C74A8DA01B7EED699B
            403A8A059A9E0D57B46B723EAB2A92D0CA4B4690E123CE6B42C745B78C79972D
            CFF76AD4714700DA899F7A75673ACF63B2965F4E3ACB51C0011F965C6D5FBAA1
            69B4515CE7A518C631B4428A28A07A88FF0070FD2BF75FFE0D2BFF00937DF8B9
            FF0063A59FFE929AFC287FB87E95FBAFFF000695FF00C9BEFC5CFF00B1D2CFFF
            00494D7AB92FFC8C227C2788DFF24BD4FF00147F347EB5FF001FFC07FAD7F21B
            FB6BFF00C9E57C5EFF00B2A5AEFF00E974F5FD79E0EFCFFB3FD6BF90CFDB5FFE
            4F2BE2F7FD952D77FF004BA7AF5788BF831F5FF23E2BC27FF7EC57A47FF4A3CC
            28A28AF9597C4CFDC5FC414514502D428A28A0350A28A280D428A28A0350A28A
            280D4291FEE1FA52D23FDC3F4A3A31F55EA7EEBFFC1A55FF0026FDF173FEC74B
            4FFD25AFD6C1F79BFDEAFC93FF00834ABFE4DFBE2E7FD8E969FF00A4B5FAD83E
            F13FED57DF655FEE34FD3F53F9778D3FE4A8C47F8BFF006D47F383FF000733FF
            00CA51756FFB12F47FFD05ABF3EEBF413FE0E67FF94A2EADFF00625E8FFF00A0
            B57E7DD7C5E3BFDF27EA7EFF00C25FF24DE17FC0828A28AE53E8B50A28A280D4
            2BFAA2FF00822FFF00CA2F3E0AFF00D89B0FFE8C92BF95DAFEA8BFE08BFF00F2
            8BCF82BFF626C3FF00A324AFA0E1FF00F7A97A1F9678ADFF0022BA1FE3FD19F4
            FC9F71BE95FC797ED23FF2713E3CFF00B1D355FF00D2C9ABFB0D94E11ABF8F2F
            DA47FE4E27C79FF63A6ABFFA5935747117FBAC3D7FC8F17C28FF0078C5FF0085
            7FE9471741E94507A57CCBFE23F43F6BADFC397F5D4FBABFE0DC7FF94B1F817F
            EC17AD7FE9B6E6BE9CFF0083B8FF00E4A37C10FF00B01EB7FF00A36CABE63FF8
            371FFE52C7E05FFB05EB5FFA6DB9AFA73FE0EE3FF928DF043FEC07ADFF00E8DB
            2AF6E8FF00C889FAFF0091F99661FF00273A97F83F467E3CD14515E147E147E9
            FDBD17E414514501A85145144BE1F992FAFCBF33FA3AFF0083667FE516DA5FFD
            8E5AC7FE8D15FCFCFED23FF2713E3CFF00B1D355FF00D2C9ABFA06FF0083667F
            E516DA5FFD8E5AC7FE8D15FCFCFED23FF2713E3CFF00B1D355FF00D2C9ABDECD
            7FE4594BFAEC7E63C1FF00F254669EBFFB71C5D23FDC3F4A5A47FB87E95E0D4E
            BE87E9F2DE5E9FA9FB43FF0006897FC7C7ED05F5F0AFFEE56BF6924FBADF5AFC
            5BFF008344BFE3E3F682FAF857FF0072B5FB4927DD6FAD7DD64FFF0022FA67F3
            271E7FC9538AFF00B77FF4947E1F7FC1DBDFF251BE09FF00D81B5CFF00D1B655
            F8F95FB07FF076F7FC946F827FF606D73FF46D957E3E57CAE6BFF230A9FD743F
            6CE03FF925E87A3FCC28A28AF3CFB0D428A28A0350A28A280D428A28A0350A28
            A280D428A28A0350AF67FF008270FF00CA437E037FD967F0BFFE9DADABC62BD9
            FF00E09C3FF290DF80DFF659FC2FFF00A76B6ADB0FFEF10F538733FF00916D7F
            F04FFF004967F5BBFC3F957C89FF0005E11FF1AA4F8C07FEA0D67FFA71B6AFAE
            FF0087F2AF90FF00E0BC3FF28A6F8C1FF605B3FF00D38DB57DF627FDDA5E8CFE
            56C97FE46943FC51FCD1FCBBD14515F9E7D947F5B75F92FC828A28A43D428A28
            A0350A28A280D428A28A0350A28A280D428A28A03511FEE1FA57F5B3FF0004DE
            E3FE09E9F017FEC8DF863FF4D36F5FC933FDC3F4AFEB67FE09BBFF0028F4F80B
            FF00646FC31FFA69B7AFA2E1EFE34BD0FC9BC56FF71C37F8A5F923DB4755FF00
            769F4C1D57FDDA7D7D4C763F0F86C14514532828A28A0028A28A0028A28A006C
            9F70D7F2D7FF00053FB312FF00C1443E34C8A325BE246A87FF002666AFEA58F4
            AFE607FE0A5DA7EFFF008280FC6390A75F88FAAFFE944D5F39C492E5C2AF53F5
            EF0769FB4CE312BFE9DFFEDC8F9AA5B139FBB55E5B139FBB5D34DA6A83CA5569
            AC231C95AF8E5525CCCFDF2AE16D269F7673725890DF76A196D067EED745369E
            83E62871ECB556F6D60B58DA7B89046AAB9DCDDBDF15A46A48E3785DCE7E4B2D
            CD855AAB751C56EDF39E6AD6A9E208581874F4ED86931D6B2647331DCF256D19
            C8E3951498B24BBB8094CA28A1B722543974414514549A4530A28A282F50A28A
            280D447FB87E95FBAFFF000695FF00C9BEFC5CFF00B1D2CFFF00494D7E143FDC
            3F4AFDD7FF00834AFF00E4DF7E2E7FD8E967FF00A4A6BD5C97FE46113E13C46F
            F925EA7F8A3F9A3F5AFF008FFE03FD6BF90DFDB5FF00E4F2BE2F7FD952D77FF4
            BA7AFEBCF077E7FD9FEB5FC867EDAFFF002795F17BFECA96BBFF00A5D3D7ABC4
            5FC18FAFF91F15E13FFBF62BD23FFA51E61451457CACBE267EE2FE20A28A2816
            A14514502F985145146DB94D4A3B85145145C9F985145145C3E6148FF70FD296
            91FEE1FA51D194B56BD4FDD7FF00834ABFE4DFBE2E7FD8E969FF00A4B5FAD83E
            F37FBD5F927FF06951FF008C7FF8B9FF0063A5A7FE92D7EB60FBC4FF00B55F7D
            94BFF61A7E9FA9FCBBC69FF254623FC5FF00B6A3F9C1FF008399FF00E528BAB7
            FD897A3FFE82D5F9F75FA09FF0733FFCA51756FF00B12F47FF00D05ABF3EEBE2
            F1DFEF93F53F7FE12FF926F0BFE04145145729F45A851451406A15FD517FC117
            FF00E5179F057FEC4D87FF0046495FCAED7F545FF045FF00F945E7C15FFB1361
            FF00D19257D070FF00FBD4BD0FCB3C56FF00915D0FF1FE8CFA7E4FB8DF4AFE3C
            BF691FF9389F1E7FD8E9AAFF00E964D5FD86CA708D5FC797ED23FF002713E3CF
            FB1D355FFD2C9ABA388BFDD61EBFE478BE147FBC62FF00C2BFF4A38BA0F4A283
            D2BE65FF0011FA1FB5D6FE1CBFAEA7DD5FF06E3FFCA58FC0BFF60BD6BFF4DB73
            5F4E7FC1DC7FF251BE087FD80F5BFF00D1B655F31FFC1B8FFF002963F02FFD82
            F5AFFD36DCD7D39FF0771FFC946F821FF603D6FF00F46D957B747FE444FD7FC8
            FCCB30FF00939D4BFC1FA33F1E68A28AF0A3F0A3F4FEDE8BF20A28A280D428A2
            8A25F0FCC97D7E5F99FD1D7FC1B33FF28B6D2FFEC72D63FF00468AFE7E7F691F
            F9389F1E7FD8E9AAFF00E964D5FD037FC1B33FF28B6D2FFEC72D63FF00468AFE
            7E7F691FF9389F1E7FD8E9AAFF00E964D5EF66BFF22CA5FD763F31E0FF00F92A
            334F5FFDB8E2E91FEE1FA52D23FDC3F4AF06A75F43F4F96F2F4FD4FDA1FF0083
            44BFE3E3F682FAF857FF0072B5FB4927DD6FAD7E2DFF00C1A25FF1F1FB417D7C
            2BFF00B95AFDA493EEB7D6BEEB27FF00917D33F9938F3FE4A9C57FDBBFFA4A3F
            0FBFE0EDEFF928DF04FF00EC0DAE7FE8DB2AFC7CAFD83FF83B7BFE4A37C13FFB
            036B9FFA36CABF1F2BE5735FF91854FEBA1FB6701FFC92F43D1FE614514579E7
            D86A14514501A85145140BE614514501F30A28A281EA14514501A857B3FF00C1
            387FE521BF01BFECB3F85FFF004ED6D5E315ECFF00F04E1FF9486FC06FFB2CFE
            17FF00D3B5B56D87FF007887A9C399FF00C8B6BFF827FF00A4B3FADDFE1FCABE
            44FF0082F08FF8D527C603FF00506B3FFD38DB57D77FC3F957C87FF05E1FF945
            37C60FFB02D9FF00E9C6DABEFB13FEED2F467F2B64BFF234A1FE28FE68FE5DE8
            A28AFCF3ECA3FADBAFC97E414514521EA14514502F9851451407CC28A28A2E1F
            30A28A28B87CC28A28A2E1F311FEE1FA57F5B3FF0004DEE3FE09E9F017FEC8DF
            863FF4D36F5FC933FDC3F4AFEB67FE09BBCFFC13CFE029CFFCD1BF0CFF00E9A6
            DEBE8B877F8D2F43F27F15BFDC70DFE297E48F6D1D57FDDA7D468C1B6907B62A
            4AFA95B1F87C7E10A28A2994145145001451450014514500364C6C393DABF99E
            FF008290581B8FDBCBE305CAC4C55BE236AA77E3E5FF008F990633D33965E3AF
            35FD30CE1DA16543F315216BF1C7F6C2FF0082237EDABF173F69BF1DFC54F046
            95E17B8D2BC4DE26BCD56C59F5FD8CAB3484ED756886180C1C8EF5F35C4B86C4
            62B0AA3462DBBF4573F5AF08B34CA32BCE6BD4C7D58D38B8593934937CCB4D4F
            CB9B8D34282CE9B540F999B803DC9ED5566D224046612B91952E3008F5FA7BD7
            E802FF00C1BF1FF05069E644FEC3F0AC61980F31BC48B84F738889C0F607F1AA
            FE2EFF008367FF00E0A51E2232DAE91F14BE0FD8D9C806D8A4F126AC643EBB9B
            FB3C81F4191F5AF94A794667297C125F267EE98DE3EE0FC245B862E2DB6F66A5
            F95CFCE2F1478BB45D119AD2D99A7B8E9B636F941AE2356D5F52D5E6F32E8B15
            CFCA8A7EED7E951FF8352BFE0A301FCDFF0085B3F06D99BEF6EF12EA9FFCAAA3
            FE214FFF00828BFF00D155F83BFF00852EA9FF00CAAAEFA792E320B54CF95ADE
            2070ED595FEB29FE07E65F96FF00DDA3CB7FEED7E9A7FC429FFF000517FF00A2
            ABF07BFF000A5D53FF009554BFF10A77FC145FFE8AB7C1DFFC29B54FFE5555FF
            0064E323F659C9FEBB70CADEB2FBCFCCAF2DFF00BB408A427010D7E9AFFC429D
            FF000517FF00A2ADF077FF000A6D53FF009554D6FF0083543FE0A28C361F8AFF
            00077FF0A4D4FF00F95547F65E3BF958BFD76E19E9597DE7E65004B328192B9D
            F8FE1E71CFA751D7AE68AFA6BFE0A2BFF04B2FDA1FFE09A3FF00087A7C7EF157
            84750FF84D23BF3A347E14D52EEED63FB11B456F384F6D6E012B7498650D831F
            43C03F32D7356A1530F2E49AB33E8B2FC6E0F30C3FB7C34F9A2FA851451591DB
            A851451406A23FDC3F4AFDD7FF00834AFF00E4DF7E2E7FD8E967FF00A4A6BF0A
            1FEE1FA57EEBFF00C1A5840FD9F7E2E027FE674B3FFD2535EA64BFF23089F09E
            237FC93335FDE8FE68FD6BFE3FF80FF5AFE437F6D7FF0093CAF8BDFF00654B5D
            FF00D2E9EBFAF3DA77063FDDAFE433F6D7FF0093CAF8BDFF00654B5DFF00D2E9
            EBD6E22FE047D4F8AF09FF00DFB14BCA3FFA51E61451457CABF899FB86EF40A2
            8A280D428E7B0FC8514AAA8EC1244DCA4E19768391E9CF1F9F142D656339FBBA
            CB6FC4531BAB1475DACAD82ADC1E84FF002069B8AFD72F817FF06AF5EFC68F82
            DE11F8B0DFB738D317C51E17B0D592C57E1A799F6637510B831F9835250F8F34
            AE422F03B5759FF1084DC7FD241FFF003169FF00E5A57A51CA71DCB75D7B9F1D
            2E3CE19A55250F6AD59DB5537F7591F8C38A315FB3DFF1084DC7FD241FFF0031
            69FF00E5A51FF1084DC7FD241FFF003169FF00E5A557F64E61D907FC440E19FF
            009FFF00F92D4FF23F1871462BF67BFE2109B8FF00A483FF00E62D3FFCB4A3FE
            2109B8FF00A483FF00E62D3FFCB4A3FB2730EC83FE22070CFF00CFFF00FC96A7
            F91F8C38A0A161B477F7AFD9D3FF0006855C7FD241FF00F3169FFE5A5237FC1A
            1974A9BE3FF8282E587214FC2B3FFCB51FD297F63E6576D5B60FF8881C33A7EF
            FAFF0024DFE68EE3FE0D2A9037ECF9F168A9E1FC6564CBC7506D322BF5B87DE6
            FF007ABE41FF00824BFF00C12BA7FF00825EF807C4DE066F8D9FF09C7FC24DAC
            457B25E2F86FFB37ECFE5C5B02ED375367F3AFAFF073BBD5B35F5B96C2A52C2C
            635374BF53F09E27C66171F9F55AF87973464EE9D9AE8BA33F9C0FF8399FFE52
            8BAB7FD897A3FF00E82D5F9F75FA09FF000733107FE0A89AB107FE64BD1FFF00
            416AFCFBAF89C77FBE4FD4FE88E11D786F0D6FE44145145729F47A851451406A
            15FD517FC117FF00E5179F057FEC4D87FF0046495FCAED7F545FF045FF00F945
            E7C15FFB1361FF00D19257D070FF00FBD4BD0FCB3C56FF00915D0FF1FE8CFA7E
            4FB8DF4AFE3CBF691FF9389F1E7FD8E9AAFF00E964D5FD86CA708D5FC797ED23
            FF002713E3CFFB1D355FFD2C9ABA388BFDD61EBFE478BE147FBC62FF00C2BFF4
            A38BA0F4A283D2BE65FF0011FA1FB5D6FE1CBFAEA7DD5FF06E3FFCA58FC0BFF6
            0BD6BFF4DB735F4E7FC1DC7FF251BE087FD80F5BFF00D1B655F31FFC1B8FFF00
            2963F02FFD82F5AFFD36DCD7D39FF0771FFC946F821FF603D6FF00F46D957B74
            7FE444FD7FC8FCCB30FF00939D4BFC1FA33F1E68A28AF0A3F0A3F4FEDE8BF20A
            28A280D428A28A25F0FCC97D7E5F99FD1D7FC1B33FF28B6D2FFEC72D63FF0046
            8AFE7E7F691FF9389F1E7FD8E9AAFF00E964D5FD037FC1B33FF28B6D2FFEC72D
            63FF00468AFE7E7F691FF9389F1E7FD8E9AAFF00E964D5EF66BFF22CA5FD763F
            31E0FF00F92A334F5FFDB8E2E91FEE1FA52D23FDC3F4AF06A2767E87E9F53DDE
            66FAE9F33F687FE0D12FF8F8FDA0BEBE15FF00DCAD7ED249F75BEB5F8B7FF068
            91FF0049FDA087BF857FF72B5FB46ECA498C1E7AD7DD64FF00F22FA67F32F1E4
            65FEB56297F87FF4947E1FFF00C1DBDFF251BE09FF00D81B5CFF00D1B655F8F9
            5FB09FF076F8C7C46F8247D745D73FF46D957E3DD7CAE6CAD9854FEBA1FB5701
            EBC2F42DE7F98514515E79F63A851451406A04E064D0A370CAB29FA30E280C54
            EE1BB8FEE9C1AFAFBE07FF00C10CFF00E0A3FF00B47FC27D0FE387C29F84DA6E
            A1E1DF11D9ADDE9179378AACA179A12480C51E6561C83C30078E95A53A35AB4A
            D4E2DFA238B1B98E0F2D829E266A29E89C9A4AFDB53E413C7391FF007D51821B
            691CE335F6DF8AFF00E0DEBFF82A6782FC31A8F8C3C43F05B4A8F4FD2EC65BBB
            E923F1869ECC90C685DC802E393B41E3BD7C4CFCB1569BCCC7DD6C75155530F5
            A8DBDA45ABF744E0734CBF328B785AB19DB7E569FE4368A28AC4EF0A28A280D4
            2BD9FF00E09C3FF290DF80DFF659FC2FFF00A76B6AF18AF67FF8270FFCA437E0
            37FD967F0BFF00E9DADAB6C3FF001E1EA70E67FF0022DAFF00E09FFE92CFEB77
            F87F2AF913FE0BC23FE3549F180FFD41ACFF00F4E36D5F5DE40404F7AF913FE0
            BC009FF82527C6061DB46B3FFD38DB57DF627FDDE7E8CFE56C9BFE46987FF147
            F347F2ED451457E79F651FD6D7BCB47D17E414514521EA1451410586036DFF00
            6B6EEC7E1DE82262EC7DE6308CC4360ED5CE3E5DDDBDA9315EB5FB0BFECB4DFB
            6D7ED5BE0EFD983FE1355F0C8F175E4F12EB4DA58D43EC663B57B83FBA6923EA
            D1EDF95BF11D6BF513FE2109B8FF00A483FF00E62D3FFCB4AECC3E0B138A8B95
            348F9FCD389B27C96B2A58AABCB26AF6B49FFE929FE27E30E28C57ECF7FC4213
            71FF004907FF00CC5A7FF96947FC421371FF004907FF00CC5A7FF9695D1FD939
            876479BFF1103867FE7FFF00E4B53FC8FC61C518AFD9EFF88426E3FE920FFF00
            98B4FF00F2D28FF88426E3FE920FFF0098B4FF00F2D28FEC9CC3B20FF8881C33
            FF003FFF00F25A9FE47E30E28C57ECF7FC421371FF004907FF00CC5A7FF96947
            FC421371FF004907FF00CC5A7FF96947F64E61D907FC440E19FF009FFF00F92D
            4FF23F18595986D02BFAD5FF00826E4AABFF0004F0F80858F0DF083C3007BFFC
            4AADEBF319FF00E0D0CBC8D7CC87FE0A0C0B2F2B9F85ADD7F0D547F315FAD1FB
            317C17BAFD9E3F674F007C06935B5D50781FC17A4E83FDA6B6BE47DAC59DAC56
            DE6F97BDCA6E58F763CC6C13D4D7B39360F1185ACDD45B9F9F71FF00126539D6
            168430B3E7E5936F492B5D7F7923D023500D4951A30EB9A92BDF3F2D8FC2828A
            28A0614514500145145001451450023B0542CC78C545E747BB66F6FA9538EDDF
            A771FE41A75D0736D2045663B0FCAAD827F1ED5F82DFB5B7FC1C6FFF000500F8
            27FB577C4DF83DE0FF000FFC3B6D2FC23F10B5AD134D6BCF0D4CD31B6B4BE960
            8DA475BA1B98AA2E700723B572E2B1787C1C79EA1ECE4B916619ED774F0B6D37
            B9FBCE66894F1251E7C5FDEFFC7ABF9D91FF0007467FC149C74F0F7C35FF00C2
            6EEBFF009328FF0088A33FE0A4FF00F42F7C35FF00C26EEBFF00932BCEFEDDC0
            75BFDC7D3CBC34E26BE8E1F7FF00C03FA26F3E2FEF7FE3D479F17F7BFF001EAF
            E767FE228CFF008293FF00D0BDF0D7FF0009BBAFFE4CA3FE228CFF008293FF00
            D0BDF0D7FF0009BBAFFE4CA3FB7B2FECFEE17FC434E26EF0FBFF00E01FD1379F
            17F7BFF1EA3CF8BFBDFF008F57F3B3FF0011467FC149FF00E85EF86BFF0084DD
            D7FF002651FF0011467FC149FF00E85EF86BFF0084DDD7FF002651FDBD97F67F
            707FC434E26EF0FBFF00E01FD1379F10E777FE3D4D92E228C6F07F33D2BF9DB1
            FF0007477FC14A14E4787BE1AFFE13775FFC994BFF001147FF00C14AF76E5F0F
            FC33DDFEDF866E8AFE205E0E28FEDECBF4B27F70BFE21A71449B8A71DBB9EF7F
            F077403F6AFD9F8F2711F8A81E3A7FC81EBF19EBE8BFDBFBFE0A7DFB487FC149
            24F0937ED0F61E1A8FFE10C5BC1A2BE83A6496E7FD292DBCEF33CC924CF36A98
            C1FE2F6AF9D2BE7332AF4F118C95485ECEC7EC9C2595E3328C8A9E17136E68DF
            6F36D8514515C27D2EA14514501A8372A457EE9FFC1A5F2227ECFF00F160B86F
            DE78D2CFCA6DA76BE6CF2083D08C771C678EB5F8580B0E525646ECF1B6197DC1
            EC6BDAFF0067AFF8283FED53FB277C38D4FE1A7ECE3F1266F07DBEB1AF26ABA8
            EA1A3C2A2EA59960317945DB23C900E40C021B9AEECBF111C2E215491F37C599
            36273EC9DE128B4A4DA777E47F5AD3DC241033C87EEA93C735FC86FEDB031FB6
            67C5E5FF00AAA3AF1FA62FE7183E87D8F35E9727FC1653FE0A82C8C3FE1B57C6
            7D3BC909FF00D96BE74F1478A35EF1C789352F17F8AF5396F353D5AFA7BED46E
            E7001B9B8966323B9DBFC59627D2BAB36CCA9E3A118C15B5D4F9CE0EE10CC386
            EB56A95A49B71495BF128514515E3BF8D9FA44A3CB2B2ECBF20A28A2816A14AA
            CA8C1DD82AA9CB331C01EF494AA54302FBB6E79DAD83F81EC6AA1A493644E1ED
            2D0BEF7D7E47F5DBFB0F4B18FD8C7E10A89171FF000AC7411D7A9FECF82BD536
            FF00B3FAD7F28FE18FF82B6FFC148FC13E1CD37C21E16FDAFBC5967A6E956705
            969D676D34463B7B78A211A28DC99E8A2B4BFE1F31FF000543FF00A3D7F1A7FD
            FE8BFF0088AFAAA79F61E9D351E57A1F85D6F0BF36AD56551548EB27BDFB9FD5
            36DFF67F5A36FF00B3FAD7F2B3FF000F98FF0082A1FF00D1EBF8D3FEFF0045FF
            00C451FF000F98FF0082A1FF00D1EBF8D3FEFF0045FF00C4557FAC387FE5667F
            F10AF38FF9F90FC7FC8FEA9B6FFB3FAD1B7FD9FD6BF959FF0087CC7FC150FF00
            E8F5FC69FF007FA2FF00E228FF0087CC7FC150FF00E8F5FC69FF007FA2FF00E2
            28FF005870FF00CAC3FE215E71FF003F21F8FF0091FD536DFF0067F5A36FFB3F
            AD7F2B3FF0F98FF82A1FFD1EBF8D3FEFF45FFC451FF0F98FF82A1FFD1EBF8D3F
            EFF45FFC451FEB0E1FF9587FC42BCE3FE7E43F1FF23FAA6DA0738FD69C640465
            4AE3BD7F2AFF00F0F97FF82A1FFD1EBF8D3FEFF45FFC4534FF00C165BFE0A840
            7CBFB6A78D3E9E7C5CFF00E3947FAC187BFC2C3FE215E75B2A90FC57E67B47FC
            1CC251BFE0A85AAEC6C83E0BD236FBFC8C6BF3F6BB1F8E7FB407C62FDA63C7D3
            7C4FF8F1E3ED43C4DAF496F1DB7F686A4CAEC228C617A01EB5C757CCE2AA46B5
            79545D4FD9B23C0D6CB727A385A8D5E0ACEC145145739EAEA14514501A857F54
            5FF045FF00F945E7C15FFB1361FF00D19257F2BB5FD517FC117FFE5179F057FE
            C4D87FF46495F41C3FFEF52F43F2CF15BFE45743FC7FA33E9F93EE37D2BF8F2F
            DA47FE4E27C79FF63A6ABFFA59357F61B29C2357F1E5FB48FF00C9C4F8F3FEC7
            4D57FF004B26AE8E22FF007587AFF91E2F851FEF18BFF0AFFD28E2E83D28A0F4
            AF997FC47E87ED75BF872FEBA9F757FC1B8FFF002963F02FFD82F5AFFD36DCD7
            D39FF0771FFC946F821FF603D6FF00F46D957CC7FF0006E3FF00CA58FC0BFF00
            60BD6BFF004DB735F4E7FC1DC7FF00251BE087FD80F5BFFD1B655EDD1FF9113F
            5FF23F32CC3FE4E752FF0007E8CFC79A28A2BC28FC28FD3FB7A2FC828A28A035
            0A28A2897C3F325F5F97E67F475FF06CCFFCA2DB4BFF00B1CB58FF00D1A2BF9F
            9FDA47FE4E27C79FF63A6ABFFA59357F40DFF06CCFFCA2DB4BFF00B1CB58FF00
            D1A2BF9F9FDA47FE4E27C79FF63A6ABFFA59357BD9AFFC8B297F5D8FCC783FFE
            4A8CD3D7FF006E38BA46C95200ED4B48E32846DCF1D3D6BC29465293ED63F527
            CBCCB995D2773F67FF00E0D13B8B75BBFDA12269977E7C29F2839C646AC7F0E9
            5FB48EC31BD0673DEBF90BFD9DBF6C9FDA7FF64B6D64FECDFF001AB58F080D79
            ADFF00B63FB25D17ED9E479A21272A7A79EFD6BD347FC1657FE0A8606D4FDB63
            C68B9FFA6D17FF00115F4381CE68E17070835AA3F1EE25F0FB36CE738AD8CA35
            2294DADDEAB448FB9FFE0EDC7593E21FC11743F2FF00636B8037AFEF2C8D7E3E
            D7A37ED0DFB5DFED2BFB59DE693A87ED1FF18F56F16CDA2C52A692DAB6C7FB2A
            C9B4B818039628BCE2BCE6BC9C7E2238AC54AA2EA7E85C399557C9729A783AAD
            371EA828A28AE33DDD428A28A03502428C935FD50FFC118D993FE097BF054943
            F2F83611F5F9E435FCAFA1DAEA7715E7EF2F515FA4DFB287FC1C91F1B7F650FD
            9C3C1FFB3A787BF66DF0AEAD69E10D1D34FB7D52F359B959A75193B880981C9C
            57AF93E2B0F86C43757B1F05C7F91E659DE028D3C2C14AD3D75B35A7E47EF1FE
            D25163F678F1F3824EEF06EA7F2FFDBAC95FC7A839C30C919C671DCAEE1FA0AF
            D54F1EFF00C1D47F1FFC7BE06D63C0D77FB2DF846D62D674BB8B192EA1D66E59
            E25963642EA0A6091BB201E0E2BF2AC2285D9E5C63E55198D8F600FF003C8AD3
            35C650C5B8BA7D2E71F00F0EE6590D3AB1C5C3979A49AB3BE8828A28AF10FD23
            5BB0A28A281EA15ECFFF0004E23FF1B0DF80DFF659FC2FFF00A76B6AF18AD3F0
            578CBC51F0E7C65A4FC42F046B5369BAD683A9DBEA3A3EA36D8F32D6EA191648
            A55CF1B95D5587B8AD29CFD9D48CBB339B194EBD7C2CE8D3B7BF192BBF34D1FD
            98175DBB460EDEBED5F217FC177AEE16FF0082517C5F3E663768F658CF1D750B
            5C7F3AFC155FF82CBFFC15051B78FDB4BC64DCE76B4D161BD8FC95CE7C55FF00
            829DFEDF3F1BBE1EEA9F09BE2D7ED49E25F10787F578521D534EBC913CBB9557
            571C6CCE0322E7A135F495B3CA33A72828F43F19C078679CE171B4EB4A71B45A
            96FDACEDEA783514515F2B1F811FB7479E504E564EDAFC828A28AA1EA1413819
            A28C6EF97795CFF10EDEF532D899DF9535DCFAE3FE084BB87FC158BE0EAAA966
            5D63501F28CE31A6DD03FAA9AFEA2B6FFB3FAD7F1C3F0ABE2CFC45F821F10B4D
            F8B5F08FC5D73E1FF116933493699A958FFADB6674746C13C125646C751EB5EF
            1FF0F98FF82A1FFD1EBF8D3FEFF45FFC457BD966694F0345C64AF73F35E32E0A
            C6F10E610AF4251492B3E6BF7BF43FAA6DBFECFEB46DFF0067F5AFE567FE1F31
            FF000543FF00A3D7F1A7FDFE8BFF0088A3FE1F31FF000543FF00A3D7F1A7FDFE
            8BFF0088AF4BFD61C3FF002B3E43FE215E71FF003F21F8FF0091FD536DFF0067
            F5A36FFB3FAD7F2B3FF0F98FF82A1FFD1EBF8D3FEFF45FFC451FF0F98FF82A1F
            FD1EBF8D3FEFF45FFC451FEB0E1FF9587FC42BCE3FE7E43F1FF23FAA6DBFECFE
            B46DFF0067F5AFE567FE1F31FF000543FF00A3D7F1A7FDFE8BFF0088A3FE1F31
            FF000543FF00A3D7F1A7FDFE8BFF0088A3FD61C3FF002B0FF88579C7FCFC87E3
            FE47F54C4003245115CC528215D58FB57F2B27FE0B2DFF00054361B4FEDB3E34
            5F769E2C0FC92BFA48FD83FC61E30F88DFB127C1CF887E38D5A6D435AD7BE18E
            83A96AD7D75206927B89F4FB796472401925998D7660B32863AA5A0AD63E6F89
            38471DC3342156B4A32E6764A37E9BEE7B06F500600FBD52546ABCE0F4EA2A4A
            F4BA9F2F6B3D028A28A0028A28A0028A28A0028A28A000F4AFE46FFE0A2FFF00
            2909F8F3FF00659BC4FF00FA769EBFAE43D2BF91BFF828BFFCA427E3CFFD966F
            13FF00E9DA7AF9DE22FF00778FA9FA97859FF231C47F863FFA523C6E8A28AF95
            97C4CFDD028A28A07A851451406A14514501A851451406A14514501A85145140
            6A14514501A851451406A14514501A851451406A14514501A851451406A14514
            501A851451406A14514501A851451406A14514501A851451406A14514501A857
            F545FF00045FFF00945E7C15FF00B1361FFD19257F2BB5FD517FC117FF00E517
            9F057FEC4D87FF0046495F41C3FF00EF52F43F2CF15BFE45743FC7FA33E9F93E
            E37D2BF8F2FDA47FE4E27C79FF0063A6ABFF00A59357F61B29C2357F1E5FB48F
            FC9C4F8F3FEC74D57FF4B26AE8E22FF7587AFF0091E2F851FEF18BFF000AFF00
            D28E2E83D28A0F4AF997FC47E87ED75BF872FEBA9F757FC1B8FF00F2963F02FF
            00D82F5AFF00D36DCD7D39FF000771FF00C946F821FF00603D6FFF0046D957CC
            7FF06E3FFCA58FC0BFF60BD6BFF4DB735F4E7FC1DC7FF251BE087FD80F5BFF00
            D1B655EDD1FF009113F5FF0023F32CC3FE4E752FF07E8CFC79A28A2BC28FC28F
            D3FB7A2FC828A28A0350A28A2897C3F325F5F97E67F475FF0006CCFF00CA2DB4
            BFFB1CB58FFD1A2BF9F9FDA47FE4E27C79FF0063A6ABFF00A59357F40DFF0006
            CCFF00CA2DB4BFFB1CB58FFD1A2BF9F9FDA47FE4E27C79FF0063A6ABFF00A593
            57BD9AFF00C8B297F5D8FCC783FF00E4A8CD3D7FF6E38BA28A2BC397C47EA32D
            D851451522D428A28A0350A28A280D428A28A0350A28A280D428A28A0350A28A
            280D428A28A0350A28A280D428A28A0350A28A280D428A28A0350A28A280D428
            A28A0350A28A280D428A28A0350A28A280D447FB87E95FD6CFFC137B8FF827A7
            C05FFB237E18FF00D34DBD7F24CFF70FD2BFAD9FF826EFFCA3D3E02FFD91BF0C
            7FE9A6DEBE8B87BF8D2F43F26F15BFDC70DFE297E48F6D1D57FDDA7D30755FF7
            69F5F531D8FC3E1B0514514CA0A28A2800A28A2800A28A28003D2BF91BFF0082
            8BFF00CA427E3CFF00D966F13FFE9DA7AFEB90F4AFE46FFE0A2FFF002909F8F3
            FF00659BC4FF00FA769EBE7788BFDDE3EA7EA5E167FC8C711FE18FFE948F1BA2
            8A2BE565F133F740A28A281EA14514501A851451406A14514501A851451406A1
            4514501A851451406A14514501A851451406A14514501A851451406A14514501
            A851451406A14514501A851451406A14514501A851451406A14514501A851451
            406A15FD517FC117FF00E5179F057FEC4D87FF0046495FCAED7F545FF045FF00
            F945E7C15FFB1361FF00D19257D070FF00FBD4BD0FCB3C56FF00915D0FF1FE8C
            FA7E4FB8DF4AFE3CBF691FF9389F1E7FD8E9AAFF00E964D5FD86CA708D5FC797
            ED23FF002713E3CFFB1D355FFD2C9ABA388BFDD61EBFE478BE147FBC62FF00C2
            BFF4A38BA0F4A283D2BE65FF0011FA1FB5D6FE1CBFAEA7DD5FF06E3FFCA58FC0
            BFF60BD6BFF4DB735F4E7FC1DC7FF251BE087FD80F5BFF00D1B655F31FFC1B8F
            FF002963F02FFD82F5AFFD36DCD7D39FF0771FFC946F821FF603D6FF00F46D95
            7B747FE444FD7FC8FCCB30FF00939D4BFC1FA33F1E68A28AF0A3F0A3F4FEDE8B
            F20A28A280D428A28A25F0FCC97D7E5F99FD1D7FC1B33FF28B6D2FFEC72D63FF
            00468AFE7E7F691FF9389F1E7FD8E9AAFF00E964D5FD037FC1B33FF28B6D2FFE
            C72D63FF00468AFE7E7F691FF9389F1E7FD8E9AAFF00E964D5EF66BFF22CA5FD
            763F31E0FF00F92A334F5FFDB8E2E8A28AF0E5F11FA8CB7614514548B50A28A2
            80D428A28A0350A28A280D428A28A0350A28A280D428A28A0350A28A280D428A
            28A0350A28A280D428A28A0350A28A280D428A28A0350A28A280D428A28A0350
            A28A280D428A28A03511FEE1FA57F5B3FF0004DEE3FE09E9F017FEC8DF863FF4
            D36F5FC933FDC3F4AFEB67FE09BBFF0028F4F80BFF00646FC31FFA69B7AFA2E1
            EFE34BD0FC9BC56FF71C37F8A5F923DB4755FF00769F4C1D57FDDA7D7D4C763F
            0F86C14514532828A28A0028A28A0028A28A000F4AFE46FF00E0A2FF00F2909F
            8F3FF659BC4FFF00A769EBFAE291822333761E95FC8EFF00C1468AC7FF000509
            F8F024655DDF19BC4E172DD4FF006B5CFF00F127FCE2BE77889AFABC7D4FD4FC
            2BF7B32AE96EE2BFF4A478DD14668CD7CA7345CAE99FB92945ECC28A334668E6
            43BF98514668CD1CC82FE614519A3347320BF98514668CD1CC82FE614519A334
            7320BF98514668CD1CC82FE614519A3347320BF98514668CD1CC82FE614519A3
            347320BF98514668CD1CC82FE614519A3347320BF98514668CD1CC82FE614519
            A3347320BF98514668CD1CC82FE614519A3347320BF98514668CD1CC82FE6145
            19A3347320BF98514668CD1CC82FE614519A3347320BF9857F545FF045FF00F9
            45E7C15FFB1361FF00D19257F2B6CE88A5DDB0AA3249ED5FD51FFC118248C7FC
            12FF00E0AA0915BFE28D887CAC1864492771F515EFF0FB5F5A7E87E57E2B497F
            6550D7EDFE8CFA824FB8DF4AFE3CBF691FF9389F1E7FD8E9AAFF00E964D5FD86
            4EE89148E5BEEAF35FC79FED2241FDA1FC78CA772FFC26DAAAEE5E467ED52B76
            F622BAB88DA587847AFF00C31E3F853EEE23157FE55F99C5D07A519A3AF15F2E
            E51E77E87ED75B58492FEB53EEAFF8371FFE52C7E05FFB05EB5FFA6DB9AFA73F
            E0EE3FF928DF043FEC07ADFF00E8DB2AF98BFE0DC9655FF82B07815C9F97FB27
            5820FA86D36E3047AF515F4EFF00C1DC7FF251BE087FD80F5BFF00D1B655EE50
            6BFB0E4BCFFC8FCCB1CF9BC4EA2D7F27E8CFC79A28A2BC38FC28FD3FB7A2FC82
            8A28A0350A28A2897C3F325F5F97E67F475FF06CCFFCA2DB4BFF00B1CB58FF00
            D1A2BF9F9FDA47FE4E27C79FF63A6ABFFA59357F40DFF06CE384FF008259E9AE
            C781E32D60FF00E4415FCFCFED2241FDA1FC78CA772FFC26DAAAEE5E467ED52B
            76F622BDCCDA4BFB368AFEBA1F98F07FFC9519A7AFFEDCCE2E8A33466BC494A3
            CC7EA327ABD428A33466A799137F30A28CD19A39905FCC28A334668E6417F30A
            28CD19A39905FCC28A334668E6417F30A28CD19A39905FCC28A334668E6417F3
            0A28CD19A39905FCC28A334668E6417F30A28CD19A39905FCC28A334668E6417
            F30A28CD19A39905FCC28A334668E6417F30A28CD19A39905FCC28A334668E64
            17F30A28CD19A39905FCC28A334668E6417F311FEE1FA57F5B3FF04DEE3FE09E
            9F017FEC8DF863FF004D36F5FC93360AE338FF007B815FD6B7FC136A68E5FF00
            82797C05747C8FF8537E18EC7FE8136DFE22BE8F877F8D23F27F15A4BEA386D7
            ED4BF247B80EABFEED3EA356048E7A715257D523F0F8E8145145050514514005
            145140051451400D9C3342CA8DB495E1B19C57CA7E3AFF00822DFF00C1347E28
            F8E758F89DE3AFD95B4CBFD73C43AB5C6A5ADDFC9ABDFC6F77753CAD2CAECB1D
            C2A0CB3B1200C73D2BEAD604AE01A8BCB91BE56FCF153529D3AB1E59C53F53A3
            0F8CC56066E787A92849E978B6BF23E457FF0082127FC127C2A9FF008636D179
            6FE1D6B51FFE48A7FF00C3887FE093BFF466BA37FE0EB51FFE48AFADC472C7C0
            6FFBE5451E549FE54562B09868AB282FB8EA59D67118A8AC4CFF00F0391F247F
            C3887FE093BFF466BA37FE0EB51FFE48A3FE1C43FF00049DFF00A335D1BFF075
            A8FF00F2457D6FE549FE5451E549FE54557D570FFC8BEE0FEDCCE7FE8267FF00
            81C8F923FE1C43FF00049DFF00A335D1BFF075A8FF00F2451FF0E21FF824EFFD
            19AE8DFF0083AD47FF00922BEB7F2A4FF2A28F2A4FF2A28FAAE1FF00917DC1FD
            B99CFF00D04CFF00F0391F247FC3887FE093BFF466BA37FE0EB51FFE48A3FE1C
            43FF00049DFF00A335D1BFF075A8FF00F2457D6FE549FE5451E549FE5451F55C
            3FF22FB83FB7339FFA099FFE0723E48FF8710FFC1277FE8CD746FF00C1D6A3FF
            00C9147FC3887FE093BFF466BA37FE0EB51FFE48AFADFCA93FCA8A3CA93FCA8A
            3EAB87FE45F707F6E673FF004133FF00C0E47C91FF000E21FF00824EFF00D19A
            E8DFF83AD47FF9228FF8710FFC1277FE8CD746FF00C1D6A3FF00C915F5BF9527
            F951479527F95147D570FF00C8BEE0FEDCCE7FE8267FF81C8F923FE1C43FF049
            DFFA335D1BFF00075A8FFF002451FF000E21FF00824EFF00D19AE8DFF83AD47F
            F922BEB7F2A4FF002A28F2A4FF002A28FAAE1FF917DC1FDB99CFFD04CFFF0003
            91F247FC3887FE093BFF00466BA37FE0EB51FF00E48A3FE1C43FF049DFFA335D
            1BFF00075A8FFF002457D6FE549FE5451E549FE5451F55C3FF0022FB83FB7339
            FF00A099FF00E0723E48FF008710FF00C1277FE8CD746FFC1D6A3FFC9147FC38
            87FE093BFF00466BA37FE0EB51FF00E48AFADFCA93FCA8A3CA93FCA8A3EAB87F
            E45F707F6E673FF4133FFC0E47C91FF0E21FF824EFFD19AE8DFF0083AD47FF00
            9228FF008710FF00C1277FE8CD746FFC1D6A3FFC915F5BF9527F951479527F95
            147D570FFC8BEE0FEDCCE7FE8267FF0081C8F923FE1C43FF00049DFF00A335D1
            BFF075A8FF00F2451FF0E21FF824EFFD19AE8DFF0083AD47FF00922BEB7F2A4F
            F2A28F2A4FF2A28FAAE1FF00917DC1FDB99CFF00D04CFF00F0391F247FC3887F
            E093BFF466BA37FE0EB51FFE48A3FE1C43FF00049DFF00A335D1BFF075A8FF00
            F2457D6FE549FE5451E549FE5451F55C3FF22FB83FB7339FFA099FFE0723E48F
            F8710FFC1277FE8CD746FF00C1D6A3FF00C9147FC3887FE093BFF466BA37FE0E
            B51FFE48AFADFCA93FCA8A3CA93FCA8A3EAB87FE45F707F6E673FF004133FF00
            C0E47C91FF000E21FF00824EFF00D19AE8DFF83AD47FF9228FF8710FFC1277FE
            8CD746FF00C1D6A3FF00C915F5BF9527F951479527F95147D570FF00C8BEE0FE
            DCCE7FE8267FF81C8F923FE1C43FF049DFFA335D1BFF00075A8FFF002451FF00
            0E21FF00824EFF00D19AE8DFF83AD47FF922BEB7F2A4FF002A28F2A4FF002A28
            FAAE1FF917DC1FDB99CFFD04CFFF000391F247FC3887FE093BFF00466BA37FE0
            EB51FF00E48A3FE1C43FF049DFFA335D1BFF00075A8FFF002457D6FE549FE545
            1E549FE5451F55C3FF0022FB83FB7339FF00A099FF00E0723E48FF008710FF00
            C1277FE8CD746FFC1D6A3FFC9147FC3887FE093BFF00466BA37FE0EB51FF00E4
            8AFADFCA93FCA8A3CA93FCA8A3EAB87FE45F707F6E673FF4133FFC0E47C91FF0
            E21FF824EFFD19AE8DFF0083AD47FF009228FF008710FF00C1277FE8CD746FFC
            1D6A3FFC915F5BF9527F951479527F95147D570FFC8BEE0FEDCCE7FE8267FF00
            81C8F923FE1C43FF00049DFF00A335D1BFF075A8FF00F2451FF0E21FF824EFFD
            19AE8DFF0083AD47FF00922BEB7F2A4FF2A28F2A4FF2A28FAAE1FF00917DC1FD
            B99CFF00D04CFF00F0391F247FC3887FE093BFF466BA37FE0EB51FFE48A3FE1C
            43FF00049DFF00A335D1BFF075A8FF00F2457D6FE549FE5451E549FE5451F55C
            3FF22FB83FB7339FFA099FFE0723E477FF0082107FC1280A111FEC71A32B7F0B
            7F6DEA3C7FE4C57D23F08FE0FF00807E04FC3BD23E14FC2CF0EC7A5F87B41B51
            6DA4E9A9348EB6F1E7240691998F53D4D74EB13E7E6FFD0453C2678C71550A14
            69CAF18A5E873E2330C76362A188AB29A5ADA526FF003209A377B6745C664C8F
            9BE9EC47F315F2AEBDFF00043FFF00825CF8A75FBCF13F887F641D1E7BED42EE
            4BABBBA3AD6A01A59A424C8C40B8C739ED5F58B292301699B64EF9FF00BE6895
            1A752579C53F5270F8DC660E6E542A4A17ECDAFC8F91CFFC1087FE093ABFF366
            DA2FFE0EB51FFE48A51FF0423FF82502FEF23FD8E74556072A7FB6B5138FC3ED
            15F5B9B773CEEFCD6810BA739FD2A7EAB86FE45F71D4B3BCE94B9BEB33FF00C0
            E47CEFF013FE0943FB02FECBFF00132C7E2FFC02FD9C34DF0DF8934E8E48ED35
            6B7D52F65648E4431BAED9272BF32923A1C57E65FF00C1DC7FF251BE087FD80F
            5BFF00D1B655FB7A164CF3BBF2AFC42FF83B8FFE4A37C10FFB01EB7FFA36CABC
            ECDA9C29E5F251497A1F4FC0B89C462B8B28CEB4DC9DA5AB6DF4F33F1E68A28A
            F8A8FC28FE8EEDE8BF20A28A280D428A28A25F0FCC97D7E5F99FD1D7FC1B3911
            9FFE0967A6C2B8CB78CB5803767FE7A0F423F98AF5AD7BFE087FFF0004B9F14E
            BF79E27F10FEC83A3CF7DA85DC975777475AD4034B3484991881718E73DABC9F
            FE0D94C9FF00825D69407FD0E9AC7FE8D15FA0DB64EF9FFBE6BEFB07469D4C24
            39A29E9D4FE5ECFB1B8BC1F11629D0A9285E6FE16D5F5F23E47FF8710FFC1274
            71FF000C6FA2FF00E0EB51FF00E48A5FF8710FFC1277FE8CD746FF00C1D6A3FF
            00C915F5BF90D9CEEFFC7451E549FE545747D570FF00C8BEE3CDFEDBCEB7FACC
            FF00F0391F247FC3887FE093BFF466BA37FE0EB51FFE48A3FE1C43FF00049DFF
            00A335D1BFF075A8FF00F2457D6FE549FE5451E549FE5451F55C3FF22FB83FB7
            339FFA099FFE0723E48FF8710FFC1277FE8CD746FF00C1D6A3FF00C9147FC388
            7FE093BFF466BA37FE0EB51FFE48AFADFCA93FCA8A3CA93FCA8A3EAB87FE45F7
            07F6E673FF004133FF00C0E47C91FF000E21FF00824EFF00D19AE8DFF83AD47F
            F9228FF8710FFC1277FE8CD746FF00C1D6A3FF00C915F5BF9527F951479527F9
            5147D570FF00C8BEE0FEDCCE7FE8267FF81C8F923FE1C43FF049DFFA335D1BFF
            00075A8FFF002451FF000E21FF00824EFF00D19AE8DFF83AD47FF922BEB7F2A4
            FF002A28F2A4FF002A28FAAE1FF917DC1FDB99CFFD04CFFF000391F247FC3887
            FE093BFF00466BA37FE0EB51FF00E48A3FE1C43FF049DFFA335D1BFF00075A8F
            FF002457D6FE549FE5451E549FE5451F55C3FF0022FB83FB7339FF00A099FF00
            E0723E48FF008710FF00C1277FE8CD746FFC1D6A3FFC9147FC3887FE093BFF00
            466BA37FE0EB51FF00E48AFADFCA93FCA8A3CA93FCA8A3EAB87FE45F707F6E67
            3FF4133FFC0E47C91FF0E21FF824EFFD19AE8DFF0083AD47FF009228FF008710
            FF00C1277FE8CD746FFC1D6A3FFC915F5BF9527F951479527F95147D570FFC8B
            EE0FEDCCE7FE8267FF0081C8F923FE1C43FF00049DFF00A335D1BFF075A8FF00
            F2451FF0E21FF824EFFD19AE8DFF0083AD47FF00922BEB7F2A4FF2A28F2A4FF2
            A28FAAE1FF00917DC1FDB99CFF00D04CFF00F0391F247FC3887FE093BFF466BA
            37FE0EB51FFE48A3FE1C43FF00049DFF00A335D1BFF075A8FF00F2457D6FE549
            FE5451E549FE5451F55C3FF22FB83FB7339FFA099FFE0723E48FF8710FFC1277
            FE8CD746FF00C1D6A3FF00C9147FC3887FE093BFF466BA37FE0EB51FFE48AFAD
            FCA93FCA8A3CA93FCA8A3EAB87FE45F707F6E673FF004133FF00C0E47C91FF00
            0E21FF00824EFF00D19AE8DFF83AD47FF9228FF8710FFC1277FE8CD746FF00C1
            D6A3FF00C915F5BF9527F951479527F95147D570FF00C8BEE0FEDCCE7FE8267F
            F81C8F923FE1C43FF049DFFA335D1BFF00075A8FFF002451FF000E21FF00824E
            FF00D19AE8DFF83AD47FF922BEB7F2A4FF002A28F2A4FF002A28FAAE1FF917DC
            1FDB99CFFD04CFFF000391F247FC3887FE093BFF00466BA37FE0EB51FF00E48A
            3FE1C43FF049DFFA335D1BFF00075A8FFF002457D6FE549FE5451E549FE5451F
            55C3FF0022FB83FB7339FF00A099FF00E0723E48FF008710FF00C1277FE8CD74
            6FFC1D6A3FFC9147FC3887FE093BFF00466BA37FE0EB51FF00E48AFADFCA93FC
            A8A3CA93FCA8A3EAB87FE45F707F6E673FF4133FFC0E47C91FF0E21FF824EFFD
            19AE8DFF0083AD47FF009228FF008710FF00C1277FE8CD746FFC1D6A3FFC915F
            5BF9527F951479527F95147D570FFC8BEE0FEDCCE7FE8267FF0081C8F923FE1C
            43FF00049DFF00A335D1BFF075A8FF00F2451FF0E21FF824EFFD19AE8DFF0083
            AD47FF00922BEB7F2A4FF2A28F2A4FF2A28FAAE1FF00917DC1FDB99CFF00D04C
            FF00F0391F247FC3887FE093BFF466BA37FE0EB51FFE48A3FE1C43FF00049DFF
            00A335D1BFF075A8FF00F2457D6FE549FE5451E549FE5451F55C3FF22FB83FB7
            339FFA099FFE0723E477FF0082107FC127B6363F635D17A77D6B51FF00E48AFA
            63E1DFC38F0C7C2DF02E87F0D7C0FA6FD8F44F0DE976DA768F62ADB96DEDA08D
            638E305F2C70A8A3AE78EB9E6BA058DF3CFF00E822A40085C05A70C3D2A72E68
            A4BD0E7C4E3F1D8C8A8D7AB29A5AFBCDBFCC842B055E3ABD58A60326D195EF4F
            AD59C9BB72EE145145030A28A2800A28A2800A28A2800A28A2800A28A2800A28
            A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28
            A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28
            A2800A28A2800A28A2800A28A2800A28A2800A28A2800AFC3DFF0083B8FF00E4
            A37C10FF00B01EB7FF00A36CABF70ABF0F7FE0EE3FF928DF043FEC07ADFF00E8
            DB2AF2F38FF7191F69E1FF00FC95147D25F91F8F3451457C3C7E147F49F6F45F
            9051451406A14514512F87E64BEBF2FCCFE8F7FE0D92FF00945DE93FF63A6B1F
            FA3457E85D7E7A7FC1B25FF28BBD27FEC74D63FF00468AFD0BAFD0703FEE90F4
            3F95B89BFE4A0C4FF8DFE6145145759E18514514005145140051451400514514
            0051451400514514005145140051451400514514005145140051451400514514
            0051451400514514005145140051451400514514005145140051451400514514
            0051451400514514005145140051451400514514005145140051451400514514
            0051451400514514005145140051451400514514005145140051451400514138
            1934DF317D0FE5400EA29A24069C083D0D0014504E29BE725003A8A689509C53
            B70F5A0028A370F5A6F98BEFF950171D4537CC5FF229C083D0D017414519A280
            0A28A370A3700A29370A37AFBFE5405D0B4520607A7F2A5CD0014519A4DE28B8
            0B4526F149E62676E680DB71D5F87BFF000771FF00C946F821FF00603D6FFF00
            46D957EE06F5C6735F87FF00F0771FFC946F821FF603D6FF00F46D957959C7FB
            8C8FB4F0FF00FE4A8A3E92FC8FC79A28A2BE223F0A3FA4FB7A2FC828A28A0350
            A28A2897C3F325F5F97E67F47BFF0006C97FCA2EF49FFB1D358FFD1A2BF42EBF
            3D3FE0D92FF945DE93FF0063A6B1FF00A3457E8499541DA6BF41C0FF00BA43D0
            FE56E2676E20C4DFF9DFE63A8A370F5A323FC8AEB3C30A29BE62FF00914798BE
            BFA502E68F71D45377A9E9FCA8F317DFF2A06B5D87514D0EA4E07F2A75001451
            46E1EB400514858019CD279C9406A3A8A687069D4005148580EF486541D73400
            EA29A26427033F9502443D0D00FDDDC7514020F4A2800A28A2800A28A2800A28
            A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28
            A2800A28A2800A28A2800A28A2800A282703269A268CFF001FFF005A801D4537
            CD8CAEF0D919C7CA33419635192D400EA29BE7479C67F1DA71479898DDBB8F5A
            007514CF3E307193F5DA714BE745DDFF003EF400EA2937AE719FD2904F0B36C5
            954B0EAA1B9145D00EA29A668D4659F18F5A69B9800C8941FF00779A02CC928A
            67DA60C64480F38F979C521BA800CB3E3EB40125150FDB6D80DCD26DF9B1F30C
            64FF005AA9A9F8BFC27A2305D6BC4FA7D993D05D5E2479FF00BE88A9728C7765
            463297C2AE68D15C76A7FB437C04D16E7EC5AC7C6BF09DACDFF3CEE3C456C8C7
            F02E2B9DBDFDB93F631D364921D47F6B1F86F6ED0826659BC716086303A920CD
            C51ED29F746D1C2E2A5B41FDCCF53A2BC36F3FE0A71FF04E7B189E59FF006EAF
            846DE59C3AC3F1134D9187FC056727F4AC1D57FE0AF9FF0004C7D1AD05EDE7ED
            BDF0F1A369367FA2F88629DB3FEEC658FE38C544ABD18EF24BE68DA9E5799545
            78519BF48B7FA1F48515F29EB5FF0005C0FF008254E8124716A1FB66786D9A55
            DD1FD96DAEE7C8FF00B650B573BAB7FC1C1DFF000483D2AF0E9977FB5F5BB4C6
            32D883C1BAD4EB8FAC76647E19CD47D6F0AB79AFBD1B4723CEA5B61AA7FE012F
            F23ECC6917904918EFB4D377A1191203F4AF84AFBFE0E3BFF824CDA0956D7E3D
            6AD3F979F2C5BF81F53DB2FB8DF6EB8FC715CE6A3FF0736FFC130EDADE49A1F1
            1F8D2ED97810DBF8464567FA6F751F99150F1F838FDB5F7A37870DF104F58E1A
            7FF80BFF0023F440104677546CBB4E0C8D5F9A7AAFFC1D37FF0004E3D3AD7ED1
            65E09F8A37D231C79367E17B15603D732DEA8FD6B0354FF83AF7F6198828D1BE
            03FC57B8E7E637561A6C247E0B7CC0D43CCB031DE68B8F09F115597FBAC9FC9A
            FCCFD4BCA21C9908A0CD1478F32455DC70BB875AFC98D53FE0ECDFD9996F0268
            FF00B30F8EA6876FFACB8D42CE123FE02AEE2B9EBFFF0083B7BE1CC37320D2BF
            62AD6678F69F25AE3C6D1C458F6DC16D9F68F523763D0F4A9966D808FDA3AA3C
            0FC4D2F830CFFF00024BF367EC579A80F327E38A170EBB95988F5AFC56BDFF00
            83BBB519219134EFD81A08E4E442F3FC502CBEC481A60E3DB20FB8AC0D53FE0E
            DAF8B37102C7A57EC69E1E8660D9F32EBC5F34AA07B62D94E6B39671805F699D
            51F0FF008A24B5A16F592FD19FB90AE80E7CCFD694C883A835F831AC7FC1D8DF
            B53DC2C6BA1FECCFE01B600FEF3ED5797B3123D8A4918FD0FD2B9DD57FE0EAEF
            DBE2E2E71A57C1EF84B0DBFF00CF3BAD2F54958FB656F907FE3A7E87A54FF6C6
            5FDD9A47C3BE287FF2ED2F9A3FA09DEBDD5A9B88738DDFA1AFE772EBFE0E8FFF
            008291CF2BB5B7877E18DBC6CB85863F0CDD623F7466BC3C8EDB8119EA0D606A
            1FF0730FFC152AEA0961B7F1B7846D3CC0424967E13899E1CF71E63152475190
            47A8238A89679808F73AA9F86BC4925AB82FFB79AFC91FD21F96ABF30078E7A5
            1E6107EF7FE3D5FCCDEA9FF07147FC159AF6CBECD61FB4769FA7C84E4DC5AF82
            348766F66125A951F500FD0D61EB1FF05F5FF82B7EB0505C7ED8F7D1951F7AD3
            C23A3C3FFA2ED547FE3A7E87A5672E20C0F67F71B47C31E2093D674D7CE4FF00
            289FD4089587CC538F5DC294DC4406E322FF00DF55FCB0EADFF05B3FF82A8EB3
            72B7575FB68F8A4155C79708B68149F52218547FE3A7E87A57397BFF000562FF
            0082946A57325CDD7EDBBF1195E40432C3E269A28C7D044531F954FF00AC185E
            9167447C2CCEA5BD587C9BFD523FAC1373093B37F519EF8FCEA169E04E5E555F
            9B1F3381CD7F2477BFF0511FDBFB52826B7BCFDB9FE2F4B1CD9F3219BE23EA5E
            59CF6DA26E47B77AC4BFFDB1BF6B5D56DFEC7A97ED4DF11E787396866F1C6A05
            49F5189EA25C45457C3167453F0AB32FF979888C7D15CFEBDC5C5B705A55DA7B
            EEA7196D4759A3E99FBDFF00D7AFE39B57F8D7F18BC43E5FF6FF00C5DF125E79
            2D94FB56BF75237E6F213FA83589AB6BDAAEBD72B79AFEB375793AFDD9EE2769
            4A8FF819273F88FA8A9FF58A1FCACDE3E14D7FB78BFBA2FF00F9247F641A878F
            7C05A4348355F1A6936A6252D27DA3508D3681D49CB715CF6A1FB4FF00ECDBA4
            5BCB75AB7C7EF055AC502969A4B8F145AC6B1A8192496906001DEBF8F512ED93
            CC52AAC0E5648976313EFC9A48C2A49E633066DDB959B0D86FC466A5F10C9FC3
            1FBCE8878534BEDE2DFF00E02FFCD9FD756A7FB7C7EC35A2DA7F686AFF00B647
            C2BB583FE7B5C7C40D3914FE26602B0356FF0082A47FC1393458D65BEFDB9BE1
            4ED6FBBF67F1F69F37FE8B95ABF935631488C9332B679CB279833EC18E17F0A4
            8CA27DC6DB8FF65707F002B39711565B411AC7C29C1FDAC4B7F2B7E67F561AA7
            FC1627FE0989A3DE2D85EFEDB7E03691D72AB6BADACE0FE31861FAD73F7FFF00
            05D1FF008251585D3D94DFB62E88D2A75FB3E93A84A0FD0A5B907F026BF97169
            06D31C4CAAA7F85BA13EE0751ED9A10AB011390DFECFCCABF87CDFCEB1A9C458
            A8C6EA28EAA7E15E531F8EB4DFA38AFCE2CFEAA7F670FF0082C0FF00C13AFF00
            6B1F8B169F02FF0067EFDA257C41E2AD42399ED74BFF00845B55B5F31628DA47
            224B8B548C61518F2E338E324815F9B5FF000771FF00C946F821FF00603D6FFF
            0046D957CC3FF06E529FF87B078151A13B868BAC0F91000B8B0B8C83EFF30FCE
            BE9CFF0083B8658DBE23FC105DEA3FE24BAE8F98E3A4D640FEA47D7B576E2315
            531994CAA4D2BDFA7C8F172DC970B90F1ED1C3D0936B95BBC9A6EFAAE891F8F7
            45183E9460FA57CAC7E147ED927CAD26EDA20A28C1F4A307D2993CF1EE145183
            E9460F7E3DCF18A52D97A85F9AF6D76FCCFE8F3FE0D9638FF825C69648FF0099
            CF58FF00D1A2BEC11FB607EC9C35797C39FF000D39E01FB7DBC8D1DC58FF00C2
            6165E6C4EAC559597CDCA90C08208CF15F1D7FC1B36C8FFF0004B2D3364AA777
            8C3582195B3FF2D457F3FBFB479897F685F1E5B861B57C65AB18972195337936
            739030C7B727F1AFB19E3E581CBE9CA2AFA1F8461785E3C51C558DA2EAF272C9
            BDAF7DCFEB9348F8D7F0635DF33FB13E2C786EF047CC8D6BAE41205FFBE58D6F
            69FAD685AAC0B73A56AD6D711B7DD92DE65753F8826BF8C7DF8DD223E19B961B
            8F38EDC103F304548B73227CD1DD32ED6063059B8FC881FA572D3E22972DE71D
            FB1EAFFC42AE68732C5FFE4BFF00051FD9DACF6E0ED170BBBFBA7AD29B888024
            95E3AFEF0715FC71695F177E2868B72B77A27C50F1058B471EC8DAD7569E261E
            C0248176FB107E95D168DFB5F7ED55E1DB7687C37FB4DFC42D3D59BE78EDBC67
            7D106F7FDDCCA2ABFD6287F2B39E5E14E217C18AFBE2FF00CD9FD7DADC44C700
            F5EFBBAD3B8C676FF3AFE486C3FE0A27FB7CE9A23FECFF00DB83E2EC2B0B0658
            D7E256A5B38EDB7CD391EC4806BA4D27FE0ADDFF000530D1EEBED569FB6D7C40
            760B8FF4BF103CD91E9FBC0E73F88FA8AD23C4547AC59CB53C2BCD39BDDAD07E
            A9A3FABA255393FCE93ED1C6E27FC6BF968D27FE0B79FF000553D1ED5AD2DBF6
            CFF1232B364B5C58D85C301E9FBFB7933F89C574961FF07087FC15D6C9A143FB
            59ACD6F0E07D9EE3C0FA19F380FE176163900F438E71D2B48F1060E5F1A67354
            F0BF3C87C1529FFE4DFA267F4E82619019BAF6C8A71741D5BF4AFE6B747FF839
            23FE0AA5A64CCD7BF167C3FA8A14C08AF3C2364AA9F4F263427F1C0AE8746FF8
            39F7FE0A5FA6DBFD9AEE2F8737D96CF9B77E179D08FC21BA4A7FDBD97F67F718
            4BC35E248ECE0FD1BFD523FA310C84E01A6F9CAC7606E7A60366BF9F1D3FFE0E
            ABFF00828141346FA97C24F8477112E048B1E8BA9A48DEA41FB7900D74DA37FC
            1D91FB57DB961E20FD9AFE1F5D29185367757D030FAEF964FD0D5C73BCBE5D59
            CF3F0EF89A3FF2ED3FFB7923F7A480BC97231CF34D13C44ED12AE7D2BF0F34CF
            F83B77E2A47641759FD8BF419A756FBD6BE369A2523E8D6927F315D1699FF077
            3DB35DE357FD83648E165FDE496FF149A47DDEC8DA72851F46CD691CE3012EAC
            C25E1FF14416942FE928FEACFDA159236F992453EEB48194F0246E3AD7E41E95
            FF00076BFC1A95665D67F63CF13DBB2E3C9FB3F8AA09C3FE2D1211F9574565FF
            000762FEC813DBC6FADFECE7F12924E3CC8EDE3D3A654F752D72849FAE3EA2B4
            8E6B97CBED9CB2E09E268FC5867F7A7F91FAB492C65B027CFAAE6A4DEB8CA9FF
            00C74D7E62699FF07567FC13C350BC5B5BDF85DF17AC576E5AEA6F0FE9CD1A9F
            4C47A8B31FFBE715D2693FF073E7FC133B52859EF6F7C7960CA70AB77E130CC7
            DF314CE2AFFB4702F69AFBCE4FF55788A3BE167F737FA1FA2E1C374929E5D41C
            135F05693FF07207FC1282F84325EFC70D62CDA491449F6AF056A4C6204FDE6F
            2EDDB2075E327D335D4E93FF0007027FC122758BBFB15BFED750A48ABBBFD2BC
            1BAD42B8F5DD25928FD6AE38EC24B69AFBD194F87F3EA7F1E1A7FF00804BFC8F
            B368AF95348FF82DEFFC12A75BB36BFB2FDB3BC2EB123619AEA1BA808FC24894
            FE38AE9F4FFF0082B0FF00C1357536816DFF006E1F8669F68C795F69F175AC3D
            7D7CC71B7F1C62ABEB5867B4D7DE8C5E4F9B455DE1E7FF0080CBFC8FA128AF1B
            D23FE0A25FB037882736BA17EDAFF09EF645FBD1DA7C44D32423EA16738AE934
            9FDABBF661D7A2F3F43FDA1FC117899C6EB4F155A483FF001D90D691AD4A5B49
            7DE733C1E2A3BD397DCCF40A2B134BF895F0F75B9238746F1C69376D290235B5
            D46293767A636B1CD6BFDA601C79CBF9D5A9465B332953A94FE24D7AA24A2A33
            776E00264C03D18F4A3ED96BBB61986ECE369EF4C85AEC494537CF87FE7A0FC2
            916E2273856EB40598FA29BE6A633BBF2A1A445192D45C07514DF363CE378CF5
            DBDE8F317BD003A8A6F9D1E3EF7E14196351963FA1A007514C33C2A32D205E33
            F3714A2542719FC31CD017B8EA28A2800A28A2800A28A2800A28A2800A28A280
            1B20263603FBB5C6F88751F8E516AF345E18F00785EEAC43030DC5F78CAE2095
            BEB12E9D205FC24FC475AED0E71C537E63D56A6434CF2AD42F3F6C8984C6C3C2
            5F0CA272AC2D9A6D7B5098A71C6EC5AA647AE08FA8AE735287FE0A492DA11A4C
            BF0521B8DDF2C9711EAF22A8F700827E9919F51D6BDE360A5DBEFF00A54BA6A5
            D5A368D6E4DA28F9935CD03FE0ADF796EA9A1F8DFF00676B790364BDE784F5D9
            71EE36DFA9FE558DA9F827FE0B4F7ED1B5BFC78FD9E2CD53EF2DAFC3DD65B77E
            32EA2D8AFACCAF1D7F4A618E4FEF13FF0001150F0F197DA66B0C74E9BD29C5FA
            A4FF0033E2ED57E0A7FC170752BC92E20FDB1FE0ADAAB10638EDBE1BDC7CBF8C
            B2C86B0EE7F663FF0082F45C094C3FF0524F8676FE6676887E1842DE57BAEF8C
            8C8ED9047A835F7688CEEC95FD28D927F78FE42A5E169BFB4CEA8E715A0B4A74
            FE74E0FF00467E795F7EC59FF05FFD42DE4B69FF00E0AE1E1255933FF1EFF0BF
            4E8D80F40C2CF2BF51C8AC0D63FE09D7FF0005DFD7A0F2350FF82BFD826D1FBB
            FB1F85D2DCE7DDA28133F8823D8D7E9684933CB1FCA9FB17D2A7EA74FF00999B
            C3883194FE1853F95287FF00227E596B1FF04A2FF82DF6BB2ACF77FF000591BE
            8CAAE36DAFDB2207F08F60FD2B9BD4BFE08A1FF0595D56E4DD5D7FC165BC5418
            F510F8A35C854FFC063B955FCD48F63D2BF5C0A8C702A3D87FE79544B03465BA
            6FE76368F146670F8634FF00F05C17E491F8F377FF000406FF0082AAEA4255D4
            3FE0ACFAE4CB329F3167D7F5A97CC27FBD9B8008F5183F435837DFF06D6FFC14
            175385ED752FF8290ADC43203E6C32DE6AA43E7D732118FA835FB4AA873FEAE9
            FB2B196578597D87FF008133AE9F1B710525684A2BD211FF0023F0E756FF0083
            55FF006B5D7ADFEC9AEFEDBBE1FBD8FAAA5E58DFCA17FF001F1FCAB364FF0083
            4AFF0068976C1FDAD7C1B8DB8DDFD8775C7EB9FC883EE2BF7636537CAFF6692C
            A707D60FFF00027FE65AE3CE245AFB55FF008047FC8FC283FF000697FED16245
            93FE1ADFC1E5978CAE8979923F1727F514D6FF00834BBF68D5CAC5FB58F83769
            39E341BA8DBFEFA0C49AFDD9110073B2801C9C15A52C9B012FB0FF00F0265CB8
            FB892A6AEA27EB18FF0091F84A3FE0D2BFDA27391FB56782F9FBC3FB06E41FAE
            7773F8D28FF834AFF68F0DE61FDACBC17BBA663D0EED723D08DD835FBB423039
            DB4BB1BA96CD11C9F031DA2D7CEE1FEBF7137FCFC8AF48AFF23F097FE212BFDA
            2918F95FB59F837EBFD8B7238EE3029C7FE0D2BFDA376F96BFB59783FCBEBB46
            8F7639FC0F4F6AFDD639FEE51B0FFB54DE4F8096E982F1078A7AD6FF00C957F9
            1F84FF00F1094FED1BFF004763E0DFFC12DE7FF1747FC4253FB46FFD1D8F837F
            F04B79FF00C5D7EEC6C6FF006A8DADE8D4BFB1B2FECFF12BFE2217142FF97FFF
            0092AFF23F09FF00E2129FDA37FE8EC7C1BFF825BCFF00E2E8FF00884A7F68DF
            FA3B1F06FF00E096F3FF008BAFDD8DADE8D46D6F46A3FB1B2FECFF0010FF0088
            87C55FF3FF00FF00255FE47E13FF00C4253FB46FFD1D8F837FF04B79FF00C5D1
            FF001094FED1BFF4763E0DFF00C12DE7FF00175FBB1B5BD1A8DADE8D47F6365F
            D9FE21FF00110F8ABFE7FF00FE4ABFC8FC27FF00884A7F68DFFA3B1F06FF00E0
            96F3FF008BA3FE2129FDA37FE8EC7C1BFF00825BCFFE2EBF7636B7A351B5BD1A
            8FEC6CBFB3FC43FE221F157FCFFF00FC957F91F84FFF001094FED1BFF4763E0D
            FF00C12DE7FF001747FC4253FB46FF00D1D8F837FF0004B79FFC5D7EEC6D6F46
            A36B7A351FD8D97F67F887FC443E2AFF009FFF00F92AFF0023F09FFE2129FDA3
            7FE8EC7C1BFF00825BCFFE2E8FF884A7F68DFF00A3B1F06FFE096F3FF8BAFDD8
            DADE8D46D6F46A3FB1B2FECFF10FF8887C55FF003FFF00F255FE47E13FFC4253
            FB46FF00D1D8F837FF0004B79FFC5D1FF1094FED1BFF004763E0DFFC12DE7FF1
            75FBB1B5BD1A8DADE8D47F6365FD9FE21FF110F8ABFE7FFF00E4ABFC8FC27FF8
            84A7F68DFF00A3B1F06FFE096F3FF8BA3FE2129FDA37FE8EC7C1BFF825BCFF00
            E2EBF7636B7A351B5BD1A8FEC6CBFB3FC43FE221F157FCFF00FF00C957F91F84
            FF00F1094FED1BFF004763E0DFFC12DE7FF1747FC4253FB46FFD1D8F837FF04B
            79FF00C5D7EEC6D6F46A36B7A351FD8D97F67F887FC443E2AFF9FF00FF0092AF
            F23F09FF00E2129FDA37FE8EC7C1BFF825BCFF00E2E8FF00884A7F68DFFA3B1F
            06FF00E096F3FF008BAFDD8DADE8D46D6F46A3FB1B2FECFF0010FF008887C55F
            F3FF00FF00255FE47E13FF00C4253FB46FFD1D8F837FF04B79FF00C5D1FF0010
            94FED1BFF4763E0DFF00C12DE7FF00175FBB1B5BD1A8DADE8D47F6365FD9FE21
            FF00110F8ABFE7FF00FE4ABFC8FC27FF00884A7F68DFFA3B1F06FF00E096F3FF
            008BA3FE2129FDA37FE8EC7C1BFF00825BCFFE2EBF7636B7A351B5BD1A8FEC6C
            BFB3FC43FE221F157FCFFF00FC957F91F84FFF001094FED1BFF4763E0DFF00C1
            2DE7FF001747FC4253FB4437CB27ED67E0DC7F128D16EF38FC5B15FBB1B18F1F
            35187FBBB7FE0547F63605C6C90A5E21F15597EFFF00F255FE47E53FFC1313FE
            0DF0F8C5FB077ED83E1DFDA6BC6DFB40F86B5EB3D16D7508E4D2F4CD1E58A599
            EE6D9A10DB9B8F949CD7A47FC16D3FE0917F1D7FE0A65E27F00EB7F09BE22786
            F418FC2763A8417DFDBF2DC0173F687B761B4431BF4F29BAD7E882C4EA0EE6DD
            4E11E06578AED583C3C70FEC52D0F22A713671533358E9CD3A89593B6C7E03A7
            FC1A7FFB65B9C0F8FDF0CFFEFBBEFF00E44A77FC4271FB66FF00D1C0FC31FF00
            BF97DFFC895FBEC4107007E3461EB8BFB17052DD1ED2F1138A2326E3552BF926
            7E04FF00C4271FB66FFD1C0FC31FFBF97DFF00C8947FC4271FB66FFD1C0FC31F
            FBF97DFF00C895FBED87A30F4BFB0F03DBF11FFC446E2BFF009FCBFF00015FE4
            7E049FF834E7F6CD033FF0D01F0CBFEFE5F7FF0022534FFC1A83FB66443CC1F1
            F3E1AB6DE70B25F8CFE3F64E2BF7E30F4DD8C5830E29AC97051D91954F10B89E
            4D4A5513F9247CB3FF000499FD88BE227EC07FB1E5AFECEBF13BC4FA4EB5A9DB
            EB57D7726A3A3194C2E934819462508C180F6AFCEBF8A7FF0006AD7ED09F10BE
            25F88BC7767FB54F84E18F5CD7AEF508E06D16EBE559AE1E4556F9FEF2861CFA
            D7EDD104F1B3E949B1C71827DEBAABE070B88A6A9CD688F3303C559D65B8EA98
            BC3D4E5954DF4BDCFC28FF00884A7F68BE9FF0D65E0CFF00C12DE7FF001747FC
            4253FB46FF00D1D8F837FF0004B79FFC5D7EEC18D97FBC68DADE8D5CAB25CBE2
            AD667A91F10B8A22ACABFF00E4ABFC8FC27FF884A7F68DFF00A3B1F06FFE096F
            3FF8BA3FE2129FDA37FE8EC7C1BFF825BCFF00E2EBF7636B7A351B5BD1A8FEC6
            CBFB3FC47FF110F8ABFE7FFF00E4ABFC8FC27FF884A7F68DFF00A3B1F06FFE09
            6F3FF8BA3FE2129FDA37FE8EC7C1BFF825BCFF00E2EBF7636B7A351B5BD1A8FE
            C6CBFB3FC43FE221F157FCFF00FF00C957F91F84FF00F1094FED1BFF004763E0
            DFFC12DE7FF1747FC4253FB46FFD1D8F837FF04B79FF00C5D7EEC6D6F46A36B7
            A351FD8D97F67F887FC443E2AFF9FF00FF0092AFF23F09FF00E2129FDA37FE8E
            C7C1BFF825BCFF00E2E8FF00884A7F68DFFA3B1F06FF00E096F3FF008BAFDD8D
            ADE8D46D6F46A3FB1B2FECFF0010FF008887C55FF3FF00FF00255FE47E13FF00
            C4253FB46FFD1D8F837FF04B79FF00C5D1FF001094FED1BFF4763E0DFF00C12D
            E7FF00175FBB1B5BD1A8DADE8D47F6365FD9FE21FF00110F8ABFE7FF00FE4ABF
            C8FC27FF00884A7F68DFFA3B1F06FF00E096F3FF008BA3FE2129FDA37FE8EC7C
            1BFF00825BCFFE2EBF7636B7A351B5BD1A8FEC6CBFB3FC43FE221F157FCFFF00
            FC957F91F84FFF001094FED1BFF4763E0DFF00C12DE7FF001747FC4253FB46FF
            00D1D8F837FF0004B79FFC5D7EEC6D6F46A36B7A351FD8D97F67F887FC443E2A
            FF009FFF00F92AFF0023F09FFE2129FDA37FE8EC7C1BFF00825BCFFE2E8FF884
            A7F68DFF00A3B1F06FFE096F3FF8BAFDD8DADE8D46D6F46A3FB1B2FECFF10FF8
            887C55FF003FFF00F255FE47E13FFC4253FB468E7FE1ABFC16DFECB68B7983FF
            008FD0DFF0695FED1520C49FB58783BFF0497581EC0EFC8AFDD80AD9E8D4B863
            47F62E03A2657FC445E2A4ADEDAFFF006EAFF23F0987FC1A5BFB46EEF30FED61
            E0DDE3EEB368D74714A7FE0D2BFDA2C2B04FDACBC1A437DE56D16EF39F66DC71
            F5C1C57EEC84268D847463551CA3031E8CC7FD7EE2796F557FE028FC28FF0088
            4BFF0068C1F37FC35878397E5C6D5D0EEB9FA9CFCDF8823D45307FC1A5BFB422
            2607ED5BE0B1CE71FF0008FDC8E7FE038FE46BF7636B1E80D37CA957FE5AB53F
            EC9C0BDE2DFCDA23FD7CE248ED517FE031FF0023F0A53FE0D31FDA20A912FED6
            BE0F627A2B68574C3E87240C7D41FA1ABBA27FC1A9DFB56787A42DA17ED9FE1A
            B20FC482D6C6F6218FA2151FA57EE5012E792D4ED8DE952F29C1ADA0FF00F026
            5C78F789231B2A8BFF00018BFD0FC55D2BFE0DA9FF008281E81622CB41FF0082
            8EC7670AEE2B05ADD6AD10DDD8FC9385C7E07E86BA3D3FFE0829FF000563D2AE
            D6E347FF0082B97892CCA1215AD7C55AEC6557180008EE9463DABF61F61FEED3
            7C90A3213F5A71CAF0B1FB2FFF0002663538D33EABF1CA0FD611FF0023F26349
            FF008230FF00C16874466FB17FC164FC48EADC31BAD7F5998E3FEDACEE7F515D
            2695FF0004B8FF0082E3E8E90C56DFF05899A458DB2C6E2D2799BFF22A3E7F12
            3EB5FA86AAC1BFD5D3C2E7AAD6D1C0D18ED75F3B9CF2E28CCA5BC69FFE0B83FC
            D33F38F4BFD843FE0BE5A3CDF68B3FF82BCE81236DDAA2E3E1F594ABB7D4896D
            1F2DF8E2B7B49FD933FE0BEBA65B3C173FF0545F87FA8337DD92F3E17D9215FC
            21B5406BEFE2831C537CA7FF009E87F215A47094FF00999CB2CF7152779429BF
            5A507FFB69F14E9BF017FE0B9B60B08BAFDB8BE0D5EF96CA646B8F86B3A99707
            A1F2A58F83ED8FA8AE934EF00FFC16AADA7F36EBE3FF00ECF178BB70AB71F0F7
            59523DFE4D441FC88FA8AFACBCB61CEE3F90A6ED931C023F0155F5582FB4CC6A
            66D5AA6F4E9FCA115FA23E6DD2B41FF82B8C366C9AFF008F3F679BA9FA2BDAF8
            5B5C8576FD1EF653FAD749A45B7FC1422D9A18F558BE0D4D0F06E52CD754877F
            A819DF8CFB83F8D7B805901C963FF7C8A7F27A8AA8D370D99C7F5A94B7825F25
            FA1E65A35E7ED5F03B0D67C0BF0FE55FE0FB078A6F6039F7DD62C3F43F435DBF
            8567F1A5ED8F9BE37D0B4ED36E43FCB0697ACC979191EBBDE084FE1B715ABB39
            CE69D5AA4D6E6329F374B0514514C90A28A2800A28A2800A28A2800A28A2800A
            28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
            28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
            28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
            28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
            28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
            28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
            28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
            28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
            28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
            28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
            28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
            28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
            28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2803F
            FFD9}
          HightQuality = False
          Transparent = True
          TransparentColor = clWhite
        end
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Left = 385.512060000000000000
          Top = 134.504020000000000000
          Width = 317.480520000000000000
          Height = 22.677180000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tajawal ExtraBold'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1588#1585#1603#1577' '#1593#1600#1602#1600#1575#1585' '#1575#1604#1600#1594#1600#1583)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          AllowVectorExport = True
          Left = 514.016080000000000000
          Top = 238.110236220472000000
          Width = 86.929190000000000000
          Height = 30.236220470000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tajawal Medium'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1585#1602#1605' '#1575#1604#1593#1602#1583' /')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          Left = 620.622450000000000000
          Top = 283.464579130000000000
          Width = 86.929190000000000000
          Height = 30.236220470000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tajawal Medium'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1575#1604#1605#1587#1600#1578#1571#1580#1585' :')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object frxDBDataset1vPname: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 377.953000000000000000
          Top = 241.212740000000000000
          Width = 132.283464570000000000
          Height = 18.897650000000000000
          DataField = 'ContractID'
          DataSet = frxDBDataset1
          DataSetName = 'frxHandOver'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tajawal ExtraBold'
          Font.Style = [fsBold]
          Frame.Color = 13421772
          Frame.Style = fsDot
          Frame.Typ = [ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxHandOver."ContractID"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 188.976500000000000000
          Width = 340.157700000000000000
          Height = 34.015750470000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tajawal ExtraBold'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1606#1605#1608#1584#1580' '#1578#1587#1604#1610#1605' '#1575#1604#1605#1587#1578#1571#1580#1585' '#1604#1604#1608#1581#1583#1577' '#1575#1604#1573#1610#1580#1575#1585#1610#1577)
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo71: TfrxMemoView
          AllowVectorExport = True
          Left = 404.409710000000000000
          Top = 166.299320000000000000
          Width = 306.141490630000000000
          Height = 56.692935350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tajawal'
          Font.Style = []
          Frame.Color = 13421772
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              #1587'.'#1578': 1010330235 '#1575#1604#1585#1610#1575#1590' '#1581#1610' '#1575#1604#1593#1602#1610#1602' '#1591#1585#1610#1602' '#1575#1604#1571#1605#1610#1585' '#1605#1581#1605#1583' '#1576#1606' '#1587#1604#1605#1575#1606' - '#1578#1604#1601 +
              #1608#1606' 4855533 '#1601#1575#1603#1587' 4895172 '#1589'.'#1576' 286731 '#1575#1604#1585#1610#1575#1590' 11323')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 29.125994020000000000
          Top = 283.464579130000000000
          Width = 132.283464570000000000
          Height = 22.677160470000000000
          DataField = 'IqamaID'
          DataSet = frxDBDataset1
          DataSetName = 'frxHandOver'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tajawal ExtraBold'
          Font.Style = [fsBold]
          Frame.Color = 13421772
          Frame.Style = fsDot
          Frame.Typ = [ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxHandOver."IqamaID"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object frxDBDMasterPayMethod: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 250.007869130000000000
          Top = 283.464569360000000000
          Width = 370.393854570000000000
          Height = 22.677180000000000000
          DataField = 'Name'
          DataSet = frxDBDataset1
          DataSetName = 'frxHandOver'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tajawal ExtraBold'
          Font.Style = [fsBold]
          Frame.Color = 13421772
          Frame.Style = fsDot
          Frame.Typ = [ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[frxHandOver."Name"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 287.244280000000000000
          Top = 238.110236220472000000
          Width = 86.929190000000000000
          Height = 30.236220470000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tajawal Medium'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1578#1575#1585#1610#1582' '#1575#1604#1593#1602#1583' /')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 163.299320000000000000
          Top = 283.464579130000000000
          Width = 83.149660000000000000
          Height = 30.236220470000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tajawal Medium'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1585#1602#1605' '#1575#1604#1607#1608#1610#1577' :')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 351.496290000000000000
          Width = 676.535870000000000000
          Height = 188.976480470000000000
          StretchMode = smActualHeight
          AutoWidth = True
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tajawal Medium'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              #1573#1606#1607' '#1601#1610' '#1610#1608#1605' ...[frxHandOver."TerminDate"]... '#1602#1575#1605' '#1575#1604#1605#1587#1578#1571#1580#1585' '#1575#1604#1605#1608#1590#1581' ' +
              #1576#1610#1575#1606#1575#1578#1607' '#1571#1593#1604#1575#1607' '
            
              #1576#1573#1582#1604#1575#1569' '#1608' '#1578#1587#1604#1610#1605' '#1575#1604#1608#1581#1583#1575#1578' '#1575#1604#1573#1610#1580#1575#1585#1610#1577' '#1575#1604#1605#1608#1590#1581' '#1576#1610#1575#1606#1575#1578#1607#1575' '#1601#1610' '#1575#1604#1576#1606#1583' '#1575#1604#1579#1575#1605#1606 +
              ' '#1605#1606' '#1575#1604#1593#1602#1583' '#1608#1607#1610' '#1576#1581#1575#1604#1577' '#1580#1610#1583#1577' '
            
              #1608#1605#1605#1575#1579#1604#1577' '#1604#1604#1581#1575#1604#1577' '#1575#1604#1578#1610' '#1603#1575#1606#1578' '#1593#1604#1610#1607#1575' '#1593#1606#1583' '#1575#1587#1578#1604#1575#1605#1607#1575' '#1608#1584#1604#1603' '#1576#1593#1583' '#1575#1604#1578#1571#1603#1583' '#1605#1606' '#1587 +
              #1604#1575#1605#1577' '#1603#1575#1601#1577' '#1605#1585#1575#1601#1602#1607#1575' '
            #1608#1605#1581#1578#1608#1610#1575#1578#1607#1575' '#1608' '#1605#1591#1575#1576#1602#1578#1607#1575' '#1605#1606' '#1602#1576#1604' '#1575#1604#1605#1572#1580#1585' '#1605#1593' '#1606#1605#1608#1584#1580' '#1575#1604#1575#1587#1578#1604#1575#1605' .'
            
              #1603#1605#1575' '#1610#1602#1585' '#1575#1604#1605#1572#1580#1585' '#1576#1571#1606#1607' '#1575#1587#1578#1604#1605' '#1603#1575#1601#1577' '#1605#1587#1578#1581#1602#1575#1578#1607' '#1575#1604#1605#1575#1604#1610#1577' '#1575#1604#1606#1575#1578#1580#1577' '#1593#1606' '#1578#1571#1580#1610#1585 +
              ' '#1575#1604#1608#1581#1583#1575#1578' '#1575#1604#1573#1610#1580#1575#1585#1610#1577' , '#1576#1605#1575' '
            
              #1601#1610#1607#1575' '#1602#1610#1605#1577' '#1575#1604#1601#1608#1575#1578#1610#1585' '#1575#1604#1582#1575#1589#1577' '#1576#1575#1604#1582#1583#1605#1575#1578' '#1581#1578#1609' '#1578#1575#1585#1610#1582' '#1575#1604#1610#1608#1605', '#1608#1576#1571#1606#1607' '#1604#1575' '#1578#1608#1580 +
              #1583' '#1571#1610' '#1605#1604#1575#1581#1592#1575#1578' '#1578#1605#1606#1593' '#1605#1606' '#1575#1587#1578#1604#1575#1605
            #1608#1573#1582#1604#1575#1569' '#1575#1604#1608#1581#1583#1575#1578' '#1575#1604#1573#1610#1580#1575#1585#1610#1577'.'
            ''
            ''
            #1608#1593#1604#1610#1607' '#1580#1585#1609' '#1575#1604#1578#1608#1602#1610#1593' '#1605#1606' '#1575#1604#1591#1585#1601#1610#1606)
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 151.181200000000000000
          Top = 238.110390000000000000
          Width = 132.283464570000000000
          Height = 22.677160470000000000
          DataField = 'ConDate'
          DataSet = frxDBDataset1
          DataSetName = 'frxHandOver'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tajawal ExtraBold'
          Font.Style = [fsBold]
          Frame.Color = 13421772
          Frame.Style = fsDot
          Frame.Typ = [ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxHandOver."ConDate"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 120.944960000000000000
        Top = 589.606680000000000000
        Width = 718.110700000000000000
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 1.677180000000000000
          Width = 691.653990000000000000
          Color = clBlack
          Frame.Color = clGray
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo65: TfrxMemoView
          AllowVectorExport = True
          Left = 661.417750000000000000
          Top = 56.692950000000000000
          Width = 45.354360000000000000
          Height = 30.236220470000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tajawal Medium'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #1575#1604#1575#1587#1605' : ')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo66: TfrxMemoView
          AllowVectorExport = True
          Left = 453.543600000000000000
          Top = 15.118120000000000000
          Width = 226.771800000000000000
          Height = 30.236220470000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tajawal Medium'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = 15790320
          HAlign = haCenter
          Memo.UTF8W = (
            #1575#1604#1605#1587#1578#1571#1580#1585' ('#1575#1604#1605#1615#1587#1604#1605') Tenant Signature')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo67: TfrxMemoView
          AllowVectorExport = True
          Left = 661.417322830000000000
          Top = 90.708720000000000000
          Width = 52.913420000000000000
          Height = 30.236220470000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tajawal Medium'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #1575#1604#1578#1608#1602#1610#1593' : ')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo68: TfrxMemoView
          AllowVectorExport = True
          Left = 446.425480000000000000
          Top = 64.251968500000000000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Color = 14211288
          Frame.Style = fsDot
          Frame.Typ = [ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 37.795300000000000000
          Top = 15.118120000000000000
          Width = 226.771800000000000000
          Height = 30.236220470000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tajawal Medium'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = 15790320
          HAlign = haCenter
          Memo.UTF8W = (
            #1575#1604#1605#1615#1572#1580#1585' ('#1575#1604#1605#1587#1578#1604#1605')  Lessor Signature')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 446.205010000000000000
          Top = 94.488250000000000000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Color = 14211288
          Frame.Style = fsDot
          Frame.Typ = [ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 241.669450000000000000
          Top = 56.692950000000000000
          Width = 45.354360000000000000
          Height = 30.236220470000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tajawal Medium'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #1575#1604#1575#1587#1605' : ')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 241.669022830000000000
          Top = 90.708720000000000000
          Width = 52.913420000000000000
          Height = 30.236220470000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tajawal Medium'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #1575#1604#1578#1608#1602#1610#1593' : ')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 26.677180000000000000
          Top = 64.251968500000000000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Color = 14211288
          Frame.Style = fsDot
          Frame.Typ = [ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 26.456710000000000000
          Top = 94.488250000000000000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Color = 14211288
          Frame.Style = fsDot
          Frame.Typ = [ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
      end
    end
  end
  object PrintContractDetailsQ: TUniQuery
    Connection = UniMainModule.MainDB
    SQL.Strings = (
      'SELECT '
      
        'Cont.ContractID,Cont.ConDate,Cont.contF, Cont.contT , Cont.Payme' +
        'nts,'
      'Cont.RentAmount , Cont.TerminDate , P.Name , P.IqamaID,'
      ''
      ' Cont.EstNo, E.estName, E.estDistrict,'
      ''
      
        ' Cont.unitNo, U.Unit, U.Floor ,U.Price1,U.Price2,U.Price3,U.Pric' +
        'e4'
      ''
      ' FROM  contracts as Cont'
      ''
      'inner join  persons P   on Cont.tenantID = P.ID'
      ''
      'inner join  estates E   on Cont.EstNo  =  E.EstNo'
      ''
      'inner join   units U    on Cont.UnitNo = U.ID '
      ' '
      'Order By Cont.ContractID')
    ReadOnly = True
    Active = True
    Left = 790
    Top = 666
  end
  object PaidAMTQ: TUniQuery
    Connection = UniMainModule.MainDB
    Left = 24
    Top = 240
  end
end
