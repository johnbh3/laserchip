unit classe.loja;

interface
uses
  FireDAC.Comp.Client, Vcl.Dialogs, System.SysUtils,FireDAC.DApt.Intf;

type
  TLoja = class
    private
    fConexao      : TFDConnection;
    fID           : integer;
    fRazaosocial  : string;
    fCnpj         : string;
    fTelefone     : string;
    fCidade       : string;

    public
      property conexao      : TFDConnection read Fconexao write fconexao;
      property id           : integer read fID write fId ;
      property razaosocial  : string read fRazaosocial write fRazaosocial;
      property cnpj         : string read fCnpj write fCnpj;
      property telefone     : string read fTelefone write fTelefone;
      property cidade       : string read fCidade write fCidade;

      constructor Create (conexao: TFDConnection);
      destructor Destroy ; override;

      function listaLojas (id: integer): TFDQuery;
      function IncluirAlterarLoja (TipoOperacao: string; out erro: string) : boolean;

  end;

implementation

var
  Qry :TFDQuery;

{ TLoja }

constructor TLoja.Create(conexao: TFDconnection);
begin
   fConexao  := conexao;

   Qry :=TFDQuery.Create(nil);
   Qry.Connection  :=fConexao;

end;

destructor TLoja.Destroy;
begin
  Qry.Destroy;
  inherited;
end;

function TLoja.IncluirAlterarLoja(TipoOperacao: string;
  out erro: string): boolean;
var
  QryInserir :TFDQuery;
begin
    try
      try
        fConexao.Connected :=false;
        fConexao.Connected :=true;

        QryInserir :=TFDQuery.Create(nil);
        QryInserir.Connection  :=fConexao;
        QryInserir.SQL.Clear;


        if TipoOperacao='INSERIR' then begin
             QryInserir.SQL.Add('INSERT INTO loja (razaosocial,cnpj,telefone,cidade)');
             QryInserir.sql.Add('VALUES (:prazaosocial, :pcnpj, :ptelefone, :pcidade)');

        end else
        begin
             QryInserir.SQL.Add('update loja set');
             QryInserir.SQL.Add('razaosocial= :prazaosocial,');
             QryInserir.SQL.Add('cnpj= :pcnpj,');
             QryInserir.SQL.Add('telefone= :ptelefone,');
             QryInserir.SQL.Add('cidade= :pcidade');
             QryInserir.SQL.Add('where id= :pid');


             QryInserir.ParamByName('pid').AsInteger :=fid;
        end;

        QryInserir.ParamByName('razaosocial').AsString   :=frazaosocial;
        QryInserir.ParamByName('cnpj').AsString          :=fCnpj;
        QryInserir.ParamByName('telefone').AsString      :=fTelefone;
        QryInserir.ParamByName('cidade').AsString        :=fCidade;
        QryInserir.ExecSQL;

        Result :=true;

      except
      on E : Exception do begin
          erro := E.Message;
          Result :=false;
        end;
      end;
    finally
      QryInserir.Destroy;
    end;

end;


function TLoja.listaLojas(id: integer): TFDQuery;
begin
  try
    Qry.Close;
    Qry.SQL.Clear;
    Qry.sql.Add('SELECT');
    Qry.sql.Add(' id,');
    Qry.sql.Add(' razaosocial,');
    Qry.sql.Add(' cnpj,');
    Qry.sql.Add(' telefone,');
    Qry.sql.Add(' cidade');
    Qry.sql.Add('from loja');



    if id<>0 then
      Qry.SQL.Add('Where id='+QuotedStr(IntToStr(id)));

    Qry.Open();

  finally
     Result :=Qry;
  end;
end;

end.
