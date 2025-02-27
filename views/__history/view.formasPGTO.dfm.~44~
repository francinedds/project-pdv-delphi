inherited ViewFormasPGTO: TViewFormasPGTO
  BorderStyle = bsNone
  Caption = ''
  ClientHeight = 591
  ClientWidth = 770
  Position = poOwnerFormCenter
  OnShow = FormShow
  ExplicitWidth = 770
  ExplicitHeight = 591
  TextHeight = 15
  object pnlTopo: TPanel
    Left = 0
    Top = 0
    Width = 770
    Height = 41
    Cursor = crHandPoint
    Margins.Top = 0
    Align = alTop
    BevelOuter = bvNone
    Color = 6302000
    ParentBackground = False
    TabOrder = 0
    OnMouseDown = pnlTopoMouseDown
    object btnFecharFormasPGTO: TSpeedButton
      Left = 735
      Top = 0
      Width = 35
      Height = 41
      Cursor = crHandPoint
      Align = alRight
      Caption = #10006
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = btnFecharFormasPGTOClick
      ExplicitLeft = 712
      ExplicitHeight = 42
    end
    object pnlTitulo: TPanel
      Left = 0
      Top = 0
      Width = 185
      Height = 41
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object lblTitulo: TLabel
        Left = 16
        Top = 13
        Width = 136
        Height = 14
        Caption = 'Formas de Pagamento'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
    end
    object pnlBtnFechar: TPanel
      Left = 1080
      Top = 0
      Width = 40
      Height = 27
      BevelOuter = bvNone
      TabOrder = 1
      object btnFechar: TSpeedButton
        Left = 0
        Top = 0
        Width = 40
        Height = 27
        Cursor = crHandPoint
        Align = alClient
        Caption = #10006
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 32
        ExplicitTop = 12
        ExplicitWidth = 81
      end
    end
  end
  object pnlRodape: TPanel
    Left = 0
    Top = 560
    Width = 770
    Height = 31
    Align = alBottom
    BevelOuter = bvNone
    Color = 6302000
    ParentBackground = False
    TabOrder = 1
    object pnlEditar: TPanel
      Left = 113
      Top = 0
      Width = 113
      Height = 31
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
    end
    object pnlNovo: TPanel
      Left = 0
      Top = 0
      Width = 113
      Height = 31
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 1
    end
    object pnlSalvar: TPanel
      Left = 672
      Top = 0
      Width = 98
      Height = 31
      Align = alRight
      BevelOuter = bvNone
      Color = 1557580
      ParentBackground = False
      TabOrder = 2
      object btnSalvar: TSpeedButton
        Left = 0
        Top = 0
        Width = 98
        Height = 31
        Cursor = crHandPoint
        Align = alClient
        Caption = 'SALVAR'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btnSalvarClick
        ExplicitLeft = 48
        ExplicitTop = 3
        ExplicitWidth = 104
      end
    end
  end
  object pnlFormasPGTO: TPanel
    AlignWithMargins = True
    Left = 20
    Top = 61
    Width = 221
    Height = 351
    Margins.Left = 20
    Margins.Top = 20
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alLeft
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
    object DBGrid_formasPGTO: TDBGrid
      Left = 0
      Top = 0
      Width = 221
      Height = 351
      Cursor = crHandPoint
      Align = alClient
      BorderStyle = bsNone
      DataSource = dsFormasPGTO
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      OnDblClick = DBGrid_formasPGTODblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'FOR_DESCRICAO'
          Title.Caption = 'FORMAS DE PAGAMENTO'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
  end
  object pnlFormaPGTO: TPanel
    AlignWithMargins = True
    Left = 267
    Top = 61
    Width = 483
    Height = 351
    Margins.Left = 0
    Margins.Top = 20
    Margins.Right = 20
    Margins.Bottom = 0
    Align = alRight
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 3
    object DBGrid_formaEscolhida: TDBGrid
      Left = 0
      Top = 0
      Width = 483
      Height = 351
      Align = alClient
      BorderStyle = bsNone
      DataSource = dsFormasPGTOescolha
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'NOME_FORMAPGTO'
          Title.Caption = 'FORMA DE PAGAMENTO ESCOLHIDA'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 405
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_PGTO'
          Title.Caption = 'VALOR'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
  end
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 20
    Top = 432
    Width = 730
    Height = 108
    Margins.Left = 20
    Margins.Top = 20
    Margins.Right = 20
    Margins.Bottom = 20
    Align = alBottom
    BevelOuter = bvNone
    Color = clMedGray
    ParentBackground = False
    TabOrder = 4
    object lblValorDaVenda: TLabel
      Left = 39
      Top = 24
      Width = 112
      Height = 18
      Caption = 'Valor da Venda'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object lblValorFaturado: TLabel
      Left = 319
      Top = 24
      Width = 111
      Height = 18
      Caption = 'Valor Faturado'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object lblValorRestante: TLabel
      Left = 583
      Top = 24
      Width = 111
      Height = 18
      Caption = 'Valor Restante'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object edtValorDaVenda: TEdit
      Left = 39
      Top = 48
      Width = 112
      Height = 33
      Alignment = taRightJustify
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = clMedGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -33
      Font.Name = 'System'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = '0'
    end
    object edtValorFaturado: TEdit
      Left = 318
      Top = 48
      Width = 112
      Height = 33
      Alignment = taRightJustify
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = clMedGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -33
      Font.Name = 'System'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = '0'
    end
    object edtValorRestante: TEdit
      Left = 583
      Top = 48
      Width = 112
      Height = 33
      Alignment = taRightJustify
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = clMedGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -33
      Font.Name = 'System'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Text = '0'
    end
  end
  object pnlValorParaFaturar: TPanel
    Left = 267
    Top = 176
    Width = 310
    Height = 137
    BevelOuter = bvNone
    Color = clMedGray
    ParentBackground = False
    TabOrder = 5
    Visible = False
    object pnlTituloValorFaturar: TPanel
      Left = 0
      Top = 0
      Width = 310
      Height = 49
      Align = alTop
      BevelOuter = bvNone
      Color = 6302000
      ParentBackground = False
      TabOrder = 0
      object lblTitleValorFaturar: TLabel
        Left = 82
        Top = 16
        Width = 148
        Height = 16
        Caption = 'VALOR PARA FATURAR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object pnlBtnOk: TPanel
      Left = 240
      Top = 104
      Width = 73
      Height = 33
      BevelOuter = bvNone
      Color = 1557836
      ParentBackground = False
      TabOrder = 1
      object btnOk: TSpeedButton
        Left = 0
        Top = 0
        Width = 73
        Height = 33
        Cursor = crHandPoint
        Align = alClient
        Caption = 'OK'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btnOkClick
        ExplicitLeft = -16
        ExplicitTop = -10
        ExplicitWidth = 65
      end
    end
    object edtValorParaFaturar: TEdit
      Left = 193
      Top = 55
      Width = 112
      Height = 33
      Alignment = taRightJustify
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = clMedGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -33
      Font.Name = 'System'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Text = '0'
    end
  end
  object dsFormasPGTO: TDataSource
    DataSet = ServiceCadastro.FDQuery_formasPGTO
    Left = 156
    Top = 349
  end
  object FDMemTable_formasPGTO: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 651
    Top = 189
    object FDMemTable_formasPGTOID_FORMAPGTO: TIntegerField
      FieldName = 'ID_FORMAPGTO'
    end
    object FDMemTable_formasPGTOVALOR_PGTO: TCurrencyField
      FieldName = 'VALOR_PGTO'
    end
    object FDMemTable_formasPGTONOME_FORMAPGTO: TStringField
      FieldName = 'NOME_FORMAPGTO'
      Size = 100
    end
    object FDMemTable_formasPGTOGERAR_RECEBER: TStringField
      FieldName = 'GERAR_RECEBER'
      Size = 1
    end
    object FDMemTable_formasPGTOID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
  end
  object dsFormasPGTOescolha: TDataSource
    DataSet = FDMemTable_formasPGTO
    Left = 651
    Top = 125
  end
  object FDMemTable_itensVenda: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 654
    Top = 293
    object FDMemTable_itensVendaCOD_ITEM: TIntegerField
      FieldName = 'COD_ITEM'
    end
    object FDMemTable_itensVendaNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
    end
    object FDMemTable_itensVendaQTD_PRODUTO: TCurrencyField
      FieldName = 'QTD_PRODUTO'
      currency = False
    end
    object FDMemTable_itensVendaVLR_UNITARIO: TCurrencyField
      FieldName = 'VLR_UNITARIO'
    end
    object FDMemTable_itensVendaVLR_DESCONTO: TCurrencyField
      FieldName = 'VLR_DESCONTO'
    end
    object FDMemTable_itensVendaVLR_TOTAL: TCurrencyField
      FieldName = 'VLR_TOTAL'
    end
  end
end
