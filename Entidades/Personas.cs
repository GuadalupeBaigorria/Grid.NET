using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Personas
    {

        public List<Personas> milista = new List<Personas>();
        private string nombre;
        private string apellido;
        private int edad;

        public Personas(string nombre, string apellido, int edad)
        {
            this.nombre = nombre;
            this.apellido = apellido;
            this.edad = edad;
        }

        public Personas()
        {
         
        }

        //public string Nombre { get => nombre; set => nombre = value; }

        public string Nombre
        {
            get
            {
                return nombre;
            }
            set
            {
                nombre = value;
            }
        }
        public string Apellido { get => apellido; set => apellido = value; }
        public int Edad { get => edad; set => edad = value; }
    }
}
