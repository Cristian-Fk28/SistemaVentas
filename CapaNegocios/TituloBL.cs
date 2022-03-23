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
    public class TituloBL : Interface.ITitulo
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
        public bool Actualizar(Titulo titulo)
        {
            DataRow fila = datos.TraerDataRow("spActualizarTitles", titulo.Id, titulo.Nombre, titulo.Tipo, titulo.Pub, titulo.Precio, titulo.Advance, titulo.Royalty, titulo.Ytd, titulo.Notas, titulo.Fecha);
            mensaje = fila["Mensaje"].ToString();
            byte codError = Convert.ToByte(fila["CodError"]);
            if (codError == 0) return false;
            else return true;
        }

        public bool Agregar(Titulo titulo)
        {
            DataRow fila = datos.TraerDataRow("spAgregarTitles", titulo.Id, titulo.Nombre, titulo.Tipo, titulo.Pub, titulo.Precio, titulo.Advance, titulo.Royalty, titulo.Ytd, titulo.Notas, titulo.Fecha);
            mensaje = fila["Mensaje"].ToString();
            byte codError = Convert.ToByte(fila["CodError"]);
            if (codError == 0) return false;
            else return true;
        }

        public DataSet Buscar(string texto, string criterio)
        {
            return datos.TraerDataSet("spBuscarTitles", texto, criterio);
        }

        public bool Eliminar(string codigo)
        {
            DataRow fila = datos.TraerDataRow("spEliminarTitles", codigo);
            mensaje = fila["Mensaje"].ToString();
            byte codError = Convert.ToByte(fila["CodError"]);
            if (codError == 0) return false;
            else return true;
        }

        public DataSet Listar()
        {
            return datos.TraerDataSet("spListarTitles");
        }
    }
}