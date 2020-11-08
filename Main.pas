unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses, uniStrUtils,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniPanel,
  uniTreeView, uniTreeMenu, uniPageControl, Vcl.Imaging.pngimage, uniImage,
  uniLabel, Vcl.Menus, uniMainMenu, System.Actions, Vcl.ActnList, uniImageList,
  System.ImageList, Vcl.ImgList, siComp, uniMultiItem, uniComboBox,DateUtils,
  uniBasicGrid, uniDBGrid, uniDBVerticalGrid, Data.DB, DBAccess, Uni, MemDS,
  uniButton, uniHTMLFrame, uniTimer, UniFSButton, uniBitBtn, dxGDIPlusClasses,
  uniSpeedButton, uniEdit, uniDBEdit, UniFSiGrowl;

type
  TMainForm = class(TUniForm)
    UniContainerPanel1: TUniContainerPanel;
    pnlHeader: TUniContainerPanel;
    pnlMenu: TUniContainerPanel;
    pnlCenter: TUniContainerPanel;
    MainPageControl: TUniPageControl;
    UniTreeMenu1: TUniTreeMenu;
    UniImage2: TUniImage;
    UniContainerPanel2: TUniContainerPanel;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    siLang1: TsiLang;
    ActImgAdapter: TUniImageListAdapter;
    ActImgList: TUniNativeImageList;
    ActionList1: TActionList;
    aAdmin: TAction;
    aDashBoard: TAction;
    aSysSettings: TAction;
    aUserPrivs: TAction;
    aRealEstate: TAction;
    aEstSettings: TAction;
    aRegistration: TAction;
    aRentContract: TAction;
    aRentPayments: TAction;
    MenuActions: TUniMenuItems;
    Administration1: TUniMenuItem;
    DashBoard1: TUniMenuItem;
    SystemSettings1: TUniMenuItem;
    UserPriviliges1: TUniMenuItem;
    CARS1: TUniMenuItem;
    MaintinanceSettings1: TUniMenuItem;
    Maintenance1: TUniMenuItem;
    CarHandOver1: TUniMenuItem;
    CarsReports1: TUniMenuItem;
    ThemeComboBox: TUniComboBox;
    UniTabSheet1: TUniTabSheet;
    aRentTerminate: TAction;
    RentTermination1: TUniMenuItem;
    pnlCircles: TUniContainerPanel;
    pnlC1: TUniContainerPanel;
    UniHTMLFrame1: TUniHTMLFrame;
    DashQry: TUniQuery;
    DashQryEstCnt: TLargeintField;
    DashQryUntCnt: TLargeintField;
    DashQryRenCnt: TLargeintField;
    DashQryConCnt: TLargeintField;
    pnlC2: TUniContainerPanel;
    UniHTMLFrame2: TUniHTMLFrame;
    pnlC3: TUniContainerPanel;
    UniHTMLFrame3: TUniHTMLFrame;
    pnlC4: TUniContainerPanel;
    UniHTMLFrame4: TUniHTMLFrame;
    DashTimer: TUniTimer;
    pnlProg1: TUniContainerPanel;
    UniHTMLFrame5: TUniHTMLFrame;
    DashQryPaidCnt: TLargeintField;
    DashQryaPaidCnt: TLargeintField;
    aRepair: TAction;
    N1: TUniMenuItem;
    aRepair1: TUniMenuItem;
    N2: TUniMenuItem;
    aREreports: TAction;
    Reports1: TUniMenuItem;
    UniButton1: TUniButton;
    UniButton2: TUniButton;
    UniButton3: TUniButton;
    UniButton4: TUniButton;
    UniButton5: TUniButton;
    UniButton6: TUniButton;
    pnlPerDay: TUniContainerPanel;
    pTodCont: TUniPanel;
    pTodPaid: TUniPanel;
    pTodCome: TUniPanel;
    TodayQry: TUniQuery;
    UniLabel3: TUniLabel;
    UniLabel4: TUniLabel;
    UniLabel5: TUniLabel;
    LogoImg: TUniImage;
    TodayQryTodayCont: TLargeintField;
    TodayQryTodayPaid: TFloatField;
    aPDFs: TAction;
    CompanyFiles1: TUniMenuItem;
    aVoucher: TAction;
    RecPayVoucher1: TUniMenuItem;
    aPassW: TAction;
    ChangePassword1: TUniMenuItem;
    pTodExpense: TUniPanel;
    UniLabel6: TUniLabel;
    UniFSiGrowl1: TUniFSiGrowl;
    UsrNotifyQ: TUniQuery;
    TodayQryTodayMaint: TFloatField;
    pnlEstBal: TUniSimplePanel;
    EstBalQ: TUniQuery;
    EstBalQEstNo: TIntegerField;
    EstBalQBalance: TFloatField;
    btnEstBal: TUniButton;
    UniFSButton1: TUniFSButton;
    aSendSMS: TAction;
    SendSMS1: TUniMenuItem;
    pTodMaint: TUniPanel;
    UniLabel7: TUniLabel;
    TodayQryTodayIncome: TFloatField;
    TodayQryTodayExpense: TFloatField;
    ArcTimer: TUniTimer;
    btnArch: TUniButton;
    aArch: TAction;
    Archiv1: TUniMenuItem;
    procedure aUserPrivsExecute(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
    procedure aRegistrationExecute(Sender: TObject);
    procedure ThemeComboBoxChange(Sender: TObject);
    procedure aRentContractExecute(Sender: TObject);
    procedure UniButton1Click(Sender: TObject);
    procedure aRentPaymentsExecute(Sender: TObject);
    procedure aRentTerminateExecute(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
    procedure UniButton3Click(Sender: TObject);
    procedure UniButton4Click(Sender: TObject);
    procedure DashQryAfterOpen(DataSet: TDataSet);
    procedure DashTimerTimer(Sender: TObject);
    procedure UniButton5Click(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure UniButton6Click(Sender: TObject);
    procedure aRepairExecute(Sender: TObject);
    procedure aREreportsExecute(Sender: TObject);
    procedure MainPageControlChange(Sender: TObject);
    procedure aPDFsExecute(Sender: TObject);
    procedure aSysSettingsExecute(Sender: TObject);
    procedure aVoucherExecute(Sender: TObject);
    procedure aPassWExecute(Sender: TObject);
    procedure UniFSButton1Click(Sender: TObject);
    procedure btnEstBalClick(Sender: TObject);
    procedure aSendSMSExecute(Sender: TObject);
    procedure btnArchClick(Sender: TObject);
    procedure ArcTimerTimer(Sender: TObject);
    procedure aArchExecute(Sender: TObject);
  private
    { Private declarations }

     FCounter,ACounter: Integer;

  public
    { Public declarations }

     DwnRepoFile: Boolean;

  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, UserPrev, rRegister, ServerModule,
   TestTemp, RentPayments, RentTermination, G_Funcs, Repair,
  Rcontracts, Reports, PDFviewer, Settings, Vouchers, ChangePass, UsrNotify,
  SendSMS, Arch;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

//==============================================================================

procedure TMainForm.aArchExecute(Sender: TObject);
begin
ArchF.Show();
end;

procedure TMainForm.aPassWExecute(Sender: TObject);
begin
ChangePassF.Show();
end;

procedure TMainForm.aPDFsExecute(Sender: TObject);
begin
PDFviewerF.Show();
end;

procedure TMainForm.ArcTimerTimer(Sender: TObject);
begin
Inc(ACounter);


if ACounter = 125 then begin
  ArcTimer.Enabled := False;
  ACounter := 0;  FCounter := 0;
 DashTimer.Enabled := True;
end;

end;

procedure TMainForm.aRegistrationExecute(Sender: TObject);
begin
rRegisterF.Show();
end;

procedure TMainForm.aRentContractExecute(Sender: TObject);
begin
RcontractsF.Show();

end;

procedure TMainForm.aRentPaymentsExecute(Sender: TObject);
begin
RentPaymentsF.Show();
end;

procedure TMainForm.aRentTerminateExecute(Sender: TObject);
begin
RentTerminationF.Show();
end;

procedure TMainForm.aRepairExecute(Sender: TObject);
begin
RepairF.Show();
end;

procedure TMainForm.aREreportsExecute(Sender: TObject);
begin
Reportsf.Show();
end;

procedure TMainForm.aSendSMSExecute(Sender: TObject);
begin
SendSMSForm.Show();
end;

procedure TMainForm.aSysSettingsExecute(Sender: TObject);
begin
SettingsF.Show();
end;

procedure TMainForm.aUserPrivsExecute(Sender: TObject);
begin
UserPrevF.Show();
//TUserPrevF.Create(UniApplication)
end;

procedure TMainForm.aVoucherExecute(Sender: TObject);
begin
VouchersF.Show();
end;

procedure TMainForm.btnEstBalClick(Sender: TObject);
var //Badge : TUniFSButton;
BalPnl : TUniPanel;
LBLest, LBLbal : TUniLabel;
i:Integer;
begin

 EstBalQ.Close;
 EstBalQ.Open;


                    try
                  for I := pnlEstBal.ComponentCount-1  downto  0  do   begin
  if (pnlEstBal.Components[i] is TUniPanel )then  begin
        (pnlEstBal.Components[i] as  TUniPanel).Free;
  end;
end;

                  finally
               pnlEstBal.Repaint;
                  end;



for I := 0 to EstBalQ.RecordCount -1 do begin
  BalPnl:=TUniPanel.Create(pnlEstBal);
  BalPnl.Name:= 'Badge'+IntToStr(i);

  BalPnl.Layout:= 'vbox';
  BalPnl.LayoutAttribs.Align:='center';
  BalPnl.LayoutAttribs.Pack:='start';
  BalPnl.Width := 100;
  BalPnl.Height:= 40;
  BalPnl.Color := $00e6f9ff;
   BalPnl.LayoutConfig.Margin := '3 3 3 3';

  LBLest:= TUniLabel.Create(pnlEstBal);
  LBLbal:= TUniLabel.Create(pnlEstBal);


  LBLest.Alignment:=taCenter;
  LBLest.AutoSize := true;
  LBLest.Font.Size := 12;
  LBLest.Font.Style  := [fsBold, fsUnderline];
  LBLest.Font.Color := clTeal;
  LBLest.Transparent:= false;



   LBLest.Caption :=    EstBalQEstNo.AsString;
   LBLbal.Caption :=  FormatFloat('#,###.##' ,EstBalQBalance.AsFloat);


  LBLbal.Alignment:=taCenter;
  LBLbal.AutoSize := true;
  LBLbal.Font.Size := 12;
  LBLbal.Font.Style  := [fsBold];
  LBLbal.Font.Color := clPurple;

  LBLbal.LayoutConfig.Flex :=1;
  LBLbal.LayoutConfig.Width:='100%';


  LBLest.Parent :=  BalPnl;
  LBLbal.Parent :=  BalPnl;


     BalPnl.Parent :=  pnlEstBal;


  EstBalQ.Next;
 end;






//                   try
//                  for I := pnlEstBal.ComponentCount-1  downto  0  do   begin
//  if (pnlEstBal.Components[i] is TUniFSButton )then  begin
//        (pnlEstBal.Components[i] as  TUniFSButton).Free;
//  end;
//end;
//
//                  finally
//               pnlEstBal.Repaint;
//                  end;
//
//
//
//for I := 0 to EstBalQ.RecordCount -1 do begin
//  Badge:=TUniFSButton.Create(pnlEstBal);
//  Badge.Name:= 'Badge'+IntToStr(i);
// Badge.StyleButton:=TStyleButton.Transparent;
//
// Badge.Width := 100;
//Badge.Height:= 30;
//
// Badge.BadgeText.BackgroundColor:='#D50000';
// Badge.BadgeText.TextColor:='#FFFFFF';
// Badge.BadgeText.TextSize:= 10;
// Badge.BadgeText.TextStyle:='Italic';
// Badge.BadgeText.Visible:=true;
//
// Badge.BadgeText.Text:= EstBalQEstNo.AsString;
//
// Badge.Font.Size := 12;
// Badge.Font.Style  := [fsBold, fsUnderline];
//  Badge.Caption:= FormatFloat('#,###.##' ,EstBalQBalance.AsFloat);
////   FormatFloat('#,###.##' +  ' ريال ' ,EstBalQBalance.AsFloat);
//
//
//  Badge.Parent :=  pnlEstBal;
//
//
//  EstBalQ.Next;
// end;

end;

procedure TMainForm.DashQryAfterOpen(DataSet: TDataSet);
begin
// 1 Second = 1000 ms
//1 Minute = 60,000 ms
end;

procedure TMainForm.DashTimerTimer(Sender: TObject);

begin

      Inc(FCounter);

//      if FCounter = 20 then begin
//       UniButton1Click(sender);
//       UniButton2Click(sender);
//       UniButton3Click(sender);
//       UniButton4Click(sender);
//       UniButton5Click(sender);
//       FCounter := 0;
//      end;

// Ever 2 Minutes (120 Sec) will check the process
if FCounter = 120 then       UniButton1Click(sender);
if FCounter = 122 then      UniButton2Click(sender);
if FCounter = 124 then       UniButton3Click(sender);
if FCounter = 126 then       UniButton4Click(sender);
if FCounter = 128 then       UniButton5Click(sender);

if FCounter = 130 then       UniButton6Click(sender);

if FCounter = 132 then    btnEstBalClick(sender);



if FCounter = 134 then   FCounter := 0;


 if MinutesBetween(Time(), EncodeTime(23,0, 0, 0)) = 0 then begin
   DashTimer.Enabled := False;
   btnArchClick(nil);
   ArcTimer.Enabled := True;
 end;







end;

procedure TMainForm.MainPageControlChange(Sender: TObject);
var
  T : TUniTabSheet;
  N : TUniTreeNode;
begin
        T := MainPageControl.ActivePage;
  if Assigned(T) then
  begin
    N := T.Data;
    UniTreeMenu1.Selected := N;
  end;
end;

procedure TMainForm.ThemeComboBoxChange(Sender: TObject);
begin
 UniMainModule.Theme:=ThemeComboBox.Text;
end;

procedure TMainForm.UniButton1Click(Sender: TObject);
var    YY, MM, DD: Word;
SdateP ,EdateP : TDate;
begin
 DecodeDate(Date, YY, MM, DD);

 SdateP :=  EncodeDate(YY, MM , 1 )  ;

EdateP :=    IncMonth(SdateP, 1)-1;


DashQry.ParamByName('Sdate').AsDate := SdateP;
DashQry.ParamByName('Edate').AsDate := EdateP;
DashQry.Close;
DashQry.Open;
//var circle1, circle2, circle3, circle4;
//Estates, Units, Rented , Contracts

 //$(circle2).circleProgress('value',CircleForm.UniTrackBar3.getValue());

// UniSession.AddJS('$(circle1).circleProgress("caption",'''+DashQryEstCnt.DisplayLabel+''' );');
//
//  UniSession.AddJS('$(circle1).circleProgress("title",'+IntToStr(DashQryEstCnt.Value)+');');
//// UniSession.AddJS('$(circle1).circleProgress("title",''' +IntToStr(TrxCnt)+ ''');'); // �����
//// UniSession.AddJS('$(circle1).circleProgress("caption",''' + Cap + '''  );');//������ ���������


//Delphi Colors:  $00E6FFCC
//dddde1
//dddd1e
//PURble COLOR.
//fgcolor:'#d29ae2',  X
//tfntcolor:'#d29ae2', X
//cfntcolor:'#b0aeae', X
//ORANGE COLOR.
//fgcolor:'#fcb34d', x
//tfntcolor:'#fcb34d',x
//cfntcolor:'#b0aeae', x

UniHTMLFrame1.HTML.Text := '<script type="text/javascript">'
+ ' $(document).ready(function() '
+ '{ '
+ ' circle1=$(''#Estates'').circleProgress({ '
//+ 'title:''20''  , '                      // use '' for the Caption
+ 'title:  ''' +IntToStr(DashQryEstCnt.Value)+ '''  , '      //Estates Count
//+ 'caption:''New tasks'' , '
+ 'caption:''' + DashQryEstCnt.DisplayLabel + ''' , '

+ 'bgcolor:''#e1dddd'', '

+ 'fgcolor:''#54c0fd'', '
+ 'tfntcolor:''#54c0fd'', '
+ 'cfntcolor:''#b0aeae'', '

+ 'animationstep:2, '
+ 'rotateanimationstep:0.0, ' // 0.0: will rotate once till the Value- 0.4: will still rotate  .
+ 'total:100, '
+ 'value:100, '
+ 'mstyle:0, '
+ 'thik:25, '
+ 'shadow:1 '
+ '}); '
+ '    }); '
+ '  </script> '
// the last Div will affect RTL so We will do Seprate by Adding it to THE HTML from GetCircleDiv.
//+ '<div id="newTasks" style="width:100%;height:100%;overflow:hidden;background-color:#ededed;"></div> '
 + GetCircleDiv('Estates')
;


end;

procedure TMainForm.UniButton2Click(Sender: TObject);
begin

//PURble COLOR.
//fgcolor:'#d29ae2',  X
//tfntcolor:'#d29ae2', X
//cfntcolor:'#b0aeae', X
//ORANGE COLOR.
//fgcolor:'#fcb34d', x
//tfntcolor:'#fcb34d',x
//cfntcolor:'#b0aeae', x
//Estates, Units, Rented , Contracts
UniHTMLFrame2.HTML.Text := '<script type="text/javascript">'
+ ' $(document).ready(function() '
+ '{ '
+ ' circle2=$(''#Units'').circleProgress({ '
//+ 'title:''20''  , '                      // use '' for the Caption
+ 'title:  ''' +IntToStr(DashQryUntCnt.Value)+ '''  , '
//+ 'caption:''New tasks'' , '
+ 'caption:''' + DashQryUntCnt.DisplayLabel + ''' , '

+ 'bgcolor:''#e1dddd'', '

+ 'fgcolor:''#d29ae2'', '
+ 'tfntcolor:''#d29ae2'', '
+ 'cfntcolor:''#b0aeae'', '

+ 'animationstep:2, '
+ 'rotateanimationstep:0.0, ' // 0.0: will rotate once till the Value- 0.4: will still rotate  .
+ 'total:100, '
+ 'value:100, '
+ 'mstyle:0, '
+ 'thik:25, '
+ 'shadow:1 '
+ '}); '
+ '    }); '
+ '  </script> '
//+ '<div id="newTasks" style="width:100%;height:100%;overflow:hidden;background-color:#ededed;"></div> '
 + GetCircleDiv('Units')
;





end;

procedure TMainForm.UniButton3Click(Sender: TObject);
begin
//PURble COLOR.
//fgcolor:'#d29ae2',  X
//tfntcolor:'#d29ae2', X
//cfntcolor:'#b0aeae', X
//ORANGE COLOR.
//fgcolor:'#fcb34d', x
//tfntcolor:'#fcb34d',x
//cfntcolor:'#b0aeae', x
//Estates, Units, Rented , Contracts
UniHTMLFrame3.HTML.Text := '<script type="text/javascript">'
+ ' $(document).ready(function() '
+ '{ '
+ ' circle2=$(''#Rented'').circleProgress({ '
//+ 'title:''20''  , '                      // use '' for the Caption
+ 'title:  ''' +IntToStr(DashQryRenCnt.Value)+ '''  , '   //Not Rented CNT
//+ 'caption:''New tasks'' , '
+ 'caption:''' + DashQryRenCnt.DisplayLabel + ''' , '

+ 'bgcolor:''#e1dddd'', '

+ 'fgcolor:''#fcb34d'', '
+ 'tfntcolor:''#fcb34d'', '
+ 'cfntcolor:''#b0aeae'', '

+ 'animationstep:2, '
+ 'rotateanimationstep:0.1, ' // 0.0: will rotate once till the Value- 0.4: will still rotate  .
+ 'total:100, '
+ 'value:100, '
+ 'mstyle:0, '
+ 'thik:25, '
+ 'shadow:1 '
+ '}); '
+ '    }); '
+ '  </script> '
//+ '<div id="newTasks" style="width:100%;height:100%;overflow:hidden;background-color:#ededed;"></div> '
 + GetCircleDiv('Rented')
;

end;
/// مرحبا
procedure TMainForm.UniButton4Click(Sender: TObject);
begin
//Estates, Units, Rented , Contracts
UniHTMLFrame4.HTML.Text := '<script type="text/javascript">'
+ ' $(document).ready(function() '
+ '{ '
+ ' circle2=$(''#Contracts'').circleProgress({ '
//+ 'title:''20''  , '                      // use '' for the Caption
+ 'title:  ''' +IntToStr(DashQryConCnt.Value)+ '''  , '
//+ 'caption:''New tasks'' , '
+ 'caption:''' + DashQryConCnt.DisplayLabel + ''' , '

+ 'bgcolor:''#e1dddd'', '

+ 'fgcolor:''#00cc00'', '
+ 'tfntcolor:''#00cc00'', '
+ 'cfntcolor:''#b0aeae'', '

+ 'animationstep:2, '
+ 'rotateanimationstep:0.1, ' // 0.0: will rotate once till the Value- 0.4: will still rotate  .
+ 'total:100, '
+ 'value:100, '
+ 'mstyle:0, '
+ 'thik:25, '
+ 'shadow:1 '
+ '}); '
+ '    }); '
+ '  </script> '
//+ '<div id="newTasks" style="width:100%;height:100%;overflow:hidden;background-color:#ededed;"></div> '
 + GetCircleDiv('Contracts')
;

end;

procedure TMainForm.UniButton5Click(Sender: TObject);
var  perCent : Double;
begin
// circle1=$('#circle1').ProgressBar({position:89,devide:5,title:'250 GB',caption:'Free',icon:'files/images/hd.png',bgcolor:'#f7f6f6',clrborder:'#d2d0d0',clrstart:'#72c926',clrend: '#81d435',tfntcolor:'#acacac',cfntcolor:'#4f9f0a',animate:true});
// circle2=$('#circle2').ProgressBar({position:45,devide:4,title:'1.5 GB',caption:'Free',icon:'files/images/memory.png',bgcolor:'#f7f6f6',clrborder:'#d2d0d0',clrstart:'#50a8ef',clrend: '#73b9f2',tfntcolor:'#acacac',cfntcolor:'#1585df',animate:true});
//circle3=$('#circle3').ProgressBar({position:73,devide:8,title:'73%',caption:'Usage',icon:'files/images/cpuu.png',bgcolor:'#f7f6f6',clrborder:'#d2d0d0',clrstart:'#ecaa3c',clrend: '#f0b940',tfntcolor:'#acacac',cfntcolor:'#e19a24',animate:true});


if DashQryPaidCnt.Value > 0 then begin
 perCent := DashQryPaidCnt.Value/DashQryaPaidCnt.Value * 100;
 end else begin
 perCent := DashQryPaidCnt.Value;
end;



UniHTMLFrame5.HTML.Text := '<script type="text/javascript">  $(document).ready(function() '
+ '{ '
+ ' Prog1=$(''#Prog1'').ProgressBar({ '

+ 'position: '''+ FloatToStr( perCent  )   + ''',  '
+ 'devide:10, '

+ 'title:  ''' +  FloatToStr( Int(perCent) ) + '%'',     '     //Integer Part Only.

+ 'caption:''التحصيل''   , '

+ 'icon:''files/images/approval.png'',      '

+ 'bgcolor:''#f7f6f6'', '

+ 'clrborder:''#d2d0d0'', '
+ 'clrstart:''#72c926'', '
+ 'clrend:''#81d435'', '


+ 'fgcolor:''#00cc00'', '  //XXXX Not in Progrees


+ 'tfntcolor:''#acacac'', '
+ 'cfntcolor:''#4f9f0a'', '

+ 'animate:true '

+ '}); '
+ '    }); '
+ '  </script> '

//+ '<div id="Prog1" style="width:100%;height:100%;overflow:hidden;background-color:#ededed;"></div> '
//'  <div id="Prog1"   style="width:100%;height:100%;overflow:hidden;background-color:#ededed;"></div> ';
 + GetCircleDiv('Prog1')
;




end;

procedure TMainForm.UniButton6Click(Sender: TObject);

begin
TodayQry.ParamByName('Pdate').AsDate := Date;

TodayQry.Close;
TodayQry.Open;

pTodCont.Caption :=  TodayQryTodayCont.AsString;

if TodayQryTodayPaid.IsNull  then   // paids .
pTodPaid.Caption :=  '0' + ' ريال '
else
pTodPaid.Caption := FormatFloat('#,###.##' +  ' ريال ' ,TodayQryTodayPaid.AsFloat);


if TodayQryTodayMaint.IsNull  then   // Maintenance
 pTodMaint.Caption :=  '0' + ' ريال '
else
pTodMaint.Caption := FormatFloat('#,###.##' +  ' ريال ' ,TodayQryTodayMaint.AsFloat);



if TodayQryTodayIncome.IsNull  then   // Inceom ( Office )
pTodCome.Caption :=  '0' + ' ريال '
else
pTodCome.Caption := FormatFloat('#,###.##' +  ' ريال ' ,TodayQryTodayIncome.AsFloat);


if TodayQryTodayExpense.IsNull  then   // Expense ( Office)
 pTodExpense.Caption :=  '0' + ' ريال '
else
pTodExpense.Caption := FormatFloat('#,###.##' +  ' ريال ' ,TodayQryTodayExpense.AsFloat);







end;

procedure TMainForm.btnArchClick(Sender: TObject);
var tSQL:TUniSQL;
begin
  tSQL := TUniSQL.Create(self);
 tSQL.Connection := UniMainModule.MainDB;
// `ArcDate`, `Income`, `Expense`, `Contracts`, `Paids`, `Maint`
tSQL.SQL.Clear;
tSQL.SQL.Text := ''
+ ' INSERT INTO arch (ArcDate,Income,Expense,Contracts,Paids,Maint) '
+ ' Values ( '''+ DateToStr(Now) +'''  , '
+'   '''+ TodayQryTodayIncome.AsString +'''  , '
+'   '''+ TodayQryTodayExpense.AsString +'''   , '
+ '  '''+ TodayQryTodayCont.AsString +'''  , '
+'   '''+ TodayQryTodayPaid.AsString +'''  , '
+ '  '''+ TodayQryTodayMaint.AsString +'''   ) ' ;
tSQL.Execute;

tSQL.Free;






end;

procedure TMainForm.UniFormCreate(Sender: TObject);
var  ThemeI : Integer;
  S : TUniStringArray;
begin
 RTL := UniMainModule.RTL;

 if RTL then  siLang1.ActiveLanguage := 2 ;


  S := UniServerModule.ThemeManager.AllThemes;
   ThemeComboBox.Items.Clear;
  for ThemeI := Low(S) to High(S) do
    ThemeComboBox.Items.Add(S[ThemeI]);

  ThemeComboBox.Text := UniMainModule.Theme;


 FormatSettings.ShortDateFormat :=  'yyyy-MM-dd';




if UniMainModule.UserID <> 'Admin' then begin
aUserPrivs.Visible:= false;
aRegistration.Visible:= false;
aSysSettings.Visible:=false;
aArch.Visible := false;
UniTabSheet1.Free;
end;

//-Load Settings Parameters.
UniMainModule.gSendSMS:= GetSettingValue('SendSMS');


end;

procedure TMainForm.UniFormShow(Sender: TObject);
begin

 if UniMainModule.UserID = 'Admin' then  begin
    FCounter := 0;
    UniButton1Click(sender);
    UniButton2Click(sender);
    UniButton3Click(sender);
    UniButton4Click(sender);
    UniButton5Click(sender);

        UniButton6Click(sender);//Today


        btnEstBalClick(Sender);
    DashTimer.Enabled := True;
 end;


    if Trunc (Time * 24) < 12 then
begin
  if RTL then
  UniLabel1.Caption:= ' صباح الخير, '  + UniMainModule.LoggedUserNam
  else
  UniLabel1.Caption:= ' Good Morning, '  + UniMainModule.LoggedUserNam;
end
  else
 if RTL then
 UniLabel1.Caption:= ' مساء الخير, ' + UniMainModule.LoggedUserNam
  else
   UniLabel1.Caption:= ' Good afternoon, ' + UniMainModule.LoggedUserNam;


  //--// COmpany IMAGES ....
     if FileExists(UniMainModule.LogoImg) then
 LogoImg.Picture.LoadFromFile(UniMainModule.LogoImg);
if FileExists(UniMainModule.HomeImg) then
UniTabSheet1.Background.Picture.LoadFromFile(UniMainModule.HomeImg);
end;

procedure TMainForm.UniFSButton1Click(Sender: TObject);
var i:Integer;
begin

UsrNotifyQ.Close;
UsrNotifyQ.ParamByName('Me').AsString := UniMainModule.UserID;
UsrNotifyQ.Open;

if UsrNotifyQ.RecordCount >0 then begin

UniFSButton1.BadgeText.Text:=IntToStr(UsrNotifyQ.RecordCount);

   UsrNotifyQ.First;
 for I := 0 to UsrNotifyQ.RecordCount -1 do begin


 UniFSiGrowl1.Title:= 'From '+ UsrNotifyQ.FieldByName('FrmUsr').AsString;
 UniFSiGrowl1.Messages:=UsrNotifyQ.FieldByName('Task').AsString;

 UniFSiGrowl1.Run;

 UsrNotifyQ.Next;

 end;



end;

UsrNotifyF.ShowModal();

end;

initialization
  RegisterAppFormClass(TMainForm);

end.
