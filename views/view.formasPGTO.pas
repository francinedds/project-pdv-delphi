unit view.formasPGTO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, view.base, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, service.cadastro;

type
  TViewFormasPGTO = class(TViewBase)
    pnlTopo: TPanel;
    pnlTitulo: TPanel;
    lblTitulo: TLabel;
    pnlBtnFechar: TPanel;
    btnFechar: TSpeedButton;
    btnFecharFormasPGTO: TSpeedButton;
    pnlRodape: TPanel;
    pnlEditar: TPanel;
    pnlNovo: TPanel;
    pnlSalvar: TPanel;
    btnSalvar: TSpeedButton;
    pnlFormasPGTO: TPanel;
    pnlFormaPGTO: TPanel;
    DBGrid_formasPGTO: TDBGrid;
    DBGrid_formaEscolhida: TDBGrid;
    Panel1: TPanel;
    lblValorDaVenda: TLabel;
    lblValorFaturado: TLabel;
    lblValorRestante: TLabel;
    edtValorDaVenda: TEdit;
    edtValorFaturado: TEdit;
    edtValorRestante: TEdit;
    pnlValorParaFaturar: TPanel;
    pnlTituloValorFaturar: TPanel;
    pnlBtnOk: TPanel;
    btnOk: TSpeedButton;
    lblTitleValorFaturar: TLabel;
    edtValorParaFaturar: TEdit;
    dsFormasPGTO: TDataSource;
    procedure btnFecharFormasPGTOClick(Sender: TObject);
    procedure pnlTopoMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewFormasPGTO: TViewFormasPGTO;

implementation

{$R *.dfm}

procedure TViewFormasPGTO.btnFecharFormasPGTOClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TViewFormasPGTO.FormShow(Sender: TObject);
begin
  inherited;
  ServiceCadastro.FDQuery_formasPGTO.Close;
  ServiceCadastro.FDQuery_formasPGTO.Open();
  DBGrid_formasPGTO.SetFocus;
end;

procedure TViewFormasPGTO.pnlTopoMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    const // mover o formulário sem bordas
  sc_DragMove = $f012;
begin
  inherited;
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

end.

