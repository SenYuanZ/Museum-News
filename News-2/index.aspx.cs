using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;


namespace News_2
{
    public partial class index : System.Web.UI.Page
    {
        FrontDal bb = new FrontDal();
        protected void Page_Load(object sender, EventArgs e)
        {
           
            Repeater1.DataSource = bb.CheckFai();
            Repeater1.DataBind();
            Repeater2.DataSource = bb.CheckFai();
            Repeater2.DataBind();
            Repeater3.DataSource = bb.CheckFai();
            Repeater3.DataBind();

            Repeater4.DataSource = bb.checkColumn();
            Repeater4.DataBind();

            Repeater5.DataSource = bb.Checkimg();
            Repeater5.DataBind();

            //轮播
            Repeater6.DataSource = bb.Checkimg1();
            Repeater6.DataBind();

            Repeater7.DataSource = bb.CheckFai1();
            Repeater7.DataBind();

            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            Response.Redirect("list_news.aspx?sid=" + this.TextBox1.Text);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("jpgc.aspx");
        }
    }
}