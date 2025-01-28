program ProjetoPDV;

uses
  Vcl.Forms,
  view.principal in 'view.principal.pas' {ViewPrincipal},
  service.conexao in 'service.conexao.pas' {ServiceConexao: TDataModule},
  view.base in 'view.base.pas' {ViewBase},
  view.base.listas in 'view.base.listas.pas' {ViewBaseListas},
  view.caixa in 'view.caixa.pas' {ViewCaixa},
  service.cadastro in 'service.cadastro.pas' {ServiceCadastro: TDataModule},
  provider.functions in 'provider.functions.pas',
  provider.variaveis in 'provider.variaveis.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TViewPrincipal, ViewPrincipal);
  Application.CreateForm(TServiceConexao, ServiceConexao);
  Application.CreateForm(TViewBase, ViewBase);
  Application.CreateForm(TViewBaseListas, ViewBaseListas);
  Application.CreateForm(TViewCaixa, ViewCaixa);
  Application.CreateForm(TServiceCadastro, ServiceCadastro);
  Application.Run;
end.
