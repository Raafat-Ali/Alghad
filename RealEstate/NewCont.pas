unit NewCont;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, BaseForm, siComp, uniGUIBaseClasses, uniPanel,
  uniDBVerticalGrid, uniListBox, uniEdit, uniLabel, uniDateTimePicker,
  uniComboBox, uniGroupBox, uniFieldSet, uniDBDateTimePicker, uniDBEdit,
  uniToolBar, uniBasicGrid, uniDBGrid, uniMultiItem, uniDBComboBox,
  uniDBLookupComboBox, Data.DB, DBAccess, Uni, frxClass, frxDBSet, MemDS;

type
  TNewContF = class(TBaseFormF)
    PrintQ: TUniQuery;
    frxDBcontr: TfrxDBDataset;
    ContractsQ: TUniQuery;
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
    ContractsQsrc: TUniDataSource;
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
    PaymensQ: TUniQuery;
    PaymensQID: TIntegerField;
    PaymensQContractNo: TIntegerField;
    PaymensQPaymentSN: TIntegerField;
    PaymensQPaymentDate: TDateField;
    PaymensQPaymentValu: TFloatField;
    PaymensQPaid: TBooleanField;
    PaymensQPayDate: TDateField;
    PaymensQPayType: TWideStringField;
    PaymensQpmtNotes: TWideStringField;
    PaymensQs: TUniDataSource;
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
    UniToolButton27: TUniToolButton;
    UniToolButton28: TUniToolButton;
    UniDBDateTimePicker1: TUniDBDateTimePicker;
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
    pnlSelectEstUnt: TUniPanel;
    DBLookupEstates: TUniDBLookupComboBox;
    DBLookupUnits: TUniDBLookupComboBox;
    pnlUnitDetails: TUniContainerPanel;
    grdUnitDetails: TUniDBGrid;
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
    UniContainerPanel4: TUniContainerPanel;
    InsurEdt: TUniNumberEdit;
    WaterEdt: TUniNumberEdit;
    ElectEdt: TUniFormattedNumberEdit;
    PaymentsListBox: TUniListBox;
    PmtVerticalGrid: TUniDBVerticalGrid;
    pnlContracts: TUniContainerPanel;
    DBLookupComboEMP: TUniDBLookupComboBox;
    grdOwners: TUniDBGrid;
    frxReport1: TfrxReport;
    procedure UniToolButton21Click(Sender: TObject);
    procedure UniFormReady(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function NewContF: TNewContF;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, Main, FrToolsData;

function NewContF: TNewContF;
begin
  Result := TNewContF(UniMainModule.GetFormInstance(TNewContF));
end;

procedure TNewContF.UniFormReady(Sender: TObject);
begin
  inherited;
ContractsQ.Open;
end;

procedure TNewContF.UniToolButton21Click(Sender: TObject);
begin
  inherited;
  PrintQ.ParamByName('ConID').AsInteger := ContractsQContractID.Value;

    MainForm.DwnRepoFile:=False;
  DataFrTools.MyFrxLoad(frxReport1,'Contract');


  PrintQ.Open;
  DataFrTools.MyFrxShow(frxReport1);
  PrintQ.Close;
end;

end.
