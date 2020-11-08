unit Reports;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,uniDateUtils,
  uniGUIClasses, uniGUIForm, BaseForm, siComp, uniGUIBaseClasses, uniPanel,
  uniMultiItem, uniComboBox, uniDBComboBox, uniDBLookupComboBox, Data.DB,
  DBAccess, Uni, MemDS, uniBasicGrid, uniDBGrid, uniButton, uniDateTimePicker,
  uniMemo, uniRadioButton, frxClass, frxDBSet, uniCheckBox, uniLabel,
  uniSpinEdit, uniRadioGroup, uniGridExporters;

type
  TReportsF = class(TBaseFormF)
    pnlHead: TUniContainerPanel;
    EstatesQry: TUniQuery;
    EstatesQryID: TIntegerField;
    EstatesQryownerID: TIntegerField;
    EstatesQryestNo: TIntegerField;
    EstatesQryestName: TWideStringField;
    EstatesQryestDistrict: TWideStringField;
    EstatesQryestStreet: TWideStringField;
    EstatesQryUnitsCount: TIntegerField;
    EstatesQryUnitsRented: TIntegerField;
    EstatesSrc: TUniDataSource;
    ReportQry: TUniQuery;
    EstQryS: TUniDataSource;
    pnlEst: TUniContainerPanel;
    EstateCB: TUniDBLookupComboBox;
    cbEstReport: TUniComboBox;
    pnlCtrl: TUniContainerPanel;
    pnlDateCont: TUniContainerPanel;
    FromD: TUniDateTimePicker;
    TooD: TUniDateTimePicker;
    estFinRpt1: TUniQuery;
    UniQuery1: TUniQuery;
    estFinRptS: TUniDataSource;
    estMintRpt2: TUniQuery;
    estMintRptS: TUniDataSource;
    UniQuery2: TUniQuery;
    TempRepQ: TUniQuery;
    UniQuery3: TUniQuery;
    UniContainerPanel1: TUniContainerPanel;
    pnlUnit: TUniContainerPanel;
    UniContainerPanel2: TUniContainerPanel;
    rbEstRpt: TUniRadioButton;
    rbUntRpt: TUniRadioButton;
    UnitsQry: TUniQuery;
    UnitsSrc: TUniDataSource;
    UnitCB: TUniDBLookupComboBox;
    cbUnitReport: TUniComboBox;
    UnitsQryID: TIntegerField;
    UnitsQryUnit: TWideStringField;
    UnitsQryRooms: TWideStringField;
    UnitsQryFloor: TWideStringField;
    UnitsQryPrice1: TFloatField;
    UnitsQryPrice2: TFloatField;
    UnitsQryPrice3: TFloatField;
    UnitsQryPrice4: TFloatField;
    UnitsQryNotes: TWideStringField;
    UnitsQryElectricity: TBooleanField;
    UnitsQryKitchen: TBooleanField;
    UnitsQryConditions: TBooleanField;
    UnitsQryESTID: TIntegerField;
    UnitsQryownerID: TIntegerField;
    UnitsQryisRented: TBooleanField;
    UniContainerPanel3: TUniContainerPanel;
    UniContainerPanel4: TUniContainerPanel;
    pnlCont: TUniContainerPanel;
    UniContainerPanel6: TUniContainerPanel;
    lookContractQ: TUniQuery;
    LookContractQs: TUniDataSource;
    ContractCB: TUniDBLookupComboBox;
    cbContReport: TUniComboBox;
    UniContainerPanel7: TUniContainerPanel;
    rbConRpt: TUniRadioButton;
    Lpnl2: TUniContainerPanel;
    Lpnl1: TUniContainerPanel;
    Lpnl3: TUniContainerPanel;
    UniContainerPanel5: TUniContainerPanel;
    btnExcute: TUniButton;
    btnPrint: TUniButton;
    QRY: TUniQuery;
    QRYdataSrc: TUniDataSource;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    chkAll: TUniCheckBox;
    lblRecNo: TUniLabel;
    UniSpinDays: TUniSpinEdit;
    ESTReports: TUniButton;
    UNITReports: TUniButton;
    CONTReports: TUniButton;
    OFFICEReports: TUniButton;
    lookContractQContractID: TIntegerField;
    lookContractQName: TWideStringField;
    lookContractQEstNo: TIntegerField;
    lookContractQestName: TWideStringField;
    lookContractQestDistrict: TWideStringField;
    lookContractQunitNo: TIntegerField;
    lookContractQUnit: TWideStringField;
    lookContractQFloor: TWideStringField;
    pnlOfficeRpt: TUniContainerPanel;
    UniRadioGroup1: TUniRadioGroup;
    VouchTypeQry: TUniQuery;
    VouchTypeQryID: TIntegerField;
    VouchTypeQrySection: TWideStringField;
    VouchTypeQryPSection: TIntegerField;
    DS1: TUniDataSource;
    CBvoucherType: TUniDBLookupComboBox;
    UniContainerPanel8: TUniContainerPanel;
    UniGridExcelExporter1: TUniGridExcelExporter;
    Hpnl: TUniContainerPanel;
    pnlDetails: TUniContainerPanel;
    ReportQryGrid: TUniDBGrid;
    BTNpnl: TUniContainerPanel;
    btnExport: TUniButton;
    procedure btnExcuteClick(Sender: TObject);
    procedure ReportQryGridColumnSummary(Column: TUniDBGridColumn;
      GroupFieldValue: Variant);
    procedure ReportQryGridColumnSummaryResult(Column: TUniDBGridColumn;
      GroupFieldValue: Variant; Attribs: TUniCellAttribs; var Result: string);
    procedure btnPrintClick(Sender: TObject);
    procedure rbEstRptClick(Sender: TObject);
    procedure rbUntRptClick(Sender: TObject);
    procedure rbConRptClick(Sender: TObject);
    procedure frxReport1BeforePrint(Sender: TfrxReportComponent);
    procedure chkAllChange(Sender: TObject);
    procedure ReportQryAfterScroll(DataSet: TDataSet);
    procedure cbContReportChange(Sender: TObject);
    procedure pnlDetailsClick(Sender: TObject);
    procedure ESTReportsClick(Sender: TObject);
    procedure CONTReportsClick(Sender: TObject);
    procedure UNITReportsClick(Sender: TObject);
    procedure UniRadioGroup1Click(Sender: TObject);
    procedure OFFICEReportsClick(Sender: TObject);
    procedure ReportQryAfterOpen(DataSet: TDataSet);
    procedure btnExportClick(Sender: TObject);
  private
    { Private declarations }
    NetAmount,Cred,Deb:Real;

    ReportFName,RepTypeP,RepType2P ,Fdat,Tdat:String;

    procedure ResetSQL(TableQry : String);
    procedure LoadReportSTR();

  public
    { Public declarations }
  end;

function ReportsF: TReportsF;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, G_Funcs, ShowReport, ReportsDataM, Main,
  FrToolsData;

function ReportsF: TReportsF;
begin
  Result := TReportsF(UniMainModule.GetFormInstance(TReportsF));
end;
//==============================================================================
procedure TReportsF.ResetSQL(TableQry : String);
var SqlTxt:String;

begin
ReportQry.Close;
ReportQry.SQL.Clear;
ReportQry.SQL.Text.Empty;



//>>>>>>>>>>>>>>>>>>>>>> 1- ESTATE Reports >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
  //  ExtWhereCond := '  + ' H.PeriodID ' + gConcatStrFun + ' H.TrxType ' + gConcatStrFun + ' H.TrxNo = ''' + fTrxID + ''' ';

if TableQry='EST' then begin
SqlTxt:= 'Select E.TransNo ,E.EstNo, U.Unit ,E.EXP,E.Income,E.Expense,E.TranDate '
+'From EstateBalance E '
+' left Join Units U   On E.UnitNo = U.ID  '
+'where E.TransNo is not null  ';
end;

 if TableQry='ESTcontracts' then begin
 SqlTxt:= 'SELECT ContractID,conDate,EstNo,Unit,Name,'
 +' contF, contT, RentAmount, Payments FROM contracts_rv  '
 +'where ContractID is not null  And Active = True ' ;
  if not EstateCB.IsBlank then begin
  SqlTxt := SqlTxt + ' And EstNo = :EstN ';
  end;
 SqlTxt := SqlTxt  +' UNION '                                     // ����� ����� �������
 +'SELECT 0 , 0 , ESTID, Unit, concat(floor,'' - '',Rooms,'' [ 1- '',Price1,'' ] [ 2- '',Price2,'' ] [ 4- '',Price4,'' ]'') , Null , Null , 0 , isRented '
 +' From Units '
 +'Where isRented = False ';//old    ID not in (Select UnitNo From Contracts) ';
  if not EstateCB.IsBlank then begin
  SqlTxt := SqlTxt + '  and ESTID  = :EstN ';
  end;



 end;

if TableQry='ESTcontMove' then begin
SqlTxt:= 'SELECT ContractID,conDate,EstNo,Unit,'
+' contF, contT, RentAmount, TerminDate, '
+' DATEDIFF( :Edate,TerminDate) as EmptyDays, '
+' (RentAmount/360) * DATEDIFF( :Edate , TerminDate )  as EmpDaysVal '
+' FROM contracts_rv '
+'where Active = False '; //Expired = True ';//and TerminDate < CURDATE()' ;
end;

//>>>>>>>>>>>>>>>>>>>>>>>---------------------->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
//>>>>>>>>>>>>>>>>>>>>>> 3- Contracts Reports >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
//>>>>>>>>>>>>>>>>>>>>>>>---------------------->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

if TableQry='AllContracts' then     // 0-All Contracts
SqlTxt:= 'SELECT ContractID, conDate,  contF, contT, Payments, RentAmount, '
+'Name ,EstNo, Unit From contracts_rv Where ContractID is not null ';

if TableQry='Expired' then     // 1- Expired    Today > COntTO. and it is Active
SqlTxt:= 'SELECT ContractID, conDate,  contF, contT, Payments, RentAmount, '
+' Name ,EstNo, Unit, Expired From contracts_rv Where ContractID is not null  And Active = True AND contT < CURDATE()';

if TableQry='NotExpired' then     // 2-Not Expired = ACTIVE = True
SqlTxt:= 'SELECT ContractID, conDate,  contF, contT, Payments, RentAmount, '
+'Name ,EstNo, Unit From contracts_rv Where ContractID is not null  And Active = True ';


if TableQry='Terminated' then     // 3-Terminated= ACTIVE = False and Termination = true
SqlTxt:= 'SELECT ContractID, conDate,  contF, contT, Payments, RentAmount, '
+'Name ,EstNo, Unit, Termination,TerminDate From contracts_rv Where ContractID is not null  And Active = FALSE And Termination = TRUE ';




if TableQry='AboToExpire' then     // 4-about to  Expire
SqlTxt:= 'SELECT  ContractID, conDate,  contF, contT, Payments, RentAmount, '
+'Name ,EstNo, Unit  From contracts_rv Where ContractID is not null  And Active = True '
 +'And DATEDIFF(  contT , CURDATE()  ) < :Ndays ';

if TableQry='PaidContPmts' then     // 5- Paid Contract Payments
SqlTxt:= 'SELECT * FROM payments where Paid = 1';
if TableQry='UnPaidContPmts' then     // 5- Not Paid Contract Payments
SqlTxt:= 'SELECT * FROM payments where Paid = 0';




ReportQry.SQL.Text:= SqlTxt;

end;


procedure TReportsF.UniRadioGroup1Click(Sender: TObject);
begin
  inherited;
rbEstRpt.Checked := false;
rbUntRpt.Checked := false;
rbConRpt.Checked := false;





   VouchTypeQry.Close;
  VouchTypeQry.SQL.Clear;

if  UniRadioGroup1.ItemIndex = 0 then
 VouchTypeQry.SQL.Text:='Select * from secid where PSection=2 '
else
  VouchTypeQry.SQL.Text:='Select * from secid where PSection=1 ';




  VouchTypeQry.Open;


end;

procedure TReportsF.UNITReportsClick(Sender: TObject);
begin
  inherited;

end;

//------------------------------------------------------
procedure TReportsF.LoadReportSTR();

begin
Fdat:=''; Tdat:='';

 if rbEstRpt.Checked then begin       // EST,REPORTS.

       RepTypeP    := cbEstReport.Text;

       if EstateCB.IsBlank then
       RepType2P := '���� �������'
       else
       RepType2P   := EstateCB.Text;


      case cbEstReport.ItemIndex of


 0: begin
         ReportFName := 'EstFinancial';
        if not chkAll.Checked then begin
        Fdat := ' ��: ' + DateToStr(FromD.DateTime);
        Tdat := ' ���: ' + DateToStr(TooD.DateTime);
        end;

       end;

 1: begin
         ReportFName := 'EstMaintenance';
        if not chkAll.Checked then begin
        Fdat := ' ��: ' + DateToStr(FromD.DateTime);
        Tdat := ' ���: ' + DateToStr(TooD.DateTime);
        end;

 end;
 2 : begin
         ReportFName := 'EstPaids';
        if not chkAll.Checked then begin
        Fdat := ' ��: ' + DateToStr(FromD.DateTime);
        Tdat := ' ���: ' + DateToStr(TooD.DateTime);
        end;

 end;

    3: ReportFName := 'EstContracts';


    4: begin
       ReportFName := 'EstContMove';
       Fdat := ' �� ����� ������� ' ;// + DateToStr(FromD.DateTime);

       if chkAll.Checked then
       Tdat := ' ���: ' + DateToStr(Date)
       else

       Tdat := ' ���: ' + DateToStr(TooD.DateTime);


        end;

    5: begin

     ReportFName := 'EstVacantUnits';

    end;

      end;



 end;

 //>>>>>>>>>>>>>>>>>>>
 if rbConRpt.Checked then begin       // Contracts ,REPORTS.
      RepTypeP    := cbContReport.Text;

       case cbContReport.ItemIndex of
       0,1,2,4 : begin
              ReportFName := 'ContAll';
        if not chkAll.Checked then begin
        Fdat := ' ��: ' + DateToStr(FromD.DateTime);
        Tdat := ' ���: ' + DateToStr(TooD.DateTime);
        end;
       end;
       end;
 end;





 //>>>>>>>>>>>>>>>>>>>  OFFICE REPORTS >>>>>>>>>>>>>>>>>>>>>>>>>
 if (UniRadioGroup1.ItemIndex =0) Or (UniRadioGroup1.ItemIndex =1) then begin
  ReportFName :='OfficeVoch';
  RepType2P   := CBvoucherType.Text;
  if not chkAll.Checked then begin
        Fdat := ' ��: ' + DateToStr(FromD.DateTime);
        Tdat := ' ���: ' + DateToStr(TooD.DateTime);
        end;

 end;



 DataFrTools.MyFrxLoad(frxReport1,ReportFName);

end;
procedure TReportsF.OFFICEReportsClick(Sender: TObject);
var SqlTxt:String;
begin
  inherited;

ReportQry.Close;
ReportQry.SQL.Clear;
ReportQry.SQL.Text.Empty;

//if UniRadioGroup1.ItemIndex = 0 then

//`VID`, `vNo`, `vType`, `vSubType`, `vEXP`, `vIn`, `vOut`, `vDate` FROM `vouchers
SqlTxt:= 'SELECT V.VID TransNo, S.Section, V.vEXP EXP, V.vIn Income, V.vOut Expense, V.vDate TranDate'
+' FROM vouchers V Left Join SecID S on V.vSubType = S.ID '
+' where vType = '+VouchTypeQryPSection.AsString ;

if not CBvoucherType.IsBlank then
SqlTxt:= SqlTxt + ' AND  vSubType = '+VouchTypeQryID.AsString;


ReportQry.SQL.Text:= SqlTxt;

end;

procedure TReportsF.pnlDetailsClick(Sender: TObject);
begin
  inherited;

end;

//------------------------------------------------------
//------------------------------------------------------
//------------------------------------------------------
//------------------------------------------------------









procedure TReportsF.btnExcuteClick(Sender: TObject);
//var SdateP ,EdateP : TDate;

begin
  inherited;
 // SdateP := FromD.DateTime;
 // EdateP := TooD.DateTime;

 lblRecNo.Caption := '0';

  if rbEstRpt.Checked then
  ESTReportsClick(Sender);

  if rbConRpt.Checked then
  CONTReportsClick(Sender);

//  if rbEstRpt.Checked then

   if  UniRadioGroup1.ItemIndex = 0 then
     OFFICEReportsClick(Sender);
   if  UniRadioGroup1.ItemIndex = 1 then
        OFFICEReportsClick(Sender);

//  if rbEstRpt.Checked then begin   //>>>>>>>> Estates Reports >>>>>>>>
//
//      ResetSQL('EST');
//                                       //0-ALL Transactions
//     if cbEstReport.ItemIndex = 1 then //1-Maintenance Transactions
//      ReportQry.SQL.Add('And TransType = 2 ');
//     if cbEstReport.ItemIndex = 2 then //2-Income Transactions
//       ReportQry.SQL.Add('And TransType = 1 ');
//     if cbEstReport.ItemIndex = 3 then //3-Contracts on Estate
//       ResetSQL('ESTcontracts');
//     if cbEstReport.ItemIndex = 4 then //4-Contracts Move&Expire on Estate
//     begin
//     ResetSQL('ESTcontMove');
//     ReportQry.ParamByName('Edate').AsDate := Date; //Get Till the  CURDATE(). as Original
//     end;
//
//     if cbEstReport.ItemIndex = 5 then  // Vacant UNITS.
//     ReportQry.SQL.Text:='Select EstID as EstNo, Unit,Floor, Rooms, isRented from Units where isRented = False';
//
//      if not chkAll.Checked then begin   // Select A Dates  ( DATE Between )12/15/2020
//           case cbEstReport.ItemIndex of
//           0,1,2:begin
//               ReportQry.SQL.Add('And TranDate between :Sdate and :Edate ');
//               ReportQry.ParamByName('Sdate').AsDate := SdateP;
//               ReportQry.ParamByName('Edate').AsDate := EdateP;
//           end;
//            3 :begin
//               ReportQry.SQL.Add('And conDate between :Sdate and :Edate ');
//               ReportQry.ParamByName('Sdate').AsDate := SdateP;
//               ReportQry.ParamByName('Edate').AsDate := EdateP;
//            end;
//            4 : begin   ReportQry.ParamByName('Edate').AsDate := EdateP;//Today
//                //if Selected Date then CHange from Original CURDATE() to selected Date
//
//            end;
//
//           end;
//
//
//
//      end;
//
//     //----
//
//      case cbEstReport.ItemIndex of          // Parameters For Selected Estate ID.
//       0,1,2,4:begin
//                if not EstateCB.IsBlank then begin
//                ReportQry.SQL.Add(' And EstNo = :Est ');
//                ReportQry.ParamByName('EST').AsInteger := EstatesQryestNo.Value;
//               end;
//              end;
//       5: begin
//              if not EstateCB.IsBlank then begin
//              ReportQry.SQL.Add(' And EstID = :Est ');
//              ReportQry.ParamByName('EST').AsInteger := EstatesQryestNo.Value;
//              end
//          end;
//       3: begin
//             if not EstateCB.IsBlank then
//             ReportQry.ParamByName('EstN').AsInteger := EstatesQryestNo.Value
//          end;
//
//      end;
//
//
//
//
//
//  end;
//--//>>>>>>>>--------//>>>>>>>>------//>>>>>>>>--------------........����������������

//  if rbConRpt.Checked then begin   //>>>>>>>>  3 Cotract  Reports >>>>>>>>
//{  All Contracts
//Expired Contracts
//Not Expired Contracts
//ReNewed Contracts
//About to Expire}
//
//   if cbContReport.ItemIndex = 0 then //0-ALL Contracts
//       ResetSQL('AllContracts');
//   if cbContReport.ItemIndex = 1 then //1-Expired Contracts
//       ResetSQL('Expired');
//   if cbContReport.ItemIndex = 2 then //2-Not Expired Contracts
//       ResetSQL('NotExpired');
////  if cbContReport.ItemIndex = 3 then //3-ReNewed Contracts
////       ResetSQL('NotExpired');
//   if cbContReport.ItemIndex = 4 then begin//4-About to Expire
//       ResetSQL('AboToExpire');
//         ReportQry.ParamByName('Ndays').AsInteger := UniSpinDays.Value;
//   end;
//
//   if cbContReport.ItemIndex = 5 then begin // Paid Payments On Selected Contract.
//      ResetSQL('PaidContPmts');
//   end;
//
//       if not chkAll.Checked then begin   // Select A Dates
//           case cbContReport.ItemIndex of
//           0,1,2,3,4:begin
//               ReportQry.SQL.Add('And conDate between :Sdate and :Edate ');
//               ReportQry.ParamByName('Sdate').AsDate := SdateP;
//               ReportQry.ParamByName('Edate').AsDate := EdateP;
//           end;
//
////            4 : begin
////
////            end;
//
//           end;
//
//
//
//     end;
//
//  end;
//
//




//===++++LAST THINGS++++========
    ReportQry.Open;
   // AdjustFieldsWidth(ReportQry );

   AdjustGridLng(ReportQryGrid);


end;

procedure TReportsF.btnExportClick(Sender: TObject);
begin
  inherited;
ReportQryGrid.Exporter.Exporter := UniGridExcelExporter1;

  ReportQryGrid.Exporter.ExportGrid;
end;

procedure TReportsF.btnPrintClick(Sender: TObject);
begin
  inherited;


  LoadReportSTR();


   MainForm.DwnRepoFile:=false;

   DataFrTools.MyFrxShow(frxReport1);




end;

procedure TReportsF.cbContReportChange(Sender: TObject);
begin
  inherited;
UniSpinDays.Visible:= cbContReport.ItemIndex = 4;
end;

procedure TReportsF.chkAllChange(Sender: TObject);
begin
  inherited;
FromD.Enabled:= not chkAll.Checked;
TooD.Enabled := not chkAll.Checked;
end;

procedure TReportsF.CONTReportsClick(Sender: TObject);
var SdateP ,EdateP : TDate;
begin
  inherited;
  SdateP := FromD.DateTime;
  EdateP := TooD.DateTime;

//       >>>>>>>> Estates Reports >>>>>>>>


   if cbContReport.ItemIndex = 0 then //0-ALL Contracts
       ResetSQL('AllContracts');
   if cbContReport.ItemIndex = 1 then //1-Expired Contracts  today is > from ContTo
       ResetSQL('Expired');
   if cbContReport.ItemIndex = 2 then //2-Not Expired Contracts   ACTIVE = TRUE.
       ResetSQL('NotExpired');
   if cbContReport.ItemIndex = 3 then //3-Terminated Contracts
        ResetSQL('Terminated');
   if cbContReport.ItemIndex = 4 then begin//4-About to Expire
       ResetSQL('AboToExpire');
         ReportQry.ParamByName('Ndays').AsInteger := UniSpinDays.Value;
   end;

   if cbContReport.ItemIndex = 5 then  // Paid Payments On Selected Contract.
      ResetSQL('PaidContPmts');
   if cbContReport.ItemIndex = 6 then  // Not Paid Payments On Selected Contract.
      ResetSQL('UnPaidContPmts');

       if not chkAll.Checked then begin   // Select A Dates
           case cbContReport.ItemIndex of
           0,1,2,3,4:begin
               ReportQry.SQL.Add('And conDate between :Sdate and :Edate ');
               ReportQry.ParamByName('Sdate').AsDate := SdateP;
               ReportQry.ParamByName('Edate').AsDate := EdateP;
           end;

//            4 : begin
//
//            end;

           end;



     end;

 case cbContReport.ItemIndex of          // Parameters For Selected Contract ID.
       5,6:begin
                if not ContractCB.IsBlank then begin
                ReportQry.SQL.Add(' And ContractNo = :ConID ');
                ReportQry.ParamByName('ConID').AsInteger := lookContractQContractID.Value;
               end;
              end;

 end;


//       >>>>>>>> CONTRACT Reports >>>>>>>>--------------------------------------
end;
//----------------------------------------------------------------
procedure TReportsF.ESTReportsClick(Sender: TObject);
var SdateP ,EdateP : TDate;
begin
  inherited;
  SdateP := FromD.DateTime;
  EdateP := TooD.DateTime;

//       >>>>>>>> Estates Reports >>>>>>>>

 ResetSQL('EST');
                                       //0-ALL Transactions
     if cbEstReport.ItemIndex = 1 then //1-Maintenance Transactions
      ReportQry.SQL.Add('And TransType = 2 ');
     if cbEstReport.ItemIndex = 2 then //2-Income Transactions
       ReportQry.SQL.Add('And TransType = 1 ');
     if cbEstReport.ItemIndex = 3 then //3-Contracts on Estate
       ResetSQL('ESTcontracts');
     if cbEstReport.ItemIndex = 4 then //4-Contracts Move&Expire on Estate
     begin
     ResetSQL('ESTcontMove');
     ReportQry.ParamByName('Edate').AsDate := Date; //Get Till the  CURDATE(). as Original
     end;

     if cbEstReport.ItemIndex = 5 then  // Vacant UNITS.
     ReportQry.SQL.Text:='Select EstID as EstNo, Unit,Floor, Rooms,Price1,Price2,Price4, isRented from Units where isRented = False';

      if not chkAll.Checked then begin   // Select A Dates  ( DATE Between )12/15/2020
           case cbEstReport.ItemIndex of
           0,1,2:begin
               ReportQry.SQL.Add('And TranDate between :Sdate and :Edate ');
               ReportQry.ParamByName('Sdate').AsDate := SdateP;
               ReportQry.ParamByName('Edate').AsDate := EdateP;
           end;
            3 :begin
               ReportQry.SQL.Add('And conDate between :Sdate and :Edate ');
               ReportQry.ParamByName('Sdate').AsDate := SdateP;
               ReportQry.ParamByName('Edate').AsDate := EdateP;
            end;
            4 : begin   ReportQry.ParamByName('Edate').AsDate := EdateP;//Today
                //if Selected Date then CHange from Original CURDATE() to selected Date

            end;

           end;



      end;

     //----

      case cbEstReport.ItemIndex of          // Parameters For Selected Estate ID.
       0,1,2,4:begin
                if not EstateCB.IsBlank then begin
                ReportQry.SQL.Add(' And EstNo = :Est ');
                ReportQry.ParamByName('EST').AsInteger := EstatesQryestNo.Value;
               end;
              end;
       5: begin
              if not EstateCB.IsBlank then begin
              ReportQry.SQL.Add(' And EstID = :Est ');
              ReportQry.ParamByName('EST').AsInteger := EstatesQryestNo.Value;
              end
          end;
       3: begin
             if not EstateCB.IsBlank then
             ReportQry.ParamByName('EstN').AsInteger := EstatesQryestNo.Value
          end;

      end;


//       >>>>>>>> Estates Reports >>>>>>>>--------------------------------------
end;

procedure TReportsF.ReportQryAfterOpen(DataSet: TDataSet);
begin
  inherited;
ReportQry.Last;
//frxDBDataset1.re
end;

procedure TReportsF.ReportQryAfterScroll(DataSet: TDataSet);
begin
  inherited;
lblRecNo.Caption := IntToStr(ReportQry.RecNo) +'/'+ IntToStr(ReportQry.RecordCount);
end;

procedure TReportsF.ReportQryGridColumnSummary(Column: TUniDBGridColumn;
  GroupFieldValue: Variant);
begin
  inherited;
 if SameText(Column.FieldName, 'Income') then       //012
  begin
    if Column.AuxValue = NULL then Column.AuxValue:=0.0;
    Column.AuxValue := Column.AuxValue + Column.Field.AsFloat;
    Cred:= Column.AuxValue ;
  end
  else if SameText(Column.FieldName, 'Expense') then     //012
  begin
    if Column.AuxValue = NULL then Column.AuxValue:=0.0;
    Column.AuxValue := Column.AuxValue +  Column.Field.AsFloat  ;
    Deb:= Column.AuxValue ;
  end
//                 ------------------
    else if SameText(Column.FieldName, 'RentAmount') then //3
  begin
    if Column.AuxValue = NULL then Column.AuxValue:=0.0;
    Column.AuxValue := Column.AuxValue +  Column.Field.AsFloat  ;
    Deb:= Column.AuxValue ;
  end
//                 ------------------
      else if SameText(Column.FieldName, 'EmptyDays') then //4
  begin
    if Column.AuxValue = NULL then Column.AuxValue:= 0;
    Column.AuxValue := Column.AuxValue +  Column.Field.AsInteger  ;
    Deb:= Column.AuxValue ;
  end

      else if SameText(Column.FieldName, 'EmpDaysVal') then //4
  begin
    if Column.AuxValue = NULL then Column.AuxValue:=0.0;
    Column.AuxValue := Column.AuxValue +  Column.Field.AsFloat  ;
    Deb:= Column.AuxValue ;
  end

//                 ------------------
   ;


  NetAmount :=  Cred-Deb;


end;

procedure TReportsF.ReportQryGridColumnSummaryResult(Column: TUniDBGridColumn;
  GroupFieldValue: Variant; Attribs: TUniCellAttribs; var Result: string);

  var   I,E  : Real;
begin
  inherited;
 if SameText(Column.FieldName, 'Income') then
  begin

    I:=Column.AuxValue;
    Result:= FormatFloat('#,##0.##', I);     // FormatFloat('0,0.00 ', I);
    Attribs.Font.Style:=[fsBold];
    Attribs.Font.Color:=clGreen;

  end
  else if SameText(Column.FieldName, 'Expense') then
  begin
    E:=Column.AuxValue;
    Result:= FormatFloat('#,##0.##', E);
    Attribs.Font.Style:=[fsBold];
    Attribs.Font.Color:=clMaroon;

  end
    else if SameText(Column.FieldName, 'EXP') then
  begin


    Result:= '  ������ ::  ' + FormatFloat('#,##0.##', NetAmount);
    Attribs.Font.Style:=[fsBold];
    Attribs.Font.Color:=clNavy;
  end
//                 ------------------

     else if SameText(Column.FieldName, 'RentAmount') then    //3
  begin
    Result:=   FormatFloat('#,##0.##', Column.AuxValue);
    Attribs.Font.Style:=[fsBold];
    Attribs.Font.Color:=clNavy;
  end

//                 ------------------

  else if SameText(Column.FieldName, 'EmptyDays') then    //4
  begin
    Result:= Column.AuxValue;
    Attribs.Font.Style:=[fsBold];
    Attribs.Font.Color:=clNavy;
  end
      else if SameText(Column.FieldName, 'EmpDaysVal') then    //4
  begin
    Result:=   FormatFloat('#,##0.##', Column.AuxValue);
    Attribs.Font.Style:=[fsBold];
    Attribs.Font.Color:=clNavy;
  end

//                 ------------------

  ;


  Column.AuxValue:=NULL;
end;

procedure TReportsF.frxReport1BeforePrint(Sender: TfrxReportComponent);
begin
  inherited;
         // RepTypeP,RepType2P
      if Sender.Name = 'RpTypTxt' then
      (sender as TfrxMemoView).Memo.Text := RepTypeP;
        if Sender.Name = 'RpParTxt' then
      (sender as TfrxMemoView).Memo.Text := RepType2P;

              if Sender.Name = 'MemFdate' then
      (sender as TfrxMemoView).Memo.Text := Fdat;

              if Sender.Name = 'MemTdate' then
      (sender as TfrxMemoView).Memo.Text := Tdat;


end;

procedure TReportsF.rbConRptClick(Sender: TObject);
begin
  inherited;
rbEstRpt.Checked:=false;
rbUntRpt.Checked:=false;
//rbConRpt.Checked:=false;
Lpnl1.Color :=  clSilver;
Lpnl2.Color :=  clSilver;
Lpnl3.Color := $000080FF;

 UniRadioGroup1.ItemIndex := -1;
end;

procedure TReportsF.rbEstRptClick(Sender: TObject);
begin
  inherited;
//rbEstRpt.Checked:=false;
rbUntRpt.Checked:=false;
rbConRpt.Checked:=false;
Lpnl1.Color := $000080FF;
Lpnl2.Color := clSilver;
Lpnl3.Color := clSilver;

 UniRadioGroup1.ItemIndex := -1;
end;

procedure TReportsF.rbUntRptClick(Sender: TObject);
begin
  inherited;
rbEstRpt.Checked:=false;
//rbUntRpt.Checked:=false;
rbConRpt.Checked:=false;
Lpnl1.Color :=  clSilver;
Lpnl2.Color := $000080FF;
Lpnl3.Color := clSilver;

  UniRadioGroup1.ItemIndex := -1;

end;

end.
