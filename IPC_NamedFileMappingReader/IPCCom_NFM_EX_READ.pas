unit IPCCom_NFM_EX_READ;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, UTSharedData,
  Vcl.StdCtrls;

type
  PSharedData = ^TSharedData;

  TForm2 = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Timer1: TTimer;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
    function GetSharedData: PSharedData;
    procedure RefreshDataFromSharedMemory;
  public
    { Public declarations }
  end;

const
  BUF_SIZE = 256;

var
  hMapFile: THandle;
  SharedData: PSharedData;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
  RefreshDataFromSharedMemory;
end;

procedure TForm2.FormShow(Sender: TObject);
begin
  Self.RefreshDataFromSharedMemory;

  Timer1.Interval := 1000;
  Timer1.Enabled := True;
end;

function TForm2.GetSharedData: PSharedData;
begin
  // Open the named file mapping
  hMapFile := OpenFileMapping(FILE_MAP_ALL_ACCESS, False, 'SharedMemory');
  Win32Check(hMapFile > 0);

  // Map the view of the file mapping to the process's address space
  Result := MapViewOfFile(hMapFile, FILE_MAP_ALL_ACCESS, 0, 0, BUF_SIZE);

  Win32Check(Assigned(Result));
end;

procedure TForm2.RefreshDataFromSharedMemory;
begin
  SharedData := Self.GetSharedData;
  Panel1.Caption := SharedData.Data;
end;

procedure TForm2.Timer1Timer(Sender: TObject);
begin
  // Check if the shared data has changed

  // Update the label with the new data
  Panel1.Caption := SharedData.Data;

end;

end.
