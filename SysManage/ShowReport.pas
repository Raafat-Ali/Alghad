unit ShowReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,Uni,
  uniGUIClasses, uniGUIForm, uniButton, uniGUIBaseClasses, uniURLFrame;

type
  TShowReportF = class(TUniForm)
    UniURLFrame1: TUniURLFrame;
    UniButton1: TUniButton;
    procedure UniButton1Click(Sender: TObject);
    procedure UniFormBeforeShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
   ReportName,   RepTypePar,RepType2Par,RepFdatePar,RepTdatePar: string;

     ReportQDS: TUniQuery;

  end;

function ShowReportF: TShowReportF;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, ReportsDataM;

function ShowReportF: TShowReportF;
begin
  Result := TShowReportF(UniMainModule.GetFormInstance(TShowReportF));
end;

//===============================================================================

procedure TShowReportF.UniButton1Click(Sender: TObject);
begin
Close;
end;

procedure TShowReportF.UniFormBeforeShow(Sender: TObject);
var
  dm : TReportsDM;
  PdfUrl : string;
begin
  dm := TReportsDM.Create(nil);
  try
    dm.LoadRepoParams(RepTypePar,RepType2Par,RepFdatePar,RepTdatePar);
      dm.RepDS := ReportQDS;
    PdfUrl := dm.GenReportPDF(ReportName );
  finally
    dm.Free;
  end;

  UniURLFrame1.URL := PdfUrl;

end;

end.
