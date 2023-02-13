program SOLID_PRINCIPIOS;

uses
  Vcl.Forms,
  uAtendente in 'uAtendente.pas' {Atendente},
  uPedido in 'uPedido.pas',
  uCozinha in 'uCozinha.pas',
  uMontagemLanches in 'uMontagemLanches.pas',
  iInterfaceCozinha in 'iInterfaceCozinha.pas',
  uCozinhaTerceirizada in 'uCozinhaTerceirizada.pas',
  UPedidoTerceirizados in 'UPedidoTerceirizados.pas',
  uBancoDeDados in 'uBancoDeDados.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TAtendente, Atendente);
  Application.Run;
end.
