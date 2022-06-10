using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;

namespace News_2
{
    public partial class list_news : System.Web.UI.Page
    {
        FrontDal bb = new FrontDal();
        protected void Page_Load(object sender, EventArgs e)
        {
            string iid = Request.QueryString["sid"].ToString();
           
            Repeater1.DataSource= bb.che02(iid);
            Repeater1.DataBind();
            Repeater2.DataSource = bb.checkColumn();
            Repeater2.DataBind();


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Repeater1.DataSource = bb.che02(this.TextBox1.Text);
            Repeater1.DataBind();
        }
    }
}