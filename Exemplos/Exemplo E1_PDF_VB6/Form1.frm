VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form TelaPrincipal 
   Caption         =   "Form1"
   ClientHeight    =   5610
   ClientLeft      =   60
   ClientTop       =   405
   ClientWidth     =   12495
   LinkTopic       =   "Form1"
   ScaleHeight     =   5610
   ScaleWidth      =   12495
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame1 
      Caption         =   "PDF Generator"
      Height          =   5415
      Left            =   120
      TabIndex        =   0
      Top             =   0
      Width           =   12255
      Begin VB.CommandButton Command10 
         Caption         =   "Imprime Último Pdf Gerado"
         Height          =   615
         Left            =   240
         TabIndex        =   14
         Top             =   4560
         Width           =   4215
      End
      Begin VB.CommandButton Command9 
         Caption         =   "Configura Diretorio Saida"
         Height          =   615
         Left            =   240
         TabIndex        =   13
         Top             =   3720
         Width           =   4215
      End
      Begin VB.CommandButton Command8 
         Caption         =   "..."
         Height          =   615
         Left            =   4680
         TabIndex        =   11
         Top             =   2880
         Width           =   495
      End
      Begin VB.CommandButton Command7 
         Caption         =   "Imprime PDF "
         Height          =   615
         Left            =   240
         TabIndex        =   10
         Top             =   2880
         Width           =   4215
      End
      Begin MSComDlg.CommonDialog CommonDialog1 
         Left            =   5520
         Top             =   120
         _ExtentX        =   847
         _ExtentY        =   847
         _Version        =   393216
      End
      Begin VB.CommandButton Command6 
         Caption         =   "..."
         Height          =   615
         Left            =   4680
         TabIndex        =   6
         Top             =   2040
         Width           =   495
      End
      Begin VB.CommandButton Command5 
         Caption         =   "..."
         Height          =   615
         Left            =   4680
         TabIndex        =   5
         Top             =   1200
         Width           =   495
      End
      Begin VB.CommandButton Command4 
         Caption         =   "..."
         Height          =   615
         Left            =   4680
         TabIndex        =   4
         Top             =   360
         Width           =   495
      End
      Begin VB.CommandButton Command3 
         Caption         =   "Cria PDF NFC-e"
         Height          =   615
         Left            =   240
         TabIndex        =   3
         Top             =   2040
         Width           =   4215
      End
      Begin VB.CommandButton Command2 
         Caption         =   "Cria PDF Cancelamento SAT"
         Height          =   615
         Left            =   240
         TabIndex        =   2
         Top             =   1200
         Width           =   4215
      End
      Begin VB.CommandButton Command1 
         Caption         =   "Cria PDF SAT"
         Height          =   615
         Left            =   240
         TabIndex        =   1
         Top             =   360
         Width           =   4215
      End
      Begin VB.Label Label6 
         Height          =   375
         Left            =   4800
         TabIndex        =   16
         Top             =   4680
         Width           =   7215
      End
      Begin VB.Label Label5 
         Height          =   375
         Left            =   4680
         TabIndex        =   15
         Top             =   3840
         Width           =   7335
      End
      Begin VB.Label Label4 
         Height          =   375
         Left            =   5400
         TabIndex        =   12
         Top             =   3000
         Width           =   6615
      End
      Begin VB.Label Label3 
         Height          =   375
         Left            =   5520
         TabIndex        =   9
         Top             =   2160
         Width           =   6375
      End
      Begin VB.Label Label2 
         Height          =   615
         Left            =   5520
         TabIndex        =   8
         Top             =   1320
         Width           =   6375
      End
      Begin VB.Label Label1 
         Height          =   735
         Left            =   5520
         TabIndex        =   7
         Top             =   480
         Width           =   6375
      End
   End
End
Attribute VB_Name = "TelaPrincipal"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Public Function selecionaArquivo() As String
CommonDialog1.ShowOpen
selecionaArquivo = CommonDialog1.FileName
End Function

Private Sub Command1_Click() ' Gera Cupom Sat PDF
Dim result As Integer
If Label1.Caption <> "" Then
   result = GeraPDFSAT("path=" & Label1.Caption, parametro)
   MsgBox (result)
   Else
   result = GeraPDFSAT("path=" & selecionaArquivo(), parametro)
   MsgBox (result)
   End If
End Sub

Private Sub Command10_Click()
Dim result As String
Dim ptr As Long
Dim retorno As Integer

ptr = ObtemUltimoArquivo()
result = StrPtrToString(ptr)

If result <> "" Then
Label6.Caption = result
retorno = ImprimePDF(result)
MsgBox (retorno)
Else
MsgBox ("Não foi possível completar a operação,Verifique se foi gerado o pdf")
End If

End Sub

Private Sub Command2_Click()
Dim assQrCode As String
Dim result As Integer

assQrCode = "rHqZ8CGEgd4qeJ3TxrQhNSO15ZR5l1FEwM1I3aItoi+qE39Op7MclEBawI96XQ4q4KhLW7ZhiDtX8umJNWMggb1xWUfcyzdJrsTEfvfE43T253JSgXsSqzhnQAOW2+K1gs4mPjjzqmKBuSjViBesAJwtyQQzIi/MmeJbxKCL1hxxZYbuE91hI3F99XKEJwJgpe0rOhv4jxgzdT2INqlLzsRbC0At99etKpsNMJPpUw+8GAHCH1sS+ebCvjOy3OaD+znaIgiNfn6E81wUAjwjme/8Z/1m2zcA6PA06MzNXa/EN6rnkpq6ap0dU3Qyk/Oe8P7vSd0DIRNHoaMYHc8+iQ=="

If Label1.Caption <> "" Then
    result = GeraPDFSATCancelamento("path=" & Label2.Caption, assQrCode, parametro)
    MsgBox (result)
  Else
    result = GeraPDFSATCancelamento("path=" & selecionaArquivo(), assQrCode, parametro)
    MsgBox (result)
End If

End Sub

Private Sub Command3_Click()
Dim CSC As String
Dim result As Integer

CSC = "CODIGO-CSC-CONTRIBUINTE-36-CARACTERES"

If Label1.Caption <> "" Then
   result = GeraPDFNFCe("path=" & Label3.Caption, 0, CSC, parametro)
   MsgBox (result)
  Else
   result = GeraPDFNFCe("path=" & selecionaArquivo(), 0, CSC, parametro)
   MsgBox (result)
End If

End Sub

Private Sub Command4_Click()
CommonDialog1.ShowOpen
Label1.Caption = CommonDialog1.FileName
End Sub

Private Sub Command5_Click()
CommonDialog1.ShowOpen
Label2.Caption = CommonDialog1.FileName
End Sub

Private Sub Command6_Click()
CommonDialog1.ShowOpen
Label3.Caption = CommonDialog1.FileName
End Sub

Private Sub Command7_Click()
Dim result As Integer
Dim caminho As String

If Label4.Caption <> "" Then
   caminho = Label4.Caption
   result = ImprimePDF(caminho)
   MsgBox (result)
  Else
   caminho = selecionaArquivo()
   result = ImprimePDF(caminho)
   MsgBox (result)
End If
End Sub

Private Sub Command8_Click()
CommonDialog1.ShowOpen
Label4.Caption = CommonDialog1.FileName
End Sub

Private Sub Command9_Click()
Dim SelectFolder As String
Dim result As Integer
Dim Folder As Object

    With CreateObject("Shell.Application")
        Set Folder = .BrowseForFolder(hWnd, "Pick a folder", BIF_RETURNONLYFSDIRS _
                                                          Or BIF_SHAREABLE _
                                                          Or BIF_NEWDIALOGSTYLE _
                                                          Or BIF_NONEWFOLDERBUTTON)
    End With
    If Folder Is Nothing Then
        Label5.Caption = "Canceled"
    Else
        Label5.Caption = Folder.Self.Path
        SelectFolder = Folder.Self.Path
    End If
    
    result = ConfiguraDiretorioSaida(SelectFolder)
    MsgBox (result)
End Sub
