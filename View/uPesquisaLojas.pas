unit uPesquisaLojas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,Vcl.Buttons,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  dxDateRanges, dxScrollbarAnnotations, Data.DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, classe.loja;

type
  TfrmPesquisaLoja = class(TForm)
    pnCabecalho: TPanel;
    btnFiltrar: TSpeedButton;
    btnTodos: TSpeedButton;
    btnIncluir: TSpeedButton;
    btnAlterar: TSpeedButton;
    btnExcluir: TSpeedButton;
    SpeedButton6: TSpeedButton;
    Panel1: TPanel;
    btnConsultar: TSpeedButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    cxGrid1DBTableView1cnpj: TcxGridDBColumn;
    cxGrid1DBTableView1razaosocial: TcxGridDBColumn;
    cxGrid1DBTableView1telefone: TcxGridDBColumn;
    cxGrid1DBTableView1cidade: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    procedure SpeedButton6Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnTodosClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesquisaLoja: TfrmPesquisaLoja;

implementation

{$R *.dfm}

uses uCadLoja, uDm, uFiltro;

procedure TfrmPesquisaLoja.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action:=CaFree;
end;

procedure TfrmPesquisaLoja.FormCreate(Sender: TObject);
begin
   DM.Loja  := TLoja.Create(DM.FDConnection1);
end;

procedure TfrmPesquisaLoja.FormDestroy(Sender: TObject);
begin
  FreeAndNil(DM.Loja);
end;

procedure TfrmPesquisaLoja.FormShow(Sender: TObject);
begin
  DM.dsLoja.DataSet := DM.Loja.listaLojas(0);
end;

procedure TfrmPesquisaLoja.btnConsultarClick(Sender: TObject);
begin
   frmCadLoja:=tfrmCadLoja.Create(Application);
   frmCadLoja.DBNavigator1.Visible:=True;
   frmCadLoja.btnRestaurar.Enabled:=False;
   frmCadLoja.ShowModal;
end;

procedure TfrmPesquisaLoja.btnExcluirClick(Sender: TObject);
begin
  if MessageDlg('Deseja excluir registro?',mtInformation,[mbYes,mbNo],0) = mrYes then
  DM.dsLoja.DataSet.Delete;

end;

procedure TfrmPesquisaLoja.btnFiltrarClick(Sender: TObject);
begin
   frmFiltro:=tfrmFiltro.Create(Application);
   frmFiltro.frm:='LOJA';
   frmFiltro.nomeCampo:='razaosocial';
   frmFiltro.lblNome.Caption:='Informe a raz�o social';
   frmFiltro.ShowModal;
end;

procedure TfrmPesquisaLoja.btnIncluirClick(Sender: TObject);
begin
   DM.dsLoja.DataSet.Append;
   frmCadLoja:=TfrmCadLoja.Create(Application);
   frmCadLoja.DBNavigator1.Visible:=False;
   frmCadLoja.btnRestaurar.Enabled:=False;
   frmCadLoja.ShowModal;
end;

procedure TfrmPesquisaLoja.btnTodosClick(Sender: TObject);
begin
  DM.dsLoja.DataSet.Filtered:=False;
  DM.dsLoja.DataSet := DM.Loja.listaLojas(0);
end;

procedure TfrmPesquisaLoja.btnAlterarClick(Sender: TObject);
begin
   DM.dsLoja.DataSet.Edit;
   frmCadLoja:=TfrmCadLoja.Create(Application);
   frmCadLoja.DBNavigator1.Visible:=False;
   frmCadLoja.btnRestaurar.Enabled:=True;
   frmCadLoja.ShowModal;
end;

procedure TfrmPesquisaLoja.SpeedButton6Click(Sender: TObject);
begin
   frmPesquisaLoja.Close;
end;

end.
