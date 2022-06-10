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
    public partial class AddColumn : System.Web.UI.Page
    {
        ColumnDal bb = new ColumnDal();
        NewsDal db = new NewsDal();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.DropDownList1.DataValueField = "ID";
                this.DropDownList1.DataTextField = "Name";
                this.DropDownList1.DataSource = bb.ClassifyNews();
                this.DropDownList1.DataBind();
                this.DropDownList1.Items.Insert(0,"请选择:");
            }

          

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //string Name = this.DropDownList1.SelectedItem.Text;
            //string id = this.DropDownList1.SelectedValue;
            string filename = this.FileUpload1.FileName;
            string path = "img/"+DateTime.Now.ToString("yyyyMMddHHmmss") + filename;
            string Fpath = Server.MapPath(path);
            this.FileUpload1.SaveAs(Fpath);
            //1.通过控件，取文件
            //2.自定义虚拟路径,y
            //3.转成物理路径
            //4.通过控件的savaAs（）按照物理路径进行存放


        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            //获取图片
            string filename = this.FileUpload1.FileName;
            string path = "img/" + DateTime.Now.ToString("yyyyMMddHHmmss") + filename;
            string Fpath = Server.MapPath(path);
            this.FileUpload1.SaveAs(Fpath);

            string id = this.DropDownList1.SelectedValue;

            NewsModel mod = new NewsModel();
            mod.NewsTitle = this.Title.Text;
            mod.Newsimgsrc = path;
            mod.NewsDesc = this.Description.Text;
            mod.NewsCountent = this.content.Text;
            mod.NewsDate = DateTime.Now.ToString();
            mod.NewsAuthor = this.author.Text;
            mod.NewsClick =Convert.ToInt32(this.Click.Text);
            mod.NewsRate =Convert.ToInt32(this.sort.Text);
            mod.NewsColumn =Convert.ToInt32(id);
            db.AddNews(mod);
            Response.Redirect("NewsList.aspx");



        }
    }
}