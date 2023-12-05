unit fVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, fBase, Data.DB, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls, dVendas, Vcl.Mask,
  fPesqCliente, fPesqProdutos, fPesqEntregador;

type
  TfrmVendas = class(TfrmBase)
    Panel5: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    btnCliente: TButton;
    btnEntregador: TButton;
    Panel6: TPanel;
    DBNavigator2: TDBNavigator;
    dsItens: TDataSource;
    Panel7: TPanel;
    DBGrid2: TDBGrid;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    procedure FormShow(Sender: TObject);
    procedure DBNavigator2Click(Sender: TObject; Button: TNavigateBtn);
    procedure btnClienteClick(Sender: TObject);
    procedure btnEntregadorClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVendas: TfrmVendas;

implementation

{$R *.dfm}

procedure TfrmVendas.btnClienteClick(Sender: TObject);
begin
  inherited;
  var frm: TfrmPesquisaCliente := TfrmPesquisaCliente.Create(Application);
  frm.ShowModal;
  if frm.ModalResult = mrOk then
  begin
    if dmVendas.qryPesClienteid_Pessoa.AsInteger > 0 then
    begin
      dmVendas.qryVendasfk_pessoa.AsInteger := dmVendas.qryPesClienteid_Pessoa.AsInteger;
      dmVendas.qryVendascliente.AsString    := dmVendas.qryPesClientenome_completo.AsString;
    end;
  end;
end;

procedure TfrmVendas.btnEntregadorClick(Sender: TObject);
begin
  inherited;
  var frm: TfrmPesquisaEntregador := TfrmPesquisaEntregador.Create(Application);
  frm.ShowModal;
  if frm.ModalResult = mrOk then
  begin
    if dmVendas.qryPesEntregadorid_Pessoa.AsInteger > 0 then
    begin
      dmVendas.qryVendasfk_entregador.AsInteger := dmVendas.qryPesEntregadorid_Pessoa.AsInteger;
      dmVendas.qryVendasentregador.AsString     := dmVendas.qryPesEntregadornome_completo.AsString;
    end;
  end;
end;

procedure TfrmVendas.DBNavigator2Click(Sender: TObject; Button: TNavigateBtn);
begin
  inherited;
  if Button = nbInsert then
  begin
    var form: TfrmPesquisaProdutos := TfrmPesquisaProdutos.Create(Application);
    form.ShowModal;
    if form.ModalResult = mrOk then
    begin
      if dmVendas.qryPesProdutosid_produto.AsInteger > 0 then
      begin
        dmVendas.qryVendasItensfk_produto.AsInteger   := dmVendas.qryPesProdutosid_produto.AsInteger;
        dmVendas.qryVendasItensproduto.AsString       := dmVendas.qryPesProdutosnome.AsString;
        dmVendas.qryVendasItensquantidade.AsInteger   := 1;
        dmVendas.qryVendasItenspreco_unitario.AsFloat := dmVendas.qryPesProdutospreco.AsFloat;
      end;
    end;
  end;
end;

procedure TfrmVendas.FormShow(Sender: TObject);
begin
  inherited;
  Self.Caption             := 'Cadastro de Vendas';
  self.pnlNomeTela.Caption := 'Cadastro de Vendas';
end;

end.
