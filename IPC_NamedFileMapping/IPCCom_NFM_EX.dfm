object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Windows Producer'
  ClientHeight = 212
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 628
    Height = 212
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 296
    ExplicitTop = 192
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Label1: TLabel
      Left = 32
      Top = 72
      Width = 68
      Height = 21
      Caption = 'Message: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object edtContent: TMemo
      Left = 120
      Top = 40
      Width = 473
      Height = 89
      Lines.Strings = (
        'edtContent')
      TabOrder = 0
    end
    object Button1: TButton
      Left = 366
      Top = 152
      Width = 75
      Height = 25
      Caption = 'Clear'
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 240
      Top = 152
      Width = 75
      Height = 25
      Caption = 'Send'
      TabOrder = 2
      OnClick = Button2Click
    end
  end
end
