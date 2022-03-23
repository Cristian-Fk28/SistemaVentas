using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaEntidad
{
    public class Autor
    {
        //Atributos de la clase autor
        private string id;
        private string nombre;
        private string apellido;
        private string celular;
        private string direccion;
        private string ciudad;
        private string estado;
        private string codPostal;
        private string contrato;
        //PROPIEDADES
        public string Id { get => id; set => id = value; }
        public string Nombre { get => nombre; set => nombre = value; }
        public string Apellido { get => apellido; set => apellido = value; }
        public string Celular { get => celular; set => celular = value; }
        public string Direccion { get => direccion; set => direccion = value; }
        public string Ciudad { get => ciudad; set => ciudad = value; }
        public string Estado { get => estado; set => estado = value; }
        public string CodPostal { get => codPostal; set => codPostal = value; }
        public string  Contrato { get => contrato; set => contrato = value; }
        
    }
}
