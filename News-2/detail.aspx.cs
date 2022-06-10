using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using DAL;

namespace News_2
{
    public partial class detail : System.Web.UI.Page
    {
        FrontDal bb = new FrontDal();
        protected void Page_Load(object sender, EventArgs e)
        {                    
            string nid = Request.QueryString["nid"].ToString();
            Repeater1.DataSource = bb.checkColumn();
            Repeater1.DataBind();
            DataTable dt = bb.deta(nid).Tables[0];
            this.newsTitle.Text = dt.Rows[0]["newsTitle"].ToString();
            this.author.Text = dt.Rows[0]["newsAuthor"].ToString();
            this.countent.Text = dt.Rows[0]["newsCountent"].ToString();
            this.date.Text = dt.Rows[0]["newsDate"].ToString();
            this.labimg.Text = dt.Rows[0]["newsimgsrc"].ToString();
            

        }
    }
}