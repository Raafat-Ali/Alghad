unit vFramU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniEdit, uniGUIBaseClasses, uniPanel, uniLabel,
  uniButton, uniBitBtn;

type
  TvFrame = class(TUniFrame)
    cPa: TUniContainerPanel;
    NumEdtAmount: TUniNumberEdit;
    framEdt: TUniEdit;
    lblKind: TUniLabel;
    bitFree: TUniBitBtn;
    procedure bitFreeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



procedure TvFrame.bitFreeClick(Sender: TObject);
begin
Free;
end;

end.
