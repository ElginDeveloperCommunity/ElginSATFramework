object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Form1'
  ClientHeight = 411
  ClientWidth = 418
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox2: TGroupBox
    Left = 5
    Top = 265
    Width = 402
    Height = 129
    Caption = 'Cancelamento'
    TabOrder = 0
    object Button1: TButton
      Left = 3
      Top = 82
      Width = 185
      Height = 25
      Caption = 'Processa Cancelamento'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 3
      Top = 55
      Width = 375
      Height = 21
      TabOrder = 1
      TextHint = 'Chave de acesso cupom venda'
    end
    object Button4: TButton
      Left = 3
      Top = 24
      Width = 185
      Height = 25
      Caption = 'Gera XML Cancelamento'
      TabOrder = 2
      OnClick = Button4Click
    end
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 399
    Height = 81
    Caption = 'Venda'
    TabOrder = 1
    object Button3: TButton
      Left = 3
      Top = 24
      Width = 182
      Height = 25
      Caption = 'Gera XML Venda'
      TabOrder = 0
      OnClick = Button3Click
    end
    object Button2: TButton
      Left = 191
      Top = 24
      Width = 184
      Height = 25
      Caption = 'Processa Venda'
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object GroupBox3: TGroupBox
    Left = 5
    Top = 96
    Width = 402
    Height = 163
    Caption = 'Venda modelo 2'
    TabOrder = 2
    object Label1: TLabel
      Left = 16
      Top = 88
      Width = 362
      Height = 13
      AutoSize = False
      Caption = '.'
      EllipsisPosition = epWordEllipsis
    end
    object Edit2: TEdit
      Left = 16
      Top = 29
      Width = 329
      Height = 21
      TabOrder = 0
      TextHint = 'Caminho para cria'#231#227'o arquivos: ./'
    end
    object Button5: TButton
      Left = 16
      Top = 56
      Width = 362
      Height = 25
      Caption = 'Gera XML Venda'
      TabOrder = 1
      OnClick = Button5Click
    end
    object Button6: TButton
      Left = 16
      Top = 112
      Width = 362
      Height = 25
      Caption = 'Processa Venda'
      TabOrder = 2
      OnClick = Button6Click
    end
    object Button7: TButton
      Left = 351
      Top = 32
      Width = 27
      Height = 18
      Caption = '...'
      TabOrder = 3
      OnClick = Button7Click
    end
  end
end
