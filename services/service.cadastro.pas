unit service.cadastro;

interface

uses
  System.SysUtils, System.Classes, service.conexao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Phys.IBBase,
  FireDAC.Comp.UI, Data.DB, FireDAC.Comp.Client, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, vcl.Dialogs,
  provider.conversao, frxClass, frxDBSet;

type
  TServiceCadastro = class(TServiceConexao)
    FDQuery_abrecaixa: TFDQuery;
    FDQuery_abrecaixaABR_CODIGO: TIntegerField;
    FDQuery_abrecaixaABR_DATAABERTURA: TDateField;
    FDQuery_abrecaixaABR_HRAABERTURA: TTimeField;
    FDQuery_abrecaixaABR_DATAFECHAMENTO: TDateField;
    FDQuery_abrecaixaABR_HRAFECHAMENTO: TTimeField;
    FDQuery_abrecaixaABR_VLRINICIAL: TFMTBCDField;
    FDQuery_abrecaixaABR_VLRFINAL: TFMTBCDField;
    FDQuery_abrecaixaABR_CODIGOUSUARIO: TSmallintField;
    FDQuery_abrecaixaABR_STATUS: TStringField;
    FDQuery_abrecaixaABR_OBSERVACAO: TStringField;
    FDQuery_produtos: TFDQuery;
    FDQuery_venda: TFDQuery;
    FDQuery_venda_item: TFDQuery;
    FDQuery_vendaMOV_CODIGO: TIntegerField;
    FDQuery_vendaMOV_TIPOESTOQUE: TIntegerField;
    FDQuery_vendaMOV_DATA: TDateField;
    FDQuery_vendaMOV_HORA: TTimeField;
    FDQuery_vendaMOV_VLRDESCONTO: TFMTBCDField;
    FDQuery_vendaMOV_VLRTOTAL: TFMTBCDField;
    FDQuery_vendaMOV_VENDEDOR: TIntegerField;
    FDQuery_vendaMOV_CLIENTE: TIntegerField;
    FDQuery_venda_itemMVI_CODIGO: TIntegerField;
    FDQuery_venda_itemMVI_CODIGOMOVESTOQUE: TIntegerField;
    FDQuery_venda_itemMVI_CODITEM: TIntegerField;
    FDQuery_venda_itemMVI_QUANTIDADE: TFMTBCDField;
    FDQuery_venda_itemMVI_VLRUNITARIO: TFMTBCDField;
    FDQuery_venda_itemMVI_VLRTOTAL: TFMTBCDField;
    FDQuery_venda_itemMVI_VLRDESCONTO: TFMTBCDField;
    FDQuery_produtosPR1_CODIGO: TIntegerField;
    FDQuery_produtosPR1_NOMECOMPLETO: TStringField;
    FDQuery_produtosPR1_CODIGOBARRA: TStringField;
    FDQuery_produtosPR2_VENDAVISTA: TLargeintField;
    FDQuery_produtosPR2_VENDAPRAZO: TLargeintField;
    FDQuery_formasPGTO: TFDQuery;
    FDQuery_formasPGTOFOR_CODIGO: TIntegerField;
    FDQuery_formasPGTOFOR_DESCRICAO: TStringField;
    FDQuery_formasPGTOFOR_GERARECEBER: TStringField;
    FDQuery_CadCaixa: TFDQuery;
    FDQuery_CadCaixaCAI_CODIGO: TIntegerField;
    FDQuery_CadCaixaCAI_DATAHORA: TSQLTimeStampField;
    FDQuery_CadCaixaCAI_TIPO: TStringField;
    FDQuery_CadCaixaCAI_VALOR: TFMTBCDField;
    FDQuery_CadCaixaCAI_DESCRICAO: TStringField;
    FDQuery_CadCaixaCAI_IDFORMAPGTO: TIntegerField;
    FDQuery_CadCaixaCAI_IDVENDA: TIntegerField;
    FDQuery_receber1: TFDQuery;
    FDQuery_receber2: TFDQuery;
    FDQuery_receber1RC1_CODIGO: TIntegerField;
    FDQuery_receber1RC1_NUMDOCTO: TStringField;
    FDQuery_receber1RC1_CLIENTE: TIntegerField;
    FDQuery_receber1RC1_VALOR: TFMTBCDField;
    FDQuery_receber2RC2_CODIGO: TIntegerField;
    FDQuery_receber2RC2_NUMDOCTO: TStringField;
    FDQuery_receber2RC2_DATA: TDateField;
    FDQuery_receber2RC2_VALORPARCELA: TFMTBCDField;
    FDQuery_receber2RC2_PARCELA: TStringField;
    FDQuery_receber2RC2_VENCIMENTO: TDateField;
    FDQuery_receber2RC2_VALORHAVER: TFMTBCDField;
    FDQuery_receber2RC2_VALORSALDO: TFMTBCDField;
    frxReport: TfrxReport;
    frxDBDataset_venda: TfrxDBDataset;
    frxDBDataset_vendaItem: TfrxDBDataset;
    FDQuery_filial: TFDQuery;
    FDQuery_filialFIL_CODIGO: TIntegerField;
    FDQuery_filialFIL_RAZAO: TStringField;
    FDQuery_filialFIL_FANTASIA: TStringField;
    FDQuery_filialFIL_CNPJ: TStringField;
    FDQuery_filialFIL_TELEFONE: TStringField;
    frxDBDataset_filial: TfrxDBDataset;
    procedure Get_Caixa;
    procedure Get_Produtos(AValue: string);
    procedure Put_Caixa(tipo, descricao: string; valor: double; idformaPGTO, idVenda: integer);
    procedure Put_Venda(ADataSet: TDataSet; TipoEstoque, Vendedor, Cliente: integer; ValorVenda, Desconto: double);
    procedure Put_Receber(ADocto: string; id_cliente: integer; ValorDocto: double);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    var
      NumVenda: integer;
  end;

var
  ServiceCadastro: TServiceCadastro;

implementation


{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TServiceCadastro }

procedure TServiceCadastro.DataModuleCreate(Sender: TObject);
begin // carrega a filial
  inherited;
  FDQuery_filial.Close;
  FDQuery_filial.Params[0].AsInteger := 1;
  FDQuery_filial.Open();
end;

procedure TServiceCadastro.Get_Caixa;
begin
  FDQuery_abrecaixa.Close;
  FDQuery_abrecaixa.SQL.Clear;
  FDQuery_abrecaixa.SQL.Add('select * from abrecaixa');
  FDQuery_abrecaixa.Open();
end;

procedure TServiceCadastro.Get_Produtos(AValue: string);
begin
  FDQuery_produtos.Close;
  FDQuery_produtos.Params[0].AsString := AValue;
  FDQuery_produtos.Open();

  if FDQuery_produtos.RecordCount < 1 then
  begin
    ShowMessage('Produto n�o encontrado!');
    Abort;
    // abort impede que adicione celula vazia, como estava ocorrendo
  end;

end;

procedure TServiceCadastro.Put_Caixa(tipo, descricao: string; valor: double; idformaPGTO, idVenda: integer);
begin // salva caixa
  FDQuery_cadCaixa.Close;
  FDQuery_cadCaixa.Open();
  FDQuery_cadCaixa.Insert;
  FDQuery_cadCaixaCAI_DATAHORA.AsDateTime   := Now;
  FDQuery_cadCaixaCAI_TIPO.AsString         := tipo;
  FDQuery_cadCaixaCAI_VALOR.AsFloat         := valor;
  FDQuery_cadCaixaCAI_DESCRICAO.AsString    := descricao;
  FDQuery_cadCaixaCAI_IDFORMAPGTO.AsInteger := idformaPGTO;
  FDQuery_cadCaixaCAI_IDVENDA.AsInteger     := idVenda;
  FDQuery_cadCaixa.Post;
end;

procedure TServiceCadastro.Put_Receber(ADocto: string; id_cliente: integer;
  ValorDocto: double);
begin // salva o contas a receber
  FDQuery_receber1.Close;
  FDQuery_receber1.Open();
  FDQuery_receber1.Insert;
  FDQuery_receber1RC1_NUMDOCTO.AsString := ADocto;
  FDQuery_receber1RC1_CLIENTE.AsInteger := id_cliente;
  FDQuery_receber1RC1_VALOR.AsFloat     := ValorDocto;
  FDQuery_receber1.Post;

  FDQuery_receber2.Close;
  FDQuery_receber2.Open();
  FDQuery_receber2.Insert;
  FDQuery_receber2RC2_NUMDOCTO.AsString     := ADocto;
  FDQuery_receber2RC2_DATA.AsDateTime       := Date;
  FDQuery_receber2RC2_VALORPARCELA.AsFloat  := ValorDocto;
  FDQuery_receber2RC2_PARCELA.AsString      := '1';
  FDQuery_receber2RC2_VENCIMENTO.AsDateTime := Date  + 30;
  FDQuery_receber2RC2_VALORHAVER.AsFloat    := 0;
  FDQuery_receber2RC2_VALORSALDO.AsFloat    := ValorDocto;
end;

procedure TServiceCadastro.Put_Venda(ADataSet: TDataSet; TipoEstoque, Vendedor, Cliente: integer;
  ValorVenda, Desconto: double);
begin // salva venda
  FDQuery_venda.Close;
  FDQuery_venda.Open();
  FDQuery_venda.Insert;
  FDQuery_vendaMOV_TIPOESTOQUE.AsInteger := EstoqueToStr(teVenda);
  FDQuery_vendaMOV_DATA.AsDateTime       := Date;
  FDQuery_vendaMOV_HORA.AsDateTime       := Time;
  FDQuery_vendaMOV_VLRDESCONTO.AsFloat   := Desconto;
  FDQuery_vendaMOV_VLRTOTAL.AsFloat      := ValorVenda;
  FDQuery_vendaMOV_VENDEDOR.AsInteger    := Vendedor;
  FDQuery_vendaMOV_CLIENTE.AsInteger     := Cliente;
  FDQuery_venda.Post;

  ADataSet.First;
  while not ADataSet.Eof do
  begin
    FDQuery_venda_item.Close;
    FDQuery_venda_item.Open();
    FDQuery_venda_item.Insert;
    FDQuery_venda_itemMVI_CODIGOMOVESTOQUE.AsInteger := FDQuery_vendaMOV_CODIGO.AsInteger;
    FDQuery_venda_itemMVI_CODITEM.AsInteger          := ADataSet.FieldByName('cod_item').AsInteger;
    FDQuery_venda_itemMVI_QUANTIDADE.AsFloat         := ADataSet.FieldByName('qtd_produto').AsFloat;
    FDQuery_venda_itemMVI_VLRUNITARIO.AsFloat        := ADataSet.FieldByName('vlr_unitario').AsFloat;
    FDQuery_venda_itemMVI_VLRTOTAL.AsFloat           := ADataSet.FieldByName('vlr_total').AsFloat;
    FDQuery_venda_itemMVI_VLRDESCONTO.AsFloat        := ADataSet.FieldByName('vlr_desconto').AsFloat;
    FDQuery_venda_item.Post;

    ADataSet.Next;

    NumVenda := 0;
    NumVenda := FDQuery_vendaMOV_CODIGO.AsInteger;
  end;

end;

end.
