unit uLoading;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  System.Threading, uGifLoading;

type
  TFLoading = class(TForm)
    Panel1: TPanel;
    Button9: TButton;
    procedure Button9Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    AllTasksLoad: array of ITask;
    FGifLoading: TFGifLoading;
  public
    { Public declarations }
    procedure ExibirLoading;
    procedure RunTaskLoad(var aTask: ITask);
  end;

var
  FLoading: TFLoading;

implementation

{$R *.dfm}

procedure TFLoading.Button9Click(Sender: TObject);
begin
  SetLength(AllTasksLoad, 1);
  RunTaskLoad(AllTasksLoad[0]);
  ExibirLoading;
end;

procedure TFLoading.RunTaskLoad(var aTask: ITask);
begin
  aTask :=
    TTask.Run(
    procedure
    begin
    Sleep(8000);
    TThread.Synchronize(
      nil,
      procedure
      begin
        //busca dados do banco
      end);
    end);
end;

procedure TFLoading.ExibirLoading;
begin
  //executa a tarefa
  TTask.Run(
  procedure
  begin
    //trabalho com formulário
    TThread.Synchronize(TThread.CurrentThread,
    procedure
    begin
      FGifLoading := TFGifLoading.Create(nil);
      FGifLoading.Show;
    end);
    //aguarda até que todas as tasks sejam executadas
    TTask.WaitForAll(AllTasksLoad);
    //libera da memória e destrói
    TThread.Queue(TThread.CurrentThread,
    procedure
    begin
      FGifLoading.Close;
      FGifLoading.Free;
    end);
  end);
end;

procedure TFLoading.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FLoading := nil;
end;

end.
