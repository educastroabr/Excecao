object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Controle de Exce'#231#227'o'
  ClientHeight = 202
  ClientWidth = 476
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object btnExcecao: TSpeedButton
    Left = 48
    Top = 40
    Width = 97
    Height = 33
    Cursor = crHandPoint
    Caption = 'Excecao'
    OnClick = btnExcecaoClick
  end
  object SpeedButton1: TSpeedButton
    Left = 160
    Top = 40
    Width = 97
    Height = 33
    Cursor = crHandPoint
    Caption = 'Try Excepet'
    OnClick = SpeedButton1Click
  end
  object SpeedButton2: TSpeedButton
    Left = 8
    Top = 161
    Width = 97
    Height = 33
    Cursor = crHandPoint
    Caption = 'Fechar'
    OnClick = SpeedButton2Click
  end
end
