object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 440
  Width = 703
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=pedidos'
      'User_Name=root'
      'Password=123456'
      'DriverID=MySQL')
    LoginPrompt = False
    Left = 136
    Top = 80
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    Left = 128
    Top = 152
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 160
    Top = 152
  end
  object dsLoja: TDataSource
    Left = 112
    Top = 312
  end
  object dsFuncionario: TDataSource
    Left = 152
    Top = 312
  end
end
