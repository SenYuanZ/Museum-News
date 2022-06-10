using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace sqlHelper
{
    public class sqlHelper
    {
        SqlConnection conn = new SqlConnection("Data Source=(local);Initial Catalog=rj-2;Persist Security Info=True;User ID=aa;Password=123");

        /// <summary>
        /// 增删改sql
        /// </summary>
        /// <param name="sql">传入sql语句</param>
        /// <returns>返回res</returns>
        public int sqlRun(string sql)
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand(sql,conn);
            int res = cmd.ExecuteNonQuery();
            conn.Close();
            return res;

        }
        /// <summary>
        /// 获取首行首列
        /// </summary>
        /// <param name="sql">sql语句</param>
        /// <returns>返回res</returns>
        public int GetFire(string sql)
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand(sql, conn);
            int res =(int)cmd.ExecuteScalar();
            conn.Close();
            return res;
        }
 
        /// <summary>
        /// 获取多行多列 查
        /// </summary>
        /// <param name="sql">sql语句</param>
        /// <returns>返回res</returns>
        public DataSet Check(string sql)
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand(sql,conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds, "sum");
            conn.Close();
            return ds;

        }

    }
}
