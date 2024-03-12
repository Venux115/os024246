object frmRelatorio: TfrmRelatorio
  Left = 506
  Top = 135
  Width = 1359
  Height = 894
  Caption = 'Relat'#243'rio'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlRelatorio: TPanel
    Left = 0
    Top = 0
    Width = 974
    Height = 855
    Align = alClient
    TabOrder = 0
    object qrpRelatorio: TQuickRep
      Left = 144
      Top = 16
      Width = 794
      Height = 1123
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      DataSet = qryRelatorio
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Functions.Strings = (
        'PAGENUMBER'
        'COLUMNNUMBER'
        'REPORTTITLE')
      Functions.DATA = (
        '0'
        '0'
        #39#39)
      Options = [FirstPageHeader, LastPageFooter]
      Page.Columns = 1
      Page.Orientation = poPortrait
      Page.PaperSize = A4
      Page.Values = (
        100.000000000000000000
        2970.000000000000000000
        100.000000000000000000
        2100.000000000000000000
        100.000000000000000000
        100.000000000000000000
        0.000000000000000000)
      PrinterSettings.Copies = 1
      PrinterSettings.Duplex = False
      PrinterSettings.FirstPage = 0
      PrinterSettings.LastPage = 0
      PrinterSettings.OutputBin = Auto
      PrintIfEmpty = True
      SnapToGrid = True
      Units = MM
      Zoom = 100
      object PageHeaderBand1: TQRBand
        Left = 38
        Top = 38
        Width = 718
        Height = 115
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        AlignToBottom = False
        Color = clWhite
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          304.270833333333300000
          1899.708333333333000000)
        BandType = rbPageHeader
        object QRLabel1: TQRLabel
          Left = 264
          Top = 56
          Width = 182
          Height = 23
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            60.854166666666670000
            698.500000000000000000
            148.166666666666700000
            481.541666666666700000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Relat'#243'rio de pessoas'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 14
        end
        object QRSysData1: TQRSysData
          Left = 645
          Top = 80
          Width = 36
          Height = 25
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            66.145833333333330000
            1706.562500000000000000
            211.666666666666700000
            95.250000000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          Color = clWhite
          Data = qrsDate
          Transparent = False
          FontSize = 10
        end
      end
      object QRGroup1: TQRGroup
        Left = 38
        Top = 153
        Width = 718
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        AlignToBottom = False
        Color = clWhite
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          50.270833333333330000
          1899.708333333333000000)
        Master = qrpRelatorio
        ReprintOnNewPage = False
        object lblCodigo: TQRLabel
          Left = 0
          Top = 0
          Width = 41
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            0.000000000000000000
            0.000000000000000000
            108.479166666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'C'#243'digo'
          Color = clWhite
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object lblNome: TQRLabel
          Left = 128
          Top = 0
          Width = 35
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            338.666666666666700000
            0.000000000000000000
            92.604166666666670000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = True
          Caption = 'Nome'
          Color = clWhite
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRLabel4: TQRLabel
          Left = 232
          Top = 0
          Width = 56
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            613.833333333333300000
            0.000000000000000000
            148.166666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = True
          Caption = 'Endere'#231'o'
          Color = clWhite
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object lblCidade: TQRLabel
          Left = 352
          Top = 0
          Width = 41
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            931.333333333333300000
            0.000000000000000000
            108.479166666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = True
          Caption = 'Cidade'
          Color = clWhite
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object lblUF: TQRLabel
          Left = 448
          Top = 0
          Width = 18
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1185.333333333333000000
            0.000000000000000000
            47.625000000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = True
          Caption = 'UF'
          Color = clWhite
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRLabel7: TQRLabel
          Left = 512
          Top = 0
          Width = 49
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1354.666666666667000000
            0.000000000000000000
            129.645833333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = True
          Caption = 'Telefone'
          Color = clWhite
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRLabel8: TQRLabel
          Left = 624
          Top = 0
          Width = 41
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1651.000000000000000000
            0.000000000000000000
            108.479166666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = True
          Caption = 'Celular'
          Color = clWhite
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
      end
      object QRGroup2: TQRGroup
        Left = 38
        Top = 172
        Width = 718
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        AlignToBottom = False
        Color = clWhite
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          55.562500000000000000
          1899.708333333333000000)
        Expression = 'qryRelatorio.CD_PESSOA'
        Master = qrpRelatorio
        ReprintOnNewPage = False
        object qlblNome: TQRDBText
          Left = 128
          Top = 0
          Width = 81
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            338.666666666666700000
            0.000000000000000000
            214.312500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = True
          Color = clWhite
          DataSet = qryRelatorio
          DataField = 'DS_PESSOA'
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object qlblCodigo: TQRDBText
          Left = 0
          Top = 0
          Width = 81
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            0.000000000000000000
            0.000000000000000000
            214.312500000000000000)
          Alignment = taLeftJustify
          AlignToBand = True
          AutoSize = True
          AutoStretch = True
          Color = clWhite
          DataSet = qryRelatorio
          DataField = 'CD_PESSOA'
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object qlblEndereco: TQRDBText
          Left = 232
          Top = 0
          Width = 99
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            613.833333333333300000
            0.000000000000000000
            261.937500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = True
          Color = clWhite
          DataSet = qryRelatorio
          DataField = 'DS_ENDERECO'
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object qlblCidade: TQRDBText
          Left = 352
          Top = 0
          Width = 74
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            931.333333333333300000
            0.000000000000000000
            195.791666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = True
          Color = clWhite
          DataSet = qryRelatorio
          DataField = 'DS_CIDADE'
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object qlblUF: TQRDBText
          Left = 448
          Top = 0
          Width = 43
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1185.333333333333000000
            0.000000000000000000
            113.770833333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = True
          Color = clWhite
          DataSet = qryRelatorio
          DataField = 'DS_UF'
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object qlblTelefone: TQRDBText
          Left = 512
          Top = 0
          Width = 94
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1354.666666666667000000
            0.000000000000000000
            248.708333333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = True
          Color = clWhite
          DataSet = qryRelatorio
          DataField = 'DS_TELEFONE'
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object qlblCelular: TQRDBText
          Left = 624
          Top = 0
          Width = 92
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1651.000000000000000000
            0.000000000000000000
            243.416666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = True
          Color = clWhite
          DataSet = qryRelatorio
          DataField = 'DS_CELULART'
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
      end
    end
  end
  object pnlFiltro: TPanel
    Left = 974
    Top = 0
    Width = 369
    Height = 855
    Align = alRight
    TabOrder = 1
    object Button1: TButton
      Left = 96
      Top = 168
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object srcRelatorio: TIBCDataSource
    DataSet = qryRelatorio
    Left = 1184
    Top = 24
  end
  object qryRelatorio: TIBCQuery
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
    Connection = frmAgenda.conection
    SQL.Strings = (
      'Select * from Pessoa'
      ''
      '')
    Active = True
    Left = 1256
    Top = 24
  end
end
