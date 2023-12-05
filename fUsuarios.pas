unit fUsuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, fBase, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls, dUsuarios, Vcl.DBCtrls, Vcl.Mask;

type
  TfrmUsuarios = class(TfrmBase)
    DBEdit1: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    chkAdministrador: TCheckBox;
    procedure Button1Click(Sender: TObject);
    procedure tabCadastroEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure chkAdministradorClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUsuarios: TfrmUsuarios;

implementation

{$R *.dfm}

procedure TfrmUsuarios.Button1Click(Sender: TObject);
begin
  inherited;
  if edtPesquisa.Text <> EmptyStr then
  begin
    with dmUsuarios.qryUsuarios do
    begin
      SQL.Text := 'SELECT * FROM Usuarios WHERE Nome LIKE :Nome';
      ParamByName('Nome').AsString := '%' + edtPesquisa.Text + '%';
    end;
  end
  else
    dmUsuarios.qryUsuarios.SQL.Text := 'SELECT * FROM Usuarios';
  dmUsuarios.qryUsuarios.Open;
end;

procedure TfrmUsuarios.chkAdministradorClick(Sender: TObject);
begin
  inherited;
  if chkAdministrador.Checked then
    dmUsuarios.qryUsuariostipo_usuario.AsInteger := 2;

end;

procedure TfrmUsuarios.FormShow(Sender: TObject);
begin
  inherited;
  self.Caption             := 'Cadastro de usuários';
  self.pnlNomeTela.Caption := 'Cadastro de usuários';
end;

procedure TfrmUsuarios.tabCadastroEnter(Sender: TObject);
begin
  inherited;
  chkAdministrador.Checked := ((dmUsuarios.qryUsuariostipo_usuario.AsInteger = 1) or (dmUsuarios.qryUsuariostipo_usuario.AsInteger = 2));
end;

end.
