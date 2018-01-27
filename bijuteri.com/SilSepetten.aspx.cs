using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class SilSepetten : System.Web.UI.Page
{
    SqlBaglantisi baglan = new SqlBaglantisi();

    string urunID = "";
    string baglantiAdresi = "Data Source=.; Initial Catalog=bijuteri.comDB; Integrated Security=true; ";
    protected void Page_Load(object sender, EventArgs e)
    {
        //Session dan gelen degerler Object te tutuluyor.
        Object kullanici = Session["MusteriKullaniciAdi"];

        if (kullanici == null)
        {
            Response.Redirect("MLogin.aspx");
        }
        else
        {
            Musteri.Text = kullanici.ToString();

            string musteriKullaniciAdi = kullanici.ToString();

            SqlConnection conn = new SqlConnection(baglantiAdresi);
            conn.Open();

            string sorgu = "Select musteriID from Musteri where musteriKullaniciAdi='" + musteriKullaniciAdi + "'";
            SqlCommand cmd = new SqlCommand(sorgu, conn);
            object o = cmd.ExecuteScalar();
            int MID = Convert.ToInt32(o);

            urunID = Request.QueryString["urunID"];
            SqlCommand cmdA = new SqlCommand("Select * from Urun where urunID='" + urunID + "'", baglan.baglan());
            SqlDataReader dr = cmdA.ExecuteReader();

            dlSS.DataSource = dr;
            dlSS.DataBind();


            SqlCommand cmdB = new SqlCommand("Select * from UrunDetay where urunID='" + urunID + "'", baglan.baglan());
            SqlDataReader drB = cmdB.ExecuteReader();

            dlSS2.DataSource = drB;
            dlSS2.DataBind();




        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        urunID = Request.QueryString["urunID"];
        SqlCommand cmdC = new SqlCommand("Delete from MSiparis where UrunID='" + urunID + "'", baglan.baglan());
        SqlDataReader drC = cmdC.ExecuteReader();

        Response.Redirect("AlisverisSepeti.aspx");
    }
}