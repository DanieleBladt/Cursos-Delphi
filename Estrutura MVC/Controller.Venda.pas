unit Controller.Venda;

interface

uses
  Controller.Interfaces, Model.Interfaces;

type
  TControllerVenda  = class(TInterfacedObject, IControllerVenda)
    private
      FItem: IControllerItem;
      FModel: IModelVenda;
    public
      constructor Create;
      destructor Destroy; override;
      class function New: IControllerVenda;

      function Item : IControllerItem;
      function Model: IModelVenda;
  end;

implementation

uses
  Controller.Item, Model.Venda;

{ TControllerVenda }

constructor TControllerVenda.Create;
begin
  FModel := TModelVenda.New;
  FItem  := TControllerItem.New(Self);
end;

destructor TControllerVenda.Destroy;
begin

  inherited;
end;

function TControllerVenda.Item: IControllerItem;
begin
  Result := FItem;
end;

function TControllerVenda.Model: IModelVenda;
begin
  Result := FModel;
end;

class function TControllerVenda.New: IControllerVenda;
begin
  Result := Self.Create;
end;

end.
