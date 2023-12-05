unit fPessoas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, fBase, Data.DB, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls, dPessoas, Vcl.Mask;

type
  TfrmPessoas = class(TfrmBase)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    procedure Button1Click(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPessoas: TfrmPessoas;

implementation

{$R *.dfm}

procedure TfrmPessoas.Button1Click(Sender: TObject);
begin
  inherited;
  if edtPesquisa.Text <> EmptyStr then
  begin
    with dmPessoas.qryPessoas do
    begin
      SQL.Text := 'SELECT * FROM pessoas WHERE nome_completo LIKE :Nome';
      ParamByName('Nome').AsString := '%' + edtPesquisa.Text + '%';
    end;
  end
  else
    dmPessoas.qryPessoas.SQL.Text := 'SELECT * FROM pessoas';
  dmPessoas.qryPessoas.Open;
end;

procedure TfrmPessoas.DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
begin
  inherited;
  if (Button = nbInsert) then
  begin
    dmPessoas.qryPessoascliente.AsBoolean    := False;
    dmPessoas.qryPessoasentregador.AsBoolean := False;
    dmPessoas.qryPessoasfornecedor.AsBoolean := False;
  end;
end;

procedure TfrmPessoas.FormShow(Sender: TObject);
begin
  inherited;
  Self.Caption             := 'Cadastro de Pessoas';
  self.pnlNomeTela.Caption := 'Cadastro de Pessoas';
end;

end.
