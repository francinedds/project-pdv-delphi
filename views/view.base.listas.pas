unit view.base.listas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, view.base, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.WinXPanels, Vcl.Buttons, Vcl.WinXCtrls,
  service.cadastro, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TViewBaseListas = class(TViewBase)
    pnlTopo: TPanel;
    pnlRodape: TPanel;
    pnlBackground: TPanel;
    CardPanel_conteudo: TCardPanel;
    pnlTitulo: TPanel;
    lblTitulo: TLabel;
    card_cadastro: TCard;
    pnlCadastro: TPanel;
    lblTituloCadastro: TLabel;
    pnlBtnVoltar: TPanel;
    btnVoltar: TSpeedButton;
    card_pesquisa: TCard;
    pnlPesquisa: TPanel;
    lblTituloPesquisa: TLabel;
    edtPesquisa: TSearchBox;
    pnlBtnFechar: TPanel;
    btnFechar: TSpeedButton;
    pnlEditar: TPanel;
    btnEditar: TSpeedButton;
    pnlNovo: TPanel;
    btnNovo: TSpeedButton;
    pnlCancelar: TPanel;
    btnCancelar: TSpeedButton;
    pnlSalvar: TPanel;
    btnSalvar: TSpeedButton;
    DBGrid_lista: TDBGrid;
    procedure pnlTopoMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }

  published
    FService: TServiceCadastro; //variavel criada para se ter acesso a service, sem precisar dar uses

  public
    { Public declarations }
  end;

var
  ViewBaseListas: TViewBaseListas;

implementation

{$R *.dfm}

procedure TViewBaseListas.btnFecharClick(Sender: TObject);
begin // fechar
  inherited;
  Self.Close;
end;

procedure TViewBaseListas.btnVoltarClick(Sender: TObject);
begin // voltar
  inherited;
  CardPanel_conteudo.ActiveCard := card_pesquisa;
end;

procedure TViewBaseListas.FormCreate(Sender: TObject);
begin // create
  inherited;
  FService := TServiceCadastro.Create(Self);
end;

procedure TViewBaseListas.FormDestroy(Sender: TObject);
begin // destroy
  inherited;
  FreeAndNil(FService);
end;

procedure TViewBaseListas.FormShow(Sender: TObject);
begin // aparecerá sempre a aba de pesquisa primeiro
  inherited;
  CardPanel_conteudo.ActiveCard := card_pesquisa;

end;

procedure TViewBaseListas.pnlTopoMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
const // mover o formulário sem bordas
  sc_DragMove = $f012;
begin
  inherited;
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

end.
