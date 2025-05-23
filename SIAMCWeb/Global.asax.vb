Imports System.Web.Optimization

Public Class Global_asax
    Inherits HttpApplication

    Sub Application_Start(sender As Object, e As EventArgs)
        ' Se desencadena al iniciar la aplicación
        RouteConfig.RegisterRoutes(RouteTable.Routes)
        BundleConfig.RegisterBundles(BundleTable.Bundles)
    End Sub

    Sub Application_End(ByVal sender As Object, ByVal e As EventArgs)
        ' Código que se ejecuta durante el cierre de aplicaciones
    End Sub

    Sub Application_Error(ByVal sender As Object, ByVal e As EventArgs)
        Console.WriteLine("Error de aplicación: " + e.ToString())
    End Sub

    Sub Session_Start(ByVal sender As Object, ByVal e As EventArgs)
        ' Código que se ejecuta cuando se inicia una nueva sesión
        Session.Timeout = 15 'minutos
    End Sub

    Sub Session_End(ByVal sender As Object, ByVal e As EventArgs)
        ' Código que se ejecuta cuando finaliza una sesión. 
        ' Nota: El evento Session_End se desencadena sólo con el modo sessionstate
        ' se establece como InProc en el archivo Web.config. Si el modo de sesión se establece como StateServer 
        ' o SQLServer, el evento no se genera.
    End Sub
End Class