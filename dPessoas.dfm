object dmPessoas: TdmPessoas
  Height = 480
  Width = 640
  object qryPessoas: TFDQuery
    Connection = dmMain.conMain
    SQL.Strings = (
      'select * from pessoas')
    Left = 232
    Top = 136
    object qryPessoasid_Pessoa: TFDAutoIncField
      FieldName = 'id_Pessoa'
      Origin = 'id_Pessoa'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryPessoasnome_completo: TStringField
      FieldName = 'nome_completo'
      Origin = 'nome_completo'
      Required = True
      Size = 100
    end
    object qryPessoascpf: TStringField
      FieldName = 'cpf'
      Origin = 'cpf'
      Required = True
      EditMask = '999.999.999-99'
      Size = 14
    end
    object qryPessoasendereco: TStringField
      FieldName = 'endereco'
      Origin = 'endereco'
      Size = 100
    end
    object qryPessoasnumero: TStringField
      FieldName = 'numero'
      Origin = 'numero'
      Size = 100
    end
    object qryPessoasbairro: TStringField
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 100
    end
    object qryPessoascidade: TStringField
      FieldName = 'cidade'
      Origin = 'cidade'
      Size = 100
    end
    object qryPessoascep: TStringField
      FieldName = 'cep'
      Origin = 'cep'
      EditMask = '99999-999;1;_'
      Size = 8
    end
    object qryPessoastelefone: TStringField
      FieldName = 'telefone'
      Origin = 'telefone'
      EditMask = '!(99) 99999-9999;1;_'
    end
    object qryPessoascliente: TBooleanField
      FieldName = 'cliente'
      Origin = 'cliente'
      Required = True
    end
    object qryPessoasentregador: TBooleanField
      FieldName = 'entregador'
      Origin = 'entregador'
      Required = True
    end
    object qryPessoasfornecedor: TBooleanField
      FieldName = 'fornecedor'
      Origin = 'fornecedor'
      Required = True
    end
  end
end
