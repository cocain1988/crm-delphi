unit formproduct;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, base, DBCtrls, StdCtrls, ExtCtrls, Mask, Grids, DBGrids;

type
  Tproductform = class(TForm)
    DBGrid1: TDBGrid;
    DBName: TDBEdit;
    DBMesure: TDBEdit;
    DBCode: TDBEdit;
    DBWeight: TDBEdit;
    DBPrice: TDBEdit;
    DBVendor: TDBEdit;
    ComboBox1: TComboBox;
    AddButton: TButton;
    DelButton: TButton;
    EditButton: TButton;
    Image1: TImage;
    Label1: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    DBComboBox1: TDBComboBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    procedure AddButtonClick(Sender: TObject);
    procedure DelButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  productform: Tproductform;

implementation

{$R *.dfm}

procedure Tproductform.AddButtonClick(Sender: TObject);
begin
DBGrid1.DataSource.DataSet.Insert;
end;

procedure Tproductform.DelButtonClick(Sender: TObject);
begin
DBGrid1.DataSource.DataSet.Delete;
end;

end.
