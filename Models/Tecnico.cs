using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Obligatorio.Models
{
    public class Tecnico : Usuario
    {
        public string Especialidad;

        public Tecnico(string Nombre, string Apellido, string ci, string especialidad): base(Nombre, Apellido, ci)
        {
            this.Especialidad = especialidad;
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