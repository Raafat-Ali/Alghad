unit mRentContractsU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniGUIBaseClasses, uniPanel, uniPageControl, unimTabPanel, uniToolBar,
  unimToolbar, uniEdit, uniDBEdit, unimDBEdit, unimFieldSet, Data.DB, DBAccess,
  Uni, MemDS, uniMultiItem, uniListBox, uniDBListBox, uniDBLookupListBox,
  unimPanel, unimSelect, unimDBSelect;

type
  TmRentContracts = class(TUnimForm)
    UnimContainerPanel1: TUnimContainerPanel;
    UnimToolBar1: TUnimToolBar;
    UnimToolButton1: TUnimToolButton;
    UnimToolButton2: TUnimToolButton;
    UnimToolButton4: TUnimToolButton;
    UnimToolButton6: TUnimToolButton;
    UnimToolButton7: TUnimToolButton;
    UnimToolButton8: TUnimToolButton;
    UnimToolButton10: TUnimToolButton;
    UnimToolButton12: TUnimToolButton;
    UnimToolButton3: TUnimToolButton;
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
    paTenant: TUnimContainerPanel;
    TenantFieldSet: TUnimFieldSet;
    UnimDBEdit1: TUnimDBEdit;
    UnimDBEdit2: TUnimDBEdit;
    UnimFieldContainer1: TUnimFieldContainer;
    UnimDBEdit3: TUnimDBEdit;
    UnimDBEdit4: TUnimDBEdit;
    UnimDBEdit6: TUnimDBEdit;
    pnlSelectEstUnt: TUnimPanel;
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
    UnimDBSelect1: TUnimDBSelect;
    procedure UnimFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function mRentContracts: TmRentContracts;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function mRentContracts: TmRentContracts;
begin
  Result := TmRentContracts(UniMainModule.GetFormInstance(TmRentContracts));
end;

procedure TmRentContracts.UnimFormCreate(Sender: TObject);
begin
TenantsQry.Open
end;

end.
