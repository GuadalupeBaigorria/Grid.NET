using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public static class Listas
    {
        private static List<Personas> listPersonas;

       
    


        static Listas()
        {
            ListPersonas = new List<Personas>();
        }

        public static List<Personas> ListPersonas { get => listPersonas; set => listPersonas = value; }
    }
}
