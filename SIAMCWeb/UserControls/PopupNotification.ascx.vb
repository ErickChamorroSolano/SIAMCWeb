Public Class PopupNotification
    Inherits System.Web.UI.UserControl

    Private Titulo_ As String
    Private Contenido_ As String
    Private EsError_ As Boolean

    Public WriteOnly Property Titulo() As String
        Set(ByVal value As String)
            Titulo_ = value
        End Set
    End Property

    Public WriteOnly Property Contenido() As String
        Set(ByVal value As String)
            If value.Contains("'") Then value = value.Replace("'", "")
            If value.Contains(Chr(34)) Then value = value.Replace(Chr(34), "")
            If value.Contains(Chr(13)) Then value = value.Replace(Chr(13), "")
            If value.Contains(Chr(10)) Then value = value.Replace(Chr(10), "")
            Contenido_ = value
        End Set
    End Property

    Public WriteOnly Property EsError() As Boolean
        Set(ByVal value As Boolean)
            EsError_ = value
        End Set
    End Property

    Public Sub Notificacion()
        ScriptManager.RegisterStartupScript(Me.Page, Me.GetType, "test", "show_stack_bottomright(" & CStr(EsError_).ToLower & ", '" & Titulo_ & "', '" & Contenido_ & "');", True)
    End Sub

End Class