program laserchip;

uses
  Vcl.Forms,
  Vcl.Dialogs,
  uPrincipal in '..\View\uPrincipal.pas' {frmPrincipal},
  uPesquisaLojas in '..\View\uPesquisaLojas.pas' {frmPesquisaLoja},
  uCadLoja in '..\View\uCadLoja.pas' {frmCadLoja},
  uCadFuncionario in '..\View\uCadFuncionario.pas' {frmCadFuncionario},
  uPesquisaFuncionario in '..\View\uPesquisaFuncionario.pas' {frmPesquisaFuncionario},
  uDm in '..\View\uDm.pas' {DM: TDataModule},
  classe.conexao in '..\Controller\classe.conexao.pas',
  classe.funcionario in '..\Model\classe.funcionario.pas',
  classe.loja in '..\Model\classe.loja.pas',
  uFrmSenha in '..\View\uFrmSenha.pas' {frmLogin},
  uRelatorio in '..\View\uRelatorio.pas' {frmRelatorio},
  uFiltro in '..\View\uFiltro.pas' {frmFiltro};

{$R *.res}

begin

  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Laserchip';
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmRelatorio, frmRelatorio);
  if DM.conexao.conectarBD then
  begin
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
  end else
  begin
    ShowMessage(DM.conexao.msgErro);
  end;
end.
