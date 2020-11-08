inherited rRegisterF: TrRegisterF
  ClientHeight = 624
  ClientWidth = 1064
  Caption = 'Real Estate Registration'
  OnShow = UniFormShow
  BorderStyle = bsNone
  Font.Charset = ANSI_CHARSET
  Font.Height = -13
  Font.Name = 'Tajawal'
  Layout = 'border'
  LayoutConfig.Flex = 1
  ExplicitWidth = 1064
  ExplicitHeight = 624
  PixelsPerInch = 96
  TextHeight = 18
  inherited pnlBaseContainer: TUniContainerPanel
    Left = 264
    Top = 3
    Width = 787
    Height = 613
    Layout = 'vbox'
    LayoutAttribs.Align = 'center'
    LayoutAttribs.Pack = 'center'
    LayoutConfig.Region = 'center'
    ExplicitLeft = 264
    ExplicitTop = 3
    ExplicitWidth = 787
    ExplicitHeight = 613
    object OwnerBox: TUniGroupBox
      Left = 21
      Top = 3
      Width = 593
      Height = 171
      Hint = ''
      Caption = 'Lordland Data'
      Layout = 'vbox'
      LayoutAttribs.Align = 'center'
      LayoutConfig.Width = '90%'
      LayoutConfig.Margin = '10 0 0 0'
      TabOrder = 2
      object UniToolBar2: TUniToolBar
        Left = 18
        Top = 21
        Width = 445
        Height = 30
        Hint = ''
        ParentRTL = False
        ShowHint = True
        ParentShowHint = False
        BodyRTL = False
        ButtonHeight = 25
        ButtonWidth = 25
        Images = UniMainModule.NAVimg24
        ButtonAutoWidth = True
        LayoutAttribs.Align = 'middle'
        LayoutAttribs.Pack = 'center'
        LayoutConfig.Width = '100%'
        LayoutConfig.Margin = '5 0 0 0'
        Layout = 'hbox'
        Align = alNone
        TabOrder = 1
        ParentColor = False
        Color = clBtnFace
        ParentFont = False
        Font.Charset = ANSI_CHARSET
        Font.Height = -13
        Font.Name = 'Tajawal'
        Font.Style = [fsBold]
        object UniToolButton16: TUniToolButton
          Left = 0
          Top = 0
          Width = 3
          Hint = ''
          ShowHint = True
          Style = tbsDivider
          Caption = 'UniToolButton16'
          TabOrder = 1
        end
        object TBfirst: TUniToolButton
          Left = 3
          Top = 0
          ParentRTL = False
          ShowHint = True
          Action = oFirst1
          ImageIndex = 3
          IconAlign = iaCenter
          LayoutConfig.Height = '100%'
          TabOrder = 2
        end
        object UniToolButton18: TUniToolButton
          Left = 26
          Top = 0
          Width = 3
          Hint = ''
          ShowHint = True
          Style = tbsDivider
          Caption = 'UniToolButton18'
          TabOrder = 3
        end
        object TBprior: TUniToolButton
          Left = 29
          Top = 0
          ParentRTL = False
          ShowHint = True
          Action = oPrior1
          ImageIndex = 0
          IconAlign = iaCenter
          LayoutConfig.Height = '100%'
          Layout = 'fit'
          TabOrder = 4
        end
        object UniToolButton20: TUniToolButton
          Left = 52
          Top = 0
          Width = 2
          Hint = ''
          ShowHint = True
          Style = tbsDivider
          Caption = 'UniToolButton20'
          TabOrder = 5
        end
        object UniToolButton21: TUniToolButton
          Left = 54
          Top = 0
          Width = 130
          Hint = ''
          ShowHint = True
          Style = tbsContainer
          Caption = 'UniToolButton21'
          LayoutConfig.Flex = 1
          LayoutConfig.Height = '100%'
          Layout = 'fit'
          TabOrder = 6
          object edOname: TUniDBEdit
            Left = 6
            Top = 1
            Width = 108
            Height = 22
            Hint = ''
            ShowHint = True
            DataField = 'Name'
            DataSource = OwnersSrc
            Alignment = taCenter
            ParentFont = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clHighlight
            Font.Height = -13
            Font.Name = 'Tajawal ExtraBold'
            Font.Style = [fsBold]
            TabOrder = 1
            Color = clInfoBk
            UseFieldAlignment = False
            FieldLabel = 'Landlord Name'
            FieldLabelWidth = 70
            OnKeyPress = edOnameKeyPress
          end
        end
        object UniToolButton22: TUniToolButton
          Left = 184
          Top = 0
          Width = 2
          Hint = ''
          ShowHint = True
          Style = tbsDivider
          Caption = 'UniToolButton22'
          TabOrder = 7
        end
        object TBnext: TUniToolButton
          Left = 186
          Top = 0
          ParentRTL = False
          ShowHint = True
          Action = oNext1
          ImageIndex = 2
          IconAlign = iaCenter
          LayoutConfig.Height = '100%'
          TabOrder = 8
        end
        object UniToolButton24: TUniToolButton
          Left = 209
          Top = 0
          Width = 3
          Hint = ''
          ShowHint = True
          Style = tbsDivider
          Caption = 'UniToolButton24'
          TabOrder = 9
        end
        object TBlast: TUniToolButton
          Left = 212
          Top = 0
          ParentRTL = False
          ShowHint = True
          Action = oLast1
          ImageIndex = 1
          IconAlign = iaCenter
          LayoutConfig.Height = '100%'
          TabOrder = 10
        end
        object UniToolButton26: TUniToolButton
          Left = 235
          Top = 0
          Width = 3
          Hint = ''
          ShowHint = True
          Style = tbsDivider
          Caption = 'UniToolButton26'
          TabOrder = 11
        end
      end
      object UniFieldContainer2: TUniFieldContainer
        Left = 18
        Top = 57
        Width = 366
        Height = 26
        Hint = ''
        ParentColor = False
        TabOrder = 3
        Layout = 'hbox'
        LayoutAttribs.Align = 'middle'
        LayoutAttribs.Pack = 'center'
        LayoutConfig.Width = '90%'
        LayoutConfig.Margin = '10 0 0 0'
        object edOph1: TUniDBEdit
          Left = 14
          Top = 2
          Width = 121
          Height = 24
          Hint = ''
          DataField = 'phone1'
          DataSource = OwnersSrc
          ParentFont = False
          Font.Charset = ANSI_CHARSET
          Font.Height = -13
          Font.Name = 'Tajawal'
          Font.Style = [fsBold]
          TabOrder = 1
          ClientEvents.ExtEvents.Strings = (
            
              'keydown=function keydown(sender, e, eOpts)'#13#10'{'#13#10'  var ok ='#13#10'     ' +
              '   event.keyCode == 8 || //backspace'#13#10'        event.keyCode == 9' +
              ' || //tab'#13#10'        event.keyCode == 13 || //enter  '#13#10'        eve' +
              'nt.keyCode >= 35 && event.keyCode <= 37 || //end, home, left arr' +
              'ow '#13#10'        event.keyCode == 39 || //right arrow, downd arrow, ' +
              'insert, delete'#13#10'        event.keyCode == 45 || //insert'#13#10'       ' +
              ' event.keyCode == 46 || //delete'#13#10'        event.keyCode >= 96 &&' +
              ' event.keyCode <= 105 || // 0-9 on keypad'#13#10'        event.keyCode' +
              ' >= 48 && event.keyCode <= 57; // 0-9'#13#10#13#10#13#10'    if (!ok) {'#13#10'     ' +
              '   e.preventDefault();'#13#10'    }'#13#10'}')
          LayoutConfig.Flex = 1
          LayoutConfig.Margin = '0 5 0 20'
          FieldLabel = 'Mobile 1'
          FieldLabelWidth = 50
          OnKeyPress = edOph1KeyPress
        end
        object edOph2: TUniDBEdit
          Left = 176
          Top = 0
          Width = 121
          Height = 24
          Hint = ''
          DataField = 'phone2'
          DataSource = OwnersSrc
          ParentFont = False
          Font.Charset = ANSI_CHARSET
          Font.Height = -13
          Font.Name = 'Tajawal'
          Font.Style = [fsBold]
          TabOrder = 2
          ClientEvents.ExtEvents.Strings = (
            
              'keypress=function keypress(sender, e, eOpts)'#13#10'{'#13#10'    var ok ='#13#10' ' +
              '       event.keyCode == 8 || //backspace'#13#10'        event.keyCode ' +
              '== 9 || //tab'#13#10'        event.keyCode == 13 || //enter  '#13#10'       ' +
              ' event.keyCode >= 35 && event.keyCode <= 37 || //end, home, left' +
              ' arrow '#13#10'        event.keyCode == 39 || //right arrow, downd arr' +
              'ow, insert, delete'#13#10'        event.keyCode == 45 || //insert'#13#10'   ' +
              '     event.keyCode == 46 || //delete'#13#10'        event.keyCode >= 9' +
              '6 && event.keyCode <= 105 || // 0-9 on keypad'#13#10'        event.key' +
              'Code >= 48 && event.keyCode <= 57; // 0-9'#13#10#13#10#13#10'    if (!ok) {'#13#10' ' +
              '       e.preventDefault();'#13#10'    }'#13#10'}')
          LayoutConfig.Flex = 1
          LayoutConfig.Margin = '0 20 0 5'
          FieldLabel = 'Mobile 2'
          FieldLabelWidth = 50
          OnKeyPress = edOph2KeyPress
        end
      end
      object edOmail: TUniDBEdit
        Left = 32
        Top = 89
        Width = 121
        Height = 24
        Hint = ''
        DataField = 'eMail'
        DataSource = OwnersSrc
        ParentFont = False
        Font.Charset = ANSI_CHARSET
        Font.Height = -13
        Font.Name = 'Tajawal'
        Font.Style = [fsBold]
        TabOrder = 4
        LayoutConfig.Width = '90%'
        LayoutConfig.Margin = '10 0 0 0'
        FieldLabel = 'Email'
        FieldLabelWidth = 50
      end
      object btn1: TUniContainerPanel
        Left = 3
        Top = 119
        Width = 556
        Height = 35
        Hint = ''
        ParentColor = False
        TabOrder = 2
        Layout = 'hbox'
        LayoutAttribs.Align = 'middle'
        LayoutAttribs.Pack = 'center'
        LayoutConfig.Width = '100%'
        LayoutConfig.Margin = '8 0 0 0'
        object UniSpeedButton4: TUniSpeedButton
          Left = 3
          Top = 1
          Width = 33
          Height = 33
          Action = oInsert1
          ParentColor = False
          Color = clWindow
          IconAlign = iaCenter
          Scale = bbsMedium
          Images = UniMainModule.NAVimg
          ImageIndex = 0
          LayoutConfig.Margin = '0 5 0 5'
          TabOrder = 4
          TabStop = False
        end
        object UniSpeedButton3: TUniSpeedButton
          Left = 59
          Top = 1
          Width = 33
          Height = 33
          Action = oDelete1
          ParentColor = False
          Color = clWindow
          IconAlign = iaCenter
          Scale = bbsMedium
          Images = UniMainModule.NAVimg
          ImageIndex = 1
          LayoutConfig.Margin = '0 5 0 5'
          TabOrder = 3
          TabStop = False
        end
        object UniSpeedButton2: TUniSpeedButton
          Left = 115
          Top = 1
          Width = 33
          Height = 33
          Action = oEdit1
          ParentColor = False
          Color = clWindow
          IconAlign = iaCenter
          Scale = bbsMedium
          Images = UniMainModule.NAVimg
          ImageIndex = 2
          LayoutConfig.Margin = '0 10 0 5'
          TabOrder = 2
          TabStop = False
        end
        object UniSpeedButton1: TUniSpeedButton
          Left = 171
          Top = 1
          Width = 33
          Height = 33
          Action = oPost1
          ParentColor = False
          Color = clWindow
          IconAlign = iaCenter
          Scale = bbsMedium
          Images = UniMainModule.NAVimg
          ImageIndex = 3
          LayoutConfig.Margin = '0 5 0 10'
          TabOrder = 1
          TabStop = False
        end
        object UniSpeedButton5: TUniSpeedButton
          Left = 251
          Top = 1
          Width = 33
          Height = 33
          Action = oCancel1
          ParentColor = False
          Color = clWindow
          IconAlign = iaCenter
          Scale = bbsMedium
          Images = UniMainModule.NAVimg
          ImageIndex = 4
          LayoutConfig.Margin = '0 5 0 5'
          TabOrder = 5
          TabStop = False
        end
        object UniSpeedButton6: TUniSpeedButton
          Left = 322
          Top = 1
          Width = 33
          Height = 33
          Action = oRefresh1
          ParentColor = False
          Color = clWindow
          IconAlign = iaCenter
          Scale = bbsMedium
          Images = UniMainModule.NAVimg
          ImageIndex = 5
          LayoutConfig.Margin = '0 5 0 5'
          TabOrder = 6
          TabStop = False
        end
      end
    end
    object EstateBox: TUniGroupBox
      Left = 21
      Top = 202
      Width = 763
      Height = 140
      Hint = ''
      Caption = 'Estate Data'
      Layout = 'vbox'
      LayoutAttribs.Align = 'center'
      LayoutConfig.Width = '90%'
      LayoutConfig.Margin = '10 0 0 0'
      TabOrder = 3
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Height = -13
      Font.Name = 'Tajawal'
      Font.Style = [fsBold]
      object UniToolBar3: TUniToolBar
        Left = 21
        Top = 15
        Width = 445
        Height = 30
        Hint = ''
        ParentRTL = False
        ShowHint = True
        ParentShowHint = False
        BodyRTL = False
        ButtonHeight = 25
        ButtonWidth = 25
        Images = UniMainModule.NAVimg24
        ButtonAutoWidth = True
        LayoutAttribs.Align = 'middle'
        LayoutAttribs.Pack = 'center'
        LayoutConfig.Width = '100%'
        LayoutConfig.Margin = '5 0 0 0'
        Layout = 'hbox'
        Align = alNone
        TabOrder = 1
        ParentColor = False
        Color = clBtnFace
        ParentFont = False
        Font.Charset = ANSI_CHARSET
        Font.Height = -13
        Font.Name = 'Tajawal'
        Font.Style = [fsBold]
        object UniToolButton2: TUniToolButton
          Left = 0
          Top = 0
          Width = 3
          Hint = ''
          ShowHint = True
          Style = tbsDivider
          Caption = 'UniToolButton16'
          TabOrder = 1
        end
        object UniToolButton8: TUniToolButton
          Left = 3
          Top = 0
          ParentRTL = False
          ShowHint = True
          Action = eFirst1
          ImageIndex = 3
          IconAlign = iaCenter
          LayoutConfig.Height = '100%'
          TabOrder = 2
        end
        object UniToolButton10: TUniToolButton
          Left = 26
          Top = 0
          Width = 3
          Hint = ''
          ShowHint = True
          Style = tbsDivider
          Caption = 'UniToolButton18'
          TabOrder = 3
        end
        object UniToolButton12: TUniToolButton
          Left = 29
          Top = 0
          ParentRTL = False
          ShowHint = True
          Action = ePrior1
          ImageIndex = 0
          IconAlign = iaCenter
          LayoutConfig.Height = '100%'
          Layout = 'fit'
          TabOrder = 4
        end
        object UniToolButton14: TUniToolButton
          Left = 52
          Top = 0
          Width = 2
          Hint = ''
          ShowHint = True
          Style = tbsDivider
          Caption = 'UniToolButton20'
          TabOrder = 5
        end
        object UniToolButton15: TUniToolButton
          Left = 54
          Top = 0
          Width = 130
          Hint = ''
          ShowHint = True
          Style = tbsContainer
          Caption = 'UniToolButton21'
          LayoutConfig.Flex = 1
          LayoutConfig.Height = '100%'
          Layout = 'fit'
          TabOrder = 6
          object edESno: TUniDBEdit
            Left = 6
            Top = 0
            Width = 97
            Height = 22
            Hint = ''
            ShowHint = True
            DataField = 'estNo'
            DataSource = EstatesSrc
            ParentFont = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clHighlight
            Font.Height = -13
            Font.Name = 'Tajawal ExtraBold'
            Font.Style = [fsBold]
            TabOrder = 1
            Color = clInfoBk
            ClientEvents.ExtEvents.Strings = (
              
                'keydown=function keydown(sender, e, eOpts)'#13#10'{'#13#10'    var ok ='#13#10'   ' +
                '     event.keyCode == 8 || //backspace'#13#10'        event.keyCode ==' +
                ' 9 || //tab'#13#10'        event.keyCode == 13 || //enter  '#13#10'        e' +
                'vent.keyCode >= 35 && event.keyCode <= 37 || //end, home, left a' +
                'rrow '#13#10'        event.keyCode == 39 || //right arrow, downd arrow' +
                ', insert, delete'#13#10'        event.keyCode == 45 || //insert'#13#10'     ' +
                '   event.keyCode == 46 || //delete'#13#10'        event.keyCode >= 96 ' +
                '&& event.keyCode <= 105 || // 0-9 on keypad'#13#10'        event.keyCo' +
                'de >= 48 && event.keyCode <= 57; // 0-9'#13#10#13#10#13#10'    if (!ok) {'#13#10'   ' +
                '     e.preventDefault();'#13#10'    }'#13#10'}')
            FieldLabel = 'Estate No'
            FieldLabelWidth = 70
            OnKeyPress = edESnoKeyPress
          end
        end
        object UniToolButton17: TUniToolButton
          Left = 184
          Top = 0
          Width = 2
          Hint = ''
          ShowHint = True
          Style = tbsDivider
          Caption = 'UniToolButton22'
          TabOrder = 7
        end
        object UniToolButton19: TUniToolButton
          Left = 186
          Top = 0
          ParentRTL = False
          ShowHint = True
          Action = eNext1
          ImageIndex = 2
          IconAlign = iaCenter
          LayoutConfig.Height = '100%'
          TabOrder = 8
        end
        object UniToolButton23: TUniToolButton
          Left = 209
          Top = 0
          Width = 3
          Hint = ''
          ShowHint = True
          Style = tbsDivider
          Caption = 'UniToolButton24'
          TabOrder = 9
        end
        object UniToolButton25: TUniToolButton
          Left = 212
          Top = 0
          ParentRTL = False
          ShowHint = True
          Action = eLast1
          ImageIndex = 1
          IconAlign = iaCenter
          LayoutConfig.Height = '100%'
          TabOrder = 10
        end
        object UniToolButton27: TUniToolButton
          Left = 235
          Top = 0
          Width = 3
          Hint = ''
          ShowHint = True
          Style = tbsDivider
          Caption = 'UniToolButton26'
          TabOrder = 11
        end
      end
      object UniContainerPanel10: TUniContainerPanel
        Left = 3
        Top = 51
        Width = 518
        Height = 30
        Hint = ''
        ParentColor = False
        TabOrder = 2
        Layout = 'hbox'
        LayoutAttribs.Align = 'middle'
        LayoutAttribs.Pack = 'center'
        LayoutConfig.Width = '90%'
        LayoutConfig.Margin = '10 0 0 0'
        object edESname: TUniDBEdit
          Left = 39
          Top = 5
          Width = 121
          Height = 22
          Hint = ''
          DataField = 'estName'
          DataSource = EstatesSrc
          ParentFont = False
          Font.Charset = ANSI_CHARSET
          Font.Name = 'Tajawal'
          Font.Style = [fsBold]
          TabOrder = 1
          LayoutConfig.Flex = 1
          LayoutConfig.Margin = '0 2 0 2'
          FieldLabel = 'Name'
          FieldLabelWidth = 40
          OnKeyPress = edESnameKeyPress
        end
        object edESdistrict: TUniDBEdit
          Left = 176
          Top = 5
          Width = 121
          Height = 22
          Hint = ''
          DataField = 'estDistrict'
          DataSource = EstatesSrc
          ParentFont = False
          Font.Charset = ANSI_CHARSET
          Font.Name = 'Tajawal'
          Font.Style = [fsBold]
          TabOrder = 2
          LayoutConfig.Flex = 2
          LayoutConfig.Margin = '0 2 0 2'
          FieldLabel = 'District'
          FieldLabelWidth = 40
        end
        object edESstreet: TUniDBEdit
          Left = 320
          Top = 5
          Width = 121
          Height = 22
          Hint = ''
          DataField = 'estStreet'
          DataSource = EstatesSrc
          ParentFont = False
          Font.Charset = ANSI_CHARSET
          Font.Name = 'Tajawal'
          Font.Style = [fsBold]
          TabOrder = 3
          LayoutConfig.Flex = 2
          LayoutConfig.Margin = '0 2 0 2'
          FieldLabel = 'Street'
          FieldLabelWidth = 40
          OnKeyPress = edESstreetKeyPress
        end
      end
      object UniContainerPanel1: TUniContainerPanel
        Left = 3
        Top = 87
        Width = 750
        Height = 35
        Hint = ''
        ParentColor = False
        TabOrder = 3
        Layout = 'hbox'
        LayoutAttribs.Align = 'middle'
        LayoutAttribs.Pack = 'center'
        LayoutConfig.Width = '100%'
        LayoutConfig.Margin = '8 0 0 0'
        object edUnitsCnt: TUniDBEdit
          Left = 16
          Top = 8
          Width = 105
          Height = 22
          Hint = ''
          DataField = 'UnitsCount'
          DataSource = EstatesSrc
          TabOrder = 1
          Color = clActiveBorder
          ReadOnly = True
          LayoutConfig.Flex = 1
          FieldLabel = 'Units Count'
          FieldLabelWidth = 75
        end
        object UniContainerPanel9: TUniContainerPanel
          Left = 143
          Top = 0
          Width = 414
          Height = 35
          Hint = ''
          ParentColor = False
          TabOrder = 2
          Layout = 'hbox'
          LayoutAttribs.Align = 'middle'
          LayoutAttribs.Pack = 'center'
          LayoutConfig.Flex = 2
          LayoutConfig.Height = '100%'
          LayoutConfig.Margin = '0 20 0 20'
          object UniSpeedButton7: TUniSpeedButton
            Left = 3
            Top = 1
            Width = 33
            Height = 33
            Action = eInsert1
            ParentColor = False
            Color = clWindow
            IconAlign = iaCenter
            Scale = bbsMedium
            Images = UniMainModule.NAVimg
            ImageIndex = 0
            LayoutConfig.Margin = '0 5 0 5'
            TabOrder = 4
            TabStop = False
          end
          object UniSpeedButton8: TUniSpeedButton
            Left = 59
            Top = 1
            Width = 33
            Height = 33
            Action = eDelete1
            ParentColor = False
            Color = clWindow
            IconAlign = iaCenter
            Scale = bbsMedium
            Images = UniMainModule.NAVimg
            ImageIndex = 1
            LayoutConfig.Margin = '0 5 0 5'
            TabOrder = 3
            TabStop = False
          end
          object UniSpeedButton9: TUniSpeedButton
            Left = 115
            Top = 1
            Width = 33
            Height = 33
            Action = eEdit1
            ParentColor = False
            Color = clWindow
            IconAlign = iaCenter
            Scale = bbsMedium
            Images = UniMainModule.NAVimg
            ImageIndex = 2
            LayoutConfig.Margin = '0 10 0 5'
            TabOrder = 2
            TabStop = False
          end
          object UniSpeedButton10: TUniSpeedButton
            Left = 171
            Top = 1
            Width = 33
            Height = 33
            Action = ePost1
            ParentColor = False
            Color = clWindow
            IconAlign = iaCenter
            Scale = bbsMedium
            Images = UniMainModule.NAVimg
            ImageIndex = 3
            LayoutConfig.Margin = '0 5 0 10'
            TabOrder = 1
            TabStop = False
          end
          object UniSpeedButton11: TUniSpeedButton
            Left = 251
            Top = 1
            Width = 33
            Height = 33
            Action = eCancel1
            ParentColor = False
            Color = clWindow
            IconAlign = iaCenter
            Scale = bbsMedium
            Images = UniMainModule.NAVimg
            ImageIndex = 4
            LayoutConfig.Margin = '0 5 0 5'
            TabOrder = 5
            TabStop = False
          end
          object UniSpeedButton12: TUniSpeedButton
            Left = 322
            Top = 1
            Width = 33
            Height = 33
            Action = eRefresh1
            ParentColor = False
            Color = clWindow
            IconAlign = iaCenter
            Scale = bbsMedium
            Images = UniMainModule.NAVimg
            ImageIndex = 5
            LayoutConfig.Margin = '0 5 0 5'
            TabOrder = 6
            TabStop = False
          end
        end
        object edRented: TUniDBEdit
          Left = 608
          Top = 10
          Width = 121
          Height = 22
          Hint = ''
          DataField = 'UnitsRented'
          DataSource = EstatesSrc
          TabOrder = 3
          Color = clActiveBorder
          ReadOnly = True
          LayoutConfig.Flex = 1
          FieldLabel = 'Rented Units'
          FieldLabelWidth = 75
        end
      end
    end
    object UnitsBox: TUniGroupBox
      Left = 3
      Top = 348
      Width = 658
      Height = 140
      Hint = ''
      Caption = 'Units'
      Layout = 'hbox'
      LayoutAttribs.Align = 'middle'
      LayoutAttribs.Pack = 'center'
      LayoutConfig.Width = '95%'
      TabOrder = 4
      object UniContainerPanel13: TUniContainerPanel
        Left = 3
        Top = 17
        Width = 38
        Height = 118
        Hint = ''
        ParentColor = False
        TabOrder = 3
        Layout = 'vbox'
        LayoutAttribs.Align = 'center'
        LayoutAttribs.Pack = 'center'
        LayoutConfig.Height = '100%'
        object UniSpeedButton22: TUniSpeedButton
          Left = 3
          Top = 1
          Width = 33
          Height = 33
          Action = uInsert1
          ParentColor = False
          Color = clWindow
          IconAlign = iaCenter
          Scale = bbsMedium
          Images = UniMainModule.NAVimg
          ImageIndex = 0
          LayoutConfig.Margin = '3 0 3 0'
          TabOrder = 3
          TabStop = False
        end
        object UniSpeedButton23: TUniSpeedButton
          Left = 3
          Top = 40
          Width = 33
          Height = 33
          Action = uEdit1
          ParentColor = False
          Color = clWindow
          IconAlign = iaCenter
          Scale = bbsMedium
          Images = UniMainModule.NAVimg
          ImageIndex = 2
          LayoutConfig.Margin = '3 0 3 0'
          TabOrder = 2
          TabStop = False
        end
        object UniSpeedButton24: TUniSpeedButton
          Left = 3
          Top = 79
          Width = 33
          Height = 33
          Action = uPost1
          ParentColor = False
          Color = clWindow
          IconAlign = iaCenter
          Scale = bbsMedium
          Images = UniMainModule.NAVimg
          ImageIndex = 3
          LayoutConfig.Margin = '3 0 3 0'
          TabOrder = 1
          TabStop = False
        end
      end
      object UniContainerPanel5: TUniContainerPanel
        Left = 64
        Top = 17
        Width = 493
        Height = 113
        Hint = ''
        ParentColor = False
        TabOrder = 1
        Layout = 'vbox'
        LayoutAttribs.Align = 'center'
        LayoutConfig.Height = '100%'
        LayoutConfig.Width = '80%'
        object UniContainerPanel2: TUniContainerPanel
          Left = 7
          Top = 5
          Width = 474
          Height = 26
          Hint = ''
          ParentColor = False
          TabOrder = 1
          Layout = 'hbox'
          LayoutAttribs.Align = 'middle'
          LayoutAttribs.Pack = 'center'
          LayoutConfig.Width = '95%'
          LayoutConfig.Margin = '5 2 2 2'
          object edUnit: TUniDBEdit
            Left = 17
            Top = 1
            Width = 121
            Height = 22
            Hint = ''
            DataField = 'Unit'
            DataSource = UnitsSrc
            ParentFont = False
            Font.Charset = ANSI_CHARSET
            Font.Name = 'Tajawal'
            Font.Style = [fsBold]
            TabOrder = 1
            LayoutConfig.Flex = 1
            LayoutConfig.Margin = '0 2 0 2'
            FieldLabel = 'Unit'
            FieldLabelWidth = 40
            OnKeyPress = edUnitKeyPress
          end
          object ckRented: TUniDBCheckBox
            Left = 144
            Top = 3
            Width = 61
            Height = 17
            Hint = ''
            DataField = 'isRented'
            DataSource = UnitsSrc
            Caption = #1605#1572#1580#1585#1577
            TabOrder = 4
            ParentColor = False
            Color = clBtnFace
            ReadOnly = True
          end
          object edRooms: TUniDBEdit
            Left = 223
            Top = 1
            Width = 121
            Height = 22
            Hint = ''
            DataField = 'Rooms'
            DataSource = UnitsSrc
            ParentFont = False
            Font.Charset = ANSI_CHARSET
            Font.Name = 'Tajawal'
            Font.Style = [fsBold]
            TabOrder = 2
            LayoutConfig.Flex = 1
            LayoutConfig.Margin = '0 2 0 2'
            FieldLabel = 'Rooms'
            FieldLabelWidth = 40
            OnKeyPress = edRoomsKeyPress
          end
          object edFloor: TUniDBEdit
            Left = 350
            Top = 1
            Width = 121
            Height = 22
            Hint = ''
            DataField = 'Floor'
            DataSource = UnitsSrc
            ParentFont = False
            Font.Charset = ANSI_CHARSET
            Font.Name = 'Tajawal'
            Font.Style = [fsBold]
            TabOrder = 3
            LayoutConfig.Flex = 1
            LayoutConfig.Margin = '0 2 0 2'
            FieldLabel = 'Floor'
            FieldLabelWidth = 40
            OnKeyPress = edFloorKeyPress
          end
        end
        object UniContainerPanel3: TUniContainerPanel
          Left = 3
          Top = 42
          Width = 487
          Height = 26
          Hint = ''
          ParentColor = False
          TabOrder = 2
          Layout = 'hbox'
          LayoutAttribs.Align = 'middle'
          LayoutAttribs.Pack = 'center'
          LayoutConfig.Width = '95%'
          LayoutConfig.Margin = '10 2 2 2'
          object UniFieldContainer1: TUniFieldContainer
            Left = 3
            Top = 2
            Width = 110
            Height = 21
            Hint = ''
            ParentColor = False
            FieldLabel = 'Price'
            FieldLabelWidth = 35
            TabOrder = 1
            Layout = 'fit'
            LayoutConfig.Flex = 1
            LayoutConfig.Height = '100%'
            LayoutConfig.Margin = '0 2 0 2'
            object edPrice1: TUniDBNumberEdit
              Left = 3
              Top = 1
              Width = 100
              Height = 22
              Hint = ''
              DataField = 'Price1'
              DataSource = UnitsSrc
              ParentFont = False
              Font.Color = clGreen
              Font.Height = -13
              Font.Style = [fsBold]
              TabOrder = 1
              Color = clInfoBk
              FieldLabel = 'Price1'
              FieldLabelWidth = 40
              FieldLabelFont.Charset = ANSI_CHARSET
              FieldLabelFont.Name = 'Tajawal Medium'
              DecimalPrecision = 0
              DecimalSeparator = '.'
              OnKeyPress = edPrice1KeyPress
            end
          end
          object UniFieldContainer5: TUniFieldContainer
            Left = 119
            Top = 2
            Width = 122
            Height = 21
            Hint = ''
            ParentColor = False
            TabOrder = 2
            Layout = 'fit'
            LayoutConfig.Flex = 1
            LayoutConfig.Height = '100%'
            LayoutConfig.Margin = '0 2 0 2'
            object edPrice2: TUniDBNumberEdit
              Left = 3
              Top = 1
              Width = 100
              Height = 22
              Hint = ''
              DataField = 'Price2'
              DataSource = UnitsSrc
              ParentFont = False
              Font.Color = clOlive
              Font.Height = -13
              Font.Style = [fsBold]
              TabOrder = 1
              Color = clInfoBk
              FieldLabel = 'Price2'
              FieldLabelWidth = 40
              FieldLabelFont.Name = 'Tajawal Medium'
              DecimalPrecision = 0
              DecimalSeparator = '.'
              OnKeyPress = edPrice2KeyPress
            end
          end
          object UniFieldContainer6: TUniFieldContainer
            Left = 240
            Top = 2
            Width = 122
            Height = 21
            Hint = ''
            ParentColor = False
            TabOrder = 3
            Layout = 'fit'
            LayoutConfig.Flex = 1
            LayoutConfig.Height = '100%'
            LayoutConfig.Margin = '0 2 0 2'
            object edPrice3: TUniDBNumberEdit
              Left = 3
              Top = 1
              Width = 100
              Height = 22
              Hint = ''
              Enabled = False
              DataField = 'Price3'
              DataSource = UnitsSrc
              ParentFont = False
              Font.Color = clPurple
              Font.Height = -13
              Font.Style = [fsBold]
              TabOrder = 1
              Color = clInfoBk
              FieldLabel = 'Price3'
              FieldLabelWidth = 40
              FieldLabelFont.Name = 'Tajawal Medium'
              DecimalPrecision = 0
              DecimalSeparator = '.'
              OnKeyPress = edPrice3KeyPress
            end
          end
          object UniFieldContainer7: TUniFieldContainer
            Left = 349
            Top = 5
            Width = 122
            Height = 21
            Hint = ''
            ParentColor = False
            TabOrder = 4
            Layout = 'fit'
            LayoutConfig.Flex = 1
            LayoutConfig.Height = '100%'
            LayoutConfig.Margin = '0 2 0 2'
            object edPrice4: TUniDBNumberEdit
              Left = 3
              Top = 1
              Width = 100
              Height = 22
              Hint = ''
              DataField = 'Price4'
              DataSource = UnitsSrc
              ParentFont = False
              Font.Color = clTeal
              Font.Height = -13
              Font.Style = [fsBold]
              TabOrder = 1
              Color = clInfoBk
              FieldLabel = 'Price4'
              FieldLabelWidth = 40
              FieldLabelFont.Name = 'Tajawal Medium'
              DecimalPrecision = 0
              DecimalSeparator = '.'
              OnKeyPress = edPrice4KeyPress
            end
          end
        end
        object UniContainerPanel4: TUniContainerPanel
          Left = 16
          Top = 80
          Width = 474
          Height = 26
          Hint = ''
          ParentColor = False
          TabOrder = 3
          Layout = 'hbox'
          LayoutAttribs.Align = 'middle'
          LayoutConfig.Width = '95%'
          LayoutConfig.Margin = '10 2 2 2'
          object edNotes: TUniDBEdit
            Left = 3
            Top = 0
            Width = 121
            Height = 22
            Hint = ''
            DataField = 'Notes'
            DataSource = UnitsSrc
            ParentFont = False
            Font.Charset = ANSI_CHARSET
            Font.Name = 'Tajawal'
            Font.Style = [fsBold]
            TabOrder = 2
            LayoutConfig.Flex = 1
            LayoutConfig.Margin = '0 2 0 2'
            FieldLabel = 'Notes'
            FieldLabelWidth = 40
          end
          object UniContainerPanel6: TUniContainerPanel
            Left = 126
            Top = 3
            Width = 329
            Height = 20
            Hint = ''
            ParentColor = False
            TabOrder = 1
            Layout = 'hbox'
            LayoutAttribs.Align = 'middle'
            LayoutConfig.Height = '100%'
            LayoutConfig.Margin = '0 0 0 10'
            object UniDBCheckBox1: TUniDBCheckBox
              Left = 3
              Top = 3
              Width = 110
              Height = 17
              Hint = ''
              DataField = 'Electricity'
              DataSource = UnitsSrc
              Caption = 'Electricity'
              ParentFont = False
              Font.Charset = ANSI_CHARSET
              Font.Name = 'Tajawal'
              Font.Style = [fsBold]
              TabOrder = 1
              ParentColor = False
              Color = clBtnFace
              LayoutConfig.Margin = '0 5 0 2'
            end
            object UniDBCheckBox3: TUniDBCheckBox
              Left = 95
              Top = 3
              Width = 110
              Height = 17
              Hint = ''
              DataField = 'Kitchen'
              DataSource = UnitsSrc
              Caption = 'Kitchen'
              ParentFont = False
              Font.Charset = ANSI_CHARSET
              Font.Name = 'Tajawal'
              Font.Style = [fsBold]
              TabOrder = 2
              ParentColor = False
              Color = clBtnFace
              LayoutConfig.Margin = '0 2 0 2'
            end
            object UniDBCheckBox2: TUniDBCheckBox
              Left = 216
              Top = -2
              Width = 110
              Height = 17
              Hint = ''
              DataField = 'Conditions'
              DataSource = UnitsSrc
              Caption = 'Conditions'
              ParentFont = False
              Font.Charset = ANSI_CHARSET
              Font.Name = 'Tajawal'
              Font.Style = [fsBold]
              TabOrder = 3
              ParentColor = False
              Color = clBtnFace
              LayoutConfig.Margin = '0 2 0 2'
            end
          end
        end
      end
      object UniContainerPanel12: TUniContainerPanel
        Left = 581
        Top = 17
        Width = 38
        Height = 118
        Hint = ''
        ParentColor = False
        TabOrder = 2
        Layout = 'vbox'
        LayoutAttribs.Align = 'center'
        LayoutAttribs.Pack = 'center'
        LayoutConfig.Height = '100%'
        object UniSpeedButton19: TUniSpeedButton
          Left = 3
          Top = 1
          Width = 33
          Height = 33
          Action = uCancel1
          ParentColor = False
          Color = clWindow
          IconAlign = iaCenter
          Scale = bbsMedium
          Images = UniMainModule.NAVimg
          ImageIndex = 4
          LayoutConfig.Margin = '3 0 3 0'
          TabOrder = 3
          TabStop = False
        end
        object UniSpeedButton20: TUniSpeedButton
          Left = 3
          Top = 40
          Width = 33
          Height = 33
          Action = uDelete1
          ParentColor = False
          Color = clWindow
          IconAlign = iaCenter
          Scale = bbsMedium
          Images = UniMainModule.NAVimg
          ImageIndex = 1
          LayoutConfig.Margin = '3 0 3 0'
          TabOrder = 2
          TabStop = False
        end
        object UniSpeedButton21: TUniSpeedButton
          Left = 3
          Top = 79
          Width = 33
          Height = 33
          Action = uRefresh1
          ParentColor = False
          Color = clWindow
          IconAlign = iaCenter
          Scale = bbsMedium
          Images = UniMainModule.NAVimg
          ImageIndex = 5
          LayoutConfig.Margin = '3 0 3 0'
          TabOrder = 1
          TabStop = False
        end
      end
    end
    object UnitsGridCont: TUniContainerPanel
      Left = 21
      Top = 494
      Width = 462
      Height = 100
      Hint = ''
      ParentColor = False
      TabOrder = 1
      Layout = 'fit'
      LayoutAttribs.Align = 'middle'
      LayoutConfig.Flex = 1
      LayoutConfig.Width = '100%'
      object grdUnits: TUniDBGrid
        Left = 32
        Top = 16
        Width = 320
        Height = 67
        Hint = ''
        DataSource = UnitsSrc
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgAutoRefreshRow]
        LoadMask.Message = 'Loading data...'
        ForceFit = True
        Font.Height = -13
        ParentFont = False
        TabOrder = 1
        Columns = <
          item
            FieldName = 'Unit'
            Title.Caption = 'Unit'
            Width = 144
          end
          item
            FieldName = 'Rooms'
            Title.Caption = 'Rooms'
            Width = 284
          end
          item
            FieldName = 'Floor'
            Title.Caption = 'Floor'
            Width = 144
          end
          item
            FieldName = 'Price1'
            Title.Caption = 'Price1'
            Width = 74
          end
          item
            FieldName = 'Price2'
            Title.Caption = 'Price2'
            Width = 74
          end
          item
            FieldName = 'Price3'
            Title.Caption = 'Price3'
            Width = 74
          end
          item
            FieldName = 'Price4'
            Title.Caption = 'Price4'
            Width = 74
          end
          item
            FieldName = 'Notes'
            Title.Caption = 'Notes'
            Width = 529
          end
          item
            FieldName = 'Electricity'
            Title.Caption = 'E'
            Width = 39
          end
          item
            FieldName = 'Kitchen'
            Title.Caption = 'K'
            Width = 39
          end
          item
            FieldName = 'Conditions'
            Title.Caption = 'C'
            Width = 39
          end
          item
            FieldName = 'isRented'
            Title.Caption = 'R'
            Width = 39
          end
          item
            FieldName = 'ESTID'
            Title.Caption = 'ESTID'
            Width = 74
          end
          item
            FieldName = 'ownerID'
            Title.Caption = 'ownerID'
            Width = 74
          end
          item
            FieldName = 'ID'
            Title.Caption = 'ID'
            Width = 74
          end>
      end
    end
  end
  object UniContainerPanel8: TUniContainerPanel [1]
    Left = 8
    Top = 0
    Width = 241
    Height = 581
    Hint = ''
    ParentColor = False
    TabOrder = 1
    Layout = 'vbox'
    LayoutAttribs.Align = 'center'
    LayoutAttribs.Pack = 'start'
    LayoutConfig.Width = '15%'
    LayoutConfig.Region = 'west'
    object contOwners: TUniContainerPanel
      Left = 17
      Top = 3
      Width = 209
      Height = 174
      Hint = ''
      ParentColor = False
      TabOrder = 1
      Layout = 'vbox'
      LayoutAttribs.Align = 'center'
      LayoutAttribs.Pack = 'start'
      LayoutConfig.Flex = 1
      LayoutConfig.Width = '100%'
      object DBLookupComboEMP: TUniDBLookupComboBox
        Left = 32
        Top = 15
        Width = 126
        Height = 24
        Hint = ''
        ListField = 'Name'
        ListSource = OwnersSrc
        KeyField = 'ID'
        ListFieldIndex = 0
        AnyMatch = True
        TabOrder = 2
        Color = clWindow
        MatchFieldWidth = False
        RemoteQuery = True
        LayoutConfig.Width = '90%'
        LayoutConfig.Margin = '5 5 5 5'
        Style = csDropDown
      end
      object grdOwners: TUniDBGrid
        Left = 3
        Top = 45
        Width = 190
        Height = 108
        Hint = ''
        DataSource = OwnersSrc
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgAutoRefreshRow]
        ReadOnly = True
        WebOptions.FetchAll = True
        LoadMask.Message = 'Loading data...'
        ForceFit = True
        LayoutConfig.Flex = 1
        LayoutConfig.Width = '100%'
        Font.Height = -13
        ParentFont = False
        TabOrder = 1
      end
    end
    object contEstates: TUniContainerPanel
      Left = 17
      Top = 183
      Width = 209
      Height = 130
      Hint = ''
      ParentColor = False
      TabOrder = 2
      Layout = 'vbox'
      LayoutAttribs.Align = 'center'
      LayoutAttribs.Pack = 'start'
      LayoutConfig.Width = '100%'
      object grdEstates: TUniDBGrid
        Left = 18
        Top = 3
        Width = 135
        Height = 108
        Hint = ''
        DataSource = EstatesSrc
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgAutoRefreshRow]
        ReadOnly = True
        WebOptions.Paged = False
        WebOptions.FetchAll = True
        LoadMask.Message = 'Loading data...'
        ForceFit = True
        LayoutConfig.Flex = 1
        LayoutConfig.Width = '100%'
        Font.Height = -13
        ParentFont = False
        TabOrder = 1
      end
    end
    object contUnits: TUniContainerPanel
      Left = 3
      Top = 332
      Width = 209
      Height = 173
      Hint = ''
      ParentColor = False
      TabOrder = 3
      Layout = 'vbox'
      LayoutAttribs.Align = 'center'
      LayoutAttribs.Pack = 'start'
      LayoutConfig.Flex = 1
      LayoutConfig.Width = '100%'
      object UniDBLookupComboBox2: TUniDBLookupComboBox
        Left = 32
        Top = 15
        Width = 126
        Height = 24
        Hint = ''
        ListField = 'Unit'
        ListSource = UnitsSrc
        KeyField = 'ID'
        ListFieldIndex = 0
        AnyMatch = True
        TabOrder = 2
        Color = clWindow
        MatchFieldWidth = False
        RemoteQuery = True
        LayoutConfig.Width = '90%'
        LayoutConfig.Margin = '5 5 5 5'
        Style = csDropDown
      end
      object grdUnitsL: TUniDBGrid
        Left = 3
        Top = 45
        Width = 203
        Height = 125
        Hint = ''
        DataSource = UnitsSrc
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgAutoRefreshRow]
        ReadOnly = True
        WebOptions.Paged = False
        WebOptions.FetchAll = True
        LoadMask.Message = 'Loading data...'
        ForceFit = True
        LayoutConfig.Flex = 1
        LayoutConfig.Width = '100%'
        Font.Height = -13
        ParentFont = False
        TabOrder = 1
        Columns = <
          item
            FieldName = 'Unit'
            Title.Alignment = taCenter
            Title.Caption = 'Unit'
            Width = 100
            Alignment = taCenter
          end
          item
            FieldName = 'Rooms'
            Title.Alignment = taCenter
            Title.Caption = 'Rooms'
            Width = 75
            Alignment = taCenter
          end>
      end
    end
  end
  inherited siLang1: TsiLang
    Left = 12
    Top = 151
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00540072005200650067006900730074006500720046000100
      5200650061006C00200045007300740061007400650020005200650067006900
      7300740072006100740069006F006E0001002A0633062C064A06440620002706
      4406390642062706310627062A0601000D000A004F0077006E00650072004200
      6F00780001004C006F00720064006C0061006E00640020004400610074006100
      010028064A062706460627062A06200027064406450627064406430601000D00
      0A0055006E00690054006F006F006C0042007500740074006F006E0031003600
      010055006E00690054006F006F006C0042007500740074006F006E0031003600
      010001000D000A0055006E00690054006F006F006C0042007500740074006F00
      6E0031003800010055006E00690054006F006F006C0042007500740074006F00
      6E0031003800010001000D000A0055006E00690054006F006F006C0042007500
      740074006F006E0032003000010055006E00690054006F006F006C0042007500
      740074006F006E0032003000010001000D000A0055006E00690054006F006F00
      6C0042007500740074006F006E0032003100010055006E00690054006F006F00
      6C0042007500740074006F006E0032003100010001000D000A0055006E006900
      54006F006F006C0042007500740074006F006E0032003200010055006E006900
      54006F006F006C0042007500740074006F006E0032003200010001000D000A00
      55006E00690054006F006F006C0042007500740074006F006E00320034000100
      55006E00690054006F006F006C0042007500740074006F006E00320034000100
      01000D000A0055006E00690054006F006F006C0042007500740074006F006E00
      32003600010055006E00690054006F006F006C0042007500740074006F006E00
      32003600010001000D000A0045007300740061007400650042006F0078000100
      45007300740061007400650020004400610074006100010028064A0627064606
      27062A06200027064406390642062706310601000D000A0055006E0069005400
      6F006F006C0042007500740074006F006E003200010055006E00690054006F00
      6F006C0042007500740074006F006E0031003600010001000D000A0055006E00
      690054006F006F006C0042007500740074006F006E0031003000010055006E00
      690054006F006F006C0042007500740074006F006E0031003800010001000D00
      0A0055006E00690054006F006F006C0042007500740074006F006E0031003400
      010055006E00690054006F006F006C0042007500740074006F006E0032003000
      010001000D000A0055006E00690054006F006F006C0042007500740074006F00
      6E0031003500010055006E00690054006F006F006C0042007500740074006F00
      6E0032003100010001000D000A0055006E00690054006F006F006C0042007500
      740074006F006E0031003700010055006E00690054006F006F006C0042007500
      740074006F006E0032003200010001000D000A0055006E00690054006F006F00
      6C0042007500740074006F006E0032003300010055006E00690054006F006F00
      6C0042007500740074006F006E0032003400010001000D000A0055006E006900
      54006F006F006C0042007500740074006F006E0032003700010055006E006900
      54006F006F006C0042007500740074006F006E0032003600010001000D000A00
      55006E0069007400730042006F007800010055006E0069007400730001002706
      440648062D062F0627062A0601000D000A0055006E0069004400420043006800
      650063006B0042006F0078003100010045006C00650063007400720069006300
      69007400790001004306470631062806270621062000450634062A0631064306
      470601000D000A0055006E0069004400420043006800650063006B0042006F00
      7800330001004B00690074006300680065006E0001004506370628062E062000
      310627064306280601000D000A0055006E006900440042004300680065006300
      6B0042006F0078003200010043006F006E0064006900740069006F006E007300
      0100450643064A06410627062A0601000D000A006F0046006900720073007400
      3100010026004600690072007300740001002706440627064806440601000D00
      0A006F005000720069006F0072003100010026005000720069006F0072000100
      27064406330627062806420601000D000A006F004E0065007800740031000100
      26004E006500780074000100270644062A06270644064A0601000D000A006F00
      4C006100730074003100010026004C0061007300740001002706440627062E06
      4A06310601000D000A0065004600690072007300740031000100260046006900
      72007300740001002706440627064806440601000D000A006500500072006900
      6F0072003100010026005000720069006F007200010027064406330627062806
      420601000D000A0065004E006500780074003100010026004E00650078007400
      0100270644062A06270644064A0601000D000A0065004C006100730074003100
      010026004C0061007300740001002706440627062E064A06310601000D000A00
      73007400480069006E00740073005F0055006E00690063006F00640065000D00
      0A006F0046006900720073007400310001004600690072007300740001000100
      0D000A006F005000720069006F007200310001005000720069006F0072000100
      01000D000A006F004E00650078007400310001004E0065007800740001000100
      0D000A006F004C00610073007400310001004C00610073007400010001000D00
      0A00650046006900720073007400310001004600690072007300740001000100
      0D000A0065005000720069006F007200310001005000720069006F0072000100
      01000D000A0065004E00650078007400310001004E0065007800740001000100
      0D000A0065004C00610073007400310001004C00610073007400010001000D00
      0A006F0049006E0073006500720074003100010049006E007300650072007400
      010001000D000A006F00440065006C0065007400650031000100440065006C00
      650074006500010001000D000A006F0045006400690074003100010045006400
      69007400010001000D000A006F0050006F00730074003100010050006F007300
      7400010001000D000A006F00430061006E00630065006C003100010043006100
      6E00630065006C00010001000D000A006F005200650066007200650073006800
      310001005200650066007200650073006800010001000D000A00650049006E00
      73006500720074003100010049006E007300650072007400010001000D000A00
      6500440065006C0065007400650031000100440065006C006500740065000100
      01000D000A006500450064006900740031000100450064006900740001000100
      0D000A00650050006F00730074003100010050006F0073007400010001000D00
      0A006500430061006E00630065006C0031000100430061006E00630065006C00
      010001000D000A00650052006500660072006500730068003100010052006500
      66007200650073006800010001000D000A00750049006E007300650072007400
      3100010049006E007300650072007400010001000D000A007500440065006C00
      65007400650031000100440065006C00650074006500010001000D000A007500
      4500640069007400310001004500640069007400010001000D000A0075005000
      6F00730074003100010050006F0073007400010001000D000A00750043006100
      6E00630065006C0031000100430061006E00630065006C00010001000D000A00
      7500520065006600720065007300680031000100520065006600720065007300
      6800010001000D000A007300740044006900730070006C00610079004C006100
      620065006C0073005F0055006E00690063006F00640065000D000A004F007700
      6E0065007200730051007200790049004400010049004400010001000D000A00
      4F0077006E00650072007300510072007900700068006F006E00650031000100
      700068006F006E006500310001003106420645062000270644062C0648062706
      44062000310001000D000A004F0077006E006500720073005100720079007000
      68006F006E00650032000100700068006F006E00650032000100310642064506
      2000270644062C064806270644062000320001000D000A004F0077006E006500
      7200730051007200790065004D00610069006C00010065004D00610069006C00
      01002706440627064A0645064A06440601000D000A004F0077006E0065007200
      730051007200790070006500720073006F006E00540079007000650001007000
      6500720073006F006E005400790070006500010001000D000A00450073007400
      610074006500730051007200790049004400010049004400010001000D000A00
      45007300740061007400650073005100720079006F0077006E00650072004900
      440001006F0077006E006500720049004400010001000D000A00450073007400
      61007400650073005100720079006500730074004E006F000100650073007400
      4E006F000100310642064506200027064406390642062706310601000D000A00
      45007300740061007400650073005100720079006500730074004E0061006D00
      650001006500730074004E0061006D0065000100270633064506200027064406
      390642062706310601000D000A00450073007400610074006500730051007200
      7900650073007400440069007300740072006900630074000100650073007400
      440069007300740072006900630074000100270644062D064A0601000D000A00
      4500730074006100740065007300510072007900650073007400530074007200
      6500650074000100650073007400530074007200650065007400010027064406
      340627063106390601000D000A00450073007400610074006500730051007200
      790055006E0069007400730043006F0075006E007400010055006E0069007400
      730043006F0075006E007400010039062F062F0620002706440648062D062F06
      27062A0601000D000A0045007300740061007400650073005100720079005500
      6E00690074007300520065006E00740065006400010055006E00690074007300
      520065006E00740065006400010027064406450624062C063106290601000D00
      0A0055006E0069007400730051007200790055006E0069007400010055006E00
      6900740001002706440648062D062F06290601000D000A0055006E0069007400
      730051007200790052006F006F006D007300010052006F006F006D0073000100
      270644063A063106410601000D000A0055006E00690074007300510072007900
      46006C006F006F007200010046006C006F006F00720001002706440637062706
      2806420601000D000A0055006E00690074007300510072007900500072006900
      63006500310001005000720069006300650031000100310020002F0641063906
      290601000D000A0055006E006900740073005100720079005000720069006300
      6500320001005000720069006300650032000100320020002F06410639064706
      01000D000A0055006E0069007400730051007200790050007200690063006500
      330001005000720069006300650033000100330020002F064106390647060100
      0D000A0055006E00690074007300510072007900500072006900630065003400
      01005000720069006300650034000100340020002F0641063906470601000D00
      0A0055006E006900740073005100720079004E006F0074006500730001004E00
      6F0074006500730001004506440627062D063806290601000D000A0055006E00
      69007400730051007200790045006C0065006300740072006900630069007400
      7900010045000100450001000D000A0055006E00690074007300510072007900
      4B00690074006300680065006E0001004B0001004B0001000D000A0055006E00
      69007400730051007200790043006F006E0064006900740069006F006E007300
      010043000100430001000D000A0055006E006900740073005100720079006900
      7300520065006E00740065006400010052000100520001000D000A0055006E00
      6900740073005100720079004500530054004900440001004500530054004900
      4400010001000D000A0055006E006900740073005100720079006F0077006E00
      650072004900440001006F0077006E006500720049004400010001000D000A00
      55006E0069007400730051007200790049004400010049004400010001000D00
      0A007300740046006F006E00740073005F0055006E00690063006F0064006500
      0D000A00730074004D0075006C00740069004C0069006E00650073005F005500
      6E00690063006F00640065000D000A007300740044006C006700730043006100
      7000740069006F006E0073005F0055006E00690063006F00640065000D000A00
      5700610072006E0069006E00670001005700610072006E0069006E0067000100
      01000D000A004500720072006F00720001004500720072006F00720001000100
      0D000A0049006E0066006F0072006D006100740069006F006E00010049006E00
      66006F0072006D006100740069006F006E00010001000D000A0043006F006E00
      6600690072006D00010043006F006E006600690072006D00010001000D000A00
      59006500730001002600590065007300010001000D000A004E006F0001002600
      4E006F00010001000D000A004F004B0001004F004B00010001000D000A004300
      61006E00630065006C000100430061006E00630065006C00010001000D000A00
      410062006F007200740001002600410062006F0072007400010001000D000A00
      520065007400720079000100260052006500740072007900010001000D000A00
      490067006E006F007200650001002600490067006E006F007200650001000100
      0D000A0041006C006C000100260041006C006C00010001000D000A004E006F00
      200054006F00200041006C006C0001004E0026006F00200074006F0020004100
      6C006C00010001000D000A00590065007300200054006F00200041006C006C00
      0100590065007300200074006F002000260041006C006C00010001000D000A00
      480065006C00700001002600480065006C007000010001000D000A0073007400
      53007400720069006E00670073005F0055006E00690063006F00640065000D00
      0A00730074004F00740068006500720053007400720069006E00670073005F00
      55006E00690063006F00640065000D000A005400720052006500670069007300
      74006500720046002E004C00610079006F0075007400010062006F0072006400
      65007200010001000D000A0070006E006C00420061007300650043006F006E00
      7400610069006E00650072002E004C00610079006F0075007400010076006200
      6F007800010001000D000A0055006E0069007400730047007200690064004300
      6F006E0074002E004C00610079006F0075007400010066006900740001000100
      0D000A004F0077006E006500720042006F0078002E004C00610079006F007500
      74000100760062006F007800010001000D000A0055006E00690054006F006F00
      6C0042006100720032002E004C00610079006F00750074000100680062006F00
      7800010001000D000A00540042007000720069006F0072002E004C0061007900
      6F00750074000100660069007400010001000D000A0055006E00690054006F00
      6F006C0042007500740074006F006E00320031002E004C00610079006F007500
      74000100660069007400010001000D000A00650064004F006E0061006D006500
      2E004600690065006C0064004C006100620065006C0053006500700061007200
      610074006F00720001003A00010001000D000A00650064004F006D0061006900
      6C002E004600690065006C0064004C006100620065006C00010045006D006100
      69006C0001002706440627064A0645064A06440601000D000A00650064004F00
      6D00610069006C002E004600690065006C0064004C006100620065006C005300
      6500700061007200610074006F00720001003A00010001000D000A0062007400
      6E0031002E004C00610079006F00750074000100680062006F00780001000100
      0D000A0045007300740061007400650042006F0078002E004C00610079006F00
      750074000100760062006F007800010001000D000A0055006E00690054006F00
      6F006C0042006100720033002E004C00610079006F0075007400010068006200
      6F007800010001000D000A0055006E00690054006F006F006C00420075007400
      74006F006E00310032002E004C00610079006F00750074000100660069007400
      010001000D000A0055006E00690054006F006F006C0042007500740074006F00
      6E00310035002E004C00610079006F0075007400010066006900740001000100
      0D000A0065006400450053006E006F002E004600690065006C0064004C006100
      620065006C0053006500700061007200610074006F00720001003A0001000100
      0D000A0055006E00690043006F006E007400610069006E006500720050006100
      6E0065006C00310030002E004C00610079006F00750074000100680062006F00
      7800010001000D000A0065006400450053006E0061006D0065002E0046006900
      65006C0064004C006100620065006C0001004E0061006D006500010027064406
      27063306450601000D000A0065006400450053006E0061006D0065002E004600
      690065006C0064004C006100620065006C005300650070006100720061007400
      6F00720001003A00010001000D000A0065006400450053006400690073007400
      72006900630074002E004600690065006C0064004C006100620065006C000100
      440069007300740072006900630074000100270644062D064A0601000D000A00
      6500640045005300640069007300740072006900630074002E00460069006500
      6C0064004C006100620065006C0053006500700061007200610074006F007200
      01003A00010001000D000A006500640045005300730074007200650065007400
      2E004600690065006C0064004C006100620065006C0001005300740072006500
      65007400010027064406340627063106390601000D000A006500640045005300
      7300740072006500650074002E004600690065006C0064004C00610062006500
      6C0053006500700061007200610074006F00720001003A00010001000D000A00
      55006E00690043006F006E007400610069006E0065007200500061006E006500
      6C0031002E004C00610079006F00750074000100680062006F00780001000100
      0D000A006500640055006E0069007400730043006E0074002E00460069006500
      6C0064004C006100620065006C00010055006E00690074007300200043006F00
      75006E00740001002706440648062D062F0627062A0601000D000A0065006400
      55006E0069007400730043006E0074002E004600690065006C0064004C006100
      620065006C0053006500700061007200610074006F00720001003A0001000100
      0D000A0055006E00690043006F006E007400610069006E006500720050006100
      6E0065006C0039002E004C00610079006F00750074000100680062006F007800
      010001000D000A0065006400520065006E007400650064002E00460069006500
      6C0064004C006100620065006C000100520065006E0074006500640020005500
      6E00690074007300010027064406450624062C063106290601000D000A006500
      6400520065006E007400650064002E004600690065006C0064004C0061006200
      65006C0053006500700061007200610074006F00720001003A00010001000D00
      0A0055006E0069007400730042006F0078002E004C00610079006F0075007400
      0100680062006F007800010001000D000A0055006E00690043006F006E007400
      610069006E0065007200500061006E0065006C00310033002E004C0061007900
      6F00750074000100760062006F007800010001000D000A0055006E0069004300
      6F006E007400610069006E0065007200500061006E0065006C0035002E004C00
      610079006F00750074000100760062006F007800010001000D000A0055006E00
      690043006F006E007400610069006E0065007200500061006E0065006C003200
      2E004C00610079006F00750074000100680062006F007800010001000D000A00
      6500640055006E00690074002E004600690065006C0064004C00610062006500
      6C00010055006E006900740001002706440648062D062F06290601000D000A00
      6500640055006E00690074002E004600690065006C0064004C00610062006500
      6C0053006500700061007200610074006F00720001003A00010001000D000A00
      6500640052006F006F006D0073002E004600690065006C0064004C0061006200
      65006C00010052006F006F006D0073000100270644063A063106410601000D00
      0A006500640052006F006F006D0073002E004600690065006C0064004C006100
      620065006C0053006500700061007200610074006F00720001003A0001000100
      0D000A006500640046006C006F006F0072002E004600690065006C0064004C00
      6100620065006C00010046006C006F006F007200010027064406370627062806
      420601000D000A006500640046006C006F006F0072002E004600690065006C00
      64004C006100620065006C0053006500700061007200610074006F0072000100
      3A00010001000D000A0055006E00690043006F006E007400610069006E006500
      7200500061006E0065006C0033002E004C00610079006F007500740001006800
      62006F007800010001000D000A0055006E0069004600690065006C0064004300
      6F006E007400610069006E006500720031002E004600690065006C0064004C00
      6100620065006C00010050007200690063006500010027064406330639063106
      01000D000A0055006E0069004600690065006C00640043006F006E0074006100
      69006E006500720031002E004C00610079006F00750074000100660069007400
      010001000D000A00650064005000720069006300650031002E00460069006500
      6C0064004C006100620065006C00010050007200690063006500310001003100
      20002F0641063906470601000D000A0065006400500072006900630065003100
      2E004600690065006C0064004C006100620065006C0053006500700061007200
      610074006F00720001003A00010001000D000A0055006E006900460069006500
      6C00640043006F006E007400610069006E006500720035002E004C0061007900
      6F00750074000100660069007400010001000D000A0065006400500072006900
      6300650032002E004600690065006C0064004C006100620065006C0001005000
      720069006300650032000100320020002F0641063906470601000D000A006500
      64005000720069006300650032002E004600690065006C0064004C0061006200
      65006C0053006500700061007200610074006F00720001003A00010001000D00
      0A0055006E0069004600690065006C00640043006F006E007400610069006E00
      6500720036002E004C00610079006F0075007400010066006900740001000100
      0D000A00650064005000720069006300650033002E004600690065006C006400
      4C006100620065006C0001005000720069006300650033000100330020002F06
      41063906470601000D000A00650064005000720069006300650033002E004600
      690065006C0064004C006100620065006C005300650070006100720061007400
      6F00720001003A00010001000D000A0055006E0069004600690065006C006400
      43006F006E007400610069006E006500720037002E004C00610079006F007500
      74000100660069007400010001000D000A006500640050007200690063006500
      34002E004600690065006C0064004C006100620065006C000100500072006900
      6300650034000100340020002F0641063906470601000D000A00650064005000
      720069006300650034002E004600690065006C0064004C006100620065006C00
      53006500700061007200610074006F00720001003A00010001000D000A005500
      6E00690043006F006E007400610069006E0065007200500061006E0065006C00
      34002E004C00610079006F00750074000100680062006F007800010001000D00
      0A00650064004E006F007400650073002E004600690065006C0064004C006100
      620065006C0001004E006F0074006500730001004506440627062D0638062906
      01000D000A00650064004E006F007400650073002E004600690065006C006400
      4C006100620065006C0053006500700061007200610074006F00720001003A00
      010001000D000A0055006E00690043006F006E007400610069006E0065007200
      500061006E0065006C0036002E004C00610079006F0075007400010068006200
      6F007800010001000D000A0055006E0069004400420043006800650063006B00
      42006F00780031002E004600690065006C0064004C006100620065006C005300
      6500700061007200610074006F00720001003A00010001000D000A0055006E00
      69004400420043006800650063006B0042006F00780033002E00460069006500
      6C0064004C006100620065006C0053006500700061007200610074006F007200
      01003A00010001000D000A0055006E0069004400420043006800650063006B00
      42006F00780032002E004600690065006C0064004C006100620065006C005300
      6500700061007200610074006F00720001003A00010001000D000A0055006E00
      690043006F006E007400610069006E0065007200500061006E0065006C003100
      32002E004C00610079006F00750074000100760062006F007800010001000D00
      0A0055006E00690043006F006E007400610069006E0065007200500061006E00
      65006C0038002E004C00610079006F00750074000100760062006F0078000100
      01000D000A0063006F006E0074004F0077006E006500720073002E004C006100
      79006F00750074000100760062006F007800010001000D000A00440042004C00
      6F006F006B007500700043006F006D0062006F0045004D0050002E0046006900
      65006C0064004C006100620065006C0053006500700061007200610074006F00
      720001003A00010001000D000A0063006F006E00740045007300740061007400
      650073002E004C00610079006F00750074000100760062006F00780001000100
      0D000A0063006F006E00740055006E006900740073002E004C00610079006F00
      750074000100760062006F007800010001000D000A0055006E00690044004200
      4C006F006F006B007500700043006F006D0062006F0042006F00780032002E00
      4600690065006C0064004C006100620065006C00530065007000610072006100
      74006F00720001003A00010001000D000A004500730074006100740065007300
      5100720079002E00440065007400610069006C004600690065006C0064007300
      01006F0077006E006500720049004400010001000D000A0055006E0069007400
      73005100720079002E00440065007400610069006C004600690065006C006400
      73000100450053005400490044003B006F0077006E0065007200490044000100
      01000D000A00650064004F006E0061006D0065002E004600690065006C006400
      4C006100620065006C0001004C0061006E0064006C006F007200640020004E00
      61006D0065000100270633064506200027064406450627064406430601000D00
      0A0065006400450053006E006F002E004600690065006C0064004C0061006200
      65006C00010045007300740061007400650020004E006F000100310642064506
      200027064406390642062706310601000D000A0055006E006900460069006500
      6C00640043006F006E007400610069006E006500720032002E004C0061007900
      6F00750074000100680062006F007800010001000D000A00650064004F007000
      680031002E004600690065006C0064004C006100620065006C0001004D006F00
      620069006C0065002000310001002C064806270644062000310001000D000A00
      650064004F007000680031002E004600690065006C0064004C00610062006500
      6C0053006500700061007200610074006F00720001003A00010001000D000A00
      650064004F007000680032002E004600690065006C0064004C00610062006500
      6C0001004D006F00620069006C0065002000320001002C064806270644062000
      320001000D000A00650064004F007000680032002E004600690065006C006400
      4C006100620065006C0053006500700061007200610074006F00720001003A00
      010001000D000A00730074004C006F00630061006C00650073005F0055006E00
      690063006F00640065000D000A007300740043006F006C006C00650063007400
      69006F006E0073005F0055006E00690063006F00640065000D000A0067007200
      640055006E006900740073004C002E0043006F006C0075006D006E0073005B00
      30005D002E0043006800650063006B0042006F0078004600690065006C006400
      2E004600690065006C006400560061006C007500650073000100740072007500
      65003B00660061006C0073006500010001000D000A0067007200640055006E00
      6900740073004C002E0043006F006C0075006D006E0073005B0030005D002E00
      5400690074006C0065002E00430061007000740069006F006E00010055006E00
      6900740001002706440648062D062F06290601000D000A006700720064005500
      6E006900740073004C002E0043006F006C0075006D006E0073005B0031005D00
      2E0043006800650063006B0042006F0078004600690065006C0064002E004600
      690065006C006400560061006C00750065007300010074007200750065003B00
      660061006C0073006500010001000D000A0067007200640055006E0069007400
      73004C002E0043006F006C0075006D006E0073005B0031005D002E0054006900
      74006C0065002E00430061007000740069006F006E00010052006F006F006D00
      73000100270644063A063106410601000D000A0067007200640055006E006900
      740073002E0043006F006C0075006D006E0073005B0030005D002E0043006800
      650063006B0042006F0078004600690065006C0064002E004600690065006C00
      6400560061006C00750065007300010074007200750065003B00660061006C00
      73006500010001000D000A0067007200640055006E006900740073002E004300
      6F006C0075006D006E0073005B0030005D002E005400690074006C0065002E00
      430061007000740069006F006E00010055006E00690074000100270644064806
      2D062F06290601000D000A0067007200640055006E006900740073002E004300
      6F006C0075006D006E0073005B0031005D002E0043006800650063006B004200
      6F0078004600690065006C0064002E004600690065006C006400560061006C00
      750065007300010074007200750065003B00660061006C007300650001000100
      0D000A0067007200640055006E006900740073002E0043006F006C0075006D00
      6E0073005B0031005D002E005400690074006C0065002E004300610070007400
      69006F006E00010052006F006F006D0073000100270644063A06310641060100
      0D000A0067007200640055006E006900740073002E0043006F006C0075006D00
      6E0073005B0032005D002E0043006800650063006B0042006F00780046006900
      65006C0064002E004600690065006C006400560061006C007500650073000100
      74007200750065003B00660061006C0073006500010001000D000A0067007200
      640055006E006900740073002E0043006F006C0075006D006E0073005B003200
      5D002E005400690074006C0065002E00430061007000740069006F006E000100
      46006C006F006F007200010027064406370627062806420601000D000A006700
      7200640055006E006900740073002E0043006F006C0075006D006E0073005B00
      33005D002E0043006800650063006B0042006F0078004600690065006C006400
      2E004600690065006C006400560061006C007500650073000100740072007500
      65003B00660061006C0073006500010001000D000A0067007200640055006E00
      6900740073002E0043006F006C0075006D006E0073005B0033005D002E005400
      690074006C0065002E00430061007000740069006F006E000100500072006900
      6300650031000100310020002F0641063906470601000D000A00670072006400
      55006E006900740073002E0043006F006C0075006D006E0073005B0034005D00
      2E0043006800650063006B0042006F0078004600690065006C0064002E004600
      690065006C006400560061006C00750065007300010074007200750065003B00
      660061006C0073006500010001000D000A0067007200640055006E0069007400
      73002E0043006F006C0075006D006E0073005B0034005D002E00540069007400
      6C0065002E00430061007000740069006F006E00010050007200690063006500
      32000100320020002F0641063906470601000D000A0067007200640055006E00
      6900740073002E0043006F006C0075006D006E0073005B0035005D002E004300
      6800650063006B0042006F0078004600690065006C0064002E00460069006500
      6C006400560061006C00750065007300010074007200750065003B0066006100
      6C0073006500010001000D000A0067007200640055006E006900740073002E00
      43006F006C0075006D006E0073005B0035005D002E005400690074006C006500
      2E00430061007000740069006F006E0001005000720069006300650033000100
      330020002F0641063906470601000D000A0067007200640055006E0069007400
      73002E0043006F006C0075006D006E0073005B0036005D002E00430068006500
      63006B0042006F0078004600690065006C0064002E004600690065006C006400
      560061006C00750065007300010074007200750065003B00660061006C007300
      6500010001000D000A0067007200640055006E006900740073002E0043006F00
      6C0075006D006E0073005B0036005D002E005400690074006C0065002E004300
      61007000740069006F006E000100500072006900630065003400010034002000
      2F0641063906470601000D000A0067007200640055006E006900740073002E00
      43006F006C0075006D006E0073005B0037005D002E0043006800650063006B00
      42006F0078004600690065006C0064002E004600690065006C00640056006100
      6C00750065007300010074007200750065003B00660061006C00730065000100
      01000D000A0067007200640055006E006900740073002E0043006F006C007500
      6D006E0073005B0037005D002E005400690074006C0065002E00430061007000
      740069006F006E0001004E006F0074006500730001004506440627062D063806
      290601000D000A0067007200640055006E006900740073002E0043006F006C00
      75006D006E0073005B0038005D002E0043006800650063006B0042006F007800
      4600690065006C0064002E004600690065006C006400560061006C0075006500
      7300010074007200750065003B00660061006C0073006500010001000D000A00
      67007200640055006E006900740073002E0043006F006C0075006D006E007300
      5B0038005D002E005400690074006C0065002E00430061007000740069006F00
      6E0001004500010001000D000A0067007200640055006E006900740073002E00
      43006F006C0075006D006E0073005B0039005D002E0043006800650063006B00
      42006F0078004600690065006C0064002E004600690065006C00640056006100
      6C00750065007300010074007200750065003B00660061006C00730065000100
      01000D000A0067007200640055006E006900740073002E0043006F006C007500
      6D006E0073005B0039005D002E005400690074006C0065002E00430061007000
      740069006F006E0001004B00010001000D000A0067007200640055006E006900
      740073002E0043006F006C0075006D006E0073005B00310030005D002E004300
      6800650063006B0042006F0078004600690065006C0064002E00460069006500
      6C006400560061006C00750065007300010074007200750065003B0066006100
      6C0073006500010001000D000A0067007200640055006E006900740073002E00
      43006F006C0075006D006E0073005B00310030005D002E005400690074006C00
      65002E00430061007000740069006F006E0001004300010001000D000A006700
      7200640055006E006900740073002E0043006F006C0075006D006E0073005B00
      310031005D002E0043006800650063006B0042006F0078004600690065006C00
      64002E004600690065006C006400560061006C00750065007300010074007200
      750065003B00660061006C0073006500010001000D000A006700720064005500
      6E006900740073002E0043006F006C0075006D006E0073005B00310031005D00
      2E005400690074006C0065002E00430061007000740069006F006E0001005200
      010001000D000A0067007200640055006E006900740073002E0043006F006C00
      75006D006E0073005B00310032005D002E0043006800650063006B0042006F00
      78004600690065006C0064002E004600690065006C006400560061006C007500
      65007300010074007200750065003B00660061006C0073006500010001000D00
      0A0067007200640055006E006900740073002E0043006F006C0075006D006E00
      73005B00310032005D002E005400690074006C0065002E004300610070007400
      69006F006E00010045005300540049004400010001000D000A00670072006400
      55006E006900740073002E0043006F006C0075006D006E0073005B0031003300
      5D002E0043006800650063006B0042006F0078004600690065006C0064002E00
      4600690065006C006400560061006C0075006500730001007400720075006500
      3B00660061006C0073006500010001000D000A0067007200640055006E006900
      740073002E0043006F006C0075006D006E0073005B00310033005D002E005400
      690074006C0065002E00430061007000740069006F006E0001006F0077006E00
      6500720049004400010001000D000A0067007200640055006E00690074007300
      2E0043006F006C0075006D006E0073005B00310034005D002E00430068006500
      63006B0042006F0078004600690065006C0064002E004600690065006C006400
      560061006C00750065007300010074007200750065003B00660061006C007300
      6500010001000D000A0067007200640055006E006900740073002E0043006F00
      6C0075006D006E0073005B00310034005D002E005400690074006C0065002E00
      430061007000740069006F006E00010049004400010001000D000A0073007400
      430068006100720053006500740073005F0055006E00690063006F0064006500
      0D000A00}
  end
  object OwnersQry: TUniQuery
    Connection = UniMainModule.MainDB
    SQL.Strings = (
      'Select * from Persons'
      'where PersonType = '#39'landlord'#39
      'order by ID')
    Options.FullRefresh = True
    AfterPost = OwnersQryAfterPost
    AfterCancel = OwnersQryAfterCancel
    AfterDelete = OwnersQryAfterDelete
    OnNewRecord = OwnersQryNewRecord
    Left = 94
    Top = 115
    object OwnersQryID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      Visible = False
    end
    object OwnersQryName: TWideStringField
      FieldName = 'Name'
      Required = True
      Size = 50
    end
    object OwnersQryphone1: TWideStringField
      FieldName = 'phone1'
      Required = True
      Visible = False
      Size = 15
    end
    object OwnersQryphone2: TWideStringField
      FieldName = 'phone2'
      Visible = False
      Size = 15
    end
    object OwnersQryeMail: TWideStringField
      FieldName = 'eMail'
      Visible = False
      Size = 50
    end
    object OwnersQrypersonType: TWideStringField
      FieldName = 'personType'
      Required = True
      Visible = False
    end
  end
  object OwnersSrc: TUniDataSource
    DataSet = OwnersQry
    OnStateChange = OwnersSrcStateChange
    Left = 174
    Top = 131
  end
  object EstatesQry: TUniQuery
    Connection = UniMainModule.MainDB
    SQL.Strings = (
      'SELECT * FROM estates'
      'order by ID')
    MasterSource = OwnersSrc
    MasterFields = 'ID'
    DetailFields = 'ownerID'
    AfterPost = EstatesQryAfterPost
    AfterCancel = EstatesQryAfterCancel
    AfterDelete = EstatesQryAfterDelete
    OnNewRecord = EstatesQryNewRecord
    Left = 70
    Top = 235
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Value = 1
      end>
    object EstatesQryID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      Visible = False
    end
    object EstatesQryownerID: TIntegerField
      FieldName = 'ownerID'
      Required = True
      Visible = False
    end
    object EstatesQryestNo: TIntegerField
      FieldName = 'estNo'
      Required = True
    end
    object EstatesQryestName: TWideStringField
      FieldName = 'estName'
      Size = 25
    end
    object EstatesQryestDistrict: TWideStringField
      FieldName = 'estDistrict'
      Required = True
      Visible = False
      Size = 40
    end
    object EstatesQryestStreet: TWideStringField
      FieldName = 'estStreet'
      Required = True
      Visible = False
      Size = 40
    end
    object EstatesQryUnitsCount: TIntegerField
      FieldName = 'UnitsCount'
      Visible = False
    end
    object EstatesQryUnitsRented: TIntegerField
      FieldName = 'UnitsRented'
      Visible = False
    end
  end
  object EstatesSrc: TUniDataSource
    DataSet = EstatesQry
    OnStateChange = EstatesSrcStateChange
    Left = 126
    Top = 243
  end
  object UnitsQry: TUniQuery
    Connection = UniMainModule.MainDB
    SQL.Strings = (
      'SELECT * FROM units'
      'order by ID')
    MasterSource = EstatesSrc
    MasterFields = 'estNo;ownerID'
    DetailFields = 'ESTID;ownerID'
    AfterPost = UnitsQryAfterPost
    AfterCancel = UnitsQryAfterCancel
    AfterDelete = UnitsQryAfterDelete
    OnNewRecord = UnitsQryNewRecord
    Left = 78
    Top = 419
    ParamData = <
      item
        DataType = ftInteger
        Name = 'estNo'
        ParamType = ptInput
        Value = 33
      end
      item
        DataType = ftInteger
        Name = 'ownerID'
        ParamType = ptInput
        Value = 1
      end>
    object UnitsQryUnit: TWideStringField
      DisplayWidth = 20
      FieldName = 'Unit'
      Required = True
      Size = 30
    end
    object UnitsQryRooms: TWideStringField
      DisplayWidth = 40
      FieldName = 'Rooms'
      Size = 50
    end
    object UnitsQryFloor: TWideStringField
      DisplayWidth = 20
      FieldName = 'Floor'
      Size = 30
    end
    object UnitsQryPrice1: TFloatField
      FieldName = 'Price1'
      Required = True
      DisplayFormat = '#,###'
    end
    object UnitsQryPrice2: TFloatField
      FieldName = 'Price2'
      DisplayFormat = '#,###'
    end
    object UnitsQryPrice3: TFloatField
      FieldName = 'Price3'
      DisplayFormat = '#,###'
    end
    object UnitsQryPrice4: TFloatField
      FieldName = 'Price4'
      DisplayFormat = '#,###'
    end
    object UnitsQryNotes: TWideStringField
      DisplayWidth = 75
      FieldName = 'Notes'
      Size = 250
    end
    object UnitsQryElectricity: TBooleanField
      DisplayLabel = 'E'
      FieldName = 'Electricity'
    end
    object UnitsQryKitchen: TBooleanField
      DisplayLabel = 'K'
      FieldName = 'Kitchen'
    end
    object UnitsQryConditions: TBooleanField
      DisplayLabel = 'C'
      FieldName = 'Conditions'
    end
    object UnitsQryisRented: TBooleanField
      DisplayLabel = 'R'
      FieldName = 'isRented'
      Required = True
      Visible = False
    end
    object UnitsQryESTID: TIntegerField
      FieldName = 'ESTID'
      Required = True
      Visible = False
    end
    object UnitsQryownerID: TIntegerField
      FieldName = 'ownerID'
      Required = True
      Visible = False
    end
    object UnitsQryID: TIntegerField
      FieldName = 'ID'
      Visible = False
    end
  end
  object UnitsSrc: TUniDataSource
    DataSet = UnitsQry
    Left = 134
    Top = 427
  end
  object ActionList1: TActionList
    Left = 509
    Top = 91
    object oFirst1: TDataSetFirst
      Category = 'OwnerDS'
      Caption = '&First'
      Hint = 'First'
      ImageIndex = 0
      DataSource = OwnersSrc
    end
    object oPrior1: TDataSetPrior
      Category = 'OwnerDS'
      Caption = '&Prior'
      Hint = 'Prior'
      ImageIndex = 1
      DataSource = OwnersSrc
    end
    object oNext1: TDataSetNext
      Category = 'OwnerDS'
      Caption = '&Next'
      Hint = 'Next'
      ImageIndex = 2
      DataSource = OwnersSrc
    end
    object oLast1: TDataSetLast
      Category = 'OwnerDS'
      Caption = '&Last'
      Hint = 'Last'
      ImageIndex = 3
      DataSource = OwnersSrc
    end
    object eFirst1: TDataSetFirst
      Category = 'EstatesDS'
      Caption = '&First'
      Hint = 'First'
      ImageIndex = 0
      DataSource = EstatesSrc
    end
    object ePrior1: TDataSetPrior
      Category = 'EstatesDS'
      Caption = '&Prior'
      Hint = 'Prior'
      ImageIndex = 1
      DataSource = EstatesSrc
    end
    object eNext1: TDataSetNext
      Category = 'EstatesDS'
      Caption = '&Next'
      Hint = 'Next'
      ImageIndex = 2
      DataSource = EstatesSrc
    end
    object eLast1: TDataSetLast
      Category = 'EstatesDS'
      Caption = '&Last'
      Hint = 'Last'
      ImageIndex = 3
      DataSource = EstatesSrc
    end
    object oInsert1: TDataSetInsert
      Category = 'OwnerDS'
      Hint = 'Insert'
      ImageIndex = 4
      DataSource = OwnersSrc
    end
    object oDelete1: TDataSetDelete
      Category = 'OwnerDS'
      Hint = 'Delete'
      ImageIndex = 5
      OnExecute = oDelete1Execute
      DataSource = OwnersSrc
    end
    object oEdit1: TDataSetEdit
      Category = 'OwnerDS'
      Hint = 'Edit'
      ImageIndex = 6
      DataSource = OwnersSrc
    end
    object oPost1: TDataSetPost
      Category = 'OwnerDS'
      Hint = 'Post'
      ImageIndex = 7
      DataSource = OwnersSrc
    end
    object oCancel1: TDataSetCancel
      Category = 'OwnerDS'
      Hint = 'Cancel'
      ImageIndex = 8
      DataSource = OwnersSrc
    end
    object oRefresh1: TDataSetRefresh
      Category = 'OwnerDS'
      Hint = 'Refresh'
      ImageIndex = 9
      DataSource = OwnersSrc
    end
    object eInsert1: TDataSetInsert
      Category = 'EstatesDS'
      Hint = 'Insert'
      ImageIndex = 4
      DataSource = EstatesSrc
    end
    object eDelete1: TDataSetDelete
      Category = 'EstatesDS'
      Hint = 'Delete'
      ImageIndex = 5
      OnExecute = eDelete1Execute
      DataSource = EstatesSrc
    end
    object eEdit1: TDataSetEdit
      Category = 'EstatesDS'
      Hint = 'Edit'
      ImageIndex = 6
      DataSource = EstatesSrc
    end
    object ePost1: TDataSetPost
      Category = 'EstatesDS'
      Hint = 'Post'
      ImageIndex = 7
      DataSource = EstatesSrc
    end
    object eCancel1: TDataSetCancel
      Category = 'EstatesDS'
      Hint = 'Cancel'
      ImageIndex = 8
      DataSource = EstatesSrc
    end
    object eRefresh1: TDataSetRefresh
      Category = 'EstatesDS'
      Hint = 'Refresh'
      ImageIndex = 9
      DataSource = EstatesSrc
    end
    object uInsert1: TDataSetInsert
      Category = 'UnitsDS'
      Hint = 'Insert'
      ImageIndex = 4
      DataSource = UnitsSrc
    end
    object uDelete1: TDataSetDelete
      Category = 'UnitsDS'
      Hint = 'Delete'
      ImageIndex = 5
      OnExecute = uDelete1Execute
      DataSource = UnitsSrc
    end
    object uEdit1: TDataSetEdit
      Category = 'UnitsDS'
      Hint = 'Edit'
      ImageIndex = 6
      DataSource = UnitsSrc
    end
    object uPost1: TDataSetPost
      Category = 'UnitsDS'
      Hint = 'Post'
      ImageIndex = 7
      DataSource = UnitsSrc
    end
    object uCancel1: TDataSetCancel
      Category = 'UnitsDS'
      Hint = 'Cancel'
      ImageIndex = 8
      DataSource = UnitsSrc
    end
    object uRefresh1: TDataSetRefresh
      Category = 'UnitsDS'
      Hint = 'Refresh'
      ImageIndex = 9
      DataSource = UnitsSrc
    end
  end
end
