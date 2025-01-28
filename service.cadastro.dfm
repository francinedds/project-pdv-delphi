inherited ServiceCadastro: TServiceCadastro
  Height = 628
  Width = 143
  object FDQuery_abrecaixa: TFDQuery
    Active = True
    Connection = FDConnection
    SQL.Strings = (
      'select * from abrecaixa where abr_status = '#39'ABERTO'#39)
    Left = 56
    Top = 408
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
end
