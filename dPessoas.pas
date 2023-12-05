unit dPessoas;

interface

uses
  System.SysUtils, System.Classes, dMain, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TdmPessoas = class(TDataModule)
    qryPessoas: TFDQuery;
    qryPessoasid_Pessoa: TFDAutoIncField;
    qryPessoasnome_completo: TStringField;
    qryPessoascpf: TStringField;
    qryPessoasendereco: TStringField;
    qryPessoasnumero: TStringField;
    qryPessoasbairro: TStringField;
    qryPessoascidade: TStringField;
    qryPessoascep: TStringField;
    qryPessoastelefone: TStringField;
    qryPessoascliente: TBooleanField;
    qryPessoasentregador: TBooleanField;
    qryPessoasfornecedor: TBooleanField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmPessoas: TdmPessoas;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
