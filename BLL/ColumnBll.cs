using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;

namespace BLL
{
    public class ColumnBll
    {
        ColumnDal db = new ColumnDal();

        public string Columnif(int info,out string nuber,string id)
        {
            if (info == 1)
            {
                nuber = "";
                return "column.aspx";
            }
            else
            {
                nuber = "修改失败";
                return "columnAlter.aspx?id="+id;
              
            }
        }

      

       
        

    }
}
