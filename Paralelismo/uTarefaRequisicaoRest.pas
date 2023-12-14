unit uTarefaRequisicaoRest;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.WinXCtrls, Vcl.Grids, Vcl.StdCtrls,
  Vcl.ExtCtrls, Data.Bind.EngExt, Vcl.Bind.DBEngExt, Vcl.Bind.Grid, System.Rtti,
  System.Bindings.Outputs, Vcl.Bind.Editors, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, REST.Types, Data.Bind.DBScope,
  REST.Client, Data.Bind.Components, Data.Bind.ObjectScope,
  REST.Response.Adapter, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Data.Bind.Grid, System.Threading;

type
  TFTarefaRequisicaoRest = class(TForm)
    Panel1: TPanel;
    BindingsList1: TBindingsList;
    FDMemTable1: TFDMemTable;
    FDMemTable1cep: TWideStringField;
    FDMemTable1logradouro: TWideStringField;
    FDMemTable1complemento: TWideStringField;
    FDMemTable1bairro: TWideStringField;
    FDMemTable1localidade: TWideStringField;
    FDMemTable1uf: TWideStringField;
    FDMemTable1ibge: TWideStringField;
    FDMemTable1gia: TWideStringField;
    FDMemTable1ddd: TWideStringField;
    FDMemTable1siafi: TWideStringField;
    RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    BindSourceDB1: TBindSourceDB;
    edtCEP: TEdit;
    edtLogradouro: TEdit;
    edtComplemento: TEdit;
    edtBairro: TEdit;
    edtLocalidade: TEdit;
    edtUF: TEdit;
    edtUnidade: TEdit;
    edtIBGE: TEdit;
    edtGIA: TEdit;
    Button12: TButton;
    StringGrid1: TStringGrid;
    ActivityIndicator1: TActivityIndicator;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    LinkControlToField4: TLinkControlToField;
    LinkControlToField5: TLinkControlToField;
    LinkControlToField6: TLinkControlToField;
    LinkControlToField7: TLinkControlToField;
    LinkControlToField8: TLinkControlToField;
    procedure Button12Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FTarefaRequisicaoRest: TFTarefaRequisicaoRest;

implementation

{$R *.dfm}

procedure TFTarefaRequisicaoRest.Button12Click(Sender: TObject);
begin
  TThread.Synchronize(TThread.CurrentThread,
  procedure
  begin
    ActivityIndicator1.Visible := True;
    ActivityIndicator1.Enabled := True;
    ActivityIndicator1.Animate := True;
  end);

  TTask.Run(
  procedure
  begin
    Sleep(5000);
    TThread.Synchronize(TThread.CurrentThread,
    procedure
    begin
      RESTRequest1.Params.ParameterByName('cep').Value := edtCEP.Text;
      RESTRequest1.Execute;
      ActivityIndicator1.Visible := False;
      ActivityIndicator1.Enabled := False;
      ActivityIndicator1.Animate := False;
    end);
  end);
end;

procedure TFTarefaRequisicaoRest.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FTarefaRequisicaoRest := nil;
end;

end.
