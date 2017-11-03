unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  UController, Vcl.ExtCtrls;

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
    Controller: TController;
  public
  published
    constructor Create(AOwner: TComponent); override;
  end;

implementation

{$R *.dfm}

procedure TForm1.CancelClick(Sender: TObject);
begin
  Controller.Operation := nil;
  Edit1.text := '';
  Edit1.SetFocus;
end;

constructor TForm1.Create(AOwner: TComponent);
begin
  inherited;
  Controller := TController.Create;
end;

procedure TForm1.DivideClick(Sender: TObject);
begin
  Edit1.text := Controller.check(Edit1.text, Controller.Operation);
  Controller.Divide(Edit1.text);
  Label1.Caption := Controller.labelCaption;
  Edit1.SetFocus;
end;

procedure TForm1.SummClick(Sender: TObject);
begin
  Edit1.text := Controller.check(Edit1.text, Controller.Operation);
  Controller.Summ(Edit1.text);
  Label1.Caption := Controller.labelCaption;
  Edit1.SetFocus;
end;

procedure TForm1.EqualToClick(Sender: TObject);
begin
  if (Edit1.text <> '') then
  begin
    if Assigned(Controller.Operation) then
    begin
      Controller.Operation.val2 := Edit1.text;
      Edit1.text := Controller.Operation.Exec;
      Label1.Caption := Edit1.text;
      Controller.Operation := nil;
      Edit1.SetFocus;
    end;
  end;
end;

procedure TForm1.MinusClick(Sender: TObject);
begin
  Edit1.text := Controller.check(Edit1.text, Controller.Operation);
  Controller.Minus(Edit1.text);
  Label1.Caption := Controller.labelCaption;
  Edit1.SetFocus;
end;

procedure TForm1.MultiplyClick(Sender: TObject);
begin
  Edit1.text := Controller.check(Edit1.text, Controller.Operation);
  Controller.Multiply(Edit1.text);
  Label1.Caption := Controller.labelCaption;
  Edit1.SetFocus;
end;

end.
