object frmStatus: TfrmStatus
  Left = 0
  Top = 0
  Caption = 'Status da impressora'
  ClientHeight = 466
  ClientWidth = 287
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
    Left = 68
    Top = 8
    Width = 22
    Height = 13
    Caption = 'Ovr:'
  end
  object Label2: TLabel
    Left = 54
    Top = 35
    Width = 36
    Height = 13
    Caption = 'Offline:'
  end
  object Label3: TLabel
    Left = 65
    Top = 62
    Width = 26
    Height = 13
    Caption = 'Wait:'
  end
  object Label4: TLabel
    Left = 50
    Top = 88
    Width = 40
    Height = 13
    Caption = 'BufStat:'
  end
  object Label5: TLabel
    Left = 63
    Top = 113
    Width = 27
    Height = 13
    Caption = 'Pnes:'
  end
  object Label6: TLabel
    Left = 75
    Top = 132
    Width = 15
    Height = 13
    Caption = 'Ps:'
  end
  object Label7: TLabel
    Left = 51
    Top = 185
    Width = 39
    Height = 13
    Caption = 'Drawer:'
  end
  object Label8: TLabel
    Left = 62
    Top = 210
    Width = 28
    Height = 13
    Caption = 'Error:'
  end
  object Label9: TLabel
    Left = 46
    Top = 157
    Width = 44
    Height = 13
    Caption = 'noPaper:'
  end
  object Label10: TLabel
    Left = 72
    Top = 260
    Width = 17
    Height = 13
    Caption = 'Ca:'
  end
  object Label11: TLabel
    Left = 56
    Top = 235
    Width = 33
    Height = 13
    Caption = 'Cover:'
  end
  object Label12: TLabel
    Left = 72
    Top = 286
    Width = 17
    Height = 13
    Caption = 'Ce:'
  end
  object Label13: TLabel
    Left = 67
    Top = 311
    Width = 21
    Height = 13
    Caption = 'Nre:'
  end
  object Label14: TLabel
    Left = 71
    Top = 336
    Width = 17
    Height = 13
    Caption = 'Re:'
  end
  object Label15: TLabel
    Left = 66
    Top = 361
    Width = 22
    Height = 13
    Caption = 'hoh:'
  end
  object Label16: TLabel
    Left = 63
    Top = 383
    Width = 25
    Height = 13
    Caption = 'Cmd:'
  end
  object Label17: TLabel
    Left = 2
    Top = 408
    Width = 86
    Height = 13
    Caption = 'Firmware Version:'
  end
  object memoOvr: TMemo
    Left = 96
    Top = 8
    Width = 185
    Height = 19
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clLime
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object memoOffline: TMemo
    Left = 94
    Top = 33
    Width = 185
    Height = 19
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clLime
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object memoWait: TMemo
    Left = 96
    Top = 58
    Width = 185
    Height = 19
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clLime
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object memoBufStat: TMemo
    Left = 95
    Top = 84
    Width = 185
    Height = 19
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clLime
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object memoPnes: TMemo
    Left = 96
    Top = 107
    Width = 185
    Height = 19
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clLime
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
  end
  object memoPS: TMemo
    Left = 96
    Top = 132
    Width = 185
    Height = 19
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clLime
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
  end
  object memonoPaper: TMemo
    Left = 96
    Top = 157
    Width = 185
    Height = 19
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clLime
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
  end
  object memoDrawer: TMemo
    Left = 94
    Top = 182
    Width = 185
    Height = 19
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clLime
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
  end
  object memoError: TMemo
    Left = 96
    Top = 207
    Width = 185
    Height = 19
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clLime
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
  end
  object memoCover: TMemo
    Left = 96
    Top = 232
    Width = 185
    Height = 19
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clLime
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
  end
  object memoCa: TMemo
    Left = 95
    Top = 257
    Width = 185
    Height = 19
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clLime
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
  end
  object memoCe: TMemo
    Left = 95
    Top = 283
    Width = 185
    Height = 19
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clLime
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
  end
  object memoNre: TMemo
    Left = 95
    Top = 308
    Width = 185
    Height = 19
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clLime
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 12
  end
  object memoRe: TMemo
    Left = 94
    Top = 333
    Width = 185
    Height = 19
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clLime
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 13
  end
  object memoHoh: TMemo
    Left = 94
    Top = 358
    Width = 185
    Height = 19
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clLime
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 14
  end
  object memoCmd: TMemo
    Left = 94
    Top = 383
    Width = 185
    Height = 19
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clLime
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 15
  end
  object memoFirmware: TMemo
    Left = 94
    Top = 408
    Width = 185
    Height = 19
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clLime
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 16
  end
  object btnVerificarStatus: TButton
    Left = 192
    Top = 433
    Width = 87
    Height = 25
    Caption = 'Verificar Status'
    TabOrder = 17
    OnClick = btnVerificarStatusClick
  end
end
