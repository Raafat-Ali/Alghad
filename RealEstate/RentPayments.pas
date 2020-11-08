unit RentPayments;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,JvJCLUtils,
  uniGUIClasses, uniGUIForm, BaseForm, siComp, uniGUIBaseClasses, uniPanel,
  uniBasicGrid, uniDBGrid, Data.DB, DBAccess, Uni, MemDS, uniCalendarPanel,
  uniButton, uniBitBtn, UniFSButton, uniMultiItem, uniComboBox, uniDBComboBox,
  uniDBLookupComboBox, uniDateTimePicker, uniLabel, uniDBText, uniDBEdit,
  uniEdit, uniCheckBox, uniSpeedButton, uniRadioButton, frxClass, frxDBSet,
  uniDBDateTimePicker, uniURLFrame, uniGridExporters, fs_iinterpreter;

type
  TRentPaymentsF = class(TBaseFormF)
    PaymentsVQ: TUniQuery;
    PaymentsVQsrc: TUniDataSource;
    UniQuery1: TUniQuery;
    CalPaymentsQ: TUniQuery;
    CalPaymentsQs: TUniDataSource;
    UniContainerPanel1: TUniContainerPanel;
    UniCalendarPanel1: TUniCalendarPanel;
    UniContainerPanel2: TUniContainerPanel;
    EstateCB: TUniDBLookupComboBox;
    UnitCB: TUniDBLookupComboBox;
    PaymentsVQID: TIntegerField;
    PaymentsVQContractNo: TIntegerField;
    PaymentsVQPaymentSN: TIntegerField;
    PaymentsVQPaymentDate: TDateField;
    PaymentsVQPaymentValu: TFloatField;
    PaymentsVQPaid: TBooleanField;
    PaymentsVQPayDate: TDateField;
    PaymentsVQPayType: TWideStringField;
    PaymentsVQtenantID: TIntegerField;
    PaymentsVQestNo: TIntegerField;
    PaymentsVQUnitNo: TIntegerField;
    PaymentsVQName: TWideStringField;
    PaymentsVQestName: TWideStringField;
    PaymentsVQUnit: TWideStringField;
    lookESTs: TUniDataSource;
    lookUNITs: TUniDataSource;
    ContractCB: TUniDBLookupComboBox;
    lookContractQ: TUniQuery;
    LookContractQs: TUniDataSource;
    lookEST: TUniQuery;
    lookUNIT: TUniQuery;
    PaymentPnl: TUniContainerPanel;
    SelecttedPnl: TUniContainerPanel;
    DuePaymentsQ: TUniQuery;
    DuePaymentsQs: TUniDataSource;
    PaidPymtsQ: TUniQuery;
    pnlFooter: TUniPanel;
    DetailsAsDuePymt: TUniQuery;
    ContractDetails: TUniDataSource;
    dbeContract: TUniDBEdit;
    UniDBEdit2: TUniDBEdit;
    UniDBEdit3: TUniDBEdit;
    dbeEstNo: TUniDBEdit;
    UniDBEdit5: TUniDBEdit;
    UniDBEdit6: TUniDBEdit;
    dbeUnitNo: TUniDBEdit;
    UniDBEdit8: TUniDBEdit;
    UniDBEdit9: TUniDBEdit;
    UniContainerPanel3: TUniContainerPanel;
    UniDBEdit10: TUniDBEdit;
    UniDBText1: TUniDBText;
    UniLabel1: TUniLabel;
    UniContainerPanel4: TUniContainerPanel;
    UniDBEdit11: TUniDBEdit;
    PnlPay: TUniContainerPanel;
    nePaidAmt: TUniNumberEdit;
    neDueAmt: TUniDBNumberEdit;
    neRestAmt: TUniNumberEdit;
    pnlPayBtns: TUniContainerPanel;
    AddPmtB: TUniButton;
    SavePmtB: TUniButton;
    PayDatePicker: TUniDateTimePicker;
    UniPanel1: TUniPanel;
    pnl: TUniContainerPanel;
    UniLabel2: TUniLabel;
    dbtPaymtSN: TUniDBText;
    UniEdit1: TUniEdit;
    pnlPaymentsV: TUniContainerPanel;
    pnlPaymentsVH: TUniContainerPanel;
    rbPaid: TUniRadioButton;
    rbUnPaid: TUniRadioButton;
    rbAll: TUniRadioButton;
    cbAsDate: TUniCheckBox;
    grdPaymtsPerDate: TUniDBGrid;
    UniButton1: TUniButton;
    MnthCB: TUniComboBox;
    YearCB: TUniComboBox;
    btnCancel: TUniButton;
    PayTypeQry: TUniQuery;
    PayTypeQryID: TIntegerField;
    PayTypeQrySection: TWideStringField;
    PayTypeQryPSection: TIntegerField;
    DS1: TUniDataSource;
    PayTypeCB: TUniDBLookupComboBox;
    PrintVouchQ: TUniQuery;
    rVoucher: TUniQuery;
    rVouchSrc: TUniDataSource;
    frxReport1: TfrxReport;
    pnlPymtEdit: TUniContainerPanel;
    CancelPmt: TUniButton;
    EdtPmt: TUniButton;
    UniPanel2: TUniPanel;
    lblPaid: TUniLabel;
    frxDBDataset1: TfrxDBDataset;
    SMSqry: TUniQuery;
    LandLordQry: TUniQuery;
    SMSqryRecID: TIntegerField;
    SMSqryEstNo: TIntegerField;
    SMSqryUnitNo: TIntegerField;
    SMSqryRecExp: TWideStringField;
    SMSqryRecValue: TFloatField;
    SMSqryRecDate: TDateField;
    SMSqryContractRef: TIntegerField;
    SMSqryPaymentSN: TIntegerField;
    SMSqryUnit: TWideStringField;
    SMSqryFloor: TWideStringField;
    SMSqryESTID: TIntegerField;
    SMSqryownerID: TIntegerField;
    SMSqryName: TWideStringField;
    SMSqryphone1: TWideStringField;
    UniURLFrame1: TUniURLFrame;
    frxDBDsNxtPmt: TfrxDBDataset;
    PrintNxtPmt: TUniQuery;
    PrintVouchQID: TIntegerField;
    PrintVouchQContractNo: TIntegerField;
    PrintVouchQPaymentSN: TIntegerField;
    PrintVouchQPaymentDate: TDateField;
    PrintVouchQPaymentValu: TFloatField;
    PrintVouchQPaid: TBooleanField;
    PrintVouchQPayDate: TDateField;
    PrintVouchQPayType: TWideStringField;
    PrintVouchQtenantID: TIntegerField;
    PrintVouchQestNo: TIntegerField;
    PrintVouchQUnitNo: TIntegerField;
    PrintVouchQName: TWideStringField;
    PrintVouchQPhone1: TWideStringField;
    PrintVouchQsUNIT: TStringField;
    PrintVouchQsFloor: TStringField;
    pnlDelayPmtNots: TUniContainerPanel;
    btnSaveNote: TUniButton;
    UniDBEdit1: TUniDBEdit;
    btnPrint: TUniButton;
    UniGridExcelExporter1: TUniGridExcelExporter;
    btnExport: TUniButton;
    PaymentsVQpmtNotes: TWideStringField;
    rVoucherRecID: TIntegerField;
    rVoucherEstNo: TIntegerField;
    rVoucherUnitNo: TIntegerField;
    rVoucherRecExp: TWideStringField;
    rVoucherRecValue: TFloatField;
    rVoucherRecDate: TDateField;
    rVoucherContractRef: TIntegerField;
    rVoucherPaymentSN: TIntegerField;
    rVoucherPayMethod: TIntegerField;
    PrintVouchQpmtNotes: TWideStringField;
    PrintVouchQRecID: TIntegerField;
    PrintVouchQRecValue: TFloatField;
    frxReport2: TfrxReport;
    PrintVouchQ2: TUniQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    DateField1: TDateField;
    FloatField1: TFloatField;
    BooleanField1: TBooleanField;
    DateField2: TDateField;
    WideStringField1: TWideStringField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    WideStringField2: TWideStringField;
    WideStringField3: TWideStringField;
    StringField1: TStringField;
    StringField2: TStringField;
    WideStringField4: TWideStringField;
    frxDBDpVoch22: TfrxDBDataset;
    grdVouchers: TUniDBGrid;
    pnlVouch: TUniContainerPanel;
    edtRecID: TUniDBEdit;
    edRecExp: TUniEdit;
    edRecValue: TUniEdit;
    edRecDate: TUniDateTimePicker;
    cbPayMethod: TUniDBLookupComboBox;
    rVouchersPayMethod: TStringField;
    rVoucherName: TWideStringField;
    rVoucherPhone1: TWideStringField;
    rVoucherContractID: TIntegerField;
    rVouchersUNIT: TStringField;
    rVouchersFloor: TStringField;
    lblContExpired: TUniLabel;
    procedure UniFormCreate(Sender: TObject);
    procedure UniCalendarPanel1DateChange(Sender: TUniCalendarPanel; AStartDate,
      AViewStart, AViewEnd: TDateTime);
    procedure UniCalendarPanel1DayClick(Sender: TUniCalendarPanel;
      ADate: TDateTime; Allday: Boolean);
    procedure UniCalendarPanel1ViewChange(Sender: TUniCalendarPanel;
      CurrentView: TUniCalendarViewType);
    procedure btnCancelClick(Sender: TObject);
    procedure ContractCBSelect(Sender: TObject);
    procedure UnitCBSelect(Sender: TObject);
    procedure grdPaymtsPerDateCellClick(Column: TUniDBGridColumn);
    procedure AddPmtBClick(Sender: TObject);
    procedure SavePmtBClick(Sender: TObject);
    procedure nePaidAmtChangeValue(Sender: TObject);
    procedure nePaidAmtChange(Sender: TObject);
    procedure rbPaidClick(Sender: TObject);
    procedure rbAllClick(Sender: TObject);
    procedure rbUnPaidClick(Sender: TObject);
    procedure grdPaymtsPerDateColumnSummaryResult(Column: TUniDBGridColumn;
      GroupFieldValue: Variant; Attribs: TUniCellAttribs; var Result: string);
    procedure PaymentsVQAfterOpen(DataSet: TDataSet);
    procedure EstateCBSelect(Sender: TObject);
    procedure EstateCBChange(Sender: TObject);
    procedure ContractCBChange(Sender: TObject);
    procedure UnitCBChange(Sender: TObject);
    procedure cbAsDateClick(Sender: TObject);
    procedure UniButton1Click(Sender: TObject);
    procedure PaymentsVQAfterScroll(DataSet: TDataSet);
    procedure MnthCBChange(Sender: TObject);
    procedure YearCBChange(Sender: TObject);
    procedure CancelPmtClick(Sender: TObject);
    procedure rVouchSrcDataChange(Sender: TObject; Field: TField);
    procedure btnPrintClick(Sender: TObject);
    procedure btnExportClick(Sender: TObject);

    procedure frxReport1BeforePrint(Sender: TfrxReportComponent);
    procedure PrintVouchQAfterOpen(DataSet: TDataSet);
    procedure dbeContractChangeValue(Sender: TObject);
  private
    { Private declarations }
  //    fADate : TDate;

  Cfltr,Efltr,Ufltr :String;

       GTotalPayValu: Real; // Sum Of Payments

 //   procedure FillCalendar;

  //  procedure SetBG(ACalendarPanel: TUniCalendarPanel; ADate: TDateTime); // Set BackGround Color as selected

    procedure CalcTotals;  //Calcs Sum Of Payments As shown In Grid;

     procedure PaymntFilter(Sender: TObject);

     procedure SendSMS();

  public
    { Public declarations }
  end;

function RentPaymentsF: TRentPaymentsF;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, G_Funcs, ShowReport, Main, FrToolsData,
  NumInWords;

function RentPaymentsF: TRentPaymentsF;
begin
  Result := TRentPaymentsF(UniMainModule.GetFormInstance(TRentPaymentsF));
end;
//==============================================================================
//------------------------------------------------
//------------------------------------------------
procedure TRentPaymentsF.SendSMS;
var WebPost,Msg:String;
begin

Msg:='����� x1, �� ���� ������ ��� x2 �� ����� x3 ����� x4 ���� ������ x5';
{where  EstNo=:Est And UnitNo=:Unt And ContractRef=:ConID
 And PaymentSN=:PmtSN}
SMSqry.Close;
SMSqry.ParamByName('Est').AsString := dbeEstNo.Text;
SMSqry.ParamByName('Unt').AsString := dbeUnitNo.Text;
SMSqry.ParamByName('ConID').AsString := dbeContract.Text;
SMSqry.ParamByName('PmtSN').AsString := dbtPaymtSN.Caption;
SMSqry.Open;

if SMSqry.RecordCount = 1 then begin

Msg := StringReplace(Msg, 'x1', SMSqryName.AsString , [rfReplaceAll, rfIgnoreCase]);
Msg := StringReplace(Msg, 'x2', SMSqryPaymentSN.AsString , [rfReplaceAll, rfIgnoreCase]);
Msg := StringReplace(Msg, 'x3', SMSqryUnit.AsString , [rfReplaceAll, rfIgnoreCase]);
Msg := StringReplace(Msg, 'x4', SMSqryRecValue.AsString , [rfReplaceAll, rfIgnoreCase]);
Msg := StringReplace(Msg, 'x5', SMSqryRecDate.AsString , [rfReplaceAll, rfIgnoreCase]);


WebPost:='https://www.alfa-cell.com/api/msgSend.php?apiKey=a21f6b73ddbd4c15011f60bb2734185f'
+'&numbers='+SMSqryphone1.AsString+' '
+'&sender=Aqar Alghad'
+'&msg='+Msg
+'&lang=3'
+'&applicationType=68';

//ShowMessage(Msg);
UniURLFrame1.URL:= WebPost;
end;
//����� ���� ������ �� ���� ������ ��� <2> ��� ����� ��� �<4> ����� 8000 ���� ������ 2020-06-11

{
https://www.alfa-cell.com/api/msgSend.php?apiKey=a010a5acb42537e78965fb6a19ea&numbers=966555555555&sender=NEW
SMS&msg=06450631062D0628062700200628064300200641064A00200041006C00660061002D00430065006C006C002E0063006F0
06D&applicationType=68 }
//https://www.alfa-cell.com/api/msgSend.php?apiKey=a21f6b73ddbd4c15011f60bb2734185f&numbers=966536015848&sender=Aqar Alghad&msg=����� ��� �� ���� ����&applicationType=68&returnJson=1&lang=3




end;
//------------------------------------------------
//------------------------------------------------
procedure TRentPaymentsF.PaymntFilter(Sender: TObject);
var Fltr:String;
begin

     if cbAsDate.Checked then begin
   PaymentsVQ.FilterSQL := 'PaymentDate Between  ''' + YearCB.Text + '-' + MnthCB.Text + '-01'' '
     +'  And ''' + YearCB.Text + '-' + MnthCB.Text + '-30'' '
     end else
        PaymentsVQ.FilterSQL := '';

 Fltr :='ID <> NULL ';
 if not Cfltr.IsEmpty then
  Fltr := Fltr +' And '+ Cfltr ;

 if not Efltr.IsEmpty then
  Fltr := Fltr +' And '+ Efltr ;

 if not Ufltr.IsEmpty then
  Fltr := Fltr +' And '+ Ufltr ;


    if rbPaid.Checked then
    Fltr := Fltr + '  And Paid=True';
   if rbUnPaid.Checked then
    Fltr := Fltr + '  And Paid=False';


//'''' + YearCB.Text + '''-''' + MnthCB.Text + '''-01';
//if Sender = ContractCB then begin
//
//     Fltr := Cfltr ;
//
//   if rbPaid.Checked then
//    Fltr := Fltr + '  And Paid=True';
//   if rbUnPaid.Checked then
//    Fltr := Fltr + '  And Paid=False';
//end;
//if Sender = EstateCB then begin
//
//       Fltr := Efltr ;
//
//   if rbPaid.Checked then
//    Fltr := Fltr + '  And Paid=True';
//   if rbUnPaid.Checked then
//    Fltr := Fltr + '  And Paid=False';
//end;
//
//if Sender = UnitCB then begin
//
//       Fltr := Ufltr ;
//
//   if rbPaid.Checked then
//    Fltr := Fltr + '  And Paid=True';
//   if rbUnPaid.Checked then
//    Fltr := Fltr + '  And Paid=False';
//end;



   PaymentsVQ.Filter:=Fltr;
  PaymentsVQ.Filtered:=true;



//ShowMessage( Fltr);
//ShowMessage( PaymentsVQ.FilterSQL);
CalcTotals;
PaymentsVQ.Refresh;

end;
procedure TRentPaymentsF.PrintVouchQAfterOpen(DataSet: TDataSet);
begin
  inherited;

end;

//------------------------------------------------
//------------------------------------------------
//------------------------------------------------
// We need to handle calculating Totals here because our grid is paged and only one page is displayed at a time
procedure TRentPaymentsF.CalcTotals;
var
  B : TBookmark;
begin

  //PaymentsVQ.DisableControls;
  B := PaymentsVQ.GetBookmark;
  try
    //GTotal := 0;     // Replaced with the RECORD Counts OF the PaymentsVQ
    GTotalPayValu := 0.0;

    PaymentsVQ.First;
    while not PaymentsVQ.Eof do
    begin
    //  GTotal := GTotal + ClientDataSet1.FieldByName('Quantity').AsInteger;
      GTotalPayValu := GTotalPayValu + PaymentsVQ.FieldByName('PaymentValu').AsFloat;

//                    * ClientDataSet1.FieldByName('Quantity').AsInteger );

      PaymentsVQ.Next;
    end;
  finally
    PaymentsVQ.GotoBookmark(B);
    PaymentsVQ.FreeBookmark(B);
  //  PaymentsVQ.EnableControls;
  end;
end;
procedure TRentPaymentsF.CancelPmtClick(Sender: TObject);
var tSQL:TUniSQL;
begin
  inherited;

  tSQL := TUniSQL.Create(self);
 tSQL.Connection := UniMainModule.MainDB;

if ShowSwA('Are you sure you want to Cancel Payment?',4) then begin

DelEstTrans(edtRecID.Text);  //----------------Important

tSQL.SQL.Clear;    //Update The stats of the Due Payment as NOT PAID.
tSQL.SQL.Text := 'UPDATE payments Set PAID = FALSE ,PayDate='', PayType='' '
+' WHERE ContractNo = '''+ dbeContract.Text +''' AND PaymentSN = '''+ dbtPaymtSN.Caption +'''  ' ;
tSQL.Execute;

tSQL.SQL.Clear;    //DELETE the Voucher
tSQL.SQL.Text := 'DELETE from rvouchers '
+' WHERE ContractRef = '''+ dbeContract.Text +''' AND PaymentSN = '''+ dbtPaymtSN.Caption +'''  ' ;
tSQL.Execute;


 PaymentsVQ.Refresh;
 CalcTotals;

  ShowSwA('Payment has been Cancelled successfully',3);
end;

tSQL.Free;
   // AType : 0-Inf 1-Success 2-ERORR  3-Warning 4-Question
  //  ShowSwA('Payment has been Registered successfully',1);

//Are you sure you want to Cancel Payment?
//Payment has been Cancelled successfully
//Are you sure you want to Edit Payment?
//Data saved successfully, Do you Want to Print Voucher?


end;

procedure TRentPaymentsF.cbAsDateClick(Sender: TObject);
begin
  inherited;
MnthCB.Enabled := cbAsDate.Checked;
YearCB.Enabled := cbAsDate.Checked;

PaymntFilter(Sender);
 // CalcTotals
end;

//------------------------------------------------
//procedure TRentPaymentsF.SetBG(ACalendarPanel: TUniCalendarPanel; ADate: TDateTime);
//begin
//  with ACalendarPanel do
//  begin
//    JSInterface.JSCode(#1'.getEl().select(''.x-calendar-weeks-cell'').elements.forEach(function(el){el.style["background-color"]=""});');
//    JSInterface.JSAssign('selDate', [FormatDateTime('YYYY-mm-dd', ADate)]);
//    JSInterface.JSCode('me='#1'.getEl().select(''.x-calendar-weeks-cell[data-date="''+'#1'.selDate+''"]'').elements[0]; if(me){me.style["background-color"]="green"};');
//  end
//end;
//------------------------------------------------
procedure TRentPaymentsF.AddPmtBClick(Sender: TObject);
begin
  inherited;
   if not dbeContract.IsBlank then begin

   if DuePaymentsQ.FieldByName('Paid').AsBoolean = true then  begin
     //SHow Edit Pnl for Admin if the payment is Paid
   pnlPymtEdit.Visible:= (UniMainModule.UserID = 'Admin')  And (PaymentsVQPaid.Value=True);
   ShowSwA('Payment Already Paid',3);
   pnlVouch.Visible :=true;

   //PayDatePicker.DateTime := StrToDate(edRecDate.Text);

   end else begin
     PayDatePicker.DateTime := Date;

     PnlPay.Visible := true;
   nePaidAmt.Visible := true;
   neRestAmt.Visible := true;
   PayDatePicker.Visible := true;
   SavePmtB.Enabled := True;

   UniEdit1.Text :=  '���� ������ ��� <'+dbtPaymtSN.Text+'>  �� ����� ���  <'+dbeContract.Text+'>';

 
   UniEdit1.Visible := true;
   btnCancel.Visible:=true;
   SavePmtB.Visible:=true;
  end;
   end;
end;
//------------------------------------------------
procedure TRentPaymentsF.ContractCBChange(Sender: TObject);
begin
  inherited;
if ContractCB.IsBlank then
    Cfltr := '';
end;

procedure TRentPaymentsF.ContractCBSelect(Sender: TObject);
begin
  inherited;

  DuePaymentsQ.Close;
  DuePaymentsQ.SQL.Clear;
  DuePaymentsQ.SQL.Text := ''
+ ' Select * From Payments  '
+ ' WHERE ContractNo = '''+ContractCB.ListSource.DataSet.FieldByName('ContractID').AsString+'''   '
+ '  And Paid = False  '

+ '  LIMIT 1  ';


  DuePaymentsQ.Open;





     Cfltr :='ContractNo='+ContractCB.KeyValueStr;
  PaymntFilter(Sender);


//Order By COntractNo , PaymentSN

end;
procedure TRentPaymentsF.dbeContractChangeValue(Sender: TObject);
begin
  inherited;
lblContExpired.Visible := dbeContract.DataSource.DataSet.FieldByName('Termination').AsBoolean
end;

//------------------------------------------------


procedure TRentPaymentsF.EstateCBChange(Sender: TObject);
begin
  inherited;
if EstateCB.IsBlank then begin
  lookUNIT.Filtered:= false;

    Efltr := '';
end;

end;

procedure TRentPaymentsF.EstateCBSelect(Sender: TObject);
begin
  inherited;

  if not EstateCB.IsBlank then  begin
  lookUNIT.Filter := 'EstNo='+EstateCB.ListSource.DataSet.FieldByName(EstateCB.KeyField).AsString;
lookUNIT.Filtered:= true;

Efltr :='estNo='+EstateCB.KeyValueStr;
PaymntFilter(Sender);
  end;
end;

procedure TRentPaymentsF.frxReport1BeforePrint(Sender: TfrxReportComponent);
begin
  inherited;
  if Sender.Name = 'NumWmemo' then
      (sender as TfrxMemoView).Memo.Text := NumberInWords(PrintVouchQ.FieldByName('RecValue').AsInteger);

end;



//------------------------------------------------
//procedure TRentPaymentsF.FillCalendar;       RRRR
//Var   Sdate,Edate, Pdate: TDate;
//      SdateStr,EdateStr ,ESTn,PMTs,PaidCount : String;
//
//      E: TUniCalendarEvent;
//begin
//
//
//Sdate :=    UniCalendarPanel1.StartDate;
////Edate :=       IncMonth(Sdate, 1)-1;
// Edate :=  IncDate(Sdate,0,1,0)-1 ;
//
//SdateStr := DateToStr(Sdate); //  FormatDateTime('yyyy-mm-dd',Sdate);
//EdateStr := DateToStr(Edate); //  FormatDateTime('yyyy-mm-dd',Edate);
//
//
//
//
//  PaidPymtsQ.Close;      ///PAIDPerDay
//  PaidPymtsQ.SQL.Clear;
//  PaidPymtsQ.SQL.Text := ''
//  + ' SELECT EstNo, PaymentDate , count(PaymentDate) as PAIDPerDay, Paid'
//  + ' FROM  payments_view  '
//  + ' where PaymentDate between '
//  + ' '''+ SdateStr +''' AND  '''+ EdateStr +'''  '
//
//  + ' And Paid = True  '
//
//
//  + ' GROUP by estNo ,PaymentDate ' ;
//  PaidPymtsQ.Open;
//
//
//  UniCalendarPanel1.Events.Clear;
//
// CalPaymentsQ.Close;
// CalPaymentsQ.SQL.Clear;
// CalPaymentsQ.SQL.Text := ''
//  + ' SELECT EstNo, PaymentDate , count(PaymentDate) as PymsPerDay, Paid'
//  + ' FROM  payments_view  '
//  + ' where PaymentDate between '
//  + ' '''+ SdateStr +''' AND  '''+ EdateStr +'''  '
//
//
//
//  + ' GROUP by estNo ,PaymentDate ' ;
//
//
// CalPaymentsQ.Open;
//
//
////  E := UniCalendarPanel1.Events;
// if CalPaymentsQ.RecordCount  > 0 then  begin
//
//      CalPaymentsQ.First;
//
//  while not CalPaymentsQ.Eof do begin
//
//   Pdate := CalPaymentsQ.FieldByName('PaymentDate').AsDateTime;
//    // StrToDate( FormatDateTime('mm/dd/yyyy' , CalPaymentsQ.FieldByName('PaymentDate').AsDateTime ) );
//
//   ESTn := CalPaymentsQ.FieldByName('EstNo').AsString;
//   PMTs := CalPaymentsQ.FieldByName('PymsPerDay').AsString;
//
//
//   PaidCount :=PaidPymtsQ.FieldByName('PAIDPerDay').AsString;
//   if PaidCount='' then PaidCount:= '0'  ;
//
//
//
//    E := UniCalendarPanel1.Events.Add;
//
//   E.CalendarId := 2;
//   E.Title := '[ ' +ESTn + ' ] =  ' +  PMTs  +  ' / '   + PaidCount ;
//   E.StartDate :=  Pdate;
//   E.EndDate   := Pdate;
//   E.IsAllDay := True;
//
//
//   CalPaymentsQ.Next;
//   end;
//
//
// end;
//end;

procedure TRentPaymentsF.UniButton1Click(Sender: TObject);
begin
  inherited;
  btnCancelClick(Sender);
//lookContractQ.Refresh;
//lookEST.Refresh;
//lookUNIT.Refresh;

lookContractQ.Close;
lookEST.Close;
lookUNIT.Close;

PaymentsVQ.Close;

rbPaid.Checked:=false;
rbPaid.Checked:=false;
rbAll.Checked:=false;
cbAsDate.Checked:=false;

MnthCB.ItemIndex:=0; MnthCB.Enabled:=False;
YearCB.ItemIndex:=0; YearCB.Enabled:=False;

//ContractCB.Clear;
EstateCB.Clear;
UnitCB.Clear;
 ContractCB.keyvalue:=null;
UnitCB.keyvalue:=null;
EstateCB.keyvalue:=null;

PaymentsVQ.FilterSQL:='';
PaymentsVQ.Filter:='';
PaymentsVQ.Filtered:=False;

Cfltr:=''; Efltr:=''; Ufltr:='';

PaymentsVQ.Open;

lookContractQ.Open;
lookEST.Open;
lookUNIT.Open;


end;

procedure TRentPaymentsF.btnExportClick(Sender: TObject);
begin
  inherited;

  grdPaymtsPerDate.Exporter.Exporter := UniGridExcelExporter1;

  grdPaymtsPerDate.Exporter.ExportGrid;


end;

procedure TRentPaymentsF.btnCancelClick(Sender: TObject);
begin
  inherited;


if PaymentsVQPaid.Value=True then begin   //if already PAID.
 // pnlVouch.Visible := True;
   lblPaid.Visible := True;



 UniEdit1.Visible := false;
 PnlPay.Enabled := false;

   AddPmtB.Visible:= false;
//SavePmtB.Enabled := False;
 AddPmtB.Enabled:= False;


 pnlDelayPmtNots.Enabled := false;
 btnPrint.Enabled := true;



 if UniMainModule.UserID= 'Admin' then
 pnlPymtEdit.Visible:=true;

end else begin
//  pnlVouch.Visible := False;
   lblPaid.Visible := False;

  PnlPay.Enabled := true;

   UniEdit1.Text := '';
UniEdit1.Visible := false;

SavePmtB.Enabled := False;
 AddPmtB.Enabled:= True;     AddPmtB.Visible:= true;


  pnlDelayPmtNots.Enabled := true;
 btnPrint.Enabled := false;


  pnlPymtEdit.Visible:=false;
end;







nePaidAmt.Value := 0;

SavePmtB.Visible:=false;
btnCancel.Visible:=false;

//pnlVouch.Visible :=true;
end;

procedure TRentPaymentsF.btnPrintClick(Sender: TObject);
begin
  inherited;

//  PrintVouchQ2   (Already Paid Voucher )
 PrintVouchQ2.Close;


                      /////////PRINT HE VOUCHER  PrintVouchQ2
//PrintVouchQ2.ParamByName('ConID').AsString := dbeContract.Text;
//PrintVouchQ2.ParamByName('PmtSN').AsString := dbtPaymtSN.Caption;
//PrintVouchQ2.ParamByName('Est').AsString := dbeEstNo.Text;
//PrintVouchQ2.ParamByName('Unt').AsString := dbeUnitNo.Text;

PrintNxtPmt.Close;
PrintNxtPmt.SQL.Clear;
PrintNxtPmt.SQL.Text := 'Select  NXTPmt.PaymentDate as pmtToDate From payments As NXTPmt '
+' WHERE  ContractNo = :ConID  And PaymentSN = :PmtSN +1 ';
PrintNxtPmt.ParamByName('ConID').AsString := rVoucherContractRef.AsString;
PrintNxtPmt.ParamByName('PmtSN').AsInteger := StrToInt(rVoucherPaymentSN.AsString);
    PrintNxtPmt.Open;
 if PrintNxtPmt.RecordCount < 1 then begin
 PrintNxtPmt.Close;
PrintNxtPmt.SQL.Clear;
PrintNxtPmt.SQL.Text := 'Select  NXTPmt.contT as pmtToDate From contracts As NXTPmt '
+' WHERE  ContractID = :ConID';
PrintNxtPmt.ParamByName('ConID').AsString := rVoucherContractRef.AsString;
 end;

 MainForm.DwnRepoFile:=False;
  DataFrTools.MyFrxLoad(frxReport2,'PaidVoucher2');

  PrintNxtPmt.Open;
 // PrintVouchQ2.Open;
//
//
  DataFrTools.MyFrxShow(frxReport2);
//





end;

procedure TRentPaymentsF.UniCalendarPanel1DateChange(Sender: TUniCalendarPanel;
  AStartDate, AViewStart, AViewEnd: TDateTime);
begin
  inherited;
//  ShowMessage('AStartDate  ' + DateToStr(AStartDate));
//  ShowMessage('AViewStart  ' +DateToStr(AViewStart));
//  ShowMessage('AViewEnd  ' +DateToStr(AViewEnd));
//    ShowMessage('CAl  ' +DateToStr( UniCalendarPanel1.StartDate));


//R  SetBG(UniCalendarPanel1, UniCalendarPanel1.StartDate);
//R    FillCalendar;
end;

procedure TRentPaymentsF.UniCalendarPanel1DayClick(Sender: TUniCalendarPanel;
  ADate: TDateTime; Allday: Boolean);
begin
  inherited;
//showMessage(   DateToStr( ADate));
// PaymentsVQ.FilterSQL := 'PaymentDate='+  FormatDateTime('yyyy-mm-dd',ADate) ;
// PaymentsVQ.Filter :=   'PaymentDate='+  FormatDateTime('yyyy-mm-dd',ADate) ;


//if cbAsDate.Checked then  begin
//
//  PaymentsVQ.Filter :=   'PaymentDate=   '''+DateToStr(ADate)+''' '   ;
//  PaymentsVQ.Filtered:=true;
//end;
 //RR fADate := ADate;


 //  SetBG(UniCalendarPanel1, UniCalendarPanel1.StartDate);
  //RR   SetBG(UniCalendarPanel1, ADate);
end;

procedure TRentPaymentsF.UniCalendarPanel1ViewChange(Sender: TUniCalendarPanel;
  CurrentView: TUniCalendarViewType);
begin
  inherited;
//RR  if CurrentView = cvMonth then
//RR    SetBG(UniCalendarPanel1, UniCalendarPanel1.StartDate);
//RR
//RR  FillCalendar;
end;

procedure TRentPaymentsF.grdPaymtsPerDateCellClick(Column: TUniDBGridColumn);
begin
  inherited;
  DuePaymentsQ.Close;
  DuePaymentsQ.SQL.Clear;
  DuePaymentsQ.SQL.Text := ''
+ ' Select * From Payments  '
+ ' WHERE ContractNo = '''+PaymentsVQContractNo.AsString +'''   '
+ ' And 	PaymentSN  = '''+ PaymentsVQPaymentSN.AsString +'''   ';

  DuePaymentsQ.Open;


  btnCancelClick(nil);
end;

procedure TRentPaymentsF.grdPaymtsPerDateColumnSummaryResult(
  Column: TUniDBGridColumn; GroupFieldValue: Variant; Attribs: TUniCellAttribs;
  var Result: string);
begin
  inherited;
  if SameText(Column.FieldName, 'Name') then
  begin
  //  Result:=Format('Total Units: %d', [GTotal]);
      Result:=Format('  ��� �������:   %d', [PaymentsVQ.RecordCount]);

    Attribs.Font.Style:=[fsBold];
    Attribs.Font.Color:=clGreen;
  end
  else if SameText(Column.FieldName, 'PaymentDate') then
  begin
     Result:=' �������: ';
    Attribs.Font.Style:=[fsBold];
    Attribs.Font.Color:=clNavy;
  end
  else if SameText(Column.FieldName, 'PaymentValu') then
  begin
  Result:=FormatCurr('0,0.00 ', GTotalPayValu); // + FmtSettings.CurrencyString;

    Attribs.Font.Style:=[fsBold];
    Attribs.Font.Color:=clNavy;
  end;



end;

procedure TRentPaymentsF.MnthCBChange(Sender: TObject);
begin
  inherited;
PaymntFilter(Sender);
end;

procedure TRentPaymentsF.nePaidAmtChange(Sender: TObject);
begin
  inherited;
 neRestAmt.Value := neDueAmt.Value  -   nePaidAmt.Value;
end;

procedure TRentPaymentsF.nePaidAmtChangeValue(Sender: TObject);
begin
  inherited;
  neRestAmt.Value := neDueAmt.Value  -   nePaidAmt.Value;
end;

procedure TRentPaymentsF.PaymentsVQAfterOpen(DataSet: TDataSet);
begin
  inherited;
CalcTotals
end;

procedure TRentPaymentsF.PaymentsVQAfterScroll(DataSet: TDataSet);
begin
  inherited;
//btnCancelClick(nil);
end;

procedure TRentPaymentsF.SavePmtBClick(Sender: TObject);
var tSQL:TUniSQL;
PaidDate:TDate;
payEXP:String;
begin
  inherited;

  if nePaidAmt.Value > neDueAmt.Value then  begin
  ShowSwA('The amount paid is greater than the amount due!',3);
  exit;
  end;

   if nePaidAmt.Value = 0 then    begin
  ShowSwA('The amount paid is greater than the amount due!',3);
  exit;
  end;

 PaidDate := PayDatePicker.DateTime;

// if neRestAmt.Value = 0 then
//payEXP:= UniEdit1.Text
// else
//payEXP := UniEdit1.Text + ' / ���' ;

  if neRestAmt.Value <> 0 then
   payEXP :=  UniEdit1.Text + ' / ���'
   else
   payEXP:= UniEdit1.Text;


  UniEdit1.Text:=  payEXP ;

//  rVoucher.Close;   //----*
 // rVoucher.SQL.Clear;
  //
// LastVOCH.Close;
// LastVOCH.SQL.Clear;




 tSQL := TUniSQL.Create(self);
 tSQL.Connection := UniMainModule.MainDB;
// SELECT `RecID`, `EstNo`, `UnitNo`, `RecExp`, `RecValue`, `RecDate`, `ContractRef`,`PaymentSN` FROM `rvouchers`
 //Insert into RECEPT Vocher
tSQL.SQL.Clear;
tSQL.SQL.Text := ''
+ ' INSERT INTO rvouchers (EstNo,UnitNo,RecExp,RecValue,RecDate,ContractRef,PaymentSN,PayMethod) '
+ ' Values ( '''+ dbeEstNo.Text +'''  , '
+'   '''+ dbeUnitNo.Text +'''  , '
//+'   '''+ UniEdit1.Text +'''   , '
+'   '''+ payEXP +'''   , '
+ '  '''+ nePaidAmt.Text +'''  , '
+'   '''+ DateToStr(PaidDate) +'''  , '
+ '  '''+ dbeContract.Text +'''  , '
+ '  '''+ dbtPaymtSN.Caption +''' , '
+ '  '''+ PayTypeQryID.AsString +'''   ) ' ;
//   Update units Set isRented = False where ID =     '''+ UnitDetailsQID.AsString +'''   ');
tSQL.Execute;




if neRestAmt.Value = 0 then begin  // if he paid in FULL payment..

tSQL.SQL.Clear;    //Update The stats of the Due Payment as PAID, IF the Amount WAS FULL AMOUNT PAID
tSQL.SQL.Text := 'UPDATE payments Set PAID = TRUE ,PayDate='''+ DateToStr(PaidDate) +''', PayType='''+PayTypeCB.Text+''' '
+' WHERE ContractNo = '''+ dbeContract.Text +''' AND PaymentSN = '''+ dbtPaymtSN.Caption +'''  ' ;
tSQL.Execute;

end else begin
tSQL.SQL.Clear;    //Update The stats of the Due Payment as PAID, IF the Amount WAS FULL AMOUNT PAID
tSQL.SQL.Text := 'UPDATE payments Set PaymentValu = '''+ neRestAmt.Text +'''  ,PayDate='''+ DateToStr(PaidDate) +''', PayType='''+PayTypeCB.Text+''' '
+' WHERE ContractNo = '''+ dbeContract.Text +''' AND PaymentSN = '''+ dbtPaymtSN.Caption +'''  ' ;
tSQL.Execute;

 end;

 //Estate-BALANCE-
//InsertEstTrans(TableName: String );
InsertEstTrans('rvouchers');



//PayDatePicker.Visible := False;
//SavePmtB.Enabled := False;
//




//UniEdit1.Text := '';
//UniEdit1.Visible := false;
//btnCancel.Visible:=false;


  ShowSwA('Payment has been Registered successfully',1);

if UniMainModule.gSendSMS ='T' then
  SendSMS();



 //ShowSwA('SMS Message has been Sent successfully',1);

//  if ShowSwA('Do you Want to Print Voucher?',4) then begin
//
//
//
//
//  PrintVouchQ.Close;
//                      /////////PRINT HE VOUCHER
// PrintVouchQ.ParamByName('ConID').AsString := dbeContract.Text;
// PrintVouchQ.ParamByName('PmtSN').AsString := dbtPaymtSN.Caption;
// PrintVouchQ.ParamByName('Est').AsString := dbeEstNo.Text;
// PrintVouchQ.ParamByName('Unt').AsString := dbeUnitNo.Text;
//
//
//
//
//
// PrintNxtPmt.Close;
// PrintNxtPmt.SQL.Clear;
// PrintNxtPmt.SQL.Text := 'Select  NXTPmt.PaymentDate as pmtToDate From payments As NXTPmt '
// +' WHERE  ContractNo = :ConID  And PaymentSN = :PmtSN +1 ';
// PrintNxtPmt.ParamByName('ConID').AsString := dbeContract.Text;
// PrintNxtPmt.ParamByName('PmtSN').AsInteger := StrToInt(dbtPaymtSN.Caption);
//    PrintNxtPmt.Open;
// if PrintNxtPmt.RecordCount < 1 then begin
// PrintNxtPmt.Close;
// PrintNxtPmt.SQL.Clear;
// PrintNxtPmt.SQL.Text := 'Select  NXTPmt.contT as pmtToDate From contracts As NXTPmt '
// +' WHERE  ContractID = :ConID';
// PrintNxtPmt.ParamByName('ConID').AsString := dbeContract.Text;
//    end;
//
//  MainForm.DwnRepoFile:=False;
//  DataFrTools.MyFrxLoad(frxReport1,'PaidVoucher');
//
//
//
//  PrintNxtPmt.Open;
//
//  PrintVouchQ.Open;
//
//  //  LastVOCH.Open;
//
//  DataFrTools.MyFrxShow(frxReport1);
//
//
//
//  end;

btnCancelClick(Sender);


tSQL.Free;


 neRestAmt.Value := 0;


PaymntFilter(Sender);
//
 PaymentsVQ.Refresh;


AddPmtB.Enabled:= false;


end;

procedure TRentPaymentsF.UniFormCreate(Sender: TObject);
//var    YY, MM, DD: Word;
begin
  inherited;
// DecodeDate(Date, YY, MM, DD);
// UniCalendarPanel1.StartDate :=    EncodeDate(YY, MM , 1 )  ;
//
//
  //R FillCalendar;
PayTypeQry.Open;
rVoucher.Open;




 AdjustGridView(grdPaymtsPerDate);
  AdjustGridView(grdVouchers);

 end;



procedure TRentPaymentsF.rbAllClick(Sender: TObject);
begin
  inherited;


    PaymntFilter(Sender);

 // CalcTotals;

     AddPmtB.Visible:= true;
//if cbAsDate.Checked then  begin
////R   PaymentsVQ.Filter :=   'PaymentDate='''+DateToStr(fADate)+''' '  ;
//   PaymentsVQ.Filtered:=true;
//end
//  else
//   PaymentsVQ.Filtered:=false;

end;

procedure TRentPaymentsF.rbPaidClick(Sender: TObject);
begin
  inherited;
//PaymentsVQ.Filtered :=False;
// PaymentsVQ.Filtered :=True;
// PaymentsVQ.Refresh;
  PaymntFilter(Sender);
 // CalcTotals;

 PnlPay.Enabled := false;
  AddPmtB.Visible:= false;
end;

procedure TRentPaymentsF.rbUnPaidClick(Sender: TObject);
begin
  inherited;
  PaymntFilter(Sender);

 // CalcTotals ;
 PnlPay.Enabled := true;
    AddPmtB.Visible:= true;

     pnlPymtEdit.Visible:=false;
end;

procedure TRentPaymentsF.rVouchSrcDataChange(Sender: TObject; Field: TField);
begin
  inherited;
edRecExp.Text := rVoucher.FieldByName('RecExp').AsString;
edRecValue.Text :=    rVoucher.FieldByName('RecValue').AsString;
edRecDate.Text := rVoucher.FieldByName('RecDate').Text;
//cbPayMethod
cbPayMethod.KeyValue:= rVoucher.FieldByName('PayMethod').AsInteger  ;
//cbPayMethod.ListSource.DataSet.FieldByName()
//
// rVoucher.FieldByName('PayMethod').AsString;
//
//PayTypeQry.Locate('ID',rVoucher.FieldByName('PayMethod').AsString,[]);
//unidblookupcombobox1.keyvalue:=unidblookupcombobox1.listsource.dataset.fieldbyname(unidblookupcombobox1.keyfield). value


end;

procedure TRentPaymentsF.UnitCBChange(Sender: TObject);
begin
  inherited;
if UnitCB.IsBlank then
   Ufltr := '';
end;

procedure TRentPaymentsF.UnitCBSelect(Sender: TObject);
begin
  inherited;
  DuePaymentsQ.Close;
  DuePaymentsQ.SQL.Clear;
  DuePaymentsQ.SQL.Text := ''
+ ' Select * From Payments  '
+ ' WHERE ContractNo = '''+UnitCB.ListSource.DataSet.FieldByName('ContractID').AsString+'''   '
+ '  And Paid = False  '

+ '  LIMIT 1  ';


  DuePaymentsQ.Open;


  Ufltr :='UnitNo='+UnitCB.KeyValueStr;
  PaymntFilter(Sender);


end;

procedure TRentPaymentsF.YearCBChange(Sender: TObject);
begin
  inherited;
PaymntFilter(Sender);
end;

end.
