unit UserPrev;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, BaseForm, siComp, uniGUIBaseClasses, uniTreeView,
  uniTreeMenu, Vcl.Menus, uniMainMenu, System.Actions, Vcl.ActnList, uniLabel,
  uniBasicGrid, uniDBGrid, uniMultiItem, uniComboBox, uniDBComboBox,
  uniDBLookupComboBox, uniPanel, Data.DB, DBAccess, Uni, MemDS, uniCheckBox,
  UniFSToggle, uniButton, uniEdit, uniDBEdit, uniDBText, uniDBCheckBox, uniMemo,
  uniGroupBox;

type
  TUserPrevF = class(TBaseFormF)
    ActionList1: TActionList;
    aAdmin: TAction;
    aDashBoard: TAction;
    aSysSettings: TAction;
    aUserPrivs: TAction;
    aHR: TAction;
    aHRsettings: TAction;
    aEmployees: TAction;
    aSal: TAction;
    aStartWork: TAction;
    aCars: TAction;
    aMaintSettings: TAction;
    aCarMaint: TAction;
    aCarHand: TAction;
    aCarsReports: TAction;
    MenuActions: TUniMenuItems;
    Administration1: TUniMenuItem;
    DashBoard1: TUniMenuItem;
    SystemSettings1: TUniMenuItem;
    UserPriviliges1: TUniMenuItem;
    HumanResources1: TUniMenuItem;
    HRSettings1: TUniMenuItem;
    Employees1: TUniMenuItem;
    Payroll1: TUniMenuItem;
    StartWork1: TUniMenuItem;
    CARS1: TUniMenuItem;
    MaintinanceSettings1: TUniMenuItem;
    Maintenance1: TUniMenuItem;
    CarHandOver1: TUniMenuItem;
    CarsReports1: TUniMenuItem;
    UniTreeMenu1: TUniTreeMenu;
    UniPanel1: TUniPanel;
    UniContainerPanel3: TUniContainerPanel;
    UniDBLookupComboBox1: TUniDBLookupComboBox;
    UniDBGrid2: TUniDBGrid;
    QryUsersPP: TUniQuery;
    UsersPPsrc: TUniDataSource;
    UsersQry: TUniQuery;
    UsersQrySrc: TUniDataSource;
    UniPanel2: TUniPanel;
    UniDBText1: TUniDBText;
    UniButton1: TUniButton;
    UniContainerPanel1: TUniContainerPanel;
    UniSimplePanel1: TUniSimplePanel;
    UniContainerPanel2: TUniContainerPanel;
    UniDBCheckBox1: TUniDBCheckBox;
    UniDBCheckBox2: TUniDBCheckBox;
    UniContainerPanel4: TUniContainerPanel;
    UniDBCheckBox6: TUniDBCheckBox;
    UniDBCheckBox4: TUniDBCheckBox;
    UniDBCheckBox3: TUniDBCheckBox;
    UniDBCheckBox8: TUniDBCheckBox;
    UniDBCheckBox7: TUniDBCheckBox;
    UniDBCheckBox9: TUniDBCheckBox;
    UniDBCheckBox10: TUniDBCheckBox;
    UniDBCheckBox5: TUniDBCheckBox;
    UniButton2: TUniButton;
    UniFSToggle1: TUniFSToggle;
    UniButton3: TUniButton;
    UniButton4: TUniButton;
    UniButton5: TUniButton;
    UniSQL1: TUniSQL;
    edtPassword: TUniEdit;
    UniGroupBox1: TUniGroupBox;
    UniDBEdit1: TUniDBEdit;
    UniDBEdit2: TUniDBEdit;
    UniDBEdit3: TUniDBEdit;
    procedure UniTreeMenu1Click(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
    procedure UsersQryAfterScroll(DataSet: TDataSet);
    procedure UniButton2Click(Sender: TObject);
    procedure UniFSToggle1Toggled(const Value: Boolean);
    procedure UniButton3Click(Sender: TObject);
    procedure UniButton4Click(Sender: TObject);
    procedure UniButton5Click(Sender: TObject);
    procedure QryUsersPPAfterPost(DataSet: TDataSet);
    procedure QryUsersPPAfterOpen(DataSet: TDataSet);
    procedure UniButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function UserPrevF: TUserPrevF;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function UserPrevF: TUserPrevF;
begin
  Result := TUserPrevF(UniMainModule.GetFormInstance(TUserPrevF));
end;

procedure TUserPrevF.QryUsersPPAfterOpen(DataSet: TDataSet);
begin
  inherited;
 UniSimplePanel1.Enabled := QryUsersPP.RecordCount > 0;

 UniButton2.Enabled :=    QryUsersPP.RecordCount < 1;  //Add permissions
  UniButton5.Enabled :=    QryUsersPP.RecordCount > 1; //Remove Permissons

 //  UniButton3.Enabled :=    QryUsersPP.RecordCount > 1; //Enable ALL
  //  UniButton4.Enabled :=    QryUsersPP.RecordCount > 1; //Disable ALL
end;

procedure TUserPrevF.QryUsersPPAfterPost(DataSet: TDataSet);
begin
  inherited;
 UniSimplePanel1.Enabled := QryUsersPP.RecordCount > 0;

 UniButton2.Enabled :=    QryUsersPP.RecordCount < 1;  //Add permissions
  UniButton5.Enabled :=    QryUsersPP.RecordCount > 1; //Remove Permissons

 //  UniButton3.Enabled :=    QryUsersPP.RecordCount > 1; //Enable ALL
 //   UniButton4.Enabled :=    QryUsersPP.RecordCount > 1; //Disable ALL
end;

procedure TUserPrevF.UniButton1Click(Sender: TObject);
begin
  inherited;
  UsersQry.Edit;
  UsersQry.FieldByName('Password').AsString := edtPassword.Text;
UsersQry.Post;
end;

procedure TUserPrevF.UniButton2Click(Sender: TObject);
var i:Integer;
begin
  inherited;

  For I := 0 to ActionList1.ActionCount-1 do   begin
         QryUsersPP.Append;
  //   QryUsersPP.FieldByName('UserCode').AsString :=  UsersQry.FieldByName('UserCode').AsString;
     QryUsersPP.FieldByName('MenuItem').AsString :=
     ActionList1.Actions[I].Name;


  end;
    QryUsersPP.Post;


end;

procedure TUserPrevF.UniButton3Click(Sender: TObject);
var I,L:Integer;
list:TStringList;
first:String;
begin
  inherited;

  list := TStringList.Create;
  try


if UniTreeMenu1.Selected.HasChildren   then begin

   first :=UniTreeMenu1.Selected.Action.Name ;

   QryUsersPP.Edit;
   QryUsersPP.FieldByName('uShow').AsBoolean := True;
     QryUsersPP.FieldByName('uEnab').AsBoolean := True;
       QryUsersPP.FieldByName('uAdd').AsBoolean := True;
         QryUsersPP.FieldByName('uEdit').AsBoolean := True;
           QryUsersPP.FieldByName('uDel').AsBoolean := True;
             QryUsersPP.FieldByName('uPost').AsBoolean := True;
               QryUsersPP.FieldByName('uUnpost').AsBoolean := True;
                 QryUsersPP.FieldByName('uPrint').AsBoolean := True;
                   QryUsersPP.FieldByName('uUpload').AsBoolean := True;
                     QryUsersPP.FieldByName('uDownload').AsBoolean := True;
  QryUsersPP.Post;



  for I := 0 to UniTreeMenu1.Selected.Count-1 do
  begin

  list.Add(UniTreeMenu1.Selected.Item[I].Action.Name) ;
 //   list.Insert(i,UniTreeMenu1.Selected.Item[I].Action.Name);

//   UniMemo1.Lines.Add(UniTreeMenu1.Selected.Item[I].Text)  ;

//      UniMemo1.Lines.Add(UniTreeMenu1.Selected.Item[I].Action.Name)  ;

//   UniTreeMenu1.Selected.SelectedIndex   :=  UniTreeMenu1.Selected.SelectedIndex + i;
  end;

end;


//now edit the prevs in tables
 for L := 0 to list.Count-1 do  begin
  QryUsersPP.Locate('MenuItem',list[L],[]);
  QryUsersPP.Edit;
   QryUsersPP.FieldByName('uShow').AsBoolean := True;
     QryUsersPP.FieldByName('uEnab').AsBoolean := True;
       QryUsersPP.FieldByName('uAdd').AsBoolean := True;
         QryUsersPP.FieldByName('uEdit').AsBoolean := True;
           QryUsersPP.FieldByName('uDel').AsBoolean := True;
             QryUsersPP.FieldByName('uPost').AsBoolean := True;
               QryUsersPP.FieldByName('uUnpost').AsBoolean := True;
                 QryUsersPP.FieldByName('uPrint').AsBoolean := True;
                   QryUsersPP.FieldByName('uUpload').AsBoolean := True;
                     QryUsersPP.FieldByName('uDownload').AsBoolean := True;
  QryUsersPP.Post;

 end;
   except

  end;

 QryUsersPP.Locate('MenuItem',first,[]);  //Back to the first

list.Free;
end;

procedure TUserPrevF.UniButton4Click(Sender: TObject);
var I,L:Integer;
list:TStringList;
first:String;
begin
  inherited;

   list := TStringList.Create;

   try

if UniTreeMenu1.Selected.HasChildren   then begin

   first :=UniTreeMenu1.Selected.Action.Name ;

   QryUsersPP.Edit;
   QryUsersPP.FieldByName('uShow').AsBoolean := False;
     QryUsersPP.FieldByName('uEnab').AsBoolean := False;
       QryUsersPP.FieldByName('uAdd').AsBoolean := False;
         QryUsersPP.FieldByName('uEdit').AsBoolean := False;
           QryUsersPP.FieldByName('uDel').AsBoolean := False;
             QryUsersPP.FieldByName('uPost').AsBoolean := False;
               QryUsersPP.FieldByName('uUnpost').AsBoolean := False;
                 QryUsersPP.FieldByName('uPrint').AsBoolean := False;
                   QryUsersPP.FieldByName('uUpload').AsBoolean := False;
                     QryUsersPP.FieldByName('uDownload').AsBoolean := False;
  QryUsersPP.Post;



  for I := 0 to UniTreeMenu1.Selected.Count-1 do
  begin

  list.Add(UniTreeMenu1.Selected.Item[I].Action.Name) ;
 //   list.Insert(i,UniTreeMenu1.Selected.Item[I].Action.Name);

//   UniMemo1.Lines.Add(UniTreeMenu1.Selected.Item[I].Text)  ;

 //     UniMemo1.Lines.Add(UniTreeMenu1.Selected.Item[I].Action.Name)  ;

//   UniTreeMenu1.Selected.SelectedIndex   :=  UniTreeMenu1.Selected.SelectedIndex + i;
  end;

end;


//now edit the prevs in tables
 for L := 0 to list.Count-1 do  begin
  QryUsersPP.Locate('MenuItem',list[L],[]);
  QryUsersPP.Edit;
   QryUsersPP.FieldByName('uShow').AsBoolean := False;
     QryUsersPP.FieldByName('uEnab').AsBoolean := False;
       QryUsersPP.FieldByName('uAdd').AsBoolean := False;
         QryUsersPP.FieldByName('uEdit').AsBoolean := False;
           QryUsersPP.FieldByName('uDel').AsBoolean := False;
             QryUsersPP.FieldByName('uPost').AsBoolean := False;
               QryUsersPP.FieldByName('uUnpost').AsBoolean := False;
                 QryUsersPP.FieldByName('uPrint').AsBoolean := False;
                   QryUsersPP.FieldByName('uUpload').AsBoolean := False;
                     QryUsersPP.FieldByName('uDownload').AsBoolean := False;
  QryUsersPP.Post;

 end;
    except

  end;
 QryUsersPP.Locate('MenuItem',first,[]);  //Back to the first

list.Free;
end;

procedure TUserPrevF.UniButton5Click(Sender: TObject);
var Usr:String;
begin
  inherited;
Usr :=  UsersQry.FieldByName('UserCode').AsString;
  UniSQL1.SQL.Clear;
UniSQL1.SQL.Text := 'Delete from UserPrivs where UserCode = '''+Usr+''' ';
 UniSQL1.Execute;


 QryUsersPP.Close;
 QryUsersPP.Open;

 UniButton3.Enabled := false;
 UniButton4.Enabled := false;

end;

procedure TUserPrevF.UniFormCreate(Sender: TObject);
begin
  inherited;
QryUsersPP.Open;
UsersQry.Open;
end;

procedure TUserPrevF.UniFSToggle1Toggled(const Value: Boolean);
begin
  inherited;
    UsersQry.Edit;
if Value = True then
 UsersQry.FieldByName('UserStatus').AsString := 'A'
 else
 UsersQry.FieldByName('UserStatus').AsString := 'I';
   UsersQry.Post;

end;

procedure TUserPrevF.UniTreeMenu1Click(Sender: TObject);
var ClickedItem:String;
begin
  inherited;

//niLabel1.Caption := IntToStr(UniTreeMenu1.Selected.Count);
ClickedItem := UniTreeMenu1.Selected.Action.Name;
 //UniLabel2.Caption := UniTreeMenu1.Selected.GetNext.Text;

 if  QryUsersPP.RecordCount > 0 then

 QryUsersPP.Locate('MenuItem',ClickedItem,[]);

  UniButton3.Enabled :=  (UniTreeMenu1.Selected.HasChildren) And (QryUsersPP.RecordCount > 1); //Enable ALL
   UniButton4.Enabled :=  (UniTreeMenu1.Selected.HasChildren) And  (QryUsersPP.RecordCount > 1); //Disable ALL
end;

procedure TUserPrevF.UsersQryAfterScroll(DataSet: TDataSet);
begin
  inherited;

 UniFSToggle1.Toggled    :=  UsersQry.FieldByName('UserStatus').AsString = 'A';

 UniSimplePanel1.Enabled := QryUsersPP.RecordCount > 0;

 UniButton2.Enabled :=    QryUsersPP.RecordCount < 1  ;  //Add permissions
  UniButton5.Enabled :=    QryUsersPP.RecordCount > 1  ; //Remove Permissons

  // UniButton3.Enabled :=    QryUsersPP.RecordCount > 1; //Enable ALL
  //  UniButton4.Enabled :=    QryUsersPP.RecordCount > 1; //Disable ALL
end;

end.
