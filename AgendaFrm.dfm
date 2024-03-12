object frmAgenda: TfrmAgenda
  Left = 550
  Top = 228
  Width = 842
  Height = 655
  Caption = 'Agenda'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlFormulario: TPanel
    Left = 0
    Top = 169
    Width = 826
    Height = 270
    Align = alClient
    TabOrder = 0
    object lblUF: TLabel
      Left = 450
      Top = 129
      Width = 14
      Height = 23
      Caption = 'UF'
      Enabled = False
    end
    object lblTelefone: TLabel
      Left = 266
      Top = 81
      Width = 42
      Height = 13
      Caption = 'Telefone'
      Enabled = False
    end
    object lblCelular: TLabel
      Left = 267
      Top = 136
      Width = 32
      Height = 13
      Caption = 'Celular'
      Enabled = False
    end
    object lblNome: TLabel
      Left = 104
      Top = 24
      Width = 31
      Height = 13
      Caption = 'Nome:'
      Enabled = False
    end
    object lblEndereco: TLabel
      Left = 104
      Top = 80
      Width = 46
      Height = 13
      Caption = 'Endere'#231'o'
      Enabled = False
    end
    object lblCidade: TLabel
      Left = 104
      Top = 138
      Width = 33
      Height = 13
      Caption = 'Cidade'
      Enabled = False
    end
    object lblBairro: TLabel
      Left = 264
      Top = 27
      Width = 27
      Height = 13
      Caption = 'Bairro'
      Enabled = False
    end
    object TLabel
      Left = 264
      Top = 136
      Width = 3
      Height = 13
    end
    object cmbUf: TComboBox
      Left = 448
      Top = 148
      Width = 37
      Height = 21
      Enabled = False
      ItemHeight = 13
      TabOrder = 0
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
        'TO')
    end
    object mdtCelular: TMaskEdit
      Left = 267
      Top = 156
      Width = 131
      Height = 21
      Enabled = False
      EditMask = '!\(99\)00000-0000;1;_'
      MaxLength = 14
      TabOrder = 1
      Text = '(  )     -    '
    end
    object edtNome: TEdit
      Left = 104
      Top = 44
      Width = 121
      Height = 21
      Enabled = False
      TabOrder = 2
    end
    object edtEndereco: TEdit
      Left = 104
      Top = 99
      Width = 121
      Height = 21
      Enabled = False
      TabOrder = 3
    end
    object edtCidade: TEdit
      Left = 104
      Top = 157
      Width = 121
      Height = 21
      Enabled = False
      TabOrder = 4
    end
    object edtBairro: TEdit
      Left = 264
      Top = 44
      Width = 129
      Height = 21
      Enabled = False
      TabOrder = 5
    end
    object mdtTelefone: TMaskEdit
      Left = 265
      Top = 98
      Width = 128
      Height = 21
      Enabled = False
      EditMask = '!\(99\)00000-0000;1;_'
      MaxLength = 14
      TabOrder = 6
      Text = '(  )     -    '
    end
  end
  object pnlBotoes: TPanel
    Left = 0
    Top = 439
    Width = 826
    Height = 177
    Align = alBottom
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    TabOrder = 1
    object btnAdicionar: TButton
      Left = 184
      Top = 40
      Width = 121
      Height = 49
      Caption = 'Adicionar'
      TabOrder = 0
      OnClick = btnAdicionarClick
    end
    object btnEditar: TButton
      Left = 328
      Top = 40
      Width = 121
      Height = 49
      Caption = 'Editar'
      TabOrder = 1
      OnClick = btnEditarClick
    end
    object btnExcluir: TButton
      Left = 472
      Top = 40
      Width = 121
      Height = 49
      Caption = 'Excluir'
      TabOrder = 2
      OnClick = btnExcluirClick
    end
    object btnSalvar: TButton
      Left = 184
      Top = 104
      Width = 121
      Height = 49
      Caption = 'Salvar'
      Enabled = False
      TabOrder = 3
      OnClick = btnSalvarClick
    end
    object btnCancelar: TButton
      Left = 328
      Top = 104
      Width = 121
      Height = 49
      Caption = 'Cancelar'
      Enabled = False
      TabOrder = 4
      OnClick = btnCancelarClick
    end
    object btnRelatorio: TButton
      Left = 472
      Top = 104
      Width = 121
      Height = 49
      Caption = 'Gerar Relat'#243'rio'
      TabOrder = 5
      OnClick = btnRelatorioClick
    end
  end
  object pnlPesquisa: TPanel
    Left = 0
    Top = 0
    Width = 826
    Height = 169
    Align = alTop
    TabOrder = 2
    object rgpFiltro: TRadioGroup
      Left = 72
      Top = 40
      Width = 97
      Height = 49
      Caption = 'Filtro'
      ItemIndex = 1
      Items.Strings = (
        'Telefone '
        'Nome')
      TabOrder = 0
    end
    object edtPesquisa: TEdit
      Left = 224
      Top = 56
      Width = 233
      Height = 21
      TabOrder = 1
      Text = 'pesquisa'
      OnChange = edtPesquisaChange
      OnEnter = edtPesquisaEnter
    end
    object btnBackup: TButton
      Left = 608
      Top = 48
      Width = 137
      Height = 25
      Caption = 'Backup'
      TabOrder = 2
      OnClick = btnBackupClick
    end
    object btnRestore: TButton
      Left = 608
      Top = 96
      Width = 137
      Height = 25
      Caption = 'Restore'
      TabOrder = 3
      OnClick = btnRestoreClick
    end
  end
  object conection: TIBCConnection
    Database = 
      'C:\Users\Desenv4.SEO\Desktop\trabalhos de pesquisa\os024246\AGEN' +
      'DA.FDB'
    ClientLibrary = 
      'C:\Users\Desenv4.SEO\Desktop\trabalhos de pesquisa\os024246\fbcl' +
      'ient.dll'
    Port = '3050'
    Username = 'SYSDBA'
    Password = '19983101'
    Server = 'localhost'
    Connected = True
    Left = 32
    Top = 112
  end
  object srcPessoa: TIBCDataSource
    DataSet = qryPessoa
    Left = 144
    Top = 112
  end
  object qryPessoa: TIBCQuery
    KeyFields = 'CD_PESSOA'
    KeyGenerator = 'GEN_AGENDA'
    SQLInsert.Strings = (
      'INSERT INTO PESSOA'
      
        '  (CD_PESSOA, DS_PESSOA, DS_ENDERECO, DS_BAIRRO, DS_CIDADE, DS_U' +
        'F, DS_TELEFONE, DS_CELULART)'
      'VALUES'
      
        '  (:CD_PESSOA, :DS_PESSOA, :DS_ENDERECO, :DS_BAIRRO, :DS_CIDADE,' +
        ' :DS_UF, :DS_TELEFONE, :DS_CELULART)')
    SQLDelete.Strings = (
      'DELETE FROM PESSOA'
      'WHERE'
      '  CD_PESSOA = :Old_CD_PESSOA')
    SQLUpdate.Strings = (
      'UPDATE PESSOA'
      'SET'
      
        '  CD_PESSOA = :CD_PESSOA, DS_PESSOA = :DS_PESSOA, DS_ENDERECO = ' +
        ':DS_ENDERECO, DS_BAIRRO = :DS_BAIRRO, DS_CIDADE = :DS_CIDADE, DS' +
        '_UF = :DS_UF, DS_TELEFONE = :DS_TELEFONE, DS_CELULART = :DS_CELU' +
        'LART'
      'WHERE'
      '  CD_PESSOA = :Old_CD_PESSOA')
    SQLRefresh.Strings = (
      
        'SELECT CD_PESSOA, DS_PESSOA, DS_ENDERECO, DS_BAIRRO, DS_CIDADE, ' +
        'DS_UF, DS_TELEFONE, DS_CELULART FROM PESSOA'
      'WHERE'
      '  CD_PESSOA = :CD_PESSOA')
    SQLLock.Strings = (
      'SELECT NULL FROM PESSOA'
      'WHERE'
      'CD_PESSOA = :Old_CD_PESSOA'
      'FOR UPDATE WITH LOCK')
    Connection = conection
    SQL.Strings = (
      'SELECT * FROM PESSOA')
    Left = 88
    Top = 112
    object qryPessoaCD_PESSOA: TIntegerField
      FieldName = 'CD_PESSOA'
    end
    object qryPessoaDS_PESSOA: TStringField
      FieldName = 'DS_PESSOA'
      Required = True
      Size = 60
    end
    object qryPessoaDS_ENDERECO: TStringField
      FieldName = 'DS_ENDERECO'
      Size = 60
    end
    object qryPessoaDS_BAIRRO: TStringField
      FieldName = 'DS_BAIRRO'
      Size = 30
    end
    object qryPessoaDS_CIDADE: TStringField
      FieldName = 'DS_CIDADE'
      Size = 30
    end
    object qryPessoaDS_UF: TStringField
      FieldName = 'DS_UF'
      FixedChar = True
      Size = 2
    end
    object qryPessoaDS_TELEFONE: TStringField
      FieldName = 'DS_TELEFONE'
      Size = 15
    end
    object qryPessoaDS_CELULART: TStringField
      FieldName = 'DS_CELULART'
      Size = 15
    end
  end
end
