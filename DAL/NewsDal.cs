using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using Helper;
using Model;

namespace DAL
{
    public class NewsDal
    {
        sqlHelper bb = new sqlHelper();

        /// <summary>
        /// 添加新闻
        /// </summary>
        /// <param name="Title">新闻标题</param>
        /// <param name="Countent">内容</param>
        /// <param name="Date">时间</param>
        /// <param name="Author">作者</param>
        /// <param name="Desc">描述</param>
        /// <param name="imgsrc">图片路径</param>
        /// <param name="Rate">置顶，推荐，首页</param>
        /// <param name="Check">是否审核</param>
        /// <param name="Click">点击次数</param>
        /// <returns>返回int</returns>
        public int AddNews(NewsModel Add)
        {
            int sql = bb.sqlRun("insert into News (newsTitle,newsCountent,newsDate,newsAuthor,newsDesc,newsimgsrc,newsRate,newsClick,newsColumn) values('" + Add.NewsTitle + "','" + Add.NewsCountent + "','" + Add.NewsDate + "','" + Add.NewsAuthor + "','" + Add.NewsDesc + "','" + Add.Newsimgsrc + "','" + Add.NewsRate + "','" + Add.NewsClick + "','"+Add.NewsColumn+"')");
            return sql;
        }

        /// <summary>
        /// 查询新闻信息
        /// </summary>
        /// <returns></returns>
        public DataTable check()
        {
            DataTable dt = bb.Check("select * from News").Tables[0];
            return dt;
        }

       /// <summary>
       /// 删除新闻
       /// </summary>
       /// <param name="iid">传入ID</param>
       /// <returns>返回int</returns>
        public DataSet DelNews(string iid)
        {
            int sql = bb.sqlRun("delete from News where newsID=" + iid);
            DataSet ds = bb.Check("select * from News");
            return ds;
        }

        /// <summary>
        /// 获取新闻ID
        /// </summary>
        /// <param name="iid">传入id</param>
        /// <returns>返回一个datase</returns>
        public DataSet CheckNews(string iid)
        {
            DataSet ds = bb.Check("select * from News where newsID="+iid);
            return ds;
        }

        /// <summary>
        /// 修改新闻内容
        /// </summary>
        /// <param name="Alter">获取到的内容</param>
        /// <param name="iid">传入获取到的id</param>
        /// <returns>返回int值</returns>
        public int AlterNews(NewsModel Alter,string iid)
        {
            int sql = bb.sqlRun("update News set newsTitle='"+Alter.NewsTitle+"', newsCountent='"+Alter.NewsCountent+"', newsAuthor='"+Alter.NewsAuthor+"', newsDesc='"+Alter.NewsDesc+"', newsRate='"+Alter.NewsRate+"',newsClick='"+Alter.NewsClick+"' where newsID='"+iid+"'");
            return sql;
        }


        /// <summary>
        /// 模糊查询标题
        /// </summary>
        /// <param name="name">传入要查询的参数</param>
        /// <returns>返回datatable</returns>
        public DataTable Seach(string name)
        {
            DataTable dt = bb.Check("select * from News where newsDesc like'%" + name + "%'").Tables[0];
            return dt;
        }


    }
}
