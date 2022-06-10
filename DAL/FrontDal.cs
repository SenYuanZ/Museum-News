using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Helper;
using System.Data;

namespace DAL
{
    public class FrontDal
    {
        sqlHelper bb = new sqlHelper();

        /// <summary>
        /// 查询前五条数据
        /// </summary>
        /// <returns></returns>
        public DataSet CheckFai()
        {
            DataSet ds = bb.Check("select top 5* from News order by newsTitle");
            return ds;
        }
        public DataSet CheckFai1()
        {
            DataSet ds = bb.Check("select top 1* from News order by newsTitle");
            return ds;
        }


        public DataSet checkColumn()
        {
            DataSet ds = bb.Check("select * from ColumnName");
            return ds;
        }

        public DataTable checkColu(string id)
        {
            DataTable dt = bb.Check("selecet * from ColumnName where ID=" + id).Tables[0];
            return dt;
        }

        public DataSet check(string id)
        {
            DataSet ds = bb.Check("select top 3* from News where newsColumn=" + id);
            return ds;

        }


        public DataSet deta(string id)
        {
            DataSet ds = bb.Check("select * from News where newsID=" + id);
            return ds;
        }


        public DataSet Page(string id, int page)
        {
            DataSet ds = bb.Check("select top 3* from News where newsColumn='" + id + "' and newsID not in (select top " + ((page - 1) * 3) + " newsID from News where newsColumn='" + id + "')");
            return ds;
        }

        public int pageChek(string id)
        {
            DataTable ds = bb.Check("select COUNT(*) as number from News where newsColumn=" + id).Tables[0];
            int index = Convert.ToInt32(ds.Rows[0]["number"]) % 5;
            if (index != 0)
            {
                return Convert.ToInt32(ds.Rows[0]["number"]) / 5 + 1;
            }
            return Convert.ToInt32(ds.Rows[0]["number"]) / 5;
        }


        public DataSet jpgc()
        {
            DataSet ds = bb.Check("select top 6* from News");
            return ds;
        }

        public DataSet Checkimg()
        {
            DataSet ds = bb.Check("select top 3* from News");
            return ds;

        }
         public DataSet Checkimg1()
        {
            DataSet ds = bb.Check("select * from News");
            return ds;

        }


        public DataSet che02(string name)
        {
            DataSet ds = bb.Check("select * from News where newsDesc like '%"+name+"%'" );
            return ds;
        }

    }
}
