unit Unit2;

interface

uses
  System.SysUtils;

type

  TOperation = class
  private
    function GetValue1: string; virtual; abstract;
    function GetValue2: string; virtual; abstract;
    procedure SetValue1(Value: string); virtual; abstract;
    procedure SetValue2(Value: string); virtual; abstract;
  public
    property val1: string read GetValue1 write SetValue1;
    property val2: string read GetValue2 write SetValue2;
    function Exec: string; virtual; abstract;
    function simvol: string; virtual; abstract;
  published
    constructor create(val: string); virtual; abstract;
  end;

  TSumm = class(TOperation)
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

  TMultiply = class(TOperation)
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

{ TSumm }

constructor TSumm.create(val: string);
begin
  self.val2 := '';
  self.val1 := val;
end;

function TSumm.Exec: string;
begin
  result := floattostr(strtofloat(GetValue1) + strtofloat(GetValue2));
end;

function TSumm.GetValue1: string;
begin
  result := value1;
end;

function TSumm.GetValue2: string;
begin
  result := value2;
end;

procedure TSumm.SetValue1(Value: string);
begin
  value1 := Value;
end;

procedure TSumm.SetValue2(Value: string);
begin
  value2 := Value;
end;

function TSumm.simvol: string;
begin
  result := ' +';
end;

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

{ TMultiply }

constructor TMultiply.create(val: string);
begin
  self.val2 := '';
  self.val1 := val;
end;

function TMultiply.Exec: string;
begin
  result := floattostr(strtofloat(value1) * strtofloat(value2));
end;

function TMultiply.GetValue1: string;
begin
  result := value1;
end;

function TMultiply.GetValue2: string;
begin
  result := value1;
end;

procedure TMultiply.SetValue1(Value: string);
begin
  value1 := Value;
end;

procedure TMultiply.SetValue2(Value: string);
begin
  value2 := Value;
end;

function TMultiply.simvol: string;
begin
  result := ' x';
end;

{ TMinus }

constructor TMinus.create(val: string);
begin
  self.val2 := '';
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
