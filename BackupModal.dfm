object mdlBackup: TmdlBackup
  Left = 1100
  Top = 179
  Width = 605
  Height = 438
  Caption = 'Backup'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblBD: TLabel
    Left = 64
    Top = 32
    Width = 78
    Height = 13
    Caption = 'Banco de dados'
  end
  object lblBackup: TLabel
    Left = 64
    Top = 144
    Width = 37
    Height = 13
    Caption = 'Backup'
  end
  object edtBD: TEdit
    Left = 64
    Top = 56
    Width = 305
    Height = 33
    Enabled = False
    TabOrder = 0
  end
  object btnSearchBD: TButton
    Left = 392
    Top = 56
    Width = 75
    Height = 33
    Caption = 'Buscar'
    TabOrder = 1
    OnClick = btnSearchBDClick
  end
  object edtBackup: TEdit
    Left = 64
    Top = 160
    Width = 305
    Height = 33
    Enabled = False
    TabOrder = 2
  end
  object Button2: TButton
    Left = 392
    Top = 160
    Width = 75
    Height = 33
    Caption = 'Buscar'
    TabOrder = 3
    OnClick = Button2Click
  end
  object btnBackup: TButton
    Left = 112
    Top = 280
    Width = 161
    Height = 49
    Caption = 'Fazer Backup'
    TabOrder = 4
    OnClick = btnBackupClick
  end
  object btnCancelar: TButton
    Left = 320
    Top = 280
    Width = 161
    Height = 49
    Caption = 'Cancelar'
    TabOrder = 5
    OnClick = btnCancelarClick
  end
  object OpenDialog: TOpenDialog
    Filter = 'Firebird|*.FDB'
    Left = 504
    Top = 64
  end
  object SaveDialog: TSaveDialog
    FileName = 
      'C:\Users\Desenv4.SEO\Desktop\trabalhos de pesquisa\os024246\back' +
      'up'
    Filter = 'backup|*.FBK'
    Left = 504
    Top = 160
  end
end
