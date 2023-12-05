//---------------------------------------------------------------------------

// This software is Copyright (c) 2015 Embarcadero Technologies, Inc.
// You may only use this software if you are an authorized licensee
// of an Embarcadero developer tools product.
// This software is considered a Redistributable as defined under
// the software license agreement that comes with the Embarcadero Products
// and is subject to that software license agreement.

//---------------------------------------------------------------------------

unit uMain;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  System.ImageList,
  System.Actions,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.WinXCtrls,
  Vcl.StdCtrls,
  Vcl.CategoryButtons,
  Vcl.Buttons,
  Vcl.ImgList,
  Vcl.Imaging.PngImage,
  Vcl.ComCtrls,
  Vcl.ActnList,
  fUsuarios,
  fPessoas,
  fProdutos,
  fVendas,
  Vcl.Menus;

type
  TfrmMain = class(TForm)
    aclMenuPrinc: TActionList;
    actPessoas: TAction;
    actVendas: TAction;
    actUsuarios: TAction;
    actProdutos: TAction;
    imlIconsMenu: TImageList;
    pnlToolbar: TPanel;
    imgMenu: TImage;
    lblTitle: TLabel;
    sbInfo: TStatusBar;
    SV: TSplitView;
    catMenuItems: TCategoryButtons;
    procedure imgMenuClick(Sender: TObject);
    procedure actUsuariosExecute(Sender: TObject);
    procedure actPessoasExecute(Sender: TObject);
    procedure actVendasExecute(Sender: TObject);
    procedure actProdutosExecute(Sender: TObject);
  private
    procedure Log(const Msg: string);
  public
  end;

var
  frmMain: TfrmMain;

implementation

uses
  Vcl.Themes;

{$R *.dfm}

procedure TfrmMain.actPessoasExecute(Sender: TObject);
begin
  Application.CreateForm(TfrmPessoas, frmPessoas);
  frmPessoas.Show;
  SV.Close;
end;

procedure TfrmMain.actProdutosExecute(Sender: TObject);
begin
  Application.CreateForm(TfrmProdutos, frmProdutos);
  frmProdutos.Show;
  SV.Close;
end;

procedure TfrmMain.actUsuariosExecute(Sender: TObject);
begin
  Application.CreateForm(TfrmUsuarios, frmUsuarios);
  frmUsuarios.Show;
  SV.Close;
end;

procedure TfrmMain.actVendasExecute(Sender: TObject);
begin
  Application.CreateForm(TfrmVendas, frmVendas);
  frmVendas.Show;
  SV.Close;
end;

procedure TfrmMain.imgMenuClick(Sender: TObject);
begin
  if SV.Opened then
    SV.Close
  else
    SV.Open;
end;

procedure TfrmMain.Log(const Msg: string);

begin

end;

end.
