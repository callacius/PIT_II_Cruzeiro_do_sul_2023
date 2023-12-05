//---------------------------------------------------------------------------

// This software is Copyright (c) 2015 Embarcadero Technologies, Inc.
// You may only use this software if you are an authorized licensee
// of an Embarcadero developer tools product.
// This software is considered a Redistributable as defined under
// the software license agreement that comes with the Embarcadero Products
// and is subject to that software license agreement.

//---------------------------------------------------------------------------

program CafeUnifran;

uses
  Vcl.Forms,
  Vcl.Controls,
  Vcl.Dialogs,
  System.SysUtils,
  uMain in 'uMain.pas' {frmMain},
  Vcl.Themes,
  Vcl.Styles,
  dMain in 'dMain.pas' {dmMain: TDataModule},
  dLogin in 'dLogin.pas' {dmLogin: TDataModule},
  fLogin in 'fLogin.pas' {frmLogin},
  fBase in 'fBase.pas' {frmBase},
  fUsuarios in 'fUsuarios.pas' {frmUsuarios},
  dUsuarios in 'dUsuarios.pas' {dmUsuarios: TDataModule},
  dPessoas in 'dPessoas.pas' {dmPessoas: TDataModule},
  fPessoas in 'fPessoas.pas' {frmPessoas},
  dProdutos in 'dProdutos.pas' {dmProdutos: TDataModule},
  fProdutos in 'fProdutos.pas' {frmProdutos},
  dVendas in 'dVendas.pas' {dmVendas: TDataModule},
  fVendas in 'fVendas.pas' {frmVendas},
  fPesqCliente in 'fPesqCliente.pas' {frmPesquisaCliente},
  fPesqEntregador in 'fPesqEntregador.pas' {frmPesquisaEntregador},
  fPesqProdutos in 'fPesqProdutos.pas' {frmPesquisaProdutos};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TdmMain, dmMain);
  Application.CreateForm(TdmLogin, dmLogin);
  Application.CreateForm(TdmUsuarios, dmUsuarios);
  Application.CreateForm(TdmPessoas, dmPessoas);
  Application.CreateForm(TdmProdutos, dmProdutos);
  Application.CreateForm(TdmVendas, dmVendas);
  var frmLogin: TfrmLogin := TfrmLogin.Create(Application);
  frmLogin.ShowModal;
  var loginInicial: Boolean := True;
  var LoginEfetuadocomSucesso: Boolean := False;
  while (LoginEfetuadocomSucesso = False) do
  begin
    if frmLogin.ModalResult <> mrOk then
      Application.Terminate
    else
    begin
      with dmLogin.qryUsuarios do
      begin
        Close;
        Open;
        First;
        while not Eof do
        begin
          if loginInicial = False then
            frmLogin.ShowModal;
          if LowerCase(dmlogin.qryUsuariosNome.AsString) = lowerCase(frmLogin.edtUsuario.Text) then
          begin
            if dmlogin.qryUsuariosSenha.AsString <> frmLogin.edtSenha.Text then
            begin
              loginInicial := False;
              MessageDlg('A senha fornecida está incorreta. Por favor, verifique e tente novamente.', mtError, [mbOK], 0);
            end
            else
            begin
              LoginEfetuadocomSucesso := True;
            end;
          end
          else
          begin
            loginInicial := False;
            MessageDlg('O usuário fornecido está incorreto. Por favor, verifique e tente novamente.', mtError, [mbOK], 0);
          end;
          Next;
        end;
      end;
    end;
  end;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'TSplitView Demo';
  Application.CreateForm(TfrmMain, frmMain);
//  Application.CreateForm(TdmMain, dmMain);
//  Application.CreateForm(TdmLogin, dmLogin);
//  Application.CreateForm(TfrmLogin, frmLogin);
  Application.Run;
end.
