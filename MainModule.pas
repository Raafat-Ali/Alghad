unit MainModule;

interface

uses
  uniGUIMainModule, SysUtils, Classes, UniProvider, MySQLUniProvider, Data.DB,
  DBAccess, Uni, uniGUIBaseClasses, uniGUIClasses, uniImageList, MemDS;

  type
   TScreenMode = (SM_Browse, SM_Edit, SM_Insert, SM_Search);
    // to know the status of current mode to enable or do
   // somthing as the currrent status of screen.



type
  TUniMainModule = class(TUniGUIMainModule)
    MainDB: TUniConnection;
    MySQLUniProvider1: TMySQLUniProvider;
    NAVimg: TUniNativeImageList;
    NAVimg24: TUniNativeImageList;
    ImgTol32: TUniNativeImageList;
    ReportQuery: TUniQuery;
    ReportDS: TUniDataSource;
    LangQry: TUniQuery;
    LangQryID: TIntegerField;
    LangQryENtext: TWideStringField;
    LangQryARtext: TWideStringField;
    LangQryFieldW: TIntegerField;
    LangQryIsSummry: TBooleanField;
    procedure UniGUIMainModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    procedure SaveRTL(const Value: Boolean);// for InterFace language


     // --- ---=== Global Variables ===--- ---
      var LoggedUserNam,UserID : String;

       StartPath, ReportsPath : String;

       gSysMessages, gSysMessagesA : TStringList; // Ar En Messages;

    //   testTXT:String;

              //Company Images Path Files
     LoginImg,LogBgImg,HomeImg,LogoImg,PDFsPath:String;

     ///Settings Params;
     gSendSMS:String;
  end;

function UniMainModule: TUniMainModule;

implementation

{$R *.dfm}

uses
  UniGUIVars, ServerModule, uniGUIApplication;

function UniMainModule: TUniMainModule;
begin
  Result := TUniMainModule(UniApplication.UniMainModule)
end;
//------------------------------------------------------------------------------

procedure TUniMainModule.SaveRTL(const Value: Boolean);
begin
// Save RTL in Cookies
UniGUIApplication.UniApplication.Cookies.SetCookie('_RTL', BoolToStr(Value), Date + 7.0);
   (UniApplication as TUniGUIApplication).Restart;
end;

procedure TUniMainModule.UniGUIMainModuleCreate(Sender: TObject);

begin
//Lang RTL By Cookies
  if UniGUIApplication.UniApplication.Cookies.Values['_RTL'] = '' then
   Self.RTL:=false
   else
   Self.RTL := StrToBool(UniGUIApplication.UniApplication.Cookies.Values['_RTL']);



//MainDB.Password:= 'royalR*2020';
MainDB.Connect;

LangQry.Open;
// COmpany IMAGES Files Path;

LoginImg := UniServerModule.FilesFolderPath+'/CmpImages/Login.png';

LogBgImg := UniServerModule.FilesFolderPath+'/CmpImages/LogBG.png';

HomeImg  := UniServerModule.FilesFolderPath+'/CmpImages/Home.png';

LogoImg  := UniServerModule.FilesFolderPath+'/CmpImages/Logo.png';

PDFsPath :=    UniServerModule.FilesFolderPath+'PDFs/';

 // init System G_Variables
 StartPath := uniServerModule.StartPath;
 ReportsPath := StartPath + 'Reports/' ;

 //*Load System Messages to Parameters*
gSysMessages:=TStringList.Create;
gSysMessages.LoadFromFile(UniServerModule.FilesFolderPath+'MessageE.mf');
gSysMessagesA:=TStringList.Create;
gSysMessagesA.LoadFromFile(UniServerModule.FilesFolderPath+'MessageA.mf');




end;

initialization
  RegisterMainModuleClass(TUniMainModule);
end.
