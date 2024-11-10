<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TecnicosWeb.aspx.cs" Inherits="Obligatorio.TecnicosWeb" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Único formulario de servidor en la página -->
    <div id="formTecnico" class="main-container">
        <h1 class="titulo">Creación de Técnicos</h1>

        <!-- Formulario de creación de técnicos -->
        <div class="form-group">
            <asp:Label ID="lblNombre" runat="server" Text="Nombre: " CssClass="label-custom"></asp:Label>
            <asp:TextBox ID="txtNombre" runat="server" CssClass="input-field"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ID="rfvNombre" ControlToValidate="txtNombre" ForeColor="Red" Text="El nombre es requerido" />
        </div>

        <div class="form-group">
            <asp:Label ID="lblApellido" runat="server" Text="Apellido: " CssClass="label-custom"></asp:Label>
            <asp:TextBox ID="txtApellido" runat="server" CssClass="input-field"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ID="rfvApellido" ControlToValidate="txtApellido" ForeColor="Red" Text="El Apellido es requerido" />
        </div>

        <div class="form-group">
            <asp:Label ID="lblCI" runat="server" Text="CI: " CssClass="label-custom"></asp:Label>
            <asp:TextBox ID="txtCI" runat="server" CssClass="input-field"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ID="rfcCI" ControlToValidate="txtCI" ForeColor="Red" Text="La Cedula de Identidad es requerida" />
        </div>

        <div class="form-group">
            <asp:Label ID="lblEspecialidad" runat="server" Text="Especialidad: " CssClass="label-custom"></asp:Label>
            <asp:DropDownList ID="ddlTipoServicio" runat="server" CssClass="input-field">
                <asp:ListItem runat="server" Text="Seleccione un Servicio" Value=""></asp:ListItem>
                <asp:ListItem Value="Sistemas">Sistemas</asp:ListItem>
                <asp:ListItem Value="Reparacion">Reparación</asp:ListItem>
            </asp:DropDownList>
        </div>

        <!-- Botón para crear técnico -->
        <div class="form-group">
            <asp:Button ID="btnCrearTecnico" runat="server" Text="Crear Técnico" Width="151px" OnClick="CmdCrear" CssClass="btn" />
        </div>

        <!-- Tabla con los técnicos creados -->
        <asp:GridView ID="TablaTecnico1" runat="server" AutoGenerateColumns="False" OnRowDeleting="TeBorroALaMierda" OnRowCommand="TablaTecnico1_RowCommand" CssClass="table">
            <Columns>
                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
                <asp:BoundField DataField="CI" HeaderText="CI" SortExpression="CI" />
                <asp:BoundField DataField="Especialidad" HeaderText="Especialidad" SortExpression="Especialidad" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Button ID="btnEditar" runat="server" CommandName="Editar" CommandArgument="<%# Container.DataItemIndex %>" Text="Editar" CausesValidation="false" CssClass="btn-edit" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ButtonType="Button" ShowDeleteButton="true" DeleteText="Eliminar" />
            </Columns>
        </asp:GridView>

        <!-- Botón para actualizar técnico (oculto inicialmente) -->
        <div class="form-group">
            <asp:Button ID="BtnActualizar" runat="server" Text="Actualizar" Visible="false" OnClick="BtnActualizar_Click" CssClass="btn" />
        </div>

        <!-- Etiqueta de error -->
        <asp:Label ID="lblError" runat="server" Visible="false" ForeColor="Red" CssClass="error-msg"></asp:Label>
    </div>

    <style>
        /* Estilos generales */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            color: #333;
        }

        .main-container {
            width: 80%;
            margin: 0 auto;
            padding: 20px;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .titulo {
            font-size: 32px;
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
            width: 150px;
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

        .btn {
            padding: 10px 20px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }

        .btn:hover {
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

        .error-msg {
            margin-top: 10px;
            color: red;
            font-weight: bold;
        }
    </style>
</asp:Content>