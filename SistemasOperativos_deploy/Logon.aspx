<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Logon.aspx.cs" Inherits="OS2.Logon" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

    <style type="text/css"> 
body{ 
background-image: url('http://www.elfinancierocr.com/pymes/tecnologia-emprendimiento-app-computadora-apps-aplicaciones-celular-movil_ELFIMA20150602_0008_1.jpg'); 
background-repeat: no-repeat; 
background-size: 100%; 
} 
        .auto-style2 {
            width: 1080px;
            height: 867px;
            margin-left: 110px;
        }
        .auto-style4 {
            text-align: left;
            margin-left: 320px;
            width: 521px;
        }
        .auto-style5 {
            text-decoration: underline;
        }
        .auto-style7 {
            margin-left: 55px;
        }
        .auto-style8 {
            margin-left: 20px;
        }
        .auto-style9 {
            margin-left: 50px;
        }
        .auto-style10 {
            margin-left: 192px;
        }
        .auto-style14 {
            margin-left: 40px;
        }
        .auto-style17 {
            text-align: left;
            margin-left: 294px;
            width: 544px;
        }
        .auto-style18 {
            text-align: left;
            height: 41px;
            margin-left: 188px;
            width: 575px;
            margin-right: 344px;
            margin-top: 34px;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server" class="auto-style2">
    <div>

        

            <h2 class="auto-style4">&nbsp;</h2>
            <p class="auto-style4">
                &nbsp;
            </p>
            <p class="auto-style4">
                &nbsp;
            </p>
            <p class="auto-style4">
                &nbsp;</p>
            <p class="auto-style4">
                &nbsp;</p>
            <p class="auto-style4">
                &nbsp;</p>
            <p class="auto-style4">
                &nbsp;</p>
            <h2 class="auto-style17">&nbsp;<asp:Label ID="Label1" runat="server" Text="INICIO DE SECCION" CssClass="auto-style5"></asp:Label>
            </h2>
            <h2 class="auto-style18">
                <asp:Label ID="Label2" runat="server" Text="Usuario"></asp:Label>
                <asp:TextBox ID="Username" runat="server" CssClass="auto-style7" Height="21px" Width="222px" OnTextChanged="Username_TextChanged"></asp:TextBox>
            </h2>
            <h2 class="auto-style18">
                <asp:Label ID="Label3" runat="server" Text="Contraseña"></asp:Label>
                <asp:TextBox ID="Password" runat="server" CssClass="auto-style8" Height="22px" Width="220px" OnTextChanged="Password_TextChanged"></asp:TextBox>
            </h2>
            <h2 class="auto-style18">
                <asp:Label ID="Label4" runat="server" Text="Dominio"></asp:Label>
                <asp:TextBox ID="Domain" runat="server" CssClass="auto-style9" Height="22px" Width="221px" OnTextChanged="Domain_TextChanged"></asp:TextBox>
            </h2>
            <h2 class="auto-style14">&nbsp;</h2>

        

            <h2 class="auto-style18">
                <asp:Button ID="btnLogon" runat="server" CssClass="auto-style10" ForeColor="#0000CC" Height="34px" OnClick="Button1_Click" Text="LOGIN" Width="86px" />
            </h2>

        

            <h2 class="auto-style18">
                <asp:Label ID="lblError" runat="server"></asp:Label>
            </h2>

        

    </div>
    </form>
</body>
</html>