object FTarefaRequisicaoRest: TFTarefaRequisicaoRest
  Left = 0
  Top = 0
  Caption = 'Tarefa Requisita'#231#227'o Rest'
  ClientHeight = 487
  ClientWidth = 743
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
    Width = 743
    Height = 487
    Align = alClient
    TabOrder = 0
    object edtCEP: TEdit
      Left = 61
      Top = 56
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object edtLogradouro: TEdit
      Left = 61
      Top = 83
      Width = 364
      Height = 21
      TabOrder = 1
    end
    object edtComplemento: TEdit
      Left = 61
      Top = 110
      Width = 364
      Height = 21
      TabOrder = 2
    end
    object edtBairro: TEdit
      Left = 61
      Top = 135
      Width = 121
      Height = 21
      TabOrder = 3
    end
    object edtLocalidade: TEdit
      Left = 188
      Top = 135
      Width = 157
      Height = 21
      TabOrder = 4
    end
    object edtUF: TEdit
      Left = 351
      Top = 135
      Width = 74
      Height = 21
      TabOrder = 5
    end
    object edtUnidade: TEdit
      Left = 61
      Top = 162
      Width = 121
      Height = 21
      TabOrder = 6
    end
    object edtIBGE: TEdit
      Left = 188
      Top = 162
      Width = 157
      Height = 21
      TabOrder = 7
    end
    object edtGIA: TEdit
      Left = 351
      Top = 162
      Width = 74
      Height = 21
      TabOrder = 8
    end
    object Button12: TButton
      Left = 188
      Top = 54
      Width = 75
      Height = 25
      Caption = 'Pesquisar'
      TabOrder = 9
      OnClick = Button12Click
    end
    object StringGrid1: TStringGrid
      Tag = 10
      Left = 61
      Top = 235
      Width = 604
      Height = 198
      ColCount = 10
      FixedCols = 0
      RowCount = 2
      TabOrder = 10
      ColWidths = (
        1534
        1534
        1534
        1534
        1534
        1534
        1534
        1534
        1534
        1534)
      ColAligments = (
        0
        0
        0
        0
        0
        0
        0
        0
        0
        0)
    end
    object ActivityIndicator1: TActivityIndicator
      Left = 290
      Top = 296
    end
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 588
    Top = 157
    object LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      GridControl = StringGrid1
      Columns = <>
    end
    object LinkControlToField1: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'logradouro'
      Control = edtLogradouro
      Track = True
    end
    object LinkControlToField2: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'bairro'
      Control = edtBairro
      Track = True
    end
    object LinkControlToField3: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'ibge'
      Control = edtIBGE
      Track = True
    end
    object LinkControlToField4: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'uf'
      Control = edtUF
      Track = True
    end
    object LinkControlToField5: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'complemento'
      Control = edtComplemento
      Track = True
    end
    object LinkControlToField6: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'localidade'
      Control = edtLocalidade
      Track = True
    end
    object LinkControlToField7: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'gia'
      Control = edtGIA
      Track = True
    end
    object LinkControlToField8: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'cep'
      Control = edtCEP
      Track = True
    end
  end
  object FDMemTable1: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'cep'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'logradouro'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'complemento'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'bairro'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'localidade'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'uf'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'ibge'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'gia'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'ddd'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'siafi'
        DataType = ftWideString
        Size = 255
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 656
    Top = 160
    object FDMemTable1cep: TWideStringField
      FieldName = 'cep'
      Size = 255
    end
    object FDMemTable1logradouro: TWideStringField
      FieldName = 'logradouro'
      Size = 255
    end
    object FDMemTable1complemento: TWideStringField
      FieldName = 'complemento'
      Size = 255
    end
    object FDMemTable1bairro: TWideStringField
      FieldName = 'bairro'
      Size = 255
    end
    object FDMemTable1localidade: TWideStringField
      FieldName = 'localidade'
      Size = 255
    end
    object FDMemTable1uf: TWideStringField
      FieldName = 'uf'
      Size = 255
    end
    object FDMemTable1ibge: TWideStringField
      FieldName = 'ibge'
      Size = 255
    end
    object FDMemTable1gia: TWideStringField
      FieldName = 'gia'
      Size = 255
    end
    object FDMemTable1ddd: TWideStringField
      FieldName = 'ddd'
      Size = 255
    end
    object FDMemTable1siafi: TWideStringField
      FieldName = 'siafi'
      Size = 255
    end
  end
  object RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter
    Active = True
    Dataset = FDMemTable1
    FieldDefs = <>
    Response = RESTResponse1
    Left = 616
    Top = 8
  end
  object RESTClient1: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'https://viacep.com.br'
    Params = <>
    Left = 584
    Top = 56
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <
      item
        Kind = pkURLSEGMENT
        Name = 'cep'
        Options = [poAutoCreated]
        Value = '85501036'
      end>
    Resource = 'ws/{cep}/json'
    Response = RESTResponse1
    Left = 648
    Top = 56
  end
  object RESTResponse1: TRESTResponse
    ContentType = 'application/json'
    Left = 648
    Top = 104
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = FDMemTable1
    ScopeMappings = <>
    Left = 584
    Top = 104
  end
end
