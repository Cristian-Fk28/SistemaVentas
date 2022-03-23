using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaEntidad;
using System.Data;

namespace CapaNegocios.Interface
{
    interface ITitulo
    {
        DataSet Listar();
        bool Agregar(Titulo titulo);
        bool Eliminar(string codigo);
        bool Actualizar(Titulo titulo);
        DataSet Buscar(string texto, string criterio);
    }
}

