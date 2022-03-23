using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaEntidad;
using System.Data;

namespace CapaNegocios.Interface
{
    interface IAutor
    {
        DataSet Listar();
        bool Agregar(Autor autor);
        bool Eliminar(string codigo);
        bool Actualizar(Autor autor);
        DataSet Buscar(string texto, string criterio);
    }
}
