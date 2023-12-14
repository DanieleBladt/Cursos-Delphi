unit uGifLoading;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.GIFImg, Vcl.ExtCtrls,
  System.Threading;

type
  TFGifLoading = class(TForm)
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FGifLoading: TFGifLoading;

implementation

{$R *.dfm}

procedure TFGifLoading.FormCreate(Sender: TObject);
begin
  TGIFImage(Image1.Picture.Graphic).Animate := True;
end;

end.
