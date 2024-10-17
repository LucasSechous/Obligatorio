using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Obligatorio.Models
{
    public class Cliente : Usuario
    {
        private string Direccion;
        private string Telefono;
        private string Email;

        public Cliente(string nombre, string apellido, uint ci, string direccion, string telefono, string email) : base(nombre, apellido, ci)
        {
            this.Direccion = direccion;
            this.Telefono = telefono;
            this.Email = email;
        }

        public string getDireccion()
        {
            return Direccion;
        }

        public string getTelefono()
        {
            return Telefono;
        }

        public string getEmail()
        {
            return Email;
        }

        public void setDireccion(string direccion)
        {
            this.Direccion= direccion;
        }

        public void setTelefono(string telefono)
        {
            this.Telefono= telefono;
        }

        public void setEmail(string email)
        {
            this.Email= email;
        }

    }
}