object frmEfetuarPagamento: TfrmEfetuarPagamento
  Left = 0
  Top = 0
  AutoSize = True
  Caption = 'Efetuar Pagamento'
  ClientHeight = 113
  ClientWidth = 225
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 225
    Height = 113
    Caption = '3 - Efetuar Pagamento'
    TabOrder = 0
    object Label1: TLabel
      Left = 42
      Top = 24
      Width = 26
      Height = 13
      Caption = 'tPag:'
    end
    object Label2: TLabel
      Left = 40
      Top = 47
      Width = 28
      Height = 13
      Caption = 'vPag:'
    end
    object memoTpag: TMemo
      Left = 74
      Top = 22
      Width = 84
      Height = 17
      Lines.Strings = (
        '1')
      TabOrder = 0
    end
    object memoVpag: TMemo
      Left = 74
      Top = 46
      Width = 84
      Height = 17
      Lines.Strings = (
        '1.00')
      TabOrder = 1
    end
    object btnEfetuarPagamento: TButton
      Left = 27
      Top = 69
      Width = 107
      Height = 25
      Caption = 'Efetuar Pagamento'
      TabOrder = 2
      OnClick = btnEfetuarPagamentoClick
    end
    object btnJson: TButton
      Left = 140
      Top = 69
      Width = 75
      Height = 25
      Caption = 'Json'
      TabOrder = 3
      OnClick = btnJsonClick
    end
  end
end
