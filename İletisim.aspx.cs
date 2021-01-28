using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifi
{
    public partial class İletisim : System.Web.UI.Page
    {
        SqlSinif bgl = new SqlSinif();

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand ("insert into Tbl_İletisim (MesajAdSoyad,MesajMail,MesajKonu,Mesajİcerik) Values (@p1,@p2,@p3,@p4)", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TxtAd.Text);
            komut.Parameters.AddWithValue("@p2", TxtMail.Text);
            komut.Parameters.AddWithValue("@p3", TxtKonu.Text);
            komut.Parameters.AddWithValue("@p4", TxtMesaj.Text);

            komut.ExecuteNonQuery();

            bgl.baglanti().Close();
        }
    }
}