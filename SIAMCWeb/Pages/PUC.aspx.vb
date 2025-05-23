Imports DataAccess

Public Class PUC
    Inherits System.Web.UI.Page

    Dim oAccess As New DataAccess.DA

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnAceptar_Click(sender As Object, e As EventArgs)
        Dim nombre As String = txtnombre.Text.Trim()

        oAccess.Insertar(nombre)
        Response.Redirect("../Default.aspx")
    End Sub
End Class