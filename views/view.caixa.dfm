inherited ViewCaixa: TViewCaixa
  Caption = 'ViewCaixa'
  OnCreate = nil
  TextHeight = 15
  inherited pnlTopo: TPanel
    inherited pnlTitulo: TPanel
      inherited lblTitulo: TLabel
        Width = 34
        Height = 16
        Caption = 'Caixa'
        Font.Height = -13
        ExplicitWidth = 34
        ExplicitHeight = 16
      end
    end
  end
  inherited pnlRodape: TPanel
    inherited pnlNovo: TPanel
      inherited btnNovo: TSpeedButton
        OnClick = btnNovoClick
      end
    end
    inherited pnlSalvar: TPanel
      inherited btnSalvar: TSpeedButton
        OnClick = btnSalvarClick
      end
    end
  end
  inherited pnlBackground: TPanel
    inherited CardPanel_conteudo: TCardPanel
      ActiveCard = card_cadastro
      inherited card_cadastro: TCard
        object Label5: TLabel [0]
          Left = 21
          Top = 176
          Width = 79
          Height = 15
          Caption = 'VALOR INICIAL'
          FocusControl = edtVlrInicial
        end
        object Label9: TLabel [1]
          Left = 21
          Top = 235
          Width = 74
          Height = 15
          Caption = 'OBSERVA'#199#195'O'
          FocusControl = edtObservacao
        end
        object Label1: TLabel [2]
          Left = 21
          Top = 112
          Width = 45
          Height = 15
          Caption = 'C'#211'DIGO'
          FocusControl = DBEdit1
        end
        object Label2: TLabel [3]
          Left = 99
          Top = 112
          Width = 87
          Height = 15
          Caption = 'DATA ABERTURA'
          FocusControl = DBEdit2
        end
        object Label3: TLabel [4]
          Left = 259
          Top = 112
          Width = 92
          Height = 15
          Caption = 'HORA ABERTURA'
          FocusControl = DBEdit3
        end
        object Label4: TLabel [5]
          Left = 419
          Top = 112
          Width = 108
          Height = 15
          Caption = 'DATA FECHAMENTO'
          FocusControl = DBEdit4
        end
        object Label6: TLabel [6]
          Left = 579
          Top = 112
          Width = 113
          Height = 15
          Caption = 'HORA FECHAMENTO'
          FocusControl = DBEdit5
        end
        object Label7: TLabel [7]
          Left = 114
          Top = 176
          Width = 71
          Height = 15
          Caption = 'VALOR FINAL'
          FocusControl = DBEdit6
        end
        object Label8: TLabel [8]
          Left = 207
          Top = 176
          Width = 97
          Height = 15
          Caption = 'C'#211'DIGO USU'#193'RIO'
          FocusControl = DBEdit7
        end
        object Label10: TLabel [9]
          Left = 367
          Top = 176
          Width = 38
          Height = 15
          Caption = 'STATUS'
        end
        object edtVlrInicial: TDBEdit
          Left = 21
          Top = 192
          Width = 87
          Height = 23
          DataField = 'ABR_VLRINICIAL'
          DataSource = dsDados
          TabOrder = 1
        end
        object edtObservacao: TDBEdit
          Left = 21
          Top = 256
          Width = 650
          Height = 23
          DataField = 'ABR_OBSERVACAO'
          DataSource = dsDados
          TabOrder = 2
        end
        object DBEdit1: TDBEdit
          Left = 21
          Top = 128
          Width = 72
          Height = 23
          DataField = 'ABR_CODIGO'
          DataSource = dsDados
          TabOrder = 3
        end
        object DBEdit2: TDBEdit
          Left = 99
          Top = 128
          Width = 154
          Height = 23
          DataField = 'ABR_DATAABERTURA'
          DataSource = dsDados
          TabOrder = 4
        end
        object DBEdit3: TDBEdit
          Left = 259
          Top = 128
          Width = 154
          Height = 23
          DataField = 'ABR_HRAABERTURA'
          DataSource = dsDados
          TabOrder = 5
        end
        object DBEdit4: TDBEdit
          Left = 419
          Top = 128
          Width = 154
          Height = 23
          DataField = 'ABR_DATAFECHAMENTO'
          DataSource = dsDados
          TabOrder = 6
        end
        object DBEdit5: TDBEdit
          Left = 579
          Top = 128
          Width = 154
          Height = 23
          DataField = 'ABR_HRAFECHAMENTO'
          DataSource = dsDados
          TabOrder = 7
        end
        object DBEdit6: TDBEdit
          Left = 114
          Top = 192
          Width = 87
          Height = 23
          DataField = 'ABR_VLRFINAL'
          DataSource = dsDados
          TabOrder = 8
        end
        object DBEdit7: TDBEdit
          Left = 207
          Top = 192
          Width = 154
          Height = 23
          DataField = 'ABR_CODIGOUSUARIO'
          DataSource = dsDados
          TabOrder = 9
        end
        object DBEdit8: TComboBox
          Left = 367
          Top = 192
          Width = 145
          Height = 23
          TabOrder = 10
          Items.Strings = (
            'ABERTO'
            'FECHADO')
        end
      end
      inherited card_pesquisa: TCard
        inherited DBGrid_lista: TDBGrid
          DataSource = dsDados
          Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ParentFont = False
          Columns = <
            item
              Expanded = False
              FieldName = 'ABR_CODIGO'
              Title.Caption = 'C'#211'DIGO'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = 6302000
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ABR_DATAABERTURA'
              Title.Caption = 'DATA ABERTURA'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = 6302000
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 110
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ABR_HRAABERTURA'
              Title.Caption = 'HORA ABERTURA'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = 6302000
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 110
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ABR_DATAFECHAMENTO'
              Title.Caption = 'DATA FECHAMENTO'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = 6302000
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 122
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ABR_HRAFECHAMENTO'
              Title.Caption = 'HORA FECHAMENTO'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = 6302000
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 125
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ABR_VLRINICIAL'
              Title.Caption = 'VALOR INICIAL'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = 6302000
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 96
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ABR_VLRFINAL'
              Title.Caption = 'VALOR FINAL'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = 6302000
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 88
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ABR_CODIGOUSUARIO'
              Title.Caption = 'C'#211'DIGO USU'#193'RIO'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = 6302000
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ABR_STATUS'
              Title.Caption = 'STATUS'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = 6302000
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 71
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ABR_OBSERVACAO'
              Title.Caption = 'OBSERVA'#199#195'O'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = 6302000
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Visible = True
            end>
        end
      end
    end
  end
  object dsDados: TDataSource
    DataSet = ServiceCadastro.FDQuery_abrecaixa
    Left = 1035
    Top = 58
  end
end
