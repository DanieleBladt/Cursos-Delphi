unit Model.Venda;

interface

uses
  Model.Interfaces;

type
  TModelVenda = class(TInterfacedObject, IModelVenda)
    private
      FItem: IModelItem;
    public
      constructor Create;
      destructor Destroy; override;
      class function New: IModelVenda;

      function Item: IModelItem;
  end;


implementation

uses
  Model.Item;

{ TModelVenda }

constructor TModelVenda.Create;
begin
  FItem := TModelItem.New(Self);
end;

destructor TModelVenda.Destroy;
begin

  inherited;
end;

function TModelVenda.Item: IModelItem;
begin
  Result := FItem;
end;

class function TModelVenda.New: IModelVenda;
begin
  Result := Self.Create;
end;

end.
