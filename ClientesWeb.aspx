<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ClientesWeb.aspx.cs" Inherits="Obligatorio.ClientesWeb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <asp:Label ID="Label" runat="server" Text="Nombre: "></asp:Label>
        <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ID="rfvNombre" ControlToValidate="txtNombre" ForeColor="Red" Text="El nombre es requerido"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label1" runat="server" Text="Apellido: "></asp:Label>
        <asp:TextBox ID="txtApellido" runat="server"></asp:TextBox> 
        <asp:RequiredFieldValidator runat="server" ID="rfvApellido" ControlToValidate="txtApellido" ForeColor="Red" Text="El Apellido es requerido"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label3" runat="server" Text="CI:" textMode="Number"></asp:Label>
        <asp:TextBox ID="txtCI" runat="server"></asp:TextBox> 
        <asp:RequiredFieldValidator runat="server" ID="rfcCI" ControlToValidate="txtCI" ForeColor="Red" Text="La Cedula de Identidad es requerida"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label4" runat="server" Text="Direccion: "></asp:Label>
        <asp:TextBox ID="txtDireccion" runat="server"></asp:TextBox> 
        <br />
        <asp:Label ID="Label5" runat="server" Text="Telefono: "></asp:Label>
        <asp:TextBox ID="txtTelefono" runat="server" TextMode="Number"></asp:TextBox> 
        <br />
        <asp:Label ID="Label6" runat="server" Text="Email: "></asp:Label>
        <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox> 
        <br />
        
        <asp:Label ID="lblError" runat="server" Visible="false" ForeColor="Red"></asp:Label>
        <br /><br />
        
        <asp:Button ID="btnCrearUsuario" runat="server" Text="Crear Usuario" Width="151px" OnClick="cmdCrear" />
        <%--<br />--%>
        <asp:GridView ID="TablaClientes" runat="server"></asp:GridView>
        <br />
        <asp:Label ID="lblCreadoCorrectamente" runat="server" Visible="false" ForeColor="Green"></asp:Label>



    </main>





</asp:Content>
