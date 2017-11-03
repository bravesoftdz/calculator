unit UMinus;

interface

uses
  System.SysUtils, UOperation;

type

  TMinus = class(TOperation)
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

{ TMinus }

constructor TMinus.create(val: string);
begin
  if (val <> '') then
    self.val1 := val;
end;

function TMinus.Exec: string;
begin
  result := floattostr(strtofloat(value1) - strtofloat(value2));
end;

function TMinus.GetValue1: string;
begin
  result := value1;
end;

function TMinus.GetValue2: string;
begin
  result := value2;
end;

procedure TMinus.SetValue1(Value: string);
begin
  value1 := Value;
end;

procedure TMinus.SetValue2(Value: string);
begin
  value2 := Value;
end;

function TMinus.simvol: string;
begin
  result := ' -';
end;

end.
