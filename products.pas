unit products;

interface

uses SysUtils, Windows, base;

implementation

type product = class
  name:string;
  code:integer;
  measure:double;
  weight:double;
  price:double;
  department:string;
  vendor:string;
  procedure add(name:string;Price:double);
  procedure delete(id:integer);
  procedure update(id:integer; name:string; code:integer; measure:double; weight:double; price:double; department:integer; vendor:string);
  procedure GetListProduct;
end;


procedure product.add(name:string;Price:double);
begin
  //Добавление товара
  base.DataModule1.mySQLDatabase1.Connect;
  base.DataModule1.mySQLQuery1.SQL.Clear;
  base.DataModule1.mySQLQuery1.SQL.Add('CALL add_new_product('+Name+','+FloatToStr(Price)+')');
  base.DataModule1.mySQLQuery1.Open;
  base.DataModule1.mySQLQuery1.Active;
end;

procedure product.delete(id:integer);
begin
  //Удаление товара
  base.DataModule1.mySQLDatabase1.Connect;
  base.DataModule1.mySQLQuery1.SQL.Clear;
  base.DataModule1.mySQLQuery1.SQL.Add('CALL delete_product('+IntToStr(id)+')');
  base.DataModule1.mySQLQuery1.Open;
  base.DataModule1.mySQLQuery1.Active;
end;

procedure product.update(id:integer; name:string; code:integer; measure:double; weight:double; price:double; department:integer; vendor:string);
begin
  //Обновление товара
  if id > 0 then
  begin
    base.DataModule1.mySQLDatabase1.Connect;
    base.DataModule1.mySQLQuery1.SQL.Clear;
    base.DataModule1.mySQLQuery1.SQL.Add('UPDATE product(name, code, measure, weight, price, department, viendor) SET('+name+','+IntToStr(code)+', '+FloatToStr(measure)+', '+FloatToStr(weight)+', '+FloatToStr(price)+', '+IntToStr(department)+', '+vendor+' ) WHERE id ='+IntToStr(id)+' ');
    base.DataModule1.mySQLQuery1.Open;
    base.DataModule1.mySQLQuery1.Active;
  end
  //else
   // ShowMessage('');
end;

procedure product.GetListProduct;
begin
  //sdsdsd
end;


end.
