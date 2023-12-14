object FParallelFor: TFParallelFor
  Left = 0
  Top = 0
  Caption = 'ParallelFor'
  ClientHeight = 382
  ClientWidth = 562
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 562
    Height = 382
    Align = alClient
    TabOrder = 0
    object Button10: TButton
      Left = 152
      Top = 25
      Width = 98
      Height = 25
      Caption = 'Sem Parallel For'
      TabOrder = 0
      OnClick = Button10Click
    end
    object Button11: TButton
      Left = 256
      Top = 25
      Width = 107
      Height = 25
      Caption = 'Com Parallel For'
      TabOrder = 1
      OnClick = Button11Click
    end
    object Memo1: TMemo
      Left = 128
      Top = 69
      Width = 271
      Height = 268
      Align = alCustom
      Lines.Strings = (
        'Memo1')
      TabOrder = 2
    end
  end
end
