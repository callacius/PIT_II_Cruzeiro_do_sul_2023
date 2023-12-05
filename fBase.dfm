object frmBase: TfrmBase
  Left = 0
  Top = 0
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  FormStyle = fsMDIChild
  Visible = True
  WindowState = wsMaximized
  OnShow = FormShow
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 71
    Width = 628
    Height = 371
    Align = alClient
    TabOrder = 0
    ExplicitTop = 120
    ExplicitWidth = 624
    ExplicitHeight = 321
    object PagCtrlMain: TPageControl
      Left = 1
      Top = 1
      Width = 626
      Height = 369
      ActivePage = tabBusca
      Align = alClient
      TabOrder = 0
      ExplicitWidth = 622
      ExplicitHeight = 403
      object tabBusca: TTabSheet
        Caption = 'Busca'
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 618
          Height = 73
          Align = alTop
          TabOrder = 0
          ExplicitWidth = 614
          object edtPesquisa: TEdit
            Left = 18
            Top = 28
            Width = 356
            Height = 23
            TabOrder = 0
          end
          object Button1: TButton
            Left = 382
            Top = 27
            Width = 75
            Height = 25
            Caption = 'Pesquisar'
            TabOrder = 1
          end
        end
        object Panel3: TPanel
          Left = 0
          Top = 73
          Width = 618
          Height = 266
          Align = alClient
          TabOrder = 1
          ExplicitWidth = 614
          ExplicitHeight = 300
          object DBGrid1: TDBGrid
            Left = 1
            Top = 1
            Width = 616
            Height = 264
            Align = alClient
            DataSource = dsMain
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
            OnDblClick = DBGrid1DblClick
          end
        end
      end
      object tabCadastro: TTabSheet
        Caption = 'Cadastro'
        ImageIndex = 1
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 41
    Width = 628
    Height = 30
    Align = alTop
    TabOrder = 1
    ExplicitTop = 50
    object DBNavigator1: TDBNavigator
      Left = 1
      Top = 1
      Width = 626
      Height = 28
      DataSource = dsMain
      Align = alClient
      TabOrder = 0
      OnClick = DBNavigator1Click
      ExplicitLeft = 2
      ExplicitWidth = 620
    end
  end
  object pnlNomeTela: TPanel
    Left = 0
    Top = 0
    Width = 628
    Height = 41
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    ExplicitLeft = 176
    ExplicitTop = 8
    ExplicitWidth = 185
  end
  object dsMain: TDataSource
    Left = 525
    Top = 339
  end
end
