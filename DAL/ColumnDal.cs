using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Helper;
using System.Data;
using Model;


namespace DAL
{
    public class ColumnDal
    {
        sqlHelper bb = new sqlHelper();
       
        /// <summary>
        /// 栏目列表查询
        /// </summary>
        /// <returns></returns>
        public DataTable ShowInfo()
        {
            DataTable dt = bb.Check("select * from ColumnName").Tables[0];
            return dt;
        }
        /// <summary>
        /// 栏目列表的删除
        /// </summary>
        /// <param name="iid">获取到的id</param>
        /// <returns>返回int</returns>
        public DataSet ColumnDel(string iid)
        {
            int sql = bb.sqlRun("delete from ColumnName where ID="+iid);
            DataSet sqlChek = bb.Check("select * from ColumnName");
            return sqlChek;
        }

        /// <summary>
        /// 栏目修改获取到的id
        /// </summary>
        /// <param name="iid"></param>
        /// <returns></returns>
        public DataSet ColumnId(string iid)
        {
            DataSet ds = bb.Check("select * from ColumnName where ID=" + iid);
            return ds;
        }

        /// <summary>
        /// 栏目修改
        /// </summary>
        /// <param name="name"></param>
        /// <param name="sort"></param>
        /// <param name="iid"></param>
        /// <returns></returns>
        public int ColumnDel(string name,string sort,string iid)
        {
            int sql = bb.sqlRun("update TheColumn set ColumnName='"+name+"', sort='"+sort+"' where ID="+iid);
            return sql;
        }

        /// <summary>
        /// 查询分类
        /// </summary>
        /// <returns></returns>
        public DataTable ClassifyNews()
        {
            DataTable dt = bb.Check("select * from ColumnName").Tables[0];
            return dt;
        }

        /// <summary>
        /// 查询栏目名称是否重复
        /// </summary>
        /// <param name="name">传入名称</param>
        /// <returns></returns>
        public int FingDin(string name)
        {
            int sql = bb.GetFire("select COUNT(*) from ColumnName where Name='"+name+"'");
            return sql;
        }


        /// <summary>
        /// 添加栏目
        /// </summary>
        /// <param name="name">添加的名称</param>
        /// <param name="sort">添加的序号</param>
        /// <returns>返回一个int值</returns>
        public int AddColumn( string name,string sort)
        {
            int addColumn = bb.sqlRun("insert into ColumnName (Name,serial) values('" + name + "','" + sort + "')");
            return addColumn;
        }

        /// <summary>
        /// 添加栏目内容
        /// </summary>
        /// <param name="Add">传入值</param>
        /// <returns>返回int</returns>
        public int CountentColumn(ColumnModel Add)
        {
            int sql = bb.sqlRun("insert into ColumnInfo (ColumnName,Columnimgsrc,EnglishTitle,KeywordTitle,ColumnKeyword,KeywordDes,sort) values ('"+Add.ColumnName+"','"+Add.Columnimgsrc+"','"+Add.EnglishTitle+"','"+Add.KeyWordTitle+"','"+Add.ColumnWord+"','"+Add.KeywordDes+"','"+Add.Sort+"')");
            return sql;
        }



        public DataSet CoulunList()
        {
            DataSet ds = bb.Check("select * from ColumnInfo");
            return ds;
        }



    }
}
