unit Configuracoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdHTTP, IOUtils, DBXJSON, IdGlobal, pngimage, ExtCtrls, ShellApi, xmldom, XMLIntf, msxmldom, XMLDoc;



type
  TfrmConfiguracoes = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    memoProxy: TMemo;
    memoImpLogo: TMemo;
    memoPortaImpressora: TMemo;
    memoRazaoSocial: TMemo;
    memoUsuarioProxy: TMemo;
    memoValidacaoDadosVenda: TMemo;
    memoCaminhoArquivoLogo: TMemo;
    memoPortaApi: TMemo;
    memoIdPdv: TMemo;
    memoImprimirExtrato: TMemo;
    memoCustodiaLocal: TMemo;
    memoFabricante: TMemo;
    memoPortaProxy: TMemo;
    memoSenhaSat: TMemo;
    memoHostProxy: TMemo;
    memoCortarImpressao: TMemo;
    memoCustodiarDocumento: TMemo;
    memoImpressora2500: TMemo;
    memoPortaDoSat: TMemo;
    memoDominiodoProxy: TMemo;
    memoAmbienteDeHomologacao: TMemo;
    memoSenhaDoProxy: TMemo;
    memoCnpj: TMemo;
    memoIe: TMemo;
    btnLerParametros: TButton;
    btnGravarConfiguracoes: TButton;
    btnJson: TButton;
    Label25: TLabel;
    memoLogoEsquerda: TMemo;
    procedure btnLerParametrosClick(Sender: TObject);
    procedure btnGravarConfiguracoesClick(Sender: TObject);
    procedure btnJsonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConfiguracoes: TfrmConfiguracoes;

implementation
    Uses principal, json;
{$R *.dfm}

procedure TfrmConfiguracoes.btnGravarConfiguracoesClick(Sender: TObject);
    var
          URL, Retorno, JsonString: WideString ;
          jsonConfiguracoes, cortaExtrato, item: TJSONObject;
          configuracoes:TJSONArray;
          jsa: TJsonPair;
          JsonToSend:TMemoryStream;
          JsonStreamRetorno: AnsiString;

      begin
                   //JSon principal
                   jsonConfiguracoes :=  TJSONObject.Create;
                   configuracoes :=  TJSONArray.Create;
                   jsa := TJSONPair.Create('configuracao', configuracoes);

                    item := TJsonObject.Create();
                    item.AddPair(TJSONPair.Create('nome', 'PROXY'));
                    item.AddPair(TJSONPair.Create('valor', memoProxy.Text));
                    configuracoes.AddElement(item);


                    item := TJsonObject.Create();
                    item.AddPair(TJSONPair.Create('nome', 'PRINT_LOGO'));
                    item.AddPair(TJSONPair.Create('valor', memoImpLogo.Text));
                    configuracoes.AddElement(item);


                    item := TJsonObject.Create();
                    item.AddPair(TJSONPair.Create('nome', 'RAZAO_SOCIAL'));
                    item.AddPair(TJSONPair.Create('valor', memoRazaoSocial.Text));
                    configuracoes.AddElement(item);

                    item := TJsonObject.Create();
                    item.AddPair(TJSONPair.Create('nome', 'URI_IMPRESSORA'));
                    item.AddPair(TJSONPair.Create('valor', memoPortaImpressora.Text));
                    configuracoes.AddElement(item);


                    item := TJsonObject.Create();
                    item.AddPair(TJSONPair.Create('nome', 'PROXY_USER'));
                    item.AddPair(TJSONPair.Create('valor', memoUsuarioProxy.Text));
                    configuracoes.AddElement(item);


                    item := TJsonObject.Create();
                    item.AddPair(TJSONPair.Create('nome', 'VALIDACAO'));
                    item.AddPair(TJSONPair.Create('valor', memoValidacaoDadosVenda.Text));
                    configuracoes.AddElement(item);


                    item := TJsonObject.Create();
                    item.AddPair(TJSONPair.Create('nome', 'PRINT_LOGO_IMG'));
                    memoCaminhoArquivoLogo.Text := StringReplace(memoCaminhoArquivoLogo.Text,'\','\\',[rfReplaceAll]);
                    item.AddPair(TJSONPair.Create('valor', memoCaminhoArquivoLogo.Text));
                    configuracoes.AddElement(item);


                    item := TJsonObject.Create();
                    item.AddPair(TJSONPair.Create('nome', 'API_PORT'));
                    item.AddPair(TJSONPair.Create('valor', memoPortaApi.Text));
                    configuracoes.AddElement(item);


                    item := TJsonObject.Create();
                    item.AddPair(TJSONPair.Create('nome', 'ID_PDV'));
                    item.AddPair(TJSONPair.Create('valor', memoIdPdv.Text ));
                    configuracoes.AddElement(item);


                    item := TJsonObject.Create();
                    item.AddPair(TJSONPair.Create('nome', 'IMPRIMIR_EXTRATO'));
                    item.AddPair(TJSONPair.Create('valor', memoImprimirExtrato.Text));
                    configuracoes.AddElement(item);


                    item := TJsonObject.Create();
                    item.AddPair(TJSONPair.Create('nome', 'CUSTODIA_LOCAL'));
                    item.AddPair(TJSONPair.Create('valor', memoCustodiaLocal.Text));
                    configuracoes.AddElement(item);


                    item := TJsonObject.Create();
                    item.AddPair(TJSONPair.Create('nome', 'FABRICANTE'));
                    item.AddPair(TJSONPair.Create('valor', memoFabricante.Text));
                    configuracoes.AddElement(item);

                    item := TJsonObject.Create();
                    item.AddPair(TJSONPair.Create('nome', 'PRINT_LOGO_ESQUERDA'));
                    item.AddPair(TJSONPair.Create('valor', memoLogoEsquerda.Text));
                    configuracoes.AddElement(item);


                    item := TJsonObject.Create();
                    item.AddPair(TJSONPair.Create('nome', 'PROXY_PORT'));
                    item.AddPair(TJSONPair.Create('valor', memoPortaProxy.Text));
                    configuracoes.AddElement(item);


                    item := TJsonObject.Create();
                    item.AddPair(TJSONPair.Create('nome', 'SAT_ATIVACAO'));
                    item.AddPair(TJSONPair.Create('valor', memoSenhaSat.Text));
                    configuracoes.AddElement(item);


                    item := TJsonObject.Create();
                    item.AddPair(TJSONPair.Create('nome', 'PROXY_HOST'));
                    item.AddPair(TJSONPair.Create('valor', memoHostProxy.Text));
                    configuracoes.AddElement(item);


                    item := TJsonObject.Create();
                    item.AddPair(TJSONPair.Create('nome', 'CUT_EXTRATO'));
                    item.AddPair(TJSONPair.Create('valor', memoCortarImpressao.Text));
                    configuracoes.AddElement(item);


                    item := TJsonObject.Create();
                    item.AddPair(TJSONPair.Create('nome', 'CUSTODY_ENABLE'));
                    item.AddPair(TJSONPair.Create('valor', memoCustodiarDocumento.Text));
                    configuracoes.AddElement(item);


                    item := TJsonObject.Create();
                    item.AddPair(TJSONPair.Create('nome', 'PRINTER_MP2500'));
                    item.AddPair(TJSONPair.Create('valor', memoImpressora2500.Text));
                    configuracoes.AddElement(item);


                    item := TJsonObject.Create();
                    item.AddPair(TJSONPair.Create('nome', 'SAT_SERIAL_PORT'));
                    item.AddPair(TJSONPair.Create('valor', memoPortaDoSat.Text));
                    configuracoes.AddElement(item);


                    item := TJsonObject.Create();
                    item.AddPair(TJSONPair.Create('nome', 'PROXY_DOMAIN'));
                    item.AddPair(TJSONPair.Create('valor', memoDominiodoProxy.Text));
                    configuracoes.AddElement(item);


                    item := TJsonObject.Create();
                    item.AddPair(TJSONPair.Create('nome', 'ENVIRONMENT_HOMOLOG'));
                    item.AddPair(TJSONPair.Create('valor', memoAmbienteDeHomologacao.Text));
                    configuracoes.AddElement(item);


                    item := TJsonObject.Create();
                    item.AddPair(TJSONPair.Create('nome', 'PROXY_PASSWORD'));
                    item.AddPair(TJSONPair.Create('valor', memoSenhaDoProxy.Text));
                    configuracoes.AddElement(item);


                    item := TJsonObject.Create();
                    item.AddPair(TJSONPair.Create('nome', 'CNPJ'));
                    item.AddPair(TJSONPair.Create('valor', memoCnpj.Text));
                    configuracoes.AddElement(item);


                    item := TJsonObject.Create();
                    item.AddPair(TJSONPair.Create('nome', 'IE'));
                    item.AddPair(TJSONPair.Create('valor', memoIe.Text));
                    configuracoes.AddElement(item);


                    jsonConfiguracoes.AddPair(jsa);


                  JsonString := jsonConfiguracoes.ToString;
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

              URL := 'http://localhost:9999/api/v1/sistema/configuracoes';

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
               FrmConfiguracoes.Hide;

               memoCaminhoArquivoLogo.Text := StringReplace(memoCaminhoArquivoLogo.Text,'\\','\',[rfReplaceAll]);

               except on E:EIdHTTPProtocolException do
                  frmPrincipal.memoresultado.Lines.add(e.ErrorMessage);

              end;
          end;
      end;

procedure TfrmConfiguracoes.btnJsonClick(Sender: TObject);
var
          URL, Retorno, JsonString: WideString ;
          jsonConfiguracoes, cortaExtrato, item: TJSONObject;
          configuracoes:TJSONArray;
          jsa: TJsonPair;
          JsonToSend:TMemoryStream;
          JsonStreamRetorno: AnsiString;
begin
                   //JSon principal
                   jsonConfiguracoes :=  TJSONObject.Create;
                   configuracoes :=  TJSONArray.Create;
                   jsa := TJSONPair.Create('configuracao', configuracoes);

                    item := TJsonObject.Create();
                    item.AddPair(TJSONPair.Create('nome', 'PROXY'));
                    item.AddPair(TJSONPair.Create('valor', memoProxy.Text));
                    configuracoes.AddElement(item);


                    item := TJsonObject.Create();
                    item.AddPair(TJSONPair.Create('nome', 'PRINT_LOGO'));
                    item.AddPair(TJSONPair.Create('valor', memoImpLogo.Text));
                    configuracoes.AddElement(item);


                    item := TJsonObject.Create();
                    item.AddPair(TJSONPair.Create('nome', 'RAZAO_SOCIAL'));
                    item.AddPair(TJSONPair.Create('valor', memoRazaoSocial.Text));
                    configuracoes.AddElement(item);

                    item := TJsonObject.Create();
                    item.AddPair(TJSONPair.Create('nome', 'URI_IMPRESSORA'));
                    item.AddPair(TJSONPair.Create('valor', memoPortaImpressora.Text));
                    configuracoes.AddElement(item);


                    item := TJsonObject.Create();
                    item.AddPair(TJSONPair.Create('nome', 'PROXY_USER'));
                    item.AddPair(TJSONPair.Create('valor', memoUsuarioProxy.Text));
                    configuracoes.AddElement(item);


                    item := TJsonObject.Create();
                    item.AddPair(TJSONPair.Create('nome', 'VALIDACAO'));
                    item.AddPair(TJSONPair.Create('valor', memoValidacaoDadosVenda.Text));
                    configuracoes.AddElement(item);


                    item := TJsonObject.Create();
                    item.AddPair(TJSONPair.Create('nome', 'PRINT_LOGO_IMG'));
                    item.AddPair(TJSONPair.Create('valor', memoCaminhoArquivoLogo.Text));
                    configuracoes.AddElement(item);


                    item := TJsonObject.Create();
                    item.AddPair(TJSONPair.Create('nome', 'API_PORT'));
                    item.AddPair(TJSONPair.Create('valor', memoPortaApi.Text));
                    configuracoes.AddElement(item);


                    item := TJsonObject.Create();
                    item.AddPair(TJSONPair.Create('nome', 'ID_PDV'));
                    item.AddPair(TJSONPair.Create('valor', memoIdPdv.Text ));
                    configuracoes.AddElement(item);


                    item := TJsonObject.Create();
                    item.AddPair(TJSONPair.Create('nome', 'IMPRIMIR_EXTRATO'));
                    item.AddPair(TJSONPair.Create('valor', memoImprimirExtrato.Text));
                    configuracoes.AddElement(item);


                    item := TJsonObject.Create();
                    item.AddPair(TJSONPair.Create('nome', 'CUSTODIA_LOCAL'));
                    item.AddPair(TJSONPair.Create('valor', memoCustodiaLocal.Text));
                    configuracoes.AddElement(item);


                    item := TJsonObject.Create();
                    item.AddPair(TJSONPair.Create('nome', 'FABRICANTE'));
                    item.AddPair(TJSONPair.Create('valor', memoFabricante.Text));
                    configuracoes.AddElement(item);

                    item := TJsonObject.Create();
                    item.AddPair(TJSONPair.Create('nome', 'PRINT_LOGO_ESQUERDA'));
                    item.AddPair(TJSONPair.Create('valor', memoLogoEsquerda.Text));
                    configuracoes.AddElement(item);


                    item := TJsonObject.Create();
                    item.AddPair(TJSONPair.Create('nome', 'PROXY_PORT'));
                    item.AddPair(TJSONPair.Create('valor', memoPortaProxy.Text));
                    configuracoes.AddElement(item);


                    item := TJsonObject.Create();
                    item.AddPair(TJSONPair.Create('nome', 'SAT_ATIVACAO'));
                    item.AddPair(TJSONPair.Create('valor', memoSenhaSat.Text));
                    configuracoes.AddElement(item);


                    item := TJsonObject.Create();
                    item.AddPair(TJSONPair.Create('nome', 'PROXY_HOST'));
                    item.AddPair(TJSONPair.Create('valor', memoHostProxy.Text));
                    configuracoes.AddElement(item);


                    item := TJsonObject.Create();
                    item.AddPair(TJSONPair.Create('nome', 'CUT_EXTRATO'));
                    item.AddPair(TJSONPair.Create('valor', memoCortarImpressao.Text));
                    configuracoes.AddElement(item);


                    item := TJsonObject.Create();
                    item.AddPair(TJSONPair.Create('nome', 'CUSTODY_ENABLE'));
                    item.AddPair(TJSONPair.Create('valor', memoCustodiarDocumento.Text));
                    configuracoes.AddElement(item);


                    item := TJsonObject.Create();
                    item.AddPair(TJSONPair.Create('nome', 'PRINTER_MP2500'));
                    item.AddPair(TJSONPair.Create('valor', memoImpressora2500.Text));
                    configuracoes.AddElement(item);


                    item := TJsonObject.Create();
                    item.AddPair(TJSONPair.Create('nome', 'SAT_SERIAL_PORT'));
                    item.AddPair(TJSONPair.Create('valor', memoPortaDoSat.Text));
                    configuracoes.AddElement(item);


                    item := TJsonObject.Create();
                    item.AddPair(TJSONPair.Create('nome', 'PROXY_DOMAIN'));
                    item.AddPair(TJSONPair.Create('valor', memoDominiodoProxy.Text));
                    configuracoes.AddElement(item);


                    item := TJsonObject.Create();
                    item.AddPair(TJSONPair.Create('nome', 'ENVIRONMENT_HOMOLOG'));
                    item.AddPair(TJSONPair.Create('valor', memoAmbienteDeHomologacao.Text));
                    configuracoes.AddElement(item);


                    item := TJsonObject.Create();
                    item.AddPair(TJSONPair.Create('nome', 'PROXY_PASSWORD'));
                    item.AddPair(TJSONPair.Create('valor', memoSenhaDoProxy.Text));
                    configuracoes.AddElement(item);


                    item := TJsonObject.Create();
                    item.AddPair(TJSONPair.Create('nome', 'CNPJ'));
                    item.AddPair(TJSONPair.Create('valor', memoCnpj.Text));
                    configuracoes.AddElement(item);


                    item := TJsonObject.Create();
                    item.AddPair(TJSONPair.Create('nome', 'IE'));
                    item.AddPair(TJSONPair.Create('valor', memoIe.Text));
                    configuracoes.AddElement(item);


                    jsonConfiguracoes.AddPair(jsa);


                  JsonString := jsonConfiguracoes.ToString;
                  JsonString := StringReplace(JsonString,#$A,'',[rfReplaceAll]);
                  JsonString := StringReplace(JsonString,#$D,'',[rfReplaceAll]);

                  frmJSon.memoJSon.Clear;
                  frmJSon.memoJSon.Text :=   JsonString;
                  frmJSon.Show;

end;

procedure TfrmConfiguracoes.btnLerParametrosClick(Sender: TObject);
      var

          URL, Retorno, JsonString: WideString ;
          Json,JsonToSend :TMemoryStream;
          JsonStreamRetorno: AnsiString;
          bnf, identificacao: TJSONObject;
          configuracao : TJSONArray;
          jsonObj, item:TJSONObject;


      begin
        begin

              URL := 'http://localhost:9999/api/v1/sistema/configuracoes';

            try
                  FrmPrincipal.HTTP.Request.ContentType := 'application/json';
                  FrmPrincipal.HTTP.Request.CharSet := 'utf-8';
                  FrmPrincipal.Http.Response.ContentType :='application/json';
                  FrmPrincipal.Http.Response.CharSet := 'UTF-8';
                  FrmPrincipal.Http.Request.Accept := 'application/json';


                JsonStreamRetorno := frmPrincipal.Http.Get(URL);


                JsonStreamRetorno := StringReplace(JsonStreamRetorno,#13,'',[rfReplaceAll]);
                JsonStreamRetorno := StringReplace(JsonStreamRetorno,#10,'',[rfReplaceAll]);

                jsonObj := TJSONObject.ParseJSONValue(TEncoding.ASCII.GetBytes(JsonStreamRetorno), 0) as TJSONObject;
                configuracao := TJSONArray(jsonObj.Get('configuracao').JsonValue);

                item := TJsonObject(configuracao.Get(0));
                memoProxy.Text := item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(1));
                memoImpLogo.Text := item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(2));
                memoRazaoSocial.Text := item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(3));
                memoPortaImpressora.Text := item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(4));
                memoUsuarioProxy.Text := item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(5));
                memoValidacaoDadosVenda.Text := item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(6));
                memoCaminhoArquivoLogo.Text := item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(7));
                memoPortaApi.Text := item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(8));
                memoIdPdv.Text := item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(9));
                memoImprimirExtrato.Text := item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(10));
                memoCustodiaLocal.Text := item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(11));
                memoFabricante.Text := item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(12));
                memoLogoEsquerda.Text := item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(13));
                memoPortaProxy.Text := item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(14));
                memoSenhaSat.Text := item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(15));
                memoHostProxy.Text := item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(16));
                memoCortarImpressao.Text := item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(17));
                memoCustodiarDocumento.Text := item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(18));
                memoImpressora2500.Text := item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(19));
                memoPortaDoSat.Text := item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(20));
                memoDominiodoProxy.Text := item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(21));
                memoAmbienteDeHomologacao.Text := item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(22));
                memoSenhaDoProxy.Text := item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(23));
                memoCnpj.Text := item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(24));
                memoIe.Text := item.Get(1).JsonValue.Value;

                frmPrincipal.memoresultado.Lines.add(JsonStreamRetorno);


               except on E:EIdHTTPProtocolException do
                  frmPrincipal.memoresultado.Lines.add(e.ErrorMessage);

              end;
        end;
end;

end.
