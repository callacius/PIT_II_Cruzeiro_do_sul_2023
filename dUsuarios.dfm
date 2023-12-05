object dmUsuarios: TdmUsuarios
  Height = 480
  Width = 640
  object qryUsuarios: TFDQuery
    AfterInsert = qryUsuariosAfterInsert
    Connection = dmMain.conMain
    SQL.Strings = (
      'select * from Usuarios')
    Left = 232
    Top = 136
    object qryUsuariosID_Usuario: TFDAutoIncField
      FieldName = 'ID_Usuario'
      Origin = 'ID_Usuario'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryUsuariosNome: TStringField
      FieldName = 'Nome'
      Origin = 'Nome'
      Required = True
      Size = 50
    end
    object qryUsuariosSenha: TStringField
      FieldName = 'Senha'
      Origin = 'Senha'
      Required = True
      Size = 50
    end
    object qryUsuariostipo_usuario: TSmallintField
      FieldName = 'tipo_usuario'
      Origin = 'tipo_usuario'
      Required = True
    end
  end
end
