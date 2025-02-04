object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 461
  Width = 772
  object mySQLDatabase1: TmySQLDatabase
    Connected = True
    DatabaseName = 'shop'
    UserName = 'root'
    UserPassword = 'admin'
    Host = 'localhost'
    ConnectOptions = [coCompress]
    Params.Strings = (
      'Port=3306'
      'TIMEOUT=30'
      'DatabaseName=shop'
      'Host=localhost'
      'UID=root'
      'PWD=admin')
    DatasetOptions = []
    Left = 80
    Top = 56
  end
  object mySQLQuery1: TmySQLQuery
    Database = mySQLDatabase1
    ObjectView = True
    RequestLive = True
    SQL.Strings = (
      '')
    Left = 256
    Top = 56
  end
  object DataSource1: TDataSource
    DataSet = mySQLQuery1
    Left = 176
    Top = 56
  end
  object DS_ListUser: TDataSource
    DataSet = mySQLQuery1
    Left = 176
    Top = 128
  end
  object DSUserForm: TDataSource
    DataSet = mySQLQuery1
    Left = 272
    Top = 128
  end
  object DSFormProduct: TDataSource
    DataSet = mySQLTableProduct
    Left = 176
    Top = 192
  end
  object mySQLTableProduct: TmySQLTable
    Database = mySQLDatabase1
    Active = True
    TableName = 'product'
    Left = 272
    Top = 192
  end
  object DSProductDepth: TDataSource
    DataSet = mySQLTabDepartment
    Left = 176
    Top = 248
  end
  object mySQLTabDepartment: TmySQLTable
    Database = mySQLDatabase1
    TableName = 'department'
    Left = 280
    Top = 248
  end
  object DSAccounts: TDataSource
    DataSet = mySQLTableAccounts
    Left = 528
    Top = 40
  end
  object mySQLTableAccounts: TmySQLTable
    Database = mySQLDatabase1
    Active = True
    TableName = 'accounts'
    Left = 616
    Top = 40
  end
  object mySQLTableOrders: TmySQLTable
    Database = mySQLDatabase1
    Active = True
    TableName = 'orders'
    Left = 616
    Top = 112
  end
  object DSOrders: TDataSource
    DataSet = mySQLTableOrders
    Left = 528
    Top = 112
  end
  object mySQLTableMony: TmySQLTable
    Database = mySQLDatabase1
    Active = True
    TableName = 'mony'
    Left = 616
    Top = 184
  end
  object DSMony: TDataSource
    DataSet = mySQLTableMony
    Left = 528
    Top = 184
  end
  object DSSupplier: TDataSource
    DataSet = mySQLTableSupplier
    Left = 528
    Top = 248
  end
  object mySQLTableSupplier: TmySQLTable
    Database = mySQLDatabase1
    Active = True
    TableName = 'supplier'
    Left = 616
    Top = 248
  end
end
