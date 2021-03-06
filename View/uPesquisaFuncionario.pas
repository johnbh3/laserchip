unit uPesquisaFuncionario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
   Vcl.Buttons, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  dxDateRanges, dxScrollbarAnnotations, Data.DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, classe.funcionario;

type
  TfrmPesquisaFuncionario = class(TForm)
    pnCabecalho: TPanel;
    btnCadLojas: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    Panel1: TPanel;
    SpeedButton7: TSpeedButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    cxGrid1DBTableView1NOME: TcxGridDBColumn;
    cxGrid1DBTableView1TEL_CEL: TcxGridDBColumn;
    cxGrid1DBTableView1END_CIDADE: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    procedure SpeedButton6Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure btnCadLojasClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesquisaFuncionario: TfrmPesquisaFuncionario;

implementation

{$R *.dfm}

uses uCadLoja, uCadFuncionario, uDm, uFiltro;

procedure TfrmPesquisaFuncionario.btnCadLojasClick(Sender: TObject);
begin
   frmFiltro:=tfrmFiltro.Create(Application);
   frmFiltro.nomeCampo:='nome';
   frmFiltro.frm:='FUNCIONARIO';
   frmFiltro.lblNome.Caption:='Informe o nome';
   frmFiltro.ShowModal;
end;

procedure TfrmPesquisaFuncionario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action:=CaFree;
end;

procedure TfrmPesquisaFuncionario.FormCreate(Sender: TObject);
begin
   DM.Funcionario  := TFuncionario.Create(DM.FDConnection1);
end;

procedure TfrmPesquisaFuncionario.FormDestroy(Sender: TObject);
begin
  FreeAndNil(DM.Funcionario);
end;

procedure TfrmPesquisaFuncionario.FormShow(Sender: TObject);
begin
  DM.dsfuncionario .DataSet := DM.Funcionario.listaFuncionarios(0);
end;

procedure TfrmPesquisaFuncionario.SpeedButton2Click(Sender: TObject);
begin
  DM.dsFuncionario.DataSet.Filtered:=False;
  DM.dsFuncionario.DataSet := DM.Funcionario.listaFuncionarios(0);
end;

procedure TfrmPesquisaFuncionario.SpeedButton3Click(Sender: TObject);
begin
   DM.dsFuncionario.DataSet.Append;
   frmCadFuncionario:=tfrmCadFuncionario.Create(Application);
   frmCadFuncionario.DBNavigator1.Visible:=False;
   frmCadFuncionario.btnRestaurar.Enabled:=False;
   frmCadFuncionario.ShowModal;
end;

procedure TfrmPesquisaFuncionario.SpeedButton4Click(Sender: TObject);
begin
   DM.dsFuncionario.DataSet.Edit;
   frmCadFuncionario:=tfrmCadFuncionario.Create(Application);
   frmCadFuncionario.DBNavigator1.Visible:=False;
   frmCadFuncionario.btnRestaurar.Enabled:=True;
   frmCadFuncionario.ShowModal;
end;

procedure TfrmPesquisaFuncionario.SpeedButton5Click(Sender: TObject);
begin
  if MessageDlg('Deseja excluir registro?',mtInformation,[mbYes,mbNo],0) = mrYes then
  DM.dsFuncionario.DataSet.Delete;
end;

procedure TfrmPesquisaFuncionario.SpeedButton6Click(Sender: TObject);
begin
   frmPesquisaFuncionario.Close;
end;

procedure TfrmPesquisaFuncionario.SpeedButton7Click(Sender: TObject);
begin
   frmCadFuncionario:=tfrmCadFuncionario.Create(Application);
   frmCadFuncionario.DBNavigator1.Visible:=True;
   frmCadFuncionario.btnRestaurar.Enabled:=False;
   frmCadFuncionario.ShowModal;
end;

end.
