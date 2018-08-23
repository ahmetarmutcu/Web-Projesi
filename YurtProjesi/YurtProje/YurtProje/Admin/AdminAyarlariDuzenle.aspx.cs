using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YurtProje.Admin
{
    public partial class AdminAyarlariDuzenle : System.Web.UI.Page
    {
        void Temizle()
        {
            TextADI.Text = "";
            TextSOYADI.Text = "";
            TextSIFRE.Text = "";
            TextEMAIL.Text = "";
            TextACIKLAMA.Text = "";
            ImageResim.ImageUrl = "";
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["KULLANICIADI"] != null)
            {
                ImageResim.ImageUrl = "../images/Yoneticiler/" + Session["RESIMYOL"].ToString();
            }
            else
            {
                Response.Redirect("Giris.aspx");
            }
        }
        protected void btnduzenle_Click(object sender, EventArgs e)
        {
            if (resimsec.HasFile == false)
            {
                LblDurum.Visible = true;
                LblDurum.Text = "Dosya seçilmedi";
            }
            if (resimsec.HasFile == true)
            {
                resimsec.SaveAs(Server.MapPath("../images/Yoneticiler/") + resimsec.FileName);
                SqlConnection baglanti = new SqlConnection(ConfigurationManager.ConnectionStrings["galeri"].ConnectionString);
                SqlCommand komut = new SqlCommand("Update TBL_ADMIN SET ADI=@p1,SOYADI=@p2,SIFRE=@p3,EMAIL=@p4,ACIKLAMA=@p5,RESIMYOL=@p6 where ID=@p7", baglanti);
                komut.Parameters.AddWithValue("@p1", TextADI.Text);
                komut.Parameters.AddWithValue("@p2", TextSOYADI.Text);
                komut.Parameters.AddWithValue("@p3", TextSIFRE.Text);
                komut.Parameters.AddWithValue("@p4", TextEMAIL.Text.ToString());
                komut.Parameters.AddWithValue("@p5", TextACIKLAMA.Text.ToString());
                komut.Parameters.AddWithValue("@p6", resimsec.FileName);
                komut.Parameters.AddWithValue("@p7", Session["ID"].ToString());
                baglanti.Open();
                komut.ExecuteNonQuery();
                baglanti.Close();
                LblDurum.Visible = true;
                LblDurum.Text = "Bilgi başarıyla düzenlendi";
                File.Delete(Server.MapPath(ImageResim.ImageUrl));
                Temizle();
            }
        }
    }
}