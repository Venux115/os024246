unit AgendaFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, DBCtrls, DB, MemDS, DBAccess, IBC,
  uCopBDFB;

type
  TfrmAgenda = class(TForm)
    pnlFormulario: TPanel;
    lblUF: TLabel;
    lblTelefone: TLabel;
    cmbUf: TComboBox;
    lblCelular: TLabel;
    pnlBotoes: TPanel;
    btnAdicionar: TButton;
    btnEditar: TButton;
    btnExcluir: TButton;
    btnSalvar: TButton;
    btnCancelar: TButton;
    pnlPesquisa: TPanel;
    rgpFiltro: TRadioGroup;
    conection: TIBCConnection;
    srcPessoa: TIBCDataSource;
    qryPessoa: TIBCQuery;
    qryPessoaCD_PESSOA: TIntegerField;
    qryPessoaDS_PESSOA: TStringField;
    qryPessoaDS_ENDERECO: TStringField;
    qryPessoaDS_BAIRRO: TStringField;
    qryPessoaDS_CIDADE: TStringField;
    qryPessoaDS_UF: TStringField;
    qryPessoaDS_TELEFONE: TStringField;
    qryPessoaDS_CELULART: TStringField;
    edtPesquisa: TEdit;
    btnBackup: TButton;
    btnRestore: TButton;
    mdtCelular: TMaskEdit;
    lblNome: TLabel;
    edtNome: TEdit;
    lblEndereco: TLabel;
    edtEndereco: TEdit;
    lblCidade: TLabel;
    edtCidade: TEdit;
    edtBairro: TEdit;
    lblBairro: TLabel;
    mdtTelefone: TMaskEdit;
    btnRelatorio: TButton;
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnRestoreClick(Sender: TObject);
    procedure edtPesquisaEnter(Sender: TObject);
    procedure edtPesquisaChange(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnBackupClick(Sender: TObject);
    procedure btnRelatorioClick(Sender: TObject);

  private
    procedure ativaBotesDML(value:boolean);
    procedure limparFormulario;
    procedure ativaFormulario(value:boolean);
    procedure ativaBotoesAlteracao(value:boolean);
  public
    { Public declarations }
  end;
  

var
  frmAgenda: TfrmAgenda;


implementation

{$R *.dfm}

uses
  ShellAPI, uRestoreBackup, BackupModal, restoreModal, filtroRelFrm;


procedure TfrmAgenda.ativaBotesDML(value:boolean);
begin
  if value = true then
  begin
    btnAdicionar.Enabled := true;
    btnEditar.Enabled := true;
    btnExcluir.Enabled := true;
  end
  else
  begin
    btnAdicionar.Enabled := false;
    btnEditar.Enabled := false;
    btnExcluir.Enabled := false;
  end;
end;

procedure TfrmAgenda.ativaBotoesAlteracao(value:boolean);
begin
      btnSalvar.Enabled := value;
      btnCancelar.Enabled := value;
end;

procedure TfrmAgenda.ativaFormulario(value:boolean);
begin
    lblNome.enabled := value;
    edtNome.Enabled := value;
    lblEndereco.Enabled := value;
    edtEndereco.Enabled := value;
    lblBairro.Enabled := value;
    edtBairro.Enabled := value;
    lblCidade.Enabled := value;
    edtCidade.Enabled := value;
    lblTelefone.Enabled := value;
    mdtTelefone.Enabled := value;
    lblCelular.Enabled := value;
    mdtCelular.Enabled := value;
    lblUF.Enabled :=value;
    cmbUF.Enabled := value;
end;

procedure TfrmAgenda.limparFormulario;
begin
  edtNome.Text := '';
  edtEndereco.text := '';
  edtCidade.text := '';
  edtBairro.text := '';
  mdtTelefone.Text := '';
  mdtCelular.Text := '';
  cmbUF.ItemIndex := -1;
end;

procedure TfrmAgenda.btnAdicionarClick(Sender: TObject);
begin

  limparFormulario;
  ativaFormulario(true);
  ativaBotesDML(false);
  ativaBotoesAlteracao(true);

end;
procedure TfrmAgenda.btnSalvarClick(Sender: TObject);
var
nome,endereco,bairro,cidade,telefone,celular,uf:string;
begin
  nome      := edtNome.Text;
  endereco  := edtEndereco.text;
  bairro    := edtBairro.Text;
  cidade    := edtCidade.text;
  telefone  := mdtTelefone.Text;
  celular   := mdtCelular.Text;
  uf        := cmbUF.Text;

  qryPessoa.Open;
  try
    qryPessoa.Insert;
    qryPessoaDS_PESSOA.AsString   := UpperCase(nome);
    qryPessoaDS_ENDERECO.AsString := UpperCase(endereco);
    qryPessoaDS_BAIRRO.AsString   := UpperCase(bairro);
    qryPessoaDS_CIDADE.AsString   := UpperCase(cidade);
    qryPessoaDS_TELEFONE.AsString := UpperCase(telefone);
    qryPessoaDS_CELULART.AsString := UpperCase(celular);
    qryPessoaDS_UF.AsString       := UpperCase(uf);
    qryPessoa.Post;
    qryPessoa.Transaction.CommitRetaining;
  except
    qryPessoa.Transaction.RollbackRetaining;
  end;
  ativaBotesDML(true);
  limparFormulario;
  ativaBotoesAlteracao(false);
  ativaFormulario(false);
end;


procedure TfrmAgenda.btnCancelarClick(Sender: TObject);
begin
  limparFormulario;
  ativaBotesDML(true);
  ativaBotoesAlteracao(false);
  edtPesquisa.clear;
  ativaFormulario(false);
end;

procedure TfrmAgenda.btnRestoreClick(Sender: TObject);
var
  retorno:integer;
begin
    application.CreateForm(tmdlRestore, mdlRestore);
    mdlRestore.ShowModal;

  

end;

procedure TfrmAgenda.edtPesquisaEnter(Sender: TObject);
begin
  edtPesquisa.Clear

end;



procedure TfrmAgenda.edtPesquisaChange(Sender: TObject);
var
  pesquisa:string;
begin
   pesquisa := UpperCase(edtPesquisa.Text);
   try
    qryPessoa.Open;
    if rgpFiltro.ItemIndex = 0 then
    begin
      qryPessoa.SQL.Text := 'Select * from pessoa where DS_TELEFONE CONTAINING :telefone ';
      qryPessoa.ParamByName('telefone').AsString := pesquisa;
    end
    else
    begin
      qryPessoa.SQL.Text := 'Select * from pessoa where DS_PESSOA  STARTING :nome';
      qryPessoa.Params.ParamByName('nome').AsString := pesquisa;
    end;
    qryPessoa.ExecSQL;

    edtNome.text := qryPessoaDS_PESSOA.value;
    edtEndereco.text := qryPessoaDS_ENDERECO.value;
    edtBairro.text := qryPessoaDS_BAIRRO.value;
    edtCidade.text := qryPessoaDS_CIDADE.value;
    mdtTelefone.Text := qryPessoaDS_TELEFONE.value;
    mdtCelular.text := qryPessoaDS_CELULART.value;
    cmbUf.Text := qryPessoaDS_UF.value; 


   except
      showmessage('não encontrado');
   end;
   qryPessoa.close;
end;

procedure TfrmAgenda.btnEditarClick(Sender: TObject);
begin
  ativaFormulario(true);
  ativaBotesDML(false);
  ativaBotoesAlteracao(true);
end;

procedure TfrmAgenda.btnExcluirClick(Sender: TObject);
var
resposta:integer;
begin
  resposta := MessageDlg('Deseja excluir as informações?', mtConfirmation, [mbYes, mbNo], 0);
  if resposta = mrYes then
  begin
    try
      qryPessoa.Open;
      qryPessoa.Delete;
      qryPessoa.Execute;
      qryPessoa.Transaction.CommitRetaining;
    except
      qryPessoa.Transaction.RollbackRetaining;
    end;
  end;
end;



procedure TfrmAgenda.btnBackupClick(Sender: TObject);
var
  retorno:string;
  RestoreBackup:TRestoreBackup;
begin
  Application.CreateForm(TmdlBackup, mdlBackup);
  mdlBackup.ShowModal;
{
  try
    RestoreBackup := TRestoreBackup.create('"C:\Program Files\Firebird\Firebird_2_5\bin\gbak.exe"');
    retorno := RestoreBackup.doBackup('"C:\Users\Desenv4.SEO\Desktop\trabalhos de pesquisa\os024246\AGENDA.FDB"', '"C:\Users\Desenv4.SEO\Desktop\trabalhos de pesquisa\os024246\backupDB\backup.fbk"');
    ShowMessage(retorno);
  finally
    // Certifique-se de liberar a instância após o uso.
    FreeAndNil(RestoreBackup);
  end;
}
end;

procedure TfrmAgenda.btnRelatorioClick(Sender: TObject);
begin
  Application.CreateForm(TFrmFiltroRel, FrmFiltroRel);
  frmFiltroRel.ShowModal;
end;

end.
