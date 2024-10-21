using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Obligatorio.Models
{
    public class Tecnico : Usuario
    {
        public Tecnico(string Nombre, string Apellido, uint ci) : base(Nombre, Apellido, ci)
        {
        }
    }
}