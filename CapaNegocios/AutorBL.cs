using CapaEntidad;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDato;
namespace CapaNegocios
{
    public class AutorBL : Interface.IAutor
    {
        //Atributo que devuelve el mensaje del PA
        private string mensaje;

        // Propiedad de solo lectura
        public string Mensaje
        {
            get { return mensaje; }
        }

        //UTILIZAR  LOS ARCHIVOS CS DE LA CAPA DE DTOS
        Datos datos = new DatosSQL();
        public bool Actualizar(Autor autor)
        {
            DataRow fila = datos.TraerDataRow("spActualizarAutor", autor.Id, autor.Nombre, autor.Apellido, autor.Celular, autor.Direccion,autor.Ciudad,autor.Estado,autor.CodPostal,autor.Contrato);
            mensaje = fila["Mensaje"].ToString();
            byte codError = Convert.ToByte(fila["CodError"]);
            if (codError == 0) return false;
            else return true;
        }

        public bool Agregar(Autor autor)
        {
            DataRow fila = datos.TraerDataRow("spAgregarAutor" , autor.Id, autor.Nombre, autor.Apellido, autor.Celular, autor.Direccion, autor.Ciudad, autor.Estado, autor.CodPostal, autor.Contrato);
            mensaje = fila["Mensaje"].ToString();
            byte codError = Convert.ToByte(fila["CodError"]);
            if (codError == 0) return false;
            else return true;
        }

        public DataSet Buscar(string texto, string criterio)
        {
            return datos.TraerDataSet("spBuscarAutor", texto, criterio);
        }

        public bool Eliminar(string codigo)
        {
            DataRow fila = datos.TraerDataRow("spEliminarAutor", codigo);
            mensaje = fila["Mensaje"].ToString();
            byte codError = Convert.ToByte(fila["CodError"]);
            if (codError == 0) return false;
            else return true;
        }

        public DataSet Listar()
        {
            return datos.TraerDataSet("spListarAutor");
        }
    }
}
