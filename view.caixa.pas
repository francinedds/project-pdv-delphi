unit view.caixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, view.base.listas, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.WinXPanels, Vcl.Buttons,
  Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, service.cadastro, Vcl.Mask, Vcl.DBCtrls,
  provider.variaveis;

type
  TViewCaixa = class(TViewBaseListas)
    dsDados: TDataSource;
    Label5: TLabel;
    edtVlrInicial: TDBEdit;
    Label9: TLabel;
    edtObservacao: TDBEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label10: TLabel;
    DBEdit8: TComboBox;
    procedure FormShow(Sender: TObject);
    procedure dsDadosStateChange(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewCaixa: TViewCaixa;

implementation

{$R *.dfm}


procedure TViewCaixa.btnCancelarClick(Sender: TObject);
begin //cancelar
  inherited;
  dsDados.DataSet.Cancel;
end;

procedure TViewCaixa.btnEditarClick(Sender: TObject);
begin //editar
  inherited;
  CardPanel_conteudo.ActiveCard := card_cadastro;
  dsDados.DataSet.Edit;
end;

procedure TViewCaixa.btnNovoClick(Sender: TObject);
begin //novo
  inherited;
  CardPanel_conteudo.ActiveCard := card_cadastro;
  dsDados.DataSet.Insert;
end;

procedure TViewCaixa.btnSalvarClick(Sender: TObject);
begin //salvar
  inherited;
  dsDados.DataSet.Post;
  NumCaixa := ServiceCadastro.FDQuery_abrecaixaABR_CODIGO.AsInteger;

  ShowMessage('Salvo com sucesso!');
end;

procedure TViewCaixa.dsDadosStateChange(Sender: TObject);
begin
  inherited;
  btnNovo.Enabled     := not (dsDados.State in [dsInsert, dsEdit]);
  btnEditar.Enabled   := btnNovo.Enabled and (dsDados.DataSet.RecordCount > 0);
  btnSalvar.Enabled   := dsDados.State in [dsInsert, dsEdit];
  btnCancelar.Enabled := btnSalvar.Enabled;
end;

procedure TViewCaixa.FormShow(Sender: TObject);
begin
  inherited;
  //dsDados.DataSet := FService.FDQuery_abrecaixa;
  ServiceCadastro.FDQuery_abrecaixa.Close;
  ServiceCadastro.FDQuery_abrecaixa.Open();
end;

end.
