unit dVendas;

interface

uses
  System.SysUtils, System.Classes, dMain, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TdmVendas = class(TDataModule)
    qryVendas: TFDQuery;
    dsVendas: TDataSource;
    qryVendasItens: TFDQuery;
    qryVendasid_venda: TFDAutoIncField;
    qryVendasfk_pessoa: TIntegerField;
    qryVendasdata_hora_venda: TDateTimeField;
    qryVendasItensid_item_venda: TFDAutoIncField;
    qryVendasItensfk_venda: TIntegerField;
    qryVendasItensfk_produto: TIntegerField;
    qryVendasItensquantidade: TIntegerField;
    qryVendasfk_entregador: TIntegerField;
    qryVendascliente: TStringField;
    qryVendasentregador: TStringField;
    qryVendasItensproduto: TStringField;
    qryPesCliente: TFDQuery;
    qryPesClienteid_Pessoa: TFDAutoIncField;
    qryPesClientenome_completo: TStringField;
    qryPesClientecpf: TStringField;
    qryPesClienteendereco: TStringField;
    qryPesClientenumero: TStringField;
    qryPesClientebairro: TStringField;
    qryPesClientecidade: TStringField;
    qryPesClientecep: TStringField;
    qryPesClientetelefone: TStringField;
    qryPesClientecliente: TBooleanField;
    qryPesClienteentregador: TBooleanField;
    qryPesClientefornecedor: TBooleanField;
    qryPesEntregador: TFDQuery;
    qryPesProdutos: TFDQuery;
    qryPesProdutosid_produto: TFDAutoIncField;
    qryPesProdutosnome: TStringField;
    qryPesProdutospreco: TFloatField;
    qryVendasItenstotal_item: TCurrencyField;
    qryPesEntregadorid_Pessoa: TFDAutoIncField;
    qryPesEntregadornome_completo: TStringField;
    qryPesEntregadorcpf: TStringField;
    qryPesEntregadorendereco: TStringField;
    qryPesEntregadornumero: TStringField;
    qryPesEntregadorbairro: TStringField;
    qryPesEntregadorcidade: TStringField;
    qryPesEntregadorcep: TStringField;
    qryPesEntregadortelefone: TStringField;
    qryPesEntregadorcliente: TBooleanField;
    qryPesEntregadorentregador: TBooleanField;
    qryPesEntregadorfornecedor: TBooleanField;
    qryVendasvalor_total: TFloatField;
    qrySeqVendas: TFDQuery;
    qrySeqVendasnext_id: TLargeintField;
    qryVendasItenspreco_unitario: TFloatField;
    procedure qryVendasItensCalcFields(DataSet: TDataSet);
    procedure qryVendasBeforePost(DataSet: TDataSet);
    procedure qryVendasAfterOpen(DataSet: TDataSet);
    procedure qryVendasAfterInsert(DataSet: TDataSet);
    procedure qryVendasItensAfterInsert(DataSet: TDataSet);
  private
    function CalcularTotal: Double;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmVendas: TdmVendas;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdmVendas.qryVendasAfterInsert(DataSet: TDataSet);
begin
  qryVendasdata_hora_venda.AsDateTime := Now;
end;

procedure TdmVendas.qryVendasAfterOpen(DataSet: TDataSet);
begin
  qryVendasItens.Open;
end;

procedure TdmVendas.qryVendasBeforePost(DataSet: TDataSet);
begin
  qryVendasvalor_total.AsFloat := CalcularTotal;
end;

procedure TdmVendas.qryVendasItensAfterInsert(DataSet: TDataSet);
begin
  qrySeqVendas.Close;
  qrySeqVendas.Open;
  qryVendasItensfk_venda.AsInteger := qrySeqVendasnext_id.AsInteger;
end;

procedure TdmVendas.qryVendasItensCalcFields(DataSet: TDataSet);
begin
  DataSet.FieldByName('total_item').AsFloat := DataSet.FieldByName('Quantidade').AsFloat * DataSet.FieldByName('Preco_Unitario').AsFloat;
end;

function TdmVendas.CalcularTotal: Double;
var
  Total: Double;
begin
  Total := 0.0;
  qryVendasItens.DisableControls;  // Desabilita os controles para evitar atualizações desnecessárias da interface gráfica
  try
    qryVendasItens.First;
    while not qryVendasItens.Eof do
    begin
      Total := Total + qryVendasItens.FieldByName('total_item').AsFloat;
      qryVendasItens.Next;
    end;
  finally
    qryVendasItens.EnableControls;  // Reabilita os controles
  end;
  Result := Total;
end;


end.
