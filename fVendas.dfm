inherited frmVendas: TfrmVendas
  ClientHeight = 440
  ClientWidth = 620
  ExplicitWidth = 636
  ExplicitHeight = 479
  TextHeight = 15
  inherited Panel1: TPanel
    Width = 620
    Height = 369
    ExplicitTop = 71
    ExplicitWidth = 620
    ExplicitHeight = 369
    inherited PagCtrlMain: TPageControl
      Width = 622
      Height = 368
      ActivePage = tabCadastro
      ExplicitWidth = 618
      ExplicitHeight = 367
      inherited tabBusca: TTabSheet
        ExplicitWidth = 614
        ExplicitHeight = 338
        inherited Panel2: TPanel
          Width = 614
        end
        inherited Panel3: TPanel
          Width = 614
          Height = 300
          inherited DBGrid1: TDBGrid
            Width = 612
            Height = 298
            Columns = <
              item
                Expanded = False
                FieldName = 'id_venda'
                Title.Caption = 'C'#243'digo'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'cliente'
                Title.Caption = 'Cliente'
                Width = 350
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'valor_total'
                Title.Caption = 'Valor Total'
                Visible = True
              end>
          end
        end
      end
      inherited tabCadastro: TTabSheet
        ExplicitWidth = 614
        ExplicitHeight = 338
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 614
          Height = 201
          Align = alTop
          TabOrder = 0
          ExplicitWidth = 610
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
            Width = 39
            Height = 15
            Caption = 'Cliente'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label3: TLabel
            Left = 15
            Top = 132
            Width = 62
            Height = 15
            Caption = 'Entregador'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label4: TLabel
            Left = 391
            Top = 132
            Width = 58
            Height = 15
            Caption = 'Valor Total'
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
            DataField = 'id_venda'
            DataSource = dsMain
            Enabled = False
            TabOrder = 0
          end
          object DBEdit2: TDBEdit
            Left = 15
            Top = 99
            Width = 298
            Height = 23
            DataField = 'cliente'
            DataSource = dsMain
            TabOrder = 1
          end
          object DBEdit3: TDBEdit
            Left = 15
            Top = 151
            Width = 298
            Height = 23
            DataField = 'entregador'
            DataSource = dsMain
            TabOrder = 2
          end
          object btnCliente: TButton
            Left = 319
            Top = 98
            Width = 26
            Height = 24
            Caption = '***'
            TabOrder = 3
            OnClick = btnClienteClick
          end
          object btnEntregador: TButton
            Left = 319
            Top = 151
            Width = 26
            Height = 24
            Caption = '***'
            TabOrder = 4
            OnClick = btnEntregadorClick
          end
          object DBEdit4: TDBEdit
            Left = 391
            Top = 151
            Width = 106
            Height = 23
            DataField = 'valor_total'
            DataSource = dsMain
            TabOrder = 5
          end
        end
        object Panel6: TPanel
          Left = 0
          Top = 201
          Width = 614
          Height = 36
          Align = alTop
          TabOrder = 1
          ExplicitWidth = 610
          object DBNavigator2: TDBNavigator
            Left = 1
            Top = 1
            Width = 612
            Height = 34
            DataSource = dsItens
            Align = alClient
            TabOrder = 0
            OnClick = DBNavigator2Click
            ExplicitWidth = 608
          end
        end
        object Panel7: TPanel
          Left = 0
          Top = 237
          Width = 614
          Height = 101
          Align = alClient
          TabOrder = 2
          ExplicitWidth = 610
          ExplicitHeight = 100
          object DBGrid2: TDBGrid
            Left = 1
            Top = 1
            Width = 612
            Height = 99
            Align = alClient
            DataSource = dsItens
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'id_item_venda'
                Title.Caption = 'C'#243'digo'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'fk_produto'
                Title.Caption = 'C'#243'digo do Produto'
                Width = 120
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'produto'
                Title.Caption = 'Nome do Produto'
                Width = 300
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'quantidade'
                Title.Caption = 'Qtde'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'preco_unitario'
                Title.Caption = 'Pre'#231'o Unitario'
                Width = 85
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'total_item'
                Title.Caption = 'Total Item'
                Width = 77
                Visible = True
              end>
          end
        end
      end
    end
  end
  inherited Panel4: TPanel
    Width = 620
    ExplicitTop = 41
    ExplicitWidth = 620
    inherited DBNavigator1: TDBNavigator
      Width = 622
      Hints.Strings = ()
      ExplicitLeft = 1
      ExplicitWidth = 618
    end
  end
  inherited pnlNomeTela: TPanel
    Width = 620
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 620
  end
  inherited dsMain: TDataSource
    DataSet = dmVendas.qryVendas
  end
  object dsItens: TDataSource
    DataSet = dmVendas.qryVendasItens
    Left = 597
    Top = 341
  end
end
