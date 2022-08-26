object campo: Tcampo
  Left = 358
  Top = 179
  Width = 800
  Height = 500
  Caption = 'PONG'
  Color = clBlack
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 14
  object bola: TPanel
    Left = 376
    Top = 200
    Width = 25
    Height = 25
    Color = clWhite
    TabOrder = 0
  end
  object player1: TPanel
    Left = 728
    Top = 160
    Width = 25
    Height = 129
    Color = clWhite
    TabOrder = 1
  end
  object moverDireita: TTimer
    Interval = 20
    OnTimer = moverDireitaTimer
    Left = 64
    Top = 24
  end
  object MoverEsquerda: TTimer
    Enabled = False
    Interval = 20
    OnTimer = MoverEsquerdaTimer
    Left = 112
    Top = 24
  end
end
