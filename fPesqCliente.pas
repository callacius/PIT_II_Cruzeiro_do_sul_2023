unit fPesqCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dVendas, Data.DB, System.ImageList,
  Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmPesquisaCliente = class(TForm)
    Panel2: TPanel;
    edtPesquisa: TEdit;
    Button1: TButton;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Button2: TButton;
    Button3: TButton;
    ImageList1: TImageList;
    dsPesquisa: TDataSource;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesquisaCliente: TfrmPesquisaCliente;

implementation

{$R *.dfm}

procedure TfrmPesquisaCliente.Button1Click(Sender: TObject);
begin
  if edtPesquisa.Text <> EmptyStr then
  begin
    with dmVendas.qryPesCliente do
    begin
      SQL.Text := 'select * from pessoas where nome_completo like :Nome and cliente = true';
      ParamByName('Nome').AsString := '%' + edtPesquisa.Text + '%';
    end;
  end
  else
    dmVendas.qryPesCliente.SQL.Text := 'select * from pessoas where pessoas.cliente = true';
  dmVendas.qryPesCliente.Open;
end;

end.
