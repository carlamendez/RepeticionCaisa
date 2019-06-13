<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MenuPrincipal.aspx.cs" Inherits="Caisa.MenuPrincipal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align:center">
           <asp:Table runat="server">
               <asp:TableRow>
                   <asp:TableCell>
                       <asp:label ID="lblusuario" text="Usuario :" runat="server" />
                   </asp:TableCell><asp:TableCell>
                       <asp:label ID="lblnombre" text="" runat="server" />
                   </asp:TableCell></asp:TableRow><asp:TableRow>
                   <asp:TableCell>
                       <asp:label ID="lblEdad" text="Edad :" runat="server" />
                   </asp:TableCell><asp:TableCell>
                        <asp:label ID="lbledadu" text="" runat="server" />
                   </asp:TableCell></asp:TableRow></asp:Table><asp:LinkButton Text="Editar datos personales" runat="server" OnClick="Unnamed1_Click" />
            <br />
<asp:LinkButton Text="Cerrar Sesión" ID="lnkcerrarsesion" runat="server" OnClick="lnkcerrarsesion_Click" /></div>
    </form>
</body>
</html>
