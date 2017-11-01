unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type

  TOperation = class
  public
    value1, value2: string;
    function Exec(value1: string; value2: string): string; virtual; abstract;
  end;

  TSumm = class(TOperation)
  public
    value1, value2: string;
    function Exec(value1: string; value2: string): string; override;
  end;

  TMinus = class(TOperation)
  public
    value1, value2: string;
    function Exec(value1: string; value2: string): string; override;
  end;

  TMultiply = class(TOperation)
  public
    value1, value2: string;
    function Exec(value1: string; value2: string): string; override;
  end;

  TDivide = class(TOperation)
  public
    value1, value2: string;
    function Exec(value1: string; value2: string): string; override;
  end;

implementation

{ TSumm }

function TSumm.Exec(value1: string; value2: string): string;
begin
  result := inttostr(strtoint(value1) + strtoint(value2));
end;

{ TDivide }

function TDivide.Exec(value1, value2: string): string;
begin
  result := floattostr(strtoint(value1) / strtoint(value2));
end;

{ TMultiply }

function TMultiply.Exec(value1, value2: string): string;
begin
  result := inttostr(strtoint(value1) * strtoint(value2));
end;

{ TMinus }

function TMinus.Exec(value1, value2: string): string;
begin
  result := inttostr(strtoint(value1) - strtoint(value2));
end;

end.
