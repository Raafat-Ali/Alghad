unit Mainm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIRegClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniGUIBaseClasses, uniPanel, uniBitBtn, uniButton, unimBitBtn, unimButton,
  unimCarousel;

type
  TMainmForm = class(TUnimForm)
    UnimContainerPanel1: TUnimContainerPanel;
    UnimButton1: TUnimButton;
    procedure UnimButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainmForm: TMainmForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, mRentContractsU;

function MainmForm: TMainmForm;
begin
  Result := TMainmForm(UniMainModule.GetFormInstance(TMainmForm));
end;

procedure TMainmForm.UnimButton1Click(Sender: TObject);
begin
mRentContracts.Show();
end;

initialization
  RegisterAppFormClass(TMainmForm);

end.
