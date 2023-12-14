object FAnonymousThread: TFAnonymousThread
  Left = 0
  Top = 0
  Caption = 'Anonymous Thread'
  ClientHeight = 499
  ClientWidth = 726
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
    Width = 726
    Height = 499
    Align = alClient
    TabOrder = 0
    object Splitter1: TSplitter
      Left = 1
      Top = 316
      Width = 724
      Height = 12
      Cursor = crVSplit
      Align = alBottom
      Color = clBtnFace
      ParentColor = False
      ExplicitTop = 313
    end
    object Button13: TButton
      Left = 1
      Top = 15
      Width = 104
      Height = 25
      Caption = 'Button13'
      TabOrder = 0
      OnClick = Button13Click
    end
    object Memo2: TMemo
      Left = 1
      Top = 328
      Width = 724
      Height = 170
      Align = alBottom
      TabOrder = 1
    end
    object Button1: TButton
      Left = 1
      Top = 46
      Width = 104
      Height = 25
      Caption = 'AnonymousThread'
      TabOrder = 2
      OnClick = Button1Click
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 88
      Width = 724
      Height = 228
      Align = alBottom
      DataSource = DataSource1
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object Button2: TButton
      Left = 111
      Top = 46
      Width = 104
      Height = 25
      Caption = 'CriticalSection'
      TabOrder = 4
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 221
      Top = 46
      Width = 104
      Height = 25
      Caption = 'Monitor'
      TabOrder = 5
      OnClick = Button3Click
    end
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 504
    Top = 8
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\Daniele\Documents\Cursos\cursos-delphi\Projeto' +
        ' 1\Bancos\BANCO.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Port=3050'
      'Server=localhost'
      'CharacterSet=WIN1252'
      'OSAuthent=No'
      'DriverID=FB')
    FormatOptions.AssignedValues = [fvADOCompatibility]
    Connected = True
    LoginPrompt = False
    Left = 440
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 376
    Top = 8
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 560
    Top = 8
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    VendorLib = 'C:\Program Files\Firebird\Firebird_2_5\WOW64\fbclient.dll'
    Left = 616
    Top = 8
  end
end
