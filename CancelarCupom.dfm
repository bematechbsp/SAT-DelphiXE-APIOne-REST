object frmCancelarCupom: TfrmCancelarCupom
  Left = 0
  Top = 0
  AutoSize = True
  Caption = 'Cancelar Cupom'
  ClientHeight = 233
  ClientWidth = 473
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = inicializaComponentes
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 473
    Height = 233
    Caption = '5 - Cancelar Cupom'
    TabOrder = 0
    object Label1: TLabel
      Left = 48
      Top = 24
      Width = 56
      Height = 13
      Caption = 'Id (Chave):'
    end
    object Label2: TLabel
      Left = 43
      Top = 43
      Width = 61
      Height = 13
      Caption = 'Justificativa:'
    end
    object Label3: TLabel
      Left = 27
      Top = 70
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
    object Label4: TLabel
      Left = 75
      Top = 89
      Width = 29
      Height = 13
      Caption = 'CNPJ:'
    end
    object Label5: TLabel
      Left = 18
      Top = 111
      Width = 86
      Height = 13
      Caption = 'N'#250'mero do Caixa:'
    end
    object Label6: TLabel
      Left = 67
      Top = 131
      Width = 37
      Height = 13
      Caption = 'signAC:'
    end
    object Label7: TLabel
      Left = 83
      Top = 153
      Width = 21
      Height = 13
      Caption = 'Cpf:'
    end
    object Label8: TLabel
      Left = 73
      Top = 173
      Width = 31
      Height = 13
      Caption = 'Nome:'
    end
    object memoId: TMemo
      Left = 110
      Top = 21
      Width = 355
      Height = 17
      Lines.Strings = (
        '<chave>')
      TabOrder = 0
    end
    object memoxJust: TMemo
      Left = 110
      Top = 44
      Width = 355
      Height = 20
      Lines.Strings = (
        'Teste')
      TabOrder = 1
    end
    object memoCnpj: TMemo
      Left = 110
      Top = 86
      Width = 355
      Height = 19
      Lines.Strings = (
        '16716114000172')
      TabOrder = 2
    end
    object memoNumeroCaixa: TMemo
      Left = 110
      Top = 108
      Width = 355
      Height = 17
      Lines.Strings = (
        '001')
      TabOrder = 3
    end
    object memoSignAc: TMemo
      Left = 110
      Top = 130
      Width = 355
      Height = 17
      Lines.Strings = (
        'SGR-SAT SISTEMA DE GESTAO E RETAGUARDA DO SAT')
      TabOrder = 4
    end
    object memoCpf: TMemo
      Left = 110
      Top = 150
      Width = 355
      Height = 17
      Lines.Strings = (
        '65828625292')
      TabOrder = 5
    end
    object memoNome: TMemo
      Left = 110
      Top = 173
      Width = 355
      Height = 17
      Lines.Strings = (
        'Paulo Grossmann')
      TabOrder = 6
    end
    object btnCancelarCupom: TButton
      Left = 287
      Top = 196
      Width = 97
      Height = 25
      Caption = 'Cancelar Cupom'
      TabOrder = 7
      OnClick = btnCancelarCupomClick
    end
    object btnJson: TButton
      Left = 390
      Top = 196
      Width = 75
      Height = 25
      Caption = 'Json'
      TabOrder = 8
      OnClick = btnJsonClick
    end
  end
end
