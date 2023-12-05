unit fProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, fBase, Data.DB, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls, dProdutos, Vcl.Mask;

type
  TfrmProdutos = class(TfrmBase)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProdutos: TfrmProdutos;

implementation

{$R *.dfm}

procedure TfrmProdutos.Button1Click(Sender: TObject);
begin
  inherited;
  if edtPesquisa.Text <> EmptyStr then
  begin
    with dmProdutos.qryProdutos do
    begin
      SQL.Text := 'select * from produtos where nome like :nome';
      ParamByName('nome').AsString := '%' + edtPesquisa.Text + '%';
    end;
  end
  else
    dmProdutos.qryProdutos.SQL.Text := 'select * from produtos';
  dmProdutos.qryProdutos.Open;
end;

procedure TfrmProdutos.FormShow(Sender: TObject);
begin
  inherited;
  self.Caption             := 'Cadastro de Produtos';
  self.pnlNomeTela.Caption := 'Cadastro de Produtos';
end;

end.
