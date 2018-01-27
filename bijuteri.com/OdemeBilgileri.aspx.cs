using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class OdemeBilgileri : System.Web.UI.Page
{

    SqlBaglantisi baglanti = new SqlBaglantisi();
    int count = 0;
    string urunID = "";
    string baglantiAdresi = "Data Source=.; Initial Catalog=bijuteri.comDB; Integrated Security=true; ";
    protected void Page_Load(object sender, EventArgs e)
    {
        
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    Object kullanici = Session["MusteriKullaniciAdi"];

    if (kullanici == null)
    {
        Response.Redirect("MLogin.aspx");
    }
    else
    {
        //MSiparis tablosundan musterinin yaptıgı alısverisleri cekiyoruz.


        string musteriKullaniciAdi = kullanici.ToString();
        SqlConnection conn = new SqlConnection(baglantiAdresi);
        conn.Open();

        string sorgu = "Select musteriID from Musteri where musteriKullaniciAdi='" + musteriKullaniciAdi + "'";
        SqlCommand cmd = new SqlCommand(sorgu, conn);
        object o = cmd.ExecuteScalar();
        int MID = Convert.ToInt32(o);

        SqlCommand cmdL = new SqlCommand("Delete from MSiparis  where MusteriID='" + MID + "'", baglanti.baglan());

        SqlDataReader drU = cmdL.ExecuteReader();
    }
        Response.Redirect("Onayla.aspx");
    }
}