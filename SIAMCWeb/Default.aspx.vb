Public Class _Default
    Inherits System.Web.UI.Page

    Dim met As iGetMetodos

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        met = CType(Me.Master, iGetMetodos)
        If Not IsPostBack Then
            'met.Notificacion("Bienvenido a SIAMCWeb", False)
        End If
    End Sub

    Protected Sub btnlearn_Click(sender As Object, e As EventArgs)
        met.Notificacion("boton oprimido con exito", False)
    End Sub
End Class