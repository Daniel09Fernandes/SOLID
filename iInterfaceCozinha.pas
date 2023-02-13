unit iInterfaceCozinha;

interface
uses  uMontagemLanches, uBancoDeDados;
 type
 { utilizar o post que está em
      https://www.linkedin.com/feed/update/urn:li:ugcPost:7030995067330801664/
    para acompanhar no codigo o estudo sobre SOLID
}
  ICozinha = interface
    ['{E560A508-AFDF-4669-823F-BDF291D9F478}']
    procedure prepararLanche(PedidoParaPreparo : TMontagemLanche);
    procedure Salvar(const AConnection: IConnection);
  end;

   ICozinhaPizzas = interface
   ['{561F77B4-F80E-434D-92E2-39D608C1D535}']
    procedure assarPizzas;
    procedure Salvar(const AConnection: IConnection);
  end;

implementation

end.
