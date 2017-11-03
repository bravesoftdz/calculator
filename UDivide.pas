unit UDivide;

interface

uses
  System.SysUtils, UOperation;

type

  TDivide = class(TOperation)
  private
    value1, value2: string;
    function GetValue1: string; override;
    function GetValue2: string; override;
    procedure SetValue1(Value: string); override;
    procedure SetValue2(Value: string); override;
  public
    property val1: string read GetValue1 write SetValue1;
    property val2: string read GetValue2 write SetValue2;
    function Exec: string; override;
    function simvol: string; override;
  published
    constructor create(val: string); override;
  end;

implementation

{ TDivide }

constructor TDivide.create(val: string);
begin
  if (val <> '') then
    self.val1 := val;
end;

function TDivide.Exec: string;
begin
  result := floattostr(strtofloat(value1) / strtofloat(value2));
end;

function TDivide.GetValue1: string;
begin
  result := value1;
end;

function TDivide.GetValue2: string;
begin
  result := value2;
end;

procedure TDivide.SetValue1(Value: string);
begin
  value1 := Value;
end;

procedure TDivide.SetValue2(Value: string);
begin
  value2 := Value;
end;

function TDivide.simvol: string;
begin
  result := ' /';
end;

end.
