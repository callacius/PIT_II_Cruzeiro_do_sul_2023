object dmMain: TdmMain
  OnCreate = DataModuleCreate
  Height = 480
  Width = 640
  object conMain: TFDConnection
    Params.Strings = (
      'Database=.\db.db3'
      'LockingMode=Normal'
      'DriverID=SQLite')
    LoginPrompt = False
    Transaction = tranMain
    UpdateTransaction = tranMain
    Left = 296
    Top = 136
  end
  object SQLiteDriver: TFDPhysSQLiteDriverLink
    Left = 448
    Top = 136
  end
  object tranMain: TFDTransaction
    Connection = conMain
    Left = 376
    Top = 136
  end
end
