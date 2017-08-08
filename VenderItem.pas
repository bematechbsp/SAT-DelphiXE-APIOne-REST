unit VenderItem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdHTTP, IOUtils, DBXJSON, IdGlobal, pngimage, ExtCtrls, ShellApi;

type
  TfrmVenderItem = class(TForm)
    GroupBox3: TGroupBox;
    btnVenderItem: TButton;
    Label1: TLabel;
    MemoProdCean: TMemo;
    memoProdNcm: TMemo;
    MemoProdCfop: TMemo;
    MemoProdIndTot: TMemo;
    MemoProdVunCom: TMemo;
    MemoProdUtrib: TMemo;
    MemoProdVunTrib: TMemo;
    MemoProdCProd: TMemo;
    MemoProdxProd: TMemo;
    MemoProduCom: TMemo;
    MemoProdQtrib: TMemo;
    MemoProdQcom: TMemo;
    MemoProdvProd: TMemo;
    MemoProdIndRegra: TMemo;
    MemoProdvDesc: TMemo;
    MemoProdvOutro: TMemo;
    memoProdQcom2: TMemo;
    MemoImpIcms00Orig: TMemo;
    MemoImpIcms00Cst: TMemo;
    MemoImpIcms00Picms: TMemo;
    MemoImpCofinsNtCst: TMemo;
    MemoImpPisNTCst: TMemo;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Memo23: TMemo;
    MemoProdnItem: TMemo;
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
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    btnJson: TButton;
    procedure btnVenderItemClick(Sender: TObject);
    procedure btnJsonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVenderItem: TfrmVenderItem;

implementation
   uses Principal, json;
{$R *.dfm}

procedure TfrmVenderItem.btnJsonClick(Sender: TObject);
      var
          URL, Retorno, JsonString: WideString ;
          jsonVenda, produto, icms00, icms, cofinsnt , cofins, pis, pisnt, imposto: TJSONObject;
          JsonToSend:TMemoryStream;
          JsonStreamRetorno: AnsiString;

      begin
                   //JSon principal
                   jsonVenda :=  TJSONObject.Create;

                   produto := TJSONObject.Create;
                   produto.AddPair('cean', TJSONString.Create(MemoProdCean.Text));
                   produto.AddPair('ncm', TJSONString.Create(MemoProdNcm.Text));
                   produto.AddPair('cfop', TJSONString.Create(MemoProdCfop.Text));
                   produto.AddPair('indTot', TJSONNumber.Create(MemoProdIndTot.Text));
                   produto.AddPair('vUnCom', TJSONNumber.Create(MemoProdVunCom.Text));
                   produto.AddPair('uTrib', TJSONString.Create(memoProdUtrib.Text));
                   produto.AddPair('vUnTrib', TJSONString.Create(memoProdVunTrib.Text));
                   produto.AddPair('cProd', TJSONString.Create(memoProdCprod.Text));
                   produto.AddPair('xProd', TJSONString.Create(memoProdXprod.Text));
                   produto.AddPair('uCom', TJSONString.Create(memoProdUcom.Text));
                   produto.AddPair('qTrib', TJSONNumber.Create(memoProdQtrib.Text));
                   produto.AddPair('qCom', TJSONString.Create(memoProdQcom.Text));
                   produto.AddPair('vProd', TJSONNumber.Create(memoProdVprod.Text));
                   produto.AddPair('indRegra', TJSONString.Create(memoProdIndRegra.Text));
                   produto.AddPair('vDesc', TJSONNumber.Create(memoProdVdesc.Text));
                   produto.AddPair('vOutro', TJSONNumber.Create(memoProdvOutro.Text));
                   produto.AddPair('qCom', TJSONString.Create(memoprodQcom2.Text));

                   //Adiciona jSonProduto no json principal
                   jsonVenda.AddPair('produto', produto);

                   //-------------------------------------
                   //Cria Json icms00
                   icms00 := TJSONObject.Create;
                   icms00.AddPair('orig', TJSONNumber.Create(MemoImpIcms00Orig.Text));
                   icms00.AddPair('cst', TJSONString.Create(MemoImpIcms00Cst.Text));
                   icms00.AddPair('picms', TJSONNumber.Create(MemoImpIcms00Picms.Text));

                   //Adiciona icms00 em icms
                   icms := TJSONObject.Create;
                   icms.AddPair('icms00', icms00);

                  //-------------------------------------
                  //Criar JSon cofinsnt
                  cofinsnt := TJSONObject.Create;
                  cofinsnt.AddPair('cst', TJSONString.Create(MemoImpCofinsNtCst.Text));

                  //Adiciona cofinsnt em cofins
                  cofins := TJSONObject.Create;
                  cofins.AddPair('cofinsnt', cofinsnt);

                  //-------------------------------------
                  //Criar JSon pisnt
                  pisnt := TJSONObject.Create;
                  pisnt.AddPair('cst', TJSONString.Create(MemoImpPisNTCst.Text));

                  //Adiciona pisnt em pis
                  pis := TJSONObject.Create;
                  pis.AddPair('pisnt', pisnt);


          //-------------------------------------
                  //Criar JSon Imposto
                  imposto :=  TJSONObject.Create;

                  //Adiciona icms em imposto
                  imposto.AddPair('icms', icms);

                 //Adiciona cofins em imposto

                  imposto.AddPair('cofins', cofins);

                  //Adiciona pis em imposto
                  imposto.AddPair('pis', pis);



                  //Adiciona imposto no json de venda
                  jsonVenda.AddPair('imposto', imposto);

                  //Adiciona os pares na raiz do JSon principal
                  jsonVenda.AddPair('vItem12741', TJSONString.Create('1'));
                  jsonVenda.AddPair('nItem', TJSONNumber.Create(1));

                  JsonString := jsonVenda.ToString;
                  JsonString := StringReplace(JsonString,#$A,'',[rfReplaceAll]);
                  JsonString := StringReplace(JsonString,#$D,'',[rfReplaceAll]);

                  frmJSon.memoJSon.Clear;
                  frmJSon.memoJSon.Text :=   JsonString;
                  frmJSon.Show;
end;

procedure TfrmVenderItem.btnVenderItemClick(Sender: TObject);
      var
          URL, Retorno, JsonString: WideString ;
          jsonVenda, produto, icms00, icms, cofinsnt , cofins, pis, pisnt, imposto: TJSONObject;
          JsonToSend:TMemoryStream;
          JsonStreamRetorno: AnsiString;
      begin
                   //JSon principal
                   jsonVenda :=  TJSONObject.Create;

                   produto := TJSONObject.Create;
                   produto.AddPair('cean', TJSONString.Create(MemoProdCean.Text));
                   produto.AddPair('ncm', TJSONString.Create(MemoProdNcm.Text));
                   produto.AddPair('cfop', TJSONString.Create(MemoProdCfop.Text));
                   produto.AddPair('indTot', TJSONNumber.Create(MemoProdIndTot.Text));
                   produto.AddPair('vUnCom', TJSONNumber.Create(MemoProdVunCom.Text));
                   produto.AddPair('uTrib', TJSONString.Create(memoProdUtrib.Text));
                   produto.AddPair('vUnTrib', TJSONString.Create(memoProdVunTrib.Text));
                   produto.AddPair('cProd', TJSONString.Create(memoProdCprod.Text));
                   produto.AddPair('xProd', TJSONString.Create(memoProdXprod.Text));
                   produto.AddPair('uCom', TJSONString.Create(memoProdUcom.Text));
                   produto.AddPair('qTrib', TJSONNumber.Create(memoProdQtrib.Text));
                   produto.AddPair('qCom', TJSONString.Create(memoProdQcom.Text));
                   produto.AddPair('vProd', TJSONNumber.Create(memoProdVprod.Text));
                   produto.AddPair('indRegra', TJSONString.Create(memoProdIndRegra.Text));
                   produto.AddPair('vDesc', TJSONNumber.Create(memoProdVdesc.Text));
                   produto.AddPair('vOutro', TJSONNumber.Create(memoProdvOutro.Text));
                   produto.AddPair('qCom', TJSONString.Create(memoprodQcom2.Text));

                   //Adiciona jSonProduto no json principal
                   jsonVenda.AddPair('produto', produto);

                   //-------------------------------------
                   //Cria Json icms00
                   icms00 := TJSONObject.Create;
                   icms00.AddPair('orig', TJSONNumber.Create(MemoImpIcms00Orig.Text));
                   icms00.AddPair('cst', TJSONString.Create(MemoImpIcms00Cst.Text));
                   icms00.AddPair('picms', TJSONNumber.Create(MemoImpIcms00Picms.Text));

                   //Adiciona icms00 em icms
                   icms := TJSONObject.Create;
                   icms.AddPair('icms00', icms00);

                  //-------------------------------------
                  //Criar JSon cofinsnt
                  cofinsnt := TJSONObject.Create;
                  cofinsnt.AddPair('cst', TJSONString.Create(MemoImpCofinsNtCst.Text));

                  //Adiciona cofinsnt em cofins
                  cofins := TJSONObject.Create;
                  cofins.AddPair('cofinsnt', cofinsnt);

                  //-------------------------------------
                  //Criar JSon pisnt
                  pisnt := TJSONObject.Create;
                  pisnt.AddPair('cst', TJSONString.Create(MemoImpPisNTCst.Text));

                  //Adiciona pisnt em pis
                  pis := TJSONObject.Create;
                  pis.AddPair('pisnt', pisnt);


          //-------------------------------------
                  //Criar JSon Imposto
                  imposto :=  TJSONObject.Create;

                  //Adiciona icms em imposto
                  imposto.AddPair('icms', icms);

                 //Adiciona cofins em imposto

                  imposto.AddPair('cofins', cofins);

                  //Adiciona pis em imposto
                  imposto.AddPair('pis', pis);



                  //Adiciona imposto no json de venda
                  jsonVenda.AddPair('imposto', imposto);

                  //Adiciona os pares na raiz do JSon principal
                  jsonVenda.AddPair('vItem12741', TJSONString.Create('1'));
                  jsonVenda.AddPair('nItem', TJSONNumber.Create(1));

                  JsonString := jsonVenda.ToString;
                  JsonString := StringReplace(JsonString,#$A,'',[rfReplaceAll]);
                  JsonString := StringReplace(JsonString,#$D,'',[rfReplaceAll]);

                  //JsonString := memoJson.Lines.GetText();
                  JsonToSend := TMemoryStream.Create;

            begin
                  WriteStringToStream(JsonToSend, JsonString, enUTF8);
                  JsonToSend.Position := 0;

                  URL := 'http://localhost:9999/api/v1/documento/cupom/'+sessao+'/item';

            try
                  frmPrincipal.HTTP.Request.ContentType := 'application/json';
                  frmPrincipal.HTTP.Request.CharSet := 'utf-8';
                  frmPrincipal.Http.Response.ContentType :='application/json';
                  frmPrincipal.Http.Response.CharSet := 'UTF-8';

                  JsonStreamRetorno := frmPrincipal.Http.Post(URL, JsonToSend);


                  frmPrincipal.memoresultado.Lines.add(JsonStreamRetorno);
                  frmVenderItem.Hide;
               except on E:EIdHTTPProtocolException do
                  frmPrincipal.memoresultado.Lines.add(e.ErrorMessage);

              end;
          end;


      end;

end.
