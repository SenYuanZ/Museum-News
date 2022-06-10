using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;

namespace News_2.admin
{
    public partial class login : System.Web.UI.Page
    {
        UserDal bb = new UserDal();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void butLogin_Click(object sender, EventArgs e)
        {
            int sum = bb.login(this.txUseName.Text, this.txPwd.Text);
            if (sum==1)
            {
                Response.Redirect("index.aspx");
            }
            else
            {
                this.Label1.Text = "登入失败";
            }
            
           

        }
    }
}