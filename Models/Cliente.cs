using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Obligatorio.Models
{
    public class Cliente:U
    {
        private string Direccion;
        private string Telefono;
        private string Email;

        public Cliente(string nombre, string apellido, uint ci, string direccion, string telefono, string email):base()

    }
}