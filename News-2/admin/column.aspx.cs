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
    public partial class column : System.Web.UI.Page
    {
        ColumnDal bb = new ColumnDal();
        protected void Page_Load(object sender, EventArgs e)
        {
            Repeater1.DataSource = bb.ShowInfo();
            Repeater1.DataBind();
        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            string name = e.CommandName.ToString();
            string iid = e.CommandArgument.ToString();
            if (name=="alter")
            {
                Response.Redirect("ColumnAlter.aspx?id="+iid);
            }
            if (name=="del")
            {
                Repeater1.DataSource = bb.ColumnDel(iid);
                Repeater1.DataBind();
            }


        }        
        protected void Button1_Click(object sender, EventArgs e)
        {
            //获取图片路径，并存放
            string Filename = this.FileUpload1.FileName;
            string path = "img/" + DateTime.Now.ToString("yyyyMMddHHmmss") + FileUpload1;
            string Foath = Server.MapPath(path);
            this.FileUpload1.SaveAs(Foath);

            ColumnModel moDel = new ColumnModel();
            moDel.Columnimgsrc = path;
            moDel.ColumnName = this.txColumnName.Text;
            moDel.ColumnWord = this.txColumnKeyWord.Text;
            moDel.EnglishTitle = this.txEnglishTitle.Text;
            moDel.Sort = Convert.ToInt32(this.txSort.Text);
            moDel.KeywordDes = this.txKeyWord.Text;
            moDel.KeyWordTitle = this.txkeyWorxTitle.Text;
            bb.CountentColumn(moDel);         
            Response.Redirect("index.aspx");
        }
    }
}