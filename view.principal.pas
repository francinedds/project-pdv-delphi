unit view.principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.Imaging.jpeg, Vcl.StdCtrls, Vcl.Buttons, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.Samples.Spin, service.cadastro, view.base.listas, view.caixa,
  provider.functions;

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
    dsDados: TDataSource;
    edtCodigoBarras: TEdit;
    edtQuantidade: TEdit;
    edtSubtotal: TEdit;
    edtTotalPagar: TEdit;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnFecharClick(Sender: TObject);
    procedure btnMenuClick(Sender: TObject);
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
begin // abrir caixa usando uma função
  CriaForm(TViewCaixa, ViewCaixa);
end;

procedure TViewPrincipal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    case key of
    VK_ESCAPE: begin
      Self.Close;
    end;
  end;

  // lembrar de habilitar true em keypreview
end;

end.
