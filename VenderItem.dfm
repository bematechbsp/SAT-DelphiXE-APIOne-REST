object frmVenderItem: TfrmVenderItem
  Left = 0
  Top = 0
  AutoSize = True
  Caption = 'Vender Item'
  ClientHeight = 721
  ClientWidth = 257
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
  object GroupBox3: TGroupBox
    Left = 0
    Top = 0
    Width = 257
    Height = 721
    Caption = '2 - Venda de Item'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = ','
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 3
      Top = 24
      Width = 47
      Height = 14
      Caption = 'Produto:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = ','
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 3
      Top = 481
      Width = 49
      Height = 14
      Caption = 'Imposto:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = ','
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 32
      Top = 501
      Width = 43
      Height = 14
      Caption = 'ICMS00:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = ','
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 32
      Top = 590
      Width = 50
      Height = 14
      Caption = 'Cofinsnt:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = ','
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 32
      Top = 633
      Width = 31
      Height = 14
      Caption = 'Pisnt:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = ','
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 31
      Top = 44
      Width = 27
      Height = 14
      Caption = 'cean:'
    end
    object Label7: TLabel
      Left = 35
      Top = 67
      Width = 23
      Height = 14
      Caption = 'ncm:'
    end
    object Label8: TLabel
      Left = 33
      Top = 89
      Width = 25
      Height = 14
      Caption = 'cfop:'
    end
    object Label9: TLabel
      Left = 27
      Top = 113
      Width = 31
      Height = 14
      Caption = 'indTot:'
    end
    object Label10: TLabel
      Left = 15
      Top = 139
      Width = 43
      Height = 14
      Caption = 'vUnCom:'
    end
    object Label11: TLabel
      Left = 22
      Top = 185
      Width = 40
      Height = 14
      Caption = 'vUnTrib:'
    end
    object Label12: TLabel
      Left = 27
      Top = 208
      Width = 31
      Height = 14
      Caption = 'cProd:'
    end
    object Label13: TLabel
      Left = 27
      Top = 231
      Width = 31
      Height = 14
      Caption = 'xProd:'
    end
    object Label14: TLabel
      Left = 28
      Top = 254
      Width = 30
      Height = 14
      Caption = 'uCom:'
    end
    object Label15: TLabel
      Left = 31
      Top = 277
      Width = 27
      Height = 14
      Caption = 'qTrib:'
    end
    object Label16: TLabel
      Left = 28
      Top = 303
      Width = 30
      Height = 14
      Caption = 'qCom:'
    end
    object Label17: TLabel
      Left = 27
      Top = 326
      Width = 31
      Height = 14
      Caption = 'vProd:'
    end
    object Label18: TLabel
      Left = 12
      Top = 349
      Width = 46
      Height = 14
      Caption = 'indRegra:'
    end
    object Label19: TLabel
      Left = 24
      Top = 372
      Width = 34
      Height = 14
      Caption = 'vDesc:'
    end
    object Label20: TLabel
      Left = 22
      Top = 395
      Width = 36
      Height = 14
      Caption = 'vOutro:'
    end
    object Label21: TLabel
      Left = 28
      Top = 415
      Width = 30
      Height = 14
      Caption = 'qCom:'
    end
    object Label22: TLabel
      Left = 0
      Top = 441
      Width = 58
      Height = 14
      Caption = 'vItem12741:'
    end
    object Label23: TLabel
      Left = 30
      Top = 461
      Width = 28
      Height = 14
      Caption = 'nItem:'
    end
    object Label24: TLabel
      Left = 31
      Top = 162
      Width = 27
      Height = 14
      Caption = 'uTrib:'
    end
    object Label25: TLabel
      Left = 37
      Top = 521
      Width = 21
      Height = 14
      Caption = 'orig:'
    end
    object Label26: TLabel
      Left = 40
      Top = 544
      Width = 18
      Height = 14
      Caption = 'cst:'
    end
    object Label27: TLabel
      Left = 27
      Top = 570
      Width = 31
      Height = 14
      Caption = 'picms:'
    end
    object Label28: TLabel
      Left = 40
      Top = 610
      Width = 18
      Height = 14
      Caption = 'cst:'
    end
    object Label29: TLabel
      Left = 40
      Top = 653
      Width = 18
      Height = 14
      Caption = 'cst:'
    end
    object btnVenderItem: TButton
      Left = 93
      Top = 679
      Width = 75
      Height = 25
      Caption = 'Vender Item'
      TabOrder = 0
      OnClick = btnVenderItemClick
    end
    object MemoProdCean: TMemo
      Left = 64
      Top = 42
      Width = 185
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MemoProdCean'
      Font.Style = []
      Lines.Strings = (
        '7897238304177')
      ParentFont = False
      TabOrder = 1
    end
    object memoProdNcm: TMemo
      Left = 64
      Top = 67
      Width = 185
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'memoProdNcm'
      Font.Style = []
      Lines.Strings = (
        '12345678')
      ParentFont = False
      TabOrder = 2
    end
    object MemoProdCfop: TMemo
      Left = 64
      Top = 90
      Width = 185
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MemoPrdCfop'
      Font.Style = []
      Lines.Strings = (
        '5101')
      ParentFont = False
      TabOrder = 3
    end
    object MemoProdIndTot: TMemo
      Left = 64
      Top = 114
      Width = 185
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MemoProdIndTot'
      Font.Style = []
      Lines.Strings = (
        '1')
      ParentFont = False
      TabOrder = 4
    end
    object MemoProdVunCom: TMemo
      Left = 64
      Top = 137
      Width = 185
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MemoProdVunCom'
      Font.Style = []
      Lines.Strings = (
        '1.000')
      ParentFont = False
      TabOrder = 5
    end
    object MemoProdUtrib: TMemo
      Left = 64
      Top = 160
      Width = 185
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MemoProdUtrib'
      Font.Style = []
      Lines.Strings = (
        'UN')
      ParentFont = False
      TabOrder = 6
    end
    object MemoProdVunTrib: TMemo
      Left = 64
      Top = 183
      Width = 185
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MemoProdVunTrib'
      Font.Style = []
      Lines.Strings = (
        '1.000')
      ParentFont = False
      TabOrder = 7
    end
    object MemoProdCProd: TMemo
      Left = 64
      Top = 206
      Width = 185
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MemoProdCProd'
      Font.Style = []
      Lines.Strings = (
        '12345678901234')
      ParentFont = False
      TabOrder = 8
    end
    object MemoProdxProd: TMemo
      Left = 64
      Top = 229
      Width = 185
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MemoProdxProd'
      Font.Style = []
      Lines.Strings = (
        'Agua Mineral')
      ParentFont = False
      TabOrder = 9
    end
    object MemoProduCom: TMemo
      Left = 64
      Top = 252
      Width = 185
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MemoProduCom'
      Font.Style = []
      Lines.Strings = (
        'UN')
      ParentFont = False
      TabOrder = 10
    end
    object MemoProdQtrib: TMemo
      Left = 64
      Top = 275
      Width = 185
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MemoProdQtrib'
      Font.Style = []
      Lines.Strings = (
        '1.000')
      ParentFont = False
      TabOrder = 11
    end
    object MemoProdQcom: TMemo
      Left = 64
      Top = 298
      Width = 185
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MemoProdQcom'
      Font.Style = []
      Lines.Strings = (
        '1.000')
      ParentFont = False
      TabOrder = 12
    end
    object MemoProdvProd: TMemo
      Left = 64
      Top = 321
      Width = 185
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MemoProdvProd'
      Font.Style = []
      Lines.Strings = (
        ' 1.00')
      ParentFont = False
      TabOrder = 13
    end
    object MemoProdIndRegra: TMemo
      Left = 64
      Top = 344
      Width = 185
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MemoProdIndRegra'
      Font.Style = []
      Lines.Strings = (
        'A')
      ParentFont = False
      TabOrder = 14
    end
    object MemoProdvDesc: TMemo
      Left = 64
      Top = 367
      Width = 185
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MemoProdvDesc'
      Font.Style = []
      Lines.Strings = (
        '0.00')
      ParentFont = False
      TabOrder = 15
    end
    object MemoProdvOutro: TMemo
      Left = 64
      Top = 392
      Width = 185
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MemoProdvOutro'
      Font.Style = []
      Lines.Strings = (
        '0.00')
      ParentFont = False
      TabOrder = 16
    end
    object memoProdQcom2: TMemo
      Left = 64
      Top = 415
      Width = 185
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'memoProdQcom2'
      Font.Style = []
      Lines.Strings = (
        '1.0000')
      ParentFont = False
      TabOrder = 17
    end
    object MemoImpIcms00Orig: TMemo
      Left = 64
      Top = 515
      Width = 185
      Height = 20
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MemoImpIcms00Orig'
      Font.Style = []
      Lines.Strings = (
        '0')
      ParentFont = False
      TabOrder = 18
      WordWrap = False
    end
    object MemoImpIcms00Cst: TMemo
      Left = 64
      Top = 564
      Width = 185
      Height = 20
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MemoImpIcms00Cst'
      Font.Style = []
      Lines.Strings = (
        '00')
      ParentFont = False
      TabOrder = 19
      WordWrap = False
    end
    object MemoImpIcms00Picms: TMemo
      Left = 64
      Top = 541
      Width = 185
      Height = 20
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MemoImpIcms00Picms'
      Font.Style = []
      Lines.Strings = (
        '0.00')
      ParentFont = False
      TabOrder = 20
      WordWrap = False
    end
    object MemoImpCofinsNtCst: TMemo
      Left = 64
      Top = 607
      Width = 185
      Height = 20
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MemoImpCofinsNtCst'
      Font.Style = []
      Lines.Strings = (
        '08')
      ParentFont = False
      TabOrder = 21
      WordWrap = False
    end
    object MemoImpPisNTCst: TMemo
      Left = 64
      Top = 653
      Width = 185
      Height = 20
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MemoImpPisNTCst'
      Font.Style = []
      Lines.Strings = (
        '08')
      ParentFont = False
      TabOrder = 22
      WordWrap = False
    end
    object Memo23: TMemo
      Left = -191
      Top = 159
      Width = 185
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MemoProdvItem12741'
      Font.Style = []
      Lines.Strings = (
        '1')
      ParentFont = False
      TabOrder = 23
    end
    object MemoProdnItem: TMemo
      Left = 64
      Top = 459
      Width = 185
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MemoProdnItem'
      Font.Style = []
      Lines.Strings = (
        '1')
      ParentFont = False
      TabOrder = 24
      WordWrap = False
    end
    object btnJson: TButton
      Left = 174
      Top = 679
      Width = 75
      Height = 25
      Caption = 'Json'
      TabOrder = 25
      OnClick = btnJsonClick
    end
  end
end
