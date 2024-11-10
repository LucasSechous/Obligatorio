using Obligatorio.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Obligatorio
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (BaseDeDatos.ListaTecnico.Count == 0 && BaseDeDatos.ListaTecnico.Count == 0)
                {
                    BaseDeDatos.PrecargarBD();


                    DDClientes.DataSource = BaseDeDatos.ListaClientes;
                    DDClientes.DataTextField = "Nombre";
                    DDClientes.DataBind();

                    DDTecnicos.DataSource = BaseDeDatos.ListaTecnico;
                    DDTecnicos.DataTextField = "Nombre";
                    DDTecnicos.DataBind();

                    //ListaComentarios.DataSource = Ordenes
                    //ListaComentarios.DataBind();
                }

            }
        }

        private void CmdCrear(object sender, EventArgs e)
        {

        }

       
    }
}