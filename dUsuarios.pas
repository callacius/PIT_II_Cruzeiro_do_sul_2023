unit dUsuarios;

interface

uses
  System.SysUtils, System.Classes, dMain, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TdmUsuarios = class(TDataModule)
    qryUsuarios: TFDQuery;
    qryUsuariosID_Usuario: TFDAutoIncField;
    qryUsuariosNome: TStringField;
    qryUsuariosSenha: TStringField;
    qryUsuariostipo_usuario: TSmallintField;
    procedure qryUsuariosAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmUsuarios: TdmUsuarios;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdmUsuarios.qryUsuariosAfterInsert(DataSet: TDataSet);
begin
  qryUsuariostipo_usuario.AsInteger := 3;
end;

end.
