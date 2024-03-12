unit relatorioFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, MemDS, DBAccess, IBC, QuickRpt, ExtCtrls, QRCtrls, StdCtrls,
  QRPrntr;

type
  TfrmRelatorio = class(TForm)
    pnlRelatorio: TPanel;
    qrpRelatorio: TQuickRep;
    srcRelatorio: TIBCDataSource;
    qryRelatorio: TIBCQuery;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    lblCodigo: TQRLabel;
    qlblNome: TQRDBText;
    lblNome: TQRLabel;
    QRLabel4: TQRLabel;
    lblCidade: TQRLabel;
    lblUF: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    qlblCodigo: TQRDBText;
    qlblEndereco: TQRDBText;
    qlblCidade: TQRDBText;
    qlblUF: TQRDBText;
    qlblTelefone: TQRDBText;
    qlblCelular: TQRDBText;
    QRSysData1: TQRSysData;
    pnlFiltro: TPanel;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelatorio: TfrmRelatorio;

implementation

{$R *.dfm}

uses
  agendaFrm;



procedure TfrmRelatorio.FormCreate(Sender: TObject);
begin
  //qrpRelatorio.Preview;
end;



procedure TfrmRelatorio.Button1Click(Sender: TObject);
begin
  qrpRelatorio.PreviewModal;
end;

end.
