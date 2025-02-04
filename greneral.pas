unit greneral;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, Menus, base, accounts_list, accounts, formproduct, products, About,
  StdCtrls, ExtCtrls, AccountsFrmLst, OrdersFrmLst, ProductFrmLst, ImgList, Company, MonyForm, SupplierForm,
  PropertyForm, DBPropertyForm;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    mfile: TMenuItem;
    mview: TMenuItem;
    medit: TMenuItem;
    msettings: TMenuItem;
    mhelp: TMenuItem;
    mfexit: TMenuItem;
    mfOpen: TMenuItem;
    mfSave: TMenuItem;
    mhabout: TMenuItem;
    StatusBar1: TStatusBar;
    Catalog: TMenuItem;
    Reports: TMenuItem;
    TreeView1: TTreeView;
    Panel1: TPanel;
    ProductButton: TButton;
    OrderButton: TButton;
    ClientButton: TButton;
    AccountsFrm1: TAccountsFrm;
    ListBox1: TListBox;
    ProductFrm1: TProductFrm;
    OrdersFrm1: TOrdersFrm;
    mcAccounts: TMenuItem;
    mcSupplyers: TMenuItem;
    mcWallet: TMenuItem;
    mcProducts: TMenuItem;
    mvPanel: TMenuItem;
    mvTaskBar: TMenuItem;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    msProperty: TMenuItem;
    msDBproperty: TMenuItem;
    procedure mfOpenClick(Sender: TObject);
    procedure mfexitClick(Sender: TObject);
    procedure mfSaveClick(Sender: TObject);
    procedure mhaboutClick(Sender: TObject);
    procedure ProductButtonClick(Sender: TObject);
    procedure OrderButtonClick(Sender: TObject);
    procedure ClientButtonClick(Sender: TObject);
    procedure mcAccountsClick(Sender: TObject);
    procedure mcProductsClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure mcWalletClick(Sender: TObject);
    procedure mcSupplyersClick(Sender: TObject);
    procedure msPropertyClick(Sender: TObject);
    procedure msDBpropertyClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  ac: account;
  accounts_form: Taccounts_form;
  n:TTreeNode;

implementation

{$R *.dfm}

procedure TForm1.FormShow(Sender: TObject);
var
i:integer;
begin
//�������� ������ ��������.
//company;
//base.DataModule1.mySQLDatabase1.Connect;
//base.DataModule1.mySQLQuery1.SQL.Clear;
//base.DataModule1.mySQLQuery1.SQL.Add('SELECT name FROM companys');
//base.DataModule1.mySQLQuery1.ExecSQL;
//comp:=base.DataModule1.DataSource1.DataSet.FieldByName('name');
//for i := 0 to base.DataModule1.DataSource1.DataSet.FieldCount - 1 do
//begin
//    TreeView1.Items.Add(n, base.DataModule1.DataSource1.DataSet.GetFieldNames('name'));
//end;

ListBox1.Items.Add('��������� ����� � �������');
ListBox1.Items.Add('--');
ListBox1.Items.Add('�������� � ���������� �������� ������������');
ListBox1.Items.Add('--');
ListBox1.Items.Add('��������� � ����������� ��� ������');
ListBox1.Items.Add('--');
ListBox1.Items.Add('����������� ������� ��� ��������������');
ListBox1.Items.Add('--');
ListBox1.Items.Add('��������� �� ������ ������� � ����������� ������');

end;

procedure TForm1.mcAccountsClick(Sender: TObject);
begin
  // ����������� ������ ��������
  ac.GetUserList;
  accounts_form := Taccounts_form.Create(self);
  try
    accounts_form.ShowModal;
  finally
    accounts_form.Free;
  end;
end;

procedure TForm1.mcProductsClick(Sender: TObject);
begin
  //����������� ���� ����� ���������� �������
  productform := formproduct.Tproductform.Create(self);
  try
    productform.ShowModal;
  finally
    productform.Free;
  end;
end;

procedure TForm1.mcSupplyersClick(Sender: TObject);
begin
// ����������� ����� �����������.
  formsupplier:=supplierform.TFormSupplier.Create(self);
  try
    formsupplier.ShowModal;
  finally
    formsupplier.Free;
  end;
end;

procedure TForm1.mcWalletClick(Sender: TObject);
begin
//����������� ���� ����� ���������� �������� ������������
  formmony:= monyform.TFormMony.Create(self);
  try
    formmony.ShowModal;
  finally
    formmony.Free;
  end;
end;

procedure TForm1.mfOpenClick(Sender: TObject);
begin
//OpenDialog1.OnShow;
end;

procedure TForm1.mfexitClick(Sender: TObject);
begin
  halt;
end;

procedure TForm1.mfSaveClick(Sender: TObject);
begin
//SaveDialog1.OnShow;
end;

procedure TForm1.mhaboutClick(Sender: TObject);
begin
  //����������� ������� � ���������.
  AboutBox:= About.TAboutBox.Create(self);
  try
    AboutBox.ShowModal;
  finally
    AboutBox.Free;
  end;
end;



procedure TForm1.msDBpropertyClick(Sender: TObject);
begin
// ��������� ��������� � ��.
  formdbproperty:=DBpropertyForm.TFormDBProperty.Create(self);
  try
    formdbproperty.ShowModal;
  finally
    formproperty.Free;
  end;
end;

procedure TForm1.msPropertyClick(Sender: TObject);
begin
// ��������� ��������� �����.
  formproperty:=propertyform.TFormProperty.Create(self);
  try
    formproperty.ShowModal;
  finally
    formproperty.Free;
  end;

end;

procedure TForm1.OrderButtonClick(Sender: TObject);
begin
OrdersFrm1.Visible:=True;
OrdersFrm1.Left:=264;
OrdersFrm1.Top:=0;
OrderButton.Enabled:=false;
if ProductButton.Enabled and ClientButton.Enabled = false then
  begin
  ProductButton.Enabled:=true;
  ClientButton.Enabled:=true;
  end;
if ProductFrm1.Visible and AccountsFrm1.Visible = true then
  begin
  ProductFrm1.Visible:=false;
  AccountsFrm1.Visible:=false;
  end;
end;

procedure TForm1.ProductButtonClick(Sender: TObject);
begin
ProductFrm1.Visible:=True;
ProductFrm1.Top:=0;
ProductFrm1.Left:=264;
ProductButton.Enabled:=false;
if OrderButton.Enabled and ClientButton.Enabled = false then
  begin
  OrderButton.Enabled:=true;
  ClientButton.Enabled:=true;
  end;
if OrdersFrm1.Visible and AccountsFrm1.Visible = true then
  begin
  AccountsFrm1.Visible:=false;
  OrdersFrm1.Visible:=false;
  end;
end;

procedure TForm1.ClientButtonClick(Sender: TObject);
begin
AccountsFrm1.Visible:=true;
AccountsFrm1.Top:=0;
AccountsFrm1.Left:=264;
ClientButton.Enabled:=false;
if orderButton.Enabled and ProductButton.Enabled = false then
  begin
  OrderButton.Enabled:=true;
  ProductButton.Enabled:=true;
  end;
if OrdersFrm1.Visible and ProductFrm1.Visible = true then
  begin
  OrdersFrm1.Visible:=false;
  ProductFrm1.Visible:=false;
  end;
end;

end.
