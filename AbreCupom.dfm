object frmAbreCupom: TfrmAbreCupom
  Left = 0
  Top = 0
  AutoSize = True
  BorderStyle = bsDialog
  Caption = 'Abre Cupom'
  ClientHeight = 505
  ClientWidth = 233
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
    Width = 233
    Height = 505
    Caption = '1 - Abertura de Cupom'
    TabOrder = 0
    object Label3: TLabel
      Left = 31
      Top = 42
      Width = 29
      Height = 13
      Caption = 'CNPJ:'
    end
    object Label4: TLabel
      Left = 5
      Top = 63
      Width = 55
      Height = 13
      Caption = 'Nro. Caixa:'
    end
    object Label5: TLabel
      Left = 23
      Top = 88
      Width = 37
      Height = 13
      Caption = 'signAC:'
    end
    object Label6: TLabel
      Left = 32
      Top = 133
      Width = 29
      Height = 13
      Caption = 'CNPJ:'
    end
    object Label7: TLabel
      Left = 46
      Top = 157
      Width = 14
      Height = 13
      Caption = 'IE:'
    end
    object Label8: TLabel
      Left = -2
      Top = 178
      Width = 66
      Height = 13
      Caption = 'indRatISSQN:'
    end
    object Label9: TLabel
      Left = 38
      Top = 240
      Width = 23
      Height = 13
      Caption = 'CPF:'
    end
    object Label11: TLabel
      Left = 43
      Top = 354
      Width = 20
      Height = 13
      Caption = 'nro:'
    end
    object Label12: TLabel
      Left = 39
      Top = 307
      Width = 23
      Height = 13
      Caption = 'CPF:'
    end
    object Label13: TLabel
      Left = 39
      Top = 331
      Width = 25
      Height = 13
      Caption = 'XLgr:'
    end
    object Label14: TLabel
      Left = 37
      Top = 383
      Width = 25
      Height = 13
      Caption = 'XCpl:'
    end
    object Label15: TLabel
      Left = 31
      Top = 402
      Width = 38
      Height = 13
      Caption = 'XBairro:'
    end
    object Label16: TLabel
      Left = 35
      Top = 427
      Width = 30
      Height = 13
      Caption = 'xMun:'
    end
    object Label17: TLabel
      Left = 48
      Top = 450
      Width = 17
      Height = 13
      Caption = 'UF:'
    end
    object Label10: TLabel
      Left = 30
      Top = 259
      Width = 31
      Height = 13
      Caption = 'Nome:'
    end
    object Label18: TLabel
      Left = 3
      Top = 20
      Width = 77
      Height = 13
      Caption = 'Identifica'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label19: TLabel
      Left = 3
      Top = 112
      Width = 54
      Height = 13
      Caption = 'Emitente:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label20: TLabel
      Left = 3
      Top = 216
      Width = 73
      Height = 13
      Caption = 'Destinat'#225'rio:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label21: TLabel
      Left = 3
      Top = 288
      Width = 47
      Height = 13
      Caption = 'Entrega:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object memoIdentCnpj: TMemo
      Left = 66
      Top = 39
      Width = 137
      Height = 17
      Lines.Strings = (
        '16716114000172')
      TabOrder = 0
      WordWrap = False
    end
    object memoEmitCnpj: TMemo
      Left = 67
      Top = 131
      Width = 137
      Height = 18
      Lines.Strings = (
        '82373077000171')
      TabOrder = 1
      WordWrap = False
    end
    object memoDestCPF: TMemo
      Left = 67
      Top = 235
      Width = 137
      Height = 18
      Lines.Strings = (
        '65828625292')
      TabOrder = 2
      WordWrap = False
    end
    object memoEntCPF: TMemo
      Left = 68
      Top = 307
      Width = 137
      Height = 18
      Lines.Strings = (
        '65828625292')
      TabOrder = 3
      WordWrap = False
    end
    object memoEntxCpl: TMemo
      Left = 68
      Top = 379
      Width = 137
      Height = 17
      Lines.Strings = (
        'APTO 666')
      TabOrder = 4
      WordWrap = False
    end
    object memoEntxMun: TMemo
      Left = 69
      Top = 426
      Width = 137
      Height = 18
      Lines.Strings = (
        'Curitiba')
      TabOrder = 5
      WordWrap = False
    end
    object memoIdentNroCaixa: TMemo
      Left = 66
      Top = 64
      Width = 137
      Height = 18
      Lines.Strings = (
        '001')
      TabOrder = 6
      WordWrap = False
    end
    object memoEmitIE: TMemo
      Left = 66
      Top = 155
      Width = 137
      Height = 17
      Lines.Strings = (
        '111111111111')
      TabOrder = 7
      WordWrap = False
    end
    object memoDestNome: TMemo
      Left = 67
      Top = 259
      Width = 137
      Height = 17
      Lines.Strings = (
        'Paulo Grossmann')
      TabOrder = 8
      WordWrap = False
    end
    object memoEntXLgr: TMemo
      Left = 68
      Top = 331
      Width = 137
      Height = 18
      Lines.Strings = (
        'Rua Abc')
      TabOrder = 9
      WordWrap = False
    end
    object memoEntBairro: TMemo
      Left = 68
      Top = 402
      Width = 136
      Height = 18
      Lines.Strings = (
        'Teste')
      TabOrder = 10
      WordWrap = False
    end
    object memoEntUF: TMemo
      Left = 69
      Top = 450
      Width = 136
      Height = 18
      Lines.Strings = (
        'PR')
      TabOrder = 11
      WordWrap = False
    end
    object memoIdentSignAC: TMemo
      Left = 66
      Top = 88
      Width = 137
      Height = 18
      Lines.Strings = (
        'SGR-SAT SISTEMA DE '
        'GESTAO E RETAGUARDA '
        'DO SAT')
      TabOrder = 12
      WordWrap = False
    end
    object memoEmitIndRat: TMemo
      Left = 67
      Top = 178
      Width = 136
      Height = 18
      Lines.Strings = (
        'S')
      TabOrder = 13
      WordWrap = False
    end
    object memoEntNro: TMemo
      Left = 69
      Top = 355
      Width = 136
      Height = 18
      Lines.Strings = (
        '0')
      TabOrder = 14
      WordWrap = False
    end
    object btnAbrirCupom: TButton
      Left = 91
      Top = 474
      Width = 72
      Height = 25
      Caption = 'Abrir Cupom'
      TabOrder = 15
      OnClick = btnAbrirCupomClick
    end
    object btnJson: TButton
      Left = 169
      Top = 474
      Width = 35
      Height = 25
      Caption = 'JSon'
      TabOrder = 16
      OnClick = btnJsonClick
    end
  end
end
