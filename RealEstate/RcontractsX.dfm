inherited RcontractsF: TRcontractsF
  ClientHeight = 686
  ClientWidth = 1105
  Caption = 'Rent Contracts'
  BorderStyle = bsNone
  Font.Charset = ARABIC_CHARSET
  Font.Height = -12
  Font.Name = 'Tajawal Medium'
  Font.Style = [fsBold]
  ExplicitWidth = 1105
  ExplicitHeight = 686
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnlBaseContainer: TUniContainerPanel
    Left = 8
    Top = 8
    Width = 1089
    Height = 670
    Layout = 'border'
    ExplicitLeft = 8
    ExplicitTop = 8
    ExplicitWidth = 1089
    ExplicitHeight = 670
    object pnlContracts: TUniContainerPanel
      Left = 9
      Top = 59
      Width = 88
      Height = 174
      Hint = ''
      ParentColor = False
      TabOrder = 1
      Layout = 'vbox'
      LayoutAttribs.Align = 'center'
      LayoutAttribs.Pack = 'start'
      LayoutConfig.Width = '15%'
      LayoutConfig.Region = 'west'
      object DBLookupComboEMP: TUniDBLookupComboBox
        Left = 32
        Top = 15
        Width = 126
        Height = 24
        Hint = ''
        ListField = 'Unit;Name;ContractID'
        ListSource = ContractsQsrc
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
        DataSource = ContractsQsrc
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
        Columns = <
          item
            FieldName = 'ContractID'
            Title.Caption = 'ContractID'
            Width = 74
          end
          item
            FieldName = 'Name'
            Title.Caption = 'Name'
            Width = 354
            ReadOnly = True
          end>
      end
    end
    object pnlCenter: TUniContainerPanel
      Left = 103
      Top = 3
      Width = 970
      Height = 654
      Hint = ''
      ParentColor = False
      TabOrder = 2
      Layout = 'vbox'
      LayoutAttribs.Align = 'center'
      LayoutConfig.Region = 'center'
      object pnlHead: TUniContainerPanel
        Left = 3
        Top = 15
        Width = 958
        Height = 50
        Hint = ''
        ParentColor = False
        TabOrder = 1
        Layout = 'hbox'
        LayoutAttribs.Align = 'middle'
        LayoutConfig.Width = '100%'
        LayoutConfig.Margin = '10 0 0 0'
        object UniToolBar1: TUniToolBar
          Left = 3
          Top = 2
          Width = 774
          Height = 45
          Hint = ''
          ButtonHeight = 40
          ButtonWidth = 40
          Images = UniMainModule.ImgTol32
          LayoutAttribs.Align = 'middle'
          LayoutAttribs.Pack = 'center'
          LayoutConfig.Flex = 1
          LayoutConfig.Margin = '0 5 0 5'
          Layout = 'hbox'
          Align = alNone
          TabOrder = 1
          ParentColor = False
          Color = clBtnFace
          object UniToolButton6: TUniToolButton
            Left = 0
            Top = 0
            Width = 8
            Hint = ''
            Style = tbsDivider
            Caption = 'UniToolButton6'
            TabOrder = 6
          end
          object UniToolButton1: TUniToolButton
            Left = 8
            Top = 0
            Action = DatasetInsert1
            ImageIndex = 0
            TabOrder = 1
          end
          object UniToolButton2: TUniToolButton
            Left = 31
            Top = 0
            Width = 8
            Hint = ''
            Style = tbsDivider
            Caption = 'UniToolButton2'
            TabOrder = 2
          end
          object UniToolButton3: TUniToolButton
            Left = 39
            Top = 0
            Action = DatasetPost1
            ImageIndex = 1
            TabOrder = 3
          end
          object UniToolButton4: TUniToolButton
            Left = 62
            Top = 0
            Width = 8
            Hint = ''
            Style = tbsDivider
            Caption = 'UniToolButton4'
            TabOrder = 4
          end
          object UniToolButton5: TUniToolButton
            Left = 70
            Top = 0
            Action = DatasetDelete1
            ImageIndex = 3
            TabOrder = 5
          end
          object UniToolButton22: TUniToolButton
            Left = 93
            Top = 0
            Width = 8
            Hint = ''
            Style = tbsDivider
            Caption = 'UniToolButton22'
            TabOrder = 13
          end
          object UniToolButton7: TUniToolButton
            Left = 101
            Top = 0
            Width = 385
            Hint = ''
            ParentRTL = False
            Style = tbsContainer
            Caption = 'UniToolButton7'
            Layout = 'fit'
            TabOrder = 14
            object UniToolBar2: TUniToolBar
              Left = 12
              Top = 2
              Width = 337
              Height = 37
              Hint = ''
              ParentRTL = False
              ButtonHeight = 35
              ButtonWidth = 35
              Images = UniMainModule.ImgTol32
              LayoutAttribs.Align = 'middle'
              LayoutAttribs.Pack = 'center'
              LayoutConfig.Flex = 1
              Layout = 'hbox'
              Align = alNone
              TabOrder = 1
              ParentColor = False
              Color = clBtnFace
              object UniToolButton9: TUniToolButton
                Left = 0
                Top = 0
                Width = 8
                Hint = ''
                Style = tbsSeparator
                Caption = 'UniToolButton7'
                TabOrder = 1
              end
              object UniToolButton10: TUniToolButton
                Left = 8
                Top = 0
                ParentRTL = False
                Action = DatasetFirst1
                ImageIndex = 12
                IconAlign = iaCenter
                TabOrder = 2
              end
              object UniToolButton11: TUniToolButton
                Left = 43
                Top = 0
                Width = 8
                Hint = ''
                Style = tbsDivider
                Caption = 'UniToolButton9'
                TabOrder = 3
              end
              object UniToolButton12: TUniToolButton
                Left = 51
                Top = 0
                ParentRTL = False
                Action = DatasetPrior1
                ImageIndex = 11
                IconAlign = iaCenter
                TabOrder = 4
              end
              object UniToolButton13: TUniToolButton
                Left = 86
                Top = 0
                Width = 8
                Hint = ''
                Style = tbsDivider
                Caption = 'UniToolButton11'
                TabOrder = 5
              end
              object UniToolButton23: TUniToolButton
                Left = 94
                Top = 0
                Width = 131
                Hint = ''
                Style = tbsContainer
                Caption = 'UniToolButton23'
                TabOrder = 10
                object edtEmpNO: TUniDBEdit
                  Left = 0
                  Top = 0
                  Width = 131
                  Height = 35
                  Hint = ''
                  DataField = 'ContractID'
                  DataSource = ContractsQsrc
                  Align = alClient
                  Alignment = taCenter
                  ParentFont = False
                  Font.Charset = ARABIC_CHARSET
                  Font.Height = -19
                  Font.Name = 'Tajawal Black'
                  Font.Style = [fsBold]
                  TabOrder = 1
                  ReadOnly = True
                  UseFieldAlignment = False
                end
              end
              object UniToolButton24: TUniToolButton
                Left = 225
                Top = 0
                Width = 8
                Hint = ''
                Style = tbsDivider
                Caption = 'UniToolButton24'
                TabOrder = 11
              end
              object UniToolButton14: TUniToolButton
                Left = 233
                Top = 0
                ParentRTL = False
                Action = DatasetNext1
                ImageIndex = 10
                IconAlign = iaCenter
                TabOrder = 6
              end
              object UniToolButton15: TUniToolButton
                Left = 268
                Top = 0
                Width = 8
                Hint = ''
                Style = tbsDivider
                Caption = 'UniToolButton13'
                TabOrder = 7
              end
              object UniToolButton25: TUniToolButton
                Left = 276
                Top = 0
                ParentRTL = False
                Action = DatasetLast1
                ImageIndex = 9
                IconAlign = iaCenter
                TabOrder = 8
              end
              object UniToolButton26: TUniToolButton
                Left = 311
                Top = 0
                Width = 8
                Hint = ''
                Style = tbsSeparator
                Caption = 'UniToolButton15'
                TabOrder = 9
              end
            end
          end
          object UniToolButton8: TUniToolButton
            Left = 486
            Top = 0
            Width = 8
            Hint = ''
            Style = tbsDivider
            Caption = 'UniToolButton8'
            TabOrder = 15
          end
          object UniToolButton17: TUniToolButton
            Left = 494
            Top = 0
            Action = DatasetEdit1
            ImageIndex = 4
            TabOrder = 8
          end
          object UniToolButton18: TUniToolButton
            Left = 517
            Top = 0
            Width = 8
            Hint = ''
            Style = tbsDivider
            Caption = 'UniToolButton18'
            TabOrder = 9
          end
          object UniToolButton19: TUniToolButton
            Left = 525
            Top = 0
            Action = DatasetCancel1
            ImageIndex = 2
            TabOrder = 10
          end
          object UniToolButton16: TUniToolButton
            Left = 548
            Top = 0
            Width = 8
            Hint = ''
            Style = tbsDivider
            Caption = 'UniToolButton16'
            TabOrder = 7
          end
          object UniToolButton21: TUniToolButton
            Left = 556
            Top = 0
            Hint = ''
            ImageIndex = 18
            Caption = 'UniToolButton21'
            TabOrder = 12
            OnClick = UniToolButton21Click
          end
          object UniToolButton20: TUniToolButton
            Left = 579
            Top = 0
            Width = 8
            Hint = ''
            Style = tbsDivider
            Caption = 'UniToolButton20'
            TabOrder = 11
          end
          object UniToolButton27: TUniToolButton
            Left = 587
            Top = 0
            Action = DatasetRefresh1
            ImageIndex = 27
            TabOrder = 16
          end
          object UniToolButton28: TUniToolButton
            Left = 610
            Top = 0
            Width = 8
            Hint = ''
            Style = tbsDivider
            Caption = 'UniToolButton28'
            TabOrder = 17
          end
        end
        object UniDBDateTimePicker1: TUniDBDateTimePicker
          Left = 841
          Top = 25
          Width = 162
          Hint = ''
          DataField = 'conDate'
          DataSource = ContractsQsrc
          DateTime = 43933.000000000000000000
          DateFormat = 'yyyy-MM-dd'
          TimeFormat = 'HH:mm:ss'
          TabOrder = 2
          ParentFont = False
          Font.Style = [fsBold]
          FieldLabel = 'Contract Date'
          FieldLabelWidth = 60
        end
      end
      object UniContainerPanel1: TUniContainerPanel
        Left = 14
        Top = 71
        Width = 681
        Height = 182
        Hint = ''
        ParentColor = False
        TabOrder = 2
        Layout = 'vbox'
        LayoutAttribs.Align = 'center'
        LayoutConfig.Width = '90%'
        LayoutConfig.Margin = '15 0 0 0'
        object TenantFieldSet: TUniFieldSet
          Left = 3
          Top = 3
          Width = 553
          Height = 167
          Hint = ''
          Title = 'Tenant Data'
          LayoutConfig.Flex = 1
          LayoutConfig.Width = '80%'
          TabOrder = 1
          object UniFieldContainer2: TUniFieldContainer
            Left = 19
            Top = 16
            Width = 534
            Height = 28
            Hint = ''
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            ParentColor = False
            TabOrder = 5
            Layout = 'hbox'
            LayoutAttribs.Align = 'middle'
            LayoutConfig.Anchor = '100%'
            LayoutConfig.Margin = '5 0 0 0'
            object edTname: TUniDBEdit
              Left = 11
              Top = 0
              Width = 172
              Height = 25
              Hint = 'Tenant'
              DataField = 'Name'
              DataSource = TenantsSrc
              ParentFont = False
              Font.Charset = ANSI_CHARSET
              Font.Height = -13
              Font.Name = 'Tajawal'
              Font.Style = [fsBold]
              TabOrder = 1
              LayoutConfig.Flex = 1
              FieldLabel = 'Tenant Name'
              OnKeyPress = edTnameKeyPress
            end
          end
          object edTIDNo: TUniDBEdit
            Left = 24
            Top = 47
            Width = 121
            Height = 25
            Hint = ''
            DataField = 'IqamaID'
            DataSource = TenantsSrc
            ParentFont = False
            Font.Charset = ANSI_CHARSET
            Font.Height = -13
            Font.Name = 'Tajawal'
            Font.Style = [fsBold]
            TabOrder = 2
            ClientEvents.ExtEvents.Strings = (
              
                'keydown=function keydown(sender, e, eOpts)'#13#10'{'#13#10'   var ok ='#13#10'    ' +
                '    event.keyCode == 8 || //backspace'#13#10'        event.keyCode == ' +
                '9 || //tab'#13#10'        event.keyCode == 13 || //enter  '#13#10'        ev' +
                'ent.keyCode >= 35 && event.keyCode <= 37 || //end, home, left ar' +
                'row '#13#10'        event.keyCode == 39 || //right arrow, downd arrow,' +
                ' insert, delete'#13#10'        event.keyCode == 45 || //insert'#13#10'      ' +
                '  event.keyCode == 46 || //delete'#13#10'        event.keyCode >= 96 &' +
                '& event.keyCode <= 105 || // 0-9 on keypad'#13#10'        event.keyCod' +
                'e >= 48 && event.keyCode <= 57; // 0-9'#13#10#13#10#13#10'    if (!ok) {'#13#10'    ' +
                '    e.preventDefault();'#13#10'    }'#13#10'}')
            LayoutConfig.Margin = '5 0 0 0'
            FieldLabel = 'Tenant ID'
            FieldLabelWidth = 70
            OnKeyPress = edTIDNoKeyPress
          end
          object UniFieldContainer1: TUniFieldContainer
            Left = 16
            Top = 73
            Width = 534
            Height = 28
            Hint = ''
            ParentColor = False
            TabOrder = 4
            Layout = 'hbox'
            LayoutConfig.Anchor = '100%'
            LayoutConfig.Margin = '5 0 0 0'
            object edTph1: TUniDBEdit
              Left = 25
              Top = 2
              Width = 200
              Height = 25
              Hint = ''
              DataField = 'phone1'
              DataSource = TenantsSrc
              ParentFont = False
              Font.Charset = ANSI_CHARSET
              Font.Height = -13
              Font.Name = 'Tajawal'
              Font.Style = [fsBold]
              TabOrder = 2
              ClientEvents.ExtEvents.Strings = (
                
                  'keypress=function keypress(sender, e, eOpts)'#13#10'{'#13#10'     var ok ='#13#10 +
                  '        event.keyCode == 8 || //backspace'#13#10'        event.keyCode' +
                  ' == 9 || //tab'#13#10'        event.keyCode == 13 || //enter  '#13#10'      ' +
                  '  event.keyCode >= 35 && event.keyCode <= 37 || //end, home, lef' +
                  't arrow '#13#10'        event.keyCode == 39 || //right arrow, downd ar' +
                  'row, insert, delete'#13#10'        event.keyCode == 45 || //insert'#13#10'  ' +
                  '      event.keyCode == 46 || //delete'#13#10'        event.keyCode >= ' +
                  '96 && event.keyCode <= 105 || // 0-9 on keypad'#13#10'        event.ke' +
                  'yCode >= 48 && event.keyCode <= 57; // 0-9'#13#10#13#10#13#10'    if (!ok) {'#13#10 +
                  '        e.preventDefault();'#13#10'    }'#13#10'}')
              FieldLabel = 'Mobile 1'
              FieldLabelWidth = 70
              OnKeyPress = edTph1KeyPress
            end
            object edTph2: TUniDBEdit
              Left = 226
              Top = 2
              Width = 200
              Height = 25
              Hint = ''
              DataField = 'phone2'
              DataSource = TenantsSrc
              ParentFont = False
              Font.Charset = ANSI_CHARSET
              Font.Height = -13
              Font.Name = 'Tajawal'
              Font.Style = [fsBold]
              TabOrder = 1
              ClientEvents.ExtEvents.Strings = (
                
                  'keypress=function keypress(sender, e, eOpts)'#13#10'{'#13#10'     var ok ='#13#10 +
                  '        event.keyCode == 8 || //backspace'#13#10'        event.keyCode' +
                  ' == 9 || //tab'#13#10'        event.keyCode == 13 || //enter  '#13#10'      ' +
                  '  event.keyCode >= 35 && event.keyCode <= 37 || //end, home, lef' +
                  't arrow '#13#10'        event.keyCode == 39 || //right arrow, downd ar' +
                  'row, insert, delete'#13#10'        event.keyCode == 45 || //insert'#13#10'  ' +
                  '      event.keyCode == 46 || //delete'#13#10'        event.keyCode >= ' +
                  '96 && event.keyCode <= 105 || // 0-9 on keypad'#13#10'        event.ke' +
                  'yCode >= 48 && event.keyCode <= 57; // 0-9'#13#10#13#10#13#10'    if (!ok) {'#13#10 +
                  '        e.preventDefault();'#13#10'    }'#13#10'}')
              LayoutConfig.Margin = '0 0 0 5'
              FieldLabel = 'Mobile 2'
              FieldLabelWidth = 70
              OnKeyPress = edTph2KeyPress
            end
          end
          object edTmail: TUniDBEdit
            Left = 24
            Top = 109
            Width = 121
            Height = 25
            Hint = ''
            DataField = 'eMail'
            DataSource = TenantsSrc
            ParentFont = False
            Font.Charset = ANSI_CHARSET
            Font.Height = -13
            Font.Name = 'Tajawal'
            Font.Style = [fsBold]
            TabOrder = 1
            LayoutConfig.Margin = '5 0 0 0'
            FieldLabel = 'Email'
            FieldLabelWidth = 70
            OnKeyPress = edTmailKeyPress
          end
          object edTwork: TUniDBEdit
            Left = 24
            Top = 140
            Width = 121
            Height = 25
            Hint = ''
            DataField = 'workPlace'
            DataSource = TenantsSrc
            ParentFont = False
            Font.Charset = ANSI_CHARSET
            Font.Height = -13
            Font.Name = 'Tajawal'
            Font.Style = [fsBold]
            TabOrder = 3
            LayoutConfig.Margin = '5 0 0 0'
            FieldLabel = 'Work Location'
          end
        end
      end
      object pnlSelectEstUnt: TUniPanel
        Left = 17
        Top = 259
        Width = 680
        Height = 50
        Hint = ''
        TabOrder = 3
        Caption = ''
        Layout = 'hbox'
        LayoutAttribs.Align = 'middle'
        LayoutAttribs.Pack = 'center'
        LayoutConfig.Width = '90%'
        object DBLookupEstates: TUniDBLookupComboBox
          Left = 88
          Top = 15
          Width = 126
          Height = 27
          Hint = ''
          ListField = 'estNo;estName'
          ListSource = EstatesSrc
          KeyField = 'ID'
          ListFieldIndex = 0
          ParentFont = False
          Font.Charset = ANSI_CHARSET
          Font.Height = -13
          Font.Name = 'Tajawal'
          Font.Style = [fsBold]
          AnyMatch = True
          TabOrder = 1
          Color = clWindow
          MatchFieldWidth = False
          RemoteQuery = True
          LayoutConfig.Width = '30%'
          LayoutConfig.Margin = '5 5 5 5'
          FieldLabel = 'Select Estate'
          FieldLabelWidth = 90
          Style = csDropDown
          OnSelect = DBLookupEstatesSelect
        end
        object DBLookupUnits: TUniDBLookupComboBox
          Left = 279
          Top = 15
          Width = 126
          Height = 27
          Hint = ''
          ListField = 'Unit'
          ListSource = UnitsSrc
          KeyField = 'ID'
          ListFieldIndex = 0
          ParentFont = False
          Font.Charset = ANSI_CHARSET
          Font.Height = -13
          Font.Name = 'Tajawal'
          Font.Style = [fsBold]
          AnyMatch = True
          TabOrder = 2
          Color = clWindow
          MatchFieldWidth = False
          RemoteQuery = True
          LayoutConfig.Width = '30%'
          LayoutConfig.Margin = '5 5 5 5'
          FieldLabel = 'Select Unit'
          FieldLabelWidth = 90
          Style = csDropDown
          OnSelect = DBLookupUnitsSelect
        end
      end
      object pnlUnitDetails: TUniContainerPanel
        Left = 14
        Top = 315
        Width = 668
        Height = 60
        Hint = ''
        ParentColor = False
        TabOrder = 4
        Layout = 'fit'
        LayoutConfig.Width = '90%'
        object grdUnitDetails: TUniDBGrid
          Left = 109
          Top = 11
          Width = 135
          Height = 46
          Hint = ''
          DataSource = UnitDetailsQsrc
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgAutoRefreshRow]
          ReadOnly = True
          WebOptions.Paged = False
          WebOptions.FetchAll = True
          LoadMask.Message = 'Loading data...'
          ForceFit = True
          LayoutConfig.Flex = 1
          LayoutConfig.Width = '100%'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Tajawal'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          Columns = <
            item
              FieldName = 'Unit'
              Title.Caption = 'Unit'
              Width = 284
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Name = 'Tajawal'
              Font.Style = [fsBold]
            end
            item
              FieldName = 'Rooms'
              Title.Caption = 'Rooms'
              Width = 284
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Name = 'Tajawal'
              Font.Style = [fsBold]
            end
            item
              FieldName = 'Floor'
              Title.Caption = 'Floor'
              Width = 144
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Name = 'Tajawal'
              Font.Style = [fsBold]
            end
            item
              FieldName = 'Price1'
              Title.Caption = 'Price1'
              Width = 74
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Name = 'Tajawal'
              Font.Style = [fsBold]
            end
            item
              FieldName = 'Price2'
              Title.Caption = 'Price2'
              Width = 74
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Name = 'Tajawal'
              Font.Style = [fsBold]
            end
            item
              FieldName = 'Price3'
              Title.Caption = 'Price3'
              Width = 74
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Name = 'Tajawal'
              Font.Style = [fsBold]
            end
            item
              FieldName = 'Price4'
              Title.Caption = 'Price4'
              Width = 74
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Name = 'Tajawal'
              Font.Style = [fsBold]
            end
            item
              FieldName = 'Notes'
              Title.Caption = 'Notes'
              Width = 529
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Name = 'Tajawal'
              Font.Style = [fsBold]
            end
            item
              FieldName = 'Electricity'
              Title.Caption = 'E'
              Width = 39
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Name = 'Tajawal'
              Font.Style = [fsBold]
            end
            item
              FieldName = 'Kitchen'
              Title.Caption = 'K'
              Width = 39
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Name = 'Tajawal'
              Font.Style = [fsBold]
            end
            item
              FieldName = 'Conditions'
              Title.Caption = 'C'
              Width = 39
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Name = 'Tajawal'
              Font.Style = [fsBold]
            end
            item
              FieldName = 'isRented'
              Title.Caption = 'R'
              Width = 39
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Name = 'Tajawal'
              Font.Style = [fsBold]
            end
            item
              FieldName = 'ESTID'
              Title.Caption = 'ESTID'
              Width = 74
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Name = 'Tajawal'
              Font.Style = [fsBold]
            end
            item
              FieldName = 'ownerID'
              Title.Caption = 'ownerID'
              Width = 74
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Name = 'Tajawal'
              Font.Style = [fsBold]
            end
            item
              FieldName = 'ID'
              Title.Caption = 'ID'
              Width = 74
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Name = 'Tajawal'
              Font.Style = [fsBold]
            end>
        end
      end
      object ContractBox: TUniGroupBox
        Left = 17
        Top = 381
        Width = 659
        Height = 283
        Hint = ''
        Caption = 'ContractBox'
        Layout = 'vbox'
        LayoutAttribs.Align = 'center'
        LayoutAttribs.Pack = 'start'
        LayoutConfig.Flex = 1
        LayoutConfig.Width = '95%'
        TabOrder = 5
        object Cont1: TUniContainerPanel
          Left = 3
          Top = 16
          Width = 638
          Height = 33
          Hint = ''
          ParentColor = False
          Color = clBtnShadow
          TabOrder = 1
          Layout = 'hbox'
          LayoutAttribs.Align = 'middle'
          LayoutAttribs.Pack = 'center'
          LayoutAttribs.Padding = '5'
          LayoutConfig.Width = '100%'
          LayoutConfig.Margin = '5 0 0 0'
          object ContractPeriodCB: TUniComboBox
            Left = 12
            Top = 8
            Width = 145
            Height = 26
            Hint = ''
            Style = csDropDownList
            Text = ''
            Items.Strings = (
              'Yearly'
              'Monthly')
            TabOrder = 2
            LayoutConfig.Flex = 1
            LayoutConfig.Margin = '0 3 0 10'
            FieldLabel = 'Contract Period'
            FieldLabelWidth = 60
            IconItems = <>
          end
          object ContractFrom: TUniDateTimePicker
            Left = 178
            Top = 7
            Width = 120
            Hint = ''
            DateTime = 43931.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            TabOrder = 3
            ParentFont = False
            Font.Charset = ANSI_CHARSET
            Font.Height = -13
            Font.Name = 'Tajawal'
            Font.Style = [fsBold]
            LayoutConfig.Flex = 1
            LayoutConfig.Margin = '0 3 0 20'
            FieldLabel = 'Starts From'
            FieldLabelWidth = 50
            OnChange = ContractFromChange
          end
          object ContractTo: TUniDateTimePicker
            Left = 326
            Top = 3
            Width = 120
            Hint = ''
            DateTime = 43931.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            ReadOnly = True
            TabOrder = 4
            ParentFont = False
            Font.Charset = ANSI_CHARSET
            Font.Height = -13
            Font.Name = 'Tajawal'
            Font.Style = [fsBold]
            LayoutConfig.Flex = 1
            LayoutConfig.Margin = '0 20 0 3'
            FieldLabel = 'Ends In'
            FieldLabelWidth = 70
          end
          object PaymentsCB: TUniComboBox
            Left = 476
            Top = 3
            Width = 145
            Height = 26
            Hint = ''
            Style = csDropDownList
            Text = ''
            Items.Strings = (
              '1 Payment'
              '2 Payments'
              '3 Payments'
              '4 Payments')
            TabOrder = 1
            LayoutConfig.Flex = 1
            LayoutConfig.Margin = '0 10 0 3'
            FieldLabel = 'Payment Type'
            FieldLabelWidth = 70
            IconItems = <>
            OnCloseUp = PaymentsCBCloseUp
          end
        end
        object PymtSchPnl: TUniContainerPanel
          Left = 3
          Top = 51
          Width = 649
          Height = 57
          Hint = ''
          Visible = False
          ParentColor = False
          TabOrder = 2
          Layout = 'hbox'
          LayoutAttribs.Align = 'middle'
          LayoutAttribs.Pack = 'center'
          LayoutConfig.Width = '100%'
          LayoutConfig.Margin = '5 0 5 0'
          object UniLabel1: TUniLabel
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
        object PaymentsListBox: TUniListBox
          Left = 3
          Top = 114
          Width = 74
          Height = 85
          Hint = ''
          Visible = False
          TabOrder = 3
        end
        object UniContainerPanel4: TUniContainerPanel
          Left = 101
          Top = 114
          Width = 533
          Height = 39
          Hint = ''
          ParentColor = False
          TabOrder = 4
          Layout = 'hbox'
          LayoutAttribs.Align = 'middle'
          LayoutConfig.Margin = '5 0 5 0'
          object InsurEdt: TUniNumberEdit
            Left = 40
            Top = 3
            Width = 121
            Hint = ''
            TabOrder = 1
            SelectOnFocus = True
            FieldLabel = 'Insurance'
            FieldLabelWidth = 65
            LayoutConfig.Flex = 1
            LayoutConfig.Margin = '0 5 0 5'
            DecimalSeparator = '.'
          end
          object WaterEdt: TUniNumberEdit
            Left = 167
            Top = 3
            Width = 121
            Hint = ''
            TabOrder = 2
            SelectOnFocus = True
            FieldLabel = 'Water'
            FieldLabelWidth = 60
            LayoutConfig.Flex = 1
            LayoutConfig.Margin = '0 5 0 5'
            DecimalSeparator = '.'
          end
          object ElectEdt: TUniFormattedNumberEdit
            Left = 344
            Top = 3
            Width = 121
            Hint = ''
            FormattedInput.ShowCurrencySign = True
            FormattedInput.ShowThousandSeparator = False
            FormattedInput.CurrencySignPos = cpsRight
            FormattedInput.DefaultCurrencySign = False
            FormattedInput.CurrencySign = '  %'
            FormattedInput.CurrencySignSpace = crsAvailable
            TabOrder = 3
            SelectOnFocus = True
            FieldLabel = 'Shared Electricity'
            FieldLabelWidth = 80
            LayoutConfig.Flex = 1
            LayoutConfig.Margin = '0 5 0 5'
            DecimalSeparator = '.'
            ThousandSeparator = ','
          end
        end
        object PmtVerticalGrid: TUniDBVerticalGrid
          Left = 116
          Top = 141
          Width = 405
          Height = 139
          Hint = ''
          DataSource = PaymensQs
          FieldsColumn.Alignment = taCenter
          FieldsColumn.Title.Alignment = taCenter
          FieldsColumn.TitleField = 'PaymentSN'
          FieldsColumn.Locked = False
          VerticalColumns = <
            item
              Alignment = taCenter
              Width = 80
              Color = 15130800
              Title.Alignment = taCenter
              Title.Caption = 'A'
              Title.Color = 15631086
              Title.Font.Style = [fsBold]
            end
            item
              Alignment = taCenter
              Width = 80
              Color = 15128749
              Title.Alignment = taCenter
              Title.Caption = 'B'
              Title.Color = 16775936
              Title.Font.Style = [fsBold]
            end
            item
              Alignment = taCenter
              Width = 80
              Color = 15138764
              Title.Alignment = taCenter
              Title.Caption = 'C'
              Title.Color = 4678655
              Title.Font.Style = [fsBold]
            end
            item
              Alignment = taCenter
              Width = 80
              Color = 13434854
              Title.Alignment = taCenter
              Title.Caption = 'D'
              Title.Color = 8388352
              Title.Font.Style = [fsBold]
            end>
          DefaultColWidth = 80
          HeaderTitle = 'Payments Schdule'
          HeaderTitleAlign = taCenter
          TabOrder = 5
          LayoutConfig.Margin = '5 0 5 0'
          LoadMask.WaitData = True
          LoadMask.Message = 'Loading data...'
          LoadMask.Target = ContractBox
          Columns = <
            item
              FieldName = 'PaymentDate'
              Title.Alignment = taCenter
              Title.Caption = 'PaymentDate'
              Width = 75
              Font.Charset = ANSI_CHARSET
              Font.Name = 'Tajawal'
              Font.Style = [fsBold]
              Alignment = taCenter
              ReadOnly = True
            end
            item
              FieldName = 'PaymentValu'
              Title.Alignment = taCenter
              Title.Caption = 'PaymentValu'
              Width = 66
              Font.Charset = ANSI_CHARSET
              Font.Name = 'Tajawal'
              Alignment = taCenter
              ReadOnly = True
            end
            item
              FieldName = 'Paid'
              Title.Alignment = taCenter
              Title.Caption = 'Paid'
              Width = 34
              Font.Charset = ANSI_CHARSET
              Font.Name = 'Tajawal'
              Alignment = taCenter
              ReadOnly = True
            end>
        end
      end
    end
  end
  inherited siLang1: TsiLang
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400520063006F006E007400720061006300740073004600
      0100520065006E007400200043006F006E007400720061006300740073000100
      3906420648062F0620002706440627064A062C062706310601000D000A005500
      6E00690054006F006F006C0042007500740074006F006E003600010055006E00
      690054006F006F006C0042007500740074006F006E003600010001000D000A00
      55006E00690054006F006F006C0042007500740074006F006E00320001005500
      6E00690054006F006F006C0042007500740074006F006E003200010001000D00
      0A0055006E00690054006F006F006C0042007500740074006F006E0034000100
      55006E00690054006F006F006C0042007500740074006F006E00340001000100
      0D000A0055006E00690054006F006F006C0042007500740074006F006E003200
      3200010055006E00690054006F006F006C0042007500740074006F006E003200
      3200010001000D000A0055006E00690054006F006F006C004200750074007400
      6F006E003700010055006E00690054006F006F006C0042007500740074006F00
      6E003700010001000D000A0055006E00690054006F006F006C00420075007400
      74006F006E003900010055006E00690054006F006F006C004200750074007400
      6F006E003700010001000D000A0055006E00690054006F006F006C0042007500
      740074006F006E0031003100010055006E00690054006F006F006C0042007500
      740074006F006E003900010001000D000A0055006E00690054006F006F006C00
      42007500740074006F006E0031003300010055006E00690054006F006F006C00
      42007500740074006F006E0031003100010001000D000A0055006E0069005400
      6F006F006C0042007500740074006F006E0032003300010055006E0069005400
      6F006F006C0042007500740074006F006E0032003300010001000D000A005500
      6E00690054006F006F006C0042007500740074006F006E003200340001005500
      6E00690054006F006F006C0042007500740074006F006E003200340001000100
      0D000A0055006E00690054006F006F006C0042007500740074006F006E003100
      3500010055006E00690054006F006F006C0042007500740074006F006E003100
      3300010001000D000A0055006E00690054006F006F006C004200750074007400
      6F006E0032003600010055006E00690054006F006F006C004200750074007400
      6F006E0031003500010001000D000A0055006E00690054006F006F006C004200
      7500740074006F006E003800010055006E00690054006F006F006C0042007500
      740074006F006E003800010001000D000A0055006E00690054006F006F006C00
      42007500740074006F006E0031003800010055006E00690054006F006F006C00
      42007500740074006F006E0031003800010001000D000A0055006E0069005400
      6F006F006C0042007500740074006F006E0031003600010055006E0069005400
      6F006F006C0042007500740074006F006E0031003600010001000D000A005500
      6E00690054006F006F006C0042007500740074006F006E003200310001005500
      6E00690054006F006F006C0042007500740074006F006E003200310001000100
      0D000A0055006E00690054006F006F006C0042007500740074006F006E003200
      3000010055006E00690054006F006F006C0042007500740074006F006E003200
      3000010001000D000A0055006E00690054006F006F006C004200750074007400
      6F006E0032003700010055006E00690054006F006F006C004200750074007400
      6F006E0032003700010001000D000A0055006E00690054006F006F006C004200
      7500740074006F006E0032003800010055006E00690054006F006F006C004200
      7500740074006F006E0032003800010001000D000A0044006100740061007300
      6500740046006900720073007400310001002600460069007200730074000100
      01000D000A0044006100740061007300650074005000720069006F0072003100
      010026005000720069006F007200010001000D000A0044006100740061007300
      650074004E006500780074003100010026004E00650078007400010001000D00
      0A0044006100740061007300650074004C006100730074003100010026004C00
      610073007400010001000D000A00440061007400610073006500740049006E00
      730065007200740031000100260049006E007300650072007400010001000D00
      0A004400610074006100730065007400440065006C0065007400650031000100
      2600440065006C00650074006500010001000D000A0044006100740061007300
      6500740045006400690074003100010026004500640069007400010001000D00
      0A00440061007400610073006500740050006F00730074003100010050002600
      6F0073007400010001000D000A00440061007400610073006500740043006100
      6E00630065006C00310001002600430061006E00630065006C00010001000D00
      0A00440061007400610073006500740052006500660072006500730068003100
      010026005200650066007200650073006800010001000D000A0070006E006C00
      530065006C0065006300740045007300740055006E007400010070006E006C00
      530065006C0065006300740045007300740055006E007400010001000D000A00
      43006F006E007400720061006300740042006F007800010043006F006E007400
      720061006300740042006F007800010028064A062706460627062A0620002706
      4406390642062F0601000D000A0055006E0069004C006100620065006C003100
      01005000610079006D00740020005300630068006500640075006C0065003A00
      01002C062F064806440629062000270644062F064106390627062A0601000D00
      0A0073007400480069006E00740073005F0055006E00690063006F0064006500
      0D000A0044006100740061007300650074004600690072007300740031000100
      46006900720073007400010001000D000A004400610074006100730065007400
      5000720069006F007200310001005000720069006F007200010001000D000A00
      44006100740061007300650074004E00650078007400310001004E0065007800
      7400010001000D000A0044006100740061007300650074004C00610073007400
      310001004C00610073007400010001000D000A00440061007400610073006500
      740049006E0073006500720074003100010049006E0073006500720074000100
      01000D000A004400610074006100730065007400440065006C00650074006500
      31000100440065006C00650074006500010001000D000A004400610074006100
      7300650074004500640069007400310001004500640069007400010001000D00
      0A00440061007400610073006500740050006F00730074003100010050006F00
      73007400010001000D000A004400610074006100730065007400430061006E00
      630065006C0031000100430061006E00630065006C00010001000D000A004400
      6100740061007300650074005200650066007200650073006800310001005200
      650066007200650073006800010001000D000A00730074004400690073007000
      6C00610079004C006100620065006C0073005F0055006E00690063006F006400
      65000D000A004500730074006100740065007300510072007900490044000100
      49004400010001000D000A004500730074006100740065007300510072007900
      6F0077006E00650072004900440001006F0077006E0065007200490044000100
      01000D000A004500730074006100740065007300510072007900650073007400
      4E006F0001006500730074004E006F00010001000D000A004500730074006100
      7400650073005100720079006500730074004E0061006D006500010065007300
      74004E0061006D006500010001000D000A004500730074006100740065007300
      5100720079006500730074004400690073007400720069006300740001006500
      7300740044006900730074007200690063007400010001000D000A0045007300
      7400610074006500730051007200790065007300740053007400720065006500
      74000100650073007400530074007200650065007400010001000D000A004500
      73007400610074006500730051007200790055006E0069007400730043006F00
      75006E007400010055006E0069007400730043006F0075006E00740001000100
      0D000A00450073007400610074006500730051007200790055006E0069007400
      7300520065006E00740065006400010055006E00690074007300520065006E00
      740065006400010001000D000A0055006E006900740073005100720079005500
      6E0069007400010055006E0069007400010001000D000A0055006E0069007400
      730051007200790052006F006F006D007300010052006F006F006D0073000100
      01000D000A0055006E0069007400730051007200790046006C006F006F007200
      010046006C006F006F007200010001000D000A0055006E006900740073005100
      7200790050007200690063006500310001005000720069006300650031000100
      01000D000A0055006E0069007400730051007200790050007200690063006500
      32000100500072006900630065003200010001000D000A0055006E0069007400
      7300510072007900500072006900630065003300010050007200690063006500
      3300010001000D000A0055006E00690074007300510072007900500072006900
      6300650034000100500072006900630065003400010001000D000A0055006E00
      6900740073005100720079004E006F0074006500730001004E006F0074006500
      7300010001000D000A0055006E0069007400730051007200790045006C006500
      6300740072006900630069007400790001004500010001000D000A0055006E00
      6900740073005100720079004B00690074006300680065006E0001004B000100
      01000D000A0055006E0069007400730051007200790043006F006E0064006900
      740069006F006E00730001004300010001000D000A0055006E00690074007300
      51007200790069007300520065006E0074006500640001005200010001000D00
      0A0055006E006900740073005100720079004500530054004900440001004500
      5300540049004400010001000D000A0055006E00690074007300510072007900
      6F0077006E00650072004900440001006F0077006E0065007200490044000100
      01000D000A0055006E0069007400730051007200790049004400010049004400
      010001000D000A0055006E0069007400440065007400610069006C0073005100
      55006E0069007400010055006E0069007400010001000D000A0055006E006900
      7400440065007400610069006C007300510052006F006F006D00730001005200
      6F006F006D007300010001000D000A0055006E00690074004400650074006100
      69006C007300510046006C006F006F007200010046006C006F006F0072000100
      01000D000A0055006E0069007400440065007400610069006C00730051005000
      720069006300650031000100500072006900630065003100010001000D000A00
      55006E0069007400440065007400610069006C00730051005000720069006300
      650032000100500072006900630065003200010001000D000A0055006E006900
      7400440065007400610069006C00730051005000720069006300650033000100
      500072006900630065003300010001000D000A0055006E006900740044006500
      7400610069006C00730051005000720069006300650034000100500072006900
      630065003400010001000D000A0055006E006900740044006500740061006900
      6C00730051004E006F0074006500730001004E006F0074006500730001000100
      0D000A0055006E0069007400440065007400610069006C007300510045006C00
      650063007400720069006300690074007900010045006C006500630074007200
      69006300690074007900010001000D000A0055006E0069007400440065007400
      610069006C00730051004B00690074006300680065006E0001004B0069007400
      6300680065006E00010001000D000A0055006E00690074004400650074006100
      69006C007300510043006F006E0064006900740069006F006E00730001004300
      6F006E0064006900740069006F006E007300010001000D000A0055006E006900
      7400440065007400610069006C00730051004500530054004900440001004500
      5300540049004400010001000D000A0055006E00690074004400650074006100
      69006C00730051006F0077006E00650072004900440001006F0077006E006500
      720049004400010001000D000A0055006E006900740044006500740061006900
      6C007300510069007300520065006E0074006500640001006900730052006500
      6E00740065006400010001000D000A0055006E00690074004400650074006100
      69006C007300510049004400010049004400010001000D000A00500061007900
      6D0065006E007300510049004400010049004400010001000D000A0050006100
      79006D0065006E007300510043006F006E00740072006100630074004E006F00
      010043006F006E00740072006100630074004E006F00010001000D000A005000
      610079006D0065006E00730051005000610079006D0065006E00740053004E00
      01005000610079006D0065006E00740053004E00010001000D000A0050006100
      79006D0065006E00730051005000610079006D0065006E007400440061007400
      650001005000610079006D0065006E0074004400610074006500010001000D00
      0A005000610079006D0065006E00730051005000610079006D0065006E007400
      560061006C00750001005000610079006D0065006E007400560061006C007500
      010001000D000A005000610079006D0065006E00730051005000610069006400
      01005000610069006400010001000D000A005000610079006D0065006E007300
      5100500061007900440061007400650001005000610079004400610074006500
      010001000D000A005000610079006D0065006E00730051005000610079005400
      79007000650001005000610079005400790070006500010001000D000A007300
      740046006F006E00740073005F0055006E00690063006F00640065000D000A00
      730074004D0075006C00740069004C0069006E00650073005F0055006E006900
      63006F00640065000D000A0043006F006E007400720061006300740050006500
      720069006F006400430042002E004900740065006D0073000100590065006100
      72006C0079002C004D006F006E00740068006C00790001003306460648064A06
      2C003406470631064A0601000D000A005000610079006D0065006E0074007300
      430042002E004900740065006D00730001002200310020005000610079006D00
      65006E00740022002C002200320020005000610079006D0065006E0074007300
      22002C002200330020005000610079006D0065006E007400730022002C002200
      340020005000610079006D0065006E0074007300220001002200310020002F06
      41063906470622002C002200320020002F0641063906470622002C0022003300
      20002F064106390627062A0622002C002200340020002F064106390627062A06
      220001000D000A007300740044006C0067007300430061007000740069006F00
      6E0073005F0055006E00690063006F00640065000D000A005700610072006E00
      69006E00670001005700610072006E0069006E006700010001000D000A004500
      720072006F00720001004500720072006F007200010001000D000A0049006E00
      66006F0072006D006100740069006F006E00010049006E0066006F0072006D00
      6100740069006F006E00010001000D000A0043006F006E006600690072006D00
      010043006F006E006600690072006D00010001000D000A005900650073000100
      2600590065007300010001000D000A004E006F00010026004E006F0001000100
      0D000A004F004B0001004F004B00010001000D000A00430061006E0063006500
      6C000100430061006E00630065006C00010001000D000A00410062006F007200
      740001002600410062006F0072007400010001000D000A005200650074007200
      79000100260052006500740072007900010001000D000A00490067006E006F00
      7200650001002600490067006E006F0072006500010001000D000A0041006C00
      6C000100260041006C006C00010001000D000A004E006F00200054006F002000
      41006C006C0001004E0026006F00200074006F00200041006C006C0001000100
      0D000A00590065007300200054006F00200041006C006C000100590065007300
      200074006F002000260041006C006C00010001000D000A00480065006C007000
      01002600480065006C007000010001000D000A00730074005300740072006900
      6E00670073005F0055006E00690063006F00640065000D000A00730074004F00
      740068006500720053007400720069006E00670073005F0055006E0069006300
      6F00640065000D000A005400520063006F006E00740072006100630074007300
      46002E004C00610079006F00750074000100660069007400010001000D000A00
      70006E006C00420061007300650043006F006E007400610069006E0065007200
      2E004C00610079006F0075007400010062006F00720064006500720001000100
      0D000A0070006E006C0043006F006E007400720061006300740073002E004C00
      610079006F00750074000100760062006F007800010001000D000A0044004200
      4C006F006F006B007500700043006F006D0062006F0045004D0050002E004600
      690065006C0064004C006100620065006C005300650070006100720061007400
      6F00720001003A00010001000D000A0070006E006C00430065006E0074006500
      72002E004C00610079006F00750074000100760062006F007800010001000D00
      0A0070006E006C0048006500610064002E004C00610079006F00750074000100
      680062006F007800010001000D000A0055006E00690054006F006F006C004200
      6100720031002E004C00610079006F00750074000100680062006F0078000100
      01000D000A0055006E00690054006F006F006C0042007500740074006F006E00
      37002E004C00610079006F00750074000100660069007400010001000D000A00
      55006E00690054006F006F006C0042006100720032002E004C00610079006F00
      750074000100680062006F007800010001000D000A0065006400740045006D00
      70004E004F002E004600690065006C0064004C006100620065006C0053006500
      700061007200610074006F00720001003A00010001000D000A0055006E006900
      43006F006E007400610069006E0065007200500061006E0065006C0031002E00
      4C00610079006F00750074000100760062006F007800010001000D000A005400
      65006E0061006E0074004600690065006C0064005300650074002E004C006100
      79006F0075007400010061006E00630068006F007200010001000D000A005400
      65006E0061006E0074004600690065006C0064005300650074002E0054006900
      74006C0065000100540065006E0061006E007400200044006100740061000100
      28064A062706460627062A06200027064406450633062A0623062C0631060100
      0D000A0055006E0069004600690065006C00640043006F006E00740061006900
      6E006500720032002E004C00610079006F00750074000100680062006F007800
      010001000D000A006500640054006E0061006D0065002E004600690065006C00
      64004C006100620065006C000100540065006E0061006E00740020004E006100
      6D0065000100270633064506200027064406450633062A0623062C0631060100
      0D000A006500640054006E0061006D0065002E004600690065006C0064004C00
      6100620065006C0053006500700061007200610074006F00720001003A000100
      01000D000A00650064005400490044004E006F002E004600690065006C006400
      4C006100620065006C000100540065006E0061006E0074002000490044000100
      310642064506200027064406470648064A06290601000D000A00650064005400
      490044004E006F002E004600690065006C0064004C006100620065006C005300
      6500700061007200610074006F00720001003A00010001000D000A0055006E00
      69004600690065006C00640043006F006E007400610069006E00650072003100
      2E004C00610079006F00750074000100680062006F007800010001000D000A00
      6500640054007000680031002E004600690065006C0064004C00610062006500
      6C0001004D006F00620069006C0065002000310001002C064806270644062000
      310001000D000A006500640054007000680031002E004600690065006C006400
      4C006100620065006C0053006500700061007200610074006F00720001003A00
      010001000D000A006500640054007000680032002E004600690065006C006400
      4C006100620065006C0001004D006F00620069006C0065002000320001002C06
      4806270644062000320001000D000A006500640054007000680032002E004600
      690065006C0064004C006100620065006C005300650070006100720061007400
      6F00720001003A00010001000D000A006500640054006D00610069006C002E00
      4600690065006C0064004C006100620065006C00010045006D00610069006C00
      01002706440627064A0645064A06440601000D000A006500640054006D006100
      69006C002E004600690065006C0064004C006100620065006C00530065007000
      61007200610074006F00720001003A00010001000D000A006500640054007700
      6F0072006B002E004600690065006C0064004C006100620065006C0001005700
      6F0072006B0020004C006F0063006100740069006F006E0001002C0647062906
      20002706440639064506440601000D000A0065006400540077006F0072006B00
      2E004600690065006C0064004C006100620065006C0053006500700061007200
      610074006F00720001003A00010001000D000A0055006E006900440042004400
      610074006500540069006D0065005000690063006B006500720031002E004400
      61007400650046006F0072006D0061007400010079007900790079002D004D00
      4D002D0064006400010001000D000A0055006E00690044004200440061007400
      6500540069006D0065005000690063006B006500720031002E00460069006500
      6C0064004C006100620065006C00010043006F006E0074007200610063007400
      2000440061007400650001002A06270631064A062E0620002706440639064206
      2F0601000D000A0055006E006900440042004400610074006500540069006D00
      65005000690063006B006500720031002E004600690065006C0064004C006100
      620065006C0053006500700061007200610074006F00720001003A0001000100
      0D000A0055006E006900440042004400610074006500540069006D0065005000
      690063006B006500720031002E00540069006D00650046006F0072006D006100
      74000100480048003A006D006D003A0073007300010001000D000A0055006E00
      6900740073005100720079002E00440065007400610069006C00460069006500
      6C0064007300010045005300540049004400010001000D000A0070006E006C00
      530065006C0065006300740045007300740055006E0074002E004C0061007900
      6F00750074000100680062006F007800010001000D000A00440042004C006F00
      6F006B007500700045007300740061007400650073002E004600690065006C00
      64004C006100620065006C000100530065006C00650063007400200045007300
      7400610074006500010027062E062A0631062000270644063906420627063106
      01000D000A00440042004C006F006F006B007500700045007300740061007400
      650073002E004600690065006C0064004C006100620065006C00530065007000
      61007200610074006F00720001003A00010001000D000A00440042004C006F00
      6F006B007500700055006E006900740073002E004600690065006C0064004C00
      6100620065006C000100530065006C00650063007400200055006E0069007400
      010027062E062A06310620002706440648062D062F06470601000D000A004400
      42004C006F006F006B007500700055006E006900740073002E00460069006500
      6C0064004C006100620065006C0053006500700061007200610074006F007200
      01003A00010001000D000A0070006E006C0055006E0069007400440065007400
      610069006C0073002E004C00610079006F007500740001006600690074000100
      01000D000A005000610079006D0065006E00730051002E004400650074006100
      69006C004600690065006C0064007300010043006F006E007400720061006300
      74004E006F00010001000D000A0043006F006E00740072006100630074004200
      6F0078002E004C00610079006F00750074000100760062006F00780001000100
      0D000A0043006F006E00740031002E004C00610079006F007500740001006800
      62006F007800010001000D000A0043006F006E00740072006100630074005000
      6500720069006F006400430042002E004600690065006C0064004C0061006200
      65006C00010043006F006E007400720061006300740020005000650072006900
      6F006400010045062F062906200027064406390642062F0601000D000A004300
      6F006E007400720061006300740050006500720069006F006400430042002E00
      4600690065006C0064004C006100620065006C00530065007000610072006100
      74006F00720001003A00010001000D000A0043006F006E007400720061006300
      7400460072006F006D002E00440061007400650046006F0072006D0061007400
      0100640064002F004D004D002F007900790079007900010001000D000A004300
      6F006E0074007200610063007400460072006F006D002E004600690065006C00
      64004C006100620065006C000100530074006100720074007300200046007200
      6F006D0001004A0628062F06230620004506460601000D000A0043006F006E00
      74007200610063007400460072006F006D002E004600690065006C0064004C00
      6100620065006C0053006500700061007200610074006F00720001003A000100
      01000D000A0043006F006E0074007200610063007400460072006F006D002E00
      540069006D00650046006F0072006D00610074000100480048003A006D006D00
      3A0073007300010001000D000A0043006F006E00740072006100630074005400
      6F002E00440061007400650046006F0072006D00610074000100640064002F00
      4D004D002F007900790079007900010001000D000A0043006F006E0074007200
      61006300740054006F002E004600690065006C0064004C006100620065006C00
      010045006E0064007300200049006E00010048064A0646062A0647064A062000
      41064A0601000D000A0043006F006E007400720061006300740054006F002E00
      4600690065006C0064004C006100620065006C00530065007000610072006100
      74006F00720001003A00010001000D000A0043006F006E007400720061006300
      740054006F002E00540069006D00650046006F0072006D006100740001004800
      48003A006D006D003A0073007300010001000D000A005000610079006D006500
      6E0074007300430042002E004600690065006C0064004C006100620065006C00
      01005000610079006D0065006E00740020005400790070006500010037063106
      4A06420629062000270644062F064106390601000D000A005000610079006D00
      65006E0074007300430042002E004600690065006C0064004C00610062006500
      6C0053006500700061007200610074006F00720001003A00010001000D000A00
      500079006D00740053006300680050006E006C002E004C00610079006F007500
      74000100680062006F007800010001000D000A0050006D00740031002E004600
      690065006C0064004C006100620065006C005300650070006100720061007400
      6F00720001003A00010001000D000A0050006D00740032002E00460069006500
      6C0064004C006100620065006C00010031002D00010001000D000A0050006D00
      740032002E004600690065006C0064004C006100620065006C00530065007000
      61007200610074006F00720001003A00010001000D000A0050006D0074003300
      2E004600690065006C0064004C006100620065006C00010031002D0001000100
      0D000A0050006D00740033002E004600690065006C0064004C00610062006500
      6C0053006500700061007200610074006F00720001003A00010001000D000A00
      50006D00740034002E004600690065006C0064004C006100620065006C000100
      31002D00010001000D000A0050006D00740034002E004600690065006C006400
      4C006100620065006C0053006500700061007200610074006F00720001003A00
      010001000D000A0055006E00690043006F006E007400610069006E0065007200
      500061006E0065006C0034002E004C00610079006F0075007400010068006200
      6F007800010001000D000A0049006E007300750072004500640074002E004600
      690065006C0064004C006100620065006C00010049006E007300750072006100
      6E00630065000100270644062A06230645064A06460601000D000A0049006E00
      7300750072004500640074002E004600690065006C0064004C00610062006500
      6C0053006500700061007200610074006F00720001003A00010001000D000A00
      570061007400650072004500640074002E004600690065006C0064004C006100
      620065006C0001005700610074006500720001002706440645064A0627064706
      01000D000A00570061007400650072004500640074002E004600690065006C00
      64004C006100620065006C0053006500700061007200610074006F0072000100
      3A00010001000D000A0045006C006500630074004500640074002E0046006900
      65006C0064004C006100620065006C0001005300680061007200650064002000
      45006C006500630074007200690063006900740079000100270634062A063106
      2706430620002706440643064706310628062706210601000D000A0045006C00
      6500630074004500640074002E004600690065006C0064004C00610062006500
      6C0053006500700061007200610074006F00720001003A00010001000D000A00
      50006D00740056006500720074006900630061006C0047007200690064002E00
      4800650061006400650072005400690074006C00650001005000610079006D00
      65006E00740073002000530063006800640075006C00650001002C062F064806
      44062000270644062F064106390627062A0601000D000A00730074004C006F00
      630061006C00650073005F0055006E00690063006F00640065000D000A007300
      740043006F006C006C0065006300740069006F006E0073005F0055006E006900
      63006F00640065000D000A006700720064004F0077006E006500720073002E00
      43006F006C0075006D006E0073005B0030005D002E0043006800650063006B00
      42006F0078004600690065006C0064002E004600690065006C00640056006100
      6C00750065007300010074007200750065003B00660061006C00730065000100
      01000D000A006700720064004F0077006E006500720073002E0043006F006C00
      75006D006E0073005B0030005D002E005400690074006C0065002E0043006100
      7000740069006F006E00010043006F006E007400720061006300740049004400
      010027064406390642062F0601000D000A006700720064004F0077006E006500
      720073002E0043006F006C0075006D006E0073005B0031005D002E0043006800
      650063006B0042006F0078004600690065006C0064002E004600690065006C00
      6400560061006C00750065007300010074007200750065003B00660061006C00
      73006500010001000D000A006700720064004F0077006E006500720073002E00
      43006F006C0075006D006E0073005B0031005D002E005400690074006C006500
      2E00430061007000740069006F006E0001004E0061006D006500010027063306
      4506200027064406450633062A0623062C06310601000D000A00670072006400
      55006E0069007400440065007400610069006C0073002E0043006F006C007500
      6D006E0073005B0030005D002E0043006800650063006B0042006F0078004600
      690065006C0064002E004600690065006C006400560061006C00750065007300
      010074007200750065003B00660061006C0073006500010001000D000A006700
      7200640055006E0069007400440065007400610069006C0073002E0043006F00
      6C0075006D006E0073005B0030005D002E005400690074006C0065002E004300
      61007000740069006F006E00010055006E006900740001002706440648062D06
      2F06290601000D000A0067007200640055006E00690074004400650074006100
      69006C0073002E0043006F006C0075006D006E0073005B0031005D002E004300
      6800650063006B0042006F0078004600690065006C0064002E00460069006500
      6C006400560061006C00750065007300010074007200750065003B0066006100
      6C0073006500010001000D000A0067007200640055006E006900740044006500
      7400610069006C0073002E0043006F006C0075006D006E0073005B0031005D00
      2E005400690074006C0065002E00430061007000740069006F006E0001005200
      6F006F006D0073000100270644063A063106410601000D000A00670072006400
      55006E0069007400440065007400610069006C0073002E0043006F006C007500
      6D006E0073005B0032005D002E0043006800650063006B0042006F0078004600
      690065006C0064002E004600690065006C006400560061006C00750065007300
      010074007200750065003B00660061006C0073006500010001000D000A006700
      7200640055006E0069007400440065007400610069006C0073002E0043006F00
      6C0075006D006E0073005B0032005D002E005400690074006C0065002E004300
      61007000740069006F006E00010046006C006F006F0072000100270644063706
      27062806420601000D000A0067007200640055006E0069007400440065007400
      610069006C0073002E0043006F006C0075006D006E0073005B0033005D002E00
      43006800650063006B0042006F0078004600690065006C0064002E0046006900
      65006C006400560061006C00750065007300010074007200750065003B006600
      61006C0073006500010001000D000A0067007200640055006E00690074004400
      65007400610069006C0073002E0043006F006C0075006D006E0073005B003300
      5D002E005400690074006C0065002E00430061007000740069006F006E000100
      5000720069006300650031000100310020002F0641063906470601000D000A00
      67007200640055006E0069007400440065007400610069006C0073002E004300
      6F006C0075006D006E0073005B0034005D002E0043006800650063006B004200
      6F0078004600690065006C0064002E004600690065006C006400560061006C00
      750065007300010074007200750065003B00660061006C007300650001000100
      0D000A0067007200640055006E0069007400440065007400610069006C007300
      2E0043006F006C0075006D006E0073005B0034005D002E005400690074006C00
      65002E00430061007000740069006F006E000100500072006900630065003200
      0100320020002F0641063906470601000D000A0067007200640055006E006900
      7400440065007400610069006C0073002E0043006F006C0075006D006E007300
      5B0035005D002E0043006800650063006B0042006F0078004600690065006C00
      64002E004600690065006C006400560061006C00750065007300010074007200
      750065003B00660061006C0073006500010001000D000A006700720064005500
      6E0069007400440065007400610069006C0073002E0043006F006C0075006D00
      6E0073005B0035005D002E005400690074006C0065002E004300610070007400
      69006F006E0001005000720069006300650033000100330020002F0641063906
      27062A0601000D000A0067007200640055006E00690074004400650074006100
      69006C0073002E0043006F006C0075006D006E0073005B0036005D002E004300
      6800650063006B0042006F0078004600690065006C0064002E00460069006500
      6C006400560061006C00750065007300010074007200750065003B0066006100
      6C0073006500010001000D000A0067007200640055006E006900740044006500
      7400610069006C0073002E0043006F006C0075006D006E0073005B0036005D00
      2E005400690074006C0065002E00430061007000740069006F006E0001005000
      720069006300650034000100340020002F064106390627062A0601000D000A00
      67007200640055006E0069007400440065007400610069006C0073002E004300
      6F006C0075006D006E0073005B0037005D002E0043006800650063006B004200
      6F0078004600690065006C0064002E004600690065006C006400560061006C00
      750065007300010074007200750065003B00660061006C007300650001000100
      0D000A0067007200640055006E0069007400440065007400610069006C007300
      2E0043006F006C0075006D006E0073005B0037005D002E005400690074006C00
      65002E00430061007000740069006F006E0001004E006F007400650073000100
      4506440627062D063806290601000D000A0067007200640055006E0069007400
      440065007400610069006C0073002E0043006F006C0075006D006E0073005B00
      38005D002E0043006800650063006B0042006F0078004600690065006C006400
      2E004600690065006C006400560061006C007500650073000100740072007500
      65003B00660061006C0073006500010001000D000A0067007200640055006E00
      69007400440065007400610069006C0073002E0043006F006C0075006D006E00
      73005B0038005D002E005400690074006C0065002E0043006100700074006900
      6F006E0001004500010001000D000A0067007200640055006E00690074004400
      65007400610069006C0073002E0043006F006C0075006D006E0073005B003900
      5D002E0043006800650063006B0042006F0078004600690065006C0064002E00
      4600690065006C006400560061006C0075006500730001007400720075006500
      3B00660061006C0073006500010001000D000A0067007200640055006E006900
      7400440065007400610069006C0073002E0043006F006C0075006D006E007300
      5B0039005D002E005400690074006C0065002E00430061007000740069006F00
      6E0001004B00010001000D000A0067007200640055006E006900740044006500
      7400610069006C0073002E0043006F006C0075006D006E0073005B0031003000
      5D002E0043006800650063006B0042006F0078004600690065006C0064002E00
      4600690065006C006400560061006C0075006500730001007400720075006500
      3B00660061006C0073006500010001000D000A0067007200640055006E006900
      7400440065007400610069006C0073002E0043006F006C0075006D006E007300
      5B00310030005D002E005400690074006C0065002E0043006100700074006900
      6F006E0001004300010001000D000A0067007200640055006E00690074004400
      65007400610069006C0073002E0043006F006C0075006D006E0073005B003100
      31005D002E0043006800650063006B0042006F0078004600690065006C006400
      2E004600690065006C006400560061006C007500650073000100740072007500
      65003B00660061006C0073006500010001000D000A0067007200640055006E00
      69007400440065007400610069006C0073002E0043006F006C0075006D006E00
      73005B00310031005D002E005400690074006C0065002E004300610070007400
      69006F006E0001005200010001000D000A0067007200640055006E0069007400
      440065007400610069006C0073002E0043006F006C0075006D006E0073005B00
      310032005D002E0043006800650063006B0042006F0078004600690065006C00
      64002E004600690065006C006400560061006C00750065007300010074007200
      750065003B00660061006C0073006500010001000D000A006700720064005500
      6E0069007400440065007400610069006C0073002E0043006F006C0075006D00
      6E0073005B00310032005D002E005400690074006C0065002E00430061007000
      740069006F006E00010045005300540049004400010001000D000A0067007200
      640055006E0069007400440065007400610069006C0073002E0043006F006C00
      75006D006E0073005B00310033005D002E0043006800650063006B0042006F00
      78004600690065006C0064002E004600690065006C006400560061006C007500
      65007300010074007200750065003B00660061006C0073006500010001000D00
      0A0067007200640055006E0069007400440065007400610069006C0073002E00
      43006F006C0075006D006E0073005B00310033005D002E005400690074006C00
      65002E00430061007000740069006F006E0001006F0077006E00650072004900
      4400010001000D000A0067007200640055006E00690074004400650074006100
      69006C0073002E0043006F006C0075006D006E0073005B00310034005D002E00
      43006800650063006B0042006F0078004600690065006C0064002E0046006900
      65006C006400560061006C00750065007300010074007200750065003B006600
      61006C0073006500010001000D000A0067007200640055006E00690074004400
      65007400610069006C0073002E0043006F006C0075006D006E0073005B003100
      34005D002E005400690074006C0065002E00430061007000740069006F006E00
      010049004400010001000D000A0050006D007400560065007200740069006300
      61006C0047007200690064002E004400420043006F006C0075006D006E007300
      5B0030005D002E0043006800650063006B0042006F0078004600690065006C00
      64002E004600690065006C006400560061006C00750065007300010074007200
      750065003B00660061006C0073006500010001000D000A0050006D0074005600
      6500720074006900630061006C0047007200690064002E004400420043006F00
      6C0075006D006E0073005B0030005D002E005400690074006C0065002E004300
      61007000740069006F006E0001005000610079006D0065006E00740044006100
      7400650001002A06270631064A062E06200027064406270633062A062D064206
      2706420601000D000A0050006D00740056006500720074006900630061006C00
      47007200690064002E004400420043006F006C0075006D006E0073005B003100
      5D002E0043006800650063006B0042006F0078004600690065006C0064002E00
      4600690065006C006400560061006C0075006500730001007400720075006500
      3B00660061006C0073006500010001000D000A0050006D007400560065007200
      74006900630061006C0047007200690064002E004400420043006F006C007500
      6D006E0073005B0031005D002E005400690074006C0065002E00430061007000
      740069006F006E0001005000610079006D0065006E007400560061006C007500
      0100270644064506280644063A0601000D000A0050006D007400560065007200
      74006900630061006C0047007200690064002E004400420043006F006C007500
      6D006E0073005B0032005D002E0043006800650063006B0042006F0078004600
      690065006C0064002E004600690065006C006400560061006C00750065007300
      010074007200750065003B00660061006C0073006500010001000D000A005000
      6D00740056006500720074006900630061006C0047007200690064002E004400
      420043006F006C0075006D006E0073005B0032005D002E005400690074006C00
      65002E00430061007000740069006F006E000100500061006900640001004506
      33062F062F06470601000D000A0050006D007400560065007200740069006300
      61006C0047007200690064002E0056006500720074006900630061006C004300
      6F006C0075006D006E0073005B0030005D002E005400690074006C0065002E00
      430061007000740069006F006E0001004100010001000D000A0050006D007400
      56006500720074006900630061006C0047007200690064002E00560065007200
      74006900630061006C0043006F006C0075006D006E0073005B0031005D002E00
      5400690074006C0065002E00430061007000740069006F006E00010042000100
      01000D000A0050006D00740056006500720074006900630061006C0047007200
      690064002E0056006500720074006900630061006C0043006F006C0075006D00
      6E0073005B0032005D002E005400690074006C0065002E004300610070007400
      69006F006E0001004300010001000D000A0050006D0074005600650072007400
      6900630061006C0047007200690064002E005600650072007400690063006100
      6C0043006F006C0075006D006E0073005B0033005D002E005400690074006C00
      65002E00430061007000740069006F006E0001004400010001000D000A007300
      7400430068006100720053006500740073005F0055006E00690063006F006400
      65000D000A00}
  end
  object ContractsQ: TUniQuery
    Connection = UniMainModule.MainDB
    SQL.Strings = (
      'SELECT  C.*, P.ID, P.Name, P.IqamaID, P.Phone1 ,U.Unit  '
      'FROM contracts C , Persons P , Units U'
      ''
      'where C.Expired = False'
      'And P.ID = C.tenantID'
      'And U.ID = C.UnitNo'
      ' '
      'order by C.contractID'
      ' '
      ' ')
    BeforeEdit = ContractsQBeforeEdit
    BeforePost = ContractsQBeforePost
    AfterPost = ContractsQAfterPost
    BeforeCancel = ContractsQBeforeCancel
    BeforeDelete = ContractsQBeforeDelete
    AfterDelete = ContractsQAfterDelete
    AfterScroll = ContractsQAfterScroll
    OnNewRecord = ContractsQNewRecord
    Left = 798
    Top = 123
    object ContractsQContractID: TIntegerField
      FieldName = 'ContractID'
    end
    object ContractsQconDate: TDateField
      FieldName = 'conDate'
      Required = True
    end
    object ContractsQtenantID: TIntegerField
      FieldName = 'tenantID'
      Required = True
    end
    object ContractsQestNo: TIntegerField
      FieldName = 'estNo'
      Required = True
    end
    object ContractsQunitNo: TIntegerField
      FieldName = 'unitNo'
      Required = True
    end
    object ContractsQconPeriod: TWideStringField
      FieldName = 'conPeriod'
      Required = True
      Size = 15
    end
    object ContractsQcontF: TDateField
      FieldName = 'contF'
      Required = True
    end
    object ContractsQcontT: TDateField
      FieldName = 'contT'
      Required = True
    end
    object ContractsQPayments: TIntegerField
      FieldName = 'Payments'
      Required = True
    end
    object ContractsQRentAmount: TFloatField
      FieldName = 'RentAmount'
      Required = True
    end
    object ContractsQInsur: TFloatField
      FieldName = 'Insur'
      Required = True
    end
    object ContractsQWater: TFloatField
      FieldName = 'Water'
      Required = True
    end
    object ContractsQElec: TFloatField
      FieldName = 'Elec'
      Required = True
    end
    object ContractsQExpired: TBooleanField
      FieldName = 'Expired'
    end
    object ContractsQTermination: TBooleanField
      FieldName = 'Termination'
    end
    object ContractsQTerminDate: TDateField
      FieldName = 'TerminDate'
    end
    object ContractsQID: TIntegerField
      FieldName = 'ID'
      ReadOnly = True
    end
    object ContractsQName: TWideStringField
      FieldName = 'Name'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object ContractsQIqamaID: TWideStringField
      FieldName = 'IqamaID'
      ReadOnly = True
      Size = 10
    end
    object ContractsQPhone1: TWideStringField
      FieldName = 'Phone1'
      ReadOnly = True
      Required = True
      Size = 15
    end
    object ContractsQUnit: TWideStringField
      FieldName = 'Unit'
      ReadOnly = True
      Required = True
      Size = 30
    end
  end
  object ContractsQsrc: TUniDataSource
    DataSet = ContractsQ
    OnStateChange = ContractsQsrcStateChange
    Left = 798
    Top = 171
  end
  object ActionList1: TActionList
    Left = 727
    Top = 123
    object DatasetFirst1: TDataSetFirst
      Category = 'Dataset'
      Caption = '&First'
      Hint = 'First'
      ImageIndex = 0
      DataSource = ContractsQsrc
    end
    object DatasetPrior1: TDataSetPrior
      Category = 'Dataset'
      Caption = '&Prior'
      Hint = 'Prior'
      ImageIndex = 1
      DataSource = ContractsQsrc
    end
    object DatasetNext1: TDataSetNext
      Category = 'Dataset'
      Caption = '&Next'
      Hint = 'Next'
      ImageIndex = 2
      DataSource = ContractsQsrc
    end
    object DatasetLast1: TDataSetLast
      Category = 'Dataset'
      Caption = '&Last'
      Hint = 'Last'
      ImageIndex = 3
      DataSource = ContractsQsrc
    end
    object DatasetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = '&Insert'
      Hint = 'Insert'
      ImageIndex = 4
      DataSource = ContractsQsrc
    end
    object DatasetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = '&Delete'
      Hint = 'Delete'
      ImageIndex = 5
      OnExecute = DatasetDelete1Execute
      DataSource = ContractsQsrc
    end
    object DatasetEdit1: TDataSetEdit
      Category = 'Dataset'
      Caption = '&Edit'
      Hint = 'Edit'
      ImageIndex = 6
      DataSource = ContractsQsrc
    end
    object DatasetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = 'P&ost'
      Hint = 'Post'
      ImageIndex = 7
      DataSource = ContractsQsrc
    end
    object DatasetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Cancel'
      Hint = 'Cancel'
      ImageIndex = 8
      DataSource = ContractsQsrc
    end
    object DatasetRefresh1: TDataSetRefresh
      Category = 'Dataset'
      Caption = '&Refresh'
      Hint = 'Refresh'
      ImageIndex = 9
      DataSource = ContractsQsrc
    end
  end
  object EstatesQry: TUniQuery
    Connection = UniMainModule.MainDB
    SQL.Strings = (
      'SELECT * FROM estates'
      'where UnitsCount > UnitsRented'
      'order by ID')
    Left = 238
    Top = 283
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
    Left = 334
    Top = 283
  end
  object UnitsQry: TUniQuery
    Connection = UniMainModule.MainDB
    SQL.Strings = (
      'SELECT * FROM units'
      'where isRented = False'
      'order by ID')
    MasterSource = EstatesSrc
    MasterFields = 'estNo'
    DetailFields = 'ESTID'
    Left = 494
    Top = 283
    ParamData = <
      item
        DataType = ftInteger
        Name = 'estNo'
        ParamType = ptInput
        Value = 33
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
    end
    object UnitsQryPrice2: TFloatField
      FieldName = 'Price2'
    end
    object UnitsQryPrice3: TFloatField
      FieldName = 'Price3'
    end
    object UnitsQryPrice4: TFloatField
      FieldName = 'Price4'
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
    Left = 566
    Top = 283
  end
  object UnitDetailsQ: TUniQuery
    Connection = UniMainModule.MainDB
    SQL.Strings = (
      'SELECT * FROM units'
      'order by ID')
    AfterOpen = UnitDetailsQAfterOpen
    Left = 574
    Top = 339
    object UnitDetailsQUnit: TWideStringField
      FieldName = 'Unit'
      Required = True
      Size = 30
    end
    object UnitDetailsQRooms: TWideStringField
      FieldName = 'Rooms'
      Size = 50
    end
    object UnitDetailsQFloor: TWideStringField
      FieldName = 'Floor'
      Size = 30
    end
    object UnitDetailsQPrice1: TFloatField
      FieldName = 'Price1'
      Required = True
    end
    object UnitDetailsQPrice2: TFloatField
      FieldName = 'Price2'
    end
    object UnitDetailsQPrice3: TFloatField
      FieldName = 'Price3'
    end
    object UnitDetailsQPrice4: TFloatField
      FieldName = 'Price4'
    end
    object UnitDetailsQNotes: TWideStringField
      FieldName = 'Notes'
      Size = 250
    end
    object UnitDetailsQElectricity: TBooleanField
      FieldName = 'Electricity'
    end
    object UnitDetailsQKitchen: TBooleanField
      FieldName = 'Kitchen'
    end
    object UnitDetailsQConditions: TBooleanField
      FieldName = 'Conditions'
    end
    object UnitDetailsQESTID: TIntegerField
      FieldName = 'ESTID'
      Required = True
      Visible = False
    end
    object UnitDetailsQownerID: TIntegerField
      FieldName = 'ownerID'
      Required = True
      Visible = False
    end
    object UnitDetailsQisRented: TBooleanField
      FieldName = 'isRented'
      Required = True
      Visible = False
    end
    object UnitDetailsQID: TIntegerField
      FieldName = 'ID'
      Visible = False
    end
  end
  object UnitDetailsQsrc: TUniDataSource
    DataSet = UnitDetailsQ
    Left = 694
    Top = 339
  end
  object PaymensQ: TUniQuery
    Connection = UniMainModule.MainDB
    SQL.Strings = (
      'SELECT * FROM payments'
      'Order By ID')
    ReadOnly = True
    AfterOpen = PaymensQAfterOpen
    Left = 40
    Top = 488
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
  end
  object PaymensQs: TUniDataSource
    DataSet = PaymensQ
    Left = 96
    Top = 496
  end
  object TenantsQry: TUniQuery
    Connection = UniMainModule.MainDB
    SQL.Strings = (
      'Select * from Persons'
      'where PersonType = '#39'tenant'#39
      'order by ID')
    Options.FullRefresh = True
    OnNewRecord = TenantsQryNewRecord
    Left = 534
    Top = 115
    object TenantsQryID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      Visible = False
    end
    object TenantsQryName: TWideStringField
      FieldName = 'Name'
      Required = True
      Size = 50
    end
    object TenantsQryphone1: TWideStringField
      FieldName = 'phone1'
      Required = True
      Visible = False
      Size = 15
    end
    object TenantsQryphone2: TWideStringField
      FieldName = 'phone2'
      Visible = False
      Size = 15
    end
    object TenantsQryeMail: TWideStringField
      FieldName = 'eMail'
      Visible = False
      Size = 50
    end
    object TenantsQrypersonType: TWideStringField
      FieldName = 'personType'
      Required = True
      Visible = False
    end
    object TenantsQryIqamaID: TWideStringField
      FieldName = 'IqamaID'
      Size = 10
    end
    object TenantsQryworkPlace: TWideStringField
      FieldName = 'workPlace'
      Size = 50
    end
  end
  object TenantsSrc: TUniDataSource
    DataSet = TenantsQry
    Left = 486
    Top = 115
  end
  object RepoConQ: TUniQuery
    Connection = UniMainModule.MainDB
    SQL.Strings = (
      'SELECT  * from contracts_rv'
      ' '
      'Where ContractID = :ConID'
      ' ')
    Left = 56
    Top = 280
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ConID'
        Value = nil
      end>
  end
  object frxReport1: TfrxReport
    Version = '6.4.17'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43993.481877569440000000
    ReportOptions.LastChange = 43993.481877569440000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 879
    Top = 267
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = RepoConQ
    BCDToCurrency = False
    Left = 871
    Top = 339
  end
end
