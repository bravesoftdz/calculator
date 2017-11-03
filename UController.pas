unit UController;

interface

uses
  UOperation, UDivide, UMultiply, UMinus, USumm;

type

  TController = class
  private
  public
    labelCaption: string;
    Operation: TOperation;
    function check(text: string; Operation: TOperation): string;
    procedure Summ(text: string);
    procedure Minus(text: string);
    procedure Multiply(text: string);
    procedure Divide(text: string);
  end;

implementation

{ TController }

function TController.check(text: string; Operation: TOperation): string;
begin
  if (text <> '') then
  begin
    if Assigned(Operation) then
    begin
      Operation.val2 := text;
      text := Operation.Exec;
      labelCaption := text + Operation.simvol;
      Operation := nil;
    end;
  end;
  // Edit1.SetFocus;
  result := text;
end;

procedure TController.Divide(text: string);
begin
  Operation := TDivide.create(text);
end;

procedure TController.Minus(text: string);
begin
  Operation := TMinus.create(text);
end;

procedure TController.Multiply(text: string);
begin
  Operation := TMultiply.create(text);
end;

procedure TController.Summ(text: string);
begin
  Operation := TSumm.create(text);
end;

end.
