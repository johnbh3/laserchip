unit classe.funcionario;

interface
uses
  FireDAC.Comp.Client, Vcl.Dialogs, System.SysUtils;

type
  TFuncionario = class
    private
    fConexao      : TFDConnection;
    fID           : integer;
    fIdLoja       : integer;
    fNome         : string;
    fTelefone     : string;
    fCidade       : string;


    public
      property conexao      : TFDConnection read Fconexao write fconexao;
      property id           : integer read fID write fId ;
      property IdLoja       : integer read fIdLoja write fIdLoja ;
      property Nome         : string read fNome write fNome;
      property telefone     : string read fTelefone write fTelefone;
      property cidade       : string read fCidade write fCidade;


      constructor Create (conexao: TFDConnection);
      destructor Destroy ; override;

      function listaFuncionarios (id: integer): TFDQuery;
      function relatorioFuncionarios: TFDQuery;

  end;

implementation

var
  Qry :TFDQuery;

{ TClientes }

constructor TFuncionario.Create(conexao: TFDconnection);
begin
   fConexao  := conexao;

   Qry :=TFDQuery.Create(nil);
   Qry.Connection  :=fConexao;

end;
destructor TFuncionario.Destroy;
begin
  Qry.Destroy;
  inherited;
end;


function TFuncionario.listaFuncionarios(id: integer): TFDQuery;
begin
  try
    Qry.Close;
    Qry.SQL.Clear;
    Qry.sql.Add('SELECT');
    Qry.sql.Add(' id,');
    Qry.sql.Add(' idloja,');
    Qry.sql.Add(' nome,');
    Qry.sql.Add(' telefone,');
    Qry.sql.Add(' cidade');
    Qry.sql.Add('from funcionario');



    if id<>0 then
      Qry.SQL.Add('Where id='+QuotedStr(IntToStr(id)));

    Qry.Open();

  finally
     Result :=Qry;
  end;
end;

function TFuncionario.relatorioFuncionarios: TFDQuery;
begin
  try
    Qry.Close;
    Qry.SQL.Clear;
    Qry.sql.Add('SELECT');
    Qry.sql.Add('  funcionario.nome,');
    Qry.sql.Add('  funcionario.id,');
    Qry.sql.Add('  funcionario.cidade,');
    Qry.sql.Add('  funcionario.idloja,');
    Qry.sql.Add('  funcionario.telefone,');
    Qry.sql.Add('  loja.razaosocial');
    Qry.sql.Add('FROM');
    Qry.sql.Add('  funcionario');
    Qry.sql.Add('  INNER JOIN loja ON funcionario.idloja = loja.id');

    Qry.Open();

  finally
     Result :=Qry;
  end;
end;

end.
