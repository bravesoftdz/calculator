object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Calculator'
  ClientHeight = 311
  ClientWidth = 643
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Edit1: TEdit
    Left = 183
    Top = 96
    Width = 156
    Height = 21
    BiDiMode = bdRightToLeft
    ParentBiDiMode = False
    TabOrder = 0
  end
  object Summ: TButton
    Left = 183
    Top = 123
    Width = 75
    Height = 25
    Caption = '+'
    TabOrder = 1
    OnClick = SummClick
  end
  object Minus: TButton
    Left = 183
    Top = 154
    Width = 75
    Height = 25
    Caption = '-'
    TabOrder = 2
    OnClick = MinusClick
  end
  object Multiply: TButton
    Left = 264
    Top = 123
    Width = 75
    Height = 25
    Caption = 'x'
    TabOrder = 3
    OnClick = MultiplyClick
  end
  object Divide: TButton
    Left = 264
    Top = 154
    Width = 75
    Height = 25
    Caption = '/'
    TabOrder = 4
    OnClick = DivideClick
  end
  object EqualTo: TButton
    Left = 345
    Top = 96
    Width = 25
    Height = 83
    Caption = '='
    TabOrder = 5
    OnClick = EqualToClick
  end
  object Cancel: TButton
    Left = 152
    Top = 96
    Width = 25
    Height = 83
    Caption = 'C'
    TabOrder = 6
    OnClick = CancelClick
  end
end
