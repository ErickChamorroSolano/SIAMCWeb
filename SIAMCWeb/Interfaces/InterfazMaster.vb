Public Interface iGetMetodos
    Sub Notificacion(ByVal Contenido As String, Optional ByVal EsError As Boolean = True)
End Interface

Public Interface iGetHijos

    ReadOnly Property getIdRegistro() As Integer
    ReadOnly Property getOpcion() As String
    ReadOnly Property PageIndex As Integer

End Interface
