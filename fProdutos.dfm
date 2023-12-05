inherited frmProdutos: TfrmProdutos
  Caption = 'Cadastro de Produtos'
  ClientHeight = 443
  TextHeight = 15
  inherited Panel1: TPanel
    Height = 372
    ExplicitTop = 71
    ExplicitWidth = 628
    ExplicitHeight = 371
    inherited PagCtrlMain: TPageControl
      ActivePage = tabCadastro
      ExplicitHeight = 368
      inherited tabBusca: TTabSheet
        inherited Panel2: TPanel
          Width = 614
          ExplicitWidth = 610
          inherited Button1: TButton
            OnClick = Button1Click
          end
        end
        inherited Panel3: TPanel
          Width = 614
          Height = 300
          ExplicitWidth = 610
          ExplicitHeight = 299
          inherited DBGrid1: TDBGrid
            Width = 612
            Height = 298
            Columns = <
              item
                Expanded = False
                FieldName = 'id_produto'
                Title.Caption = 'C'#243'digo'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'nome'
                Title.Caption = 'Nome'
                Width = 350
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'preco'
                Title.Caption = 'Pre'#231'o'
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
          Width = 34
          Height = 15
          Caption = 'Nome'
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
          Width = 32
          Height = 15
          Caption = 'Pre'#231'o'
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
          DataField = 'id_produto'
          DataSource = dsMain
          Enabled = False
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 15
          Top = 99
          Width = 298
          Height = 23
          DataField = 'nome'
          DataSource = dsMain
          TabOrder = 1
        end
        object DBEdit4: TDBEdit
          Left = 15
          Top = 153
          Width = 298
          Height = 23
          DataField = 'preco'
          DataSource = dsMain
          TabOrder = 2
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
    DataSet = dmProdutos.qryProdutos
  end
end
