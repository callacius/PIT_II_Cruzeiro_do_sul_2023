object dmVendas: TdmVendas
  Height = 480
  Width = 640
  object qryVendas: TFDQuery
    AfterOpen = qryVendasAfterOpen
    AfterInsert = qryVendasAfterInsert
    BeforePost = qryVendasBeforePost
    Connection = dmMain.conMain
    SQL.Strings = (
      'select'
      '  Vendas.*,'
      '  cliente.nome_completo cliente,'
      '  Entregador.nome_completo entregador '
      'from '
      '  Vendas'
      
        '  inner join pessoas Cliente on (cliente.id_pessoa = Vendas.fk_p' +
        'essoa)'
      
        '  inner join pessoas Entregador on (Entregador.id_pessoa = Venda' +
        's.fk_entregador)  ')
    Left = 232
    Top = 136
    object qryVendasid_venda: TFDAutoIncField
      FieldName = 'id_venda'
      Origin = 'id_venda'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryVendasfk_pessoa: TIntegerField
      FieldName = 'fk_pessoa'
      Origin = 'fk_pessoa'
      Required = True
    end
    object qryVendasdata_hora_venda: TDateTimeField
      FieldName = 'data_hora_venda'
      Origin = 'data_hora_venda'
      Required = True
    end
    object qryVendasfk_entregador: TIntegerField
      FieldName = 'fk_entregador'
      Origin = 'fk_entregador'
    end
    object qryVendascliente: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cliente'
      Origin = 'nome_completo'
      ProviderFlags = []
      Size = 100
    end
    object qryVendasentregador: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'entregador'
      Origin = 'nome_completo'
      ProviderFlags = []
      Size = 100
    end
    object qryVendasvalor_total: TFloatField
      FieldName = 'valor_total'
      Origin = 'valor_total'
      Required = True
      currency = True
    end
  end
  object dsVendas: TDataSource
    DataSet = qryVendas
    Left = 344
    Top = 136
  end
  object qryVendasItens: TFDQuery
    AfterInsert = qryVendasItensAfterInsert
    OnCalcFields = qryVendasItensCalcFields
    MasterSource = dsVendas
    MasterFields = 'id_venda'
    DetailFields = 'fk_venda'
    Connection = dmMain.conMain
    SQL.Strings = (
      'select'
      '  itens_venda.*,'
      '  Produtos.nome produto       '
      'from '
      '  itens_venda'
      
        '  inner join produtos on (produtos.id_produto = Itens_Venda.fk_p' +
        'roduto) '
      'where '
      '  fk_venda = :id_venda;')
    Left = 232
    Top = 224
    ParamData = <
      item
        Name = 'ID_VENDA'
        DataType = ftAutoInc
        ParamType = ptInput
        Value = Null
      end>
    object qryVendasItensid_item_venda: TFDAutoIncField
      FieldName = 'id_item_venda'
      Origin = 'id_item_venda'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryVendasItensfk_venda: TIntegerField
      FieldName = 'fk_venda'
      Origin = 'fk_venda'
      Required = True
    end
    object qryVendasItensfk_produto: TIntegerField
      FieldName = 'fk_produto'
      Origin = 'fk_produto'
      Required = True
    end
    object qryVendasItensquantidade: TIntegerField
      FieldName = 'quantidade'
      Origin = 'quantidade'
      Required = True
    end
    object qryVendasItensproduto: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'produto'
      Origin = 'nome'
      ProviderFlags = []
      Size = 200
    end
    object qryVendasItenstotal_item: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'total_item'
      Calculated = True
    end
    object qryVendasItenspreco_unitario: TFloatField
      FieldName = 'preco_unitario'
      Origin = 'preco_unitario'
      Required = True
      currency = True
    end
  end
  object qryPesCliente: TFDQuery
    Connection = dmMain.conMain
    SQL.Strings = (
      'select * from pessoas where pessoas.cliente = true')
    Left = 416
    Top = 264
    object qryPesClienteid_Pessoa: TFDAutoIncField
      FieldName = 'id_Pessoa'
      Origin = 'id_Pessoa'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryPesClientenome_completo: TStringField
      FieldName = 'nome_completo'
      Origin = 'nome_completo'
      Required = True
      Size = 100
    end
    object qryPesClientecpf: TStringField
      FieldName = 'cpf'
      Origin = 'cpf'
      Required = True
      Size = 14
    end
    object qryPesClienteendereco: TStringField
      FieldName = 'endereco'
      Origin = 'endereco'
      Size = 100
    end
    object qryPesClientenumero: TStringField
      FieldName = 'numero'
      Origin = 'numero'
      Size = 100
    end
    object qryPesClientebairro: TStringField
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 100
    end
    object qryPesClientecidade: TStringField
      FieldName = 'cidade'
      Origin = 'cidade'
      Size = 100
    end
    object qryPesClientecep: TStringField
      FieldName = 'cep'
      Origin = 'cep'
      Size = 8
    end
    object qryPesClientetelefone: TStringField
      FieldName = 'telefone'
      Origin = 'telefone'
    end
    object qryPesClientecliente: TBooleanField
      FieldName = 'cliente'
      Origin = 'cliente'
      Required = True
    end
    object qryPesClienteentregador: TBooleanField
      FieldName = 'entregador'
      Origin = 'entregador'
      Required = True
    end
    object qryPesClientefornecedor: TBooleanField
      FieldName = 'fornecedor'
      Origin = 'fornecedor'
      Required = True
    end
  end
  object qryPesEntregador: TFDQuery
    Connection = dmMain.conMain
    SQL.Strings = (
      'select * from pessoas where pessoas.entregador = true')
    Left = 421
    Top = 328
    object qryPesEntregadorid_Pessoa: TFDAutoIncField
      FieldName = 'id_Pessoa'
      Origin = 'id_Pessoa'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryPesEntregadornome_completo: TStringField
      FieldName = 'nome_completo'
      Origin = 'nome_completo'
      Required = True
      Size = 100
    end
    object qryPesEntregadorcpf: TStringField
      FieldName = 'cpf'
      Origin = 'cpf'
      Required = True
      Size = 14
    end
    object qryPesEntregadorendereco: TStringField
      FieldName = 'endereco'
      Origin = 'endereco'
      Size = 100
    end
    object qryPesEntregadornumero: TStringField
      FieldName = 'numero'
      Origin = 'numero'
      Size = 100
    end
    object qryPesEntregadorbairro: TStringField
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 100
    end
    object qryPesEntregadorcidade: TStringField
      FieldName = 'cidade'
      Origin = 'cidade'
      Size = 100
    end
    object qryPesEntregadorcep: TStringField
      FieldName = 'cep'
      Origin = 'cep'
      Size = 8
    end
    object qryPesEntregadortelefone: TStringField
      FieldName = 'telefone'
      Origin = 'telefone'
    end
    object qryPesEntregadorcliente: TBooleanField
      FieldName = 'cliente'
      Origin = 'cliente'
      Required = True
    end
    object qryPesEntregadorentregador: TBooleanField
      FieldName = 'entregador'
      Origin = 'entregador'
      Required = True
    end
    object qryPesEntregadorfornecedor: TBooleanField
      FieldName = 'fornecedor'
      Origin = 'fornecedor'
      Required = True
    end
  end
  object qryPesProdutos: TFDQuery
    Connection = dmMain.conMain
    SQL.Strings = (
      'select * from produtos')
    Left = 421
    Top = 392
    object qryPesProdutosid_produto: TFDAutoIncField
      FieldName = 'id_produto'
      Origin = 'id_produto'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryPesProdutosnome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 200
    end
    object qryPesProdutospreco: TFloatField
      FieldName = 'preco'
      Origin = 'preco'
      Required = True
    end
  end
  object qrySeqVendas: TFDQuery
    Connection = dmMain.conMain
    SQL.Strings = (
      
        'SELECT seq + 1 AS next_id FROM sqlite_sequence WHERE name = '#39'Ven' +
        'das'#39';')
    Left = 464
    Top = 136
    object qrySeqVendasnext_id: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'next_id'
      Origin = 'next_id'
      ProviderFlags = []
      ReadOnly = True
    end
  end
end
