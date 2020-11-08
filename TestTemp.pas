unit TestTemp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUIBaseClasses, uniBasicGrid, uniDBGrid,
  uniDBVerticalGrid, Data.DB, DBAccess, Uni, MemDS;

type
  TTestTempF = class(TUniForm)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function TestTempF: TTestTempF;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function TestTempF: TTestTempF;
begin
  Result := TTestTempF(UniMainModule.GetFormInstance(TTestTempF));
end;

end.
