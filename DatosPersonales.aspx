<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DatosPersonales.aspx.cs" Inherits="Caisa.DatosPersonales" %>

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
            <asp:Label CssClass="text-center" Text="Edición de Datos Personales" runat="server" Font-Bold="True" Font-Names="Calibri" Font-Size="50px" ForeColor="CadetBlue"/>
        </div>
        <asp:GridView ID="gvdatospersonales" CssClass="table-condensed text-center" Width="100%" runat="server" AutoGenerateColumns="False" OnRowEditing="gvdatospersonales_RowEditing" OnRowCancelingEdit="gvdatospersonales_RowCancelingEdit" OnRowDeleting="gvdatospersonales_RowDeleting" OnRowUpdating="gvdatospersonales_RowUpdating">
            <Columns>
                <asp:TemplateField HeaderText="Correo Electronico" SortExpression="email">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtemail" runat="server" Text='<%# Bind("email") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblemail" runat="server" Text='<%# Bind("email") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Nombre" SortExpression="nombre">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtnombre" runat="server" Text='<%# Bind("nombre") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblnombre" runat="server" Text='<%# Bind("nombre") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Apellido Paterno" SortExpression="paterno">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtpaterno" runat="server" Text='<%# Bind("paterno") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="paterno" runat="server" Text='<%# Bind("paterno") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Apellido Materno" SortExpression="materno">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtmaterno" runat="server" Text='<%# Bind("materno") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblmaterno" runat="server" Text='<%# Bind("materno") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Fecha Nacimiento" SortExpression="nacimiento">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtnacimiento" runat="server" Text='<%# Bind("nacimiento") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblnacimiento" runat="server" Text='<%# Bind("nacimiento") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Edad" SortExpression="edad">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtedad" runat="server" Text='<%# Bind("edad") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lbledad" type="number"  runat="server" Text='<%# Bind("edad") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Dirección" SortExpression="direccion">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtdireccion" runat="server" Text='<%# Bind("direccion") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lbldireccion" runat="server" Text='<%# Bind("direccion") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Telefono" SortExpression="telefono">
                    <EditItemTemplate>
                        <asp:TextBox ID="txttelefono" runat="server" type="number"  Text='<%# Bind("telefono") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lbltelefono" runat="server" Text='<%# Bind("telefono") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="eac" ShowHeader="False">
                    <EditItemTemplate>
                        <asp:Button ID="Button1" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                        &nbsp;<asp:Button ID="Button2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Button ID="btneditar" runat="server" CausesValidation="False" CommandName="Edit" Text="Editar" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:Button ID="btndelete" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:Button>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <br />
        <asp:Button CssClass="btn-primary" Text="Regresar" runat="server" Width="82px" style="margin-left: 490px" ID="btnregresar" OnClick="btnregresar_Click"/>
    </form></body></html>