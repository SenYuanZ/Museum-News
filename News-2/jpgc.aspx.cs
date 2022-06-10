using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;

namespace News_2
{
    public partial class jpgc : System.Web.UI.Page
    {
        FrontDal bb = new FrontDal();
        protected void Page_Load(object sender, EventArgs e)
        {
            //string iid = Request.QueryString["id"].ToString();
            Repeater1.DataSource = bb.jpgc();
            Repeater1.DataBind();

            Repeater2.DataSource = bb.checkColumn();
            Repeater2.DataBind();


        }
    }
}