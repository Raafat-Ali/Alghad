unit Settings;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, BaseForm, siComp, uniGUIBaseClasses, uniPanel,
  Data.DB, DBAccess, Uni, MemDS, uniDBNavigator, uniBasicGrid, uniDBGrid,
  UniFSToggle, uniButton;

type
  TSettingsF = class(TBaseFormF)
    pnlSections: TUniContainerPanel;
    pnlSubSections: TUniContainerPanel;
    UniDBGrid1: TUniDBGrid;
    UniDBGrid2: TUniDBGrid;
    UniDBNavigator1: TUniDBNavigator;
    SecQry: TUniQuery;
    SubSecQry: TUniQuery;
    SubSecQryS: TUniDataSource;
    SecQryS: TUniDataSource;
    SubSecQryID: TIntegerField;
    SubSecQrySection: TWideStringField;
    UniDBNavigator2: TUniDBNavigator;
    SecQryID: TIntegerField;
    SecQrySection: TWideStringField;
    SecQryPSection: TIntegerField;
    SubSecQryPSection: TIntegerField;
    pnlSettings: TUniContainerPanel;
    UniFSToggle1: TUniFSToggle;
    UniButton1: TUniButton;
    procedure UniFormCreate(Sender: TObject);
    procedure SecQryAfterDelete(DataSet: TDataSet);
    procedure SecQryBeforePost(DataSet: TDataSet);
    procedure SecQryAfterPost(DataSet: TDataSet);
    procedure UniButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function SettingsF: TSettingsF;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, G_Funcs;

function SettingsF: TSettingsF;
begin
  Result := TSettingsF(UniMainModule.GetFormInstance(TSettingsF));
end;

procedure TSettingsF.SecQryAfterDelete(DataSet: TDataSet);
begin
  inherited;
SubSecQry.Active :=  SecQry.RecordCount > 0;
end;

procedure TSettingsF.SecQryAfterPost(DataSet: TDataSet);
begin
  inherited;
SubSecQry.Active :=  SecQry.RecordCount > 0;
end;

procedure TSettingsF.SecQryBeforePost(DataSet: TDataSet);
begin
  inherited;
SecQryPSection.Value := 0;
end;

procedure TSettingsF.UniButton1Click(Sender: TObject);
begin
  inherited;

  //  gShowCurrency := GetSettingValue('ShowCurrency') = 'T';

  if UniFSToggle1.Toggled then
  SetSettingValue('SendSMS','T')
  else
  SetSettingValue('SendSMS','F');


  UniMainModule.gSendSMS := GetSettingValue('SendSMS');
end;

procedure TSettingsF.UniFormCreate(Sender: TObject);
begin
  inherited;
SecQry.Open;
SubSecQry.Open;
SubSecQry.Active :=  SecQry.RecordCount > 0;

   //  gShowCurrency := GetSettingValue('ShowCurrency') = 'T';
UniFSToggle1.Toggled := UniMainModule.gSendSMS = 'T';
end;

end.
