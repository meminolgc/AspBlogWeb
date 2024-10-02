using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspBlogWeb
{
    public partial class YetenekGuncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt16(Request.QueryString["ID"]);

            txtid.Enabled = false;
            txtid.Text = x.ToString();

            if (Page.IsPostBack == false)
            {
                DataSetTableAdapters.TBLYETENEKLERTableAdapter dt = new DataSetTableAdapters.TBLYETENEKLERTableAdapter();
                txtyetenek.Text = dt.YetenekGetir(Convert.ToInt16(x))[0].YETENEK;
           
            }
        }

        protected void BtnKyt_Click(object sender, EventArgs e)
        {
            DataSetTableAdapters.TBLYETENEKLERTableAdapter dt = new DataSetTableAdapters.TBLYETENEKLERTableAdapter();
            dt.YetenekGuncelle(txtyetenek.Text, Convert.ToInt16(txtid.Text));
            Response.Redirect("YetenekListesi.aspx");
        }
    }
}