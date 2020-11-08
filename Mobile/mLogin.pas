unit mLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIRegClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  UniFSToggle, uniMultiItem, uniComboBox, uniEdit, uniLabel, uniButton,
  uniPanel, uniGUIBaseClasses, uniImage, siComp, unimEdit, unimImage, unimButton,
  unimSelect, unimToggle, Data.DB, MemDS, DBAccess, Uni;

type
  TUnimLoginForm1 = class(TUnimLoginForm)
    loginIMG: TUnimImage;
    UnimContainerPanel1: TUnimContainerPanel;
    UserEdt: TUnimEdit;
    PassEdt: TUnimEdit;
    LoginBtn: TUnimButton;
    logInQry: TUniQuery;
    siLang1: TsiLang;
    UnimContainerPanel2: TUnimContainerPanel;
    LangCombo: TUnimSelect;
    UnimToggle1: TUnimToggle;
    procedure UnimLoginFormCreate(Sender: TObject);
    procedure UnimLoginFormBeforeShow(Sender: TObject);
    procedure LoginBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function UnimLoginForm1: TUnimLoginForm1;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, G_Funcs;

function UnimLoginForm1: TUnimLoginForm1;
begin
  Result := TUnimLoginForm1(UniMainModule.GetFormInstance(TUnimLoginForm1));
end;
//===================================================================================
procedure TUnimLoginForm1.LoginBtnClick(Sender: TObject);
begin
LogInQry.Close;
 LogInQry.ParamByName('usr').AsString := UserEdt.Text;
  logInQry.ParamByName('pas').AsString := PassEdt.Text;

LogInQry.Open;

if LogInQry.RecordCount>0 then begin

UniMainModule.UserID := LogInQry.FieldByName('usercode').AsString;
UniMainModule.LoggedUserNam:=  LogInQry.FieldByName('usernamee').AsString;
if RTL then
UniMainModule.LoggedUserNam:=  LogInQry.FieldByName('username').AsString;


if UnimToggle1.Toggled  then begin
    UniApplication.Cookies.SetCookie('_loginname',  UserEdt.Text , Date + 7.0);
     UniApplication.Cookies.SetCookie('_pwd', PassEdt.Text , Date + 7.0);
end;




ModalResult:=mrOk;


end else begin
ShowSwA('Invalid UserName Or PassWord',2);
end;




end;

procedure TUnimLoginForm1.UnimLoginFormBeforeShow(Sender: TObject);
begin
UserEdt.Text:=  UniApplication.Cookies.Values['_loginname'];
PassEdt.Text :=  UniApplication.Cookies.Values['_pwd'];

 //--// COmpany IMAGES ....
 if FileExists(UniMainModule.LoginImg) then
    LoginIMG.Picture.LoadFromFile(UniMainModule.LoginImg);
 if FileExists(UniMainModule.LogBgImg) then
    UniMainModule.LoginBackground.Picture.LoadFromFile(UniMainModule.LogBgImg);
end;

procedure TUnimLoginForm1.UnimLoginFormCreate(Sender: TObject);
begin
RTL := UniMainModule.RTL;
//
if RTL then  siLang1.ActiveLanguage := 2 ;
end;

initialization
  RegisterAppFormClass(TUnimLoginForm1);

end.
