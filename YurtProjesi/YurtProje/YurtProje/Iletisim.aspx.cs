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
    public partial class İletisim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           

        }
        void Temizle()
        {
            TextAdı.Text = "";
            TextSoyadı.Text = "";
            TextEmail.Text = "";
            TextKonu.Text = "";
            TextMesaj.InnerText = "";
        }

        protected void ButtonGonder_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(ConfigurationManager.ConnectionStrings["galeri"].ConnectionString);
            SqlCommand komut = new SqlCommand("insert into TBL_ZIYARETCIMESAJ(OGR_AD,OGR_SOYAD,OGR_EMAIL,OGR_KONU,OGR_MESAJ,TARIH)values(@p1,@p2,@p3,@p4,@p5,@p6)", baglanti);
            komut.Parameters.AddWithValue("@p1", TextAdı.Text);
            komut.Parameters.AddWithValue("@p2", TextSoyadı.Text);
            komut.Parameters.AddWithValue("@p3", TextEmail.Text);
            komut.Parameters.AddWithValue("@p4", TextKonu.Text);
            komut.Parameters.AddWithValue("@p5", TextMesaj.InnerText);
            komut.Parameters.AddWithValue("@p6", DateTime.Now);
            baglanti.Open();
            komut.ExecuteNonQuery();
            Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "BİLGİ", "<script>alert('Yorum başarıyla kaydedildi');</script>");
            Temizle();
        }
    }
}