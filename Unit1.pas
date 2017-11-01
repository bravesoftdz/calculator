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
  Edit1.text := '';
  Edit1.SetFocus;
end;

procedure TForm1.DivideClick(Sender: TObject);
begin
  Operation := TDivide.create;
  Operation.value1 := Edit1.text;
  Edit1.text := '';
  Edit1.SetFocus;
end;

procedure TForm1.EqualToClick(Sender: TObject);
begin
  Operation.value2 := Edit1.text;
  Edit1.text := Operation.Exec(Operation.value1, Operation.value2);
  Operation.Free;
  Edit1.SetFocus;
end;

procedure TForm1.MinusClick(Sender: TObject);
begin
  Operation := TMinus.create;
  Operation.value1 := Edit1.text;
  Edit1.text := '';
  Edit1.SetFocus;
end;

procedure TForm1.MultiplyClick(Sender: TObject);
begin
  Operation := TMultiply.create;
  Operation.value1 := Edit1.text;
  Edit1.text := '';
  Edit1.SetFocus;
end;

procedure TForm1.SummClick(Sender: TObject);
begin
  Operation := TSumm.create;
  Operation.value1 := Edit1.text;
  Edit1.text := '';
  Edit1.SetFocus;
end;

end.
