unit uFrmSenha;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.Buttons;

type
  TfrmLogin = class(TForm)
    pnl_principal: TPanel;
    shp_fundo: TShape;
    btn_fechar: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    pnl_imagem: TPanel;
    img_fundo_lateral: TImage;
    lbl_login: TLabel;
    lbl_texto: TLabel;
    img_logo_empresa: TImage;
    pnl_usuario: TPanel;
    lbl_nome_usuario: TLabel;
    edt_nome_usuario: TEdit;
    pnl_barra_nome: TPanel;
    pnl_senha: TPanel;
    lbl_senha: TLabel;
    edt_senha: TEdit;
    pnl_barra_senha: TPanel;
    pnl_entrar: TPanel;
    btn_entrar: TSpeedButton;
    pnl_cancelar: TPanel;
    btn_cancelar: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormResize(Sender: TObject);
    procedure btn_entrarClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}



procedure TfrmLogin.btn_cancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmLogin.btn_entrarClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmLogin.FormResize(Sender: TObject);
begin
  pnl_principal.Top  := Round ( frmLogin.Height / 2 - pnl_principal.Height / 2 );
  pnl_principal.Left := Round ( frmLogin.Width / 2 - pnl_principal.Width / 2 );
end;

end.
