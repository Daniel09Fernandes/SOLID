unit uBancoDeDados;

interface
type

{ utilizar o post que está em
      https://www.linkedin.com/feed/update/urn:li:ugcPost:7030995067330801664/
    para acompanhar no codigo o estudo sobre SOLID
}

 IConnection = interface
   ['{A17872A6-DB71-41DF-9D92-0FDE0F0D65D9}']
   procedure Connect;
 end;

  TFirebirdConn = class(TInterfacedObject, IConnection)
  public
    procedure Connect;
  end;
  TOracleConn = class(TInterfacedObject, IConnection)
  private
    procedure Connect;
  end;
  TMySqlConn = class(TInterfacedObject, IConnection)
  private
    procedure Connect;
  end;

implementation

{ TFirebirdConn }

procedure TFirebirdConn.Connect;
begin
  //Rotina para conectar ao banco  Firebird
end;

{ TOracleConn }

procedure TOracleConn.Connect;
begin
    //Rotina para conectar ao banco  Oracle
end;

{ TMySqlConn }

procedure TMySqlConn.Connect;
begin
   //Rotina para conectar ao banco MySql
end;

end.
