unit SupplierForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, base, Grids, DBGrids;

type
  TFormSupplier = class(TForm)
    DBGrid1: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSupplier: TFormSupplier;

implementation

{$R *.dfm}

end.
