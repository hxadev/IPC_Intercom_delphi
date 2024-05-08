unit IPCCom_NFM_EX;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  UTSharedData;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    edtContent: TMemo;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }

    function CreateNamedFileMapping(const nameFile: String): THandle;
  public
    { Public declarations }
  end;

  PSharedData = ^TSharedData;

const
  BUF_SIZE = 256;

var
  SharedData: PSharedData;
  hFileMapping: THandle;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  // Clear Content of Shared memory
  FillChar(SharedData^, BUF_SIZE, 0);
  edtContent.Clear;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  // Create or open the named file mapping
  hFileMapping := CreateNamedFileMapping('SharedMemory');
  Win32Check(hFileMapping > 0);
  // Get the text from edtContent and write it to the shared memory
  StrLCopy(SharedData.Data, PChar(edtContent.Text),
    SizeOf(SharedData.Data) - 1);
end;

function TForm1.CreateNamedFileMapping(const nameFile: String): THandle;
begin
  Result := CreateFileMapping(INVALID_HANDLE_VALUE, nil, PAGE_READWRITE, 0,
    BUF_SIZE, PChar(nameFile));

  Win32Check(Result > 0);
  SharedData := MapViewOfFile(Result, FILE_MAP_ALL_ACCESS, 0, 0, BUF_SIZE);

  Win32Check(Assigned(SharedData));
end;

end.
