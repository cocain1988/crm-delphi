unit userform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, base, StdCtrls, ComCtrls;

type
  TFormUser = class(TForm)
    OkButton: TButton;
    CancelButton: TButton;
    EPass: TEdit;
    EEmail: TEdit;
    EFamily: TEdit;
    EName: TEdit;
    EF_name: TEdit;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    GroupBox1: TGroupBox;
    RadioButton3: TRadioButton;
    GroupBox2: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DateTimePicker1: TDateTimePicker;
    Label7: TLabel;
    EPass2: TEdit;
    Label8: TLabel;
    Memo1: TMemo;
    Label9: TLabel;
    ELogin: TEdit;
    procedure OkButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormUser: TFormUser;

implementation

{$R *.dfm}




procedure TFormUser.FormCreate(Sender: TObject);
begin
//sds
end;

procedure TFormUser.OkButtonClick(Sender: TObject);
begin
   // ac.updateinfouser();
end;

end.
