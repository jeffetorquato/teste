using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

namespace Prototipo.BLL
{
    public class Parametro
    {
        public DataTable ConsultarParametros()
        {
            try
            {
                TabelasDataContext dc = new TabelasDataContext();
                DataTable dtt = new DataTable();
                
                var dados = from Parametros in dc.dcParametros
                            select Parametros;
                
                
                return dtt; 
               
            }
            catch (Exception)
            {
                throw;
            }
        }
    }
}