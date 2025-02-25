inherited ServiceCadastro: TServiceCadastro
  Height = 841
  Width = 329
  inherited FDConnection: TFDConnection
    Left = 72
    Top = 40
  end
  inherited WaitCursor: TFDGUIxWaitCursor
    Left = 72
    Top = 136
  end
  inherited DriverLink: TFDPhysFBDriverLink
    Left = 72
    Top = 216
  end
  object FDQuery_abrecaixa: TFDQuery
    Active = True
    Connection = FDConnection
    SQL.Strings = (
      'select * from abrecaixa where abr_status = '#39'ABERTO'#39)
    Left = 72
    Top = 416
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
    Top = 504
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
    Connection = FDConnection
    SQL.Strings = (
      'select * from movestoque where mov_codigo = :codigo')
    Left = 72
    Top = 632
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
    Connection = FDConnection
    SQL.Strings = (
      'select * from movestoque_item where mvi_codigo = :codigo')
    Left = 72
    Top = 712
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
    Top = 416
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
    Top = 504
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
    Top = 632
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
    Top = 712
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
end
