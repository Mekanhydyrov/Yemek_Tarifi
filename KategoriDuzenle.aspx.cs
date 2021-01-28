using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifi
{
    public partial class KategoriDuzenle : System.Web.UI.Page
    {
        SqlSinif bgl = new SqlSinif();
        string id;

        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Kategoriid"];

            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("Select * From Tbl_Kategoriler Where Kategoriid=@p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader oku = komut.ExecuteReader();

                while (oku.Read())
                {
                    TxtKategoriAd.Text = oku[1].ToString();
                    TxtAdet.Text = oku[2].ToString();
                }
                bgl.baglanti().Close();
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Update Tbl_Kategoriler Set KategoriAd=@p1, KategoriAdet=@p2 Where Kategoriid=@p3", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TxtKategoriAd.Text);
            komut.Parameters.AddWithValue("@p2", TxtAdet.Text);
            komut.Parameters.AddWithValue("@p3", id);
            komut.ExecuteNonQuery();

            bgl.baglanti().Close();
        }
    }
}