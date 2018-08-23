using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YurtProje.AdminPaneli
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["KULLANICIADI"] != null)
            {
                lblAdSoyad1.Text = (Session["ADI"]+" "+ Session["SOYADI"]);
                LblAdSoyad2.Text = (Session["ADI"] + " " + Session["SOYADI"]);
                Resim1.ImageUrl = "../images/Yoneticiler/"+Session["RESIMYOL"].ToString();
                Resim2.ImageUrl = "../images/Yoneticiler/"+Session["RESIMYOL"].ToString();
              
            }
            else
            {
                Response.Redirect("Giris.aspx");
            }
           

        }

        protected void Cikis_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.Clear();
            Response.Redirect("../Anasayfa.aspx");
        }

        protected void Ayarlar_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminAyarlariDuzenle.aspx");
        }

        protected void UstDuzeyYonetici_Click(object sender, EventArgs e)
        {
            if (Session["ID"].ToString()==1006.ToString())
            {
                Response.Redirect("UstDuzeyYonetici.aspx");
            }
            else
            {
                Response.Redirect("Admin.aspx");

            }
        }
    }
}