unit FrToolsData;

interface

uses
  SysUtils, Classes, frxRich, frxExportRTF, frxExportXML, frxExportXLS,
  frxExportHTML, frxClass, frxExportBaseDialog, frxExportPDF, frxGradient;

type
  TDataFrTools = class(TDataModule)
    frxGradientObject1: TfrxGradientObject;
    frxHTMLExport1: TfrxHTMLExport;
    frxXLSExport1: TfrxXLSExport;
    frxXMLExport1: TfrxXMLExport;
    frxRTFExport1: TfrxRTFExport;
    frxRichObject1: TfrxRichObject;
    frxPDFExport1: TfrxPDFExport;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure MyFrxShow(frxReport: TfrxReport);
    procedure MyFrxLoad(frxReport: TfrxReport; FRepFile:String);

  end;

function DataFrTools: TDataFrTools;

implementation

{$R *.dfm}

uses
  UniGUIVars, uniGUIMainModule, MainModule,Main, UrlViewForm, ServerModule,  uniGUIApplication,
  Rcontracts;

function DataFrTools: TDataFrTools;
begin
  Result := TDataFrTools(UniMainModule.GetModuleInstance(TDataFrTools));
end;
//=============================================================================

procedure TDataFrTools.MyFrxShow(frxReport: TfrxReport);
var
   fn:String;
   FormUrlView1: TFormUrlView;
begin                                            //  R-041541.563.pdf  HHMMSS.zzz
   fn:= 'R-' +FormatDateTime('hhmmss.zzz', Now()) +'.pdf'; // Create a unique name for report.
   frxReport.PrintOptions.ShowDialog := False;
   frxReport.ShowProgress:=false;
   frxReport.PrintOptions.ShowDialog:=false;
   frxReport.EngineOptions.SilentMode:=True;



   frxPDFExport1.Background:=True;
   frxPDFExport1.ShowProgress:=False;
   frxPDFExport1.ShowDialog:=False;

   frxPDFExport1.EmbeddedFonts:=True;

   frxPDFExport1.FileName := UniServerModule.LocalCachePath +fn;
   frxPDFExport1.DefaultPath := '';
   if Mainform.WebMode then begin
      frxReport.PrepareReport(); // Create Report
      frxReport.Export(frxPDFExport1); // Export Report
      if MainForm.DwnRepoFile then begin
         UniSession.SendFile(UniServerModule.LocalCachePath +fn, fn);
      end else begin
         FormUrlView1:=TFormUrlView.Create(UniApplication);
         FormUrlView1.URLFrame.URL := UniServerModule.LocalCacheURL +fn; // Displayed on UniURLFrame
         FormUrlView1.Show;
      end;
   end else begin
      frxReport.ShowReport();
   end;
end;


procedure TDataFrTools.MyFrxLoad(frxReport: TfrxReport; FRepFile: String);

begin
   frxReport.Clear;
   frxReport.PreviewOptions.AllowEdit:=False;
 //  frxReport.LoadFromFile('.......\'+FRepFile);

   frxReport.LoadFromFile(UniMainModule.ReportsPath + FRepFile  + '.fr3');

     frxReport.PrepareReport(true);

 //  frxReport1.LoadFromFile(UniMainModule.ReportsPath + RepName + '.fr3');

//
//    fn:= 'R-' +FormatDateTime('hhmmss.zzz', Now()) +'.pdf'; // Create a unique name for report.
//   frxReport.PrintOptions.ShowDialog := False;
//   frxReport.ShowProgress:=false;
//   frxReport.PrintOptions.ShowDialog:=false;
//   frxReport.EngineOptions.SilentMode:=True;
//   frxPDFExport1.Background:=True;
//   frxPDFExport1.ShowProgress:=False;
//   frxPDFExport1.ShowDialog:=False;
//   frxPDFExport1.FileName := UniServerModule.LocalCachePath +fn;
//   frxPDFExport1.DefaultPath := '';
//   if Mainform.WebMode then begin
//      frxReport.PrepareReport(); // Create Report
//      frxReport.Export(frxPDFExport1); // Export Report
//      if MainForm.DwnRepoFile then begin
//         UniSession.SendFile(UniServerModule.LocalCachePath +fn, fn);
//      end else begin
//         FormUrlView1:=TFormUrlView.Create(UniApplication);
//         FormUrlView1.URLFrame.URL := UniServerModule.LocalCacheURL +fn; // Displayed on UniURLFrame
//         FormUrlView1.Show;
//      end;
//   end else begin
//      frxReport.ShowReport();
//   end;
end;







initialization
  RegisterModuleClass(TDataFrTools);

end.
