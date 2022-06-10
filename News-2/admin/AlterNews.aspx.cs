using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;
using System.Data;
using Model;

namespace News_2.admin
{
    public partial class AlterNews : System.Web.UI.Page
    {
        NewsDal bb = new NewsDal();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            string iid = Request.QueryString["id"].ToString();
            DataTable list = bb.CheckNews(iid).Tables[0];
            if (!IsPostBack)
            {
                this.Title.Text = list.Rows[0]["newsTitle"].ToString();
                this.content.Text = list.Rows[0]["newsCountent"].ToString();
                this.Description.Text = list.Rows[0]["newsDesc"].ToString();
                this.sort.Text = list.Rows[0]["newsRate"].ToString();
                this.Date.Text = list.Rows[0]["newsRate"].ToString();
                this.author.Text = list.Rows[0]["newsAuthor"].ToString();
                this.Click.Text = list.Rows[0]["newsClick"].ToString();

            }


        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            string iid = Request.QueryString["id"].ToString();
            NewsModel db = new NewsModel();
            db.NewsTitle = this.Title.Text;
            db.NewsCountent = this.content.Text;
            db.NewsDesc = this.Description.Text;
            db.NewsClick = Convert.ToInt32( this.Click.Text);
            db.NewsAuthor = this.author.Text;
            db.NewsRate = Convert.ToInt32(this.sort.Text);
            bb.AlterNews(db, iid);
            Response.Redirect("NewsList.aspx");

        }
    }
}