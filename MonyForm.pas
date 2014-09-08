unit MonyForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, base, Menus, Grids, DBGrids;

type
  TFormMony = class(TForm)
    DBGrid1: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMony: TFormMony;

implementation

{$R *.dfm}

end.
