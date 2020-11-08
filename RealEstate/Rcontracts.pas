unit Rcontracts;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses, JvJCLUtils, // Date utils for contract
  uniGUIClasses, uniGUIForm, BaseForm, siComp, uniGUIBaseClasses, uniPanel,
  uniBasicGrid, uniDBGrid, uniMultiItem, uniComboBox, uniDBComboBox,
  uniDBLookupComboBox, uniDateTimePicker, uniDBDateTimePicker, uniEdit,
  uniDBEdit, uniToolBar, uniFieldSet, Data.DB, DBAccess, Uni, MemDS,
  Vcl.DBActns, System.Actions, Vcl.ActnList, uniDBNavigator, uniDBVerticalGrid,
  uniListBox, uniLabel, uniGroupBox, frxClass, frxDBSet, frxRich, uniButton;

type
  TRcontractsF = class(TBaseFormF)
    pnlContracts: TUniContainerPanel;
    DBLookupComboEMP: TUniDBLookupComboBox;
    grdOwners: TUniDBGrid;
    pnlCenter: TUniContainerPanel;
    pnlHead: TUniContainerPanel;
    UniToolBar1: TUniToolBar;
    UniToolButton6: TUniToolButton;
    UniToolButton1: TUniToolButton;
    UniToolButton2: TUniToolButton;
    UniToolButton3: TUniToolButton;
    UniToolButton4: TUniToolButton;
    UniToolButton5: TUniToolButton;
    UniToolButton22: TUniToolButton;
    UniToolButton7: TUniToolButton;
    UniToolBar2: TUniToolBar;
    UniToolButton9: TUniToolButton;
    UniToolButton10: TUniToolButton;
    UniToolButton11: TUniToolButton;
    UniToolButton12: TUniToolButton;
    UniToolButton13: TUniToolButton;
    UniToolButton23: TUniToolButton;
    edtEmpNO: TUniDBEdit;
    UniToolButton24: TUniToolButton;
    UniToolButton14: TUniToolButton;
    UniToolButton15: TUniToolButton;
    UniToolButton25: TUniToolButton;
    UniToolButton26: TUniToolButton;
    UniToolButton8: TUniToolButton;
    UniToolButton17: TUniToolButton;
    UniToolButton18: TUniToolButton;
    UniToolButton19: TUniToolButton;
    UniToolButton16: TUniToolButton;
    UniToolButton21: TUniToolButton;
    UniToolButton20: TUniToolButton;
    ContractsQ: TUniQuery;
    ContractsQsrc: TUniDataSource;
    UniContainerPanel1: TUniContainerPanel;
    TenantFieldSet: TUniFieldSet;
    UniFieldContainer2: TUniFieldContainer;
    edTname: TUniDBEdit;
    edTIDNo: TUniDBEdit;
    UniFieldContainer1: TUniFieldContainer;
    edTph1: TUniDBEdit;
    edTph2: TUniDBEdit;
    edTmail: TUniDBEdit;
    edTwork: TUniDBEdit;
    UniDBDateTimePicker1: TUniDBDateTimePicker;
    ActionList1: TActionList;
    DatasetFirst1: TDataSetFirst;
    DatasetPrior1: TDataSetPrior;
    DatasetNext1: TDataSetNext;
    DatasetLast1: TDataSetLast;
    DatasetInsert1: TDataSetInsert;
    DatasetDelete1: TDataSetDelete;
    DatasetEdit1: TDataSetEdit;
    DatasetPost1: TDataSetPost;
    DatasetCancel1: TDataSetCancel;
    DatasetRefresh1: TDataSetRefresh;
    UniToolButton27: TUniToolButton;
    UniToolButton28: TUniToolButton;
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
    UnitsQry: TUniQuery;
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
    UnitsQryisRented: TBooleanField;
    UnitsQryESTID: TIntegerField;
    UnitsQryownerID: TIntegerField;
    UnitsQryID: TIntegerField;
    UnitsSrc: TUniDataSource;
    pnlSelectEstUnt: TUniPanel;
    DBLookupEstates: TUniDBLookupComboBox;
    DBLookupUnits: TUniDBLookupComboBox;
    UnitDetailsQ: TUniQuery;
    UnitDetailsQUnit: TWideStringField;
    UnitDetailsQRooms: TWideStringField;
    UnitDetailsQFloor: TWideStringField;
    UnitDetailsQPrice1: TFloatField;
    UnitDetailsQPrice2: TFloatField;
    UnitDetailsQPrice3: TFloatField;
    UnitDetailsQPrice4: TFloatField;
    UnitDetailsQNotes: TWideStringField;
    UnitDetailsQElectricity: TBooleanField;
    UnitDetailsQKitchen: TBooleanField;
    UnitDetailsQConditions: TBooleanField;
    UnitDetailsQESTID: TIntegerField;
    UnitDetailsQownerID: TIntegerField;
    UnitDetailsQisRented: TBooleanField;
    UnitDetailsQID: TIntegerField;
    UnitDetailsQsrc: TUniDataSource;
    pnlUnitDetails: TUniContainerPanel;
    grdUnitDetails: TUniDBGrid;
    PaymensQ: TUniQuery;
    PaymensQID: TIntegerField;
    PaymensQContractNo: TIntegerField;
    PaymensQPaymentSN: TIntegerField;
    PaymensQPaymentDate: TDateField;
    PaymensQPaymentValu: TFloatField;
    PaymensQPaid: TBooleanField;
    PaymensQPayDate: TDateField;
    PaymensQPayType: TWideStringField;
    PaymensQs: TUniDataSource;
    ContractBox: TUniGroupBox;
    Cont1: TUniContainerPanel;
    ContractPeriodCB: TUniComboBox;
    ContractFrom: TUniDateTimePicker;
    ContractTo: TUniDateTimePicker;
    PaymentsCB: TUniComboBox;
    PymtSchPnl: TUniContainerPanel;
    UniLabel1: TUniLabel;
    Pmt1: TUniNumberEdit;
    Pmt2: TUniNumberEdit;
    Pmt3: TUniNumberEdit;
    Pmt4: TUniNumberEdit;
    PaymentsListBox: TUniListBox;
    UniContainerPanel4: TUniContainerPanel;
    InsurEdt: TUniNumberEdit;
    WaterEdt: TUniNumberEdit;
    ElectEdt: TUniFormattedNumberEdit;
    PmtVerticalGrid: TUniDBVerticalGrid;
    TenantsQry: TUniQuery;
    TenantsQryID: TIntegerField;
    TenantsQryName: TWideStringField;
    TenantsQryphone1: TWideStringField;
    TenantsQryphone2: TWideStringField;
    TenantsQryeMail: TWideStringField;
    TenantsQrypersonType: TWideStringField;
    TenantsQryIqamaID: TWideStringField;
    TenantsQryworkPlace: TWideStringField;
    TenantsSrc: TUniDataSource;
    ContractsQContractID: TIntegerField;
    ContractsQconDate: TDateField;
    ContractsQtenantID: TIntegerField;
    ContractsQestNo: TIntegerField;
    ContractsQunitNo: TIntegerField;
    ContractsQconPeriod: TWideStringField;
    ContractsQcontF: TDateField;
    ContractsQcontT: TDateField;
    ContractsQPayments: TIntegerField;
    ContractsQRentAmount: TFloatField;
    ContractsQInsur: TFloatField;
    ContractsQWater: TFloatField;
    ContractsQElec: TFloatField;
    ContractsQExpired: TBooleanField;
    ContractsQTermination: TBooleanField;
    ContractsQTerminDate: TDateField;
    ContractsQID: TIntegerField;
    ContractsQName: TWideStringField;
    ContractsQIqamaID: TWideStringField;
    ContractsQPhone1: TWideStringField;
    ContractsQUnit: TWideStringField;
    PaymensQpmtNotes: TWideStringField;
    frxDBContract: TfrxDBDataset;
    PrintQ: TUniQuery;
    frxReport1: TfrxReport;
    NEprice: TUniNumberEdit;
    btnRefPaym: TUniButton;
    UniDBEdit1: TUniDBEdit;
    procedure UniFormCreate(Sender: TObject);
    procedure ContractsQsrcStateChange(Sender: TObject);
    procedure ContractsQAfterScroll(DataSet: TDataSet);
    procedure ContractFromChange(Sender: TObject);
    procedure PaymentsCBCloseUp(Sender: TObject);
    procedure ContractsQBeforePost(DataSet: TDataSet);
    procedure ContractsQNewRecord(DataSet: TDataSet);
    procedure DBLookupEstatesSelect(Sender: TObject);
    procedure DBLookupUnitsSelect(Sender: TObject);
    procedure ContractsQBeforeCancel(DataSet: TDataSet);
    procedure UnitDetailsQAfterOpen(DataSet: TDataSet);
    procedure TenantsQryNewRecord(DataSet: TDataSet);
    procedure ContractsQBeforeEdit(DataSet: TDataSet);
    procedure ContractsQAfterPost(DataSet: TDataSet);
    procedure ContractsQBeforeDelete(DataSet: TDataSet);
    procedure ContractsQAfterDelete(DataSet: TDataSet);
    procedure edTnameKeyPress(Sender: TObject; var Key: Char);
    procedure edTIDNoKeyPress(Sender: TObject; var Key: Char);
    procedure edTph1KeyPress(Sender: TObject; var Key: Char);
    procedure edTph2KeyPress(Sender: TObject; var Key: Char);
    procedure edTmailKeyPress(Sender: TObject; var Key: Char);
    procedure PaymensQAfterOpen(DataSet: TDataSet);
    procedure DatasetDelete1Execute(Sender: TObject);
    procedure UniToolButton21Click(Sender: TObject);
    procedure btnRefPaymClick(Sender: TObject);

  private
    { Private declarations }

        ConID:Integer;


        procedure PaymentSchdule(DeffPrice : Boolean = true);
          procedure AddPayments();
           procedure AdjustTables();
              procedure DelPayments();
              procedure ResetTables();

//                procedure UIRefresh();
  public
    { Public declarations }
  end;

function RcontractsF: TRcontractsF;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, G_Funcs, ShowReport, FrToolsData, Main;

function RcontractsF: TRcontractsF;
begin
  Result := TRcontractsF(UniMainModule.GetFormInstance(TRcontractsF));
end;
//==============================================================================
//-----------------------------------------------------
//-----------------------------------------------------

//-----------------------------------------------------
//-----------------------------------------------------
//-----------------------------------------------------
//-----------------------------------------------------
//procedure TRcontractsF.UIRefresh;
//begin
//
//
//
//
////ContractsQ.Open;
////// ContractsQ.GotoBookmark(LastCurrentRecord);
//// if LastCurrentRecord <> Nil then ContractsQ.GotoBookMark(LastCurrentRecord);
////  PaymensQ.Close; // Get the Payments Details as in COntract
////  PaymensQ.SQL.Clear;
////PaymensQ.SQL.Text:='SELECT * FROM payments where ContractNo = '''+ ContractsQContractID.AsString +'''  Order By ID';
////PaymensQ.Open;
//end;
//-----------------------------------------------------
procedure TRcontractsF.ResetTables;
var tSQL:TUniSQL;
TempQry:TUniQuery;
begin





 tSQL := TUniSQL.Create(self);
tSQL.Connection := UniMainModule.MainDB;

 //Change unit state to Leased  -> Not rented
tSQL.SQL.Clear;
tSQL.SQL.Add('Update units Set isRented = False where ID =     '''+ ContractsQunitNo.AsString +'''   ');
tSQL.Execute;




 //Change Count of Rented Units for the ESTATE.

 TempQry := TUniQuery.Create(self);
 TempQry.Connection := UniMainModule.MainDB;
TempQry.SQL.Clear;

TempQry.SQL.Text := '  Select Count(*) As CNT from Units  '
+ '  where ESTID =  '''+ ContractsQestNo.AsString+'''   and  isRented = True  ' ;
TempQry.Open;

tSQL.SQL.Clear;
 tSQL.SQL.Text := ''
      + '  Update estates  '
      + ' Set UnitsRented =   ''' + TempQry.FieldByName('CNT').AsString + '''  '

      + '  where EstNo  =  '''+ContractsQestNo.AsString+''' '  ;
tSQL.Execute;

TempQry.Free;
tSQL.Free ;
end;
//-----------------------------------------------------
procedure TRcontractsF.DelPayments;
var tSQL:TUniSQL;
TempQry : TUniQuery;
I: Integer;
begin
//(1)  DEL From Payment Schedule.
tSQL := TUniSQL.Create(self);
tSQL.Connection := UniMainModule.MainDB;

tSQL.SQL.Clear;
tSQL.SQL.Add('Delete from payments where ContractNo = '''+ ContractsQContractID.AsString +'''   ');
tSQL.Execute;

//(2)  DEL From Rvouchers AND Estate Balance.
 TempQry := TUniQuery.Create(self);
TempQry.Connection := UniMainModule.MainDB;
TempQry.Close;
TempQry.SQL.Clear;

TempQry.SQL.Text:= 'Select RecID From rvouchers where ContractRef = '''+ ContractsQContractID.AsString +''' ';
TempQry.Open;


for I := 0 to TempQry.RecordCount -1 do begin
  tSQL.SQL.Clear;
tSQL.SQL.Add('Delete from estatebalance where TransNo = '''+ TempQry.FieldByName('RecID').AsString +'''   ');
tSQL.Execute;
TempQry.Next;
end;

tSQL.SQL.Clear;
tSQL.SQL.Add('Delete from rvouchers where ContractRef = '''+ ContractsQContractID.AsString +'''   ');
tSQL.Execute;


 tSQL.Free;
end;
procedure TRcontractsF.edTIDNoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if Key= char(13) then
edTph1.SetFocus;
end;

procedure TRcontractsF.edTmailKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if Key= char(13) then
edTwork.SetFocus;
end;

procedure TRcontractsF.edTnameKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if Key= char(13) then
edTIDNo.SetFocus;
end;

procedure TRcontractsF.edTph1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if Key= char(13) then
edTph2.SetFocus;
end;

procedure TRcontractsF.edTph2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if Key= char(13) then
edTmail.SetFocus;
end;



//-----------------------------------------------------
procedure TRcontractsF.AdjustTables;
var tSQL:TUniSQL;
TempQry:TUniQuery;
begin
 tSQL := TUniSQL.Create(self);
tSQL.Connection := UniMainModule.MainDB;

 //Change unit state to Leased .
tSQL.SQL.Clear;
tSQL.SQL.Add('Update units Set isRented = True where ID =     '''+ UnitDetailsQID.AsString +'''   ');
tSQL.Execute;

 //Change Count of Rented Units for the ESTATE.

 TempQry := TUniQuery.Create(self);
 TempQry.Connection := UniMainModule.MainDB;
TempQry.SQL.Clear;

TempQry.SQL.Text := '  Select Count(*) As CNT from Units  '
+ '  where ESTID =  '''+ ContractsQestNo.AsString+'''   and  isRented = True  ' ;
TempQry.Open;

tSQL.SQL.Clear;
 tSQL.SQL.Text := ''
      + '  Update estates  '
      + ' Set UnitsRented =   ''' + TempQry.FieldByName('CNT').AsString + '''  '

      + '  where EstNo  =  '''+ContractsQestNo.AsString+''' '  ;
tSQL.Execute;

TempQry.Free;
tSQL.Free ;
end;
procedure TRcontractsF.btnRefPaymClick(Sender: TObject);
var goAhead : Boolean;
begin
  inherited;


   goAhead := True;

 if ContractsQ.State in [dsEdit,dsInsert] then begin
     if UnitDetailsQ.RecordCount < 1 then   begin
      ShowSwA('Select Unit please');
      exit;
     end;


        case PaymentsCB.ItemIndex of  // Rent the unit to add in COntract;
   0 :   if NEprice.Value < UnitDetailsQPrice1.Value then  goAhead := false;
   1 :   if NEprice.Value < UnitDetailsQPrice2.Value then  goAhead := false;
   2 :   if NEprice.Value < UnitDetailsQPrice3.Value then  goAhead := false;
   3 :   if NEprice.Value < UnitDetailsQPrice4.Value then  goAhead := false;
   end;



     if goAhead then begin
          PymtSchPnl.Visible := False;

        PaymentSchdule(false);
     PymtSchPnl.Visible := True;


     ContractsQRentAmount.Value :=  NEprice.Value ;

//      case PaymentsCB.ItemIndex of  // Rent the unit to add in COntract;
//   0 : begin ContractsQRentAmount.Value :=  NEprice.Value := UnitDetailsQPrice1.Value; end;
//   1 : begin ContractsQRentAmount.Value :=   NEprice.Value := UnitDetailsQPrice2.Value; end;
//   2 : begin ContractsQRentAmount.Value :=   UnitDetailsQPrice3.Value; NEprice.Value := UnitDetailsQPrice3.Value; end;
//   3 : begin ContractsQRentAmount.Value :=   UnitDetailsQPrice4.Value; NEprice.Value := UnitDetailsQPrice4.Value; end;
//   end;

     end;





   end;
end;

//-----------------------------------------------------
procedure TRcontractsF.AddPayments;
var tSQL:TUniSQL;
I, PayCounts:Integer;
begin

 PayCounts := PaymentsCB.ItemIndex +1;
//
// qryBarcode.SQL.Text := ''
//      + ' SELECT * '
//      + ' FROM   BarcodesVio B '
//      + ' Where  B.Barcode = ''' + Barcode + ''' ';
tSQL := TUniSQL.Create(self);
tSQL.Connection := UniMainModule.MainDB;
tSQL.SQL.Clear;
tSQL.SQL.Add('Delete from payments where ContractNo =     '''+ ContractsQContractID.AsString +'''   ');
tSQL.Execute;

PaymensQ.ReadOnly := False;

  for I := 0 to PayCounts-1 do begin
 PaymensQ.Append;
 PaymensQ.FieldByName('ContractNo').AsInteger := ConID;//  ContractsQContractID.Value;

  PaymensQ.FieldByName('PaymentSN').AsInteger := I +1;

  PaymensQ.FieldByName('PaymentDate').AsDateTime := StrToDate( PaymentsListBox.Items[I]);

   if I = 0 then
    PaymensQ.FieldByName('PaymentValu').AsFloat := Pmt1.Value;
   if I = 1 then
    PaymensQ.FieldByName('PaymentValu').AsFloat := Pmt2.Value;
   if I = 2 then
    PaymensQ.FieldByName('PaymentValu').AsFloat := Pmt3.Value;
   if I = 3 then
    PaymensQ.FieldByName('PaymentValu').AsFloat := Pmt4.Value;


     PaymensQ.FieldByName('Paid').AsBoolean :=False;


    PaymensQ.Post;
 end;
tSQL.Free;
PaymensQ.ReadOnly := True;


 PaymensQ.Close;

// PaymensQ.Open;
 // PaymensQ.Close; // Get the Payments Details as in COntract
//  PaymensQ.SQL.Clear;
//PaymensQ.SQL.Text:='SELECT * FROM payments where ContractNo = '''+ ContractsQContractID.AsString +'''  Order By ID';
//PaymensQ.Open;



end;

//-----------------------------------------------------
procedure TRcontractsF.PaymentSchdule(DeffPrice : Boolean = true);
var  PayCounts, I,  IncMnth: Integer;
  P, MonthsInContract, UnitPrice :Double;
   startDate:TDate;

begin



 PayCounts := PaymentsCB.ItemIndex +1;
 MonthsInContract := MonthsBetween(ContractFrom.DateTime , ContractTo.DateTime) ;

 P :=     MonthsInContract   /  PayCounts;

 startDate :=   ContractFrom.DateTime;
 IncMnth   :=    Trunc(P);

UnitPrice:= 0;
 PaymentsListBox.Clear;
 //---
  // --- Dates of payments schedule ---
 for I := 0 to PayCounts-1 do begin
  PaymentsListBox.Items.Add(DateToStr(startDate));      //(FormatDateTime('dd/mm/yyyy',startDate));
  startDate := IncDate(startDate,0,IncMnth ,0) ;

end;

//--

if DeffPrice then begin
 case PayCounts of
  1 : UnitPrice := UnitDetailsQPrice1.Value/1;

  2 :  UnitPrice := UnitDetailsQPrice2.Value/2;

  3 :  UnitPrice := UnitDetailsQPrice3.Value/3;

  4 :  UnitPrice := UnitDetailsQPrice4.Value/4;

end;
end else begin
  case PayCounts of
  1 : UnitPrice := NEprice.Value /1;

  2 :  UnitPrice := NEprice.Value/2;

  3 :  UnitPrice := NEprice.Value/3;

  4 :  UnitPrice := NEprice.Value/4;

end;
end;





if PayCounts = 1 then begin
  Pmt1.FieldLabel :=  PaymentsListBox.Items[0];
  Pmt1.Value :=UnitPrice;
   Pmt1.Visible:=true;Pmt2.Visible:=False;Pmt3.Visible:=False;Pmt4.Visible:=False;
end;
if PayCounts = 2 then begin
  Pmt1.FieldLabel :=  PaymentsListBox.Items[0];
  Pmt1.Value :=UnitPrice;

  Pmt2.FieldLabel :=  PaymentsListBox.Items[1];
  Pmt2.Value :=UnitPrice;
   Pmt1.Visible:=true;Pmt2.Visible:=true;Pmt3.Visible:=False;Pmt4.Visible:=False;
end;
if PayCounts = 3 then begin
  Pmt1.FieldLabel :=  PaymentsListBox.Items[0];
  Pmt1.Value :=UnitPrice;

  Pmt2.FieldLabel :=  PaymentsListBox.Items[1];
  Pmt2.Value :=UnitPrice;

  Pmt3.FieldLabel :=  PaymentsListBox.Items[2];
  Pmt3.Value :=UnitPrice;
   Pmt1.Visible:=true;Pmt2.Visible:=true;Pmt3.Visible:=true;Pmt4.Visible:=False;
end;

if PayCounts = 4 then begin
  Pmt1.FieldLabel :=  PaymentsListBox.Items[0];
  Pmt1.Value :=UnitPrice;

  Pmt2.FieldLabel :=  PaymentsListBox.Items[1];
  Pmt2.Value :=UnitPrice;

  Pmt3.FieldLabel :=  PaymentsListBox.Items[2];
  Pmt3.Value :=UnitPrice;

  Pmt4.FieldLabel :=  PaymentsListBox.Items[3];
  Pmt4.Value :=UnitPrice;
   Pmt1.Visible:=true;Pmt2.Visible:=true;Pmt3.Visible:=true;Pmt4.Visible:=true;
end;





end;
procedure TRcontractsF.TenantsQryNewRecord(DataSet: TDataSet);
begin
  inherited;
 TenantsQrypersonType.Value := 'tenant';
end;

//-----------------------------------------------------

procedure TRcontractsF.ContractFromChange(Sender: TObject);
begin
  inherited;
  if ContractsQ.State in [dsEdit,dsInsert] then begin
    if ContractPeriodCB.ItemIndex = 0 then
      ContractTo.DateTime := IncDate(ContractFrom.DateTime,0,0,1);
   if ContractPeriodCB.ItemIndex = 1 then
      ContractTo.DateTime := IncDate(ContractFrom.DateTime,0,1,0);
  end;
end;

procedure TRcontractsF.ContractsQAfterDelete(DataSet: TDataSet);
begin
  inherited;
 ShowSwA('Data deleted successfully',2) ;
end;

procedure TRcontractsF.ContractsQAfterPost(DataSet: TDataSet);

begin
  inherited;
ConID:=  ContractsQContractID.AsInteger;


// ContID:=ContractsQContractID.AsString;
//  ContractsQ.ExecSQL;
//  ContractsQ.Locate('ContractID',ContID,[]);

   AddPayments;
  AdjustTables;

  ShowSwA('Data saved successfully',1);

  ContractsQ.RefreshRecord;
  //   ContractsQ.Open;



  //  ContractsQ.ExecSQL;



// ContractsQ.AfterScroll(Nil);
end;

procedure TRcontractsF.ContractsQAfterScroll(DataSet: TDataSet);
begin
  inherited;
ContractPeriodCB.Text := ContractsQconPeriod.Value;
ContractFrom.DateTime := ContractsQcontF.Value;
ContractTo.DateTime := ContractsQcontT.Value;

PaymentsCB.ItemIndex := ContractsQPayments.Value -1;

InsurEdt.Value :=  ContractsQInsur.Value ;
WaterEdt.Value := ContractsQWater.Value;
ElectEdt.Value  := ContractsQElec.Value ;

  UnitDetailsQ.Close; // Get the Unit Details as in COntract
  UnitDetailsQ.SQL.Clear;
UnitDetailsQ.SQL.Text:='SELECT * FROM units where ID = '''+ ContractsQunitNo.AsString +''' ';
UnitDetailsQ.Open;

PmtVerticalGrid.Visible := false;

  PaymensQ.Close; // Get the Payments Details as in COntract
  PaymensQ.SQL.Clear;
PaymensQ.SQL.Text:='SELECT * FROM payments where ContractNo = '''+ ContractsQContractID.AsString +'''  Order By ID';
PaymensQ.Open;

PmtVerticalGrid.Visible := true;





  TenantsQry.Close; // Get the TENANT
  TenantsQry.SQL.Clear;
TenantsQry.SQL.Text:='SELECT * FROM persons where ID = '''+ ContractsQtenantID.AsString +''' ';
TenantsQry.Open;


end;

procedure TRcontractsF.ContractsQBeforeCancel(DataSet: TDataSet);
begin
  inherited;
TenantsQry.Cancel;
end;

procedure TRcontractsF.ContractsQBeforeDelete(DataSet: TDataSet);
// var tSQL:TUniSQL;
begin
  inherited;
//tSQL := TUniSQL.Create(self);
//tSQL.Connection := UniMainModule.MainDB;
//tSQL.SQL.Clear;
//tSQL.SQL.Add('Delete from  persons where ID ='''+ ContractsQtenantID.AsString +'''   ');
//
//tSQL.Execute;
//tSQL.Free ;


   DelPayments;
   ResetTables;
end;

procedure TRcontractsF.ContractsQBeforeEdit(DataSet: TDataSet);
begin
  inherited;
 EstatesQry.Refresh; UnitsQry.Refresh;
  DBLookupEstates.KeyValue := Null;DBLookupUnits.KeyValue := Null;

end;

procedure TRcontractsF.ContractsQBeforePost(DataSet: TDataSet);
begin
  inherited;
 if TenantsQry.State in [dsEdit,dsInsert] then TenantsQry.Post;



     DelPayments; // DELETE ALL PAYMENTS to reSchedule



     ContractsQtenantID.Value :=  TenantsQryID.Value;

     ContractsQestNo.Value    := UnitDetailsQESTID.Value;
     ContractsQunitNo.Value   := UnitDetailsQID.Value;

     ContractsQconPeriod.Value := ContractPeriodCB.Text;
    ContractsQcontF.Value  := ContractFrom.DateTime;
   ContractsQcontT.Value  :=  ContractTo.DateTime;
  ContractsQPayments.Value :=  PaymentsCB.ItemIndex +1;

  ContractsQInsur.Value   := InsurEdt.Value;
ContractsQWater.Value  :=  WaterEdt.Value;
ContractsQElec.Value   :=  ElectEdt.Value;

end;

procedure TRcontractsF.ContractsQNewRecord(DataSet: TDataSet);
begin
  inherited;

  ContractsQconDate.AsDateTime := Date ;
  ContractsQExpired.Value  := false;

  EstatesQry.Close;EstatesQry.Open;
  UnitsQry.Close;UnitsQry.Open;

  DBLookupEstates.KeyValue := Null;DBLookupUnits.KeyValue := Null;
  ContractPeriodCB.ItemIndex :=0;

  InsurEdt.Value:=0;WaterEdt.Value:=0;

 TenantsQry.ReadOnly:=False;
 TenantsQry.Insert;


end;

procedure TRcontractsF.ContractsQsrcStateChange(Sender: TObject);
begin
  inherited;
 case ContractsQ.State of
  dsBrowse:begin
          pnlSelectEstUnt.Visible := false;
          PymtSchPnl.Visible := false;  // the PaymentsCB show it and here hide it.
     //  Cont1.Enabled := false; // prevent editting to not showing the PMT shudule Pnl
       PmtVerticalGrid.Visible := True;


        TenantsQry.ReadOnly:=True;
  end;

  dsEdit:begin
         pnlSelectEstUnt.Visible := True;
       //  Cont1.Enabled := True;
         PmtVerticalGrid.Visible := False;


         TenantsQry.ReadOnly:=False;
         TenantsQry.Edit;
  end;

 dsInsert:begin

        pnlSelectEstUnt.Visible := True;
       //  Cont1.Enabled := True;
         PmtVerticalGrid.Visible := False;




 end;

 end;


end;

procedure TRcontractsF.DatasetDelete1Execute(Sender: TObject);
begin
  inherited;
if  ShowSwA('Are you sure you want to delete ?',4) then
ContractsQ.Delete;

end;

procedure TRcontractsF.DBLookupEstatesSelect(Sender: TObject);
begin
  inherited;
UnitDetailsQ.Close;
//PymtSchPnl.Visible := False;
//ContractBox.Visible := UnitDetailsQ.RecordCount > 0;
end;

procedure TRcontractsF.DBLookupUnitsSelect(Sender: TObject);
begin
  inherited;
 //UnitDetailsQ.Close; // Get the Unit Details as in COntract
 UnitDetailsQ.SQL.Clear;
 UnitDetailsQ.SQL.Text:='SELECT * FROM units where ID = '''+ UnitsQryID.AsString +''' ';
 UnitDetailsQ.Open;
end;

procedure TRcontractsF.PaymensQAfterOpen(DataSet: TDataSet);
begin
  inherited;
PaymensQ.Refresh;
PmtVerticalGrid.Repaint;
end;

procedure TRcontractsF.PaymentsCBCloseUp(Sender: TObject);
begin
  inherited;

   if ContractsQ.State in [dsEdit,dsInsert] then begin
     if UnitDetailsQ.RecordCount < 1 then   begin
      ShowSwA('Select Unit please');
      exit;
     end;



   PaymentSchdule;
   PymtSchPnl.Visible := True;

   case PaymentsCB.ItemIndex of  // Rent the unit to add in COntract;
   0 : begin ContractsQRentAmount.Value :=   UnitDetailsQPrice1.Value; NEprice.Value := UnitDetailsQPrice1.Value; end;
   1 : begin ContractsQRentAmount.Value :=   UnitDetailsQPrice2.Value; NEprice.Value := UnitDetailsQPrice2.Value; end;
   2 : begin ContractsQRentAmount.Value :=   UnitDetailsQPrice3.Value; NEprice.Value := UnitDetailsQPrice3.Value; end;
   3 : begin ContractsQRentAmount.Value :=   UnitDetailsQPrice4.Value; NEprice.Value := UnitDetailsQPrice4.Value; end;
   end;


   end;
end;

procedure TRcontractsF.UniFormCreate(Sender: TObject);
begin
  inherited;
ContractsQ.Open;
 // ContractsQ.Last;
 AdjustGridView(grdUnitDetails);
end;

procedure TRcontractsF.UnitDetailsQAfterOpen(DataSet: TDataSet);
begin
  inherited;
  ContractBox.Visible := UnitDetailsQ.RecordCount > 0;
  ElectEdt.Visible := UnitDetailsQElectricity.Value =true;
end;

procedure TRcontractsF.UniToolButton21Click(Sender: TObject);
begin
  inherited;

   /////////PRINT HE CONTRACT.
//


  PrintQ.ParamByName('ConID').AsInteger := StrToInt(edtEmpNO.Text) ;
  MainForm.DwnRepoFile:=False;
  DataFrTools.MyFrxLoad(frxReport1,'Contract');
  PrintQ.Open;
  DataFrTools.MyFrxShow(frxReport1);
  PrintQ.Close;












end;


end.
