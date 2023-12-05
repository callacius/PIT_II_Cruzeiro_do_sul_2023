unit dLogin;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, dMain;

type
  TdmLogin = class(TDataModule)
    qryUsuarios: TFDQuery;
    qryUsuariosID_Usuario: TFDAutoIncField;
    qryUsuariosNome: TStringField;
    qryUsuariosSenha: TStringField;
    qryUsuariostipo_usuario: TSmallintField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmLogin: TdmLogin;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdmLogin.DataModuleCreate(Sender: TObject);
begin
  qryUsuarios.Open;
end;

end.
