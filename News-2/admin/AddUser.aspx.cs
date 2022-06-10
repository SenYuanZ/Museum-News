using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;
using BLL;

namespace News_2.admin
{
    public partial class pass : System.Web.UI.Page
    {
        UserDal bb = new UserDal();
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            //if (this.UserPwd1.Text==this.UserPwd2.Text)
            //{
            //   int add= bb.add(this.UserName.Text, this.UserPwd2.Text);
            //    if (add==1)
            //    {
            //        Response.Redirect("login.aspx");
            //    }           
            //}
            //else
            //{
            //    this.Label1.Text = "登入失败";
            //}


            UserBll bl = new UserBll();
            string add= bl.pwd(this.UserPwd1.Text, this.UserPwd2.Text);
            this.Label1.Text = add;
            bb.add(this.UserName.Text, this.UserPwd2.Text);
            Response.Redirect("login.aspx");
            


        }
    }
}