unit AccountsFrmLst;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, ExtCtrls, base, ComCtrls, Grids, DBGrids, ToolWin, ImgList;

type
  TAccountsFrm = class(TFrame)
    ToolBar1: TToolBar;
    DBGrid1: TDBGrid;
    AddUserToolButton: TToolButton;
    DeleteUserToolButton: TToolButton;
    ImageList1: TImageList;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
