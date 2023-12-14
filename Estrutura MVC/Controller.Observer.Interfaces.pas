unit Controller.Observer.Interfaces;

interface

type
  TRecordItem = record
    Descricao: String;
    Quantidade: Currency;
    Valor: Currency;
  end;

  IObserverItem = interface
  ['{57056CAF-55F2-4ACF-BF62-BFA0E4307910}']
    function UpdateItem(Value: TRecordItem): IObserverItem;
  end;

  ISubjectItem = interface
  ['{98B850EF-1692-440C-8886-2C9BE1A407EE}']
    function Add(Value: IObserverItem): ISubjectItem;
    function Notify(Value: TRecordItem): ISubjectItem;
  end;

implementation

end.
