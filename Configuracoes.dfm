object frmConfiguracoes: TfrmConfiguracoes
  Left = 0
  Top = 0
  Caption = 'Configura'#231#245'es do Sistema'
  ClientHeight = 625
  ClientWidth = 436
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
  object Label1: TLabel
    Left = 89
    Top = 17
    Width = 71
    Height = 13
    Caption = 'Utilizar Proxy ?'
  end
  object Label2: TLabel
    Left = 94
    Top = 40
    Width = 66
    Height = 13
    Caption = 'Imprimir logo?'
  end
  object Label3: TLabel
    Left = 58
    Top = 59
    Width = 102
    Height = 13
    Caption = 'Porta da Impressora:'
  end
  object Label4: TLabel
    Left = 96
    Top = 81
    Width = 64
    Height = 13
    Caption = 'Raz'#227'o Social:'
  end
  object Label5: TLabel
    Left = 70
    Top = 103
    Width = 86
    Height = 13
    Caption = 'Usu'#225'rio do Proxy:'
  end
  object Label6: TLabel
    Left = 10
    Top = 126
    Width = 150
    Height = 13
    Caption = 'Valida'#231#227'o dos Dados de Venda:'
  end
  object Label7: TLabel
    Left = 20
    Top = 148
    Width = 140
    Height = 13
    Caption = 'Caminho do arquivo de Logo:'
  end
  object Label8: TLabel
    Left = 95
    Top = 171
    Width = 65
    Height = 13
    Caption = 'Porta da API:'
  end
  object Label9: TLabel
    Left = 109
    Top = 194
    Width = 51
    Height = 13
    Caption = 'Id do PDV:'
  end
  object Label10: TLabel
    Left = 77
    Top = 215
    Width = 81
    Height = 13
    Caption = 'Imprimir Extrato:'
  end
  object Label11: TLabel
    Left = 85
    Top = 236
    Width = 73
    Height = 13
    Caption = 'Cust'#243'dia Local:'
  end
  object Label12: TLabel
    Left = 103
    Top = 259
    Width = 55
    Height = 13
    Caption = 'Fabricante:'
  end
  object Label13: TLabel
    Left = 84
    Top = 315
    Width = 76
    Height = 13
    Caption = 'Porta do Proxy:'
  end
  object Label14: TLabel
    Left = 89
    Top = 341
    Width = 71
    Height = 13
    Caption = 'Senha do SAT:'
  end
  object Label15: TLabel
    Left = 88
    Top = 362
    Width = 72
    Height = 13
    Caption = 'Host do Proxy:'
  end
  object Label16: TLabel
    Left = 39
    Top = 384
    Width = 121
    Height = 13
    Caption = 'Cortar a cada impress'#227'o:'
  end
  object Label17: TLabel
    Left = 24
    Top = 406
    Width = 136
    Height = 13
    Caption = 'Custodiar Documento Fiscal:'
  end
  object Label18: TLabel
    Left = 57
    Top = 429
    Width = 103
    Height = 13
    Caption = 'Impressora MP-2500:'
  end
  object Label19: TLabel
    Left = 64
    Top = 451
    Width = 96
    Height = 13
    Caption = 'Porta Serial do SAT:'
  end
  object Label20: TLabel
    Left = 73
    Top = 471
    Width = 87
    Height = 13
    Caption = 'Dom'#237'nio do Proxy:'
  end
  object Label21: TLabel
    Left = 28
    Top = 494
    Width = 132
    Height = 13
    Caption = 'Ambiente de Homologa'#231#227'o?'
  end
  object Label22: TLabel
    Left = 80
    Top = 516
    Width = 80
    Height = 13
    Caption = 'Senha do Proxy:'
  end
  object Label23: TLabel
    Left = 131
    Top = 542
    Width = 29
    Height = 13
    Caption = 'CNPJ:'
  end
  object Label24: TLabel
    Left = 144
    Top = 564
    Width = 14
    Height = 13
    Caption = 'IE:'
  end
  object Label25: TLabel
    Left = 36
    Top = 288
    Width = 122
    Height = 13
    Caption = 'Imprimir logo a Esquerda:'
  end
  object memoProxy: TMemo
    Left = 166
    Top = 14
    Width = 262
    Height = 19
    TabOrder = 0
  end
  object memoImpLogo: TMemo
    Left = 166
    Top = 38
    Width = 262
    Height = 19
    TabOrder = 1
  end
  object memoPortaImpressora: TMemo
    Left = 166
    Top = 58
    Width = 262
    Height = 19
    TabOrder = 2
  end
  object memoRazaoSocial: TMemo
    Left = 166
    Top = 80
    Width = 262
    Height = 19
    TabOrder = 3
  end
  object memoUsuarioProxy: TMemo
    Left = 166
    Top = 101
    Width = 262
    Height = 19
    TabOrder = 4
  end
  object memoValidacaoDadosVenda: TMemo
    Left = 166
    Top = 124
    Width = 262
    Height = 19
    TabOrder = 5
  end
  object memoCaminhoArquivoLogo: TMemo
    Left = 166
    Top = 146
    Width = 262
    Height = 19
    TabOrder = 6
  end
  object memoPortaApi: TMemo
    Left = 166
    Top = 169
    Width = 262
    Height = 19
    TabOrder = 7
  end
  object memoIdPdv: TMemo
    Left = 166
    Top = 190
    Width = 262
    Height = 19
    TabOrder = 8
  end
  object memoImprimirExtrato: TMemo
    Left = 164
    Top = 211
    Width = 264
    Height = 19
    TabOrder = 9
  end
  object memoCustodiaLocal: TMemo
    Left = 164
    Top = 234
    Width = 264
    Height = 19
    TabOrder = 10
  end
  object memoFabricante: TMemo
    Left = 164
    Top = 257
    Width = 264
    Height = 19
    TabOrder = 11
  end
  object memoPortaProxy: TMemo
    Left = 166
    Top = 312
    Width = 262
    Height = 19
    TabOrder = 12
  end
  object memoSenhaSat: TMemo
    Left = 166
    Top = 337
    Width = 262
    Height = 19
    TabOrder = 13
  end
  object memoHostProxy: TMemo
    Left = 166
    Top = 359
    Width = 262
    Height = 19
    TabOrder = 14
  end
  object memoCortarImpressao: TMemo
    Left = 166
    Top = 381
    Width = 262
    Height = 19
    TabOrder = 15
  end
  object memoCustodiarDocumento: TMemo
    Left = 166
    Top = 403
    Width = 262
    Height = 19
    TabOrder = 16
  end
  object memoImpressora2500: TMemo
    Left = 166
    Top = 426
    Width = 262
    Height = 19
    TabOrder = 17
  end
  object memoPortaDoSat: TMemo
    Left = 166
    Top = 448
    Width = 262
    Height = 19
    TabOrder = 18
  end
  object memoDominiodoProxy: TMemo
    Left = 166
    Top = 469
    Width = 262
    Height = 19
    TabOrder = 19
  end
  object memoAmbienteDeHomologacao: TMemo
    Left = 166
    Top = 491
    Width = 262
    Height = 19
    TabOrder = 20
  end
  object memoSenhaDoProxy: TMemo
    Left = 166
    Top = 515
    Width = 262
    Height = 19
    TabOrder = 21
  end
  object memoCnpj: TMemo
    Left = 166
    Top = 538
    Width = 262
    Height = 19
    TabOrder = 22
  end
  object memoIe: TMemo
    Left = 164
    Top = 563
    Width = 264
    Height = 19
    TabOrder = 23
  end
  object btnLerParametros: TButton
    Left = 150
    Top = 588
    Width = 107
    Height = 25
    Caption = 'Ler Configura'#231#245'es'
    TabOrder = 24
    OnClick = btnLerParametrosClick
  end
  object btnGravarConfiguracoes: TButton
    Left = 263
    Top = 588
    Width = 116
    Height = 25
    Caption = 'Gravar Configura'#231#245'es'
    TabOrder = 25
    OnClick = btnGravarConfiguracoesClick
  end
  object btnJson: TButton
    Left = 385
    Top = 588
    Width = 43
    Height = 25
    Caption = 'Json'
    TabOrder = 26
    OnClick = btnJsonClick
  end
  object memoLogoEsquerda: TMemo
    Left = 164
    Top = 286
    Width = 264
    Height = 19
    TabOrder = 27
  end
end
