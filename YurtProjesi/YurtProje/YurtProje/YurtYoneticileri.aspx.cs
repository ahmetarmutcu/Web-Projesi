using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YurtProje
{
    public partial class YurtOgrencileri : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["galeri"].ConnectionString);
            string sorgu = "Select *from TBL_ADMIN";
            SqlCommand cmd = new SqlCommand(sorgu, cnn);
            cnn.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            yurtyoneticileri.DataSource = dr;
            yurtyoneticileri.DataBind();
            cnn.Close();

        }
    }
}