unit uFiltro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmFiltro = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    EdtPesquisa: TEdit;
    lblNome: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    nomeCampo,frm:string;
    { Public declarations }
  end;

var
  frmFiltro: TfrmFiltro;

implementation

{$R *.dfm}

uses uDm;

procedure TfrmFiltro.BitBtn1Click(Sender: TObject);
begin
  if Trim(EdtPesquisa.Text)='' Then
  begin
    ShowMessage('Favor informe o nome');
    EdtPesquisa.SetFocus;
    Exit;
  end;

  if frm='FUNCIONARIO' then
  begin
      DM.dsFuncionario.DataSet.Filtered := False;
      DM.dsFuncionario.DataSet.Filter := '[' + nomeCampo + '] LIKE ''%' + EdtPesquisa.Text + '%''';
      DM.dsFuncionario.DataSet.Filtered := True;
  end;

  if frm='LOJA' then
  begin
      DM.dsLoja.DataSet.Filtered := False;
      DM.dsLoja.DataSet.Filter := '[' + nomeCampo + '] LIKE ''%' + EdtPesquisa.Text + '%''';
      DM.dsLoja.DataSet.Filtered := True;
  end;

  frmFiltro.Close;
end;

procedure TfrmFiltro.BitBtn2Click(Sender: TObject);
begin
  frmFiltro.Close;
end;

end.
