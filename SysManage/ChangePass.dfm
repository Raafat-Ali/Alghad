object ChangePassF: TChangePassF
  Left = 0
  Top = 0
  ClientHeight = 124
  ClientWidth = 296
  Caption = 'ChangePassF'
  BorderStyle = bsDialog
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object pnlBaseContainer: TUniContainerPanel
    Left = 7
    Top = 0
    Width = 281
    Height = 121
    Hint = ''
    ParentColor = False
    TabOrder = 0
    LayoutAttribs.Padding = '3'
    LayoutConfig.Flex = 1
    object UniEdit1: TUniEdit
      Left = 16
      Top = 16
      Width = 233
      Hint = ''
      Text = ''
      TabOrder = 1
      EmptyText = 'New PassWord'
    end
    object UniEdit2: TUniEdit
      Left = 16
      Top = 48
      Width = 233
      Hint = ''
      Text = ''
      TabOrder = 2
      EmptyText = 'ReWrite New PassWord'
    end
    object UniButton1: TUniButton
      Left = 16
      Top = 88
      Width = 241
      Height = 25
      Hint = ''
      Caption = 'SAVE'
      TabOrder = 3
      OnClick = UniButton1Click
    end
  end
  object UniSQL1: TUniSQL
    Connection = UniMainModule.MainDB
    Left = 55
    Top = 40
  end
end
