unit Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdHTTP, IOUtils, DBXJSON, IdGlobal, pngimage, ExtCtrls, ShellApi, jpeg;

type
  TfrmPrincipal = class(TForm)
    HTTP: TIdHTTP;
    memoSessao: TMemo;
    Label1: TLabel;
    Image1: TImage;
    lblAjuda: TLabel;
    GroupBox6: TGroupBox;
    GroupBox1: TGroupBox;
    btnStatus: TButton;
    btnPagamento: TButton;
    btnFecharCupom: TButton;
    btnVendeItem: TButton;
    btnAbrirCupom: TButton;
    btnCancelar: TButton;
    btnContingencia: TButton;
    GroupBox2: TGroupBox;
    memoresultado: TMemo;
    btnVendaCompleta: TButton;
    memoCfe: TMemo;
    Label2: TLabel;
    btnLimparLog: TButton;
    procedure btnLimparLogClick(Sender: TObject);
    procedure btnAbrirCupomClick(Sender: TObject);
    procedure btnVenderItemClick(Sender: TObject);
    procedure btnPagamentoClick(Sender: TObject);
    procedure btnFecharCupomClick(Sender: TObject);
    procedure LimparLogClick(Sender: TObject);
    procedure lblAjudaClick(Sender: TObject);
    procedure btnStatusClick(Sender: TObject);
    procedure btnVendeItemClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnContingenciaClick(Sender: TObject);
    procedure btnVendaCompletaClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;
  Sessao : AnsiString;
  cfe: AnsiString;
  json:AnsiString;
implementation
  Uses AbreCupom, VenderItem, EfetuarPagamento, FecharCupom, CancelarCupom, Configuracoes, Status, Json;

{$R *.dfm}

procedure TfrmPrincipal.btnCancelarClick(Sender: TObject);
begin
  if Length(cfe) = 0 then
  begin
     Application.MessageBox('Nenhuma nota para cancelar!','Erro',0);
  end
    else
    begin
      frmCancelarCupom.Show;
    end;
end;

procedure TfrmPrincipal.btnContingenciaClick(Sender: TObject);
begin
  frmConfiguracoes.Show;
end;

procedure TfrmPrincipal.btnFecharCupomClick(Sender: TObject);
begin
  frmFecharcupom.Show;
end;

procedure TfrmPrincipal.btnPagamentoClick(Sender: TObject);
    begin
      frmEfetuarPagamento.Show;
    end;

procedure TfrmPrincipal.btnStatusClick(Sender: TObject);
begin
  frmStatus.Show;
end;

procedure TfrmPrincipal.btnVendaCompletaClick(Sender: TObject);
      var

          URL, Retorno, JsonString: WideString ;
          Json,JsonToSend :TMemoryStream;
          JsonStreamRetorno: AnsiString;
          jsonObj, bnf, identificacao:TJSONObject;

      begin
        begin
               JsonString :='{"configuracao":{"imprimir":true,"email":true,"extratoResumido":true},'+
               '"identificacao":{"cnpj":"16716114000172","signAC":"SGR-SAT SISTEMA DE GESTAO E RETAGUARDA DO SAT","numeroCaixa":"001"},'+
               '"emitente":{"cnpj":"82373077000171","ie":"111111111111","indRatISSQN":"N"},"destinatario":'+
               '{"cpf":"65828625292","xNome":"teste"},"detalheProduto":[{"nItem":1,"produto":{"cProd":"24","xProd":"CB","ncm":"19","cfop":"5102","uCom":"UN","qCom"'+
               ':"1.0000","vUnCom":4,"indRegra":"A"},"imposto":{"icms":{"icms00":{"orig":0,"cst":"00","picms":7}},"pis":{"pisAliq":{"cst":"01","vbc":4,"ppis":0}},"cofins"'+
               ':{"cofinsAliq":{"cst":"01","vbc":4,"pcofins":0}},"vItem12741":"0.00"}}],"pagamento":[{"tPag":1,"vPag":4}]}';
               JsonToSend := TMemoryStream.Create;
              JsonString := StringReplace(JsonString,#$A,'',[rfReplaceAll]);
              JsonString := StringReplace(JsonString,#$D,'',[rfReplaceAll]);



              WriteStringToStream(JsonToSend, JsonString, enUTF8);
              JsonToSend.Position := 0;

              URL := 'http://localhost:9999/api/v1/documento';

            try
              HTTP.Request.ContentType := 'application/vnd+bematech.bnf+json';
              HTTP.Request.CharSet := 'utf-8';
               Http.Response.ContentType :='application/json';
                Http.Response.CharSet := 'UTF-8';

                JsonStreamRetorno := Http.Post(URL, JsonToSend);


                memoresultado.Lines.add(JsonStreamRetorno);
                jsonObj := TJSONObject.ParseJSONValue(TEncoding.ASCII.GetBytes(JsonStreamRetorno), 0) as TJSONObject;
                bnf := TJSONObject(jsonObj.Get('bnf').JsonValue);
                identificacao :=  TJSONObject(bnf.Get('identificacao').JsonValue);
                cfe := identificacao.Get(1).JsonValue.Value;


                FrmPrincipal.memoCfe.Clear;
                FrmPrincipal.memoCfe.Text := cfe;
                FrmPrincipal.memoresultado.Lines.add(bnf.ToString);



               except on E:EIdHTTPProtocolException do
                  memoresultado.Lines.add(e.ErrorMessage);

              end;
          end;

        end;

procedure TfrmPrincipal.btnVendeItemClick(Sender: TObject);
begin
  frmVenderItem.Show;
end;

procedure TfrmPrincipal.btnVenderItemClick(Sender: TObject);
      var

          URL, Retorno, JsonString: WideString ;
          Json,JsonToSend :TMemoryStream;
          JsonStreamRetorno: AnsiString;

      begin
        begin
                        //JsonString := MemoVenda.Lines.GetText();
                        JsonToSend := TMemoryStream.Create;
              //JsonString := StringReplace(JsonString,#$A,'',[rfReplaceAll]);
              //JsonString := StringReplace(JsonString,#$D,'',[rfReplaceAll]);

              WriteStringToStream(JsonToSend, JsonString, enUTF8);
              JsonToSend.Position := 0;

              URL := 'http://localhost:9999/api/v1/documento/cupom/'+sessao+'/item';

            try
              HTTP.Request.ContentType := 'application/json';
              HTTP.Request.CharSet := 'utf-8';
              Http.Response.ContentType :='application/json';
              Http.Response.CharSet := 'UTF-8';
              Http.Request.Accept := 'application/json';
              Http.Request.ContentType := 'application/json';


               // memojson.Lines.Add(JsonString);

                JsonStreamRetorno := Http.Post(URL, JsonToSend);


                memoresultado.Lines.add(JsonStreamRetorno);
                //memoresultado.Lines.add('1=' + JsonStreamRetorno);
                //memoresultado.Lines.add('3=' + Retorno);

               except on E:EIdHTTPProtocolException do
                  memoresultado.Lines.add(e.ErrorMessage);

              end;
          end;

        end;

procedure TfrmPrincipal.btnLimparLogClick(Sender: TObject);
    begin
      memoresultado.Clear;
    end;


procedure TfrmPrincipal.LimparLogClick(Sender: TObject);
begin
  memoSessao.Lines.Clear();
  memoResultado.Lines.Clear();
end;

procedure TfrmPrincipal.btnAbrirCupomClick(Sender: TObject);
    begin
      frmAbreCupom.Show;
    end;
procedure TfrmPrincipal.lblAjudaClick(Sender: TObject);
var
  Link: string;
begin
  Link := 'http://localhost:9999/docs/';
  ShellExecute(Application.Handle, PChar('open'), PChar(Link),nil, nil, SW_SHOW);
end;

end.
