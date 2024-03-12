unit FiltroRelFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFrmFiltroRel = class(TForm)
    lblTitulo: TLabel;
    btnRelatorio: TButton;
    btnCancelar: TButton;
    lblCodigo: TLabel;
    lblNome: TLabel;
    lblCidade: TLabel;
    lblUF: TLabel;
    cbbUF: TComboBox;
    edtCodigo: TEdit;
    edtNome: TEdit;
    edtCidade: TEdit;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnRelatorioClick(Sender: TObject);
    procedure reativaCampos;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFiltroRel: TFrmFiltroRel;

implementation

{$R *.dfm}

uses
  relatorioFrm;

procedure TFrmFiltroRel.btnCancelarClick(Sender: TObject);
begin
self.Close;
end;

procedure TFrmFiltroRel.btnRelatorioClick(Sender: TObject);
begin
  frmRelatorio.qryRelatorio.open;
  if  not (edtCodigo.text = '') then
  begin
     frmRelatorio.qryRelatorio.SQL.Text := 'SELECT * FROM PESSOA WHERE CD_PESSOA = :id AND DS_PESSOA containing :nome AND DS_CIDADE containing :cidade AND DS_UF = :uf;';
      frmRelatorio.qryRelatorio.ParamByName('id').AsInteger := StrToInt(edtCodigo.Text);
  end
  else
    frmRelatorio.qryRelatorio.SQL.Text := 'SELECT * FROM PESSOA WHERE DS_PESSOA containing :nome AND DS_CIDADE containing :cidade AND DS_UF = :uf;';

  frmRelatorio.qryRelatorio.ParamByName('nome').AsString := uppercase(edtNome.Text);
  frmRelatorio.qryRelatorio.ParamByName('cidade').AsString := uppercase(edtCidade.Text);
  frmRelatorio.qryRelatorio.ParamByName('uf').AsString := cbbUF.Text;
  frmRelatorio.qryRelatorio.Execute;

  frmRelatorio.qrpRelatorio.PreviewModal;


end;
procedure TFrmFiltroRel.reativaCampos;
begin
      frmRelatorio.qlblCodigo.Enabled := true;
      frmRelatorio.lblCodigo.Enabled := true;
      frmRelatorio.qlblNome.Enabled := true;
      frmRelatorio.lblNome.Enabled := true;
      frmRelatorio.qlblCidade.Enabled := true;
      frmRelatorio.lblCidade.Enabled := true;
      frmRelatorio.qlblUF.Enabled := true;
      frmRelatorio.lblUF.Enabled := true;
end;
end.
