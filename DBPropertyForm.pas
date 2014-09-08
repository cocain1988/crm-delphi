unit DBPropertyForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, settings;

type
  TFormDBProperty = class(TForm)
    SaveButton: TButton;
    CancelButton: TButton;
    EditHost: TEdit;
    EditUser: TEdit;
    EditPass: TEdit;
    EditPort: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    EditDataBase: TEdit;
    Label5: TLabel;
    procedure CancelButtonClick(Sender: TObject);
    procedure SaveButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDBProperty: TFormDBProperty;

implementation

{$R *.dfm}



procedure TFormDBProperty.CancelButtonClick(Sender: TObject);
begin
FormDBProperty.Close;
end;

procedure TFormDBProperty.SaveButtonClick(Sender: TObject);
begin
  //WriteIniFile(EditHost.Text,EditUser.Text,EditPass.Text,EditPort.Text,EditDataBase.Text);
end;

end.