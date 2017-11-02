unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Unit2, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Summ: TButton;
    Minus: TButton;
    Multiply: TButton;
    Divide: TButton;
    EqualTo: TButton;
    Cancel: TButton;
    Label1: TLabel;
    Panel1: TPanel;
    procedure SummClick(Sender: TObject);
    procedure MinusClick(Sender: TObject);
    procedure MultiplyClick(Sender: TObject);
    procedure DivideClick(Sender: TObject);
    procedure EqualToClick(Sender: TObject);
    procedure CancelClick(Sender: TObject);
  private
  public
    function check(text: string; Operation: TOperation): string;
  published
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

function TForm1.check(text: string; Operation: TOperation): string;
begin
  if (text <> '') then
  begin
    if Assigned(Operation) then
    begin
      Operation.val2 := text;
      text := Operation.Exec;
      Label1.Caption := text+Operation.simvol;
      Operation := nil;
    end;
  end;
  //Edit1.SetFocus;
  result := text;
end;

procedure TForm1.DivideClick(Sender: TObject);
begin
  Edit1.text := check(Edit1.text, Operation);
  Operation := TDivide.create(Edit1.text);
  Edit1.SetFocus;
end;

procedure TForm1.SummClick(Sender: TObject);
begin
  Edit1.text := check(Edit1.text, Operation);
  Operation := TSumm.create(Edit1.text);
  Edit1.SetFocus;
end;

procedure TForm1.EqualToClick(Sender: TObject);
begin
  if Assigned(Operation) then
  begin
    Operation.val2 := Edit1.text;
    Edit1.text := Operation.Exec;
    Label1.Caption := Edit1.text;
    Operation := nil;
    Edit1.SetFocus;
  end;
end;

procedure TForm1.MinusClick(Sender: TObject);
begin
  Edit1.text := check(Edit1.text, Operation);
  Operation := TMinus.create(Edit1.text);
  Edit1.SetFocus;
end;

procedure TForm1.MultiplyClick(Sender: TObject);
begin
  Edit1.text := check(Edit1.text, Operation);
  Operation := TMultiply.create(Edit1.text);
  Edit1.SetFocus;
end;

end.
