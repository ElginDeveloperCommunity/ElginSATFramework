unit Home;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FuncoesDLL, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Label1: TLabel;
    Button5: TButton;
    Button6: TButton;
    Label2: TLabel;
    Label3: TLabel;
    Button7: TButton;
    Button8: TButton;
    Label4: TLabel;
    Button9: TButton;
    Button10: TButton;
    Label5: TLabel;
    Label6: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

function SelecionaPdf():String;
var
  openDialog : topendialog;
begin
  openDialog := TOpenDialog.Create(Nil);
  openDialog.InitialDir := GetCurrentDir;
  openDialog.Options := [ofFileMustExist];
  openDialog.Filter :=  'Pdf files|*.pdf';
  openDialog.FilterIndex := 1;

  // Display the open file dialog
  if openDialog.Execute then
  begin
  result := openDialog.FileName;
  end
  else
  begin
    ShowMessage('Open file was cancelled');
  end;

  // Free up the dialog
  openDialog.Free;
end;

function SelecionaArquivo():String;
   var
    openDialog : topendialog;
begin
// Create the open dialog object - assign to our open dialog variable
  openDialog := TOpenDialog.Create(Form1);

  // Set up the starting directory to be the current one
  openDialog.InitialDir := GetCurrentDir;

  // Only allow existing files to be selected
  openDialog.Options := [ofFileMustExist];

  // Allow only .dpr and .pas files to be selected
   openDialog.Filter :=
    'XML Files|*.xml|Text file|*.txt';

  // Select pascal files as the starting filter type
  openDialog.FilterIndex := 1;

  // Display the open file dialog
  if openDialog.Execute then
  begin
      result := openDialog.FileName;
  end
  else
  begin
      ShowMessage('Open file was cancelled')
  end;

  // Free up the dialog
  openDialog.Free;
end;

procedure TForm1.Button10Click(Sender: TObject);  //Imprime Último PDF Gerado

var
  caminhoPDF :AnsiString;
  ret : Integer;
begin
    caminhoPDF := FuncoesDLL.ObtemUltimoArquivo();
    Label6.Caption := caminhoPDF;

  if Label6.Caption <> '' then
  begin
    ret := FuncoesDLL.ImprimePDF(caminhoPDF);
    ShowMessage(IntToStr(ret));
  end

end;

procedure TForm1.Button1Click(Sender: TObject);
var
  ret : Integer;
begin

  if Label1.Caption <> '' then
  begin
    ret := FuncoesDLL.GeraPDFSAT('path=' + Label1.Caption, 0);
    ShowMessage(IntToStr(ret));
  end else
  begin
    ret := FuncoesDLL.GeraPDFSAT('path=' + SelecionaArquivo(), 0);
    ShowMessage(IntToStr(ret));
  end;


end;

procedure TForm1.Button2Click(Sender: TObject);
var
  ret : Integer;
  assQRCode: AnsiString;
begin

  assQRCode := 'rHqZ8CGEgd4qeJ3TxrQhNSO15ZR5l1FEwM1I3aItoi+qE39Op7MclEBawI96XQ4q4KhLW7ZhiDtX8umJNWMggb1xWUfcyzd'+
  'JrsTEfvfE43T253JSgXsSqzhnQAOW2+K1gs4mPjjzqmKBuSjViBesAJwtyQQzIi/MmeJbxKCL1hxxZYbuE91hI3F99XKEJwJgpe0rOhv4jxg'+
  'zdT2INqlLzsRbC0At99etKpsNMJPpUw+8GAHCH1sS+ebCvjOy3OaD+znaIgiNfn6E81wUAjwjme/8Z/1m2zcA6PA06MzNXa/EN6rnkpq6ap0'+
  'dU3Qyk/Oe8P7vSd0DIRNHoaMYHc8+iQ==';

  if Label2.Caption <> '' then
  begin
    ret := FuncoesDLL.GeraPDFSATCancelamento('path=' + Label2.Caption, assQRCode, 0);
    ShowMessage(IntToStr(ret));
  end else
  begin
    ret := FuncoesDLL.GeraPDFSATCancelamento('path=' + SelecionaArquivo(), assQRCode, 0);
    ShowMessage(IntToStr(ret));
  end;


end;

procedure TForm1.Button3Click(Sender: TObject);
var
  ret : Integer;
  csc: AnsiString;
begin

  csc := 'CODIGO-CSC-CONTRIBUINTE-36-CARACTERES';

  if Label3.Caption <> '' then
  begin
    ret := FuncoesDLL.GeraPDFNFCe('path=' + Label3.Caption,0 , csc, 0);
    ShowMessage(IntToStr(ret));
  end else
  begin
    ret := FuncoesDLL.GeraPDFNFCe('path=' + SelecionaArquivo(),0 , csc, 0);
    ShowMessage(IntToStr(ret));
  end;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  Label1.Caption := SelecionaArquivo();
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
   Label2.Caption := SelecionaArquivo();
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  Label3.Caption := SelecionaArquivo();
end;

procedure TForm1.Button7Click(Sender: TObject); // Imprime PDF
var
  ret : Integer;
begin

  if Label4.Caption <> '' then
  begin
    ret := FuncoesDLL.ImprimePDF(Label4.Caption);
    ShowMessage(IntToStr(ret));
  end else
  begin
    ret := FuncoesDLL.ImprimePDF(SelecionaPdf());
    ShowMessage(IntToStr(ret));
  end;
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
    Label4.Caption := SelecionaPdf();
end;


procedure TForm1.Button9Click(Sender: TObject); // Configura diretório saída
 var
  OpenDialog: TFileOpenDialog;
  SelectedFolder: string;
  ret : Integer;
begin
OpenDialog := TFileOpenDialog.Create(Nil);
   try
  OpenDialog.Options := OpenDialog.Options + [fdoPickFolders];
  if not OpenDialog.Execute then
    Abort;
  SelectedFolder := OpenDialog.FileName;
finally
  OpenDialog.Free;
end;

Label5.Caption := SelectedFolder;
ret := FuncoesDLL.ConfiguraDiretorioSaida(SelectedFolder);
ShowMessage(IntToStr(ret));

end;

end.
