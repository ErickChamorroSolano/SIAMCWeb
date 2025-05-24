Public Class SiteMaster
    Inherits MasterPage
    Implements iGetMetodos

    Public Sub Notificacion(Contenido As String, Optional EsError As Boolean = True) Implements iGetMetodos.Notificacion
        Me.PopupNotification1.Titulo = "SIAMCWeb"
        Me.PopupNotification1.Contenido = Contenido
        Me.PopupNotification1.EsError = EsError
        Me.PopupNotification1.Notificacion()
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load

    End Sub
End Class