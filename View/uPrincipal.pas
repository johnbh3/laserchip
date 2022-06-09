unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage;

type
  TfrmPrincipal = class(TForm)
    pnCabecalho: TPanel;
    pnRodape: TPanel;
    imgLogo: TImage;
    btnCadLojas: TSpeedButton;
    btnCadFuncionarios: TSpeedButton;
    Label1: TLabel;
    LinkLabel1: TLinkLabel;
    btnRelatorio: TSpeedButton;
    procedure btnCadLojasClick(Sender: TObject);
    procedure btnCadFuncionariosClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnRelatorioClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses uPesquisaLojas, uPesquisaFuncionario, uFrmSenha, uRelatorio;

procedure TfrmPrincipal.btnCadFuncionariosClick(Sender: TObject);
begin
   frmPesquisaFuncionario:=TfrmPesquisaFuncionario.Create(Application);
   frmPesquisaFuncionario.ShowModal;
end;

procedure TfrmPrincipal.btnCadLojasClick(Sender: TObject);
begin
    frmPesquisaLoja:=TfrmPesquisaLoja.Create(Application);
    frmPesquisaLoja.ShowModal;

end;

procedure TfrmPrincipal.btnRelatorioClick(Sender: TObject);
begin
  frmRelatorio:=TfrmRelatorio.Create(Application);
  frmRelatorio.ShowModal;

end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
   frmLogin:=tfrmLogin.Create(Application);
   frmLogin.Showmodal;
end;

end.
