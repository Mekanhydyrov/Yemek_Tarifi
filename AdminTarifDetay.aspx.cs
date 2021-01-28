using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifi
{
    public partial class AdminTarifDetay : System.Web.UI.Page
    {
        SqlSinif bgl = new SqlSinif();
        string id = "";

        protected void Page_Load(object sender, EventArgs e)
        {

            id = Request.QueryString["Tarifid"];

            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("Select * From Tbl_Tarifler Where Tarifid=@p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader oku = komut.ExecuteReader();

                while (oku.Read())
                {
                    TxtAd.Text = oku[1].ToString();
                    TxtMalzeme.Text = oku[2].ToString();
                    TxtYapilis.Text = oku[3].ToString();
                    TxtOneren.Text = oku[5].ToString();
                    TxtMail.Text = oku[6].ToString();
                }
                bgl.baglanti().Close();

                // Kategori Ekleme
                SqlCommand komut2 = new SqlCommand("Select * From Tbl_kategoriler", bgl.baglanti());
                SqlDataReader dr = komut2.ExecuteReader();

                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "Kategoriid";

                DropDownList1.DataSource = dr;
                DropDownList1.DataBind();
            }
        }

        protected void BtnOnay_Click(object sender, EventArgs e)
        {
            // Tarif Durum Göncelleme kodu
            SqlCommand komut = new SqlCommand("Update Tbl_Tarifler Set TarifDurum=1 Where Tarifid=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();

            // Onerilen Taridi Yemeklere Ekleme
            SqlCommand komut1 = new SqlCommand("insert into Tbl_Yemekler (YemekAd,YemekMalzeme,YemekTarif,YemekPuan,Kategoriid) Values" +
                " (@p1,@p2,@p3,@p4,@p5)", bgl.baglanti());
            komut1.Parameters.AddWithValue("@p1", TxtAd.Text);
            komut1.Parameters.AddWithValue("@p2", TxtMalzeme.Text);
            komut1.Parameters.AddWithValue("@p3", TxtYapilis.Text);
            komut1.Parameters.AddWithValue("@p4", TxtPuan.Text);
            komut1.Parameters.AddWithValue("@p5", DropDownList1.SelectedValue);
            komut1.ExecuteNonQuery();
            bgl.baglanti().Close();

        }
    }
}