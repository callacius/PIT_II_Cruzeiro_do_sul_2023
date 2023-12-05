inherited frmPessoas: TfrmPessoas
  ClientHeight = 443
  TextHeight = 15
  inherited Panel1: TPanel
    Height = 372
    ExplicitTop = 71
    ExplicitWidth = 628
    ExplicitHeight = 371
    inherited PagCtrlMain: TPageControl
      ExplicitHeight = 368
      inherited tabBusca: TTabSheet
        inherited Panel2: TPanel
          inherited Button1: TButton
            OnClick = Button1Click
          end
        end
        inherited Panel3: TPanel
          ExplicitHeight = 265
          inherited DBGrid1: TDBGrid
            Columns = <
              item
                Expanded = False
                FieldName = 'id_Pessoa'
                Title.Caption = 'C'#243'digo'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'nome_completo'
                Title.Caption = 'Nome'
                Width = 350
                Visible = True
              end>
          end
        end
      end
      inherited tabCadastro: TTabSheet
        object Label1: TLabel
          Left = 15
          Top = 27
          Width = 38
          Height = 15
          Caption = 'C'#243'digo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 15
          Top = 79
          Width = 91
          Height = 15
          Caption = 'Nome Completo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 335
          Top = 79
          Width = 20
          Height = 15
          Caption = 'CPF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 15
          Top = 132
          Width = 52
          Height = 15
          Caption = 'Endere'#231'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 335
          Top = 132
          Width = 46
          Height = 15
          Caption = 'N'#250'mero'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 15
          Top = 187
          Width = 34
          Height = 15
          Caption = 'Bairro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 335
          Top = 187
          Width = 37
          Height = 15
          Caption = 'Cidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 15
          Top = 238
          Width = 20
          Height = 15
          Caption = 'CEP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel
          Left = 335
          Top = 238
          Width = 49
          Height = 15
          Caption = 'Telefone'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBEdit1: TDBEdit
          Left = 15
          Top = 45
          Width = 50
          Height = 23
          DataField = 'id_Pessoa'
          DataSource = dsMain
          Enabled = False
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 15
          Top = 99
          Width = 298
          Height = 23
          DataField = 'nome_completo'
          DataSource = dsMain
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 335
          Top = 99
          Width = 130
          Height = 23
          DataField = 'cpf'
          DataSource = dsMain
          TabOrder = 2
        end
        object DBEdit4: TDBEdit
          Left = 15
          Top = 153
          Width = 298
          Height = 23
          DataField = 'endereco'
          DataSource = dsMain
          TabOrder = 3
        end
        object DBEdit5: TDBEdit
          Left = 335
          Top = 152
          Width = 130
          Height = 23
          DataField = 'numero'
          DataSource = dsMain
          TabOrder = 4
        end
        object DBEdit6: TDBEdit
          Left = 15
          Top = 207
          Width = 220
          Height = 23
          DataField = 'bairro'
          DataSource = dsMain
          TabOrder = 5
        end
        object DBEdit7: TDBEdit
          Left = 335
          Top = 207
          Width = 220
          Height = 23
          DataField = 'cidade'
          DataSource = dsMain
          TabOrder = 6
        end
        object DBEdit8: TDBEdit
          Left = 15
          Top = 258
          Width = 130
          Height = 23
          DataField = 'cep'
          DataSource = dsMain
          TabOrder = 7
        end
        object DBCheckBox1: TDBCheckBox
          Left = 16
          Top = 302
          Width = 97
          Height = 17
          Caption = 'Cliente'
          DataField = 'cliente'
          DataSource = dsMain
          TabOrder = 9
        end
        object DBCheckBox2: TDBCheckBox
          Left = 178
          Top = 302
          Width = 97
          Height = 17
          Caption = 'Entregador'
          DataField = 'entregador'
          DataSource = dsMain
          TabOrder = 10
        end
        object DBCheckBox3: TDBCheckBox
          Left = 335
          Top = 302
          Width = 97
          Height = 17
          Caption = 'Fornecedor'
          DataField = 'fornecedor'
          DataSource = dsMain
          TabOrder = 11
        end
        object DBEdit9: TDBEdit
          Left = 335
          Top = 258
          Width = 220
          Height = 23
          DataField = 'telefone'
          DataSource = dsMain
          TabOrder = 8
        end
      end
    end
  end
  inherited Panel4: TPanel
    ExplicitTop = 41
    ExplicitWidth = 624
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
      ExplicitLeft = 1
      ExplicitWidth = 622
    end
  end
  inherited pnlNomeTela: TPanel
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 624
  end
  inherited dsMain: TDataSource
    DataSet = dmPessoas.qryPessoas
  end
end
