object productform: Tproductform
  Left = 0
  Top = 0
  Caption = 'productform'
  ClientHeight = 430
  ClientWidth = 800
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 8
    Top = 255
    Width = 169
    Height = 163
  end
  object Label1: TLabel
    Left = 200
    Top = 263
    Width = 87
    Height = 13
    Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1090#1086#1074#1072#1088#1072
  end
  object Label3: TLabel
    Left = 200
    Top = 317
    Width = 105
    Height = 13
    Caption = #1050#1086#1083#1083#1080#1095#1077#1089#1090#1074#1086' '#1090#1086#1074#1072#1088#1072
  end
  object Label2: TLabel
    Left = 376
    Top = 263
    Width = 59
    Height = 13
    Caption = #1050#1086#1076' '#1090#1086#1074#1072#1088#1072
  end
  object Label4: TLabel
    Left = 376
    Top = 317
    Width = 56
    Height = 13
    Caption = #1042#1077#1089' '#1090#1086#1074#1072#1088#1072
  end
  object Label5: TLabel
    Left = 376
    Top = 363
    Width = 65
    Height = 13
    Caption = #1062#1077#1085#1072' '#1090#1086#1074#1072#1088#1072
  end
  object Label6: TLabel
    Left = 551
    Top = 317
    Width = 33
    Height = 13
    Caption = #1054#1090#1076#1077#1083
  end
  object Label7: TLabel
    Left = 551
    Top = 362
    Width = 79
    Height = 13
    Caption = #1055#1088#1086#1080#1079#1074#1086#1076#1080#1090#1077#1083#1100
  end
  object Label8: TLabel
    Left = 200
    Top = 363
    Width = 69
    Height = 13
    Caption = #1058#1080#1087' '#1091#1087#1072#1082#1086#1074#1082#1080
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 784
    Height = 241
    DataSource = DataModule1.DSFormProduct
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBName: TDBEdit
    Left = 200
    Top = 282
    Width = 153
    Height = 21
    DataField = 'name'
    DataSource = DataModule1.DSFormProduct
    TabOrder = 1
  end
  object DBMesure: TDBEdit
    Left = 200
    Top = 336
    Width = 153
    Height = 21
    DataField = 'measure'
    DataSource = DataModule1.DSFormProduct
    TabOrder = 2
  end
  object DBCode: TDBEdit
    Left = 376
    Top = 282
    Width = 153
    Height = 21
    DataField = 'code'
    DataSource = DataModule1.DSFormProduct
    TabOrder = 3
  end
  object DBWeight: TDBEdit
    Left = 376
    Top = 336
    Width = 153
    Height = 21
    DataField = 'weight'
    DataSource = DataModule1.DSFormProduct
    TabOrder = 4
  end
  object DBPrice: TDBEdit
    Left = 376
    Top = 381
    Width = 153
    Height = 21
    DataField = 'price'
    DataSource = DataModule1.DSFormProduct
    TabOrder = 5
  end
  object DBVendor: TDBEdit
    Left = 551
    Top = 381
    Width = 202
    Height = 21
    DataField = 'vendor'
    DataSource = DataModule1.DSFormProduct
    TabOrder = 6
  end
  object ComboBox1: TComboBox
    Left = 200
    Top = 381
    Width = 153
    Height = 21
    TabOrder = 7
    Text = 'ComboBox1'
  end
  object AddButton: TButton
    Left = 548
    Top = 255
    Width = 75
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 8
    OnClick = AddButtonClick
  end
  object DelButton: TButton
    Left = 629
    Top = 255
    Width = 75
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 9
    OnClick = DelButtonClick
  end
  object EditButton: TButton
    Left = 710
    Top = 255
    Width = 75
    Height = 25
    Caption = #1056#1077#1076'.'
    TabOrder = 10
  end
  object DBComboBox1: TDBComboBox
    Left = 551
    Top = 336
    Width = 202
    Height = 21
    DataField = 'name'
    DataSource = DataModule1.DSProductDepth
    TabOrder = 11
  end
end
