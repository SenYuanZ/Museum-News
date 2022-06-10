using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;

namespace News_2
{
    public partial class jpgc_detail : System.Web.UI.Page
    {
        FrontDal bb = new FrontDal();
        protected void Page_Load(object sender, EventArgs e)
        {
            Repeater1.DataSource = bb.checkColumn();
            Repeater1.DataBind();

        }
    }
}