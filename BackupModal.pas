unit BackupModal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TmdlBackup = class(TForm)
    OpenDialog: TOpenDialog;
    btnSearchBD: TButton;
    Button2: TButton;
    SaveDialog: TSaveDialog;
    lblBD: TLabel;
    lblBackup: TLabel;
    btnBackup: TButton;
    btnCancelar: TButton;
    edtBD: TEdit;
    edtBackup: TEdit;
    procedure btnSearchBDClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnBackupClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  mdlBackup: TmdlBackup;

implementation

{$R *.dfm}

uses
 uRestoreBackup;

procedure TmdlBackup.btnSearchBDClick(Sender: TObject);
begin
  if OpenDialog.Execute then
  begin
    edtBD.Text := OpenDialog.FileName;
  end;
end;

procedure TmdlBackup.Button2Click(Sender: TObject);
begin
  if SaveDialog.Execute then
    edtBackup.Text := SaveDialog.FileName;
end;

procedure TmdlBackup.btnCancelarClick(Sender: TObject);
begin
  self.Close;
end;

procedure TmdlBackup.btnBackupClick(Sender: TObject);
var
retorno:string;
RestoreBackup:TRestoreBackup;
begin
  try
    RestoreBackup := TRestoreBackup.create('"C:\Program Files\Firebird\Firebird_2_5\bin\gbak.exe"');
    retorno := RestoreBackup.doBackup(OpenDialog.FileName, SaveDialog.FileName);
    ShowMessage(retorno);
  finally
    // Certifique-se de liberar a instância após o uso.
    FreeAndNil(RestoreBackup);
  end;

end;

end.
