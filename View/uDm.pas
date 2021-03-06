unit uDm;
interface
uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Comp.UI, Data.DB,
  FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Phys.SQLiteVDataSet,
  classe.loja,classe.funcionario, classe.conexao,
  Vcl.Forms;
type
  TDM = class(TDataModule)
    FDConnection1: TFDConnection;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    dsLoja: TDataSource;
    dsFuncionario: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
     conexao      : TConexao;
     Loja         : TLoja;
     Funcionario  : TFuncionario;
  end;
var
  DM: TDM;
implementation
{%CLASSGROUP 'Vcl.Controls.TControl'}


{$R *.dfm}
procedure TDM.DataModuleCreate(Sender: TObject);
var
  pathExe:String;
begin
   pathExe:=ExtractFilePath(Application.ExeName);
   FDPhysMySQLDriverLink1.VendorLib :=pathExe+'libmysql.dll';

   conexao :=TConexao.Create(FDConnection1);
   conexao.servidor :='localhost';
   conexao.base:='pedidos';
   conexao.porta:='3306';
   conexao.login:='root';
   conexao.senha:='123456';
end;
end.
