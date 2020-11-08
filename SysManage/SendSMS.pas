unit SendSMS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, BaseForm, siComp, uniGUIBaseClasses, uniPanel,
  IdHTTP, uniButton, uniLabel, uniEdit, uniURLFrame, Data.DB, MemDS, DBAccess,
  Uni, uniBasicGrid, uniDBGrid, uniMultiItem, uniListBox, uniComboBox,
  uniDBComboBox, uniDBLookupComboBox;

type
  TSendSMSForm = class(TBaseFormF)
    pnlHead: TUniContainerPanel;
    pnlDetail: TUniContainerPanel;
    PaymentsVQ: TUniQuery;
    PaymentsVQestNo: TIntegerField;
    PaymentsVQContractNo: TIntegerField;
    PaymentsVQName: TWideStringField;
    PaymentsVQUnit: TWideStringField;
    PaymentsVQPaymentSN: TIntegerField;
    PaymentsVQPaymentDate: TDateField;
    PaymentsVQPaymentValu: TFloatField;
    PaymentsVQPaid: TBooleanField;
    PaymentsVQPayDate: TDateField;
    PaymentsVQPayType: TWideStringField;
    PaymentsVQtenantID: TIntegerField;
    PaymentsVQUnitNo: TIntegerField;
    PaymentsVQID: TIntegerField;
    PaymentsVQsrc: TUniDataSource;
    btnRefresh: TUniButton;
    UniURLFrame1: TUniURLFrame;
    PaymentsVQPhone1: TWideStringField;
    SendBtn: TUniButton;
    dd: TUniDBGrid;
    PhoneCB: TUniDBLookupComboBox;
    procedure btnRefreshClick(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
    procedure SendBtnClick(Sender: TObject);
  private
    { Private declarations }
    procedure SendSMSMSG;
    Function GetPhoneNumbers() : String;
  public
    { Public declarations }
  end;

function SendSMSForm: TSendSMSForm;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, G_Funcs;

function SendSMSForm: TSendSMSForm;
begin
  Result := TSendSMSForm(UniMainModule.GetFormInstance(TSendSMSForm));
end;
//==============================================================================

Function TSendSMSForm.GetPhoneNumbers;
var I:integer;
DataSet : TDataSet;
OutPutBuffer : TBytes;
tList: TStringList;
begin
   if dd.SelectedRows.Count > 0 then begin

     DataSet := PaymentsVQ;

     tList := TStringList.Create;

     try

       DataSet.DisableControls;
       for I := 0 to dd.SelectedRows.Count-1 do
         begin
           OutPutBuffer := dd.SelectedRows.Items[i];
           DataSet.GotoBookmark(OutPutBuffer);

           if i <> 0 then
         tList.Add(',');
           tList.Add(DataSet.FieldByName('Phone1').AsString);



         end;
         result := tList.Text;
     finally
         DataSet.EnableControls;


     end;


  end;
end;
//-------------------------------------------------

procedure TSendSMSForm.SendSMSMSG;
var WebPost,Msg,PhonesLst:String;
begin

Msg:='����� �������� , ������ ����� ���� ������ ��������';

PhonesLst:=   GetPhoneNumbers;

WebPost:='https://www.alfa-cell.com/api/msgSend.php?apiKey=a21f6b73ddbd4c15011f60bb2734185f'
+'&numbers='+PhonesLst+' '
+'&sender=Aqar Alghad'
+'&msg='+Msg
+'&lang=3'
+'&applicationType=68';


 UniURLFrame1.URL:= WebPost;

  ShowSwM('�� ����� ������� ������� �����');


end;
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
procedure TSendSMSForm.btnRefreshClick(Sender: TObject);
begin
  inherited;
  PhoneCB.Clear;
PaymentsVQ.Close;

PaymentsVQ.Open;
AdjustGridView(dd);

 SendBtn.Enabled := true;
end;

procedure TSendSMSForm.SendBtnClick(Sender: TObject);
begin
  inherited;
 if UniMainModule.gSendSMS ='T' then    begin
  SendSMSMSG();
  SendBtn.Enabled := false;
 end;

end;

procedure TSendSMSForm.UniFormCreate(Sender: TObject);
begin
  inherited;
btnRefreshClick(Sender);
end;

end.
