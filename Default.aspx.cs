﻿using Obligatorio.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Obligatorio
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (BaseDeDatos.ListaTecnico.Count == 0 && BaseDeDatos.ListaTecnico.Count == 0)
                {
                    BaseDeDatos.PrecargarBD();
                }

            }
        }
    }
}