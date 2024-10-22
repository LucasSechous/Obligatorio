using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Obligatorio.Models
{
    public class Tecnico : Usuario
    {
        private string Especialidad;

        public Tecnico(string Nombre, string Apellido, uint ci, string Esprecialidad): base(Nombre, Apellido, ci)
        {
        }

        public string getEspecialidad()
        {
            return Especialidad;
        }

        public void setEspecialidad(string Especialidad)
        {
            this.Especialidad = Especialidad;
        }

    }
}