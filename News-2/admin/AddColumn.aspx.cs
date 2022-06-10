using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;
using BLL;
using System.Data;

namespace News_2.admin
{
    public partial class AddColumn1 : System.Web.UI.Page
    {
        ColumnDal bb = new ColumnDal();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int sum = bb.FingDin(this.TextBox1.Text);
            if (sum == 0)
            {
                bb.AddColumn(this.TextBox1.Text, this.TextBox2.Text);
                Response.Redirect("column.aspx");                         
            }
            else
            {
                this.Label1.Text = "栏目重复";
            }





        }
    }
}