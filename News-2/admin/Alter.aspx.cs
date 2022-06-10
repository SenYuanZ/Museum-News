using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;
using System.Data;
using BLL;

namespace News_2.admin
{
    public partial class Alter : System.Web.UI.Page
    {
        UserDal bb = new UserDal();
        protected void Page_Load(object sender, EventArgs e)
        {
            //获取用户名字
            string iid = Request.QueryString["id"].ToString();
            DataTable dt = bb.Userid(iid);
            this.labUser.Text = dt.Rows[0]["UserName"].ToString();
     
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //修改账户密码
            string iid = Request.QueryString["id"].ToString();
            UserBll bl = new UserBll();
            string alter= bl.pwd(this.txtPwd1.Text, this.txtPwd2.Text);
            bb.UserAlter(this.txtPwd2.Text,iid);
            this.Label1.Text = alter;
            Response.Redirect("Userinfo.aspx");

        }
    }
}