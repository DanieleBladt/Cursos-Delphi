unit uAnonymousThread;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  System.Threading, SyncObjs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.UI.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.VCLUI.Wait, FireDAC.Phys.IB,
  FireDAC.Phys.IBDef, Vcl.Grids, Vcl.DBGrids, FireDAC.Phys.IBBase,
  FireDAC.Comp.UI, FireDAC.Phys.FB, FireDAC.Phys.FBDef;

type
  TFAnonymousThread = class(TForm)
    Panel1: TPanel;
    Button13: TButton;
    Memo2: TMemo;
    FDQuery1: TFDQuery;
    Button1: TButton;
    FDConnection1: TFDConnection;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    Splitter1: TSplitter;
    Button2: TButton;
    Button3: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button13Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    procedure BuscarDados(aSQL: String);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAnonymousThread: TFAnonymousThread;

implementation

{$R *.dfm}

procedure TFAnonymousThread.Button13Click(Sender: TObject);
begin
  TThread.CreateAnonymousThread(
  procedure
  begin
    TThread.Sleep(5000);
    //Syncronize vai sempre executar.
    //Queue respeita a ordem (executa quando tiver tempo).
    TThread.Synchronize(TThread.CurrentThread,
    procedure
    begin
      Memo2.Lines.Add('Teste AnonymousThread');
    end);
  end).Start;
end;

procedure TFAnonymousThread.Button1Click(Sender: TObject);
begin
  TThread.CreateAnonymousThread(
  procedure
  begin
    TThread.Sleep(3000);
    TThread.Synchronize(TThread.CurrentThread,
    procedure
    begin
      BuscarDados('SELECT * FROM CIDADES');
    end);
  end).Start;

  TThread.CreateAnonymousThread(
  procedure
  begin
    TThread.Sleep(5000);
    TThread.Synchronize(TThread.CurrentThread,
    procedure
    begin
      BuscarDados('SELECT * FROM ESTADOS');
    end);
  end).Start;
end;

procedure TFAnonymousThread.Button2Click(Sender: TObject);
var
  FSession: TCriticalSection;
begin
  FSession := TCriticalSection.Create;
  TThread.CreateAnonymousThread(
  procedure
  begin
    FSession.Enter;
    try
      TThread.Sleep(1000);
      TThread.Synchronize(TThread.CurrentThread,
      procedure
      begin
        BuscarDados('SELECT * FROM CIDADES');
      end);
    finally
      FSession.Leave;
    end;
  end).Start;

  TThread.CreateAnonymousThread(
  procedure
  begin
    FSession.Enter;
    try
      TThread.Sleep(1000);
      TThread.Synchronize(TThread.CurrentThread,
      procedure
      begin
        BuscarDados('SELECT * FROM ESTADOS');
      end);
    finally
      FSession.Leave;
    end;
  end).Start;
end;

procedure TFAnonymousThread.Button3Click(Sender: TObject);
begin
  TThread.CreateAnonymousThread(
  procedure
  begin
    System.TMonitor.Enter(FDQuery1);
    try
      TThread.Sleep(1000);
      TThread.Synchronize(TThread.CurrentThread,
      procedure
      begin
        BuscarDados('SELECT * FROM CIDADES');
      end);
    finally
      System.TMonitor.Exit(FDQuery1);
    end;
  end).Start;

  TThread.CreateAnonymousThread(
  procedure
  begin
    System.TMonitor.Enter(FDQuery1);
    try
      TThread.Sleep(1000);
      TThread.Synchronize(TThread.CurrentThread,
      procedure
      begin
        BuscarDados('SELECT * FROM ESTADOS');
      end);
    finally
      System.TMonitor.Exit(FDQuery1);
    end;
  end).Start;
end;

procedure TFAnonymousThread.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FAnonymousThread := nil;
end;

procedure TFAnonymousThread.BuscarDados(aSQL: String);
begin
  FDQuery1.Open(aSQL);
  Memo2.Lines.Add(aSQL);
end;

end.
