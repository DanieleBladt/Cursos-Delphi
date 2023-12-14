unit uTasks;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  System.Threading;

type
  TFTasks = class(TForm)
    Panel1: TPanel;
    Button8: TButton;
    Button7: TButton;
    Button6: TButton;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    AllTasks: array [0 .. 1] of ITask;
    procedure RunTask(aLabel: TLabel; nTempo: Integer; var aTask: ITask);
  public
    { Public declarations }
  end;

var
  FTasks: TFTasks;

implementation

{$R *.dfm}

procedure TFTasks.Button6Click(Sender: TObject);
begin
  RunTask(Label6, 3000, AllTasks[0]);
end;

procedure TFTasks.Button7Click(Sender: TObject);
begin
  RunTask(Label7, 8000, AllTasks[1]);
end;

procedure TFTasks.Button8Click(Sender: TObject);
begin
  Label8.Caption := '---';
  TTask.Run(
  procedure
  begin
  TTask.WaitForAll(AllTasks);
  TThread.Synchronize(
    TThread.CurrentThread,
    procedure
    begin
      Label8.Caption := Label6.Caption + ' + ' + Label7.Caption
    end);
  end);
end;

procedure TFTasks.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FTasks := nil;
end;

procedure TFTasks.RunTask(aLabel: TLabel;
  nTempo: Integer; var aTask: ITask);
begin
  aLabel.Caption := '---';

  aTask :=
    TTask.Run(
      procedure
      begin
      Sleep(nTempo);
      //manipulação de elementos visuais
      TThread.Synchronize(
        TThread.CurrentThread,
        procedure
        begin
         aLabel.Caption := Random(10).ToString;
        end);
      end);
end;

end.
