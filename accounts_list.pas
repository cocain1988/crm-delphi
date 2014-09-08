unit accounts_list;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, base, accounts, Menus;

type
  Taccounts_form = class(TForm)
    DBGrid1: TDBGrid;
    PopupMenu1: TPopupMenu;
    PMEdit: TMenuItem;
    PMNewUser: TMenuItem;
    PMDelete: TMenuItem;
    procedure DBGrid1DblClick(Sender: TObject);




  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ac: account;


implementation

{$R *.dfm}








procedure Taccounts_form.DBGrid1DblClick(Sender: TObject);
var
  s:integer;
begin
  s:=DBgrid1.DataSource.DataSet.FieldByName('id').AsInteger;
  //ac.GetUserForm(s);
  ac.ViewUserForm;
end;

end.
