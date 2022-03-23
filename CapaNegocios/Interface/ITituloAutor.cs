using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaEntidad;
using System.Data;
namespace CapaNegocios.Interface
{
    interface ITituloAutor
    {
        DataSet Listar();
        bool Agregar(TituloAutor tituloAutor);
        bool Eliminar(string codigo);
        
    }
}
