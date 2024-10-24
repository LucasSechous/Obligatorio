using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.DateTime;

namespace Obligatorio.Models
{
    public class Ordenes
    {

        private int NroOrden;
        private Cliente Cliente;
        private Tecnico Tecnico;
        private string DescripcionProblema;
        private DateTime FechaCreacion;
        private Estado Estado;
        private string ComentariosTecnico;

        public int getNroOrden()
        {
            return NroOrden;
        }

        public void setNroOrden(int NroOrden)
        {
            this.NroOrden = NroOrden;
        }

        public Cliente getCliente()
        {
            return Cliente;
        }

        public void setCliente(Cliente Cliente)
        {
            this.Cliente = Cliente;
        }

        public Tecnico getTecnico()
        {
            return Tecnico;
        }

        public void setTecnico(Tecnico Tecnico)
        {
            this.Tecnico = Tecnico;
        }

        public string getDescripcionProblema()
        {
            return DescripcionProblema;
        }

        public void setDescripcionProblema(string DescripcionProblema)
        {
            this.DescripcionProblema = DescripcionProblema;
        }

        public DateTime getFechaCreacion()
        {
            return FechaCreacion;
        }

        public void setFechaCreacion(DateTime fechaCreacion)
        {
            this.FechaCreacion = fechaCreacion;
        }

        public Estado getEstado()
        {
            return Estado;
        }

        public void setEstado(Estado Estado)
        {
            this.Estado = Estado;
        }

        public string getComentariosTecnico()
        {
            return ComentariosTecnico;
        }

        public void setComentariosTecnico(string ComentariosTecnico)
        {
            this.ComentariosTecnico= ComentariosTecnico;
        }








    }
}