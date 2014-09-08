object FormUser: TFormUser
  Left = 0
  Top = 0
  Caption = 'FormUser'
  ClientHeight = 554
  ClientWidth = 372
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 23
    Width = 30
    Height = 13
    Caption = #1051#1086#1075#1080#1085
  end
  object Label2: TLabel
    Left = 8
    Top = 69
    Width = 37
    Height = 13
    Caption = #1055#1072#1088#1086#1083#1100
  end
  object Label3: TLabel
    Left = 183
    Top = 168
    Width = 24
    Height = 13
    Caption = 'Email'
  end
  object Label4: TLabel
    Left = 183
    Top = 21
    Width = 44
    Height = 13
    Caption = #1060#1072#1084#1080#1083#1080#1103
  end
  object Label5: TLabel
    Left = 183
    Top = 69
    Width = 19
    Height = 13
    Caption = #1048#1084#1103
  end
  object Label6: TLabel
    Left = 183
    Top = 117
    Width = 49
    Height = 13
    Caption = #1054#1090#1095#1077#1089#1090#1074#1086
  end
  object Label7: TLabel
    Left = 8
    Top = 168
    Width = 97
    Height = 13
    Caption = #1044#1072#1090#1072' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080':'
  end
  object Label8: TLabel
    Left = 8
    Top = 115
    Width = 81
    Height = 13
    Caption = #1055#1072#1088#1086#1083#1100' '#1077#1097#1077' '#1088#1072#1079
  end
  object Label9: TLabel
    Left = 8
    Top = 402
    Width = 35
    Height = 13
    Caption = #1040#1076#1088#1077#1089':'
  end
  object OkButton: TButton
    Left = 201
    Top = 521
    Width = 75
    Height = 25
    Align = alCustom
    Caption = 'Ok'
    TabOrder = 0
    OnClick = OkButtonClick
  end
  object CancelButton: TButton
    Left = 289
    Top = 521
    Width = 75
    Height = 25
    Align = alCustom
    Caption = 'Cancel'
    TabOrder = 1
  end
  object EPass: TEdit
    Left = 8
    Top = 88
    Width = 158
    Height = 21
    TabOrder = 2
  end
  object EEmail: TEdit
    Left = 183
    Top = 187
    Width = 180
    Height = 21
    TabOrder = 3
  end
  object EFamily: TEdit
    Left = 183
    Top = 40
    Width = 178
    Height = 21
    TabOrder = 4
  end
  object EName: TEdit
    Left = 183
    Top = 88
    Width = 178
    Height = 21
    TabOrder = 5
  end
  object EF_name: TEdit
    Left = 183
    Top = 136
    Width = 178
    Height = 21
    TabOrder = 6
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 225
    Width = 169
    Height = 171
    Caption = #1058#1080#1087' '#1091#1095#1077#1090#1085#1086#1081' '#1079#1072#1087#1080#1089#1080
    TabOrder = 7
    object RadioButton1: TRadioButton
      Left = 19
      Top = 24
      Width = 113
      Height = 17
      Caption = 'RadioButton1'
      TabOrder = 0
    end
    object RadioButton2: TRadioButton
      Left = 19
      Top = 63
      Width = 113
      Height = 17
      Caption = 'RadioButton2'
      TabOrder = 1
    end
    object RadioButton3: TRadioButton
      Left = 19
      Top = 102
      Width = 113
      Height = 17
      Caption = 'RadioButton3'
      TabOrder = 2
    end
  end
  object GroupBox2: TGroupBox
    Left = 183
    Top = 225
    Width = 180
    Height = 171
    Caption = #1055#1088#1072#1074#1072' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
    TabOrder = 8
    object CheckBox1: TCheckBox
      Left = 16
      Top = 32
      Width = 97
      Height = 17
      Caption = 'CheckBox1'
      TabOrder = 0
    end
    object CheckBox2: TCheckBox
      Left = 16
      Top = 55
      Width = 97
      Height = 17
      Caption = 'CheckBox2'
      TabOrder = 1
    end
    object CheckBox3: TCheckBox
      Left = 16
      Top = 78
      Width = 97
      Height = 17
      Caption = 'CheckBox3'
      TabOrder = 2
    end
    object CheckBox4: TCheckBox
      Left = 16
      Top = 101
      Width = 97
      Height = 17
      Caption = 'CheckBox4'
      TabOrder = 3
    end
  end
  object DateTimePicker1: TDateTimePicker
    Left = 8
    Top = 187
    Width = 158
    Height = 21
    Date = 41625.940987002320000000
    Time = 41625.940987002320000000
    TabOrder = 9
  end
  object EPass2: TEdit
    Left = 8
    Top = 134
    Width = 158
    Height = 21
    TabOrder = 10
  end
  object Memo1: TMemo
    Left = 8
    Top = 421
    Width = 356
    Height = 94
    Lines.Strings = (
      'Memo1')
    TabOrder = 11
  end
  object ELogin: TEdit
    Left = 8
    Top = 42
    Width = 158
    Height = 21
    TabOrder = 12
  end
end
