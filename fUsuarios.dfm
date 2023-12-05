inherited frmUsuarios: TfrmUsuarios
  TextHeight = 15
  inherited Panel1: TPanel
    ExplicitTop = 71
    ExplicitHeight = 370
    inherited PagCtrlMain: TPageControl
      ActivePage = tabCadastro
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
                FieldName = 'ID_Usuario'
                Title.Caption = 'C'#243'digo'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Nome'
                Title.Caption = 'Usu'#225'rio'
                Width = 392
                Visible = True
              end>
          end
        end
      end
      inherited tabCadastro: TTabSheet
        OnEnter = tabCadastroEnter
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
          Width = 42
          Height = 15
          Caption = 'Usu'#225'rio'
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
          Width = 34
          Height = 15
          Caption = 'Senha'
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
          DataField = 'ID_Usuario'
          DataSource = dsMain
          Enabled = False
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 15
          Top = 99
          Width = 282
          Height = 23
          DataField = 'Nome'
          DataSource = dsMain
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 15
          Top = 152
          Width = 282
          Height = 23
          DataField = 'Senha'
          DataSource = dsMain
          PasswordChar = '*'
          TabOrder = 2
        end
        object chkAdministrador: TCheckBox
          Left = 15
          Top = 192
          Width = 114
          Height = 17
          Caption = 'Administrador'
          TabOrder = 3
          OnClick = chkAdministradorClick
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
    DataSet = dmUsuarios.qryUsuarios
  end
end
