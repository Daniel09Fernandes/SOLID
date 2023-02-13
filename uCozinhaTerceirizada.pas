unit uCozinhaTerceirizada;

interface
uses uMontagemLanches, iInterfaceCozinha, ubancoDeDados;

{ utilizar o post que está em
      https://www.linkedin.com/feed/update/urn:li:ugcPost:7030995067330801664/
    para acompanhar no codigo o estudo sobre SOLID
}

  type TCozinhaTerceirizada = class(TInterfacedObject, ICozinha, ICozinhaPizzas)
    private
    public
        procedure prepararLanche(PedidoParaPreparo : TMontagemLanche);
        procedure assarPizzas;
        procedure Salvar(const AConnection: IConnection);
  end;

implementation

{ TCozinhaTercerizada }

procedure TCozinhaTerceirizada.assarPizzas;
begin

end;

procedure TCozinhaTerceirizada.prepararLanche(PedidoParaPreparo: TMontagemLanche);
begin
 //preparo
end;

procedure TCozinhaTerceirizada.Salvar;
begin
  //Salvar no banco
end;

end.
