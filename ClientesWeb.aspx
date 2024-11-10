<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ClientesWeb.aspx.cs" Inherits="Obligatorio.ClientesWeb" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div id="formCliente" class="form-container">
        <!-- Titulo -->
        <h1 class="titulo">Creación de Clientes</h1>

        <!-- Campo Nombre -->
        <div class="form-group">
            <asp:Label ID="Label" runat="server" Text="Nombre: " CssClass="label-custom"></asp:Label>
            <asp:TextBox ID="txtNombre" runat="server" CssClass="input-field"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ID="rfvNombre" ControlToValidate="txtNombre" ForeColor="Red" Text="El nombre es requerido" />
        </div>

        <!-- Campo Apellido -->
        <div class="form-group">
            <asp:Label ID="Label1" runat="server" Text="Apellido: " CssClass="label-custom"></asp:Label>
            <asp:TextBox ID="txtApellido" runat="server" CssClass="input-field"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ID="rfvApellido" ControlToValidate="txtApellido" ForeColor="Red" Text="El Apellido es requerido" />
        </div>

        <!-- Campo CI -->
        <div class="form-group">
            <asp:Label ID="Label3" runat="server" Text="CI: " CssClass="label-custom"></asp:Label>
            <asp:TextBox ID="txtCI" runat="server" CssClass="input-field"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ID="rfcCI" ControlToValidate="txtCI" ForeColor="Red" Text="La Cedula de Identidad es requerida" />
            <!-- CustomValidator para validar la cédula -->
            <asp:CustomValidator ID="cvCedula" runat="server" ControlToValidate="txtCI" ForeColor="Red" OnServerValidate="cvCedula_ServerValidate" ValidationGroup="gvCreacionCliente" ErrorMessage="La cédula es incorrecta" />
        </div>

        <!-- Campo Dirección -->
        <div class="form-group">
            <asp:Label ID="Label4" runat="server" Text="Dirección: " CssClass="label-custom"></asp:Label>
            <asp:TextBox ID="txtDireccion" runat="server" CssClass="input-field"></asp:TextBox>
        </div>

        <!-- Campo Teléfono -->
        <div class="form-group">
            <asp:Label ID="Label5" runat="server" Text="Teléfono: " CssClass="label-custom"></asp:Label>
            <asp:TextBox ID="txtTelefono" runat="server" TextMode="Number" CssClass="input-field"></asp:TextBox>
        </div>

        <!-- Campo Email -->
        <div class="form-group">
            <asp:Label ID="Label6" runat="server" Text="Email: " CssClass="label-custom"></asp:Label>
            <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" CssClass="input-field"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="lblError" runat="server" Visible="false" ForeColor="Red"></asp:Label>
        </div>

        <!-- Botón para crear cliente -->
        <div class="form-group">
            <asp:Button ID="btnCrearCliente" runat="server" Text="Crear Cliente" OnClick="CmdCrear" ValidationGroup="gvCreacionCliente" CssClass="btn-primary" />
        </div>

        <!-- Tabla de clientes -->
        <asp:GridView ID="TablaClientes1" runat="server" AutoGenerateColumns="False" OnRowDeleting="TeBorroALaMierda" OnRowCommand="TablaClientes1_RowCommand" CssClass="table">
            <Columns>
                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
                <asp:BoundField DataField="CI" HeaderText="CI" SortExpression="CI" />
                <asp:BoundField DataField="Direccion" HeaderText="Dirección" SortExpression="Direccion" />
                <asp:BoundField DataField="Telefono" HeaderText="Teléfono" SortExpression="Telefono" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Button ID="btnEditar" runat="server" CommandName="Editar" CommandArgument="<%# Container.DataItemIndex %>" Text="Editar" CausesValidation="false" CssClass="btn-edit" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ButtonType="Button" ShowDeleteButton="true" DeleteText="Eliminar" />
            </Columns>
        </asp:GridView>

        <!-- Botón para actualizar cliente (oculto inicialmente) -->
        <div class="form-group">
            <asp:Button ID="BtnActualizar" runat="server" Text="Actualizar" Visible="false" OnClick="BtnActualizar_Click" CssClass="btn-primary" />
        </div>

        <!-- Mensaje de éxito -->
        <asp:Label ID="lblCreadoCorrectamente" runat="server" Visible="false" ForeColor="Green" CssClass="success-msg"></asp:Label>

    </div>

    <style>
        /* Estilos generales */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            color: #333;
            margin: 0;
            padding: 0;
        }

        .form-container {
            width: 70%;
            margin: 50px auto;
            padding: 30px;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .titulo {
            font-size: 28px;
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }

        .form-group {
            margin-bottom: 15px;
            display: flex;
            align-items: center;
        }

        .label-custom {
            width: 120px;
            font-weight: bold;
            margin-right: 20px;
            color: #333;
        }

        .input-field {
            flex: 1;
            padding: 10px;
            font-size: 14px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }

        .input-field:focus {
            border-color: #007bff;
            outline: none;
        }

        .btn-primary {
            padding: 10px 20px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }

        .btn-primary:hover {
            background-color: #0056b3;
        }

        .table {
            width: 100%;
            margin-top: 20px;
            border-collapse: collapse;
            border: 1px solid #ddd;
        }

        .table th, .table td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        .table th {
            background-color: #f4f4f4;
        }

        .btn-edit {
            background-color: #28a745;
        }

        .btn-edit:hover {
            background-color: #218838;
        }

        .success-msg {
            margin-top: 20px;
            color: green;
            font-weight: bold;
        }

        .error-msg {
            margin-top: 10px;
            color: red;
            font-weight: bold;
        }
    </style>

</asp:Content>