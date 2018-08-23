using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace YurtProje
{
    public partial class Giris : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ButtonGiris_Click(object sender, EventArgs e)
        {
            SqlConnection baglan = new SqlConnection(ConfigurationManager.ConnectionStrings["DboYurtConnectionString3"].ConnectionString);
            SqlCommand komut = new SqlCommand("Select ID,ADI,SOYADI,RESIMYOL,KULLANICIADI,SIFRE,EMAIL,ACIKLAMA from TBL_ADMIN WHERE KULLANICIADI=@p1 and SIFRE=@p2", baglan);
            komut.Parameters.AddWithValue("@p1", TextKullanici.Text).ToString();
            komut.Parameters.AddWithValue("@p2", TextSifre.Text.ToString());
            baglan.Open();
            SqlDataReader dr = komut.ExecuteReader();
            if (dr.Read())
            {
                Session.Add("ID", dr["ID"].ToString());
                Session.Add("ADI", dr["ADI"].ToString());
                Session.Add("SOYADI", dr["SOYADI"].ToString());
                Session.Add("SIFRE",TextSifre.Text);
                 Session.Add("KULLANICIADI", TextKullanici.Text);
                Session.Add("EMAIL", dr["EMAIL"].ToString());
                Session.Add("ACIKLAMA", dr["ACIKLAMA"].ToString());
                Session.Add("RESIMYOL", dr["RESIMYOL"].ToString());
                Response.Redirect("Admin/Admin.aspx");
            }
            else
            {
                LblDurum.Text = "Kullanıcı adı veya şifre yanlış";
            }
            baglan.Close();
        }
    }
}