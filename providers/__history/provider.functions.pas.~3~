unit provider.functions;

interface
uses Vcl.Forms, System.SysUtils, view.fundo;

procedure CriaForm(const AClasse: TCustomFormClass; out Form); // função para abrir formulários

implementation

procedure CriaForm(const AClasse: TCustomFormClass; out Form);
var
  MeuForm: TCustomForm absolute Form;
begin
  begin
    if not Assigned(MeuForm) then
    Application.CreateForm(AClasse, Form);
    try
      ViewFundo.Show;
      MeuForm.ShowModal;
    finally
      ViewFundo.Hide;
      FreeAndNil(MeuForm);
    end;
  end;
end;

end.
