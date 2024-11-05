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
            <asp:TextBox ID="txtNombreCliente" runat="server" />
        </div>
        <div>
            <asp:Label ID="lblTipoServicio" runat="server" Text="Servicio Deseado: "></asp:Label>
            
            <%-- Hacer un dropdown --%>
            <asp:DropDownList ID="ddlTipoServicio" runat="server">
                <asp:ListItem ID="mostradoPrimero" runat="server" Enabled="true" Text="Seleccione un Servicio" Value="-1"></asp:ListItem>
                <asp:ListItem Value="Montaje">Montaje</asp:ListItem>
                <asp:ListItem Value="Sistemas">Sistemas</asp:ListItem>
                <asp:ListItem Value="Reparacion">Reparacion</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div>
            <asp:Calendar runat="server" ID="calendario"></asp:Calendar>
            <table style="width: 100%;">
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <asp:Table runat="server"></asp:Table>
            <asp:Table ID="Table1" runat="server"></asp:Table>
            &nbsp;
        </div>
    </form>
</body>
</html>
