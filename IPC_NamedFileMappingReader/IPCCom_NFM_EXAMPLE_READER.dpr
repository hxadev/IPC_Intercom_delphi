program IPCCom_NFM_EXAMPLE_READER;

uses
  Vcl.Forms,
  IPCCom_NFM_EX_READ in 'IPCCom_NFM_EX_READ.pas' {Form2},
  UTSharedData in 'UTSharedData.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
