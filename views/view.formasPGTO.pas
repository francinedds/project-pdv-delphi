unit view.formasPGTO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, view.base, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, service.cadastro,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

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
    FDMemTable_formasPGTO: TFDMemTable;
    FDMemTable_formasPGTOID_FORMAPGTO: TIntegerField;
    FDMemTable_formasPGTOVALOR_PGTO: TCurrencyField;
    FDMemTable_formasPGTONOME_FORMAPGTO: TStringField;
    FDMemTable_formasPGTOGERAR_RECEBER: TStringField;
    FDMemTable_formasPGTOID_CLIENTE: TIntegerField;
    dsFormasPGTOescolha: TDataSource;
    procedure btnFecharFormasPGTOClick(Sender: TObject);
    procedure pnlTopoMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure DBGrid_formasPGTODblClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
  private
    { Private declarations }
    FValorVenda: double;
  public
    { Public declarations }
    property ValorVenda: double read FValorVenda write FValorVenda;  // criamos v�riavel para passar o valor da venda ao edt
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

procedure TViewFormasPGTO.btnOkClick(Sender: TObject);
var
  ValorFaturado, ValorRestante: double;

begin
  inherited;
  FDMemTable_formasPGTO.Open;
  FDMemTable_formasPGTO.Insert;
  FDMemTable_formasPGTOID_FORMAPGTO.AsInteger  := ServiceCadastro.FDQuery_formasPGTOFOR_CODIGO.AsInteger;
  FDMemTable_formasPGTOvalor_pgto.AsFloat      := StrToFloatDef(edtValorParaFaturar.Text, 0);
  FDMemTable_formasPGTOnome_formaPGTO.AsString := ServiceCadastro.FDQuery_formasPGTOFOR_DESCRICAO.AsString;
  FDMemTable_formasPGTOgerar_receber.AsString  := ServiceCadastro.FDQuery_formasPGTOFOR_GERARECEBER.AsString;
  FDMemTable_formasPGTOid_cliente.AsInteger    := 1;
  FDMemTable_formasPGTO.Post;

  // calculando a diferen�a

  ValorFaturado         := StrToFloatDef(edtValorParaFaturar.Text, 0); // valor a faturar � o que a gente digita nesse edit
  edtValorFaturado.Text := FloatToStr(ValorFaturado + StrToFloatDef(edtValorFaturado.Text, 0));

  ValorRestante         := FValorVenda - StrToFloatDef(edtValorFaturado.Text, 0);
  edtValorRestante.Text := FloatToStr(ValorRestante);


  edtValorParaFaturar.Clear;
  pnlValorParaFaturar.Visible := False;
  DBGrid_formasPGTO.SetFocus;
end;

procedure TViewFormasPGTO.DBGrid_formasPGTODblClick(Sender: TObject);
begin // panel de valor para faturar
  inherited;
      if StrToFloatDef(edtValorRestante.Text, 0) > 0 then
  begin
      pnlValorParaFaturar.Visible := True;
      edtValorParaFaturar.Text    := edtValorRestante.Text;
      edtValorParaFaturar.SetFocus;
  end

  else begin
    ShowMessage('N�o h� mais valor para faturar!');
  end;
end;

procedure TViewFormasPGTO.FormShow(Sender: TObject);
begin
  inherited;
  ServiceCadastro.FDQuery_formasPGTO.Close;
  ServiceCadastro.FDQuery_formasPGTO.Open();
  DBGrid_formasPGTO.SetFocus;

  edtValorDaVenda.Text  := FloatToStr(FValorVenda); // edt valor da venda
  edtValorRestante.Text := FloatToStr(FValorVenda); // edt valor restante
end;

procedure TViewFormasPGTO.pnlTopoMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    const // mover o formul�rio sem bordas
  sc_DragMove = $f012;
begin
  inherited;
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

end.

