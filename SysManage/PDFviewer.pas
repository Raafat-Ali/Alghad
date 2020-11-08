unit PDFviewer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, BaseForm, siComp, uniGUIBaseClasses, uniPanel,
  uniMultiItem, uniListBox, uniButton, uniURLFrame,ServerModule, uniFileUpload;

type
  TPDFviewerF = class(TBaseFormF)
    UniPanel1: TUniPanel;
    UniListBox1: TUniListBox;
    UniFileUploadButton1: TUniFileUploadButton;
    UniContainerPanel1: TUniContainerPanel;
    UniPDFFrame1: TUniPDFFrame;
    procedure UniFormCreate(Sender: TObject);
    procedure UniListBox1Change(Sender: TObject);
    procedure UniFileUploadButton1Completed(Sender: TObject;
      AStream: TFileStream);
  private
    { Private declarations }
       FUrl : string;

       procedure FetchPDFs();
  public
    { Public declarations }
  end;

function PDFviewerF: TPDFviewerF;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function PDFviewerF: TPDFviewerF;
begin
  Result := TPDFviewerF(UniMainModule.GetFormInstance(TPDFviewerF));
end;

//============================================================
procedure TPDFviewerF.FetchPDFs;
var
  FFolder: string;

  Sr : TSearchRec;
begin
     UniListBox1.Items.Clear;
  FFolder := UniServerModule.FilesFolderPath+'PDFs\';
  FUrl := UniServerModule.FilesFolderURL+'PDFs/';
  if SysUtils.FindFirst(FFolder+'*.pdf', faAnyFile, Sr) = 0 then
  begin
    repeat
      if Sr.Attr and faDirectory = 0 then
        UniListBox1.Items.Add(Sr.Name);
    until SysUtils.FindNext(sr) <> 0;
    SysUtils.FindClose(sr);
  end;

  if UniListBox1.Items.Count>0 then
  begin
    UniListBox1.ItemIndex := 0;
  //  UniURLFrame1.URL := FUrl+UniListBox1.Items[0];
     UniPDFFrame1.PdfURL := FUrl+UniListBox1.Items[0];
  end;
end;

procedure TPDFviewerF.UniFileUploadButton1Completed(Sender: TObject;
  AStream: TFileStream);

begin
  inherited;

//      DestFolder:= UniMainModule.PDFsPath; //UniServerModule.StartPath+'UploadFolder\';
//    DestName:=DestFolder+ExtractFileName(UniFileUploadButton1.FileName );
   // CopyFile(PChar(AStream.FileName), PChar(DestName), False);

    CopyFile(PChar(AStream.FileName), PChar(UniMainModule.PDFsPath+UniFileUploadButton1.FileName), False);


   FetchPDFs;
end;

procedure TPDFviewerF.UniFormCreate(Sender: TObject);

begin
  inherited;
   FetchPDFs;
end;

procedure TPDFviewerF.UniListBox1Change(Sender: TObject);
begin
  inherited;
  if UniListBox1.ItemIndex > -1 then
  //  UniURLFrame1.URL := FUrl+UniListBox1.Items[UniListBox1.ItemIndex];
     UniPDFFrame1.PdfURL := FUrl+UniListBox1.Items[UniListBox1.ItemIndex];
end;

end.
