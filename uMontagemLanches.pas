unit uMontagemLanches;

interface

{ utilizar o post que está em
      https://www.linkedin.com/feed/update/urn:li:ugcPost:7030995067330801664/
    para acompanhar no codigo o estudo sobre SOLID
}

type
  Tpao       = (pAustraliano, pPadrao, PBrioche);
  TSalada    = (sAlface, sRucula, sTomate, sPicles);
  TQueijo    = (qMussarela, qProvolone, qCheddar);
  THamburger = (hBovino, hSuino, hFrango, hPeixe);

  TSaladas = Set of TSalada;
  TQueijos = Set of TQueijo;

  TMontagemLanche = record
    TipoPao  : Tpao;
    Salada    : TSaladas;
    Queijo    : TQueijos;
    Hamburger : THamburger;
    QtdHamburger : integer;
  end;

implementation

end.
