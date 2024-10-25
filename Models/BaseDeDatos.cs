using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Obligatorio.Models
{
    public abstract class BaseDeDatos
    {

        public static List<Cliente> ListaClientes = new List<Cliente>();
        public static List<Tecnico> ListaTecnico = new List<Tecnico>();


        static BaseDeDatos()
        {
            Cliente Cli1 = new Cliente("Jose", "Perez", 50237326, "Sarandi 234", "097342631", "jperez@gmail.com");
            Cliente Cli2 = new Cliente("Pepe", "Silva", 44094112, "Gorlero 890", "094621001", "elpepe777@gmail.com");
            Cliente Cli3 = new Cliente("Ricardo", "Gonzalez", 51017628, "25 de Mayo 1001", "098150787", "RicarditoDDL@gmail.com");

            ListaClientes.Add(Cli1);
            ListaClientes.Add(Cli2);
            ListaClientes.Add(Cli3);
        }
    }





}