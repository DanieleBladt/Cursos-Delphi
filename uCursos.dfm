object FPrincipal: TFPrincipal
  Left = 0
  Top = 0
  Caption = 'Tela Principal'
  ClientHeight = 483
  ClientWidth = 761
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu1
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 544
    Top = 32
    object Paralelismo: TMenuItem
      Caption = 'Paralelismo'
      object Thread: TMenuItem
        Caption = 'Thread'
        OnClick = ThreadClick
      end
      object Future: TMenuItem
        Caption = 'Future'
        OnClick = FutureClick
      end
      object Tarefas1: TMenuItem
        Caption = 'Tarefas'
        OnClick = Tarefas1Click
      end
      object Loading1: TMenuItem
        Caption = 'Loading'
        OnClick = Loading1Click
      end
      object ParallelFor1: TMenuItem
        Caption = 'Parallel For'
        OnClick = ParallelFor1Click
      end
      object arefasRequisioREST1: TMenuItem
        Caption = 'Tarefas Requisi'#231#227'o REST'
        OnClick = arefasRequisioREST1Click
      end
      object AnonymousThread1: TMenuItem
        Caption = 'Anonymous Thread'
        OnClick = AnonymousThread1Click
      end
      object hreadClasse1: TMenuItem
        Caption = 'Thread (Classe)'
        OnClick = hreadClasse1Click
      end
    end
    object TesteUnitario: TMenuItem
      Caption = 'Teste Unit'#225'rio'
      object Calculadora1: TMenuItem
        Caption = 'Calculadora'
        OnClick = Calculadora1Click
      end
    end
    object M1: TMenuItem
      Caption = 'MVC'
      OnClick = M1Click
    end
    object OpenBanking1: TMenuItem
      Caption = 'OpenBanking'
      object ValidaoContas1: TMenuItem
        Caption = 'Valida'#231#227'o Contas'
        OnClick = ValidaoContas1Click
      end
    end
  end
end
