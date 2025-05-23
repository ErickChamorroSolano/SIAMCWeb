<%@ Page Title="Login" Language="VB" MasterPageFile="~/MPLogin.master" AutoEventWireup="false" CodeFile="Login.aspx.vb" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <script type="text/javascript">
        function Authenticated(signInId) {
            var validatedId = signInId.replace(/[,;=| ]+/g, "_");
            appInsights.setAuthenticatedUserContext(validatedId);
        }                  
    </script>

    <div id="Login">
    <table class="card" id="card" style="width: 415px;">
        <tr>
            <td>
                <br />
            </td>
        </tr>
        <tr>
            <td>
                <h3>INICIAR SESIÓN</h3>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtNombreUsuario" runat="server" placeholder="Usuario" CssClass="input" Style="width: 100%;"/>
            </td>
        </tr>
        <tr>
            <td class="Password-toggle-Container">
                <asp:TextBox ID="txtContrasena" runat="server" TextMode="Password" CssClass="input" placeholder="Contraseña" maxlength="50" Style="width: 100%;"/>
                <span id="TogglePassword" runat="server" class="eye-login eye-open" onclick="TogglePassword();"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:LinkButton ID="hrOlvido" CssClass="LinkButtonStyle" runat="server" PostBackUrl="~/Seguridad/OlvidoContrasena.aspx" Text="Olvidé mi contraseña"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnIngresar" runat="server" Text="Ingresar" SkinID="BotonLogin" CssClass="input" OnClientClick="javascript:loginAnimation();" OnClick="btnIngresar_Click" />
            </td>
        </tr>
    </table>
</div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="Server">
    <script type="text/javascript" language="javascript">

        function loginAnimation() {
            document.getElementById("card").style.animation = ".8s opacity forwards";

            let loading = document.getElementById("loading.clientID").style;

            loading.display = "block";
            loading.animation = ".8s opacity reverse forwards";

            document.getElementById("imgGasolutions").style.animation = "1.4s logo forwards";
        }

        var LoginPasswordState = false;
        function TogglePassword() {
            if (LoginPasswordState) {
                document.getElementById('<%=txtContrasena.ClientID%>').setAttribute("type", "password")
                document.getElementById('<%=TogglePassword.ClientID%>').className = "eye-login eye-open";
                LoginPasswordState = false;
            }
            else
            {
                document.getElementById('<%=txtContrasena.ClientID%>').setAttribute("type", "text")
                document.getElementById('<%=TogglePassword.ClientID%>').className = "eye-login eye-close";
                LoginPasswordState = true;
            }
        }
    </script>

    <style type="text/css">
        * {
            font-family: "TREbuchet MS" !important;
        }
        .card {
            border-top: 4px solid #47a3da;
            padding: 3em;
            width: 400px;
            background: white;
            box-shadow: 0 3px 6px rgba(0,0,0,0.16), 0 3px 6px rgba(0,0,0,0.23);
            border-radius: 5px;
        }

        .img-sauce {
            width: 180px;
            margin-bottom: 1em;
        }

        .img-gasolutions {
            margin-top: 100px;
        }

        .input[type="text"], .input[type="password"] {
            display: block;
            padding: .5em .1em;
            border: none;
            border-bottom: 1px solid #001E3B;
            transition: all .1s;
            margin-bottom: 1em;
            width: 100%;
            font-size: 16px;
        }
        .input[type="text"]:focus, .input[type="password"]:focus {
            outline: none;
            border-bottom: 1px solid #47a3da;
        }

        .input[type="submit"] {
            display: block;
            padding: .5em 1.2em;
            background: #001E3B;
            color: white;
            cursor: pointer;
            border: .5px solid #001E3B;
            transition: all .2s;
            margin-bottom: .9em;
            font-size: 16px;
            float: right;
            border-radius: 2px;
        }
        .input[type="submit"]:hover {
            background: #47a3da;
            border: .5px solid white;
        }
        .loading {
            width: 120px;
            position: absolute;
            margin: auto;
            padding-bottom: 120px;
            left: 0;
            right: 0;
            top: 0;
            bottom: 0;
        }

        .LinkButtonStyle {
            font-family: 'Trebuchet MS';
            font-size: 12px;
            font-weight: bold;
            color: #47A3DA;
            text-decoration: underline;
        }

        @keyframes opacity {
            from { opacity: 1 }
            to { opacity: 0 }
        }

        @keyframes logo {
            from { margin-top: 100px; }
            to { margin-top: 0; }
        }

        .eye-login {
            position: absolute;
            right: 3px;
            top: 5px;
            cursor: pointer;
            width: 30px;
            height: 30px;
        }

        #Login {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            flex-flow: column;
        }
    </style>
</asp:Content>