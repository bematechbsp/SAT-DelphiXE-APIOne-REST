unit Status;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdHTTP, IOUtils, DBXJSON, IdGlobal, pngimage, ExtCtrls, ShellApi, xmldom, XMLIntf, msxmldom, XMLDoc;


type
  TfrmStatus = class(TForm)
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
    memoOvr: TMemo;
    memoOffline: TMemo;
    memoWait: TMemo;
    memoBufStat: TMemo;
    memoPnes: TMemo;
    memoPS: TMemo;
    memonoPaper: TMemo;
    memoDrawer: TMemo;
    memoError: TMemo;
    memoCover: TMemo;
    memoCa: TMemo;
    memoCe: TMemo;
    memoNre: TMemo;
    memoRe: TMemo;
    memoHoh: TMemo;
    memoCmd: TMemo;
    memoFirmware: TMemo;
    btnVerificarStatus: TButton;
    procedure btnVerificarStatusClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmStatus: TfrmStatus;

implementation
   Uses Principal;
{$R *.dfm}

procedure TfrmStatus.btnVerificarStatusClick(Sender: TObject);
      var

          URL, Retorno, JsonString: WideString ;
          Json,JsonToSend :TMemoryStream;
          JsonStreamRetorno: AnsiString;
          jsonObj,item : TJSONObject;
          configuracao : TJSONArray;
      begin
        begin

              URL := 'http://localhost:9999/api/v1/impressora';

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

                memoOvr.Text := jsonObj.Get(0).JsonValue.Value;
                memoOffline.Text := jsonObj.Get(1).JsonValue.Value;
                memoWait.Text := jsonObj.Get(2).JsonValue.Value;
                memoBufStat.Text := jsonObj.Get(3).JsonValue.Value;
                memoPnes.Text := jsonObj.Get(4).JsonValue.Value;
                memoPS.Text := jsonObj.Get(5).JsonValue.Value;
                memonoPaper.Text := jsonObj.Get(6).JsonValue.Value;
                memoDrawer.Text := jsonObj.Get(7).JsonValue.Value;
                memoError.Text := jsonObj.Get(8).JsonValue.Value;
                memoCover.Text := jsonObj.Get(9).JsonValue.Value;
                memoCa.Text := jsonObj.Get(10).JsonValue.Value;
                memoCe.Text := jsonObj.Get(11).JsonValue.Value;
                memoNre.Text := jsonObj.Get(12).JsonValue.Value;
                memoRe.Text := jsonObj.Get(13).JsonValue.Value;
                memoHoh.Text := jsonObj.Get(14).JsonValue.Value;
                memoCmd.Text := jsonObj.Get(15).JsonValue.Value;
                memoFirmware.Text := jsonObj.Get(16).JsonValue.Value;


                frmPrincipal.memoresultado.Lines.add(JsonStreamRetorno);


               except on E:EIdHTTPProtocolException do
                  frmPrincipal.memoresultado.Lines.add(e.ErrorMessage);
              end;
        end;
end;

end.
