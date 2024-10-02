using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspBlogWeb
{
    public partial class KonferansGuncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt16(Request.QueryString["ID"]);

            txtid.Enabled = false;
            txtid.Text = x.ToString();

            if (Page.IsPostBack == false)
            {
                DataSetTableAdapters.TBLKONFERANSLARTableAdapter dt = new DataSetTableAdapters.TBLKONFERANSLARTableAdapter();
                txtkonf.Text = dt.KonferansGetir(Convert.ToInt16(x))[0].KONFERANSLAR;

            }
        }

        protected void BtnKyt_Click(object sender, EventArgs e)
        {
            DataSetTableAdapters.TBLHOBILERTableAdapter dt = new DataSetTableAdapters.TBLHOBILERTableAdapter();
            dt.HobiGuncelle(txtkonf.Text, Convert.ToInt16(txtid.Text));
            Response.Redirect("KonferansListesi.aspx");
        }
    }
}