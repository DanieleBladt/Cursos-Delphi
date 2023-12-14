unit uThreads;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFThreads = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FThreads: TFThreads;

implementation

uses
  System.Threading;

{$R *.dfm}

procedure TFThreads.Button1Click(Sender: TObject);
begin
  Sleep(10000);
  Label1.Caption := DateTimeToStr(Now);
end;

procedure TFThreads.Button2Click(Sender: TObject);
begin
  //fechar a aplicação não cancela a execução da thread
  TTask.Run(
    procedure
    begin
      Sleep(10000);
      TThread.Synchronize(
        TThread.CurrentThread,
        procedure
        begin
          Label1.Caption := DateTimeToStr(Now);
        end
      );
    end
  );
end;

procedure TFThreads.Button3Click(Sender: TObject);
var
  oTask: ITask;
begin
  oTask := TTask.Create(
    procedure
    begin
      Sleep(10000);
      TThread.Synchronize(
        TThread.CurrentThread,
        procedure
        begin
          Label1.Caption := DateTimeToStr(Now);
        end
      );
    end
  );
  //inicia a execução da thread
  oTask.Start;
end;

procedure TFThreads.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FThreads := nil;
end;

end.
