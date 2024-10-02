using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspBlogWeb
{
    public partial class YetenekEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnKyt_Click(object sender, EventArgs e)
        {
            DataSetTableAdapters.TBLYETENEKLERTableAdapter dt = new DataSetTableAdapters.TBLYETENEKLERTableAdapter();
            dt.YetenekEkle(TxtYetenek.Text);
            Response.Redirect("YetenekListesi.aspx");
        }
    }
}