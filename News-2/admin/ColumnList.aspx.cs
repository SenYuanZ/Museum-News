using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;
using Model;

namespace News_2.admin
{
    public partial class ColumnList : System.Web.UI.Page
    {
        ColumnDal bb = new ColumnDal();
        protected void Page_Load(object sender, EventArgs e)
        {
            Repeater1.DataSource = bb.CoulunList();
            Repeater1.DataBind();
        }
    }
}