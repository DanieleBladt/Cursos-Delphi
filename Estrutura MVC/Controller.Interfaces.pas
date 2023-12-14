unit Controller.Interfaces;

interface

uses
  Model.Interfaces;

type
  IControllerItem = interface;

  IControllerVenda = interface
  ['{E652B319-6729-4C0F-8BCD-934E3BE7EB01}']
    function Item : IControllerItem;
    function Model: IModelVenda;
  end;

  IControllerItem = interface
  ['{8059A237-B71B-42EA-82E7-59FE1E82F1AF}']
    function Codigo(Value: Integer): IControllerItem;
    function Vender: IControllerItem;
    function &End: IControllerVenda;
  end;

implementation

end.
