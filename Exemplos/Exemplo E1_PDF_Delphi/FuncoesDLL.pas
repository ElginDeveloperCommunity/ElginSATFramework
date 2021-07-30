unit FuncoesDLL;

interface
 Function GeraPDFSAT(dados:AnsiString; parametros:Integer):Integer; stdcall; external 'E1_Pdf02.dll';
 Function GeraPDFSATCancelamento(dados:AnsiString; assQrCode:AnsiString; parametros:Integer):Integer; stdcall; external 'E1_Pdf02.dll';
 Function GeraPDFNFCe(dados:AnsiString; indexCSC:Integer; csc:AnsiString; parametros:Integer):Integer; stdcall; external 'E1_Pdf02.dll';
 Function ImprimePDF(caminho:AnsiString):Integer; stdcall; external 'E1_Pdf02.dll' ;
 Function ConfiguraDiretorioSaida(caminho:AnsiString):Integer; stdcall; external  'E1_Pdf02.dll' ;
 Function ObtemUltimoArquivo():PAnsiChar; stdcall; external  'E1_Pdf02.dll';

 Implementation

end.
