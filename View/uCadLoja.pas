unit uCadLoja;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Mask, DB;

type
  TfrmCadLoja = class(TForm)
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
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure btnRestaurarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadLoja: TfrmCadLoja;

implementation

{$R *.dfm}

uses uDm;

procedure TfrmCadLoja.btnRestaurarClick(Sender: TObject);
begin
     DM.dsLoja.DataSet.Cancel;
     DM.dsLoja.DataSet.Edit;
end;

procedure TfrmCadLoja.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action:=CaFree;
end;

procedure TfrmCadLoja.SpeedButton1Click(Sender: TObject);
begin
  frmCadLoja.Close;
end;

procedure TfrmCadLoja.SpeedButton2Click(Sender: TObject);
begin
  if DM.dsLoja.DataSet.State in ([DsInsert,dsEdit]) then
  DM.dsLoja.DataSet.Post;

  frmCadLoja.Close;
end;

end.
