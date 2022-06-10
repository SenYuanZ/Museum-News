using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;


namespace News_2
{
    public partial class list : System.Web.UI.Page
    {
        FrontDal bb = new FrontDal();
        public static int currentPage = 1;
        protected void Page_Load(object sender, EventArgs e)
        {
            string iid = Request.QueryString["id"].ToString();
            if (!IsPostBack)
            {
                currentPage = 1;
            }
            Repeater1.DataSource = bb.checkColumn();
            Repeater1.DataBind();
            int max = bb.pageChek(iid);
            Repeater2.DataSource = bb.check(iid);
            Repeater2.DataBind();
            if (currentPage < max)
            {
                this.pageDown.Enabled = true;
            }
            if (currentPage<=1)
            {
                this.pageUp.Enabled = false;
            }
            this.endPage.Enabled = true;
            this.homePage.Enabled = false;
           
        }

        protected void pageDown_Click(object sender, EventArgs e)
        {
            string iid = Request.QueryString["id"].ToString();
            currentPage++;         
            Repeater2.DataSource = bb.Page(iid, currentPage);
            Repeater2.DataBind();
            int max = bb.pageChek(iid);
            if (currentPage==max)
            {
                this.pageDown.Enabled = false;
                this.endPage.Enabled = false;
            }
            
            if (currentPage>1)
            {
                this.pageUp.Enabled = true;
            }
            this.homePage.Enabled = true;
        }

        protected void pageUp_Click(object sender, EventArgs e)
        {
            string iid = Request.QueryString["id"].ToString();
            currentPage--;
            Repeater2.DataSource = bb.Page(iid, currentPage);
            Repeater2.DataBind();
            int max = bb.pageChek(iid);
            if (currentPage < max)
            {
                this.pageDown.Enabled = true;
                
            }
            if (currentPage <=1)
            {
                this.pageUp.Enabled = false;
            }
            if (currentPage>1)
            {
                this.homePage.Enabled = true;
            }
            

        }

        protected void endPage_Click(object sender, EventArgs e)
        {
            string iid = Request.QueryString["id"].ToString();
            int max = bb.pageChek(iid);
            currentPage = max;
            Repeater2.DataSource = bb.Page(iid, currentPage);
            Repeater2.DataBind();
            this.pageDown.Enabled = false;
            this.pageUp.Enabled = true;
            this.endPage.Enabled = false;
            this.homePage.Enabled = true;


        }

        protected void homePage_Click(object sender, EventArgs e)
        {
            string iid = Request.QueryString["id"].ToString();
            int max = bb.pageChek(iid);
            currentPage = 1;
            Repeater2.DataSource = bb.Page(iid, currentPage);
            Repeater2.DataBind();
            this.pageUp.Enabled = false;
            this.pageDown.Enabled = true;
            this.homePage.Enabled = false;

        }
    }
}