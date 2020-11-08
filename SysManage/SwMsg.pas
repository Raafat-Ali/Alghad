unit SwMsg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUIBaseClasses, uniSweetAlert, siComp;

type
  TSwMsgF = class(TUniForm)
    SweetAlert: TUniSweetAlert;
    procedure UniFormShow(Sender: TObject);
    procedure SweetAlertConfirm(Sender: TObject);
    procedure SweetAlertDismiss(Sender: TObject; const Reason: TDismissType);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function SwMsgF: TSwMsgF;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function SwMsgF: TSwMsgF;
begin
  Result := TSwMsgF(UniMainModule.GetFormInstance(TSwMsgF));
end;
//*************************************************

procedure TSwMsgF.SweetAlertConfirm(Sender: TObject);
begin
ModalResult := mrOk;
end;

procedure TSwMsgF.SweetAlertDismiss(Sender: TObject;
  const Reason: TDismissType);
begin
ModalResult := mrCancel;
end;

procedure TSwMsgF.UniFormShow(Sender: TObject);
begin

  Hide;
  SweetAlert.Show();

end;

end.
