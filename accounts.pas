unit accounts;

interface

uses SysUtils, base, Messages, Variants, Windows, Dialogs, userform, Forms; //userform;

type account = class
    userid : integer;
    name : string;
    f_name : string;
    family : string;
    login : string;
    md_password: char;
    address : string;
    email :string;
    regdate : TDateTime;
    cart_id :integer;
    wallet_id : integer;
    procedure RegUser(login:string; pass:char; email:string);
    procedure updateinfouser(userid:integer; name:string; f_name:string; family:string; address:string; email:string);
    procedure deluser(userid:integer);
    procedure GetUserList;
    procedure GetUserForm(userid:integer);
    procedure ViewUserForm;
    procedure initform;
    procedure GetUserRight;

end;

implementation

var
 formuser : Tformuser;

procedure account.RegUser(login: string; pass: Char; email: string);
begin
  base.DataModule1.mySQLDatabase1.Connect;
  base.DataModule1.mySQLQuery1.SQL.Clear;
  base.DataModule1.mySQLQuery1.SQL.Add('CALL create_user('+login+','+pass+', '+email+')');
  base.DataModule1.mySQLQuery1.Open;
end;

procedure account.updateinfouser(userid: Integer; name: string; f_name: string; family: string; address: string; email: string);
begin
    base.DataModule1.mySQLDatabase1.connect;
    base.DataModule1.mySQLQuery1.SQL.Clear;
    base.DataModule1.mySQLQuery1.SQL.Add('update accounts set family = '+family+', name = '+name+', f_name = '+f_name+', address = '+address+', email = '+email+' where id ='+IntToStr(userid)+'');
    base.DataModule1.mySQLQuery1.Open;
end;

procedure account.deluser(userid: integer);
begin
    base.DataModule1.mySQLDatabase1.Connect;
    base.DataModule1.mySQLQuery1.SQL.Clear;
    base.DataModule1.mySQLQuery1.SQL.Add('CALL delete_user('+IntToStr(userid)+')');
    base.DataModule1.mySQLQuery1.Open;
end;

procedure account.GetUserList;
begin
  base.DataModule1.mySQLDatabase1.Connect;
  base.DataModule1.mySQLQuery1.SQL.Clear;
  base.DataModule1.mySQLQuery1.SQL.Add('SELECT * FROM accounts');
  base.DataModule1.mySQLQuery1.Active;
  base.DataModule1.mySQLQuery1.Open;
end;

procedure account.GetUserForm(userid: integer);
//var
  //uf : userform;
begin
  base.DataModule1.mySQLDatabase1.Connect;
  base.DataModule1.mySQLQuery1.SQL.Clear;
  base.DataModule1.mySQLQuery1.SQL.Add('SELECT * FROM accounts where id = '+IntToStr(userid)+'');
  base.DataModule1.mySQLQuery1.Active;
  base.DataModule1.mySQLQuery1.Open;
end;

procedure account.ViewUserForm;
begin
  base.DataModule1.mySQLDatabase1.Connect;
  //base.DataModule1.mySQLQuery1.DataSource.DataSet.Open;
  base.DataModule1.DSUserForm.DataSet.Active;
  userform.FormUser.ELogin.Text:=base.DataModule1.DSUserForm.DataSet.FieldByName('login').AsString;
  userform.FormUser.EPass.Text:=base.DataModule1.DSUserForm.DataSet.FieldByName('password').AsString;
  userform.FormUser.EEmail.Text:=base.DataModule1.DSUserForm.DataSet.FieldByName('email').AsString;
  userform.FormUser.EFamily.Text:=base.DataModule1.DSUserForm.DataSet.FieldByName('family').AsString;
  userform.FormUser.EName.Text:=base.DataModule1.DSUserForm.DataSet.FieldByName('name').AsString;
  userform.FormUser.EF_name.Text:=base.DataModule1.DSUserForm.DataSet.FieldByName('f_name').AsString;
end;

procedure account.initform;
begin
   // userform.TFormUser.Create(self);
  try
   // userform.TFormUser.CreateParentedControl(self)
    //userform.FormUser.ShowModal;
  finally
    //userform.FormUser.Free;
  end;
end;

procedure account.GetUserRight;
begin
  //
end;

end.
