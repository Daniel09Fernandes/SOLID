unit uCozinha;

interface
uses uMontagemLanches, iInterfaceCozinha, uBancoDeDados;

{ utilizar o post que está em
      https://www.linkedin.com/feed/update/urn:li:ugcPost:7030995067330801664/
    para acompanhar no codigo o estudo sobre SOLID
}

  type TCozinha = class(TInterfacedObject, ICozinha)
    private
    public
        procedure prepararLanche(PedidoParaPreparo : TMontagemLanche);
        procedure Salvar(const AConnection: IConnection);
  end;

implementation

{ TCozinha }

procedure TCozinha.prepararLanche(PedidoParaPreparo: TMontagemLanche);
begin
 //preparo
end;

procedure TCozinha.Salvar;
begin
  //Salvar no banco
end;

end.
