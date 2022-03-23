using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using CapaNegocios;
using System.Data;
using CapaEntidad;
namespace CapaServicios
{
    /// <summary>
    /// Descripción breve de WSTituloAutor
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // Para permitir que se llame a este servicio web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente. 
    // [System.Web.Script.Services.ScriptService]
    public class WSTituloAutor : System.Web.Services.WebService
    {

        [WebMethod(Description = "Listar TitulosAutores")]
        public DataSet Listar()
        {
                TituloAutorBL titulo = new TituloAutorBL();
            return titulo.Listar();
        }
        [WebMethod(Description = "Agregar TitulosAutores")]
        public string[] Agregar(string Codigo, string titulos, string Orden, string Tiempo)
        {
            TituloAutorBL escuelaBL = new TituloAutorBL();
            TituloAutor titulo = new TituloAutor();
            titulo.CodAutor = Codigo;
            titulo.CodTitulo = titulos;
            titulo.Orden = Orden;
            titulo.Tiempo = Tiempo;
            string[] valores = new string[2];
            valores[0] = escuelaBL.Agregar(titulo).ToString();
            valores[1] = escuelaBL.Mensaje;
            return valores;
        }
        [WebMethod(Description = "Eliminar Titulos Autores")]
        public string[] Eliminar(string Codigo)
        {
            TituloAutorBL titulo = new TituloAutorBL();
            string[] valores = new string[2];
            valores[0] = titulo.Eliminar(Codigo).ToString();
            valores[1] = titulo.Mensaje;
            return valores;
        }


    }
}
