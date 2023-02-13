unit uAtendente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPedido, uCozinha, iInterfaceCozinha,uCozinhaTerceirizada, UPedidoTerceirizados;

type
  TAtendente = class(TForm)
  private
  public
    procedure fazerPedido;
  end;

var
  Atendente: TAtendente;

implementation

{$R *.dfm}

{ TAtendente }

procedure TAtendente.fazerPedido;
var pedido : TPedidoTerceirizado;
    cozinha : ICozinha;
begin
  { utilizar o post que está em
      https://www.linkedin.com/feed/update/urn:li:ugcPost:7030995067330801664/
    para acompanhar no codigo o estudo sobre SOLID
}

  //nos exemplos, visto no post, pedido já foi TPedido,
  // porém foi alterado para mostrar o principio L - Liskov Substitution Principle

  // pedido  := TPedidos.Create;

  if pedido.ProducaoEmCozinhaTercerizada then
    cozinha := TCozinhaTerceirizada.Create
  else
    cozinha := Tcozinha.Create;

  try
    cozinha.prepararLanche(pedido.MontarPedido(xSalada));
  finally
    FreeAndNil(pedido);
  end;
end;

end.
