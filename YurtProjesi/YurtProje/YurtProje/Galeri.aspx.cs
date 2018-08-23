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
    public partial class Galeri : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["galeri"].ConnectionString);
            string sorgu = "Select *from TBL_GALERI";
            SqlCommand cmd = new SqlCommand(sorgu, cnn);
            cnn.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            lstgaleri.DataSource = dr;
            lstgaleri.DataBind();
            cnn.Close();

        }
    }
}