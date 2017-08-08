object frmFecharcupom: TfrmFecharcupom
  Left = 0
  Top = 0
  AutoSize = True
  Caption = 'Fechar Cupom'
  ClientHeight = 153
  ClientWidth = 329
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
    Width = 329
    Height = 153
    Caption = '4 - Fechar Cupom'
    TabOrder = 0
    object Label1: TLabel
      Left = 94
      Top = 24
      Width = 32
      Height = 13
      Caption = 'Total:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 54
      Top = 43
      Width = 72
      Height = 13
      Caption = 'vCFeLei12741:'
    end
    object Label3: TLabel
      Left = 3
      Top = 70
      Width = 123
      Height = 13
      Caption = 'Informacao Adicional:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 95
      Top = 89
      Width = 31
      Height = 13
      Caption = 'infCpl:'
    end
    object btnFecharCupom: TButton
      Left = 153
      Top = 113
      Width = 83
      Height = 25
      Caption = 'Fechar Cupom'
      TabOrder = 0
      OnClick = btnFecharCupomClick
    end
    object memoInfAdicionalInfCpl: TMemo
      Left = 132
      Top = 86
      Width = 185
      Height = 21
      Lines.Strings = (
        'Sequencia 003 Nota sem Cliente')
      TabOrder = 1
    end
    object memoTotalvCFLei12741: TMemo
      Left = 132
      Top = 40
      Width = 185
      Height = 21
      Lines.Strings = (
        '0.00')
      TabOrder = 2
    end
    object btnJson: TButton
      Left = 242
      Top = 113
      Width = 75
      Height = 25
      Caption = 'Json'
      TabOrder = 3
      OnClick = btnJsonClick
    end
  end
end
