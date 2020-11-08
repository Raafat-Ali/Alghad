unit BaseForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses, uniPageControl,
  uniGUIClasses, uniGUIForm, siComp, uniGUIBaseClasses, uniPanel,
  MainModule, uniSweetAlert;

type
  TBaseFormF = class(TUniForm)
    siLang1: TsiLang;
    pnlBaseContainer: TUniContainerPanel;
    procedure UniFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    ScreenMode : TScreenMode; // the current Status of Screen (browse,insert,edit,search).
     UsrCanAdd, UsrCanModify, UsrCanDelete , UsrCanPost,
     UsrCanUnPost, UsrCanPrint , UsrCanUpload,UsrCanDownload : Boolean;

     FormName:String; //for Gget the Privs As per FormName




  end;

function BaseFormF: TBaseFormF;

implementation

{$R *.dfm}

uses
   uniGUIApplication, Main, G_Funcs;

function BaseFormF: TBaseFormF;
begin
  Result := TBaseFormF(UniMainModule.GetFormInstance(TBaseFormF));
end;
//=============================================================================
procedure TBaseFormF.UniFormCreate(Sender: TObject);
var Ts : TUniTabSheet;
begin

RTL := UniMainModule.RTL;

  if RTL then
   siLang1.ActiveLanguage:=2
  else
   siLang1.ActiveLanguage:=1;


UniSession.AddJS('Ext.suspendLayouts()');
      Ts := TUniTabSheet.Create( MainForm.MainPageControl);
      Ts.Closable := True;
      Ts.AlignmentControl := uniAlignmentClient;
      Ts.Layout := 'fit';
     // Ts.OnClose := TabSheetClose;
      Ts.PageControl := MainForm.MainPageControl;
      Ts.Tag :=  Tag;// NativeInt(Nd);
      Ts.Caption :=  Caption;// Nd.Text;
    //  Ts.ImageIndex := actClk.ImageIndex;// Nd.ImageIndex;
     // Ts.OnClose:=TabSheetClose;//(Ts,1);
     Parent := Ts;
      UniSession.AddJS('Ext.resumeLayouts(true)');

      MainForm.MainPageControl.ActivePage := Ts;


getUserPrivs(FormName,UsrCanAdd, UsrCanModify, UsrCanDelete , UsrCanPost,
UsrCanUnPost, UsrCanPrint, UsrCanUpload, UsrCanDownload);



end;

end.
