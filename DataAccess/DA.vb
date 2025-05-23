Imports System.Data.Common
Imports Microsoft.Practices.EnterpriseLibrary.Data

Public Class DA

    Public Sub Insertar(ByVal nombre As String)
        Dim DB As Database = DatabaseFactory.CreateDatabase()
        Dim dbCommand As DbCommand = DB.GetStoredProcCommand("Insertar")
        DB.AddInParameter(dbCommand, "@Nombre", DbType.String, nombre)

        Using Connection As DbConnection = DB.CreateConnection()
            Connection.Open()
            Try
                DB.ExecuteNonQuery(dbCommand)
            Catch ex As Exception
                ' Manejo de excepciones
                Throw New Exception("Error al insertar el registro: " & ex.Message)
            Finally
                Connection.Close()
            End Try
        End Using
    End Sub

End Class
