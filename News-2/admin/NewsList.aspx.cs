using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;

namespace News_2.admin
{
    public partial class NewsList : System.Web.UI.Page
    {
        NewsDal bb = new NewsDal();
        protected void Page_Load(object sender, EventArgs e)
        {
            Repeater1.DataSource = bb.check();
            Repeater1.DataBind();


        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            string name = e.CommandName.ToString();
            string iid = e.CommandArgument.ToString();

            if (name == "AlterNews")
            {
                Response.Redirect("AlterNews.aspx?id=" + iid);
            }
            if (name == "DelNews")
            {
                Repeater1.DataSource = bb.DelNews(iid);
                Repeater1.DataBind();
            }
        }

        protected void search_Click(object sender, EventArgs e)
        {
            Repeater1.DataSource = bb.Seach(this.TextBox1.Text);
            Repeater1.DataBind();

        }
    }
}