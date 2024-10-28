<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Crear_Nueva_Orden.aspx.cs" Inherits="Obligatorio.Crear_Nueva_Orden" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:Label ID="txtNombreCliente" runat="server" Text="Nombre del Cliente: "></asp:Label>

            <asp:Label ID="txtNombreTecnico" runat="server" Text="Nombre del Cliente: "></asp:Label>
            <%-- Hacer un dropdown --%>
            <asp:DropDownList ID="seleccionar Tecnico" runat="server">

                <asp:ListItem Enabled="true" Text="Seleccione un Tecnico" Value="-1"></asp:ListItem>
                <asp:ListItem Value="Tec1"></asp:ListItem>
                <asp:ListItem></asp:ListItem>
                <asp:ListItem></asp:ListItem>


            </asp:DropDownList>




            <asp:Label ID="Label2" runat="server" Text="Nombre del Cliente: "></asp:Label>

            <asp:Label ID="Label3" runat="server" Text="Nombre del Cliente: "></asp:Label>





        </div>
    </form>
</body>
</html>
