object mRentContracts: TmRentContracts
  Left = 0
  Top = 0
  ClientHeight = 574
  ClientWidth = 320
  Caption = 'Contracts'
  AlignmentControl = uniAlignmentClient
  LayoutConfig.Width = '100%'
  LayoutAttribs.Align = 'start'
  LayoutAttribs.Pack = 'center'
  TitleButtons = <>
  OnCreate = UnimFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object UnimContainerPanel1: TUnimContainerPanel
    Left = 0
    Top = 0
    Width = 320
    Height = 574
    Hint = ''
    Align = alClient
    LayoutAttribs.Align = 'center'
    LayoutAttribs.Pack = 'start'
    LayoutConfig.Width = '100%'
    ExplicitHeight = 480
    object UnimToolBar1: TUnimToolBar
      Left = 0
      Top = 0
      Width = 320
      Height = 48
      Hint = ''
      Images = UniMainModule.ImgTol32
      Caption = ''
      LayoutAttribs.Align = 'center'
      LayoutAttribs.Pack = 'center'
      LayoutConfig.Width = '100%'
      ExplicitLeft = 64
      ExplicitTop = 40
      ExplicitWidth = 240
      object UnimToolButton1: TUnimToolButton
        Left = 0
        Top = 0
        Width = 8
        Height = 48
        Hint = ''
        Style = tbsSeparator
        Caption = 'UnimToolButton1'
      end
      object UnimToolButton2: TUnimToolButton
        Left = 8
        Top = 0
        Width = 48
        Height = 48
        Hint = ''
        Caption = 'UnimToolButton2'
        ImageIndex = 0
      end
      object UnimToolButton4: TUnimToolButton
        Left = 56
        Top = 0
        Width = 48
        Height = 48
        Hint = ''
        Caption = 'UnimToolButton4'
        ImageIndex = 1
        ExplicitLeft = 64
      end
      object UnimToolButton6: TUnimToolButton
        Left = 104
        Top = 0
        Width = 48
        Height = 48
        Hint = ''
        Caption = 'UnimToolButton6'
        ImageIndex = 3
        ExplicitLeft = 120
      end
      object UnimToolButton7: TUnimToolButton
        Left = 152
        Top = 0
        Width = 8
        Height = 48
        Hint = ''
        Style = tbsSeparator
        Caption = 'UnimToolButton7'
        ExplicitLeft = 168
      end
      object UnimToolButton8: TUnimToolButton
        Left = 160
        Top = 0
        Width = 48
        Height = 48
        Hint = ''
        Caption = 'UnimToolButton8'
        ImageIndex = 2
        ExplicitLeft = 176
      end
      object UnimToolButton10: TUnimToolButton
        Left = 208
        Top = 0
        Width = 48
        Height = 48
        Hint = ''
        Caption = 'UnimToolButton10'
        ImageIndex = 4
        ExplicitLeft = 232
      end
      object UnimToolButton12: TUnimToolButton
        Left = 256
        Top = 0
        Width = 48
        Height = 48
        Hint = ''
        Caption = 'UnimToolButton12'
        ImageIndex = 18
        ExplicitLeft = 288
      end
      object UnimToolButton3: TUnimToolButton
        Left = 304
        Top = 0
        Width = 8
        Height = 48
        Hint = ''
        Style = tbsSeparator
        Caption = 'UnimToolButton3'
      end
    end
    object paTenant: TUnimContainerPanel
      Left = 3
      Top = 54
      Width = 314
      Height = 211
      Hint = ''
      AutoScroll = True
      LayoutAttribs.Align = 'start'
      LayoutAttribs.Pack = 'center'
      LayoutConfig.Width = '90%'
      ScrollHeight = 211
      ScrollWidth = 314
      object TenantFieldSet: TUnimFieldSet
        Left = 3
        Top = 0
        Width = 308
        Height = 208
        Hint = ''
        LayoutConfig.Width = '100%'
        Flex = 1
        object UnimDBEdit1: TUnimDBEdit
          Left = 3
          Top = 3
          Width = 225
          Height = 25
          Hint = ''
          DataField = 'Name'
          DataSource = TenantsSrc
          EmptyText = 'Tenant Name'
          Font.Charset = ARABIC_CHARSET
          Font.Height = -19
          Font.Name = 'Tajawal'
          TabOrder = 1
        end
        object UnimDBEdit2: TUnimDBEdit
          Left = 3
          Top = 34
          Width = 225
          Height = 25
          Hint = ''
          DataField = 'IqamaID'
          DataSource = TenantsSrc
          EmptyText = 'Tenant ID'
          Font.Charset = ARABIC_CHARSET
          Font.Height = -19
          Font.Name = 'Tajawal'
          TabOrder = 2
        end
        object UnimFieldContainer1: TUnimFieldContainer
          Left = 3
          Top = 65
          Width = 302
          Height = 30
          Hint = ''
          ParentColor = False
          Layout = 'hbox'
          LayoutAttribs.Align = 'center'
          LayoutAttribs.Pack = 'justify'
          object UnimDBEdit3: TUnimDBEdit
            Left = 0
            Top = 3
            Width = 145
            Height = 25
            Hint = ''
            DataField = 'phone1'
            DataSource = TenantsSrc
            EmptyText = 'Mobile 1'
            Font.Charset = ARABIC_CHARSET
            Font.Height = -19
            Font.Name = 'Tajawal'
            TabOrder = 1
          end
          object UnimDBEdit4: TUnimDBEdit
            Left = 151
            Top = 3
            Width = 145
            Height = 25
            Hint = ''
            DataField = 'phone2'
            DataSource = TenantsSrc
            EmptyText = 'Mobile 2'
            Font.Charset = ARABIC_CHARSET
            Font.Height = -19
            Font.Name = 'Tajawal'
            TabOrder = 2
          end
        end
        object UnimDBEdit6: TUnimDBEdit
          Left = 25
          Top = 111
          Width = 225
          Height = 25
          Hint = ''
          DataField = 'workPlace'
          DataSource = TenantsSrc
          EmptyText = 'Work Location'
          Font.Charset = ARABIC_CHARSET
          Font.Height = -19
          Font.Name = 'Tajawal'
          TabOrder = 4
        end
      end
    end
    object pnlSelectEstUnt: TUnimPanel
      Left = 3
      Top = 268
      Width = 314
      Height = 45
      Hint = ''
      Layout = 'hbox'
      LayoutAttribs.Align = 'center'
      LayoutAttribs.Pack = 'center'
      LayoutConfig.Width = '100%'
      object UnimDBSelect1: TUnimDBSelect
        Left = 16
        Top = 3
        Width = 225
        Height = 47
        Hint = ''
        TabOrder = 1
        DataField = 'estNo'
        DataSource = EstatesSrc
      end
    end
  end
  object TenantsQry: TUniQuery
    Connection = UniMainModule.MainDB
    SQL.Strings = (
      'Select * from Persons'
      'where PersonType = '#39'tenant'#39
      'order by ID')
    Options.FullRefresh = True
    Left = 12
    Top = 432
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
    Left = 132
    Top = 411
  end
  object EstatesQry: TUniQuery
    Connection = UniMainModule.MainDB
    SQL.Strings = (
      'SELECT * FROM estates'
      'where UnitsCount > UnitsRented'
      'order by ID')
    Active = True
    Left = 30
    Top = 219
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
    Left = 84
    Top = 219
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
    Active = True
    Left = 196
    Top = 211
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
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      Visible = False
    end
  end
  object UnitsSrc: TUniDataSource
    DataSet = UnitsQry
    Left = 252
    Top = 219
  end
end
