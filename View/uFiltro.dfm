object frmFiltro: TfrmFiltro
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Filtro'
  ClientHeight = 89
  ClientWidth = 438
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lblNome: TLabel
    Left = 8
    Top = 14
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object BitBtn1: TBitBtn
    Left = 274
    Top = 56
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 355
    Top = 56
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 2
    OnClick = BitBtn2Click
  end
  object EdtPesquisa: TEdit
    Left = 8
    Top = 29
    Width = 422
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 0
  end
end
