unit ReportsDataM;

interface

uses
  SysUtils, Classes, frxClass, frxExportBaseDialog, frxExportPDF, frxDBSet,
  Data.DB, MemDS, DBAccess, Uni, frxGradient, siComp, frxRich,
  TypInfo;

type
  TReportsDM = class(TDataModule)
    RepLng: TUniQuery;
    RepLngrptObj: TWideStringField;
    RepLngobjEN: TWideStringField;
    RepLngobjAR: TWideStringField;
    RepParams: TUniQuery;
    RepParamsrptObj: TWideStringField;
    RepParamsrptParam: TWideStringField;
    frxReport1: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    frxGradientObject1: TfrxGradientObject;
    frxDBDataset1: TfrxDBDataset;
    frxRichObject1: TfrxRichObject;
    RepDS: TUniQuery;
    procedure frxReport1BeforePrint(Sender: TfrxReportComponent);
  private
    { Private declarations }
  //   procedure CloseDS;
 //    procedure OpenDS(RepName, Id: string; ReportQDS: TUniDataSource);
    RepType,RepType2,RepFdate,RepTdate:String;






  public
    { Public declarations }
     procedure LoadRepoParams(RepTypePar,RepType2Par,RepFdatePar,RepTdatePar:String);
    function GenReportPDF(const RepName : string  ): String;
  end;

implementation

{$R *.dfm}

uses MainModule, ServerModule, rRegister;

//---------------------------------------
//---------------------------------------

//-----------------------------------------====================================
//---------------------------------------
procedure TReportsDM.LoadRepoParams(RepTypePar,RepType2Par,RepFdatePar,RepTdatePar:String);
begin
RepType := RepTypePar;
RepType2:= RepType2Par;
RepFdate:= RepFdatePar;
RepTdate:=  RepTdatePar;


end;



//---------------------------------------

////---------------------------------------
procedure TReportsDM.frxReport1BeforePrint(Sender: TfrxReportComponent);

begin


//      if Sender.Name = 'RpTypTxt' then
//      (sender as TfrxMemoView).Memo.Text := RepType;
//        if Sender.Name = 'RpParTxt' then
//      (sender as TfrxMemoView).Memo.Text := RepType2;
//
//              if Sender.Name = 'MemFdate' then
//      (sender as TfrxMemoView).Memo.Text :=DateToStr( FromD.DateTime );
//
//              if Sender.Name = 'MemTdate' then
//      (sender as TfrxMemoView).Memo.Text := DateToStr( TooD.DateTime );





//       if sender is TfrxMemoView then  begin          /////WOrking;
//
//        mMemo := sender as TfrxMemoView;
//       EnCap:= mMemo.Text;
//
//
////
// TempQry.SQL.Clear;
// TempQry.SQL.Text := 'Select * from ReportLng where objEn = ''+Income+'' ';// '''+mMemo.Text+''' ';
// TempQry.Open;
// ArCap := TempQry.FieldByName('objAR').AsString;
//
////  PaymentsVQ.FilterSQL := 'PaymentDate Between  ''' + YearCB.Text + '-' + MnthCB.Text + '-01'' '
////     +'  And ''' + YearCB.Text + '-' + MnthCB.Text + '-30'' '
////
//
//
////   (sender as TfrxMemoView).Memo.Text :=   StringReplace(  (sender as TfrxMemoView).Memo.Text, 'Income', '�������', [rfReplaceAll]);
//
//        mMemo.Text :=
//        StringReplace(   mMemo.Text , mMemo.Text, ArCap, [rfReplaceAll]);
//
//
//       end;




       //       if UniMainModule.RTL then
//         ReportLang;

//      fProp := GetPropInfo(Sender.ClassInfo, 'Memo.Text');
//           if Assigned(fProp) then begin
//          // fProp1:=GetPropInfo(Sender., 'Memo.Text');
//              EnCap := GetPropValue(Sender.ClassInfo, 'Memo.Text');
//              UniMainModule.testTXT:= EnCap;
//           end;

//           if sender.ClassName = 'TfrxMemoView'  then begin
//         if (Sender is TfrxMemoView) then begin
//
//
//
//            EnCap :=   (sender as TfrxMemoView).Memo.Text;
//       //   (sender as TfrxMemoView).Memo.Text :=  TranslateToArabic(EnCap)
//
//     //   if RepLng.Locate('rptObj', EnCap, [loCaseInsensitive]) then begin
//           RepLng.Locate('rptObj', EnCap, [loCaseInsensitive]);
//
//           UniMainModule.testTXT:= RepLng.FieldByName('objAR').AsString;
////        end else begin
////           UniMainModule.testTXT:= EnCap;
////
////        end;
//
////      EnCap :=TranslateToArabic(EnCap);
////         UniMainModule.testTXT:=  RepLngobjAR.AsString;
//           end;

          //UniMainModule.testTXT:=  (sender as TfrxMemoView).Memo.Text;


  //   TfrxMemoView(frxReport1.FindObject(Sender)).Text:= 'MyFirstString';
//  frxReport1.Components[2].

   //   UniMainModule.testTXT:=   TfrxMemoView(frxReport1.FindObject(Sender)).Text;
//     end;



 //-----------------------
//       if (Sender is TfrxMemoView) then  begin
//
//               EnCap := GetPropValue(Sender, 'Text');
//
//             for I := 0 to RepLng.RecordCount do begin
//
//            if RepLng['rptObj'] = EnCap  then  begin
//              (Sender as TfrxMemoView).Memo.Text := RepLng['objAR'];
//
//             end ;
//
//              RepLng.Next;
//             end;
////
////
//        end ;



//         for I := 0 to RepLng.RecordCount do begin
//         t := TfrxMemoView(frxReport1.FindObject( RepLng['rptObj'])) ;
//          if t <> nil then begin
//            t.Memo.Text :=   RepLng['objAR'];
//          end;
//
//
//             RepLng.Next;
//         end;
//
//       end;
//
//
//   RepParams.First;
//    for I := 0 to RepParams.RecordCount do begin
//    t := TfrxMemoView(frxReport1.FindObject( RepParams['rptObj'])) ;
//               if t <> nil then begin
//            t.Memo.Text :=   RepParams['rptParam'];
//          end;
//          RepParams.Next;
//    end;
//



// if (Sender is TfrxMemoView) then  begin
//for I := 0 to frxReport1.ComponentCount do
//
//        if  ((Sender as TfrxMemoView).Name ) = RepParams['rptObj'] then  begin
//            (Sender as TfrxMemoView).Memo.Text := RepParams['rptParam'];
//         end ;
//         RepParams.Next;
//     end ;
//
//  t := TfrxMemoView(frxReport1.FindObject('Memo15'));
//  if t <> nil then
//t.Memo.Text := 'FastReport';
// or this:
//if t <> nil then
//t.Prop['Memo'] := 'FastReport';
//end;
end;

function  TReportsDM.GenReportPDF(const RepName :String  ): string;
begin

   //frxDBDataset1.DataSource := ReportQDS;
  RepDS.Open;

   try
   frxReport1.PrintOptions.ShowDialog := False;
    frxReport1.ShowProgress := false;


    frxReport1.EngineOptions.SilentMode := True;
    frxReport1.EngineOptions.EnableThreadSafe := True;
    frxReport1.EngineOptions.DestroyForms := False;
    frxReport1.EngineOptions.UseGlobalDataSetList := False;

    frxReport1.LoadFromFile(UniMainModule.ReportsPath + RepName + '.fr3');



    frxPDFExport1.Background := True;
    frxPDFExport1.ShowProgress := False;
    frxPDFExport1.ShowDialog := False;
    frxPDFExport1.FileName := UniServerModule.NewCacheFileUrl(False, 'pdf', '', '', Result, True);
    frxPDFExport1.DefaultPath := '';

    frxReport1.PreviewOptions.AllowEdit := False;
    frxReport1.PrepareReport;

   // frxReport1.ShowPreparedReport; Arabic Language is fine
     //frxReport1.Print;
    frxReport1.Export(frxPDFExport1);
   finally
  //   CloseDS;
   end;
end;


end.
