program Project1;

uses
  Forms,
  Principal in 'Principal.pas' {frmPrincipal},
  AbreCupom in 'AbreCupom.pas' {frmAbreCupom},
  VenderItem in 'VenderItem.pas' {frmVenderItem},
  EfetuarPagamento in 'EfetuarPagamento.pas' {frmEfetuarPagamento},
  FecharCupom in 'FecharCupom.pas' {frmFecharcupom},
  CancelarCupom in 'CancelarCupom.pas' {frmCancelarCupom},
  Configuracoes in 'Configuracoes.pas' {frmConfiguracoes},
  Status in 'Status.pas' {frmStatus},
  Json in 'Json.pas' {frmJson};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmAbreCupom, frmAbreCupom);
  Application.CreateForm(TfrmVenderItem, frmVenderItem);
  Application.CreateForm(TfrmEfetuarPagamento, frmEfetuarPagamento);
  Application.CreateForm(TfrmFecharcupom, frmFecharcupom);
  Application.CreateForm(TfrmCancelarCupom, frmCancelarCupom);
  Application.CreateForm(TfrmConfiguracoes, frmConfiguracoes);
  Application.CreateForm(TfrmStatus, frmStatus);
  Application.CreateForm(TfrmJson, frmJson);
  Application.Run;
end.
