unit AbreCupom;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdHTTP, IOUtils, DBXJSON, IdGlobal, pngimage, ExtCtrls, ShellApi;

type
  TfrmAbreCupom = class(TForm)
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label10: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    memoIdentCnpj: TMemo;
    memoEmitCnpj: TMemo;
    memoDestCPF: TMemo;
    memoEntCPF: TMemo;
    memoEntxCpl: TMemo;
    memoEntxMun: TMemo;
    memoIdentNroCaixa: TMemo;
    memoEmitIE: TMemo;
    memoDestNome: TMemo;
    memoEntXLgr: TMemo;
    memoEntBairro: TMemo;
    memoEntUF: TMemo;
    memoIdentSignAC: TMemo;
    memoEmitIndRat: TMemo;
    memoEntNro: TMemo;
    btnAbrirCupom: TButton;
    btnJson: TButton;
    procedure btnAbrirCupomClick(Sender: TObject);
    procedure btnJsonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAbreCupom: TfrmAbreCupom;

implementation
    uses Principal, json;

{$R *.dfm}

procedure TfrmAbreCupom.btnAbrirCupomClick(Sender: TObject);
      var

          URL, Retorno, JsonString: WideString ;
          Json,JsonToSend :TMemoryStream;
          JsonStreamRetorno: AnsiString;
          jsonObj, jSubObj, jsonAbertura, identificacao,emitente, destinatario,entrega,endereco: TJSONObject;
          par0,par1, jSubPar : TJSONPair;
          retornoOK,numeroSessao: TJSONArray;

          begin
                   //JSon principal
                   jsonAbertura :=  TJSONObject.Create;

                   //Monta JSon identificação
                   identificacao := TJSONObject.Create;
                   identificacao.AddPair('cnpj', TJSONString.Create(memoIdentCnpj.Text));
                   identificacao.AddPair('numeroCaixa', TJSONString.Create(memoIdentNroCaixa.Text));
                   identificacao.AddPair('signAC', TJSONString.Create(memoIdentSignAC.Text));


                   //Adiciona identificação no json principal
                   jsonAbertura.AddPair('identificacao', identificacao);

                   //-------------------------------------
                   //Cria Json emitente
                   emitente := TJSONObject.Create;
                   emitente.AddPair('cnpj', TJSONString.Create(memoEmitCnpj.Text));
                   emitente.AddPair('ie', TJSONString.Create(memoEmitIE.Text));
                   emitente.AddPair('indRatISSQN', TJSONString.Create(memoEmitIndRat.Text));

                   //Adiciona Json emitente no Json principal
                   jsonAbertura.AddPair('emitente', emitente);

                  //-------------------------------------
                  //Criar JSon destinatario
                  destinatario := TJSONObject.Create;
                  destinatario.AddPair('cpf', TJSONString.Create(memoDestCPF.Text));
                  destinatario.AddPair('xNome', TJSONString.Create(memoDestNome.Text));

                  //Adiciona destinatario em jSon principal
                  jsonAbertura.AddPair('destinatario', destinatario);

                  //-------------------------------------
                  //Criar JSon endereço
                  endereco := TJSONObject.Create;
                  endereco.AddPair('xLgr', TJSONString.Create(memoEntXLgr.Text));
                  endereco.AddPair('nro', TJSONString.Create(memoEntNro.Text));
                  endereco.AddPair('xCpl', TJSONString.Create(memoEntxCpl.Text));
                  endereco.AddPair('xBairro', TJSONString.Create(memoEntBairro.Text));
                  endereco.AddPair('xMun', TJSONString.Create(memoEntxMun.Text));
                  endereco.AddPair('uf', TJSONString.Create(memoEntUF.Text));

                  //Adiciona endereco em entrega
                  entrega := TJSONObject.Create;
                  entrega.AddPair('endereco', endereco);

                  JsonString := jsonAbertura.ToString;
                  JsonString := StringReplace(JsonString,#$A,'',[rfReplaceAll]);
                  JsonString := StringReplace(JsonString,#$D,'',[rfReplaceAll]);
                  //JsonString := MemoVenda.Lines.Text;

                  //JsonString := memoJson.Lines.GetText();
                  JsonToSend := TMemoryStream.Create;

        //WriteStringToStream(JsonToSend, JsonString, enUTF8);
        WriteStringToStream(JsonToSend, JsonString, enUTF8);
        JsonToSend.Position := 0;

        URL := 'http://localhost:9999/api/v1/documento/cupom';




        try
                  FrmPrincipal.HTTP.Request.ContentType := 'application/json';
                  FrmPrincipal.HTTP.Request.CharSet := 'utf-8';
                  FrmPrincipal.Http.Response.ContentType :='application/json';
                  FrmPrincipal.Http.Response.CharSet := 'UTF-8';
                  FrmPrincipal.Http.Request.Accept := 'application/json';


            JsonStreamRetorno := FrmPrincipal.Http.Post(URL, JsonToSend);
            Sessao :=  JsonStreamRetorno;

            FrmPrincipal.memoresultado.Lines.add(JsonStreamRetorno);

            JsonStreamRetorno := StringReplace(JsonStreamRetorno,#$A,'',[rfReplaceAll]);
            JsonStreamRetorno := StringReplace(JsonStreamRetorno,#$D,'',[rfReplaceAll]);

            jsonObj := TJSONObject.ParseJSONValue(TEncoding.ASCII.GetBytes(JsonStreamRetorno), 0) as TJSONObject;
            par0 := jsonObj.Get(0);
            par1 := jsonObj.Get(1);


            FrmPrincipal.memoResultado.Text := FrmPrincipal.memoResultado.Text + par0.JsonString.Value;
            FrmPrincipal.memoSessao.Clear;
            FrmPrincipal.memoSessao.Text := FrmPrincipal.memoSessao.Text + par1.JsonValue.ToString;
            sessao := StringReplace(FrmPrincipal.memoSessao.Text,'"','',[rfReplaceAll]);
            FrmAbrecupom.Hide;
           except on E:EIdHTTPProtocolException do
              FrmPrincipal.memoresultado.Lines.add(e.ErrorMessage);

        end;
    end;
procedure TfrmAbreCupom.btnJsonClick(Sender: TObject);
var
          URL, Retorno, JsonString: WideString ;
          Json,JsonToSend :TMemoryStream;
          JsonStreamRetorno: AnsiString;
          jsonObj, jSubObj, jsonAbertura, identificacao,emitente, destinatario,entrega,endereco: TJSONObject;
          par0,par1, jSubPar : TJSONPair;
          retornoOK,numeroSessao: TJSONArray;
begin
                   //JSon principal
                   jsonAbertura :=  TJSONObject.Create;

                   //Monta JSon identificação
                   identificacao := TJSONObject.Create;
                   identificacao.AddPair('cnpj', TJSONString.Create(memoIdentCnpj.Text));
                   identificacao.AddPair('numeroCaixa', TJSONString.Create(memoIdentNroCaixa.Text));
                   identificacao.AddPair('signAC', TJSONString.Create(memoIdentSignAC.Text));


                   //Adiciona identificação no json principal
                   jsonAbertura.AddPair('identificacao', identificacao);

                   //-------------------------------------
                   //Cria Json emitente
                   emitente := TJSONObject.Create;
                   emitente.AddPair('cnpj', TJSONString.Create(memoEmitCnpj.Text));
                   emitente.AddPair('ie', TJSONString.Create(memoEmitIE.Text));
                   emitente.AddPair('indRatISSQN', TJSONString.Create(memoEmitIndRat.Text));

                   //Adiciona Json emitente no Json principal
                   jsonAbertura.AddPair('emitente', emitente);

                  //-------------------------------------
                  //Criar JSon destinatario
                  destinatario := TJSONObject.Create;
                  destinatario.AddPair('cpf', TJSONString.Create(memoDestCPF.Text));
                  destinatario.AddPair('xNome', TJSONString.Create(memoDestNome.Text));

                  //Adiciona destinatario em jSon principal
                  jsonAbertura.AddPair('destinatario', destinatario);

                  //-------------------------------------
                  //Criar JSon endereço
                  endereco := TJSONObject.Create;
                  endereco.AddPair('xLgr', TJSONString.Create(memoEntXLgr.Text));
                  endereco.AddPair('nro', TJSONString.Create(memoEntNro.Text));
                  endereco.AddPair('xCpl', TJSONString.Create(memoEntxCpl.Text));
                  endereco.AddPair('xBairro', TJSONString.Create(memoEntBairro.Text));
                  endereco.AddPair('xMun', TJSONString.Create(memoEntxMun.Text));
                  endereco.AddPair('uf', TJSONString.Create(memoEntUF.Text));

                  //Adiciona endereco em entrega
                  entrega := TJSONObject.Create;
                  entrega.AddPair('endereco', endereco);

                  JsonString := jsonAbertura.ToString;
                  JsonString := StringReplace(JsonString,#$A,'',[rfReplaceAll]);
                  JsonString := StringReplace(JsonString,#$D,'',[rfReplaceAll]);

                  frmJSon.memoJSon.Clear;
                  frmJSon.memoJSon.Text :=   JsonString;
                  frmJSon.Show;

end;

end.
