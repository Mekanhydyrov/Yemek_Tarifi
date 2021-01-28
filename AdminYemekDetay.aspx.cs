using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifi
{
    public partial class AdminYemekDetay : System.Web.UI.Page
    {
        SqlSinif bgl = new SqlSinif();
        string id;

        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Yemekid"];

            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("Select * From Tbl_Yemekler Where Yemekid=@p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader oku = komut.ExecuteReader();

                while (oku.Read())
                {
                    TxtAd.Text = oku[1].ToString();
                    TxtMalzeme.Text = oku[2].ToString();
                    TxtTarif.Text = oku[3].ToString();
                }
                bgl.baglanti().Close();

            }
            // Kategori Listeleme 
            if (Page.IsPostBack == false)
            {
                SqlCommand komut2 = new SqlCommand("Select * From Tbl_kategoriler", bgl.baglanti());
                SqlDataReader dr = komut2.ExecuteReader();

                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "Kategoriid";

                DropDownList1.DataSource = dr;
                DropDownList1.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            FileUpload1.SaveAs(Server.MapPath("/Resim/" + FileUpload1.FileName));

            SqlCommand komut = new SqlCommand("Update Tbl_Yemekler Set YemekAd=@p1,YemekMalzeme=@p2,YemekTarif=@p3,Kategoriid=@p4,YemekResim=@p5 " +
                "Where Yemekid=@p6", bgl.baglanti());

            komut.Parameters.AddWithValue("@p1", TxtAd.Text);
            komut.Parameters.AddWithValue("@p2", TxtMalzeme.Text);
            komut.Parameters.AddWithValue("@p3", TxtTarif.Text);
            komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut.Parameters.AddWithValue("@p5", "~/Resim/" + FileUpload1.FileName);
            komut.Parameters.AddWithValue("@p6", id);

            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            // Tüm Yemeklerin Durumunu Flos etme kodu
            SqlCommand komut = new SqlCommand("Update Tbl_Yemekler Set Durum=0", bgl.baglanti());
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();

            // Günün Yemegini Seçme kodu
            SqlCommand komut2 = new SqlCommand("Update Tbl_Yemekler Set Durum=1 Where Yemekid=@p1",bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1", id);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}