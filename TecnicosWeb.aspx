<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TecnicosWeb.aspx.cs" Inherits="Obligatorio.TecnicosWeb" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <main>

        <main>
            <div>
                <h1 id="titulo" runat="server" class="titulo">Creacion de Tecnicos</h1>
            </div>

            <div>
                <asp:Label ID="lblNombre" runat="server" Text="Nombre: " CssClass="label-custom"></asp:Label>
                <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ID="rfvNombre" ControlToValidate="txtNombre" ForeColor="Red" Text="El nombre es requerido"></asp:RequiredFieldValidator>
            </div>

            <div>
                <asp:Label ID="lblApellido" runat="server" Text="Apellido: " CssClass="label-custom"></asp:Label>
                <asp:TextBox ID="txtApellido" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ID="rfvApellido" ControlToValidate="txtApellido" ForeColor="Red" Text="El Apellido es requerido"></asp:RequiredFieldValidator>
            </div>

            <div>
                <asp:Label ID="lblCI" runat="server" Text="CI: " CssClass="label-custom"></asp:Label>
                <asp:TextBox ID="txtCI" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ID="rfcCI" ControlToValidate="txtCI" ForeColor="Red" Text="La Cedula de Identidad es requerida"></asp:RequiredFieldValidator>
            </div>

            <div>
                <asp:Label ID="lblEspecialidad" runat="server" Text="Especialidad: " CssClass="label-custom"></asp:Label>
                <asp:DropDownList ID="ddlTipoServicio" runat="server">
                    <asp:ListItem runat="server" Enabled="true" Text="Seleccione un Servicio" Value=""></asp:ListItem>
                    <asp:ListItem Value="Montaje">Montaje</asp:ListItem>
                    <asp:ListItem Value="Sistemas">Sistemas</asp:ListItem>
                    <asp:ListItem Value="Reparacion">Reparacion</asp:ListItem>
                </asp:DropDownList>


            </div>
            <div>
                &nbsp;<br />
            </div>

            <div>
                <asp:Button ID="btnCrearTecnico" runat="server" Text="Crear Tecnico" Width="151px" OnClick="CmdCrear" />
            </div>
            <div>&nbsp;</div>

            <asp:GridView ID="TablaTecnico1" runat="server" AutoGenerateColumns="False" OnRowDeleting="TeBorroALaMierda" OnRowCommand="TablaTecnico1_RowCommand">
                <Columns>
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                    <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
                    <asp:BoundField DataField="CI" HeaderText="CI" SortExpression="CI" />
                    <asp:BoundField DataField="Especialidad" HeaderText="Especialidad" SortExpression="Especialidad" />
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Button ID="btnEditar" runat="server" CommandName="Editar" CommandArgument="<%# Container.DataItemIndex %>" Text="Editar" CausesValidation="false" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ButtonType="Button" ShowDeleteButton="true" DeleteText="Eliminar" />
                </Columns>
            </asp:GridView>
            <div>&nbsp;</div>
            <div>
                <asp:Button ID="BtnActualizar" runat="server" Text="Actualizar" Visible="false" OnClick="BtnActualizar_Click" />
            </div>

            <asp:Label ID="lblError" runat="server" Visible="false" ForeColor="Red"></asp:Label>
        </main>


    </main>
    <style>
        .label-custom {
            display: inline-block; /* Para que todos tengan el mismo tamaño */
            width: 100px; /* Establece un ancho fijo */
            margin-top: 20px; /* Espaciado superior */
            text-align: right; /* Alineación del texto */
        }

        .titulo {
            width: 238px; /* Establece un ancho fijo */
            text-align: right; /* Alineación del texto */
            font-size: 25px;
        }

        .div {
            padding-bottom: 10px;
            padding-top: 10px;
        }
    </style>

























</asp:Content>
