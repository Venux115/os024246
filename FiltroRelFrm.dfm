object FrmFiltroRel: TFrmFiltroRel
  Left = 568
  Top = 230
  Width = 547
  Height = 398
  Caption = 'FiltroRelFrm'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Arial Narrow'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 20
  object lblTitulo: TLabel
    Left = 144
    Top = 40
    Width = 231
    Height = 23
    Caption = 'Selecione os campos do relat'#243'rio'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
  end
  object lblCodigo: TLabel
    Left = 104
    Top = 88
    Width = 44
    Height = 20
    Caption = 'C'#243'digo'
  end
  object lblNome: TLabel
    Left = 112
    Top = 128
    Width = 36
    Height = 20
    Caption = 'Nome'
  end
  object lblCidade: TLabel
    Left = 104
    Top = 168
    Width = 43
    Height = 20
    Caption = 'Cidade'
  end
  object lblUF: TLabel
    Left = 128
    Top = 208
    Width = 17
    Height = 20
    Caption = 'UF'
  end
  object btnRelatorio: TButton
    Left = 128
    Top = 264
    Width = 97
    Height = 49
    Caption = 'Gerar '
    TabOrder = 0
    OnClick = btnRelatorioClick
  end
  object btnCancelar: TButton
    Left = 280
    Top = 264
    Width = 105
    Height = 49
    Caption = 'Cancelar'
    TabOrder = 1
    OnClick = btnCancelarClick
  end
  object edtCodigo: TEdit
    Left = 160
    Top = 88
    Width = 225
    Height = 28
    TabOrder = 2
  end
  object edtNome: TEdit
    Left = 160
    Top = 128
    Width = 225
    Height = 28
    TabOrder = 3
  end
  object edtCidade: TEdit
    Left = 160
    Top = 168
    Width = 225
    Height = 28
    TabOrder = 4
  end
  object cbbUF: TComboBox
    Left = 160
    Top = 208
    Width = 225
    Height = 28
    ItemHeight = 20
    TabOrder = 5
    Text = 'UF'
    Items.Strings = (
      'AC'
      'AL'
      'AP'
      'AM'
      'BA'
      'CE '
      'DF '
      'ES'
      'GO'
      'MA'
      'MT'
      'MS'
      'MG'
      'PA'
      'PB '
      'PR '
      'PE'
      'PI'
      'RJ '
      'RN'
      'RS'
      'RO'
      'RR'
      'SC'
      'SP'
      'SE'
      'TO'
      '')
  end
end
