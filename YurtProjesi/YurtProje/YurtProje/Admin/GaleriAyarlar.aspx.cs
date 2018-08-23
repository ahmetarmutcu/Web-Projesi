using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Drawing;
using System.IO;

namespace YurtProje.Admin
{
    public partial class GaleriAyarlar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Goster();
            }
        }
        public void Temizle()
        {
            TextID.Text = "";
            TextBaslik.Text = "";
            ImageResim.ImageUrl = "";
        }
        public void Goster()
        {
            SqlConnection baglanti = new SqlConnection(ConfigurationManager.ConnectionStrings["galeri"].ConnectionString);
            baglanti.Open();
            SqlCommand komut = new SqlCommand("select* from TBL_GALERI", baglanti);
            SqlDataAdapter da = new SqlDataAdapter(komut);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridViewGaleri.DataSource = dt;
            GridViewGaleri.DataBind();
            baglanti.Close();
        }

        protected void BtnKaydet_Click(object sender, EventArgs e)
        {
            if (resimsec.HasFile == false)
            {
                LblDurum.Visible = true;
                LblDurum.Text = "Dosya Başlık veya Dosya seçilmedi";
            }
            if (resimsec.HasFile == true)
            {
                resimsec.SaveAs(Server.MapPath("../images/Galeri/") + resimsec.FileName);
                SqlConnection baglanti = new SqlConnection(ConfigurationManager.ConnectionStrings["galeri"].ConnectionString);
                SqlCommand komut = new SqlCommand("insert into TBL_GALERI(Baslik,Resim)values(@p1,@p2)", baglanti);
                komut.Parameters.AddWithValue("@p1", TextBaslik.Text);
                komut.Parameters.AddWithValue("@p2", resimsec.FileName);
                baglanti.Open();
                komut.ExecuteNonQuery();
                baglanti.Close();
                LblDurum.Visible = true;
                LblDurum.Text = "Resim başarıyla sisteme kaydedildi";
                Goster();
                Temizle();
            }
        }

        protected void BtnSil_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(ConfigurationManager.ConnectionStrings["galeri"].ConnectionString);
            SqlCommand komut = new SqlCommand("Delete from TBL_GALERI Where ID=@ID", baglanti);
            komut.Parameters.AddWithValue("@ID", TextID.Text);
            baglanti.Open();
            komut.ExecuteNonQuery();
            baglanti.Close();
            File.Delete(Server.MapPath(ImageResim.ImageUrl));
            LblDurum.Visible = true;
            LblDurum.Text = "Resim başarıyla Silindi";
            Goster();
            Temizle();
        }

        protected void BtnDuzenle_Click(object sender, EventArgs e)
        {
            if (resimsec.HasFile == false)
            {
                LblDurum.Visible = true;
                LblDurum.Text = "Dosya seçilmedi";
            }
            if (resimsec.HasFile == true)
            {
                resimsec.SaveAs(Server.MapPath("../images/Galeri/") + resimsec.FileName);
                SqlConnection baglanti = new SqlConnection(ConfigurationManager.ConnectionStrings["galeri"].ConnectionString);
                SqlCommand komut = new SqlCommand("Update TBL_GALERI SET Baslik=@p1,Resim=@p2 where ID=@p3", baglanti);
                komut.Parameters.AddWithValue("@p1", TextBaslik.Text);
                komut.Parameters.AddWithValue("@p2", resimsec.FileName);
                komut.Parameters.AddWithValue("@p3", TextID.Text);
                baglanti.Open();
                komut.ExecuteNonQuery();
                baglanti.Close();
                LblDurum.Visible = true;
                LblDurum.Text = "Resim başarıyla düzenlendi";
                Goster();
                Temizle();
            }
        }

        protected void GridViewGaleri_SelectedIndexChanged(object sender, EventArgs e)
        {
           
            TextID.Text = GridViewGaleri.SelectedRow.Cells[2].Text;
            TextBaslik.Text = GridViewGaleri.SelectedRow.Cells[3].Text;
            ImageResim.ImageUrl = "../images/Galeri/" + GridViewGaleri.SelectedRow.Cells[4].Text;

            foreach (GridViewRow row in GridViewGaleri.Rows)
            {
                if (row.RowIndex == GridViewGaleri.SelectedIndex)

                {
                    row.BackColor = ColorTranslator.FromHtml("Red");
                }
                else
                {
                    row.BackColor = ColorTranslator.FromHtml("White");
                }
            }
        }
    }
}