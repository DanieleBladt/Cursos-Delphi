program Project;

uses
  Vcl.Forms,
  uCursos in 'uCursos.pas' {FPrincipal},
  uAnonymousThread in 'Paralelismo\uAnonymousThread.pas' {FAnonymousThread},
  uClasseThread in 'Paralelismo\uClasseThread.pas' {FClasseThread},
  uThreads in 'Paralelismo\uThreads.pas' {FThreads},
  uFuture in 'Paralelismo\uFuture.pas' {FFuture},
  uTasks in 'Paralelismo\uTasks.pas' {FTasks},
  uParallelFor in 'Paralelismo\uParallelFor.pas' {FParallelFor},
  uTarefaRequisicaoRest in 'Paralelismo\uTarefaRequisicaoRest.pas' {FTarefaRequisicaoRest},
  uGifLoading in 'Paralelismo\uGifLoading.pas' {FGifLoading},
  uLoading in 'Paralelismo\uLoading.pas' {FLoading},
  uCalculadora in 'Teste Unitário\uCalculadora.pas' {FCalculadora},
  Controller.Interfaces in 'Estrutura MVC\Controller.Interfaces.pas',
  Controller.Item in 'Estrutura MVC\Controller.Item.pas',
  Controller.Venda in 'Estrutura MVC\Controller.Venda.pas',
  uEstruturaMVC in 'Estrutura MVC\uEstruturaMVC.pas' {FEstruturaMVC},
  Model.Interfaces in 'Estrutura MVC\Model.Interfaces.pas',
  Model.Venda in 'Estrutura MVC\Model.Venda.pas',
  Model.Item in 'Estrutura MVC\Model.Item.pas',
  Controller.Observer.Interfaces in 'Estrutura MVC\Controller.Observer.Interfaces.pas',
  Controller.Observer.Item in 'Estrutura MVC\Controller.Observer.Item.pas',
  uOpenBanking in 'Open Banking\uOpenBanking.pas' {FOpenBanking};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.Run;
end.
