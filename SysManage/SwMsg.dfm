object SwMsgF: TSwMsgF
  Left = 0
  Top = 0
  ClientHeight = 242
  ClientWidth = 527
  Caption = 'SwMsgF'
  OnShow = UniFormShow
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object SweetAlert: TUniSweetAlert
    AllowOutsideClick = False
    AllowEscapeKey = False
    ConfirmButtonText = 'OK'
    CancelButtonText = 'Cancel'
    ConfirmButtonColor = 12435255
    Width = 400
    Padding = 20
    OnDismiss = SweetAlertDismiss
    OnConfirm = SweetAlertConfirm
    Left = 40
    Top = 80
  end
end
