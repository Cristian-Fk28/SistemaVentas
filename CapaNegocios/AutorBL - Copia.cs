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
    public class TituloAutorBL : Interface.ITituloAutor
    {
        private string mensaje;

        // Propiedad de solo lectura
        public string Mensaje
        {
            get { return mensaje; }
        }

        //UTILIZAR  LOS ARCHIVOS CS DE LA CAPA DE DTOS
        Datos datos = new DatosSQL();


        public bool Agregar(TituloAutor tituloAutor)
        {
            DataRow fila = datos.TraerDataRow("spAgregartitulosAutor", tituloAutor.CodAutor, tituloAutor.CodTitulo, tituloAutor.Orden, tituloAutor.Tiempo);
            mensaje = fila["Mensaje"].ToString();
            byte codError = Convert.ToByte(fila["CodError"]);
            if (codError == 0) return false;
            else return true;
        }

        public bool Eliminar(string codigo)
        {
            DataRow fila = datos.TraerDataRow("spEliminarTituloAutor", codigo);
            mensaje = fila["Mensaje"].ToString();
            byte codError = Convert.ToByte(fila["CodError"]);
            if (codError == 0) return false;
            else return true;
        }

        public DataSet Listar()
        {
            return datos.TraerDataSet("spListartitulosAutor");
        }
    }
}
