using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;

namespace BLL
{
    public class UserBll
    {
        UserDal bb = new UserDal();
        /// <summary>
        /// 判断两次密码
        /// </summary>
        /// <param name="pwd1">密码</param>
        /// <param name="pwd2">确认密码</param>
        /// <returns>返回string</returns>
        public string pwd(string pwd1,string pwd2)
        {
            if (pwd1==pwd2)
            {
                return "添加成功";
            }
            else
            {
                return "两次密码不一致";
            }
        }

        


    }
}
