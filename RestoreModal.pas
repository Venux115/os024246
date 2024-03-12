unit RestoreModal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BackupModal, uRestoreBackup, AgendaFrm, StdCtrls;

type
  TmdlRestore = class(TmdlBackup)
    btnRestore: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnRestoreClick(Sender: TObject);
  
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  mdlRestore: TmdlRestore;

implementation

{$R *.dfm}



procedure TmdlRestore.FormCreate(Sender: TObject);
begin
  btnBackup.Visible := False;
  Self.Caption := 'Restore';
  lblBD.Caption := 'Backup';
  lblBackup.Caption := 'Restore';
  OpenDialog.Filter := 'Arquivos de Backup (*.fbk)|*.fbk';
  SaveDialog.Filter :='Arquivos de Banco de dados (*.fdb)|*.fdb'

end;

procedure TmdlRestore.btnRestoreClick(Sender: TObject);
var
  retorno:string;
  RestoreBackup:TRestorebackup;
begin
   try
    RestoreBackup := TRestoreBackup.create('"C:\Program Files\Firebird\Firebird_2_5\bin\gbak.exe"');
    retorno := RestoreBackup.doRestore(mdlRestore.OpenDialog.filename,mdlRestore.savedialog.filename);
    ShowMessage(retorno);
    frmAgenda.conection.Database := mdlRestore.savedialog.filename +'.FDB';
    frmAgenda.conection.open;
    frmAgenda.conection.Connected := true;
  finally
    // Certifique-se de liberar a instância após o uso.
    FreeAndNil(RestoreBackup);
  end;
end;

end.
