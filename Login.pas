unit Login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, siComp, UniFSToggle,
  uniMultiItem, uniComboBox, uniEdit, uniImage, uniLabel, uniButton,
  uniGUIBaseClasses, uniPanel, dxGDIPlusClasses, Data.DB, MemDS, DBAccess, Uni;

type
  TUniLoginForm1 = class(TUniLoginForm)
    UniContainerPanel1: TUniContainerPanel;
    LoginBtn: TUniButton;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    loginLogo: TUniImage;
    UserEdt: TUniEdit;
    PassEdt: TUniEdit;
    LangCombo: TUniComboBox;
    UniLabel3: TUniLabel;
    loginIMG: TUniImage;
    siLang1: TsiLang;
    logInQry: TUniQuery;
    UniFSToggle1: TUniFSToggle;
    procedure LangComboChange(Sender: TObject);
    procedure UniLoginFormBeforeShow(Sender: TObject);
    procedure UniLoginFormCreate(Sender: TObject);
    procedure LoginBtnClick(Sender: TObject);
    procedure UserEdtKeyPress(Sender: TObject; var Key: Char);
    procedure PassEdtKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function UniLoginForm1: TUniLoginForm1;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, G_Funcs;

function UniLoginForm1: TUniLoginForm1;
begin
  Result := TUniLoginForm1(UniMainModule.GetFormInstance(TUniLoginForm1));
end;
//============================================================================


procedure TUniLoginForm1.LangComboChange(Sender: TObject);
begin
   UniApplication.Cookies.SetCookie('_Lng', IntToStr(LangCombo.ItemIndex) , Date + 7.0);
  UniMainModule.SaveRTL(LangCombo.ItemIndex = 1 );
end;

procedure TUniLoginForm1.LoginBtnClick(Sender: TObject);

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


if UniFSToggle1.Toggled  then begin
    UniApplication.Cookies.SetCookie('_loginname',  UserEdt.Text , Date + 7.0);
     UniApplication.Cookies.SetCookie('_pwd', PassEdt.Text , Date + 7.0);
end;




ModalResult:=mrOk;


end else begin
ShowSwA('Invalid UserName Or PassWord',2);
end;





end;

procedure TUniLoginForm1.PassEdtKeyPress(Sender: TObject; var Key: Char);
begin
if Key=Char(13) then
LoginBtn.SetFocus;
end;

procedure TUniLoginForm1.UniLoginFormBeforeShow(Sender: TObject);
begin
UserEdt.Text:=  UniApplication.Cookies.Values['_loginname'];
PassEdt.Text :=  UniApplication.Cookies.Values['_pwd'];

if UniGUIApplication.UniApplication.Cookies.Values['_Lng'] = '' then
 LangCombo.ItemIndex := 0
 else
LangCombo.ItemIndex := StrToInt( UniApplication.Cookies.Values['_Lng']);

 //--// COmpany IMAGES ....
 if FileExists(UniMainModule.LoginImg) then
    LoginIMG.Picture.LoadFromFile(UniMainModule.LoginImg);
 if FileExists(UniMainModule.LogBgImg) then
    UniMainModule.LoginBackground.Picture.LoadFromFile(UniMainModule.LogBgImg);
end;

procedure TUniLoginForm1.UniLoginFormCreate(Sender: TObject);
begin
RTL := UniMainModule.RTL;
//
if RTL then  siLang1.ActiveLanguage := 2 ;
end;

procedure TUniLoginForm1.UserEdtKeyPress(Sender: TObject; var Key: Char);
begin
if Key=Char(13) then
PassEdt.SetFocus;
end;

initialization
  RegisterAppFormClass(TUniLoginForm1);

end.
