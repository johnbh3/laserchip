unit classe.conexao;

interface

uses
  FireDAC.Comp.Client, FireDAC.Stan.Intf, Vcl.Dialogs;

type
  TConexao = class
    private
    fServidor: string;
    fMsgErro: string;
    fLogin: string;
    fsenha: string;
    fBase: string;
    fPorta: string;
    fConexao: TFDConnection;

    public
      constructor Create (nomeConexao :TFDConnection);
      destructor Destroy ; override;

      function conectarBD  : Boolean;

      property  conexao   : TFDConnection Read fConexao write fConexao;
      property  servidor  : string read fServidor write fServidor;
      property  base      : string read fBase  write fBase;
      property  login     : string read fLogin write fLogin;
      property  senha     : string read fsenha write fsenha ;
      property  porta     : string read fPorta write fPorta;
      property  msgErro   : string read fMsgErro write fMsgErro;
  end;

implementation

uses
  System.SysUtils;

{ TConexao }

function TConexao.conectarBD: Boolean;
begin
    result := True;
    fConexao.Params.Clear;

    fConexao.Params.Add('server=' + fServidor);
    fConexao.Params.Add('user_name=' + fLogin);
    fConexao.Params.Add('password=' + fsenha);
    fConexao.Params.Add('port=' + fPorta);
    fConexao.Params.Add('DataBase='+ fBase);
    fConexao.Params.Add('DriverID='+ 'MySQL');



    try
      fConexao.Connected :=true;
    except
        on E:exception do
        begin
          fMsgErro := E.Message;
          Result :=false;
        end;
    end;

end;

constructor TConexao.Create(nomeConexao: TFDConnection);
begin
  fConexao  := nomeConexao;
end;

destructor TConexao.Destroy;
begin
  fConexao.Connected := false;
  inherited;
end;

end.
