unit uPedido;

interface
uses uMontagemLanches;
{ utilizar o post que está em
      https://www.linkedin.com/feed/update/urn:li:ugcPost:7030995067330801664/
    para acompanhar no codigo o estudo sobre SOLID
}

  type
    TOpcoes = (xSalada,xBacon,Xfrango);
  TPedidos = class
  private
  public
    ProducaoEmCozinhaTercerizada: Boolean;
    function MontarPedido(Opcoes : TOpcoes) : TMontagemLanche;
  end;
implementation
function TPedidos.MontarPedido(Opcoes: TOpcoes): TMontagemLanche;
begin
  case Opcoes of
    xSalada:
    begin
      result.TipoPao       := pPadrao;
      result.Salada        := [sAlface];
      Result.Queijo        := [qMussarela];
      Result.Hamburger     := hBovino;
      Result.QtdHamburger  := 1;
    end;
    Xfrango:
    begin
      result.TipoPao       := PAustraliano;
      result.Salada        := [sAlface,sTomate,sPicles];
      Result.Queijo        := [qProvolone];
      Result.Hamburger     := hFrango;
      Result.QtdHamburger  := 1;
    end;
    xBacon:
    begin
      result.TipoPao       := PBrioche;
      result.Salada        := [sTomate,sRucula];
      Result.Queijo        := [qProvolone,qCheddar];
      Result.Hamburger     := hBovino;
      Result.QtdHamburger  := 2;
    end;
end;
end;


end.
