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

            <asp:Label ID="lblNombreCliente" runat="server" Text="Nombre del Cliente: "></asp:Label>
            <asp:TextBox ID="txtNombreCliente" runat="server"/>
>           
            <asp:Label ID="lblTipoServicio" runat="server" Text="Servicio Deseado: "></asp:Label>
            <%-- Hacer un dropdown --%>
            <asp:DropDownList ID="tipo_Servicio" runat="server"> 
                <asp:ListItem runat="server" Enabled="true" Text="Seleccione un Servicio" Value="-1"></asp:ListItem>
                <asp:ListItem Value="Montaje">Montaje</asp:ListItem>
                <asp:ListItem Value="Sistemas">Sistemas</asp:ListItem>
                <asp:ListItem Value="Reparacion">Reparacion</asp:ListItem>


            </asp:DropDownList>






        </div>
    </form>
</body>
</html>
