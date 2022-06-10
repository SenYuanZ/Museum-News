using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;
using System.Data;  

namespace News_2.admin
{
    public partial class info : System.Web.UI.Page
    {
        UserDal bb = new UserDal();
        protected void Page_Load(object sender, EventArgs e)
        {
            string iid = Request.QueryString["id"].ToString();
            DataTable dt = bb.inUser(iid).Tables[0];
            this.Label1.Text = dt.Rows[0]["UserName"].ToString();
            this.Label2.Text = dt.Rows[0]["UserPwd"].ToString();

        }
    }
}