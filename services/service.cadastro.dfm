﻿inherited ServiceCadastro: TServiceCadastro
  OnCreate = DataModuleCreate
  Height = 841
  Width = 561
  inherited FDConnection: TFDConnection
    Left = 72
    Top = 40
  end
  inherited WaitCursor: TFDGUIxWaitCursor
    Left = 72
    Top = 120
  end
  inherited DriverLink: TFDPhysFBDriverLink
    Left = 72
    Top = 200
  end
  object FDQuery_abrecaixa: TFDQuery
    Active = True
    Connection = FDConnection
    SQL.Strings = (
      'select * from abrecaixa where abr_status = '#39'ABERTO'#39)
    Left = 72
    Top = 448
    object FDQuery_abrecaixaABR_CODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ABR_CODIGO'
      Origin = 'ABR_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQuery_abrecaixaABR_DATAABERTURA: TDateField
      FieldName = 'ABR_DATAABERTURA'
      Origin = 'ABR_DATAABERTURA'
    end
    object FDQuery_abrecaixaABR_HRAABERTURA: TTimeField
      FieldName = 'ABR_HRAABERTURA'
      Origin = 'ABR_HRAABERTURA'
    end
    object FDQuery_abrecaixaABR_DATAFECHAMENTO: TDateField
      FieldName = 'ABR_DATAFECHAMENTO'
      Origin = 'ABR_DATAFECHAMENTO'
    end
    object FDQuery_abrecaixaABR_HRAFECHAMENTO: TTimeField
      FieldName = 'ABR_HRAFECHAMENTO'
      Origin = 'ABR_HRAFECHAMENTO'
    end
    object FDQuery_abrecaixaABR_VLRINICIAL: TFMTBCDField
      FieldName = 'ABR_VLRINICIAL'
      Origin = 'ABR_VLRINICIAL'
      Precision = 18
      Size = 2
    end
    object FDQuery_abrecaixaABR_VLRFINAL: TFMTBCDField
      FieldName = 'ABR_VLRFINAL'
      Origin = 'ABR_VLRFINAL'
      Precision = 18
      Size = 2
    end
    object FDQuery_abrecaixaABR_CODIGOUSUARIO: TSmallintField
      FieldName = 'ABR_CODIGOUSUARIO'
      Origin = 'ABR_CODIGOUSUARIO'
    end
    object FDQuery_abrecaixaABR_STATUS: TStringField
      FieldName = 'ABR_STATUS'
      Origin = 'ABR_STATUS'
    end
    object FDQuery_abrecaixaABR_OBSERVACAO: TStringField
      FieldName = 'ABR_OBSERVACAO'
      Origin = 'ABR_OBSERVACAO'
      Size = 100
    end
  end
  object FDQuery_produtos: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select'
      ' produtos1.pr1_codigo,'
      ' produtos1.pr1_nomecompleto,'
      ' produtos1.pr1_codigobarra,'
      ' produtos2.pr2_vendavista,'
      ' produtos2.pr2_vendaprazo'
      'from produtos1'
      
        'join produtos2 on (produtos2.pr2_codigopr1 = produtos1.pr1_codig' +
        'o)'
      'where produtos1.pr1_codigobarra = :codBarra')
    Left = 72
    Top = 536
    ParamData = <
      item
        Name = 'CODBARRA'
        DataType = ftString
        ParamType = ptInput
        Size = 50
        Value = Null
      end>
    object FDQuery_produtosPR1_CODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'PR1_CODIGO'
      Origin = 'PR1_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQuery_produtosPR1_NOMECOMPLETO: TStringField
      FieldName = 'PR1_NOMECOMPLETO'
      Origin = 'PR1_NOMECOMPLETO'
      Size = 100
    end
    object FDQuery_produtosPR1_CODIGOBARRA: TStringField
      FieldName = 'PR1_CODIGOBARRA'
      Origin = 'PR1_CODIGOBARRA'
      Size = 50
    end
    object FDQuery_produtosPR2_VENDAVISTA: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'PR2_VENDAVISTA'
      Origin = 'PR2_VENDAVISTA'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '###,##0.00'
    end
    object FDQuery_produtosPR2_VENDAPRAZO: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'PR2_VENDAPRAZO'
      Origin = 'PR2_VENDAPRAZO'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object FDQuery_venda: TFDQuery
    Active = True
    Connection = FDConnection
    SQL.Strings = (
      'select * from movestoque where mov_codigo = :codigo')
    Left = 72
    Top = 664
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FDQuery_vendaMOV_CODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'MOV_CODIGO'
      Origin = 'MOV_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQuery_vendaMOV_TIPOESTOQUE: TIntegerField
      FieldName = 'MOV_TIPOESTOQUE'
      Origin = 'MOV_TIPOESTOQUE'
    end
    object FDQuery_vendaMOV_DATA: TDateField
      FieldName = 'MOV_DATA'
      Origin = 'MOV_DATA'
    end
    object FDQuery_vendaMOV_HORA: TTimeField
      FieldName = 'MOV_HORA'
      Origin = 'MOV_HORA'
    end
    object FDQuery_vendaMOV_VLRDESCONTO: TFMTBCDField
      FieldName = 'MOV_VLRDESCONTO'
      Origin = 'MOV_VLRDESCONTO'
      currency = True
      Precision = 18
      Size = 2
    end
    object FDQuery_vendaMOV_VLRTOTAL: TFMTBCDField
      FieldName = 'MOV_VLRTOTAL'
      Origin = 'MOV_VLRTOTAL'
      currency = True
      Precision = 18
      Size = 2
    end
    object FDQuery_vendaMOV_VENDEDOR: TIntegerField
      FieldName = 'MOV_VENDEDOR'
      Origin = 'MOV_VENDEDOR'
    end
    object FDQuery_vendaMOV_CLIENTE: TIntegerField
      FieldName = 'MOV_CLIENTE'
      Origin = 'MOV_CLIENTE'
    end
  end
  object FDQuery_venda_item: TFDQuery
    Active = True
    Connection = FDConnection
    SQL.Strings = (
      'select * from movestoque_item where mvi_codigo = :codigo')
    Left = 72
    Top = 744
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FDQuery_venda_itemMVI_CODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'MVI_CODIGO'
      Origin = 'MVI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQuery_venda_itemMVI_CODIGOMOVESTOQUE: TIntegerField
      FieldName = 'MVI_CODIGOMOVESTOQUE'
      Origin = 'MVI_CODIGOMOVESTOQUE'
    end
    object FDQuery_venda_itemMVI_CODITEM: TIntegerField
      FieldName = 'MVI_CODITEM'
      Origin = 'MVI_CODITEM'
    end
    object FDQuery_venda_itemMVI_QUANTIDADE: TFMTBCDField
      FieldName = 'MVI_QUANTIDADE'
      Origin = 'MVI_QUANTIDADE'
      Precision = 18
      Size = 2
    end
    object FDQuery_venda_itemMVI_VLRUNITARIO: TFMTBCDField
      FieldName = 'MVI_VLRUNITARIO'
      Origin = 'MVI_VLRUNITARIO'
      currency = True
      Precision = 18
      Size = 2
    end
    object FDQuery_venda_itemMVI_VLRTOTAL: TFMTBCDField
      FieldName = 'MVI_VLRTOTAL'
      Origin = 'MVI_VLRTOTAL'
      currency = True
      Precision = 18
      Size = 2
    end
    object FDQuery_venda_itemMVI_VLRDESCONTO: TFMTBCDField
      FieldName = 'MVI_VLRDESCONTO'
      Origin = 'MVI_VLRDESCONTO'
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object FDQuery_formasPGTO: TFDQuery
    Active = True
    Connection = FDConnection
    SQL.Strings = (
      'select * from formaspagamento order by for_codigo')
    Left = 224
    Top = 448
    object FDQuery_formasPGTOFOR_CODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'FOR_CODIGO'
      Origin = 'FOR_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQuery_formasPGTOFOR_DESCRICAO: TStringField
      FieldName = 'FOR_DESCRICAO'
      Origin = 'FOR_DESCRICAO'
      Size = 100
    end
    object FDQuery_formasPGTOFOR_GERARECEBER: TStringField
      FieldName = 'FOR_GERARECEBER'
      Origin = 'FOR_GERARECEBER'
      Size = 10
    end
  end
  object FDQuery_CadCaixa: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select * from caixa where cai_codigo = :codigo')
    Left = 224
    Top = 536
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FDQuery_CadCaixaCAI_CODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CAI_CODIGO'
      Origin = 'CAI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQuery_CadCaixaCAI_DATAHORA: TSQLTimeStampField
      FieldName = 'CAI_DATAHORA'
      Origin = 'CAI_DATAHORA'
    end
    object FDQuery_CadCaixaCAI_TIPO: TStringField
      FieldName = 'CAI_TIPO'
      Origin = 'CAI_TIPO'
      Size = 1
    end
    object FDQuery_CadCaixaCAI_VALOR: TFMTBCDField
      FieldName = 'CAI_VALOR'
      Origin = 'CAI_VALOR'
      Precision = 18
      Size = 2
    end
    object FDQuery_CadCaixaCAI_DESCRICAO: TStringField
      FieldName = 'CAI_DESCRICAO'
      Origin = 'CAI_DESCRICAO'
      Size = 200
    end
    object FDQuery_CadCaixaCAI_IDFORMAPGTO: TIntegerField
      FieldName = 'CAI_IDFORMAPGTO'
      Origin = 'CAI_IDFORMAPGTO'
    end
    object FDQuery_CadCaixaCAI_IDVENDA: TIntegerField
      FieldName = 'CAI_IDVENDA'
      Origin = 'CAI_IDVENDA'
    end
  end
  object FDQuery_receber1: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select * from receber1 where rc1_codigo = :codigo')
    Left = 224
    Top = 664
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FDQuery_receber1RC1_CODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'RC1_CODIGO'
      Origin = 'RC1_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQuery_receber1RC1_NUMDOCTO: TStringField
      FieldName = 'RC1_NUMDOCTO'
      Origin = 'RC1_NUMDOCTO'
      Size = 50
    end
    object FDQuery_receber1RC1_CLIENTE: TIntegerField
      FieldName = 'RC1_CLIENTE'
      Origin = 'RC1_CLIENTE'
    end
    object FDQuery_receber1RC1_VALOR: TFMTBCDField
      FieldName = 'RC1_VALOR'
      Origin = 'RC1_VALOR'
      Precision = 18
      Size = 2
    end
  end
  object FDQuery_receber2: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select * from receber2 where rc2_codigo = :codigo')
    Left = 224
    Top = 744
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FDQuery_receber2RC2_CODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'RC2_CODIGO'
      Origin = 'RC2_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQuery_receber2RC2_NUMDOCTO: TStringField
      FieldName = 'RC2_NUMDOCTO'
      Origin = 'RC2_NUMDOCTO'
      Size = 50
    end
    object FDQuery_receber2RC2_DATA: TDateField
      FieldName = 'RC2_DATA'
      Origin = 'RC2_DATA'
    end
    object FDQuery_receber2RC2_VALORPARCELA: TFMTBCDField
      FieldName = 'RC2_VALORPARCELA'
      Origin = 'RC2_VALORPARCELA'
      Precision = 18
      Size = 2
    end
    object FDQuery_receber2RC2_PARCELA: TStringField
      FieldName = 'RC2_PARCELA'
      Origin = 'RC2_PARCELA'
    end
    object FDQuery_receber2RC2_VENCIMENTO: TDateField
      FieldName = 'RC2_VENCIMENTO'
      Origin = 'RC2_VENCIMENTO'
    end
    object FDQuery_receber2RC2_VALORHAVER: TFMTBCDField
      FieldName = 'RC2_VALORHAVER'
      Origin = 'RC2_VALORHAVER'
      Precision = 18
      Size = 2
    end
    object FDQuery_receber2RC2_VALORSALDO: TFMTBCDField
      FieldName = 'RC2_VALORSALDO'
      Origin = 'RC2_VALORSALDO'
      Precision = 18
      Size = 2
    end
  end
  object frxReport: TfrxReport
    Version = '6.9.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45713.578968750000000000
    ReportOptions.LastChange = 45715.635334849540000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 464
    Top = 536
    Datasets = <
      item
        DataSet = frxDBDataset_filial
        DataSetName = 'frxDBDataset_filial'
      end
      item
        DataSet = frxDBDataset_venda
        DataSetName = 'frxDBDataset_venda'
      end
      item
        DataSet = frxDBDataset_vendaItem
        DataSetName = 'frxDBDataset_vendaItem'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object Relatório: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Height = 134.283550000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object frxDBDataset_filialFIL_CODIGO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 7.559060000000000000
          Width = 714.331170000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset_filial
          DataSetName = 'frxDBDataset_filial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            
              '[frxDBDataset_filial."FIL_CODIGO"] - [frxDBDataset_filial."FIL_R' +
              'AZAO"]')
          ParentFont = False
        end
        object frxDBDataset_filialFIL_TELEFONE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 68.031540000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset_filial
          DataSetName = 'frxDBDataset_filial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Telefone: [frxDBDataset_filial."FIL_TELEFONE"]')
          ParentFont = False
        end
        object frxDBDataset_filialFIL_CNPJ: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 37.795300000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset_filial
          DataSetName = 'frxDBDataset_filial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CNPJ: [frxDBDataset_filial."FIL_CNPJ"]')
          ParentFont = False
        end
        object frxDBDataset_vendaMOV_DATA: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 102.047310000000000000
          Width = 110.267780000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset_venda
          DataSetName = 'frxDBDataset_venda'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data Venda: [frxDBDataset_venda."MOV_DATA"]')
          ParentFont = False
        end
        object frxDBDataset_vendaMOV_HORA: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 276.771800000000000000
          Top = 102.047310000000000000
          Width = 99.826840000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset_venda
          DataSetName = 'frxDBDataset_venda'
          DisplayFormat.FormatStr = 'hh:mm:ss'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Hora Venda: [frxDBDataset_venda."MOV_HORA"]')
          ParentFont = False
        end
        object frxDBDataset_vendaMOV_CODIGO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 547.645950000000000000
          Top = 102.047310000000000000
          Width = 105.519790000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset_venda
          DataSetName = 'frxDBDataset_venda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'N'#250'm. Venda: [frxDBDataset_venda."MOV_CODIGO"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 38.677180000000000000
        Top = 260.787570000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset_vendaItem
        DataSetName = 'frxDBDataset_vendaItem'
        RowCount = 0
        object frxDBDataset_vendaItemMVI_CODITEM: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 5.000000000000000000
          Top = 12.566790000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'MVI_CODITEM'
          DataSet = frxDBDataset_vendaItem
          DataSetName = 'frxDBDataset_vendaItem'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset_vendaItem."MVI_CODITEM"]')
        end
        object frxDBDataset_vendaItemMVI_QUANTIDADE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 459.000000000000000000
          Top = 12.566790000000000000
          Width = 66.181200000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset_vendaItem
          DataSetName = 'frxDBDataset_vendaItem'
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset_vendaItem."MVI_QUANTIDADE"]')
        end
        object frxDBDataset_vendaItemMVI_VLRUNITARIO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 550.000000000000000000
          Top = 12.566790000000000000
          Width = 56.181200000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset_vendaItem
          DataSetName = 'frxDBDataset_vendaItem'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset_vendaItem."MVI_VLRUNITARIO"]')
        end
        object frxDBDataset_vendaItemMVI_VLRTOTAL: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 633.000000000000000000
          Top = 12.566790000000000000
          Width = 65.181200000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset_vendaItem
          DataSetName = 'frxDBDataset_vendaItem'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset_vendaItem."MVI_VLRTOTAL"]')
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 215.433210000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 6.000000000000000000
          Top = 1.566790000000000000
          Width = 70.370130000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset_vendaItem
          DataSetName = 'frxDBDataset_vendaItem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 99.000000000000000000
          Top = 1.566790000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset_vendaItem
          DataSetName = 'frxDBDataset_vendaItem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Produto')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 450.000000000000000000
          Top = 1.566790000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset_vendaItem
          DataSetName = 'frxDBDataset_vendaItem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Quantidade')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 541.000000000000000000
          Top = 1.566790000000000000
          Width = 85.370130000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset_vendaItem
          DataSetName = 'frxDBDataset_vendaItem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Vlr. Unit'#225'rio')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 635.000000000000000000
          Top = 1.566790000000000000
          Width = 64.370130000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset_vendaItem
          DataSetName = 'frxDBDataset_vendaItem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Vlr Total')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 24.677180000000000000
        Top = 321.260050000000000000
        Width = 718.110700000000000000
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 530.000000000000000000
          Top = 1.180890000000000000
          Width = 183.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            
              'Total da Venda: [SUM(<frxDBDataset_vendaItem."MVI_VLRTOTAL">,Mas' +
              'terData1)]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset_venda: TfrxDBDataset
    UserName = 'frxDBDataset_venda'
    CloseDataSource = False
    FieldAliases.Strings = (
      'MOV_CODIGO=MOV_CODIGO'
      'MOV_TIPOESTOQUE=MOV_TIPOESTOQUE'
      'MOV_DATA=MOV_DATA'
      'MOV_HORA=MOV_HORA'
      'MOV_VLRDESCONTO=MOV_VLRDESCONTO'
      'MOV_VLRTOTAL=MOV_VLRTOTAL'
      'MOV_VENDEDOR=MOV_VENDEDOR'
      'MOV_CLIENTE=MOV_CLIENTE')
    DataSet = FDQuery_venda
    BCDToCurrency = False
    Left = 464
    Top = 600
  end
  object frxDBDataset_vendaItem: TfrxDBDataset
    UserName = 'frxDBDataset_vendaItem'
    CloseDataSource = False
    FieldAliases.Strings = (
      'MVI_CODIGO=MVI_CODIGO'
      'MVI_CODIGOMOVESTOQUE=MVI_CODIGOMOVESTOQUE'
      'MVI_CODITEM=MVI_CODITEM'
      'MVI_QUANTIDADE=MVI_QUANTIDADE'
      'MVI_VLRUNITARIO=MVI_VLRUNITARIO'
      'MVI_VLRTOTAL=MVI_VLRTOTAL'
      'MVI_VLRDESCONTO=MVI_VLRDESCONTO')
    DataSet = FDQuery_venda_item
    BCDToCurrency = False
    Left = 464
    Top = 664
  end
  object FDQuery_filial: TFDQuery
    Active = True
    Connection = FDConnection
    SQL.Strings = (
      'select * from filial where fil_codigo = :codigo')
    Left = 72
    Top = 344
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FDQuery_filialFIL_CODIGO: TIntegerField
      FieldName = 'FIL_CODIGO'
      Origin = 'FIL_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQuery_filialFIL_RAZAO: TStringField
      FieldName = 'FIL_RAZAO'
      Origin = 'FIL_RAZAO'
      Size = 100
    end
    object FDQuery_filialFIL_FANTASIA: TStringField
      FieldName = 'FIL_FANTASIA'
      Origin = 'FIL_FANTASIA'
      Size = 100
    end
    object FDQuery_filialFIL_CNPJ: TStringField
      FieldName = 'FIL_CNPJ'
      Origin = 'FIL_CNPJ'
      Size = 50
    end
    object FDQuery_filialFIL_TELEFONE: TStringField
      FieldName = 'FIL_TELEFONE'
      Origin = 'FIL_TELEFONE'
      Size = 50
    end
  end
  object frxDBDataset_filial: TfrxDBDataset
    UserName = 'frxDBDataset_filial'
    CloseDataSource = False
    FieldAliases.Strings = (
      'FIL_CODIGO=FIL_CODIGO'
      'FIL_RAZAO=FIL_RAZAO'
      'FIL_FANTASIA=FIL_FANTASIA'
      'FIL_CNPJ=FIL_CNPJ'
      'FIL_TELEFONE=FIL_TELEFONE')
    DataSet = FDQuery_filial
    BCDToCurrency = False
    Left = 464
    Top = 728
  end
end
