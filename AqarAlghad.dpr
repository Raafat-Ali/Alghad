{$define UNIGUI_VCL} // Comment out this line to turn this project into an ISAPI module

{$ifndef UNIGUI_VCL}
library
{$else}
program
{$endif}
  AqarAlghad;

uses
  uniGUIISAPI,
  Forms,
  ServerModule in 'ServerModule.pas' {UniServerModule: TUniGUIServerModule},
  MainModule in 'MainModule.pas' {UniMainModule: TUniGUIMainModule},
  Main in 'Main.pas' {MainForm: TUniForm},
  Login in 'Login.pas' {UniLoginForm1: TUniLoginForm},
  BaseForm in 'BaseForm.pas' {BaseFormF: TUniForm},
  UserPrev in 'SysManage\UserPrev.pas' {UserPrevF: TUniForm},
  rRegister in 'RealEstate\rRegister.pas' {rRegisterF: TUniForm},
  G_Funcs in 'Global\G_Funcs.pas',
  ReportsDataM in 'SysManage\ReportsDataM.pas' {ReportsDM: TDataModule},
  ShowReport in 'SysManage\ShowReport.pas' {ShowReportF: TUniForm},
  TestTemp in 'TestTemp.pas' {TestTempF: TUniForm},
  RentPayments in 'RealEstate\RentPayments.pas' {RentPaymentsF: TUniForm},
  RentTermination in 'RealEstate\RentTermination.pas' {RentTerminationF: TUniForm},
  Repair in 'RealEstate\Repair.pas' {RepairF: TUniForm},
  SwMsg in 'SysManage\SwMsg.pas' {SwMsgF: TUniForm},
  Rcontracts in 'RealEstate\Rcontracts.pas' {RcontractsF: TUniForm},
  Reports in 'RealEstate\Reports.pas' {ReportsF: TUniForm},
  UrlViewForm in 'Reporting\UrlViewForm.pas' {FormUrlView: TUniForm},
  FrToolsData in 'Reporting\FrToolsData.pas' {DataFrTools: TDataModule},
  PDFviewer in 'SysManage\PDFviewer.pas' {PDFviewerF: TUniForm},
  Vouchers in 'SysManage\Vouchers.pas' {VouchersF: TUniForm},
  Settings in 'SysManage\Settings.pas' {SettingsF: TUniForm},
  ChangePass in 'SysManage\ChangePass.pas' {ChangePassF: TUniForm},
  UsrNotify in 'SysManage\UsrNotify.pas' {UsrNotifyF: TUniForm},
  SendSMS in 'SysManage\SendSMS.pas' {SendSMSForm: TUniForm},
  Arch in 'RealEstate\Arch.pas' {ArchF: TUniForm},
  NumInWords in 'Global\NumInWords.PAS',
  vFramU in 'SysManage\vFramU.pas' {vFrame: TUniFrame},
  mLogin in 'Mobile\mLogin.pas' {UnimLoginForm1: TUnimLoginForm},
  Mainm in 'Mobile\Mainm.pas' {MainmForm: TUnimForm},
  mRentContractsU in 'Mobile\mRentContractsU.pas' {mRentContracts: TUnimForm};

{$R *.res}

{$ifndef UNIGUI_VCL}
exports
  GetExtensionVersion,
  HttpExtensionProc,
  TerminateExtension;
{$endif}

begin
{$ifdef UNIGUI_VCL}
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  TUniServerModule.Create(Application);
  Application.Run;
{$endif}
end.
