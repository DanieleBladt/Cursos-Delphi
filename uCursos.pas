unit uCursos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Menus;

type
  TFPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Paralelismo: TMenuItem;
    Thread: TMenuItem;
    Future: TMenuItem;
    ParallelFor1: TMenuItem;
    Loading1: TMenuItem;
    Tarefas1: TMenuItem;
    arefasRequisioREST1: TMenuItem;
    AnonymousThread1: TMenuItem;
    hreadClasse1: TMenuItem;
    TesteUnitario: TMenuItem;
    Calculadora1: TMenuItem;
    M1: TMenuItem;
    OpenBanking1: TMenuItem;
    ValidaoContas1: TMenuItem;
    procedure ThreadClick(Sender: TObject);
    procedure FutureClick(Sender: TObject);
    procedure Tarefas1Click(Sender: TObject);
    procedure Loading1Click(Sender: TObject);
    procedure ParallelFor1Click(Sender: TObject);
    procedure arefasRequisioREST1Click(Sender: TObject);
    procedure AnonymousThread1Click(Sender: TObject);
    procedure hreadClasse1Click(Sender: TObject);
    procedure Calculadora1Click(Sender: TObject);
    procedure M1Click(Sender: TObject);
    procedure ValidaoContas1Click(Sender: TObject);
  private
    procedure AlterarFormStyle(AFormulario: TForm);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrincipal: TFPrincipal;

implementation

uses
  uThreads, uFuture, uTasks, uLoading, uParallelFor,
  uTarefaRequisicaoRest, uAnonymousThread, uClasseThread,
  uCalculadora, uEstruturaMVC, uOpenBanking;

{$R *.dfm}

procedure TFPrincipal.Loading1Click(Sender: TObject);
begin
  if FLoading = nil then
    FLoading := TFLoading.Create(Self);
  AlterarFormStyle(FLoading);
  FLoading.Show;
end;

procedure TFPrincipal.M1Click(Sender: TObject);
begin
  if FEstruturaMVC = nil then
    FEstruturaMVC := TFEstruturaMVC.Create(Self);
  AlterarFormStyle(FEstruturaMVC);
  FEstruturaMVC.Show;
end;

procedure TFPrincipal.ParallelFor1Click(Sender: TObject);
begin
  if FParallelFor = nil then
    FParallelFor := TFParallelFor.Create(Self);
  AlterarFormStyle(FParallelFor);
  FParallelFor.Show;
end;

procedure TFPrincipal.Tarefas1Click(Sender: TObject);
begin
  if FTasks = nil then
    FTasks := TFTasks.Create(Self);
  AlterarFormStyle(FTasks);
  FTasks.Show;
end;

procedure TFPrincipal.AnonymousThread1Click(Sender: TObject);
begin
  if FAnonymousThread = nil then
    FAnonymousThread := TFAnonymousThread.Create(Self);
  AlterarFormStyle(FAnonymousThread);
  FAnonymousThread.Show;
end;

procedure TFPrincipal.arefasRequisioREST1Click(Sender: TObject);
begin
  if FTarefaRequisicaoRest = nil then
    FTarefaRequisicaoRest := TFTarefaRequisicaoRest.Create(Self);
  AlterarFormStyle(FTarefaRequisicaoRest);
  FTarefaRequisicaoRest.Show;
end;

procedure TFPrincipal.Calculadora1Click(Sender: TObject);
begin
  if FCalculadora = nil then
    FCalculadora := TFCalculadora.Create(Self);
  AlterarFormStyle(FCalculadora);
  FCalculadora.Show;
end;

procedure TFPrincipal.AlterarFormStyle(AFormulario: TForm);
begin
  AFormulario.FormStyle := fsMDIChild;
end;

procedure TFPrincipal.FutureClick(Sender: TObject);
begin
  if FFuture = nil then
    FFuture := TFFuture.Create(Self);
  AlterarFormStyle(FFuture);
  FFuture.Show;
end;

procedure TFPrincipal.hreadClasse1Click(Sender: TObject);
begin
  if FClasseThread = nil then
    FClasseThread := TFClasseThread.Create(Self);
  AlterarFormStyle(FClasseThread);
  FClasseThread.Show;
end;

procedure TFPrincipal.ThreadClick(Sender: TObject);
begin
  if FThreads = nil then
    FThreads := TFThreads.Create(Self);
  AlterarFormStyle(FThreads);
  FThreads.Show;
end;

procedure TFPrincipal.ValidaoContas1Click(Sender: TObject);
begin
  if FOpenBanking = nil then
    FOpenBanking := TFOpenBanking.Create(Self);
  AlterarFormStyle(FOpenBanking);
  FOpenBanking.Show;
end;

end.
