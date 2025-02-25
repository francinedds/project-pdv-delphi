unit provider.conversao;

interface

uses
  Classes,
  StrUtils,
  SysUtils;

type
  TPCEstoque = (teCompra, teVenda, teDevolucao);
  function EstoqueToStr(const t: TPCEstoque): integer;

implementation

function EstoqueToStr(const t: TPCEstoque): integer;
  begin
    case t of
      teCompra:    result := 1;
      teVenda:     result := 2;
      teDevolucao: result := 3;
    end;
  end;

end.
