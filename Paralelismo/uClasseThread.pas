unit uClasseThread;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type

  TProcesso = class(TThread)
  private
    FMemo: TMemo;
    FAux: String;
  public
    constructor Create(AMemo: TMemo); reintroduce;
    procedure Execute; override;
    procedure Sincronizar;
  end;

  TFClasseThread = class(TForm)
    Panel1: TPanel;
    Memo1: TMemo;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure TratarThread(Sender: TObject);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FClasseThread: TFClasseThread;

implementation

{$R *.dfm}

{ TProcesso }

constructor TProcesso.Create(AMemo: TMemo);
begin
  inherited Create(True);
  FreeOnTerminate := True;
  FMemo := AMemo;
end;

procedure TProcesso.Execute;
var
  i: Integer;
begin
  inherited;
  for i := 0 to 1000 do
  begin
    FAux := 'Valor = ' + i.ToString;
    Self.Queue(Self.Sincronizar);
    Self.Sleep(1);
    raise Exception.Create('Exception gerada na thread');
  end;
end;

procedure TProcesso.Sincronizar;
begin
  FMemo.Lines.Add(FAux);
end;

procedure TFClasseThread.Button1Click(Sender: TObject);
var
  Processo: TProcesso;
begin
  Processo := TProcesso.Create(Memo1);
  Processo.OnTerminate := TratarThread;
  Processo.Start;
end;

procedure TFClasseThread.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FClasseThread := nil;
end;

procedure TFClasseThread.TratarThread(Sender: TObject);
begin
  if Sender is TThread then
  begin
    if Assigned(TThread(Sender).FatalException) then
      Memo1.Lines.Add('A Thread falhou: ' +
        Exception(TThread(Sender).FatalException).Message);
  end;
end;

end.
