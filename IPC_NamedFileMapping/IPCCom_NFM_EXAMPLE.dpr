program IPCCom_NFM_EXAMPLE;

uses
  Vcl.Forms,
  IPCCom_NFM_EX in 'IPCCom_NFM_EX.pas' {Form1},
  UTSharedData in 'UTSharedData.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
