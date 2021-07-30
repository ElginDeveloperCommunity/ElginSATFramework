Attribute VB_Name = "FuncoesDLL"
Public Declare Function GeraPDFSAT Lib "E1_Pdf02.dll" (ByVal dados As String, ByVal parametro As Long) As Integer
Public Declare Function GeraPDFSATCancelamento Lib "E1_Pdf02.dll" (ByVal dados As String, ByVal assQrCode As String, ByVal parametro As Long) As Integer
Public Declare Function GeraPDFNFCe Lib "E1_Pdf02.dll" (ByVal dados As String, ByVal indexcsc As Long, ByVal CSC As String, ByVal parametro As Long) As Integer
Public Declare Function ImprimePDF Lib "E1_Pdf02.dll" (ByVal caminho As String) As Integer
Public Declare Function ConfiguraDiretorioSaida Lib "E1_Pdf02.dll" (ByVal caminho As String) As Integer
Public Declare Function ObtemUltimoArquivo Lib "E1_Pdf02.dll" () As Long

Public Declare Function lstrlenA Lib "kernel32" (ByVal lpString As Long) As Long
Public Declare Function SysAllocStringByteLen Lib "oleaut32.dll" (ByVal m_pBase As Long, ByVal l As Long) As String

'Função para conversão de ponteiro para String
Public Function StrPtrToString(ByVal ponteiro As Long) As String

    Dim Saida As String

    Saida = SysAllocStringByteLen(ponteiro, lstrlenA(ponteiro))

    StrPtrToString = Saida

End Function

