object dmProdutos: TdmProdutos
  Height = 480
  Width = 640
  object qryProdutos: TFDQuery
    Connection = dmMain.conMain
    SQL.Strings = (
      'select * from produtos')
    Left = 232
    Top = 136
    object qryProdutosid_produto: TFDAutoIncField
      FieldName = 'id_produto'
      Origin = 'id_produto'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryProdutosnome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 200
    end
    object qryProdutospreco: TFloatField
      FieldName = 'preco'
      Origin = 'preco'
      Required = True
      currency = True
    end
  end
end
