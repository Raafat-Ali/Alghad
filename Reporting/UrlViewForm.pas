unit UrlViewForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniButton, uniBitBtn, uniPanel, uniGUIBaseClasses,
  uniURLFrame;

type
  TFormUrlView = class(TUniForm)
    URLFrame: TUniURLFrame;
    PanelBotton: TUniPanel;
    BitBtnClose: TUniBitBtn;
    procedure UniFormShow(Sender: TObject);
    procedure BitBtnCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function FormUrlView: TFormUrlView;

implementation

{$R *.dfm}

uses
  MainModule, Main ;

function FormUrlView: TFormUrlView;
begin
  Result := TFormUrlView(UniMainModule.GetFormInstance(TFormUrlView));
end;
//=================================================

procedure TFormUrlView.BitBtnCloseClick(Sender: TObject);
begin
   Close;
end;

procedure TFormUrlView.UniFormShow(Sender: TObject);
begin
//   if Height>MainForm.Height then begin
//      Height:=MainForm.Height;
//      Top:=0;
//   end;
//   if Width>MainForm.Width then begin
//      Width:=MainForm.Width;
//      Left:=0;
//   end;
end;

end.
