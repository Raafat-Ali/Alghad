unit UsrNotify;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, Data.DB, uniBasicGrid, uniDBGrid, DBAccess, Uni,
  MemDS, uniButton, uniEdit, uniMultiItem, uniComboBox, uniDBComboBox,
  uniDBLookupComboBox, uniGUIBaseClasses, uniPanel, dxGDIPlusClasses, uniImage,
  UniFSToggle;

type
  TUsrNotifyF = class(TUniForm)
    UniContainerPanel1: TUniContainerPanel;
    UniContainerPanel2: TUniContainerPanel;
    UniDBLookupComboBox1: TUniDBLookupComboBox;
    UniEdit1: TUniEdit;
    UniButton1: TUniButton;
    ToUserQry: TUniQuery;
    TaskQry: TUniQuery;
    ToUserQs: TUniDataSource;
    TaskSrc: TUniDataSource;
    UniDBGrid1: TUniDBGrid;
    TaskQryID: TIntegerField;
    TaskQryFrmUsr: TWideStringField;
    TaskQryToUsr: TWideStringField;
    TaskQryTask: TWideStringField;
    TaskQrytskStatus: TBooleanField;
    TaskQryopAt: TDateTimeField;
    TaskQryclAt: TDateTimeField;
    UniFSToggle1: TUniFSToggle;
    procedure UniButton1Click(Sender: TObject);
    procedure UniDBGrid1FieldImageURL(const Column: TUniDBGridColumn;
      const AField: TField; var OutImageURL: string);
    procedure UniDBGrid1ColumnActionClick(Column: TUniDBGridColumn;
      ButtonId: Integer);
    procedure UniFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function UsrNotifyF: TUsrNotifyF;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function UsrNotifyF: TUsrNotifyF;
begin
  Result := TUsrNotifyF(UniMainModule.GetFormInstance(TUsrNotifyF));
end;

procedure TUsrNotifyF.UniButton1Click(Sender: TObject);
begin


TaskQry.Append;
TaskQry.FieldByName('FrmUsr').AsString := UniMainModule.LoggedUserNam;
TaskQry.FieldByName('ToUsr').AsString := UniDBLookupComboBox1.KeyValueStr;
TaskQry.FieldByName('Task').AsString := UniEdit1.Text;
TaskQry.FieldByName('tskStatus').AsBoolean := False;
TaskQry.Post;

TaskQry.Refresh;
 {
procedure TMainForm.UniDBGrid1DrawColumnCell(Sender: TObject; ACol,
  ARow: Integer; Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
begin
  if ClientDataSet1.FieldByName('LastInvoiceDate').AsDateTime >= Date then
    Attribs.Color := $FFDDDD;
end;


}
end;

procedure TUsrNotifyF.UniDBGrid1ColumnActionClick(Column: TUniDBGridColumn;
  ButtonId: Integer);
begin
 case ButtonId of
    0 :
      begin
      TaskQry.Edit;
      if TaskQry.FieldByName('clAt').IsNull then
       else
      TaskQry.FieldByName('clAt').Value :=   NULL;



      TaskQry.FieldByName('tskStatus').AsBoolean := Not   TaskQry.FieldByName('tskStatus').AsBoolean;
      TaskQry.FieldByName('opAt').AsDateTime :=   Now;
      TaskQry.Post;

      end;
    1 :
      begin
      TaskQry.Edit;
      TaskQry.FieldByName('tskStatus').AsBoolean := Not   TaskQry.FieldByName('tskStatus').AsBoolean;
          TaskQry.FieldByName('clAt').AsDateTime :=   Now;
      TaskQry.Post;
      end;

 end;

end;

procedure TUsrNotifyF.UniDBGrid1FieldImageURL(const Column: TUniDBGridColumn;
  const AField: TField; var OutImageURL: string);
begin
  if  (Column.Tag = 255) and  SameText(AField.FieldName, 'tskStatus') then
  begin

    if AField.AsBoolean then

      OutImageURL := 'files/images/approval.png' //  'files/sun.jpeg'
    else

      OutImageURL := 'files/images/Late.png' ;// 'files/moon.jpeg';
     end;



end;

procedure TUsrNotifyF.UniFormCreate(Sender: TObject);
begin
RTL := UniMainModule.RTL;
ToUserQry.Close;
ToUserQry.ParamByName('Me').AsString := UniMainModule.UserID;
ToUserQry.Open;

TaskQry.Open;


UniDBGrid1.Columns.Items[6].Visible :=  UniMainModule.UserID = 'Admin' ;
UniDBGrid1.Columns.Items[7].Visible :=  UniMainModule.UserID = 'Admin'  ;

end;

end.
