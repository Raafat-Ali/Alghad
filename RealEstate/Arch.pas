unit Arch;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, BaseForm, siComp, uniGUIBaseClasses, uniPanel,
  uniButton, uniBasicGrid, uniDBGrid, Data.DB, DBAccess, Uni, MemDS,
  uniGridExporters;

type
  TArchF = class(TBaseFormF)
    ArchQ: TUniQuery;
    ArchSrc: TUniDataSource;
    UniDBGrid1: TUniDBGrid;
    UniButton1: TUniButton;
    ArchQID: TIntegerField;
    ArchQArcDate: TDateField;
    ArchQIncome: TFloatField;
    ArchQExpense: TFloatField;
    ArchQContracts: TIntegerField;
    ArchQPaids: TFloatField;
    ArchQMaint: TFloatField;
    UniGridExcelExporter1: TUniGridExcelExporter;
    procedure UniFormCreate(Sender: TObject);
    procedure UniButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function ArchF: TArchF;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, G_Funcs;

function ArchF: TArchF;
begin
  Result := TArchF(UniMainModule.GetFormInstance(TArchF));
end;

procedure TArchF.UniButton1Click(Sender: TObject);
begin
  inherited;
UniDBGrid1.Exporter.Exporter := UniGridExcelExporter1;

  UniDBGrid1.Exporter.ExportGrid;
end;

procedure TArchF.UniFormCreate(Sender: TObject);
begin
  inherited;
ArchQ.Open;
AdjustGridView(UniDBGrid1);
end;

end.
