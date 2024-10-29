<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TecnicosWeb.aspx.cs" Inherits="Obligatorio.TecnicosWeb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <main>

        <asp:Label ID="lblNombre" runat="server" Text="Nombre: "></asp:Label>
        <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ID="rfvNombre" ControlToValidate="txtNombre" ForeColor="Red" Text="El nombre es requerido"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="lblApellido" runat="server" Text="Apellido: "></asp:Label>
        <asp:TextBox ID="txtApellido" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ID="rfvApellido" ControlToValidate="txtApellido" ForeColor="Red" Text="El Apellido es requerido"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="lblCI" runat="server" Text="CI: "></asp:Label>
        <asp:TextBox ID="txtCI" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ID="rfcCI" ControlToValidate="txtCI" ForeColor="Red" Text="La Cedula de Identidad es requerida"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="lblEspecialidad" runat="server" Text="Especialidad: "></asp:Label>
        <asp:TextBox ID="txtEspecialidad" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="btnCrearTecnico" runat="server" Text="Crear Tecnico" Width="151px" OnClick="cmdCrear" />
        <br />
        <asp:GridView ID="TablaTecnico" runat="server" OnSelectedIndexChanged="TablaTecnico_SelectedIndexChanged"></asp:GridView>
        <asp:Label ID="lblError" runat="server" Visible="false" ForeColor="Red"></asp:Label>


    </main>
    <%--<style>
        main {
            justify-content: center;
            text-align: center;
        }

        #TablaTecnico {
            justify-content: center;
            text-align: center;
        }
    </style>--%>












</asp:Content>
