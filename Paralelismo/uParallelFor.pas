unit uParallelFor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, System.Threading;

type
  TFParallelFor = class(TForm)
    Panel1: TPanel;
    Button10: TButton;
    Button11: TButton;
    Memo1: TMemo;
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FParallelFor: TFParallelFor;

implementation

{$R *.dfm}

procedure TFParallelFor.Button10Click(Sender: TObject);
var
  i: Integer;
begin
  Memo1.Lines.Clear;
  for i := 0 to 9 do
    begin
    Sleep(1000);
    Memo1.Lines.Add(i.ToString);
  end;
end;

procedure TFParallelFor.Button11Click(Sender: TObject);
begin
  Memo1.Lines.Clear;
  //forma assíncrona
  TTask.Run(
  procedure
  begin
  TParallel.For(0, 9,
    procedure (Index: Integer)
    begin
      Sleep(1000);
      TThread.Queue(TThread.CurrentThread,
      procedure
      begin
        Memo1.Lines.Add(Index.ToString);
      end);
    end);
  end);
end;

procedure TFParallelFor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FParallelFor := nil;
end;

end.
