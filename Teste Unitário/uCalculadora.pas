unit uCalculadora;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFCalculadora = class(TForm)
    Panel1: TPanel;
    edtNumero1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    edtNumero2: TEdit;
    btnSomar: TButton;
    btnSubtrair: TButton;
    btnDividir: TButton;
    btnMultiplicar: TButton;
    edtResultado: TEdit;
    Label3: TLabel;
    procedure btnSomarClick(Sender: TObject);
    procedure btnSubtrairClick(Sender: TObject);
    procedure btnDividirClick(Sender: TObject);
    procedure btnMultiplicarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
  public
    function Somar(const ANumero1, ANumero2: Integer): Integer;
    function Subtrair(const ANumero1, ANumero2: Integer): Integer;
    function Multiplicar(const ANumero1, ANumero2: Integer): Integer;
    function Dividir(const ANumero1, ANumero2: Integer): Integer;
  end;

var
  FCalculadora: TFCalculadora;

implementation

{$R *.dfm}

procedure TFCalculadora.btnDividirClick(Sender: TObject);
begin
  edtResultado.Text := Self.Dividir(StrToInt(edtNumero1.Text), StrToInt(edtNumero2.Text)).ToString;
end;

procedure TFCalculadora.btnMultiplicarClick(Sender: TObject);
begin
  edtResultado.Text := Self.Multiplicar(StrToInt(edtNumero1.Text), StrToInt(edtNumero2.Text)).ToString;
end;

procedure TFCalculadora.btnSomarClick(Sender: TObject);
begin
  edtResultado.Text := Self.Somar(StrToInt(edtNumero1.Text), StrToInt(edtNumero2.Text)).ToString;
end;

procedure TFCalculadora.btnSubtrairClick(Sender: TObject);
begin
  edtResultado.Text := Self.Subtrair(StrToInt(edtNumero1.Text), StrToInt(edtNumero2.Text)).ToString;
end;

function TFCalculadora.Dividir(const ANumero1, ANumero2: Integer): Integer;
begin
  Result := ANumero1 div ANumero2;
end;

function TFCalculadora.Multiplicar(const ANumero1, ANumero2: Integer): Integer;
begin
  Result := ANumero1 * ANumero2;
end;

function TFCalculadora.Somar(const ANumero1, ANumero2: Integer): Integer;
begin
  Result := ANumero1 + ANumero2 + 5;
end;

function TFCalculadora.Subtrair(const ANumero1, ANumero2: Integer): Integer;
begin
  Result := ANumero1 - ANumero2;
end;

procedure TFCalculadora.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FCalculadora := nil;
end;

end.
