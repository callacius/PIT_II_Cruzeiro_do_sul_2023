unit fPesqEntregador;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dVendas, Data.DB, System.ImageList,
  Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmPesquisaEntregador = class(TForm)
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
  frmPesquisaEntregador: TfrmPesquisaEntregador;

implementation

{$R *.dfm}

procedure TfrmPesquisaEntregador.Button1Click(Sender: TObject);
begin
  if edtPesquisa.Text <> EmptyStr then
  begin
    with dmVendas.qryPesEntregador do
    begin
      SQL.Text := 'select * from pessoas where nome_completo like :Nome and entregador = true';
      ParamByName('Nome').AsString := '%' + edtPesquisa.Text + '%';
    end;
  end
  else
    dmVendas.qryPesEntregador.SQL.Text := 'select * from pessoas where pessoas.entregador = true';
  dmVendas.qryPesEntregador.Open;
end;

end.
