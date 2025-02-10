unit view.login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg, Vcl.Buttons, Vcl.Imaging.pngimage,
  view.principal, provider.functions;

type
  TViewLogin = class(TForm)
    pnlBackground: TPanel;
    pnlLateral: TPanel;
    lblDesenvolvido: TLabel;
    lblUsuario: TLabel;
    lblSenha: TLabel;
    edtSenha: TEdit;
    edtNomeUsuario: TEdit;
    pnlBtnContinuar: TPanel;
    btnContinuar: TSpeedButton;
    Image1: TImage;
    lblBemVindo: TLabel;
    lblVersao: TLabel;
    pnlBtnFechar: TPanel;
    btnFechar: TSpeedButton;
    Image2: TImage;
    lblDetail1: TLabel;
    procedure btnFecharClick(Sender: TObject);
    procedure btnContinuarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewLogin: TViewLogin;

implementation

{$R *.dfm}

procedure TViewLogin.btnContinuarClick(Sender: TObject);
begin // mostra formulário
  CriaForm(TViewPrincipal, ViewPrincipal);
  Self.Close;
end;

procedure TViewLogin.btnFecharClick(Sender: TObject);
begin // botão fechar
  Self.Close;
end;

procedure TViewLogin.FormShow(Sender: TObject);
begin
  edtNomeUsuario.SetFocus;
end;

end.
