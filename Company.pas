unit Company;

interface

uses SysUtils, Windows, base, ComCtrls;


implementation

type companys = class
  procedure GetListCompany;
  procedure AddNewCompany(name:string; addres:string; inn:integer; kpp:integer; ogrn:integer);
  procedure DeleteCompany(id:integer);
  procedure GetListOrdersCompany(cid:integer);
  procedure GetListAccountsCompany(cid:integer);
end;


procedure companys.GetListCompany;
begin
base.DataModule1.mySQLDatabase1.Connect;
base.DataModule1.mySQLQuery1.SQL.Clear;
base.DataModule1.mySQLQuery1.SQL.Add('SELECT * FROM companys');
base.DataModule1.mySQLQuery1.Open;
base.DataModule1.mySQLQuery1.Active;
end;

procedure companys.AddNewCompany(name:string; addres:string; inn:integer; kpp:integer; ogrn:integer);
begin
base.DataModule1.mySQLDatabase1.Connect;
base.DataModule1.mySQLQuery1.SQL.Clear;
base.DataModule1.mySQLQuery1.SQL.Add('INSERT INTO companys(name, address, inn, kpp, ogrn) VALUES('+name+','+addres+','+IntToStr(inn)+','+IntToStr(kpp)+','+IntToStr(ogrn)+')');
base.DataModule1.mySQLQuery1.Open;
base.DataModule1.mySQLQuery1.Active;
end;

procedure companys.DeleteCompany(id:integer);
begin
base.DataModule1.mySQLDatabase1.Connect;
base.DataModule1.mySQLQuery1.SQL.Clear;
base.DataModule1.mySQLQuery1.SQL.Add('DELETE FROM company WHERE id='+IntToStr(id)+'');
base.DataModule1.mySQLQuery1.Open;
base.DataModule1.mySQLQuery1.Active;
end;

procedure companys.GetListOrdersCompany(cid:integer);
begin
base.DataModule1.mySQLDatabase1.Connect;
base.DataModule1.mySQLQuery1.SQL.Clear;
base.DataModule1.mySQLQuery1.SQL.Add('SELECT * FROM orders4company WHERE company_id = '+IntToStr(cid)+'');
base.DataModule1.mySQLQuery1.Open;
base.DataModule1.mySQLQuery1.Active;
end;

procedure companys.GetListAccountsCompany(cid:integer);
begin
base.DataModule1.mySQLDatabase1.Connect;
base.DataModule1.mySQLQuery1.SQL.Clear;
base.DataModule1.mySQLQuery1.SQL.Add('SELECT * FROM accounts where company_id='+IntToStr(cid)+'');
base.DataModule1.mySQLQuery1.Open;
base.DataModule1.mySQLQuery1.Active;
end;



end.
