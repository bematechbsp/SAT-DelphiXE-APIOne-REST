unit CancelarCupom;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdHTTP, IOUtils, DBXJSON, IdGlobal, pngimage, ExtCtrls, ShellApi;

type
  TfrmCancelarCupom = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    memoId: TMemo;
    memoxJust: TMemo;
    memoCnpj: TMemo;
    memoNumeroCaixa: TMemo;
    memoSignAc: TMemo;
    memoCpf: TMemo;
    memoNome: TMemo;
    btnCancelarCupom: TButton;
    btnJson: TButton;
    procedure btnCancelarCupomClick(Sender: TObject);
    procedure inicializaComponentes(Sender: TObject);
    procedure btnJsonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCancelarCupom: TfrmCancelarCupom;

implementation
   Uses Principal, json;
{$R *.dfm}

procedure TfrmCancelarCupom.btnCancelarCupomClick(Sender: TObject);
      var
          URL, Retorno, JsonString: WideString ;
          jsonCancelamento, identificacao, destinatario: TJSONObject;
          JsonToSend:TMemoryStream;
          JsonStreamRetorno: AnsiString;
      begin
                   //JSon principal
                   jsonCancelamento :=  TJSONObject.Create;
                   jsonCancelamento.AddPair('id', TJSONString.Create(memoId.Text));
                  // jsonCancelamento.AddPair('xJust', TJSONString.Create(memoxJust.Text));


                   //Monta JSon identificação
                   identificacao := TJSONObject.Create;
                   identificacao.AddPair('cnpj', TJSONString.Create(memoCnpj.Text));
                   identificacao.AddPair('numeroCaixa', TJSONString.Create(memonumeroCaixa.Text));
                   identificacao.AddPair('signAC', TJSONString.Create(memosignAC.Text));


                  //Adiciona JSon identificação no JSon principal
                  jsonCancelamento.AddPair('identificacao',identificacao);

                   //Monta JSon destinatário
                   destinatario := TJSONObject.Create;
                   destinatario.AddPair('cpf', TJSONString.Create(memoCpf.Text));
                   //destinatario.AddPair('xNome', TJSONString.Create(memoNome.Text));

                  //Adiciona JSon destinatario JSon principal
                  jsonCancelamento.AddPair('destinatario',destinatario);

                  JsonString := jsonCancelamento.ToString;
                  JsonString := StringReplace(JsonString,#$A,'',[rfReplaceAll]);
                  JsonString := StringReplace(JsonString,#$D,'',[rfReplaceAll]);
        begin

                  JsonToSend := TMemoryStream.Create;

                  WriteStringToStream(JsonToSend, JsonString, enUTF8);
                  JsonToSend.Position := 0;

                  URL := 'http://localhost:9999/api/v1/documento/'+memoId.Text;

            try
                  FrmPrincipal.HTTP.Request.ContentType := 'application/vnd+bematech.bnc+json';
                  FrmPrincipal.HTTP.Request.CharSet := 'utf-8';
                  FrmPrincipal.Http.Response.ContentType :='application/json';
                  FrmPrincipal.Http.Response.CharSet := 'UTF-8';

                JsonStreamRetorno := FrmPrincipal.Http.Post(URL, JsonToSend);


                FrmPrincipal.memoresultado.Lines.add(JsonStreamRetorno);
                FrmCancelarCupom.Hide;
                cfe := '';
                FrmPrincipal.memoCfe.Text :='';

            except on E:EIdHTTPProtocolException do
                FrmPrincipal.memoresultado.Lines.add(e.ErrorMessage);
            end;
          end;
        end;

procedure TfrmCancelarCupom.btnJsonClick(Sender: TObject);
var
          JsonString: WideString ;
          jsonCancelamento, identificacao, destinatario: TJSONObject;
          JsonToSend:TMemoryStream;
          JsonStreamRetorno: AnsiString;
begin
                   //JSon principal
                   jsonCancelamento :=  TJSONObject.Create;
                   jsonCancelamento.AddPair('id', TJSONString.Create(memoId.Text));
                  // jsonCancelamento.AddPair('xJust', TJSONString.Create(memoxJust.Text));


                   //Monta JSon identificação
                   identificacao := TJSONObject.Create;
                   identificacao.AddPair('cnpj', TJSONString.Create(memoCnpj.Text));
                   identificacao.AddPair('numeroCaixa', TJSONString.Create(memonumeroCaixa.Text));
                   identificacao.AddPair('signAC', TJSONString.Create(memosignAC.Text));


                  //Adiciona JSon identificação no JSon principal
                  jsonCancelamento.AddPair('identificacao',identificacao);

                   //Monta JSon destinatário
                   destinatario := TJSONObject.Create;
                   destinatario.AddPair('cpf', TJSONString.Create(memoCpf.Text));
                   //destinatario.AddPair('xNome', TJSONString.Create(memoNome.Text));

                  //Adiciona JSon destinatario JSon principal
                  jsonCancelamento.AddPair('destinatario',destinatario);

                  JsonString := jsonCancelamento.ToString;
                  JsonString := StringReplace(JsonString,#$A,'',[rfReplaceAll]);
                  JsonString := StringReplace(JsonString,#$D,'',[rfReplaceAll]);

                  frmJSon.memoJSon.Clear;
                  frmJSon.memoJSon.Text :=   JsonString;
                  frmJSon.Show;

end;

procedure TfrmCancelarCupom.inicializaComponentes(Sender: TObject);
begin
  memoId.Text := cfe;
end;

end.
