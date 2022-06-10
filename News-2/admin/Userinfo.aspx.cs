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
    public partial class Userinfo : System.Web.UI.Page
    {
        UserDal bb = new UserDal();
        protected void Page_Load(object sender, EventArgs e)
        {
            //查询全部
            Repeater1.DataSource = bb.UserInfo();
            Repeater1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //模糊查询
            DataTable vaGue= bb.UserVaGue(this.TextBox1.Text);
            Repeater1.DataSource = vaGue;
            Repeater1.DataBind();



        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            string del = e.CommandName.ToString();
            string iid = e.CommandArgument.ToString();
            if (del=="Del")
            {
                Repeater1.DataSource = bb.UserDel(iid);
                Repeater1.DataBind();
            }
            if (del=="alter")
            {
                Response.Redirect("Alter.aspx?id="+iid);
            }
            if (del == "info")
            {
                Response.Redirect("inUser.aspx?id="+iid);
            }

        }
    }
}