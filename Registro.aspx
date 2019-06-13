<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="Caisa.Registro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="text-center">
            <asp:Label CssClass="text-center" Text="Registro Nuevo" runat="server" Font-Bold="True" Font-Names="Calibri" Font-Size="50px" />
        </div>
        <asp:Table runat="server" CssClass="table-condensed" Height="143px" Width="452px" style="margin-left: 490px; margin-top: 22px;" CellPadding="1" CellSpacing="1">
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblemail" Text="Correo Electronico" runat="server" />
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtemail" runat="server" CssClass="form-control" />
                    <asp:Label Text="" runat="server" ID="lblerror" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblusuario" Text="Usuario" runat="server" />
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtusuario" runat="server" CssClass="form-control" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblpass" Text="Contraseña" runat="server" /></asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtpass" runat="server" CssClass="form-control"/>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblconfpass" Text="Confirmar Contraseña" runat="server" />
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtconfpass" runat="server" CssClass="form-control" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblnombre" Text="Nombre" runat="server" />
                </asp:TableCell><asp:TableCell>
                    <asp:TextBox ID="txtnombre" runat="server" CssClass="form-control" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblpaterno" Text="Apellido Paterno" runat="server"  />
                </asp:TableCell>
                <asp:TableCell>
                       <asp:TextBox ID="txtpaterno" runat="server" CssClass="form-control"  />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblmaterno" Text="Apellido Materno" runat="server" />
                </asp:TableCell>
                <asp:TableCell>
                     <asp:TextBox ID="txtmaterno" runat="server" CssClass="form-control" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                     <asp:Label ID="lblnacimiento" Text="Fecha Nacimiento" runat="server" />
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtnacimiento" runat="server"  CssClass="form-control"/>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                     <asp:Label ID="lblEdad" Text="Edad" runat="server" />
                </asp:TableCell>
                <asp:TableCell>
                      <asp:TextBox ID="txtedad" runat="server" CssClass="form-control" type="number"/>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lbldireccion" Text="Direccíon" runat="server" />
                </asp:TableCell>
                <asp:TableCell>
                     <asp:TextBox ID="txtdireccion" runat="server" CssClass="form-control" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                     <asp:Label ID="lbltelefono" Text="Telefono" runat="server" />
                </asp:TableCell>
                <asp:TableCell>
                     <asp:TextBox ID="txttelefono" type="number"  runat="server" CssClass="form-control" MaxLength="10" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableFooterRow>
                <asp:TableCell>
                    <asp:Button ID="btnregistrar" Text="Registrar" runat="server" OnClick="btnregistrar_Click" CssClass="btn-primary" />
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Button ID="btncancelar" Text="Cancelar" runat="server" OnClick="btncancelar_Click" CssClass="btn-primary" />
                </asp:TableCell>
            </asp:TableFooterRow>
        </asp:Table>
        <%--<div>
           
           
        </div>
        <div>
          
           
        </div>
        <div>
          
        </div>
        <div>
         
          
        </div>
        <div>
            
            
        </div>
        <div>
            
         
        </div>
        <div>
            
           
        </div>
        <div>
           
            
        </div>
        <div>
           
          
        </div>
        <div>
            
           
        </div>
        <div>
           
           
        </div>--%>
        
        
    </form>
</body>
</html>
