program SEOCorpAgenda;

uses
  Forms,
  AgendaFrm in 'AgendaFrm.pas' {frmAgenda},
  uRestoreBackup in 'uRestoreBackup.pas',
  BackupModal in 'BackupModal.pas' {mdlBackup},
  RestoreModal in 'RestoreModal.pas' {mdlRestore},
  relatorioFrm in 'relatorioFrm.pas' {frmRelatorio},
  FiltroRelFrm in 'FiltroRelFrm.pas' {FrmFiltroRel};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmAgenda, frmAgenda);
  Application.CreateForm(TmdlBackup, mdlBackup);
  Application.CreateForm(TmdlRestore, mdlRestore);
  Application.CreateForm(TfrmRelatorio, frmRelatorio);
  Application.CreateForm(TFrmFiltroRel, FrmFiltroRel);
  Application.Run;
end.
