unit ChangePass;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniButton, uniEdit, uniGUIBaseClasses, uniPanel,
  siComp, DBAccess, Uni;

type
  TChangePassF = class(TUniForm)
    pnlBaseContainer: TUniContainerPanel;
    UniEdit1: TUniEdit;
    UniEdit2: TUniEdit;
    UniButton1: TUniButton;
    UniSQL1: TUniSQL;
    procedure UniButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function ChangePassF: TChangePassF;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, G_Funcs;

function ChangePassF: TChangePassF;
begin
  Result := TChangePassF(UniMainModule.GetFormInstance(TChangePassF));
end;

procedure TChangePassF.UniButton1Click(Sender: TObject);
begin
if SameText(UniEdit1.Text,UniEdit2.Text) then
begin
UniSQL1.SQL.Text :='update userdefinition '
+ ' set password='''+UniEdit1.Text+''' where UserCode='''+UniMainModule.UserID+''' ';
UniSQL1.Execute;
  ShowSwA('Password has been changed successfully',0) ;
  Close();
end;

end;

end.
