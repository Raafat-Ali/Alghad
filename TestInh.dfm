inherited TestInhF: TTestInhF
  ClientHeight = 502
  ClientWidth = 794
  Caption = 'TestInhF'
  ExplicitWidth = 810
  ExplicitHeight = 541
  PixelsPerInch = 96
  TextHeight = 13
  object UniDBVerticalGrid2: TUniDBVerticalGrid [1]
    Left = 62
    Top = 209
    Width = 465
    Height = 88
    Hint = ''
    DataSource = PaymensQs
    FieldsColumn.Width = 120
    FieldsColumn.Font.Color = clGray
    FieldsColumn.Font.Style = [fsBold]
    VerticalColumns = <
      item
        Title.Caption = '1'
      end
      item
        Title.Caption = '2'
      end
      item
        Title.Caption = '3'
      end
      item
        Title.Caption = '4'
      end>
    DefaultColWidth = 100
    TabOrder = 1
    LayoutConfig.Width = '90%'
    LoadMask.Message = 'Loading data...'
    Columns = <
      item
        FieldName = 'ID'
        Title.Caption = 'ID'
        Width = 64
      end
      item
        FieldName = 'ContractNo'
        Title.Caption = 'ContractNo'
        Width = 64
      end
      item
        FieldName = 'PaymentSN'
        Title.Caption = 'PaymentSN'
        Width = 64
      end
      item
        FieldName = 'PaymentDate'
        Title.Caption = 'PaymentDate'
        Width = 69
      end
      item
        FieldName = 'PaymentValu'
        Title.Caption = 'PaymentValu'
        Width = 66
      end
      item
        FieldName = 'Paid'
        Title.Caption = 'Paid'
        Width = 34
      end
      item
        FieldName = 'PayDate'
        Title.Caption = 'PayDate'
        Width = 64
      end
      item
        FieldName = 'PayType'
        Title.Caption = 'PayType'
        Width = 184
      end>
  end
  object PaymensQ: TUniQuery
    Connection = UniMainModule.MainDB
    SQL.Strings = (
      'SELECT * FROM payments'
      'Order By ID')
    Active = True
    Left = 544
    Top = 40
  end
  object PaymensQs: TUniDataSource
    DataSet = PaymensQ
    Left = 560
    Top = 118
  end
end
