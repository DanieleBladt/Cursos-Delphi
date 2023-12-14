unit uEstruturaMVC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Controller.Interfaces;

type
  TFEstruturaMVC = class(TForm)
    Panel1: TPanel;
    Edit1: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
    FVenda: IControllerVenda;
    procedure VenderItem;
  public
    { Public declarations }
  end;

var
  FEstruturaMVC: TFEstruturaMVC;

implementation

uses
  Controller.Venda;

{$R *.dfm}


procedure TFEstruturaMVC.Edit1Change(Sender: TObject);
begin
  if Edit1.Text = '' then
    Exit;

  VenderItem;
end;

procedure TFEstruturaMVC.FormCreate(Sender: TObject);
begin
  FVenda := TControllerVenda.New;
end;

procedure TFEstruturaMVC.VenderItem;
begin
  FVenda
    .Item
    .Codigo(StrToInt(Edit1.Text))
    .Vender;
end;

end.
