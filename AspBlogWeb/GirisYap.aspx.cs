using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace AspBlogWeb
{
    public partial class GirisYap : System.Web.UI.Page
    {
       

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        SqlConnection baglanti = new SqlConnection(@"Data Source=EMIN\SQLEXPRESS;Initial Catalog=BlogWebDb;Integrated Security=True");

        protected void Button1_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut = new SqlCommand("Select * From TBLADMIN where KULLANICI =@P1 and SIFRE = @P2", baglanti);
            komut.Parameters.AddWithValue("@P1", TextBox1.Text);
            komut.Parameters.AddWithValue("@P2", TextBox2.Text);
            SqlDataReader dr = komut.ExecuteReader();
            if (dr.Read())
            {
                Response.Redirect("AdminDeneyimler.aspx");
            }
            else
            {
                Response.Write("Hatalı kullanıcı adı ya da şifre");
            }
            baglanti.Close();
        }
    }
}