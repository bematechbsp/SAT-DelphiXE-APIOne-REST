unit FecharCupom;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdHTTP, IOUtils, DBXJSON, IdGlobal, pngimage, ExtCtrls, ShellApi, xmldom, XMLIntf, msxmldom, XMLDoc;

type
  TfrmFecharcupom = class(TForm)
    GroupBox1: TGroupBox;
    btnFecharCupom: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    memoInfAdicionalInfCpl: TMemo;
    memoTotalvCFLei12741: TMemo;
    btnJson: TButton;
    procedure btnFecharCupomClick(Sender: TObject);
    procedure btnJsonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFecharcupom: TfrmFecharcupom;

implementation
  Uses Principal, json;

{$R *.dfm}

procedure TfrmFecharcupom.btnFecharCupomClick(Sender: TObject);
      var
          URL, Retorno, JsonString: WideString ;
          jsonFechamento, total, informacaoAdicional,jsonObj,bnf,identificacao: TJSONObject;
          JsonToSend:TMemoryStream;
          JsonStreamRetorno: WideString;



      begin
                   //JSon principal
                   jsonFechamento :=  TJSONObject.Create;

                   //Monta JSon do total
                   total := TJSONObject.Create;
                   total.AddPair('vCFeLei12741', TJSONString.Create(memoTotalvCFLei12741.Text));

                  //Adiciona JSon do total no JSon principal
                  jsonFechamento.AddPair('total',total);

                   //Monta JSon Informação Adicional
                   informacaoAdicional := TJSONObject.Create;
                   informacaoAdicional.AddPair('infCpl', TJSONString.Create(memoInfAdicionalInfCpl.Text));

                  //Adiciona JSon do total no JSon principal
                  jsonFechamento.AddPair('informacaoAdicional',informacaoAdicional);

                  JsonString := jsonFechamento.ToString;
                  JsonString := StringReplace(JsonString,#$A,'',[rfReplaceAll]);
                  JsonString := StringReplace(JsonString,#$D,'',[rfReplaceAll]);
        begin

                  JsonToSend := TMemoryStream.Create;

                  WriteStringToStream(JsonToSend, JsonString, enUTF8);
                  JsonToSend.Position := 0;

                  URL := 'http://localhost:9999/api/v1/documento/cupom/'+sessao;

            try
                  FrmPrincipal.HTTP.Request.ContentType := 'application/json';
                  FrmPrincipal.HTTP.Request.CharSet := 'utf-8';
                  FrmPrincipal.Http.Response.ContentType :='application/json';
                  FrmPrincipal.Http.Response.CharSet := 'UTF-8';
                  FrmPrincipal.Http.Request.Accept := 'application/json';

                  JsonStreamRetorno := FrmPrincipal.Http.Post(URL, JsonToSend);

                  jsonObj := TJSONObject.ParseJSONValue(TEncoding.ASCII.GetBytes(JsonStreamRetorno), 0) as TJSONObject;
                  bnf := TJSONObject(jsonObj.Get('bnf').JsonValue);
                  identificacao :=  TJSONObject(bnf.Get('identificacao').JsonValue);
                  cfe := identificacao.Get(1).JsonValue.Value;


                  FrmPrincipal.memoCfe.Clear;
                  FrmPrincipal.memoCfe.Text := cfe;
                  FrmPrincipal.memoresultado.Lines.add(bnf.ToString);

                  FrmFecharCupom.Hide;
                  //FrmPrincipal.memoSessao.Text :='';
                 // sessao := '';

            except on E:EIdHTTPProtocolException do
                FrmPrincipal.memoresultado.Lines.add(e.ErrorMessage);
            end;
          end;
        end;
procedure TfrmFecharcupom.btnJsonClick(Sender: TObject);
var
          JsonString: WideString ;
          jsonFechamento, total, informacaoAdicional: TJSONObject;

begin
                   //JSon principal
                   jsonFechamento :=  TJSONObject.Create;

                   //Monta JSon do total
                   total := TJSONObject.Create;
                   total.AddPair('vCFeLei12741', TJSONString.Create(memoTotalvCFLei12741.Text));

                  //Adiciona JSon do total no JSon principal
                  jsonFechamento.AddPair('total',total);

                   //Monta JSon Informação Adicional
                   informacaoAdicional := TJSONObject.Create;
                   informacaoAdicional.AddPair('infCpl', TJSONString.Create(memoInfAdicionalInfCpl.Text));

                  //Adiciona JSon do total no JSon principal
                  jsonFechamento.AddPair('informacaoAdicional',informacaoAdicional);

                  JsonString := jsonFechamento.ToString;
                  JsonString := StringReplace(JsonString,#$A,'',[rfReplaceAll]);
                  JsonString := StringReplace(JsonString,#$D,'',[rfReplaceAll]);

                  frmJSon.memoJSon.Clear;
                  frmJSon.memoJSon.Text :=   JsonString;
                  frmJSon.Show;


end;

end.
