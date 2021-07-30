object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'PDF Generator'
  ClientHeight = 200
  ClientWidth = 543
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 216
    Top = 16
    Width = 3
    Height = 13
  end
  object Label2: TLabel
    Left = 215
    Top = 45
    Width = 3
    Height = 13
  end
  object Label3: TLabel
    Left = 215
    Top = 77
    Width = 3
    Height = 13
  end
  object Label4: TLabel
    Left = 214
    Top = 107
    Width = 3
    Height = 13
  end
  object Label5: TLabel
    Left = 176
    Top = 141
    Width = 3
    Height = 13
  end
  object Label6: TLabel
    Left = 176
    Top = 172
    Width = 3
    Height = 13
  end
  object Button1: TButton
    Left = 8
    Top = 8
    Width = 153
    Height = 25
    Caption = 'Cria PDF SAT'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 40
    Width = 153
    Height = 25
    Caption = 'Cria PDF Cancelamento SAT'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 8
    Top = 71
    Width = 153
    Height = 25
    Caption = 'Cria PDF NFCe'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 176
    Top = 8
    Width = 33
    Height = 25
    Caption = '...'
    TabOrder = 3
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 176
    Top = 41
    Width = 33
    Height = 25
    Caption = '...'
    TabOrder = 4
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 176
    Top = 72
    Width = 33
    Height = 25
    Caption = '...'
    TabOrder = 5
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 8
    Top = 102
    Width = 153
    Height = 25
    Caption = 'Imprime PDF'
    TabOrder = 6
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 176
    Top = 104
    Width = 33
    Height = 25
    Caption = '...'
    TabOrder = 7
    OnClick = Button8Click
  end
  object Button9: TButton
    Left = 8
    Top = 136
    Width = 153
    Height = 25
    Caption = 'Configurar Diretorio Saida'
    TabOrder = 8
    OnClick = Button9Click
  end
  object Button10: TButton
    Left = 8
    Top = 167
    Width = 153
    Height = 25
    Caption = 'Imprime '#218'ltimo PDF Gerado'
    TabOrder = 9
    OnClick = Button10Click
  end
end
