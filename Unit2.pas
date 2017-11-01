unit Unit2;

interface

type

TOperation = class
  public
    value1, value2: integer;
    function Exec(value1: integer; value2: integer): Real; virtual; abstract;
end;

TSumm = class(TOperation)
  public
  function Exec(value1: integer; value2: integer): Real; override;
end;

TMinus = class(TOperation)
  public
  function Exec(value1: integer; value2: integer): Real; override;
end;

TMultiply = class(TOperation)
  public
  function Exec(value1: integer; value2: integer): Real; override;
end;

TDivide = class(TOperation)
  public
  function Exec(value1: integer; value2: integer): Real; override;
end;

implementation

{ TSumm }

function TSumm.Exec(value1: integer; value2: integer): Real;
begin
  result :=value1+value2;
end;

{ TDivide }

function TDivide.Exec(value1, value2: integer): Real;
begin
  result :=value1/value2;
end;

{ TMultiply }

function TMultiply.Exec(value1, value2: integer): Real;
begin
  result :=value1*value2;
end;

{ TMinus }

function TMinus.Exec(value1, value2: integer): Real;
begin
  result :=value1-value2;
end;

end.
