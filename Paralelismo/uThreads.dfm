object FThreads: TFThreads
  Left = 0
  Top = 0
  Caption = 'Threads'
  ClientHeight = 435
  ClientWidth = 717
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
    Width = 717
    Height = 435
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 64
      Top = 45
      Width = 59
      Height = 24
      Caption = 'Label1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 64
      Top = 88
      Width = 121
      Height = 25
      Caption = 'Sem thread'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 64
      Top = 119
      Width = 121
      Height = 25
      Caption = 'Com thread (TTask)'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 200
      Top = 88
      Width = 75
      Height = 25
      Caption = 'ITask'
      TabOrder = 2
      OnClick = Button3Click
    end
  end
end
