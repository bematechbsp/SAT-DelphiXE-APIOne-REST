unit EfetuarPagamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdHTTP, IOUtils, DBXJSON, IdGlobal, pngimage, ExtCtrls, ShellApi;

type
  TfrmEfetuarPagamento = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    memoTpag: TMemo;
    memoVpag: TMemo;
    btnEfetuarPagamento: TButton;
    btnJson: TButton;
    procedure btnEfetuarPagamentoClick(Sender: TObject);
    procedure btnJsonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEfetuarPagamento: TfrmEfetuarPagamento;

implementation
  Uses Principal, json;
{$R *.dfm}

procedure TfrmEfetuarPagamento.btnEfetuarPagamentoClick(Sender: TObject);
      var
          URL, Retorno, JsonString: WideString ;
          jsonPagamento: TJSONObject;
          JsonToSend:TMemoryStream;
          JsonStreamRetorno: AnsiString;
      begin
                   //JSon principal
                   jsonPagamento :=  TJSONObject.Create;

                   jsonPagamento := TJSONObject.Create;
                   jsonPagamento.AddPair('tPag', TJSONString.Create(memoTpag.Text));
                   jsonPagamento.AddPair('vPag', TJSONString.Create(memoVpag.Text));


                  JsonString := jsonPagamento.ToString;
                  JsonString := StringReplace(JsonString,#$A,'',[rfReplaceAll]);
                  JsonString := StringReplace(JsonString,#$D,'',[rfReplaceAll]);

                  //JsonString := memoJson.Lines.GetText();
                  JsonToSend := TMemoryStream.Create;
        begin
                  JsonToSend := TMemoryStream.Create;
              //JsonString := StringReplace(JsonString,#$A,'',[rfReplaceAll]);
              //JsonString := StringReplace(JsonString,#$D,'',[rfReplaceAll]);

              WriteStringToStream(JsonToSend, JsonString, enUTF8);
              JsonToSend.Position := 0;

              URL := 'http://localhost:9999/api/v1/documento/cupom/'+sessao+'/pagamento';

            try
                frmPrincipal.HTTP.Request.ContentType := 'application/json';
                frmPrincipal.HTTP.Request.CharSet := 'utf-8';
                frmPrincipal.Http.Response.ContentType :='application/json';
                frmPrincipal.Http.Response.CharSet := 'UTF-8';

               // memojson.Lines.Add(JsonString);

                JsonStreamRetorno := frmPrincipal.Http.Post(URL, JsonToSend);


                frmPrincipal.memoresultado.Lines.add(JsonStreamRetorno);
                //memoresultado.Lines.add('1=' + JsonStreamRetorno);
                //memoresultado.Lines.add('3=' + Retorno);
               FrmEfetuarPagamento.Hide;
               except on E:EIdHTTPProtocolException do
                  frmPrincipal.memoresultado.Lines.add(e.ErrorMessage);

              end;
          end;
      end;
procedure TfrmEfetuarPagamento.btnJsonClick(Sender: TObject);
var
          URL, Retorno, JsonString: WideString ;
          jsonPagamento: TJSONObject;
          JsonToSend:TMemoryStream;
          JsonStreamRetorno: AnsiString;

begin
                   //JSon principal
                   jsonPagamento :=  TJSONObject.Create;

                   jsonPagamento := TJSONObject.Create;
                   jsonPagamento.AddPair('tPag', TJSONString.Create(memoTpag.Text));
                   jsonPagamento.AddPair('vPag', TJSONString.Create(memoVpag.Text));


                  JsonString := jsonPagamento.ToString;
                  JsonString := StringReplace(JsonString,#$A,'',[rfReplaceAll]);
                  JsonString := StringReplace(JsonString,#$D,'',[rfReplaceAll]);

                  frmJSon.memoJSon.Clear;
                  frmJSon.memoJSon.Text :=   JsonString;
                  frmJSon.Show;


end;

end.
