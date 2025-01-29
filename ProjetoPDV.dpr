program ProjetoPDV;

uses
  Vcl.Forms,
  view.principal in 'views\view.principal.pas' {ViewPrincipal},
  service.conexao in 'services\service.conexao.pas' {ServiceConexao: TDataModule},
  view.base in 'views\view.base.pas' {ViewBase},
  view.base.listas in 'views\view.base.listas.pas' {ViewBaseListas},
  view.caixa in 'views\view.caixa.pas' {ViewCaixa},
  service.cadastro in 'services\service.cadastro.pas' {ServiceCadastro: TDataModule},
  provider.functions in 'providers\provider.functions.pas',
  provider.variaveis in 'providers\provider.variaveis.pas';

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
