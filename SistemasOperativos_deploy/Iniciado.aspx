<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Iniciado.aspx.cs" Inherits="OS2.Iniciado" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

    <style type="text/css">
body{ 
background-image: url('http://lh4.googleusercontent.com/-cFVxsHASQNI/TrxJlBgWJnI/AAAAAAAAAVE/Kk9n6bcENyc/s1600/fondo%2Bazul.jpg'); 
background-repeat: no-repeat; 
background-size: 100%; 
} 
        .auto-style1 {
            height: 714px;
            margin-left: 206px;
            width: 680px;
        }
        .auto-style2 {
            text-decoration: underline;
        }
        </style>

</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style1">

       

        <br />
        <br />
        <br />
        <br />
        <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0" OnActiveViewChanged="MultiView1_ActiveViewChanged">
            <asp:View ID="View1" runat="server">
                <h2><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style2">GENERAL</span></strong></h2>
                <asp:Label ID="Label1" runat="server" Text="First Name:"></asp:Label>
                &nbsp;
                <asp:Label ID="lblFirstName" runat="server"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" Text="Last Name:"></asp:Label>
                &nbsp;
                <asp:Label ID="lblLastName" runat="server"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label3" runat="server" Text="Display Name:"></asp:Label>
                &nbsp;<asp:Label ID="lblDisplayName" runat="server"></asp:Label>
                <br />
                <br />
                <br />
            </asp:View>
            <asp:View ID="View2" runat="server">
                <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style2">MEMBER OF</span></h2>
                <asp:Label ID="Label4" runat="server" Text="Grupos a los que pertenece:"></asp:Label>
                &nbsp;<br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblMemberOf" runat="server"></asp:Label>
                <br />
                <br />
                <br />
                <br />
            </asp:View>
            <asp:View ID="View3" runat="server">
                <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style2">CAMBIAR CONTRASEÑA</span></h2>
                <label id="lblContraVieja" runat="server" >Contra Actual:</label>
                <label id="lblContra" runat="server" />
                <br />
                <br />
                <label id="lblContraNueva" runat="server" >Contra Nueva:</label>
                <input id="txtContraNueva" type="text" runat="server" />
                <br />
                <br />
                <button id="btnCambiarContra" runat="server" onserverclick="cambiarContra" >Cambiar Password</button>
                <br />
                <br />
                <br />
            </asp:View>
        </asp:MultiView>
        <p style="margin-left: 0px; height: 194px; width: 594px;">
            <br />
            <br />
            <br />
        <asp:Button ID="btnGeneral" runat="server" OnClick="btnGeneral_Click" Text="General" />
        <asp:Button ID="btnMemberOf" runat="server" OnClick="btnMemberOf_Click" Text="Member Of" />
        <asp:Button ID="btnCambiarContraseña" runat="server" OnClick="btnCambiarContraseña_Click" Text="Cambiar Contraseña" />
            <br />
            <br />
        <br />
        <br />
        <asp:Label ID="lblError" runat="server" Font-Bold="True"></asp:Label>
       

        <br />
       

        </p>

       

    </div>
    </form>
</body>
</html>