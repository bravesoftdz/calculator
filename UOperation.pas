unit UOperation;

interface

uses
  System.SysUtils;

type

  TOperation = class
    // private
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

implementation

end.
