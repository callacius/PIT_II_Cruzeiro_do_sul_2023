object frmPesquisaCliente: TfrmPesquisaCliente
  Left = 0
  Top = 0
  Caption = 'Pesquisa de Cliente'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  TextHeight = 15
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 628
    Height = 73
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 624
    object edtPesquisa: TEdit
      Left = 18
      Top = 28
      Width = 356
      Height = 23
      TabOrder = 0
    end
    object Button1: TButton
      Left = 380
      Top = 25
      Width = 75
      Height = 25
      Caption = 'Pesquisar'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 73
    Width = 628
    Height = 327
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 624
    ExplicitHeight = 326
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 626
      Height = 325
      Align = alClient
      DataSource = dsPesquisa
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
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
  object Panel1: TPanel
    Left = 0
    Top = 400
    Width = 628
    Height = 42
    Align = alBottom
    TabOrder = 2
    ExplicitTop = 399
    ExplicitWidth = 624
    DesignSize = (
      628
      42)
    object Button2: TButton
      Left = 432
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Selecionar'
      ImageIndex = 1
      Images = ImageList1
      ModalResult = 1
      TabOrder = 0
      ExplicitLeft = 428
    end
    object Button3: TButton
      Left = 515
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Cancelar'
      ImageIndex = 0
      Images = ImageList1
      ModalResult = 2
      TabOrder = 1
      ExplicitLeft = 511
    end
  end
  object ImageList1: TImageList
    Left = 472
    Top = 241
    Bitmap = {
      494C010102000800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000006071A1B3643F4FF3643F4FF3643F4FF3643F4FF303AD7E20000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000813081B50AF4CFF50AF4CFF50AF4CFF50AF4CFF479A42E20000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
      F4FF1F278E940000000000000000000000000000000000000000000000000000
      000050AF4CFF50AF4CFF50AF4CFF50AF4CFF50AF4CFF50AF4CFF50AF4CFF50AF
      4CFF2E662C940000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003643
      F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
      F4FF3643F4FF1F278E94000000000000000000000000000000000000000050AF
      4CFF50AF4CFF50AF4CFF50AF4CFF50AF4CFF50AF4CFF50AF4CFF50AF4CFF50AF
      4CFF50AF4CFF2E662C9400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000202890973643
      F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF000000000000000000000000000000002F682C9750AF
      4CFF50AF4CFF50AF4CFF50AF4CFF64C976FF50AF4CFF50AF4CFF50AF4CFF50AF
      4CFF50AF4CFF50AF4CFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003643F4FF3643
      F4FF3643F4FF3844F4FFFFFFFFFF3643F4FF3643F4FF7881F8FFFFFFFFFF3643
      F4FF3643F4FF3643F4FF303AD6E100000000000000000000000050AF4CFF50AF
      4CFF50AF4CFF50AF4CFF8EFDC8FF90FFCCFF65C875FF50AF4CFF50AF4CFF50AF
      4CFF50AF4CFF50AF4CFF479A42E1000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003643F4FF3643
      F4FF3643F4FF3643F4FFFCFCFFFFFFFFFFFF7881F8FFFFFFFFFF7F87F8FF3643
      F4FF3643F4FF3643F4FF3643F4FF00000000000000000000000050AF4CFF50AF
      4CFF50AF4CFF8EFDC8FF90FFCCFF64C976FF90FFCCFF65C875FF50AF4CFF50AF
      4CFF50AF4CFF50AF4CFF50AF4CFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FFFDFDFFFFFFFFFFFF7F87F8FF3643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FF00000000000000000000000050AF4CFF50AF
      4CFF50AF4CFF90FFCCFF50AF4CFF50AF4CFF64C976FF90FFCCFF65C875FF50AF
      4CFF50AF4CFF50AF4CFF50AF4CFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003643F4FF3643
      F4FF3643F4FF3643F4FF7881F8FFFFFFFFFFFDFDFFFFFFFFFFFF3643F4FF3643
      F4FF3643F4FF3643F4FF3643F4FF00000000000000000000000050AF4CFF50AF
      4CFF50AF4CFF50AF4CFF50AF4CFF50AF4CFF50AF4CFF64C976FF90FFCCFF65C8
      75FF50AF4CFF50AF4CFF50AF4CFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003643F4FF3643
      F4FF3643F4FF636DF6FFFFFFFFFF7B83F8FF3643F4FFFCFCFFFFFFFFFFFF3643
      F4FF3643F4FF3643F4FF3643F4FF00000000000000000000000050AF4CFF50AF
      4CFF50AF4CFF50AF4CFF50AF4CFF50AF4CFF50AF4CFF50AF4CFF62C772FF90FF
      CCFF65C875FF50AF4CFF50AF4CFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003540EDF93643
      F4FF3643F4FF3643F4FF636DF6FF3643F4FF3643F4FF3643F4FF3844F4FF3643
      F4FF3643F4FF3643F4FF06081D1E0000000000000000000000004DAB49F950AF
      4CFF50AF4CFF50AF4CFF50AF4CFF50AF4CFF50AF4CFF50AF4CFF50AF4CFF62C7
      72FF50AF4CFF50AF4CFF0915091E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003643
      F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
      F4FF3643F4FF3643F4FF000000000000000000000000000000000000000050AF
      4CFF50AF4CFF50AF4CFF50AF4CFF50AF4CFF50AF4CFF50AF4CFF50AF4CFF50AF
      4CFF50AF4CFF50AF4CFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000203
      0A0A3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
      F4FF3643F4FF0000000000000000000000000000000000000000000000000307
      030A50AF4CFF50AF4CFF50AF4CFF50AF4CFF50AF4CFF50AF4CFF50AF4CFF50AF
      4CFF50AF4CFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003540EDF93643F4FF3643F4FF3643F4FF3643F4FF3643F4FF2028
      9097000000000000000000000000000000000000000000000000000000000000
      0000000000004DAB49F950AF4CFF50AF4CFF50AF4CFF50AF4CFF50AF4CFF2F68
      2C97000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  object dsPesquisa: TDataSource
    DataSet = dmVendas.qryPesCliente
    Left = 480
    Top = 321
  end
end
