unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Unit2;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Summ: TButton;
    Minus: TButton;
    Multiply: TButton;
    Divide: TButton;
    EqualTo: TButton;
    Cancel: TButton;
    procedure SummClick(Sender: TObject);
    procedure MinusClick(Sender: TObject);
    procedure MultiplyClick(Sender: TObject);
    procedure DivideClick(Sender: TObject);
    procedure EqualToClick(Sender: TObject);
    procedure CancelClick(Sender: TObject);
  private
  public
  end;

implementation

{$R *.dfm}

var
  Operation: TOperation;

procedure TForm1.CancelClick(Sender: TObject);
begin
  Operation := nil;
  Edit1.text := '';
  Edit1.SetFocus;
end;

procedure TForm1.DivideClick(Sender: TObject);
begin
  if (Edit1.text <> '') then
  begin
    if not Assigned(Operation) then
    begin
      Operation := TDivide.create;
      Operation.val1 := Edit1.text;
    end
    else
    begin
      Operation.val2 := Edit1.text;
      Edit1.text := Operation.Exec;
      Operation := nil;
      Operation := TDivide.create;
      Operation.val1 := Edit1.text;
    end;
  end;
  Edit1.SetFocus;
end;

procedure TForm1.SummClick(Sender: TObject);
begin
  if (Edit1.text <> '') then
  begin
    if not Assigned(Operation) then
    begin
      Operation := TSumm.create;
      Operation.val1 := Edit1.text;
    end
    else
    begin
      Operation.val2 := Edit1.text;
      Edit1.text := Operation.Exec;
      Operation := nil;
      Operation := TSumm.create;
      Operation.val1 := Edit1.text;

    end;
  end;
  Edit1.SetFocus;
end;

procedure TForm1.EqualToClick(Sender: TObject);
begin
  if Assigned(Operation) then
  begin
    Operation.val2 := Edit1.text;
    Edit1.text := Operation.Exec;
    Operation.Free;
  end;
  Edit1.SetFocus;
end;

procedure TForm1.MinusClick(Sender: TObject);
begin
  if (Edit1.text <> '') then
  begin
    if not Assigned(Operation) then
    begin
      Operation := TMinus.create;
      Operation.val1 := Edit1.text;
    end
    else
    begin
      Operation.val2 := Edit1.text;
      Edit1.text := Operation.Exec;
      Operation := nil;
      Operation := TMinus.create;
      Operation.val1 := Edit1.text;
    end;
  end;
  Edit1.SetFocus;
end;

procedure TForm1.MultiplyClick(Sender: TObject);
begin
  if (Edit1.text <> '') then
  begin
    if not Assigned(Operation) then
    begin
      Operation := TMultiply.create;
      Operation.val1 := Edit1.text;
    end
    else
    begin
      Operation.val2 := Edit1.text;
      Edit1.text := Operation.Exec;
      Operation := nil;
      Operation := TMultiply.create;
      Operation.val1 := Edit1.text;
    end;
  end;
  Edit1.SetFocus;
end;

end.
