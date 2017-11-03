program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1} ,
  UController in 'UController.pas',
  UOperation in 'UOperation.pas',
  USumm in 'USumm.pas',
  UMinus in 'UMinus.pas',
  UMultiply in 'UMultiply.pas',
  UDivide in 'UDivide.pas';

{$R *.res}

var
  Form1: TForm1;

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;

end.
