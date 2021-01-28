using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifi
{
    public partial class AdminYorumDetay : System.Web.UI.Page
    {
        SqlSinif bgl = new SqlSinif();
        string id = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Yorumid"];

            if (Page.IsPostBack==false)
            {

                SqlCommand komut = new SqlCommand("Select YorumAdSoyad,YorumMail,Yorumİcerik,YemekAd " +
                    "From Tbl_Yorumlar inner join Tbl_Yemekler on Tbl_Yorumlar.Yemekid=Tbl_Yemekler.Yemekid Where Yorumid=@p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader oku = komut.ExecuteReader();

                while (oku.Read())
                {
                    TxtAd.Text = oku[0].ToString();
                    TxtMail.Text = oku[1].ToString();
                    Txtİcerik.Text = oku[2].ToString();
                    TxtYemek.Text = oku[3].ToString();
                }
                bgl.baglanti().Close();
            }
        }

        protected void BtnOnay_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Update Tbl_Yorumlar Set Yorumicerik=@p1,YorumOnay=@p2 Where Yorumid=@p3", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", Txtİcerik.Text);
            komut.Parameters.AddWithValue("@p2", "True");
            komut.Parameters.AddWithValue("@p3", id);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();

            Response.Write("Yorumu Onayladınız !");
        }
    }
}