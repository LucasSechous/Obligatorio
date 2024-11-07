using Obligatorio.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Obligatorio
{
    public partial class TecnicosWeb : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TablaTecnico.DataSource = BaseDeDatos.ListaTecnico;
            TablaTecnico.DataBind();
            TablaTecnico.DataSource = BaseDeDatos.ListaTecnico;

        }

        protected void cmdCrear(object sender, EventArgs e)
        {
        }
    }
}