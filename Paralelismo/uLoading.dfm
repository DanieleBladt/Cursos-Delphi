object FLoading: TFLoading
  Left = 0
  Top = 0
  Caption = 'Loading'
  ClientHeight = 380
  ClientWidth = 568
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
    Width = 568
    Height = 380
    Align = alClient
    TabOrder = 0
    object Button9: TButton
      Left = 224
      Top = 189
      Width = 75
      Height = 25
      Caption = 'Loading'
      TabOrder = 0
      OnClick = Button9Click
    end
  end
end
