using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifi
{
    public partial class AdminMesajDetay : System.Web.UI.Page
    {
        SqlSinif bgl = new SqlSinif();
        string id = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Mesajid"];

            SqlCommand komut = new SqlCommand("Select *  From Tbl_İletisim Where Mesajid=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader oku = komut.ExecuteReader();

            while (oku.Read())
            {
                TxtGonderen.Text = oku[1].ToString();
                TxtMail.Text = oku[2].ToString();
                TxtKonu.Text = oku[3].ToString();
                Txtİcerik.Text = oku[4].ToString();
            }
            bgl.baglanti().Close();
        }
    }
}