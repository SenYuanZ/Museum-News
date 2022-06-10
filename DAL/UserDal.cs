using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Helper;
using System.Data;

namespace DAL
{
    public class UserDal
    {

        sqlHelper bb = new sqlHelper();

        /// <summary>
        /// 登入页面
        /// </summary>
        /// <param name="User">查账号</param>
        /// <param name="Pwd">查密码</param>
        /// <returns>返回res</returns>
        public int login(string User, string Pwd)
        {
            int sql = bb.GetFire("select COUNT(*) from account where UserName='" + User + "' and UserPwd='" + Pwd + "'");
            return sql;

        }

        /// <summary>
        /// 添加账户
        /// </summary>
        /// <param name="User">账号</param>
        /// <param name="Pwd">密码</param>
        /// <returns>返回int</returns>
        public int add(string User, string Pwd)
        {
            int sql = bb.sqlRun("insert into account (UserName,UserPwd) values ('" + User + "','" + Pwd + "')");
            return sql;
        }
        /// <summary>
        /// 查询全部用户
        /// </summary>
        /// <returns>返回datatable</returns>
        public DataTable UserInfo()
        {
            DataTable sql = bb.Check("select * from account").Tables[0];
            return sql;
        }
        /// <summary>
        /// 模糊查询用户
        /// </summary>
        /// <param name="name">传入查询的字段</param>
        /// <returns>返回datatable</returns>
        public DataTable UserVaGue(string name)
        {
            DataTable sql = bb.Check("select * from account where UserName like'%" + name + "%'").Tables[0];
            return sql;
        }

        /// <summary>
        /// 获取id
        /// </summary>
        /// <param name="id">传入id</param>
        /// <returns>返回dtatable</returns>
        public DataTable Userid(string id)
        {
            DataTable dt = bb.Check("select * from account where ID='" + id + "'").Tables[0];
            return dt;
        }

        /// <summary>
        /// 修改账户密码
        /// </summary>
        /// <param name="pwd">传入密码</param>
        /// <returns>返回一个int</returns>
        public int UserAlter(string pwd,string id)
        {
            int sql = bb.sqlRun("update account set UserPwd='" + pwd + "' where ID='" + id + "'");
            return sql;            
        }

        /// <summary>
        /// 删除账户
        /// </summary>
        /// <param name="id">获取的id</param>
        /// <returns>返回一个int</returns>
        public DataSet UserDel(string id)
        {
            int sql = bb.sqlRun("delete from account where ID='"+id+"'");
            DataSet ds = bb.Check("select * from account");
            return ds;
        }

        /// <summary>
        /// 查询用户详细信息
        /// </summary>
        /// <param name="id">获取到的id</param>
        /// <returns>返回datatable</returns>
        public DataSet inUser(string id)
        {
            DataSet ds = bb.Check("select * from account where ID=" + id);
            return ds;
        }


    }
}
