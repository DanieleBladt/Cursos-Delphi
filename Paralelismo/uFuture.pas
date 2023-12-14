unit uFuture;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.ExtCtrls, System.Threading;

type
  TFFuture = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Button1: TButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button2: TButton;
    Timer1: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
    FcVariavel1: IFuture<string>;
    FcVariavel2: IFuture<string>;
    FcVariavel3: IFuture<string>;
  public
    { Public declarations }
  end;

var
  FFuture: TFFuture;

implementation

{$R *.dfm}

procedure TFFuture.Button1Click(Sender: TObject);
var
  cVariavel1, cVariavel2, cVariavel3: String;
  tempo: Cardinal;
begin
  tempo := GetTickCount;

  Sleep(5000);
  cVariavel1 := Random(100).ToString;

  Sleep(3000);
  cVariavel2 := Random(100).ToString;

  Sleep(2000);
  cVariavel3 := Random(100).ToString;

  tempo := GetTickCount - tempo;
  Label1.Caption := 'Tempo gasto: ' + IntToStr(tempo) + 'ms. Valores: '
    + cVariavel1 + ' - ' + cVariavel2 + ' - ' + cVariavel3;
end;

procedure TFFuture.Button2Click(Sender: TObject);
begin
  if not Timer1.Enabled then
    Timer1.Enabled := True;

  TTask.Run(
  procedure
  var
    tempo: Cardinal;
  begin
    tempo := GetTickCount;

    FcVariavel1 := TTask.Future<string>(
    function: String
    begin
      Sleep(5000);
      Result := Random(100).ToString;
    end);

    FcVariavel2 := TTask.Future<string>(
    function: String
    begin
      Sleep(3000);
      Result := Random(100).ToString;
    end);

    FcVariavel3 := TTask.Future<string>(
    function: String
    begin
      Sleep(2000);
      Result := Random(100).ToString;
    end);

    tempo := GetTickCount - tempo;

    TThread.Synchronize(TThread.CurrentThread,
    procedure
    begin
      Label1.Caption := 'Tempo gasto: ' + IntToStr(tempo) + 'ms. Valores: '
        + FcVariavel1.Value + ' - ' + FcVariavel2.Value + ' - '
        + FcVariavel3.Value;
    end);
  end);
end;

procedure TFFuture.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FFuture := nil;
end;

procedure TFFuture.Timer1Timer(Sender: TObject);
begin
  if FcVariavel1.Status = TTaskStatus.Completed then
    Label2.Caption := 'Resultado Variável 1: ' + FcVariavel1.Value
  else
    Label2.Caption := 'Resultado Variável 1: ---';

  if FcVariavel2.Status = TTaskStatus.Completed then
    Label3.Caption := 'Resultado Variável 2: ' + FcVariavel2.Value
  else
    Label3.Caption := 'Resultado Variável 2: ---';

  if FcVariavel3.Status = TTaskStatus.Completed then
    Label4.Caption := 'Resultado Variável 3: ' + FcVariavel3.Value
  else
    Label4.Caption := 'Resultado Variável 3: ---';
end;

end.
