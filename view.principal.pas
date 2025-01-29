unit view.principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.Imaging.jpeg, Vcl.StdCtrls, Vcl.Buttons, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.Samples.Spin, service.cadastro, view.base.listas, view.caixa,
  provider.functions, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TViewPrincipal = class(TForm)
    pnlTopo: TPanel;
    pnlInfosEmpresa: TPanel;
    pnlImg: TPanel;
    Image1: TImage;
    lblEmpresa: TLabel;
    lblHoras: TLabel;
    pnlDataLocal: TPanel;
    pnlCaixa: TPanel;
    lblCaixaLivre: TLabel;
    pnlBtnFechar: TPanel;
    btnFechar: TSpeedButton;
    pnlRodape: TPanel;
    pnlMenu: TPanel;
    btnMenu: TSpeedButton;
    pnlSobre: TPanel;
    btnSobre: TSpeedButton;
    pnlConsultaProduto: TPanel;
    pnlProdutos: TPanel;
    pnlTitulo: TPanel;
    lblTituloSubtotal: TLabel;
    pnlTituloProduto: TPanel;
    lblTituloProduto: TLabel;
    pnlTotalPagar: TPanel;
    lblTotal: TLabel;
    pnlPrecoTotalPagar: TPanel;
    DBGrid: TDBGrid;
    Image2: TImage;
    pnlDetalhes: TPanel;
    lblNomeProduto: TLabel;
    lblTituloQuantidade: TLabel;
    lblTituloValorUnitario: TLabel;
    edtValorUnitario: TEdit;
    dsItens: TDataSource;
    edtCodigoBarras: TEdit;
    edtQuantidade: TEdit;
    edtSubtotal: TEdit;
    edtTotalPagar: TEdit;
    FDMemTable_itens: TFDMemTable;
    FDMemTable_itensCOD_ITEM: TIntegerField;
    FDMemTable_itensQTD_PRODUTO: TCurrencyField;
    FDMemTable_itensVLR_UNITARIO: TCurrencyField;
    FDMemTable_itensVLR_DESCONTO: TCurrencyField;
    FDMemTable_itensVLR_TOTAL: TCurrencyField;
    FDMemTable_itensNOME_PRODUTO: TStringField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnFecharClick(Sender: TObject);
    procedure btnMenuClick(Sender: TObject);
    procedure edtCodigoBarrasExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure DimensionarGrid(dbg: TDBGrid);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewPrincipal: TViewPrincipal;

implementation

{$R *.dfm}

procedure TViewPrincipal.btnFecharClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TViewPrincipal.btnMenuClick(Sender: TObject);
begin // abrir caixa usando uma fun��o
  CriaForm(TViewCaixa, ViewCaixa);
end;

procedure TViewPrincipal.edtCodigoBarrasExit(Sender: TObject); // produto em tela ao clicar fora do edt
var
  ValorUnitario, QTD, ValorSubtotal: Double;

begin
  if Length(edtCodigoBarras.Text) > 0 then
  begin
    ServiceCadastro.Get_Produtos(edtCodigoBarras.Text);

    edtValorUnitario.Text := FloatToStr(ServiceCadastro.FDQuery_produtosPR2_VENDAVISTA.AsFloat); // passa o valor unit�rio do produto para o edt
    ValorUnitario         := ServiceCadastro.FDQuery_produtosPR2_VENDAVISTA.AsFloat;
    QTD                   := StrToFloatDef(edtQuantidade.Text, 1);
    ValorSubtotal         := QTD * ValorUnitario;

    edtSubtotal.Text      := FloatToStr(ValorSubtotal);


    // inserindo do memtable para a grid

    FDMemTable_itens.Open;
    FDMemTable_itens.Insert;
    FDMemTable_itensCOD_ITEM.AsInteger    := ServiceCadastro.FDQuery_produtosPR1_CODIGO.AsInteger;
    FDMemTable_itensNOME_PRODUTO.AsString := ServiceCadastro.FDQuery_produtosPR1_NOMECOMPLETO.AsString;
    FDMemTable_itensQTD_PRODUTO.AsFloat   := QTD;
    FDMemTable_itensVLR_UNITARIO.AsFloat  := ValorUnitario;
    FDMemTable_itensVLR_DESCONTO.AsFloat  := 0;
    FDMemTable_itensVLR_TOTAL.AsFloat     := ValorSubtotal;
    FDMemTable_itens.Post;

    edtCodigoBarras.Clear;
    edtCodigoBarras.SetFocus;
  end;
end;

procedure TViewPrincipal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    case key of
    VK_ESCAPE: begin
      Self.Close;
    end;
  end;
  // lembrar de habilitar 'true' em keypreview
end;

procedure TViewPrincipal.FormShow(Sender: TObject);
begin // abrir a tela j� com foco em 'c�digo de barras'
    if edtCodigoBarras.Visible and edtCodigoBarras.Enabled then
    edtCodigoBarras.SetFocus;
end;

procedure TViewPrincipal.FormResize(Sender: TObject);
begin // dimensionar a grid automaticamente
    DimensionarGrid(DBGrid);
end;

procedure TViewPrincipal.DimensionarGrid(dbg: TDBGrid);
type // dimensionar a grid automaticamente
  TArray = Array of Integer;
    procedure AjustarColumns(Swidth, TSize: Integer; Asize: TArray);
  var
  idx: Integer;
  begin
    if TSize = 0 then
    begin
      TSize := dbg.Columns.count;
      for idx := 0 to dbg.Columns.count - 1 do
      dbg.Columns[idx].Width := (dbg.Width - dbg.Canvas.TextWidth('AAAAAA')
      ) div TSize
    end
  else
    for idx := 0 to dbg.Columns.count - 1 do
    dbg.Columns[idx].Width := dbg.Columns[idx].Width +
    (Swidth * Asize[idx] div TSize);
  end;

  var
  idx, Twidth, TSize, Swidth: Integer;
  AWidth: TArray;
  Asize: TArray;
  NomeColuna: String;

  begin
    SetLength(AWidth, dbg.Columns.count);
    SetLength(Asize, dbg.Columns.count);
    Twidth := 0;
    TSize := 0;
    for idx := 0 to dbg.Columns.count - 1 do
      begin
      NomeColuna := dbg.Columns[idx].Title.Caption;
      dbg.Columns[idx].Width := dbg.Canvas.TextWidth
      (dbg.Columns[idx].Title.Caption + 'A');
      AWidth[idx] := dbg.Columns[idx].Width;
      Twidth := Twidth + AWidth[idx];

      if Assigned(dbg.Columns[idx].Field) then
      Asize[idx] := dbg.Columns[idx].Field.Size
      else
      Asize[idx] := 1;

      TSize := TSize + Asize[idx];
    end;

  if TDBGridOption.dgColLines in dbg.Options then
  Twidth := Twidth + dbg.Columns.count;

  // adiciona a largura da coluna indicada do cursor
  if TDBGridOption.dgIndicator in dbg.Options then
  Twidth := Twidth + IndicatorWidth;

  Swidth := dbg.ClientWidth - Twidth;
  AjustarColumns(Swidth, TSize, Asize);
  end;

end.
