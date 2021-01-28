using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifi
{
    public partial class YemekDetay : System.Web.UI.Page
    {
        SqlSinif bgl = new SqlSinif();
        string Yemekid = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            Yemekid = Request.QueryString["Yemekid"];

            SqlCommand komut = new SqlCommand("Select YemekAd From Tbl_Yemekler Where Yemekid=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", Yemekid);

            SqlDataReader oku = komut.ExecuteReader();

            while (oku.Read())
            {
                Label3.Text = oku[0].ToString();
            }
            bgl.baglanti().Close();


            // Yorumları Listeleme
            SqlCommand komut2 = new SqlCommand("Select * From Tbl_Yorumlar Where Yemekid=@p2", bgl.baglanti());
            komut2.Parameters.AddWithValue("@p2", Yemekid);
            SqlDataReader dr = komut2.ExecuteReader();

            DataList2.DataSource = dr;
            DataList2.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into Tbl_Yorumlar (YorumAdSoyad,YorumMail,Yorumİcerik,Yemekid) Values (@p1,@p2,@p3,@p4)", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TxtYorumAd.Text);
            komut.Parameters.AddWithValue("@p2", TxtYorumMail.Text);
            komut.Parameters.AddWithValue("@p3", TxtYorumİcerik.Text);
            komut.Parameters.AddWithValue("@p4", Yemekid);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}