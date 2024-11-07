using Obligatorio.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Obligatorio
{
    public partial class ClientesWeb : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            if (!IsPostBack)
            {
                TablaClientes.DataSource = BaseDeDatos.ListaClientes;
                TablaClientes.DataBind();
                TablaClientes.DataSource = BaseDeDatos.ListaClientes;
                

            }
        }
        private void CargarClientesEnTabla()
        {
            TablaClientes1.DataSource = BaseDeDatos.ListaClientes;
            TablaClientes1.DataBind();
        }

        protected void cmdCrear(object sender, EventArgs e)
        {

            if (string.IsNullOrEmpty(txtEmail.Text) && string.IsNullOrEmpty(txtTelefono.Text))
            {
                
                lblError.Text = "Debes agregar un metodo de contacto";
                lblError.Visible = true;

            }
            else
            {
                var a = txtNombre.Text;
                var b = txtApellido.Text;
                var c = txtCI.Text;
                var d = txtDireccion.Text;
                var ea = txtTelefono.Text;
                var f = txtEmail.Text;

                Cliente miCliente = new Cliente(a, b, c, d, ea, f);

                miCliente.Nombre = a;
                miCliente.Apellido = b;
                miCliente.CI = c;
                miCliente.Direccion = d;
                miCliente.Telefono = ea;
                miCliente.Email = f;
                lblCreadoCorrectamente.Visible = true;
                lblCreadoCorrectamente.Text = "Cliente creado correctamente";

                BaseDeDatos.ListaClientes.Add(miCliente);


                
                TablaClientes1.DataSource = BaseDeDatos.ListaClientes;
                TablaClientes1.DataBind();

                LimpiarCampos();
            }

            


        }
        private void LimpiarCampos()
        {
            txtNombre.Text = "";
            txtApellido.Text = "";
            txtCI.Text = "";
            txtDireccion.Text = "";
            txtTelefono.Text = "";
            txtEmail.Text = "";
        }
    }
}