unit uCadFuncionario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Mask, classe.loja, DB;

type
  TfrmCadFuncionario = class(TForm)
    Panel1: TPanel;
    Bevel1: TBevel;
    pnCabecalho: TPanel;
    btnRestaurar: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton6: TSpeedButton;
    DBNavigator1: TDBNavigator;
    SpeedButton1: TSpeedButton;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    CBO_Lojas: TDBLookupComboBox;
    Label6: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnRestaurarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadFuncionario: TfrmCadFuncionario;

implementation

{$R *.dfm}

uses uDm;


procedure TfrmCadFuncionario.btnRestaurarClick(Sender: TObject);
begin
     DM.dsFuncionario.DataSet.Cancel;
     DM.dsFuncionario.DataSet.Edit;
end;

procedure TfrmCadFuncionario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action:=CaFree;
end;

procedure TfrmCadFuncionario.FormCreate(Sender: TObject);
begin
   DM.Loja  := TLoja.Create(DM.FDConnection1);
end;

procedure TfrmCadFuncionario.FormDestroy(Sender: TObject);
begin
  FreeAndNil(DM.Loja);
end;

procedure TfrmCadFuncionario.FormShow(Sender: TObject);
begin
  DM.dsLoja.DataSet := DM.Loja.listaLojas(0);
end;

procedure TfrmCadFuncionario.SpeedButton1Click(Sender: TObject);
begin
  frmCadFuncionario.Close;
end;

procedure TfrmCadFuncionario.SpeedButton2Click(Sender: TObject);
begin
    if DM.dsFuncionario.DataSet.State in ([DsInsert,dsEdit]) then
    DM.dsFuncionario.DataSet.Post;

    frmCadFuncionario.Close;
end;

end.
