object ShowReportF: TShowReportF
  Left = 0
  Top = 0
  ClientHeight = 661
  ClientWidth = 984
  Caption = 'ShowReportF'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  OnBeforeShow = UniFormBeforeShow
  PixelsPerInch = 96
  TextHeight = 13
  object UniURLFrame1: TUniURLFrame
    Left = 0
    Top = 0
    Width = 984
    Height = 661
    Hint = ''
    Align = alClient
    TabOrder = 0
    ParentColor = False
    Color = clBtnFace
    object UniButton1: TUniButton
      Left = 0
      Top = 636
      Width = 984
      Height = 25
      Hint = ''
      Caption = 'Close'
      Align = alBottom
      TabOrder = 1
      OnClick = UniButton1Click
    end
  end
end
