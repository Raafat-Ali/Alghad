object MainmForm: TMainmForm
  Left = 0
  Top = 0
  ClientHeight = 480
  ClientWidth = 320
  Caption = 'MainmForm'
  AlignmentControl = uniAlignmentClient
  TitleButtons = <>
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object UnimContainerPanel1: TUnimContainerPanel
    Left = 8
    Top = 8
    Width = 304
    Height = 313
    Hint = ''
    LayoutAttribs.Align = 'center'
    LayoutAttribs.Pack = 'center'
    LayoutConfig.Width = '100%'
    Flex = 1
    object UnimButton1: TUnimButton
      Left = 32
      Top = 56
      Width = 225
      Height = 87
      Hint = ''
      Caption = '<i class="fas fa-file-signature"> '#1593#1602#1608#1583' '#1575#1604#1575#1610#1580#1575#1585' </i>'
      Font.Charset = ARABIC_CHARSET
      Font.Height = -24
      Font.Name = 'Tajawal'
      Font.Style = [fsBold]
      OnClick = UnimButton1Click
    end
  end
end
