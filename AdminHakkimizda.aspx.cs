using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifi
{
    public partial class AdminHakkimizda : System.Web.UI.Page
    {
        SqlSinif bgl = new SqlSinif();

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("Select * From Tbl_Hakkimizda", bgl.baglanti());
                SqlDataReader oku = komut.ExecuteReader();

                while (oku.Read())
                {
                    TxtHakkimizda.Text = oku[0].ToString();
                }
                bgl.baglanti().Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void BtnGuncelle_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Update Tbl_Hakkimizda Set Metin=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TxtHakkimizda.Text);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}