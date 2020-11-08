unit TestInh;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, BaseForm, uniBasicGrid, uniDBGrid,
  uniDBVerticalGrid, Data.DB, DBAccess, Uni, MemDS, siComp, uniGUIBaseClasses,
  uniPanel;

type
  TTestInhF = class(TBaseFormF)
    PaymensQ: TUniQuery;
    PaymensQs: TUniDataSource;
    UniDBVerticalGrid2: TUniDBVerticalGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function TestInhF: TTestInhF;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function TestInhF: TTestInhF;
begin
  Result := TTestInhF(UniMainModule.GetFormInstance(TTestInhF));
end;

end.
