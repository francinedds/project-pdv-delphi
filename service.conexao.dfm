object ServiceConexao: TServiceConexao
  Height = 480
  Width = 142
  object FDConnection: TFDConnection
    Params.Strings = (
      'Database=C:\Users\EMANUEL\Desktop\banco\BANCOGOV.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Protocol=TCPIP'
      'Port=3050'
      'Server=127.0.0.1'
      'CharacterSet=WIN1252'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 56
    Top = 56
  end
  object WaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 56
    Top = 152
  end
  object DriverLink: TFDPhysFBDriverLink
    Left = 56
    Top = 232
  end
end
