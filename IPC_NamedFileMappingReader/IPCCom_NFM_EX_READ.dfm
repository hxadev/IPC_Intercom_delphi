object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Reader'
  ClientHeight = 284
  ClientWidth = 505
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnShow = FormShow
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 505
    Height = 284
    Align = alClient
    Caption = 'Reading...'
    TabOrder = 0
    ExplicitLeft = 168
    ExplicitTop = 88
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Button1: TButton
      Left = 216
      Top = 184
      Width = 75
      Height = 25
      Caption = 'Read'
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 64
    Top = 32
  end
end
