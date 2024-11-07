using Obligatorio.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Obligatorio
{
    public partial class Crear_Nueva_Orden : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CboClientes.DataSource = BaseDeDatos.ListaClientes;
            CboClientes.DataTextField = "Nombre";
            CboClientes.DataBind();
            ListBox1.DataSource = BaseDeDatos.ListaClientes;
            ListBox1.DataTextField = "Nombre";
            ListBox1.DataBind();
        }
    }
}