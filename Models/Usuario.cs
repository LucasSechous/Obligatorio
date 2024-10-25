using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Obligatorio.Models
{
    public class Usuario
    {

      public string Nombre {  get; set; }
      public string Apellido { get; set; }
      public uint CI { get; set; }


        public Usuario(string Nombre, string Apellido, uint ci)
        {
            this.Nombre = Nombre;
            this.Apellido = Apellido;
            this.CI = ci;
        }

        public string getNombre()
        {
            return Nombre;
        }

        public string getApellido()
        {
            return Apellido;
        }

        public uint getCI()
        {
            return CI;
        }

        public void setNombre(string nombre)
        {
            this.Nombre = nombre;
        }

        public void setApellido(string apellido)
        {
            this.Apellido = apellido;
        }

        public void setCI(uint ci)
        {
            this.CI = ci;
        }



    }
}