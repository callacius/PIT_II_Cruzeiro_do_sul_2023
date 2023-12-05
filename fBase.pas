unit fBase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TfrmBase = class(TForm)
    Panel1: TPanel;
    PagCtrlMain: TPageControl;
    tabBusca: TTabSheet;
    tabCadastro: TTabSheet;
    Panel2: TPanel;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    dsMain: TDataSource;
    edtPesquisa: TEdit;
    Button1: TButton;
    Panel4: TPanel;
    DBNavigator1: TDBNavigator;
    pnlNomeTela: TPanel;
    procedure FormShow(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBase: TfrmBase;

implementation

{$R *.dfm}

procedure TfrmBase.DBGrid1DblClick(Sender: TObject);
begin
  PagCtrlMain.ActivePage := tabCadastro;
  dsMain.DataSet.Edit;
end;

procedure TfrmBase.DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
begin
  if (Button = nbInsert) or (Button = nbEdit) then
    PagCtrlMain.ActivePage := tabCadastro
  else
    PagCtrlMain.ActivePage := tabBusca;
end;

procedure TfrmBase.FormShow(Sender: TObject);
begin
  PagCtrlMain.ActivePage := tabBusca;
  dsMain.DataSet.Open;
end;

end.
