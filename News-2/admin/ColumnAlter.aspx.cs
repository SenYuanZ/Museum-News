using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;
using System.Data;
using BLL;

namespace News_2.admin
{
    public partial class ColumnAlter : System.Web.UI.Page
    {
        ColumnDal bb = new ColumnDal();
        static string nuber = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            string iid = Request.QueryString["id"].ToString();
            this.Label1.Text = nuber;
            DataTable list = bb.ColumnId(iid).Tables[0];
            this.labId.Text = list.Rows[0]["ID"].ToString();
            if (!IsPostBack)
            {
                this.textColumn.Text = list.Rows[0]["Name"].ToString();
                this.textSort.Text = list.Rows[0]["serial"].ToString();
            }


        }

        protected void putin_Click(object sender, EventArgs e)
        {
            string iid = Request.QueryString["id"].ToString();          
            int but = bb.ColumnDel(this.textColumn.Text, this.textSort.Text,iid);
            ColumnBll bl = new ColumnBll();
            string info= bl.Columnif(but,out nuber,iid);
            Response.Redirect(info);
           

     }
    }
}