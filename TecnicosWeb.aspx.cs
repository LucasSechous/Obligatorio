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
            
            if (!IsPostBack)
            {
                if (BaseDeDatos.ListaTecnico.Count == 0) // Solo precarga si la lista está vacía
                {
                    BaseDeDatos.PrecargarBD();
                }
                TablaTecnico.DataSource = BaseDeDatos.ListaTecnico;
                TablaTecnico.DataBind();
            }

        }

        protected void cmdCrear(object sender, EventArgs e)
        {


            var a = txtNombre.Text;
            var b = txtApellido.Text;
            var c = txtCI.Text;
            var d = txtEspecialidad.Text;

            Tecnico miTecnico = new Tecnico(a, b, c, d);

            miTecnico.Nombre = a;
            miTecnico.Apellido = b;
            miTecnico.CI = c;
            miTecnico.Especialidad = d;
            lblError.Text = "Cliente creado correctamente";

            BaseDeDatos.ListaTecnico.Add(miTecnico);



            TablaTecnico.DataSource = BaseDeDatos.ListaTecnico;
            TablaTecnico.DataBind();

            txtNombre.Text = "";
            txtApellido.Text = "";
            txtCI.Text = "";
            txtEspecialidad.Text = "";


        }



        protected void TablaTecnico_SelectedIndexChanged(object sender, EventArgs e)
        {

            //dt.Columns.Add("Tecnico");





        }
    }
}