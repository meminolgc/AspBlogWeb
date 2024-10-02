using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspBlogWeb
{
    public partial class HobiEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void BtnKyt_Click(object sender, EventArgs e)
        {
            DataSetTableAdapters.TBLHOBILERTableAdapter dt = new DataSetTableAdapters.TBLHOBILERTableAdapter();
            dt.HobiEkle(txthobi.Text);
            Response.Redirect("HobiListesi.aspx");
        }
    }
}