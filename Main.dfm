object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 773
  ClientWidth = 1071
  Caption = 'MainForm'
  OnShow = UniFormShow
  WindowState = wsMaximized
  OldCreateOrder = False
  Script.Strings = (
    'var circle1, circle2, circle3, circle4, Prog1;')
  MonitoredKeys.Keys = <>
  AlignmentControl = uniAlignmentClient
  Layout = 'border'
  LayoutAttribs.Align = 'top'
  OnCreate = UniFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object UniContainerPanel1: TUniContainerPanel
    Left = 8
    Top = 8
    Width = 1025
    Height = 726
    Hint = ''
    ParentColor = False
    Color = clGradientInactiveCaption
    TabOrder = 0
    Layout = 'border'
    LayoutAttribs.Padding = '3'
    LayoutConfig.Flex = 1
    LayoutConfig.Region = 'center'
    object pnlHeader: TUniContainerPanel
      Left = 19
      Top = 21
      Width = 822
      Height = 40
      Hint = ''
      ParentColor = False
      Color = 4076328
      TabOrder = 1
      Layout = 'hbox'
      LayoutAttribs.Align = 'middle'
      LayoutAttribs.Pack = 'start'
      LayoutConfig.Region = 'north'
      object UniContainerPanel2: TUniContainerPanel
        Left = 0
        Top = 0
        Width = 225
        Height = 40
        Hint = ''
        ParentColor = False
        TabOrder = 2
        Layout = 'hbox'
        LayoutAttribs.Pack = 'center'
        LayoutConfig.Height = '100%'
        LayoutConfig.Width = '15%'
        LayoutConfig.Margin = '0 3 0 2'
        object LogoImg: TUniImage
          Left = 104
          Top = 0
          Width = 100
          Height = 40
          Cursor = crHandPoint
          Hint = ''
          Center = True
          Stretch = True
          Proportional = True
          Transparent = True
          LayoutConfig.Flex = 1
          LayoutConfig.Height = '100%'
          LayoutConfig.Margin = '0 1 0 1'
        end
      end
      object UniImage2: TUniImage
        Left = 231
        Top = 3
        Width = 24
        Height = 24
        Cursor = crHandPoint
        Hint = ''
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000240000
          002408060000019607A80E0000001974455874536F6674776172650041646F62
          6520496D616765526561647971C9653C0000032269545874584D4C3A636F6D2E
          61646F62652E786D7000000000003C3F787061636B657420626567696E3D22EF
          BBBF222069643D2257354D304D7043656869487A7265537A4E54637A6B633964
          223F3E203C783A786D706D65746120786D6C6E733A783D2261646F62653A6E73
          3A6D6574612F2220783A786D70746B3D2241646F626520584D5020436F726520
          352E332D633031312036362E3134353636312C20323031322F30322F30362D31
          343A35363A32372020202020202020223E203C7264663A52444620786D6C6E73
          3A7264663D22687474703A2F2F7777772E77332E6F72672F313939392F30322F
          32322D7264662D73796E7461782D6E7323223E203C7264663A44657363726970
          74696F6E207264663A61626F75743D222220786D6C6E733A786D703D22687474
          703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F2220786D6C6E73
          3A786D704D4D3D22687474703A2F2F6E732E61646F62652E636F6D2F7861702F
          312E302F6D6D2F2220786D6C6E733A73745265663D22687474703A2F2F6E732E
          61646F62652E636F6D2F7861702F312E302F73547970652F5265736F75726365
          526566232220786D703A43726561746F72546F6F6C3D2241646F62652050686F
          746F73686F7020435336202857696E646F7773292220786D704D4D3A496E7374
          616E636549443D22786D702E6969643A43433830414435323232343331314538
          383439304646313046454335393743422220786D704D4D3A446F63756D656E74
          49443D22786D702E6469643A4343383041443533323234333131453838343930
          464631304645433539374342223E203C786D704D4D3A4465726976656446726F
          6D2073745265663A696E7374616E636549443D22786D702E6969643A43433830
          4144353032323433313145383834393046463130464543353937434222207374
          5265663A646F63756D656E7449443D22786D702E6469643A4343383041443531
          323234333131453838343930464631304645433539374342222F3E203C2F7264
          663A4465736372697074696F6E3E203C2F7264663A5244463E203C2F783A786D
          706D6574613E203C3F787061636B657420656E643D2272223F3ED5CE04DE0000
          06164944415478DAB5576B6C1455149E3BBB3BFB6ABBDBEDEEB64B2934421FD2
          B2147E68D0A884441196B68428D81669A9148944115B108C40AC018A1A0CA468
          106BAD14D410FAC3080A9447880129A522EF82062805CA52BADD7767E7E5BD0B
          BB999DCE746743FC92B633A7E77EF39D73CF3DF75E60FAE655EC31389D525D1D
          A0C966F0D8C85D9ABB1BB3EF5BC83280C19191435664442868ABC0406653E9D2
          20437E8D8CC88000060707B120CD701162AD5201C29C637519DFDF0AF45522A7
          305F5D61F9D0A25C8726CC850C31E4FC2F860D7C628AA249C0578F890380A25D
          95CD3DC1FB557CF1088B0F37044E792FE8C25E916F212CCF9F472D9950AA8A08
          895245F2827ED970B3BB7DCE56839453186A8E182241486DC68DB7FAD9C16C51
          2621C66A335A6E05FBAA80BD65E1F15ED2F9925038EF732046B88413F63F39D5
          1694B3D5790E9CEF1076B2EC9C55C5706C339FE9BDE35F7A8F0C74264785A3C9
          3CDDD55D6FB78F5F2B4C0143862C497A6D7F4C32114613D613BD21E70B587C80
          9897912AE5B5CC69AE4F9EAD4945CF7BFE3D84ED3CFF4BC0C9B9747C9F4CAD65
          F39DE083D59233C7CF181FFC2A8BC00452EE01DB8E62920414219768D51FDBC9
          FDCE93EA6171F2A7440E110A71C3DF2DC31396F3EDFC9E87AC3B6B7826017671
          6E6B8C6DE58946FA40FF29A568E647AAEEDA8232BA3A6F7674A0B0782218ADB5
          3446670DBE34F5061F546B3882AA2D2A53958F7B0593C2E2F64D83A73C178D51
          F1D8E3962404C5B28D34CB2D93E06108055E0A1BD77EB1D062A00078055CE1EB
          EF330339111BC1A9A8517AF3DE9B817BA2F1891149B5B02846A9CCE7EF52FD93
          4489B274D64DB703CED5F148844262884CEA94770748CF36BE4712A60B2E9FF4
          BA3692F4CD5DAD433FDCFC4D234596D012112BC60CA5A9BB8F1EC80785CD0BBA
          60BC93F9FFCC56D95CFB8BBF48158B45A29680E812C95642A212F94463D4E947
          458926EB739DAD33D65B135024BE68574DAC602B7366E16203A6ECAB6260B750
          C822AA2B280F2DCA73106244856D0BE0CC0C2FB584DAC88AE35BA943031D2AD9
          A1217C34A912ABE02D5CA93E84A0C7343E4922A1AA458736043B7C97B5627E16
          B5F16330BE655E1DACEACFE311BD79B03ED0E5EFD661E27874882138652804E8
          98D85716969355B98E686F46A1359C6B0D1F9CF87E0622A9D61DF26D19B61D39
          D29F7BF8D9F3CBD2A4C2E51366A9AD076E934E475892DBED0E3BD00C430429FA
          8C42A1B06332D0D97975E78B530B9744631376488EC39E2219E62C94671423C0
          0138A656E0D3872549AC430A612492DFD1739A1AD4CC603182B80304485798AE
          6304D6743F38B0399EAFA420B3DAB0224892F57E6C282951012301B57E8BCED8
          008F0BEB6409CAD45936DE093C5823875CC1E15C0A48A2F4B8868179E3E0E15B
          E9E17C2A1A30B2B218395C4A0A822BCF1B2F235690EAA9B197A48CB40D23A0AA
          DD7BE598EF5AA867443E9CC359B552B50406D314156420F4CBDC217F63BC88CC
          C0E87DDB5E9A1C4F0C1F737F5DE3EF0EF5E8E3F98DD29AEBEF06FBD7035B5371
          15C950CD72C847DA58A450D3DE1038E9B9A093E39BA6367C00F29BCAFE7132AE
          7172066429D3DDBF976C312422A8FAF0C6E069EF25AD1CDF144C3F3862B31642
          D82EE5E05107DCC531809555E809095A357101DC7967E272FD2390DA959F58D0
          6885D557593833496E51EF86D9F9F1D2E1D00DFA2E216B001294B1A318EE6494
          4AEE8029FA3CD7AE19EBE216369AAA2DE77E628280949599A8207853DF036FEA
          65890CCA21B23CF39E9E2ED98BBEBAD8866DBFB62F11CA303209CB9FE13E04F7
          9A6E78B2CF4D64F08A09F3438BF34B44A7A2F2E0A7FE4EFFD5B8BD878F644CE7
          F2620153B453DB54697FDDA31E16C9199C060CBEA5F63992B554DFD14CFFDCDB
          AE94C385900A92FB5C9CD7869E63B60EAB26B5DE39E45A2B36C88825FB1D63A6
          D2D9A93683DCA2467574F4C6D9C10EF79514E1492A027833FC0EDE0CDF8ABC8B
          EEF6595A6B6B5F60E08D678C13DCD3B2279B12D92AE2093C72E3ACE78CFB72B2
          4D633ED24B3A5F16FA844F681C3C4D0100C4FE6A688EFB9062D83A0CDDB49E10
          F0BA7A005E5BDF878FD725BE277E1796026C58E92CCB39188E9BCD625C113498
          A0991506097F28F8816E1C60C7A08836783A3C27F71BFF013539E3F1D903A61F
          0000000049454E44AE426082}
        LayoutConfig.Height = '100%'
        LayoutConfig.Margin = '2 2 2 2'
      end
      object UniLabel1: TUniLabel
        Left = 283
        Top = 13
        Width = 133
        Height = 16
        Hint = ''
        Caption = 'Good afternoon, Raafat'
        ParentFont = False
        Font.Color = clGrayText
        Font.Height = -13
        TabOrder = 3
        LayoutConfig.Flex = 1
        LayoutConfig.Height = '100%'
        LayoutConfig.Margin = '20 5 5 15'
      end
      object UniFSButton1: TUniFSButton
        Left = 632
        Top = 9
        Width = 50
        Height = 28
        Hint = ''
        StyleButton = Transparent
        BadgeText.Text = '0'
        BadgeText.TextColor = '#FFFFFF'
        BadgeText.TextSize = 10
        BadgeText.TextStyle = 'bold'
        BadgeText.BackgroundColor = '#D50000'
        Caption = ''
        TabOrder = 6
        Images = ActImgList
        ImageIndex = 2
        OnClick = UniFSButton1Click
      end
      object ThemeComboBox: TUniComboBox
        Left = 689
        Top = 16
        Width = 130
        Height = 21
        Hint = ''
        Style = csDropDownList
        Text = ''
        TabOrder = 5
        ScreenMask.Target = Owner
        LayoutConfig.Margin = '0 5 0 5'
        FieldLabelWidth = 40
        IconItems = <>
        OnChange = ThemeComboBoxChange
      end
      object UniLabel2: TUniLabel
        Left = 712
        Top = 16
        Width = 46
        Height = 13
        Hint = ''
        Caption = 'UniLabel2'
        TabOrder = 4
      end
    end
    object pnlMenu: TUniContainerPanel
      Left = 19
      Top = 67
      Width = 225
      Height = 441
      Hint = ''
      ParentColor = False
      TabOrder = 2
      Layout = 'fit'
      LayoutConfig.Width = '15%'
      LayoutConfig.Split = True
      LayoutConfig.Region = 'west'
      object UniTreeMenu1: TUniTreeMenu
        Left = 0
        Top = 0
        Width = 120
        Height = 441
        Hint = ''
        Items.FontData = {0100000000}
        LayoutConfig.Cls = '_treemenu'
        Images = ActImgList
        SourceMenu = MenuActions
        SingleExpand = True
        ExpanderOnly = False
      end
    end
    object pnlCenter: TUniContainerPanel
      Left = 250
      Top = 67
      Width = 751
      Height = 656
      Hint = ''
      ParentColor = False
      TabOrder = 3
      Layout = 'fit'
      LayoutConfig.Region = 'center'
      object MainPageControl: TUniPageControl
        Left = 3
        Top = 16
        Width = 726
        Height = 625
        Hint = ''
        ActivePage = UniTabSheet1
        LayoutConfig.Flex = 1
        TabOrder = 1
        OnChange = MainPageControlChange
        object UniTabSheet1: TUniTabSheet
          Hint = ''
          Background.Fit = True
          Caption = 'DashBoard'
          Layout = 'vbox'
          LayoutAttribs.Align = 'center'
          LayoutAttribs.Pack = 'start'
          LayoutAttribs.Padding = '5'
          object pnlCircles: TUniContainerPanel
            Left = 3
            Top = 5
            Width = 520
            Height = 200
            Hint = ''
            ParentColor = False
            Color = 14540257
            TabOrder = 0
            Layout = 'hbox'
            LayoutAttribs.Align = 'middle'
            LayoutAttribs.Pack = 'start'
            LayoutConfig.Width = '100%'
            LayoutConfig.Margin = '5 5 5 5'
            object pnlC1: TUniContainerPanel
              Left = 3
              Top = 3
              Width = 90
              Height = 85
              Hint = ''
              ParentColor = False
              Color = 14540257
              TabOrder = 1
              Layout = 'fit'
              LayoutAttribs.Align = 'middle'
              LayoutAttribs.Pack = 'center'
              LayoutConfig.Flex = 1
              LayoutConfig.Height = '100%'
              object UniHTMLFrame1: TUniHTMLFrame
                Left = 3
                Top = 2
                Width = 80
                Height = 80
                Hint = ''
              end
            end
            object pnlC2: TUniContainerPanel
              Left = 109
              Top = 3
              Width = 90
              Height = 85
              Hint = ''
              ParentColor = False
              Color = 14540257
              TabOrder = 2
              Layout = 'fit'
              LayoutAttribs.Align = 'middle'
              LayoutAttribs.Pack = 'center'
              LayoutConfig.Flex = 1
              LayoutConfig.Height = '100%'
              object UniHTMLFrame2: TUniHTMLFrame
                Left = 3
                Top = 2
                Width = 80
                Height = 80
                Hint = ''
              end
            end
            object pnlC3: TUniContainerPanel
              Left = 221
              Top = 5
              Width = 90
              Height = 85
              Hint = ''
              ParentColor = False
              Color = 14540062
              TabOrder = 3
              Layout = 'fit'
              LayoutAttribs.Align = 'middle'
              LayoutAttribs.Pack = 'center'
              LayoutConfig.Flex = 1
              LayoutConfig.Height = '100%'
              object UniHTMLFrame3: TUniHTMLFrame
                Left = 3
                Top = 2
                Width = 80
                Height = 80
                Hint = ''
              end
            end
            object pnlC4: TUniContainerPanel
              Left = 349
              Top = 7
              Width = 90
              Height = 85
              Hint = ''
              ParentColor = False
              TabOrder = 4
              Layout = 'fit'
              LayoutAttribs.Align = 'middle'
              LayoutAttribs.Pack = 'center'
              LayoutConfig.Flex = 1
              LayoutConfig.Height = '100%'
              object UniHTMLFrame4: TUniHTMLFrame
                Left = 3
                Top = 2
                Width = 80
                Height = 80
                Hint = ''
              end
            end
          end
          object pnlProg1: TUniContainerPanel
            Left = 9
            Top = 211
            Width = 500
            Height = 50
            Hint = ''
            ParentColor = False
            TabOrder = 1
            Layout = 'vbox'
            LayoutConfig.Margin = '10 0 0 0'
            object UniHTMLFrame5: TUniHTMLFrame
              Left = 99
              Top = 11
              Width = 278
              Height = 20
              Hint = ''
              LayoutConfig.Flex = 1
              LayoutConfig.Width = '100%'
              LayoutConfig.Margin = '3 3 3 3'
            end
          end
          object pnlPerDay: TUniContainerPanel
            Left = 3
            Top = 267
            Width = 712
            Height = 123
            Hint = ''
            ParentColor = False
            TabOrder = 2
            Layout = 'hbox'
            LayoutAttribs.Align = 'middle'
            LayoutConfig.Width = '50%'
            object pTodCome: TUniPanel
              Left = 9
              Top = 5
              Width = 128
              Height = 118
              Hint = ''
              ParentFont = False
              Font.Charset = ARABIC_CHARSET
              Font.Color = clWhite
              Font.Height = -16
              Font.Name = 'Tajawal Black'
              Font.Style = [fsBold]
              TabOrder = 3
              BorderStyle = ubsNone
              Caption = '34976'
              Color = 12312155
              AlwaysOnTop = True
              LayoutConfig.Flex = 1
              object UniLabel5: TUniLabel
                Left = 0
                Top = 94
                Width = 128
                Height = 24
                Hint = ''
                Alignment = taCenter
                AutoSize = False
                Caption = 'Today Income'
                Align = alBottom
                ParentColor = False
                Color = 9746432
                Transparent = False
                TabOrder = 1
              end
            end
            object pTodExpense: TUniPanel
              Left = 148
              Top = 3
              Width = 128
              Height = 118
              Hint = ''
              ParentFont = False
              Font.Charset = ARABIC_CHARSET
              Font.Color = clWhite
              Font.Height = -16
              Font.Name = 'Tajawal Black'
              Font.Style = [fsBold]
              TabOrder = 4
              BorderStyle = ubsNone
              Caption = '34976'
              Color = 16759156
              AlwaysOnTop = True
              LayoutConfig.Flex = 1
              object UniLabel6: TUniLabel
                Left = 0
                Top = 94
                Width = 128
                Height = 24
                Hint = ''
                Alignment = taCenter
                AutoSize = False
                Caption = 'Today Expense'
                Align = alBottom
                ParentColor = False
                Color = 14910473
                Transparent = False
                TabOrder = 1
              end
            end
            object pTodCont: TUniPanel
              Left = 277
              Top = 2
              Width = 128
              Height = 118
              Hint = ''
              ParentFont = False
              Font.Charset = ARABIC_CHARSET
              Font.Color = clWhite
              Font.Height = -16
              Font.Name = 'Tajawal Black'
              Font.Style = [fsBold]
              TabOrder = 1
              BorderStyle = ubsNone
              Caption = '957'
              Color = 23295
              AlwaysOnTop = True
              LayoutAttribs.Align = 'center'
              LayoutAttribs.Pack = 'center'
              LayoutConfig.Flex = 1
              object UniLabel3: TUniLabel
                Left = 0
                Top = 94
                Width = 128
                Height = 24
                Hint = ''
                Alignment = taCenter
                AutoSize = False
                Caption = 'Today Contracts'
                Align = alBottom
                ParentFont = False
                Font.Charset = ARABIC_CHARSET
                Font.Color = clWhite
                Font.Height = -16
                Font.Name = 'Tajawal Black'
                Font.Style = [fsBold]
                ParentColor = False
                Color = 2261247
                Transparent = False
                TabOrder = 1
              end
            end
            object pTodPaid: TUniPanel
              Left = 411
              Top = 2
              Width = 128
              Height = 118
              Hint = ''
              ParentFont = False
              Font.Charset = ARABIC_CHARSET
              Font.Color = clWhite
              Font.Height = -16
              Font.Name = 'Tajawal Black'
              Font.Style = [fsBold]
              TabOrder = 2
              BorderStyle = ubsNone
              Caption = '25369'
              Color = 12312155
              AlwaysOnTop = True
              LayoutConfig.Flex = 1
              object UniLabel4: TUniLabel
                Left = 0
                Top = 94
                Width = 128
                Height = 24
                Hint = ''
                Alignment = taCenter
                AutoSize = False
                Caption = 'Today Payments'
                Align = alBottom
                ParentColor = False
                Color = 9746432
                Transparent = False
                TabOrder = 1
              end
            end
            object pTodMaint: TUniPanel
              Left = 545
              Top = 2
              Width = 128
              Height = 118
              Hint = ''
              ParentFont = False
              Font.Charset = ARABIC_CHARSET
              Font.Color = clWhite
              Font.Height = -16
              Font.Name = 'Tajawal Black'
              Font.Style = [fsBold]
              TabOrder = 5
              BorderStyle = ubsNone
              Caption = '25369'
              Color = 16759156
              AlwaysOnTop = True
              LayoutConfig.Flex = 1
              object UniLabel7: TUniLabel
                Left = 0
                Top = 94
                Width = 128
                Height = 24
                Hint = ''
                Alignment = taCenter
                AutoSize = False
                Caption = 'Today Maint'
                Align = alBottom
                ParentColor = False
                Color = 14910473
                Transparent = False
                TabOrder = 1
              end
            end
          end
          object pnlEstBal: TUniSimplePanel
            Left = 3
            Top = 396
            Width = 541
            Height = 157
            Hint = ''
            ParentColor = False
            Border = True
            TabOrder = 3
            Layout = 'table'
            LayoutAttribs.Align = 'top'
            LayoutAttribs.Pack = 'center'
            LayoutAttribs.Padding = '5'
            LayoutAttribs.Columns = 8
            LayoutConfig.BodyPadding = '5'
            LayoutConfig.Width = '90%'
            LayoutConfig.Split = True
          end
        end
      end
    end
  end
  object UniButton1: TUniButton
    Left = 0
    Top = 740
    Width = 75
    Height = 25
    Hint = ''
    Visible = False
    Caption = 'Start EstCNT'
    TabOrder = 1
    OnClick = UniButton1Click
  end
  object UniButton2: TUniButton
    Left = 81
    Top = 740
    Width = 75
    Height = 25
    Hint = ''
    Visible = False
    Caption = 'Units Count'
    TabOrder = 2
    OnClick = UniButton2Click
  end
  object UniButton3: TUniButton
    Left = 162
    Top = 740
    Width = 75
    Height = 25
    Hint = ''
    Visible = False
    Caption = 'not Rented'
    TabOrder = 3
    OnClick = UniButton3Click
  end
  object UniButton4: TUniButton
    Left = 243
    Top = 740
    Width = 75
    Height = 25
    Hint = ''
    Visible = False
    Caption = 'Contract CNT'
    TabOrder = 4
    OnClick = UniButton4Click
  end
  object UniButton5: TUniButton
    Left = 324
    Top = 740
    Width = 75
    Height = 25
    Hint = ''
    Visible = False
    Caption = 'Prog1'
    TabOrder = 5
    OnClick = UniButton5Click
  end
  object UniButton6: TUniButton
    Left = 416
    Top = 740
    Width = 75
    Height = 25
    Hint = ''
    Visible = False
    Caption = 'Today'
    TabOrder = 6
    OnClick = UniButton6Click
  end
  object btnEstBal: TUniButton
    Left = 518
    Top = 740
    Width = 75
    Height = 25
    Hint = ''
    Visible = False
    Caption = 'btnEstBal'
    TabOrder = 7
    OnClick = btnEstBalClick
  end
  object btnArch: TUniButton
    Left = 632
    Top = 740
    Width = 75
    Height = 25
    Hint = ''
    Visible = False
    Caption = 'btnArch'
    TabOrder = 8
    OnClick = btnArchClick
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
      'Arabic')
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
    Left = 188
    Top = 363
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A0054004D00610069006E0046006F0072006D0001004D006100
      69006E0046006F0072006D00010001000D000A0055006E0069004C0061006200
      65006C003100010047006F006F0064002000610066007400650072006E006F00
      6F006E002C002000520061006100660061007400010001000D000A0055006E00
      69004C006100620065006C003200010055006E0069004C006100620065006C00
      3200010001000D000A006100410064006D0069006E000100410064006D006900
      6E0069007300740072006100740069006F006E00010027062F06270631062906
      200027064406460638062706450601000D000A00610044006100730068004200
      6F006100720064000100440061007300680042006F0061007200640001004406
      48062D062000270644064506390644064806450627062A0601000D000A006100
      530079007300530065007400740069006E006700730001005300790073007400
      65006D002000530065007400740069006E00670073000100270639062F062706
      2F0627062A06200027064406460638062706450601000D000A00610055007300
      6500720050007200690076007300010055007300650072002000500072006900
      760069006C00690067006500730001003506440627062D064A0627062A062000
      27064406450633062A062E062F06450601000D000A0061005200650061006C00
      45007300740061007400650001005200650061006C0020004500730074006100
      74006500010027064406390642062706310627062A0601000D000A0061004500
      73007400530065007400740069006E0067007300010053006500740074006900
      6E00670073000100270639062F0627062F0627062A0601000D000A0061005200
      6500670069007300740072006100740069006F006E00010052002E0045002E00
      200052006500670069007300740072006100740069006F006E0001002A063306
      2C064A064406200027064406390642062706310627062A0601000D000A006100
      520065006E00740043006F006E00740072006100630074000100520065006E00
      7400200043006F006E0074007200610063007400730001003906420648062F06
      20002706440627064A062C062706310601000D000A006100520065006E007400
      5000610079006D0065006E00740073000100520065006E007400200050006100
      79006D0065006E0074007300010033062F0627062F062000270644062F064106
      390627062A0601000D000A0055006E0069005400610062005300680065006500
      740031000100440061007300680042006F00610072006400010001000D000A00
      6100520065006E0074005400650072006D0069006E0061007400650001005200
      65006E0074002000520065006E00650077002F005400650072006D0069006E00
      6100740069006F006E0001002706460647062706210620002F0020002A062C06
      2F064A062F062000270644063906420648062F0601000D000A00610052006500
      700061006900720001004D00610069006E00740065006E0061006E0063006500
      010035064A06270646062906200027064406390642062706310627062A060100
      0D000A004E003100010040064006400640064006400640064006400640064006
      4006400640064006400640064006400640064006400640064006400640064006
      4006400640064006400640064006400640064006400640064006400640064006
      40064006400640064006400640064006010001000D000A004E00320001004006
      4006400640064006400640064006400640064006400640064006400640064006
      4006400640064006400640064006400640064006400640064006400640064006
      4006400640064006400640064006400640064006400640064006400640064006
      40064006010001000D000A006100520045007200650070006F00720074007300
      01005200650070006F007200740073000100270644062A064206270631064A06
      310601000D000A0055006E00690042007500740074006F006E00310001005300
      7400610072007400200045007300740043004E005400010001000D000A005500
      6E00690042007500740074006F006E003200010055006E006900740073002000
      43006F0075006E007400010001000D000A0055006E0069004200750074007400
      6F006E00330001006E006F0074002000520065006E0074006500640001000100
      0D000A0055006E00690042007500740074006F006E003400010043006F006E00
      74007200610063007400200043004E005400010001000D000A0055006E006900
      42007500740074006F006E0035000100500072006F0067003100010001000D00
      0A0055006E00690042007500740074006F006E003600010054006F0064006100
      7900010001000D000A00700054006F00640043006F006E007400010039003500
      3700010001000D000A0055006E0069004C006100620065006C00330001005400
      6F00640061007900200043006F006E0074007200610063007400730001003906
      420648062F062000270644064A064806450601000D000A00700054006F006400
      5000610069006400010032003500330036003900010001000D000A0055006E00
      69004C006100620065006C003400010054006F00640061007900200050006100
      79006D0065006E0074007300010033062F0627062F062000270644064A064806
      450601000D000A00700054006F00640043006F006D0065000100330034003900
      37003600010001000D000A0055006E0069004C006100620065006C0035000100
      54006F00640061007900200049006E0063006F006D006500010027064A063106
      27062F062000270644064A064806450601000D000A0061005000440046007300
      010043006F006D00700061006E0079002000460069006C006500730001004506
      4406410627062A06200027064406340631064306290601000D000A0061005600
      6F007500630068006500720001005200650063002F0050006100790020005600
      6F00750063006800650072000100330646062F0620002F064106390620002F00
      200042062806360601000D000A00610050006100730073005700010043006800
      61006E00670065002000500061007300730077006F007200640001002A063A06
      4A064A0631062000430644064506290620002706440645063106480631060100
      0D000A00700054006F00640045007800700065006E0073006500010033003400
      390037003600010001000D000A0055006E0069004C006100620065006C003600
      010054006F00640061007900200045007800700065006E007300650001004506
      3506270631064A0641062000270644064A064806450601000D000A0062007400
      6E00450073007400420061006C000100620074006E0045007300740042006100
      6C00010001000D000A006100530065006E00640053004D005300010053006500
      6E006400200053004D0053000100270631063306270644062000270644063106
      330627062606440601000D000A00700054006F0064004D00610069006E007400
      010032003500330036003900010001000D000A0055006E0069004C0061006200
      65006C003700010054006F0064006100790020004D00610069006E0074000100
      35064A062706460629062000270644064A064806450601000D000A0062007400
      6E0041007200630068000100620074006E004100720063006800010001000D00
      0A00610041007200630068000100410072006300680069007600010027064406
      2306310634064A06410601000D000A0073007400480069006E00740073005F00
      55006E00690063006F00640065000D000A007300740044006900730070006C00
      610079004C006100620065006C0073005F0055006E00690063006F0064006500
      0D000A00440061007300680051007200790045007300740043006E0074000100
      4500730074006100740065007300010027064406390642062706310627062A06
      01000D000A00440061007300680051007200790055006E00740043006E007400
      010055006E0069007400730001002706440648062D062F0627062A0601000D00
      0A004400610073006800510072007900520065006E0043006E00740001005200
      65006E00740065006400200055006E0069007400730001002706440648062D06
      2F0627062A06200027064406340627063A063106290601000D000A0044006100
      7300680051007200790043006F006E0043006E007400010043006F006E007400
      720061006300740073000100270644063906420648062F0601000D000A004400
      6100730068005100720079006100500061006900640043006E00740001006100
      500061006900640043006E007400010001000D000A0044006100730068005100
      72007900500061006900640043006E0074000100500061006900640043006E00
      7400010001000D000A0054006F0064006100790051007200790054006F006400
      6100790043006F006E007400010054006F0064006100790043006F006E007400
      01003906420648062F062000270644064A064806450601000D000A0054006F00
      64006100790051007200790054006F0064006100790050006100690064000100
      54006F006400610079005000610069006400010027064A06310627062F062000
      270644064A064806450601000D000A0054006F00640061007900510072007900
      54006F006400610079004D00610069006E007400010054006F00640061007900
      4D00610069006E007400010001000D000A00450073007400420061006C005100
      4500730074004E006F0001004500730074004E006F00010001000D000A004500
      73007400420061006C005100420061006C0061006E0063006500010042006100
      6C0061006E0063006500010001000D000A0054006F0064006100790051007200
      790054006F0064006100790049006E0063006F006D006500010054006F006400
      6100790049006E0063006F006D006500010001000D000A0054006F0064006100
      790051007200790054006F0064006100790045007800700065006E0073006500
      010054006F0064006100790045007800700065006E0073006500010001000D00
      0A007300740046006F006E00740073005F0055006E00690063006F0064006500
      0D000A00730074004D0075006C00740069004C0069006E00650073005F005500
      6E00690063006F00640065000D000A004400610073006800540069006D006500
      72002E0043006C00690065006E0074004500760065006E007400010066007500
      6E006300740069006F006E002800730065006E0064006500720029002C007B00
      2C002200200022002C007D00010001000D000A00410072006300540069006D00
      650072002E0043006C00690065006E0074004500760065006E00740001006600
      75006E006300740069006F006E002800730065006E0064006500720029002C00
      7B002C002200200022002C007D00010001000D000A007300740044006C006700
      7300430061007000740069006F006E0073005F0055006E00690063006F006400
      65000D000A005700610072006E0069006E00670001005700610072006E006900
      6E006700010001000D000A004500720072006F00720001004500720072006F00
      7200010001000D000A0049006E0066006F0072006D006100740069006F006E00
      010049006E0066006F0072006D006100740069006F006E00010001000D000A00
      43006F006E006600690072006D00010043006F006E006600690072006D000100
      01000D000A0059006500730001002600590065007300010001000D000A004E00
      6F00010026004E006F00010001000D000A004F004B0001004F004B0001000100
      0D000A00430061006E00630065006C000100430061006E00630065006C000100
      01000D000A00410062006F007200740001002600410062006F00720074000100
      01000D000A005200650074007200790001002600520065007400720079000100
      01000D000A00490067006E006F007200650001002600490067006E006F007200
      6500010001000D000A0041006C006C000100260041006C006C00010001000D00
      0A004E006F00200054006F00200041006C006C0001004E0026006F0020007400
      6F00200041006C006C00010001000D000A00590065007300200054006F002000
      41006C006C000100590065007300200074006F002000260041006C006C000100
      01000D000A00480065006C00700001002600480065006C007000010001000D00
      0A007300740053007400720069006E00670073005F0055006E00690063006F00
      640065000D000A00730074004F00740068006500720053007400720069006E00
      670073005F0055006E00690063006F00640065000D000A0054004D0061006900
      6E0046006F0072006D002E004C00610079006F0075007400010062006F007200
      640065007200010001000D000A0070006E006C00480065006100640065007200
      2E004C00610079006F00750074000100680062006F007800010001000D000A00
      70006E006C004D0065006E0075002E004C00610079006F007500740001006600
      69007400010001000D000A0055006E00690043006F006E007400610069006E00
      65007200500061006E0065006C0031002E004C00610079006F00750074000100
      62006F007200640065007200010001000D000A0055006E00690043006F006E00
      7400610069006E0065007200500061006E0065006C0032002E004C0061007900
      6F00750074000100680062006F007800010001000D000A0070006E006C004300
      65006E007400650072002E004C00610079006F00750074000100660069007400
      010001000D000A005400680065006D00650043006F006D0062006F0042006F00
      78002E004600690065006C0064004C006100620065006C005300650070006100
      7200610074006F00720001003A00010001000D000A0055006E00690054006100
      62005300680065006500740031002E004C00610079006F007500740001007600
      62006F007800010001000D000A0070006E006C0043006900720063006C006500
      73002E004C00610079006F00750074000100680062006F007800010001000D00
      0A0070006E006C00430031002E004C00610079006F0075007400010066006900
      7400010001000D000A0070006E006C00430032002E004C00610079006F007500
      74000100660069007400010001000D000A0070006E006C00430033002E004C00
      610079006F00750074000100660069007400010001000D000A0070006E006C00
      430034002E004C00610079006F00750074000100660069007400010001000D00
      0A0070006E006C00500072006F00670031002E004C00610079006F0075007400
      0100760062006F007800010001000D000A0070006E006C005000650072004400
      610079002E004C00610079006F00750074000100680062006F00780001000100
      0D000A00700054006F00640043006F006E0074002E004C00610079006F007500
      740001006100620073006F006C00750074006500010001000D000A0070005400
      6F00640050006100690064002E004C00610079006F0075007400010061006200
      73006F006C00750074006500010001000D000A00700054006F00640043006F00
      6D0065002E004C00610079006F007500740001006100620073006F006C007500
      74006500010001000D000A00700054006F00640045007800700065006E007300
      65002E004C00610079006F007500740001006100620073006F006C0075007400
      6500010001000D000A0055006E006900460053006900470072006F0077006C00
      31002E004D0065007300730061006700650073000100480065006C006C006F00
      200057006F0072006C0064002100010001000D000A0055006E00690046005300
      6900470072006F0077006C0031002E005400690074006C006500010046007200
      6F006D002000540068006500200055007300650072004E0061006D0065000100
      01000D000A0070006E006C00450073007400420061006C002E004C0061007900
      6F007500740001007400610062006C006500010001000D000A00700054006F00
      64004D00610069006E0074002E004C00610079006F0075007400010061006200
      73006F006C00750074006500010001000D000A00730074004C006F0063006100
      6C00650073005F0055006E00690063006F00640065000D000A00730074004300
      6F006C006C0065006300740069006F006E0073005F0055006E00690063006F00
      640065000D000A0073007400430068006100720053006500740073005F005500
      6E00690063006F00640065000D000A00}
  end
  object ActImgAdapter: TUniImageListAdapter
    UniImageList = ActImgList
    Left = 188
    Top = 283
  end
  object ActImgList: TUniNativeImageList
    Left = 188
    Top = 219
    Images = {
      0300000000000000060F000000636972636C652D7468696E3B66613B00000000
      060B0000006E617669636F6E3B66613B00000000060400000062656C6C}
  end
  object ActionList1: TActionList
    Images = ActImgAdapter
    Left = 180
    Top = 99
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
      OnExecute = aSysSettingsExecute
    end
    object aUserPrivs: TAction
      Category = 'Admin'
      Caption = 'User Priviliges'
      ImageIndex = 0
      OnExecute = aUserPrivsExecute
    end
    object aRealEstate: TAction
      Category = 'Real Estate'
      Caption = 'Real Estate'
    end
    object aEstSettings: TAction
      Category = 'Real Estate'
      Caption = 'Settings'
      ImageIndex = 0
    end
    object aRegistration: TAction
      Category = 'Real Estate'
      Caption = 'R.E. Registration'
      ImageIndex = 0
      OnExecute = aRegistrationExecute
    end
    object aRentContract: TAction
      Category = 'Real Estate'
      Caption = 'Rent Contracts'
      ImageIndex = 0
      OnExecute = aRentContractExecute
    end
    object aRentPayments: TAction
      Category = 'Real Estate'
      Caption = 'Rent Payments'
      ImageIndex = 0
      OnExecute = aRentPaymentsExecute
    end
    object aRentTerminate: TAction
      Category = 'Real Estate'
      Caption = 'Rent Renew/Termination'
      ImageIndex = 0
      OnExecute = aRentTerminateExecute
    end
    object aRepair: TAction
      Category = 'Real Estate'
      Caption = 'Maintenance'
      ImageIndex = 0
      OnExecute = aRepairExecute
    end
    object aREreports: TAction
      Category = 'Real Estate'
      Caption = 'Reports'
      ImageIndex = 0
      OnExecute = aREreportsExecute
    end
    object aPDFs: TAction
      Category = 'Admin'
      Caption = 'Company Files'
      ImageIndex = 0
      OnExecute = aPDFsExecute
    end
    object aVoucher: TAction
      Category = 'Admin'
      Caption = 'Rec/Pay Voucher'
      ImageIndex = 0
      OnExecute = aVoucherExecute
    end
    object aPassW: TAction
      Category = 'Admin'
      Caption = 'Change Password'
      ImageIndex = 0
      OnExecute = aPassWExecute
    end
    object aSendSMS: TAction
      Category = 'Admin'
      Caption = 'Send SMS'
      ImageIndex = 0
      OnExecute = aSendSMSExecute
    end
    object aArch: TAction
      Category = 'Admin'
      Caption = 'Archiv'
      ImageIndex = 0
      OnExecute = aArchExecute
    end
  end
  object MenuActions: TUniMenuItems
    Alignment = paCenter
    Left = 68
    Top = 99
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
      object ChangePassword1: TUniMenuItem
        Action = aPassW
      end
      object CompanyFiles1: TUniMenuItem
        Action = aPDFs
      end
      object RecPayVoucher1: TUniMenuItem
        Action = aVoucher
      end
      object SendSMS1: TUniMenuItem
        Action = aSendSMS
      end
      object Archiv1: TUniMenuItem
        Action = aArch
      end
    end
    object CARS1: TUniMenuItem
      Action = aRealEstate
      object MaintinanceSettings1: TUniMenuItem
        Action = aEstSettings
      end
      object Maintenance1: TUniMenuItem
        Action = aRegistration
      end
      object CarHandOver1: TUniMenuItem
        Action = aRentContract
      end
      object CarsReports1: TUniMenuItem
        Action = aRentPayments
      end
      object RentTermination1: TUniMenuItem
        Action = aRentTerminate
      end
      object N1: TUniMenuItem
        Caption = #1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600
      end
      object aRepair1: TUniMenuItem
        Action = aRepair
      end
      object N2: TUniMenuItem
        Caption = #1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600
      end
      object Reports1: TUniMenuItem
        Action = aREreports
      end
    end
  end
  object DashQry: TUniQuery
    Connection = UniMainModule.MainDB
    SQL.Strings = (
      'Select S1.EstCnt, S2.UntCnt, S3.RenCnt, S4.ConCnt,'
      'S5.aPaidCnt, S6.PaidCnt '
      ''
      ' from'
      '(select Count(*) as EstCnt from Estates ) S1,'
      '(select Count(*) as UntCnt from Units ) S2 ,'
      
        '(Select Count(isRented) as RenCnt from Units where isRented = Fa' +
        'lse) S3 ,'
      '(Select Count(*) as ConCnt from Contracts) S4,'
      ''
      '(Select Count(Paid) as aPaidCnt from Payments'
      'where PaymentDate between :Sdate and :Edate ) S5, '
      ''
      '(Select Count(Paid) as PaidCnt from Payments'
      'where PaymentDate between'
      ':Sdate and :Edate    and Paid = True ) S6'
      ''
      '')
    AfterOpen = DashQryAfterOpen
    Left = 97
    Top = 563
    ParamData = <
      item
        DataType = ftDate
        Name = 'Sdate'
        Value = nil
      end
      item
        DataType = ftDate
        Name = 'Edate'
        Value = nil
      end>
    object DashQryEstCnt: TLargeintField
      DisplayLabel = 'Estates'
      FieldName = 'EstCnt'
      Required = True
    end
    object DashQryUntCnt: TLargeintField
      DisplayLabel = 'Units'
      FieldName = 'UntCnt'
      ReadOnly = True
      Required = True
    end
    object DashQryRenCnt: TLargeintField
      DisplayLabel = 'Rented Units'
      FieldName = 'RenCnt'
      ReadOnly = True
      Required = True
    end
    object DashQryConCnt: TLargeintField
      DisplayLabel = 'Contracts'
      FieldName = 'ConCnt'
      ReadOnly = True
      Required = True
    end
    object DashQryaPaidCnt: TLargeintField
      FieldName = 'aPaidCnt'
      ReadOnly = True
      Required = True
    end
    object DashQryPaidCnt: TLargeintField
      FieldName = 'PaidCnt'
      ReadOnly = True
      Required = True
    end
  end
  object DashTimer: TUniTimer
    Enabled = False
    ClientEvent.Strings = (
      'function(sender)'
      '{'
      ' '
      '}')
    OnTimer = DashTimerTimer
    Left = 184
    Top = 560
  end
  object TodayQry: TUniQuery
    Connection = UniMainModule.MainDB
    SQL.Strings = (
      'Select S1.TodayCont, S2.TodayPaid, S3.TodayMaint,'
      'S4.TodayIncome, S5.TodayExpense '
      'FROM '
      '(Select Count(*) as TodayCont from Contracts'
      'where conDate = :Pdate) S1,'
      '(Select Sum(RecValue) as TodayPaid from Rvouchers'
      'where RecDate = :Pdate ) S2 ,'
      '(Select Sum(MaintValue) as TodayMaint from UnitMaint'
      'where MaintDate = :Pdate ) S3 ,'
      '(Select Sum(Vin) as TodayIncome from vouchers'
      'where vDate = :Pdate ) S4 ,'
      '(Select Sum(Vout) as TodayExpense from vouchers'
      'where vDate = :Pdate ) S5 '
      ' '
      ''
      '')
    AfterOpen = DashQryAfterOpen
    Left = 97
    Top = 643
    ParamData = <
      item
        DataType = ftDate
        Name = 'Pdate'
        Value = 43950d
      end>
    object TodayQryTodayCont: TLargeintField
      FieldName = 'TodayCont'
      Required = True
    end
    object TodayQryTodayPaid: TFloatField
      FieldName = 'TodayPaid'
      ReadOnly = True
      DisplayFormat = '#,###.##'
      currency = True
    end
    object TodayQryTodayMaint: TFloatField
      FieldName = 'TodayMaint'
      ReadOnly = True
    end
    object TodayQryTodayIncome: TFloatField
      FieldName = 'TodayIncome'
      ReadOnly = True
    end
    object TodayQryTodayExpense: TFloatField
      FieldName = 'TodayExpense'
      ReadOnly = True
    end
  end
  object UniFSiGrowl1: TUniFSiGrowl
    Title = 'From The UserName'
    Messages = 'Hello World!'
    Types = Notice_Sat
    AlertSize = Regular
    Icon = feather_ribbon
    Delay = 2500
    Spacing = 20
    OffsetX = 20
    OffsetY = 20
    EnableAnimation = True
    EnterAnimation = fadeIn
    ExitAnimation = fadeOut
    PlacementX = right
    PlacementY = top
    Left = 297
    Top = 659
  end
  object UsrNotifyQ: TUniQuery
    Connection = UniMainModule.MainDB
    SQL.Strings = (
      'Select * From usernotify'
      'where ToUsr = :Me And tskStatus = false')
    Left = 697
    Top = 75
    ParamData = <
      item
        DataType = ftString
        Name = 'Me'
        Value = nil
      end>
  end
  object EstBalQ: TUniQuery
    Connection = UniMainModule.MainDB
    SQL.Strings = (
      'Select EstNo,Sum(Income - Expense) As Balance'
      'from estatebalance'
      'Group By EstNo')
    Left = 184
    Top = 656
    object EstBalQEstNo: TIntegerField
      FieldName = 'EstNo'
      Required = True
    end
    object EstBalQBalance: TFloatField
      FieldName = 'Balance'
      ReadOnly = True
      DisplayFormat = '#,##0.##'
      currency = True
    end
  end
  object ArcTimer: TUniTimer
    Enabled = False
    ClientEvent.Strings = (
      'function(sender)'
      '{'
      ' '
      '}')
    OnTimer = ArcTimerTimer
    Left = 32
    Top = 560
  end
end
